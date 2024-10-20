#include "unk_0202854C.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202855C.h"
#include "struct_defs/struct_02029894.h"
#include "struct_defs/struct_02029894_sub1.h"
#include "struct_defs/struct_02029894_sub2.h"
#include "struct_defs/struct_020298B0.h"

#include "core_sys.h"
#include "heap.h"
#include "rtc.h"
#include "savedata.h"
#include "trainer_info.h"
#include "unk_0201D15C.h"

static void sub_02028B48(UndergroundData *param0, int param1, int param2);

u16 Unk_02100920[] = {
    0x6E,
    0x6F,
    0x50,
    0x5B,
    0x51,
    0xEE,
    0x53,
    0xE5,
    0x52,
    0x54,
    0x55,
    0x5C,
    0x65,
    0x66,
    0x64,
    0x63,
    0x67,
    0x6A,
    0x1C,
    0x1D,
    0x48,
    0x49,
    0x4A,
    0x4B,
    0x5D,
    0x68,
    0x69,
    0x10D,
    0x116,
    0x11A,
    0x11B,
    0x11C,
    0x11D,
    0x12A,
    0x12B,
    0x12C,
    0x12D,
    0x12E,
    0x12F,
    0x130,
    0x131,
    0x132,
    0x133,
    0x134,
    0x135,
    0x136,
    0x137,
    0x138,
    0x139
};

int Underground_SaveSize(void)
{
    return sizeof(UndergroundData);
}

int sub_02028554(void)
{
    return sizeof(UnkStruct_02029894);
}

int sub_02028558(void)
{
    return sizeof(SecretBaseRecord);
}

SecretBaseRecord *sub_0202855C(u32 param0)
{
    SecretBaseRecord *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(SecretBaseRecord));
    MI_CpuFill8(v0, 0, sizeof(SecretBaseRecord));
    return v0;
}

void Underground_Init(UndergroundData *param0)
{
    u32 v0 = 0;
    RTCDate v1;
    RTCTime v2;

    GetCurrentDateTime(&v1, &v2);
    v0 = (((((((u32)v1.year * 32ULL + v1.month) * 32ULL) + v1.day) * 32ULL + v2.hour) * 32ULL + v2.minute) * 32ULL + (v2.second + gCoreSys.frameCounter));

    MI_CpuFill8(param0, 0, sizeof(UndergroundData));

    param0->unk_90 = v0;
    param0->unk_9AC_0 = 1;
}

static int sub_020285D8(UndergroundData *param0)
{
    int v0;

    for (v0 = 0; v0 < 40; v0++) {
        if (param0->unk_8FC[v0] == 0) {
            return v0;
        }
    }

    return -1;
}

static int sub_020285F8(UndergroundData *param0)
{
    int v0;

    for (v0 = 0; v0 < 40; v0++) {
        if (param0->unk_94C[v0] == 0) {
            return v0;
        }
    }

    return -1;
}

static int sub_02028618(UndergroundData *param0)
{
    int v0;

    for (v0 = 0; v0 < 40; v0++) {
        if (param0->unk_924[v0] == 0) {
            return v0;
        }
    }

    return -1;
}

static int sub_02028638(UndergroundData *param0)
{
    int v0;

    for (v0 = 0; v0 < 40; v0++) {
        if (param0->unk_8D4[v0] == 0) {
            return v0;
        }
    }

    return -1;
}

void sub_02028658(SaveData *param0, int param1)
{
    UndergroundData *v0 = sub_020298B0(param0);
    MATHRandContext16 v1;
    u8 v2[] = { 0, 2, 2, 4, 4, 5 };
    u8 v3[] = { 0, 1, 1, 3, 3, 5 };
    int v4, v5, v6, v7, v8;

    if (param1 <= 0) {
        return;
    }

    v5 = param1;

    if (param1 > 99) {
        v5 = 99;
    }

    MATH_InitRand16(&v1, v0->unk_90);

    for (v4 = 0; v4 < v5; v4++) {
        for (v8 = 0; v8 < 100; v8++) {
            if (v0->unk_558[v8] != 0) {
                v7 = v0->unk_558[v8];
                v6 = MATH_Rand16(&v1, v2[v7]) + v3[v7];

                if ((v0->unk_5BC[v8] + v6) < 99) {
                    v0->unk_5BC[v8] += v6;
                } else {
                    v0->unk_5BC[v8] = 99;
                }
            }
        }
    }

    v0->unk_90 = ARNG_Next(v0->unk_90 + param1);
    v0->unk_9AC_0 = 1;
}

void sub_02028758(SaveData *param0, s32 param1, BOOL param2)
{
    UndergroundData *v0 = sub_020298B0(param0);

    if ((param1 < 0) || (param2)) {
        return;
    }

    if (v0->unk_94 < param1) {
        v0->unk_94 = 0;
    } else {
        v0->unk_94 -= param1;
    }
}

void SaveData_LoadAndUpdateUnderground(SaveData *param0)
{
    UndergroundData *v0 = sub_020298B0(param0);

    if ((v0->unk_94 == 0) && (v0->unk_98 == 2)) {
        v0->unk_98 = 0;
    }

    if ((v0->unk_94 == 0) && (v0->unk_98 == 1)) {
        v0->unk_94 = (24 * 60);
    }

    if (v0->unk_98 == 1) {
        v0->unk_98 = 2;
    }
}

void sub_020287E0(SaveData *param0)
{
    UndergroundData *v0 = sub_020298B0(param0);

    if (v0->unk_98 == 0) {
        v0->unk_98 = 1;
    }
}

void sub_020287F8(SaveData *param0)
{
    UndergroundData *v0 = sub_020298B0(param0);

    if (v0->unk_98 == 1) {
        v0->unk_98 = 0;
    }
}

BOOL sub_02028810(SaveData *param0)
{
    UndergroundData *v0 = sub_020298B0(param0);

    if (v0->unk_98 == 2) {
        return 0;
    }

    return 1;
}

void sub_02028828(UndergroundData *param0)
{
    param0->unk_99 = 1;
}

void sub_02028830(UndergroundData *param0, const TrainerInfo *param1)
{
    int v0 = param0->unk_10A;
    int v1;

    for (v1 = 0; v1 < 5; v1++) {
        if (param0->unk_9C[v1] == TrainerInfo_ID(param1)) {
            return;
        }
    }

    GF_ASSERT(v0 < 5);
    MI_CpuCopy8(TrainerInfo_Name(param1), param0->unk_B0[v0], (sizeof(u16) * (7 + 1)));

    param0->unk_9C[v0] = TrainerInfo_ID(param1);
    param0->unk_100[v0] = TrainerInfo_RegionCode(param1);
    param0->unk_105[v0] = TrainerInfo_GameCode(param1);
    param0->unk_10A++;

    if (param0->unk_10A >= 5) {
        param0->unk_10A = 0;
    }
}

TrainerInfo *sub_020288C8(const UndergroundData *param0, int param1, int param2)
{
    int v0 = (sizeof(u16) * (7 + 1));
    int v1;
    TrainerInfo *v2;
    int v3 = param0->unk_10A - param2 - 1;

    if (v3 < 0) {
        v3 += 5;
    }

    if (param0->unk_B0[v3][0] != 0) {
        v2 = TrainerInfo_New(param1);

        TrainerInfo_SetName(v2, param0->unk_B0[v3]);
        TrainerInfo_SetGameCode(v2, param0->unk_105[v3]);
        TrainerInfo_SetRegionCode(v2, param0->unk_100[v3]);
        TrainerInfo_SetID(v2, param0->unk_9C[v3]);

        return v2;
    }

    return NULL;
}

u32 sub_02028930(UndergroundData *param0)
{
    return param0->unk_90;
}

int sub_02028938(int param0)
{
    GF_ASSERT(11 <= param0);
    GF_ASSERT(param0 < 60);

    param0 -= 11;
    return Unk_02100920[param0];
}

BOOL sub_0202895C(UndergroundData *param0, int param1)
{
    int v0;
    BOOL v1 = 0;

    for (v0 = 0; v0 < 200; v0++) {
        if (param0->unk_80C[v0] == 0) {
            param0->unk_80C[v0] = param1;
            v1 = 1;
            break;
        }
    }

    return v1;
}

BOOL sub_02028984(UndergroundData *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 200; v0++) {
        if (param0->unk_80C[v0] == 0) {
            return 1;
        }
    }

    return 0;
}

int sub_020289A0(UndergroundData *param0)
{
    int v0;

    for (v0 = 0; v0 < 200; v0++) {
        if (param0->unk_80C[v0] == 0) {
            break;
        }
    }

    return v0;
}

int sub_020289B8(UndergroundData *param0, int param1)
{
    return param0->unk_80C[param1];
}

int sub_020289C4(UndergroundData *param0, int param1)
{
    int v0, v1, v2;

    GF_ASSERT(!sub_02028AFC(param0, param1));

    v1 = param1;
    v2 = param0->unk_80C[v1];

    for (v0 = v1; v0 < 200 - 1; v0++) {
        param0->unk_80C[v0] = param0->unk_80C[v0 + 1];
    }

    param0->unk_80C[200 - 1] = 0;
    sub_02028B48(param0, param1, -1);

    return v2;
}

void sub_02028A10(UndergroundData *param0, int param1, int param2)
{
    int v0, v1 = 0, v2 = 0, v3 = -1;
    u8 v4[200];

    MI_CpuCopy8(param0->unk_80C, v4, 200);

    for (v0 = 0; v0 < 200; v0++) {
        if (v0 != param1) {
            param0->unk_80C[v1] = v4[v0];
            v1++;
        }

        if (v0 == param2) {
            param0->unk_80C[v1] = v4[param1];
            v1++;
        }
    }

    for (v0 = 0; v0 < 15; v0++) {
        if (param0->unk_99C[v0] == (param1 + 1)) {
            v3 = v0;
            break;
        }
    }

    sub_02028B48(param0, param2, 1);
    sub_02028B48(param0, param1, -1);

    if (v3 != -1) {
        if (param1 < param2) {
            param0->unk_99C[v3] = param2 + 1;
        } else {
            param0->unk_99C[v3] = param2 + 2;
        }
    }
}

int sub_02028ACC(UndergroundData *param0, int param1, int param2)
{
    int v0, v1;

    GF_ASSERT(param2 >= 1);
    GF_ASSERT(param2 <= 15);

    param0->unk_99C[param2 - 1] = param1 + 1;
    return param0->unk_80C[param1];
}

BOOL sub_02028AFC(UndergroundData *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        if (param0->unk_99C[v0] == (param1 + 1)) {
            return 1;
        }
    }

    return 0;
}

void sub_02028B20(UndergroundData *param0, int param1)
{
    if ((param1 - 1) >= 15) {
        return;
    }

    param0->unk_99C[param1 - 1] = 0;
}

void sub_02028B34(UndergroundData *param0)
{
    MI_CpuFill8(param0->unk_99C, 0, 15);
}

static void sub_02028B48(UndergroundData *param0, int param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        if (param0->unk_99C[v0] > (param1 + 1)) {
            param0->unk_99C[v0] += param2;
        }
    }
}

int sub_02028B70(UndergroundData *param0)
{
    int v0;

    for (v0 = 0; v0 < 40; v0++) {
        if (param0->unk_8FC[v0] == 0) {
            break;
        }
    }

    return v0;
}

int sub_02028B88(UndergroundData *param0, int param1)
{
    return param0->unk_8FC[param1];
}

int sub_02028B94(UndergroundData *param0, int param1)
{
    int v0, v1, v2;

    v1 = param1;
    v2 = param0->unk_8FC[v1];

    for (v0 = v1; v0 < 40 - 1; v0++) {
        param0->unk_8FC[v0] = param0->unk_8FC[v0 + 1];
    }

    param0->unk_8FC[40 - 1] = 0;
    return v2;
}

BOOL sub_02028BC8(UndergroundData *param0, int param1)
{
    int v0;
    BOOL v1 = 0;

    v0 = sub_020285D8(param0);

    if (v0 != -1) {
        param0->unk_8FC[v0] = param1;
        v1 = 1;
    }

    return v1;
}

void sub_02028BE8(UndergroundData *param0, int param1, int param2)
{
    int v0, v1 = 0, v2 = 0;
    u8 v3[40];

    MI_CpuCopy8(param0->unk_8FC, v3, 40);

    for (v0 = 0; v0 < 40; v0++) {
        if (v0 != param1) {
            param0->unk_8FC[v1] = v3[v0];
            v1++;
        }

        if (v0 == param2) {
            param0->unk_8FC[v1] = v3[param1];
            v1++;
        }
    }
}

int sub_02028C3C(UndergroundData *param0)
{
    int v0;

    for (v0 = 0; v0 < 40; v0++) {
        if (param0->unk_94C[v0] == 0) {
            break;
        }
    }

    return v0;
}

int sub_02028C54(UndergroundData *param0, int param1)
{
    return param0->unk_94C[param1];
}

int sub_02028C60(UndergroundData *param0, int param1)
{
    return param0->unk_974[param1];
}

int sub_02028C6C(UndergroundData *param0, int param1)
{
    int v0, v1, v2;

    v1 = param1;
    v2 = param0->unk_94C[v1];

    for (v0 = v1; v0 < 40 - 1; v0++) {
        param0->unk_94C[v0] = param0->unk_94C[v0 + 1];
        param0->unk_974[v0] = param0->unk_974[v0 + 1];
    }

    param0->unk_94C[40 - 1] = 0;

    return v2;
}

BOOL sub_02028CB0(UndergroundData *param0, int param1, int param2)
{
    int v0;
    BOOL v1 = 0;

    v0 = sub_020285F8(param0);

    if (v0 != -1) {
        param0->unk_94C[v0] = param1;
        param0->unk_974[v0] = param2;
        v1 = 1;
    }

    return v1;
}

void sub_02028CD8(UndergroundData *param0, int param1, int param2)
{
    int v0, v1 = 0, v2 = 0;
    u8 v3[40];
    u8 v4[40];

    MI_CpuCopy8(param0->unk_94C, v3, 40);
    MI_CpuCopy8(param0->unk_974, v4, 40);

    for (v0 = 0; v0 < 40; v0++) {
        if (v0 != param1) {
            param0->unk_94C[v1] = v3[v0];
            param0->unk_974[v1] = v4[v0];
            v1++;
        }

        if (v0 == param2) {
            param0->unk_94C[v1] = v3[param1];
            param0->unk_974[v1] = v4[param1];
            v1++;
        }
    }
}

int sub_02028D58(UndergroundData *param0)
{
    int v0;

    for (v0 = 0; v0 < 40; v0++) {
        if (param0->unk_924[v0] == 0) {
            break;
        }
    }

    return v0;
}

int sub_02028D74(UndergroundData *param0, int param1)
{
    return param0->unk_924[param1];
}

int sub_02028D80(UndergroundData *param0, int param1)
{
    int v0, v1, v2;

    v1 = param1;
    v2 = param0->unk_924[v1];

    for (v0 = v1; v0 < 40 - 1; v0++) {
        param0->unk_924[v0] = param0->unk_924[v0 + 1];
    }

    param0->unk_924[40 - 1] = 0;

    return v2;
}

BOOL sub_02028DB4(UndergroundData *param0, int param1)
{
    int v0;
    BOOL v1 = 0;

    v0 = sub_02028618(param0);

    if (v0 != -1) {
        param0->unk_924[v0] = param1;
        v1 = 1;
    }

    return v1;
}

void sub_02028DD8(UndergroundData *param0, int param1, int param2)
{
    int v0, v1 = 0, v2 = 0;
    u8 v3[40];

    MI_CpuCopy8(param0->unk_924, v3, 40);

    for (v0 = 0; v0 < 40; v0++) {
        if (v0 != param1) {
            param0->unk_924[v1] = v3[v0];
            v1++;
        }

        if (v0 == param2) {
            param0->unk_924[v1] = v3[param1];
            v1++;
        }
    }
}

int sub_02028E28(UndergroundData *param0)
{
    int v0;

    for (v0 = 0; v0 < 40; v0++) {
        if (param0->unk_8D4[v0] == 0) {
            break;
        }
    }

    return v0;
}

int sub_02028E44(UndergroundData *param0, int param1)
{
    int v0;

    return param0->unk_8D4[param1];
}

int sub_02028E50(UndergroundData *param0, int param1)
{
    int v0, v1, v2;

    v1 = param1;
    v2 = param0->unk_8D4[v1];

    for (v0 = v1; v0 < 40 - 1; v0++) {
        param0->unk_8D4[v0] = param0->unk_8D4[v0 + 1];
    }

    param0->unk_8D4[40 - 1] = 0;

    return v2;
}

BOOL sub_02028E84(UndergroundData *param0, int param1)
{
    int v0;
    BOOL v1 = 0;

    v0 = sub_02028638(param0);

    if (v0 != -1) {
        param0->unk_8D4[v0] = param1;
        v1 = 1;
    }

    return v1;
}

void sub_02028EA8(UndergroundData *param0, int param1, int param2)
{
    int v0, v1 = 0, v2 = 0;
    u8 v3[40];

    MI_CpuCopy8(param0->unk_8D4, v3, 40);

    for (v0 = 0; v0 < 40; v0++) {
        if (v0 != param1) {
            param0->unk_8D4[v1] = v3[v0];
            v1++;
        }

        if (v0 == param2) {
            param0->unk_8D4[v1] = v3[param1];
            v1++;
        }
    }
}

void sub_02028EF8(UndergroundData *param0, int param1, int param2, int param3, int param4)
{
    GF_ASSERT(param2 < (16 * 4));

    param0->unk_10B[param2] = param1;
    param0->unk_14B[param2][0] = param3;
    param0->unk_14B[param2][1] = ((param3 & 0xf00) >> 8) + ((param4 & 0xf00) >> 4);
    param0->unk_14B[param2][2] = param4;
}

int sub_02028F40(UndergroundData *param0, int param1)
{
    GF_ASSERT(param1 < (16 * 4));
    return param0->unk_10B[param1];
}

int sub_02028F5C(UndergroundData *param0, int param1)
{
    int v0;

    GF_ASSERT(param1 < (16 * 4));

    v0 = param0->unk_14B[param1][0];
    v0 += (param0->unk_14B[param1][1] << 8) & 0xf00;

    return v0;
}

int sub_02028F88(UndergroundData *param0, int param1)
{
    int v0;

    GF_ASSERT(param1 < (16 * 4));

    v0 = param0->unk_14B[param1][2];
    v0 += (param0->unk_14B[param1][1] << 4) & 0xf00;

    return v0;
}

void sub_02028FB4(UndergroundData *param0, int param1)
{
    GF_ASSERT(param1 < (16 * 4));

    param0->unk_10B[param1] = 0;
    MI_CpuClear8(param0->unk_14B[param1], 3);
}

void sub_02028FE0(UndergroundData *param0, int param1, int param2, int param3, int param4, int param5)
{
    GF_ASSERT(param2 < 16);

    param0->unk_508[param2] = param1;
    param0->unk_518[param2][0] = param3;
    param0->unk_518[param2][1] = ((param3 & 0xf00) >> 8) + ((param4 & 0xf00) >> 4);
    param0->unk_518[param2][2] = param4;
    param0->unk_548[param2] = param5;
}

int sub_02029030(UndergroundData *param0, int param1)
{
    return param0->unk_508[param1];
}

int sub_0202903C(UndergroundData *param0, int param1)
{
    int v0 = param0->unk_518[param1][0];

    v0 += (param0->unk_518[param1][1] << 8) & 0xf00;
    return v0;
}

int sub_0202905C(UndergroundData *param0, int param1)
{
    int v0 = param0->unk_518[param1][2];

    v0 += (param0->unk_518[param1][1] << 4) & 0xf00;
    return v0;
}

int sub_0202907C(UndergroundData *param0, int param1)
{
    return param0->unk_548[param1];
}

void sub_02029088(UndergroundData *param0, int param1, int param2, int param3, int param4, int param5, int param6)
{
    GF_ASSERT(param2 < 100);

    param0->unk_558[param2] = param1;
    param0->unk_684[param2][0] = param3;
    param0->unk_684[param2][1] = ((param3 & 0xf00) >> 8) + ((param4 & 0xf00) >> 4);
    param0->unk_684[param2][2] = param4;
    param0->unk_620[param2] = param5;
    param0->unk_5BC[param2] = param6;
}

int sub_020290DC(UndergroundData *param0, int param1)
{
    return param0->unk_558[param1];
}

int sub_020290E8(UndergroundData *param0, int param1)
{
    int v0 = param0->unk_684[param1][0];

    v0 += (param0->unk_684[param1][1] << 8) & 0xf00;
    return v0;
}

int sub_02029108(UndergroundData *param0, int param1)
{
    int v0 = param0->unk_684[param1][2];

    v0 += (param0->unk_684[param1][1] << 4) & 0xf00;
    return v0;
}

int sub_02029128(UndergroundData *param0, int param1)
{
    return param0->unk_620[param1];
}

int sub_02029134(UndergroundData *param0, int param1)
{
    return param0->unk_5BC[param1];
}

int sub_02029140(UndergroundData *param0, int param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < 255; v0++) {
        if ((param0->unk_20B[v0][0] == 0) && (param0->unk_20B[v0][1] == 0) && (param0->unk_20B[v0][2] == 0)) {
            param0->unk_20B[v0][0] = param1;
            param0->unk_20B[v0][1] = ((param1 & 0xf00) >> 8) + ((param2 & 0xf00) >> 4);
            param0->unk_20B[v0][2] = param2;
            break;
        }
    }

    if (v0 == 255) {
        v0 = 0;
    }

    return v0;
}

void sub_020291A4(UndergroundData *param0, int param1)
{
    GF_ASSERT(param1 < 255);
    MI_CpuFill8(param0->unk_20B[param1], 0, 3);
}

int sub_020291CC(UndergroundData *param0, int param1)
{
    int v0 = param0->unk_20B[param1][0];

    v0 += (param0->unk_20B[param1][1] << 8) & 0xf00;
    return v0;
}

int sub_020291EC(UndergroundData *param0, int param1)
{
    int v0 = param0->unk_20B[param1][2];

    v0 += (param0->unk_20B[param1][1] << 4) & 0xf00;
    return v0;
}

BOOL sub_0202920C(UndergroundData *param0)
{
    return param0->unk_9AC_4 == 0;
}

void sub_02029220(UndergroundData *param0)
{
    param0->unk_9AC_4 = 1;
}

BOOL sub_02029234(UndergroundData *param0)
{
    return param0->unk_9AC_0;
}

void sub_02029240(UndergroundData *param0)
{
    param0->unk_9AC_0 = 0;
}

void sub_02029250(UndergroundData *param0, int param1)
{
    if ((44 > param1) || (param1 > 59)) {
        return;
    }

    param0->unk_808 |= (0x1 << (param1 - 44));
}

BOOL sub_02029274(UndergroundData *param0, int param1)
{
    if ((44 > param1) || (param1 > 59)) {
        return 1;
    }

    if (param0->unk_808 & (0x1 << (param1 - 44))) {
        return 0;
    }

    return 1;
}

void sub_0202929C(UndergroundData *param0)
{
    if (param0->unk_9AB >= (100 - 1)) {
        param0->unk_9AB = 0;
    } else {
        param0->unk_9AB++;
    }
}

int sub_020292B4(UndergroundData *param0)
{
    return param0->unk_9AB;
}

void sub_020292C0(UnkStruct_02029894 *param0)
{
    MI_CpuFill8(param0, 0, sizeof(UnkStruct_02029894));
}

void sub_020292CC(UnkStruct_02029894 *param0)
{
    MI_CpuClear8(param0->unk_00, 15 * sizeof(UnkStruct_02029894_sub1));
    MI_CpuClear8(param0->unk_2D, 16 * sizeof(UnkStruct_02029894_sub2));

    param0->unk_8C = 0;
    param0->unk_8E = 0;
    param0->unk_90 = 0;
    param0->unk_91 = 0;
}

void sub_02029300(UnkStruct_02029894 *param0)
{
    param0->unk_91 = 0;
}

void sub_02029308(UnkStruct_02029894 *param0, int param1, int param2, int param3, int param4)
{
    GF_ASSERT(param1 < (15 + 16 + 1));
    GF_ASSERT(param3 < 32);
    GF_ASSERT(param4 < 32);
    GF_ASSERT(param0);

    if (0 == param1) {
        return;
    } else if (param1 < (15 + 1)) {
        param0->unk_00[param1 - 1].unk_00 = param3;
        param0->unk_00[param1 - 1].unk_01 = param4;
        param0->unk_00[param1 - 1].unk_02 = param2;
    } else {
        param0->unk_2D[param1 - 1 - 15].unk_00 = param3;
        param0->unk_2D[param1 - 1 - 15].unk_01 = param4;
    }
}

void sub_02029364(UnkStruct_02029894 *param0, int param1, int param2, int param3)
{
    int v0 = sub_020293B0(param0, param1);
    sub_02029308(param0, param1, v0, param2, param3);
}

static int sub_02029384(const UnkStruct_02029894 *param0)
{
    int v0 = param0->unk_50.unk_38_0;

    if (50 <= v0) {
        return 5;
    } else if (10 <= v0) {
        return 4;
    } else if (3 <= v0) {
        return 3;
    } else if (1 <= v0) {
        return 2;
    }

    return 1;
}

int sub_020293B0(const UnkStruct_02029894 *param0, int param1)
{
    GF_ASSERT(param1 < (15 + 16 + 1));

    if (0 == param1) {
        return sub_02029384(param0);
    } else if (param1 < (15 + 1)) {
        return param0->unk_00[param1 - 1].unk_02;
    } else if ((param0->unk_2D[param1 - 1 - 15].unk_00 != 0) && (param0->unk_2D[param1 - 1 - 15].unk_01 != 0)) {
        return 6;
    }

    return 0;
}

int sub_020293FC(const UnkStruct_02029894 *param0, int param1)
{
    GF_ASSERT(param1 < (15 + 16 + 1));

    if (0 == param1) {
        return 15;
    } else if (param1 < (15 + 1)) {
        return param0->unk_00[param1 - 1].unk_00;
    }

    return param0->unk_2D[param1 - 1 - 15].unk_00;
}

int sub_0202942C(const UnkStruct_02029894 *param0, int param1)
{
    GF_ASSERT(param1 < (15 + 16 + 1));

    if (0 == param1) {
        return 12;
    } else if (param1 < (15 + 1)) {
        return param0->unk_00[param1 - 1].unk_01;
    }

    return param0->unk_2D[param1 - 1 - 15].unk_01;
}

int sub_02029460(const UnkStruct_02029894 *param0)
{
    if (param0->unk_50.unk_38_0 >= 50) {
        return 0;
    } else if (param0->unk_50.unk_38_0 >= 10) {
        return 6;
    } else if (param0->unk_50.unk_38_0 >= 3) {
        return 11;
    } else if (param0->unk_50.unk_38_0 >= 1) {
        return 15;
    }

    return 16;
}

int sub_0202948C(const UnkStruct_02029894 *param0)
{
    if (param0->unk_50.unk_38_0 >= 50) {
        return 15;
    } else if (param0->unk_50.unk_38_0 >= 10) {
        return 15;
    } else if (param0->unk_50.unk_38_0 >= 3) {
        return 15;
    } else if (param0->unk_50.unk_38_0 >= 1) {
        return 12;
    }

    return 10;
}

int sub_020294B8(const SecretBaseRecord *param0)
{
    return param0->unk_00_0;
}

int sub_020294C0(const SecretBaseRecord *param0)
{
    if (4 == sub_0202958C(param0)) {
        return 1;
    }

    return 0;
}

void sub_020294D4(SecretBaseRecord *param0, int param1)
{
    param0->unk_00_0 = param1;
}

int sub_020294EC(const SecretBaseRecord *param0)
{
    return param0->unk_04_0;
}

void sub_020294F4(SecretBaseRecord *param0, int param1)
{
    if (param0->unk_04_0 < 999999) {
        param0->unk_04_0++;
    }
}

int sub_02029524(const SecretBaseRecord *param0)
{
    return param0->unk_08_0;
}

void sub_0202952C(SecretBaseRecord *param0)
{
    if (param0->unk_08_0 < 999999) {
        param0->unk_08_0++;
    }
}

void sub_0202955C(SecretBaseRecord *param0)
{
    if (param0->unk_0C_0 < 999999) {
        param0->unk_0C_0++;
    }
}

int sub_0202958C(const SecretBaseRecord *param0)
{
    int v0 = param0->unk_38_0;

    if (50 <= v0) {
        return 4;
    } else if (10 <= v0) {
        return 3;
    } else if (3 <= v0) {
        return 2;
    } else if (1 <= v0) {
        return 1;
    }

    return 0;
}

int sub_020295B8(const SecretBaseRecord *param0)
{
    return param0->unk_38_0;
}

void sub_020295C0(SecretBaseRecord *param0)
{
    if (param0->unk_38_0 < 999999) {
        param0->unk_38_0++;
    }
}

int sub_020295F0(const SecretBaseRecord *param0)
{
    return param0->unk_10_0;
}

void sub_020295F8(SecretBaseRecord *param0, int param1)
{
    if ((param1 > 0) && (param0->unk_10_0 > (999999 - param1))) {
        param0->unk_10_0 = 999999;
    } else {
        param0->unk_10_0 += param1;
    }
}

int sub_0202963C(const SecretBaseRecord *param0)
{
    return param0->unk_14_0;
}

void sub_02029644(SecretBaseRecord *param0, int param1)
{
    if ((param1 > 0) && (param0->unk_14_0 > (999999 - param1))) {
        param0->unk_14_0 = 999999;
    } else {
        param0->unk_14_0 += param1;
    }
}

void sub_02029688(SecretBaseRecord *param0, int param1)
{
    if ((param1 > 0) && (param0->unk_18_0 > (999999 - param1))) {
        param0->unk_18_0 = 999999;
    } else {
        param0->unk_18_0 += param1;
    }
}

int sub_020296CC(const SecretBaseRecord *param0)
{
    return param0->unk_1C_0;
}

void sub_020296D4(SecretBaseRecord *param0)
{
    if (param0->unk_1C_0 < 999999) {
        param0->unk_1C_0++;
    }
}

int sub_02029704(const SecretBaseRecord *param0)
{
    return param0->unk_20_0;
}

void sub_0202970C(SecretBaseRecord *param0)
{
    if (param0->unk_20_0 < 999999) {
        param0->unk_20_0++;
    }
}

int sub_0202973C(const SecretBaseRecord *param0)
{
    return param0->unk_24_0;
}

void sub_02029744(SecretBaseRecord *param0)
{
    if (param0->unk_24_0 < 999999) {
        param0->unk_24_0++;
    }
}

int sub_02029774(const SecretBaseRecord *param0)
{
    return param0->unk_28_0;
}

void sub_0202977C(SecretBaseRecord *param0)
{
    if (param0->unk_28_0 < 999999) {
        param0->unk_28_0++;
    }
}

int sub_020297AC(const SecretBaseRecord *param0)
{
    return param0->unk_2C_0;
}

void sub_020297B4(SecretBaseRecord *param0)
{
    if (param0->unk_2C_0 < 999999) {
        param0->unk_2C_0++;
    }
}

int sub_020297E4(const SecretBaseRecord *param0)
{
    return param0->unk_30_0;
}

void sub_020297EC(SecretBaseRecord *param0)
{
    if (param0->unk_30_0 < 999999) {
        param0->unk_30_0++;
    }
}

int sub_0202981C(const SecretBaseRecord *param0)
{
    return param0->unk_34_0;
}

void sub_02029824(SecretBaseRecord *param0)
{
    if (param0->unk_34_0 < 999999) {
        param0->unk_34_0++;
    }
}

void sub_02029854(UnkStruct_02029894 *param0, int param1, int param2, int param3)
{
    param0->unk_8C = param1;
    param0->unk_8E = param2;
    param0->unk_90 = param3;
    param0->unk_91 = 1;
}

int sub_02029874(const UnkStruct_02029894 *param0)
{
    return param0->unk_8C;
}

int sub_0202987C(const UnkStruct_02029894 *param0)
{
    return param0->unk_8E;
}

int sub_02029884(const UnkStruct_02029894 *param0)
{
    return param0->unk_90;
}

BOOL sub_0202988C(const UnkStruct_02029894 *param0)
{
    return param0->unk_91;
}

UnkStruct_02029894 *sub_02029894(SaveData *param0)
{
    UndergroundData *v0;

    v0 = SaveData_SaveTable(param0, 12);
    return &v0->unk_00;
}

SecretBaseRecord *SaveData_SecretBaseRecord(SaveData *param0)
{
    UndergroundData *v0;

    v0 = SaveData_SaveTable(param0, 12);
    return &v0->unk_00.unk_50;
}

SecretBaseRecord *sub_020298AC(UnkStruct_02029894 *param0)
{
    return &param0->unk_50;
}

UndergroundData *sub_020298B0(SaveData *param0)
{
    UndergroundData *v0;

    v0 = SaveData_SaveTable(param0, 12);
    return v0;
}
