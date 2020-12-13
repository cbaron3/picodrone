#include "i2c.hpp"

namespace picodrone
{

namespace I2C
{

bool Init(PORT port, I2C_HandleTypeDef* def) {
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