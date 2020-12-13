#include "heart_beat_task.h"

void vHeartBeatTask(void *pvParameters) {
    // Initialize GPIO - PC13 for onboard LED
    

    // Cast parameter to queue
    xQueueHandle msg_queue = (xQueueHandle) pvParameters;

    // Repeating portion
    portTickType xLastWakeTime;
    const portTickType xFrequency = 1000;
    xLastWakeTime=xTaskGetTickCount();

    for( ;; )
    {
        // Signal activity over UART
        xQueueSend(msg_queue,".",0);
        
        // Toggle
        HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_13);

        // Delay until RTOS can swap context again with delay
        vTaskDelayUntil(&xLastWakeTime,xFrequency);
    }
}