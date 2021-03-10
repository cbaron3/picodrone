// STM32
#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

int main() {
  
}

extern "C" void vApplicationMallocFailedHook(void);
void vApplicationMallocFailedHook(void)
{
	while(1);
}