#include "HeartBeatTask.hpp"

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

// #include "utility.hpp"
// #include "tasks.hpp"
// #include "uart.hpp"
#include "i2c.hpp"

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

void Foo() {
    portTickType xLastWakeTime;
    const portTickType xFrequency = 1000;
    xLastWakeTime=xTaskGetTickCount();
    for( ;; )
    {
        HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_13);
        vTaskDelayUntil(&xLastWakeTime,xFrequency);
    }
}