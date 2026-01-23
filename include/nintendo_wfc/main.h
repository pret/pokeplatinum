#ifndef POKEPLATINUM_NINTENDO_WFC_MAIN_H
#define POKEPLATINUM_NINTENDO_WFC_MAIN_H

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
typedef void (*NintendoWFCConnectionClosedCB)(u16 aid, void *userParam);
typedef BOOL (*NintendoWFCHostMatchCallback)(int hostFriendIdx);
typedef void (*NintendoWFCNewClientCallback)(u16 id, void *userParam);
typedef void (*NintendoWFCFatalErrorCallback)(int errorCode);

int NintendoWFC_Init(SaveData *saveData, enum HeapID heapID, int heapSize, int maxPlayers);
int NintendoWFC_ConnectToDWCServer(void);
void NintendoDWC_SetDataTransferCallbacks(NintendoWFCDataTransferCallback serverCallback, NintendoWFCDataTransferCallback clientCallback);
void NintendoWFC_SetConnectionClosedCB(NintendoWFCConnectionClosedCB callback, void *callbackArg);
void NintendoWFC_SetHostMatchCallback(NintendoWFCHostMatchCallback callback);
void NintendoWFC_SetNewClientCallback(NintendoWFCNewClientCallback callback, void *callbackArg);
int NintendoWFC_StartPublicMatchmaking(u8 *matchmakingString, int maxPlayers, BOOL addSecondKey, u32 timeout);
int NintendoWFC_Process(BOOL cancelConnection);
BOOL NintendoWFC_HasDataQueued(void);
int NintendoWFC_SendData_Server(void *data, int size);
int NintendoWFC_SendData_Client(void *data, int size);
int NintendoWFC_SendData(void *data, int size);
int NintendoWFC_HandleError(void);
int NintendoWFC_GetNetID(void);
void NintendoWFC_StartVoiceChat(enum HeapID heapID);
void NintendoWFC_TerminateVoiceChat(void);
int NintendoWFC_GetErrorCode(int errorCode, int errorType);
BOOL NintendoWFC_EndConnection(BOOL isClient);
BOOL NintendoWFC_ReturnToReadyState(void);
void NintendoWFC_SetFatalErrorCallback(NintendoWFCFatalErrorCallback func);
void NintendoWFC_Stop(void);
void NintendoWFC_SetFriendStatusesBuffer(void *buffer, int friendStatusSize);
BOOL NintendoWFC_SetStatusData(const void *statusData, int size);
u8 NintendoWFC_GetFriendStatus(int friendIdx);
int NintendoWFC_StartConnectionWithFriends(int hostFriendIdx, int maxParties, BOOL isTwoPlayersOnly);
int NintendoWFC_GetHostFriendIdx(void);
BOOL NintendoWFC_IsPlayerSpeaking(void);
BOOL NintendoWFC_GetVoiceChatEnabled(void);
int NintendoWFC_GetLatestNewClientFriendIdx(void);
void NintendoWFC_SetVoiceChatEnabled(BOOL enabled);
void NintendoWFC_SetVoiceChatEnabled_Battle(BOOL enabled);
int NintendoWFC_CancelMatchmaking(void);
void NintendoWFC_ResetMatchmakingCancelState(void);
int NintendoWFC_GetNumConnections(void);
void NintendoWFC_ManageSecondaryHeap(BOOL create, enum HeapID heapID);
void NintendoWFC_SetDisconnectIfAlone(BOOL disconnect);
u8 NintendoWFC_GetNeedsGameSave(void);
void NintendoWFC_ResetNeedsGameSave(void);

#endif // POKEPLATINUM_NINTENDO_WFC_MAIN_H
