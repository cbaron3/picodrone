#ifndef INCLUDE_I2C_COMMON_H
#define INCLUDE_I2C_COMMON_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"
#include "Util.h"

namespace picodrone
{

namespace I2C
{
    enum class PORT {I1, I2};

    inline bool Init(PORT port, I2C_HandleTypeDef* def) {
        switch(port) {
            case PORT::I1: {
                __HAL_RCC_I2C1_CLK_ENABLE();
            } break;
            
            case PORT::I2: {
                __HAL_RCC_I2C2_CLK_ENABLE();
            } break;
        }

        if (HAL_I2C_Init(def) != HAL_OK) {
            return false;
        } else {
            return true;
        }
    }
}

}

#endif // INCLUDE_IMU_H