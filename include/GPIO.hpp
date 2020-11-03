// Need to enable clock

// Pin settings
    // Number
    // Mode
    // Pull state
    // Speed

// Init pin
    // Constructor

// De init pin
    // Destructor

// Read, Write, Toggle, Lock

// EXTI IRQ Handler, Callback?

#ifndef GPIO_HPP
#define GPIO_HPP

#include "stm32f1xx.h"
#include "stm32f1xx_hal.h"
#include "Types.hpp"

/// Library  namespace
namespace lib {

/// GPIO functionality
namespace gpio {

    /// GPIO Mode
    enum class Mode : lib::type::ui32 {
        Input =            (lib::type::ui32)(GPIO_MODE_INPUT),
        OutputPP =         (lib::type::ui32)(GPIO_MODE_OUTPUT_PP),
        OutputOD =         (lib::type::ui32)(GPIO_MODE_OUTPUT_OD),
        AltPP =            (lib::type::ui32)(GPIO_MODE_AF_PP),
        AltOD =            (lib::type::ui32)(GPIO_MODE_AF_OD),
        AltInput =         (lib::type::ui32)(GPIO_MODE_AF_INPUT),
        Analog =           (lib::type::ui32)(GPIO_MODE_ANALOG),
        ItRising =         (lib::type::ui32)(GPIO_MODE_IT_RISING),
        ItFalling =        (lib::type::ui32)(GPIO_MODE_IT_FALLING),
        ItRisingFalling =  (lib::type::ui32)(GPIO_MODE_IT_RISING_FALLING),
        EvtRising =        (lib::type::ui32)(GPIO_MODE_EVT_RISING),
        EvtFalling =       (lib::type::ui32)(GPIO_MODE_EVT_FALLING),
        EvtFallingRising = (lib::type::ui32)(GPIO_MODE_EVT_RISING_FALLING),
    };

    // GPIO Speed
    enum class Speed : lib::type::ui32 {
        Low =    (lib::type::ui32)(GPIO_SPEED_FREQ_LOW),
        Medium = (lib::type::ui32)(GPIO_SPEED_FREQ_MEDIUM),
        High =   (lib::type::ui32)(GPIO_SPEED_FREQ_HIGH),
    };

    // GPIO Pull Up/Down
    enum class Pull : lib::type::ui32 {
        None = (lib::type::ui32)(GPIO_NOPULL),
        Up =   (lib::type::ui32)(GPIO_PULLUP),
        Down = (lib::type::ui32)(GPIO_PULLDOWN),
    };

    // GPIO Pin
    enum class Pin : lib::type::ui32 {
        P0 =   (lib::type::ui32)(GPIO_PIN_0),
        P1 =   (lib::type::ui32)(GPIO_PIN_1),
        P2 =   (lib::type::ui32)(GPIO_PIN_2),
        P3 =   (lib::type::ui32)(GPIO_PIN_3),
        P4 =   (lib::type::ui32)(GPIO_PIN_4),
        P5 =   (lib::type::ui32)(GPIO_PIN_5),
        P6 =   (lib::type::ui32)(GPIO_PIN_6),
        P7 =   (lib::type::ui32)(GPIO_PIN_7),
        P8 =   (lib::type::ui32)(GPIO_PIN_8),
        P9 =   (lib::type::ui32)(GPIO_PIN_9),
        P10 =  (lib::type::ui32)(GPIO_PIN_10),
        P11 =  (lib::type::ui32)(GPIO_PIN_11),
        P12 =  (lib::type::ui32)(GPIO_PIN_12),
        P13 =  (lib::type::ui32)(GPIO_PIN_13),
        P14 =  (lib::type::ui32)(GPIO_PIN_14),
        P15 =  (lib::type::ui32)(GPIO_PIN_15),
        PAll = (lib::type::ui32)(GPIO_PIN_All),
    };

    // Operator to OR together Pin types
    inline Pin operator | (Pin lhs, Pin rhs)
    {
        using T = lib::type::ui32;
        return static_cast<Pin>(static_cast<T>(lhs) | static_cast<T>(rhs));
    }

    /// @brief GPIO base to define common functions for every port
    /// 
    /// @tparam PORT() Function pointer to pass port address as template argument
    /// @tparam ENABLE() Function pointer to pass port clock enable as template argument
    template <GPIO_TypeDef* PORT(), void ENABLE()>
    class Base {
        public:
            /// No default constructor
            Base() = delete;

            /// Virtual destrutor to ensure object can't be instantiated
            virtual ~Base() = 0;

            /// @brief Initialize a GPIO pin
            /// 
            /// @tparam pin 
            /// @tparam mode 
            /// @tparam pull 
            /// @tparam speed 
            template <Pin pin, Mode mode, Pull pull, Speed speed>
            static void init(void) noexcept {
                ENABLE();

                GPIO_InitTypeDef GPIO_InitStruct;
                GPIO_InitStruct.Pin = static_cast<ui32>(pin);
                GPIO_InitStruct.Mode = static_cast<ui32>(mode);
                GPIO_InitStruct.Pull = static_cast<ui32>(pull);
                GPIO_InitStruct.Speed = static_cast<ui32>(speed);
                HAL_GPIO_Init(PORT(), &GPIO_InitStruct);
            }

            /// @brief Read pin state
            /// 
            /// @tparam pin 
            /// @return true If pin is high
            /// @return false If pin is low
            template <Pin pin>
            static bool read(void) noexcept {
                // Read state
                GPIO_PinState state = HAL_GPIO_ReadPin(PORT(), static_cast<ui32>(pin) );
                return static_cast<bool>(state);
            }

            /// @brief Set pin
            /// 
            /// @tparam pin 
            template <Pin pin>
            static void set(void) noexcept {
                HAL_GPIO_WritePin(PORT(), static_cast<ui32>(pin), GPIO_PIN_SET);
            }

            /// @brief Reset pin
            /// 
            /// @tparam pin 
            template <Pin pin>
            static void reset(void) noexcept {
                HAL_GPIO_WritePin(PORT(), static_cast<ui32>(pin), GPIO_PIN_RESET);
            }

            /// @brief Toggle pin
            /// 
            /// @tparam pin 
            template <Pin pin>
            static void toggle(void) noexcept {
                HAL_GPIO_TogglePin(PORT(), static_cast<ui32>(pin));
            }

        private:
            using ui32 = lib::type::ui32;
    };

    // Port and clock enable wrappers
    
    constexpr GPIO_TypeDef* GPIO_A() {
        return GPIOA;
    }

    void ENABLE_GPIO_A() {
        __HAL_RCC_GPIOA_CLK_ENABLE();
    }

    constexpr GPIO_TypeDef* GPIO_B() {
        return GPIOB;
    }

    void ENABLE_GPIO_B() {
        __HAL_RCC_GPIOB_CLK_ENABLE();
    }

    constexpr GPIO_TypeDef* GPIO_C() {
        return GPIOC;
    }

    void ENABLE_GPIO_C() {
        __HAL_RCC_GPIOC_CLK_ENABLE();
    }

    constexpr GPIO_TypeDef* GPIO_D() {
        return GPIOD;
    }

    void ENABLE_GPIO_D() {
        __HAL_RCC_GPIOD_CLK_ENABLE();
    }

    // GPIO ports
    class A : public Base<GPIO_A, ENABLE_GPIO_A>{};
    class B : public Base<GPIO_B, ENABLE_GPIO_B>{};
    class C : public Base<GPIO_C, ENABLE_GPIO_C>{};
    class D : public Base<GPIO_D, ENABLE_GPIO_D>{};

} // End of GPIO namespace
} // End of library

#endif // GPIO_HPP
