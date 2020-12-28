#include "Tasks.h"

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#include "HAL/UART.h"

#include "Config.h"

#include "Task_HeartBeat.h"
#include "Task_UART.h"
#include "Task_BMP.h"
#include "Task_MPU.h"
#include "Task_NRF.h"

namespace Tasks
{

static xQueueHandle uart_msg_queue;

void Init() {
    // Initialize UART message queue
    uart_msg_queue = xQueueCreate(10, 50);
}

void Start() {
    // Create all other tasks and print to UART
    picodrone::USART::Send(&config::UART_USART1Cfg, "Task manager started");
    
    xTaskCreate( vUartTask, "UART", configMINIMAL_STACK_SIZE, (void *) uart_msg_queue,  tskIDLE_PRIORITY + 1, NULL );
    xTaskCreate( vHeartBeatTask, "HeartBeat", configMINIMAL_STACK_SIZE, (void *) uart_msg_queue, tskIDLE_PRIORITY + 2, NULL );
    xTaskCreate( vBMP388Task, "BMP388", configMINIMAL_STACK_SIZE, (void *) uart_msg_queue, tskIDLE_PRIORITY + 4, NULL );
    xTaskCreate( vMPU6050Task, "MPU6050", configMINIMAL_STACK_SIZE, (void *) uart_msg_queue, tskIDLE_PRIORITY + 3, NULL );
    xTaskCreate( vNRF24Task, "NRF24", configMINIMAL_STACK_SIZE+1024, (void *) uart_msg_queue, tskIDLE_PRIORITY + 5, NULL );


    vTaskStartScheduler();

    //you should never get here
    while(1){ }
}

}