#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

 static RCC_ClkInitTypeDef RCC_ClkCfg;

int main() {
	__GPIOA_CLK_ENABLE();
	RCC_ClkCfg.APB1CLKDivider = 0;
}

void vApplicationMallocFailedHook(void)
{
	while(1);
}
