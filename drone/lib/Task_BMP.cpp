#include "Task_BMP.h"
#include "Config.h"
#include "HAL/I2C.h"

void vBMP388Task(void *pvParameters) {
    // So for some reason putting the Init in the task works
    // TODO: Refactor I2C init to take in GPIO 
    picodrone::I2C::Init(picodrone::I2C::PORT::I1, &config::I2C_I2C1Cfg);

    // Cast parameter to queue
    xQueueHandle msg_queue = (xQueueHandle) pvParameters;

    // Repeating portion
    

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
    uint8_t BMP388_CHIP_ID_ID_ADDR = 0x00;
    uint8_t BMP388_CHIP_ID = 0x50;
    uint8_t _buffer[1];
    device_status = HAL_I2C_Mem_Read(&config::I2C_I2C1Cfg, BMP388_ADR, BMP388_CHIP_ID_ID_ADDR, I2C_MEMADD_SIZE_8BIT, _buffer, sizeof(_buffer), 10);
    if(HAL_OK == device_status && _buffer[0] == BMP388_CHIP_ID) {
        xQueueSend(msg_queue,"BME388 Chip ID is correct", 0);
    }

    portTickType xLastWakeTime;
    const portTickType xFrequency = 50;
    xLastWakeTime=xTaskGetTickCount();

    for( ;; )
    {
        // Delay until RTOS can swap context again with delay
        vTaskDelayUntil(&xLastWakeTime,xFrequency);
    }
}