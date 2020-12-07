#ifndef DRONE_DEBUG_TASK_HPP
#define DRONE_DEBUG_TASK_HPP

#include "gpio.hpp"
#include "task_base.hpp"

class DebugTask : public picodrone::os::task::Base {
public:
    DebugTask(unsigned portBASE_TYPE priority, unsigned portSHORT stack_depth, portTickType frequency) 
        : picodrone::os::task::Base(priority, stack_depth, frequency) {}
    
    void Setup() override {
        //HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_13);
    }

    void Loop() override {
        HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_13);
    }

protected:
private:
};

#endif // DRONE_DEBUG_TASK_HPP