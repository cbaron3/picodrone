#include "Task_NRF.h"
#include "Config.h"
#include "HAL/SPI.h"

void vNRF24Task(void *pvParameters) {
    // Cast parameter to queue
    xQueueHandle msg_queue = (xQueueHandle) pvParameters;

    // Init SPI
    bool s = picodrone::SPI::Init(picodrone::SPI::PORT::S1, &config::SPI_SPI1Cfg);
    if(s) {
        xQueueSend(msg_queue, "SPI available", 0);
    } 

    // Reset CE

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