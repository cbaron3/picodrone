#ifndef INCLUDE_TIM_H
#define INCLUDE_TIM_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

#include "utility.hpp"

namespace picodrone
{

namespace pwm
{
    
    TIM_HandleTypeDef TIMER2;

    void init() {
        __HAL_RCC_TIM2_CLK_ENABLE();

        TIM_OC_InitTypeDef sConfigOC = {0};

        TIMER2.Instance = TIM2;
        TIMER2.Init.Prescaler = 15;
        TIMER2.Init.CounterMode = TIM_COUNTERMODE_UP;
        TIMER2.Init.Period = 1095;
        TIMER2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
        TIMER2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
        if (HAL_TIM_Base_Init(&TIMER2) != HAL_OK) {
            lib::util::ErrorHandler(__FILE__, __LINE__);
        }

        sConfigOC.OCMode = TIM_OCMODE_PWM1;
        sConfigOC.Pulse = 0;
        sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
        sConfigOC.OCFastMode = TIM_OCFAST_ENABLE;
        if (HAL_TIM_PWM_ConfigChannel(&TIMER2, &sConfigOC, TIM_CHANNEL_1) != HAL_OK) {
            lib::util::ErrorHandler(__FILE__, __LINE__);
        }

        HAL_TIM_PWM_Start(&TIMER2, TIM_CHANNEL_1);
    }

    
}

}

#endif // INCLUDE_TIM_H