#ifndef DRONE_CONFIG_H
#define DRONE_CONFIG_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

// NOTE: This is probably not the best way of handling these structs in terms of memory usage

namespace config
{

// Oscillator settings
static RCC_OscInitTypeDef RCC_OscCfg {
    .OscillatorType   = RCC_OSCILLATORTYPE_HSE,
    .HSEState         = RCC_HSE_ON,
    .HSEPredivValue   = RCC_HSE_PREDIV_DIV1,
    .HSIState         = RCC_HSI_ON,
    .PLL = {
        .PLLState     = RCC_PLL_ON,
        .PLLSource    = RCC_PLLSOURCE_HSE,
        .PLLMUL       = RCC_PLL_MUL9,
    },
};

// Clock settings
static RCC_ClkInitTypeDef RCC_ClkCfg {
    .ClockType        = RCC_CLOCKTYPE_HCLK | 
                        RCC_CLOCKTYPE_SYSCLK | 
                        RCC_CLOCKTYPE_PCLK1 | 
                        RCC_CLOCKTYPE_PCLK2,
    .SYSCLKSource     = RCC_SYSCLKSOURCE_PLLCLK,
    .AHBCLKDivider    = RCC_SYSCLK_DIV1,
    .APB1CLKDivider   = RCC_HCLK_DIV2,
    .APB2CLKDivider   = RCC_HCLK_DIV1,
};

// Board LED GPIO
static GPIO_InitTypeDef GPIOC_OnboardLEDCfg {
    .Pin =   GPIO_PIN_13,
    .Mode =  GPIO_MODE_OUTPUT_PP,
    .Pull =  GPIO_NOPULL,
    .Speed = GPIO_SPEED_FREQ_LOW,
};


// USART1 TX & RX GPIO
static GPIO_InitTypeDef GPIOA_USART1TxCfg {
    .Pin =   GPIO_PIN_9,
    .Mode =  GPIO_MODE_AF_PP,
    .Pull =  GPIO_NOPULL,
    .Speed = GPIO_SPEED_FREQ_HIGH,
};

static GPIO_InitTypeDef GPIOA_USART1RxCfg {
    .Pin =   GPIO_PIN_10,
    .Mode =  GPIO_MODE_AF_OD,
    .Pull =  GPIO_NOPULL,
    .Speed = GPIO_SPEED_FREQ_HIGH,
};

// USART1 settings
static UART_HandleTypeDef UART_USART1Cfg {
    .Instance = USART1,
    .Init = {
        .BaudRate = 9600,
        .WordLength = UART_WORDLENGTH_8B,
        .StopBits = UART_STOPBITS_1,
        .Parity = UART_PARITY_NONE,
        .Mode = UART_MODE_TX_RX,
        .HwFlowCtl = UART_HWCONTROL_NONE,
        .OverSampling = UART_OVERSAMPLING_16,
    },
};

// I2C1 SDA & SCL GPIO
// I2C1 -> SDA on PB7, SCL on PB6
static GPIO_InitTypeDef GPIOB_I2C1SCLCfg {
    .Pin       = GPIO_PIN_6,
    .Mode      = GPIO_MODE_AF_OD,
    .Pull      = GPIO_PULLUP,
    .Speed     = GPIO_SPEED_FREQ_HIGH,
};

static GPIO_InitTypeDef GPIOB_I2C1SDACfg {
    .Pin       = GPIO_PIN_7,
    .Mode      = GPIO_MODE_AF_OD,
    .Pull      = GPIO_PULLUP,
    .Speed     = GPIO_SPEED_FREQ_HIGH,
};

// // I2C1 settings
static I2C_HandleTypeDef I2C_I2C1Cfg {
    .Instance             = I2C1,
    .Init = {
        .ClockSpeed      = 100000, // 100 kHz
        .DutyCycle       = I2C_DUTYCYCLE_2,
        .OwnAddress1     = 0x00,  // Either 076 or 077
        .AddressingMode  = I2C_ADDRESSINGMODE_7BIT,
        .DualAddressMode = I2C_DUALADDRESS_DISABLE,
        .OwnAddress2     = 0xFF,
        .GeneralCallMode = I2C_GENERALCALL_DISABLE,
        .NoStretchMode   = I2C_NOSTRETCH_DISABLE,  
    },    
};

// I2C2 SDA & SCL GPIO
// I2C2 -> SDA on PB11, SCL on PB10
static GPIO_InitTypeDef GPIOB_I2C2SCLCfg {
    .Pin       = GPIO_PIN_10,
    .Mode      = GPIO_MODE_AF_OD,
    .Pull      = GPIO_PULLUP,
    .Speed     = GPIO_SPEED_FREQ_HIGH,
};

static GPIO_InitTypeDef GPIOB_I2C2SDACfg {
    .Pin       = GPIO_PIN_11,
    .Mode      = GPIO_MODE_AF_OD,
    .Pull      = GPIO_PULLUP,
    .Speed     = GPIO_SPEED_FREQ_HIGH,
};

// I2C2 settings
static I2C_HandleTypeDef I2C_I2C2Cfg {
    .Instance             = I2C2,
    .Init = {
        .ClockSpeed      = 100000, // 100 kHz
        .DutyCycle       = I2C_DUTYCYCLE_2,
        .OwnAddress1     = 0x00,  // Either 076 or 077
        .AddressingMode  = I2C_ADDRESSINGMODE_7BIT,
        .DualAddressMode = I2C_DUALADDRESS_DISABLE,
        .OwnAddress2     = 0xFF,
        .GeneralCallMode = I2C_GENERALCALL_DISABLE,
        .NoStretchMode   = I2C_NOSTRETCH_DISABLE,  
    },    
};

}
#endif