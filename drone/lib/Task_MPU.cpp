#include "Task_MPU.h"
#include "Config.h"
#include "HAL/I2C.h"

void vMPU6050Task(void *pvParameters) {
    // So for some reason putting the Init in the task works
    // TODO: Refactor I2C init to take in GPIO 
    picodrone::I2C::Init(picodrone::I2C::PORT::I2, &config::I2C_I2C2Cfg);
    
    // Cast parameter to queue
    xQueueHandle msg_queue = (xQueueHandle) pvParameters;

    // Check device status
    // uint8_t BMP388_ADR = (0x76 << 1);
    HAL_StatusTypeDef device_status = HAL_I2C_IsDeviceReady(&config::I2C_I2C2Cfg, (0x68 << 1), 1, 100);
    if(HAL_OK == device_status) {
        xQueueSend(msg_queue, "MPU6050 available", 0);
    } else if(HAL_ERROR == device_status) {
        xQueueSend(msg_queue, "Error available", 0);
    } else if(HAL_BUSY == device_status) {
        xQueueSend(msg_queue, "Busy available", 0);
    } else if(HAL_TIMEOUT == device_status) {
        xQueueSend(msg_queue, "Timeout available", 0);
    }

    uint8_t WHO = 0x68;
    if(HAL_I2C_Master_Transmit(&config::I2C_I2C2Cfg, (0x68 << 1), &WHO, 1, 1000) != HAL_OK)
    {
        xQueueSend(msg_queue, "Timeout available", 0);
    }

    // Repeating portion
    portTickType xLastWakeTime;
    const portTickType xFrequency = 50;
    xLastWakeTime=xTaskGetTickCount();

    for( ;; )
    {
        // Delay until RTOS can swap context again with delay
        vTaskDelayUntil(&xLastWakeTime,xFrequency);
    }
}