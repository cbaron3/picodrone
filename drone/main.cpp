// STM32
#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

#include "hal/controller.h"
#include "config/controller_cfg.hpp"

#include "FreeRTOS.h"
#include "task.h"

void vHeartBeatTask(void *pvParameters) {
    // Repeating portion
    portTickType xLastWakeTime;
    const portTickType xFrequency = 1000;
    xLastWakeTime=xTaskGetTickCount();

    for( ;; )
    {        
        // Toggle
        HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_13);

        // Delay until RTOS can swap context again with delay
        vTaskDelayUntil(&xLastWakeTime,xFrequency);
    }
}

int main() {
  	common::hal::Controller::Init(&drone::config::RCC_OscCfg, &drone::config::RCC_ClkCfg);

 	__HAL_RCC_GPIOC_CLK_ENABLE();
	GPIO_InitTypeDef GPIO_InitStruct;
	GPIO_InitStruct.Pin = GPIO_PIN_13;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_NOPULL; //This was previously PULL_UP, which makes no sense on an output pin! No pullup resistors here.
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);


	xTaskCreate( vHeartBeatTask, "HeartBeat", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY, NULL );

	vTaskStartScheduler();

    //you should never get here
    while(1){ }
}

extern "C" void vApplicationMallocFailedHook(void);
void vApplicationMallocFailedHook(void)
{
	while(1);
}