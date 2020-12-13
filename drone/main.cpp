#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

#include "utility.hpp"
#include "uart.hpp"
#include "system.hpp"

#include "stm32f1xx_ll_usart.h"

#include "gpio.hpp"
#include "pwm.hpp"
#include "i2c.hpp"

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#include "task_manager.h"

#include "config.h"

// TODO: Combine hal and clock init into one system init
// TODO: Keep all Handle and Typedefs in config separate, then pass into init helpers
  // In those init functions, can log input variables using serial send.
  // Will need to initialize UART
  // Can pass UART into serial and only call if not null

  // PUT HAL__ENABLES in main

int main() {
  using namespace picodrone;
  using namespace config;

	// Init HAL
	System::Init(&RCC_OscCfg, &RCC_ClkCfg);

  // GPIO Init
  GPIO::Init(GPIO::PORT::A, &GPIOA_USART1TxCfg);
  GPIO::Init(GPIO::PORT::A, &GPIOA_USART1RxCfg);
  GPIO::Init(GPIO::PORT::C, &GPIOC_OnboardLEDCfg);
  
  // Init PWM
  pwm::init();

  // Init UART
  USART::Init(USART::PORT::U1, &UART_USART1Cfg);

  // USART::Send(&UART_USART1Cfg, ".");

  // Init I2C
  i2c::init();

  task_manager::init();

  task_manager::start();
  
	return 0;
}

extern "C" void vApplicationMallocFailedHook(void);
void vApplicationMallocFailedHook(void)
{
	while(1);
}
