#include "overlay005/ov5_021D57BC.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"

typedef struct UnkStruct_ov5_021D57D8_t {
    BOOL fogEnable;
    s32 fogMode;
    s32 fogSlope;
    int fogOffset;
    GXRgb unk_10;
    int unk_14;
    char unk_18[32];
} UnkStruct_ov5_021D57D8;

UnkStruct_ov5_021D57D8 *ov5_021D57BC(void)
{
    UnkStruct_ov5_021D57D8 *v0 = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UnkStruct_ov5_021D57D8));
    MI_CpuClear32(v0, sizeof(UnkStruct_ov5_021D57D8));

    return v0;
}

void ov5_021D57D8(UnkStruct_ov5_021D57D8 **param0)
{
    Heap_FreeExplicit(HEAP_ID_FIELD1, *param0);
    *param0 = NULL;
}

BOOL ov5_021D57EC(UnkStruct_ov5_021D57D8 *param0)
{
    return param0->fogEnable;
}

int ov5_021D57F0(UnkStruct_ov5_021D57D8 *param0)
{
    return param0->fogSlope;
}

int ov5_021D57F4(UnkStruct_ov5_021D57D8 *param0)
{
    return param0->fogOffset;
}

GXRgb ov5_021D57F8(UnkStruct_ov5_021D57D8 *param0)
{
    return param0->unk_10;
}

void ov5_021D57FC(UnkStruct_ov5_021D57D8 *param0, int param1, BOOL fogEnable, int fogMode, int fogSlope, int fogOffset)
{
    if (param1 & 1) {
        param0->fogEnable = fogEnable;
    }

    if (param1 & (1 << 1)) {
        param0->fogMode = fogMode;
    }

    if (param1 & (1 << 2)) {
        param0->fogSlope = fogSlope;
    }

    if (param1 & (1 << 3)) {
        param0->fogOffset = fogOffset;
    }

    G3X_SetFog(param0->fogEnable, param0->fogMode, param0->fogSlope, param0->fogOffset);
}

void ov5_021D5834(UnkStruct_ov5_021D57D8 *param0, int param1, GXRgb fogRGB, int alpha)
{
    if (param1 & (1 << 4)) {
        param0->unk_10 = fogRGB;
    }

    if (param1 & (1 << 5)) {
        param0->unk_14 = alpha;
    }

    G3X_SetFogColor(param0->unk_10, param0->unk_14);
}

void ov5_021D585C(UnkStruct_ov5_021D57D8 *param0, const char *param1)
{
    MI_CpuCopy32(param1, param0->unk_18, 32);
    G3X_SetFogTable((u32 *)param0->unk_18);
}
