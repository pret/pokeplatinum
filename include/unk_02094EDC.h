#ifndef POKEPLATINUM_UNK_02094EDC_H
#define POKEPLATINUM_UNK_02094EDC_H

#include "struct_defs/struct_02095C48.h"

#include "battle/pokemon_sprite_data.h"
#include "overlay006/struct_ov6_02248BE8.h"

#include "pokemon.h"
#include "pokemon_sprite.h"

BOOL sub_02094EDC(UnkStruct_02095C48 *param0);
void sub_02094F04(UnkStruct_02095C48 *param0, int heapID, int param2, int param3, int param4, int param5, int isGameCompleted, int isNatDexObtained);
void sub_020951B0(UnkStruct_02095C48 *param0, int heapID);
void sub_02095338(UnkStruct_02095C48 *param0);
void sub_02095380(const UnkStruct_ov6_02248BE8 *param0, Pokemon *param1, int heapID);
PokemonSprite *sub_02095484(PokemonSpriteManager *param0, int param1, Pokemon *param2, int param3, PokemonSpriteData *pokemonSpriteData, int heapID, int param6, int param7, int param8);
void sub_020954F0(UnkStruct_02095C48 *param0, int heapID, int param2, int contestType, int contestRank);
s8 sub_02095734(int contestEffect);
void LoadTwoLineContestEffectMessages(int param0, u32 *lineOneEffectMessageID, u32 *lineTwoEffectMessageID);
u32 sub_0209577C(int param0);
void sub_02095790(int param0, int param1, u32 *param2, u32 *param3);
u32 sub_02095848(int contestRank, int param1, BOOL isLinkContest);
u32 Contest_GetRankMessageID(int contestRank);
u32 Contest_GetContestTypeMessageID(int param0);
u32 sub_020958C4(int contestType, int param1);
int sub_020958FC(int param0);
int sub_02095904(int param0);
BOOL sub_0209590C(UnkStruct_02095C48 *param0);
int sub_02095928(UnkStruct_02095C48 *param0, int param1);
int sub_0209598C(UnkStruct_02095C48 *param0, int param1);
void SeLlockTextWithAutoScroll(int lockTextWithAutoScroll);
void LockTextSpeed(void);
u32 CalcMonDataRibbon(int contestRank, int contestType);
u32 sub_02095A74(int contestRank, BOOL isLinkContest);

#endif // POKEPLATINUM_UNK_02094EDC_H
