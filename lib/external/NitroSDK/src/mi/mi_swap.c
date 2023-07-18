#include <nitro/types.h>
#include <nitro/mi/swap.h>
#include <nitro/code32.h>

asm u32 MI_SwapWord (register u32 setData, register vu32 * destp) {
    swp r0, r0, [r1]
    bx lr
}

asm u8 MI_SwapByte (register u32 setData, register vu8 * destp) {
    swpb r0, r0, [r1]
    bx lr
}

#include <nitro/codereset.h>
