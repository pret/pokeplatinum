#include "overlay004/ov4_021D0D80.h"

#include <dwc.h>
#include <nitro.h>
#include <ppwlobby/ppw_lobby.h>
#include <string.h>
#include <vct.h>

#include "constants/net.h"

#include "overlay004/voice_chat.h"

#include "communication_system.h"
#include "heap.h"
#include "savedata.h"
#include "unk_0202ACE0.h"
#include "unk_0203061C.h"
#include "unk_0203266C.h"
#include "unk_020366A0.h"

#define RECEIVE_BUFFER_SIZE 4096

#define PPW_MATCH_KEY_LENGTH 128

typedef struct NintendoWFCManager {
    u8 sendBuffer[256];
    DWCFriendData *friends;
    DWCFriendsMatchControl unk_104;
    DWCUserData *userData;
    DWCInetControl unk_F0C;
    SaveData *saveData;
    void *allocStartPtr;
    void *receiveBuffers[4];
    void *heap1AllocPtr;
    NNSFndHeapHandle heap1;
    void *heap2AllocPtr;
    NNSFndHeapHandle heap2;
    u32 heap2Size;
    UnkFuncPtr_ov4_021D1104 serverClientSendCallback;
    UnkFuncPtr_ov4_021D1104 serverServerSendCallback;
    NintendoWFCConnectionClosedCB connectionClosedCallback;
    void *connectionClosedCBArg;
    UnkFuncPtr_ov4_021D1150 unkCallback1;
    void *unkCallback1Arg;
    UnkFuncPtr_ov4_021D113C unkCallback0;
    void (*fatalErrorCallback)(int param0);
    u8 ppwMatchKey[PPW_MATCH_KEY_LENGTH];
    u8 friendConnStatus[32];
    void *friendStatusesBuffer;
    int friendStatusSize;
    u32 nextFriendIdx;
    int state;
    int unk_1068;
    int dataSent;
    int maxPlayers;
    u32 voiceConnectedIDs;
    int primaryHeapID;
    int secondaryHeapID;
    int heapSize;
    BOOL voiceChatEnabled;
    int unk_1088;
    int unk_108C;
    BOOL updateVoiceClients;
    BOOL unk_1094;
    int voiceChatCodec;
    int unk_109C;
    int unk_10A0[8];
    int unk_10C0;
    int voiceChatEnabled2;
    u16 voiceChatEnabled1;
    u16 voiceChatEnabled3;
    u32 unk_10CC;
    u8 packetsSent;
    u8 unk_10D1;
    u8 unk_10D2;
    u8 dummy_10D3;
    u8 unk_10D4;
    u8 receiveBuffersOnGlobalHeap[4];
    u8 disconnectIfAlone;
    u8 unk_10DA;
} NintendoWFCManager;

static void NintendoWFC_Cleanup(void);
static void WFCLoginCallback(DWCError param0, int param1, void *param2);
static void ov4_021D171C(DWCError param0, BOOL param1, void *param2);
static void DummyFriendStatusCallback(int param0, u8 param1, const char *param2, void *param3);
static void ov4_021D1744(int param0, int param1, void *param2);
static void DummyWFCBuddyFriendCB(int param0, void *param1);
static void ov4_021D1898(DWCError param0, BOOL param1, void *param2);
static void UserSendCallback(int param0, u8 param1);
static void UserReceiveCallback(u8 param0, u8 *param1, int param2);
static void ConnectionClosedCallback(DWCError param0, BOOL param1, BOOL param2, u8 param3, int param4, void *param5);
static int DummyPlayerEvalCallback(int param0, void *param1);
static int ov4_021D1D1C(void);
static void UserReceiveTimeoutCallback(u8 param0);
static BOOL CanSendToAll(void);
static void FreeReceiveBuffer(int param0);
static void FreeAllReceiveBuffers(void);
static void CreateReceiveBuffer(int param0);
static void GetNextFriendStatus(void);
static void ov4_021D23A4(DWCError param0, BOOL param1, BOOL param2, BOOL param3, int param4, void *param5);
static void ov4_021D2488(DWCError param0, BOOL param1, BOOL param2, BOOL param3, int param4, void *param5);
static void ov4_021D24AC(int param0, void *param1);
static void ov4_021D24D8(void);

static void *NintendoWFCAlloc(DWCAllocType param0, u32 param1, int param2);
static void NintendoWFCFree(DWCAllocType param0, void *param1, u32 param2);

static NintendoWFCManager *sNintendoWFCManager = NULL;

int NintendoWFC_Init(SaveData *saveData, int heapID, int heapSize, int maxPlayers)
{
    void *wfcManAllocPtr;

    GF_ASSERT(sNintendoWFCManager == NULL);

    wfcManAllocPtr = Heap_Alloc(heapID, sizeof(NintendoWFCManager) + 32);
    MI_CpuClear8(wfcManAllocPtr, sizeof(NintendoWFCManager) + 32);

    sNintendoWFCManager = (NintendoWFCManager *)(((u32)wfcManAllocPtr + 31) / 32 * 32);
    sNintendoWFCManager->allocStartPtr = wfcManAllocPtr;
    sNintendoWFCManager->saveData = saveData;
    sNintendoWFCManager->serverClientSendCallback = NULL;
    sNintendoWFCManager->serverServerSendCallback = NULL;
    sNintendoWFCManager->fatalErrorCallback = NULL;
    sNintendoWFCManager->state = 0;
    sNintendoWFCManager->primaryHeapID = heapID;
    sNintendoWFCManager->secondaryHeapID = heapID;
    sNintendoWFCManager->heapSize = heapSize;
    sNintendoWFCManager->heap1AllocPtr = Heap_Alloc(heapID, heapSize + (RECEIVE_BUFFER_SIZE * 3) + 32);
    sNintendoWFCManager->heap2AllocPtr = NULL;
    sNintendoWFCManager->heap1 = NNS_FndCreateExpHeap((void *)(((u32)sNintendoWFCManager->heap1AllocPtr + 31) / 32 * 32), heapSize);
    sNintendoWFCManager->heap2 = NULL;
    sNintendoWFCManager->voiceChatCodec = 0;
    sNintendoWFCManager->unk_1088 = -1;
    sNintendoWFCManager->nextFriendIdx = 0;
    sNintendoWFCManager->maxPlayers = maxPlayers;
    sNintendoWFCManager->voiceConnectedIDs = 0;
    sNintendoWFCManager->unk_10CC = 0;
    sNintendoWFCManager->unk_108C = -1;
    sNintendoWFCManager->updateVoiceClients = TRUE;
    sNintendoWFCManager->unk_10D2 = 0;
    sNintendoWFCManager->unk_10C0 = 0;
    sNintendoWFCManager->packetsSent = 0;
    sNintendoWFCManager->unk_10D1 = 0;
    sNintendoWFCManager->voiceChatEnabled1 = 1;
    sNintendoWFCManager->voiceChatEnabled2 = 1;
    sNintendoWFCManager->voiceChatEnabled3 = 1;

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

    ov4_021D24D8();

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

int NintendoWFC_PreMatch()
{
    switch (sNintendoWFCManager->state) {
    case 0: {
        DWC_SetMemFunc(NintendoWFCAlloc, NintendoWFCFree);
        DWC_InitInetEx(&sNintendoWFCManager->unk_F0C, DEFAULT_DWC_DMA_NUMBER, DEFAULT_DWC_POWER_MODE, DEFAULT_DWC_SSL_PRIORITY);
        DWC_SetAuthServer(DWC_CONNECTINET_AUTH_RELEASE);
        DWC_ConnectInetAsync();

        sNintendoWFCManager->state = 1;
        sNintendoWFCManager->voiceChatEnabled = FALSE;
    }
    case 1: {
        if (DWC_CheckInet()) {
            if (DWC_GetInetStatus() == DWC_CONNECTINET_STATE_CONNECTED) {
                sNintendoWFCManager->state = 2;
            } else {
                sNintendoWFCManager->state = 12;
            }
        } else {
            DWC_ProcessInet();
            break;
        }
    }
    case 2: {
        int v0 = NintendoWFC_HandleError();

        if (v0 != 0) {
            return v0;
        }
    }

        DWC_InitFriendsMatch(&(sNintendoWFCManager->unk_104), (sNintendoWFCManager->userData), 10727, "pokemondpds", "1vTlwb", 0, 0, sNintendoWFCManager->friends, MAX_FRIENDS);

        OSOwnerInfo ownerInfo;
        OS_GetOwnerInfo(&ownerInfo);
        DWC_LoginAsync(&(ownerInfo.nickName[0]), NULL, WFCLoginCallback, NULL);

        sNintendoWFCManager->state = 3;
    case 3:
        DWC_ProcessFriendsMatch();
        break;
    case 4:
        DWC_ProcessFriendsMatch();
        return (DWC_ERROR_NUM) + 7;
    }

    return NintendoWFC_HandleError();
}

void ov4_021D1104(UnkFuncPtr_ov4_021D1104 serverCallback, UnkFuncPtr_ov4_021D1104 clientCallback)
{
    sNintendoWFCManager->serverClientSendCallback = serverCallback;
    sNintendoWFCManager->serverServerSendCallback = clientCallback;
}

void NintendoWFC_SetConnectionClosedCB(NintendoWFCConnectionClosedCB callback, void *callbackArg)
{
    sNintendoWFCManager->connectionClosedCallback = callback;
    sNintendoWFCManager->connectionClosedCBArg = callbackArg;
}

void ov4_021D113C(UnkFuncPtr_ov4_021D113C callback)
{
    sNintendoWFCManager->unkCallback0 = callback;
}

void ov4_021D1150(UnkFuncPtr_ov4_021D1150 callback, void *callbackArg)
{
    sNintendoWFCManager->unkCallback1 = callback;
    sNintendoWFCManager->unkCallback1Arg = callbackArg;
}

const static char sPPWMatchKeyFmt[] = "%s = \'%s\'";

BOOL ov4_021D116C(u8 *matchmakingString, int maxPlayers, BOOL param2, u32 timeout)
{
    GF_ASSERT(sNintendoWFCManager != NULL);

    if (sNintendoWFCManager->state != 4) {
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

    sNintendoWFCManager->state = 5;
    sNintendoWFCManager->maxPlayers = maxPlayers;
    DWC_ConnectToAnybodyAsync(maxPlayers, (const char *)sNintendoWFCManager->ppwMatchKey, ov4_021D1898, NULL, DummyPlayerEvalCallback, NULL);
    sNintendoWFCManager->unk_1068 = 0;

    DWC_SetUserSendCallback(UserSendCallback);
    DWC_SetUserRecvCallback(UserReceiveCallback);
    DWC_SetConnectionClosedCallback(ConnectionClosedCallback, NULL);
    DWC_SetUserRecvTimeoutCallback(UserReceiveTimeoutCallback);

    sNintendoWFCManager->dataSent = 0;
    sNintendoWFCManager->disconnectIfAlone = TRUE;

    return TRUE;
}

static void ov4_021D12B4()
{
    if (sNintendoWFCManager->state == 10) {
        sNintendoWFCManager->state = 11;
    } else {
        sNintendoWFCManager->state = 9;
    }
}

int ov4_021D12D4(int param0)
{
    switch (sNintendoWFCManager->state) {
    case 5:
        if (param0) {
            sNintendoWFCManager->state = 6;
        }

        if (sNintendoWFCManager->unk_1068 == 2) {
            if (sNintendoWFCManager->unk_1088 >= 0) {
                if (sNintendoWFCManager->friendConnStatus[sNintendoWFCManager->unk_1088] != DWC_STATUS_MATCH_SC_SV) {
                    sNintendoWFCManager->state = 10;
                }
            }
        }
        break;
    case 6:
    case 10:
        if (sNintendoWFCManager->unk_1068 == 0) {
            if (!DWC_CancelMatching()) {
                (void)0;
            }
            break;
        } else {
            int v0;

            v0 = DWC_CloseAllConnectionsHard();
            ov4_021D12B4();
        }
        break;
    case 7: {
        if (!sub_0203272C(sub_0203895C())) {
            ov4_021D1E74(sNintendoWFCManager->primaryHeapID);
        }

        if (sNintendoWFCManager->updateVoiceClients) {
            sNintendoWFCManager->voiceChatEnabled1 = 1;
        } else {
            sNintendoWFCManager->voiceChatEnabled1 = 0;
        }

        sNintendoWFCManager->state = 8;
        return DWC_ERROR_NUM;
    } break;
    case 9:
        sNintendoWFCManager->state = 4;
        sNintendoWFCManager->dataSent = 0;
        sNintendoWFCManager->unk_108C = -1;
        return (DWC_ERROR_NUM) + 1;
    case 11:
        sNintendoWFCManager->state = 4;
        sNintendoWFCManager->dataSent = 0;
        sNintendoWFCManager->unk_108C = -1;
        return (DWC_ERROR_NUM) + 2;
    case 12:
        return NintendoWFC_HandleError();
    case 16:
        if (sNintendoWFCManager->voiceChatEnabled == FALSE) {
            DWC_CloseAllConnectionsHard();
            sNintendoWFCManager->state = 17;
            break;
        }
    default:
        break;
    }

    return ov4_021D1D1C();
}

BOOL ov4_021D1404()
{
    return (sNintendoWFCManager->dataSent == 0) && CanSendToAll();
}

BOOL NintendoWFC_SendData_Client(void *data, int size)
{
    if (!(size < 256)) {
        return FALSE;
    }

    if (DWC_GetMyAID() == 0) {
        if (sNintendoWFCManager->serverClientSendCallback != NULL) {
            sNintendoWFCManager->serverClientSendCallback(0, data, size);
        }

        return TRUE;
    } else {
        if (sNintendoWFCManager->dataSent || !CanSendToAll()) {
            return FALSE;
        }

        *((u32 *)sNintendoWFCManager->sendBuffer) = 0x1 | (sNintendoWFCManager->voiceChatEnabled1 << 8);
        sNintendoWFCManager->sendBuffer[2] = ++sNintendoWFCManager->packetsSent;

        MI_CpuCopy8(data, &(sNintendoWFCManager->sendBuffer[4]), size);
        sNintendoWFCManager->dataSent = 1;

        DWC_SendReliableBitmap(0x1, sNintendoWFCManager->sendBuffer, size + 4);

        return TRUE;
    }
}

int NintendoWFC_SendData_Server(void *data, int size)
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

    *((u32 *)sNintendoWFCManager->sendBuffer) = 0x1 | (sNintendoWFCManager->voiceChatEnabled1 << 8);
    sNintendoWFCManager->sendBuffer[2] = ++sNintendoWFCManager->packetsSent;
    MI_CpuCopy8(data, &(sNintendoWFCManager->sendBuffer[4]), size);
    sNintendoWFCManager->dataSent = TRUE;

    if (!DWC_SendReliableBitmap(DWC_GetAIDBitmap(), sNintendoWFCManager->sendBuffer, size + 4)) {
        sNintendoWFCManager->dataSent = FALSE;
        return FALSE;
    }

    if (sNintendoWFCManager->serverServerSendCallback != NULL) {
        sNintendoWFCManager->serverServerSendCallback(0, data, size);
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

    *((u32 *)sNintendoWFCManager->sendBuffer) = 0x1 | (sNintendoWFCManager->voiceChatEnabled1 << 8);
    sNintendoWFCManager->sendBuffer[2] = ++sNintendoWFCManager->packetsSent;
    MI_CpuCopy8(param0, &(sNintendoWFCManager->sendBuffer[4]), param1);
    sNintendoWFCManager->dataSent = 1;

    v0 = DWC_GetAIDBitmap();

    if (v0 != DWC_SendReliableBitmap(v0, sNintendoWFCManager->sendBuffer, param1 + 4)) {
        sNintendoWFCManager->dataSent = 0;
        return FALSE;
    }

    if (sNintendoWFCManager->serverServerSendCallback != NULL) {
        sNintendoWFCManager->serverServerSendCallback(DWC_GetMyAID(), param0, param1);
    }

    return TRUE;
}

static void WFCLoginCallback(DWCError param0, int param1, void *param2)
{
    BOOL v0;

    if (DWC_CheckDirtyFlag(sNintendoWFCManager->userData)) {
        DWCUserData *v1 = NULL;

        DWC_ClearDirtyFlag(sNintendoWFCManager->userData);
        sNintendoWFCManager->unk_10DA = 1;
    }

    if (param0 == DWC_ERROR_NONE) {
        v0 = DWC_UpdateServersAsync(NULL, ov4_021D171C, sNintendoWFCManager->userData, DummyFriendStatusCallback, param2, ov4_021D1744, param2);

        if (v0 == 0) {
            Link_SetErrorState(1);
            return;
        }

        DWC_SetBuddyFriendCallback(DummyWFCBuddyFriendCB, NULL);
    } else {
        sNintendoWFCManager->state = 12;
    }
}

static void UserReceiveTimeoutCallback(u8 param0)
{
    if (sNintendoWFCManager->unk_109C) {
        DWC_CloseAllConnectionsHard();
        sNintendoWFCManager->unk_108C = -1;
        sNintendoWFCManager->state = 18;
    }
}

static void ov4_021D171C(DWCError param0, BOOL param1, void *param2)
{
#pragma unused(param2)
    if (param0 == DWC_ERROR_NONE) {
        sNintendoWFCManager->state = 4;
    } else {
        sNintendoWFCManager->state = 12;
    }
}

static void DummyFriendStatusCallback(int param0, u8 param1, const char *param2, void *param3)
{
#pragma unused(param3)
    return;
}

static void ov4_021D1744(int param0, int param1, void *param2)
{
#pragma unused(param2)

    MI_CpuCopy8(sNintendoWFCManager->friends, sub_0202AED8(SaveData_GetWiFiList(sNintendoWFCManager->saveData), 0), MAX_FRIENDS * sizeof(DWCFriendData));

    sub_0202B270(SaveData_GetWiFiList(sNintendoWFCManager->saveData), param0, param1);
    sub_020307F0(SaveData_GetBattleFrontier(sNintendoWFCManager->saveData), param0, param1);
}

static void DummyWFCBuddyFriendCB(int param0, void *param1)
{
#pragma unused(param1)
    return;
}

static void ov4_021D17A4(void)
{
    MI_CpuClear8(sNintendoWFCManager->unk_10A0, sizeof(sNintendoWFCManager->unk_10A0));
}

static void ov4_021D17C0(void)
{
    int v0;

    for (v0 = 0; v0 < 3 + 1; v0++) {
        DWC_SetRecvTimeoutTime(v0, 0);
    }

    if (DWC_GetMyAID() == 0) {
        for (v0 = 0; v0 < sNintendoWFCManager->maxPlayers; v0++) {
            if (DWC_GetMyAID() != v0) {
                if (DWC_GetAIDBitmap() & (0x1 << v0)) {
                    GF_ASSERT(DWC_SetRecvTimeoutTime(v0, 10 * 1000));
                }
            }
        }
    } else {
        GF_ASSERT(DWC_SetRecvTimeoutTime(0, 10 * 1000));
    }

    sNintendoWFCManager->unk_109C = 1;
    ov4_021D17A4();
}

static void ov4_021D1854(int param0)
{
    int v0, v1;

    sNintendoWFCManager->state = 7;

    for (v0 = 0, v1 = 0; v0 < sNintendoWFCManager->maxPlayers; v0++) {
        if (DWC_GetMyAID() != v0) {
            CreateReceiveBuffer(v0);
        }
    }

    ov4_021D17C0();
}

static void ov4_021D1898(DWCError param0, BOOL param1, void *param2)
{
#pragma unused(param2)

    if (param0 == DWC_ERROR_NONE) {
        if (!param1) {
            ov4_021D1854(1 - DWC_GetMyAID());
        } else {
            ov4_021D12B4();
        }
    } else {
        sNintendoWFCManager->state = 12;
    }

    if (sNintendoWFCManager->unkCallback1) {
        sNintendoWFCManager->unkCallback1(DWC_GetMyAID(), sNintendoWFCManager->unkCallback1Arg);
    }
}

static BOOL DummyPlayerEvalCallback(int param0, void *param1)
{
#pragma unused(param0, param1)
    return TRUE;
}

static void UserSendCallback(int param0, u8 param1)
{
#pragma unused(param0)
    sNintendoWFCManager->dataSent = 0;
    sNintendoWFCManager->unk_10A0[param1] = 0;
}

static void ov4_021D1918(u32 param0)
{
    if (!sub_0203272C(sub_0203895C())) {
        if (param0 & 0x100) {
            sNintendoWFCManager->voiceChatEnabled2 = 1;
        } else {
            sNintendoWFCManager->voiceChatEnabled2 = 0;
        }
    }
}

static void UserReceiveCallback(u8 param0, u8 *param1, int param2)
{
#pragma unused(param0, param1, param2)

    u32 v0;
    v0 = (param1[3] << 24) | (param1[2] << 16) | (param1[1] << 8) | param1[0];

    sNintendoWFCManager->unk_109C = 1;

    if ((v0 & 0xff) == 0x1) {
        ov4_021D1918(v0);
        sNintendoWFCManager->unk_10D1 = param1[2];
    } else {
        if (VoiceChat_ProcessReceivedData(param0, param1, param2)) {
            return;
        }

        ov4_021D1918(v0);
        return;
    }

    {
        u16 *v1 = (u16 *)NintendoWFCAlloc(NULL, param2 - 4, 4);

        if (v1 == NULL) {
            return;
        }

        MI_CpuCopy8(param1 + 4, (void *)v1, param2 - 4);

        if (DWC_GetMyAID() == 0) {
            if (sNintendoWFCManager->serverClientSendCallback != NULL) {
                sNintendoWFCManager->serverClientSendCallback(param0, v1, param2 - 4);
            }
        } else {
            if (sNintendoWFCManager->serverServerSendCallback != NULL) {
                sNintendoWFCManager->serverServerSendCallback(param0, v1, param2 - 4);
            }
        }

        NintendoWFCFree(NULL, v1, param2 - 4);
    }
}

static void ConnectionClosedCallback(DWCError param0, BOOL param1, BOOL param2, u8 param3, int param4, void *param5)
{
#pragma unused(param5, param4)

    sNintendoWFCManager->dataSent = 0;
    sNintendoWFCManager->unk_10C0 = 0;
    sNintendoWFCManager->unk_1094 = 0;

    if (param0 == DWC_ERROR_NONE) {
        if (sNintendoWFCManager->disconnectIfAlone == TRUE && DWC_GetNumConnectionHost() == 1) {
            if (sNintendoWFCManager->state != 6) {
                sNintendoWFCManager->state = 16;
            }

            if (sNintendoWFCManager->voiceChatEnabled) {
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
    int v0;
    DWCErrorType v1;
    int v2;
    int v3 = 0;

    v2 = DWC_GetLastErrorEx(&v0, &v1);

    if (v2 != 0) {
        v3 = v0;

        if ((v0 == 0) || (v1 == DWC_ETYPE_LIGHT)) {
            v3 = v2;
        }

        switch (v1) {
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
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 12:
                case 18:
                case 16:
                case 17:
                    DWC_ShutdownFriendsMatch();
                case 0:
                case 1:
                case 2:
                    if (sub_0203895C() != 33) {
                        DWC_CleanupInet();
                    }
                }

                DWC_ClearError();
            }

            if (sNintendoWFCManager) {
                sNintendoWFCManager->state = 14;
            }
            break;
        case DWC_ETYPE_FATAL:
            if (sNintendoWFCManager) {
                sNintendoWFCManager->state = 15;

                if (sNintendoWFCManager->fatalErrorCallback != NULL) {
                    sNintendoWFCManager->fatalErrorCallback(-v0);
                }
            }
            break;
        }
    }

    if (sNintendoWFCManager->unk_10D2) {
        v3 = ((DWC_ERROR_NUM) + 6);
    }

    if (v2 != 0) {
        sub_02037F94(v0, v1, v2);
    }

    return v3;
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

static BOOL SendHeaderIfConnectedClients(int param0)
{
    if ((sNintendoWFCManager->dataSent == 0) && CanSendToAll() && ((u16)~1 & DWC_GetAIDBitmap())) {
        sNintendoWFCManager->dataSent = 1;
        *((u32 *)sNintendoWFCManager->sendBuffer) = 0x2 | (sNintendoWFCManager->voiceChatEnabled1 << 8);

        DWC_SendReliableBitmap(DWC_GetAIDBitmap(), sNintendoWFCManager->sendBuffer, 4);

        sNintendoWFCManager->unk_10A0[param0] = 0;

        return TRUE;
    }

    return FALSE;
}

static int ov4_021D1D1C(void)
{
    int v0, v1;

    DWC_ProcessFriendsMatch();
    GetNextFriendStatus();

    if (sNintendoWFCManager->voiceChatEnabled) {
        if ((sNintendoWFCManager->voiceChatEnabled1 == 1) && (sNintendoWFCManager->voiceChatEnabled2 == 1) && (sNintendoWFCManager->voiceChatEnabled3 == 1)) {
            VoiceChat_Enable();
        } else {
            VoiceChat_Disable();
        }

        VoiceChat_Main();

        if (sNintendoWFCManager->voiceConnectedIDs != DWC_GetAIDBitmap()) {
            if (!sNintendoWFCManager->dummy_10D3 && sNintendoWFCManager->updateVoiceClients) {
                if (VoiceChat_AddConferenceClients(DWC_GetAIDBitmap(), DWC_GetMyAID())) {
                    sNintendoWFCManager->voiceConnectedIDs = DWC_GetAIDBitmap();
                }
            }
        }
    }

    if (sNintendoWFCManager->state == 18) {
        v1 = NintendoWFC_HandleError();

        if (v1 != 0) {
            return v1;
        }

        return (DWC_ERROR_NUM) + 3;
    }

    if (sNintendoWFCManager->state == 17) {
        return (DWC_ERROR_NUM) + 4;
    }

    if ((sNintendoWFCManager->state == 7) || (sNintendoWFCManager->state == 8)) {
        for (v0 = 0; v0 < sNintendoWFCManager->maxPlayers; v0++) {
            if (sNintendoWFCManager->unk_10A0[v0]++ >= 120 && sNintendoWFCManager->dataSent == FALSE) {
                if (SendHeaderIfConnectedClients(v0)) {
                    ov4_021D17A4();
                    break;
                }
            }
        }
    }

    return NintendoWFC_HandleError();
}

int ov4_021D1E30()
{
    if (sNintendoWFCManager) {
        if ((sNintendoWFCManager->state == 7) || (sNintendoWFCManager->state == 8) || (sNintendoWFCManager->state == 16)) {
            return DWC_GetMyAID();
        }
    }

    return -1;
}

static void ov4_021D1E60()
{
    sNintendoWFCManager->voiceChatEnabled = FALSE;
}

void ov4_021D1E74(int heapID)
{
    int v0;
    int v1 = 1;
    BOOL v2 = sub_0203272C(sub_0203895C());

    if (v2) {
        v1 = CommSys_ConnectedCount() - 1;

        if (v1 < 1) {
            v1 = 1;
        }

        sNintendoWFCManager->voiceChatEnabled1 = 1;
        sNintendoWFCManager->voiceChatEnabled2 = 1;
        sNintendoWFCManager->voiceChatEnabled3 = 1;
    }

    if (sNintendoWFCManager->voiceChatEnabled == FALSE) {
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
        VoiceChat_SetCleanupCallback(ov4_021D1E60);

        sNintendoWFCManager->voiceChatEnabled = TRUE;
    }
}

void NintendoWFC_TerminateVoiceChat(void)
{
    VoiceChat_Stop();

    if (sNintendoWFCManager != NULL) {
        sNintendoWFCManager->voiceChatEnabled = FALSE;
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

int ov4_021D20B0(int param0)
{
    if (param0 == 0) {
        switch (sNintendoWFCManager->state) {
        case 5:
        case 7:
        case 8:
            if (sNintendoWFCManager->voiceChatEnabled) {
                VoiceChat_RequestEnd();
            }

            sNintendoWFCManager->state = 16;
            break;
        case 4:
        case 14:
        case 17:
        case 18:
            return 1;
        }
    } else {
        switch (sNintendoWFCManager->state) {
        case 4:
        case 17:
        case 18:
            return 1;
        }
    }

    return 0;
}

int ov4_021D2134()
{
    if ((sNintendoWFCManager->state == 17) || (sNintendoWFCManager->state == 18) || (sNintendoWFCManager->state == 4)) {
        sNintendoWFCManager->state = 4;
        sNintendoWFCManager->unk_108C = -1;
        ov4_021D25FC();
        return 1;
    }

    return 0;
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

int ov4_021D2248(int param0, int param1, BOOL param2)
{
    int v0, v1 = param1;

    if (ov4_021D27E0()) {
        return -4;
    }

    if (sNintendoWFCManager->state != 4) {
        sNintendoWFCManager->unk_10C0++;

        if (sNintendoWFCManager->unk_10C0 > 120) {
            return -3;
        }

        return -1;
    }

    FreeAllReceiveBuffers();

    sNintendoWFCManager->unk_10CC = 0;
    sNintendoWFCManager->disconnectIfAlone = TRUE;
    sNintendoWFCManager->unk_1088 = param0;
    sNintendoWFCManager->maxPlayers = param1;

    if (param2) {
        v1 = 2;
    }

    sNintendoWFCManager->unk_1094 = 1;

    if (param0 < 0) {
        v0 = DWC_SetupGameServer((u8)v1, ov4_021D23A4, NULL, ov4_021D24AC, NULL);
        sNintendoWFCManager->unk_1068 = 1;
    } else {
        v0 = DWC_ConnectToGameServerAsync(param0, ov4_021D2488, NULL, ov4_021D24AC, NULL);
        sNintendoWFCManager->unk_1068 = 2;
    }

    if (!v0) {
        sNintendoWFCManager->unk_10C0++;

        if (sNintendoWFCManager->unk_10C0 > 120) {
            return -3;
        }

        return -2;
    }

    sNintendoWFCManager->unk_10C0 = 0;
    sNintendoWFCManager->state = 5;

    DWC_SetUserSendCallback(UserSendCallback);
    DWC_SetUserRecvCallback(UserReceiveCallback);
    DWC_SetConnectionClosedCallback(ConnectionClosedCallback, NULL);
    DWC_SetUserRecvTimeoutCallback(UserReceiveTimeoutCallback);

    sNintendoWFCManager->dataSent = 0;

    return 0;
}

int ov4_021D2388()
{
    if (sNintendoWFCManager) {
        return sNintendoWFCManager->unk_1088;
    }

    return -1;
}

static void ov4_021D23A4(DWCError param0, BOOL param1, BOOL param2, BOOL param3, int param4, void *param5)
{
#pragma unused(param3, param5)
    BOOL v0 = 0;

    sNintendoWFCManager->unk_1094 = 0;

    if (param0 == DWC_ERROR_NONE) {
        if (!param1) {
            if (sub_02032740(sub_0203895C()) && (param4 == -1)) {
                v0 = 1;
            }

            if (sNintendoWFCManager->unkCallback0) {
                if (0 == sNintendoWFCManager->unkCallback0(param4)) {
                    v0 = 1;
                }
            }

            if (sNintendoWFCManager->unk_10D4 || v0) {
                u32 v1 = ~sNintendoWFCManager->unk_10CC & DWC_GetAIDBitmap();
                u32 v2 = DWC_GetAIDBitmap();

                if (v1) {
                    DWC_CloseConnectionHardBitmap(&v1);

                    if ((v1 ^ v2) == 0x1) {
                        sNintendoWFCManager->state = 6;
                    }

                    return;
                }
            }

            sNintendoWFCManager->unk_1088 = param4;
            sNintendoWFCManager->unk_10CC = DWC_GetAIDBitmap();

            if (sNintendoWFCManager->unk_10CC == 0x1) {
                sNintendoWFCManager->state = 6;
            } else {
                ov4_021D1854(param4);
            }
        } else {
            if (!param2) {
                sNintendoWFCManager->unk_108C = -1;
            }
        }
    }
}

static void ov4_021D2488(DWCError param0, BOOL param1, BOOL param2, BOOL param3, int param4, void *param5)
{
#pragma unused(param5)
    sNintendoWFCManager->unk_1094 = 0;

    if (param0 == DWC_ERROR_NONE && !param1) {
        ov4_021D1854(param4);
    }
}

static void ov4_021D24AC(int param0, void *param1)
{
#pragma unused(param1)

    sNintendoWFCManager->unk_108C = param0;

    if (sNintendoWFCManager->unkCallback1) {
        sNintendoWFCManager->unkCallback1(param0, sNintendoWFCManager->unkCallback1Arg);
    }
}

static void ov4_021D24D8(void)
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

BOOL NintendoWFC_GetUpdateVoiceClients(void)
{
    if (sNintendoWFCManager) {
        return sNintendoWFCManager->updateVoiceClients;
    }

    return FALSE;
}

BOOL ov4_021D2568(void)
{
    if (sNintendoWFCManager) {
        return sNintendoWFCManager->unk_108C;
    }

    return FALSE;
}

void NintendoWFC_SetUpdateVoiceClients(BOOL param0)
{
    sNintendoWFCManager->updateVoiceClients = param0;
}

static void SendHeader()
{
    if (sNintendoWFCManager->dataSent || !CanSendToAll()) {
        sNintendoWFCManager->dataSent = 1;
        *((u32 *)sNintendoWFCManager->sendBuffer) = 0x2 | (sNintendoWFCManager->voiceChatEnabled1 << 8);

        DWC_SendReliableBitmap(DWC_GetAIDBitmap(), sNintendoWFCManager->sendBuffer, 4);
        ov4_021D17A4();
    }
}

void ov4_021D2598(BOOL param0)
{
    sNintendoWFCManager->voiceChatEnabled3 = param0;
}

static void ov4_021D25AC(void *param0)
{
    sNintendoWFCManager->unk_10D4 = 2;
}

int ov4_021D25C0(void)
{
    if (sNintendoWFCManager->unk_10D4 == 0) {
        sNintendoWFCManager->unk_10D4 = 1;
        DWC_StopSCMatchingAsync(ov4_021D25AC, NULL);
    }

    return sNintendoWFCManager->unk_10D4 == 2;
}

void ov4_021D25FC(void)
{
    sNintendoWFCManager->unk_10D4 = 0;
}

int NintendoWFC_GetNumConnections(void)
{
    return DWC_GetNumConnectionHost();
}

void ov4_021D2618(BOOL create, int heapID)
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

u8 ov4_021D27E0(void)
{
    return sNintendoWFCManager->unk_10DA;
}

void ov4_021D27F4(void)
{
    sNintendoWFCManager->unk_10DA = 0;
}
