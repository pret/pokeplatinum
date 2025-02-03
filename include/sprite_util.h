#ifndef POKEPLATINUM_SPRITE_UTIL_H
#define POKEPLATINUM_SPRITE_UTIL_H

#include <nitro/gx.h>

#include "cell_actor.h"
#include "sprite_resource.h"

typedef struct {
    CellActorResourceData *unk_00;
    int unk_04;
} UnkStruct_02009508;

typedef struct {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
    u32 unk_14;
    u32 unk_18;
    u32 unk_1C;
} UnkStruct_02009508_1;

typedef struct {
    NNSG2dRendererInstance unk_00;
    NNSG2dRenderSurface unk_94[2];
} UnkStruct_0200C738;

void sub_020093B4(CellActorResourceData *param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, SpriteResourceCollection *param9, SpriteResourceCollection *param10, SpriteResourceCollection *param11, SpriteResourceCollection *param12, SpriteResourceCollection *param13, SpriteResourceCollection *param14);
void sub_020094F0(CellActorResourceData *param0);
UnkStruct_02009508 *sub_02009508(const UnkStruct_02009508_1 *param0, int param1, SpriteResourceCollection *param2, SpriteResourceCollection *param3, SpriteResourceCollection *param4, SpriteResourceCollection *param5, SpriteResourceCollection *param6, SpriteResourceCollection *param7);
void sub_020095A8(UnkStruct_02009508 *param0);
CellActorCollection *sub_020095C4(int param0, UnkStruct_0200C738 *param1, int param2);
void sub_0200962C(UnkStruct_0200C738 *param0, fx32 param1, fx32 param2);
void sub_0200964C(UnkStruct_0200C738 *param0, fx32 param1, fx32 param2);
void sub_0200966C(u32 param0, GXOBJVRamModeChar param1);
void sub_02009704(u32 param0);

#endif // POKEPLATINUM_SPRITE_UTIL_H
