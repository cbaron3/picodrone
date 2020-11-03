#ifndef TYPES_HPP
#define TYPES_HPP

#include <cstdint>

#include "Util.hpp"

namespace lib {
    namespace type {
        // Definition of types based on width, standardized
        using ui8 = uint8_t;
        using ui16 = uint16_t;
        using ui32 = uint32_t;

        using si8 = int8_t;
        using si16 = int16_t;
        using si32 = int32_t; 

        // System error code
        enum class ErrCode {
            eNone = 0x00,
            eInitFailed = 0x01,
        };

        /**
         * @brief Result is a class that can either return a valid value OR return an error code.
         * 
         * @tparam T type of the result
         * @tparam E error code
         */
        template <typename T, typename E = ErrCode>
        class Result {
        public:
            /**
             * @brief Construct a new Result object
             */
            Result() = delete;

            /**
             * @brief Construct a new Result object
             * 
             * @param value 
             */
            Result(T value) {_value = value; }

            /**
             * @brief Construct a new Result object
             * 
             * @param err 
             */
            Result(ErrCode err) {_err = err; }

            /**
             * @brief Construct a new Result object using a shallow copy
             * 
             * @param t 
             */
            Result(const Result &t) = default;

            /**
             * @brief Deleted copy assignment
             */
            Result& operator=(Result other) = delete;

            /**
             * @brief Deleted move constructor
             */
            Result(Result&& other) = default;
            
            /**
             * @brief Deleted move assignment
             */
            Result& operator=(Result&& other) & = delete;
            
            /**
             * @brief Check if result has an error or not
             * 
             * @return true if result has an error
             * @return false if result does not have an error
             */
            bool has_error() {
                if(_err != ErrCode::eNone) {
                    return true;
                } else {
                    return false;
                }
            }

            /**
             * @brief Overloaded bool operator to check if result is valid
             * 
             * @return true if result does not have an error
             * @return false if result does have an error
             */
            operator bool() {
                return !has_error();
            }

            /**
             * @brief Get error if it exists
             * 
             * @details If no error exists, error handler is called; undetermined behaviour.
             *          Be sure to call has_error() first to ensure safe usage
             * 
             * @return ErrCode result error
             */
            ErrCode error() {
                if(_err == ErrCode::eNone) {
                    // Don't allow access to the error code if an error code was never supplied
                    util::ErrorHandler(__FILE__, __LINE__);
                } else {
                    return _err;
                }
            }

            /**
             * @brief Get value if there is no error
             * 
             * @details If an error exists, error handler is called; undetermined behaviour.
             *          Be sure to call has_error() first to ensure safe usage
             * 
             * @return T result value
             */
            T value() {
                if(_err == ErrCode::eNone) {
                    // Don't allow access to the value code if an error code was supplied
                    util::ErrorHandler(__FILE__, __LINE__);
                } else {
                    return _value;
                }
            }

        private:
            T _value;
            ErrCode _err = ErrCode::eNone;
            
        };
    }
}

#endif // TYPES_HPP