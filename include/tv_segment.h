#ifndef POKEPLATINUM_TV_SEGMENT_H
#define POKEPLATINUM_TV_SEGMENT_H

#include "generated/pokemon_contest_ranks.h"
#include "generated/pokemon_contest_types.h"

#include "struct_decls/struct_0202440C_decl.h"
#include "struct_defs/struct_0202440C.h"

#include "field/field_system_decl.h"

#include "field_battle_data_transfer.h"
#include "pokemon.h"
#include "savedata.h"
#include "string_template.h"
#include "trainer_info.h"

int TVSegment_LoadMessage(int programTypeID, FieldSystem *fieldSystem, StringTemplate *template, TVEpisode *episode, u16 *bankDestVar);
BOOL TVSegment_IsEligible(int programTypeID, FieldSystem *fieldSystem, TVEpisode *episode);

void TVBroadcast_SetContestHallShowInfo(TVBroadcast *broadcast, Pokemon *mon, enum PokemonContestType contestType, enum PokemonContestRank contestRank, int contestPlacement);
void sub_0206CF48(TVBroadcast *broadcast, Pokemon *param1, enum HeapID heapID);
void sub_0206CF9C(TVBroadcast *broadcast, int param1);
void sub_0206CFB4(TVBroadcast *broadcast, int param1);
void sub_0206CFCC(TVBroadcast *broadcast, int param1);
void sub_0206CFE4(TVBroadcast *broadcast, BOOL param1, u16 param2);
void TVBroadcast_ResetSafariGameData(TVBroadcast *broadcast);
void TVBroadcast_UpdateSafariGameData(TVBroadcast *broadcast, Pokemon *mon);
void sub_0206D048(TVBroadcast *broadcast, Pokemon *mon);
void sub_0206D088(TVBroadcast *broadcast, u8 param1, const TrainerInfo *param2);
void sub_0206D0C8(TVBroadcast *broadcast, u16 param1);
void sub_0206D0F0(TVBroadcast *broadcast);
void sub_0206D104(TVBroadcast *broadcast);
void sub_0206D12C(TVBroadcast *broadcast);

CaptureAttempt *CaptureAttempt_New(enum HeapID heapID);
void CaptureAttempt_Free(CaptureAttempt *captureAttempt);
void CaptureAttempt_Init(CaptureAttempt *captureAttempt, Pokemon *mon, int resultMask, int ballsThrown, enum HeapID heapID);

void FieldSystem_SaveTVSegment_PlantingAndWateringShow(FieldSystem *fieldSystem, u16 berryItemID, u8 yieldRating, u16 yieldAmount);
void FieldSystem_SaveTVSegment_CatchThatPokemonShow(FieldSystem *fieldSystem, const CaptureAttempt *captureAttempt, int resultMask);
void FieldSystem_SaveTVSegment_WhatsFishing(FieldSystem *fieldSystem, BOOL caughtFish, u16 fishingRodItemID, Pokemon *mon);
void FieldSystem_SaveTVSegment_LoveThatGroupCorner_NewGroup(FieldSystem *fieldSystem);
void FieldSystem_SaveTVSegment_LoveThatGroupCorner_SwitchGroup(FieldSystem *fieldSystem);
void FieldSystem_SaveTVSegment_HiddenItemBreakingNews(FieldSystem *fieldSystem, u16 item);
void FieldSystem_SaveTVSegment_SinnohShoppingChampCorner(SaveData *saveData, u16 item, u8 amount);
void FieldSystem_SaveTVSegment_HappyHappyEggClub(FieldSystem *fieldSystem, Pokemon *mon);
void FieldSystem_SaveTVSegment_RateThatNameChange(FieldSystem *fieldSystem, Pokemon *mon);
void FieldSystem_SaveTVSegment_UndergroundTreasuresCorner(FieldSystem *fieldSystem, int item, int amount);
void FieldSystem_SaveTVSegment_SafariGameSpecialNewsBulletin(FieldSystem *fieldSystem);
void FieldSystem_SaveTVSegment_PokemonStorageSpecialNewsBulletin(FieldSystem *fieldSystem);
void FieldSystem_SaveTVSegment_HerbalMedicineTrainerSightingDummy(TVBroadcast *broadcast, Pokemon *mon, u16 item);
void FieldSystem_SaveTVSegment_PlantingAndWateringShow(FieldSystem *fieldSystem, u16 berryItemID, u8 yieldRating, u16 yieldAmount);
void FieldSystem_SaveTVSegment_SealClubShow(TVBroadcast *broadcast, Pokemon *param1, u8 ballSeal);
void FieldSystem_SaveTVSegment_CaptureTheFlagDigest_TakeFlag(FieldSystem *fieldSystem, const TrainerInfo *trainerInfo);
void FieldSystem_SaveTVSegment_CaptureTheFlagDigest_LoseFlag(FieldSystem *fieldSystem, const TrainerInfo *trainerInfo);
void FieldSystem_SaveTVSegment_HomeAndManor_NoFurniture(FieldSystem *fieldSystem);
void FieldSystem_SaveTVSegment_HomeAndManor(FieldSystem *fieldSystem, u8 furniture);
void sub_0206DBB0(SaveData *saveData, u32 param1, Pokemon *param2, BOOL param3);
void sub_0206DC6C(FieldSystem *fieldSystem, u32 param1, Pokemon *param2);
void sub_0206DD38(FieldSystem *fieldSystem, u32 param1, u32 param2, u32 param3);
void sub_0206DDB8(SaveData *saveData, Pokemon *mon, u32 monDataParam);
void sub_0206DEEC(FieldSystem *fieldSystem, u16 param1, u16 param2);
void sub_0206DF60(FieldSystem *fieldSystem, u16 param1);
void sub_0206DFE0(SaveData *saveData);
void sub_0206E060(SaveData *saveData);
void FieldSystem_SaveTVSegment_BattleTowerCorner(FieldSystem *fieldSystem, u16 customMessageWord);
void FieldSystem_SaveTVSegment_YourPokemonCorner(FieldSystem *fieldSystem, u16 customMessageWord);
void FieldSystem_SaveTVSegment_ThePoketchWatch(FieldSystem *fieldSystem, u16 customMessageWord);
void FieldSystem_SaveTVSegment_ContestHall(FieldSystem *fieldSystem, u16 customMessageWord);
void FieldSystem_SaveTVSegment_RightOnPhotoCorner(FieldSystem *fieldSystem, u16 customMessageWord);
void FieldSystem_SaveTVSegment_StreetCornerPersonalityCheckup(FieldSystem *fieldSystem, u16 pokemonType);
void FieldSystem_SaveTVSegment_ThreeCheersForPoffinCorner(FieldSystem *fieldSystem, u16 customMessageWord);
void FieldSystem_SaveTVSegment_AmitySquareWatch(FieldSystem *fieldSystem, u16 customWordMessage);
void FieldSystem_SaveTVSegment_BattleFrontierFrontlineNews_Single(FieldSystem *fieldSystem, u16 customWordMessage);
void FieldSystem_SaveTVSegment_InYourFaceInterview_Question1(FieldSystem *fieldSystem, u16 customWordMessage);
void FieldSystem_SaveTVSegment_InYourFaceInterview_Question2(FieldSystem *fieldSystem, u16 customWordMessage);
void FieldSystem_SaveTVSegment_InYourFaceInterview_Question3(FieldSystem *fieldSystem, u16 customWordMessage);
void FieldSystem_SaveTVSegment_InYourFaceInterview_Question4(FieldSystem *fieldSystem, u16 customWordMessage);
void FieldSystem_SaveTVSegment_BattleFrontierFrontlineNews_Multi(FieldSystem *fieldSystem, u16 customWordMessage);
void sub_0206F2F0(SaveData *saveData);

#endif // POKEPLATINUM_TV_SEGMENT_H
