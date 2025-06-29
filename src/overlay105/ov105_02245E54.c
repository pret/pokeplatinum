#include "overlay105/ov105_02245E54.h"

#include <nitro.h>
#include <string.h>

#include "overlay105/ov105_02245AAC.h"
#include "overlay105/struct_ov105_02245AAC.h"
#include "overlay105/struct_ov105_02245EA8_decl.h"

#include "heap.h"
#include "sprite.h"

struct UnkStruct_ov105_02245EA8_t {
    u16 unk_00;
    u16 unk_02;
    int unk_04;
    int unk_08;
    Sprite *unk_0C;
};

void *ov105_02245EA8(UnkStruct_ov105_02245EA8 *param0);
void ov105_02245EBC(UnkStruct_ov105_02245EA8 *param0, int param1);
VecFx32 ov105_02245EC8(UnkStruct_ov105_02245EA8 *param0, int param1, int param2);
void ov105_02245F14(UnkStruct_ov105_02245EA8 *param0, int param1, int param2);
const VecFx32 *ov105_02245F2C(UnkStruct_ov105_02245EA8 *param0);
void ov105_02245F38(UnkStruct_ov105_02245EA8 *param0, u8 param1);
u8 ov105_02245F3C(UnkStruct_ov105_02245EA8 *param0);
void ov105_02245F44(UnkStruct_ov105_02245EA8 *param0);
void ov105_02245F50(UnkStruct_ov105_02245EA8 *param0);
void ov105_02245F5C(UnkStruct_ov105_02245EA8 *param0);
int ov105_02245F88(UnkStruct_ov105_02245EA8 *param0);
int ov105_02245F8C(UnkStruct_ov105_02245EA8 *param0);
void ov105_02245F90(UnkStruct_ov105_02245EA8 *param0, u32 param1);
void ov105_02245FAC(UnkStruct_ov105_02245EA8 *param0, u32 param1);

UnkStruct_ov105_02245EA8 *ov105_02245E54(UnkStruct_ov105_02245AAC *param0, int param1, int param2, u32 heapID)
{
    UnkStruct_ov105_02245EA8 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov105_02245EA8));
    memset(v0, 0, sizeof(UnkStruct_ov105_02245EA8));

    v0->unk_00 = 0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_0C = ov105_02245BA4(param0, 0, 6, 0, 0, 0);

    ov105_02245F14(v0, param1, param2);
    Sprite_SetExplicitPalette(v0->unk_0C, 1);

    return v0;
}

void *ov105_02245EA8(UnkStruct_ov105_02245EA8 *param0)
{
    Sprite_Delete(param0->unk_0C);
    Heap_Free(param0);

    return NULL;
}

void ov105_02245EBC(UnkStruct_ov105_02245EA8 *param0, int param1)
{
    Sprite_SetDrawFlag(param0->unk_0C, param1);
    return;
}

VecFx32 ov105_02245EC8(UnkStruct_ov105_02245EA8 *param0, int param1, int param2)
{
    VecFx32 v0;

    v0 = *(Sprite_GetPosition(param0->unk_0C));
    v0.x += (param1 * FX32_ONE);
    v0.y += (param2 * FX32_ONE);

    Sprite_SetPosition(param0->unk_0C, &v0);
    return *(Sprite_GetPosition(param0->unk_0C));
}

void ov105_02245F14(UnkStruct_ov105_02245EA8 *param0, int param1, int param2)
{
    VecFx32 v0;

    v0.x = (param1 * FX32_ONE);
    v0.y = (param2 * FX32_ONE);

    Sprite_SetPosition(param0->unk_0C, &v0);
    return;
}

const VecFx32 *ov105_02245F2C(UnkStruct_ov105_02245EA8 *param0)
{
    return Sprite_GetPosition(param0->unk_0C);
}

void ov105_02245F38(UnkStruct_ov105_02245EA8 *param0, u8 param1)
{
    param0->unk_00 = param1;
    return;
}

u8 ov105_02245F3C(UnkStruct_ov105_02245EA8 *param0)
{
    return param0->unk_00;
}

void ov105_02245F44(UnkStruct_ov105_02245EA8 *param0)
{
    ov105_02245F38(param0, 1);
    return;
}

void ov105_02245F50(UnkStruct_ov105_02245EA8 *param0)
{
    ov105_02245F38(param0, 0);
    return;
}

void ov105_02245F5C(UnkStruct_ov105_02245EA8 *param0)
{
    VecFx32 v0;
    const VecFx32 *v1 = ov105_02245F2C(param0);

    v0.x = ((v1->x / FX32_ONE) + 248) * FX32_ONE;
    v0.y = v1->y;

    Sprite_SetPosition(param0->unk_0C, &v0);
    return;
}

int ov105_02245F88(UnkStruct_ov105_02245EA8 *param0)
{
    return param0->unk_04;
}

int ov105_02245F8C(UnkStruct_ov105_02245EA8 *param0)
{
    return param0->unk_08;
}

void ov105_02245F90(UnkStruct_ov105_02245EA8 *param0, u32 param1)
{
    Sprite_SetAnimSpeed(param0->unk_0C, FX32_ONE);
    Sprite_SetAnim(param0->unk_0C, param1);

    return;
}

void ov105_02245FAC(UnkStruct_ov105_02245EA8 *param0, u32 param1)
{
    Sprite_SetExplicitPalette(param0->unk_0C, param1);
    return;
}
