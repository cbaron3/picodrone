#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

#include "utility.hpp"
#include "uart.hpp"
#include "system.hpp"
#include "gpio.hpp"
#include "pwm.hpp"
#include "i2c.hpp"

#include "HeartBeatTask.hpp"

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

  Foo();
  
  system::rtos::init();

  system::rtos::start();

	return 0;
}

extern "C" void vApplicationMallocFailedHook(void);
void vApplicationMallocFailedHook(void)
{
	while(1);
}
