#include "unk_0202C9F4.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202CA1C.h"
#include "struct_defs/struct_0202CA28.h"
#include "struct_defs/struct_0202CA64.h"
#include "struct_defs/struct_0202CA88.h"

#include "savedata.h"

int BallSeal_SaveSize(void)
{
    return sizeof(UnkStruct_0202CA1C);
}

void BallSeal_Init(UnkStruct_0202CA1C *param0)
{
    int v0 = BallSeal_SaveSize();
    MI_CpuFill8(param0, 0, v0);
}

void sub_0202CA10(const UnkStruct_0202CA28 *param0, UnkStruct_0202CA28 *param1)
{
    MI_CpuCopy8(param0, param1, sizeof(UnkStruct_0202CA28));
}

UnkStruct_0202CA1C *sub_0202CA1C(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_BALL_SEALS);
}

UnkStruct_0202CA28 *sub_0202CA28(UnkStruct_0202CA1C *param0, int param1)
{
    GF_ASSERT(param1 < 12);
    return &param0->unk_00[param1];
}

void sub_0202CA40(UnkStruct_0202CA1C *param0, UnkStruct_0202CA28 *param1, int param2)
{
    UnkStruct_0202CA28 *v0;

    GF_ASSERT(param2 < 12);

    v0 = sub_0202CA28(param0, param2);
    sub_0202CA10(param1, v0);
}

UnkStruct_0202CA64 *sub_0202CA64(UnkStruct_0202CA28 *param0, int param1)
{
    GF_ASSERT(param1 < 8);
    return &param0->unk_00[param1];
}

u8 sub_0202CA7C(const UnkStruct_0202CA64 *param0)
{
    return param0->unk_00;
}

u8 sub_0202CA80(const UnkStruct_0202CA64 *param0)
{
    return param0->unk_01;
}

u8 sub_0202CA84(const UnkStruct_0202CA64 *param0)
{
    return param0->unk_02;
}

UnkStruct_0202CA88 *sub_0202CA88(UnkStruct_0202CA1C *param0)
{
    return &param0->unk_120;
}

u8 sub_0202CA90(const UnkStruct_0202CA88 *param0, int param1)
{
    return param0->unk_00[param1];
}

BOOL sub_0202CA94(const UnkStruct_0202CA28 *param0, int param1)
{
    int v0, v1;

    for (v1 = 0; v1 < 8; v1++) {
        if (param0->unk_00[v1].unk_00 == (param1 + 1)) {
            return 1;
        }
    }

    return 0;
}

int sub_0202CAB0(const UnkStruct_0202CA1C *param0, int param1)
{
    int v0, v1;
    int v2 = 0;

    for (v0 = 0; v0 < 12; v0++) {
        for (v1 = 0; v1 < 8; v1++) {
            if (param0->unk_00[v0].unk_00[v1].unk_00 == (param1 + 1)) {
                v2++;
            }
        }
    }

    return v2;
}

void sub_0202CADC(UnkStruct_0202CA88 *param0, int param1, int param2)
{
    param0->unk_00[param1] = param2;
}

BOOL sub_0202CAE0(UnkStruct_0202CA1C *param0, int param1, s16 param2)
{
    int v0;
    int v1;

    v0 = sub_0202CAB0(param0, param1 - 1);
    v1 = v0 + param0->unk_120.unk_00[param1 - 1];

    if (param2 < 0) {
        if (param0->unk_120.unk_00[param1 - 1] + param2 >= 0) {
            param0->unk_120.unk_00[param1 - 1] += param2;
        } else {
            return 0;
        }
    } else {
        if (v1 + param2 <= 99) {
            param0->unk_120.unk_00[param1 - 1] += param2;
        } else {
            return 0;
        }
    }

    return 1;
}

BOOL sub_0202CB20(UnkStruct_0202CA1C *param0, int param1, s16 param2)
{
    int v0;
    int v1;

    v0 = sub_0202CAB0(param0, param1 - 1);
    v1 = v0;

    if (param2 < 0) {
        if (param0->unk_120.unk_00[param1 - 1] + param2 >= 0) {
            param0->unk_120.unk_00[param1 - 1] += param2;
        } else {
            return 0;
        }
    } else {
        if (v1 + param2 <= 99) {
            param0->unk_120.unk_00[param1 - 1] += param2;

            if (param0->unk_120.unk_00[param1 - 1] >= 99) {
                param0->unk_120.unk_00[param1 - 1] = 99;
            }
        } else {
            return 0;
        }
    }

    return 1;
}

BOOL sub_0202CB70(UnkStruct_0202CA1C *param0, int param1, s16 param2)
{
    int v0;
    int v1;

    v0 = sub_0202CAB0(param0, param1 - 1);
    v1 = v0 + param0->unk_120.unk_00[param1 - 1];

    if (param2 < 0) {
        if (param0->unk_120.unk_00[param1 - 1] + param2 >= 0) {
            return 1;
        } else {
            return 0;
        }
    } else {
        if (v1 + param2 <= 99) {
            return 1;
        } else {
            return 0;
        }
    }

    return 1;
}

int sub_0202CBA8(const UnkStruct_0202CA1C *param0)
{
    int v0;
    int v1 = 0;

    for (v0 = 1; v0 < (80 + 1); v0++) {
        if (sub_0202CBC8(param0, v0) != 0) {
            v1++;
        }
    }

    return v1;
}

int sub_0202CBC8(const UnkStruct_0202CA1C *param0, int param1)
{
    int v0;
    int v1;

    v0 = sub_0202CAB0(param0, param1 - 1);
    v1 = v0 + param0->unk_120.unk_00[param1 - 1];

    return v1;
}
