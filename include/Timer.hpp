#ifndef TIMER_HPP
#define TIMER_HPP

#include "Types.hpp"
#include "stm32f1xx.h"
#include "stm32f1xx_hal.h"

namespace lib {
namespace timer {

    enum class CounterMode : lib::type::ui32 {
        Up =             (lib::type::ui32)(TIM_COUNTERMODE_UP),
        Down =           (lib::type::ui32)(TIM_COUNTERMODE_DOWN),
        CenterAligned1 = (lib::type::ui32)(TIM_COUNTERMODE_CENTERALIGNED1),
        CenterAligned2 = (lib::type::ui32)(TIM_COUNTERMODE_CENTERALIGNED2),
        CenterAligned3 = (lib::type::ui32)(TIM_COUNTERMODE_CENTERALIGNED3),
    };

    enum class ClockDiv : lib::type::ui32 {
        D1 = (lib::type::ui32)(TIM_CLOCKDIVISION_DIV1),
        D2 = (lib::type::ui32)(TIM_CLOCKDIVISION_DIV2),
        D4 = (lib::type::ui32)(TIM_CLOCKDIVISION_DIV4),
    };

    enum class AutoReloadPreload : lib::type::ui32 {
        Disable = (lib::type::ui32)(TIM_AUTORELOAD_PRELOAD_DISABLE),
        Enable =  (lib::type::ui32)(TIM_AUTORELOAD_PRELOAD_ENABLE),
    };

    enum class OCMode : lib::type::ui32 {
        PWM1 = (lib::type::ui32)(TIM_OCMODE_PWM1),
        PWM2 = (lib::type::ui32)(TIM_OCMODE_PWM2),
    };

    enum class OCPolarity : lib::type::ui32 {
        Low = (lib::type::ui32)(TIM_OCPOLARITY_LOW),
        High =  (lib::type::ui32)(TIM_OCPOLARITY_HIGH),
    };


    enum class OCFastMode : lib::type::ui32 {
        Disable = (lib::type::ui32)(TIM_OCFAST_DISABLE),
        Enable =  (lib::type::ui32)(TIM_OCFAST_ENABLE),
    };

    struct FreqConfig {
        /// Prescaler
        lib::type::ui32 PSC;

        // Auto reload value
        lib::type::ui32 ARR;
        

        // Updatefrequency = TIM clk/((PSC+1)*(ARR+1))
        // Need to eensure its an integer
        static lib::type::ui32 arr_to_psc(const FreqConfig& this_config, lib::type::ui32 freq_hz) {
            // Apply function to calculate psc
            return 0;
        }

        static lib::type::ui32 psc_to_arr(const FreqConfig& this_config, lib::type::ui32 freq_hz) {
            // Apply function to calculate arr
            return 0;
        }
    };

    template <TIM_TypeDef* PORT(), void ENABLE()>
    class PWM {
        private:
            using ui32 = lib::type::ui32;

        public:
            PWM() = delete;

            virtual ~PWM() = 0;
        
            template <ui32 ARR, ui32 PSC, CounterMode mode, ClockDiv clock_div, AutoReloadPreload auto_mode>  
            static lib::type::Result<HAL_StatusTypeDef, lib::type::ErrCode> InitTimer(TIM_HandleTypeDef *htim) noexcept {
                using Result = lib::type::Result<HAL_StatusTypeDef, lib::type::ErrCode>;

                ENABLE();

                htim->Instance = PORT();
                htim->Init.Prescaler = PSC;
                htim->Init.CounterMode = static_cast<ui32>(mode);
                htim->Init.Period = ARR;
                htim->Init.ClockDivision = static_cast<ui32>(clock_div);
                htim->Init.AutoReloadPreload = static_cast<ui32>(auto_mode);
                HAL_StatusTypeDef status = HAL_TIM_Base_Init((TIM_HandleTypeDef*) htim);

                if(status != HAL_OK) {
                    return Result{lib::type::ErrCode::eInitFailed};
                } else {
                    return Result{HAL_OK};
                }
            }

            template <ui32 PULSE, OCMode mode, OCFastMode fast_mode, OCPolarity polarity, ui32 CHANNEL>
            static lib::type::Result<HAL_StatusTypeDef, lib::type::ErrCode> InitCompare(TIM_HandleTypeDef *htim) {
                using Result = lib::type::Result<HAL_StatusTypeDef, lib::type::ErrCode>;
                TIM_OC_InitTypeDef sConfigOC = {0};

                sConfigOC.OCMode = static_cast<ui32>(mode);
                sConfigOC.Pulse = PULSE;
                sConfigOC.OCPolarity =  static_cast<ui32>(polarity);
                sConfigOC.OCFastMode =  static_cast<ui32>(fast_mode);

                HAL_StatusTypeDef status = HAL_TIM_PWM_ConfigChannel((TIM_HandleTypeDef*) htim, &sConfigOC, CHANNEL);

                if(status != HAL_OK) {
                    return Result{lib::type::ErrCode::eInitFailed};
                } else {
                    return Result{HAL_OK};
                }
            }
            
            template <ui32 CHANNEL>
            static lib::type::Result<HAL_StatusTypeDef, lib::type::ErrCode> Start(TIM_HandleTypeDef *htim){
                using Result = lib::type::Result<HAL_StatusTypeDef, lib::type::ErrCode>;
                
                HAL_StatusTypeDef status = HAL_TIM_PWM_Start((TIM_HandleTypeDef*) htim, CHANNEL);

                if(status != HAL_OK) {
                    return Result{lib::type::ErrCode::eInitFailed};
                } else {
                    return Result{HAL_OK};
                }
            }

            template <ui32 CHANNEL>
            static void Stop(TIM_HandleTypeDef* htim){
                HAL_TIM_PWM_Stop((TIM_HandleTypeDef*) htim, CHANNEL);
            }

            template <ui32 CHANNEL>
            static void SetValue(TIM_HandleTypeDef *htim, ui32 VALUE){
                __HAL_TIM_SET_COMPARE((TIM_HandleTypeDef*) htim, CHANNEL, VALUE);
            }

            template <ui32 CHANNEL>
            static void SetDuty(TIM_HandleTypeDef *htim, lib::type::ui8 DUTY) {
                ui32 pulse = htim->Init.Period * (DUTY/100.0f);

                __HAL_TIM_SET_COMPARE((TIM_HandleTypeDef*) htim, CHANNEL, pulse);
            }

        protected:
    };



    // Port and clock enable wrappers
    
    constexpr TIM_TypeDef* TIM_2() {
        return TIM2;
    }

    void ENABLE_TIM_2() {
        __HAL_RCC_TIM2_CLK_ENABLE();
    }

    // TIM ports
    class PWM_2 : public PWM<TIM_2, ENABLE_TIM_2>{};
}
}


#endif // TIMER_HPP