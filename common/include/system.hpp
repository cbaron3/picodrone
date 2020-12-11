#ifndef INCLUDE_SYSTEM_H
#define INCLUDE_SYSTEM_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

#include "utility.hpp"
#include "tasks.hpp"
#include "uart.hpp"
#include "i2c.hpp"

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

namespace picodrone
{

namespace system
{

namespace rtos
{
    static xQueueHandle txQueue;

    void start() {
        vTaskStartScheduler();
        //you should never get here
        while(1)
            { }
    }

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

    void vUART( void *pvParameters ) {
        char received[100];

        for(;;) {
            if(pdTRUE == xQueueReceive((xQueueHandle) pvParameters, received, 100)) {
                picodrone::uart::send(received);
            }   
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
            
            xQueueSend((xQueueHandle) pvParameters,"Blink",100);
            HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_13);
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
        
        // Check if device is ready
        const char* status_msg = "BME280 Ready";
        HAL_StatusTypeDef device_status = HAL_I2C_IsDeviceReady(&i2c::m_I2C1, (0x76 << 1), 1, 100);
        if(HAL_OK == device_status) {
            xQueueSend(picodrone::system::rtos::txQueue,status_msg,100);
        }

        // Delay - 500 ticks at 1ms per tick
        vTaskDelay(500);
        
        
        // Setup calibration
        
        // 1. Reset the BME 280 to trigger the power-on reset
        uint8_t BME_RESET_ADDR = 0xE0;
        uint8_t BME_RESET_VAL = 0xB6;
        
        device_status = HAL_I2C_Mem_Write(&i2c::m_I2C1, (0x76 << 1), BME_RESET_ADDR, I2C_MEMADD_SIZE_8BIT, &BME_RESET_VAL, sizeof(BME_RESET_VAL), 10);
        if(HAL_OK == device_status) {
            xQueueSend(picodrone::system::rtos::txQueue,"RESET BME",100);
        }
        vTaskDelay(10);

        // 2. Check who am I register
        uint8_t BME_ID_ADDR = 0xD0;

        uint8_t _buffer[1];
        device_status = HAL_I2C_Mem_Read(&i2c::m_I2C1, (0x76 << 1), BME_ID_ADDR, I2C_MEMADD_SIZE_8BIT, _buffer, sizeof(_buffer), 10);
        if(HAL_OK == device_status && _buffer[0] == 0x60) {
            xQueueSend(picodrone::system::rtos::txQueue,"CORRECT CHIP ID",100);
        }
        vTaskDelay(500);

        // 3. Wait for trimming parameters to be copied into registers before reading
            // 3a. check status register

        // 4. Read trimming parameters; manufacturing config data

        // 5. Set config data for rate, filter and interface (general)

        // 6. Set ctrl for humid - humidity data acquisition options
            // NOTE: WRITE THIS FIRST BECAUSE THE HUMID SETTINGS WILL ONLY BE CHANGED AFTER MEAS IS WRITTEN

        // 7. Set ctrl for meas - measurement options

        // read config registers to ensure they match the specified config

        portTickType xLastWakeTime;
        const portTickType xFrequency = 500;
        xLastWakeTime=xTaskGetTickCount();
        for( ;; )
        {
            HAL_I2C_IsDeviceReady(&i2c::m_I2C1, (0x76 << 1), 1, 100);
            vTaskDelayUntil(&xLastWakeTime,xFrequency);
        }
    }

    void init() {
        txQueue = xQueueCreate(5, 50);

        xTaskCreate( vUART, "UART", configMINIMAL_STACK_SIZE, (void *) txQueue,  tskIDLE_PRIORITY, NULL );
        xTaskCreate( vDebug, "LED", configMINIMAL_STACK_SIZE, (void *) txQueue, tskIDLE_PRIORITY, NULL );

        xTaskCreate( vController, "Controller", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY, NULL );
        xTaskCreate( vI2C_IMU, "I2C_IMU", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY, NULL );
        xTaskCreate( vI2C_BMP, "I2C_BMP", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY, NULL );
        xTaskCreate( vSPI, "SPI", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY, NULL );
    }

    

}

namespace clock
{

    void init() {
        RCC_OscInitTypeDef RCC_OscInitStruct;
        RCC_ClkInitTypeDef RCC_ClkInitStruct;

        /**Initializes the CPU, AHB and APB busses clocks
        */
        RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
        RCC_OscInitStruct.HSEState = RCC_HSE_ON;
        RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
        RCC_OscInitStruct.HSIState = RCC_HSI_ON;
        RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
        RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
        RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
        if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK) {
            lib::util::ErrorHandler(__FILE__, __LINE__);
        }

        /**Initializes the CPU, AHB and APB busses clocks
        */
        RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                                    |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
        RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
        RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
        RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
        RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

        if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_ACR_LATENCY_1) != HAL_OK) {
            lib::util::ErrorHandler(__FILE__, __LINE__);
        }

        // Configure the Systick interrupt time
        HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);

        // Configure the Systick
        HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

        // SysTick_IRQn interrupt configuration
        HAL_NVIC_SetPriority(SysTick_IRQn, 15, 0);
    }

}

namespace hal
{
    void init() {
        HAL_Init();
    }
}

}

}

#endif // INCLUDE_SYSTEM_H