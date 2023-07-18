#ifndef NITRO_OS_H_
#define NITRO_OS_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/os/common/system.h>
#include <nitro/os/common/interrupt.h>
#include <nitro/os/common/thread.h>
#include <nitro/os/common/context.h>
#include <nitro/os/common/spinLock.h>
#include <nitro/os/common/timer.h>
#include <nitro/os/common/systemCall.h>
#include <nitro/os/common/printf.h>
#include <nitro/os/common/emulator.h>
#include <nitro/os/common/message.h>
#include <nitro/os/common/mutex.h>
#include <nitro/os/common/exception.h>
#include <nitro/os/common/init.h>
#include <nitro/os/common/arena.h>
#include <nitro/os/common/alloc.h>
#include <nitro/os/common/tick.h>
#include <nitro/os/common/alarm.h>
#include <nitro/os/common/valarm.h>
#include <nitro/os/common/system.h>
#include <nitro/os/common/reset.h>
#include <nitro/os/common/ownerInfo.h>
#include <nitro/os/common/entropy.h>
#include <nitro/os/common/systemWork.h>

#include <nitro/os/common/profile.h>
#include <nitro/os/common/callTrace.h>
#include <nitro/os/common/functionCost.h>

#ifdef SDK_ARM9
#include <nitro/os/ARM9/protectionRegion.h>
#include <nitro/os/ARM9/tcm.h>
#include <nitro/os/ARM9/cache.h>
#include <nitro/os/ARM9/protectionUnit.h>
#include <nitro/os/ARM9/vramExclusive.h>
#include <nitro/os/ARM9/china.h>
#include <nitro/os/ARM9/argument.h>
#else
#endif

#ifdef __cplusplus
}
#endif

#endif
