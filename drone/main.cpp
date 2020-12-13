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

  // TODO: Try using the task base again now that I fixed that weird USART issue

int main() {
  using namespace picodrone;
  using namespace config;

	// Init HAL
	System::Init(&RCC_OscCfg, &RCC_ClkCfg);
  
  // GPIO Init
  GPIO::Init(GPIO::PORT::A, &GPIOA_USART1TxCfg);
  GPIO::Init(GPIO::PORT::A, &GPIOA_USART1RxCfg);

  GPIO::Init(GPIO::PORT::B, &GPIOB_I2C1SDACfg);
  GPIO::Init(GPIO::PORT::B, &GPIOB_I2C1SCLCfg);

  // GPIO::Init(GPIO::PORT::B, &GPIOB_I2C2SDACfg);
  // GPIO::Init(GPIO::PORT::B, &GPIOB_I2C2SCLCfg);

  GPIO::Init(GPIO::PORT::C, &GPIOC_OnboardLEDCfg);
  
  // Init PWM
  pwm::init();

  // Init UART
  USART::Init(USART::PORT::U1, &UART_USART1Cfg);

  // Init I2C
  
  //__HAL_RCC_I2C1_FORCE_RESET();
  //__HAL_RCC_I2C1_RELEASE_RESET();
  
  task_manager::init();

  task_manager::start();
  
	return 0;
}

extern "C" void vApplicationMallocFailedHook(void);
void vApplicationMallocFailedHook(void)
{
	while(1);
}


  // void vI2C_BMP(void *pvParameters) {
  //       // Will be for i2c/bmp
  //       // Fast for IMU, slower for BMP. Maybe two threads? Use two different I2C busses? Yes. Unless creating a sensor hub.
  //       // sensors <-> sensor chip <-> main chip could be something for the future
        
  //       // Check if device is ready
  //       const char* status_msg = "BME280 Ready";
  //       HAL_StatusTypeDef device_status = HAL_I2C_IsDeviceReady(&i2c::m_I2C1, (0x76 << 1), 1, 100);
  //       if(HAL_OK == device_status) {
  //           xQueueSend(picodrone::system::rtos::txQueue,status_msg,100);
  //       }

  //       // Delay - 500 ticks at 1ms per tick
  //       vTaskDelay(500);
        
        
  //       // Setup calibration
        
  //       // 1. Reset the BME 280 to trigger the power-on reset
  //       uint8_t BME_RESET_ADDR = 0xE0;
  //       uint8_t BME_RESET_VAL = 0xB6;
        
  //       device_status = HAL_I2C_Mem_Write(&i2c::m_I2C1, (0x76 << 1), BME_RESET_ADDR, I2C_MEMADD_SIZE_8BIT, &BME_RESET_VAL, sizeof(BME_RESET_VAL), 10);
  //       if(HAL_OK == device_status) {
  //           xQueueSend(picodrone::system::rtos::txQueue,"RESET BME",100);
  //       }
  //       vTaskDelay(10);

  //       // 2. Check who am I register
  //       uint8_t BME_ID_ADDR = 0xD0;

  //       uint8_t _buffer[1];
  //       device_status = HAL_I2C_Mem_Read(&i2c::m_I2C1, (0x76 << 1), BME_ID_ADDR, I2C_MEMADD_SIZE_8BIT, _buffer, sizeof(_buffer), 10);
  //       if(HAL_OK == device_status && _buffer[0] == 0x60) {
  //           xQueueSend(picodrone::system::rtos::txQueue,"CORRECT CHIP ID",100);
  //       }
  //       vTaskDelay(500);

  //       // 3. Wait for trimming parameters to be copied into registers before reading
  //           // 3a. check status register

  //       // 4. Read trimming parameters; manufacturing config data

  //       // 5. Set config data for rate, filter and interface (general)

  //       // 6. Set ctrl for humid - humidity data acquisition options
  //           // NOTE: WRITE THIS FIRST BECAUSE THE HUMID SETTINGS WILL ONLY BE CHANGED AFTER MEAS IS WRITTEN

  //       // 7. Set ctrl for meas - measurement options

  //       // read config registers to ensure they match the specified config

  //       portTickType xLastWakeTime;
  //       const portTickType xFrequency = 500;
  //       xLastWakeTime=xTaskGetTickCount();
  //       for( ;; )
  //       {
  //           HAL_I2C_IsDeviceReady(&i2c::m_I2C1, (0x76 << 1), 1, 100);
  //           vTaskDelayUntil(&xLastWakeTime,xFrequency);
  //       }
  //   }
