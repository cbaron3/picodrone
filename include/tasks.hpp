#ifndef INCLUDE_TASKS_H
#define INCLUDE_TASKS_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

#include "utility.hpp"
#include "gpio.hpp"
#include "uart.hpp"

#include "FreeRTOS.h"
#include "task.h"

namespace picodrone
{

namespace task 
{
    void vController(void *pvParameters) {
        // Call control loop and update pwm state
        // 20ms?
        portTickType xLastWakeTime;
        const portTickType xFrequency = 20;
        xLastWakeTime=xTaskGetTickCount();
        for( ;; )
        {
            vTaskDelayUntil(&xLastWakeTime,xFrequency);
        }
    }

    void vDebug( void *pvParameters ) {
        // UART and LED flashing
        // Slow

        portTickType xLastWakeTime;
        const portTickType xFrequency = 1000;
        xLastWakeTime=xTaskGetTickCount();
        for( ;; )
        {
            HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_13);
            picodrone::uart::send("Hello World");
            vTaskDelayUntil(&xLastWakeTime,xFrequency);

            HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_13);
            picodrone::uart::send("Bye World");
            vTaskDelayUntil(&xLastWakeTime,xFrequency);
        }
    }

    void vSPI(void *pvParameters ) {
        // Will be for nrf24
        // Fast; used for control from remote
        portTickType xLastWakeTime;
        const portTickType xFrequency = 20;
        xLastWakeTime=xTaskGetTickCount();
        for( ;; )
        {
            vTaskDelayUntil(&xLastWakeTime,xFrequency);
        }
    }

    void vI2C_IMU(void *pvParameters) {

        // INIT PERIPHERAL OUTSIDE OF TASK (i2c bus)
        // INIT DEVICE, WITH CONFIG DATA, IN TASK

        // Will be for i2c/bmp
        // Fast for IMU, slower for BMP. Maybe two threads? Use two different I2C busses? Yes. Unless creating a sensor hub.
        // sensors <-> sensor chip <-> main chip could be something for the future
        portTickType xLastWakeTime;
        const portTickType xFrequency = 20;
        xLastWakeTime=xTaskGetTickCount();
        for( ;; )
        {
            vTaskDelayUntil(&xLastWakeTime,xFrequency);
        }
    }

    void vI2C_BMP(void *pvParameters) {
        // Will be for i2c/bmp
        // Fast for IMU, slower for BMP. Maybe two threads? Use two different I2C busses? Yes. Unless creating a sensor hub.
        // sensors <-> sensor chip <-> main chip could be something for the future
        portTickType xLastWakeTime;
        const portTickType xFrequency = 50;
        xLastWakeTime=xTaskGetTickCount();
        for( ;; )
        {
            vTaskDelayUntil(&xLastWakeTime,xFrequency);
        }
    }
}

}

#endif