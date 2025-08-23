#include "overlay108/ov108_0224351C.h"

#include <nitro.h>
#include <string.h>

#include "overlay108/ov108_02243030.h"
#include "overlay108/struct_ov108_02243030.h"
#include "overlay108/struct_ov108_02243594_decl.h"

#include "heap.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "sprite.h"

struct UnkStruct_ov108_02243594_t {
    u32 unk_00;
    u32 unk_04;
    u16 unk_08;
    u8 unk_0A;
    u8 unk_0B;
    u16 unk_0C;
    u16 unk_0E;
    Sprite *unk_10;
};

UnkStruct_ov108_02243594 *ov108_0224351C(UnkStruct_ov108_02243030 *param0, u32 param1, u32 param2, u32 param3, u32 param4, u16 param5, u16 param6, u32 param7, int param8, u8 param9);
void *ov108_02243594(UnkStruct_ov108_02243594 *param0);
void ov108_022435A8(UnkStruct_ov108_02243594 *param0, int param1);
void ov108_022435B4(UnkStruct_ov108_02243594 *param0, u16 param1, u16 param2);
void ov108_022435F4(UnkStruct_ov108_02243594 *param0, u32 param1);
void ov108_02243610(UnkStruct_ov108_02243594 *param0, Pokemon *param1);
void ov108_02243624(UnkStruct_ov108_02243594 *param0, u8 param1);

UnkStruct_ov108_02243594 *ov108_0224351C(UnkStruct_ov108_02243030 *param0, u32 param1, u32 param2, u32 param3, u32 param4, u16 param5, u16 param6, u32 param7, int param8, u8 param9)
{
    UnkStruct_ov108_02243594 *v0;
    VecFx32 v1;

    v0 = Heap_AllocFromHeap(HEAP_ID_103, sizeof(UnkStruct_ov108_02243594));
    memset(v0, 0, sizeof(UnkStruct_ov108_02243594));

    v0->unk_10 = ov108_022430F0(param0, param1, param2, param3, param4, param7, param8, param9);
    v0->unk_0C = param5;
    v0->unk_0E = param6;
    v0->unk_0B = param9;

    v1.x = (param5 * FX32_ONE);
    v1.y = (param6 * FX32_ONE);

    if (param9 == 1) {
        v1.y += (192 << FX32_SHIFT);
    }

    Sprite_SetPosition(v0->unk_10, &v1);

    return v0;
}

void *ov108_02243594(UnkStruct_ov108_02243594 *param0)
{
    Sprite_Delete(param0->unk_10);
    Heap_Free(param0);

    return NULL;
}

void ov108_022435A8(UnkStruct_ov108_02243594 *param0, int param1)
{
    Sprite_SetDrawFlag(param0->unk_10, param1);
    return;
}

void ov108_022435B4(UnkStruct_ov108_02243594 *param0, u16 param1, u16 param2)
{
    VecFx32 v0;

    v0 = *(Sprite_GetPosition(param0->unk_10));

    v0.x = (param1 * FX32_ONE);
    v0.y = (param2 * FX32_ONE);

    if (param0->unk_0B == 1) {
        v0.y += (192 << FX32_SHIFT);
    }

    Sprite_SetPosition(param0->unk_10, &v0);
    return;
}

void ov108_022435F4(UnkStruct_ov108_02243594 *param0, u32 param1)
{
    Sprite_SetAnimSpeed(param0->unk_10, FX32_ONE);
    Sprite_SetAnimNoRestart(param0->unk_10, param1);

    return;
}

void ov108_02243610(UnkStruct_ov108_02243594 *param0, Pokemon *param1)
{
    Sprite_SetExplicitPaletteOffsetAutoAdjust(param0->unk_10, Pokemon_IconPaletteIndex(param1));
    return;
}

static const VecFx32 Unk_ov111_021D3834[] = {
    { FX32_ONE, FX32_ONE, FX32_ONE },
    { FX32_ONE + (FX32_ONE / 2), FX32_ONE + (FX32_ONE / 2), FX32_ONE + (FX32_ONE / 2) },
    { FX32_ONE + (FX32_ONE / 4), FX32_ONE + (FX32_ONE / 4), FX32_ONE + (FX32_ONE / 4) },
    { FX32_ONE + (FX32_ONE / 5), FX32_ONE + (FX32_ONE / 5), FX32_ONE + (FX32_ONE / 5) },
    { FX32_ONE + (FX32_ONE / 7), FX32_ONE + (FX32_ONE / 7), FX32_ONE + (FX32_ONE / 7) },
    { FX32_ONE - (FX32_ONE / 2), FX32_ONE - (FX32_ONE / 2), FX32_ONE - (FX32_ONE / 2) },
    { FX32_ONE - (FX32_ONE / 4), FX32_ONE - (FX32_ONE / 4), FX32_ONE - (FX32_ONE / 4) },
    { FX32_ONE - (FX32_ONE / 5), FX32_ONE - (FX32_ONE / 5), FX32_ONE - (FX32_ONE / 5) },
    { FX32_ONE - (FX32_ONE / 7), FX32_ONE - (FX32_ONE / 7), FX32_ONE - (FX32_ONE / 7) }
};

void ov108_02243624(UnkStruct_ov108_02243594 *param0, u8 param1)
{
    Sprite_SetAnimateFlag(param0->unk_10, param1);
    return;
}
