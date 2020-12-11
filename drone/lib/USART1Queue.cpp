#include "USART1Queue.hpp"

static xQueueHandle txQueue;

void init_queue() {
    txQueue = xQueueCreate(5, 50);
}

BaseType_t add_queue(const char* x) {
    return xQueueSend(txQueue, "Hello", 0);
}

BaseType_t pop_queue(char* x) {
    return xQueueReceive(txQueue, x, 0);
}