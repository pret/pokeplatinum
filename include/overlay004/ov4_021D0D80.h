#ifndef POKEPLATINUM_OV4_021D0D80_H
#define POKEPLATINUM_OV4_021D0D80_H

#include <dwc.h>

#include "savedata.h"

typedef void (*UnkFuncPtr_ov4_021D1104)(u16, u16 *, u16);
typedef void (*NintendoWFCConnectionClosedCB)(u16, void *);
typedef BOOL (*UnkFuncPtr_ov4_021D113C)(int);
typedef void (*UnkFuncPtr_ov4_021D1150)(u16, void *);

int NintendoWFC_Init(SaveData *saveData, int heapID, int param2, int param3);
int NintendoWFC_PreMatch(void);
void ov4_021D1104(UnkFuncPtr_ov4_021D1104 param0, UnkFuncPtr_ov4_021D1104 param1);
void NintendoWFC_SetConnectionClosedCB(NintendoWFCConnectionClosedCB param0, void *param1);
void ov4_021D113C(UnkFuncPtr_ov4_021D113C param0);
void ov4_021D1150(UnkFuncPtr_ov4_021D1150 param0, void *param1);
int ov4_021D116C(u8 *param0, int param1, BOOL param2, u32 param3);
int ov4_021D12D4(int param0);
BOOL ov4_021D1404(void);
int NintendoWFC_SendData_Client(void *param0, int param1);
int NintendoWFC_SendData_Server(void *param0, int param1);
int NintendoWFC_SendData(void *param0, int param1);
int NintendoWFC_HandleError(void);
int ov4_021D1E30(void);
void ov4_021D1E74(int heapID);
void NintendoWFC_TerminateVoiceChat(void);
int NintendoWFC_GetErrorCode(int param0, int param1);
int ov4_021D20B0(int param0);
int ov4_021D2134(void);
void NintendoWFC_SetFatalErrorCallback(void (*func)(int));
void NintendoWFC_Stop(void);
void NintendoWFC_SetFriendStatusesBuffer(void *param0, int param1);
BOOL NintendoWFC_SetStatusData(const void *param0, int param1);
u8 NintendoWFC_GetFriendStatus(int param0);
int ov4_021D2248(int param0, int param1, BOOL param2);
int ov4_021D2388(void);
BOOL NintendoWFC_IsPlayerSpeaking(void);
BOOL NintendoWFC_GetUpdateVoiceClients(void);
int ov4_021D2568(void);
void NintendoWFC_SetUpdateVoiceClients(BOOL param0);
void ov4_021D2598(BOOL param0);
int ov4_021D25C0(void);
void ov4_021D25FC(void);
int NintendoWFC_GetNumConnections(void);
void ov4_021D2618(BOOL param0, int heapID);
void NintendoWFC_SetDisconnectIfAlone(BOOL param0);
u8 ov4_021D27E0(void);
void ov4_021D27F4(void);

#endif // POKEPLATINUM_OV4_021D0D80_H
