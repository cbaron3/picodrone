#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

#include "utility.hpp"
// #include "uart.hpp"
#include "system.hpp"
#include "gpio.hpp"
#include "pwm.hpp"
#include "i2c.hpp"

#include "include/debug_task.hpp"

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
  // pwm::init();

  // // Init UART
  // uart::init();

  // // Init I2C
  // i2c::init();

  //system::rtos::init();

  
  DebugTask debug_task {tskIDLE_PRIORITY, configMINIMAL_STACK_SIZE, 1000};

  system::rtos::start();

	return 0;
}

extern "C" void vApplicationMallocFailedHook(void);
void vApplicationMallocFailedHook(void)
{
	while(1);
}
