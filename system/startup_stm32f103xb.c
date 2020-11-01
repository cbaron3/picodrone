/* Defined fault handlers */

// If an exception is for some reason not handled and does not end up in the interrupt vector, ensure that the exception is caught
__attribute__((section(".text.interrupt_handler"))) void _infinite_loop() {
  while (1)
    ;
}

// Define weak attribute to allow interrupt handlers to be redefined if extra functionality is needed besides the default 
#define WEAK __attribute__((weak))

// Fault handler
__attribute__ ((used))
void WEAK  Reset_Handler(void);
void WEAK  NMI_Handler(void);
void WEAK  HardFault_Handler(void);
void WEAK  MemManage_Handler(void);
void WEAK  BusFault_Handler(void);
void WEAK  UsageFault_Handler(void);
void WEAK  SVC_Handler(void);
void WEAK  DebugMon_Handler(void);
void WEAK  PendSV_Handler(void);
void WEAK  SysTick_Handler(void);
void WEAK  WWDG_IRQHandler(void);
void WEAK  PVD_IRQHandler(void);
void WEAK  TAMPER_IRQHandler(void);
void WEAK  RTC_IRQHandler(void);
void WEAK  FLASH_IRQHandler(void);
void WEAK  RCC_IRQHandler(void);
void WEAK  EXTI0_IRQHandler(void);
void WEAK  EXTI1_IRQHandler(void);
void WEAK  EXTI2_IRQHandler(void);
void WEAK  EXTI3_IRQHandler(void);
void WEAK  EXTI4_IRQHandler(void);
void WEAK  DMA1_Channel1_IRQHandler(void);
void WEAK  DMA1_Channel2_IRQHandler(void);
void WEAK  DMA1_Channel3_IRQHandler(void);
void WEAK  DMA1_Channel4_IRQHandler(void);
void WEAK  DMA1_Channel5_IRQHandler(void);
void WEAK  DMA1_Channel6_IRQHandler(void);
void WEAK  DMA1_Channel7_IRQHandler(void);
void WEAK  ADC1_2_IRQHandler(void);
void WEAK  USB_HP_CAN1_TX_IRQHandler(void);
void WEAK  USB_LP_CAN1_RX0_IRQHandler(void);
void WEAK  CAN1_RX1_IRQHandler(void);
void WEAK  CAN1_SCE_IRQHandler(void);
void WEAK  EXTI9_5_IRQHandler(void);
void WEAK  TIM1_BRK_IRQHandler(void);
void WEAK  TIM1_UP_IRQHandler(void);
void WEAK  TIM1_TRG_COM_IRQHandler(void);
void WEAK  TIM1_CC_IRQHandler(void);
void WEAK  TIM2_IRQHandler(void);
void WEAK  TIM3_IRQHandler(void);
void WEAK  TIM4_IRQHandler(void);
void WEAK  I2C1_EV_IRQHandler(void);
void WEAK  I2C1_ER_IRQHandler(void);
void WEAK  I2C2_EV_IRQHandler(void);
void WEAK  I2C2_ER_IRQHandler(void);
void WEAK  SPI1_IRQHandler(void);
void WEAK  SPI2_IRQHandler(void);
void WEAK  USART1_IRQHandler(void);
void WEAK  USART2_IRQHandler(void);
void WEAK  USART3_IRQHandler(void);
void WEAK  EXTI15_10_IRQHandler(void);
void WEAK  RTCAlarm_IRQHandler(void);
void WEAK  USBWakeUp_IRQHandler(void); 

/* Capture linker variables */

// stack definition
extern unsigned long _ld_stack_end; // Stack end

// .data section
extern unsigned long _ld_data_load_source; // Start address for the initial values of .data
extern unsigned long _ld_data_load_dest_start; // Start address of .data section
extern unsigned long _ld_data_load_dest_stop; // End address of .data section

// .bss section
extern unsigned long _ld_bss_data_start; // Start address of .bss section
extern unsigned long _ld_bss_data_stop;  // End address of .bss section

/* System startup function prototypes */
extern int main(void);                      // System entry point
extern void SystemInit(void);               // Microcontroller setup
void DefaultResetHandler(void);             // Default reset handler
static void DefaultExceptionHandler(void);  // Default exception handler

/* System startup function implementation */

__attribute__((section(".text.reset"))) 
void DefaultResetHandler(void)
{
    // Fill data
    volatile unsigned long* src = &_ld_data_load_source;
    for (volatile unsigned long* dest_data = &_ld_data_load_dest_start; dest_data != &_ld_data_load_dest_stop;) {
        *dest_data++ = *src++;
    }
        
    // Zero fill bss
    for (volatile unsigned long* dest_bss = &_ld_bss_data_start; dest_bss != &_ld_bss_data_stop; dest_bss++) {
        *dest_bss = 0x0;
    }
    
    // SystemInit
    // TODO: Link and implement init
    // SystemInit();

    // main
    main();

    // Infinite loop to catch any random exits from main without powering down
    _infinite_loop();
}

static void DefaultExceptionHandler(void) 
{
    _infinite_loop();
}

typedef void (*interrupt_fn)();
__attribute__((used,section(".interrupt_vector")))
static volatile interrupt_fn interrupt_vector_table[] = {
    /* Core Exceptions */
    (interrupt_fn)&_ld_stack_end,  // Place start of vector table at end of stack because  stack starts at the maximum address and grows down
    Reset_Handler,                // Reset Handler                            
    NMI_Handler,                  // NMI Handler                              
    HardFault_Handler,            // Hard Fault Handler                       
    MemManage_Handler,            // MPU Fault Handler                        
    BusFault_Handler,             // Bus Fault Handler                        
    UsageFault_Handler,           // Usage Fault Handler                      
    0,0,0,0,                      // Reserved                                 
    SVC_Handler,                  // SVCall Handler                           
    DebugMon_Handler,             // Debug Monitor Handler                    
    0,                            // Reserved                                 
    PendSV_Handler,               // PendSV Handler                           
    SysTick_Handler,              // SysTick Handler                          

    /*----------External Exceptions---------------------------------------------*/
    WWDG_IRQHandler,              //  0: Window Watchdog                      
    PVD_IRQHandler,               //  1: PVD through EXTI Line detect         
    TAMPER_IRQHandler,            //  2: Tamper                               
    RTC_IRQHandler,               //  3: RTC                                  
    FLASH_IRQHandler,             //  4: Flash                                
    RCC_IRQHandler,               //  5: RCC                                  
    EXTI0_IRQHandler,             //  6: EXTI Line 0                          
    EXTI1_IRQHandler,             //  7: EXTI Line 1                          
    EXTI2_IRQHandler,             //  8: EXTI Line 2                          
    EXTI3_IRQHandler,             //  9: EXTI Line 3                          
    EXTI4_IRQHandler,             // 10: EXTI Line 4                          
    DMA1_Channel1_IRQHandler,     // 11: DMA1 Channel 1                       
    DMA1_Channel2_IRQHandler,     // 12: DMA1 Channel 2                       
    DMA1_Channel3_IRQHandler,     // 13: DMA1 Channel 3                       
    DMA1_Channel4_IRQHandler,     // 14: DMA1 Channel 4                       
    DMA1_Channel5_IRQHandler,     // 15: DMA1 Channel 5                       
    DMA1_Channel6_IRQHandler,     // 16: DMA1 Channel 6                       
    DMA1_Channel7_IRQHandler,     // 17: DMA1 Channel 7                       
    ADC1_2_IRQHandler,            // 18: ADC1 & ADC2                          
    USB_HP_CAN1_TX_IRQHandler,    // 19: USB High Priority or CAN1 TX         
    USB_LP_CAN1_RX0_IRQHandler,   // 20: USB Low  Priority or CAN1 RX0        
    CAN1_RX1_IRQHandler,          // 21: CAN1 RX1                             
    CAN1_SCE_IRQHandler,          // 22: CAN1 SCE                             
    EXTI9_5_IRQHandler,           // 23: EXTI Line 9..5                       
    TIM1_BRK_IRQHandler,          // 24: TIM1 Break                           
    TIM1_UP_IRQHandler,           // 25: TIM1 Update                          
    TIM1_TRG_COM_IRQHandler,      // 26: TIM1 Trigger and Commutation         
    TIM1_CC_IRQHandler,           // 27: TIM1 Capture Compare                 
    TIM2_IRQHandler,              // 28: TIM2                                 
    TIM3_IRQHandler,              // 29: TIM3                                 
    TIM4_IRQHandler,              // 30: TIM4                                 
    I2C1_EV_IRQHandler,           // 31: I2C1 Event                           
    I2C1_ER_IRQHandler,           // 32: I2C1 Error                           
    I2C2_EV_IRQHandler,           // 33: I2C2 Event                           
    I2C2_ER_IRQHandler,           // 34: I2C2 Error                           
    SPI1_IRQHandler,              // 35: SPI1                                 
    SPI2_IRQHandler,              // 36: SPI2                                 
    USART1_IRQHandler,            // 37: USART1                               
    USART2_IRQHandler,            // 38: USART2                               
    USART3_IRQHandler,            // 39: USART3                               
    EXTI15_10_IRQHandler,         // 40: EXTI Line 15..10                     
    RTCAlarm_IRQHandler,          // 41: RTC Alarm through EXTI Line          
    USBWakeUp_IRQHandler,         // 42: USB Wakeup from suspend                
    0,0,0,0,0,0,0,                // Reserved                                  
    (void *)0xF108F85F            // Boot in RAM mode                         
};    

// Weak alias to ensure they can be overriden
#pragma weak Reset_Handler = DefaultResetHandler  
#pragma weak NMI_Handler = DefaultExceptionHandler
#pragma weak HardFault_Handler = DefaultExceptionHandler
#pragma weak MemManage_Handler = DefaultExceptionHandler
#pragma weak BusFault_Handler = DefaultExceptionHandler
#pragma weak UsageFault_Handler = DefaultExceptionHandler
#pragma weak SVC_Handler = DefaultExceptionHandler
#pragma weak DebugMon_Handler = DefaultExceptionHandler
#pragma weak PendSV_Handler = DefaultExceptionHandler
#pragma weak SysTick_Handler = DefaultExceptionHandler
#pragma weak WWDG_IRQHandler = DefaultExceptionHandler
#pragma weak PVD_IRQHandler = DefaultExceptionHandler
#pragma weak TAMPER_IRQHandler = DefaultExceptionHandler
#pragma weak RTC_IRQHandler = DefaultExceptionHandler
#pragma weak FLASH_IRQHandler = DefaultExceptionHandler
#pragma weak RCC_IRQHandler = DefaultExceptionHandler
#pragma weak EXTI0_IRQHandler = DefaultExceptionHandler
#pragma weak EXTI1_IRQHandler = DefaultExceptionHandler
#pragma weak EXTI2_IRQHandler = DefaultExceptionHandler
#pragma weak EXTI3_IRQHandler = DefaultExceptionHandler
#pragma weak EXTI4_IRQHandler = DefaultExceptionHandler
#pragma weak DMA1_Channel1_IRQHandler = DefaultExceptionHandler
#pragma weak DMA1_Channel2_IRQHandler = DefaultExceptionHandler
#pragma weak DMA1_Channel3_IRQHandler = DefaultExceptionHandler
#pragma weak DMA1_Channel4_IRQHandler = DefaultExceptionHandler
#pragma weak DMA1_Channel5_IRQHandler = DefaultExceptionHandler
#pragma weak DMA1_Channel6_IRQHandler = DefaultExceptionHandler
#pragma weak DMA1_Channel7_IRQHandler = DefaultExceptionHandler
#pragma weak ADC1_2_IRQHandler = DefaultExceptionHandler
#pragma weak USB_HP_CAN1_TX_IRQHandler = DefaultExceptionHandler
#pragma weak USB_LP_CAN1_RX0_IRQHandler = DefaultExceptionHandler
#pragma weak CAN1_RX1_IRQHandler = DefaultExceptionHandler
#pragma weak CAN1_SCE_IRQHandler = DefaultExceptionHandler
#pragma weak EXTI9_5_IRQHandler = DefaultExceptionHandler
#pragma weak TIM1_BRK_IRQHandler = DefaultExceptionHandler
#pragma weak TIM1_UP_IRQHandler = DefaultExceptionHandler
#pragma weak TIM1_TRG_COM_IRQHandler = DefaultExceptionHandler
#pragma weak TIM1_CC_IRQHandler = DefaultExceptionHandler
#pragma weak TIM2_IRQHandler = DefaultExceptionHandler
#pragma weak TIM3_IRQHandler = DefaultExceptionHandler
#pragma weak TIM4_IRQHandler = DefaultExceptionHandler
#pragma weak I2C1_EV_IRQHandler = DefaultExceptionHandler
#pragma weak I2C1_ER_IRQHandler = DefaultExceptionHandler
#pragma weak I2C2_EV_IRQHandler = DefaultExceptionHandler
#pragma weak I2C2_ER_IRQHandler = DefaultExceptionHandler
#pragma weak SPI1_IRQHandler = DefaultExceptionHandler
#pragma weak SPI2_IRQHandler = DefaultExceptionHandler
#pragma weak USART1_IRQHandler = DefaultExceptionHandler
#pragma weak USART2_IRQHandler = DefaultExceptionHandler
#pragma weak USART3_IRQHandler = DefaultExceptionHandler
#pragma weak EXTI15_10_IRQHandler = DefaultExceptionHandler
#pragma weak RTCAlarm_IRQHandler = DefaultExceptionHandler
#pragma weak USBWakeUp_IRQHandler = DefaultExceptionHandler