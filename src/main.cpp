#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"
#include "string.h"
#include "utility.hpp"
#include "uart.hpp"
#include "system.hpp"
#include "gpio.hpp"
#include "pwm.hpp"

#include "FreeRTOS.h"
#include "task.h"

// extern "C" {
// /* static memory allocation for the IDLE task */
// static StaticTask_t xIdleTaskTCBBuffer;
// static StackType_t xIdleStack[IDLE_TASK_SIZE];
 
// void vApplicationGetIdleTaskMemory(StaticTask_t **ppxIdleTaskTCBBuffer, StackType_t **ppxIdleTaskStackBuffer, uint32_t *pulIdleTaskStackSize) {
//   *ppxIdleTaskTCBBuffer = &xIdleTaskTCBBuffer;
//   *ppxIdleTaskStackBuffer = &xIdleStack[0];
//   *pulIdleTaskStackSize = IDLE_TASK_SIZE;
// }
// }

/* We must hook the systick in order for HAL_Delay to work. */
// extern "C" {
//   void SysTick_Handler(void)
//   {
//     HAL_IncTick();
//     HAL_SYSTICK_IRQHandler();
//   }
// }

int main() {
  using namespace picodrone;

	//Init HAL
	system::hal::init();

	//Initialize clocks to max speed
	system::clock::init();

	//Init GPIOs
	gpio::init();
  
  // Init PWM
  pwm::init();

  // Init UART
  uart::init();

  system::rtos::init();
  
  system::rtos::start();

  // TODO:
    // 1. Create a UART thread; debug with oscillscope until FTDI ships
    // 2. Create I2C thread; need to create write8, read8, etc... type items
      // Can debug with oscillscope
      // Probably can test with bmp180, simplest I2C device I have
      // Check HAL_I2C_Mem_READ/Write

	//Blinky blinky
  // uint16_t CH1_DC = 0;
	// while(1) {
	// 	// HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_13);
	// 	HAL_Delay(1000);

  //   uart::send("Hello World!");

  //   __HAL_TIM_SET_COMPARE(&pwm::TIMER2, TIM_CHANNEL_1, CH1_DC);
  //   CH1_DC += 50;

  //   if(CH1_DC >= 1095) CH1_DC = 0;
	// }

	return 0;
}

extern "C" void vApplicationMallocFailedHook(void);
void vApplicationMallocFailedHook(void)
{
	while(1);
}
