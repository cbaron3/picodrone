#ifndef PICODRONE_COMMON_INCLUDE_HAL_CONTROLLER_H
#define PICODRONE_COMMON_INCLUDE_HAL_CONTROLLER_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

typedef struct {
    uint32_t flash_latency;     /// Flash wait state to ensure the speed of reading data from 
                                /// FLASH corresponds to the speed of the system clock
    uint32_t hal_clk_source;    /// HAL SYSTICK source
    uint32_t hal_clk_divider;   /// Divider to drop HAL SYSTICK source to SYSTICK interrupt time
} Controller_Cfg;
typedef enum {
  CONTROLLER_OK          = 0x00,
  CONTROLLER_OSC_ERR     = 0x01,
  CONTROLLER_CLK_ERR     = 0x02,
  CONTROLLER_SYSTICK_ERR = 0x03,
  CONTROLLER_HAL_ERR     = 0x04,
} Controller_Status;

/**
 * @brief Initialize the controller which includes the oscillator, system clock, and hardware-abstraction layer
 * 
 * @param controller_osc_cfg RCC Internal/External Oscillator (HSE, HSI, LSE, LSI) configuration
 * @param controller_clk_cfg RCC System, AHB and APM busses clock configuration
 * @param cfg Controller configuration structure
 * @return Controller_Status Return status of Init operation 
 */
Controller_Status Controller_Init(RCC_OscInitTypeDef* controller_osc_cfg, RCC_ClkInitTypeDef* controller_clk_cfg, Controller_Cfg *cfg);

#endif // PICODRONE_COMMON_INCLUDE_HAL_CONTROLLER_H
