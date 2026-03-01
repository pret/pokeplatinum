#ifndef POKEPLATINUM_UNK_02094EDC_H
#define POKEPLATINUM_UNK_02094EDC_H

#include "generated/contest_effects.h"
#include "generated/pokemon_contest_ranks.h"
#include "generated/pokemon_contest_types.h"

#include "struct_defs/contest.h"

#include "battle/pokemon_sprite_data.h"
#include "overlay006/struct_ov6_02248BE8.h"

#include "pokemon.h"
#include "pokemon_sprite.h"

BOOL sub_02094EDC(Contest *contest);
void sub_02094F04(Contest *contest, enum HeapID heapID, int param2, enum PokemonContestType contestType, enum PokemonContestRank contestRank, int competitionType, BOOL isGameCompleted, BOOL isNatDexObtained);
void sub_020951B0(Contest *contest, enum HeapID heapID);
void sub_02095338(Contest *contest);
void sub_02095380(const UnkStruct_ov6_02248BE8 *param0, Pokemon *param1, enum HeapID heapID);
PokemonSprite *sub_02095484(PokemonSpriteManager *param0, int param1, Pokemon *param2, int param3, PokemonSpriteData *pokemonSpriteData, enum HeapID heapID, int param6, int param7, int param8);
void sub_020954F0(Contest *contest, enum HeapID heapID, int param2, enum PokemonContestType contestType, enum PokemonContestRank contestRank);
s8 sub_02095734(enum ContestEffects contestEffect);
void Contest_LoadTwoLineContestEffectMessages(int moveContestEffectID, u32 *lineOneEffectMessageID, u32 *lineTwoEffectMessageID);
u32 sub_0209577C(int param0);
void sub_02095790(int contestMoveEffect, int param1, u32 *param2, u32 *param3);
u32 Contest_GetContestRankTitleMessageID(enum PokemonContestRank contestRank, int competitionType, BOOL isLinkContest);
u32 Contest_GetRankMessageID(enum PokemonContestRank contestRank);
u32 Contest_GetContestTypeMessageID(enum PokemonContestType contestType);
u32 Contest_GetFullContestTypeMessageID(enum PokemonContestType contestType, int competitionType);
int Contest_ContestantIDToContestantEntryNum(int contestantID);
int Contest_ContestantEntryNumToContestantID(int contestantEntryNum);
BOOL Contest_IsPracticeCompetition(Contest *contest);
int sub_02095928(Contest *contest, int param1);
int sub_0209598C(Contest *contest, int param1);
void SetLockTextWithAutoScroll(BOOL lockTextWithAutoScroll);
void LockTextSpeed();
u32 CalcMonDataRibbon(enum PokemonContestRank contestRank, enum PokemonContestType contestType);
u32 sub_02095A74(enum PokemonContestRank contestRank, BOOL isLinkContest);

#endif // POKEPLATINUM_UNK_02094EDC_H
