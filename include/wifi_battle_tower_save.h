#ifndef POKEPLATINUM_WIFI_BATTLE_TOWER_SAVE_H
#define POKEPLATINUM_WIFI_BATTLE_TOWER_SAVE_H

#include <nitro/rtc.h>

#include "struct_decls/struct_0202D080_decl.h"
#include "struct_defs/struct_02049A68.h"
#include "struct_defs/wifi_battle_tower_data.h"

#include "overlay090/struct_ov90_021D1750.h"
#include "overlay096/struct_ov96_0223B450_sub2.h"
#include "overlay096/struct_wifi_player_profile.h"
#include "overlay104/frontier_data_transfer.h"

#include "easy_chat_sentence.h"
#include "savedata.h"

#define BATTLE_POINTS_FUNC_NONE 0
#define BATTLE_POINTS_FUNC_SET  1
#define BATTLE_POINTS_FUNC_ADD  5
#define BATTLE_POINTS_FUNC_SUB  6

int WifiPlayerProfile_Size(void);
void WifiBattleTowerSave_Init(WifiBattleTowerSave *save);
void WifiBattleTowerRecord_Init(WifiBattleTowerRecord *record);
void FrontierEasyChatMessages_Init(FrontierEasyChatMessages *easyChatMsgs);
void WifiBattleTowerDownloadData_Init(WifiBattleTowerDownloadData *downloadData);
u32 WifiBattleTowerSave_GetField(WifiBattleTowerSave *save, int fieldId, void *outBuf);
void WifiBattleTowerSave_SetField(WifiBattleTowerSave *save, int fieldId, const void *inBuf);
void WifiBattleTowerSave_AddCounters(WifiBattleTowerSave *save, u8 param1, u16 param2, u16 param3);
BOOL WifiBattleTowerSave_GetIsInProgress(WifiBattleTowerSave *save);
void WifiBattleTowerSave_SetIsInProgress(WifiBattleTowerSave *save, BOOL isInProgress);
u16 WifiBattleTowerRecord_UpdateBattlePoints(WifiBattleTowerRecord *record, u16 value, int func);
u8 WifiBattleTowerRecord_UpdateLossStreak(WifiBattleTowerRecord *record, int op);
u8 WifiBattleTowerRecord_UpdateRank(WifiBattleTowerRecord *record, int op);
void WifiBattleTowerRecord_SetTeam(WifiBattleTowerRecord *record, int teamIdx, FrontierPokemonDataDTO *monDataDTO);
void WifiBattleTowerRecord_GetTeam(WifiBattleTowerRecord *record, int teamIdx, FrontierPokemonDataDTO *outBuf);
u16 WifiBattleTowerRecord_CalcRatingScore(WifiBattleTowerRecord *record, WifiBattleTowerSave *save);
u16 WifiBattleTowerRecord_GetRatingScore(WifiBattleTowerRecord *record);
u8 WifiBattleTowerRecord_GetRatingTier(WifiBattleTowerRecord *record);
u16 WifiBattleTowerRecord_UpdateRoomNum(WifiBattleTowerRecord *record, u16 challengeMode, int op);
u16 WifiBattleTowerRecord_SetRoomNum(WifiBattleTowerRecord *record, u16 challengeMode, u16 roomNum);
BOOL WifiBattleTowerRecord_UpdateBitFlag(WifiBattleTowerRecord *record, u16 bitIdx, int op);
void WifiBattleTowerRecord_SetRngState(WifiBattleTowerRecord *record, u32 value);
u32 WifiBattleTowerRecord_GetRngState(WifiBattleTowerRecord *record);
void FrontierEasyChatMessages_SetSentence(SaveData *saveData, int sentenceIdx, EasyChatSentence *sentence);
EasyChatSentence *FrontierEasyChatMessages_GetSentence(SaveData *saveData, int sentenceIdx);
void WifiBattleTowerDownloadData_MarkOpponent(WifiBattleTowerDownloadData *downloadData, u8 rank, u8 opponentIdx, RTCDate *date);
void WifiBattleTowerDownloadData_Reset(WifiBattleTowerDownloadData *downloadData);
BOOL WifiBattleTowerDownloadData_IsOpponentMarked(WifiBattleTowerDownloadData *downloadData, u8 rank, u8 opponentIdx, RTCDate *date);
BOOL WifiBattleTowerDownloadData_HasOpponentData(WifiBattleTowerDownloadData *downloadData);
BOOL WifiBattleTowerDownloadData_HasMatchListData(WifiBattleTowerDownloadData *downloadData);
void WifiBattleTowerDownloadData_StoreOpponentTeams(WifiBattleTowerDownloadData *downloadData, WifiPlayerProfile *opponentData, u8 rank, u8 opponentIdx);
void WifiBattleTowerDownloadData_GetIndices(WifiBattleTowerDownloadData *downloadData, WifiBattleTowerIndices *outIndices);
void WifiBattleTowerDownloadData_BuildOpponentDTO(WifiBattleTowerDownloadData *downloadData, FrontierDataDTO *dto, const u8 opponentNum);
void WifiBattleTowerDownloadData_StoreMatchList(WifiBattleTowerDownloadData *downloadData, WifiBattleTowerMatchCandidate *matchCandidates, u8 rank, u8 opponentIdx);
void WifiBattleTowerDownloadData_GetMatchIndices(WifiBattleTowerDownloadData *downloadData, WifiBattleTowerIndices *outIndices);
WifiBattleTowerMatchCandidate *WifiBattleTowerDownloadData_AllocMatchList(WifiBattleTowerDownloadData *, enum HeapID heapID);
WifiBattleTowerSave *SaveData_GetWifiBattleTowerSave(SaveData *saveData);
WifiBattleTowerRecord *SaveData_GetWifiBattleTowerRecord(SaveData *saveData);
WifiBattleTowerDownloadData *SaveData_GetWifiBattleTowerDownloadData(SaveData *saveData);

#endif // POKEPLATINUM_WIFI_BATTLE_TOWER_SAVE_H
