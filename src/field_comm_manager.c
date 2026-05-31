#include "field_comm_manager.h"

#include <nitro.h>
#include <string.h>

#include "constants/communication/comm_sync.h"
#include "constants/communication/comm_type.h"
#include "constants/graphics.h"
#include "constants/heap.h"

#include "field/field_system.h"
#include "functypes/funcptr_020598EC.h"
#include "overlay007/communication_club.h"
#include "underground/manager.h"

#include "appearance.h"
#include "comm_manager.h"
#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "encounter.h"
#include "field_system.h"
#include "heap.h"
#include "party.h"
#include "savedata.h"
#include "screen_fade.h"
#include "script_manager.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "trainer_case.h"
#include "trainer_info.h"
#include "underground.h"
#include "unk_02033200.h"
#include "unk_020363E8.h"
#include "unk_0205A0D8.h"
#include "unk_02099500.h"

static void FieldCommManager_RunTask(SysTask *task, void *unused);
static void FieldCommManager_SetTask(FieldCommTask task, int time);
static void FieldCommTask_StartBattleServer(void);
static void FieldCommTask_WaitBattleServer(void);
static void FieldCommTask_StartBattleClient(void);
static void FieldCommTask_ScanBattleClient(void);
static void FieldCommTask_ConnectBattleClient(void);
static void FieldCommTask_SendPlayerInfoClient(void);
static void FieldCommTask_WaitBattleClient(void);
static void FieldCommTask_EnterBattleRoom(void);
static void FieldCommTask_EnterBattleRoom_SendPos(void);
static void FieldCommTask_ReturnToBattleRoom(void);
static void FieldCommTask_ReturnToBattleRoom_SendPos(void);
static void FieldCommTask_ReturnToBattleRoom_WaitForScreenFade(void);
static void FieldCommTask_WaitBattleRoomMovement(void);
static void FieldCommTask_BattleRoomMovement(void);
static void FieldCommTask_ResetBattleClient(void);
static void FieldCommTask_ReinitBattleClient(void);
static void FieldCommTask_InitializeVsBattle(void);
static void FieldCommTask_StartVsLinkBattle(void);
static void FieldCommTask_CopyTrainerCase(void);
static void FieldCommTask_SwitchTransitionType(void);
static void FieldCommTask_StartCopyTrainerCase(void);
static void FieldCommTask_ChangeToBattleRoom(void);
static void FieldCommTask_EndBattleSync(void);
static void FieldCommTask_EndBattleNoSync(void);
static void FieldCommTask_EndConnection(void);

static FieldCommunicationManager *sFieldCommMan = NULL;

/**
 * @brief Gets the pointer to the field communication manager
 *
 * @return sFieldCommMan
 */
FieldCommunicationManager *FieldCommManager_Get(void)
{
    return sFieldCommMan;
}

/**
 * @brief Deadstripped function. Does nothing when called.
 */
static void FieldCommManager_Dummy(void)
{
    return;
}

/**
 * @brief Initializes the field communication manager
 *
 * @param fieldSystem
 */
void FieldCommManager_Init(FieldSystem *fieldSystem)
{
    if (sFieldCommMan != NULL) {
        return;
    }

    CommFieldCmd_Init(fieldSystem);

    sFieldCommMan = (FieldCommunicationManager *)Heap_Alloc(HEAP_ID_COMMUNICATION, sizeof(FieldCommunicationManager));
    MI_CpuFill8(sFieldCommMan, 0, sizeof(FieldCommunicationManager));

    sFieldCommMan->timer = 50;
    sFieldCommMan->sysTask = SysTask_Start(FieldCommManager_RunTask, NULL, 10);
    sFieldCommMan->fieldSystem = fieldSystem;
    sFieldCommMan->party = NULL;

    FieldCommManager_Dummy();
    CommSys_Seed(&sFieldCommMan->rand);
}

/**
 * @brief Frees the field communication manager.
 */
void FieldCommManager_Delete(void)
{
    int i;

    if (sFieldCommMan == NULL) {
        return;
    }

    SysTask_Done(sFieldCommMan->sysTask);

    for (i = 0; i < 4; i++) {
        if (sFieldCommMan->trainerCase[i]) {
            Heap_Free(sFieldCommMan->trainerCase[i]);
        }
    }

    if (sFieldCommMan->party) {
        Heap_Free(sFieldCommMan->party);
    }

    Heap_Free(sFieldCommMan);
    sFieldCommMan = NULL;
}

/**
 * @brief Initializes the Field Communication Manager for battles as a server
 *
 * @param fieldSystem
 * @param commType
 * @param regulation
 */
void FieldCommManager_StartBattleServer(FieldSystem *fieldSystem, int commType, int regulation)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    CommManager_StartBattleServer(FieldSystem_GetSaveData(fieldSystem), commType, regulation, fieldSystem->battleRegulation, 0);
    FieldCommManager_Init(fieldSystem);
    FieldCommManager_SetTask(FieldCommTask_StartBattleServer, 0);
}

/**
 * @brief Initializes the Field Communication Manager for battles as a client
 *
 * @param fieldSystem
 * @param commType
 * @param regulation
 */
void FieldCommManager_StartBattleClient(FieldSystem *fieldSystem, int commType, int regulation)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    CommManager_StartBattleClient(FieldSystem_GetSaveData(fieldSystem), commType, regulation, fieldSystem->battleRegulation, 0);
    FieldCommManager_Init(fieldSystem);
    FieldCommManager_SetTask(FieldCommTask_StartBattleClient, 0);
}

/**
 * @brief Begins connecting a client to the battle
 *
 * @param connectID
 */
void FieldCommManager_ConnectBattleClient(int connectID)
{
    sFieldCommMan->connectID = connectID;
    FieldCommManager_SetTask(FieldCommTask_ConnectBattleClient, 0);
}

/**
 * @brief Attempts to reconnect the client to a battle
 */
void FieldCommManager_ReconnectBattleClient(void)
{
    FieldCommManager_SetTask(FieldCommTask_ResetBattleClient, 0);
}

/**
 * @brief Launches the Union's Battle Room / Colosseum and begins the overworld connection tasks
 */
void FieldCommManager_EnterBattleRoom(FieldSystem *fieldSystem)
{
    SetupScreenFadeRegisters(DS_SCREEN_MAIN, COLOR_BLACK);
    SetupScreenFadeRegisters(DS_SCREEN_SUB, COLOR_BLACK);
    CommManager_SetErrorHandling(1, 1);

    if (!CommManager_IsInitialized()) {
        return;
    }

    if (sFieldCommMan == NULL) {
        FieldCommManager_Init(fieldSystem);
        sFieldCommMan->isReturningFromBattle = TRUE;
    } else {
        sFieldCommMan->isReturningFromBattle = FALSE;
    }

    sFieldCommMan->battleRoomMovement = FALSE;

    {
        int netJd, netId = CommSys_CurNetId();
        CommInfo_TrainerInfo(CommSys_CurNetId());

        for (netJd = 0; netJd < CommSys_ConnectedCount(); netJd++) {
            if (sFieldCommMan->trainerCase[netJd] == NULL) {
                sFieldCommMan->trainerCase[netJd] = Heap_Alloc(HEAP_ID_SYSTEM, sizeof(TrainerCase));
            }
        }

        TrainerCase_Init(FALSE, FALSE, 0, TRAINER_APPEARANCE_DEFAULT, sFieldCommMan->fieldSystem, sFieldCommMan->trainerCase[netId]);
    }

    CommTiming_StartSync(SYNC_SEND_TRAINER_CASE);
    FieldCommManager_SetTask(FieldCommTask_StartCopyTrainerCase, 0);
}

/**
 * @brief Forcibly ends the battle and connection without sync checking or error handling
 */
void FieldCommManager_EndBattleNoSync(void)
{
    if (sFieldCommMan == NULL) {
        return;
    }

    CommManager_SetErrorHandling(FALSE, FALSE);
    FieldCommManager_SetTask(FieldCommTask_EndBattleNoSync, 5);
}

/**
 * @brief Ends the battle and connection with sync checking and error handling
 */
void FieldCommManager_EndBattleSync(void)
{
    if (sFieldCommMan == NULL) {
        return;
    }

    CommTiming_StartSync(SYNC_BATTLE_END_CONNECTION);
    FieldCommManager_SetTask(FieldCommTask_EndBattleSync, 5);
}

/**
 * @brief Ends the given task and runs the internal sFieldCommMan->task
 *
 * @param task
 * @param unused
 */
void FieldCommManager_RunTask(SysTask *task, void *unused)
{
    if (sFieldCommMan == NULL) {
        SysTask_Done(task);
    } else {
        if (sFieldCommMan->task != NULL) {
            FieldCommTask commTask = sFieldCommMan->task;

            if (!sFieldCommMan->pauseTask) {
                commTask();
            }
        }
    }
}

/**
 * @brief Sets the current task with a time before it gets executed, if that task has a timer
 *
 * @param task
 * @param time
 */
static void FieldCommManager_SetTask(FieldCommTask task, int time)
{
    sFieldCommMan->task = task;
    sFieldCommMan->timer = time;
}

/**
 * @brief Task to start the initialize the communication manager as a server for battles
 */
static void FieldCommTask_StartBattleServer(void)
{
    if (!CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        return;
    }

    ov7_0224B4B8();

    CommInfo_SendPlayerInfo();
    FieldCommManager_SetTask(FieldCommTask_WaitBattleServer, 0);
}

/**
 * @brief Indicator task that the Field Communication Manager initialized as a server is waiting for battles. Does nothing when called.
 */
static void FieldCommTask_WaitBattleServer(void)
{
    return;
}

/**
 * @brief Task to start the initialize the communication manager as a client for battles
 */
static void FieldCommTask_StartBattleClient(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }

    CommClub_PrintChooseJoinMsg();
    FieldCommManager_SetTask(FieldCommTask_ScanBattleClient, 0);
}

/**
 * @brief Indicator task that the Field Communication Manager initialized as a client is scanning for battles. Does nothing when called.
 */
static void FieldCommTask_ScanBattleClient(void)
{
    return;
}

/**
 * @brief Task to open a client connection for battles
 */
static void FieldCommTask_ConnectBattleClient(void)
{
    CommManager_ConnectBattleClient(sFieldCommMan->connectID);
    FieldCommManager_SetTask(FieldCommTask_SendPlayerInfoClient, 0);
}

/**
 * @brief Task to send the Player Info of the client to the server
 */
static void FieldCommTask_SendPlayerInfoClient(void)
{
    if (!CommManager_IsWaitingBattle()) {
        return;
    }

    CommInfo_SendPlayerInfo();
    FieldCommManager_SetTask(FieldCommTask_WaitBattleClient, 0);
}

/**
 * @brief Indicator task that the Field Communication Manager initialized as a client is waiting for battles. Does nothing when called.
 */
static void FieldCommTask_WaitBattleClient(void)
{
    return;
}

/**
 * @brief Task used when returning to the overworld battle room from a battle
 */
static void FieldCommTask_ReturnToBattleRoom(void)
{
    if (CommTiming_IsSyncState(SYNC_CHANGE_TO_BATTLE_ROOM)) {
        void *commPlayerData = Heap_Alloc(HEAP_ID_COMMUNICATION, CommPlayer_Size());
        CommPlayerMan_Init(commPlayerData, sFieldCommMan->fieldSystem, 0);
        sub_02059524();
        CommSys_DisableSendMovementData();
        CommTiming_StartSync(SYNC_PAUSE_BATTLE);
        FieldCommManager_SetTask(FieldCommTask_ReturnToBattleRoom_SendPos, 0);
        return;
    }

    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
    } else {
        sFieldCommMan->timer = 30;
        CommTiming_StartSync(SYNC_CHANGE_TO_BATTLE_ROOM);
    }
}

/**
 * @brief Part of the Return to Battle Room sequence. Reinitializes the CommPlayerManager and sends the player's position
 */
static void FieldCommTask_ReturnToBattleRoom_SendPos(void)
{
    if (CommSys_CurNetId() == 0) {
        CommInfo_ServerSendArray();
    }

    if (CommTiming_IsSyncState(SYNC_PAUSE_BATTLE)) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
        ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
        ResetVisibleHardwareWindows(DS_SCREEN_SUB);
        CommPlayerMan_Restart();
        CommPlayer_SendPos(FALSE);
        FieldCommManager_SetTask(FieldCommTask_ReturnToBattleRoom_WaitForScreenFade, 1);
    }
}

/**
 * @brief Part of the Return to Battle Room sequence. Renables the sending of movement data
 */
static void FieldCommTask_ReturnToBattleRoom_EnableSendMovementData(void)
{
    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
        return;
    }

    if (CommTiming_IsSyncState(SYNC_BATTLE_ROOM_RETURN)) {
        CommSys_EnableSendMovementData();
        FieldCommManager_SetTask(FieldCommTask_WaitBattleRoomMovement, 0);
    }
}

/**
 * @brief Part of the Return to Battle Room sequence. Waits for the screen fade to finish before changing the sync state.
 */
static void FieldCommTask_ReturnToBattleRoom_WaitForScreenFade(void)
{
    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
        return;
    }

    if (CommSys_CurNetId() == 0) {
        if (0 == sub_0205928C()) {
            return;
        }

        CommTiming_StartSync(SYNC_BATTLE_ROOM_RETURN);
    } else {
        CommTiming_StartSync(SYNC_BATTLE_ROOM_RETURN);
    }

    FieldCommManager_SetTask(FieldCommTask_ReturnToBattleRoom_EnableSendMovementData, 20);
}

/**
 * @brief Task to initialize the union room when entering for the first time
 */
static void FieldCommTask_EnterBattleRoom(void)
{
    if (CommTiming_IsSyncState(SYNC_CHANGE_TO_BATTLE_ROOM)) {
        void *commPlayerData = Heap_Alloc(HEAP_ID_COMMUNICATION, CommPlayer_Size());
        CommPlayerMan_Init(commPlayerData, sFieldCommMan->fieldSystem, 0);
        sub_02059524();
        CommTiming_StartSync(SYNC_PAUSE_BATTLE);
        FieldCommManager_SetTask(FieldCommTask_EnterBattleRoom_SendPos, 0);
        return;
    }

    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
    } else {
        sFieldCommMan->timer = 30;
        CommTiming_StartSync(SYNC_CHANGE_TO_BATTLE_ROOM);
    }
}

/**
 * @brief Part of the Enter Battle Room sequence. Reinitializes the CommPlayerManager and sends the player's position
 */
static void FieldCommTask_EnterBattleRoom_SendPos(void)
{
    if (CommSys_CurNetId() == 0) {
        CommInfo_ServerSendArray();
    }

    if (CommTiming_IsSyncState(SYNC_PAUSE_BATTLE)) {
        CommPlayerMan_Restart();
        CommPlayer_SendPos(FALSE);

        u8 data = 1;
        CommSys_SendDataFixedSize(94, &data);

        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
        ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
        ResetVisibleHardwareWindows(DS_SCREEN_SUB);
        FieldCommManager_SetTask(FieldCommTask_BattleRoomMovement, 0);
    }
}

/**
 * @brief Checks if the current Field System task is NULL, indicating the room has been left. Frees trainer case data on exit.
 */
static void FieldCommManager_CheckExitRoom(void)
{
    int netId, j;

    for (netId = 0; netId < CommSys_ConnectedCount(); netId++) {
        if (netId != CommSys_CurNetId()) {
            if (CommTool_GetSyncNo(netId) == SYNC_94) {
                if (sFieldCommMan->fieldSystem->task == NULL) {
                    for (j = 0; j < 4; j++) {
                        if (sFieldCommMan->trainerCase[j]) {
                            Heap_Free(sFieldCommMan->trainerCase[j]);
                            sFieldCommMan->trainerCase[j] = NULL;
                        }
                    }

                    ScriptManager_Set(sFieldCommMan->fieldSystem, SCRIPT_ID(COMMUNICATION_CLUB, 2), NULL);
                }
            }
        }
    }

    CommManager_Dummy_02038A1C(4, sFieldCommMan->fieldSystem->bgConfig);
}

/**
 * @brief Task for when a player is waiting in the battle room / colosseum. Checks for a battle starting or a player exiting the room. Movement allowed.
 */
static void FieldCommTask_WaitBattleRoomMovement(void)
{
    if (!sub_020590C4()) {
        sFieldCommMan->battleRoomMovement = FALSE;

        u8 data = 1;
        CommSys_SendDataFixedSize(94, &data);

        FieldCommManager_SetTask(FieldCommTask_BattleRoomMovement, 0);
    }

    FieldCommManager_CheckExitRoom();
}

/**
 * @brief Callback for sub_0205AB10. Effectively acts like a task, as it changes the task when called.
 *
 * @param param0
 * @param party
 */
static void FieldCommManager_UnknownCallback(BOOL param0, const Party *party)
{
    if (party) {
        sFieldCommMan->party = Party_New(HEAP_ID_FIELD2);
        Party_Copy(party, sFieldCommMan->party);
    }

    if (param0) {
        FieldCommManager_SetTask(FieldCommTask_InitializeVsBattle, 3);
    } else {
        u8 data = 3;
        CommSys_SendDataFixedSize(94, &data);

        FieldCommManager_SetTask(FieldCommTask_WaitBattleRoomMovement, 0);
    }
}

/**
 * @brief Task that sets the task to FieldCommTask_WaitBattleRoomMovement and does nothing else.
 */
static void FieldCommTask_StartWaitBattleRoom(void)
{
    FieldCommManager_SetTask(FieldCommTask_WaitBattleRoomMovement, 0);
}

/**
 * @brief Difficult to tell what this does without documenting further into unk_0205A0D8.c. Related to the 4 tiles of field events in the battle room.
 */
static void FieldCommTask_02059C8C(void)
{
    if (sub_020363A0() || (0 != CommPlayer_GetMovementTimer(CommSys_CurNetId()))) {
        return;
    }

    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
        return;
    }

    CommPlayerMan_PauseFieldSystem();
    sub_0205AB10(sFieldCommMan->fieldSystem, FieldCommManager_UnknownCallback);
    FieldCommManager_SetTask(FieldCommTask_StartWaitBattleRoom, 0);
}

/**
 * @brief Task that checks for battle room movement and exiting the room.
 */
static void FieldCommTask_BattleRoomMovement(void)
{
    if (sFieldCommMan->battleRoomMovement) {
        FieldCommManager_SetTask(FieldCommTask_02059C8C, 5);

        u8 data = 0;
        CommSys_SendDataFixedSize(94, &data);
    }

    FieldCommManager_CheckExitRoom();
}

/**
 * @brief Sets the update movement flag to TRUE if message's first element is the user's NetId
 *
 * @param unused0
 * @param unused1
 * @param message
 * @param unused3
 */
void FieldCommManager_UpdateBattleRoomMovement(int unused0, int unused1, void *message, void *unused3)
{
    u8 *data = message;

    if (data[0] == CommSys_CurNetId()) {
        sFieldCommMan->battleRoomMovement = TRUE;
    }
}

/**
 * @brief Checks if the current task is movement or waiting for movement
 *
 * @return TRUE if the current task is FieldCommTask_BattleRoomMovement or FieldCommTask_WaitBattleRoomMovement
 */
BOOL FieldCommManager_IsInMovementState(void)
{
    if (sFieldCommMan) {
        if ((sFieldCommMan->task == FieldCommTask_BattleRoomMovement) || (sFieldCommMan->task == FieldCommTask_WaitBattleRoomMovement)) {
            return TRUE;
        }
    }

    return FALSE;
}

/**
 * @brief Task that sets the preview party and starts a Vs battle, then deletes the Field Communication Manager
 */
static void FieldCommTask_StartVsLinkBattle(void)
{
    int battleType;
    u8 partyOrder[MAX_PARTY_SIZE];

    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
        return;
    }

    battleType = BATTLE_TYPE_LINK | BATTLE_TYPE_TRAINER;

    switch (CommManager_GetCommType()) {
    case COMM_TYPE_MULTI_BATTLE_1:
    case COMM_TYPE_MULTI_BATTLE_2:
        battleType = BATTLE_TYPE_LINK_DOUBLES | BATTLE_TYPE_2vs2;
        break;
    case COMM_TYPE_DOUBLE_BATTLE:
        battleType = BATTLE_TYPE_LINK_DOUBLES;
        break;
    }

    CommManager_GetParty(partyOrder);

    if (sFieldCommMan->party == NULL) {
        Encounter_NewVsLinkWithRecording(sFieldCommMan->fieldSystem, partyOrder, battleType);
    } else {
        Encounter_NewVsLinkWithRecordingAndParty(sFieldCommMan->fieldSystem, sFieldCommMan->party, battleType);
        Heap_Free(sFieldCommMan->party);
        sFieldCommMan->party = NULL;
    }

    FieldCommManager_Delete();
}

/**
 * @brief Waits for the timer to stop before starting the Vs Link battle
 */
static void FieldCommTask_WaitStartVsLinkBattle(void)
{
    if (CommSys_TransitionTypeIsParallel()) {
        if (sFieldCommMan->timer != 0) {
            sFieldCommMan->timer--;
        }

        if (sFieldCommMan->timer == 90) {
            CommTiming_StartSync(SYNC_START_VS_LINK_BATTLE);
        }

        if (CommTiming_IsSyncState(SYNC_START_VS_LINK_BATTLE)) {
            FieldCommManager_SetTask(FieldCommTask_StartVsLinkBattle, 0);
        }
    }
}

/**
 * @brief Switches the transition type to parallel and starts the wait vs link battle task
 */
static void FieldCommTask_SwitchTransitionToParallelAndStartVsLinkBattle(void)
{
    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
        return;
    }

    CommSys_SwitchTransitionTypeToParallel();
    FieldCommManager_SetTask(FieldCommTask_WaitStartVsLinkBattle, 120);
}

/**
 * @brief Changes the task to FieldCommTask_SwitchTransitionToParallelAndStartVsLinkBattle
 */
static void FieldCommTask_StartSwitchTransitionToParallelAndStartVsLinkBattle(void)
{
    if (CommTiming_IsSyncState(SYNC_INIT_VS_LINK_BATTLE)) {
        FieldCommManager_SetTask(FieldCommTask_SwitchTransitionToParallelAndStartVsLinkBattle, 2);
    }
}

/**
 * @brief Task to delete the Communication Player Manager and start the versus battle
 */
static void FieldCommTask_InitializeVsBattle(void)
{
    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
        return;
    }

    CommPlayerMan_Delete(FALSE);
    CommTiming_StartSync(SYNC_INIT_VS_LINK_BATTLE);
    FieldCommManager_SetTask(FieldCommTask_StartSwitchTransitionToParallelAndStartVsLinkBattle, 0);
}

/**
 * @brief Task that resets the client for battles and reinitializes the Field Comm Manager
 */
static void FieldCommTask_ResetBattleClient(void)
{
    CommManager_ResetBattleClient();
    FieldCommManager_SetTask(FieldCommTask_ReinitBattleClient, 2);
}

/**
 * @brief Task that reinitializes the client for battles without reinitializing the Field Comm Manager
 */
static void FieldCommTask_ReinitBattleClient(void)
{
    if (!sub_02033E30()) {
        return;
    }

    FieldCommManager_SetTask(FieldCommTask_SendPlayerInfoClient, 10);
}

/**
 * @brief Sets the flag that indicates the player indicated by the netId had their trainer case successfully copied
 *
 * @param netId
 * @param unused1
 * @param unused2
 * @param unused3
 */
void FieldCommManager_SetTrainerCaseCopiedFlag(int netId, int unused1, void *unused2, void *unused3)
{
    sFieldCommMan->trainerCaseCopied[netId] = 1;
}

/**
 * @brief Gets the trainer case from the netId player
 *
 * @param netId
 * @param unused1
 * @param unused2
 *
 * @return sFieldCommMan->trainerCase[netId];
 */
u8 *FieldCommManager_GetTrainerCase(int netId, void *unused1, int unused2)
{
    GF_ASSERT(netId < 4);
    return (u8 *)sFieldCommMan->trainerCase[netId];
}

/**
 * @brief Task that sends the current player's trainer case info and waits for a response
 */
static void FieldCommTask_StartCopyTrainerCase(void)
{
    int netId = CommSys_CurNetId();

    if (CommTiming_IsSyncState(SYNC_SEND_TRAINER_CASE)) {
        CommSys_SendDataHuge(88, sFieldCommMan->trainerCase[netId], sizeof(TrainerCase));
        FieldCommManager_SetTask(FieldCommTask_CopyTrainerCase, 0);
    }
}

/**
 * @brief Task that copies each other player's trainer case info
 */
static void FieldCommTask_CopyTrainerCase(void)
{
    int netId;

    for (netId = 0; netId < CommSys_ConnectedCount(); netId++) {
        if (!sFieldCommMan->trainerCaseCopied[netId]) {
            return;
        }
    }

    CommTiming_StartSync(SYNC_SWITCH_TRANSITION);
    FieldCommManager_SetTask(FieldCommTask_SwitchTransitionType, 0);
}

/**
 * @brief Task that waits for the transition type to switch to parallel before changing to the battle room
 */
static void CommFieldTask_WaitSwitchTransitionTypeAndChangeToBattleRoom(void)
{
    if (!CommSys_TransitionTypeIsParallel()) {
        if (sFieldCommMan->timer != 0) {
            sFieldCommMan->timer--;
        }

        if (sFieldCommMan->timer == 90) {
            CommTiming_StartSync(SYNC_5);
        }

        if (CommTiming_IsSyncState(SYNC_5)) {
            FieldCommManager_SetTask(FieldCommTask_ChangeToBattleRoom, 0);
        }
    }
}

/**
 * @brief Task that switches the transition type to server-client
 */
static void FieldCommTask_SwitchTransitionTypeToServerClient(void)
{
    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
        return;
    }

    CommSys_SwitchTransitionTypeToServerClient();
    FieldCommManager_SetTask(CommFieldTask_WaitSwitchTransitionTypeAndChangeToBattleRoom, 120);
}

/**
 * @brief Task that sets the current task to FieldCommTask_SwitchTransitionTypeToServerClient
 */
static void FieldCommTask_SwitchTransitionType(void)
{
    if (CommTiming_IsSyncState(SYNC_SWITCH_TRANSITION)) {
        FieldCommManager_SetTask(FieldCommTask_SwitchTransitionTypeToServerClient, 2);
    }
}

/**
 * @brief Task to change the player to the battle room / colosseum. Will call different tasks depending on if the player is returning from battle or entering from elsewhere.
 */
static void FieldCommTask_ChangeToBattleRoom(void)
{
    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
        return;
    }

    CommTiming_StartSync(SYNC_CHANGE_TO_BATTLE_ROOM);

    if (sFieldCommMan->isReturningFromBattle) {
        FieldCommManager_SetTask(FieldCommTask_ReturnToBattleRoom, 30);
    } else {
        FieldCommManager_SetTask(FieldCommTask_EnterBattleRoom, 30);
    }
}

/**
 * @brief Task to delete the Communication Player Manager and end the connection considering a sync state and error handling
 */
static void FieldCommTask_EndBattleSync(void)
{
    if (CommTiming_IsSyncState(SYNC_BATTLE_END_CONNECTION)) {
        CommManager_SetErrorHandling(FALSE, FALSE);
        CommPlayerMan_Delete(TRUE);
        FieldCommManager_SetTask(FieldCommTask_EndConnection, 5);
    }
}

/**
 * @brief Task to delete the Communication Player Manager and end the connection without considering a sync state or error handling
 */
static void FieldCommTask_EndBattleNoSync(void)
{
    CommPlayerMan_Delete(TRUE);
    FieldCommManager_SetTask(FieldCommTask_EndConnection, 5);
}

/**
 * @brief Task to end the connection. Deletes the Communication Manager and Field Communication Manager
 */
static void FieldCommTask_EndConnection(void)
{
    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
        return;
    }

    CommManager_EndBattle();
    FieldCommManager_SetTask(FieldCommManager_Delete, 0);
}

/**
 * @brief Gets the current secret base specified by UndergroundMan_GetCurrentOccupiedSecretBase(saveData)
 *
 * @param saveData
 *
 * @return The current occupied SecretBase* if underground, NULL if not underground and in a secret base
 */
SecretBase *FieldCommManager_GetCurrentOccupiedSecretBase(SaveData *saveData)
{
    if (!sFieldCommMan || !sFieldCommMan->isUnderground) {
        return NULL;
    }

    return UndergroundMan_GetCurrentOccupiedSecretBase(saveData);
}

/**
 * @brief Calls UndergroundMan_PauseResources(), if underground
 */
void FieldCommManager_PauseUndergroundResources(void)
{
    if (sFieldCommMan && sFieldCommMan->isUnderground) {
        UndergroundMan_PauseResources();
    }
}

/**
 * @brief Calls UndergroundMan_UnpauseResources(), if underground
 */
void FieldCommManager_UnpauseUndergroundResources(void)
{
    if (sFieldCommMan && sFieldCommMan->isUnderground) {
        UndergroundMan_UnpauseResources();
    }
}
