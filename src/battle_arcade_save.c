#include "battle_arcade_save.h"

#include <nitro.h>

#include "struct_defs/battle_frontier.h"

#include "savedata.h"

void BattleArcadeSave_Init(BattleArcadeSave *arcadeSave)
{
    MI_CpuClear8(arcadeSave, sizeof(BattleArcadeSave));
}

BattleArcadeSave *BattleArcadeSave_Get(SaveData *saveData)
{
    BattleFrontierSave *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &frontier->arcadeSave;
}

BOOL BattleArcadeSave_HasSaved(BattleArcadeSave *save)
{
    return save->didSave;
}

void BattleArcadeSave_RecordSave(BattleArcadeSave *save, BOOL didSave)
{
    save->didSave = didSave;
}

void BattleArcadeSave_SetMember(BattleArcadeSave *save, u8 field, u8 index, u8 unused, const void *value)
{
    switch (field) {
    case ARCADE_SAVE_CHALLENGE_TYPE:
        save->challengeType = *(u8 *)value;
        break;
    case ARCADE_SAVE_CURSOR_RANDOMIZED:
        save->cursorRandomized = *(u8 *)value;
        break;
    case ARCADE_SAVE_CURRENT_BATTLE:
        save->currentBattle = *(u8 *)value;
        break;
    case ARCADE_SAVE_ROULETTE_SPEED:
        save->rouletteSpeed = *(u8 *)value;
        break;
    case ARCADE_SAVE_HELD_ITEMS:
        save->heldItems[index] = *(u16 *)value;
        break;
    case ARCADE_SAVE_TRAINER_IDS:
        save->trainerIDs[index] = *(u16 *)value;
        break;
    case ARCADE_SAVE_PARTY_SLOTS:
        save->partySlots[index] = *(u8 *)value;
        break;
    case ARCADE_SAVE_MON_SET_IDS:
        save->monSetIDs[index] = *(u16 *)value;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

u32 BattleArcadeSave_GetMember(BattleArcadeSave *save, u8 field, u8 index, u8 unused, void *unused2)
{
    switch (field) {
    case ARCADE_SAVE_CHALLENGE_TYPE:
        return save->challengeType;
    case ARCADE_SAVE_CURSOR_RANDOMIZED:
        return save->cursorRandomized;
    case ARCADE_SAVE_CURRENT_BATTLE:
        return save->currentBattle;
    case ARCADE_SAVE_ROULETTE_SPEED:
        return save->rouletteSpeed;
    case ARCADE_SAVE_HELD_ITEMS:
        return save->heldItems[index];
    case ARCADE_SAVE_TRAINER_IDS:
        return save->trainerIDs[index];
    case ARCADE_SAVE_PARTY_SLOTS:
        return save->partySlots[index];
    case ARCADE_SAVE_MON_SET_IDS:
        return save->monSetIDs[index];
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return 0;
}

void BattleArcadeStreakFlags_Init(BattleArcadeStreakFlags *flags)
{
    MI_CpuClear8(flags, sizeof(BattleArcadeStreakFlags));
}

BattleArcadeStreakFlags *BattleArcadeStreakFlags_Get(SaveData *saveData)
{
    BattleFrontierSave *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &frontier->arcade.streakFlags;
}

void BattleArcadeStreakFlags_SetFlag(BattleArcadeStreakFlags *flags, u8 field, u8 challengeType, u8 unused, const void *value)
{
    u8 *value_dupe = (u8 *)value;
    switch (field) {
    case ARCADE_SAVE_STREAK_FLAGS:
        if (*value_dupe >= 1) {
            flags->streakActiveFlags |= 1 << challengeType;
        } else {
            flags->streakActiveFlags &= 0xff ^ (1 << challengeType);
        }
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

u32 BattleArcadeStreakFlags_GetFlag(BattleArcadeStreakFlags *flags, u8 field, u8 challengeType, u8 unused, void *unused2)
{
    switch (field) {
    case ARCADE_SAVE_STREAK_FLAGS:
        return (flags->streakActiveFlags >> challengeType) & 0x1;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return 0;
}
