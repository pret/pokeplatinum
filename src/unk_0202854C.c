#include "unk_0202854C.h"

#include <nitro.h>
#include <string.h>

#include "constants/items.h"

#include "struct_defs/struct_02029894.h"
#include "struct_defs/struct_02029894_sub1.h"
#include "struct_defs/struct_02029894_sub2.h"
#include "struct_defs/underground_data.h"
#include "struct_defs/underground_record.h"

#include "overlay023/ov23_0223E140.h"

#include "heap.h"
#include "math_util.h"
#include "rtc.h"
#include "savedata.h"
#include "system.h"
#include "trainer_info.h"

#define FLAG_CAPTURED_COUNT_PLATINUM 50
#define FLAG_CAPTURED_COUNT_GOLD     10
#define FLAG_CAPTURED_COUNT_SILVER   3
#define FLAG_CAPTURED_COUNT_BRONZE   1
#define FLAG_CAPTURED_COUNT_NORMAL   0

static void sub_02028B48(UndergroundData *undergroundData, int param1, int param2);

static u16 sMiningItems[] = {
    [0] = ITEM_OVAL_STONE,
    [1] = ITEM_ODD_KEYSTONE,
    [2] = ITEM_SUN_STONE,
    [3] = ITEM_STAR_PIECE,
    [4] = ITEM_MOON_STONE,
    [5] = ITEM_HARD_STONE,
    [6] = ITEM_THUNDERSTONE,
    [7] = ITEM_EVERSTONE,
    [8] = ITEM_FIRE_STONE,
    [9] = ITEM_WATER_STONE,
    [10] = ITEM_LEAF_STONE,
    [11] = ITEM_NUGGET,
    [12] = ITEM_HELIX_FOSSIL,
    [13] = ITEM_DOME_FOSSIL,
    [14] = ITEM_CLAW_FOSSIL,
    [15] = ITEM_ROOT_FOSSIL,
    [16] = ITEM_OLD_AMBER,
    [17] = ITEM_RARE_BONE,
    [18] = ITEM_REVIVE,
    [19] = ITEM_MAX_REVIVE,
    [20] = ITEM_RED_SHARD,
    [21] = ITEM_BLUE_SHARD,
    [22] = ITEM_YELLOW_SHARD,
    [23] = ITEM_GREEN_SHARD,
    [24] = ITEM_HEART_SCALE,
    [25] = ITEM_ARMOR_FOSSIL,
    [26] = ITEM_SKULL_FOSSIL,
    [27] = ITEM_LIGHT_CLAY,
    [28] = ITEM_IRON_BALL,
    [29] = ITEM_ICY_ROCK,
    [30] = ITEM_SMOOTH_ROCK,
    [31] = ITEM_HEAT_ROCK,
    [32] = ITEM_DAMP_ROCK,
    [33] = ITEM_FLAME_PLATE,
    [34] = ITEM_SPLASH_PLATE,
    [35] = ITEM_ZAP_PLATE,
    [36] = ITEM_MEADOW_PLATE,
    [37] = ITEM_ICICLE_PLATE,
    [38] = ITEM_FIST_PLATE,
    [39] = ITEM_TOXIC_PLATE,
    [40] = ITEM_EARTH_PLATE,
    [41] = ITEM_SKY_PLATE,
    [42] = ITEM_MIND_PLATE,
    [43] = ITEM_INSECT_PLATE,
    [44] = ITEM_STONE_PLATE,
    [45] = ITEM_SPOOKY_PLATE,
    [46] = ITEM_DRACO_PLATE,
    [47] = ITEM_DREAD_PLATE,
    [48] = ITEM_IRON_PLATE
};

int Underground_SaveSize(void)
{
    return sizeof(UndergroundData);
}

int sub_02028554(void)
{
    return sizeof(UnkStruct_02029894);
}

int UndergroundRecord_Size(void)
{
    return sizeof(UndergroundRecord);
}

UndergroundRecord *UndergroundRecord_Init(u32 heapID)
{
    UndergroundRecord *undergroundRecord = Heap_AllocFromHeap(heapID, sizeof(UndergroundRecord));
    MI_CpuFill8(undergroundRecord, 0, sizeof(UndergroundRecord));
    return undergroundRecord;
}

void Underground_Init(UndergroundData *param0)
{
    u32 seed = 0;
    RTCDate date;
    RTCTime time;

    GetCurrentDateTime(&date, &time);
    seed = (((((((u32)date.year * 32ULL + date.month) * 32ULL) + date.day) * 32ULL + time.hour) * 32ULL + time.minute) * 32ULL + (time.second + gSystem.vblankCounter));

    MI_CpuFill8(param0, 0, sizeof(UndergroundData));

    param0->randomSeed = seed;
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
        if (param0->spheres[v0] == 0) {
            return v0;
        }
    }

    return -1;
}

static int sub_02028618(UndergroundData *param0)
{
    int v0;

    for (v0 = 0; v0 < 40; v0++) {
        if (param0->treasure[v0] == 0) {
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

void sub_02028658(SaveData *saveData, int param1)
{
    UndergroundData *v0 = SaveData_GetUndergroundData(saveData);
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

    MATH_InitRand16(&v1, v0->randomSeed);

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

    v0->randomSeed = ARNG_Next(v0->randomSeed + param1);
    v0->unk_9AC_0 = 1;
}

void sub_02028758(SaveData *saveData, s32 param1, BOOL param2)
{
    UndergroundData *v0 = SaveData_GetUndergroundData(saveData);

    if ((param1 < 0) || (param2)) {
        return;
    }

    if (v0->unk_94 < param1) {
        v0->unk_94 = 0;
    } else {
        v0->unk_94 -= param1;
    }
}

void SaveData_LoadAndUpdateUnderground(SaveData *saveData)
{
    UndergroundData *v0 = SaveData_GetUndergroundData(saveData);

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

void sub_020287E0(SaveData *saveData)
{
    UndergroundData *v0 = SaveData_GetUndergroundData(saveData);

    if (v0->unk_98 == 0) {
        v0->unk_98 = 1;
    }
}

void sub_020287F8(SaveData *saveData)
{
    UndergroundData *v0 = SaveData_GetUndergroundData(saveData);

    if (v0->unk_98 == 1) {
        v0->unk_98 = 0;
    }
}

BOOL sub_02028810(SaveData *saveData)
{
    UndergroundData *v0 = SaveData_GetUndergroundData(saveData);

    if (v0->unk_98 == 2) {
        return 0;
    }

    return 1;
}

void UndergroundData_SetUnusedField(UndergroundData *undergroundData)
{
    undergroundData->unused = 1;
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

TrainerInfo *sub_020288C8(const UndergroundData *param0, int heapID, int param2)
{
    int v0 = (sizeof(u16) * (7 + 1));
    int v1;
    TrainerInfo *v2;
    int v3 = param0->unk_10A - param2 - 1;

    if (v3 < 0) {
        v3 += 5;
    }

    if (param0->unk_B0[v3][0] != 0) {
        v2 = TrainerInfo_New(heapID);

        TrainerInfo_SetName(v2, param0->unk_B0[v3]);
        TrainerInfo_SetGameCode(v2, param0->unk_105[v3]);
        TrainerInfo_SetRegionCode(v2, param0->unk_100[v3]);
        TrainerInfo_SetID(v2, param0->unk_9C[v3]);

        return v2;
    }

    return NULL;
}

u32 UndergroundData_GetRandomSeed(UndergroundData *param0)
{
    return param0->randomSeed;
}

int Underground_ConvertTreasureToBagItem(int treasureID)
{
    GF_ASSERT(MINING_TREASURE_OVAL_STONE <= treasureID);
    GF_ASSERT(treasureID < MINING_ROCK_1);

    treasureID -= MINING_TREASURE_OVAL_STONE;
    return sMiningItems[treasureID];
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

int UndergroundData_GetSphereCount(UndergroundData *undergroundData)
{
    int v0;

    for (v0 = 0; v0 < 40; v0++) {
        if (undergroundData->spheres[v0] == 0) {
            break;
        }
    }

    return v0;
}

int sub_02028C54(UndergroundData *param0, int param1)
{
    return param0->spheres[param1];
}

int sub_02028C60(UndergroundData *param0, int param1)
{
    return param0->sphereSizes[param1];
}

int sub_02028C6C(UndergroundData *param0, int param1)
{
    int v0, v1, v2;

    v1 = param1;
    v2 = param0->spheres[v1];

    for (v0 = v1; v0 < 40 - 1; v0++) {
        param0->spheres[v0] = param0->spheres[v0 + 1];
        param0->sphereSizes[v0] = param0->sphereSizes[v0 + 1];
    }

    param0->spheres[40 - 1] = 0;

    return v2;
}

BOOL sub_02028CB0(UndergroundData *undergroundData, int sphereID, int sphereSize)
{
    int v0;
    BOOL v1 = 0;

    v0 = sub_020285F8(undergroundData);

    if (v0 != -1) {
        undergroundData->spheres[v0] = sphereID;
        undergroundData->sphereSizes[v0] = sphereSize;
        v1 = 1;
    }

    return v1;
}

void sub_02028CD8(UndergroundData *param0, int param1, int param2)
{
    int v0, v1 = 0, v2 = 0;
    u8 v3[40];
    u8 v4[40];

    MI_CpuCopy8(param0->spheres, v3, 40);
    MI_CpuCopy8(param0->sphereSizes, v4, 40);

    for (v0 = 0; v0 < 40; v0++) {
        if (v0 != param1) {
            param0->spheres[v1] = v3[v0];
            param0->sphereSizes[v1] = v4[v0];
            v1++;
        }

        if (v0 == param2) {
            param0->spheres[v1] = v3[param1];
            param0->sphereSizes[v1] = v4[param1];
            v1++;
        }
    }
}

int UndergroundData_GetTreasureCount(UndergroundData *undergroundData)
{
    int v0;

    for (v0 = 0; v0 < 40; v0++) {
        if (undergroundData->treasure[v0] == 0) {
            break;
        }
    }

    return v0;
}

int sub_02028D74(UndergroundData *param0, int param1)
{
    return param0->treasure[param1];
}

int sub_02028D80(UndergroundData *param0, int param1)
{
    int v0, v1, v2;

    v1 = param1;
    v2 = param0->treasure[v1];

    for (v0 = v1; v0 < 40 - 1; v0++) {
        param0->treasure[v0] = param0->treasure[v0 + 1];
    }

    param0->treasure[40 - 1] = 0;

    return v2;
}

BOOL sub_02028DB4(UndergroundData *param0, int param1)
{
    int v0;
    BOOL v1 = 0;

    v0 = sub_02028618(param0);

    if (v0 != -1) {
        param0->treasure[v0] = param1;
        v1 = 1;
    }

    return v1;
}

void sub_02028DD8(UndergroundData *param0, int param1, int param2)
{
    int v0, v1 = 0, v2 = 0;
    u8 v3[40];

    MI_CpuCopy8(param0->treasure, v3, 40);

    for (v0 = 0; v0 < 40; v0++) {
        if (v0 != param1) {
            param0->treasure[v1] = v3[v0];
            v1++;
        }

        if (v0 == param2) {
            param0->treasure[v1] = v3[param1];
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

BOOL UndergroundData_HasNeverMined(UndergroundData *undergroundData)
{
    return undergroundData->hasMined == FALSE;
}

void UndergroundData_SetHasMined(UndergroundData *undergroundData)
{
    undergroundData->hasMined = TRUE;
}

BOOL sub_02029234(UndergroundData *param0)
{
    return param0->unk_9AC_0;
}

void sub_02029240(UndergroundData *param0)
{
    param0->unk_9AC_0 = 0;
}

void UndergroundData_SetPlateMined(UndergroundData *undergroundData, int miningItemID)
{
    if ((MINING_TREASURE_FLAME_PLATE > miningItemID) || (miningItemID > MINING_TREASURE_IRON_PLATE)) {
        return;
    }

    undergroundData->minedPlates |= (0x1 << (miningItemID - MINING_TREASURE_FLAME_PLATE));
}

BOOL UndergroundData_HasPlateNeverBeenMined(UndergroundData *undergroundData, int miningItemID)
{
    if ((MINING_TREASURE_FLAME_PLATE > miningItemID) || (miningItemID > MINING_TREASURE_IRON_PLATE)) {
        return TRUE;
    }

    if (undergroundData->minedPlates & (0x1 << (miningItemID - MINING_TREASURE_FLAME_PLATE))) {
        return FALSE;
    }

    return TRUE;
}

void UndergroundData_IncrementStepCount(UndergroundData *undergroundData)
{
    if (undergroundData->stepCount >= (100 - 1)) {
        undergroundData->stepCount = 0;
    } else {
        undergroundData->stepCount++;
    }
}

int UndergroundData_GetStepCount(UndergroundData *undergroundData)
{
    return undergroundData->stepCount;
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

// this is off-by-one compared to the actual flag type
static int sub_02029384(const UnkStruct_02029894 *param0)
{
    int numFlags = param0->unk_50.capturedFlagCount;

    if (FLAG_CAPTURED_COUNT_PLATINUM <= numFlags) {
        return 5;
    } else if (FLAG_CAPTURED_COUNT_GOLD <= numFlags) {
        return 4;
    } else if (FLAG_CAPTURED_COUNT_SILVER <= numFlags) {
        return 3;
    } else if (FLAG_CAPTURED_COUNT_BRONZE <= numFlags) {
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

int sub_GetMaxRemovableRocks(const UnkStruct_02029894 *param0)
{
    if (param0->unk_50.capturedFlagCount >= FLAG_CAPTURED_COUNT_PLATINUM) {
        return 0;
    } else if (param0->unk_50.capturedFlagCount >= FLAG_CAPTURED_COUNT_GOLD) {
        return 6;
    } else if (param0->unk_50.capturedFlagCount >= FLAG_CAPTURED_COUNT_SILVER) {
        return 11;
    } else if (param0->unk_50.capturedFlagCount >= FLAG_CAPTURED_COUNT_BRONZE) {
        return 15;
    }

    return 16;
}

int sub_GetMaxDisplayItemsCount(const UnkStruct_02029894 *param0)
{
    if (param0->unk_50.capturedFlagCount >= FLAG_CAPTURED_COUNT_PLATINUM) {
        return 15;
    } else if (param0->unk_50.capturedFlagCount >= FLAG_CAPTURED_COUNT_GOLD) {
        return 15;
    } else if (param0->unk_50.capturedFlagCount >= FLAG_CAPTURED_COUNT_SILVER) {
        return 15;
    } else if (param0->unk_50.capturedFlagCount >= FLAG_CAPTURED_COUNT_BRONZE) {
        return 12;
    }

    return 10;
}

int UndergroundRecord_GetTrainerScore(const UndergroundRecord *undergroundRecord)
{
    return undergroundRecord->trainerScore;
}

BOOL UndergroundRecord_HasPlatBaseFlag(const UndergroundRecord *undergroundRecord)
{
    return BASE_FLAG_PLATINUM == UndergroundRecord_GetFlagRank(undergroundRecord);
}

void UndergroundRecord_SetTrainerScore(UndergroundRecord *undergroundRecord, int trainerScore)
{
    undergroundRecord->trainerScore = trainerScore;
}

int UndergroundRecord_GetPeopleMet(const UndergroundRecord *undergroundRecord)
{
    return undergroundRecord->peopleMet;
}

void UndergroundRecord_IncrementPeopleMet(UndergroundRecord *undergroundRecord, int param1)
{
    if (undergroundRecord->peopleMet < 999999) {
        undergroundRecord->peopleMet++;
    }
}

int UndergroundRecord_GetNumGiftsGiven(const UndergroundRecord *undergroundRecord)
{
    return undergroundRecord->numGiftsGiven;
}

void UndergroundRecord_IncrementGiftsGiven(UndergroundRecord *undergroundRecord)
{
    if (undergroundRecord->numGiftsGiven < 999999) {
        undergroundRecord->numGiftsGiven++;
    }
}

void sub_0202955C(UndergroundRecord *undergroundRecord)
{
    if (undergroundRecord->unk_0C_0 < 999999) {
        undergroundRecord->unk_0C_0++;
    }
}

enum BaseFlagType UndergroundRecord_GetFlagRank(const UndergroundRecord *undergroundRecord)
{
    int capturedFlagCount = undergroundRecord->capturedFlagCount;

    if (FLAG_CAPTURED_COUNT_PLATINUM <= capturedFlagCount) {
        return BASE_FLAG_PLATINUM;
    } else if (FLAG_CAPTURED_COUNT_GOLD <= capturedFlagCount) {
        return BASE_FLAG_GOLD;
    } else if (FLAG_CAPTURED_COUNT_SILVER <= capturedFlagCount) {
        return BASE_FLAG_SILVER;
    } else if (FLAG_CAPTURED_COUNT_BRONZE <= capturedFlagCount) {
        return BASE_FLAG_BRONZE;
    }

    return BASE_FLAG_NORMAL;
}

int UndergroundRecord_GetCapturedFlagCount(const UndergroundRecord *undergroundRecord)
{
    return undergroundRecord->capturedFlagCount;
}

void UndergroundRecord_IncrementCapturedFlagCount(UndergroundRecord *undergroundRecord)
{
    if (undergroundRecord->capturedFlagCount < 999999) {
        undergroundRecord->capturedFlagCount++;
    }
}

int UndergroundRecord_GetNumSpheresDug(const UndergroundRecord *undergroundRecord)
{
    return undergroundRecord->numSpheresDug;
}

void UndergroundRecord_AddNumSpheresDug(UndergroundRecord *undergroundRecord, int amount)
{
    if ((amount > 0) && (undergroundRecord->numSpheresDug > (999999 - amount))) {
        undergroundRecord->numSpheresDug = 999999;
    } else {
        undergroundRecord->numSpheresDug += amount;
    }
}

int UndergroundRecord_GetNumFossilsDug(const UndergroundRecord *undergroundRecord)
{
    return undergroundRecord->numFossilsDug;
}

void UndergroundRecord_AddNumFossilsDug(UndergroundRecord *undergroundRecord, int amount)
{
    if ((amount > 0) && (undergroundRecord->numFossilsDug > (999999 - amount))) {
        undergroundRecord->numFossilsDug = 999999;
    } else {
        undergroundRecord->numFossilsDug += amount;
    }
}

void sub_02029688(UndergroundRecord *param0, int param1)
{
    if ((param1 > 0) && (param0->unk_18_0 > (999999 - param1))) {
        param0->unk_18_0 = 999999;
    } else {
        param0->unk_18_0 += param1;
    }
}

int UndergroundRecord_GetNumTrapsHit(const UndergroundRecord *undergroundRecord)
{
    return undergroundRecord->numTrapsHit;
}

void UndergroundRecord_IncrementNumTrapsHit(UndergroundRecord *undergroundRecord)
{
    if (undergroundRecord->numTrapsHit < 999999) {
        undergroundRecord->numTrapsHit++;
    }
}

int sub_02029704(const UndergroundRecord *param0)
{
    return param0->unk_20_0;
}

void sub_0202970C(UndergroundRecord *param0)
{
    if (param0->unk_20_0 < 999999) {
        param0->unk_20_0++;
    }
}

int sub_0202973C(const UndergroundRecord *param0)
{
    return param0->unk_24_0;
}

void sub_02029744(UndergroundRecord *param0)
{
    if (param0->unk_24_0 < 999999) {
        param0->unk_24_0++;
    }
}

int sub_02029774(const UndergroundRecord *param0)
{
    return param0->unk_28_0;
}

void sub_0202977C(UndergroundRecord *param0)
{
    if (param0->unk_28_0 < 999999) {
        param0->unk_28_0++;
    }
}

int sub_020297AC(const UndergroundRecord *param0)
{
    return param0->unk_2C_0;
}

void sub_020297B4(UndergroundRecord *param0)
{
    if (param0->unk_2C_0 < 999999) {
        param0->unk_2C_0++;
    }
}

int sub_020297E4(const UndergroundRecord *param0)
{
    return param0->unk_30_0;
}

void sub_020297EC(UndergroundRecord *param0)
{
    if (param0->unk_30_0 < 999999) {
        param0->unk_30_0++;
    }
}

int sub_0202981C(const UndergroundRecord *param0)
{
    return param0->unk_34_0;
}

void sub_02029824(UndergroundRecord *param0)
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

UnkStruct_02029894 *sub_02029894(SaveData *saveData)
{
    UndergroundData *v0 = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_UNDERGROUND);
    return &v0->unk_00;
}

UndergroundRecord *SaveData_UndergroundRecord(SaveData *saveData)
{
    UndergroundData *v0 = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_UNDERGROUND);
    return &v0->unk_00.unk_50;
}

UndergroundRecord *sub_020298AC(UnkStruct_02029894 *param0)
{
    return &param0->unk_50;
}

UndergroundData *SaveData_GetUndergroundData(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_UNDERGROUND);
}
