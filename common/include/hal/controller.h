#ifndef PICODRONE_COMMON_INCLUDE_HAL_CONTROLLER_H
#define PICODRONE_COMMON_INCLUDE_HAL_CONTROLLER_H

#include "utility/error.hpp"

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

namespace common
{

namespace hal
{

/**
 * @brief Class used to encapsulate initialize process of system clocks, interrupts,
 *        and hardware abstraction layer based on input clock and oscillator settings. 
 */
class Controller final
{
public:

/**
 * @brief Struct to encapsulate configurations NOT determined by STM32F1 Cube
 *        HAL type definitions
 */
struct Cfg {
    uint32_t latency;       /// Flash wait state to ensure the speed of reading data from 
                            /// FLASH corresponds to the speed of the system clock
    uint32_t clk_source;    /// HAL SYSTICK source
    uint32_t divider;       /// Divider to drop HAL SYSTICK source to SYSTICK interrupt time
};

static constexpr Cfg DEFAULT_CFG{FLASH_ACR_LATENCY_1, 1000, SYSTICK_CLKSOURCE_HCLK};

utility::ErrC static Init(RCC_OscInitTypeDef* osc_def, RCC_ClkInitTypeDef* clk_def, Cfg cfg = DEFAULT_CFG) noexcept;

};

}

} // namespace common

#endif // PICODRONE_COMMON_INCLUDE_HAL_CONTROLLER_H