// #ifndef PICODRONE_DRONE_INCLUDE_CONFIG_CONTROLLER_CFG_H
// #define PICODRONE_DRONE_INCLUDE_CONFIG_CONTROLLER_CFG_H

// namespace drone
// {

// namespace config
// {

// // Oscillator settings
// static RCC_OscInitTypeDef RCC_OscCfg {
//     .OscillatorType   = RCC_OSCILLATORTYPE_HSE,
//     .HSEState         = RCC_HSE_ON,
//     .HSEPredivValue   = RCC_HSE_PREDIV_DIV1,
//     .HSIState         = RCC_HSI_ON,
//     .PLL = {
//         .PLLState     = RCC_PLL_ON,
//         .PLLSource    = RCC_PLLSOURCE_HSE,
//         .PLLMUL       = RCC_PLL_MUL9,
//     },
// };

// // Clock settings
// static RCC_ClkInitTypeDef RCC_ClkCfg {
//     .ClockType        = RCC_CLOCKTYPE_HCLK | 
//                         RCC_CLOCKTYPE_SYSCLK | 
//                         RCC_CLOCKTYPE_PCLK1 | 
//                         RCC_CLOCKTYPE_PCLK2,
//     .SYSCLKSource     = RCC_SYSCLKSOURCE_PLLCLK,
//     .AHBCLKDivider    = RCC_SYSCLK_DIV1,
//     .APB1CLKDivider   = RCC_HCLK_DIV2,
//     .APB2CLKDivider   = RCC_HCLK_DIV1,
// };

// } // config namespace

// } // drone namespace

// #endif // PICODRONE_DRONE_INCLUDE_CONFIG_CONTROLLER_CFG_H