#include "overlay004/ov4_021D0D80.h"

#include <dwc.h>
#include <nitro.h>
#include <ppwlobby/ppw_lobby.h>
#include <string.h>
#include <vct.h>

#include "constants/net.h"

#include "global/assert.h"
#include "overlay004/voice_chat.h"

#include "communication_system.h"
#include "dwc_error.h"
#include "heap.h"
#include "savedata.h"
#include "unk_0202ACE0.h"
#include "unk_0203061C.h"
#include "unk_0203266C.h"
#include "unk_020366A0.h"

#define RECEIVE_BUFFER_SIZE 4096

#define PPW_MATCH_KEY_LENGTH 128

enum NintendoWFCState {
    WFC_STATE_INIT = 0,
    WFC_STATE_WAIT_CONNECTION,
    WFC_STATE_INIT_LOGIN,
    WFC_STATE_WAIT_FOR_LOGIN,
    WFC_STATE_READY,
    WFC_STATE_WAIT_MATCHMAKING,
    WFC_STATE_FORCE_CANCEL,
    WFC_STATE_MATCHMAKING_SUCCESS,
    WFC_STATE_WAIT_AFTER_MATCHMAKING_SUCCESS,
    WFC_STATE_RESET_AFTER_DISCONNECT,
    WFC_STATE_HOST_DISCONNECTED,
    WFC_STATE_RESET_AFTER_HOST_LEFT,
    WFC_STATE_CONNECTION_ERROR,
    WFC_STATE_UNUSED_13,
    WFC_STATE_ERROR_DISCONNECTED,
    WFC_STATE_FATAL_ERROR,
    WFC_STATE_CLOSE_CONNECTION,
    WFC_STATE_CONNECTION_CLOSED,
    WFC_STATE_RECEIVE_TIMED_OUT,
};

enum NintendoWFCConnectionRole {
    WFC_CONNECTION_NONE = 0,
    WFC_CONNECTION_HOST,
    WFC_CONNECTION_CLIENT,
};

enum WFCMatchmakingCancelState {
    MATCHMAKING_NOT_CANCELED = 0,
    MATCHMAKING_CANCEL_REQUESTED,
    MATCHMAKING_CANCELED,
};

typedef struct NintendoWFCManager {
    u8 sendBuffer[256];
    DWCFriendData *friends;
    DWCFriendsMatchControl friendsMatchCtl;
    DWCUserData *userData;
    DWCInetControl inetCtl;
    SaveData *saveData;
    void *allocStartPtr;
    void *receiveBuffers[4];
    void *heap1AllocPtr;
    NNSFndHeapHandle heap1;
    void *heap2AllocPtr;
    NNSFndHeapHandle heap2;
    u32 heap2Size;
    NintendoWFCDataTransferCallback dataTransferServerCallback;
    NintendoWFCDataTransferCallback dataTransferClientCallback;
    NintendoWFCConnectionClosedCB connectionClosedCallback;
    void *connectionClosedCBArg;
    NintendoWFCNewClientCallback newClientCallback;
    void *newClientCallbackArg;
    NintendoWFCHostMatchCallback hostMatchCallback;
    void (*fatalErrorCallback)(int param0);
    u8 ppwMatchKey[PPW_MATCH_KEY_LENGTH];
    u8 friendConnStatus[32];
    void *friendStatusesBuffer;
    int friendStatusSize;
    u32 nextFriendIdx;
    enum NintendoWFCState state;
    int connectionRole;
    int dataSent;
    int maxPlayers;
    u32 voiceConnectedIDs;
    int primaryHeapID;
    int secondaryHeapID;
    int heapSize;
    BOOL voiceChatActive;
    int hostFriendIdx;
    int latestNewClientFriendIdx;
    BOOL voiceChatEnabled;
    BOOL unused_1094;
    int voiceChatCodec;
    int unk_109C;
    int clientUpdateTimers[8];
    int timer;
    int otherPlayersEnabledVoiceChat;
    u16 inVoiceChatLobby;
    u16 voiceChatEnabled_Battles;
    u32 matchmakingAIDBitmap;
    u8 packetsSent;
    u8 unused_10D1;
    u8 dummy_10D2;
    u8 dummy_10D3;
    u8 matchmakingCancelState;
    u8 receiveBuffersOnGlobalHeap[4];
    u8 disconnectIfAlone;
    u8 needsGameSave;
} NintendoWFCManager;

static void NintendoWFC_Cleanup(void);
static void LoginCompleteCallback(DWCError param0, int param1, void *param2);
static void UpdateServersCallback(DWCError param0, BOOL param1, void *param2);
static void DummyFriendStatusCallback(int param0, u8 param1, const char *param2, void *param3);
static void DeleteFriendCallback(int param0, int param1, void *param2);
static void DummyWFCBuddyFriendCB(int param0, void *param1);
static void MatchmakingLobbyMatchedCallback(DWCError param0, BOOL param1, void *param2);
static void SendCallback(int param0, u8 param1);
static void ReceiveCallback(u8 param0, u8 *param1, int param2);
static void ConnectionClosedCallback(DWCError param0, BOOL param1, BOOL param2, u8 param3, int param4, void *param5);
static int DummyPlayerEvalCallback(int param0, void *param1);
static int ProcessConnectionForFrame(void);
static void ReceiveTimeoutCallback(u8 param0);
static BOOL CanSendToAll(void);
static void FreeReceiveBuffer(int param0);
static void FreeAllReceiveBuffers(void);
static void CreateReceiveBuffer(int param0);
static void GetNextFriendStatus(void);
static void MatchmakingHostMatchedCallback(DWCError param0, BOOL param1, BOOL param2, BOOL param3, int param4, void *param5);
static void MatchmakingClientMatchedCallback(DWCError param0, BOOL param1, BOOL param2, BOOL param3, int param4, void *param5);
static void MatchmakingNewClientCallback(int param0, void *param1);
static void DebugCheckProfileAndFriends(void);

static void *NintendoWFCAlloc(DWCAllocType param0, u32 param1, int param2);
static void NintendoWFCFree(DWCAllocType param0, void *param1, u32 param2);

static NintendoWFCManager *sNintendoWFCManager = NULL;

int NintendoWFC_Init(SaveData *saveData, enum HeapID heapID, int heapSize, int maxPlayers)
{
    void *wfcManAllocPtr;

    GF_ASSERT(sNintendoWFCManager == NULL);

    wfcManAllocPtr = Heap_Alloc(heapID, sizeof(NintendoWFCManager) + 32);
    MI_CpuClear8(wfcManAllocPtr, sizeof(NintendoWFCManager) + 32);

    sNintendoWFCManager = (NintendoWFCManager *)(((u32)wfcManAllocPtr + 31) / 32 * 32);
    sNintendoWFCManager->allocStartPtr = wfcManAllocPtr;
    sNintendoWFCManager->saveData = saveData;
    sNintendoWFCManager->dataTransferServerCallback = NULL;
    sNintendoWFCManager->dataTransferClientCallback = NULL;
    sNintendoWFCManager->fatalErrorCallback = NULL;
    sNintendoWFCManager->state = WFC_STATE_INIT;
    sNintendoWFCManager->primaryHeapID = heapID;
    sNintendoWFCManager->secondaryHeapID = heapID;
    sNintendoWFCManager->heapSize = heapSize;
    sNintendoWFCManager->heap1AllocPtr = Heap_Alloc(heapID, heapSize + (RECEIVE_BUFFER_SIZE * 3) + 32);
    sNintendoWFCManager->heap2AllocPtr = NULL;
    sNintendoWFCManager->heap1 = NNS_FndCreateExpHeap((void *)(((u32)sNintendoWFCManager->heap1AllocPtr + 31) / 32 * 32), heapSize);
    sNintendoWFCManager->heap2 = NULL;
    sNintendoWFCManager->voiceChatCodec = 0;
    sNintendoWFCManager->hostFriendIdx = -1;
    sNintendoWFCManager->nextFriendIdx = 0;
    sNintendoWFCManager->maxPlayers = maxPlayers;
    sNintendoWFCManager->voiceConnectedIDs = 0;
    sNintendoWFCManager->matchmakingAIDBitmap = 0;
    sNintendoWFCManager->latestNewClientFriendIdx = -1;
    sNintendoWFCManager->voiceChatEnabled = TRUE;
    sNintendoWFCManager->dummy_10D2 = 0;
    sNintendoWFCManager->timer = 0;
    sNintendoWFCManager->packetsSent = 0;
    sNintendoWFCManager->unused_10D1 = 0;
    sNintendoWFCManager->inVoiceChatLobby = 1;
    sNintendoWFCManager->otherPlayersEnabledVoiceChat = 1;
    sNintendoWFCManager->voiceChatEnabled_Battles = 1;

    if (saveData != NULL) {
        sNintendoWFCManager->userData = WiFiList_GetUserData(SaveData_GetWiFiList(sNintendoWFCManager->saveData));
        sNintendoWFCManager->friends = sub_0202AED8(SaveData_GetWiFiList(sNintendoWFCManager->saveData), 0);
    }

    sNintendoWFCManager->disconnectIfAlone = TRUE;
    sNintendoWFCManager->friendStatusesBuffer = NULL;

    {
        int v1;

        for (v1 = 0; v1 < MAX_FRIENDS; v1++) {
            sNintendoWFCManager->friendConnStatus[v1] = DWC_STATUS_OFFLINE;
        }
    }

    DebugCheckProfileAndFriends();

    if (!DWC_CheckHasProfile(sNintendoWFCManager->userData)) {
        return 1;
    }

    if (!DWC_CheckValidConsole(sNintendoWFCManager->userData)) {
        return 2;
    }

    return 0;
}

static void NintendoWFC_Cleanup(void)
{
    if (sNintendoWFCManager) {
        FreeAllReceiveBuffers();

        if (sNintendoWFCManager->heap2AllocPtr != NULL) {
            NNS_FndDestroyExpHeap(sNintendoWFCManager->heap2);
            Heap_Free(sNintendoWFCManager->heap2AllocPtr);
            sNintendoWFCManager->heap2AllocPtr = NULL;
        }

        NNS_FndDestroyExpHeap(sNintendoWFCManager->heap1);

        Heap_FreeExplicit(sNintendoWFCManager->primaryHeapID, sNintendoWFCManager->heap1AllocPtr);
        Heap_FreeExplicit(sNintendoWFCManager->primaryHeapID, sNintendoWFCManager->allocStartPtr);

        sNintendoWFCManager = NULL;
    }

    DWC_ClearError();
}

int NintendoWFC_ConnectToDWCServer()
{
    switch (sNintendoWFCManager->state) {
    case WFC_STATE_INIT: {
        DWC_SetMemFunc(NintendoWFCAlloc, NintendoWFCFree);
        DWC_InitInetEx(&sNintendoWFCManager->inetCtl, DEFAULT_DWC_DMA_NUMBER, DEFAULT_DWC_POWER_MODE, DEFAULT_DWC_SSL_PRIORITY);
        DWC_SetAuthServer(DWC_CONNECTINET_AUTH_RELEASE);
        DWC_ConnectInetAsync();

        sNintendoWFCManager->state = WFC_STATE_WAIT_CONNECTION;
        sNintendoWFCManager->voiceChatActive = FALSE;
    }
    case WFC_STATE_WAIT_CONNECTION: {
        if (DWC_CheckInet()) {
            if (DWC_GetInetStatus() == DWC_CONNECTINET_STATE_CONNECTED) {
                sNintendoWFCManager->state = WFC_STATE_INIT_LOGIN;
            } else {
                sNintendoWFCManager->state = WFC_STATE_CONNECTION_ERROR;
            }
        } else {
            DWC_ProcessInet();
            break;
        }
    }
    case WFC_STATE_INIT_LOGIN: {
        int error = NintendoWFC_HandleError();

        if (error != DWC_ERROR_NONE) {
            return error;
        }
    }

        DWC_InitFriendsMatch(&(sNintendoWFCManager->friendsMatchCtl), (sNintendoWFCManager->userData), 10727, "pokemondpds", "1vTlwb", 0, 0, sNintendoWFCManager->friends, MAX_FRIENDS);

        OSOwnerInfo ownerInfo;
        OS_GetOwnerInfo(&ownerInfo);
        DWC_LoginAsync(ownerInfo.nickName, NULL, LoginCompleteCallback, NULL);

        sNintendoWFCManager->state = WFC_STATE_WAIT_FOR_LOGIN;
        // Fallthrough
    case WFC_STATE_WAIT_FOR_LOGIN:
        DWC_ProcessFriendsMatch();
        break;
    case WFC_STATE_READY:
        DWC_ProcessFriendsMatch();
        return NINTENDO_WFC_RESULT_CONNECTED_TO_SERVER;
    default:
        break;
    }

    return NintendoWFC_HandleError();
}

void NintendoDWC_SetDataTransferCallbacks(NintendoWFCDataTransferCallback serverCallback, NintendoWFCDataTransferCallback clientCallback)
{
    sNintendoWFCManager->dataTransferServerCallback = serverCallback;
    sNintendoWFCManager->dataTransferClientCallback = clientCallback;
}

void NintendoWFC_SetConnectionClosedCB(NintendoWFCConnectionClosedCB callback, void *callbackArg)
{
    sNintendoWFCManager->connectionClosedCallback = callback;
    sNintendoWFCManager->connectionClosedCBArg = callbackArg;
}

void NintendoWFC_SetHostMAtchCallback(NintendoWFCHostMatchCallback callback)
{
    sNintendoWFCManager->hostMatchCallback = callback;
}

void NintendoWFC_SetNewClientCallback(NintendoWFCNewClientCallback callback, void *callbackArg)
{
    sNintendoWFCManager->newClientCallback = callback;
    sNintendoWFCManager->newClientCallbackArg = callbackArg;
}

const static char sPPWMatchKeyFmt[] = "%s = \'%s\'";

BOOL NintendoWFC_StartPublicMatchmaking(u8 *matchmakingString, int maxPlayers, BOOL param2, u32 timeout)
{
    GF_ASSERT(sNintendoWFCManager != NULL);

    if (sNintendoWFCManager->state != WFC_STATE_READY) {
        return FALSE;
    }

    FreeAllReceiveBuffers();

    int result; // actually of an untagged enum type
    DWCMatchOptMinComplete matchOpts = { .valid = TRUE, .minEntry = 2, .timeout = 0 };

    matchOpts.timeout = timeout * 1000;
    result = DWC_SetMatchingOption(DWC_MATCH_OPTION_MIN_COMPLETE, &matchOpts, sizeof(matchOpts));

    GF_ASSERT(result == DWC_SET_MATCH_OPT_RESULT_SUCCESS);

    GF_ASSERT(DWC_AddMatchKeyString(0, PPW_LOBBY_MATCHMAKING_KEY, (const char *)matchmakingString) != 0);

    MI_CpuClear8(sNintendoWFCManager->ppwMatchKey, PPW_MATCH_KEY_LENGTH);
    sprintf((char *)sNintendoWFCManager->ppwMatchKey, sPPWMatchKeyFmt, PPW_LOBBY_MATCHMAKING_KEY, matchmakingString);
    GF_ASSERT(strlen((const char *)sNintendoWFCManager->ppwMatchKey) < PPW_MATCH_KEY_LENGTH);

    if (param2) {
        DWC_AddMatchKeyString(1, (const char *)sNintendoWFCManager->ppwMatchKey, (const char *)sNintendoWFCManager->ppwMatchKey);
    }

    sNintendoWFCManager->state = WFC_STATE_WAIT_MATCHMAKING;
    sNintendoWFCManager->maxPlayers = maxPlayers;
    DWC_ConnectToAnybodyAsync(maxPlayers, (const char *)sNintendoWFCManager->ppwMatchKey, MatchmakingLobbyMatchedCallback, NULL, DummyPlayerEvalCallback, NULL);
    sNintendoWFCManager->connectionRole = 0;

    DWC_SetUserSendCallback(SendCallback);
    DWC_SetUserRecvCallback(ReceiveCallback);
    DWC_SetConnectionClosedCallback(ConnectionClosedCallback, NULL);
    DWC_SetUserRecvTimeoutCallback(ReceiveTimeoutCallback);

    sNintendoWFCManager->dataSent = 0;
    sNintendoWFCManager->disconnectIfAlone = TRUE;

    return TRUE;
}

static void SetWFCStateToReset()
{
    if (sNintendoWFCManager->state == WFC_STATE_HOST_DISCONNECTED) {
        sNintendoWFCManager->state = WFC_STATE_RESET_AFTER_HOST_LEFT;
    } else {
        sNintendoWFCManager->state = WFC_STATE_RESET_AFTER_DISCONNECT;
    }
}

int NintendoWFC_Process(BOOL cancelConnection)
{
    switch (sNintendoWFCManager->state) {
    case WFC_STATE_WAIT_MATCHMAKING:
        if (cancelConnection) {
            sNintendoWFCManager->state = WFC_STATE_FORCE_CANCEL;
        }

        if (sNintendoWFCManager->connectionRole == WFC_CONNECTION_CLIENT
            && sNintendoWFCManager->hostFriendIdx >= 0
            && sNintendoWFCManager->friendConnStatus[sNintendoWFCManager->hostFriendIdx] != DWC_STATUS_MATCH_SC_SV) {
            sNintendoWFCManager->state = WFC_STATE_HOST_DISCONNECTED;
        }

        break;
    case WFC_STATE_FORCE_CANCEL:
    case WFC_STATE_HOST_DISCONNECTED:
        if (sNintendoWFCManager->connectionRole == WFC_CONNECTION_NONE) {
            DWC_CancelMatching();
        } else {
            DWC_CloseAllConnectionsHard();
            SetWFCStateToReset();
        }
        break;
    case WFC_STATE_MATCHMAKING_SUCCESS:
        if (!sub_0203272C(sub_0203895C())) {
            NintendoWFC_StartVoiceChat(sNintendoWFCManager->primaryHeapID);
        }

        if (sNintendoWFCManager->voiceChatEnabled) {
            sNintendoWFCManager->inVoiceChatLobby = TRUE;
        } else {
            sNintendoWFCManager->inVoiceChatLobby = FALSE;
        }

        sNintendoWFCManager->state = WFC_STATE_WAIT_AFTER_MATCHMAKING_SUCCESS;
        return NINTENDO_WFC_RESULT_MATCHMAKING_SUCCESS;
    case WFC_STATE_RESET_AFTER_DISCONNECT:
        sNintendoWFCManager->state = WFC_STATE_READY;
        sNintendoWFCManager->dataSent = FALSE;
        sNintendoWFCManager->latestNewClientFriendIdx = -1;
        return NINTENDO_WFC_RESULT_CONN_RESET;
    case WFC_STATE_RESET_AFTER_HOST_LEFT:
        sNintendoWFCManager->state = WFC_STATE_READY;
        sNintendoWFCManager->dataSent = FALSE;
        sNintendoWFCManager->latestNewClientFriendIdx = -1;
        return NINTENDO_WFC_RESULT_CONN_RESET_AFTER_HOST_LEFT;
    case WFC_STATE_CONNECTION_ERROR:
        return NintendoWFC_HandleError();
    case WFC_STATE_CLOSE_CONNECTION:
        if (sNintendoWFCManager->voiceChatActive == FALSE) {
            DWC_CloseAllConnectionsHard();
            sNintendoWFCManager->state = WFC_STATE_CONNECTION_CLOSED;
            break;
        }
    default:
        break;
    }

    return ProcessConnectionForFrame();
}

BOOL NintendoWFC_HasDataQueued()
{
    return sNintendoWFCManager->dataSent == FALSE && CanSendToAll();
}

BOOL NintendoWFC_SendData_Server(void *data, int size)
{
    if (!(size < 256)) {
        return FALSE;
    }

    if (DWC_GetMyAID() == 0) {
        if (sNintendoWFCManager->dataTransferServerCallback != NULL) {
            sNintendoWFCManager->dataTransferServerCallback(0, data, size);
        }

        return TRUE;
    } else {
        if (sNintendoWFCManager->dataSent || !CanSendToAll()) {
            return FALSE;
        }

        *((u32 *)sNintendoWFCManager->sendBuffer) = 0x1 | (sNintendoWFCManager->inVoiceChatLobby << 8);
        sNintendoWFCManager->sendBuffer[2] = ++sNintendoWFCManager->packetsSent;

        MI_CpuCopy8(data, &(sNintendoWFCManager->sendBuffer[4]), size);
        sNintendoWFCManager->dataSent = 1;

        DWC_SendReliableBitmap(0x1, sNintendoWFCManager->sendBuffer, size + 4);

        return TRUE;
    }
}

int NintendoWFC_SendData_Client(void *data, int size)
{
    if (!(size < 256)) {
        return FALSE;
    }

    if (!(DWC_GetMyAID() == 0)) {
        return FALSE;
    }

    if (sNintendoWFCManager->dataSent || !CanSendToAll()) {
        return FALSE;
    }

    *((u32 *)sNintendoWFCManager->sendBuffer) = 0x1 | (sNintendoWFCManager->inVoiceChatLobby << 8);
    sNintendoWFCManager->sendBuffer[2] = ++sNintendoWFCManager->packetsSent;
    MI_CpuCopy8(data, &(sNintendoWFCManager->sendBuffer[4]), size);
    sNintendoWFCManager->dataSent = TRUE;

    if (!DWC_SendReliableBitmap(DWC_GetAIDBitmap(), sNintendoWFCManager->sendBuffer, size + 4)) {
        sNintendoWFCManager->dataSent = FALSE;
        return FALSE;
    }

    if (sNintendoWFCManager->dataTransferClientCallback != NULL) {
        sNintendoWFCManager->dataTransferClientCallback(0, data, size);
    }

    return TRUE;
}

BOOL NintendoWFC_SendData(void *param0, int param1)
{
    u16 v0;

    if (!(param1 < 256)) {
        return FALSE;
    }

    if (sNintendoWFCManager->dataSent || !CanSendToAll()) {
        return FALSE;
    }

    *((u32 *)sNintendoWFCManager->sendBuffer) = 0x1 | (sNintendoWFCManager->inVoiceChatLobby << 8);
    sNintendoWFCManager->sendBuffer[2] = ++sNintendoWFCManager->packetsSent;
    MI_CpuCopy8(param0, &(sNintendoWFCManager->sendBuffer[4]), param1);
    sNintendoWFCManager->dataSent = 1;

    v0 = DWC_GetAIDBitmap();

    if (v0 != DWC_SendReliableBitmap(v0, sNintendoWFCManager->sendBuffer, param1 + 4)) {
        sNintendoWFCManager->dataSent = 0;
        return FALSE;
    }

    if (sNintendoWFCManager->dataTransferClientCallback != NULL) {
        sNintendoWFCManager->dataTransferClientCallback(DWC_GetMyAID(), param0, param1);
    }

    return TRUE;
}

static void LoginCompleteCallback(DWCError error, int profileID, void *extraParam)
{
    BOOL v0;

    if (DWC_CheckDirtyFlag(sNintendoWFCManager->userData)) {
        DWC_ClearDirtyFlag(sNintendoWFCManager->userData);
        sNintendoWFCManager->needsGameSave = TRUE;
    }

    if (error == DWC_ERROR_NONE) {
        v0 = DWC_UpdateServersAsync(NULL, UpdateServersCallback, sNintendoWFCManager->userData, DummyFriendStatusCallback, extraParam, DeleteFriendCallback, extraParam);

        if (v0 == 0) {
            Link_SetErrorState(TRUE);
            return;
        }

        DWC_SetBuddyFriendCallback(DummyWFCBuddyFriendCB, NULL);
    } else {
        sNintendoWFCManager->state = WFC_STATE_CONNECTION_ERROR;
    }
}

static void ReceiveTimeoutCallback(u8 param0)
{
    if (sNintendoWFCManager->unk_109C) {
        DWC_CloseAllConnectionsHard();
        sNintendoWFCManager->latestNewClientFriendIdx = -1;
        sNintendoWFCManager->state = WFC_STATE_RECEIVE_TIMED_OUT;
    }
}

static void UpdateServersCallback(DWCError error, BOOL friendListChanged, void *extraParam)
{
    if (error == DWC_ERROR_NONE) {
        sNintendoWFCManager->state = WFC_STATE_READY;
    } else {
        sNintendoWFCManager->state = WFC_STATE_CONNECTION_ERROR;
    }
}

static void DummyFriendStatusCallback(int friendIdx, u8 status, const char *statusString, void *extraParam)
{
    return;
}

static void DeleteFriendCallback(int deletedFriendIdx, int duplicateFriendIdx, void *extraParam)
{
    MI_CpuCopy8(sNintendoWFCManager->friends, sub_0202AED8(SaveData_GetWiFiList(sNintendoWFCManager->saveData), 0), MAX_FRIENDS * sizeof(DWCFriendData));

    sub_0202B270(SaveData_GetWiFiList(sNintendoWFCManager->saveData), deletedFriendIdx, duplicateFriendIdx);
    sub_020307F0(SaveData_GetBattleFrontier(sNintendoWFCManager->saveData), deletedFriendIdx, duplicateFriendIdx);
}

static void DummyWFCBuddyFriendCB(int param0, void *param1)
{
    return;
}

static void ClearAllClientUpdateTimers(void)
{
    MI_CpuClear8(sNintendoWFCManager->clientUpdateTimers, sizeof(sNintendoWFCManager->clientUpdateTimers));
}

static void ResetTimeoutTimers(void)
{
    int i;

    for (i = 0; i < 4; i++) {
        DWC_SetRecvTimeoutTime(i, 0);
    }

    if (DWC_GetMyAID() == 0) {
        for (i = 0; i < sNintendoWFCManager->maxPlayers; i++) {
            if (DWC_GetMyAID() != i) {
                if (DWC_GetAIDBitmap() & (0x1 << i)) {
                    GF_ASSERT(DWC_SetRecvTimeoutTime(i, 10 * 1000));
                }
            }
        }
    } else {
        GF_ASSERT(DWC_SetRecvTimeoutTime(0, 10 * 1000));
    }

    sNintendoWFCManager->unk_109C = 1;
    ClearAllClientUpdateTimers();
}

static void CreateAllReceiveBuffers(int unused)
{
    int v0, v1;

    sNintendoWFCManager->state = WFC_STATE_MATCHMAKING_SUCCESS;

    for (v0 = 0, v1 = 0; v0 < sNintendoWFCManager->maxPlayers; v0++) {
        if (DWC_GetMyAID() != v0) {
            CreateReceiveBuffer(v0);
        }
    }

    ResetTimeoutTimers();
}

static void MatchmakingLobbyMatchedCallback(DWCError error, BOOL canceled, void *extraParam)
{
    if (error == DWC_ERROR_NONE) {
        if (!canceled) {
            CreateAllReceiveBuffers(1 - DWC_GetMyAID());
        } else {
            SetWFCStateToReset();
        }
    } else {
        sNintendoWFCManager->state = WFC_STATE_CONNECTION_ERROR;
    }

    if (sNintendoWFCManager->newClientCallback) {
        sNintendoWFCManager->newClientCallback(DWC_GetMyAID(), sNintendoWFCManager->newClientCallbackArg);
    }
}

static BOOL DummyPlayerEvalCallback(int param0, void *param1)
{
    return TRUE;
}

static void SendCallback(int unused, u8 id)
{
    sNintendoWFCManager->dataSent = 0;
    sNintendoWFCManager->clientUpdateTimers[id] = 0;
}

static void SetOtherPlayersEnabledVC(u32 header)
{
    if (!sub_0203272C(sub_0203895C())) {
        if (header & 0x100) {
            sNintendoWFCManager->otherPlayersEnabledVoiceChat = TRUE;
        } else {
            sNintendoWFCManager->otherPlayersEnabledVoiceChat = FALSE;
        }
    }
}

static void ReceiveCallback(u8 aid, u8 *data, int length)
{
    u32 headerU32;
    headerU32 = (data[3] << 24) | (data[2] << 16) | (data[1] << 8) | data[0];

    sNintendoWFCManager->unk_109C = 1;

    if ((headerU32 & 0xff) == 0x1) {
        SetOtherPlayersEnabledVC(headerU32);
        sNintendoWFCManager->unused_10D1 = data[2];
    } else {
        if (VoiceChat_ProcessReceivedData(aid, data, length)) {
            return;
        }

        SetOtherPlayersEnabledVC(headerU32);
        return;
    }

    {
        u16 *v1 = (u16 *)NintendoWFCAlloc(NULL, length - 4, 4);

        if (v1 == NULL) {
            return;
        }

        MI_CpuCopy8(data + 4, (void *)v1, length - 4);

        if (DWC_GetMyAID() == 0) {
            if (sNintendoWFCManager->dataTransferServerCallback != NULL) {
                sNintendoWFCManager->dataTransferServerCallback(aid, v1, length - 4);
            }
        } else {
            if (sNintendoWFCManager->dataTransferClientCallback != NULL) {
                sNintendoWFCManager->dataTransferClientCallback(aid, v1, length - 4);
            }
        }

        NintendoWFCFree(NULL, v1, length - 4);
    }
}

static void ConnectionClosedCallback(DWCError param0, BOOL param1, BOOL param2, u8 param3, int param4, void *param5)
{
#pragma unused(param5, param4)

    sNintendoWFCManager->dataSent = 0;
    sNintendoWFCManager->timer = 0;
    sNintendoWFCManager->unused_1094 = 0;

    if (param0 == DWC_ERROR_NONE) {
        if (sNintendoWFCManager->disconnectIfAlone == TRUE && DWC_GetNumConnectionHost() == 1) {
            if (sNintendoWFCManager->state != WFC_STATE_FORCE_CANCEL) {
                sNintendoWFCManager->state = WFC_STATE_CLOSE_CONNECTION;
            }

            if (sNintendoWFCManager->voiceChatActive) {
                NintendoWFC_TerminateVoiceChat();
            }
        }
    }

    if (sNintendoWFCManager->connectionClosedCallback) {
        sNintendoWFCManager->connectionClosedCallback(param3, sNintendoWFCManager->connectionClosedCBArg);
    }
}

static void *NintendoWFCAlloc(DWCAllocType allocType, u32 size, int alignment)
{
#pragma unused(allocType)
    void *v0;
    OSIntrMode v1;

    v1 = OS_DisableInterrupts();
    v0 = NNS_FndAllocFromExpHeapEx(sNintendoWFCManager->heap1, size, alignment);

    if (v0 == NULL && sNintendoWFCManager->heap2AllocPtr != NULL) {
        v0 = NNS_FndAllocFromExpHeapEx(sNintendoWFCManager->heap2, size, alignment);
    }

    if (v0 == NULL) {
        Link_SetErrorState(1);
        OS_RestoreInterrupts(v1);

        return NULL;
    }

    OS_RestoreInterrupts(v1);

    return v0;
}

static void NintendoWFCFree(DWCAllocType allocType, void *ptr, u32 unused)
{
#pragma unused(allocType, unused)
    OSIntrMode v0;
    u16 v1;

    if (!ptr) {
        return;
    }

    v0 = OS_DisableInterrupts();
    v1 = NNS_FndGetGroupIDForMBlockExpHeap(ptr);

    if (v1 == 16) {
        if (sNintendoWFCManager->heap2AllocPtr == NULL) {
            Link_SetErrorState(1);
            return;
        }

        NNS_FndFreeToExpHeap(sNintendoWFCManager->heap2, ptr);
    } else {
        NNS_FndFreeToExpHeap(sNintendoWFCManager->heap1, ptr);
    }

    OS_RestoreInterrupts(v0);
}

int NintendoWFC_HandleError(void)
{
    DWCError errorCode;
    DWCErrorType errorType;
    DWCError error;
    int ret = DWC_ERROR_NONE;

    error = DWC_GetLastErrorEx((int *)&errorCode, &errorType);

    if (error != 0) {
        ret = errorCode;

        if ((errorCode == 0) || (errorType == DWC_ETYPE_LIGHT)) {
            ret = error;
        }

        switch (errorType) {
        case DWC_ETYPE_LIGHT:
            DWC_ClearError();
            break;
        case DWC_ETYPE_SHOW_ERROR:
            DWC_ClearError();
            break;
        case DWC_ETYPE_SHUTDOWN_FM:
        case DWC_ETYPE_SHUTDOWN_GHTTP:
        case DWC_ETYPE_SHUTDOWN_ND:
        case DWC_ETYPE_DISCONNECT:
            if (sNintendoWFCManager) {
                switch (sNintendoWFCManager->state) {
                case WFC_STATE_WAIT_FOR_LOGIN:
                case WFC_STATE_READY:
                case WFC_STATE_WAIT_MATCHMAKING:
                case WFC_STATE_FORCE_CANCEL:
                case WFC_STATE_MATCHMAKING_SUCCESS:
                case WFC_STATE_WAIT_AFTER_MATCHMAKING_SUCCESS:
                case WFC_STATE_RESET_AFTER_DISCONNECT:
                case WFC_STATE_CONNECTION_ERROR:
                case WFC_STATE_RECEIVE_TIMED_OUT:
                case WFC_STATE_CLOSE_CONNECTION:
                case WFC_STATE_CONNECTION_CLOSED:
                    DWC_ShutdownFriendsMatch();
                case WFC_STATE_INIT:
                case WFC_STATE_WAIT_CONNECTION:
                case WFC_STATE_INIT_LOGIN:
                    if (sub_0203895C() != 33) {
                        DWC_CleanupInet();
                    }
                default:
                    break;
                }

                DWC_ClearError();
            }

            if (sNintendoWFCManager) {
                sNintendoWFCManager->state = WFC_STATE_ERROR_DISCONNECTED;
            }
            break;
        case DWC_ETYPE_FATAL:
            if (sNintendoWFCManager) {
                sNintendoWFCManager->state = WFC_STATE_FATAL_ERROR;

                if (sNintendoWFCManager->fatalErrorCallback != NULL) {
                    sNintendoWFCManager->fatalErrorCallback(-errorCode);
                }
            }
            break;
        }
    }

    if (sNintendoWFCManager->dummy_10D2) {
        ret = NINTENDO_WFC_RESULT_DUMMY_6;
    }

    if (error != 0) {
        sub_02037F94(errorCode, errorType, error);
    }

    return ret;
}

static BOOL CanSendToAll(void)
{
    int i;
    BOOL ret = FALSE;

    for (i = 0; i < sNintendoWFCManager->maxPlayers; i++) {
        if (DWC_GetMyAID() == i) {
            continue;
        }

        if (DWC_IsValidAID(i)) {
            ret = TRUE;

            if (!DWC_IsSendableReliable(i)) {
                return FALSE;
            }
        }
    }

    return ret;
}

static BOOL SendHeaderToConnectedClients(int timerIDx)
{
    if (sNintendoWFCManager->dataSent == 0 && CanSendToAll() && ((u16)~1 & DWC_GetAIDBitmap())) {
        sNintendoWFCManager->dataSent = 1;
        *(u32 *)sNintendoWFCManager->sendBuffer = 0x2 | (sNintendoWFCManager->inVoiceChatLobby << 8);

        DWC_SendReliableBitmap(DWC_GetAIDBitmap(), sNintendoWFCManager->sendBuffer, 4);

        sNintendoWFCManager->clientUpdateTimers[timerIDx] = 0;

        return TRUE;
    }

    return FALSE;
}

static int ProcessConnectionForFrame(void)
{
    int i, error;

    DWC_ProcessFriendsMatch();
    GetNextFriendStatus();

    if (sNintendoWFCManager->voiceChatActive) {
        if ((sNintendoWFCManager->inVoiceChatLobby == 1) && (sNintendoWFCManager->otherPlayersEnabledVoiceChat == 1) && (sNintendoWFCManager->voiceChatEnabled_Battles == 1)) {
            VoiceChat_Enable();
        } else {
            VoiceChat_Disable();
        }

        VoiceChat_Main();

        if (sNintendoWFCManager->voiceConnectedIDs != DWC_GetAIDBitmap()) {
            if (!sNintendoWFCManager->dummy_10D3 && sNintendoWFCManager->voiceChatEnabled) {
                if (VoiceChat_AddConferenceClients(DWC_GetAIDBitmap(), DWC_GetMyAID())) {
                    sNintendoWFCManager->voiceConnectedIDs = DWC_GetAIDBitmap();
                }
            }
        }
    }

    if (sNintendoWFCManager->state == WFC_STATE_RECEIVE_TIMED_OUT) {
        error = NintendoWFC_HandleError();

        if (error != 0) {
            return error;
        }

        return NINTENDO_WFC_RESULT_RECEIVE_TIMED_OUT;
    }

    if (sNintendoWFCManager->state == WFC_STATE_CONNECTION_CLOSED) {
        return NINTENDO_WFC_RESULT_CONNECTION_CLOSED;
    }

    if ((sNintendoWFCManager->state == WFC_STATE_MATCHMAKING_SUCCESS) || (sNintendoWFCManager->state == WFC_STATE_WAIT_AFTER_MATCHMAKING_SUCCESS)) {
        for (i = 0; i < sNintendoWFCManager->maxPlayers; i++) {
            if (sNintendoWFCManager->clientUpdateTimers[i]++ >= 120 && sNintendoWFCManager->dataSent == FALSE) {
                if (SendHeaderToConnectedClients(i)) {
                    ClearAllClientUpdateTimers();
                    break;
                }
            }
        }
    }

    return NintendoWFC_HandleError();
}

int NintendoWFC_GetNetID()
{
    if (sNintendoWFCManager) {
        if ((sNintendoWFCManager->state == WFC_STATE_MATCHMAKING_SUCCESS) || (sNintendoWFCManager->state == WFC_STATE_WAIT_AFTER_MATCHMAKING_SUCCESS) || (sNintendoWFCManager->state == WFC_STATE_CLOSE_CONNECTION)) {
            return DWC_GetMyAID();
        }
    }

    return -1;
}

static void DisableVoiceChat()
{
    sNintendoWFCManager->voiceChatActive = FALSE;
}

void NintendoWFC_StartVoiceChat(enum HeapID heapID)
{
    int v0;
    int v1 = 1;
    BOOL v2 = sub_0203272C(sub_0203895C());

    if (v2) {
        v1 = CommSys_ConnectedCount() - 1;

        if (v1 < 1) {
            v1 = 1;
        }

        sNintendoWFCManager->inVoiceChatLobby = TRUE;
        sNintendoWFCManager->otherPlayersEnabledVoiceChat = TRUE;
        sNintendoWFCManager->voiceChatEnabled_Battles = TRUE;
    }

    if (sNintendoWFCManager->voiceChatActive == FALSE) {
        switch (sNintendoWFCManager->voiceChatCodec) {
        case 2:
            v0 = VCT_CODEC_G711_ULAW;
            break;
        case 3:
            v0 = VCT_CODEC_2BIT_ADPCM;
            break;
        case 4:
            v0 = VCT_CODEC_3BIT_ADPCM;
            break;
        case 5:
            v0 = VCT_CODEC_4BIT_ADPCM;
            break;
        default:
            if (!v2) {
                v0 = VCT_CODEC_4BIT_ADPCM;
            } else {
                v0 = VCT_CODEC_3BIT_ADPCM;
            }
            break;
        }

        VoiceChat_Start(heapID, v0, v1);
        VoiceChat_SetCleanupCallback(DisableVoiceChat);

        sNintendoWFCManager->voiceChatActive = TRUE;
    }
}

void NintendoWFC_TerminateVoiceChat(void)
{
    VoiceChat_Stop();

    if (sNintendoWFCManager != NULL) {
        sNintendoWFCManager->voiceChatActive = FALSE;
        sNintendoWFCManager->voiceConnectedIDs = 0;
    }
}

int NintendoWFC_GetErrorCode(int param0, int param1)
{
    int v0 = param0 / 100;
    int v1 = param0 / 1000;

    if (param0 == 20101) {
        return 1;
    }

    if (v1 == 23) {
        return 1;
    }

    if (param0 == 20108) {
        return 2;
    }

    if (param0 == 20110) {
        return 3;
    }

    if (v0 == 512) {
        return 4;
    }

    if (v0 == 500) {
        return 5;
    }

    if (param0 == 51103) {
        return 7;
    }

    if (v0 == 510) {
        return 6;
    }

    if (v0 == 511) {
        return 6;
    }

    if (v0 == 513) {
        return 6;
    }

    if ((param0 >= 52000) && (param0 <= 52003)) {
        return 8;
    }

    if ((param0 >= 52100) && (param0 <= 52103)) {
        return 8;
    }

    if ((param0 >= 52200) && (param0 <= 52203)) {
        return 8;
    }

    if (param0 == 80430) {
        return 9;
    }

    if (v1 == 20) {
        return 0;
    }

    if (v0 == 520) {
        return 0;
    }

    if (v0 == 521) {
        return 0;
    }

    if (v0 == 522) {
        return 0;
    }

    if (v0 == 523) {
        return 0;
    }

    if (v0 == 530) {
        return 0;
    }

    if (v0 == 531) {
        return 0;
    }

    if (v0 == 532) {
        return 0;
    }

    if (param0 < 10000) {
        return 14;
    }

    if (v1 == 31) {
        return 12;
    }

    switch (param1) {
    case DWC_ETYPE_NO_ERROR:
    case DWC_ETYPE_LIGHT:
    case DWC_ETYPE_SHOW_ERROR:
        return 11;
    case DWC_ETYPE_SHUTDOWN_FM:
    case DWC_ETYPE_SHUTDOWN_GHTTP:
    case DWC_ETYPE_SHUTDOWN_ND:
    case DWC_ETYPE_DISCONNECT:
        return 10;
    default:
        GF_ASSERT(0);
        break;
    case DWC_ETYPE_FATAL:
        return 15;
    }

    return -1;
}

BOOL NintendoWFC_EndConnection(BOOL isClient)
{
    if (isClient == FALSE) {
        switch (sNintendoWFCManager->state) {
        case WFC_STATE_WAIT_MATCHMAKING:
        case WFC_STATE_MATCHMAKING_SUCCESS:
        case WFC_STATE_WAIT_AFTER_MATCHMAKING_SUCCESS:
            if (sNintendoWFCManager->voiceChatActive) {
                VoiceChat_RequestEnd();
            }

            sNintendoWFCManager->state = WFC_STATE_CLOSE_CONNECTION;
            break;
        case WFC_STATE_READY:
        case WFC_STATE_ERROR_DISCONNECTED:
        case WFC_STATE_CONNECTION_CLOSED:
        case WFC_STATE_RECEIVE_TIMED_OUT:
            return TRUE;
        default:
            break;
        }
    } else {
        switch (sNintendoWFCManager->state) {
        case WFC_STATE_READY:
        case WFC_STATE_CONNECTION_CLOSED:
        case WFC_STATE_RECEIVE_TIMED_OUT:
            return TRUE;
        default:
            break;
        }
    }

    return FALSE;
}

BOOL NintendoWFC_ReturnToReadyState(void)
{
    if ((sNintendoWFCManager->state == WFC_STATE_CONNECTION_CLOSED) || (sNintendoWFCManager->state == WFC_STATE_RECEIVE_TIMED_OUT) || (sNintendoWFCManager->state == WFC_STATE_READY)) {
        sNintendoWFCManager->state = WFC_STATE_READY;
        sNintendoWFCManager->latestNewClientFriendIdx = -1;
        NintendoWFC_ResetMatchmakingCancelState();
        return TRUE;
    }

    return FALSE;
}

void NintendoWFC_SetFatalErrorCallback(void (*func)(int))
{
    if (sNintendoWFCManager) {
        sNintendoWFCManager->fatalErrorCallback = func;
    }
}

void NintendoWFC_Stop(void)
{
    DWC_ShutdownFriendsMatch();
    DWC_CleanupInet();

    NintendoWFC_TerminateVoiceChat();
    NintendoWFC_Cleanup();
}

void NintendoWFC_SetFriendStatusesBuffer(void *buffer, int friendStatusSize)
{
    sNintendoWFCManager->friendStatusesBuffer = buffer;
    sNintendoWFCManager->friendStatusSize = friendStatusSize;
}

static void GetNextFriendStatus(void)
{
    if (sNintendoWFCManager->friendStatusesBuffer == NULL) {
        return;
    }

    int currentFriendIdx = sNintendoWFCManager->nextFriendIdx % MAX_FRIENDS;
    int dummy;

    if (DWC_IsBuddyFriendData(&(sNintendoWFCManager->friends[currentFriendIdx]))) {
        sNintendoWFCManager->friendConnStatus[currentFriendIdx] = DWC_GetFriendStatusData(&sNintendoWFCManager->friends[currentFriendIdx], (void *)(((u32)sNintendoWFCManager->friendStatusesBuffer) + sNintendoWFCManager->friendStatusSize * currentFriendIdx), &dummy);
    }

    sNintendoWFCManager->nextFriendIdx = (sNintendoWFCManager->nextFriendIdx + 1) % MAX_FRIENDS;
}

BOOL NintendoWFC_SetStatusData(const void *param0, int size)
{
    return DWC_SetOwnStatusData(param0, size);
}

u8 NintendoWFC_GetFriendStatus(int friendIdx)
{
    return sNintendoWFCManager->friendConnStatus[friendIdx];
}

int NintendoWFC_StartConnectionWithFriends(int hostFriendIdx, int maxParties, BOOL isTwoPlayersOnly)
{
    int v0;

    if (NintendoWFC_GetNeedsGameSave()) {
        return -4;
    }

    if (sNintendoWFCManager->state != WFC_STATE_READY) {
        sNintendoWFCManager->timer++;

        if (sNintendoWFCManager->timer > 120) {
            return -3;
        }

        return -1;
    }

    FreeAllReceiveBuffers();

    sNintendoWFCManager->matchmakingAIDBitmap = 0;
    sNintendoWFCManager->disconnectIfAlone = TRUE;
    sNintendoWFCManager->hostFriendIdx = hostFriendIdx;
    sNintendoWFCManager->maxPlayers = maxParties;

    if (isTwoPlayersOnly) {
        maxParties = 2;
    }

    sNintendoWFCManager->unused_1094 = 1;

    if (hostFriendIdx < 0) {
        v0 = DWC_SetupGameServer((u8)maxParties, MatchmakingHostMatchedCallback, NULL, MatchmakingNewClientCallback, NULL);
        sNintendoWFCManager->connectionRole = WFC_CONNECTION_HOST;
    } else {
        v0 = DWC_ConnectToGameServerAsync(hostFriendIdx, MatchmakingClientMatchedCallback, NULL, MatchmakingNewClientCallback, NULL);
        sNintendoWFCManager->connectionRole = WFC_CONNECTION_CLIENT;
    }

    if (!v0) {
        sNintendoWFCManager->timer++;

        if (sNintendoWFCManager->timer > 120) {
            return -3;
        }

        return -2;
    }

    sNintendoWFCManager->timer = 0;
    sNintendoWFCManager->state = WFC_STATE_WAIT_MATCHMAKING;

    DWC_SetUserSendCallback(SendCallback);
    DWC_SetUserRecvCallback(ReceiveCallback);
    DWC_SetConnectionClosedCallback(ConnectionClosedCallback, NULL);
    DWC_SetUserRecvTimeoutCallback(ReceiveTimeoutCallback);

    sNintendoWFCManager->dataSent = FALSE;

    return 0;
}

int NintendoWFC_GetHostFriendIdx()
{
    if (sNintendoWFCManager) {
        return sNintendoWFCManager->hostFriendIdx;
    }

    return -1;
}

static void MatchmakingHostMatchedCallback(DWCError error, BOOL cancelled, BOOL isThisConsole, BOOL hostCancelled, int hostFriendIdx, void *extraParam)
{
    BOOL refuseNewConnections = FALSE;

    sNintendoWFCManager->unused_1094 = 0;

    if (error == DWC_ERROR_NONE) {
        if (!cancelled) {
            if (sub_02032740(sub_0203895C()) && (hostFriendIdx == WFC_NOT_A_FRIEND)) {
                refuseNewConnections = TRUE;
            }

            if (sNintendoWFCManager->hostMatchCallback) {
                if (0 == sNintendoWFCManager->hostMatchCallback(hostFriendIdx)) {
                    refuseNewConnections = TRUE;
                }
            }

            if (sNintendoWFCManager->matchmakingCancelState != MATCHMAKING_NOT_CANCELED || refuseNewConnections) {
                u32 newConnections = ~sNintendoWFCManager->matchmakingAIDBitmap & DWC_GetAIDBitmap();
                u32 connections = DWC_GetAIDBitmap();

                if (newConnections) {
                    DWC_CloseConnectionHardBitmap(&newConnections);

                    // Only this host console is still connected
                    if ((newConnections ^ connections) == 0x1) {
                        sNintendoWFCManager->state = WFC_STATE_FORCE_CANCEL;
                    }

                    return;
                }
            }

            sNintendoWFCManager->hostFriendIdx = hostFriendIdx;
            sNintendoWFCManager->matchmakingAIDBitmap = DWC_GetAIDBitmap();

            if (sNintendoWFCManager->matchmakingAIDBitmap == 0x1) {
                sNintendoWFCManager->state = WFC_STATE_FORCE_CANCEL;
            } else {
                CreateAllReceiveBuffers(hostFriendIdx);
            }
        } else if (!isThisConsole) {
            sNintendoWFCManager->latestNewClientFriendIdx = WFC_NOT_A_FRIEND;
        }
    }
}

static void MatchmakingClientMatchedCallback(DWCError error, BOOL cancelled, BOOL isThisConsole, BOOL hostCancelled, int hostFriendIdx, void *extraParam)
{
#pragma unused(extraParam)
    sNintendoWFCManager->unused_1094 = 0;

    if (error == DWC_ERROR_NONE && !cancelled) {
        CreateAllReceiveBuffers(hostFriendIdx);
    }
}

static void MatchmakingNewClientCallback(int friendIdx, void *extraParam)
{
#pragma unused(extraParam)

    sNintendoWFCManager->latestNewClientFriendIdx = friendIdx;

    if (sNintendoWFCManager->newClientCallback) {
        sNintendoWFCManager->newClientCallback(friendIdx, sNintendoWFCManager->newClientCallbackArg);
    }
}

static void DebugCheckProfileAndFriends(void)
{
    if (!DWC_CheckHasProfile(sNintendoWFCManager->userData)) {
        DWCFriendData friendData;
        DWC_CreateExchangeToken(sNintendoWFCManager->userData, &friendData);
    } else {
        DWCFriendData friendData;
        DWC_CreateExchangeToken(sNintendoWFCManager->userData, &friendData);
    }

    for (int i = 0; i < MAX_FRIENDS; i++) {
        DWC_GetFriendDataType(&sNintendoWFCManager->friends[i]);
        DWC_IsBuddyFriendData(&sNintendoWFCManager->friends[i]);
    }
}

BOOL NintendoWFC_IsPlayerSpeaking(void)
{
    return VoiceChat_DetectVoice();
}

BOOL NintendoWFC_GetVoiceChatEnabled(void)
{
    if (sNintendoWFCManager) {
        return sNintendoWFCManager->voiceChatEnabled;
    }

    return FALSE;
}

int NintendoWFC_GetLatestNewClientFriendIdx(void)
{
    if (sNintendoWFCManager) {
        return sNintendoWFCManager->latestNewClientFriendIdx;
    }

    return 0;
}

void NintendoWFC_SetVoiceChatEnabled(BOOL param0)
{
    sNintendoWFCManager->voiceChatEnabled = param0;
}

static void SendHeader()
{
    if (sNintendoWFCManager->dataSent || !CanSendToAll()) {
        sNintendoWFCManager->dataSent = 1;
        *((u32 *)sNintendoWFCManager->sendBuffer) = 0x2 | (sNintendoWFCManager->inVoiceChatLobby << 8);

        DWC_SendReliableBitmap(DWC_GetAIDBitmap(), sNintendoWFCManager->sendBuffer, 4);
        ClearAllClientUpdateTimers();
    }
}

void NintendoWFC_SetVoiceChatEnabled_Battle(BOOL param0)
{
    sNintendoWFCManager->voiceChatEnabled_Battles = param0;
}

static void MatchmakingCancelCallback(void *param0)
{
    sNintendoWFCManager->matchmakingCancelState = MATCHMAKING_CANCELED;
}

int NintendoWFC_CancelMatchmaking(void)
{
    if (sNintendoWFCManager->matchmakingCancelState == MATCHMAKING_NOT_CANCELED) {
        sNintendoWFCManager->matchmakingCancelState = MATCHMAKING_CANCEL_REQUESTED;
        DWC_StopSCMatchingAsync(MatchmakingCancelCallback, NULL);
    }

    return sNintendoWFCManager->matchmakingCancelState == MATCHMAKING_CANCELED;
}

void NintendoWFC_ResetMatchmakingCancelState(void)
{
    sNintendoWFCManager->matchmakingCancelState = MATCHMAKING_NOT_CANCELED;
}

int NintendoWFC_GetNumConnections(void)
{
    return DWC_GetNumConnectionHost();
}

void NintendoWFC_ManageSecondaryHeap(BOOL create, enum HeapID heapID)
{
    if (create) {
        sNintendoWFCManager->secondaryHeapID = HEAP_ID_FIELD2;

        if (sNintendoWFCManager->heap2AllocPtr == NULL) {
            sNintendoWFCManager->heap2AllocPtr = Heap_Alloc(heapID, 0xf000 + 32);
            sNintendoWFCManager->heap2 = NNS_FndCreateExpHeap((void *)(((u32)sNintendoWFCManager->heap2AllocPtr + 31) / 32 * 32), 0xf000);
            NNS_FndSetGroupIDForExpHeap(sNintendoWFCManager->heap2, 16);
            sNintendoWFCManager->heap2Size = NNS_FndGetTotalFreeSizeForExpHeap(sNintendoWFCManager->heap2);
        }
    } else {
        sNintendoWFCManager->secondaryHeapID = sNintendoWFCManager->primaryHeapID;

        if (sNintendoWFCManager->heap2AllocPtr != NULL) {
            if (NNS_FndGetTotalFreeSizeForExpHeap(sNintendoWFCManager->heap2) != sNintendoWFCManager->heap2Size) {
                Link_SetErrorState(1);
                return;
            }

            NNS_FndDestroyExpHeap(sNintendoWFCManager->heap2);
            Heap_Free(sNintendoWFCManager->heap2AllocPtr);

            sNintendoWFCManager->heap2AllocPtr = NULL;
        }
    }
}

void NintendoWFC_SetDisconnectIfAlone(BOOL param0)
{
    sNintendoWFCManager->disconnectIfAlone = param0;
}

static void FreeReceiveBuffer(int index)
{
    if (sNintendoWFCManager->receiveBuffers[index] != NULL) {
        if (sNintendoWFCManager->receiveBuffersOnGlobalHeap[index] == TRUE) {
            Heap_Free(sNintendoWFCManager->receiveBuffers[index]);
        } else {
            NintendoWFCFree(0, sNintendoWFCManager->receiveBuffers[index], 0);
        }

        sNintendoWFCManager->receiveBuffers[index] = NULL;
    }
}

static void CreateReceiveBuffer(int index)
{
    FreeReceiveBuffer(index);

    if (sNintendoWFCManager->receiveBuffers[index] == NULL) {
        if (sNintendoWFCManager->secondaryHeapID == HEAP_ID_FIELD2) {
            sNintendoWFCManager->receiveBuffers[index] = Heap_Alloc(sNintendoWFCManager->secondaryHeapID, RECEIVE_BUFFER_SIZE + 32);
            sNintendoWFCManager->receiveBuffersOnGlobalHeap[index] = TRUE;
        } else {
            sNintendoWFCManager->receiveBuffers[index] = NintendoWFCAlloc(0, RECEIVE_BUFFER_SIZE, 32);
            sNintendoWFCManager->receiveBuffersOnGlobalHeap[index] = FALSE;
        }

        DWC_SetRecvBuffer(index, (u8 *)(((u32)sNintendoWFCManager->receiveBuffers[index] + 31) / 32 * 32), RECEIVE_BUFFER_SIZE);
    }
}

static void FreeAllReceiveBuffers(void)
{
    int i;

    for (i = 0; i < 4; i++) {
        FreeReceiveBuffer(i);
    }
}

u8 NintendoWFC_GetNeedsGameSave(void)
{
    return sNintendoWFCManager->needsGameSave;
}

void NintendoWFC_ResetNeedsGameSave(void)
{
    sNintendoWFCManager->needsGameSave = FALSE;
}
