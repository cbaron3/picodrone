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

#include "USART1Task.hpp"
#include "USART1Queue.hpp"
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

  system::rtos::init();

  system::rtos::start();

  // // Foo();
  
  // // system::rtos::init();

  // //char r[100]="Hello";
  // const char* h = "Hello";
  // //picodrone::uart::send(h);

  // // init_queue();

  // // xTaskCreate(vUSART1Task, "USART1", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY, NULL);

  // xTaskCreate(vHeartBeatTask, "Heartbeat", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY, NULL);
  
  // // system::rtos::start();

  // vTaskStartScheduler();
  //       //you should never get here
  //       while(1)
  //           { }

	return 0;
}

extern "C" void vApplicationMallocFailedHook(void);
void vApplicationMallocFailedHook(void)
{
	while(1);
}
