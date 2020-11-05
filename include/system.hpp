#ifndef INCLUDE_SYSTEM_H
#define INCLUDE_SYSTEM_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

#include "utility.hpp"
#include "tasks.hpp"

#include "FreeRTOS.h"
#include "task.h"

namespace picodrone
{

namespace system
{

namespace rtos
{
    void init() {
        xTaskCreate( picodrone::task::vDebug, "LED", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY, NULL );
        xTaskCreate( picodrone::task::vController, "Controller", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY, NULL );
        xTaskCreate( picodrone::task::vI2C_IMU, "I2C_IMU", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY, NULL );
        xTaskCreate( picodrone::task::vI2C_BMP, "I2C_BMP", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY, NULL );
        xTaskCreate( picodrone::task::vSPI, "SPI", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY, NULL );
    }

    void start() {
        vTaskStartScheduler();
        //you should never get here
        while(1)
            { }
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

        if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK) {
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