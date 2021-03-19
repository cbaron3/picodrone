// #include "hal/controller.h"
// #include "stm32f1xx_hal.h"
// #include "stm32f1xx.h"

// namespace common
// {

// namespace hal
// {

// constexpr Controller::Cfg Controller::DEFAULT_CFG;

// utility::ErrC Controller::Init(RCC_OscInitTypeDef* osc_def, RCC_ClkInitTypeDef* clk_def, Cfg cfg) {
//     // Initializes the CPU, AHB and APB busses clocks
//     if (HAL_RCC_OscConfig(osc_def) != HAL_OK) {
//         return utility::ErrC::kHalError;
//     }

//     if (HAL_RCC_ClockConfig(clk_def, cfg.latency) != HAL_OK) {
//         return utility::ErrC::kHalError;
//     }

//     // Configure the Systick interrupt time
//     HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/cfg.divider);

//     // Configure the Systick
//     HAL_SYSTICK_CLKSourceConfig(cfg.clk_source);

//     // SysTick_IRQn interrupt configuration
//     HAL_NVIC_SetPriority(SysTick_IRQn, 15, 0);

//     HAL_Init();

//     return utility::ErrC::kNone;
// }

// } // namespace hal
    
// } // namespace common
