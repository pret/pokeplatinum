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
void sub_02037A78(int param0, int param1, void *param2, void *param3);
void sub_02037AD8(int param0, int param1, void *param2, void *param3);
int sub_02037B54(void);
void CommManager_SetMaxNumConnections(int param0);
void sub_02037BC0(SaveData *saveData);
void sub_02037BFC(void);
BOOL sub_02037C18(void);
void sub_02037D48(SaveData *saveData);
void sub_02037D84(void);
u8 sub_02037DA0(void);
BOOL sub_02037DB0(void);
void sub_02037F94(int param0, int param1, int param2);
int sub_020380A0(int param0);
int sub_020380E4();
void sub_02038240(int param0, int param1, void *param2, void *param3);
BOOL sub_02038284(void);
BOOL sub_02038294(void);
BOOL sub_020382C0(void);
UnkStruct_ov65_0222F6EC *sub_020382F8(void);
void sub_02038350(void);
void sub_02038378(void);
void sub_02038398(void);
void sub_020383D4(void);
BOOL sub_020383E8(void);
void sub_02038438(SaveData *saveData);
void sub_0203848C(void);
void sub_020384C0(SaveData *saveData);
void sub_02038514(void);
void sub_02038548(SaveData *saveData);
void sub_0203859C(void);
BOOL sub_020385D0(void);
void *sub_0203871C(SaveData *saveData, int param1);
void CommManager_LoginWifiLobby(SaveData *saveData, const void *param1);
void CommManager_LogoutWifiLobby(void);
BOOL CommManager_GetWifiLobbyLoginSuccess(void);
BOOL CommManager_IsWifiLobbyError(void);
void CommManager_StartWifiP2P(UnkEnum_ov66_02232F38 param0);
void CommManager_EndWifiP2P(void);
u32 CommManager_GetWifiP2PConnectState(void);
void *sub_020388E8(void);
void CommMan_SetErrorHandling(BOOL param0, BOOL param1);
BOOL sub_02038938(void);
int CommManager_GetCommType(void);
int CommManager_GetContestRegulation(void);
void sub_0203898C(u8 *param0);
void sub_020389A0(u8 *param0);
BOOL CommMan_IsConnectedToWifi(void);
void sub_020389C4(u8 param0);
u8 sub_020389D8(void);
void sub_020389FC(int param0);
void NetworkError_DisplayGTSCriticalError(void);
void sub_02038A1C(int param0, BgConfig *param1);
void sub_02038A20(int param0);
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
