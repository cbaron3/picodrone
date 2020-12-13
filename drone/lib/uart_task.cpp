#include "uart_task.h"
#include "uart.hpp"
#include "config.h"

void vUartTask(void *pvParameters)
{
    // Cast parameter to queue
    xQueueHandle msg_queue = (xQueueHandle) pvParameters;

    // Set up receive buffer
    char received[100];

    for(;;) {
        if(pdTRUE == xQueueReceive(msg_queue, received, 0)) {
            picodrone::USART::Send(&config::UART_USART1Cfg, received);
        }   
    }
}