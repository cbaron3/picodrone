#ifndef DRONE_INCLUDE_BMP_I2C1_TASK_H
#define DRONE_INCLUDE_BMP_I2C1_TASK_H

// STM32 definitions
#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

// FreeRTOS
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

void vBMP388Task(void *pvParameters);

#endif // DRONE_INCLUDE_BMP_I2C1_TASK_H