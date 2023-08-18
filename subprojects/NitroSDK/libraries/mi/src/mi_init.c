#include <nitro.h>

void MI_Init (void) {
#ifdef SDK_ARM9
    MI_SetWramBank(MI_WRAM_ARM7_ALL);
#endif
    MI_StopDma(0);
}
