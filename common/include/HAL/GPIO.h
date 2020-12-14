#ifndef INCLUDE_GPIO_H
#define INCLUDE_GPIO_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

namespace picodrone
{

namespace GPIO
{
    enum class PORT { A, B, C };

    inline bool Init(PORT port, GPIO_InitTypeDef* def) {
        switch (port) {
            case PORT::A: {
                // Init struct
                __HAL_RCC_GPIOA_CLK_ENABLE();
                HAL_GPIO_Init(GPIOA, def);
            } break;

            case PORT::B: {
                // Init struct
                __HAL_RCC_GPIOB_CLK_ENABLE();
                HAL_GPIO_Init(GPIOB, def);
            } break;

            case PORT::C: {
                // Init struct
                __HAL_RCC_GPIOC_CLK_ENABLE();
                HAL_GPIO_Init(GPIOC, def);
            } break;
        }
        
        return true;
    }
}

}

#endif // INCLUDE_GPIO_H