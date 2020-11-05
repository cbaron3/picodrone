#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"
#include "string.h"
#include "Util.hpp"
// #include "thread.hpp"

TIM_HandleTypeDef htim2;


// Calculate prescalar based on period and 

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

void Pin_Init()
{
    // LED pins
    __HAL_RCC_GPIOC_CLK_ENABLE();
    GPIO_InitTypeDef GPIO_InitStruct;
    GPIO_InitStruct.Pin = GPIO_PIN_13;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL; //This was previously PULL_UP, which makes no sense on an output pin! No pullup resistors here.
    GPIO_InitStruct.Speed = GPIO_SPEED_HIGH;
    HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

    // PWM pins
    __HAL_RCC_GPIOA_CLK_ENABLE();
    GPIO_InitTypeDef GPIO_PWM_InitStruct;
    GPIO_PWM_InitStruct.Pin = GPIO_PIN_0;
    GPIO_PWM_InitStruct.Mode = GPIO_MODE_AF_PP;
    //GPIO_PWM_InitStruct.Pull = GPIO_NOPULL; //This was previously PULL_UP, which makes no sense on an output pin! No pullup resistors here.
    GPIO_PWM_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(GPIOA, &GPIO_PWM_InitStruct);
}

void TIM_Init()
{
  __HAL_RCC_TIM2_CLK_ENABLE();

    //TIM_ClockConfigTypeDef sClockSourceConfig = {0};
    //TIM_MasterConfigTypeDef sMasterConfig = {0};
    TIM_OC_InitTypeDef sConfigOC = {0};

    htim2.Instance = TIM2;
    htim2.Init.Prescaler = 15;
    htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
    htim2.Init.Period = 1095;
    htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
    htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
    if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
    {
      lib::util::ErrorHandler(__FILE__, __LINE__);
    }

    sConfigOC.OCMode = TIM_OCMODE_PWM1;
    sConfigOC.Pulse = 0;
    sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
    sConfigOC.OCFastMode = TIM_OCFAST_ENABLE;
    if (HAL_TIM_PWM_ConfigChannel(&htim2, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
    {
      
      lib::util::ErrorHandler(__FILE__, __LINE__);
    }
}

int main() {
	//Init HAL
	HAL_Init();

	//Initialize clocks to max speed
	SystemClock_Config();

	//Init GPIOs
	Pin_Init();

  // Init PWM
  TIM_Init();

  HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_1);

	//Blinky blinky
  uint16_t CH1_DC = 0;
	while(1) {
		HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_13);
    HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_6);
		HAL_Delay(100);

    __HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_1, CH1_DC);
    CH1_DC += 50;

    if(CH1_DC >= 1095) CH1_DC = 0;
	}

	return 0;
}