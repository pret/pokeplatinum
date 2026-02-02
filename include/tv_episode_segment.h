#ifndef POKEPLATINUM_TV_EPISODE_SEGMENT_H
#define POKEPLATINUM_TV_EPISODE_SEGMENT_H

#include "struct_decls/struct_0202440C_decl.h"

#include "field/field_system_decl.h"
#include "overlay006/struct_ov6_022465F4_decl.h"

#include "field_battle_data_transfer.h"
#include "pokemon.h"
#include "savedata.h"
#include "string_template.h"
#include "trainer_info.h"

int TVEpisodeSegment_LoadMessage(int programTypeID, FieldSystem *fieldSystem, StringTemplate *template, UnkStruct_ov6_022465F4 *param3, u16 *bankDestVar);
BOOL TVEpisodeSegment_IsEligible(int programTypeID, FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param2);
void sub_0206CF14(TVBroadcast *broadcast, Pokemon *param1, int param2, int param3, int param4);
void sub_0206CF48(TVBroadcast *broadcast, Pokemon *param1, enum HeapID heapID);
void FieldSystem_SaveTVEpisodeSegment_PlantingAndWateringShow(FieldSystem *fieldSystem, u16 berryItemID, u8 yieldRating, u16 yieldAmount);
void sub_0206CF9C(TVBroadcast *broadcast, int param1);
void sub_0206CFB4(TVBroadcast *broadcast, int param1);
void sub_0206CFCC(TVBroadcast *broadcast, int param1);
void sub_0206CFE4(TVBroadcast *broadcast, BOOL param1, u16 param2);
void TVBroadcast_ResetSafariGameData(TVBroadcast *broadcast);
void TVBroadcast_UpdateSafariGameData(TVBroadcast *broadcast, Pokemon *param1);
void sub_0206D048(TVBroadcast *broadcast, Pokemon *param1);
void sub_0206D088(TVBroadcast *broadcast, u8 param1, const TrainerInfo *param2);
void sub_0206D0C8(TVBroadcast *broadcast, u16 param1);
void sub_0206D0F0(TVBroadcast *broadcast);
void sub_0206D104(TVBroadcast *broadcast);
void sub_0206D12C(TVBroadcast *broadcast);
CaptureAttempt *CaptureAttempt_New(enum HeapID heapID);
void CaptureAttempt_Free(CaptureAttempt *captureAttempt);
void CaptureAttempt_Init(CaptureAttempt *captureAttempt, Pokemon *mon, int resultMask, int ballsThrown, enum HeapID heapID);
void FieldSystem_SaveTVEpisodeSegment_CatchThatPokemonShow(FieldSystem *fieldSystem, const CaptureAttempt *captureAttempt, int resultMask);
void FieldSystem_SaveTVEpisodeSegment_WhatsFishing(FieldSystem *fieldSystem, BOOL caughtFish, u16 fishingRodItemID, Pokemon *mon);
void FieldSystem_SaveTVEpisodeSegment_LoveThatGroupCorner_NewGroup(FieldSystem *fieldSystem);
void FieldSystem_SaveTVEpisodeSegment_LoveThatGroupCorner_SwitchGroup(FieldSystem *fieldSystem);
void FieldSystem_SaveTVEpisodeSegment_HiddenItemBreakingNews(FieldSystem *fieldSystem, u16 item);
void FieldSystem_SaveTVEpisodeSegment_SinnohShoppingChampCorner(SaveData *saveData, u16 item, u8 amount);
void FieldSystem_SaveTVEpisodeSegment_HappyHappyEggClub(FieldSystem *fieldSystem, Pokemon *mon);
void FieldSystem_SaveTVEpisodeSegment_RateThatNameChange(FieldSystem *fieldSystem, Pokemon *mon);
void FieldSystem_SaveTVEpisodeSegment_UndergroundTreasuresCorner(FieldSystem *fieldSystem, int item, int amount);
void FieldSystem_SaveTVEpisodeSegment_SafariGameSpecialNewsBulletin(FieldSystem *fieldSystem);
void FieldSystem_SaveTVEpisodeSegment_PokemonStorageSpecialNewsBulletin(FieldSystem *fieldSystem);
void FieldSystem_SaveTVEpisodeSegment_HerbalMedicineTrainerSightingDummy(TVBroadcast *broadcast, Pokemon *mon, u16 item);
void FieldSystem_SaveTVEpisodeSegment_PlantingAndWateringShow(FieldSystem *fieldSystem, u16 berryItemID, u8 yieldRating, u16 yieldAmount);
void FieldSystem_SaveTVEpisodeSegment_SealClubShow(TVBroadcast *broadcast, Pokemon *mon, u8 ballSeal);
void FieldSystem_SaveTVEpisodeSegment_CaptureTheFlagDigest_TakeFlag(FieldSystem *fieldSystem, const TrainerInfo *trainerInfo);
void FieldSystem_SaveTVEpisodeSegment_CaptureTheFlagDigest_LoseFlag(FieldSystem *fieldSystem, const TrainerInfo *trainerInfo);
void FieldSystem_SaveTVEpisodeSegment_HomeAndManor_NoFurniture(FieldSystem *fieldSystem);
void FieldSystem_SaveTVEpisodeSegment_HomeAndManor(FieldSystem *fieldSystem, u8 furniture);
void sub_0206DBB0(SaveData *saveData, u32 param1, Pokemon *param2, BOOL param3);
void sub_0206DC6C(FieldSystem *fieldSystem, u32 param1, Pokemon *param2);
void sub_0206DD38(FieldSystem *fieldSystem, u32 param1, u32 param2, u32 param3);
void sub_0206DDB8(SaveData *saveData, Pokemon *mon, u32 monDataParam);
void sub_0206DEEC(FieldSystem *fieldSystem, u16 param1, u16 param2);
void sub_0206DF60(FieldSystem *fieldSystem, u16 param1);
void sub_0206DFE0(SaveData *saveData);
void sub_0206E060(SaveData *saveData);
void FieldSystem_SaveTVEpisodeSegment_BattleTowerCorner(FieldSystem *fieldSystem, u16 customMessageWord);
void FieldSystem_SaveTVEpisodeSegment_YourPokemonCorner(FieldSystem *fieldSystem, u16 customMessageWord);
void FieldSystem_SaveTVEpisodeSegment_ThePoketchWatch(FieldSystem *fieldSystem, u16 customMessageWord);
void FieldSystem_SaveTVEpisodeSegment_ContestHall(FieldSystem *fieldSystem, u16 customMessageWord);
void FieldSystem_SaveTVEpisodeSegment_RightOnPhotoCorner(FieldSystem *fieldSystem, u16 customMessageWord);
void FieldSystem_SaveTVEpisodeSegment_StreetCornerPersonalityCheckup(FieldSystem *fieldSystem, u16 pokemonType);
void FieldSystem_SaveTVEpisodeSegment_ThreeCheersForPoffinCorner(FieldSystem *fieldSystem, u16 customMessageWord);
void FieldSystem_SaveTVEpisodeSegment_AmitySquareWatch(FieldSystem *fieldSystem, u16 customMessageWord);
void FieldSystem_SaveTVEpisodeSegment_BattleFrontierFrontlineNews_Single(FieldSystem *fieldSystem, u16 customMessageWord);
void FieldSystem_SaveTVEpisodeSegment_InYourFaceInterview_Question1(FieldSystem *fieldSystem, u16 customMessageWord);
void FieldSystem_SaveTVEpisodeSegment_InYourFaceInterview_Question2(FieldSystem *fieldSystem, u16 customMessageWord);
void FieldSystem_SaveTVEpisodeSegment_InYourFaceInterview_Question3(FieldSystem *fieldSystem, u16 customMessageWord);
void FieldSystem_SaveTVEpisodeSegment_InYourFaceInterview_Question4(FieldSystem *fieldSystem, u16 customMessageWord);
void FieldSystem_SaveTVEpisodeSegment_BattleFrontierFrontlineNews_Multi(FieldSystem *fieldSystem, u16 customMessageWord);
void sub_0206F2F0(SaveData *saveData);

#endif // POKEPLATINUM_TV_EPISODE_SEGMENT_H
