#include "unk_0202FF4C.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/battle_frontier.h"
#include "struct_defs/struct_0202FF58.h"

#include "savedata.h"

void sub_0202FF4C(UnkStruct_0202FF58 *param0);
void BattleFactoryStreakFlags_Init(BattleFactoryStreakFlags *flags);
void BattleFactoryStreakFlags_SetFlag(BattleFactoryStreakFlags *flags, u8 field, u8 challengeType, u8 *value);
u32 BattleFactoryStreakFlags_GetFlag(BattleFactoryStreakFlags *flags, u8 field, u8 challengeType, void *unused);
BOOL sub_0202FF68(UnkStruct_0202FF58 *param0);
void sub_0202FF70(UnkStruct_0202FF58 *param0, BOOL param1);
void sub_0202FF84(UnkStruct_0202FF58 *param0, u8 field, u8 index, const void *value);
u32 sub_02030030(UnkStruct_0202FF58 *param0, u8 field, u8 index, void *unused);

void sub_0202FF4C(UnkStruct_0202FF58 *param0)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_0202FF58));
    return;
}

UnkStruct_0202FF58 *sub_0202FF58(SaveData *saveData)
{
    BattleFrontierSave *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &frontier->unk_8E0_val2; // fetch the save file
}

BOOL sub_0202FF68(UnkStruct_0202FF58 *param0)
{
    return param0->unk_00_4; // fetch 2nd :1
}

void sub_0202FF70(UnkStruct_0202FF58 *param0, BOOL param1)
{
    param0->unk_00_4 = param1; // set 2nd :1
}

// set value
void sub_0202FF84(UnkStruct_0202FF58 *param0, u8 field, u8 index, const void *value)
{
    u32 *v0 = (u32 *)value;
    u16 *v1 = (u16 *)value;
    u8 *v2 = (u8 *)value;

    switch (field) {
    case 0:
        param0->unk_00_0 = v2[0];
        break;
    case 1:
        param0->challengeType = v2[0];
        break;
    case 2:
        param0->unk_01 = v2[0];
        break;
    case 3:
        param0->trainerIDs[index] = v1[0];
        break;
    case 4:
        param0->unk_20[index] = v1[0];
        break;
    case 5:
        param0->playerIVs[index] = v2[0];
        break;
    case 6:
        param0->playerPersonality[index] = v0[0];
        break;
    case 7:
        param0->unk_3C[index] = v1[0];
        break;
    case 8:
        param0->opponentIVs[index] = v2[0];
        break;
    case 9:
        param0->opponentPersonality[index] = v0[0];
        break;
    }
}
// v7->challengeType = (u8)sub_02030030(v0, 1, 0, NULL);
// v7->unk_05 = (u8)sub_02030030(v0, 0, 0, NULL);
// v7->unk_06 = (u8)sub_02030030(v0, 2, 0, NULL);
// param0->trainerIDs[v0] = (u16)sub_02030030(param0->unk_4F4, 3, v0, NULL);
// get value
u32 sub_02030030(UnkStruct_0202FF58 *param0, u8 field, u8 index, void *unused)
{
    switch (field) {
    case 1:
        return (u32)param0->challengeType;
    case 0:
        return (u32)param0->unk_00_0;
    case 2:
        return (u32)param0->unk_01;
    case 3:
        return (u32)param0->trainerIDs[index];
    case 4:
        return (u32)param0->unk_20[index];
    case 5:
        return (u32)param0->playerIVs[index];
    case 6:
        return (u32)param0->playerPersonality[index];
    case 7:
        return (u32)param0->unk_3C[index];
    case 8:
        return (u32)param0->opponentIVs[index];
    case 9:
        return (u32)param0->opponentPersonality[index];
    default:
        return 0;
    }
}

void BattleFactoryStreakFlags_Init(BattleFactoryStreakFlags *flags)
{
    MI_CpuClear8(flags, sizeof(BattleFactoryStreakFlags));
}

void BattleFactoryStreakFlags_SetFlag(BattleFactoryStreakFlags *flags, u8 field, u8 challengeType, u8 *value)
{
    u8 *value_dupe = (u8 *)value;
    switch (field) {
    case FACTORY_SAVE_STREAK_FLAGS:
        if (*value_dupe >= 1) {
            flags->streakActiveFlags |= (1 << challengeType);
        } else {
            flags->streakActiveFlags &= (0xff ^ (1 << challengeType));
        }
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

u32 BattleFactoryStreakFlags_GetFlag(BattleFactoryStreakFlags *flags, u8 field, u8 challengeType, void *unused)
{
    switch (field) {
    case FACTORY_SAVE_STREAK_FLAGS:
        return (u32)((flags->streakActiveFlags >> challengeType) & 0x1);
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return FALSE;
}

BattleFactoryStreakFlags *BattleFactoryStreakFlags_Get(SaveData *saveData)
{
    BattleFrontierSave *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &frontier->factory.streakFlags;
}
