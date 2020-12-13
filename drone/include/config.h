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

// // I2C1 SDA & SCL GPIO
// GPIO_InitTypeDef GPIO_I2C1SDACfg;

// GPIO_InitTypeDef GPIO_I2C1SCLCfg;

// // I2C1 settings
// I2C_HandleTypeDef I2C_I2C1Cfg;

// // I2C2 settings
// I2C_HandleTypeDef I2C_I2C2Cfg;

// // I2C2 SDA & SCL GPIO
// GPIO_InitTypeDef GPIO_I2C2SDACfg;

// GPIO_InitTypeDef GPIO_I2C2SCLCfg;

}
#endif