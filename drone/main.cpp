#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

#include "utility.hpp"
#include "uart.hpp"
#include "system.hpp"

#include "gpio.hpp"
#include "pwm.hpp"
#include "i2c.hpp"

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#include "task_manager.h"

int main() {
  using namespace picodrone;

	// Init HAL
	system::hal::init();

	// Initialize clocks to max speed
	system::clock::init();

	// Init GPIOs
	gpio::init();
  
  // Init PWM
  pwm::init();

  // Init UART
  uart::init();

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
