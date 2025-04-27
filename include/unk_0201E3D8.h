#ifndef POKEPLATINUM_UNK_0201E3D8_H
#define POKEPLATINUM_UNK_0201E3D8_H

#include <nitro.h>

#include "overlay072/struct_ov72_0223E2A8.h"

void EnableTouchScreen(void);
BOOL InitializeTouchScreen(TPData *buffer, u32 param1, u32 bufferFrequency);
BOOL InitializeTouchScreenNoBuffer(u32 bufferFrequency);
u32 DisableTouchScreen(void);
u32 sub_0201E564(TouchPadDataBuffer *param0, u32 param1, u32 param2);
void ConvertTouchPadDataToScreenSpace(TPData *touchPadDataBuffer, u32 touchPadDataBufferSize);
void AfterSleep(void);
void BeforeSleep(void);

#endif // POKEPLATINUM_UNK_0201E3D8_H
