#ifndef INCLUDE_SPI_COMMON_H
#define INCLUDE_SPI_COMMON_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"
#include "Util.h"

namespace picodrone
{

namespace SPI
{
    enum class PORT {S1, S2};

    inline bool Init(PORT port, SPI_HandleTypeDef* def) {
        switch(port) {
            case PORT::S1: {
                __HAL_RCC_SPI1_CLK_ENABLE();
            } break;
            
            case PORT::S2: {
                __HAL_RCC_SPI2_CLK_ENABLE();
            } break;
        }

        if (HAL_SPI_Init(def) != HAL_OK) {
            return false;
        } else {
            return true;
        }
    }
}

}

#endif // INCLUDE_SPI_H