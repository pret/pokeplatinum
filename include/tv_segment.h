#ifndef POKEPLATINUM_TV_SEGMENT_H
#define POKEPLATINUM_TV_SEGMENT_H

#include "generated/pokemon_contest_ranks.h"
#include "generated/pokemon_contest_types.h"

#include "struct_decls/tv_broadcast.h"
#include "struct_defs/tv.h"

#include "field/field_system_decl.h"

#include "field_battle_data_transfer.h"
#include "pokemon.h"
#include "savedata.h"
#include "string_template.h"
#include "trainer_info.h"

int TVSegment_LoadMessage(int programTypeID, FieldSystem *fieldSystem, StringTemplate *template, TVEpisode *episode, u16 *bankDestVar);
BOOL TVSegment_IsEligible(int programTypeID, FieldSystem *fieldSystem, TVEpisode *episode);

void TVBroadcast_SetContestHallShowInfo(TVBroadcast *broadcast, Pokemon *mon, enum PokemonContestType contestType, enum PokemonContestRank contestRank, int contestPlacement);
void sub_0206CF48(TVBroadcast *broadcast, Pokemon *mon, enum HeapID heapID);
void sub_0206CF9C(TVBroadcast *broadcast, int param1);
void sub_0206CFB4(TVBroadcast *broadcast, int param1);
void sub_0206CFCC(TVBroadcast *broadcast, int param1);
void sub_0206CFE4(TVBroadcast *broadcast, BOOL param1, u16 param2);
void TVBroadcast_ResetSafariGameData(TVBroadcast *broadcast);
void TVBroadcast_UpdateSafariGameData(TVBroadcast *broadcast, Pokemon *mon);
void sub_0206D048(TVBroadcast *broadcast, Pokemon *mon);
void sub_0206D088(TVBroadcast *broadcast, u8 param1, const TrainerInfo *param2);
void TVBroadcast_UpdateBattlePointData(TVBroadcast *broadcast, u16 battlePoints);
void TVBroadcast_ResetBattlePointData(TVBroadcast *broadcast);
void TVBroadcast_UpdateGTSData(TVBroadcast *broadcast);
void TVBroadcast_ResetGTSData(TVBroadcast *broadcast);

CaptureAttempt *CaptureAttempt_New(enum HeapID heapID);
void CaptureAttempt_Free(CaptureAttempt *captureAttempt);
void CaptureAttempt_Init(CaptureAttempt *captureAttempt, Pokemon *mon, int resultMask, int ballsThrown, enum HeapID heapID);

void TVSegment_Save_CatchThatPokemonShow(FieldSystem *fieldSystem, const CaptureAttempt *captureAttempt, int resultMask);
void TVSegment_Save_WhatsFishing(FieldSystem *fieldSystem, BOOL caughtFish, u16 fishingRodItemID, Pokemon *mon);
void TVSegment_Save_LoveThatGroupCorner_NewGroup(FieldSystem *fieldSystem);
void TVSegment_Save_LoveThatGroupCorner_SwitchGroup(FieldSystem *fieldSystem);
void TVSegment_Save_HiddenItemBreakingNews(FieldSystem *fieldSystem, u16 item);
void TVSegment_Save_SinnohShoppingChampCorner(SaveData *saveData, u16 item, u8 amount);
void TVSegment_Save_HappyHappyEggClub(FieldSystem *fieldSystem, Pokemon *mon);
void TVSegment_Save_RateThatNameChange(FieldSystem *fieldSystem, Pokemon *mon);
void TVSegment_Save_UndergroundTreasuresCorner(FieldSystem *fieldSystem, int item, int amount);
void TVSegment_Save_SafariGameSpecialNewsBulletin(FieldSystem *fieldSystem);
void TVSegment_Save_PokemonStorageSpecialNewsBulletin(FieldSystem *fieldSystem);
void TVSegment_Save_HerbalMedicineTrainerSightingDummy(TVBroadcast *broadcast, Pokemon *mon, u16 item);
void TVSegment_Save_PlantingAndWateringShow(FieldSystem *fieldSystem, u16 berryItemID, u8 yieldRating, u16 yieldAmount);
void TVSegment_Save_SealClubShow(TVBroadcast *broadcast, Pokemon *param1, u8 ballSeal);
void TVSegment_Save_CaptureTheFlagDigest_TakeFlag(FieldSystem *fieldSystem, const TrainerInfo *trainerInfo);
void TVSegment_Save_CaptureTheFlagDigest_LoseFlag(FieldSystem *fieldSystem, const TrainerInfo *trainerInfo);
void TVSegment_Save_HomeAndManor_NoFurniture(FieldSystem *fieldSystem);
void TVSegment_Save_HomeAndManor(FieldSystem *fieldSystem, u8 furniture);
void TVSegment_Save_BattleTowerMaster(SaveData *saveData, u32 record, Pokemon *mon, BOOL singles);
void TVSegment_Save_RecordsPokemonSize(FieldSystem *fieldSystem, u32 newRecord, Pokemon *mon);
void TVSegment_Save_RecordsSlotGameMaster(FieldSystem *fieldSystem, u32 startCoins, u32 endCoins, u32 minutes);
void TVSegment_Save_RibbonMaster(SaveData *saveData, Pokemon *mon, u32 monDataParam);
void TVSegment_Save_TrapBustingMaster(FieldSystem *fieldSystem, u16 trapID, u16 count);
void TVSegment_Save_FlagCapturingMaster(FieldSystem *fieldSystem, u16 flagCount);
void TVSegment_Save_BattlePointScoringMaster(SaveData *saveData);
void TVSegment_Save_GTSMaster(SaveData *saveData);
void TVSegment_Save_BattleTowerCorner(FieldSystem *fieldSystem, u16 customMessageWord);
void TVSegment_Save_YourPokemonCorner(FieldSystem *fieldSystem, u16 customMessageWord);
void TVSegment_Save_ThePoketchWatch(FieldSystem *fieldSystem, u16 customMessageWord);
void TVSegment_Save_ContestHall(FieldSystem *fieldSystem, u16 customMessageWord);
void TVSegment_Save_RightOnPhotoCorner(FieldSystem *fieldSystem, u16 customMessageWord);
void TVSegment_Save_StreetCornerPersonalityCheckup(FieldSystem *fieldSystem, u16 pokemonType);
void TVSegment_Save_ThreeCheersForPoffinCorner(FieldSystem *fieldSystem, u16 customMessageWord);
void TVSegment_Save_AmitySquareWatch(FieldSystem *fieldSystem, u16 customWordMessage);
void TVSegment_Save_BattleFrontierFrontlineNews_Single(FieldSystem *fieldSystem, u16 customWordMessage);
void TVSegment_Save_InYourFaceInterview_Question1(FieldSystem *fieldSystem, u16 customWordMessage);
void TVSegment_Save_InYourFaceInterview_Question2(FieldSystem *fieldSystem, u16 customWordMessage);
void TVSegment_Save_InYourFaceInterview_Question3(FieldSystem *fieldSystem, u16 customWordMessage);
void TVSegment_Save_InYourFaceInterview_Question4(FieldSystem *fieldSystem, u16 customWordMessage);
void TVSegment_Save_BattleFrontierFrontlineNews_Multi(FieldSystem *fieldSystem, u16 customWordMessage);
void sub_0206F2F0(SaveData *saveData);

#endif // POKEPLATINUM_TV_SEGMENT_H
