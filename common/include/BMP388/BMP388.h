#ifndef COMMON_BMP388_BMP388_H
#define COMMON_BMP388_BMP388_H

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"
#include "stdint.h"

namespace picodrone
{

namespace BMP388
{

enum class ErrC {

};

struct Cfg {
    uint8_t Adr;
};


}

}


#endif