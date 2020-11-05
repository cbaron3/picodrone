#ifndef INCLUDE_UART_H
#define INCLUDE_UART_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

namespace picodrone
{

namespace uart
{
    UART_HandleTypeDef UART2;

    void init() {
        UART2.Instance = USART2;
        UART2.Init.BaudRate = 9600;
        UART2.Init.WordLength = UART_WORDLENGTH_8B;
        UART2.Init.StopBits = UART_STOPBITS_1;
        UART2.Init.Parity = UART_PARITY_NONE;
        UART2.Init.Mode = UART_MODE_TX_RX;
        UART2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
        UART2.Init.OverSampling = UART_OVERSAMPLING_16;
    } 

    void send(const char *_out) {
        HAL_UART_Transmit(&UART2, (uint8_t *) _out, strlen(_out), 10);
        char newline[2] = {'\r','\n'};
        HAL_UART_Transmit(&UART2, (uint8_t *) newline, 2, 10); 
    }   
}

}

#endif // INCLUDE_UART_H