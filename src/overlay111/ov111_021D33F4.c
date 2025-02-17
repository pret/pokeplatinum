#include "overlay111/ov111_021D33F4.h"

#include <nitro.h>
#include <string.h>

#include "overlay111/ov111_021D2F80.h"
#include "overlay111/struct_ov111_021D2F80.h"
#include "overlay111/struct_ov111_021D33F4_decl.h"

#include "heap.h"
#include "sprite.h"

struct UnkStruct_ov111_021D33F4_t {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u32 unk_04;
    u32 unk_08;
    Sprite *unk_0C;
};

UnkStruct_ov111_021D33F4 *ov111_021D33F4(UnkStruct_ov111_021D2F80 *param0, u32 param1, u32 param2, u16 param3, u16 param4, u8 param5, u32 param6, u32 param7);
void *ov111_021D3448(UnkStruct_ov111_021D33F4 *param0);
void ov111_021D345C(UnkStruct_ov111_021D33F4 *param0, int param1);
void ov111_021D3468(UnkStruct_ov111_021D33F4 *param0, u32 param1);
void ov111_021D3474(UnkStruct_ov111_021D33F4 *param0, int param1, int param2);
void ov111_021D349C(UnkStruct_ov111_021D33F4 *param0, int *param1, int *param2);
void ov111_021D34C4(UnkStruct_ov111_021D33F4 *param0, u32 param1);
void ov111_021D34E0(UnkStruct_ov111_021D33F4 *param0, u32 param1);
void ov111_021D34F4(UnkStruct_ov111_021D33F4 *param0, VecFx32 *param1);
void ov111_021D3500(UnkStruct_ov111_021D33F4 *param0, u32 param1);
void ov111_021D350C(UnkStruct_ov111_021D33F4 *param0, int param1);
void ov111_021D3530(UnkStruct_ov111_021D33F4 *param0, BOOL param1);
BOOL ov111_021D353C(UnkStruct_ov111_021D33F4 *param0);

UnkStruct_ov111_021D33F4 *ov111_021D33F4(UnkStruct_ov111_021D2F80 *param0, u32 param1, u32 param2, u16 param3, u16 param4, u8 param5, u32 param6, u32 param7)
{
    UnkStruct_ov111_021D33F4 *v0;
    VecFx32 v1;

    v0 = Heap_AllocFromHeap(115, sizeof(UnkStruct_ov111_021D33F4));
    memset(v0, 0, sizeof(UnkStruct_ov111_021D33F4));
    v0->unk_0C = ov111_021D3280(param0, param1, param2, param6, param7, param5);
    v0->unk_02 = param5;

    ov111_021D3474(v0, param3, param4);

    return v0;
}

void *ov111_021D3448(UnkStruct_ov111_021D33F4 *param0)
{
    Sprite_Delete(param0->unk_0C);
    Heap_FreeToHeap(param0);
    return NULL;
}

void ov111_021D345C(UnkStruct_ov111_021D33F4 *param0, int param1)
{
    Sprite_SetDrawFlag(param0->unk_0C, param1);
    return;
}

void ov111_021D3468(UnkStruct_ov111_021D33F4 *param0, u32 param1)
{
    Sprite_SetPriority(param0->unk_0C, param1);
    return;
}

void ov111_021D3474(UnkStruct_ov111_021D33F4 *param0, int param1, int param2)
{
    VecFx32 v0;

    v0.x = (param1 * FX32_ONE);
    v0.y = (param2 * FX32_ONE);

    if (param0->unk_02 == 1) {
        v0.y += (512 * FX32_ONE);
    }

    Sprite_SetPosition(param0->unk_0C, &v0);
    return;
}

void ov111_021D349C(UnkStruct_ov111_021D33F4 *param0, int *param1, int *param2)
{
    const VecFx32 *v0;

    v0 = Sprite_GetPosition(param0->unk_0C);

    *param1 = (v0->x / FX32_ONE);
    *param2 = (v0->y / FX32_ONE);

    return;
}

void ov111_021D34C4(UnkStruct_ov111_021D33F4 *param0, u32 param1)
{
    Sprite_SetAnimSpeed(param0->unk_0C, FX32_ONE);
    Sprite_SetAnimNoRestart(param0->unk_0C, param1);

    return;
}

static const VecFx32 Unk_ov111_021D3834[] = {
    { FX32_ONE, FX32_ONE, FX32_ONE },
    { FX32_ONE + (FX32_ONE / 5), FX32_ONE + (FX32_ONE / 5), FX32_ONE + (FX32_ONE / 5) },
    { FX32_ONE + (FX32_ONE / 4), FX32_ONE + (FX32_ONE / 4), FX32_ONE + (FX32_ONE / 4) },
    { FX32_ONE + (FX32_ONE / 3), FX32_ONE + (FX32_ONE / 3), FX32_ONE + (FX32_ONE / 3) },
    { FX32_ONE + (FX32_ONE / 2), FX32_ONE + (FX32_ONE / 2), FX32_ONE + (FX32_ONE / 2) },
    { FX32_ONE + (FX32_ONE) - (FX32_ONE / 5), FX32_ONE + (FX32_ONE) - (FX32_ONE / 5), FX32_ONE + (FX32_ONE) - (FX32_ONE / 5) },
    { FX32_ONE + (FX32_ONE / 7), FX32_ONE + (FX32_ONE / 7), FX32_ONE + (FX32_ONE / 7) },
    { FX32_ONE - (FX32_ONE / 2), FX32_ONE - (FX32_ONE / 2), FX32_ONE - (FX32_ONE / 2) },
    { FX32_ONE - (FX32_ONE / 4), FX32_ONE - (FX32_ONE / 4), FX32_ONE - (FX32_ONE / 4) },
    { FX32_ONE - (FX32_ONE / 5), FX32_ONE - (FX32_ONE / 5), FX32_ONE - (FX32_ONE / 5) },
    { FX32_ONE - (FX32_ONE / 7), FX32_ONE - (FX32_ONE / 7), FX32_ONE - (FX32_ONE / 7) }
};

void ov111_021D34E0(UnkStruct_ov111_021D33F4 *param0, u32 param1)
{
    u8 v0;
    v0 = param1;

    Sprite_SetAffineScaleEx(param0->unk_0C, &Unk_ov111_021D3834[0], 1);

    return;
}

void ov111_021D34F4(UnkStruct_ov111_021D33F4 *param0, VecFx32 *param1)
{
    Sprite_SetAffineScaleEx(param0->unk_0C, param1, 2);
    return;
}

void ov111_021D3500(UnkStruct_ov111_021D33F4 *param0, u32 param1)
{
    Sprite_SetExplicitPaletteWithOffset(param0->unk_0C, param1);
    return;
}

void ov111_021D350C(UnkStruct_ov111_021D33F4 *param0, int param1)
{
    Sprite_SetAnimateFlag(param0->unk_0C, param1);
    Sprite_SetAnimSpeed(param0->unk_0C, FX32_ONE);
    Sprite_SetAnim(param0->unk_0C, Sprite_GetActiveAnim(param0->unk_0C));
    return;
}

void ov111_021D3530(UnkStruct_ov111_021D33F4 *param0, BOOL param1)
{
    Sprite_SetMosaicFlag(param0->unk_0C, param1);
    return;
}

BOOL ov111_021D353C(UnkStruct_ov111_021D33F4 *param0)
{
    return Sprite_IsAnimated(param0->unk_0C);
}
