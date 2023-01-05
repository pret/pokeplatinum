#ifndef NITRO_RTC_H_
#define NITRO_RTC_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/rtc/common/type.h>
#include <nitro/rtc/common/fifo.h>

#ifdef SDK_ARM7

#include <nitro/rtc/ARM7/control.h>
#include <nitro/rtc/ARM7/instruction.h>
#include <nitro/rtc/ARM7/gpio.h>

#else

#include <nitro/rtc/ARM9/api.h>
#include <nitro/rtc/ARM9/convert.h>

#endif

#ifdef __cplusplus
}
#endif

#endif
