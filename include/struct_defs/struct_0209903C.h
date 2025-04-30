#ifndef POKEPLATINUM_STRUCT_0209903C_H
#define POKEPLATINUM_STRUCT_0209903C_H

#include "struct_defs/struct_0209903C_sub1.h"

#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"

typedef struct {
    int heapID;
    int unk_04;
    u16 unk_08;
    u16 unk_0A;
    u16 unk_0C;
    u16 unk_0E;
    SpriteList *unk_10;
    G2dRenderer unk_14;
    SpriteResourcesHeaderList *unk_1A0;
    SpriteResourceCollection *unk_1A4[4];
    SpriteResourceList *unk_1B4[4];
    UnkStruct_0209903C_sub1 *unk_1C4;
} UnkStruct_0209903C;

#endif // POKEPLATINUM_STRUCT_0209903C_H
