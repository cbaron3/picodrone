// #include "config.h"

// #include "stm32f1xx_hal.h"
// #include "stm32f1xx.h"

// // NOTE: This is probably not the best way of handling these structs in terms of memory usage

// // Oscillator settings
// // RCC_OscInitTypeDef RCC_OscCfg;
// RCC_OscCfg.OscillatorType   = RCC_OSCILLATORTYPE_HSE;
// RCC_OscCfg.HSEState         = RCC_HSE_ON;
// RCC_OscCfg.HSEPredivValue   = RCC_HSE_PREDIV_DIV1;
// RCC_OscCfg.HSIState         = RCC_HSI_ON;
// RCC_OscCfg.PLL.PLLState     = RCC_PLL_ON;
// RCC_OscCfg.PLL.PLLSource    = RCC_PLLSOURCE_HSE;
// RCC_OscCfg.PLL.PLLMUL       = RCC_PLL_MUL9;

// // Clock settings
// RCC_ClkCfg.ClockType        = RCC_CLOCKTYPE_HCLK | 
//                                 RCC_CLOCKTYPE_SYSCLK | 
//                                 RCC_CLOCKTYPE_PCLK1 | 
//                                 RCC_CLOCKTYPE_PCLK2;
// RCC_ClkCfg.SYSCLKSource     = RCC_SYSCLKSOURCE_PLLCLK;
// RCC_ClkCfg.AHBCLKDivider    = RCC_SYSCLK_DIV1;
// RCC_ClkCfg.APB1CLKDivider   = RCC_HCLK_DIV2;
// RCC_ClkCfg.APB2CLKDivider   = RCC_HCLK_DIV1;

// // Board LED GPIO
// GPIO_OnboardLEDCfg.Pin =   GPIO_PIN_13;
// GPIO_OnboardLEDCfg.Mode =  GPIO_MODE_OUTPUT_PP;
// GPIO_OnboardLEDCfg.Pull =  GPIO_NOPULL;
// GPIO_OnboardLEDCfg.Speed = GPIO_SPEED_FREQ_LOW;

// // USART1 TX & RX GPIO

// // USART1 settings

// // I2C1 SDA & SCL GPIO

// // I2C1 settings

// // I2C2 settings

// // I2C2 SDA & SCL GPIO
