#ifndef USART1_QUEUE_H
#define USART1_QUEUE_H

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

void init_queue();

BaseType_t add_queue(const char* x);

BaseType_t pop_queue(char* x);

#endif