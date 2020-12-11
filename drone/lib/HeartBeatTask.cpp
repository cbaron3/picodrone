#include "HeartBeatTask.hpp"
#include "USART1Task.hpp"

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

// #include "utility.hpp"
// #include "tasks.hpp"
// #include "uart.hpp"
#include "i2c.hpp"

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "uart.hpp"
#include "USART1Queue.hpp"

void vHeartBeatTask(void *pvParams) {
    portTickType xLastWakeTime;
    const portTickType xFrequency = 1000;
    xLastWakeTime=xTaskGetTickCount();

    for( ;; )
    {      
        // picodrone::uart::send("Blink");
        char _out[100] = "Hello World";

        HAL_UART_Transmit(&picodrone::uart::UART1, (uint8_t *) _out, strlen(_out), 0xffff);
        
        HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_13);
        vTaskDelayUntil(&xLastWakeTime,xFrequency);
    }
}