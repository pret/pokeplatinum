#ifndef NITRO_PM_ARM7_H_
#define NITRO_PM_ARM7_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/spi/common/pm_common.h>
#include <nitro/spi/common/type.h>
#include <nitro/pxi/common/fifo.h>

void PM_SetLEDPattern(PMLEDPattern pattern);

PMLEDPattern PM_GetLEDPattern(void);

#ifdef __cplusplus
}
#endif

#endif
