#include "uart_task.h"
#include "uart.hpp"

void vUartTask(void *pvParameters)
{
    // Cast parameter to queue
    xQueueHandle msg_queue = (xQueueHandle) pvParameters;

    // Set up receive buffer
    char received[100];

    for(;;) {
        if(pdTRUE == xQueueReceive(msg_queue, received, 0)) {
            picodrone::uart::send(received);
        }   
    }
}