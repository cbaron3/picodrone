#include "uart.hpp"
#include "stm32f1xx_ll_usart.h"

namespace picodrone
{

namespace USART
{

bool Init(PORT port, UART_HandleTypeDef* def) {
    __HAL_RCC_AFIO_CLK_ENABLE();

    switch(port) {
        case PORT::U1: {
            __HAL_RCC_USART1_CLK_ENABLE();
        } break;

        case PORT::U2: {
            __HAL_RCC_USART2_CLK_ENABLE();
        } break;
    }

    __HAL_RCC_USART1_CLK_ENABLE();
    if (HAL_UART_Init(def) != HAL_OK) {
        return false;
    } else {
        return true;
    }
}

void Send(UART_HandleTypeDef* def, const char *_out) {
    // HAL_UART_Transmit(def, (uint8_t *) _out, strlen(_out), 0xffff);
    // char newline[2] = {'\r','\n'};
    // HAL_UART_Transmit(def, (uint8_t *) newline, 2, 0xffff); 

    int len = strlen(_out);

    for (int i = 0; i < len; i++) {
        LL_USART_TransmitData8(def->Instance, _out[i]);
        while (!LL_USART_IsActiveFlag_TXE(def->Instance)) {}
    }

    LL_USART_TransmitData8(def->Instance, '\r');
    while (!LL_USART_IsActiveFlag_TXE(def->Instance)) {}
    
    LL_USART_TransmitData8(def->Instance, '\n');
    while (!LL_USART_IsActiveFlag_TXE(def->Instance)) {}
}

}

}

// namespace picodrone
// {

// namespace uart
// {
//     // static UART_HandleTypeDef UART1;

//      void init() {
        
//         __HAL_RCC_AFIO_CLK_ENABLE();

//         __HAL_RCC_USART1_CLK_ENABLE();
        
//         UART1.Instance = USART1;
//         UART1.Init.BaudRate = 9600;
//         UART1.Init.WordLength = UART_WORDLENGTH_8B;
//         UART1.Init.StopBits = UART_STOPBITS_1;
//         UART1.Init.Parity = UART_PARITY_NONE;
//         UART1.Init.Mode = UART_MODE_TX_RX;
//         UART1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
//         UART1.Init.OverSampling = UART_OVERSAMPLING_16;


//         // TODO: Replace with LL_UART INIT because this takes too much flash, ~9k or around ~14
//         if (HAL_UART_Init(&UART1) != HAL_OK)
//         {
//             /* Initialization Error */
//             lib::util::ErrorHandler(__FILE__, __LINE__);
//         }
//     } 

//      void send(const char *_out) {
//         HAL_UART_Transmit(&UART1, (uint8_t *) _out, strlen(_out), 0xffff);
//         char newline[2] = {'\r','\n'};
//         HAL_UART_Transmit(&UART1, (uint8_t *) newline, 2, 0xffff); 
//     }   
// }

// }
