#include "task_manager.h"

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#include "uart.hpp"

#include "config.h"

#include "heart_beat_task.h"
#include "uart_task.h"
#include "bmp_i2c1_task.h"

namespace task_manager
{

static xQueueHandle uart_msg_queue;

void init() {
    // Initialize UART message queue
    uart_msg_queue = xQueueCreate(5, 50);
}

void start() {
    // Create all other tasks and print to UART
    picodrone::USART::Send(&config::UART_USART1Cfg, "Task manager started");
    
    xTaskCreate( vUartTask, "UART", configMINIMAL_STACK_SIZE, (void *) uart_msg_queue,  tskIDLE_PRIORITY, NULL );
    xTaskCreate( vHeartBeatTask, "HeartBeat", configMINIMAL_STACK_SIZE, (void *) uart_msg_queue, tskIDLE_PRIORITY, NULL );
    xTaskCreate( vBMP388Task, "BMP388", configMINIMAL_STACK_SIZE, (void *) uart_msg_queue, tskIDLE_PRIORITY, NULL );

    vTaskStartScheduler();

    //you should never get here
    while(1){ }
}

}