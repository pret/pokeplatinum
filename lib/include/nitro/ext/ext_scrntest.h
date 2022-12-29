#ifndef EXT_SCRNTEST_H_
#define EXT_SCRNTEST_H_

#include <nitro/types.h>
#include <nitro/gx/gx_vramcnt.h>

#ifdef __cplusplus
extern "C" {
#endif

void EXT_Printf(const char * fmt, ...);
void EXT_CompPrint(const char * src1, const char * src2_fmt, ...);
void EXT_TestScreenShot(u32 testFrames, u32 checkSum);
void EXT_TestTickCounter();
void EXT_TestResetCounter();
void EXT_TestSetVRAMForScreenShot(GXVRamLCDC vram);

#ifdef __cplusplus
}
#endif

#endif
