#ifndef POKEPLATINUM_UNK_0201E3D8_H
#define POKEPLATINUM_UNK_0201E3D8_H

#include <nitro.h>

#include "overlay072/touch_pad_data_buffer.h"

void EnableTouchScreen(void);
BOOL InitializeTouchScreen(TPData *touchPadDataBuffer, u32 touchPadDataBufferSize, u32 bufferFrequency);
BOOL InitializeTouchScreenNoBuffer(u32 bufferFrequency);
u32 DisableTouchScreen(void);
u32 sub_0201E564(TouchPadDataBuffer *buffer, u32 frequency, u32 param2);
void ConvertTouchPadDataToScreenSpace(TPData *touchPadDataBuffer, u32 touchPadDataBufferSize);
void AfterSleep(void);
void BeforeSleep(void);

#endif // POKEPLATINUM_UNK_0201E3D8_H
