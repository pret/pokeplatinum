#ifndef POKEPLATINUM_OV4_021D0D80_H
#define POKEPLATINUM_OV4_021D0D80_H

#include <dwc.h>

#include "savedata.h"

#define WFC_NOT_A_FRIEND (-1)

enum NintendoWFCResult {
    NINTENDO_WFC_RESULT_MATCHMAKING_SUCCESS = DWC_ERROR_NUM,
    NINTENDO_WFC_RESULT_CONN_RESET,
    NINTENDO_WFC_RESULT_CONN_RESET_AFTER_HOST_LEFT,
    NINTENDO_WFC_RESULT_RECEIVE_TIMED_OUT,
    NINTENDO_WFC_RESULT_CONNECTION_CLOSED,
    NINTENDO_WFC_RESULT_UNUSED_5,
    NINTENDO_WFC_RESULT_DUMMY_6,
    NINTENDO_WFC_RESULT_CONNECTED_TO_SERVER,
};

typedef void (*NintendoWFCDataTransferCallback)(u16 aid, u16 *data, u16 length);
typedef void (*NintendoWFCConnectionClosedCB)(u16, void *);
typedef BOOL (*NintendoWFCHostMatchCallback)(int);
typedef void (*NintendoWFCNewClientCallback)(u16 id, void *extraArg);

int NintendoWFC_Init(SaveData *saveData, enum HeapID heapID, int param2, int param3);
int NintendoWFC_ConnectToDWCServer(void);
void NintendoDWC_SetDataTransferCallbacks(NintendoWFCDataTransferCallback param0, NintendoWFCDataTransferCallback param1);
void NintendoWFC_SetConnectionClosedCB(NintendoWFCConnectionClosedCB param0, void *param1);
void NintendoWFC_SetHostMAtchCallback(NintendoWFCHostMatchCallback param0);
void NintendoWFC_SetNewClientCallback(NintendoWFCNewClientCallback param0, void *param1);
int NintendoWFC_StartPublicMatchmaking(u8 *param0, int param1, BOOL param2, u32 param3);
int NintendoWFC_Process(int param0);
BOOL NintendoWFC_HasDataQueued(void);
int NintendoWFC_SendData_Server(void *param0, int param1);
int NintendoWFC_SendData_Client(void *param0, int param1);
int NintendoWFC_SendData(void *param0, int param1);
int NintendoWFC_HandleError(void);
int NintendoWFC_GetNetID(void);
void NintendoWFC_StartVoiceChat(enum HeapID heapID);
void NintendoWFC_TerminateVoiceChat(void);
int NintendoWFC_GetErrorCode(int param0, int param1);
BOOL NintendoWFC_EndConnection(int param0);
BOOL NintendoWFC_ReturnToReadyState(void);
void NintendoWFC_SetFatalErrorCallback(void (*func)(int));
void NintendoWFC_Stop(void);
void NintendoWFC_SetFriendStatusesBuffer(void *param0, int param1);
BOOL NintendoWFC_SetStatusData(const void *param0, int param1);
u8 NintendoWFC_GetFriendStatus(int param0);
int NintendoWFC_StartConnectionWithFriends(int param0, int param1, BOOL param2);
int NintendoWFC_GetHostFriendIdx(void);
BOOL NintendoWFC_IsPlayerSpeaking(void);
BOOL NintendoWFC_GetVoiceChatEnabled(void);
int NintendoWFC_GetLatestNewClientFriendIdx(void);
void NintendoWFC_SetVoiceChatEnabled(BOOL param0);
void NintendoWFC_SetVoiceChatEnabled_Battle(BOOL param0);
int NintendoWFC_CancelMatchmaking(void);
void NintendoWFC_ResetMatchmakingCancelState(void);
int NintendoWFC_GetNumConnections(void);
void NintendoWFC_ManageSecondaryHeap(BOOL param0, enum HeapID heapID);
void NintendoWFC_SetDisconnectIfAlone(BOOL param0);
u8 NintendoWFC_GetNeedsGameSave(void);
void NintendoWFC_ResetNeedsGameSave(void);

#endif // POKEPLATINUM_OV4_021D0D80_H
