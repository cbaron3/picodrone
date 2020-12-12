#ifndef INCLUDE_UART_H
#define INCLUDE_UART_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"
#include "string.h"
#include "utility.hpp"

namespace picodrone
{

namespace uart
{
    static UART_HandleTypeDef UART1;

    void init();

    void send(const char *_out);
}

}

#endif // INCLUDE_UART_H