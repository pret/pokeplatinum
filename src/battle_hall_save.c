#include "battle_hall_save.h"

#include <nitro.h>

#include "generated/pokemon_types.h"

#include "struct_defs/battle_frontier.h"

#include "savedata.h"

void BattleHallSave_Init(BattleHallSave *challenge)
{
    MI_CpuClear8(challenge, sizeof(BattleHallSave));
}

BattleHallSave *BattleHallSave_Get(SaveData *saveData)
{
    BattleFrontierSave *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &frontier->hallSave;
}

BOOL BattleHallSave_HasSaved(BattleHallSave *save)
{
    return save->didSave;
}

void BattleHallSave_RecordSave(BattleHallSave *save, BOOL didSave)
{
    save->didSave = didSave;
}

void BattleHallSave_SetMember(BattleHallSave *save, u8 field, u8 index, u8 unused, void *value)
{
    switch (field) {
    case HALL_SAVE_CHALLENGE_TYPE:
        save->challengeType = *(u8 *)value;
        break;
    case HALL_SAVE_CURRENT_BATTLE:
        save->currentBattleNum = *(u8 *)value;
        break;
    case HALL_SAVE_TRAINER_IDS:
        save->trainerIDs[index] = *(u16 *)value;
        break;
    case HALL_SAVE_PARTY_SLOTS:
        save->partySlots[index] = *(u8 *)value;
        break;
    case HALL_SAVE_POKEMON_INDICES:
        save->monIndices[index] = *(u16 *)value;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

u32 BattleHallSave_GetMember(BattleHallSave *save, u8 field, u8 index, u8 unused, void *unused2)
{
    switch (field) {
    case HALL_SAVE_CHALLENGE_TYPE:
        return save->challengeType;
    case HALL_SAVE_CURRENT_BATTLE:
        return save->currentBattleNum;
    case HALL_SAVE_TRAINER_IDS:
        return save->trainerIDs[index];
    case HALL_SAVE_PARTY_SLOTS:
        return save->partySlots[index];
    case HALL_SAVE_POKEMON_INDICES:
        return save->monIndices[index];
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return 0;
}

u8 BattleHall_GetRankOfType(u8 idx, u8 *typeRanks)
{
    u8 byte = idx / 2;
    u8 nybble = idx % 2;
    u8 rank = (typeRanks[byte] >> (4 * nybble)) & 0xf;

    return rank;
}

void BattleHall_SetRankOfType(u8 pokemonType, u8 *typeRanks, u8 value)
{
    u8 byte = pokemonType / 2;
    u8 nybble = pokemonType % 2;

    if (nybble == 0) {
        typeRanks[byte] = typeRanks[byte] & 0xf0;
    } else {
        typeRanks[byte] = typeRanks[byte] & 0xf;
    }

    u8 rankPair = value << (4 * nybble);
    typeRanks[byte] |= rankPair;
}

void BattleHall_ResetRankOfAllTypes(u8 *typeRanks)
{
    for (int i = 0; i < NUM_POKEMON_TYPES; i++) {
        BattleHall_SetRankOfType(i, typeRanks, 0);
    }
}

void BattleHallStreakFlags_Init(BattleHallStreakFlags *flags)
{
    MI_CpuClear8(flags, sizeof(BattleHallStreakFlags));
}

BattleHallStreakFlags *BattleHallStreakFlags_Get(SaveData *saveData)
{
    BattleFrontierSave *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &frontier->hall.streakFlags;
}

void BattleHallStreakFlags_SetFlag(BattleHallStreakFlags *flags, u8 field, u8 challengeType, u8 unused, u8 *value)
{
    u8 *value_dupe = (u8 *)value;
    switch (field) {
    case HALL_SAVE_STREAK_FLAGS:
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

u32 BattleHallStreakFlags_GetFlag(BattleHallStreakFlags *flags, u8 field, u8 challengeType, u8 unused, void *unused2)
{
    switch (field) {
    case HALL_SAVE_STREAK_FLAGS:
        return (flags->streakActiveFlags >> challengeType) & 0x1;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return FALSE;
}
