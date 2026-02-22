#include "unk_02030880.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle_frontier.h"
#include "constants/species.h"

#include "struct_defs/battle_frontier.h"

#include "savedata/save_table.h"

#include "heap.h"
#include "savedata.h"
#include "unk_0203061C.h"

typedef struct {
    u16 unk_00[MAX_SPECIES];
    u16 unk_3DE[MAX_SPECIES];
    u16 unk_7BC[MAX_SPECIES];
    u16 unk_B9A;
} UnkStruct_020308A0_sub1;

typedef struct BattleFrontierStage {
    u32 unk_00;
    UnkStruct_020308A0_sub1 unk_04;
} BattleFrontierStage;

static u16 sub_02030908(BattleFrontierStage *param0, int param1, int param2, u16 param3);

int Frontier_Extra_SaveSize(void)
{
    GF_ASSERT(sizeof(BattleFrontierStage) % 4 == 0);
    return sizeof(BattleFrontierStage);
}

void Frontier_Extra_Init(BattleFrontierStage *param0)
{
    MI_CpuClear8(param0, sizeof(BattleFrontierStage));
    param0->unk_00 = 0xffffffff;
}

BattleFrontierStage *sub_020308A0(SaveData *saveData, enum HeapID heapID, int *param2)
{
    BattleFrontierStage *v0 = SaveData_BattleFrontierStage(saveData, heapID, param2);
    return v0;
}

int sub_020308A8(SaveData *saveData, BattleFrontierStage *param1)
{
    int v0 = SaveData_SaveBattleFrontierStage(saveData, param1);
    v0 |= SaveData_Save(saveData);

    return v0;
}

u16 sub_020308BC(SaveData *saveData, BattleFrontierStage *frontierStage, int challengeType, int species)
{
    if (!SaveData_MiscSaveBlock_InitFlag(saveData)) {
        return 0;
    }

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        return frontierStage->unk_04.unk_00[species];
    case FRONTIER_CHALLENGE_DOUBLE:
        return frontierStage->unk_04.unk_3DE[species];
    case FRONTIER_CHALLENGE_MULTI:
        return frontierStage->unk_04.unk_7BC[species];
    }

    GF_ASSERT(0);
    return 0;
}

static u16 sub_02030908(BattleFrontierStage *param0, int param1, int param2, u16 param3)
{
    if (param3 > 9999) {
        param3 = 9999;
    }

    switch (param1) {
    case 0:
        param0->unk_04.unk_00[param2] = param3;
        break;
    case 1:
        param0->unk_04.unk_3DE[param2] = param3;
        break;
    case 2:
        param0->unk_04.unk_7BC[param2] = param3;
        break;
    default:
        GF_ASSERT(0);
        return 0;
    }

    return param3;
}

static u16 sub_02030954(SaveData *saveData, BattleFrontierStage *param1, int param2, int param3, u16 param4)
{
    u16 v0;

    if (SaveData_MiscSaveBlock_InitFlag(saveData) == 0) {
        return 0;
    }

    v0 = sub_020308BC(saveData, param1, param2, param3);

    if (v0 < param4) {
        return sub_02030908(param1, param2, param3, param4);
    } else {
        if (v0 > 9999) {
            return sub_02030908(param1, param2, param3, 9999);
        }

        return v0;
    }
}

BOOL sub_020309A0(SaveData *saveData, int param1, int param2, int param3, int param4, enum HeapID heapID, int *param6, int *param7)
{
    BattleFrontier *frontier;
    BattleFrontierStage *v1;
    u16 v2, v3, v4;
    int v5;
    BOOL v6 = 0;

    GF_ASSERT(param1 >= 34 && param1 <= 60);
    GF_ASSERT(param2 == 36 || param2 == 48 || param2 == 60);

    *param6 = 1;
    *param7 = 2;

    if (param3 != 0xff) {
        return v6;
    }

    if (SaveData_MiscSaveBlock_InitFlag(saveData) == 0) {
        return v6;
    }

    frontier = SaveData_GetBattleFrontier(saveData);
    v3 = sub_02030698(frontier, param1, param3);
    v5 = sub_02030698(frontier, param2, param3);
    v1 = sub_020308A0(saveData, heapID, param6);

    if (*param6 != 1) {
        v4 = 0;
    } else {
        v4 = sub_020308BC(saveData, v1, param4, v5);
    }

    v2 = sub_02030954(saveData, v1, param4, v5, v3);

    if (v3 != v4) {
        *param7 = sub_020308A8(saveData, v1);
        v6 = 1;
    }

    if (v1 != NULL) {
        Heap_Free(v1);
    }

    return v6;
}
