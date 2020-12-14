// STM32
#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

// Common components
#include "HAL/GPIO.h"
#include "HAL/PWM.h"
#include "HAL/I2C.h"
#include "HAL/UART.h"
#include "HAL/System.h"
#include "Util.h"

// Project specific
#include "Tasks.h"
#include "Config.h"

int main() {
  using namespace picodrone;
  using namespace config;

	/* System Init */
	System::Init(&RCC_OscCfg, &RCC_ClkCfg);
  
  /* GPIO Init */
  // UART Rx/Tx pins
  GPIO::Init(GPIO::PORT::A, &GPIOA_USART1TxCfg);
  GPIO::Init(GPIO::PORT::A, &GPIOA_USART1RxCfg);

  // I2C SDA/SCL pins
  GPIO::Init(GPIO::PORT::B, &GPIOB_I2C1SDACfg);
  GPIO::Init(GPIO::PORT::B, &GPIOB_I2C1SCLCfg);
  GPIO::Init(GPIO::PORT::B, &GPIOB_I2C2SDACfg);
  GPIO::Init(GPIO::PORT::B, &GPIOB_I2C2SCLCfg);

  // Onboard LED
  GPIO::Init(GPIO::PORT::C, &GPIOC_OnboardLEDCfg);

  // SPI NSS/SCK/MOSI/MISO/CE
  GPIO::Init(GPIO::PORT::B, &GPIOB_SPI1NSSCfg);
  GPIO::Init(GPIO::PORT::A, &GPIOA_SPI1SCKCfg);
  GPIO::Init(GPIO::PORT::A, &GPIOA_SPI1MOSICfg);
  GPIO::Init(GPIO::PORT::A, &GPIOA_SPI1MISOCfg);
  GPIO::Init(GPIO::PORT::A, &GPIOA_SPI1CECfg);

  /* UART Init */
  USART::Init(USART::PORT::U1, &UART_USART1Cfg);

  /* RTOS and Tasks Init */
  Tasks::Init();
  Tasks::Start();
  
	return 0;
}

extern "C" void vApplicationMallocFailedHook(void);
void vApplicationMallocFailedHook(void)
{
	while(1);
}