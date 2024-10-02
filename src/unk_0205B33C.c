#include "unk_0205B33C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02014EC4_decl.h"
#include "struct_decls/struct_0205B43C_decl.h"
#include "struct_defs/sentence.h"
#include "struct_defs/struct_0203330C.h"
#include "struct_defs/struct_0205B4F8.h"
#include "struct_defs/struct_02072014.h"

#include "field/field_system.h"

#include "communication_information.h"
#include "communication_system.h"
#include "field_system.h"
#include "heap.h"
#include "journal.h"
#include "message.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "trainer_info.h"
#include "unk_02014A84.h"
#include "unk_02014D38.h"
#include "unk_0201D15C.h"
#include "unk_02033200.h"
#include "unk_020366A0.h"
#include "unk_020508D4.h"
#include "unk_0205C980.h"
#include "unk_02071D40.h"
#include "unk_02095E98.h"
#include "unk_02099500.h"

#include "constdata/const_020ED570.h"

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
    SaveData *unk_04;
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
    TrainerCard *unk_184;
    TrainerCard *unk_188[2];
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
static int sub_0205BAE8(UnkStruct_0205B43C *param0, int param1);
static int sub_0205BCD4(int param0, int param1, StringTemplate *param2);
static void sub_0205B408(UnkStruct_0205B43C *param0);
static void sub_0205BFF0(UnkStruct_0205B4F8 *param0);

UnkStruct_0205B43C *FieldSystem_InitCommUnionRoom(FieldSystem *fieldSystem)
{
    UnkStruct_0205B43C *v0 = NULL;

    GF_ASSERT(fieldSystem != NULL);

    if (fieldSystem->unk_7C != NULL) {
        return NULL;
    }

    if (Heap_CreateAtEnd(3, 31, 0xa80)) {
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
    SaveData *v1;
    UnkStruct_0205B43C *v2 = NULL;

    if (fieldSystem->unk_7C != NULL) {
        return NULL;
    }

    v1 = FieldSystem_SaveData(fieldSystem);
    sub_020369EC(v1);

    v2 = (UnkStruct_0205B43C *)Heap_AllocFromHeap(31, sizeof(UnkStruct_0205B43C));
    MI_CpuClear8(v2, sizeof(UnkStruct_0205B43C));

    v2->unk_10 = NULL;
    v2->unk_14 = 40;
    v2->unk_0C = SysTask_Start(sub_0205B5BC, v2, 10);
    v2->fieldSystem = fieldSystem;
    v2->unk_04 = v1;
    v2->unk_08 = SaveData_GetTrainerInfo(v1);

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

    if (sub_020360E8() && (sub_0205B4D4() == 1) && (v0->unk_1C != 4)) {
        CommInfo_SendBattleRegulation();
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
    if (sub_02038938() && (0 == sub_020360E8())) {
        return;
    }

    if (0 == sub_020360E8()) {
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
        CommInfo_SendBattleRegulation();
        sub_0205B5B4(param0, sub_0205B6C4, 3);
        return;
    } else if (sub_020360E8()) {
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
    if (!sub_020509A4(param0->fieldSystem)) {
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
    Heap_FreeToHeap(param0);
    Heap_Destroy(31);
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
    TrainerCard *v1 = (TrainerCard *)param2;
    TrainerInfo *v2 = CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1);
    void *v3;

    {
        int v4, v5 = 0;
        u8 *v6 = (u8 *)param2;

        for (v4 = 0; v4 < sizeof(TrainerCard); v4++) {
            v5 ^= v6[v4];
        }
    }

    v1->unk_66A = 1;

    if (param0 != CommSys_CurNetId()) {
        v3 = sub_0202C0EC((u16 *)TrainerInfo_Name(v2), TrainerInfo_Gender(v2), 31);
        Journal_SaveData(fieldSystem->journal, v3, 4);
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

static const int Unk_020ED560[2][2] = {
    { 0x2C, 0x68 },
    { 0x2D, 0x69 }
};

static const int Unk_020ED600[4][2] = {
    { 0x35, 0x71 },
    { 0x36, 0x72 },
    { 0x37, 0x73 },
    { 0x38, 0x74 }
};

static const int Unk_020ED620[4][2] = {
    { 0x3D, 0x79 },
    { 0x3E, 0x7A },
    { 0x3F, 0x7B },
    { 0x40, 0x7C }
};

static const int Unk_020ED550[2][2] = {
    { 0x44, 0x80 },
    { 0x45, 0x81 }
};

static const int Unk_020ED640[4][2] = {
    { 0x4F, 0x8B },
    { 0x50, 0x8C },
    { 0x51, 0x8D },
    { 0x52, 0x8E }
};

static const int Unk_020ED660[4][2] = {
    { 0x5D, 0x99 },
    { 0x5E, 0x9A },
    { 0x5F, 0x9B },
    { 0x60, 0x9C }
};

static const int Unk_020ED6E8[][2] = {
    { 0x2C, 0x68 },
    { 0x3A, 0x76 },
    { 0x42, 0x7E },
    { 0x2F, 0x6B },
    { 0x49, 0x85 },
    { 0x54, 0x90 },
    { 0x54, 0x90 }
};

static const int Unk_020ED520[2] = {
    0x25,
    0x61
};

static const int Unk_020ED548[2] = {
    0x28,
    0x64
};

static const int Unk_020ED680[][2] = {
    { 0x2B, 0x67 },
    { 0x30, 0x6C },
    { 0x3B, 0x77 },
    { 0x43, 0x7F },
    { 0x55, 0x91 },
    { 0x4A, 0x86 }
};

static const int Unk_020ED5CC[][2] = {
    { 0x3C, 0x78 },
    { 0x46, 0x82 },
    { 0x56, 0x92 }
};

static const int Unk_020ED6B0[][2] = {
    { 0x2A, 0x66 },
    { 0x39, 0x75 },
    { 0x41, 0x7D },
    { 0x2E, 0x6A },
    { 0x48, 0x84 },
    { 0x53, 0x8F },
    { 0x53, 0x8F }
};

static const int Unk_020ED584[][2] = {
    { 0x31, 0x6D },
    { 0x4B, 0x87 },
    { 0x57, 0x93 }
};

static const int Unk_020ED59C[][2] = {
    { 0x33, 0x6F },
    { 0x4D, 0x89 },
    { 0x59, 0x95 }
};

static const int Unk_020ED5B4[][2] = {
    { 0x32, 0x6E },
    { 0x4C, 0x88 },
    { 0x58, 0x94 }
};

static const int Unk_020ED530[] = {
    0x27,
    0x63
};

static const int Unk_020ED528[2] = {
    0x47,
    0x83
};

static const int Unk_020ED538[2] = {
    0x26,
    0x62
};

static const int Unk_020ED540[2] = {
    0x5C,
    0x98
};

const u16 Unk_020ED570[] = {
    0xA,
    0xE,
    0x12,
    0x16,
    0x1A,
    0x1E,
    0x22,
    0x26,
    0x2A,
    0x2E
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

static int sub_0205BAE8(UnkStruct_0205B43C *param0, int param1)
{
    int v0, v1;
    TrainerInfo *v2;
    UnkStruct_0203330C *v3;
    UnkStruct_0205B4F8 *v4;

    if (param1 > 9) {
        v1 = sub_0205BAC0(param1);
        GF_ASSERT(param1 != -1);
    } else {
        v1 = param1;
    }

    if (param0->unk_110[v1] == NULL) {
        return 40;
    }

    v2 = sub_02033FB0(v1);
    v3 = (UnkStruct_0203330C *)param0->unk_110[v1]->gameInfo.userGameInfo;
    v4 = (UnkStruct_0205B4F8 *)v3->unk_30;

    if (v2 == NULL) {
        return 40;
    }

    if (param1 > 9) {
        v0 = v4->unk_18[(param1 - 10) % 4];
        v0 = v0 >> 7;
    } else {
        v0 = TrainerInfo_Gender(v2);
    }

    switch (v4->unk_1C) {
    case 4:
    case 11:
        return Unk_020ED548[v0];
        break;
    case 5:
        return Unk_020ED560[LCRNG_Next() % 2][v0];
        break;
    case 6:
        return Unk_020ED620[LCRNG_Next() % 4][v0];
        break;
    case 7:
        return Unk_020ED550[LCRNG_Next() % 2][v0];
        break;
    case 8:
    case 1:
        return Unk_020ED600[LCRNG_Next() % 4][v0];
        break;
    case 9:
    case 2:
        return Unk_020ED640[LCRNG_Next() % 4][v0];
        break;
    case 10:
    case 3:
    case 12:
    case 13:
        return Unk_020ED660[LCRNG_Next() % 4][v0];
        break;
    }

    return 40;
}

int sub_0205BC50(StringTemplate *param0)
{
    u8 v0, v1;
    u8 v2, v3;

    v0 = CommInfo_PlayerCountry(CommSys_CurNetId());
    v1 = CommInfo_PlayerCountry(CommSys_CurNetId() ^ 1);
    v2 = CommInfo_PlayerRegion(CommSys_CurNetId());
    v3 = CommInfo_PlayerRegion(CommSys_CurNetId() ^ 1);

    if (v1 == 0) {
        return 15;
    }

    if (v1 != 0) {
        StringTemplate_SetCountryName(param0, 3, v1);

        if (v3 != 0) {
            StringTemplate_SetCityName(param0, 4, v1, v3);
        }
    }

    if (v0 != v1) {
        if (v3 == 0) {
            return 13;
        }

        if (v2 == v3) {
            return 13;
        }

        return 12;
    }

    if (v2 != v3) {
        return 14;
    }

    return 15;
}

static int sub_0205BCD4(int param0, int param1, StringTemplate *param2)
{
    if (param0 != (1 - 1)) {
        return Unk_020ED6E8[param0][param1];
    }

    return sub_0205BC50(param2);
}

int sub_0205BCF4(UnkStruct_0205B43C *param0, int param1, int param2, StringTemplate *param3)
{
    int v0;
    TrainerInfo *v1;

    param1--;

    if (param2 == 0) {
        return sub_0205BAE8(param0, param1);
    }

    v1 = sub_02033FB0(param1);

    if (v1 == NULL) {
        CommMan_SetErrorHandling(1, 1);
        Link_SetErrorState(1);
        return 0;
    }

    v0 = TrainerInfo_Gender(v1);

    switch (param2) {
    case 1:
        return sub_0205BCD4(param0->unk_34 - 1, v0, param3);
        break;
    case 2:
        return Unk_020ED520[v0];
        break;
    case 9:
        if (param0->unk_34 == 0) {
            return 0;
        }
        return Unk_020ED6B0[param0->unk_34 - 1][v0];
        break;
    case 19:
    case 20:
    case 21:
        return Unk_020ED5CC[param2 - 19][v0];
        break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
        return Unk_020ED680[param2 - 3][v0];
        break;
    case 10:
    case 11:
    case 12:
        return Unk_020ED584[param2 - 10][v0];
        break;
    case 13:
    case 14:
    case 15:
        return Unk_020ED59C[param2 - 13][v0];
        break;
    case 16:
    case 17:
    case 18:
        return Unk_020ED5B4[param2 - 16][v0];
        break;
    case 22:
        return Unk_020ED530[v0];
        break;
    case 23:
        return Unk_020ED528[v0];
        break;
    case 24:
        return Unk_020ED538[v0];
        break;
    case 25:
        return 218;
        break;
    case 26:
        return Unk_020ED540[v0];
        break;
    }

    GF_ASSERT(0);
    return 40;
}

u8 sub_0205BE38(void)
{
    u8 v0;
    TrainerInfo *v1;

    v1 = CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1);
    GF_ASSERT(v1 != NULL);
    v0 = TrainerInfo_GameCode(v1);

    return v0;
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

static const int Unk_020ED720[] = {
    0xA9,
    0xAA,
    0xAB,
    0xAC,
    0xAD,
    0xAE,
    0xAF,
    0xB0,
    0xB1,
    0xB2,
    0xB3,
    0xB4,
    0xB5,
    0xB6,
    0xB7,
    0xB8,
    0xB9,
    0xBA,
    0xBB,
    0xBC
};

int sub_0205BF44(UnkStruct_0205B43C *param0, StringTemplate *param1)
{
    int v0, v1 = 0, v2;
    u16 v3;

    for (v0 = 0; v0 < 10; v0++) {
        if (param0->unk_110[v0] != NULL) {
            v1++;
        }
    }

    if (v1 != 0) {
        return 166;
    }

    if (!sub_02014BBC(&param0->unk_178)) {
        return 167;
    }

    if (sub_02014C80(&param0->unk_178) != 4) {
        int v4 = TrainerInfo_Appearance(param0->unk_08);
        int v5 = TrainerInfo_Gender(param0->unk_08);

        StringTemplate_SetTrainerClassName(param1, 0, sub_0205CA14(v5, v4, 2));

        return 168;
    }

    v2 = sub_02014C84(&param0->unk_178);

    if (v2 >= 20) {
        v2 = 0;
    }

    if ((v3 = sub_02014C78(&param0->unk_178, 0)) != 0xffff) {
        StringTemplate_SetCustomMessageWord(param1, 0, v3);
    }

    return Unk_020ED720[v2];
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
    sub_02014CC0(&param0->unk_178, param1);
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

void sub_0205C040(StringTemplate *param0, int param1, int param2, TrainerInfo *param3, UnkStruct_02014EC4 *param4)
{
    TrainerInfo *v0;
    Strbuf *v1;
    MessageLoader *v2 = MessageLoader_Init(1, 26, 635, 4);
    int v3, v4;

    param2--;

    if (param1 == 0) {
        v0 = sub_02033FB0(param2);
    } else {
        v0 = CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1);
    }

    if (v0 == NULL) {
        MessageLoader_Free(v2);
        return;
    }

    StringTemplate_SetPlayerName(param0, 0, v0);
    StringTemplate_SetPlayerName(param0, 1, param3);

    v3 = TrainerInfo_RegionCode(v0);

    if ((v3 >= 1) && (v3 <= 7)) {
        static const int v5[] = {
            0,
            1,
            2,
            3,
            4,
            -1,
            5,
        };
        u16 v6 = v3 - 1;

        if ((v6 < NELEMS(v5)) && (v5[v6] >= 0)) {
            sub_02014F98(param4, v5[v6]);
        }
    }

    switch (v3) {
    case 1:
        v4 = 211;
        break;
    case 2:
        v4 = 212;
        break;
    case 3:
        v4 = 213;
        break;
    case 4:
        v4 = 214;
        break;
    case 5:
        v4 = 215;
        break;
    case 7:
        v4 = 216;
        break;
    default:
        v4 = 217;
    }

    v1 = MessageLoader_GetNewStrbuf(v2, v4);

    StringTemplate_SetStrbuf(param0, 2, v1, 0, 1, v3);
    Heap_FreeToHeap(v1);
    MessageLoader_Free(v2);
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

void *sub_0205C17C(UnkStruct_0205B43C *param0)
{
    param0->unk_184 = sub_02071F04(0);
    param0->unk_188[0] = sub_02071F04(0);
    param0->unk_188[1] = sub_02071F04(0);

    sub_02071D40(0, 0, 0, sub_0205CA14(TrainerInfo_Gender(param0->unk_08), TrainerInfo_Appearance(param0->unk_08), 0), param0->fieldSystem, param0->unk_184);

    return (void *)param0->unk_188[CommSys_CurNetId() ^ 1];
}

void sub_0205C1F0(UnkStruct_0205B43C *param0)
{
    Heap_FreeToHeap(param0->unk_188[0]);
    Heap_FreeToHeap(param0->unk_188[1]);
    Heap_FreeToHeap(param0->unk_184);
}

void sub_0205C214(UnkStruct_0205B43C *param0)
{
    CommSys_SendDataHuge(105, param0->unk_184, sizeof(TrainerCard));
}
