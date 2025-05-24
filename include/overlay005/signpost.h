#ifndef POKEPLATINUM_SIGNPOST_H
#define POKEPLATINUM_SIGNPOST_H

#include "field/field_system_decl.h"

#include "bg_window.h"

typedef struct Signpost {
    Window window;
    u16 NARCMemberIdx;
    u8 type;
    u8 command : 7;
    u8 active : 1;
} Signpost;

void *Signpost_Init(enum HeapId heapID);
void Signpost_Free(Signpost *signpost);
void Signpost_SetTypeAndNARCMemberIdx(Signpost *signpost, u16 signpostType, u16 signpostNARCMemberIdx);
void Signpost_SetCommand(Signpost *signpost, u8 param1);
Window *Signpost_GetWindow(Signpost *signpost);
u8 Signpost_GetType(Signpost *signpost);
BOOL Signpost_IsDone(Signpost *signpost);
void Signpost_DoCurrentCommand(FieldSystem *fieldSystem);
void Signpost_DoCommand(FieldSystem *fieldSystem, u8 param1);

#endif // POKEPLATINUM_SIGNPOST_H
