#ifndef INCLUDE_TIM_H
#define INCLUDE_TIM_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"
#include "stm32f1xx_ll_tim.h"
#include "utility.hpp"

namespace picodrone
{
namespace pwm
{
    void init() {
        __HAL_RCC_TIM2_CLK_ENABLE();
        static uint32_t TimOutClock = 1;

        static uint32_t TimerFreq_Hz = 10000;
        static uint32_t CounFreq_Hz = 100;

        // Count Up
        LL_TIM_SetCounterMode(TIM2, LL_TIM_COUNTERMODE_UP);
        
        /// Set prescalar to achieve timer frequency
        LL_TIM_SetPrescaler(TIM2, __LL_TIM_CALC_PSC(SystemCoreClock, TimerFreq_Hz));
        
        // Enable ARR preload
        LL_TIM_EnableARRPreload(TIM2);
        
        // Set ARR to achieve counter frequency; PWM frequency
        // TIM2CLK = SystemCoreClock / (APB prescaler & multiplier)
        TimOutClock = SystemCoreClock/1;
        LL_TIM_SetAutoReload(TIM2, __LL_TIM_CALC_ARR(TimOutClock, LL_TIM_GetPrescaler(TIM2), CounFreq_Hz));
        
        // Output compare mode
        LL_TIM_OC_SetMode(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_OCMODE_PWM1);
        
        // Output compare polarity; resting high?
        LL_TIM_OC_SetPolarity(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_OCPOLARITY_HIGH);

        // Compare value to half of ARR for a duty cycle of 50%
        LL_TIM_OC_SetCompareCH1(TIM2, ( (LL_TIM_GetAutoReload(TIM2) + 1 ) / 2));
        
        // Enable preload for channel
        LL_TIM_OC_EnablePreload(TIM2, LL_TIM_CHANNEL_CH1);
        
        // Enable capture compare interrupt
        LL_TIM_EnableIT_CC1(TIM2);
        
        // Enable couner and channels
        LL_TIM_CC_EnableChannel(TIM2, LL_TIM_CHANNEL_CH1);
        LL_TIM_EnableCounter(TIM2);
        
        // Force the timer to restart
        LL_TIM_GenerateEvent_UPDATE(TIM2);
    }    
}

}

#endif // INCLUDE_TIM_H