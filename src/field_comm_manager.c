#include "field_comm_manager.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/heap.h"

#include "struct_defs/struct_0205964C.h"
#include "struct_defs/underground.h"

#include "field/field_system.h"
#include "functypes/funcptr_020598EC.h"
#include "overlay007/communication_club.h"
#include "overlay023/underground_manager.h"

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
#include "trainer_card.h"
#include "trainer_info.h"
#include "unk_02033200.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_0205A0D8.h"
#include "unk_02099500.h"

static void FieldCommMan_RunTask(SysTask *task, void *unused);
static void FieldCommMan_SetTask(FieldCommTask task, int time);
static void Task_StartBattleServer(void);
static void Task_ServerWait(void);
static void Task_StartBattleClient(void);
static void Task_ClientWait(void);
static void Task_ConnectBattleClient(void);
static void sub_02059964(void);
static void sub_02059980(void);
static void sub_02059AB4(void);
static void sub_02059B10(void);
static void sub_02059984(void);
static void sub_020599E4(void);
static void sub_02059A70(void);
static void sub_02059BF4(void);
static void sub_02059CD8(void);
static void sub_02059E80(void);
static void sub_02059E94(void);
static void sub_02059E50(void);
static void sub_02059D58(void);
static void FieldCommTask_CopyTrainerCard(void);
static void sub_02059FB8(void);
static void FieldCommTask_StartCopyTrainerCard(void);
static void sub_02059FD4(void);
static void sub_0205A018(void);
static void Task_EndBattle(void);
static void sub_0205A058(void);

static FieldCommunicationManager *sFieldCommMan = NULL;

FieldCommunicationManager *FieldCommMan_Get(void)
{
    return sFieldCommMan;
}

static void sub_02059658(void)
{
    return;
}

void FieldCommMan_Init(FieldSystem *fieldSystem)
{
    if (sFieldCommMan != NULL) {
        return;
    }

    CommFieldCmd_Init(fieldSystem);

    sFieldCommMan = (FieldCommunicationManager *)Heap_Alloc(HEAP_ID_COMMUNICATION, sizeof(FieldCommunicationManager));
    MI_CpuFill8(sFieldCommMan, 0, sizeof(FieldCommunicationManager));

    sFieldCommMan->timer = 50;
    sFieldCommMan->sysTask = SysTask_Start(FieldCommMan_RunTask, NULL, 10);
    sFieldCommMan->fieldSystem = fieldSystem;
    sFieldCommMan->party = NULL;

    sub_02059658();
    CommSys_Seed(&sFieldCommMan->unk_1C);
}

void FieldCommMan_Delete(void)
{
    int i;

    if (sFieldCommMan == NULL) {
        return;
    }

    SysTask_Done(sFieldCommMan->sysTask);

    for (i = 0; i < 4; i++) {
        if (sFieldCommMan->trainerCard[i]) {
            Heap_Free(sFieldCommMan->trainerCard[i]);
        }
    }

    if (sFieldCommMan->party) {
        Heap_Free(sFieldCommMan->party);
    }

    Heap_Free(sFieldCommMan);
    sFieldCommMan = NULL;
}

void FieldCommMan_StartBattleServer(FieldSystem *fieldSystem, int param1, int param2)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    CommMan_StartBattleServer(FieldSystem_GetSaveData(fieldSystem), param1, param2, fieldSystem->unk_B0, 0);
    FieldCommMan_Init(fieldSystem);
    FieldCommMan_SetTask(Task_StartBattleServer, 0);
}

void FieldCommMan_StartBattleClient(FieldSystem *fieldSystem, int param1, int param2)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    CommMan_StartBattleClient(FieldSystem_GetSaveData(fieldSystem), param1, param2, fieldSystem->unk_B0, 0);
    FieldCommMan_Init(fieldSystem);
    FieldCommMan_SetTask(Task_StartBattleClient, 0);
}

void FieldCommMan_ConnectBattleClient(int param0)
{
    sFieldCommMan->unk_3E = param0;
    FieldCommMan_SetTask(Task_ConnectBattleClient, 0);
}

void FieldCommMan_ReconnectBattleClient(void)
{
    FieldCommMan_SetTask(sub_02059E80, 0);
}

void FieldCommMan_EnterBattleRoom(FieldSystem *fieldSystem)
{
    SetupScreenFadeRegisters(DS_SCREEN_MAIN, COLOR_BLACK);
    SetupScreenFadeRegisters(DS_SCREEN_SUB, COLOR_BLACK);
    CommMan_SetErrorHandling(1, 1);

    if (!CommMan_IsInitialized()) {
        return;
    }

    if (sFieldCommMan == NULL) {
        FieldCommMan_Init(fieldSystem);
        sFieldCommMan->isReturningFromBattle = TRUE;
    } else {
        sFieldCommMan->isReturningFromBattle = FALSE;
    }

    sFieldCommMan->unk_43 = 0;

    {
        int netJd, netId = CommSys_CurNetId();
        CommInfo_TrainerInfo(CommSys_CurNetId());

        for (netJd = 0; netJd < CommSys_ConnectedCount(); netJd++) {
            if (sFieldCommMan->trainerCard[netJd] == NULL) {
                sFieldCommMan->trainerCard[netJd] = Heap_Alloc(HEAP_ID_SYSTEM, sizeof(TrainerCard));
            }
        }

        TrainerCard_Init(FALSE, FALSE, 0, 0xFF, sFieldCommMan->fieldSystem, sFieldCommMan->trainerCard[netId]);
    }

    CommTiming_StartSync(95);
    FieldCommMan_SetTask(FieldCommTask_StartCopyTrainerCard, 0);
}

void FieldCommMan_EndBattle(void)
{
    if (sFieldCommMan == NULL) {
        return;
    }

    CommMan_SetErrorHandling(0, 0);
    FieldCommMan_SetTask(Task_EndBattle, 5);
}

void sub_020598A0(void)
{
    if (sFieldCommMan == NULL) {
        return;
    }

    CommTiming_StartSync(91);
    FieldCommMan_SetTask(sub_0205A018, 5);
}

void FieldCommMan_RunTask(SysTask *task, void *unused)
{
    if (sFieldCommMan == NULL) {
        SysTask_Done(task);
    } else {
        if (sFieldCommMan->task != NULL) {
            FieldCommTask task = sFieldCommMan->task;

            if (!sFieldCommMan->unk_40) {
                task();
            }
        }
    }
}

static void FieldCommMan_SetTask(FieldCommTask task, int time)
{
    sFieldCommMan->task = task;
    sFieldCommMan->timer = time;
}

static void Task_StartBattleServer(void)
{
    if (!CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        return;
    }

    ov7_0224B4B8();

    CommInfo_SendPlayerInfo();
    FieldCommMan_SetTask(Task_ServerWait, 0);
}

static void Task_ServerWait(void)
{
    return;
}

static void Task_StartBattleClient(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }

    CommClub_PrintChooseJoinMsg();
    FieldCommMan_SetTask(Task_ClientWait, 0);
}

static void Task_ClientWait(void)
{
    return;
}

static void Task_ConnectBattleClient(void)
{
    sub_02036948(sFieldCommMan->unk_3E);
    FieldCommMan_SetTask(sub_02059964, 0);
}

static void sub_02059964(void)
{
    if (!sub_0203699C()) {
        return;
    }

    CommInfo_SendPlayerInfo();
    FieldCommMan_SetTask(sub_02059980, 0);
}

static void sub_02059980(void)
{
    return;
}

static void sub_02059984(void)
{
    void *v0;

    if (CommTiming_IsSyncState(98)) {
        v0 = Heap_Alloc(HEAP_ID_COMMUNICATION, CommPlayer_Size());
        CommPlayerMan_Init(v0, sFieldCommMan->fieldSystem, 0);
        sub_02059524();
        CommSys_DisableSendMovementData();
        CommTiming_StartSync(92);
        FieldCommMan_SetTask(sub_020599E4, 0);
        return;
    }

    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
    } else {
        sFieldCommMan->timer = 30;
        CommTiming_StartSync(98);
    }
}

static void sub_020599E4(void)
{
    if (CommSys_CurNetId() == 0) {
        CommInfo_ServerSendArray();
    }

    if (CommTiming_IsSyncState(92)) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
        ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
        ResetVisibleHardwareWindows(DS_SCREEN_SUB);
        CommPlayerMan_Restart();
        CommPlayer_SendPos(0);
        FieldCommMan_SetTask(sub_02059A70, 1);
    }
}

static void sub_02059A3C(void)
{
    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
        return;
    }

    if (CommTiming_IsSyncState(30)) {
        CommSys_EnableSendMovementData();
        FieldCommMan_SetTask(sub_02059BF4, 0);
    }
}

static void sub_02059A70(void)
{
    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
        return;
    }

    if (CommSys_CurNetId() == 0) {
        if (0 == sub_0205928C()) {
            return;
        }

        CommTiming_StartSync(30);
    } else {
        CommTiming_StartSync(30);
    }

    FieldCommMan_SetTask(sub_02059A3C, 20);
}

static void sub_02059AB4(void)
{
    void *v0;

    if (CommTiming_IsSyncState(98)) {
        v0 = Heap_Alloc(HEAP_ID_COMMUNICATION, CommPlayer_Size());
        CommPlayerMan_Init(v0, sFieldCommMan->fieldSystem, 0);
        sub_02059524();
        CommTiming_StartSync(92);
        FieldCommMan_SetTask(sub_02059B10, 0);
        return;
    }

    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
    } else {
        sFieldCommMan->timer = 30;
        CommTiming_StartSync(98);
    }
}

static void sub_02059B10(void)
{
    if (CommSys_CurNetId() == 0) {
        CommInfo_ServerSendArray();
    }

    if (CommTiming_IsSyncState(92)) {
        CommPlayerMan_Restart();
        CommPlayer_SendPos(0);

        u8 v0 = 1;
        CommSys_SendDataFixedSize(94, &v0);

        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
        ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
        ResetVisibleHardwareWindows(DS_SCREEN_SUB);
        FieldCommMan_SetTask(sub_02059CD8, 0);
    }
}

static void sub_02059B74(void)
{
    int i, j;

    for (i = 0; i < CommSys_ConnectedCount(); i++) {
        if (i != CommSys_CurNetId()) {
            if (sub_02036564(i) == 94) {
                if (sFieldCommMan->fieldSystem->task == NULL) {
                    for (j = 0; j < 4; j++) {
                        if (sFieldCommMan->trainerCard[j]) {
                            Heap_Free(sFieldCommMan->trainerCard[j]);
                            sFieldCommMan->trainerCard[j] = NULL;
                        }
                    }

                    ScriptManager_Set(sFieldCommMan->fieldSystem, SCRIPT_ID(COMMUNICATION_CLUB, 2), NULL);
                }
            }
        }
    }

    sub_02038A1C(4, sFieldCommMan->fieldSystem->bgConfig);
}

static void sub_02059BF4(void)
{
    if (!sub_020590C4()) {
        sFieldCommMan->unk_43 = 0;

        u8 v0 = 1;
        CommSys_SendDataFixedSize(94, &v0);

        FieldCommMan_SetTask(sub_02059CD8, 0);
    }

    sub_02059B74();
}

static void sub_02059C2C(BOOL param0, const Party *party)
{
    if (party) {
        sFieldCommMan->party = Party_New(HEAP_ID_FIELD2);
        Party_Copy(party, sFieldCommMan->party);
    }

    if (param0) {
        FieldCommMan_SetTask(sub_02059E50, 3);
    } else {
        u8 v0 = 3;
        CommSys_SendDataFixedSize(94, &v0);

        FieldCommMan_SetTask(sub_02059BF4, 0);
    }
}

static void sub_02059C7C(void)
{
    FieldCommMan_SetTask(sub_02059BF4, 0);
}

static void sub_02059C8C(void)
{
    if (sub_020363A0() || (0 != CommPlayer_GetMovementTimer(CommSys_CurNetId()))) {
        return;
    }

    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
        return;
    }

    CommPlayerMan_PauseFieldSystem();
    sub_0205AB10(sFieldCommMan->fieldSystem, sub_02059C2C);
    FieldCommMan_SetTask(sub_02059C7C, 0);
}

static void sub_02059CD8(void)
{
    if (sFieldCommMan->unk_43) {
        FieldCommMan_SetTask(sub_02059C8C, 5);

        u8 v0 = 0;
        CommSys_SendDataFixedSize(94, &v0);
    }

    sub_02059B74();
}

void sub_02059D0C(int unused0, int unused1, void *param2, void *unused3)
{
    u8 *v0 = param2;

    if (v0[0] == CommSys_CurNetId()) {
        sFieldCommMan->unk_43 = 1;
    }
}

BOOL sub_02059D2C(void)
{
    if (sFieldCommMan) {
        if ((sFieldCommMan->task == sub_02059CD8) || (sFieldCommMan->task == sub_02059BF4)) {
            return TRUE;
        }
    }

    return FALSE;
}

static void sub_02059D58(void)
{
    BOOL v0 = TRUE;
    int v1;
    u8 v2[6];

    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
        return;
    }

    v1 = (0x4 | 0x1);

    switch (sub_0203895C()) {
    case 4:
    case 5:
        v1 = (((0x4 | 0x1) | 0x2) | 0x8);
        break;
    case 2:
        v1 = ((0x4 | 0x1) | 0x2);
        break;
    }

    sub_020389A0(v2);

    if (sFieldCommMan->party == NULL) {
        Encounter_NewVsLinkWithRecording(sFieldCommMan->fieldSystem, v2, v1);
    } else {
        Encounter_NewVsLinkWithRecordingAndParty(sFieldCommMan->fieldSystem, sFieldCommMan->party, v1);
        Heap_Free(sFieldCommMan->party);
        sFieldCommMan->party = NULL;
    }

    FieldCommMan_Delete();
}

static void sub_02059DC8(void)
{
    if (CommSys_TransitionTypeIsParallel()) {
        if (sFieldCommMan->timer != 0) {
            sFieldCommMan->timer--;
        }

        if (sFieldCommMan->timer == 90) {
            CommTiming_StartSync(4);
        }

        if (CommTiming_IsSyncState(4)) {
            FieldCommMan_SetTask(sub_02059D58, 0);
        }
    }
}

static void sub_02059E0C(void)
{
    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
        return;
    }

    CommSys_SwitchTransitionTypeToParallel();
    FieldCommMan_SetTask(sub_02059DC8, 120);
}

static void sub_02059E34(void)
{
    BOOL v0 = TRUE;

    if (CommTiming_IsSyncState(3)) {
        FieldCommMan_SetTask(sub_02059E0C, 2);
    }
}

static void sub_02059E50(void)
{
    BOOL v0 = TRUE;

    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
        return;
    }

    CommPlayerMan_Delete(0);
    CommTiming_StartSync(3);
    FieldCommMan_SetTask(sub_02059E34, 0);
}

static void sub_02059E80(void)
{
    sub_02036964();
    FieldCommMan_SetTask(sub_02059E94, 2);
}

static void sub_02059E94(void)
{
    if (!sub_02033E30()) {
        return;
    }

    FieldCommMan_SetTask(sub_02059964, 10);
}

void sub_02059EAC(int param0, int unused1, void *unused2, void *unused3)
{
    sFieldCommMan->unk_10[param0] = 1;
}

u8 *sub_02059EBC(int param0, void *unused1, int unused2)
{
    GF_ASSERT(param0 < 4);
    return (u8 *)sFieldCommMan->trainerCard[param0];
}

static void FieldCommTask_StartCopyTrainerCard(void)
{
    int v1 = CommSys_CurNetId();

    if (CommTiming_IsSyncState(95)) {
        CommSys_SendDataHuge(88, sFieldCommMan->trainerCard[v1], sizeof(TrainerCard));
        FieldCommMan_SetTask(FieldCommTask_CopyTrainerCard, 0);
    }
}

static void FieldCommTask_CopyTrainerCard(void)
{
    int i;

    for (i = 0; i < CommSys_ConnectedCount(); i++) {
        if (!sFieldCommMan->unk_10[i]) {
            return;
        }
    }

    CommTiming_StartSync(97);
    FieldCommMan_SetTask(sub_02059FB8, 0);
}

static void sub_02059F4C(void)
{
    if (!CommSys_TransitionTypeIsParallel()) {
        if (sFieldCommMan->timer != 0) {
            sFieldCommMan->timer--;
        }

        if (sFieldCommMan->timer == 90) {
            CommTiming_StartSync(5);
        }

        if (CommTiming_IsSyncState(5)) {
            FieldCommMan_SetTask(sub_02059FD4, 0);
        }
    }
}

static void sub_02059F90(void)
{
    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
        return;
    }

    CommSys_SwitchTransitionTypeToServerClient();
    FieldCommMan_SetTask(sub_02059F4C, 120);
}

static void sub_02059FB8(void)
{
    if (CommTiming_IsSyncState(97)) {
        FieldCommMan_SetTask(sub_02059F90, 2);
    }
}

static void sub_02059FD4(void)
{
    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
        return;
    }

    CommTiming_StartSync(98);

    if (sFieldCommMan->isReturningFromBattle) {
        FieldCommMan_SetTask(sub_02059984, 30);
    } else {
        FieldCommMan_SetTask(sub_02059AB4, 30);
    }
}

static void sub_0205A018(void)
{
    if (CommTiming_IsSyncState(91)) {
        CommMan_SetErrorHandling(0, 0);
        CommPlayerMan_Delete(1);
        FieldCommMan_SetTask(sub_0205A058, 5);
    }
}

static void Task_EndBattle(void)
{
    CommPlayerMan_Delete(1);
    FieldCommMan_SetTask(sub_0205A058, 5);
}

static void sub_0205A058(void)
{
    if (sFieldCommMan->timer != 0) {
        sFieldCommMan->timer--;
        return;
    }

    sub_02036978();
    FieldCommMan_SetTask(FieldCommMan_Delete, 0);
}

SecretBase *sub_0205A080(SaveData *saveData)
{
    if (!sFieldCommMan || !sFieldCommMan->isUnderground) {
        return NULL;
    }

    return UndergroundMan_GetCurrentOccupiedSecretBase(saveData);
}

void sub_0205A0A0(void)
{
    if (sFieldCommMan && sFieldCommMan->isUnderground) {
        UndergroundMan_PauseResources();
    }
}

void sub_0205A0BC(void)
{
    if (sFieldCommMan && sFieldCommMan->isUnderground) {
        UndergroundMan_UnpauseResources();
    }
}
