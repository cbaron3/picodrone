#include "controller.h"

// Initialize controller
Controller_Status Controller_Init(RCC_OscInitTypeDef* controller_osc_cfg, RCC_ClkInitTypeDef* controller_clk_cfg, Controller_Cfg *cfg) {
    Controller_Status status = CONTROLLER_OK;

    // Initializes the CPU, AHB and APB busses clocks
    if (HAL_RCC_OscConfig(controller_osc_cfg) != HAL_OK) {
        status = CONTROLLER_OSC_ERR;
    }

    if (HAL_RCC_ClockConfig(controller_clk_cfg, cfg->flash_latency) != HAL_OK) {
        status = CONTROLLER_CLK_ERR;
    }

    // Configure the Systick source
    HAL_SYSTICK_CLKSourceConfig(cfg->hal_clk_source);

    // Configure the Systick interrupt time
    if(HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/cfg->hal_clk_divider) != 0) {
        status = CONTROLLER_SYSTICK_ERR;
    }

    // SysTick_IRQn interrupt configuration
    HAL_NVIC_SetPriority(SysTick_IRQn, 15, 0);

    if(HAL_Init() != HAL_OK) {
        status = CONTROLLER_HAL_ERR;
    }

    return status;
}