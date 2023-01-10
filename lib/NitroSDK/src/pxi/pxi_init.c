#include  <nitro/pxi.h>
#include  <nitro/misc.h>

#ifndef SDK_FINALROM
#ifdef SDK_ARM9
#include <nitro/version_begin.h>
SDK_DEFINE_MIDDLEWARE(checkString, "NINTENDO", "DEBUG");
#include <nitro/version_end.h>
#endif
#endif

void PXI_Init (void) {
#ifndef SDK_FINALROM
#ifdef SDK_ARM9
    SDK_USING_MIDDLEWARE(checkString);
#endif
#endif
    PXI_InitFifo();
}
