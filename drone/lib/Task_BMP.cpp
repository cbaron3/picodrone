#include "Task_BMP.h"
#include "Config.h"
#include "HAL/I2C.h"
#include "Util.h"




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
    lib::util::ReportHalStatus(&msg_queue, "BMP388 IsDeviceReady", device_status);

    // Confirm WHO AM I register
    vTaskDelay(10);
    uint8_t BMP388_CHIP_ID_ID_ADDR = 0x00;
    uint8_t BMP388_CHIP_ID = 0x50;
    uint8_t _buffer[1];
    device_status = HAL_I2C_Mem_Read(&config::I2C_I2C1Cfg, BMP388_ADR, BMP388_CHIP_ID_ID_ADDR, I2C_MEMADD_SIZE_8BIT, _buffer, sizeof(_buffer), 10);
    if(_buffer[0] == BMP388_CHIP_ID) {
        lib::util::ReportHalStatus(&msg_queue, "BMP388 Chip ID", device_status);
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