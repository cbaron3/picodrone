#include "i2c.hpp"
#include "uart.hpp"
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

    def->Instance             = I2C1;
    def->Init.ClockSpeed      = 100000; // 100 kHz
    def->Init.DutyCycle       = I2C_DUTYCYCLE_2;
    def->Init.OwnAddress1     = 0x00;  // Either 076 or 077
    def->Init.AddressingMode  = I2C_ADDRESSINGMODE_7BIT;
    def->Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
    def->Init.OwnAddress2     = 0xFF;
    def->Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
    def->Init.NoStretchMode   = I2C_NOSTRETCH_DISABLE; 

    if (HAL_I2C_Init(def) != HAL_OK) {
        return false;
    } else {
        return true;
    }
   
    // __HAL_RCC_I2C1_CLK_ENABLE();
    // __HAL_RCC_GPIOB_CLK_ENABLE();
    // GPIO_InitTypeDef GPIO_InitStruct;
    // int timeout =100;
    // int timeout_cnt=0;

    // // 1. Clear PE bit.
    // def->Instance->CR1 &= ~(0x0001);

    // //  2. Configure the SCL and SDA I/Os as General Purpose Output Open-Drain, High level (Write 1 to GPIOx_ODR).
    // GPIO_InitStruct.Mode         = GPIO_MODE_OUTPUT_OD;
    // GPIO_InitStruct.Pull         = GPIO_PULLUP;
    // GPIO_InitStruct.Speed        = GPIO_SPEED_FREQ_HIGH;

    // GPIO_InitStruct.Pin          = GPIO_PIN_6;
    // HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
    // HAL_GPIO_WritePin(GPIOB, GPIO_PIN_6, GPIO_PIN_SET);

    // GPIO_InitStruct.Pin          = GPIO_PIN_7;
    // HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
    // HAL_GPIO_WritePin(GPIOB, GPIO_PIN_7, GPIO_PIN_SET);


    // // 3. Check SCL and SDA High level in GPIOx_IDR.
    // while (GPIO_PIN_SET != HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_6))
    // {
    //     timeout_cnt++;
    //     if(timeout_cnt>timeout)
    //         return false;
    // }

    // while (GPIO_PIN_SET != HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_7))
    // {
    //     //Move clock to release I2C
    //     HAL_GPIO_WritePin(GPIOB, GPIO_PIN_6, GPIO_PIN_RESET);
    //     asm("nop");
    //     HAL_GPIO_WritePin(GPIOB, GPIO_PIN_6, GPIO_PIN_SET);

    //     timeout_cnt++;
    //     if(timeout_cnt>timeout)
    //         return false;
    // }

    // // 4. Configure the SDA I/O as General Purpose Output Open-Drain, Low level (Write 0 to GPIOx_ODR).
    // HAL_GPIO_WritePin(GPIOB, GPIO_PIN_7, GPIO_PIN_RESET);

    // //  5. Check SDA Low level in GPIOx_IDR.
    // while (GPIO_PIN_RESET != HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_7))
    // {
    //     timeout_cnt++;
    //     if(timeout_cnt>timeout)
    //         return false;
    // }

    // // 6. Configure the SCL I/O as General Purpose Output Open-Drain, Low level (Write 0 to GPIOx_ODR).
    // HAL_GPIO_WritePin(GPIOB, GPIO_PIN_6, GPIO_PIN_RESET);

    // //  7. Check SCL Low level in GPIOx_IDR.
    // while (GPIO_PIN_RESET != HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_6))
    // {
    //     timeout_cnt++;
    //     if(timeout_cnt>timeout)
    //         return false;
    // }

    // // 8. Configure the SCL I/O as General Purpose Output Open-Drain, High level (Write 1 to GPIOx_ODR).
    // HAL_GPIO_WritePin(GPIOB, GPIO_PIN_6, GPIO_PIN_SET);

    // // 9. Check SCL High level in GPIOx_IDR.
    // while (GPIO_PIN_SET != HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_6))
    // {
    //     timeout_cnt++;
    //     if(timeout_cnt>timeout)
    //         return false;
    // }

    // // 10. Configure the SDA I/O as General Purpose Output Open-Drain , High level (Write 1 to GPIOx_ODR).
    // HAL_GPIO_WritePin(GPIOB, GPIO_PIN_7, GPIO_PIN_SET);

    // // 11. Check SDA High level in GPIOx_IDR.
    // while (GPIO_PIN_SET != HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_7))
    // {
    //     timeout_cnt++;
    //     if(timeout_cnt>timeout)
    //         return false;
    // }

    // // 12. Configure the SCL and SDA I/Os as Alternate function Open-Drain.
    // GPIO_InitStruct.Mode = GPIO_MODE_AF_OD;
    // GPIO_InitStruct.Pull = GPIO_PULLUP;
    // GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;

    // GPIO_InitStruct.Pin = GPIO_PIN_6;
    // HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

    // GPIO_InitStruct.Pin = GPIO_PIN_7;
    // HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

    // HAL_GPIO_WritePin(GPIOB, GPIO_PIN_6, GPIO_PIN_SET);
    // HAL_GPIO_WritePin(GPIOB, GPIO_PIN_7, GPIO_PIN_SET);

    // // 13. Set SWRST bit in I2Cx_CR1 register.
    // def->Instance->CR1 |= 0x8000;

    // asm("nop");

    // // 14. Clear SWRST bit in I2Cx_CR1 register.
    // def->Instance->CR1 &= ~0x8000;

    // asm("nop");

    // // 15. Enable the I2C peripheral by setting the PE bit in I2Cx_CR1 register
    // def->Instance->CR1 |= 0x0001;

    // // Call initialization function.
    // HAL_I2C_Init(def);

    return true;
}

}
}