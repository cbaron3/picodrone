#ifndef INCLUDE_UART_H
#define INCLUDE_UART_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx_ll_usart.h"
#include "stm32f1xx.h"
#include "string.h"
#include "Util.h"

namespace picodrone
{

namespace USART
{
    enum class PORT { U1, U2 };

    inline bool Init(PORT port, UART_HandleTypeDef* def) {
        __HAL_RCC_AFIO_CLK_ENABLE();

        switch(port) {
            case PORT::U1: {
                __HAL_RCC_USART1_CLK_ENABLE();
            } break;

            case PORT::U2: {
                __HAL_RCC_USART2_CLK_ENABLE();
            } break;
        }

        if (HAL_UART_Init(def) != HAL_OK) {
            return false;
        } else {
            return true;
        }
    }

    inline void Send(UART_HandleTypeDef* def, const char *_out) {
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

#endif // INCLUDE_UART_H