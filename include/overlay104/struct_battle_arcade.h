#ifndef POKEPLATINUM_STRUCT_BATTLE_ARCADE_H
#define POKEPLATINUM_STRUCT_BATTLE_ARCADE_H

#include "constants/battle_frontier.h"

#include "overlay104/frontier_opponents.h"

#include "field_battle_data_transfer.h"
#include "party.h"
#include "savedata.h"
#include "sprite.h"
#include "unk_02030494.h"

typedef struct BattleArcade {
    int unused;
    SaveData *saveData;
    BattleArcadeSave *arcadeSave;
    FieldBattleDTO *dto;
    u8 challengeType;
    u8 currentBattle;
    u8 cursorRandomized;
    u8 activeEffect;
    int weather;
    u16 currentStreak;
    u16 currentRound;
    u8 rouletteSpeed;
    u8 performance;
    u8 seenArcadeStarIntro;
    u8 immuneToEffect;
    u16 randomIndex;
    u32 unused2;
    int wonBattle;
    u8 partySlots[MATH_MAX(ARCADE_PARTY_SIZE_SOLO, ARCADE_PARTY_SIZE_MULTI)];
    u8 saveStreak;
    ManagedSprite *playerMonSprites[ARCADE_MAX_PARTY_SIZE];
    ManagedSprite *opponentMonSprites[ARCADE_MAX_PARTY_SIZE];
    ManagedSprite *playerItemSprites[ARCADE_MAX_PARTY_SIZE];
    ManagedSprite *opponentItemSprites[ARCADE_MAX_PARTY_SIZE];
    Party *playersParty;
    Party *opponentsParty;
    u16 trainerIDs[ARCADE_BATTLES_PER_ROUND * 2];
    u32 monHP[ARCADE_MAX_PARTY_SIZE];
    u32 monAtk[ARCADE_MAX_PARTY_SIZE];
    u32 monDef[ARCADE_MAX_PARTY_SIZE];
    u32 monSpeed[ARCADE_MAX_PARTY_SIZE];
    u32 monSpAtk[ARCADE_MAX_PARTY_SIZE];
    u32 monSpDef[ARCADE_MAX_PARTY_SIZE];
    FrontierOpponent opponents[2];
    u16 monSetIDs[ARCADE_MAX_PARTY_SIZE];
    u8 opponentMonIVs[ARCADE_MAX_PARTY_SIZE];
    u32 opponentMonPersonalities[ARCADE_MAX_PARTY_SIZE];
    FrontierPokemon opponentMons[ARCADE_MAX_PARTY_SIZE];
    u16 unused3;
    u16 savedHeldItems[MATH_MAX(ARCADE_PARTY_SIZE_SOLO, ARCADE_PARTY_SIZE_MULTI)];
    u16 appCursorPos[6];
    u16 unk_424[40];
    u8 unk_474[512];
    u8 unk_674[2][512];
    u8 unk_A74;
    u8 unk_A75;
    u16 unk_A76;
    u16 unk_A78;
    u8 unk_A7A;
    u8 unk_A7B;
    u8 msgsReceived;
    u8 unk_A7D;
    u16 *unk_A80;
    u32 unk_A84;
} BattleArcade;

#endif // POKEPLATINUM_STRUCT_BATTLE_ARCADE_H
