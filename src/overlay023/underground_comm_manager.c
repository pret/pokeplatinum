#include "overlay023/underground_comm_manager.h"

#include <nitro.h>
#include <string.h>

#include "generated/trainer_score_events.h"

#include "struct_defs/struct_0205964C.h"

#include "field/field_system.h"
#include "functypes/funcptr_020598EC.h"
#include "overlay023/ov23_0223E140.h"
#include "overlay023/secret_bases.h"
#include "overlay023/underground_manager.h"
#include "overlay023/underground_player.h"
#include "overlay023/underground_traps.h"

#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_comm_manager.h"
#include "field_system.h"
#include "game_records.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system_flags.h"
#include "unk_02033200.h"
#include "unk_020366A0.h"
#include "vars_flags.h"

static void CommManUnderground_SetFieldCommManTask(FieldCommTask task, int timer);
static void CommManUnderground_SendInitialDataTask(void);
static void CommManUnderground_WaitForRoarkSceneTask(void);
static void CommManUnderground_DelayTask(void);
static void CommManUnderground_CheckForConnectionsTask(void);
static void CommManUnderground_ConnectTaskClient(void);
static void CommManUnderground_WaitForDataReadTaskClient(void);
static void CommManUnderground_WaitForFlagDataReceiptTaskClient(void);
static void CommManUnderground_WaitForTrapDataReceiptTaskClient(void);
static void CommManUnderground_WaitForBaseDataReceiptTaskClient(void);
static void CommManUnderground_MainTaskClient(void);
static void CommManUnderground_BaseTransitionStartTaskClient(void);
static void CommManUnderground_BaseTransitionTaskClient(void);
static void CommManUnderground_BaseTransitionEndTaskClient(void);
static void CommManUnderground_RestartTaskServer(void);
static void CommManUnderground_WaitUntilAloneTaskServer(void);
static void CommManUnderground_RestartTaskClient(void);
static void CommManUnderground_CloseSecretBaseTask(void);
static void CommManUnderground_ConnectTaskServer(void);
static void CommManUnderground_MainTaskServer(void);
static void CommManUnderground_BaseTransitionStartTaskServer(void);
static void CommManUnderground_BaseTransitionTaskServer(void);
static void CommManUnderground_BaseTransitionEndTaskServer(void);
static void CommManUnderground_ExitUndergroundTask(void);
static void CommManUnderground_BaseTransitionStartTaskAlone(void);
static void CommManUnderground_BaseTransitionTaskAlone(void);
static void CommManUnderground_BaseTransitionEndTaskAlone(void);
static void CommManUnderground_ClosedBaseTransitionStartTask(void);
static void CommManUnderground_ClosedBaseTransitionTask(void);
static void CommManUnderground_ClosedBaseTransitionEndTask(void);
static void CommManUnderground_ClosedBaseTask(void);
static void CommManUnderground_RestartClient(void);

static void CommManUnderground_DebugPrintDummy(char *string)
{
    return;
}

void CommManUnderground_InitUnderground(FieldSystem *fieldSystem)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    if (fieldCommMan != NULL) {
        return;
    }

    sub_02036794(FieldSystem_GetSaveData(fieldSystem));
    FieldCommMan_Init(fieldSystem);

    fieldCommMan = FieldCommMan_Get();
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_UNDERGROUND, HEAP_SIZE_UNDERGROUND);

    if (!SystemFlag_CheckUndergroundFirstEntered(SaveData_GetVarsFlags(fieldCommMan->fieldSystem->saveData))) {
        sub_02036894();
    }
}

void CommManUnderground_EnterUnderground(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    fieldCommMan->isUnderground = TRUE;
    GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(fieldCommMan->fieldSystem->saveData), TRAINER_SCORE_EVENT_UNDERGROUND_ENTERED);

    UndergroundMan_InitAllResources(fieldCommMan->fieldSystem);
    CommManUnderground_SetFieldCommManTask(CommManUnderground_SendInitialDataTask, 0);
}

void CommManUnderground_ExitUnderground(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    if (fieldCommMan == NULL) {
        return;
    }

    CommManUnderground_SetFieldCommManTask(CommManUnderground_ExitUndergroundTask, 3);
}

void CommManUnderground_CloseSecretBase(void)
{
    CommMan_CloseSecretBase();
    CommManUnderground_SetFieldCommManTask(CommManUnderground_CloseSecretBaseTask, 0);
}

static void CommManUnderground_ReopenSecretBaseTask(void)
{
    if (!CommServerClient_IsInClosedSecretBase()) {
        SecretBases_RequestClearTransitioningStatus();
        CommManUnderground_SetFieldCommManTask(CommManUnderground_SendInitialDataTask, 0);
    }
}

void CommManUnderground_ReopenSecretBase(void)
{
    CommMan_ReopenSecretBase();
    CommManUnderground_SetFieldCommManTask(CommManUnderground_ReopenSecretBaseTask, 0);
}

BOOL CommManUnderground_TryEnterBaseTransitionState(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    u32 currentTask = (u32)fieldCommMan->task;
    u32 mainTaskServer = (u32)CommManUnderground_MainTaskServer;
    u32 mainTaskClient = (u32)CommManUnderground_MainTaskClient;
    u32 mainTaskAlone = (u32)CommManUnderground_CheckForConnectionsTask;
    u32 mainTaskClosedBase = (u32)CommManUnderground_ClosedBaseTask;
    u32 baseTransitionTasks[] = {
        (u32)CommManUnderground_BaseTransitionStartTaskServer,
        (u32)CommManUnderground_BaseTransitionStartTaskClient,
        (u32)CommManUnderground_BaseTransitionStartTaskAlone,
        (u32)CommManUnderground_ClosedBaseTransitionStartTask
    };

    if (currentTask == mainTaskServer) {
        CommManUnderground_SetFieldCommManTask(CommManUnderground_BaseTransitionStartTaskServer, 0);
        return TRUE;
    } else if (mainTaskClient == currentTask) {
        CommManUnderground_SetFieldCommManTask(CommManUnderground_BaseTransitionStartTaskClient, 0);
        return TRUE;
    } else if (mainTaskAlone == currentTask) {
        CommManUnderground_SetFieldCommManTask(CommManUnderground_BaseTransitionStartTaskAlone, 0);
        return TRUE;
    } else if (mainTaskClosedBase == currentTask) {
        CommManUnderground_SetFieldCommManTask(CommManUnderground_ClosedBaseTransitionStartTask, 0);
        return TRUE;
    }

    for (int i = 0; i < NELEMS(baseTransitionTasks); i++) {
        if (baseTransitionTasks[i] == currentTask) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL CommManUnderground_TryExitBaseTransitionState(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();
    u32 currentTask = (u32)fieldCommMan->task;
    u32 moveTaskServer = (u32)CommManUnderground_BaseTransitionTaskServer;
    u32 moveTaskClient = (u32)CommManUnderground_BaseTransitionTaskClient;
    u32 moveTaskAlone = (u32)CommManUnderground_BaseTransitionTaskAlone;
    u32 moveTaskClosedBase = (u32)CommManUnderground_ClosedBaseTransitionTask;

    if (currentTask == moveTaskServer) {
        CommManUnderground_SetFieldCommManTask(CommManUnderground_BaseTransitionEndTaskServer, 0);
        return TRUE;
    } else if (moveTaskClient == currentTask) {
        CommManUnderground_SetFieldCommManTask(CommManUnderground_BaseTransitionEndTaskClient, 0);
        return TRUE;
    } else if (moveTaskAlone == currentTask) {
        CommManUnderground_SetFieldCommManTask(CommManUnderground_BaseTransitionEndTaskAlone, 0);
        return TRUE;
    } else if (moveTaskClosedBase == currentTask) {
        CommManUnderground_SetFieldCommManTask(CommManUnderground_ClosedBaseTransitionEndTask, 0);
        return TRUE;
    }

    return FALSE;
}

BOOL CommManUnderground_IsInputAllowed(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    u32 inputAllowedTasks[] = {
        (u32)CommManUnderground_MainTaskClient,
        (u32)CommManUnderground_MainTaskServer,
        (u32)CommManUnderground_WaitForDataReadTaskClient,
        (u32)CommManUnderground_WaitForFlagDataReceiptTaskClient,
        (u32)CommManUnderground_WaitForTrapDataReceiptTaskClient,
        (u32)CommManUnderground_WaitForBaseDataReceiptTaskClient,
        (u32)CommManUnderground_BaseTransitionStartTaskClient,
        (u32)CommManUnderground_BaseTransitionTaskClient,
        (u32)CommManUnderground_BaseTransitionEndTaskClient,
        (u32)CommManUnderground_BaseTransitionStartTaskServer,
        (u32)CommManUnderground_BaseTransitionTaskServer,
        (u32)CommManUnderground_BaseTransitionEndTaskServer,
        0
    };
    u32 currentTask = (u32)fieldCommMan->task;

    if (fieldCommMan == NULL) {
        return FALSE;
    }

    for (int i = 0; inputAllowedTasks[i] != 0; i++) {
        if (currentTask == inputAllowedTasks[i]) {
            return TRUE;
        }
    }

    return FALSE;
}

static void CommManUnderground_SetFieldCommManTask(FieldCommTask task, int timer)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    fieldCommMan->task = task;
    fieldCommMan->timer = timer;
}

static void CommManUnderground_SendInitialDataTask(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    if (fieldCommMan->timer != 0) {
        fieldCommMan->timer--;
        return;
    }

    if (!CommSys_IsInitialized()) {
        return;
    }

    UndergroundMan_ResetResources(fieldCommMan->fieldSystem);

    CommInfo_SendPlayerInfo();
    CommPlayer_SendPos(FALSE);

    UndergroundTraps_SendPlacedTraps();
    SecretBases_SendBaseInfo();

    if (!SystemFlag_CheckUndergroundFirstEntered(SaveData_GetVarsFlags(fieldCommMan->fieldSystem->saveData))) {
        CommManUnderground_SetFieldCommManTask(CommManUnderground_WaitForRoarkSceneTask, 0);
    } else {
        sub_02059524();
        CommManUnderground_SetFieldCommManTask(CommManUnderground_DelayTask, 12 * 2);
    }
}

static void CommManUnderground_WaitForRoarkSceneTask(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    if (!SystemFlag_CheckUndergroundFirstEntered(SaveData_GetVarsFlags(fieldCommMan->fieldSystem->saveData))) {
        return;
    }

    sub_020367F0();
    sub_02059524();

    CommManUnderground_SetFieldCommManTask(CommManUnderground_CheckForConnectionsTask, 12 * 2);
}

static void CommManUnderground_DelayTask(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    if (fieldCommMan->timer != 0) {
        fieldCommMan->timer--;
        return;
    }

    CommManUnderground_SetFieldCommManTask(CommManUnderground_CheckForConnectionsTask, 12 * 2);
}

static void CommManUnderground_CheckForConnectionsTask(void)
{
    UndergroundMan_Process();
    sub_02059524();

    if (sub_02036834()) {
        if (CommSys_CurNetId() == 0) {
            SecretBases_ClearAllBaseInfo();
            CommManUnderground_SetFieldCommManTask(CommManUnderground_ConnectTaskServer, 60);
        } else {
            CommManUnderground_SetFieldCommManTask(CommManUnderground_ConnectTaskClient, 120);
        }
    }
}

static void CommManUnderground_ConnectTaskClient(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    if (fieldCommMan->timer != 0) {
        fieldCommMan->timer--;
    }

    if (sub_02033E68() || CommSys_CheckError() || fieldCommMan->timer == 0) {
        sub_020367F0();
        CommManUnderground_SetFieldCommManTask(CommManUnderground_RestartTaskClient, 0);
    } else if (CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        if (fieldCommMan->timer != 0) {
            fieldCommMan->timer--;

            if (CommSys_SendRingRemainingSize() != COMM_RING_BUFFER_SIZE) {
                return;
            }
        }

        UndergroundMan_ForceEndCurrentSysTask();
        CommPlayer_CopyPersonal(0);

        UndergroundTraps_EndCurrentTrapEffectServer(0, 0, NULL, NULL);
        UndergroundTraps_ForceEndCurrentTrapEffectClient(0, TRUE);

        CommInfo_InitPlayer(0);
        CommPlayer_Destroy(0, FALSE, FALSE);
        sub_02059570();

        CommManUnderground_SetFieldCommManTask(CommManUnderground_WaitForDataReadTaskClient, 10);
        return;
    }
}

static void CommManUnderground_ConnectTaskServer(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    UndergroundMan_Process();

    if (fieldCommMan->timer != 0) {
        fieldCommMan->timer--;
    }

    if (CommSys_IsClientConnecting() || fieldCommMan->timer == 0) {
        if (UndergroundMan_ForceEndCurrentSysTask()) {
            CommPlayerMan_ResumeFieldSystem();
        }

        CommManUnderground_DebugPrintDummy("\u0090\u0065\u008B\u0040\u0090\u00DA\u0091\u00B1"); // 親機接続

        CommPlayer_SendPos(FALSE);

        UndergroundPlayer_SendHeldFlagOwnerInfo();
        SecretBases_SendBaseInfo();
        UndergroundMan_SendPlayerState();
        CommManUnderground_SetFieldCommManTask(CommManUnderground_MainTaskServer, 0);

        return;
    }
}

static void CommManUnderground_MainTaskServer(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    UndergroundMan_Process();

    if (fieldCommMan->fieldSystem->task != NULL) {
        return;
    }

    if (CommSys_CheckError() || !CommServerClient_IsClientConnecting()
        || !CommSys_IsPlayerConnected(CommSys_CurNetId()) && !CommSys_IsAlone()) {
        SecretBases_ClearBaseEntranceData(0);
        UndergroundPlayer_ClearHeldFlagInfo();
        SecretBases_AbortBaseEnter();

        CommSys_SendMessage(43);

        UndergroundTraps_ForceEndCurrentTrapEffectClient(CommSys_CurNetId(), TRUE);
        UndergroundMan_ForceEndCurrentSysTask();

        sub_02036824();
        CommManUnderground_SetFieldCommManTask(CommManUnderground_WaitUntilAloneTaskServer, 0);
    }
}

static void CommManUnderground_BaseTransitionStartTaskServer(void)
{
    CommPlayerMan_Disable();
    CommManUnderground_SetFieldCommManTask(CommManUnderground_BaseTransitionTaskServer, 0);
}

static void CommManUnderground_BaseTransitionTaskServer(void)
{
    UndergroundMan_Process();
}

static void CommManUnderground_BaseTransitionEndTaskServer(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    SecretBases_RequestClearTransitioningStatus();
    CommPlayerMan_Restart();
    CommManUnderground_SetFieldCommManTask(CommManUnderground_MainTaskServer, 0);
}

static void CommManUnderground_WaitForDataReadTaskClient(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    if (fieldCommMan->timer == 9) {
        CommInfo_SendPlayerInfo();
        UndergroundMan_SendPlayerState();
    }

    if (fieldCommMan->timer == 1) {
        CommPlayer_SendPosServer(FALSE);
    }

    if (fieldCommMan->timer != 0) {
        fieldCommMan->timer--;
        return;
    }

    if (CommInfo_IsDataFinishedReading()) {
        CommManUnderground_DebugPrintDummy("info\u0083\u0066\u0081\u005B\u0083\u005E\u008E\u00F3\u0090\u004D\u008A\u00AE\u0097\u00B9"); // データ受信完了
        UndergroundPlayer_SendHeldFlagOwnerInfo();
        CommManUnderground_SetFieldCommManTask(CommManUnderground_WaitForFlagDataReceiptTaskClient, 200);
        return;
    }

    CommManUnderground_MainTaskClient();
}

static void CommManUnderground_WaitForFlagDataReceiptTaskClient(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    if (UndergroundPlayer_HaveLinksReceivedHeldFlagData()) {
        UndergroundTraps_SendPlacedTraps();
        CommManUnderground_SetFieldCommManTask(CommManUnderground_WaitForTrapDataReceiptTaskClient, 0);
    } else {
        CommManUnderground_MainTaskClient();

        if (fieldCommMan->timer != 0) {
            fieldCommMan->timer--;
        } else {
            CommManUnderground_RestartClient();
        }
    }
}

static void CommManUnderground_WaitForTrapDataReceiptTaskClient(void)
{
    if (UndergroundTraps_HaveLinksReceivedPlacedTraps()) {
        CommManUnderground_DebugPrintDummy("\u0090\u0065\u008B\u0040\u00E3\u00A9\u0083\u0066\u0081\u005B\u0083\u005E\u0093\u00CD\u0082\u00A2\u0082\u00BD\u0082\u00E7\u0082\u00B5\u0082\u00A2"); // 親機罠データ届いたらしい
        UndergroundTraps_ClearLinksReceivedPlacedTraps();
        SecretBases_SendBaseInfo();
        CommManUnderground_SetFieldCommManTask(CommManUnderground_WaitForBaseDataReceiptTaskClient, 0);
        return;
    }

    CommManUnderground_MainTaskClient();
}

static void CommManUnderground_WaitForBaseDataReceiptTaskClient(void)
{
    if (SecretBases_HaveLinksReceivedBaseData()) {
        CommManUnderground_DebugPrintDummy("\u0094\u00E9\u0096\u00A7\u008A\u00EE\u0092\u006E\u0082\u00CC\u0088\u00CA\u0092\u0075\u0082\u00AA\u0082\u00AB\u0082\u00BD"); // 秘密基地の位置がきた
        SecretBases_ClearLinksReceivedBaseData();
        CommPlayer_SendPos(TRUE);
        CommSys_SendMessage(31);
        CommManUnderground_SetFieldCommManTask(CommManUnderground_MainTaskClient, 0);
        return;
    }

    CommManUnderground_MainTaskClient();
}

static void CommManUnderground_WaitUntilAloneTaskServer(void)
{
    if (!CommSys_IsAlone()) {
        return;
    }

    CommPlayerMan_SetMovementEnabled(0, FALSE);
    CommManUnderground_SetFieldCommManTask(CommManUnderground_RestartTaskServer, 30);
}

static void CommManUnderground_RestartTaskServer(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    if (fieldCommMan->timer != 0) {
        fieldCommMan->timer--;
        return;
    }

    if (CommSys_CurNetId() == 0) {
        CommManUnderground_SetFieldCommManTask(CommManUnderground_SendInitialDataTask, 0);
    }
}

static void CommManUnderground_RestartTaskClient(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    if (fieldCommMan->timer != 0) {
        fieldCommMan->timer--;
        return;
    }

    if (CommSys_CurNetId() == 0) {
        CommManUnderground_SetFieldCommManTask(CommManUnderground_SendInitialDataTask, 0);
    }
}

static void CommManUnderground_ClosedBaseTask(void)
{
    UndergroundMan_Process();
}

static void CommManUnderground_CloseSecretBaseTask(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    if (CommSys_CurNetId() == 0) {
        UndergroundMan_ResetResources(fieldCommMan->fieldSystem);
        CommInfo_SendPlayerInfo();
        CommPlayer_SendPos(FALSE);
        UndergroundTraps_SendPlacedTraps();
        SecretBases_SendBaseInfo();
        CommManUnderground_SetFieldCommManTask(CommManUnderground_ClosedBaseTask, 0);
    }
}

static void CommManUnderground_RestartClient(void)
{
    UndergroundTraps_ForceEndCurrentTrapEffectClient(CommSys_CurNetId(), TRUE);
    SecretBases_RemovePlayerFromBase(CommSys_CurNetId(), TRUE);
    ov23_0224160C();
    CommPlayerMan_Stop();
    UndergroundMan_ForceEndCurrentSysTask();
    sub_020367F0();
    ov23_0224AC4C();
    CommManUnderground_SetFieldCommManTask(CommManUnderground_RestartTaskClient, 0);
}

static void CommManUnderground_MainTaskClient(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    UndergroundMan_Process();
    sub_02059524();

    if (fieldCommMan->fieldSystem->task != NULL) {
        return;
    }

    if (sub_02033E68() || CommSys_CheckError()) {
        CommManUnderground_RestartClient();
    }
}

static void CommManUnderground_BaseTransitionStartTaskClient(void)
{
    CommPlayerMan_Disable();
    CommManUnderground_SetFieldCommManTask(CommManUnderground_BaseTransitionTaskClient, 0);
}

static void CommManUnderground_BaseTransitionTaskClient(void)
{
    SecretBases_FlagEnteringBaseAsClient();
}

static void CommManUnderground_BaseTransitionEndTaskClient(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    SecretBases_RequestClearTransitioningStatus();
    CommPlayerMan_Restart();

    if (sub_02033E68() || CommSys_CheckError()) {
        SecretBases_ResetAllBaseInfo();
        CommPlayerMan_Stop();
        UndergroundMan_ForceEndCurrentSysTask();
        sub_020367F0();
        ov23_0224AC4C();
        CommManUnderground_SetFieldCommManTask(CommManUnderground_RestartTaskClient, 0);
    } else {
        CommManUnderground_SetFieldCommManTask(CommManUnderground_MainTaskClient, 0);
    }
}

static void CommManUnderground_BaseTransitionStartTaskAlone(void)
{
    CommPlayerMan_Disable();
    CommManUnderground_SetFieldCommManTask(CommManUnderground_BaseTransitionTaskAlone, 0);
}

static void CommManUnderground_BaseTransitionTaskAlone(void)
{
    return;
}

static void CommManUnderground_BaseTransitionEndTaskAlone(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    SecretBases_RequestClearTransitioningStatus();
    CommPlayerMan_Restart();
    CommManUnderground_SetFieldCommManTask(CommManUnderground_CheckForConnectionsTask, 0);
}

static void CommManUnderground_ClosedBaseTransitionStartTask(void)
{
    UndergroundPlayer_DeleteAllPlayers();
    CommManUnderground_SetFieldCommManTask(CommManUnderground_ClosedBaseTransitionTask, 0);
}

static void CommManUnderground_ClosedBaseTransitionTask(void)
{
    return;
}

static void CommManUnderground_ClosedBaseTransitionEndTask(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    SecretBases_RequestClearTransitioningStatus();
    CommPlayerMan_Restart();
    CommManUnderground_SetFieldCommManTask(CommManUnderground_ClosedBaseTask, 0);
}

static void CommManUnderground_ExitUndergroundTask(void)
{
    FieldCommunicationManager *fieldCommMan = FieldCommMan_Get();

    if (fieldCommMan->timer != 0) {
        fieldCommMan->timer--;
        return;
    }

    UndergroundMan_FreeAllResources();

    sub_020367D0();
    Heap_Destroy(HEAP_ID_UNDERGROUND);

    fieldCommMan->isUnderground = FALSE;

    FieldCommMan_Delete();
}
