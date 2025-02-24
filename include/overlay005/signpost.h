#ifndef POKEPLATINUM_SIGNPOST_H
#define POKEPLATINUM_SIGNPOST_H

#include "field/field_system_decl.h"
#include "overlay005/struct_signpost_decl.h"

#include "bg_window.h"

void *Signpost_Init(u32 heapID);
void Signpost_Free(Signpost *signpost);
void Signpost_SetTypeAndNARCMemberIdx(Signpost *signpost, u16 signpostType, u16 signpostNARCMemberIdx);
void ov5_021E1B40(Signpost *signpost, u8 param1);
Window *Signpost_GetWindow(Signpost *signpost);
u8 Signpost_GetType(Signpost *signpost);
BOOL ov5_021E1B58(Signpost *signpost);
void ov5_021E1B68(FieldSystem *fieldSystem);
void ov5_021E1BCC(FieldSystem *fieldSystem, u8 param1);

#endif // POKEPLATINUM_SIGNPOST_H
