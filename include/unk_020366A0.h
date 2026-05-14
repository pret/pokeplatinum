#ifndef POKEPLATINUM_UNK_020366A0_H
#define POKEPLATINUM_UNK_020366A0_H

#include "overlay065/struct_ov65_0222F6EC.h"

#include "battle_regulation.h"
#include "bg_window.h"
#include "enums.h"
#include "savedata.h"

BOOL CommMan_IsInitialized(void);
void CommManager_StartUnderground(SaveData *saveData);
void CommManager_EndUnderground(void);
void CommManager_ResetUnderground(void);
void CommManager_SetPauseUnderground(BOOL param0);
void CommManager_ResetUndergroundServer(void);
BOOL CommManager_IsConnectingUnderground(void);
void CommManager_CloseSecretBase(void);
void CommManager_SetDoNotConnectUndergroundFlag(void);
void CommMan_ReopenSecretBase(void);
void CommMan_StartBattleServer(SaveData *saveData, int param1, int param2, const BattleRegulation *param3, BOOL param4);
void CommMan_StartBattleClient(SaveData *saveData, int param1, int param2, const BattleRegulation *param3, BOOL param4);
void CommManager_ConnectBattleClient(int param0);
void CommManager_ResetBattleClient(void);
void CommManager_EndBattle(void);
void WirelessManager_SetEntry2(BOOL param0);
BOOL CommManager_IsWaitingBattle(void);
void CommManager_StartUnion(SaveData *saveData);
void CommManager_ConnectUnion(int param0);
int CommManager_IsConnectedUnionClientSuccess(void);
BOOL CommManager_IsConnectUnionServer(void);
void CommManager_UnionRestartSearch(void);
BOOL CommManager_UnionRestartSuccess(void);
void CommManager_ExitUnion(void);
void CommManager_PauseUnionClient(void);
void CommManager_PauseUnionServer(void);
void CommManager_SetState_UnionApp(void);
void CommManager_SetState_Union(void);
void CommManager_StartRandomBattleServer(SaveData *saveData, int param1);
void CommManager_StartRandomBattleClient(SaveData *saveData, int param1);
void CommManager_Update(void);
void CommManager_StartDrawServer(void);
void CommManager_StartDrawClient(int param0);
void CommManager_SetState_MixRecords(void);
void CommManager_StartMixRecordsClient(int param0);
void CommManager_SetState_SpinTrade(void);
void CommManager_StartSpinTradeClient(int param0);
void CommManager_ValidateConfirmationMessage(int param0, int param1, void *param2, void *param3);
void CommManager_ValidateConfirmationResponseMessage(int param0, int param1, void *param2, void *param3);
int CommManager_ConfirmationMessage_sizeof(void);
void CommManager_SetMaxNumConnections(int param0);
void CommManager_InitializePoketchLinkSearch(SaveData *saveData);
void CommManager_EndPoketchLinkSearch(void);
BOOL CommManager_IsPoketchSearching(void);
void CommManager_InitializeSearchParty(SaveData *saveData);
void CommManager_EndSearchParty(void);
u8 CommManager_GetUnk54(void);
BOOL CommManager_ExitOrReset(void);
void CommManager_SetUnk34(int param0, int param1, int param2);
int CommManager_StartWifiBattle(int param0);
int CommManager_GetMatchmakingState();
void CommManager_DisconnectWifi(int param0, int param1, void *param2, void *param3);
BOOL CommManager_GetDisconnectedWifi(void);
BOOL CommManager_IsLoginBattleWifi(void);
BOOL CommManager_IsLoginBattleMatchWifi(void);
UnkStruct_ov65_0222F6EC *CommManager_GetUnk34(void);
void CommManager_LogoutWifi(void);
void CommManager_EndWifiMatch(void);
void CommManager_EndTradeWifiMatch(void);
void CommManager_EndBattleWifiMatch(void);
BOOL CommManager_CheckWifiError(void);
void CommManager_InitializeGlobalWifi(SaveData *saveData);
void CommManager_EndGlobalWifi(void);
void CommManager_StartMysteryGiftWifi(SaveData *saveData);
void CommManager_EndMysteryGiftWifi(void);
void CommManager_StartWifiMail(SaveData *saveData);
void CommManager_EndWifiMail(void);
BOOL CommManager_GetDWCError(void);
void *CommManager_LoginWifiBattleServer(SaveData *saveData, int param1);
void CommManager_LoginWifiLobby(SaveData *saveData, const void *param1);
void CommManager_LogoutWifiLobby(void);
BOOL CommManager_GetWifiLobbyLoginSuccess(void);
BOOL CommManager_IsWifiLobbyError(void);
void CommManager_StartWifiP2P(UnkEnum_ov66_02232F38 param0);
void CommManager_EndWifiP2P(void);
u32 CommManager_GetWifiP2PConnectState(void);
void *CommManager_GetUnk00(void);
void CommManager_SetErrorHandling(BOOL param0, BOOL param1);
BOOL CommManager_CheckError(void);
int CommManager_GetCommType(void);
int CommManager_GetContestRegulation(void);
void CommManager_SetParty(u8 *param0);
void CommManager_GetParty(u8 *param0);
BOOL CommManager_IsConnectedToWifi(void);
void CommManager_SetResetType(u8 param0);
u8 CommManager_GetResetType(void);
void NetworkError_DisplayFatalError(int param0);
void NetworkError_DisplayGTSCriticalError(void);
void CommManager_deadstripped_02038A1C(int param0, BgConfig *param1);
void CommManager_DisplayError(int param0);
BOOL CommManager_CheckResetFinished(void);
BOOL CommManager_SetCommError(int param0);
void CommManager_SetState_WifiPoffin(void);
void CommManager_SetState_WifiClub(void);
void CommManager_SetState_WifiLobby(void);
void CommManager_SetState_LoginWifi(void);
void CommManager_SetState_SingleBattleWifi(void);
void CommManager_SetState_FrontierWifi(void);
BOOL CommManager_IsInitializedNotPoketch(void);

#endif // POKEPLATINUM_UNK_020366A0_H
