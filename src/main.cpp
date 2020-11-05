#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"
#include "string.h"
#include "utility.hpp"
#include "uart.hpp"
#include "system.hpp"
#include "gpio.hpp"
#include "pwm.hpp"

/* We must hook the systick in order for HAL_Delay to work. */
extern "C" {
  void SysTick_Handler(void)
  {
    HAL_IncTick();
    //osSystickHandler(); For FREERTOS stuff
  }
}

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

	//Blinky blinky
  uint16_t CH1_DC = 0;
	while(1) {
		HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_13);
		HAL_Delay(1000);

    uart::send("Hello World!");

    __HAL_TIM_SET_COMPARE(&pwm::TIMER2, TIM_CHANNEL_1, CH1_DC);
    CH1_DC += 50;

    if(CH1_DC >= 1095) CH1_DC = 0;
	}

	return 0;
}