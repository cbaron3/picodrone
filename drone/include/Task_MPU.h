#ifndef DRONE_INCLUDE_MPU_I2C2_TASK_H
#define DRONE_INCLUDE_MPU_I2C2_TASK_H

// STM32 definitions
#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

// FreeRTOS
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

void vMPU6050Task(void *pvParameters);

#endif // DRONE_INCLUDE_MPU_I2C2_TASK_H