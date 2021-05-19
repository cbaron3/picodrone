#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

#include "FreeRTOS.h"
#include "task.h"

#include "controller.h"

// Controller type handles
RCC_OscInitTypeDef OscCfg;
RCC_ClkInitTypeDef ClkCfg;
Controller_Cfg ControllerCfg;

void vHeartBeatTask(void *pvParameters) {
    // Repeating portion
    portTickType xLastWakeTime;
    const portTickType xFrequency = 1000;
    xLastWakeTime=xTaskGetTickCount();

    for( ;; )
    {        
        // Toggle
        HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_13);
		HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_2);
        // Delay until RTOS can swap context again with delay
        vTaskDelayUntil(&xLastWakeTime,xFrequency);
    }
}

int main() {
	// Oscillator settings
	// NOTE: LSE : Low-speed oscillator is not actually needed; can be useful for an extra timer and for RTC
	OscCfg.OscillatorType   = RCC_OSCILLATORTYPE_HSE;
    OscCfg.HSEState         = RCC_HSE_ON;
    OscCfg.HSEPredivValue   = RCC_HSE_PREDIV_DIV1;
    OscCfg.HSIState         = RCC_HSI_ON; // In case the external clock fails
    OscCfg.PLL.PLLState     = RCC_PLL_ON;
	OscCfg.PLL.PLLSource    = RCC_PLLSOURCE_HSE;
	OscCfg.PLL.PLLMUL       = RCC_PLL_MUL9; // Take the 8 MHz external clock and muliply by 9

	// Clock settings
	ClkCfg.ClockType      = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK | 
							RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
    ClkCfg.SYSCLKSource   = RCC_SYSCLKSOURCE_PLLCLK;
    ClkCfg.AHBCLKDivider  = RCC_SYSCLK_DIV1;
    ClkCfg.APB1CLKDivider = RCC_HCLK_DIV2;
    ClkCfg.APB2CLKDivider = RCC_HCLK_DIV1;

	// Controller settings
	ControllerCfg.flash_latency   = FLASH_ACR_LATENCY_1;
	ControllerCfg.hal_clk_source  = SYSTICK_CLKSOURCE_HCLK;
	ControllerCfg.hal_clk_divider = (uint32_t) 1000;

	Controller_Status status = Controller_Init(&OscCfg, &ClkCfg, &ControllerCfg);
	if(status != CONTROLLER_OK) {
		// Handle error
	}

	// Temporary blink code to ensure system is running
	__HAL_RCC_GPIOC_CLK_ENABLE();
	GPIO_InitTypeDef GPIO_InitStruct;
	GPIO_InitStruct.Pin = GPIO_PIN_13;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_NOPULL; //This was previously PULL_UP, which makes no sense on an output pin! No pullup resistors here.
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

	__HAL_RCC_GPIOB_CLK_ENABLE();
	GPIO_InitStruct.Pin = GPIO_PIN_2;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_NOPULL; //This was previously PULL_UP, which makes no sense on an output pin! No pullup resistors here.
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

	xTaskCreate( vHeartBeatTask, "HeartBeat", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY, NULL );

	vTaskStartScheduler();

    //you should never get here
    while(1){ }
}

void vApplicationMallocFailedHook(void)
{
	while(1);
}
