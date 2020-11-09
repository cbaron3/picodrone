// #ifndef PICODRONE_OS_TASKS_H
// #define PICODRONE_OS_TASKS_H

// namespace picodrone
// {

// namespace os
// {

// namespace task
// {
//     // Based off of https://www.freertos.org/FreeRTOS_Support_Forum_Archive/July_2010/freertos_Is_it_possible_create_freertos_task_in_c_3778071.html
//     class Base {
//         public:

//             Base(char const* name, unsigned portBASE_TYPE priority, 
//                       unsigned portSHORT stackDepth, portTickType frequency) : xFrequency(frequency) {
//                 xTaskCreate(&TaskImpl, (char*)name, stackDepth, this, priority, &_handle);
//             }

//             // xTaskHandle GetHandle(void) {
//             //     return _handle;
//             // }
//             xTaskHandle GetHandle(void);

//             portTickType GetFrequency() {
//                 return xFrequency;
//             }

//             virtual void Setup() = 0;
//             virtual void Loop() = 0;
            

//             static void TaskImpl(void *pvParams) {
//                 static_cast<Base *>(pvParams)->Setup();

//                 portTickType xLastWakeTime;
//                 xLastWakeTime = xTaskGetTickCount();

//                 for( ;; )
//                 {
//                     static_cast<Base *>(pvParams)->Loop();
//                     vTaskDelayUntil(&xLastWakeTime, static_cast<Base *>(pvParams)->GetFrequency());
//                 }                
//             }

//         protected:
//             xTaskHandle _handle;

//             const portTickType xFrequency;
//     };

//     // For I2C style things, can create a base class that I can pass into drivers. 
//     // Easily can unit test that. 
//     // Test each function of the setup function for BME

//     // I2C Base (Read/Write) -> CriticalI2C -> I2C1
//     //                                      -> I2C2
//     //                                      -> Ensure locks are handled appropriately

// } // task namespace

// } // os namespace

// } // picodrone namespace

// #endif  // PICODRONE_OS_TASKS_H