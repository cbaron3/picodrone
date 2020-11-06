#ifndef INCLUDE_UART_H
#define INCLUDE_UART_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

namespace picodrone
{

namespace uart
{
    UART_HandleTypeDef UART1;

    void init() {
        
        __HAL_RCC_AFIO_CLK_ENABLE();
        //AFIO->MAPR |= AFIO_MAPR_USART2_REMAP;

        __HAL_RCC_USART1_CLK_ENABLE();

        // /* GPIOA PIN9 alternative function Tx */
        // GPIO_InitTypeDef gpioa_init_struct;
        // gpioa_init_struct.Pin = GPIO_PIN_2;
        // gpioa_init_struct.Speed = GPIO_SPEED_FREQ_HIGH;
        // gpioa_init_struct.Mode = GPIO_MODE_AF_PP;
        // HAL_GPIO_Init(GPIOA, &gpioa_init_struct);
        // /* GPIOA PIN9 alternative function Rx */
        // gpioa_init_struct.Pin = GPIO_PIN_3;
        // gpioa_init_struct.Speed = GPIO_SPEED_FREQ_HIGH;
        // gpioa_init_struct.Mode = GPIO_MODE_AF_OD;
        // HAL_GPIO_Init(GPIOA, &gpioa_init_struct);
        
        UART1.Instance = USART1;
        UART1.Init.BaudRate = 9600;
        UART1.Init.WordLength = UART_WORDLENGTH_8B;
        UART1.Init.StopBits = UART_STOPBITS_1;
        UART1.Init.Parity = UART_PARITY_NONE;
        UART1.Init.Mode = UART_MODE_TX_RX;
        UART1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
        UART1.Init.OverSampling = UART_OVERSAMPLING_16;

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

#endif // INCLUDE_UART_H