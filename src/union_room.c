#include "union_room.h"

#include <nitro.h>

#include "constants/union_room_message_types.h"
#include "constants/versions.h"

#include "struct_defs/struct_0203330C.h"
#include "struct_defs/union_room_game_info.h"

#include "field/field_system.h"

#include "appearance.h"
#include "comm_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "easy_chat_sentence.h"
#include "easy_chat_words.h"
#include "field_system.h"
#include "field_task.h"
#include "heap.h"
#include "journal.h"
#include "math_util.h"
#include "message.h"
#include "save_player.h"
#include "savedata.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "trainer_case.h"
#include "trainer_info.h"
#include "unk_02033200.h"
#include "unk_02095E98.h"
#include "unk_02099500.h"

#include "res/text/bank/country_names.h"
#include "res/text/bank/greetings.h"
#include "res/text/bank/union_room.h"

static UnionRoomManager *UnionRoom_New(FieldSystem *fieldSystem);
static void UnionRoom_RunTask(SysTask *task, void *manager);
static void UnionRoomTask_HandleConnection(UnionRoomManager *manager);
static void UnionRoomTask_WaitForRestart(UnionRoomManager *manager);
static void UnionRoom_SetTask(UnionRoomManager *manager, UnionRoomTask task, int timer);
static void UnionRoomTask_Exit(UnionRoomManager *manager);
static void UnionRoomTask_WaitForExit(UnionRoomManager *manager);
static void UnionRoom_Free(UnionRoomManager *manager);
static void UnionRoomTask_WaitForConnectSuccess(UnionRoomManager *manager);
static void UnionRoomTask_WaitForClient(UnionRoomManager *manager);
static void UnionRoomTask_WaitForClientDisconnect(UnionRoomManager *manager);
static void UnionRoomTask_WaitForDisconnect(UnionRoomManager *manager);
static void UnionRoomTask_WaitForPlayerInfo(UnionRoomManager *manager);
static void UnionRoomTask_WaitForFieldTaskEnd(UnionRoomManager *manager);
static void UnionRoom_ResetState(UnionRoomManager *manager);
static BOOL UnionRoom_HasConnectedClients(void);
static int UnionRoom_GetTrainerBusyMessage(UnionRoomManager *manager, int playerIndex);
static int UnionRoom_GetStartMessage(int activityIndex, int gender, StringTemplate *strTemplate);
static void UnionRoomTask_AnnounceEntry(UnionRoomManager *manager);
static void UnionRoom_ClearStatus(UnionRoomGameInfo *gameInfo);

UnionRoomManager *FieldSystem_InitUnionRoom(FieldSystem *fieldSystem)
{
    UnionRoomManager *manager = NULL;

    GF_ASSERT(fieldSystem != NULL);

    if (fieldSystem->unionRoomMan != NULL) {
        return NULL;
    }

    if (Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_31, 0xa80)) {
        (void)0;
    }

    manager = UnionRoom_New(fieldSystem);

    if (manager == NULL) {
        manager = fieldSystem->unionRoomMan;
    }

    CommFieldCmd_Init((void *)fieldSystem);
    CommManager_SetMaxNumConnections(2);
    UnionRoom_SetTask(manager, UnionRoomTask_AnnounceEntry, 40);

    return manager;
}

void FieldSystem_ExitUnionRoom(FieldSystem *fieldSystem)
{
    if (fieldSystem->unionRoomMan == NULL) {
        return;
    }

    UnionRoom_SetTask(fieldSystem->unionRoomMan, UnionRoomTask_Exit, 5);
}

static UnionRoomManager *UnionRoom_New(FieldSystem *fieldSystem)
{
    SaveData *saveData;
    UnionRoomManager *manager = NULL;

    if (fieldSystem->unionRoomMan != NULL) {
        return NULL;
    }

    saveData = FieldSystem_GetSaveData(fieldSystem);
    CommManager_StartUnion(saveData);

    manager = (UnionRoomManager *)Heap_Alloc(HEAP_ID_31, sizeof(UnionRoomManager));
    MI_CpuClear8(manager, sizeof(UnionRoomManager));

    manager->task = NULL;
    manager->timer = 40;
    manager->sysTask = SysTask_Start(UnionRoom_RunTask, manager, 10);
    manager->fieldSystem = fieldSystem;
    manager->saveData = saveData;
    manager->trainerInfo = SaveData_GetTrainerInfo(saveData);

    UnionRoom_ResetState(manager);
    CommSys_Seed(&manager->rand);

    return manager;
}

static void UnionRoomTask_AnnounceEntry(UnionRoomManager *manager)
{
    EasyChatSentence sentence;

    if (CommServerClient_IsInitialized()) {
        EasyChatSentence_InitWithEnteredUnionRoom(&sentence);
        UnionRoom_SetSentence(&sentence);
        UnionRoom_SetPendingSentence(manager, &sentence);
        UnionRoom_SetTask(manager, UnionRoomTask_HandleConnection, 40);
    }
}

static int Unk_021C0850;

static void UnionRoomTask_HandleConnection(UnionRoomManager *manager)
{
    if (CommManager_IsConnectUnionServer()) {
        Unk_021C0850 = 0;
        UnionRoom_SetTask(manager, UnionRoomTask_WaitForClient, 0);
        return;
    }

    if (manager->pendingConnection != UR_PENDING_CONNECTION_NONE) {
        manager->unused_28 = 2;

        if (manager->pendingConnection == UR_PENDING_CONNECTION_UNION) {
            if (manager->peerActivity == UR_ACTIVITY_MIX_RECORDS) {
                CommManager_StartMixRecordsClient(manager->connectionID);
            } else if (manager->peerActivity == UR_ACTIVITY_SPIN_TRADE) {
                CommManager_StartSpinTradeClient(manager->connectionID);
            } else {
                CommManager_ConnectUnion(manager->connectionID);
            }
        } else if (manager->pendingConnection == UR_PENDING_CONNECTION_DRAW) {
            sub_02095E98(NULL);
            CommManager_StartDrawClient(manager->connectionID);
        }

        UnionRoom_SetTask(manager, UnionRoomTask_WaitForConnectSuccess, 12);
        return;
    }
}

static void UnionRoomTask_WaitForRestart(UnionRoomManager *manager)
{
    if (CommManager_UnionRestartSuccess() == 1) {
        CommFieldCmd_Init((void *)manager->fieldSystem);
        UnionRoom_SetTask(manager, UnionRoomTask_HandleConnection, 2);
    }
}

static BOOL UnionRoom_HasConnectedClients(void)
{
    int i, count;
    TrainerInfo *trainerInfo;

    count = 0;

    for (i = 1; i < 5; i++) {
        trainerInfo = CommInfo_TrainerInfo(i);

        if (trainerInfo != NULL) {
            count++;
        }
    }

    return count >= 1;
}

static void UnionRoomTask_WaitForClient(UnionRoomManager *manager)
{
    UnionRoomGameInfo *gameInfo;

    if (manager->timer > 0) {
        manager->timer--;
        return;
    }

    Unk_021C0850++;
    gameInfo = sub_020340E8();

    if (CommSys_IsClientConnecting() && (UnionRoom_HasConnectedClients() == 1) && (gameInfo->activity != UR_STATUS_BUSY)) {
        CommInfo_SendPlayerInfo();
        CommManager_SetErrorHandling(1, 1);
        UnionRoom_SetStatus(UR_STATUS_UNK_11);
        UnionRoom_SetTask(manager, UnionRoomTask_WaitForClientDisconnect, 0);
    }

    if (CommManager_IsConnectUnionServer() == 0) {
        CommManager_UnionRestartSearch();
        UnionRoom_ResetState(manager);
        UnionRoom_SetStatus(UR_STATUS_NONE);
        UnionRoom_SetTask(manager, UnionRoomTask_WaitForRestart, 2);
    }
}

static void UnionRoomTask_WaitForClientDisconnect(UnionRoomManager *manager)
{
    if (CommManager_CheckError() && (0 == CommSys_IsClientConnecting())) {
        return;
    }

    if (0 == CommSys_IsClientConnecting()) {
        CommManager_UnionRestartSearch();
        UnionRoom_ResetState(manager);
        UnionRoom_SetStatus(UR_STATUS_NONE);
        UnionRoom_SetTask(manager, UnionRoomTask_WaitForRestart, 2);
    }
}

static void UnionRoom_SetTask(UnionRoomManager *manager, UnionRoomTask task, int timer)
{
    manager->task = task;
    manager->timer = timer;
}

static WMBssDesc *Unk_021C085C[16];

static void UnionRoom_RunTask(SysTask *unused, void *managerPtr)
{
    UnionRoomManager *manager = (UnionRoomManager *)managerPtr;

    if (manager == NULL) {
        SysTask_Done(unused);
    } else {
        int i;

        for (i = 0; i < 16; i++) {
            manager->bssDesc[i] = sub_02033F3C(i);
            Unk_021C085C[i] = manager->bssDesc[i];
        }

        if (manager->task != NULL) {
            manager->task(manager);
        }
    }
}

static void UnionRoomTask_Exit(UnionRoomManager *manager)
{
    if (manager->timer != 0) {
        manager->timer--;
        return;
    }

    CommManager_ExitUnion();
    UnionRoom_SetTask(manager, UnionRoomTask_WaitForExit, 0);
}

static void UnionRoomTask_WaitForExit(UnionRoomManager *manager)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    UnionRoom_Free(manager);
}

static void UnionRoomTask_WaitForConnectSuccess(UnionRoomManager *manager)
{
    if (1 == CommManager_IsConnectedUnionClientSuccess()) {
        CommInfo_SendPlayerInfo();
        UnionRoom_SetTask(manager, UnionRoomTask_WaitForPlayerInfo, 3);
        return;
    } else if (CommSys_IsClientConnecting()) {
        manager->pendingConnection = UR_PENDING_CONNECTION_NONE;
        manager->connectState = UR_CONNECT_STATE_PEER_CONTACTED;

        UnionRoom_SetTask(manager, UnionRoomTask_WaitForClient, 0);
    }

    if (0 == CommManager_IsConnectedUnionClientSuccess()) {
        return;
    }

    UnionRoom_SetTask(manager, UnionRoomTask_WaitForFieldTaskEnd, 2);

    manager->unused_24 = 0;
    manager->connectState = UR_CONNECT_STATE_FAILED;
    manager->pendingConnection = UR_PENDING_CONNECTION_NONE;
    manager->chatEnded = FALSE;
}

static void UnionRoomTask_WaitForFieldTaskEnd(UnionRoomManager *manager)
{
    if (!FieldSystem_IsRunningTask(manager->fieldSystem)) {
        CommManager_UnionRestartSearch();
        UnionRoom_ResetState(manager);
        UnionRoom_SetStatus(UR_STATUS_NONE);
        UnionRoom_SetTask(manager, UnionRoomTask_WaitForRestart, 2);
    }
}

static void UnionRoomTask_WaitForPlayerInfo(UnionRoomManager *manager)
{
    if (1 == CommManager_IsConnectedUnionClientSuccess()) {
        if (CommInfo_TrainerInfo(CommSys_CurNetId()) != NULL) {
            manager->pendingConnection = UR_PENDING_CONNECTION_NONE;
            manager->connectState = UR_CONNECT_STATE_CONNECTED;
            manager->chatEnded = FALSE;

            CommManager_SetErrorHandling(1, 1);
            UnionRoom_SetTask(manager, UnionRoomTask_WaitForDisconnect, 3);
        }
    } else if (0 == CommManager_IsConnectedUnionClientSuccess()) {
        CommManager_UnionRestartSearch();
        UnionRoom_ResetState(manager);
        UnionRoom_SetTask(manager, UnionRoomTask_WaitForRestart, 2);

        manager->unused_24 = 0;
        manager->connectState = UR_CONNECT_STATE_FAILED;
        manager->pendingConnection = UR_PENDING_CONNECTION_NONE;
        manager->chatEnded = FALSE;
    }
}

static void UnionRoomTask_WaitForDisconnect(UnionRoomManager *manager)
{
    if (0 == CommManager_IsConnectedUnionClientSuccess()) {
        CommManager_UnionRestartSearch();
        UnionRoom_ResetState(manager);
        UnionRoom_SetTask(manager, UnionRoomTask_WaitForRestart, 2);

        return;
    }
}

static void UnionRoom_Free(UnionRoomManager *manager)
{
    if (manager == NULL) {
        return;
    }

    SysTask_Done(manager->sysTask);
    Heap_Free(manager);
    Heap_Destroy(HEAP_ID_31);
}

FieldSystem *UnionRoom_GetFieldSystem(UnionRoomManager *manager)
{
    return manager->fieldSystem;
}

WMBssDesc *UnionRoom_GetBssDesc(UnionRoomManager *manager, int index)
{
    return manager->bssDesc[index];
}

static UnionRoomGameInfo *Unk_021C0854;

enum UnionRoomInteraction UnionRoom_GetInteractionType(UnionRoomManager *manager, int localID)
{
    TrainerInfo *trainerInfo;
    UnkStruct_0203330C *userInfo;
    UnionRoomGameInfo *gameInfo;

    localID--;
    trainerInfo = sub_02033FB0(localID);

    UnionRoom_ResetActivity(manager);

    if (trainerInfo == NULL) {
        return UR_INTERACTION_BUSY;
    }

    if (manager->bssDesc[localID] == NULL) {
        return UR_INTERACTION_BUSY;
    }

    userInfo = (UnkStruct_0203330C *)manager->bssDesc[localID]->gameInfo.userGameInfo;
    gameInfo = (UnionRoomGameInfo *)userInfo->unk_30;

    Unk_021C0854 = gameInfo;

    switch (gameInfo->activity) {
    case UR_STATUS_NONE:
        return UR_INTERACTION_TALK;
        break;
    case UR_STATUS_DRAWING:
        return UR_INTERACTION_JOIN_DRAW;
        break;
    case UR_STATUS_MIXING_RECORDS:
        return UR_INTERACTION_JOIN_MIX_RECORDS;
        break;
    case UR_STATUS_SPIN_TRADING:
    case UR_STATUS_UNK_03:
        return UR_INTERACTION_JOIN_SPIN_TRADE;
        break;
    case UR_STATUS_BUSY:
    case UR_STATUS_SHOWING_TRAINER_CASE:
    case UR_STATUS_BATTLING:
    case UR_STATUS_TRADING:
    case UR_STATUS_UNK_08:
    case UR_STATUS_UNK_11:
        return UR_INTERACTION_BUSY;
        break;
    }

    return UR_INTERACTION_BUSY;
}

enum UnionRoomInteraction UnionRoom_StartInteraction(UnionRoomManager *manager, int localID, enum UnionRoomInteraction interaction)
{
    UnkStruct_0203330C *userInfo;
    UnionRoomGameInfo *gameInfo;

    localID--;

    if (manager->bssDesc[localID] == NULL) {
        return UR_INTERACTION_BUSY;
    }

    userInfo = (UnkStruct_0203330C *)manager->bssDesc[localID]->gameInfo.userGameInfo;
    gameInfo = (UnionRoomGameInfo *)userInfo->unk_30;

    Unk_021C0854 = gameInfo;

    switch (gameInfo->activity) {
    case UR_STATUS_MIXING_RECORDS:
        if (interaction != UR_INTERACTION_JOIN_MIX_RECORDS) {
            return UR_INTERACTION_BUSY;
        }

        manager->peerActivity = UR_ACTIVITY_MIX_RECORDS;
        manager->connectionID = localID;
        manager->pendingConnection = UR_PENDING_CONNECTION_UNION;
        manager->unused_24 = 0;
        manager->connectState = UR_CONNECT_STATE_NONE;
        return UR_INTERACTION_TALK;
        break;
    case UR_STATUS_NONE:
        if (interaction != UR_INTERACTION_TALK) {
            return UR_INTERACTION_BUSY;
        }

        manager->connectionID = localID;
        manager->pendingConnection = UR_PENDING_CONNECTION_UNION;
        manager->unused_24 = 0;
        manager->connectState = UR_CONNECT_STATE_NONE;
        return UR_INTERACTION_TALK;
        break;
    case UR_STATUS_DRAWING:
        if (interaction != UR_INTERACTION_JOIN_DRAW) {
            return UR_INTERACTION_BUSY;
        }

        manager->connectionID = localID;
        manager->pendingConnection = UR_PENDING_CONNECTION_DRAW;
        manager->unused_24 = 0;
        manager->connectState = UR_CONNECT_STATE_NONE;
        return UR_INTERACTION_TALK;
        break;
    case UR_STATUS_SPIN_TRADING:
    case UR_STATUS_UNK_03:
        if (interaction != UR_INTERACTION_JOIN_SPIN_TRADE) {
            return UR_INTERACTION_BUSY;
        }

        manager->peerActivity = UR_ACTIVITY_SPIN_TRADE;
        manager->connectionID = localID;
        manager->pendingConnection = UR_PENDING_CONNECTION_UNION;
        manager->connectState = UR_CONNECT_STATE_NONE;
        return UR_INTERACTION_TALK;
        break;
    case UR_STATUS_BUSY:
    case UR_STATUS_SHOWING_TRAINER_CASE:
    case UR_STATUS_BATTLING:
    case UR_STATUS_TRADING:
    case UR_STATUS_UNK_08:
    case UR_STATUS_UNK_11:
        return UR_INTERACTION_BUSY;
        break;
    default:
        return UR_INTERACTION_BUSY;
        break;
    }

    GF_ASSERT(FALSE);

    return 0;
}

enum UnionRoomConnectState UnionRoom_GetConnectState(UnionRoomManager *manager)
{
    return manager->connectState;
}

enum UnionRoomActivity UnionRoom_GetActivityAnswer(UnionRoomManager *manager)
{
    if (manager->chatEnded) {
        return UR_ACTIVITY_DECLINED;
    }

    if (CommSys_ConnectedCount() < 2) {
        return UR_ACTIVITY_DECLINED;
    }

    if (CommSys_CurNetId() == 0) {
        if (CommManager_IsConnectUnionServer() == 1) {
            return manager->activityAnswer;
        }
    } else {
        if (CommManager_IsConnectedUnionClientSuccess() == 1) {
            return manager->activityAnswer;
        }
    }

    return UR_ACTIVITY_DECLINED;
}

enum UnionRoomActivity UnionRoom_GetActivityProposal(UnionRoomManager *manager)
{
    if (CommManager_IsConnectUnionServer() == 1) {
        return manager->peerActivity;
    }

    return UR_ACTIVITY_DECLINED;
}

void UnionRoom_SendActivity(UnionRoomManager *manager, enum UnionRoomActivitySendMode mode, u32 value)
{
    u8 proposed = (u8)value;

    switch (mode) {
    case UR_ACTIVITY_SEND_PROPOSAL:
        if (manager->chatEnded == FALSE) {
            manager->proposedActivity = proposed;
            CommSys_SendData(99, &proposed, 1);
        }
        break;
    case UR_ACTIVITY_SEND_ANSWER:
        if (value == 0) {
            u8 answer = manager->peerActivity;

            CommSys_SendDataServer(103, &answer, 1);
            manager->answerDeclined = value;
        } else {
            u8 answer = UR_ACTIVITY_DECLINED;

            CommSys_SendDataServer(103, &answer, 1);
            manager->answerDeclined = value;
        }
        break;
    }
}

void sub_0205B988(int param0, int param1, void *param2, void *param3)
{
    return;
}

void sub_0205B98C(int param0, int param1, void *param2, void *param3)
{
    return;
}

void UnionRoom_RecvRestart(int unused0, int unused1, void *unused2, void *fieldSystemPtr)
{
    FieldSystem *fieldSystem = (FieldSystem *)fieldSystemPtr;

    UnionRoom_SetTask(fieldSystem->unionRoomMan, UnionRoomTask_HandleConnection, 2);
    UnionRoom_ResetState(fieldSystem->unionRoomMan);
}

static int Unk_021C0858;

void UnionRoom_RecvActivityProposal(int unused0, int unused1, void *data, void *fieldSystemPtr)
{
    FieldSystem *fieldSystem = (FieldSystem *)fieldSystemPtr;
    u8 *buffer = (u8 *)data;

    if (fieldSystem->unionRoomMan->chatEnded == FALSE) {
        fieldSystem->unionRoomMan->peerActivity = *buffer;
        Unk_021C0858 = *buffer;
    }
}

void UnionRoom_RecvActivityAnswer(int unused0, int unused1, void *data, void *fieldSystemPtr)
{
    FieldSystem *fieldSystem = (FieldSystem *)fieldSystemPtr;
    u8 *buffer = (u8 *)data;

    fieldSystem->unionRoomMan->unused_2C = 1;
    fieldSystem->unionRoomMan->activityAnswer = *buffer;

    if (*buffer == UR_ACTIVITY_DRAW) {
        CommManager_StartDrawServer();
    }
}

void UnionRoom_RecvChatEnded(int unused0, int unused1, void *unused2, void *fieldSystemPtr)
{
    FieldSystem *fieldSystem = (FieldSystem *)fieldSystemPtr;

    fieldSystem->unionRoomMan->chatEnded = TRUE;
}

BOOL UnionRoom_HasChatEnded(UnionRoomManager *manager)
{
    return manager->chatEnded;
}

int UnionRoom_SendChatEnded(UnionRoomManager *manager, int result)
{
    if (manager->peerActivity == UR_ACTIVITY_NONE) {
        CommSys_SendData(104, NULL, 0);
        return result;
    }

    return 0;
}

void UnionRoom_RecvTrainerCase(int netId, int unused1, void *data, void *fieldSystemPtr)
{
    FieldSystem *fieldSystem = (FieldSystem *)fieldSystemPtr;
    TrainerCase *trainerCase = (TrainerCase *)data;
    TrainerInfo *trainerInfo = CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1);
    void *journalEntryOnlineEvent;

    int i, checksum = 0;
    u8 *bytes = (u8 *)data;

    for (i = 0; i < sizeof(TrainerCase); i++) {
        checksum ^= bytes[i];
    }

    trainerCase->unk_66A = 1;

    if (netId != CommSys_CurNetId()) {
        journalEntryOnlineEvent = JournalEntry_CreateEventGreetedInUnionRoom((u16 *)TrainerInfo_Name(trainerInfo), TrainerInfo_Gender(trainerInfo), 31);
        JournalEntry_SaveData(fieldSystem->journalEntry, journalEntryOnlineEvent, JOURNAL_ONLINE_EVENT);
    }
}

u8 *UnionRoom_GetTrainerCaseRecvBuffer(int netId, void *fieldSystemPtr, int unused2)
{
    FieldSystem *fieldSystem = (FieldSystem *)fieldSystemPtr;
    UnionRoomManager *manager = fieldSystem->unionRoomMan;

    return (u8 *)manager->receivedTrainerCases[netId];
}

void UnionRoom_RecvPartySelectionResult(int netId, int unused1, void *data, void *fieldSystemPtr)
{
    FieldSystem *fieldSystem = (FieldSystem *)fieldSystemPtr;
    UnionRoomManager *manager = fieldSystem->unionRoomMan;
    u8 *buffer = (u8 *)data;

    manager->partySelectionResults[netId] = *buffer;
}

u16 UnionRoom_GetPartySelectionCancelState(UnionRoomManager *manager)
{
    int netId = CommSys_CurNetId();

    if (manager->partySelectionResults[netId] == UR_PARTY_SELECTION_CANCELLED) {
        return UR_PARTY_SELECTION_CANCELLED_BY_LOCAL;
    }

    if (manager->partySelectionResults[netId ^ 1] == UR_PARTY_SELECTION_CANCELLED) {
        return UR_PARTY_SELECTION_CANCELLED_BY_REMOTE;
    }

    return UR_PARTY_SELECTION_NOT_CANCELLED;
}

void UnionRoom_SendPartySelectionResult(enum UnionRoomPartySelectionResult result)
{
    u8 value = result;

    CommSys_SendData(101, &value, 1);
}

static const int sMessagesShowingTrainerCase[][2] = {
    { UnionRoom_Text_ShowTrainerCaseMale, UnionRoom_Text_ShowTrainerCaseFemale },
    { UnionRoom_Text_ShowingTrainerCaseMale, UnionRoom_Text_ShowingTrainerCaseFemale }
};

static const int sMessagesDrawing[][2] = {
    { UnionRoom_Text_DrawingMale1, UnionRoom_Text_DrawingFemale1 },
    { UnionRoom_Text_DrawingMale2, UnionRoom_Text_DrawingFemale2 },
    { UnionRoom_Text_DrawingMale3, UnionRoom_Text_DrawingFemale3 },
    { UnionRoom_Text_DrawingMale4, UnionRoom_Text_DrawingFemale4 }
};

static const int sMessagesBattling[][2] = {
    { UnionRoom_Text_BattlingMale1, UnionRoom_Text_BattlingFemale1 },
    { UnionRoom_Text_BattlingMale2, UnionRoom_Text_BattlingFemale2 },
    { UnionRoom_Text_BattlingMale3, UnionRoom_Text_BattlingFemale3 },
    { UnionRoom_Text_BattlingMale4, UnionRoom_Text_BattlingFemale4 }
};

static const int sMessagesTrading[][2] = {
    { UnionRoom_Text_TradingMale1, UnionRoom_Text_TradingFemale1 },
    { UnionRoom_Text_TradingMale2, UnionRoom_Text_TradingFemale2 }
};

static const int sMessagesMixingRecords[][2] = {
    { UnionRoom_Text_MixingRecordsMale1, UnionRoom_Text_MixingRecordsFemale1 },
    { UnionRoom_Text_MixingRecordsMale2, UnionRoom_Text_MixingRecordsFemale2 },
    { UnionRoom_Text_MixingRecordsMale3, UnionRoom_Text_MixingRecordsFemale3 },
    { UnionRoom_Text_MixingRecordsMale4, UnionRoom_Text_MixingRecordsFemale4 }
};

static const int sMessagesSpinTrading[][2] = {
    { UnionRoom_Text_SpinTradingMale1, UnionRoom_Text_SpinTradingFemale1 },
    { UnionRoom_Text_SpinTradingMale2, UnionRoom_Text_SpinTradingFemale2 },
    { UnionRoom_Text_SpinTradingMale3, UnionRoom_Text_SpinTradingFemale3 },
    { UnionRoom_Text_SpinTradingMale4, UnionRoom_Text_SpinTradingFemale4 }
};

static const int sMessagesStartActivity[][2] = {
    { UnionRoom_Text_ShowTrainerCaseMale, UnionRoom_Text_ShowTrainerCaseFemale },
    { UnionRoom_Text_LetsStartBattleMale, UnionRoom_Text_LetsStartBattleFemale },
    { UnionRoom_Text_LetsStartTradeMale, UnionRoom_Text_LetsStartTradeFemale },
    { UnionRoom_Text_LetsStartDrawMale, UnionRoom_Text_LetsStartDrawFemale },
    { UnionRoom_Text_LetsStartMixRecordsMale, UnionRoom_Text_LetsStartMixRecordsFemale },
    { UnionRoom_Text_LetsStartSpinTradeMale, UnionRoom_Text_LetsStartSpinTradeFemale },
    { UnionRoom_Text_LetsStartSpinTradeMale, UnionRoom_Text_LetsStartSpinTradeFemale }
};

static const int sMessagesThisIsPlayerAskDoSomething[2] = {
    UnionRoom_Text_ThisIsPlayerSomethingToDoMale,
    UnionRoom_Text_ItsPlayerDoSomethingFemale
};

static const int sMessagesTrainerAppearsBusy[2] = {
    UnionRoom_Text_TrainersAppearsBusy,
    UnionRoom_Text_TrainersAppearsBusyFemale
};

static const int sMessagesDeclinedStartActivity[][2] = {
    { UnionRoom_Text_DeclinedShowTrainerCaseMale, UnionRoom_Text_DeclinedShowTrainerCaseFemale },
    { UnionRoom_Text_DeclinedDrawMale, UnionRoom_Text_DeclinedDrawFemale },
    { UnionRoom_Text_DeclinedBattleMale, UnionRoom_Text_DeclinedBattleFemale },
    { UnionRoom_Text_DeclinedTradeMale, UnionRoom_Text_DeclinedTradeFemale },
    { UnionRoom_Text_DeclinedUnusedMale, UnionRoom_Text_DeclinedUnusedFemale },
    { UnionRoom_Text_DeclinedSpinTradeMixRecordsMale, UnionRoom_Text_DeclinedSpinTradeMixRecordsFemale }
};

static const int sMessagesRequirements[][2] = {
    { UnionRoom_Text_NeedTwoLv30PokemonToBattleMale, UnionRoom_Text_NeedTwoLv30PokemonToBattleFemale },
    { UnionRoom_Text_CantTradeIfOnePokemonMale, UnionRoom_Text_CantTradeIfOnePokemonFemale },
    { UnionRoom_Text_NeedEggToSpinTradeMale, UnionRoom_Text_NeedEggToSpinTradeFemale }
};

static const int sMessagesWaitForAnswer[][2] = {
    { UnionRoom_Text_HeresMyTrainerCase, UnionRoom_Text_IllShowMyTrainerCase },
    { UnionRoom_Text_WaitForBattleAnswerMale, UnionRoom_Text_WaitForBattleAnswerFemale },
    { UnionRoom_Text_WaitForTradeAnswerMale, UnionRoom_Text_WaitForTradeAnswerFemale },
    { UnionRoom_Text_WaitForDrawAnswerMale, UnionRoom_Text_WaitForDrawAnswerFemale },
    { UnionRoom_Text_WaitForMixRecordsAnswerMale, UnionRoom_Text_WaitForMixRecordsAnswerFemale },
    { UnionRoom_Text_WaitForSpinTradeAnswerMale, UnionRoom_Text_WaitForSpinTradeAnswerFemale },
    { UnionRoom_Text_WaitForSpinTradeAnswerMale, UnionRoom_Text_WaitForSpinTradeAnswerFemale }
};

static const int sMessagesAskJoinActivity[][2] = {
    { UnionRoom_Text_AskJoinDrawMale, UnionRoom_Text_AskJoinDrawFemale },
    { UnionRoom_Text_AskJoinMixRecordsMale, UnionRoom_Text_AskJoinMixRecordsFemale },
    { UnionRoom_Text_AskJoinSpinTradeMale, UnionRoom_Text_AskJoinSpinTradeFemale }
};

static const int sMessagesJoinedActivity[][2] = {
    { UnionRoom_Text_LetsDrawTogetherMale, UnionRoom_Text_LetsGetDrawingFemale },
    { UnionRoom_Text_LetsMixRecordsTogetherMale, UnionRoom_Text_LetsMixRecordsTogetherFemale },
    { UnionRoom_Text_LetsSpinTradeTogetherMale, UnionRoom_Text_LetsSpinTradeTogetherFemale }
};

static const int sMessagesDeclinedJoinActivity[][2] = {
    { UnionRoom_Text_DeclinedJoinDrawMale, UnionRoom_Text_DeclinedJoinDrawFemale },
    { UnionRoom_Text_DeclinedJoinMixRecordsMale, UnionRoom_Text_DeclinedJoinMixRecordsFemale },
    { UnionRoom_Text_DeclinedJoinSpinTradeMale, UnionRoom_Text_DeclinedJoinSpinTradeFemale }
};

static const int sMessagesDoSomethingElse[] = {
    UnionRoom_Text_DoAnythingElseMale,
    UnionRoom_Text_DoSomethingElseFemale
};

static const int sMessagesAskIfYouWantSomething[2] = {
    UnionRoom_Text_ShoutIfYouWantSomethingMale,
    UnionRoom_Text_AskIfYouWantSomethingFemale
};

static const int sMessagesSomethingElseToDo[2] = {
    UnionRoom_Text_SorrySomethingElseToDoMale,
    UnionRoom_Text_SorrySomethingElseToDoFemale
};

static const int sMessagesBadEgg[2] = {
    UnionRoom_Text_BadEggInPartyMale,
    UnionRoom_Text_BadEggInPartyFemale
};

const u16 gUnionRoomGroupPlayerIndices[] = {
    10,
    14,
    18,
    22,
    26,
    30,
    34,
    38,
    42,
    46
};

static int UnionRoom_GetGroupFromPlayerIndex(int playerIndex)
{
    int i;

    for (i = 0; i < 10; i++) {
        if ((gUnionRoomGroupPlayerIndices[i] <= playerIndex) && ((gUnionRoomGroupPlayerIndices[i] + UNION_ROOM_GROUP_SIZE) > playerIndex)) {
            return i;
        }
    }

    return -1;
}

static int UnionRoom_GetTrainerBusyMessage(UnionRoomManager *manager, int playerIndex)
{
    int gender, index;

    if (playerIndex > 9) {
        index = UnionRoom_GetGroupFromPlayerIndex(playerIndex);
        // always true: playerIndex > 9 here. Asserting the result instead breaks the checksum.
        GF_ASSERT(playerIndex != -1);
    } else {
        index = playerIndex;
    }

    if (manager->bssDesc[index] == NULL) {
        return UnionRoom_Text_TrainersAppearsBusy;
    }

    TrainerInfo *trainerInfo = sub_02033FB0(index);
    UnkStruct_0203330C *userInfo = (UnkStruct_0203330C *)manager->bssDesc[index]->gameInfo.userGameInfo;
    UnionRoomGameInfo *gameInfo = (UnionRoomGameInfo *)userInfo->unk_30;

    if (trainerInfo == NULL) {
        return UnionRoom_Text_TrainersAppearsBusy;
    }

    if (playerIndex > 9) {
        gender = gameInfo->appearanceAndGender[(playerIndex - 10) % UNION_ROOM_GROUP_SIZE];
        gender = gender >> 7;
    } else {
        gender = TrainerInfo_Gender(trainerInfo);
    }

    switch (gameInfo->activity) {
    case UR_STATUS_BUSY:
    case UR_STATUS_UNK_11:
        return sMessagesTrainerAppearsBusy[gender];
        break;
    case UR_STATUS_SHOWING_TRAINER_CASE:
        return sMessagesShowingTrainerCase[LCRNG_Next() % SNELEMS(sMessagesShowingTrainerCase)][gender];
        break;
    case UR_STATUS_BATTLING:
        return sMessagesBattling[LCRNG_Next() % SNELEMS(sMessagesBattling)][gender];
        break;
    case UR_STATUS_TRADING:
        return sMessagesTrading[LCRNG_Next() % SNELEMS(sMessagesTrading)][gender];
        break;
    case UR_STATUS_UNK_08:
    case UR_STATUS_DRAWING:
        return sMessagesDrawing[LCRNG_Next() % SNELEMS(sMessagesDrawing)][gender];
        break;
    case UR_STATUS_UNK_09:
    case UR_STATUS_MIXING_RECORDS:
        return sMessagesMixingRecords[LCRNG_Next() % SNELEMS(sMessagesMixingRecords)][gender];
        break;
    case UR_STATUS_UNK_10:
    case UR_STATUS_UNK_03:
    case UR_STATUS_UNK_12:
    case UR_STATUS_SPIN_TRADING:
        return sMessagesSpinTrading[LCRNG_Next() % SNELEMS(sMessagesSpinTrading)][gender];
        break;
    }

    return UnionRoom_Text_TrainersAppearsBusy;
}

int UnionRoom_GetTrainerCasePlayerMessage(StringTemplate *strTemplate)
{
    u8 playerCountry = CommInfo_PlayerCountry(CommSys_CurNetId());
    u8 commCountry = CommInfo_PlayerCountry(CommSys_CurNetId() ^ 1);
    u8 playerRegion = CommInfo_PlayerRegion(CommSys_CurNetId());
    u8 commRegion = CommInfo_PlayerRegion(CommSys_CurNetId() ^ 1);

    if (commCountry == Country_Text_None) {
        return UnionRoom_Text_PlayersTrainerCase;
    }

    if (commCountry != 0) {
        StringTemplate_SetCountryName(strTemplate, 3, commCountry);

        if (commRegion != 0) {
            StringTemplate_SetCityName(strTemplate, 4, commCountry, commRegion);
        }
    }

    if (playerCountry != commCountry) {
        if (commRegion == 0) {
            return UnionRoom_Text_TrainerCasePlayerFromCountry;
        }

        if (playerRegion == commRegion) {
            return UnionRoom_Text_TrainerCasePlayerFromCountry;
        }

        return UnionRoom_Text_TrainerCasePlayerFromCityCountry;
    }

    if (playerRegion != commRegion) {
        return UnionRoom_Text_TrainerCasePlayerFromCity;
    }

    return UnionRoom_Text_PlayersTrainerCase;
}

static int UnionRoom_GetStartMessage(int activityIndex, int gender, StringTemplate *strTemplate)
{
    if (activityIndex != 0) {
        return sMessagesStartActivity[activityIndex][gender];
    }

    return UnionRoom_GetTrainerCasePlayerMessage(strTemplate);
}

int UnionRoom_GetMessage(UnionRoomManager *manager, int localID, int msgType, StringTemplate *strTemplate)
{
    localID--;

    if (msgType == UR_MSG_TRAINER_BUSY) {
        return UnionRoom_GetTrainerBusyMessage(manager, localID);
    }

    TrainerInfo *trainerInfo = sub_02033FB0(localID);

    if (trainerInfo == NULL) {
        CommManager_SetErrorHandling(1, 1);
        CommManager_SetCommError(1);
        return 0;
    }

    int gender = TrainerInfo_Gender(trainerInfo);

    switch (msgType) {
    case UR_MSG_LETS_START:
        return UnionRoom_GetStartMessage(manager->proposedActivity - 1, gender, strTemplate);
        break;
    case UR_MSG_THIS_IS_PLAYER_ASK_DO_SOMETHING:
        return sMessagesThisIsPlayerAskDoSomething[gender];
        break;
    case UR_MSG_WAIT_FOR_ANSWER:
        if (manager->proposedActivity == UR_ACTIVITY_NONE) {
            return 0;
        }
        return sMessagesWaitForAnswer[manager->proposedActivity - 1][gender];
        break;
    case UR_MSG_NEED_TWO_LV_30_POKEMON_TO_BATTLE:
    case UR_MSG_CANT_TRADE_IF_ONE_POKEMON:
    case UR_MSG_NEED_EGG_TO_SPIN_TRADE:
        return sMessagesRequirements[msgType - UR_MSG_NEED_TWO_LV_30_POKEMON_TO_BATTLE][gender];
        break;
    case UR_MSG_DECLINED_GREET:
    case UR_MSG_DECLINED_DRAW:
    case UR_MSG_DECLINED_BATTLE:
    case UR_MSG_DECLINED_TRADE:
    case UR_MSG_DECLINED_UNUSED:
    case UR_MSG_DECLINED_SPIN_TRADE_MIX_RECORDS:
        return sMessagesDeclinedStartActivity[msgType - UR_MSG_DECLINED_GREET][gender];
        break;
    case UR_MSG_ASK_JOIN_DRAW:
    case UR_MSG_ASK_JOIN_MIX_RECORDS:
    case UR_MSG_ASK_JOIN_SPIN_TRADE:
        return sMessagesAskJoinActivity[msgType - UR_MSG_ASK_JOIN_DRAW][gender];
        break;
    case UR_MSG_JOINED_DRAW:
    case UR_MSG_JOINED_MIX_RECORDS:
    case UR_MSG_JOINED_SPIN_TRADE:
        return sMessagesJoinedActivity[msgType - UR_MSG_JOINED_DRAW][gender];
        break;
    case UR_MSG_DECLINED_JOIN_DRAW:
    case UR_MSG_DECLINED_JOIN_MIX_RECORDS:
    case UR_MSG_DECLINED_JOIN_SPIN_TRADE:
        return sMessagesDeclinedJoinActivity[msgType - UR_MSG_DECLINED_JOIN_DRAW][gender];
        break;
    case UR_MSG_DO_SOMETHING_ELSE:
        return sMessagesDoSomethingElse[gender];
        break;
    case UR_MSG_ASK_IF_YOU_WANT_SOMETHING:
        return sMessagesAskIfYouWantSomething[gender];
        break;
    case UR_MSG_SOMETHING_ELSE_TO_DO:
        return sMessagesSomethingElseToDo[gender];
        break;
    case UR_MSG_CANT_SPIN_TRADE_DIAMOND_PEARL:
        return UnionRoom_Text_CantSpinTradeDiamondPearl;
        break;
    case UR_MSG_CANT_SPIN_TRADE_BAD_EGG:
        return sMessagesBadEgg[gender];
        break;
    }

    GF_ASSERT(FALSE);
    return UnionRoom_Text_TrainersAppearsBusy;
}

u8 UnionRoom_GetCommInfoGameCode(void)
{
    TrainerInfo *trainerInfo = CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1);
    GF_ASSERT(trainerInfo != NULL);
    return TrainerInfo_GameCode(trainerInfo);
}

static void UnionRoom_UpdateMemberInfo(UnionRoomGameInfo *gameInfo, int unused)
{
    TrainerInfo *trainerInfo;
    int i;

    for (i = 1; i < UNION_ROOM_GROUP_SIZE + 1; i++) {
        int index = i - 1;

        trainerInfo = CommInfo_TrainerInfo(i);

        if (trainerInfo != NULL) {
            if (CommSys_CurNetId() == 0) {
                gameInfo->trainerIDs[index] = TrainerInfo_ID(trainerInfo);
                gameInfo->appearanceAndGender[index] = TrainerInfo_Appearance(trainerInfo) | (TrainerInfo_Gender(trainerInfo) << 7);
            }
        } else {
            gameInfo->trainerIDs[index] = 0;
            gameInfo->appearanceAndGender[index] = 0;
        }
    }
}

void UnionRoom_SetStatus(enum UnionRoomStatus status)
{
    UnionRoomGameInfo gameInfo;

    MI_CpuClear8(&gameInfo, sizeof(UnionRoomGameInfo));

    switch (status) {
    case UR_STATUS_NONE:
        break;
    case UR_STATUS_BUSY:
        break;
    case UR_STATUS_UNK_11:
        UnionRoom_UpdateMemberInfo(&gameInfo, 2);
        break;
    case UR_STATUS_TRADING:
    case UR_STATUS_SHOWING_TRAINER_CASE:
    case UR_STATUS_BATTLING:
        UnionRoom_UpdateMemberInfo(&gameInfo, 2);
        break;
    case UR_STATUS_UNK_08:
        UnionRoom_UpdateMemberInfo(&gameInfo, 5);
        break;
    case UR_STATUS_DRAWING:
        UnionRoom_UpdateMemberInfo(&gameInfo, 4);
        break;
    case UR_STATUS_UNK_09:
        UnionRoom_UpdateMemberInfo(&gameInfo, 5);
        break;
    case UR_STATUS_MIXING_RECORDS:
        UnionRoom_UpdateMemberInfo(&gameInfo, 4);
        break;
    case UR_STATUS_UNK_10:
    case UR_STATUS_UNK_12:
        UnionRoom_UpdateMemberInfo(&gameInfo, 5);
        break;
    case UR_STATUS_UNK_03:
    case UR_STATUS_SPIN_TRADING:
        UnionRoom_UpdateMemberInfo(&gameInfo, 4);
        break;
    }

    gameInfo.activity = status;

    sub_020340C4(&gameInfo);
    sub_020340FC();
}

static const int sTealaMessages[] = {
    UnionRoom_Text_Teala1,
    UnionRoom_Text_Teala2,
    UnionRoom_Text_Teala3,
    UnionRoom_Text_Teala4,
    UnionRoom_Text_Teala5,
    UnionRoom_Text_Teala6,
    UnionRoom_Text_Teala7,
    UnionRoom_Text_Teala8,
    UnionRoom_Text_Teala9,
    UnionRoom_Text_Teala10,
    UnionRoom_Text_Teala11,
    UnionRoom_Text_Teala12,
    UnionRoom_Text_Teala13,
    UnionRoom_Text_Teala14,
    UnionRoom_Text_Teala15,
    UnionRoom_Text_Teala16,
    UnionRoom_Text_Teala17,
    UnionRoom_Text_Teala18,
    UnionRoom_Text_Teala19,
    UnionRoom_Text_Teala20
};

int UnionRoom_GetTealaMessage(UnionRoomManager *manager, StringTemplate *strTemplate)
{
    int i, count = 0;
    u16 word;

    for (i = 0; i < 10; i++) {
        if (manager->bssDesc[i] != NULL) {
            count++;
        }
    }

    if (count != 0) {
        return UnionRoom_Text_HereComesSomeoneNow;
    }

    if (!EasyChatSentence_IsValid(&manager->pendingSentence)) {
        return UnionRoom_Text_BoringIfNoOneComes;
    }

    if (EasyChatSentence_GetType(&manager->pendingSentence) != EASY_CHAT_SENTENCE_TYPE_UNION_ROOM) {
        int appearance = TrainerInfo_Appearance(manager->trainerInfo);
        int gender = TrainerInfo_Gender(manager->trainerInfo);

        StringTemplate_SetTrainerClassName(strTemplate, 0, Appearance_GetData(gender, appearance, APPEARANCE_DATA_TRAINER_CLASS_1));

        return UnionRoom_Text_MistakenForTrainerClass;
    }

    int id = EasyChatSentence_GetID(&manager->pendingSentence);

    if (id >= 20) {
        id = 0;
    }

    if ((word = EasyChatSentence_GetWord(&manager->pendingSentence, 0)) != WORD_NONE) {
        StringTemplate_SetEasyChatWord(strTemplate, 0, word);
    }

    return sTealaMessages[id];
}

static void UnionRoom_ClearStatus(UnionRoomGameInfo *gameInfo)
{
    int i;

    gameInfo->activity = UR_STATUS_NONE;

    for (i = 0; i < 4; i++) {
        gameInfo->trainerIDs[i] = 0;
        gameInfo->appearanceAndGender[i] = 0;
        gameInfo->unused_10[i] = 0;
        gameInfo->unused_14[i] = 0;
    }
}

void UnionRoom_SetPendingSentence(UnionRoomManager *manager, EasyChatSentence *sentence)
{
    EasyChatSentence_Copy(&manager->pendingSentence, sentence);
    manager->sentencePending = TRUE;
}

EasyChatSentence *UnionRoom_TakePendingSentence(UnionRoomManager *manager)
{
    if (manager->sentencePending == FALSE) {
        return NULL;
    }

    manager->sentencePending = FALSE;
    return &manager->pendingSentence;
}

void UnionRoom_DoGreeting(StringTemplate *strTemplate, BOOL useConnectedPlayer, int localID, TrainerInfo *playerTrainerInfo, UnlockedEasyChatWords *unlockedWords)
{
    TrainerInfo *commTrainerInfo;
    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNION_ROOM, HEAP_ID_FIELD1);
    int entryID;

    localID--;

    if (useConnectedPlayer == FALSE) {
        commTrainerInfo = sub_02033FB0(localID);
    } else {
        commTrainerInfo = CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1);
    }

    if (commTrainerInfo == NULL) {
        MessageLoader_Free(msgLoader);
        return;
    }

    StringTemplate_SetPlayerName(strTemplate, 0, commTrainerInfo);
    StringTemplate_SetPlayerName(strTemplate, 1, playerTrainerInfo);

    int language = TrainerInfo_Language(commTrainerInfo);

    if (language >= LANGUAGE_JAPANESE && language <= LANGUAGE_SPANISH) {
        static const int greetingBankEntries[] = {
            [LANGUAGE_JAPANESE - 1] = Greetings_Text_Konnichiwa,
            [LANGUAGE_ENGLISH - 1] = Greetings_Text_Hello,
            [LANGUAGE_FRENCH - 1] = Greetings_Text_Bonjour,
            [LANGUAGE_ITALIAN - 1] = Greetings_Text_Ciao,
            [LANGUAGE_GERMAN - 1] = Greetings_Text_Hallo,
            [LANGUAGE_UNUSED_6 - 1] = -1,
            [LANGUAGE_SPANISH - 1] = Greetings_Text_Hola,
        };
        u16 index = language - 1;

        if (index < NELEMS(greetingBankEntries) && greetingBankEntries[index] >= 0) {
            EasyChatWords_UnlockGreeting(unlockedWords, greetingBankEntries[index]);
        }
    }

    switch (language) {
    case LANGUAGE_JAPANESE:
        entryID = UnionRoom_Text_GreetingJapanese;
        break;
    case LANGUAGE_ENGLISH:
        entryID = UnionRoom_Text_GreetingEnglish;
        break;
    case LANGUAGE_FRENCH:
        entryID = UnionRoom_Text_GreetingFrench;
        break;
    case LANGUAGE_ITALIAN:
        entryID = UnionRoom_Text_GreetingItalian;
        break;
    case LANGUAGE_GERMAN:
        entryID = UnionRoom_Text_GreetingGerman;
        break;
    case LANGUAGE_SPANISH:
        entryID = UnionRoom_Text_GreetingSpanish;
        break;
    default:
        entryID = UnionRoom_Text_GreetingDefault;
    }

    String *string = MessageLoader_GetNewString(msgLoader, entryID);

    StringTemplate_SetString(strTemplate, 2, string, 0, TRUE, language);
    Heap_Free(string);
    MessageLoader_Free(msgLoader);
}

void UnionRoom_SetSentence(EasyChatSentence *sentence)
{
    UnionRoomGameInfo gameInfo;

    UnionRoom_ClearStatus(&gameInfo);
    gameInfo.activity = UR_STATUS_NONE;

    sub_020340A8(sentence);
    sub_020340C4(&gameInfo);
    sub_020340FC();
}

void UnionRoom_ResetActivity(UnionRoomManager *manager)
{
    manager->peerActivity = UR_ACTIVITY_NONE;
    manager->activityAnswer = UR_ACTIVITY_NONE;
    manager->chatEnded = FALSE;
}

static void UnionRoom_ResetState(UnionRoomManager *manager)
{
    manager->pendingConnection = UR_PENDING_CONNECTION_NONE;
    manager->unused_24 = 0;
    manager->unused_2C = 0;
    manager->peerActivity = UR_ACTIVITY_NONE;
    manager->activityAnswer = UR_ACTIVITY_NONE;
    manager->unused_174 = 0;
    manager->sentencePending = FALSE;
    manager->chatEnded = FALSE;
}

void *UnionRoom_GetTrainerCase(UnionRoomManager *manager)
{
    manager->trainerCase = TrainerCase_New(HEAP_ID_SYSTEM);
    manager->receivedTrainerCases[0] = TrainerCase_New(HEAP_ID_SYSTEM);
    manager->receivedTrainerCases[1] = TrainerCase_New(HEAP_ID_SYSTEM);

    TrainerCase_Init(FALSE, FALSE, 0, Appearance_GetData(TrainerInfo_Gender(manager->trainerInfo), TrainerInfo_Appearance(manager->trainerInfo), 0), manager->fieldSystem, manager->trainerCase);

    return (void *)manager->receivedTrainerCases[CommSys_CurNetId() ^ 1];
}

void UnionRoom_FreeTrainerCases(UnionRoomManager *manager)
{
    Heap_Free(manager->receivedTrainerCases[0]);
    Heap_Free(manager->receivedTrainerCases[1]);
    Heap_Free(manager->trainerCase);
}

void UnionRoom_SendTrainerCase(UnionRoomManager *manager)
{
    CommSys_SendDataHuge(105, manager->trainerCase, sizeof(TrainerCase));
}
