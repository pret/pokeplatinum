#ifndef POKEPLATINUM_UNK_020329E0_H
#define POKEPLATINUM_UNK_020329E0_H

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
void sub_02032BEC(int param0, int param1, void * param2, void * param3);
void sub_02032C80(int param0, int param1, void * param2, void * param3);
BOOL sub_02032CE8(void);
BOOL sub_02032D84(void);
void CommunicationInformation_InitPlayer(int netId);
BOOL sub_02032DC4(int param0);
BOOL sub_02032DE0(int param0);
BOOL sub_02032E00(int param0);
void sub_02032E1C(int param0);
void sub_02032E30(int param0);
int sub_02032E44(void);
int sub_02032E64(void);
BOOL sub_02032E90(void);
TrainerInfo * sub_02032EE8(int param0);
DWCFriendData * sub_02032F1C(int param0);
int sub_02032F40(int param0);
u16 * sub_02032F54(int param0);
int sub_02032F78(int param0);
int sub_02032F9C(int param0);
int sub_02032FC0(int param0);
BOOL sub_02032FE4(void);
void CommunicationInformation_SavePlayerRecord(SaveData * param0);
void sub_020331B4(SaveData * param0, int param1);
void CommunicationInformation_SetTradeResult(SaveData * param0, int param1);
void CommunicationInformation_SetPersonalTrainerInfo(TrainerInfo * param0);

#endif // POKEPLATINUM_UNK_020329E0_H
