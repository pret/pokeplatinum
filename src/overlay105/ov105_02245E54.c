#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02022550_decl.h"
#include "overlay105/struct_ov105_02245EA8_decl.h"

#include "overlay105/struct_ov105_02245AAC.h"

#include "heap.h"
#include "unk_020218BC.h"
#include "overlay105/ov105_02245AAC.h"
#include "overlay105/ov105_02245E54.h"

struct UnkStruct_ov105_02245EA8_t {
    u16 unk_00;
    u16 unk_02;
    int unk_04;
    int unk_08;
    GraphicElementData * unk_0C;
};

UnkStruct_ov105_02245EA8 * ov105_02245E54(UnkStruct_ov105_02245AAC * param0, int param1, int param2, u32 param3);
void * ov105_02245EA8(UnkStruct_ov105_02245EA8 * param0);
void ov105_02245EBC(UnkStruct_ov105_02245EA8 * param0, int param1);
VecFx32 ov105_02245EC8(UnkStruct_ov105_02245EA8 * param0, int param1, int param2);
void ov105_02245F14(UnkStruct_ov105_02245EA8 * param0, int param1, int param2);
const VecFx32 * ov105_02245F2C(UnkStruct_ov105_02245EA8 * param0);
void ov105_02245F38(UnkStruct_ov105_02245EA8 * param0, u8 param1);
u8 ov105_02245F3C(UnkStruct_ov105_02245EA8 * param0);
void ov105_02245F44(UnkStruct_ov105_02245EA8 * param0);
void ov105_02245F50(UnkStruct_ov105_02245EA8 * param0);
void ov105_02245F5C(UnkStruct_ov105_02245EA8 * param0);
int ov105_02245F88(UnkStruct_ov105_02245EA8 * param0);
int ov105_02245F8C(UnkStruct_ov105_02245EA8 * param0);
void ov105_02245F90(UnkStruct_ov105_02245EA8 * param0, u32 param1);
void ov105_02245FAC(UnkStruct_ov105_02245EA8 * param0, u32 param1);

UnkStruct_ov105_02245EA8 * ov105_02245E54 (UnkStruct_ov105_02245AAC * param0, int param1, int param2, u32 param3)
{
    UnkStruct_ov105_02245EA8 * v0;

    v0 = Heap_AllocFromHeap(param3, sizeof(UnkStruct_ov105_02245EA8));
    memset(v0, 0, sizeof(UnkStruct_ov105_02245EA8));

    v0->unk_00 = 0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_0C = ov105_02245BA4(param0, 0, 6, 0, 0, 0);

    ov105_02245F14(v0, param1, param2);
    sub_02021E90(v0->unk_0C, 1);

    return v0;
}

void * ov105_02245EA8 (UnkStruct_ov105_02245EA8 * param0)
{
    sub_02021BD4(param0->unk_0C);
    Heap_FreeToHeap(param0);

    return NULL;
}

void ov105_02245EBC (UnkStruct_ov105_02245EA8 * param0, int param1)
{
    sub_02021CAC(param0->unk_0C, param1);
    return;
}

VecFx32 ov105_02245EC8 (UnkStruct_ov105_02245EA8 * param0, int param1, int param2)
{
    VecFx32 v0;

    v0 = *(sub_02021D28(param0->unk_0C));
    v0.x += (param1 * FX32_ONE);
    v0.y += (param2 * FX32_ONE);

    sub_02021C50(param0->unk_0C, &v0);
    return *(sub_02021D28(param0->unk_0C));
}

void ov105_02245F14 (UnkStruct_ov105_02245EA8 * param0, int param1, int param2)
{
    VecFx32 v0;

    v0.x = (param1 * FX32_ONE);
    v0.y = (param2 * FX32_ONE);

    sub_02021C50(param0->unk_0C, &v0);
    return;
}

const VecFx32 * ov105_02245F2C (UnkStruct_ov105_02245EA8 * param0)
{
    return sub_02021D28(param0->unk_0C);
}

void ov105_02245F38 (UnkStruct_ov105_02245EA8 * param0, u8 param1)
{
    param0->unk_00 = param1;
    return;
}

u8 ov105_02245F3C (UnkStruct_ov105_02245EA8 * param0)
{
    return param0->unk_00;
}

void ov105_02245F44 (UnkStruct_ov105_02245EA8 * param0)
{
    ov105_02245F38(param0, 1);
    return;
}

void ov105_02245F50 (UnkStruct_ov105_02245EA8 * param0)
{
    ov105_02245F38(param0, 0);
    return;
}

void ov105_02245F5C (UnkStruct_ov105_02245EA8 * param0)
{
    VecFx32 v0;
    const VecFx32 * v1;

    v1 = ov105_02245F2C(param0);

    v0.x = ((v1->x / FX32_ONE) + 248) * FX32_ONE;
    v0.y = v1->y;

    sub_02021C50(param0->unk_0C, &v0);
    return;
}

int ov105_02245F88 (UnkStruct_ov105_02245EA8 * param0)
{
    return param0->unk_04;
}

int ov105_02245F8C (UnkStruct_ov105_02245EA8 * param0)
{
    return param0->unk_08;
}

void ov105_02245F90 (UnkStruct_ov105_02245EA8 * param0, u32 param1)
{
    sub_02021CE4(param0->unk_0C, FX32_ONE);
    sub_02021D6C(param0->unk_0C, param1);

    return;
}

void ov105_02245FAC (UnkStruct_ov105_02245EA8 * param0, u32 param1)
{
    sub_02021E90(param0->unk_0C, param1);
    return;
}
