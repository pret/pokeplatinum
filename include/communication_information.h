#ifndef POKEPLATINUM_COMMUNICATION_INFORMATION_H
#define POKEPLATINUM_COMMUNICATION_INFORMATION_H

#include "trainer_info.h"
#include "struct_defs/struct_0202610C.h"
#include "savedata.h"

#include <dwc.h>

void CommunicationInformation_Init(SaveData * saveData, const BattleRegulation * regulation);
void CommunicationInformation_Delete(void);
BOOL CommunicationInformation_IsInitialized(void);
void CommunicationInformation_SendBattleRegulation(void);
int CommPlayerData_sizeof(void);
void CommunicatitonInformaion_FinishReading(int param0, int param1, void * param2, void * param3);
BOOL CommunicationInformation_IsDataFinishedReading(void);
void CommunicationInformation_RecvPlayerDataArray(int netId, int unused1, void * src, void * unused3);
void CommunicationInformation_RecvPlayerData(int netId, int unused1, void * src, void * unused3);
BOOL CommunicationInformation_ServerSendArray(void);
BOOL CommunicationInformation_IsReceivingData(void);
void CommunicationInformation_InitPlayer(int netId);
BOOL sub_02032DC4(int netId);
BOOL sub_02032DE0(int netId);
BOOL sub_02032E00(int netId);
void sub_02032E1C(int netId);
void CommunicationInformation_SetReceiveEnd(int netId);
int CommunicationInformation_GetNewNetworkId(void);
int CommunicationInformation_GetRecvCnt(void);
BOOL sub_02032E90(void);
TrainerInfo * CommunicationInformation_GetTrainerInformation(int netId);
DWCFriendData * CommunicationInformation_GetDWCFriendData(int netId);
int sub_02032F40(int param0);
u16 * sub_02032F54(int netId);
int CommunicationInformation_GetPlayerCountry(int netId);
int CommunicationInformation_GetPlayerRegion(int netId);
int sub_02032FC0(int param0);
BOOL CommunicationInformation_CheckBattleRegulation(void);
void CommunicationInformation_SavePlayerRecord(SaveData * saveData);
void sub_020331B4(SaveData * saveData, int param1);
void CommunicationInformation_SetTradeResult(SaveData * saveData, int val);
void CommunicationInformation_SetPersonalTrainerInfo(TrainerInfo * trainerInfo);

#endif // POKEPLATINUM_COMMUNICATION_INFORMATION_H
