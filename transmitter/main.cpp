#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

#include "utility.hpp"
// #include "uart.hpp"
#include "system.hpp"
#include "gpio.hpp"
#include "pwm.hpp"
#include "i2c.hpp"

// #include "OS/threads.h"

int main() {
  using namespace picodrone;

	//Init HAL
	system::hal::init();

	// //Initialize clocks to max speed
	system::clock::init();

	// //Init GPIOs
	gpio::init();
  
  // Init PWM
  pwm::init();

  // Init UART
  uart::init();

  // Init I2C
  i2c::init();

  system::rtos::init();

  system::rtos::start();

  // TODO:
    // 1. Create a UART thread; debug with oscillscope until FTDI ships
    // 2. Create I2C thread; need to create write8, read8, etc... type items
      // Can debug with oscillscope
      // Probably can test with bmp180, simplest I2C device I have
      // Check HAL_I2C_Mem_READ/Write

	return 0;
}

extern "C" void vApplicationMallocFailedHook(void);
void vApplicationMallocFailedHook(void)
{
	while(1);
}
