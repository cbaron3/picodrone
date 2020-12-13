#ifndef INCLUDE_IMU_H
#define INCLUDE_IMU_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"
#include "utility.hpp"

namespace picodrone
{

namespace I2C
{
    enum class PORT {I1, I2};

    bool Init(PORT port, I2C_HandleTypeDef* def);

    // inline void init() {
    //     __HAL_RCC_I2C1_CLK_ENABLE();
    //     __HAL_RCC_I2C2_CLK_ENABLE();
        
    //     // IMU1 instance for the BMP280
    //     m_I2C1.Instance             = I2C1;
    //     m_I2C1.Init.ClockSpeed      = 100000; // 100 kHz
    //     m_I2C1.Init.DutyCycle       = I2C_DUTYCYCLE_2;
    //     m_I2C1.Init.OwnAddress1     = 0x00;  // Either 076 or 077
    //     m_I2C1.Init.AddressingMode  = I2C_ADDRESSINGMODE_7BIT;
    //     m_I2C1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
    //     m_I2C1.Init.OwnAddress2     = 0xFF;
    //     m_I2C1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
    //     m_I2C1.Init.NoStretchMode   = I2C_NOSTRETCH_DISABLE;  

    //     if(HAL_I2C_Init(&m_I2C1) != HAL_OK)
    //     {
    //         /* Initialization Error */
    //         lib::util::ErrorHandler(__FILE__, __LINE__);
    //     }

    //     // IMU2 instance for the MPU6050
//    }
}

}

#endif // INCLUDE_IMU_H