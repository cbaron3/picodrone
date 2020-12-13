#include "bmp_i2c1_task.h"
#include "config.h"

void vBMP388Task(void *pvParameters) {
    vTaskDelay(100);

    // Cast parameter to queue
    xQueueHandle msg_queue = (xQueueHandle) pvParameters;

    // Repeating portion
    portTickType xLastWakeTime;
    const portTickType xFrequency = 50;
    xLastWakeTime=xTaskGetTickCount();

    // Check device status
    uint8_t BMP388_ADR = (0x76 << 1);
    HAL_StatusTypeDef device_status = HAL_I2C_IsDeviceReady(&config::I2C_I2C1Cfg, (0x76 << 1), 1, 100);
    if(HAL_OK == device_status) {
        xQueueSend(msg_queue, "BME388 available", 0);
    } else if(HAL_ERROR == device_status) {
        xQueueSend(msg_queue, "Error available", 0);
    } else if(HAL_BUSY == device_status) {
        xQueueSend(msg_queue, "Busy available", 0);
    } else if(HAL_TIMEOUT == device_status) {
        xQueueSend(msg_queue, "Timeout available", 0);
    }

    // Confirm WHO AM I register
    vTaskDelay(10);
    uint8_t BMP388_CHIP_ID_ID_ADDR = 0xD0;
    uint8_t BMP388_CHIP_ID = 0x60;
    uint8_t _buffer[1];
    device_status = HAL_I2C_Mem_Read(&config::I2C_I2C1Cfg, BMP388_ADR, BMP388_CHIP_ID_ID_ADDR, I2C_MEMADD_SIZE_8BIT, _buffer, sizeof(_buffer), 10);
    if(HAL_OK == device_status && _buffer[0] == 0x60) {
        xQueueSend(msg_queue,"BME388 Chip ID is correct", 0);
    }

    for( ;; )
    {
        // Delay until RTOS can swap context again with delay
        vTaskDelayUntil(&xLastWakeTime,xFrequency);
    }
}