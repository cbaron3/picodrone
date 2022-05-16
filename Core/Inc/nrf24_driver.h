/**
 * @brief 	Simple NRF24 Device Driver Without Interrupts
 *
 * @details This driver is very simple and is meant to set communications setup with an NRF24
 * 			with minimal configuration on a single pipe.
 *
 *			The idea behind the driver is to be able to quickly boot strap a single transmit-receive pair
 *
 * 			The only things a user can configure are:
 * 				- Length of the payload; within the accepted range laid out by the NRF24 (1 - 32 bytes)
 * 				- Channel number
 * 				- 5 bytes address field
 * 				- Whether the device is a receiver or a transmitter
 *
 * 			NRF24 settings that are set by this driver without configuration are:
 * 				- Disable shock burst
 * 				- Disable dynamic payload
 * 				- Disable auto ack
 * 				- ...
 *
 * @example
 *
 * 	main.c:
 *
 * 	// Implement hardware functions...
 *
 * 	int main() {
 *
 * 		nrf24_init();
 *
 * 		if(RECEIVER) {
 * 			nrf24_set_as_receiver();
 * 		} else {
 * 			nrf24_set_as_transmitter();
 * 		}
 *
 * 		while(1) {
 *
 * 			if(RECEIVER) {
 * 				if(nrf24_is_data_available() == 1) {
 *					nrf24_receive(buffer);
 *
 *					// Handle buffer...
 * 				}
 * 			} else {
 * 				if(nrf24_transmit(buffer) == 1) {
 * 					// Transmit successful...
 * 				}
 * 			}
 * 	   }
 *
 * 	   return 0;
 *
 * 	}
 *
 */

#ifndef INC_NRF24_DRIVER_H_
#define INC_NRF24_DRIVER_H_

#include <stdint.h>

#include "nrf24_registers.h"

/**Have to implement the following functions**/

// Used to enable the NRF24 module via Chip Enable
void nrf24_enable_device(void);

// Used to disable the NRF24 module via Chip Enable
void nrf24_disable_device(void);

void nrf24_delay(uint16_t ms);

void nrf24_select_device(void);

void nrf24_unselect_device(void);

// Used to write register data via SPI
void nrf24_write_spi(uint8_t *data, uint8_t data_len);

// Used to read register data via SPI
void nrf24_read_spi(uint8_t *data, uint8_t data_len);

/*********************************************/
// Mode; receiver or transmitter
typedef enum {
	NRF24_RECEIVER,
	NRF24_TRANSMITTER
} nrf24_mode;

// Error codes
typedef enum {
	NRF24_ERRC_OK = 0,
	NRF24_ERRC_BUSY = 1
} nrf24_errc;

typedef struct {
	uint8_t address[5];
	uint8_t channel;
	uint8_t payload_len;
} nrf24_cfg;

// Return error if mode is incorrectly set. Or any other cfg member
nrf24_errc nrf24_init(nrf24_cfg *cfg, nrf24_mode mode);
nrf24_errc nrf24_reset();

// Will except the data with the configured payload length
nrf24_errc nrf24_transmit(uint8_t *data);

// Check whether data is ready to be read
uint8_t nrf24_is_data_available();
// Will always return the payload length
nrf24_errc nrf24_receive(uint8_t *data);

#endif /* INC_NRF24_DRIVER_H_ */
