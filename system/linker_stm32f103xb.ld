GROUP (
        libnosys.a
    )
    
ENTRY(DefaultResetHandler)

/* Memory mapping */
MEMORY
{
    FLASH (rx) : ORIGIN = 0x08000000, LENGTH = 64K
    RAM (xrw) : ORIGIN = 0x20000000, LENGTH = 20K
}

/* Stack sizing definitions */
_ld_stack_end = ORIGIN(RAM) + LENGTH(RAM);
_ld_stack_min_size = 0x200;

/* Heap sizing definitions */
_ld_heap_min_size = 0x000;

SECTIONS
{
    /* First thing goes into flash is the Interrupt Vector Table */
    /* Contains interrupt vectors in a vector table with a specific address of the interrupt vector and the corresponding handler */
    .interrupt_vector : {
        . = ALIGN(4);
        KEEP(*(.interrupt_vector))
        . = ALIGN(4);
    } >FLASH

    /* Code and initialized data that is read-only goes directly into flash */
    .text : {
        . = ALIGN(4);
        KEEP(*(.text.interrupt_handler))
        *(.text*)
    } >FLASH

    .rodata : {
        . = ALIGN(4);
        *(.rodata*)
        . = ALIGN(4);
    } >FLASH

    .ARM.extab :
    {
    *(.ARM.extab* .gnu.linkonce.armextab.*)
    } >FLASH
    
    .ARM : {
        *(.ARM.exidx*)
    } >FLASH

    /* Handle global ctors and dtors */
    .preinit_array : {
        PROVIDE_HIDDEN (__preinit_array_start = .);
        KEEP (*(.preinit_array*))
        PROVIDE_HIDDEN (__preinit_array_end = .);
    } >FLASH

    .init_array : {
        PROVIDE_HIDDEN (__init_array_start = .);
        KEEP (*(SORT(.init_array.*)))
        KEEP (*(.init_array*))
        PROVIDE_HIDDEN (__init_array_end = .);
    } >FLASH

    .fini_array : {
        PROVIDE_HIDDEN (__fini_array_start = .);
        KEEP (*(.fini_array*))
        KEEP (*(SORT(.fini_array.*)))
        PROVIDE_HIDDEN (__fini_array_end = .);
    } >FLASH

    /* Initialized data goes into flash but also copied into RAM in case it needs to be manipulated */
    .data : {
        . = ALIGN(4);
        _ld_data_load_dest_start = .; /* export start address for initialized data; used in startup for initializing section */
        *(.data*)
        . = ALIGN(4);
        _ld_data_load_dest_stop = .; /* export end address for initialized data; used in startup for initializing section */
    } >RAM AT> FLASH
    _ld_data_load_source = LOADADDR(.data); /* load data to be initialized in memory */

    /* Uninitialized data needs to be zero'd */
    .bss :
    {
        . = ALIGN(4);
        _ld_bss_data_start = .; /* export start address for bss; used in startup for zero'ing section */
        *(.bss*)
        . = ALIGN(4);
        _ld_bss_data_stop = .; /* export end address for bss; used in startup for zero'ing section */
    } >RAM
    /* No need for data source because will be initialized to 0 */

    /* Check that enough RAM is left */
    ._user_heap_stack :
    {
        . = ALIGN(8);
        PROVIDE ( end = . );
        PROVIDE ( _end = . );
        . = . + _ld_heap_min_size;
        . = . + _ld_stack_min_size;
        . = ALIGN(8);
    } >RAM

    /* Remove excess info from the compiler libraries */
    /DISCARD/ :
    {
        libc.a ( * )
        libm.a ( * )
        libgcc.a ( * )
    }

    
}