#ifndef POKEPLATINUM_UNK_020553DC_H
#define POKEPLATINUM_UNK_020553DC_H

#include "field/field_system_decl.h"

void sub_020553DC(void);
void Sound_SetSpecialBGM(FieldSystem *fieldSystem, u16 sdatID);
u16 Sound_GetSpecialBGM(FieldSystem *fieldSystem);
void Sound_ClearSpecialBGM(FieldSystem *fieldSystem);
u16 sub_02055428(FieldSystem *fieldSystem, int param1);
u16 sub_020554A4(FieldSystem *fieldSystem, int headerID);
BOOL sub_02055554(FieldSystem *fieldSystem, u16 param1, int param2);
u16 sub_0205560C(int param0);
void Sound_TryFadeInBGM(FieldSystem *fieldSystem, int param1);
void Sound_PlayMapBGM(FieldSystem *fieldSystem, int param1);
void sub_020556A0(FieldSystem *fieldSystem, int param1);

#endif // POKEPLATINUM_UNK_020553DC_H
