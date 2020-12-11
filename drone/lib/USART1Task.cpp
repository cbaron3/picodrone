#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

// #include "utility.hpp"
// #include "tasks.hpp"
#include "uart.hpp"
#include "i2c.hpp"

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#include "USART1Queue.hpp"
#include "USART1Task.hpp"

void vUSART1Task(void *pvParams) {
    // txQueue = xQueueCreate(5, 50);
    
    char received[100];

    for(;;) {
        if(pdTRUE == pop_queue(received)) {
            picodrone::uart::send(received);
        }   
    }
}