#include "unk_0202854C.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"
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

static void Underground_UpdatePlacedGoodSlots(Underground *underground, int param1, int param2);

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
    UndergroundRecord *undergroundRecord = Heap_AllocFromHeap(heapID, sizeof(UndergroundRecord));
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

static int Underground_FindEmptyGoodsSlotBag(Underground *underground)
{
    for (int i = 0; i < MAX_GOODS_BAG_SLOTS; i++) {
        if (underground->goodsBag[i] == 0) {
            return i;
        }
    }

    return -1;
}

static int Underground_FindEmptySphereSlot(Underground *underground)
{
    for (int i = 0; i < MAX_SPHERE_SLOTS; i++) {
        if (underground->sphereTypes[i] == SPHERE_NONE) {
            return i;
        }
    }

    return -1;
}

static int Underground_FindEmptyTreasureSlot(Underground *underground)
{
    for (int i = 0; i < MAX_TREASURE_SLOTS; i++) {
        if (underground->treasure[i] == 0) {
            return i;
        }
    }

    return -1;
}

static int Underground_FindEmptyTrapSlot(Underground *underground)
{
    for (int i = 0; i < MAX_TRAP_SLOTS; i++) {
        if (underground->traps[i] == 0) {
            return i;
        }
    }

    return -1;
}

void Underground_UpdateBuriedSphereSizes(SaveData *saveData, int daysPassed)
{
    Underground *underground = SaveData_GetUnderground(saveData);

    u8 growthRateRange[] = {
        [SPHERE_NONE] = 0,
        [PRISM_SPHERE] = 2,
        [PALE_SPHERE] = 2,
        [RED_SPHERE] = 4,
        [BLUE_SPHERE] = 4,
        [GREEN_SPHERE] = 5
    };
    u8 baseGrowthRate[] = {
        [SPHERE_NONE] = 0,
        [PRISM_SPHERE] = 1,
        [PALE_SPHERE] = 1,
        [RED_SPHERE] = 3,
        [BLUE_SPHERE] = 3,
        [GREEN_SPHERE] = 5
    };

    int i;

    if (daysPassed <= 0) {
        return;
    }

    int daysOfGrowth = daysPassed;

    if (daysPassed > 99) {
        daysOfGrowth = 99;
    }

    MATHRandContext16 rand;
    MATH_InitRand16(&rand, underground->randomSeed);

    for (i = 0; i < daysOfGrowth; i++) {
        for (int j = 0; j < MAX_BURIED_SPHERES; j++) {
            if (underground->buriedSphereTypes[j] != SPHERE_NONE) {
                int type = underground->buriedSphereTypes[j];
                int growth = MATH_Rand16(&rand, growthRateRange[type]) + baseGrowthRate[type];

                if (underground->buriedSphereGrowth[j] + growth < MAX_SPHERE_SIZE) {
                    underground->buriedSphereGrowth[j] += growth;
                } else {
                    underground->buriedSphereGrowth[j] = MAX_SPHERE_SIZE;
                }
            }
        }
    }

    underground->randomSeed = ARNG_Next(underground->randomSeed + daysPassed);
    underground->unk_9AC_0 = 1;
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
    TrainerInfo *v2;
    int v3 = underground->unk_10A - param2 - 1;

    if (v3 < 0) {
        v3 += 5;
    }

    if (underground->unk_B0[v3][0] != CHAR_NONE) {
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
    GF_ASSERT(treasureID < MINING_TREASURE_MAX);

    treasureID -= MINING_TREASURE_OVAL_STONE;
    return sMiningItems[treasureID];
}

BOOL Underground_TryAddGoodPC(Underground *underground, int goodID)
{
    int i;
    BOOL added = FALSE;

    for (i = 0; i < MAX_GOODS_PC_SLOTS; i++) {
        if (underground->goodsPC[i] == 0) {
            underground->goodsPC[i] = goodID;
            added = TRUE;
            break;
        }
    }

    return added;
}

BOOL Underground_IsRoomForGoodsInPC(Underground *underground, int unused)
{
    for (int i = 0; i < MAX_GOODS_PC_SLOTS; i++) {
        if (underground->goodsPC[i] == 0) {
            return TRUE;
        }
    }

    return FALSE;
}

int Underground_GetGoodsCountPC(Underground *underground)
{
    int i;

    for (i = 0; i < MAX_GOODS_PC_SLOTS; i++) {
        if (underground->goodsPC[i] == 0) {
            break;
        }
    }

    return i;
}

int Underground_GetGoodAtSlotPC(Underground *underground, int slot)
{
    return underground->goodsPC[slot];
}

int Underground_RemoveGoodAtSlotPC(Underground *underground, int slot)
{
    GF_ASSERT(!Underground_IsGoodAtSlotPlacedInBase(underground, slot));

    int goodID = underground->goodsPC[slot];

    for (int i = slot; i < MAX_GOODS_PC_SLOTS - 1; i++) {
        underground->goodsPC[i] = underground->goodsPC[i + 1];
    }

    underground->goodsPC[MAX_GOODS_PC_SLOTS - 1] = 0;
    Underground_UpdatePlacedGoodSlots(underground, slot, -1);

    return goodID;
}

void Underground_MoveGoodPC(Underground *underground, int origSlot, int slotToMoveAfter)
{
    int i, index = 0, placedGoodSlot = -1;
    u8 tempArr[MAX_GOODS_PC_SLOTS];

    MI_CpuCopy8(underground->goodsPC, tempArr, MAX_GOODS_PC_SLOTS);

    for (i = 0; i < MAX_GOODS_PC_SLOTS; i++) {
        if (i != origSlot) {
            underground->goodsPC[index] = tempArr[i];
            index++;
        }

        if (i == slotToMoveAfter) {
            underground->goodsPC[index] = tempArr[origSlot];
            index++;
        }
    }

    for (i = 0; i < MAX_PLACED_GOODS; i++) {
        if (underground->placedGoodSlots[i] == origSlot + 1) {
            placedGoodSlot = i;
            break;
        }
    }

    Underground_UpdatePlacedGoodSlots(underground, slotToMoveAfter, 1);
    Underground_UpdatePlacedGoodSlots(underground, origSlot, -1);

    if (placedGoodSlot != -1) {
        if (origSlot < slotToMoveAfter) {
            underground->placedGoodSlots[placedGoodSlot] = slotToMoveAfter + 1;
        } else {
            underground->placedGoodSlots[placedGoodSlot] = slotToMoveAfter + 2;
        }
    }
}

int sub_02028ACC(Underground *underground, int param1, int param2)
{
    GF_ASSERT(param2 >= 1);
    GF_ASSERT(param2 <= MAX_PLACED_GOODS);

    underground->placedGoodSlots[param2 - 1] = param1 + 1;
    return underground->goodsPC[param1];
}

BOOL Underground_IsGoodAtSlotPlacedInBase(Underground *underground, int slot)
{
    for (int i = 0; i < MAX_PLACED_GOODS; i++) {
        if (underground->placedGoodSlots[i] == slot + 1) {
            return TRUE;
        }
    }

    return FALSE;
}

void sub_02028B20(Underground *underground, int param1)
{
    if (param1 - 1 >= MAX_PLACED_GOODS) {
        return;
    }

    underground->placedGoodSlots[param1 - 1] = 0;
}

void sub_02028B34(Underground *underground)
{
    MI_CpuFill8(underground->placedGoodSlots, 0, MAX_PLACED_GOODS);
}

static void Underground_UpdatePlacedGoodSlots(Underground *underground, int startSlot, int modifier)
{
    for (int i = 0; i < MAX_PLACED_GOODS; i++) {
        if (underground->placedGoodSlots[i] > startSlot + 1) {
            underground->placedGoodSlots[i] += modifier;
        }
    }
}

int Underground_GetGoodsCountBag(Underground *underground)
{
    int i;

    for (i = 0; i < MAX_GOODS_BAG_SLOTS; i++) {
        if (underground->goodsBag[i] == 0) {
            break;
        }
    }

    return i;
}

int Underground_GetGoodAtSlotBag(Underground *underground, int slot)
{
    return underground->goodsBag[slot];
}

int Underground_RemoveGoodAtSlotBag(Underground *underground, int slot)
{
    int goods = underground->goodsBag[slot];

    for (int i = slot; i < MAX_GOODS_BAG_SLOTS - 1; i++) {
        underground->goodsBag[i] = underground->goodsBag[i + 1];
    }

    underground->goodsBag[MAX_GOODS_BAG_SLOTS - 1] = 0;
    return goods;
}

BOOL Underground_TryAddGoodBag(Underground *underground, int goodID)
{
    BOOL added = FALSE;

    int slot = Underground_FindEmptyGoodsSlotBag(underground);

    if (slot != -1) {
        underground->goodsBag[slot] = goodID;
        added = TRUE;
    }

    return added;
}

void Underground_MoveGoodBag(Underground *underground, int origSlot, int slotToMoveAfter)
{
    int i, index = 0;
    u8 tempArr[MAX_GOODS_BAG_SLOTS];

    MI_CpuCopy8(underground->goodsBag, tempArr, MAX_GOODS_BAG_SLOTS);

    for (i = 0; i < MAX_GOODS_BAG_SLOTS; i++) {
        if (i != origSlot) {
            underground->goodsBag[index] = tempArr[i];
            index++;
        }

        if (i == slotToMoveAfter) {
            underground->goodsBag[index] = tempArr[origSlot];
            index++;
        }
    }
}

int Underground_GetSphereCount(Underground *underground)
{
    int i;

    for (i = 0; i < MAX_SPHERE_SLOTS; i++) {
        if (underground->sphereTypes[i] == SPHERE_NONE) {
            break;
        }
    }

    return i;
}

int Underground_GetSphereTypeAtSlot(Underground *underground, int slot)
{
    return underground->sphereTypes[slot];
}

int Underground_GetSphereSizeAtSlot(Underground *underground, int slot)
{
    return underground->sphereSizes[slot];
}

int Underground_RemoveSphereAtSlot(Underground *underground, int slot)
{
    int sphere = underground->sphereTypes[slot];

    for (int i = slot; i < MAX_SPHERE_SLOTS - 1; i++) {
        underground->sphereTypes[i] = underground->sphereTypes[i + 1];
        underground->sphereSizes[i] = underground->sphereSizes[i + 1];
    }

    underground->sphereTypes[MAX_SPHERE_SLOTS - 1] = SPHERE_NONE;

    return sphere;
}

BOOL Underground_TryAddSphere(Underground *underground, int sphereType, int sphereSize)
{
    BOOL added = FALSE;

    int slot = Underground_FindEmptySphereSlot(underground);

    if (slot != -1) {
        underground->sphereTypes[slot] = sphereType;
        underground->sphereSizes[slot] = sphereSize;
        added = TRUE;
    }

    return added;
}

void Underground_MoveSphereInInventory(Underground *underground, int origSlot, int slotToMoveAfter)
{
    int i, index = 0;
    u8 tempTypeArr[MAX_SPHERE_SLOTS];
    u8 tempSizeArr[MAX_SPHERE_SLOTS];

    MI_CpuCopy8(underground->sphereTypes, tempTypeArr, MAX_SPHERE_SLOTS);
    MI_CpuCopy8(underground->sphereSizes, tempSizeArr, MAX_SPHERE_SLOTS);

    for (i = 0; i < MAX_SPHERE_SLOTS; i++) {
        if (i != origSlot) {
            underground->sphereTypes[index] = tempTypeArr[i];
            underground->sphereSizes[index] = tempSizeArr[i];
            index++;
        }

        if (i == slotToMoveAfter) {
            underground->sphereTypes[index] = tempTypeArr[origSlot];
            underground->sphereSizes[index] = tempSizeArr[origSlot];
            index++;
        }
    }
}

int Underground_GetTreasureCount(Underground *underground)
{
    int i;

    for (i = 0; i < MAX_TREASURE_SLOTS; i++) {
        if (underground->treasure[i] == 0) {
            break;
        }
    }

    return i;
}

int Underground_GetTreasureAtSlot(Underground *underground, int slot)
{
    return underground->treasure[slot];
}

int Underground_RemoveTreasureAtSlot(Underground *underground, int slot)
{
    int treasure = underground->treasure[slot];

    for (int i = slot; i < MAX_TREASURE_SLOTS - 1; i++) {
        underground->treasure[i] = underground->treasure[i + 1];
    }

    underground->treasure[MAX_TREASURE_SLOTS - 1] = 0;

    return treasure;
}

BOOL Underground_TryAddTreasure(Underground *underground, int treasureID)
{
    BOOL added = FALSE;

    int slot = Underground_FindEmptyTreasureSlot(underground);

    if (slot != -1) {
        underground->treasure[slot] = treasureID;
        added = TRUE;
    }

    return added;
}

void Underground_MoveTreasureInInventory(Underground *underground, int origSlot, int slotToMoveAfter)
{
    int i, index = 0;
    u8 tempArr[MAX_TREASURE_SLOTS];

    MI_CpuCopy8(underground->treasure, tempArr, MAX_TREASURE_SLOTS);

    for (i = 0; i < MAX_TREASURE_SLOTS; i++) {
        if (i != origSlot) {
            underground->treasure[index] = tempArr[i];
            index++;
        }

        if (i == slotToMoveAfter) {
            underground->treasure[index] = tempArr[origSlot];
            index++;
        }
    }
}

int Underground_GetTrapCount(Underground *underground)
{
    int i;

    for (i = 0; i < MAX_TRAP_SLOTS; i++) {
        if (underground->traps[i] == 0) {
            break;
        }
    }

    return i;
}

int Underground_GetTrapAtSlot(Underground *underground, int slot)
{
    return underground->traps[slot];
}

int Underground_RemoveTrapAtSlot(Underground *underground, int slot)
{
    int trap = underground->traps[slot];

    for (int i = slot; i < MAX_TRAP_SLOTS - 1; i++) {
        underground->traps[i] = underground->traps[i + 1];
    }

    underground->traps[MAX_TRAP_SLOTS - 1] = 0;

    return trap;
}

BOOL Underground_TryAddTrap(Underground *underground, int trapID)
{
    BOOL added = FALSE;

    int slot = Underground_FindEmptyTrapSlot(underground);

    if (slot != -1) {
        underground->traps[slot] = trapID;
        added = TRUE;
    }

    return added;
}

void Underground_MoveTrapInInventory(Underground *underground, int origSlot, int slotToMoveAfter)
{
    int i, index = 0;
    u8 tempArr[MAX_TRAP_SLOTS];

    MI_CpuCopy8(underground->traps, tempArr, MAX_TRAP_SLOTS);

    for (i = 0; i < MAX_TRAP_SLOTS; i++) {
        if (i != origSlot) {
            underground->traps[index] = tempArr[i];
            index++;
        }

        if (i == slotToMoveAfter) {
            underground->traps[index] = tempArr[origSlot];
            index++;
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

void Underground_SaveBuriedSphere(Underground *underground, int type, int idx, int x, int z, int initialSize, int growth)
{
    GF_ASSERT(idx < MAX_BURIED_SPHERES);

    underground->buriedSphereTypes[idx] = type;
    underground->buriedSphereCoordinates[idx][0] = x;
    underground->buriedSphereCoordinates[idx][1] = ((x & 0xF00) >> 8) + ((z & 0xF00) >> 4);
    underground->buriedSphereCoordinates[idx][2] = z;
    underground->buriedSphereInitialSizes[idx] = initialSize;
    underground->buriedSphereGrowth[idx] = growth;
}

int Underground_GetBuriedSphereTypeAtIndex(Underground *underground, int idx)
{
    return underground->buriedSphereTypes[idx];
}

int Underground_GetBuriedSphereXCoordAtIndex(Underground *underground, int idx)
{
    int x = underground->buriedSphereCoordinates[idx][0];

    x += (underground->buriedSphereCoordinates[idx][1] << 8) & 0xF00;
    return x;
}

int Underground_GetBuriedSphereZCoordAtIndex(Underground *underground, int idx)
{
    int z = underground->buriedSphereCoordinates[idx][2];

    z += (underground->buriedSphereCoordinates[idx][1] << 4) & 0xF00;
    return z;
}

int Underground_GetBuriedSphereInitialSizeAtIndex(Underground *underground, int idx)
{
    return underground->buriedSphereInitialSizes[idx];
}

int Underground_GetBuriedSphereGrowthAtIndex(Underground *underground, int idx)
{
    return underground->buriedSphereGrowth[idx];
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
    if (miningItemID < MINING_TREASURE_FLAME_PLATE || miningItemID > MINING_TREASURE_IRON_PLATE) {
        return;
    }

    underground->minedPlates |= (0x1 << (miningItemID - MINING_TREASURE_FLAME_PLATE));
}

BOOL Underground_HasPlateNeverBeenMined(Underground *underground, int miningItemID)
{
    if (miningItemID < MINING_TREASURE_FLAME_PLATE || miningItemID > MINING_TREASURE_IRON_PLATE) {
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
