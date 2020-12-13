#ifndef INCLUDE_UART_H
#define INCLUDE_UART_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"
#include "string.h"
#include "utility.hpp"

namespace picodrone
{

namespace USART
{
    enum class PORT { U1, U2 };

    bool Init(PORT port, UART_HandleTypeDef* def);

    void Send(UART_HandleTypeDef* def, const char *_out);
}

}

#endif // INCLUDE_UART_H