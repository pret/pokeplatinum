#include "overlay007/communication_club.h"

#include <nitro.h>
#include <string.h>

#include "constants/communication/comm_type.h"
#include "consts/sdat.h"

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0205AA50.h"

#include "field/field_system.h"
#include "gmm/message_bank_unk_0353.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "communication_information.h"
#include "communication_system.h"
#include "core_sys.h"
#include "field_comm_manager.h"
#include "field_system.h"
#include "heap.h"
#include "message.h"
#include "render_text.h"
#include "save_player.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02005474.h"
#include "unk_0200DA60.h"
#include "unk_02013A04.h"
#include "unk_02018340.h"
#include "unk_02033200.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_0205D8CC.h"

typedef struct CommClubManager CommClubManager;
typedef void (*CommClubManTaskFunc)(SysTask *, void *);
typedef void (*UnkFuncPtr_ov7_02249C2C_1)(CommClubManager *);

typedef struct CommClubManager {
    Strbuf *strBuff[8];
    Window unk_20;
    Window unk_30;
    Window msgWindow;
    StringTemplate *unk_50;
    StringTemplate *unk_54;
    StringTemplate *strTempMsg;
    BmpList *unk_5C;
    UIControlData *unk_60;
    ResourceMetadata *unk_64;
    FieldSystem *fieldSystem;
    CommClubManTaskFunc commClubTask;
    UnkFuncPtr_ov7_02249C2C_1 unk_70;
    MessageLoader *msgLoader;
    TrainerInfo *trainerInfoPersonal;
    TrainerInfo *unk_7C;
    u8 unk_80[8];
    u32 retCode;
    u16 unk_8C;
    u16 connectIndex;
    u8 connectedCnt;
    u8 commType;
    u8 unk_92;
    u8 unk_93;
    u8 printMsgIndex;
    u8 unk_95;
    u8 msgDelay;
    u8 unk_97;
    u8 unk_98;
} CommClubManager;

enum CommClubRetCode {
    COMM_CLUB_RET_0,
    COMM_CLUB_RET_CANCEL,
    COMM_CLUB_RET_2,
    COMM_CLUB_RET_ERROR,
    COMM_CLUB_RET_4,
};

static void CommClubMan_Run(SysTask *task, void *param1);
static void CommClubMan_SetTask(CommClubManTaskFunc param0);
static void CommClubMan_PrintMessage(int param0, BOOL param1);
static void CommClubMan_StartBattleClient(CommClubManager *param0);
static void ov7_0224A510(CommClubManager *param0);
static void ov7_02249C44(BmpList *param0, u32 param1, u8 param2);
static void ov7_02249C64(BmpList *param0, u32 param1, u8 param2);
static void ov7_02249C94(BmpList *param0, u32 param1, u8 param2);
static void CommClubMan_PrintChooseJoinMsg(CommClubManager *param0);
static void CommClubMan_DisplayPersonalTrainerInfo(CommClubManager *param0);
static void ov7_02249F54(SysTask *param0, void *param1);
static void ov7_02249FFC(SysTask *param0, void *param1);
static void ov7_0224A0C8(CommClubManager *param0);
static void CommClubTask_SelectServerList(SysTask *param0, void *param1);
static void ov7_0224A34C(SysTask *param0, void *param1);
static void CommClubTask_WaitConfirmLeaveGroup(SysTask *param0, void *param1);
static void CommClubTask_LeaveGroup(SysTask *param0, void *param1);
static void CommClubMan_Disconnect(void);
static void ov7_0224A53C(CommClubManager *param0);
static void ov7_0224A5D0(void);
static void ov7_0224A64C(CommClubManager *param0);
static void ov7_0224A438(BmpList *param0, u32 param1, u8 param2);
static void ov7_0224A72C(SysTask *param0, void *param1);
static void ov7_0224A7D0(SysTask *param0, void *param1);
static void ov7_0224A97C(SysTask *param0, void *param1);
static void ov7_0224ABA4(SysTask *param0, void *param1);
static void ov7_0224ABE0(SysTask *param0, void *param1);
static void ov7_0224AC08(SysTask *param0, void *param1);
static void ov7_0224AC48(SysTask *param0, void *param1);
static void ov7_0224ACA4(SysTask *param0, void *param1);
static void ov7_0224AE10(SysTask *param0, void *param1);
static void ov7_0224AD68(SysTask *param0, void *param1);
static void ov7_0224ADD8(SysTask *param0, void *param1);
static void ov7_0224AECC(SysTask *param0, void *param1);
static void ov7_0224AE78(SysTask *param0, void *param1);
static void ov7_0224AF2C(SysTask *param0, void *param1);
static void ov7_0224AF84(SysTask *param0, void *param1);
static void CommClubTask_DifferentRegulation(SysTask *param0, void *param1);
static void CommClubMan_DestroyList(SysTask *param0, CommClubManager *param1);
static void CommClubMan_PrintPlayerContactMsg(int param0, CommClubManager *param1);
static void ov7_0224B054(CommClubManager *param0);
static void ov7_0224B08C(CommClubManager *param0);
static void ov7_0224B0E8(SysTask *param0, void *param1);
static void CommClubTask_WaitForGroup(SysTask *param0, void *param1);
static void CommClubTask_ExitGuestRoom(SysTask *param0, void *param1);
static void CommClubTask_ExitGuestRoomEnd(SysTask *param0, void *param1);
static void CommClubMan_PlayerRefused(CommClubManager *param0);
static void ov7_0224B31C(SysTask *param0, void *param1);
static void ov7_0224B348(CommClubManager *param0);
static void ov7_0224B370(SysTask *param0, void *param1);
static void ov7_0224B3A8(CommClubManager *param0);
static int CommClubMan_MaxPlayers(void);
static int CommClubMan_MinPlayers(void);
static int CommClubMan_Regulation(void);

static CommClubManager *sCommClubMan = NULL;

static const UnkStruct_ov61_0222C884 Unk_ov7_0224ED0C = {
    0x3,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x21F
};

static void CommClubMan_PrintMessage(int msgId, BOOL format)
{
    if (!FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
        Text_RemovePrinter(sCommClubMan->printMsgIndex);
    }

    if (format) {
        MessageLoader_GetStrbuf(sCommClubMan->msgLoader, msgId, sCommClubMan->strBuff[4]);
        StringTemplate_Format(sCommClubMan->strTempMsg, sCommClubMan->strBuff[5], sCommClubMan->strBuff[4]);
    } else {
        MessageLoader_GetStrbuf(sCommClubMan->msgLoader, msgId, sCommClubMan->strBuff[5]);
    }

    if (!BGL_WindowAdded(&sCommClubMan->msgWindow)) {
        FieldMessage_AddWindow(sCommClubMan->fieldSystem->unk_08, &sCommClubMan->msgWindow, 3);
    }

    FieldMessage_DrawWindow(&sCommClubMan->msgWindow, SaveData_Options(sCommClubMan->fieldSystem->saveData));
    sCommClubMan->printMsgIndex = FieldMessage_Print(&sCommClubMan->msgWindow, sCommClubMan->strBuff[5], SaveData_Options(sCommClubMan->fieldSystem->saveData), 1);
}

static inline void CommClubMan_PrintMessageFastSpeed(int msgId, BOOL format)
{
    if (!FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
        Text_RemovePrinter(sCommClubMan->printMsgIndex);
    }

    if (format) {
        MessageLoader_GetStrbuf(sCommClubMan->msgLoader, msgId, sCommClubMan->strBuff[4]);
        StringTemplate_Format(sCommClubMan->strTempMsg, sCommClubMan->strBuff[5], sCommClubMan->strBuff[4]);
    } else {
        MessageLoader_GetStrbuf(sCommClubMan->msgLoader, msgId, sCommClubMan->strBuff[5]);
    }

    if (!BGL_WindowAdded(&sCommClubMan->msgWindow)) {
        FieldMessage_AddWindow(sCommClubMan->fieldSystem->unk_08, &sCommClubMan->msgWindow, 3);
    }

    FieldMessage_DrawWindow(&sCommClubMan->msgWindow, SaveData_Options(sCommClubMan->fieldSystem->saveData));
    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
    RenderControlFlags_SetAutoScrollFlags(0);
    RenderControlFlags_SetSpeedUpOnTouch(FALSE);
    sCommClubMan->printMsgIndex = Text_AddPrinterWithParams(&sCommClubMan->msgWindow, FONT_MESSAGE, sCommClubMan->strBuff[5], 0, 0, TEXT_SPEED_FAST, NULL);
}

static void CommClubMan_CreateList(UnkStruct_ov84_02240FA8 param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 param5)
{
    if (!BGL_WindowAdded(&sCommClubMan->unk_20)) {
        BGL_AddWindow(sCommClubMan->fieldSystem->unk_08, &sCommClubMan->unk_20, 3, param1, param2, param3, param4, 13, param5);
    }

    Window_Show(&sCommClubMan->unk_20, 1, 1024 - (18 + 12) - 9, 11);

    UnkStruct_ov84_02240FA8 v0 = param0;
    v0.unk_00 = sCommClubMan->unk_64;
    v0.unk_0C = &sCommClubMan->unk_20;

    sCommClubMan->unk_5C = sub_0200112C(&v0, 0, 0, 4);
    sub_0201A954(&sCommClubMan->unk_20);
}

static void CommClubMan_Init(FieldSystem *fieldSystem)
{
    int v0;

    GF_ASSERT(sCommClubMan == NULL);

    sCommClubMan = Heap_AllocFromHeap(4, sizeof(CommClubManager));
    MI_CpuFill8(sCommClubMan, 0, sizeof(CommClubManager));

    sCommClubMan->retCode = 0;
    sCommClubMan->fieldSystem = fieldSystem;
    sCommClubMan->unk_97 = 0;
    sCommClubMan->msgLoader = MessageLoader_Init(1, 26, 353, 4);
    sCommClubMan->trainerInfoPersonal = SaveData_GetTrainerInfo(FieldSystem_SaveData(sCommClubMan->fieldSystem));
    sCommClubMan->unk_7C = TrainerInfo_New(4);

    Window_Init(&sCommClubMan->unk_20);
    Window_Init(&sCommClubMan->unk_30);
    Window_Init(&sCommClubMan->msgWindow);

    sCommClubMan->unk_50 = StringTemplate_Default(4);
    sCommClubMan->unk_54 = StringTemplate_Default(4);
    sCommClubMan->strTempMsg = StringTemplate_Default(4);
    sCommClubMan->unk_98 = 0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        sCommClubMan->unk_80[v0] = 0;
    }

    for (v0 = 0; v0 < 8; v0++) {
        sCommClubMan->strBuff[v0] = Strbuf_Init((70 * 2), 4);
    }
}

static void CommClubMan_Delete(void)
{
    for (int i = 0; i < 8; i++) {
        Strbuf_Free(sCommClubMan->strBuff[i]);
    }

    Heap_FreeToHeap(sCommClubMan->unk_7C);

    if (sCommClubMan->unk_50) {
        StringTemplate_Free(sCommClubMan->unk_50);
        sCommClubMan->unk_50 = NULL;
    }

    if (sCommClubMan->unk_54) {
        StringTemplate_Free(sCommClubMan->unk_54);
        sCommClubMan->unk_54 = NULL;
    }

    if (sCommClubMan->strTempMsg) {
        StringTemplate_Free(sCommClubMan->strTempMsg);
        sCommClubMan->strTempMsg = NULL;
    }

    MessageLoader_Free(sCommClubMan->msgLoader);

    if (sCommClubMan->msgWindow.unk_0C != NULL) {
        BGL_DeleteWindow(&sCommClubMan->msgWindow);
    }

    Heap_FreeToHeap(sCommClubMan);
    sCommClubMan = NULL;
}

static void CommClubMan_StartBattleClient(CommClubManager *man)
{
    FieldCommMan_StartBattleClient(man->fieldSystem, man->commType, CommClubMan_Regulation());
}

static const UnkStruct_ov84_02240FA8 Unk_ov7_0224ED34 = {
    NULL,
    ov7_02249C44,
    ov7_02249C64,
    NULL,
    0x10,
    0x5,
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x1,
    0x0,
    0x0,
    NULL
};

static void ov7_02249C44(BmpList *param0, u32 param1, u8 param2)
{
    sCommClubMan->unk_98 = 1;

    if (param2 == 0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }
}

static void ov7_02249C64(BmpList *param0, u32 param1, u8 param2)
{
    for (int v0 = 0; v0 < sub_02001504(param0, 3); v0++) {
        ov7_02249C94(param0, 0, v0);
    }
}

static void ov7_02249C94(BmpList *param0, u32 param1, u8 param2)
{
    int v0 = sub_02033808();
    u16 cnt = 0;

    if (sCommClubMan->unk_5C) {
        sub_020014DC(sCommClubMan->unk_5C, &cnt, NULL);
    }

    cnt += param2;

    BGL_WindowColor(&sCommClubMan->unk_20, 15, 8, param2 * 16, sub_0201C294(&sCommClubMan->unk_20) * 8 - 8, 16);

    if (cnt < v0) {
        sub_020339AC(cnt, sCommClubMan->unk_7C);

        StringTemplate_SetNumber(sCommClubMan->unk_50, 0, cnt + 1, 2, 2, 1);
        StringTemplate_SetPlayerName(sCommClubMan->unk_50, 1, sCommClubMan->unk_7C);
        MessageLoader_GetStrbuf(sCommClubMan->msgLoader, pl_msg_00000353_00063, sCommClubMan->strBuff[1]);

        StringTemplate_Format(sCommClubMan->unk_50, sCommClubMan->strBuff[0], sCommClubMan->strBuff[1]);
        Text_AddPrinterWithParams(&sCommClubMan->unk_20, FONT_SYSTEM, sCommClubMan->strBuff[0], 8, param2 * 16, TEXT_SPEED_NO_TRANSFER, NULL);

        StringTemplate_SetNumber(sCommClubMan->unk_50, 2, TrainerInfo_ID(sCommClubMan->unk_7C) % 0x10000, 5, 2, 1);
        // ID {ID Number}
        MessageLoader_GetStrbuf(sCommClubMan->msgLoader, pl_msg_00000353_00065, sCommClubMan->strBuff[3]);

        StringTemplate_Format(sCommClubMan->unk_50, sCommClubMan->strBuff[2], sCommClubMan->strBuff[3]);
        Text_AddPrinterWithParams(&sCommClubMan->unk_20, FONT_SYSTEM, sCommClubMan->strBuff[2], 11 * 8, param2 * 16, TEXT_SPEED_NO_TRANSFER, NULL);
    } else {
        StringTemplate_SetNumber(sCommClubMan->unk_50, 0, cnt + 1, 2, 2, 1);
        MessageLoader_GetStrbuf(sCommClubMan->msgLoader, pl_msg_00000353_00064, sCommClubMan->strBuff[1]);

        StringTemplate_Format(sCommClubMan->unk_50, sCommClubMan->strBuff[0], sCommClubMan->strBuff[1]);
        Text_AddPrinterWithParams(&sCommClubMan->unk_20, FONT_SYSTEM, sCommClubMan->strBuff[0], 8, param2 * 16, TEXT_SPEED_NO_TRANSFER, NULL);
    }
}

static void CommClubMan_PrintChooseJoinMsg(CommClubManager *param0)
{
    if (!BGL_WindowAdded(&sCommClubMan->unk_30)) {
        BGL_AddWindow(sCommClubMan->fieldSystem->unk_08, &sCommClubMan->unk_30, 3, 23, 2, 8, 4, 13, (1 + 20 * 5 * 2));
    }

    Window_Show(&sCommClubMan->unk_30, 1, 1024 - (18 + 12) - 9, 11);
    BGL_FillWindow(&sCommClubMan->unk_30, 15);
    sub_0201A954(&sCommClubMan->unk_30);

    param0->unk_97 = 1;

    SysTask_Start(CommClubMan_Run, param0, 0);
    CommClubMan_DisplayPersonalTrainerInfo(sCommClubMan);

    int sChooseJoinMsg[] = {
        pl_msg_00000353_00040, // Choose the friend you want to trade Pokemon with.
        pl_msg_00000353_00041, // Choose the Single Battle you would like to join.
        pl_msg_00000353_00042, // Choose the Double Battle you would like to join.
        pl_msg_00000353_00044, // Choose the Mix Battle you would like to join
        pl_msg_00000353_00043, // Choose the Multi Battle you would like to join
        pl_msg_00000353_00043,
        pl_msg_00000353_00045, // Choose the friend(s) you want to cook with.
        pl_msg_00000353_00046, // Chose the friend(s) you want to mix records with
        pl_msg_00000353_00047, // Choose the friends you want to hold a Contest with.
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00048, // Choose the friend you want to take to the Battle Tower.
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00049, // Choose the friend you want to play with at the Battle Factory--Level 50
        pl_msg_00000353_00050, // Choose the friend you want to play with at the Battle Factory--Open Level
        pl_msg_00000353_00000,
        pl_msg_00000353_00051, // Choose the friend you want to play with at the Battle Hall.
        pl_msg_00000353_00052, // Choose the friend you want to play with at the Battle Castle.
        pl_msg_00000353_00053 // Chose the friend you want to play with at the Battle Factory
    };

    if (sCommClubMan->commType == COMM_TYPE_CONTEST) {
        //{contestt type} Contest! Please choose the leader.
        CommClubMan_PrintMessage(pl_msg_00000353_00103 + sCommClubMan->unk_92, FALSE);
    } else {
        CommClubMan_PrintMessage(sChooseJoinMsg[sCommClubMan->commType], FALSE);
    }

    CommClubMan_SetTask(ov7_02249F54);
}

static void CommClubMan_DisplayPersonalTrainerInfo(CommClubManager *param0)
{
    StringTemplate_SetPlayerName(sCommClubMan->unk_54, 0, sCommClubMan->trainerInfoPersonal);
    StringTemplate_SetNumber(sCommClubMan->unk_54, 1, TrainerInfo_ID(sCommClubMan->trainerInfoPersonal) % 0x10000, 5, 2, 1);
    MessageLoader_GetStrbuf(sCommClubMan->msgLoader, pl_msg_00000353_00062, sCommClubMan->strBuff[6]);
    StringTemplate_Format(sCommClubMan->unk_54, sCommClubMan->strBuff[7], sCommClubMan->strBuff[6]);
    Text_AddPrinterWithParams(&sCommClubMan->unk_30, FONT_SYSTEM, sCommClubMan->strBuff[7], 2, 2, TEXT_SPEED_INSTANT, NULL);
}

static void ov7_02249F54(SysTask *task, void *data)
{
    if (FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
        int v2;

        sCommClubMan->unk_64 = sub_02013A04(16, 4);

        for (v2 = 0; v2 < 16; v2++) {
            StringTemplate_SetNumber(sCommClubMan->unk_50, 0, v2 + 1, 2, 2, 1);
            MessageLoader_GetStrbuf(sCommClubMan->msgLoader, pl_msg_00000353_00064, sCommClubMan->strBuff[1]);
            StringTemplate_Format(sCommClubMan->unk_50, sCommClubMan->strBuff[0], sCommClubMan->strBuff[1]);
            sub_02013A6C(sCommClubMan->unk_64, sCommClubMan->strBuff[0], 0);
        }

        CommClubMan_CreateList(Unk_ov7_0224ED34, 1, 2, 20, 5 * 2, 1);
        CommClubMan_SetTask(ov7_02249FFC);
    }
}

static void ov7_02249FFC(SysTask *task, void *param1)
{
    u32 v0;
    int v1;
    CommClubManager *commClubMan = (CommClubManager *)param1;

    CommClubMan_DisplayPersonalTrainerInfo(commClubMan);

    if (CommSys_CheckError()) {
        sCommClubMan->retCode = COMM_CLUB_RET_ERROR;
        CommClubMan_Disconnect();
        CommClubMan_DestroyList(task, commClubMan);
    } else {
        if (!sub_02033870()) {
            v0 = sub_02001288(sCommClubMan->unk_5C);
        } else {
            v0 = 0xffffffff;
        }

        switch (v0) {
        case 0xffffffff:
            ov7_0224A0C8(commClubMan);
            break;
        case 0xfffffffe:
            Sound_PlayEffect(1500);
            sCommClubMan->retCode = COMM_CLUB_RET_CANCEL;
            CommClubMan_Disconnect();
            CommClubMan_DestroyList(task, commClubMan);
            break;
        default:
            Sound_PlayEffect(1500);
            sub_020014D0(commClubMan->unk_5C, &commClubMan->connectIndex);

            if (sub_02033808() > commClubMan->connectIndex) {
                ov7_0224A0C8(commClubMan);
                commClubMan->connectIndex = sub_0203383C(commClubMan->connectIndex);
                FieldCommMan_ConnectBattleClient(commClubMan->connectIndex);
                CommList_Refresh();
                CommClubMan_SetTask(CommClubTask_SelectServerList);
            }
            break;
        }
    }
}

static void ov7_0224A0C8(CommClubManager *commClubMan)
{
    if (sub_02033870() || sCommClubMan->unk_98) {
        sCommClubMan->unk_98 = 0;
        sub_02033884();
        BGL_WindowColor(&sCommClubMan->unk_20, 15, 8, 0, 20 - 8, (5 * 2) * 8);
        ov7_02249C64(sCommClubMan->unk_5C, 0, 0);
        sub_0201A954(&sCommClubMan->unk_20);
    }
}

static void CommClubTask_SelectServerList(SysTask *task, void *param1)
{
    CommClubManager *v0 = (CommClubManager *)param1;

    if (CommSys_CheckError()) {
        CommClubMan_DestroyList(task, v0);
        CommClubMan_PrintMessage(0, FALSE);
        ov7_0224B348(v0);
        return;
    }

    if (CommInfo_TrainerInfo(CommSys_CurNetId()) == NULL) {
        return;
    }

    CommList_Refresh();

    sub_020339AC(v0->connectIndex, sCommClubMan->unk_7C);
    StringTemplate_SetPlayerName(v0->strTempMsg, 1, sCommClubMan->unk_7C);
    if (CommClubMan_MinPlayers() <= 2) {
        CommClubMan_PrintMessage(1, TRUE);
    } else {
        CommClubMan_PrintMessageFastSpeed(2, TRUE);
    }
    CommClubMan_SetTask(ov7_0224A34C);
}

static BOOL ov7_0224A244(SysTask *task, void *data)
{
    CommClubManager *commClubMan = data;

    if (CommSys_CheckError()) {
        CommClubMan_DestroyList(task, commClubMan);
        CommClubMan_PrintMessage(pl_msg_00000353_00000, FALSE);
        ov7_0224B348(commClubMan);
    } else if (CommList_Get(0, 3) == CommSys_CurNetId()) {
        CommList_Refresh();
        CommClubMan_DestroyList(task, commClubMan);
        CommClubMan_PlayerRefused(commClubMan);
    } else if (CommList_Get(0, 5) != -1) {
        CommList_Refresh();
        CommClubMan_DestroyList(task, commClubMan);
        CommClubMan_PlayerRefused(commClubMan);
    } else if (CommList_Get(0, 4) == CommSys_CurNetId()) {
        CommClubMan_PrintMessage(pl_msg_00000353_00097, FALSE); // Players have choseen different rules. The same rules must be chosen.
        CommClubMan_SetTask(CommClubTask_DifferentRegulation);
    } else if (CommList_Get(0, 2) == CommSys_CurNetId()) {
        CommList_Refresh();

        commClubMan->connectedCnt = CommInfo_CountReceived();

        if (!FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
            Text_RemovePrinter(sCommClubMan->printMsgIndex);
        }

        CommClubMan_DestroyList(task, commClubMan);
        ov7_0224B08C(commClubMan);
    } else if (ov7_0224B4E4()) {
        CommClubMan_DestroyList(task, commClubMan);
        CommClubMan_PlayerRefused(commClubMan);
    } else {
        return FALSE;
    }

    return TRUE;
}

static void ov7_0224A34C(SysTask *task, void *param1)
{
    if (!FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
        return;
    }

    if (ov7_0224A244(task, param1)) {
        return;
    }

    if ((PAD_BUTTON_B)&gCoreSys.pressedKeys) {
        CommClubMan_PrintMessage(pl_msg_00000353_00003, FALSE); // Do you want to leave the group?
        CommClubMan_SetTask(CommClubTask_WaitConfirmLeaveGroup);
    }
}

static void CommClubTask_WaitConfirmLeaveGroup(SysTask *task, void *data)
{
    CommClubManager *commClubMan = data;

    if (ov7_0224A244(task, data)) {
        return;
    }

    if (FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
        commClubMan->unk_60 = sub_02002100(sCommClubMan->fieldSystem->unk_08, &Unk_ov7_0224ED0C, 1024 - (18 + 12) - 9, 11, 4);
        CommClubMan_SetTask(CommClubTask_LeaveGroup);
    }
}

static void CommClubTask_LeaveGroup(SysTask *task, void *data)
{
    CommClubManager *v0 = data;
    u32 v1;

    if (ov7_0224A244(task, data)) {
        sub_02002154(v0->unk_60, 4);
        v0->unk_60 = NULL;
        return;
    }

    v1 = sub_02002114(v0->unk_60, 4);

    if (v1 == 0) {
        CommClubMan_DestroyList(task, v0);
        CommClubMan_PrintMessage(pl_msg_00000353_00006, FALSE); // You have left the group.
        ov7_0224B348(v0);
    } else if (v1 != 0xffffffff) {
        CommClubMan_SetTask(CommClubTask_SelectServerList);
    }
}

static const UnkStruct_ov84_02240FA8 Unk_ov7_0224ED14 = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x5,
    0x5,
    0x0,
    0x1,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x1,
    0x0,
    0x1,
    NULL
};

static void ov7_0224A438(BmpList *param0, u32 param1, u8 param2)
{
    u16 v0 = 0;

    if (sCommClubMan->unk_5C) {
        sub_020014DC(sCommClubMan->unk_5C, &v0, NULL);
    }

    v0 += param2;

    if (NULL != CommInfo_TrainerInfo(v0)) {
        StringTemplate_SetPlayerName(sCommClubMan->unk_50, 0, CommInfo_TrainerInfo(v0));
        MessageLoader_GetStrbuf(sCommClubMan->msgLoader, pl_msg_00000353_00066, sCommClubMan->strBuff[1]);

        StringTemplate_Format(sCommClubMan->unk_50, sCommClubMan->strBuff[0], sCommClubMan->strBuff[1]);
        Text_AddPrinterWithParams(&sCommClubMan->unk_20, FONT_SYSTEM, sCommClubMan->strBuff[0], 8, param2 * 16, TEXT_SPEED_INSTANT, NULL);

        StringTemplate_SetNumber(sCommClubMan->unk_50, 2, TrainerInfo_ID_LowHalf(CommInfo_TrainerInfo(v0)), 5, 2, 1);
        MessageLoader_GetStrbuf(sCommClubMan->msgLoader, pl_msg_00000353_00065, sCommClubMan->strBuff[3]);

        StringTemplate_Format(sCommClubMan->unk_50, sCommClubMan->strBuff[2], sCommClubMan->strBuff[3]);
        Text_AddPrinterWithParams(&sCommClubMan->unk_20, FONT_SYSTEM, sCommClubMan->strBuff[2], 9 * 8, param2 * 16, TEXT_SPEED_INSTANT, NULL);
    }
}

static void ov7_0224A510(CommClubManager *commClubMan)
{
    FieldCommMan_StartBattleServer(commClubMan->fieldSystem, commClubMan->commType, CommClubMan_Regulation());
}

static void CommClubMan_Disconnect(void)
{
    FieldCommMan_EndBattle();
}

static void CommClubMan_SetTask(CommClubManTaskFunc stateFunc)
{
    sCommClubMan->commClubTask = stateFunc;
}

static void ov7_0224A53C(CommClubManager *man)
{
    int v0;

    SysTask_Start(CommClubMan_Run, man, 0);
    ov7_0224A5D0();

    if (!BGL_WindowAdded(&sCommClubMan->unk_30)) {
        BGL_AddWindow(sCommClubMan->fieldSystem->unk_08, &sCommClubMan->unk_30, 3, 22, 2, 9, 4, 13, (1 + 17 * 6 * 2));
    }

    Window_Show(&sCommClubMan->unk_30, 1, 1024 - (18 + 12) - 9, 11);
    BGL_FillWindow(&sCommClubMan->unk_30, 15);
    sub_0201A954(&sCommClubMan->unk_30);

    man->unk_97 = 1;

    sub_02032E1C(0);
    CommClubMan_SetTask(ov7_0224A72C);
}

static void ov7_0224A5D0(void)
{
    int sAwaitingContactMsg[] = {
        pl_msg_00000353_00007, // XXXXXXXXXXXXXXXXXXXXXX
        pl_msg_00000353_00008, // Single Battle! Awaiting contact from your friend.
        pl_msg_00000353_00009, // Double Battle! Awaiting contact from your friend.
        pl_msg_00000353_00011, // Mix Battle! Awaiting contact from your friend.
        pl_msg_00000353_00010, // Multi Battle! Awaiting contact from your friends.
        pl_msg_00000353_00010,
        pl_msg_00000353_00012, // When the group is ready: A Button: Proceed B Button: Cancel
        pl_msg_00000353_00013, // Record Corner! Awaiting contact from your friend(s).
        pl_msg_00000353_00014, // When the group is ready: A Button: Proceed B Button: Cancel
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00015, // Battle Tower! Awaiting contact from your friend.
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00016, // Battle Factory--Level 50! Awaiting contact from your friend.
        pl_msg_00000353_00017, // Battle Factory--Open Level! Awaiting contact from your friend.
        pl_msg_00000353_00000,
        pl_msg_00000353_00018, // Battle Hall! Awaiting contact from your friend.
        pl_msg_00000353_00019, // Battle Castle! Awaiting contact from your friend.
        pl_msg_00000353_00020 // Battle Arcade! Awaiting contact from your friend.
    };

    GF_ASSERT(sCommClubMan->commType < (sizeof(sAwaitingContactMsg) / sizeof(int)));

    if (sCommClubMan->commType == COMM_TYPE_CONTEST) {
        if (CommInfo_CountReceived() > 1) {
            //{contest type} Contest! Awaiting contact. A Button: When everyone's ready.
            CommClubMan_PrintMessage(pl_msg_00000353_00108 + sCommClubMan->unk_92, FALSE);
        } else {
            //{contest type} Contest! Awaiting contact from another player.
            CommClubMan_PrintMessage(pl_msg_00000353_00098 + sCommClubMan->unk_92, FALSE);
        }
    } else {
        CommClubMan_PrintMessage(sAwaitingContactMsg[sCommClubMan->commType], FALSE);
    }
}

static void ov7_0224A64C(CommClubManager *commClubMan)
{
    int msg, playerCnt;

    if (CommInfo_CountReceived() >= CommClubMan_MinPlayers()) {
        playerCnt = CommInfo_CountReceived();
        msg = pl_msg_00000353_00068; //{cnt} players.
    } else {
        playerCnt = CommClubMan_MinPlayers() - CommInfo_CountReceived();
        msg = pl_msg_00000353_00067; //{cnt} more players needed.
    }

    StringTemplate_SetNumber(sCommClubMan->unk_54, 0, playerCnt, 2, 5, 1);
    BGL_FillWindow(&sCommClubMan->unk_30, 15);

    MessageLoader_GetStrbuf(sCommClubMan->msgLoader, msg, sCommClubMan->strBuff[7]);
    StringTemplate_Format(sCommClubMan->unk_54, sCommClubMan->strBuff[6], sCommClubMan->strBuff[7]);
    Text_AddPrinterWithParams(&sCommClubMan->unk_30, FONT_SYSTEM, sCommClubMan->strBuff[6], 2, 2, TEXT_SPEED_INSTANT, NULL);
}

static void CommClubMan_PrintPlayerContactMsg(int netId, CommClubManager *commClubMan)
{
    int sContactMsg[] = {
        pl_msg_00000353_00021, //{Player} has contacted you. Would you like to trade?
        pl_msg_00000353_00022, //{Player} has contacted you. Start a Single Battle?
        pl_msg_00000353_00023, //{Player} has contacted you. Start a Double Battle?
        pl_msg_00000353_00024, //{Player} has contacted you. Start a Mix Battle?
        pl_msg_00000353_00025, //{Player} has contacted you. Let {Player} join your group?
        pl_msg_00000353_00025,
        pl_msg_00000353_00031, //{Player} has contacted you. Let {Player} join your group?
        pl_msg_00000353_00025,
        pl_msg_00000353_00025,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00026, //{Player} has contacted you. Take the Battle Tower challenge?
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00027, //{Player} has contacted you. Start the Battle Factory challenge?
        pl_msg_00000353_00027,
        pl_msg_00000353_00000,
        pl_msg_00000353_00028, //{Player} has contacted you. Start the Battle Hall challenge?
        pl_msg_00000353_00029, //{Player} has contacted you. Start the Battle Castle challenge?
        pl_msg_00000353_00030 //{Player} has contacted you. Start the Battle Arcade challenge?
    };
    TrainerInfo *trainerInfo = CommInfo_TrainerInfo(netId);

    if (trainerInfo != NULL) {
        StringTemplate_SetPlayerName(commClubMan->strTempMsg, 1, trainerInfo);
    }

    CommClubMan_PrintMessage(sContactMsg[commClubMan->commType], TRUE);
}

static void CommClubMan_Run(SysTask *task, void *param1)
{
    CommClubManager *man = (CommClubManager *)param1;

    if (sCommClubMan->commClubTask != NULL) {
        CommClubManTaskFunc stateFunc = sCommClubMan->commClubTask;

        stateFunc(task, man);
    }
}

static void ov7_0224A72C(SysTask *task, void *param1)
{
    CommClubManager *v0 = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;

    ov7_0224A64C(v0);

    if (FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
        int netId;

        sCommClubMan->unk_64 = sub_02013A04(5, 4);

        for (netId = 0; netId < 5; netId++) {
            sub_02013A4C(sCommClubMan->unk_64, sCommClubMan->msgLoader, pl_msg_00000353_00069, 0);
        }

        sCommClubMan->unk_98 = 1;

        for (netId = 0; netId < (7 + 1); netId++) {
            sCommClubMan->unk_80[netId] = 0;
        }

        CommClubMan_CreateList(Unk_ov7_0224ED14, 1, 2, 17, 6 * 2, 1);
        CommClubMan_SetTask(ov7_0224A7D0);
    }
}

static void ov7_0224A7D0(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;
    int v2;

    ov7_0224A64C(commClubMan);

    for (v2 = 0; v2 < (7 + 1); v2++) {
        if (sub_02032DC4(v2) && (v2 != 0)) {
            sCommClubMan->unk_80[v2] = 1;
            sCommClubMan->unk_98 = 1;
        } else if ((NULL != CommInfo_TrainerInfo(v2)) && !sCommClubMan->unk_80[v2]) {
            sCommClubMan->unk_80[v2] = 1;
            sCommClubMan->unk_98 = 1;
        } else if ((NULL == CommInfo_TrainerInfo(v2)) && sCommClubMan->unk_80[v2]) {
            sCommClubMan->unk_80[v2] = 0;
            sCommClubMan->unk_98 = 1;
        }
    }

    if (sCommClubMan->unk_98) {
        sCommClubMan->unk_98 = 0;
        sub_020013AC(sCommClubMan->unk_5C);

        for (v2 = 0; v2 < sub_02001504(sCommClubMan->unk_5C, 3); v2++) {
            ov7_0224A438(sCommClubMan->unk_5C, 0, v2);
        }
    }

    v1 = sub_02001288(commClubMan->unk_5C);

    if (CommInfo_NewNetworkId() != 0xff) {
        commClubMan->unk_95 = CommInfo_NewNetworkId();
        Sound_PlayEffect(1549);
        CommClubMan_PrintPlayerContactMsg(commClubMan->unk_95, commClubMan);
        CommClubMan_SetTask(ov7_0224AF84);
        return;
    }

    if (CommSys_CheckError()) {
        CommClubMan_Disconnect();
        CommClubMan_DestroyList(task, commClubMan);
        sCommClubMan->retCode = COMM_CLUB_RET_ERROR;
    } else {
        switch (v1) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            CommClubMan_SetTask(ov7_0224AE10);
            break;
        default:
            if (CommClubMan_MinPlayers() <= CommInfo_CountReceived()) {
                int sGroupConfirmMsg[] = {
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00032, // Multi Battle! Is this group OK?
                    pl_msg_00000353_00032,
                    pl_msg_00000353_00032,
                    pl_msg_00000353_00033, // Is this group OK?
                    pl_msg_00000353_00034, // Record Center! Is this group OK?
                    pl_msg_00000353_00035, // Contest! Is this group OK?
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000,
                    pl_msg_00000353_00000
                };

                commClubMan->connectedCnt = CommInfo_CountReceived();

                CommClubMan_PrintMessage(sGroupConfirmMsg[commClubMan->commType], FALSE);
                CommClubMan_SetTask(ov7_0224AC48);
            }

            break;
        }
    }
}

static void ov7_0224A97C(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;
    int v2;

    ov7_0224A64C(commClubMan);
    sub_02001288(commClubMan->unk_5C);

    v1 = sub_02002114(commClubMan->unk_60, 4);

    if (!CommSys_IsPlayerConnected(commClubMan->unk_95)) {
        if (v1 == 0xffffffff) {
            sub_02002154(commClubMan->unk_60, 4);
        }

        if (commClubMan->commType == COMM_TYPE_CONTEST) {
            for (v2 = 1; v2 < CommClubMan_MaxPlayers(); v2++) {
                if (CommSys_IsPlayerConnected(v2)) {
                    CommInfo_InitPlayer(v2);
                    sub_02036594(5, v2);
                }
            }

            CommClubMan_PrintMessage(0, FALSE);
            CommClubMan_SetTask(ov7_0224ABA4);
        } else {
            CommInfo_InitPlayer(commClubMan->unk_95);
            CommClubMan_PrintMessage(0, FALSE);
            CommClubMan_SetTask(ov7_0224ABA4);
        }
    } else if (CommSys_CheckError() || ov7_0224B4E4()) {
        if (v1 == 0xffffffff) {
            sub_02002154(commClubMan->unk_60, 4);
        }

        CommInfo_InitPlayer(commClubMan->unk_95);
        CommClubMan_PrintMessage(0, FALSE);
        CommClubMan_SetTask(ov7_0224ABA4);
    } else if (v1 == 0) {
        if ((commClubMan->commType == COMM_TYPE_SINGLE_BATTLE) || (commClubMan->commType == COMM_TYPE_DOUBLE_BATTLE)) {
            if (!CommInfo_CheckBattleRegulation()) {
                CommClubMan_PrintMessage(pl_msg_00000353_00097, FALSE); // Players have chosen different rules. The same rules must be chosen.
                CommClubMan_SetTask(CommClubTask_DifferentRegulation);
                sub_02036594(4, commClubMan->unk_95);
                return;
            }
        }

        sub_02032E1C(commClubMan->unk_95);
        sub_02036594(2, commClubMan->unk_95);

        if (CommClubMan_MaxPlayers() == CommInfo_CountReceived()) {
            commClubMan->connectedCnt = CommInfo_CountReceived();

            if (CommClubMan_MaxPlayers() > 2) {
                CommClubMan_SetTask(ov7_0224AC08);
            } else {
                CommClubMan_DestroyList(task, commClubMan);
                ov7_0224B054(commClubMan);
            }
        } else {
            ov7_0224A5D0();
            CommClubMan_SetTask(ov7_0224ABE0);
        }
    } else if (v1 != 0xffffffff) {
        if (commClubMan->commType == COMM_TYPE_CONTEST) {
            for (v2 = 1; v2 < CommClubMan_MaxPlayers(); v2++) {
                if (CommSys_IsPlayerConnected(v2)) {
                    CommInfo_InitPlayer(v2);
                    sub_02036594(5, v2);
                }
            }

            ov7_0224A5D0();
            CommClubMan_SetTask(ov7_0224ABE0);
        } else {
            CommInfo_InitPlayer(commClubMan->unk_95);
            sub_02036594(3, commClubMan->unk_95);
            ov7_0224A5D0();
            CommClubMan_SetTask(ov7_0224ABE0);
        }
    }
}

static void CommClubTask_DifferentRegulation(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;

    if (FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            CommClubMan_DestroyList(task, commClubMan);
            CommClubMan_Disconnect();
            sCommClubMan->retCode = 4;
        }
    }
}

static void ov7_0224ABA4(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;

    ov7_0224A64C(commClubMan);

    if (FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov7_0224A5D0();
            CommClubMan_SetTask(ov7_0224ABE0);
        }
    }
}

static void ov7_0224ABE0(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;

    ov7_0224A64C(commClubMan);

    if (FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
        CommClubMan_SetTask(ov7_0224A7D0);
    }
}

static void ov7_0224AC08(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;
    int sGroupConfirmMsg[] = {
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00032,
        pl_msg_00000353_00032,
        pl_msg_00000353_00032,
        pl_msg_00000353_00033,
        pl_msg_00000353_00034,
        pl_msg_00000353_00035,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000
    };

    ov7_0224A64C(commClubMan);
    CommClubMan_PrintMessage(sGroupConfirmMsg[commClubMan->commType], 0);
    CommClubMan_SetTask(ov7_0224AC48);
}

static void ov7_0224AC48(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;

    ov7_0224A64C(commClubMan);

    sub_02036994(0);
    sub_02001288(commClubMan->unk_5C);

    if (FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
        commClubMan->unk_60 = sub_02002100(sCommClubMan->fieldSystem->unk_08, &Unk_ov7_0224ED0C, 1024 - (18 + 12) - 9, 11, 4);
        CommClubMan_SetTask(ov7_0224ACA4);
    }
}

static void ov7_0224ACA4(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;
    int v2;

    ov7_0224A64C(commClubMan);
    sub_02001288(commClubMan->unk_5C);

    v1 = sub_02002114(commClubMan->unk_60, 4);

    if (CommSys_CheckError() || (CommSys_ConnectedCount() != commClubMan->connectedCnt)) {
        if (v1 == 0xffffffff) {
            sub_02002154(commClubMan->unk_60, 4);
        }

        commClubMan->unk_60 = NULL;
        CommClubMan_SetTask(ov7_0224AD68);
    } else if (v1 == 0) {
        if (commClubMan->commType == COMM_TYPE_CONTEST) {
            for (v2 = 1; v2 < CommSys_ConnectedCount(); v2++) {
                if (!CommSys_IsPlayerConnected(v2)) {
                    CommClubMan_SetTask(ov7_0224AD68);
                    return;
                }
            }
        }

        CommTiming_StartSync(10);
        CommClubMan_SetTask(ov7_0224AF2C);
    } else if (v1 != 0xffffffff) {
        sub_02036994(1);
        CommClubMan_Disconnect();
        CommClubMan_DestroyList(task, commClubMan);
        sCommClubMan->retCode = COMM_CLUB_RET_CANCEL;
    }
}

static void ov7_0224AD68(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;
    int v1[] = {
        pl_msg_00000353_00000, // There appears to be a problem...
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00054, // A member has dropped out.
        pl_msg_00000353_00055, // Record mixing with tthis group will be canceled.
        pl_msg_00000353_00056, // A Contest involving this group will be canceled.
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000
    };

    CommClubMan_DestroyList(task, commClubMan);

    if (sCommClubMan->commType == COMM_TYPE_CONTEST) {
        // The {contest type} with these members will be canceled.
        CommClubMan_PrintMessage(pl_msg_00000353_00118 + sCommClubMan->unk_92, 0);
    } else {
        CommClubMan_PrintMessage(v1[commClubMan->commType], 0);
    }

    FieldCommMan_EndBattle();
    SysTask_Start(ov7_0224ADD8, commClubMan, 0);
}

static void ov7_0224ADD8(SysTask *task, void *param1)
{
    if (FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            sCommClubMan->retCode = COMM_CLUB_RET_CANCEL;
            SysTask_Done(task);
        }
    }
}

static void ov7_0224AE10(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;
    int v2[] = {
        pl_msg_00000353_00000, // There appears to be an error...
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00036, // Cancel a Multi Battle involving this group?
        pl_msg_00000353_00036,
        pl_msg_00000353_00036,
        pl_msg_00000353_00037, // Cancel the cooking session?
        pl_msg_00000353_00038, // Cancel mixing records with this group?
        pl_msg_00000353_00039, // Cancel holding a Contest with this group?
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000,
        pl_msg_00000353_00000
    };

    ov7_0224A64C(commClubMan);

    if (CommInfo_CountReceived() > 1) {
        CommClubMan_PrintMessage(v2[commClubMan->commType], 0);
        CommClubMan_SetTask(ov7_0224AE78);
    } else {
        CommClubMan_Disconnect();
        CommClubMan_DestroyList(task, commClubMan);
        sCommClubMan->retCode = COMM_CLUB_RET_CANCEL;
    }
}

static void ov7_0224AE78(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;

    ov7_0224A64C(commClubMan);
    sub_02001288(commClubMan->unk_5C);

    if (FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
        commClubMan->unk_60 = sub_02002100(sCommClubMan->fieldSystem->unk_08, &Unk_ov7_0224ED0C, 1024 - (18 + 12) - 9, 11, 4);
        CommClubMan_SetTask(ov7_0224AECC);
    }
}

static void ov7_0224AECC(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;

    ov7_0224A64C(commClubMan);

    sub_02001288(commClubMan->unk_5C);
    v1 = sub_02002114(commClubMan->unk_60, 4);

    if (CommSys_CheckError()) {
        v1 = 0xfffffffe;
    }

    if (v1 == 0) {
        CommClubMan_Disconnect();
        CommClubMan_DestroyList(task, commClubMan);
        sCommClubMan->retCode = COMM_CLUB_RET_CANCEL;
    } else if (v1 != 0xffffffff) {
        ov7_0224A5D0();
        CommClubMan_SetTask(ov7_0224ABE0);
    }
}

static void ov7_0224AF2C(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;

    if (CommSys_CheckError() || (CommSys_ConnectedCount() != commClubMan->connectedCnt)) {
        CommClubMan_SetTask(ov7_0224AD68);
    } else {
        ov7_0224A64C(commClubMan);
        sub_02001288(commClubMan->unk_5C);

        if (CommTiming_IsSyncState(10) && CommTool_IsInitialized()) {
            CommClubMan_DestroyList(task, commClubMan);
            ov7_0224B3A8(commClubMan);
        }
    }
}

static void ov7_0224AF84(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;

    ov7_0224A64C(commClubMan);
    sub_02001288(commClubMan->unk_5C);

    if (FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
        commClubMan->unk_60 = sub_02002100(sCommClubMan->fieldSystem->unk_08, &Unk_ov7_0224ED0C, 1024 - (18 + 12) - 9, 11, 4);
        CommClubMan_SetTask(ov7_0224A97C);
    }
}

static void CommClubMan_DestroyList(SysTask *task, CommClubManager *param1)
{
    BGL_FillWindow(&sCommClubMan->msgWindow, 15);
    Window_Clear(&param1->unk_20, 0);
    sub_02013A3C(param1->unk_64);
    sub_02001384(param1->unk_5C, NULL, NULL);
    sub_0201ACF4(&param1->unk_20);
    BGL_DeleteWindow(&param1->unk_20);

    if (param1->unk_97) {
        Window_Clear(&sCommClubMan->unk_30, 0);
        sub_0201ACF4(&sCommClubMan->unk_30);
        BGL_DeleteWindow(&sCommClubMan->unk_30);
        param1->unk_97 = 0;
    }

    if (task) {
        SysTask_Done(task);
    }
}

static void ov7_0224B054(CommClubManager *commClubMan)
{
    StringTemplate_SetPlayerName(commClubMan->strTempMsg, 1, CommInfo_TrainerInfo(1));
    CommClubMan_PrintMessage(pl_msg_00000353_00057, 1); // Reeplied "OK" to {}

    SysTask_Start(CommClubMan_Run, commClubMan, 0);
    CommClubMan_SetTask(ov7_0224B0E8);
}

static void ov7_0224B08C(CommClubManager *commClubMan)
{
    sub_020339AC(commClubMan->connectIndex, sCommClubMan->unk_7C);
    StringTemplate_SetPlayerName(commClubMan->strTempMsg, 1, sCommClubMan->unk_7C);
    CommClubMan_PrintMessage(pl_msg_00000353_00004, 1); // Replied, "OK"

    commClubMan->connectedCnt = CommSys_ConnectedCount();

    SysTask_Start(CommClubMan_Run, commClubMan, 0);
    CommClubMan_SetTask(ov7_0224B0E8);

    sCommClubMan->msgDelay = (30 * 3);
}

static void ov7_0224B0E8(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;

    if ((CommSys_CurNetId() == 0) && (CommSys_ConnectedCount() != commClubMan->connectedCnt)) {
        CommClubMan_SetTask(CommClubTask_ExitGuestRoom);
    } else if (ov7_0224B4E4() || CommSys_CheckError()) {
        CommClubMan_SetTask(CommClubTask_ExitGuestRoom);
    } else if (FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
        CommTiming_StartSync(10);
        CommClubMan_SetTask(CommClubTask_WaitForGroup);
    }
}

static void CommClubTask_WaitForGroup(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;

    if ((CommSys_CurNetId() == 0) && (CommSys_ConnectedCount() != commClubMan->connectedCnt)) {
        CommClubMan_SetTask(CommClubTask_ExitGuestRoom);
    } else if (ov7_0224B4E4() || CommSys_CheckError()) {
        CommClubMan_SetTask(CommClubTask_ExitGuestRoom);
        return;
    } else if (!CommSys_IsPlayerConnected(0)) {
        CommClubMan_SetTask(CommClubTask_ExitGuestRoom);
        return;
    } else if (CommList_Get(0, 5) != -1) {
        CommClubMan_SetTask(CommClubTask_ExitGuestRoom);
        return;
    } else if (CommTiming_IsSyncState(10)) {
        if (CommTool_IsInitialized()) {
            if (!FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
                Text_RemovePrinter(sCommClubMan->printMsgIndex);
            }

            commClubMan->connectedCnt = CommSys_ConnectedCount();
            ov7_0224B3A8(commClubMan);
            SysTask_Done(task);
            return;
        }
    }

    if (sCommClubMan->msgDelay != 0) {
        sCommClubMan->msgDelay--;

        if (sCommClubMan->msgDelay == 0) {
            int sWaitingForGroupMsg[] = {
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00058, // Multi Battle! Waiting for the rest of the group.
                pl_msg_00000353_00058,
                pl_msg_00000353_00058,
                pl_msg_00000353_00059, // Waiting for the rest of the group.
                pl_msg_00000353_00060, // Record Center! Waiting for the rest of the group.
                pl_msg_00000353_00061, // Contest! Waiting for the rest of the group.
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000,
                pl_msg_00000353_00000
            };

            if (sCommClubMan->commType == COMM_TYPE_CONTEST) {
                //{contest type} Contest! Awaiting other members!
                CommClubMan_PrintMessage(pl_msg_00000353_00113 + sCommClubMan->unk_92, 0);
            } else {
                CommClubMan_PrintMessage(sWaitingForGroupMsg[commClubMan->commType], 0);
            }
        }
    }
}

static void CommClubTask_ExitGuestRoom(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;

    if (FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
        CommClubMan_PrintMessage(pl_msg_00000353_00000, 0);
        CommClubMan_SetTask(CommClubTask_ExitGuestRoomEnd);
    }
}

static void CommClubTask_ExitGuestRoomEnd(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;

    if (FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            SysTask_Done(task);
            CommClubMan_Disconnect();
            sCommClubMan->retCode = COMM_CLUB_RET_CANCEL;
        }
    }
}

static void CommClubMan_PlayerRefused(CommClubManager *commClubMan)
{
    sub_020339AC(commClubMan->connectIndex, sCommClubMan->unk_7C);
    StringTemplate_SetPlayerName(commClubMan->strTempMsg, 1, sCommClubMan->unk_7C);

    CommClubMan_PrintMessage(pl_msg_00000353_00005, 1); //{Player Name} refused...

    FieldCommMan_ReconnectBattleClient();
    SysTask_Start(ov7_0224B31C, commClubMan, 0);
}

static void ov7_0224B31C(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;

    if (FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
        FieldCommMan_ReconnectBattleClient();
        CommClubMan_PrintChooseJoinMsg(commClubMan);
        SysTask_Done(task);
    }
}

static void ov7_0224B348(CommClubManager *commClubMan)
{
    FieldCommMan_ReconnectBattleClient();

    for (int netId = 0; netId < (7 + 1); netId++) {
        CommInfo_InitPlayer(netId);
    }

    SysTask_Start(ov7_0224B370, commClubMan, 0);
}

static void ov7_0224B370(SysTask *task, void *param1)
{
    CommClubManager *commClubMan = (CommClubManager *)param1;

    if (FieldMessage_FinishedPrinting(sCommClubMan->printMsgIndex)) {
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            CommClubMan_PrintChooseJoinMsg(commClubMan);
            SysTask_Done(task);
        }
    }
}

static void ov7_0224B3A8(CommClubManager *commClubMan)
{
    sub_02036994(0);
    sCommClubMan->retCode = 2;
    CommMan_SetErrorHandling(1, 1);
    CommInfo_SendBattleRegulation();
    sub_02033EA8(1);
}

int CommClubMan_MinPlayers(void)
{
    return CommType_MinPlayers(sCommClubMan->commType);
}

static int CommClubMan_MaxPlayers(void)
{
    return CommType_MaxPlayers(sCommClubMan->commType);
}

static int CommClubMan_Regulation(void)
{
    return sCommClubMan->unk_92 + (sCommClubMan->unk_93 << 4);
}

void ov7_0224B414(FieldSystem *fieldSystem, int commType, int param2, int param3)
{
    CommClubMan_Init(fieldSystem);
    sCommClubMan->commType = commType;

    if ((commType == COMM_TYPE_MIX_BATTLE) || (commType == COMM_TYPE_MULTI_BATTLE_1)) {
        fieldSystem->unk_B0 = NULL;
    }

    sCommClubMan->unk_92 = param2;
    sCommClubMan->unk_93 = param3;

    CommClubMan_StartBattleClient(sCommClubMan);
}

void ov7_0224B450(void)
{
    CommClubMan_PrintChooseJoinMsg(sCommClubMan);
}

u32 ov7_0224B460(void)
{
    u32 v0 = sCommClubMan->retCode;

    if (0 != v0) {
        CommClubMan_Delete();
    }

    return v0;
}

void ov7_0224B47C(FieldSystem *fieldSystem, int commType, int param2, int param3)
{
    CommClubMan_Init(fieldSystem);
    sCommClubMan->commType = commType;

    if ((commType == COMM_TYPE_MIX_BATTLE) || (commType == COMM_TYPE_MULTI_BATTLE_1)) {
        fieldSystem->unk_B0 = NULL;
    }

    sCommClubMan->unk_92 = param2;
    sCommClubMan->unk_93 = param3;

    ov7_0224A510(sCommClubMan);
}

void ov7_0224B4B8(void)
{
    ov7_0224A53C(sCommClubMan);
}

u32 CommClub_CheckWindowOpenClient(void)
{
    u32 ret = sCommClubMan->retCode;

    if (0 != ret) {
        CommClubMan_Delete();
    }

    return ret;
}

BOOL ov7_0224B4E4(void)
{
    return 0;
}
