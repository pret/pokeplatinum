#ifndef NITRO_OS_ENTROPY_H_
#define NITRO_OS_ENTROPY_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/ioreg.h>

#define OS_LOW_ENTROPY_DATA_SIZE 32

void OS_GetLowEntropyData(u32 buffer[OS_LOW_ENTROPY_DATA_SIZE / sizeof(u32)]);

#ifdef __cplusplus
}
#endif

#endif
