#ifndef INCLUDE_IMU_H
#define INCLUDE_IMU_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"
#include "utility.hpp"

namespace picodrone
{

// class I2C1 {
// public:
//     static ErrC_t init(void) {

//     }
// private:
//     I2C_HandleTypeDef m_I2C1;
//     GPIO_InitTypeDef  GPIO_InitStruct;
// }


namespace i2c
{


    

    static I2C_HandleTypeDef m_I2C1;
    static I2C_HandleTypeDef m_I2C2;

    inline void init() {
        // I2C1 -> SDA on PB7, SCL on PB6
        // I2C2 -> SDA on PB11, SCL on PB10
        __HAL_RCC_I2C1_CLK_ENABLE();
        __HAL_RCC_I2C2_CLK_ENABLE();
        __HAL_RCC_GPIOB_CLK_ENABLE();

        GPIO_InitTypeDef  GPIO_InitStruct;

        // I2C1 SCL
        GPIO_InitStruct.Pin       = GPIO_PIN_6;
        GPIO_InitStruct.Mode      = GPIO_MODE_AF_OD;
        GPIO_InitStruct.Pull      = GPIO_PULLUP;
        GPIO_InitStruct.Speed     = GPIO_SPEED_FREQ_HIGH;
        HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
            
        // I2C1 SDA
        GPIO_InitStruct.Pin       = GPIO_PIN_7;
        HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

        // I2C2 SCL
        GPIO_InitStruct.Pin       = GPIO_PIN_10;
        HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

        // I2C2 SDA
        GPIO_InitStruct.Pin       = GPIO_PIN_11;
        HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

        // IMU1 instance for the BMP280
        m_I2C1.Instance             = I2C1;
        m_I2C1.Init.ClockSpeed      = 100000; // 100 kHz
        m_I2C1.Init.DutyCycle       = I2C_DUTYCYCLE_2;
        m_I2C1.Init.OwnAddress1     = 0x00;  // Either 076 or 077
        m_I2C1.Init.AddressingMode  = I2C_ADDRESSINGMODE_7BIT;
        m_I2C1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
        m_I2C1.Init.OwnAddress2     = 0xFF;
        m_I2C1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
        m_I2C1.Init.NoStretchMode   = I2C_NOSTRETCH_DISABLE;  

        if(HAL_I2C_Init(&m_I2C1) != HAL_OK)
        {
            /* Initialization Error */
            lib::util::ErrorHandler(__FILE__, __LINE__);
        }

        // IMU2 instance for the MPU6050
    }
}

}

#endif // INCLUDE_IMU_H