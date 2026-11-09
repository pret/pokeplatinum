#ifndef POKEPLATINUM_UNK_02094EDC_H
#define POKEPLATINUM_UNK_02094EDC_H

#include "generated/move_contest_effects.h"
#include "generated/pokemon_contest_ranks.h"
#include "generated/pokemon_contest_types.h"

#include "struct_defs/struct_020F568C.h"

#include "battle/pokemon_sprite_data.h"
#include "overlay006/struct_ov6_02248BE8.h"

#include "contest.h"
#include "pokemon.h"
#include "pokemon_sprite.h"

#define CONTESTANT_POKEMON_LEVEL 10

#define CONTEST_CANDIDATES_TERMINATOR 0xFF

enum ContestDataNarcMember {
    CONTEST_DATA_OPPONENTS = 0,
    CONTEST_DATA_JUDGES,
    CONTEST_DATA_OPPONENT_DRESS_UPS,
};

BOOL Contest_IsPlayerHost(Contest *contest);
void Contest_SelectOpponents(Contest *contest, enum HeapID heapID, int numOpponents, enum PokemonContestType contestType, enum PokemonContestRank contestRank, enum ContestCompetition competitionType, BOOL isGameCompleted, BOOL isNatDexObtained);
void Contest_DressUpOpponentPhotos(Contest *contest, enum HeapID heapID);
void Contest_InitPhotosWithoutAccessories(Contest *contest);
void Contestant_InitPokemon(const Contestant *contestant, Pokemon *mon, enum HeapID heapID);
PokemonSprite *Contestant_CreateMonSprite(PokemonSpriteManager *monSpriteMan, int polygonID, Pokemon *mon, int face, PokemonSpriteData *pokemonSpriteData, enum HeapID heapID, int x, int y, int z);
void Contest_SelectJudges(Contest *contest, enum HeapID heapID, int numOpponents, enum PokemonContestType contestType, enum PokemonContestRank contestRank);
s8 Contest_GetMoveEffectAppeal(enum MoveContestEffect contestEffect);
void Contest_LoadTwoLineContestEffectMessages(enum MoveContestEffect moveContestEffectID, u32 *lineOneEffectMessageID, u32 *lineTwoEffectMessageID);
u32 Contest_GetMoveEffectDescriptionMessageID(enum MoveContestEffect contestEffect);
void Contest_GetEffectActingMessage(enum MoveContestEffect contestMoveEffect, enum ContestEffectActingMessage index, u32 *destMessageID, u32 *destFormat);
u32 Contest_GetContestRankTitleMessageID(enum PokemonContestRank contestRank, enum ContestCompetition competitionType, BOOL isLinkContest);
u32 Contest_GetRankMessageID(enum PokemonContestRank contestRank);
u32 Contest_GetContestTypeMessageID(enum PokemonContestType contestType);
u32 Contest_GetFullContestTypeMessageID(enum PokemonContestType contestType, enum ContestCompetition competitionType);
int Contest_ContestantIDToContestantEntryNum(int contestantID);
int Contest_ContestantEntryNumToContestantID(int contestantEntryNum);
BOOL Contest_IsPracticeCompetition(Contest *contest);
int Contest_CalcConditionRating(Contest *contest, int contestantID);
int Contest_CalcDressUpRating(Contest *contest, int contestantID);
void SetLockTextWithAutoScroll(BOOL lockTextWithAutoScroll);
void LockTextSpeed(void);
u32 CalcMonDataRibbon(enum PokemonContestRank contestRank, enum PokemonContestType contestType);
u32 Contest_GetRandomDressUpTheme(enum PokemonContestRank contestRank, BOOL isLinkContest);

#endif // POKEPLATINUM_UNK_02094EDC_H
