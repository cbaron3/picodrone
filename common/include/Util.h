#ifndef UTIL_HPP
#define UTIL_HPP

#include <string.h>

// STM32 definitions
#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

// FreeRTOS
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

namespace lib {
    namespace util {
        inline void ErrorHandler(const char* file, int line) {
            while(1){}
        }

        inline void ReportHalStatus(xQueueHandle *q, const char* handle, const HAL_StatusTypeDef& status) {
            const char *msg = "";

            // Could use look up table
            switch (status)
            {
                case HAL_OK : {
                    msg = " - OK";
                } break;

                case HAL_ERROR: {
                    msg = " - ERROR";
                } break;

                case HAL_BUSY: {
                    msg = " - BUSY";
                } break;

                case HAL_TIMEOUT: {
                    msg = " - TIMEOUT";
                } break;
            
                default: {
                    msg = " - UNKNOWN HAL";
                } break;
            }

            char result[strlen(handle) + 1 + strlen(msg) + 1];
            strcpy(result, handle);
            strcat(result, msg);

            xQueueSend(*q, result, 0);
        }
    }
}

#endif // UTIL_HPP