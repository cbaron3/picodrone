#ifndef INCLUDE_SYSTEM_H
#define INCLUDE_SYSTEM_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

#include "utility.hpp"
#include "uart.hpp"
#include "i2c.hpp"

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

namespace picodrone
{

namespace System
{

bool Init(RCC_OscInitTypeDef* osc_def, RCC_ClkInitTypeDef* clk_def) {
    // Initializes the CPU, AHB and APB busses clocks
    if (HAL_RCC_OscConfig(osc_def) != HAL_OK) {
        return false;
    }

    if (HAL_RCC_ClockConfig(clk_def, FLASH_ACR_LATENCY_1) != HAL_OK) {
        return false;
    }

    // Configure the Systick interrupt time
    HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);

    // Configure the Systick
    HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

    // SysTick_IRQn interrupt configuration
    HAL_NVIC_SetPriority(SysTick_IRQn, 15, 0);

    HAL_Init();

    return true;
}

}

}

#endif // INCLUDE_SYSTEM_H