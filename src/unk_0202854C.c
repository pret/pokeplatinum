#include "unk_0202854C.h"

#include <nitro.h>
#include <string.h>

#include "constants/items.h"

#include "struct_defs/struct_02029894.h"
#include "struct_defs/struct_02029894_sub1.h"
#include "struct_defs/struct_02029894_sub2.h"
#include "struct_defs/underground.h"
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

static void sub_02028B48(Underground *underground, int param1, int param2);

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
    return sizeof(Underground);
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
    UndergroundRecord *undergroundRecord = Heap_Alloc(heapID, sizeof(UndergroundRecord));
    MI_CpuFill8(undergroundRecord, 0, sizeof(UndergroundRecord));
    return undergroundRecord;
}

void Underground_Init(Underground *underground)
{
    u32 seed = 0;
    RTCDate date;
    RTCTime time;

    GetCurrentDateTime(&date, &time);
    seed = (((((((u32)date.year * 32ULL + date.month) * 32ULL) + date.day) * 32ULL + time.hour) * 32ULL + time.minute) * 32ULL + (time.second + gSystem.vblankCounter));

    MI_CpuFill8(underground, 0, sizeof(Underground));

    underground->randomSeed = seed;
    underground->unk_9AC_0 = 1;
}

static int sub_020285D8(Underground *underground)
{
    int i;

    for (i = 0; i < 40; i++) {
        if (underground->unk_8FC[i] == 0) {
            return i;
        }
    }

    return -1;
}

static int Underground_FindEmptySphereSlot(Underground *underground)
{
    int i;

    for (i = 0; i < 40; i++) {
        if (underground->spheres[i] == 0) {
            return i;
        }
    }

    return -1;
}

static int Underground_FindEmptyTreasureSlot(Underground *underground)
{
    int i;

    for (i = 0; i < 40; i++) {
        if (underground->treasure[i] == 0) {
            return i;
        }
    }

    return -1;
}

static int sub_02028638(Underground *underground)
{
    int i;

    for (i = 0; i < 40; i++) {
        if (underground->unk_8D4[i] == 0) {
            return i;
        }
    }

    return -1;
}

void sub_02028658(SaveData *saveData, int daysPassed)
{
    Underground *v0 = SaveData_GetUnderground(saveData);
    MATHRandContext16 v1;
    u8 v2[] = { 0, 2, 2, 4, 4, 5 };
    u8 v3[] = { 0, 1, 1, 3, 3, 5 };
    int i, v5, v6, v7, j;

    if (daysPassed <= 0) {
        return;
    }

    v5 = daysPassed;

    if (daysPassed > 99) {
        v5 = 99;
    }

    MATH_InitRand16(&v1, v0->randomSeed);

    for (i = 0; i < v5; i++) {
        for (j = 0; j < 100; j++) {
            if (v0->unk_558[j] != 0) {
                v7 = v0->unk_558[j];
                v6 = MATH_Rand16(&v1, v2[v7]) + v3[v7];

                if ((v0->unk_5BC[j] + v6) < 99) {
                    v0->unk_5BC[j] += v6;
                } else {
                    v0->unk_5BC[j] = 99;
                }
            }
        }
    }

    v0->randomSeed = ARNG_Next(v0->randomSeed + daysPassed);
    v0->unk_9AC_0 = 1;
}

void sub_02028758(SaveData *saveData, s32 param1, BOOL param2)
{
    Underground *v0 = SaveData_GetUnderground(saveData);

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
    Underground *v0 = SaveData_GetUnderground(saveData);

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
    Underground *v0 = SaveData_GetUnderground(saveData);

    if (v0->unk_98 == 0) {
        v0->unk_98 = 1;
    }
}

void sub_020287F8(SaveData *saveData)
{
    Underground *v0 = SaveData_GetUnderground(saveData);

    if (v0->unk_98 == 1) {
        v0->unk_98 = 0;
    }
}

BOOL sub_02028810(SaveData *saveData)
{
    Underground *v0 = SaveData_GetUnderground(saveData);

    if (v0->unk_98 == 2) {
        return 0;
    }

    return 1;
}

void Underground_SetUnusedField(Underground *underground)
{
    underground->unused = 1;
}

void sub_02028830(Underground *underground, const TrainerInfo *info)
{
    int v0 = underground->unk_10A;
    int v1;

    for (v1 = 0; v1 < 5; v1++) {
        if (underground->unk_9C[v1] == TrainerInfo_ID(info)) {
            return;
        }
    }

    GF_ASSERT(v0 < 5);
    MI_CpuCopy8(TrainerInfo_Name(info), underground->unk_B0[v0], (sizeof(u16) * (7 + 1)));

    underground->unk_9C[v0] = TrainerInfo_ID(info);
    underground->unk_100[v0] = TrainerInfo_RegionCode(info);
    underground->unk_105[v0] = TrainerInfo_GameCode(info);
    underground->unk_10A++;

    if (underground->unk_10A >= 5) {
        underground->unk_10A = 0;
    }
}

TrainerInfo *sub_020288C8(const Underground *underground, int heapID, int param2)
{
    int v0 = (sizeof(u16) * (7 + 1));
    int v1;
    TrainerInfo *v2;
    int v3 = underground->unk_10A - param2 - 1;

    if (v3 < 0) {
        v3 += 5;
    }

    if (underground->unk_B0[v3][0] != 0) {
        v2 = TrainerInfo_New(heapID);

        TrainerInfo_SetName(v2, underground->unk_B0[v3]);
        TrainerInfo_SetGameCode(v2, underground->unk_105[v3]);
        TrainerInfo_SetRegionCode(v2, underground->unk_100[v3]);
        TrainerInfo_SetID(v2, underground->unk_9C[v3]);

        return v2;
    }

    return NULL;
}

u32 Underground_GetRandomSeed(Underground *underground)
{
    return underground->randomSeed;
}

int Underground_ConvertTreasureToBagItem(int treasureID)
{
    GF_ASSERT(MINING_TREASURE_OVAL_STONE <= treasureID);
    GF_ASSERT(treasureID < MINING_ROCK_1);

    treasureID -= MINING_TREASURE_OVAL_STONE;
    return sMiningItems[treasureID];
}

BOOL sub_0202895C(Underground *underground, int param1)
{
    int i;
    BOOL v1 = FALSE;

    for (i = 0; i < 200; i++) {
        if (underground->unk_80C[i] == 0) {
            underground->unk_80C[i] = param1;
            v1 = TRUE;
            break;
        }
    }

    return v1;
}

BOOL sub_02028984(Underground *underground, int param1)
{
    int i;

    for (i = 0; i < 200; i++) {
        if (underground->unk_80C[i] == 0) {
            return TRUE;
        }
    }

    return FALSE;
}

int sub_020289A0(Underground *underground)
{
    int i;

    for (i = 0; i < 200; i++) {
        if (underground->unk_80C[i] == 0) {
            break;
        }
    }

    return i;
}

int sub_020289B8(Underground *underground, int param1)
{
    return underground->unk_80C[param1];
}

int sub_020289C4(Underground *underground, int param1)
{
    int v0, v1, v2;

    GF_ASSERT(!sub_02028AFC(underground, param1));

    v1 = param1;
    v2 = underground->unk_80C[v1];

    for (v0 = v1; v0 < 200 - 1; v0++) {
        underground->unk_80C[v0] = underground->unk_80C[v0 + 1];
    }

    underground->unk_80C[200 - 1] = 0;
    sub_02028B48(underground, param1, -1);

    return v2;
}

void sub_02028A10(Underground *underground, int param1, int param2)
{
    int i, v1 = 0, v2 = 0, v3 = -1;
    u8 v4[200];

    MI_CpuCopy8(underground->unk_80C, v4, 200);

    for (i = 0; i < 200; i++) {
        if (i != param1) {
            underground->unk_80C[v1] = v4[i];
            v1++;
        }

        if (i == param2) {
            underground->unk_80C[v1] = v4[param1];
            v1++;
        }
    }

    for (i = 0; i < 15; i++) {
        if (underground->unk_99C[i] == (param1 + 1)) {
            v3 = i;
            break;
        }
    }

    sub_02028B48(underground, param2, 1);
    sub_02028B48(underground, param1, -1);

    if (v3 != -1) {
        if (param1 < param2) {
            underground->unk_99C[v3] = param2 + 1;
        } else {
            underground->unk_99C[v3] = param2 + 2;
        }
    }
}

int sub_02028ACC(Underground *underground, int param1, int param2)
{
    int v0, v1;

    GF_ASSERT(param2 >= 1);
    GF_ASSERT(param2 <= 15);

    underground->unk_99C[param2 - 1] = param1 + 1;
    return underground->unk_80C[param1];
}

BOOL sub_02028AFC(Underground *underground, int param1)
{
    int i;

    for (i = 0; i < 15; i++) {
        if (underground->unk_99C[i] == (param1 + 1)) {
            return 1;
        }
    }

    return 0;
}

void sub_02028B20(Underground *underground, int param1)
{
    if ((param1 - 1) >= 15) {
        return;
    }

    underground->unk_99C[param1 - 1] = 0;
}

void sub_02028B34(Underground *underground)
{
    MI_CpuFill8(underground->unk_99C, 0, 15);
}

static void sub_02028B48(Underground *underground, int param1, int param2)
{
    int i;

    for (i = 0; i < 15; i++) {
        if (underground->unk_99C[i] > (param1 + 1)) {
            underground->unk_99C[i] += param2;
        }
    }
}

int sub_02028B70(Underground *underground)
{
    int i;

    for (i = 0; i < 40; i++) {
        if (underground->unk_8FC[i] == 0) {
            break;
        }
    }

    return i;
}

int sub_02028B88(Underground *underground, int param1)
{
    return underground->unk_8FC[param1];
}

int sub_02028B94(Underground *underground, int param1)
{
    int i, v1, v2;

    v1 = param1;
    v2 = underground->unk_8FC[v1];

    for (i = v1; i < 40 - 1; i++) {
        underground->unk_8FC[i] = underground->unk_8FC[i + 1];
    }

    underground->unk_8FC[40 - 1] = 0;
    return v2;
}

BOOL sub_02028BC8(Underground *underground, int param1)
{
    int v0;
    BOOL v1 = 0;

    v0 = sub_020285D8(underground);

    if (v0 != -1) {
        underground->unk_8FC[v0] = param1;
        v1 = 1;
    }

    return v1;
}

void sub_02028BE8(Underground *underground, int param1, int param2)
{
    int i, v1 = 0, v2 = 0;
    u8 v3[40];

    MI_CpuCopy8(underground->unk_8FC, v3, 40);

    for (i = 0; i < 40; i++) {
        if (i != param1) {
            underground->unk_8FC[v1] = v3[i];
            v1++;
        }

        if (i == param2) {
            underground->unk_8FC[v1] = v3[param1];
            v1++;
        }
    }
}

int Underground_GetSphereCount(Underground *underground)
{
    int i;

    for (i = 0; i < 40; i++) {
        if (underground->spheres[i] == 0) {
            break;
        }
    }

    return i;
}

int sub_02028C54(Underground *underground, int param1)
{
    return underground->spheres[param1];
}

int sub_02028C60(Underground *underground, int param1)
{
    return underground->sphereSizes[param1];
}

int sub_02028C6C(Underground *underground, int param1)
{
    int v0, v1, v2;

    v1 = param1;
    v2 = underground->spheres[v1];

    for (v0 = v1; v0 < 40 - 1; v0++) {
        underground->spheres[v0] = underground->spheres[v0 + 1];
        underground->sphereSizes[v0] = underground->sphereSizes[v0 + 1];
    }

    underground->spheres[40 - 1] = 0;

    return v2;
}

BOOL Underground_TryAddSphere(Underground *underground, int sphereType, int sphereSize)
{
    int slot;
    BOOL added = FALSE;

    slot = Underground_FindEmptySphereSlot(underground);

    if (slot != -1) {
        underground->spheres[slot] = sphereType;
        underground->sphereSizes[slot] = sphereSize;
        added = TRUE;
    }

    return added;
}

void sub_02028CD8(Underground *underground, int param1, int param2)
{
    int i, v1 = 0, v2 = 0;
    u8 v3[40];
    u8 v4[40];

    MI_CpuCopy8(underground->spheres, v3, 40);
    MI_CpuCopy8(underground->sphereSizes, v4, 40);

    for (i = 0; i < 40; i++) {
        if (i != param1) {
            underground->spheres[v1] = v3[i];
            underground->sphereSizes[v1] = v4[i];
            v1++;
        }

        if (i == param2) {
            underground->spheres[v1] = v3[param1];
            underground->sphereSizes[v1] = v4[param1];
            v1++;
        }
    }
}

int Underground_GetTreasureCount(Underground *underground)
{
    int i;

    for (i = 0; i < 40; i++) {
        if (underground->treasure[i] == 0) {
            break;
        }
    }

    return i;
}

int sub_02028D74(Underground *underground, int param1)
{
    return underground->treasure[param1];
}

int sub_02028D80(Underground *underground, int param1)
{
    int i, v1, v2;

    v1 = param1;
    v2 = underground->treasure[v1];

    for (i = v1; i < 40 - 1; i++) {
        underground->treasure[i] = underground->treasure[i + 1];
    }

    underground->treasure[40 - 1] = 0;

    return v2;
}

BOOL Underground_TryAddTreasure(Underground *underground, int treasureID)
{
    int slot;
    BOOL added = FALSE;

    slot = Underground_FindEmptyTreasureSlot(underground);

    if (slot != -1) {
        underground->treasure[slot] = treasureID;
        added = TRUE;
    }

    return added;
}

void sub_02028DD8(Underground *underground, int param1, int param2)
{
    int i, v1 = 0, v2 = 0;
    u8 v3[40];

    MI_CpuCopy8(underground->treasure, v3, 40);

    for (i = 0; i < 40; i++) {
        if (i != param1) {
            underground->treasure[v1] = v3[i];
            v1++;
        }

        if (i == param2) {
            underground->treasure[v1] = v3[param1];
            v1++;
        }
    }
}

int sub_02028E28(Underground *underground)
{
    int i;

    for (i = 0; i < 40; i++) {
        if (underground->unk_8D4[i] == 0) {
            break;
        }
    }

    return i;
}

int sub_02028E44(Underground *underground, int param1)
{
    int v0;

    return underground->unk_8D4[param1];
}

int sub_02028E50(Underground *underground, int param1)
{
    int i, v1, v2;

    v1 = param1;
    v2 = underground->unk_8D4[v1];

    for (i = v1; i < 40 - 1; i++) {
        underground->unk_8D4[i] = underground->unk_8D4[i + 1];
    }

    underground->unk_8D4[40 - 1] = 0;

    return v2;
}

BOOL sub_02028E84(Underground *underground, int param1)
{
    int v0;
    BOOL v1 = 0;

    v0 = sub_02028638(underground);

    if (v0 != -1) {
        underground->unk_8D4[v0] = param1;
        v1 = 1;
    }

    return v1;
}

void sub_02028EA8(Underground *underground, int param1, int param2)
{
    int i, v1 = 0, v2 = 0;
    u8 v3[40];

    MI_CpuCopy8(underground->unk_8D4, v3, 40);

    for (i = 0; i < 40; i++) {
        if (i != param1) {
            underground->unk_8D4[v1] = v3[i];
            v1++;
        }

        if (i == param2) {
            underground->unk_8D4[v1] = v3[param1];
            v1++;
        }
    }
}

void sub_02028EF8(Underground *underground, int param1, int param2, int param3, int param4)
{
    GF_ASSERT(param2 < (16 * 4));

    underground->unk_10B[param2] = param1;
    underground->unk_14B[param2][0] = param3;
    underground->unk_14B[param2][1] = ((param3 & 0xf00) >> 8) + ((param4 & 0xf00) >> 4);
    underground->unk_14B[param2][2] = param4;
}

int sub_02028F40(Underground *underground, int param1)
{
    GF_ASSERT(param1 < (16 * 4));
    return underground->unk_10B[param1];
}

int sub_02028F5C(Underground *underground, int param1)
{
    int v0;

    GF_ASSERT(param1 < (16 * 4));

    v0 = underground->unk_14B[param1][0];
    v0 += (underground->unk_14B[param1][1] << 8) & 0xf00;

    return v0;
}

int sub_02028F88(Underground *underground, int param1)
{
    int v0;

    GF_ASSERT(param1 < (16 * 4));

    v0 = underground->unk_14B[param1][2];
    v0 += (underground->unk_14B[param1][1] << 4) & 0xf00;

    return v0;
}

void sub_02028FB4(Underground *underground, int param1)
{
    GF_ASSERT(param1 < (16 * 4));

    underground->unk_10B[param1] = 0;
    MI_CpuClear8(underground->unk_14B[param1], 3);
}

void sub_02028FE0(Underground *underground, int param1, int param2, int param3, int param4, int param5)
{
    GF_ASSERT(param2 < 16);

    underground->unk_508[param2] = param1;
    underground->unk_518[param2][0] = param3;
    underground->unk_518[param2][1] = ((param3 & 0xf00) >> 8) + ((param4 & 0xf00) >> 4);
    underground->unk_518[param2][2] = param4;
    underground->unk_548[param2] = param5;
}

int sub_02029030(Underground *underground, int param1)
{
    return underground->unk_508[param1];
}

int sub_0202903C(Underground *underground, int param1)
{
    int v0 = underground->unk_518[param1][0];

    v0 += (underground->unk_518[param1][1] << 8) & 0xf00;
    return v0;
}

int sub_0202905C(Underground *underground, int param1)
{
    int v0 = underground->unk_518[param1][2];

    v0 += (underground->unk_518[param1][1] << 4) & 0xf00;
    return v0;
}

int sub_0202907C(Underground *underground, int param1)
{
    return underground->unk_548[param1];
}

void sub_02029088(Underground *underground, int param1, int param2, int param3, int param4, int param5, int param6)
{
    GF_ASSERT(param2 < 100);

    underground->unk_558[param2] = param1;
    underground->unk_684[param2][0] = param3;
    underground->unk_684[param2][1] = ((param3 & 0xf00) >> 8) + ((param4 & 0xf00) >> 4);
    underground->unk_684[param2][2] = param4;
    underground->unk_620[param2] = param5;
    underground->unk_5BC[param2] = param6;
}

int sub_020290DC(Underground *underground, int param1)
{
    return underground->unk_558[param1];
}

int sub_020290E8(Underground *underground, int param1)
{
    int v0 = underground->unk_684[param1][0];

    v0 += (underground->unk_684[param1][1] << 8) & 0xf00;
    return v0;
}

int sub_02029108(Underground *underground, int param1)
{
    int v0 = underground->unk_684[param1][2];

    v0 += (underground->unk_684[param1][1] << 4) & 0xf00;
    return v0;
}

int sub_02029128(Underground *underground, int param1)
{
    return underground->unk_620[param1];
}

int sub_02029134(Underground *underground, int param1)
{
    return underground->unk_5BC[param1];
}

int sub_02029140(Underground *underground, int param1, int param2)
{
    int i;

    for (i = 0; i < 255; i++) {
        if ((underground->unk_20B[i][0] == 0) && (underground->unk_20B[i][1] == 0) && (underground->unk_20B[i][2] == 0)) {
            underground->unk_20B[i][0] = param1;
            underground->unk_20B[i][1] = ((param1 & 0xf00) >> 8) + ((param2 & 0xf00) >> 4);
            underground->unk_20B[i][2] = param2;
            break;
        }
    }

    if (i == 255) {
        i = 0;
    }

    return i;
}

void sub_020291A4(Underground *underground, int param1)
{
    GF_ASSERT(param1 < 255);
    MI_CpuFill8(underground->unk_20B[param1], 0, 3);
}

int sub_020291CC(Underground *underground, int param1)
{
    int v0 = underground->unk_20B[param1][0];

    v0 += (underground->unk_20B[param1][1] << 8) & 0xf00;
    return v0;
}

int sub_020291EC(Underground *underground, int param1)
{
    int v0 = underground->unk_20B[param1][2];

    v0 += (underground->unk_20B[param1][1] << 4) & 0xf00;
    return v0;
}

BOOL Underground_HasNeverMined(Underground *underground)
{
    return underground->hasMined == FALSE;
}

void Underground_SetHasMined(Underground *underground)
{
    underground->hasMined = TRUE;
}

BOOL sub_02029234(Underground *underground)
{
    return underground->unk_9AC_0;
}

void sub_02029240(Underground *underground)
{
    underground->unk_9AC_0 = 0;
}

void Underground_SetPlateMined(Underground *underground, int miningItemID)
{
    if ((MINING_TREASURE_FLAME_PLATE > miningItemID) || (miningItemID > MINING_TREASURE_IRON_PLATE)) {
        return;
    }

    underground->minedPlates |= (0x1 << (miningItemID - MINING_TREASURE_FLAME_PLATE));
}

BOOL Underground_HasPlateNeverBeenMined(Underground *underground, int miningItemID)
{
    if ((MINING_TREASURE_FLAME_PLATE > miningItemID) || (miningItemID > MINING_TREASURE_IRON_PLATE)) {
        return TRUE;
    }

    if (underground->minedPlates & (0x1 << (miningItemID - MINING_TREASURE_FLAME_PLATE))) {
        return FALSE;
    }

    return TRUE;
}

void Underground_IncrementStepCount(Underground *underground)
{
    if (underground->stepCount >= (100 - 1)) {
        underground->stepCount = 0;
    } else {
        underground->stepCount++;
    }
}

int Underground_GetStepCount(Underground *underground)
{
    return underground->stepCount;
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
    Underground *v0 = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_UNDERGROUND);
    return &v0->unk_00;
}

UndergroundRecord *SaveData_UndergroundRecord(SaveData *saveData)
{
    Underground *v0 = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_UNDERGROUND);
    return &v0->unk_00.unk_50;
}

UndergroundRecord *sub_020298AC(UnkStruct_02029894 *param0)
{
    return &param0->unk_50;
}

Underground *SaveData_GetUnderground(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_UNDERGROUND);
}
