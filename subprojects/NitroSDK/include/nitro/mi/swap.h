#ifndef NITRO_MI_SWAP_H_
#define NITRO_MI_SWAP_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>

u32 MI_SwapWord(u32 setData, volatile u32 * destp);

u8 MI_SwapByte(u32 setData, volatile u8 * destp);

#ifdef __cplusplus
}
#endif

#endif
