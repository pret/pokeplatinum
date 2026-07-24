#include "battle_factory_save.h"

#include <nitro.h>

#include "struct_defs/battle_frontier.h"

#include "savedata.h"

void BattleFactorySave_Init(BattleFactorySave *save)
{
    MI_CpuClear8(save, sizeof(BattleFactorySave));
}

BattleFactorySave *BattleFactorySave_Get(SaveData *saveData)
{
    BattleFrontierSave *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &frontier->factorySave;
}

BOOL BattleFactorySave_HasSaved(BattleFactorySave *save)
{
    return save->didSave;
}

void BattleFactorySave_RecordSave(BattleFactorySave *save, BOOL didSave)
{
    save->didSave = didSave;
}

// set value
void BattleFactorySave_SetMember(BattleFactorySave *save, u8 field, u8 index, const void *value)
{
    switch (field) {
    case FACTORY_SAVE_OPEN_LEVEL:
        save->isOpenLevel = *(u8 *)value;
        break;
    case FACTORY_SAVE_CHALLENGE_TYPE:
        save->challengeType = *(u8 *)value;
        break;
    case FACTORY_SAVE_CURRENT_BATTLE:
        save->currentBattleNum = *(u8 *)value;
        break;
    case FACTORY_SAVE_TRAINER_IDS:
        save->trainerIDs[index] = *(u16 *)value;
        break;
    case FACTORY_SAVE_PLAYER_SETS:
        save->playerPartySets[index] = *(u16 *)value;
        break;
    case FACTORY_SAVE_PLAYER_IVS:
        save->playerIVs[index] = *(u8 *)value;
        break;
    case FACTORY_SAVE_PLAYER_PERSONALITY:
        save->playerPersonality[index] = *(u32 *)value;
        break;
    case FACTORY_SAVE_OPPONENT_SETS:
        save->opponentPartySets[index] = *(u16 *)value;
        break;
    case FACTORY_SAVE_OPPONENT_IVS:
        save->opponentIVs[index] = *(u8 *)value;
        break;
    case FACTORY_SAVE_OPPONENT_PERSONALITY:
        save->opponentPersonality[index] = *(u32 *)value;
        break;
    }
}

u32 BattleFactorySave_GetMember(BattleFactorySave *save, u8 field, u8 index, void *unused)
{
    switch (field) {
    case FACTORY_SAVE_CHALLENGE_TYPE:
        return (u32)save->challengeType;
    case FACTORY_SAVE_OPEN_LEVEL:
        return (u32)save->isOpenLevel;
    case FACTORY_SAVE_CURRENT_BATTLE:
        return (u32)save->currentBattleNum;
    case FACTORY_SAVE_TRAINER_IDS:
        return (u32)save->trainerIDs[index];
    case FACTORY_SAVE_PLAYER_SETS:
        return (u32)save->playerPartySets[index];
    case FACTORY_SAVE_PLAYER_IVS:
        return (u32)save->playerIVs[index];
    case FACTORY_SAVE_PLAYER_PERSONALITY:
        return (u32)save->playerPersonality[index];
    case FACTORY_SAVE_OPPONENT_SETS:
        return (u32)save->opponentPartySets[index];
    case FACTORY_SAVE_OPPONENT_IVS:
        return (u32)save->opponentIVs[index];
    case FACTORY_SAVE_OPPONENT_PERSONALITY:
        return (u32)save->opponentPersonality[index];
    }

    return 0;
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
    }

    return;
}

u32 BattleFactoryStreakFlags_GetFlag(BattleFactoryStreakFlags *flags, u8 field, u8 challengeType, void *unused)
{
    switch (field) {
    case FACTORY_SAVE_STREAK_FLAGS:
        return (u32)((flags->streakActiveFlags >> challengeType) & 0x1);
    }

    return 0;
}

BattleFactoryStreakFlags *BattleFactoryStreakFlags_Get(SaveData *saveData)
{
    BattleFrontierSave *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &frontier->factory.streakFlags;
}
