#ifndef COMMON_INCLUDE_HAL_SYSTEM_H
#define COMMON_INCLUDE_HAL_SYSTEM_H

#include "stm32f1xx.h"
#include "stm32f1xx_hal.h"

namespace common {

namespace hal {

class Controller {
public:
  /**
   * @brief
   *
   * @param osc_def
   * @param clk_def
   * @return true
   * @return false
   */
  bool static Init(RCC_OscInitTypeDef *osc_def, RCC_ClkInitTypeDef *clk_def) {
    // Track in setters if config has been changed. If the default has been
    // used, send a warning to the user

    // Capture different HAL errors for debug
    // Function to convert HAL errors into common ErrC; enum class

    // Block re init with error code to prevent re-init

    // Create unit test functionality; issue there is mocking the HAL. Check out
    // FFF
  }

  // Create deinit function

protected:
private:
};
} // namespace hal
} // namespace common

#endif // COMMON_INCLUDE_HAL_SYSTEM_H