#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"
#include "string.h"

#include "GPIO.hpp"
#include "Timer.hpp"
#include "Util.hpp"

TIM_HandleTypeDef htim2;


/* Boot up the Phase Locked Loop to give us a 72MHz clock.. */
void SystemClock_Config(void)
{

  RCC_OscInitTypeDef RCC_OscInitStruct;
  RCC_ClkInitTypeDef RCC_ClkInitStruct;

    /**Initializes the CPU, AHB and APB busses clocks
    */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    lib::util::ErrorHandler(__FILE__, __LINE__);
  }

    /**Initializes the CPU, AHB and APB busses clocks
    */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    lib::util::ErrorHandler(__FILE__, __LINE__);
  }

    /**Configure the Systick interrupt time
    */
  HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);

    /**Configure the Systick
    */
  HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

  /* SysTick_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(SysTick_IRQn, 15, 0);
}

/* We must hook the systick in order for HAL_Delay to work. */
extern "C" {
  void SysTick_Handler(void)
  {
    HAL_IncTick();
    //osSystickHandler(); For FREERTOS stuff
  }
}

void InitGPIO()
{
    using namespace lib::gpio;

    // Onboard LED
    C::init<Pin::P13, Mode::OutputPP, Pull::None, Speed::High>();
    
    // Configure channel 1 on Timer 2 for PWM
    A::init<Pin::P0, Mode::AltPP, Pull::None, Speed::High>();
}

void InitPWM()
{
    using namespace lib::timer;

    using Result = lib::type::Result<HAL_StatusTypeDef, lib::type::ErrCode>;

    // Init timer
    Result timer_init = PWM_2::InitTimer<1095, 15, CounterMode::Up, ClockDiv::D1, AutoReloadPreload::Enable>(&htim2);
    if(!timer_init) { lib::util::ErrorHandler(__FILE__, __LINE__); }

    // Init output compare
    Result comp_init = PWM_2::InitCompare<0, OCMode::PWM1, OCFastMode::Enable, OCPolarity::High, TIM_CHANNEL_1>(&htim2);
    if(!comp_init) { lib::util::ErrorHandler(__FILE__, __LINE__); }

    // Start
    Result start = PWM_2::Start<TIM_CHANNEL_1>(&htim2);
    if(!start) { lib::util::ErrorHandler(__FILE__, __LINE__); }
}

int main() {
	//Init HAL            // Start

            // Stop

            // PWM Config

            // PWM Set
	HAL_Init();

	//Initialize clocks to max speed
	SystemClock_Config();

	//Init GPIOs
	InitGPIO();

    // Init PWM
    InitPWM();

	//Blinky blinky
    uint16_t CH1_DC = 0;
	while(1) {
        lib::gpio::C::toggle<lib::gpio::Pin::P13>();

		HAL_Delay(100);

        lib::timer::PWM_2::SetValue<TIM_CHANNEL_1>(&htim2, CH1_DC);

        CH1_DC += 50;

        if(CH1_DC >= 1095) CH1_DC = 0;
	}

	return 0;
}