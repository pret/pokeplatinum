#include "battle_castle_save.h"

#include <nitro.h>

#include "struct_defs/battle_frontier.h"

#include "savedata.h"

void BattleCastleSave_Init(BattleCastleSave *castleSave)
{
    MI_CpuClear8(castleSave, sizeof(BattleCastleSave));
}

BattleCastleSave *BattleCastleSave_Get(SaveData *saveData)
{
    BattleFrontierSave *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &frontier->castleSave;
}

BOOL BattleCastleSave_HasSaved(BattleCastleSave *save)
{
    return save->didSave;
}

void BattleCastleSave_RecordSave(BattleCastleSave *save, BOOL didSave)
{
    save->didSave = didSave;
}

void BattleCastleSave_SetMember(BattleCastleSave *save, u8 field, u8 index, u8 index2, void *value)
{
    switch (field) {
    case CASTLE_SAVE_CHALLENGE_TYPE:
        save->challengeType = *(u8 *)value;
        break;
    case CASTLE_SAVE_CURRENT_BATTLE:
        save->currentBattleNum = *(u8 *)value;
        break;
    case CASTLE_SAVE_MON_HP:
        save->monHP[index] = *(u16 *)value;
        break;
    case CASTLE_SAVE_MON_PP:
        save->monPP[index][index2] = *(u8 *)value;
        break;
    case CASTLE_SAVE_MON_STATUS:
        save->monStatus[index] = *(u32 *)value;
        break;
    case CASTLE_SAVE_HELD_ITEMS:
        save->heldItems[index] = *(u16 *)value;
        break;
    case CASTLE_SAVE_TRAINER_IDS:
        save->trainerIDs[index] = *(u16 *)value;
        break;
    case CASTLE_SAVE_PARTY_SLOTS:
        save->partySlots[index] = *(u8 *)value;
        break;
    case CASTLE_SAVE_MON_SET_IDS:
        save->monSetIDs[index] = *(u16 *)value;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

u32 BattleCastleSave_GetMember(BattleCastleSave *svae, u8 field, u8 index, u8 unused, void *unused2)
{
    switch (field) {
    case CASTLE_SAVE_CHALLENGE_TYPE:
        return svae->challengeType;
    case CASTLE_SAVE_CURRENT_BATTLE:
        return svae->currentBattleNum;
    case CASTLE_SAVE_MON_HP:
        return svae->monHP[index];
    case CASTLE_SAVE_MON_PP:
        return svae->monPP[index][unused];
    case CASTLE_SAVE_MON_STATUS:
        return svae->monStatus[index];
    case CASTLE_SAVE_HELD_ITEMS:
        return svae->heldItems[index];
    case CASTLE_SAVE_TRAINER_IDS:
        return svae->trainerIDs[index];
    case CASTLE_SAVE_PARTY_SLOTS:
        return svae->partySlots[index];
    case CASTLE_SAVE_MON_SET_IDS:
        return svae->monSetIDs[index];
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return 0;
}

void BattleCastlePersistentSave_Init(BattleCastlePersistentSave *save)
{
    MI_CpuClear8(save, sizeof(BattleCastlePersistentSave));
}

BattleCastlePersistentSave *BattleCastlePersistentSave_Get(SaveData *saveData)
{
    BattleFrontierSave *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &frontier->castle.persistentSave;
}

void BattleCastlePersistentSave_SetFlag(BattleCastlePersistentSave *save, u8 field, u8 challengeType, u8 unused, u8 *value)
{
    u8 *value_dupe = (u8 *)value;
    switch (field) {
    case CASTLE_SAVE_STREAK_FLAGS:
        if (*value_dupe >= 1) {
            save->streakActiveFlags |= 1 << challengeType;
        } else {
            save->streakActiveFlags &= 0xff ^ (1 << challengeType);
        }
        break;
    case CASTLE_SAVE_HAVE_HEARD_INTRO:
        save->haveHeardIntro = TRUE;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

u32 BattleCastlePersistentSave_GetFlag(BattleCastlePersistentSave *save, u8 field, u8 challengeType, u8 unused, void *unused2)
{
    switch (field) {
    case CASTLE_SAVE_STREAK_FLAGS:
        return (save->streakActiveFlags >> challengeType) & 0x1;
    case CASTLE_SAVE_HAVE_HEARD_INTRO:
        return save->haveHeardIntro;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return 0;
}
