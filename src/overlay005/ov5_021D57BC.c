#include "overlay005/ov5_021D57BC.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"

typedef struct UnkStruct_ov5_021D57D8_t {
    BOOL unk_00;
    s32 unk_04;
    s32 unk_08;
    int unk_0C;
    GXRgb unk_10;
    int unk_14;
    char unk_18[32];
} UnkStruct_ov5_021D57D8;

UnkStruct_ov5_021D57D8 *ov5_021D57BC(void)
{
    UnkStruct_ov5_021D57D8 *v0;

    v0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021D57D8));
    MI_CpuClear32(v0, sizeof(UnkStruct_ov5_021D57D8));

    return v0;
}

void ov5_021D57D8(UnkStruct_ov5_021D57D8 **param0)
{
    Heap_FreeToHeapExplicit(4, *param0);
    *param0 = NULL;
}

BOOL ov5_021D57EC(UnkStruct_ov5_021D57D8 *param0)
{
    return param0->unk_00;
}

int ov5_021D57F0(UnkStruct_ov5_021D57D8 *param0)
{
    return param0->unk_08;
}

int ov5_021D57F4(UnkStruct_ov5_021D57D8 *param0)
{
    return param0->unk_0C;
}

GXRgb ov5_021D57F8(UnkStruct_ov5_021D57D8 *param0)
{
    return param0->unk_10;
}

void ov5_021D57FC(UnkStruct_ov5_021D57D8 *param0, int param1, BOOL param2, int param3, int param4, int param5)
{
    if (param1 & 1) {
        param0->unk_00 = param2;
    }

    if (param1 & (1 << 1)) {
        param0->unk_04 = param3;
    }

    if (param1 & (1 << 2)) {
        param0->unk_08 = param4;
    }

    if (param1 & (1 << 3)) {
        param0->unk_0C = param5;
    }

    G3X_SetFog(param0->unk_00, param0->unk_04, param0->unk_08, param0->unk_0C);
}

void ov5_021D5834(UnkStruct_ov5_021D57D8 *param0, int param1, GXRgb param2, int param3)
{
    if (param1 & (1 << 4)) {
        param0->unk_10 = param2;
    }

    if (param1 & (1 << 5)) {
        param0->unk_14 = param3;
    }

    G3X_SetFogColor(param0->unk_10, param0->unk_14);
}

void ov5_021D585C(UnkStruct_ov5_021D57D8 *param0, const char *param1)
{
    MI_CpuCopy32(param1, param0->unk_18, 32);
    G3X_SetFogTable((u32 *)param0->unk_18);
}
