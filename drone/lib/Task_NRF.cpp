#include "Task_NRF.h"
#include "Config.h"
#include "HAL/SPI.h"
#include "NRF24.h"

static const uint8_t rx_address[5] = {1, 2, 3, 4, 5};
static const uint8_t tx_address[5] = {1, 2, 3, 4, 6};

void vNRF24Task(void *pvParameters) {
    // Cast parameter to queue
    xQueueHandle msg_queue = (xQueueHandle) pvParameters;

    // Init SPI
    bool s = picodrone::SPI::Init(picodrone::SPI::PORT::S1, &config::SPI_SPI1Cfg);
    if(s) {
        xQueueSend(msg_queue, "SPI available", 0);
    } 

    nrf24l01 nrf;
    uint32_t rx_data;

    nrf24l01_config config;
    config.data_rate        = NRF_DATA_RATE_1MBPS;
    config.tx_power         = NRF_TX_PWR_0dBm;
    config.crc_width        = NRF_CRC_WIDTH_1B;
    config.addr_width       = NRF_ADDR_WIDTH_5;
    config.payload_length   = 4;    // maximum is 32 bytes
    config.retransmit_count = 15;   // maximum is 15 times
    config.retransmit_delay = 0x0F; // 4000us, LSB:250us
    config.rf_channel       = 0;
    config.rx_address       = rx_address;
    config.tx_address       = tx_address;
    config.rx_buffer        = (uint8_t*)&rx_data;

    config.spi         = &config::SPI_SPI1Cfg;
    config.spi_timeout = 10; // milliseconds
    config.ce_port     = GPIOA;
    config.ce_pin      = config::GPIOA_SPI1CECfg.Pin;
    config.csn_port    = GPIOB;
    config.csn_pin     = config::GPIOB_SPI1NSSCfg.Pin;
    config.irq_port    = GPIOB;
    config.irq_pin     = GPIO_PIN_1;

    NRF_RESULT r = nrf_init(&nrf, &config);
    if(r == NRF_OK) {
        xQueueSend(msg_queue, "NRF24 available", 0);
    } else {
        xQueueSend(msg_queue, "NRF24 init failed", 0);
    }

    static uint8_t tx_data = 1;
    r = nrf_send_packet_noack(&nrf, &tx_data);
    if(r == NRF_OK) {
        xQueueSend(msg_queue, "NRF24 available", 0);
    } else {
        xQueueSend(msg_queue, "NRF24 init failed", 0);
    }
    
    // Repeating portion
    portTickType xLastWakeTime;
    const portTickType xFrequency = 1000;
    xLastWakeTime=xTaskGetTickCount();

    for( ;; )
    {

        

        // Delay until RTOS can swap context again with delay
        vTaskDelayUntil(&xLastWakeTime,xFrequency);
    }
}