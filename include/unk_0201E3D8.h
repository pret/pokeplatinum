#ifndef POKEPLATINUM_UNK_0201E3D8_H
#define POKEPLATINUM_UNK_0201E3D8_H

#include <nitro.h>

#include "overlay072/struct_ov72_0223E2A8.h"

void EnableTouchScreen(void);
u32 SetTouchScreenBuffer(TPData *buffer, u32 param1, u32 bufferFrequency);
u32 SetTouchScreenBufferFrequency(u32 bufferFrequency);
u32 sub_0201E530(void);
u32 sub_0201E564(UnkStruct_ov72_0223E2A8 *param0, u32 param1, u32 param2);
void sub_0201E5C0(TPData *param0, u32 param1);
void AfterSleep(void);
void BeforeSleep(void);

#endif // POKEPLATINUM_UNK_0201E3D8_H
