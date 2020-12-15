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
    lib::util::ReportHalStatus(&msg_queue, "MPU6050 IsDeviceReady", device_status);

    vTaskDelay(10);
    uint8_t WHO = 0x75;
    uint8_t _buffer[1];
    uint8_t MPU_CHIP_ID = 0x68;
    device_status = HAL_I2C_Mem_Read(&config::I2C_I2C2Cfg,  (0x68 << 1), WHO, I2C_MEMADD_SIZE_8BIT, _buffer, sizeof(_buffer), 10);
    if(_buffer[0] == MPU_CHIP_ID) {
        lib::util::ReportHalStatus(&msg_queue, "MPU6050 Chip ID", device_status);
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