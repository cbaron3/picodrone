#include "task_base.hpp"

void picodrone::os::task::Base::TaskImpl(void *pvParams) {
    Base *base = static_cast<Base *>(pvParams);
    // static_cast<Base *>(pvParams)->Setup();
    base->Setup();
    portTickType xLastWakeTime;
    xLastWakeTime = xTaskGetTickCount();

    for( ;; )
    {
        //static_cast<Base *>(pvParams)->Loop();
        base->Loop();
        vTaskDelayUntil(&xLastWakeTime, base->GetFrequency());
    }        
    
}
