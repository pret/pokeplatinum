#include "unk_0205B33C.h"

#include <nitro.h>
#include <string.h>

#include "constants/union_room_message_types.h"

#include "struct_decls/struct_02014EC4_decl.h"
#include "struct_decls/struct_0205B43C_decl.h"
#include "struct_defs/sentence.h"
#include "struct_defs/struct_0203330C.h"
#include "struct_defs/struct_0205B4F8.h"

#include "field/field_system.h"
#include "global/pm_version.h"

#include "appearance.h"
#include "communication_information.h"
#include "communication_system.h"
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
#include "unk_02014A84.h"
#include "unk_02014D38.h"
#include "unk_02033200.h"
#include "unk_020366A0.h"
#include "unk_02095E98.h"
#include "unk_02099500.h"

#include "constdata/const_020ED570.h"
#include "res/text/bank/union_room.h"

typedef void (*UnkFuncPtr_0205B43C)(UnkStruct_0205B43C *);

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_0205B43C_sub1;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_0205B43C_sub2;

struct UnkStruct_0205B43C_t {
    FieldSystem *fieldSystem;
    SaveData *saveData;
    TrainerInfo *unk_08;
    SysTask *unk_0C;
    UnkFuncPtr_0205B43C unk_10;
    int unk_14;
    u32 unk_18;
    u32 unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    u32 unk_30;
    u32 unk_34;
    u32 unk_38;
    u32 unk_3C;
    u32 unk_40;
    u32 unk_44;
    UnkStruct_0205B43C_sub1 unk_48[10];
    UnkStruct_0205B43C_sub2 unk_70[40];
    WMbssDesc *unk_110[16];
    MATHRandContext32 unk_150;
    int unk_168;
    int unk_16C;
    int unk_170;
    u16 unk_174;
    u8 unk_176[2];
    Sentence unk_178;
    BOOL unk_180;
    TrainerCase *unk_184;
    TrainerCase *unk_188[2];
};

static UnkStruct_0205B43C *sub_0205B3A0(FieldSystem *fieldSystem);
static void sub_0205B43C(UnkStruct_0205B43C *param0);
static void sub_0205B4B0(UnkStruct_0205B43C *param0);
static void sub_0205B5B4(UnkStruct_0205B43C *param0, UnkFuncPtr_0205B43C param1, int param2);
static void sub_0205B5FC(UnkStruct_0205B43C *param0);
static void sub_0205B620(UnkStruct_0205B43C *param0);
static void sub_0205B754(UnkStruct_0205B43C *param0);
static void sub_0205B634(UnkStruct_0205B43C *param0);
static void sub_0205B4F8(UnkStruct_0205B43C *param0);
static void sub_0205B578(UnkStruct_0205B43C *param0);
static void sub_0205B72C(UnkStruct_0205B43C *param0);
static void sub_0205B6C4(UnkStruct_0205B43C *param0);
static void sub_0205B694(UnkStruct_0205B43C *param0);
static void sub_0205C160(UnkStruct_0205B43C *param0);
static int sub_0205B4D4(void);
static int UnionRoom_GetTrainerBusyMessage(UnkStruct_0205B43C *param0, int param1);
static int UnionRoom_GetStartMessage(int param0, int gender, StringTemplate *strTemplate);
static void sub_0205B408(UnkStruct_0205B43C *param0);
static void sub_0205BFF0(UnkStruct_0205B4F8 *param0);

UnkStruct_0205B43C *FieldSystem_InitCommUnionRoom(FieldSystem *fieldSystem)
{
    UnkStruct_0205B43C *v0 = NULL;

    GF_ASSERT(fieldSystem != NULL);

    if (fieldSystem->unk_7C != NULL) {
        return NULL;
    }

    if (Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_31, 0xa80)) {
        (void)0;
    }

    v0 = sub_0205B3A0(fieldSystem);

    if (v0 == NULL) {
        v0 = fieldSystem->unk_7C;
    }

    CommFieldCmd_Init((void *)fieldSystem);
    sub_02037B58(2);
    sub_0205B5B4(v0, sub_0205B408, 40);

    return v0;
}

void sub_0205B388(FieldSystem *fieldSystem)
{
    if (fieldSystem->unk_7C == NULL) {
        return;
    }

    sub_0205B5B4(fieldSystem->unk_7C, sub_0205B5FC, 5);
}

static UnkStruct_0205B43C *sub_0205B3A0(FieldSystem *fieldSystem)
{
    void *v0;
    SaveData *saveData;
    UnkStruct_0205B43C *v2 = NULL;

    if (fieldSystem->unk_7C != NULL) {
        return NULL;
    }

    saveData = FieldSystem_GetSaveData(fieldSystem);
    sub_020369EC(saveData);

    v2 = (UnkStruct_0205B43C *)Heap_Alloc(HEAP_ID_31, sizeof(UnkStruct_0205B43C));
    MI_CpuClear8(v2, sizeof(UnkStruct_0205B43C));

    v2->unk_10 = NULL;
    v2->unk_14 = 40;
    v2->unk_0C = SysTask_Start(sub_0205B5BC, v2, 10);
    v2->fieldSystem = fieldSystem;
    v2->saveData = saveData;
    v2->unk_08 = SaveData_GetTrainerInfo(saveData);

    sub_0205C160(v2);
    CommSys_Seed(&v2->unk_150);

    return v2;
}

static void sub_0205B408(UnkStruct_0205B43C *param0)
{
    Sentence v0;

    if (CommServerClient_IsInitialized()) {
        sub_02014AB4(&v0);
        sub_0205C12C(&v0);
        sub_0205C010(param0, &v0);
        sub_0205B5B4(param0, sub_0205B43C, 40);
    }
}

static int Unk_021C0850;

static void sub_0205B43C(UnkStruct_0205B43C *param0)
{
    if (sub_02036AA0()) {
        Unk_021C0850 = 0;
        sub_0205B5B4(param0, sub_0205B4F8, 0);
        return;
    }

    if (param0->unk_20 != 0) {
        param0->unk_28 = 2;

        if (param0->unk_20 == 1) {
            if (param0->unk_30 == 5) {
                sub_02037888(param0->unk_18);
            } else if (param0->unk_30 == 6) {
                sub_020378C8(param0->unk_18);
            } else {
                sub_02036A38(param0->unk_18);
            }
        } else if (param0->unk_20 == 2) {
            sub_02095E98(NULL);
            sub_02037854(param0->unk_18);
        }

        sub_0205B5B4(param0, sub_0205B634, 12);
        return;
    }
}

static void sub_0205B4B0(UnkStruct_0205B43C *param0)
{
    if (sub_02036B44() == 1) {
        CommFieldCmd_Init((void *)param0->fieldSystem);
        sub_0205B5B4(param0, sub_0205B43C, 2);
    }
}

static int sub_0205B4D4(void)
{
    int v0, v1;
    TrainerInfo *v2;

    v1 = 0;

    for (v0 = 1; v0 < 5; v0++) {
        v2 = CommInfo_TrainerInfo(v0);

        if (v2 != NULL) {
            v1++;
        }
    }

    return v1 >= 1;
}

static void sub_0205B4F8(UnkStruct_0205B43C *param0)
{
    UnkStruct_0205B4F8 *v0;

    if (param0->unk_14 > 0) {
        param0->unk_14--;
        return;
    }

    Unk_021C0850++;
    v0 = sub_020340E8();

    if (CommSys_IsClientConnecting() && (sub_0205B4D4() == 1) && (v0->unk_1C != 4)) {
        CommInfo_SendPlayerInfo();
        CommMan_SetErrorHandling(1, 1);
        sub_0205BEA8(11);
        sub_0205B5B4(param0, sub_0205B578, 0);
    }

    if (sub_02036AA0() == 0) {
        sub_02036AC4();
        sub_0205C160(param0);
        sub_0205BEA8(0);
        sub_0205B5B4(param0, sub_0205B4B0, 2);
    }
}

static void sub_0205B578(UnkStruct_0205B43C *param0)
{
    if (sub_02038938() && (0 == CommSys_IsClientConnecting())) {
        return;
    }

    if (0 == CommSys_IsClientConnecting()) {
        sub_02036AC4();
        sub_0205C160(param0);
        sub_0205BEA8(0);
        sub_0205B5B4(param0, sub_0205B4B0, 2);
    }
}

static void sub_0205B5B4(UnkStruct_0205B43C *param0, UnkFuncPtr_0205B43C param1, int param2)
{
    param0->unk_10 = param1;
    param0->unk_14 = param2;
}

static WMBssDesc *Unk_021C085C[16];

void sub_0205B5BC(SysTask *param0, void *param1)
{
    UnkStruct_0205B43C *v0 = (UnkStruct_0205B43C *)param1;

    if (v0 == NULL) {
        SysTask_Done(param0);
    } else {
        int v1;
        WMBssDesc *v2;

        for (v1 = 0; v1 < 16; v1++) {
            v0->unk_110[v1] = sub_02033F3C(v1);
            Unk_021C085C[v1] = v0->unk_110[v1];
        }

        if (v0->unk_10 != NULL) {
            v0->unk_10(v0);
        }
    }
}

static void sub_0205B5FC(UnkStruct_0205B43C *param0)
{
    if (param0->unk_14 != 0) {
        param0->unk_14--;
        return;
    }

    sub_02036B68();
    sub_0205B5B4(param0, sub_0205B620, 0);
}

static void sub_0205B620(UnkStruct_0205B43C *param0)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    sub_0205B754(param0);
}

static void sub_0205B634(UnkStruct_0205B43C *param0)
{
    if (1 == sub_02036A68()) {
        CommInfo_SendPlayerInfo();
        sub_0205B5B4(param0, sub_0205B6C4, 3);
        return;
    } else if (CommSys_IsClientConnecting()) {
        param0->unk_20 = 0;
        param0->unk_1C = 3;

        sub_0205B5B4(param0, sub_0205B4F8, 0);
    }

    if (0 == sub_02036A68()) {
        return;
    }

    sub_0205B5B4(param0, sub_0205B694, 2);

    param0->unk_24 = 0;
    param0->unk_1C = 2;
    param0->unk_20 = 0;
    param0->unk_44 = 0;
}

static void sub_0205B694(UnkStruct_0205B43C *param0)
{
    if (!FieldSystem_IsRunningTask(param0->fieldSystem)) {
        sub_02036AC4();
        sub_0205C160(param0);
        sub_0205BEA8(0);
        sub_0205B5B4(param0, sub_0205B4B0, 2);
    }
}

static void sub_0205B6C4(UnkStruct_0205B43C *param0)
{
    if (1 == sub_02036A68()) {
        if (CommInfo_TrainerInfo(CommSys_CurNetId()) != NULL) {
            param0->unk_20 = 0;
            param0->unk_1C = 1;
            param0->unk_44 = 0;

            CommMan_SetErrorHandling(1, 1);
            sub_0205B5B4(param0, sub_0205B72C, 3);
        }
    } else if (0 == sub_02036A68()) {
        sub_02036AC4();
        sub_0205C160(param0);
        sub_0205B5B4(param0, sub_0205B4B0, 2);

        param0->unk_24 = 0;
        param0->unk_1C = 2;
        param0->unk_20 = 0;
        param0->unk_44 = 0;
    }
}

static void sub_0205B72C(UnkStruct_0205B43C *param0)
{
    if (0 == sub_02036A68()) {
        sub_02036AC4();
        sub_0205C160(param0);
        sub_0205B5B4(param0, sub_0205B4B0, 2);

        return;
    }
}

static void sub_0205B754(UnkStruct_0205B43C *param0)
{
    void *v0;

    if (param0 == NULL) {
        return;
    }

    SysTask_Done(param0->unk_0C);
    Heap_Free(param0);
    Heap_Destroy(HEAP_ID_31);
}

FieldSystem *sub_0205B770(UnkStruct_0205B43C *param0)
{
    return param0->fieldSystem;
}

WMBssDesc *sub_0205B774(UnkStruct_0205B43C *param0, int param1)
{
    return param0->unk_110[param1];
}

static UnkStruct_0205B4F8 *Unk_021C0854;

int sub_0205B780(UnkStruct_0205B43C *param0, int param1)
{
    TrainerInfo *v0;
    UnkStruct_0203330C *v1;
    UnkStruct_0205B4F8 *v2;

    param1--;
    v0 = sub_02033FB0(param1);

    sub_0205C154(param0);

    if (v0 == NULL) {
        return 5;
    }

    if (param0->unk_110[param1] == NULL) {
        return 5;
    }

    v1 = (UnkStruct_0203330C *)param0->unk_110[param1]->gameInfo.userGameInfo;
    v2 = (UnkStruct_0205B4F8 *)v1->unk_30;

    Unk_021C0854 = v2;

    switch (v2->unk_1C) {
    case 0:
        return 1;
        break;
    case 1:
        return 2;
        break;
    case 2:
        return 3;
        break;
    case 13:
    case 3:
        return 4;
        break;
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 11:
        return 5;
        break;
    }

    return 5;
}

int sub_0205B804(UnkStruct_0205B43C *param0, int param1, u16 param2)
{
    TrainerInfo *v0;
    UnkStruct_0203330C *v1;
    UnkStruct_0205B4F8 *v2;

    param1--;

    if (param0->unk_110[param1] == NULL) {
        return 5;
    }

    v1 = (UnkStruct_0203330C *)param0->unk_110[param1]->gameInfo.userGameInfo;
    v2 = (UnkStruct_0205B4F8 *)v1->unk_30;

    Unk_021C0854 = v2;

    switch (v2->unk_1C) {
    case 2:
        if (param2 != 3) {
            return 5;
        }

        param0->unk_30 = 5;
        param0->unk_18 = param1;
        param0->unk_20 = 1;
        param0->unk_24 = 0;
        param0->unk_1C = 0;
        return 1;
        break;
    case 0:
        if (param2 != 1) {
            return 5;
        }

        param0->unk_18 = param1;
        param0->unk_20 = 1;
        param0->unk_24 = 0;
        param0->unk_1C = 0;
        return 1;
        break;
    case 1:
        if (param2 != 2) {
            return 5;
        }

        param0->unk_18 = param1;
        param0->unk_20 = 2;
        param0->unk_24 = 0;
        param0->unk_1C = 0;
        return 1;
        break;
    case 13:
    case 3:
        if (param2 != 4) {
            return 5;
        }

        param0->unk_30 = 6;
        param0->unk_18 = param1;
        param0->unk_20 = 1;
        param0->unk_1C = 0;
        return 1;
        break;
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 11:
        return 5;
        break;
    default:
        return 5;
        break;
    }

    GF_ASSERT(0);

    return 0;
}

u32 sub_0205B8D8(UnkStruct_0205B43C *param0)
{
    return param0->unk_1C;
}

u32 sub_0205B8DC(UnkStruct_0205B43C *param0)
{
    if (param0->unk_44) {
        return 7;
    }

    if (CommSys_ConnectedCount() < 2) {
        return 7;
    }

    if (CommSys_CurNetId() == 0) {
        if (sub_02036AA0() == 1) {
            return param0->unk_40;
        }
    } else {
        if (sub_02036A68() == 1) {
            return param0->unk_40;
        }
    }

    return 7;
}

u32 sub_0205B91C(UnkStruct_0205B43C *param0)
{
    if (sub_02036AA0() == 1) {
        return param0->unk_30;
    }

    return 7;
}

void sub_0205B930(UnkStruct_0205B43C *param0, int param1, u32 param2)
{
    u8 v0 = (u8)param2;

    switch (param1) {
    case 0:
        if (param0->unk_44 == 0) {
            param0->unk_34 = v0;
            CommSys_SendData(99, &v0, 1);
        }
        break;
    case 1:
        if (param2 == 0) {
            u8 v1 = param0->unk_30;

            CommSys_SendDataServer(103, &v1, 1);
            param0->unk_3C = param2;
        } else {
            u8 v2 = 7;

            CommSys_SendDataServer(103, &v2, 1);
            param0->unk_3C = param2;
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

void sub_0205B990(int param0, int param1, void *param2, void *param3)
{
    FieldSystem *fieldSystem = (FieldSystem *)param3;

    sub_0205B5B4(fieldSystem->unk_7C, sub_0205B43C, 2);
    sub_0205C160(fieldSystem->unk_7C);
}

static int Unk_021C0858;

void sub_0205B9AC(int param0, int param1, void *param2, void *param3)
{
    FieldSystem *fieldSystem = (FieldSystem *)param3;
    u8 *v1 = (u8 *)param2;

    if (fieldSystem->unk_7C->unk_44 == 0) {
        fieldSystem->unk_7C->unk_30 = *v1;
        Unk_021C0858 = *v1;
    }
}

void sub_0205B9C4(int param0, int param1, void *param2, void *param3)
{
    FieldSystem *fieldSystem = (FieldSystem *)param3;
    u8 *v1 = (u8 *)param2;

    fieldSystem->unk_7C->unk_2C = 1;
    fieldSystem->unk_7C->unk_40 = *v1;

    if (*v1 == 4) {
        sub_0203781C();
    }
}

void sub_0205B9E0(int param0, int param1, void *param2, void *param3)
{
    FieldSystem *fieldSystem = (FieldSystem *)param3;

    fieldSystem->unk_7C->unk_44 = 1;
}

int sub_0205B9E8(UnkStruct_0205B43C *param0)
{
    return param0->unk_44;
}

int sub_0205B9EC(UnkStruct_0205B43C *param0, int param1)
{
    if (param0->unk_30 == 0) {
        CommSys_SendData(104, NULL, 0);
        return param1;
    }

    return 0;
}

void sub_0205BA08(int param0, int param1, void *param2, void *param3)
{
    FieldSystem *fieldSystem = (FieldSystem *)param3;
    TrainerCase *trainerCase = (TrainerCase *)param2;
    TrainerInfo *trainerInfo = CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1);
    void *journalEntryOnlineEvent;

    int i, v5 = 0;
    u8 *v6 = (u8 *)param2;

    for (i = 0; i < sizeof(TrainerCase); i++) {
        v5 ^= v6[i];
    }

    trainerCase->unk_66A = 1;

    if (param0 != CommSys_CurNetId()) {
        journalEntryOnlineEvent = JournalEntry_CreateEventGreetedInUnionRoom((u16 *)TrainerInfo_Name(trainerInfo), TrainerInfo_Gender(trainerInfo), 31);
        JournalEntry_SaveData(fieldSystem->journalEntry, journalEntryOnlineEvent, JOURNAL_ONLINE_EVENT);
    }
}

u8 *sub_0205BA5C(int param0, void *param1, int param2)
{
    FieldSystem *fieldSystem = (FieldSystem *)param1;
    UnkStruct_0205B43C *v1 = fieldSystem->unk_7C;

    return (u8 *)v1->unk_188[param0];
}

void sub_0205BA6C(int param0, int param1, void *param2, void *param3)
{
    FieldSystem *fieldSystem = (FieldSystem *)param3;
    UnkStruct_0205B43C *v1 = fieldSystem->unk_7C;
    u8 *v2 = (u8 *)param2;

    v1->unk_176[param0] = *v2;
}

u16 sub_0205BA7C(UnkStruct_0205B43C *param0)
{
    int v0 = CommSys_CurNetId();

    if (param0->unk_176[v0] == 2) {
        return 1;
    }

    if (param0->unk_176[v0 ^ 1] == 2) {
        return 2;
    }

    return 0;
}

void sub_0205BAAC(int param0)
{
    u8 v0 = param0;
    CommSys_SendData(101, &v0, 1);
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

const u16 Unk_020ED570[] = {
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

static int sub_0205BAC0(int param0)
{
    int v0, v1, v2;

    for (v0 = 0; v0 < 10; v0++) {
        if ((Unk_020ED570[v0] <= param0) && ((Unk_020ED570[v0] + 4) > param0)) {
            return v0;
        }
    }

    return -1;
}

static int UnionRoom_GetTrainerBusyMessage(UnkStruct_0205B43C *param0, int param1)
{
    int gender, v1;

    if (param1 > 9) {
        v1 = sub_0205BAC0(param1);
        GF_ASSERT(param1 != -1);
    } else {
        v1 = param1;
    }

    if (param0->unk_110[v1] == NULL) {
        return UnionRoom_Text_TrainersAppearsBusy;
    }

    TrainerInfo *trainerInfo = sub_02033FB0(v1);
    UnkStruct_0203330C *v3 = (UnkStruct_0203330C *)param0->unk_110[v1]->gameInfo.userGameInfo;
    UnkStruct_0205B4F8 *v4 = (UnkStruct_0205B4F8 *)v3->unk_30;

    if (trainerInfo == NULL) {
        return UnionRoom_Text_TrainersAppearsBusy;
    }

    if (param1 > 9) {
        gender = v4->unk_18[(param1 - 10) % 4];
        gender = gender >> 7;
    } else {
        gender = TrainerInfo_Gender(trainerInfo);
    }

    switch (v4->unk_1C) {
    case 4:
    case 11:
        return sMessagesTrainerAppearsBusy[gender];
        break;
    case 5:
        return sMessagesShowingTrainerCase[LCRNG_Next() % (int)NELEMS(sMessagesShowingTrainerCase)][gender];
        break;
    case 6:
        return sMessagesBattling[LCRNG_Next() % (int)NELEMS(sMessagesBattling)][gender];
        break;
    case 7:
        return sMessagesTrading[LCRNG_Next() % (int)NELEMS(sMessagesTrading)][gender];
        break;
    case 8:
    case 1:
        return sMessagesDrawing[LCRNG_Next() % (int)NELEMS(sMessagesDrawing)][gender];
        break;
    case 9:
    case 2:
        return sMessagesMixingRecords[LCRNG_Next() % (int)NELEMS(sMessagesMixingRecords)][gender];
        break;
    case 10:
    case 3:
    case 12:
    case 13:
        return sMessagesSpinTrading[LCRNG_Next() % (int)NELEMS(sMessagesSpinTrading)][gender];
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

    if (commCountry == 0) {
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

static int UnionRoom_GetStartMessage(int param0, int gender, StringTemplate *strTemplate)
{
    if (param0 != 0) {
        return sMessagesStartActivity[param0][gender];
    }

    return UnionRoom_GetTrainerCasePlayerMessage(strTemplate);
}

int UnionRoom_GetMessage(UnkStruct_0205B43C *param0, int param1, int msgType, StringTemplate *strTemplate)
{
    param1--;

    if (msgType == 0) {
        return UnionRoom_GetTrainerBusyMessage(param0, param1);
    }

    TrainerInfo *trainerInfo = sub_02033FB0(param1);

    if (trainerInfo == NULL) {
        CommMan_SetErrorHandling(1, 1);
        Link_SetErrorState(1);
        return 0;
    }

    int gender = TrainerInfo_Gender(trainerInfo);

    switch (msgType) {
    case UR_MSG_LETS_START:
        return UnionRoom_GetStartMessage(param0->unk_34 - 1, gender, strTemplate);
        break;
    case UR_MSG_THIS_IS_PLAYER_ASK_DO_SOMETHING:
        return sMessagesThisIsPlayerAskDoSomething[gender];
        break;
    case UR_MSG_WAIT_FOR_ANSWER:
        if (param0->unk_34 == 0) {
            return 0;
        }
        return sMessagesWaitForAnswer[param0->unk_34 - 1][gender];
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

static void sub_0205BE58(UnkStruct_0205B4F8 *param0, int param1)
{
    TrainerInfo *v0;
    int v1, v2 = 0;

    for (v1 = 1; v1 < 4 + 1; v1++) {
        int v3 = v1 - 1;

        v0 = CommInfo_TrainerInfo(v1);

        if (v0 != NULL) {
            if (CommSys_CurNetId() == 0) {
                param0->unk_00[v3] = TrainerInfo_ID(v0);
                param0->unk_18[v3] = TrainerInfo_Appearance(v0) | (TrainerInfo_Gender(v0) << 7);
            }
        } else {
            param0->unk_00[v3] = 0;
            param0->unk_18[v3] = 0;
        }
    }
}

void sub_0205BEA8(int param0)
{
    UnkStruct_0205B4F8 v0;

    MI_CpuClear8(&v0, sizeof(UnkStruct_0205B4F8));

    switch (param0) {
    case 0:
        break;
    case 4:
        break;
    case 11:
        sub_0205BE58(&v0, 2);
        break;
    case 7:
    case 5:
    case 6:
        sub_0205BE58(&v0, 2);
        break;
    case 8:
        sub_0205BE58(&v0, 5);
        break;
    case 1:
        sub_0205BE58(&v0, 4);
        break;
    case 9:
        sub_0205BE58(&v0, 5);
        break;
    case 2:
        sub_0205BE58(&v0, 4);
        break;
    case 10:
    case 12:
        sub_0205BE58(&v0, 5);
        break;
    case 3:
    case 13:
        sub_0205BE58(&v0, 4);
        break;
    }

    v0.unk_1C = param0;

    sub_020340C4(&v0);
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

int UnionRoom_GetTealaMessage(UnkStruct_0205B43C *param0, StringTemplate *strTemplate)
{
    int v0, v1 = 0;
    u16 v3;

    for (v0 = 0; v0 < 10; v0++) {
        if (param0->unk_110[v0] != NULL) {
            v1++;
        }
    }

    if (v1 != 0) {
        return UnionRoom_Text_HereComesSomeoneNow;
    }

    if (!Sentence_IsValid(&param0->unk_178)) {
        return UnionRoom_Text_BoringIfNoOneComes;
    }

    if (Sentence_GetType(&param0->unk_178) != 4) {
        int appearance = TrainerInfo_Appearance(param0->unk_08);
        int gender = TrainerInfo_Gender(param0->unk_08);

        StringTemplate_SetTrainerClassName(strTemplate, 0, Appearance_GetData(gender, appearance, APPEARANCE_DATA_TRAINER_CLASS_1));

        return UnionRoom_Text_MistakenForTrainerClass;
    }

    int id = Sentence_GetID(&param0->unk_178);

    if (id >= 20) {
        id = 0;
    }

    if ((v3 = Sentence_GetWord(&param0->unk_178, 0)) != 0xffff) {
        StringTemplate_SetCustomMessageWord(strTemplate, 0, v3);
    }

    return sTealaMessages[id];
}

static void sub_0205BFF0(UnkStruct_0205B4F8 *param0)
{
    int v0;

    param0->unk_1C = 0;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_00[v0] = 0;
        param0->unk_18[v0] = 0;
        param0->unk_10[v0] = 0;
        param0->unk_14[v0] = 0;
    }
}

void sub_0205C010(UnkStruct_0205B43C *param0, Sentence *param1)
{
    Sentence_Set(&param0->unk_178, param1);
    param0->unk_180 = 1;
}

Sentence *sub_0205C028(UnkStruct_0205B43C *param0)
{
    if (param0->unk_180 == 0) {
        return NULL;
    }

    param0->unk_180 = 0;
    return &param0->unk_178;
}

void UnionRoom_DoGreeting(StringTemplate *strTemplate, int param1, int param2, TrainerInfo *playerTrainerInfo, UnkStruct_02014EC4 *param4)
{
    TrainerInfo *commTrainerInfo;
    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNION_ROOM, HEAP_ID_FIELD1);
    int entryID;

    param2--;

    if (param1 == 0) {
        commTrainerInfo = sub_02033FB0(param2);
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

    if (language >= JAPANESE && language <= SPANISH) {
        static const int v5[] = {
            0,
            1,
            2,
            3,
            4,
            -1,
            5,
        };
        u16 v6 = language - 1;

        if (v6 < NELEMS(v5) && v5[v6] >= 0) {
            sub_02014F98(param4, v5[v6]);
        }
    }

    switch (language) {
    case JAPANESE:
        entryID = UnionRoom_Text_GreetingJapanese;
        break;
    case ENGLISH:
        entryID = UnionRoom_Text_GreetingEnglish;
        break;
    case FRENCH:
        entryID = UnionRoom_Text_GreetingFrench;
        break;
    case ITALIAN:
        entryID = UnionRoom_Text_GreetingItalian;
        break;
    case GERMAN:
        entryID = UnionRoom_Text_GreetingGerman;
        break;
    case SPANISH:
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

void sub_0205C12C(Sentence *param0)
{
    UnkStruct_0205B4F8 v0;

    sub_0205BFF0(&v0);
    v0.unk_1C = 0;

    sub_020340A8(param0);
    sub_020340C4(&v0);
    sub_020340FC();
}

void sub_0205C154(UnkStruct_0205B43C *param0)
{
    param0->unk_30 = 0;
    param0->unk_40 = 0;
    param0->unk_44 = 0;
}

static void sub_0205C160(UnkStruct_0205B43C *param0)
{
    param0->unk_20 = 0;
    param0->unk_24 = 0;
    param0->unk_2C = 0;
    param0->unk_30 = 0;
    param0->unk_40 = 0;
    param0->unk_174 = 0;
    param0->unk_180 = 0;
    param0->unk_44 = 0;
}

void *UnionRoom_GetTrainerCase(UnkStruct_0205B43C *param0)
{
    param0->unk_184 = TrainerCase_New(HEAP_ID_SYSTEM);
    param0->unk_188[0] = TrainerCase_New(HEAP_ID_SYSTEM);
    param0->unk_188[1] = TrainerCase_New(HEAP_ID_SYSTEM);

    TrainerCase_Init(FALSE, FALSE, 0, Appearance_GetData(TrainerInfo_Gender(param0->unk_08), TrainerInfo_Appearance(param0->unk_08), 0), param0->fieldSystem, param0->unk_184);

    return (void *)param0->unk_188[CommSys_CurNetId() ^ 1];
}

void sub_0205C1F0(UnkStruct_0205B43C *param0)
{
    Heap_Free(param0->unk_188[0]);
    Heap_Free(param0->unk_188[1]);
    Heap_Free(param0->unk_184);
}

void UnionRoom_SendTrainerCase(UnkStruct_0205B43C *param0)
{
    CommSys_SendDataHuge(105, param0->unk_184, sizeof(TrainerCase));
}
