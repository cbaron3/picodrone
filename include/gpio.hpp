#ifndef INCLUDE_GPIO_H
#define INCLUDE_GPIO_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

namespace picodrone
{

namespace gpio
{
    void init() {
        // LED pin on bluepill - PC13
        __HAL_RCC_GPIOC_CLK_ENABLE();
        GPIO_InitTypeDef GPIO_InitStruct;
        GPIO_InitStruct.Pin = GPIO_PIN_13;
        GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
        GPIO_InitStruct.Pull = GPIO_NOPULL; //This was previously PULL_UP, which makes no sense on an output pin! No pullup resistors here.
        GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
        HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

        // PWM pin - TIM2 CH1 - PA0
        __HAL_RCC_GPIOA_CLK_ENABLE();
        GPIO_InitTypeDef GPIO_PWM_InitStruct;
        GPIO_PWM_InitStruct.Pin = GPIO_PIN_0;
        GPIO_PWM_InitStruct.Mode = GPIO_MODE_AF_PP;
        GPIO_PWM_InitStruct.Pull = GPIO_NOPULL; //This was previously PULL_UP, which makes no sense on an output pin! No pullup resistors here.
        GPIO_PWM_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
        HAL_GPIO_Init(GPIOA, &GPIO_PWM_InitStruct);

        //USART1 TX
        GPIO_InitStruct.Pin = GPIO_PIN_9;
        GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
        GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
        GPIO_InitStruct.Pull = GPIO_NOPULL;
        HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
        
        //USART1 RX
        GPIO_InitStruct.Pin = GPIO_PIN_10;
        GPIO_InitStruct.Mode = GPIO_MODE_AF_OD;
        HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

        
    }

    
}

}

#endif // INCLUDE_GPIO_H