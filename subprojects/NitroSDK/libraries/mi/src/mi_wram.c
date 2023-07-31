#include <nitro/mi/wram.h>
#include <nitro/misc.h>

#define MIi_WRAM_ASSERT(x) \
    SDK_ASSERT( \
        (x) == MI_WRAM_ARM9_ALL || \
        (x) == MI_WRAM_1616_1 || \
        (x) == MI_WRAM_1616_2 || \
        (x) == MI_WRAM_ARM7_ALL \
    )

#ifdef SDK_ARM9

#ifdef  SDK_CW_WARNOFF_SAFESTRB
#include <nitro/code32.h>
#endif
void MI_SetWramBank (MIWram cnt) {
    MIi_WRAM_ASSERT(cnt);
    reg_GX_VRAMCNT_WRAM = (u8)cnt;
}

#ifdef  SDK_CW_WARNOFF_SAFESTRB
#include <nitro/codereset.h>
#endif

#endif

MIWram MI_GetWramBank (void) {
#ifdef SDK_ARM9
    return (MIWram)(reg_GX_VRAMCNT_WRAM & MI_WRAM_ARM9_ALL);
#else
    return (MIWram)(reg_GX_WVRAMSTAT & MI_WRAM_ARM9_ALL);
#endif
}
