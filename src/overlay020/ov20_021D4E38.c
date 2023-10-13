#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"

#include "overlay020/struct_ov20_021D4E8C.h"
#include "overlay020/struct_ov20_021D4FF0.h"

#include "unk_0200D9E8.h"
#include "unk_02018340.h"
#include "overlay020/ov20_021D2098.h"
#include "overlay020/ov20_021D4E38.h"

static void ov20_021D4ED8(SysTask * param0, void * param1);
static void ov20_021D4F74(SysTask * param0, void * param1);
static void ov20_021D5018(SysTask * param0, void * param1);

void ov20_021D4E38 (UnkStruct_ov20_021D4E8C * param0, UnkStruct_02018340 * param1, u32 param2, int param3, int param4, int param5)
{
    param0->unk_00 = param1;
    param0->unk_04 = param2;

    if (param3 == 0) {
        param0->unk_0C = sub_020192EC(param1, param2);
        param0->unk_08 = 0;
    } else {
        param0->unk_0C = sub_020192F8(param1, param2);
        param0->unk_08 = 3;
    }

    param0->unk_10 = (param0->unk_0C + param4) & 0x1ff;
    param0->unk_0C *= FX32_ONE;
    param0->unk_14 = (param4 * FX32_ONE) / param5;
    param0->unk_18 = param5;
    param0->unk_1A = 0;
}

BOOL ov20_021D4E8C (UnkStruct_ov20_021D4E8C * param0)
{
    switch (param0->unk_1A) {
    case 0:
        param0->unk_1C = ov20_021D2170(ov20_021D4ED8, param0, 0);
        param0->unk_1A++;
        break;
    case 1:
        if (param0->unk_18 == 0) {
            sub_0200DA58(param0->unk_1C);
            param0->unk_1A++;
            return 1;
        }
        break;
    case 2:
        return 1;
    }

    return 0;
}

static void ov20_021D4ED8 (SysTask * param0, void * param1)
{
    UnkStruct_ov20_021D4E8C * v0 = param1;

    if (v0->unk_18) {
        v0->unk_0C += v0->unk_14;
        sub_02019184(v0->unk_00, v0->unk_04, v0->unk_08, (v0->unk_0C >> FX32_SHIFT));
        v0->unk_18--;
    } else {
        sub_02019184(v0->unk_00, v0->unk_04, v0->unk_08, v0->unk_10);
    }
}

void ov20_021D4F1C (UnkStruct_ov20_021D4FF0 * param0, int param1, int param2, int param3, int param4, int param5)
{
    param0->unk_00 = param1;
    param0->unk_04 = param2;
    param0->unk_14 = param5;
    param0->unk_08 = param3;
    param0->unk_10 = (fx32)((param4 - param3)) / param5;
    param0->unk_0C = param4;
    param0->unk_18 = 0;
    param0->unk_1C = ov20_021D2170(ov20_021D4F74, param0, 0);
}

BOOL ov20_021D4F4C (UnkStruct_ov20_021D4FF0 * param0)
{
    switch (param0->unk_18) {
    case 0:
        if (param0->unk_14 == 0) {
            sub_0200DA58(param0->unk_1C);
            param0->unk_18++;
            return 1;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static void ov20_021D4F74 (SysTask * param0, void * param1)
{
    UnkStruct_ov20_021D4FF0 * v0 = param1;
    int v1, v2;

    if (v0->unk_14) {
        v0->unk_08 += v0->unk_10;
        v1 = v0->unk_08 >> 3;
        v0->unk_14--;
    } else {
        v1 = v0->unk_0C >> 3;
    }

    if (v1 > 16) {
        v1 = 16;
    }

    v2 = 16 - v1;

    G2_SetBlendAlpha(v0->unk_00, v0->unk_04, v1, v2);
}

void ov20_021D4FB0 (UnkStruct_ov20_021D4FF0 * param0, int param1, int param2, int param3, int param4)
{
    G2_SetBlendBrightness(param1, param2);

    param0->unk_00 = param1;
    param0->unk_14 = param4;
    param0->unk_08 = param2 * FX32_ONE;
    param0->unk_0C = param3 * FX32_ONE;
    param0->unk_10 = (fx32)((param0->unk_0C - param0->unk_08)) / param4;
    param0->unk_18 = 0;
    param0->unk_1C = ov20_021D2170(ov20_021D5018, param0, 0);
}

BOOL ov20_021D4FF0 (UnkStruct_ov20_021D4FF0 * param0)
{
    switch (param0->unk_18) {
    case 0:
        if (param0->unk_14 == 0) {
            sub_0200DA58(param0->unk_1C);
            param0->unk_18++;
            return 1;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static void ov20_021D5018 (SysTask * param0, void * param1)
{
    UnkStruct_ov20_021D4FF0 * v0 = param1;
    int v1;

    if (v0->unk_14) {
        v0->unk_08 += v0->unk_10;
        v1 = v0->unk_08 >> FX32_SHIFT;
        v0->unk_14--;
    } else {
        v1 = v0->unk_0C >> FX32_SHIFT;
    }

    G2_SetBlendBrightness(v0->unk_00, v1);
}
