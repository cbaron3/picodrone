#include "uart.hpp"

namespace picodrone
{

namespace uart
{
    // static UART_HandleTypeDef UART1;

     void init() {
        
        __HAL_RCC_AFIO_CLK_ENABLE();

        __HAL_RCC_USART1_CLK_ENABLE();
        
        UART1.Instance = USART1;
        UART1.Init.BaudRate = 9600;
        UART1.Init.WordLength = UART_WORDLENGTH_8B;
        UART1.Init.StopBits = UART_STOPBITS_1;
        UART1.Init.Parity = UART_PARITY_NONE;
        UART1.Init.Mode = UART_MODE_TX_RX;
        UART1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
        UART1.Init.OverSampling = UART_OVERSAMPLING_16;


        // TODO: Replace with LL_UART INIT because this takes too much flash, ~9k or around ~14
        if (HAL_UART_Init(&UART1) != HAL_OK)
        {
            /* Initialization Error */
            lib::util::ErrorHandler(__FILE__, __LINE__);
        }
    } 

     void send(const char *_out) {
        HAL_UART_Transmit(&UART1, (uint8_t *) _out, strlen(_out), 0xffff);
        char newline[2] = {'\r','\n'};
        HAL_UART_Transmit(&UART1, (uint8_t *) newline, 2, 0xffff); 
    }   
}

}
