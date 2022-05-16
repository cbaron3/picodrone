// See header file for API description
#include "nrf24_driver.h"

nrf24_cfg device_configuration;

void write_single_register(uint8_t reg, uint8_t data) {
	// To write to a register, create a two byte buffer
	uint8_t buffer[2];

	// First byte is register. 001A AAAA
	buffer[0] = reg | 1<<5;
	buffer[1] = data;

	nrf24_select_device();

	nrf24_write_spi(buffer, 2);

	nrf24_unselect_device();
}

void write_multiple_register(uint8_t reg, uint8_t *data, uint8_t sz) {
	// write register command. 001A AAAA
	uint8_t tx_command = reg | 1 << 5;

	// Pull CS LOW to select device
	nrf24_select_device();

	nrf24_write_spi(&tx_command, 1);
	nrf24_write_spi(data, sz);

	// Pull CS HIGH tor release device
	nrf24_unselect_device();
}

uint8_t read_single_register(uint8_t reg) {
	// Can ignore formatting reg for read cause 000A AAAA
	uint8_t data = 0;

	// Pull CS LOW to select device
	nrf24_select_device();

	nrf24_write_spi(&reg, 1);
	nrf24_read_spi(&data, 1);

	// Pull CS HIGH tor release device
	nrf24_unselect_device();

	return data;
}

void send_command(uint8_t cmd) {
	// Pull CS LOW to select device
	nrf24_select_device();

	nrf24_write_spi(&cmd, 1);

	// Pull CS HIGH tor release device
	nrf24_unselect_device();
}

nrf24_errc nrf24_init(nrf24_cfg *cfg, nrf24_mode mode) {
	// Copy configuration and validate parameters
	device_configuration = *cfg;

	// TODO: Validate parameters

	nrf24_disable_device();

	// Write 0 to config register cause not using fancy features
	write_single_register(CONFIG, 0);

	// Disable auto ACK
	write_single_register(EN_AA, 0);

	// Select data pipe for reception. For now, disable all pipes. Will enable based on transmitter o receiver
	write_single_register(EN_RXADDR, 0);

	// Setup address (TX/RX) width
	write_single_register(SETUP_AW, 0x03); // 5 byte length

	// Disable re-transmission if auto ack
	write_single_register(SETUP_RETR, 0);

	// Channel selection. Choose channel number
	write_single_register(RF_CH, device_configuration.channel);

	// Transmission settings (data rate and power)
	write_single_register(RF_SETUP, 0x0E); // Using maximum settings. ignore bottom bit

	if(mode == NRF24_RECEIVER) {
		// First read pipe status register to ensure we dont disable active pipes
		uint8_t en_rxaddr = read_single_register(EN_RXADDR);
		en_rxaddr = en_rxaddr | (1<<1);
		write_single_register(EN_RXADDR, en_rxaddr);

		write_single_register(RX_PW_P1, device_configuration.payload_len);

		// Power up in RX mode
		uint8_t config = read_single_register(CONFIG);
		config = config | (1 << 1)| (1 << 0);
		write_single_register(CONFIG, config);

		write_multiple_register(RX_ADDR_P1, device_configuration.address, 5);
	} else if(mode == NRF24_TRANSMITTER) {
		write_multiple_register(TX_ADDR, device_configuration.address, 5);

		// Set tx mode in config by setting bit 1 on
		uint8_t config = read_single_register(CONFIG);
		config = config | (1 << 1);

		write_single_register(CONFIG, config);
	} else {
		// TODO: error
	}

	nrf24_enable_device();

	return NRF24_ERRC_OK;
}

nrf24_errc nrf24_reset() {
	return NRF24_ERRC_OK;
}

// Will except the data with the configured payload length
nrf24_errc nrf24_transmit(uint8_t *data) {
	nrf24_select_device();

	uint8_t cmdtosend = W_TX_PAYLOAD;
	nrf24_write_spi(&cmdtosend, 1);
	nrf24_write_spi(data, device_configuration.payload_len);

	nrf24_unselect_device();

	// Check fifo to make sure transmission was successful

	nrf24_delay(1);

	uint8_t fifostatus = read_single_register(FIFO_STATUS);

	// check the fourth bit of FIFO_STATUS to know if the TX fifo is empty
	// ensure we also are not on the POR value by cecking other bits to be 0
	if ((fifostatus&(1<<4)) && (!(fifostatus&(1<<3))))
	{
		cmdtosend = FLUSH_TX;
		send_command(cmdtosend);

		// reset FIFO_STATUS
		nrf24_reset(FIFO_STATUS);

		return NRF24_ERRC_OK;
	}

	return NRF24_ERRC_BUSY;
}

uint8_t nrf24_is_data_available() {
	uint8_t status = read_single_register(STATUS);

	// USING PIPE NUM 1. If was using configurable pipenum, (1<<1) => (pipenum<<1)
	if ((status&(1<<6))&&(status&(1<<1)))
	{

		write_single_register(STATUS, (1<<6));

		return 1;
	}

	return 0;
}

// Will always return the payload length
nrf24_errc nrf24_receive(uint8_t *data) {
	nrf24_select_device();

	uint8_t tmp = R_RX_PAYLOAD;
	nrf24_write_spi(&tmp, 1);

	nrf24_read_spi(data, device_configuration.payload_len);

	nrf24_unselect_device();

	// Check fifo to make sure transmission was successful

	nrf24_delay(1);
	send_command(FLUSH_RX);

	return NRF24_ERRC_OK;
}
