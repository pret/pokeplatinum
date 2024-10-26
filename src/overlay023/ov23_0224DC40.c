#include "overlay023/ov23_0224DC40.h"

#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "field/field_system.h"
#include "overlay023/funcptr_ov23_0224DCB8.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224F294.h"
#include "overlay023/ov23_02253598.h"
#include "overlay023/ov23_02253D40.h"
#include "overlay023/struct_ov23_02250CD4.h"

#include "bg_window.h"
#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "core_sys.h"
#include "field_system.h"
#include "game_records.h"
#include "heap.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "render_window.h"
#include "string_list.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "trainer_info.h"
#include "unk_02005474.h"
#include "unk_0201D15C.h"
#include "unk_0202854C.h"
#include "unk_020573FC.h"
#include "unk_0206AFE0.h"
#include "vars_flags.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
} UnkStruct_ov23_0224DC40;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
} UnkStruct_ov23_0224DF1C;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
} UnkStruct_ov23_0224F184;

typedef struct {
    SysTask *unk_00;
    UnkStruct_ov23_02250CD4 *unk_04;
    FieldSystem *fieldSystem;
    Window unk_0C;
    StringList *unk_1C;
    ListMenu *unk_20;
    Menu *unk_24;
    UnkStruct_ov23_0224F184 unk_28;
    UnkFuncPtr_ov23_0224DCB8 unk_2C;
    u16 unk_30;
    u8 unk_32;
    u8 unk_33;
    u8 unk_34;
    u8 unk_35;
    u8 unk_36;
    u8 unk_37;
    u8 unk_38;
    u16 unk_3A;
} UnkStruct_ov23_0224E280;

typedef void (*UnkFuncPtr_ov23_0224E1E0)(UnkStruct_ov23_0224E280 *);

typedef struct {
    SysTask *unk_00;
    FieldSystem *fieldSystem;
    Window unk_08;
    StringList *unk_18;
    ListMenu *unk_1C;
    Menu *unk_20;
    UnkStruct_ov23_0224F184 unk_24;
    UnkFuncPtr_ov23_0224DCB8 unk_28;
    u16 unk_2C;
    u8 unk_2E;
    u8 unk_2F;
    u8 unk_30;
    u8 unk_31;
    u8 unk_32;
    u8 unk_33;
    u8 unk_34;
    u8 unk_35;
    u16 unk_36;
} UnkStruct_ov23_022577B0;

static void ov23_0224E2D8(SysTask *param0, void *param1);
static BOOL ov23_0224E1E0(SysTask *param0, void *param1);
static void ov23_0224E244(SysTask *param0, UnkStruct_ov23_0224E280 *param1);
static void ov23_0224E280(UnkStruct_ov23_0224E280 *param0);
static void ov23_0224E29C(UnkStruct_ov23_0224E280 *param0);
static void ov23_0224E2B0(UnkStruct_ov23_0224E280 *param0);
static void ov23_0224E8E0(UnkStruct_ov23_0224E280 *param0);
static void ov23_0224EA08(SysTask *param0, UnkStruct_ov23_022577B0 *param1);
static void ov23_0224F270(UnkStruct_ov23_0224E280 *param0);

static UnkStruct_ov23_0224E280 *Unk_ov23_022577B4 = NULL;
static UnkStruct_ov23_022577B0 *Unk_ov23_022577B0 = NULL;

static const struct {
    u32 unk_00;
    u32 unk_04;
} Unk_ov23_022568B4[] = {
    { 0x3, (u32)ov23_0224E280 },
    { 0x4, (u32)ov23_0224E29C },
    { 0x5, (u32)ov23_0224E2B0 },
    { 0x6, (u32)ov23_0224E8E0 }
};

static const ListMenuTemplate Unk_ov23_02256894 = {
    NULL,
    NULL,
    NULL,
    NULL,
    NELEMS(Unk_ov23_022568B4),
    NELEMS(Unk_ov23_022568B4),
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

static const WindowTemplate Unk_ov23_0225688C = {
    0x3,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x21F
};

static void ov23_0224DC40(UnkStruct_ov23_022577B0 *param0, int param1)
{
    UnkStruct_ov23_0224DC40 v0;

    v0.unk_00 = param0->unk_2C;
    v0.unk_01 = param1;

    CommSys_SendDataFixedSize(74, &v0);
}

static void ov23_0224DC54(UnkStruct_ov23_0224E280 *param0, int param1)
{
    UnkStruct_ov23_0224DC40 v0;

    v0.unk_00 = param0->unk_30;
    v0.unk_01 = param1;

    CommSys_SendDataFixedSize(73, &v0);
}

static void ov23_0224DC68(UnkStruct_ov23_0224E280 *param0, int param1)
{
    int v0 = param1;

    if (param1 >= 136) {
        TrainerInfo *v1 = CommInfo_TrainerInfo(param0->unk_30);

        if (1 == TrainerInfo_Gender(v1)) {
            v0 = v0 - 136 + 155;
        }
    }

    ov23_02253F40(ov23_0224219C(), v0, 0, NULL);
}

static void ov23_0224DC90(UnkStruct_ov23_022577B0 *param0, int param1)
{
    int v0 = param1;

    if (param1 >= 136) {
        TrainerInfo *v1 = CommInfo_TrainerInfo(param0->unk_2C);

        if (1 == TrainerInfo_Gender(v1)) {
            v0 = v0 - 136 + 155;
        }
    }

    ov23_02253F40(ov23_0224219C(), v0, 0, NULL);
}

void ov23_0224DCB8(int param0, UnkFuncPtr_ov23_0224DCB8 param1, FieldSystem *fieldSystem)
{
    UnkStruct_ov23_0224E280 *v0;
    ListMenuTemplate v1;

    v0 = Heap_AllocFromHeap(33, sizeof(UnkStruct_ov23_0224E280));
    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_0224E280));

    Unk_ov23_022577B4 = v0;

    v0->fieldSystem = fieldSystem;
    v0->unk_2C = param1;
    v0->unk_30 = param0;
    v0->unk_37 = 1;
    v0->unk_38 = 0;
    v0->unk_28.unk_01 = 0;
    v0->unk_28.unk_02 = 0;
    v0->unk_28.unk_00 = v0->unk_30;

    Sound_PlayEffect(1500);
    ov23_0224DC68(v0, 0);

    v0->unk_00 = SysTask_Start(ov23_0224E2D8, v0, 10000);
}

static void ov23_0224DD2C(UnkStruct_ov23_0224E280 *param0)
{
    ListMenuTemplate v0;

    param0->unk_1C = StringList_New(NELEMS(Unk_ov23_022568B4), 4);

    Window_Add(param0->fieldSystem->unk_08, &param0->unk_0C, 3, 1, 1, 10, NELEMS(Unk_ov23_022568B4) * 2, 13, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (10 * NELEMS(Unk_ov23_022568B4) * 2));
    Window_Show(&param0->unk_0C, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v1;
        int v2;

        v1 = MessageLoader_Init(0, 26, 634, 4);

        for (v2 = 0; v2 < NELEMS(Unk_ov23_022568B4); v2++) {
            StringList_AddFromMessageBank(param0->unk_1C, v1, Unk_ov23_022568B4[v2].unk_00, Unk_ov23_022568B4[v2].unk_04);
        }

        MessageLoader_Free(v1);
    }

    MI_CpuCopy8(ov23_02253D40(), &v0, sizeof(ListMenuTemplate));

    v0.choices = param0->unk_1C;
    v0.window = &param0->unk_0C;
    v0.count = NELEMS(Unk_ov23_022568B4);
    v0.maxDisplay = NELEMS(Unk_ov23_022568B4);

    param0->unk_3A = 0;
    param0->unk_20 = ListMenu_New(&v0, 0, 0, 4);

    Window_CopyToVRAM(&param0->unk_0C);
    sub_020594FC();
}

static void ov23_0224DDE4(SysTask *param0, UnkStruct_ov23_0224E280 *param1)
{
    if (param1->unk_24) {
        Menu_DestroyForExit(param1->unk_24, 4);
        param1->unk_24 = NULL;
    }

    if (param1->unk_04) {
        ov23_02251044(param1->unk_04, 0xfffffffe);
        ov23_02243204();
    }

    ov23_0224E244(param0, param1);

    if (param1->unk_2C) {
        param1->unk_2C(0);
    }

    Heap_FreeToHeap(param1);
    sub_02059514();
    SysTask_Done(param0);

    Unk_ov23_022577B4 = NULL;
}

static void ov23_0224DE3C(UnkStruct_ov23_0224E280 *param0)
{
    ListMenuTemplate v0;

    param0->unk_1C = StringList_New(4, 4);

    Window_Add(param0->fieldSystem->unk_08, &param0->unk_0C, 3, 1, 1, 16, 4 * 2, 13, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (16 * 4 * 2));
    Window_Show(&param0->unk_0C, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v1;
        int v2, v3;
        u8 v4[4];

        v1 = MessageLoader_Init(0, 26, 633, 4);

        for (v2 = 0; v2 < 4; v2++) {
            u32 v5 = MTRNG_Next() % 12;

            for (v3 = 0; v3 < v2; v3++) {
                if (v4[v3] == v5) {
                    break;
                }
            }

            if (v3 == v2) {
                v4[v2] = v5;
                StringList_AddFromMessageBank(param0->unk_1C, v1, 0 + v5, v5);
            } else {
                v2--;
            }
        }

        MessageLoader_Free(v1);
    }

    v0 = Unk_ov23_02256894;
    v0.choices = param0->unk_1C;
    v0.window = &param0->unk_0C;

    param0->unk_3A = 0;
    param0->unk_20 = ListMenu_New(&v0, 0, 0, 4);

    Window_CopyToVRAM(&param0->unk_0C);
}

static BOOL ov23_0224DF1C(SysTask *param0, void *param1)
{
    UnkStruct_ov23_0224E280 *v0 = param1;
    u32 v1;
    u16 v2;

    v1 = ListMenu_ProcessInput(v0->unk_20);
    ov23_0224F270(v0);

    if (CommSys_CheckError()) {
        v0->unk_37 = 3;
        ov23_0224E244(param0, v0);
        return 1;
    }

    switch (v1) {
    case 0xfffffffe:
    case 0xffffffff:
        return 0;
        break;
    default:
        Sound_PlayEffect(1500);
        {
            UnkStruct_ov23_0224DF1C v3;

            v3.unk_00 = v1;
            v3.unk_01 = v0->unk_30;
            v3.unk_02 = 0;

            CommSys_SendDataFixedSize(79, &v3);

            v0->unk_32 = v1;
            v0->unk_37 = 30;

            ov23_0224E244(param0, v0);
        }
        break;
    }

    return 1;
}

static void ov23_0224DFA0(UnkStruct_ov23_0224E280 *param0)
{
    ListMenuTemplate v0;

    param0->unk_1C = StringList_New(4, 4);

    Window_Add(param0->fieldSystem->unk_08, &param0->unk_0C, 3, 1, 1, 16, 4 * 2, 13, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (16 * 4 * 2));
    Window_Show(&param0->unk_0C, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v1;
        int v2;

        v1 = MessageLoader_Init(0, 26, 632, 4);

        for (v2 = 0; v2 < 4; v2++) {
            u32 v3 = 4 * param0->unk_32 + v2;

            StringList_AddFromMessageBank(param0->unk_1C, v1, 0 + v3, v2);
        }

        MessageLoader_Free(v1);
    }

    v0 = Unk_ov23_02256894;
    v0.choices = param0->unk_1C;
    v0.window = &param0->unk_0C;

    param0->unk_3A = 0;
    param0->unk_20 = ListMenu_New(&v0, 0, 0, 4);

    Window_CopyToVRAM(&param0->unk_0C);
}

static BOOL ov23_0224E05C(SysTask *param0, void *param1)
{
    UnkStruct_ov23_0224E280 *v0 = param1;
    u32 v1;
    UnkStruct_ov23_0224DF1C v2;

    v1 = ListMenu_ProcessInput(v0->unk_20);
    ov23_0224F270(v0);

    if (CommSys_CheckError()) {
        ov23_0224E244(param0, v0);
        v0->unk_37 = 3;
        return 1;
    }

    switch (v1) {
    case 0xffffffff:
    case 0xfffffffe:
        return 0;
    default:
        Sound_PlayEffect(1500);
        ov23_0224E244(param0, v0);
        v2.unk_00 = (v1 + v0->unk_32 * 4);
        v2.unk_01 = v0->unk_30;
        v2.unk_02 = 2;
        CommSys_SendDataFixedSize(79, &v2);
        ov23_022540C8(ov23_0224219C(), v2.unk_00);
        ov23_022540E0(ov23_0224219C(), 6, v0->unk_33);

        if (v0->unk_33 == v2.unk_00) {
            ov23_0224DC68(v0, 141);
        } else {
            ov23_0224DC68(v0, 140);
        }

        v0->unk_37 = 36;
        ov23_0224DC54(v0, 27);
        break;
    }

    return 1;
}

static void ov23_0224E124(UnkStruct_ov23_0224E280 *param0)
{
    ov23_02254068(ov23_0224219C(), CommInfo_TrainerInfo(param0->unk_30));
    ov23_022540F4(ov23_0224219C(), param0->unk_28.unk_02);
    ov23_02253F40(ov23_0224219C(), 14, 0, NULL);

    sub_0202952C(SaveData_SecretBaseRecord(FieldSystem_SaveData(param0->fieldSystem)));
    ov23_0224F634(param0->unk_28.unk_02);
    Sound_PlayEffect(1507);
}

static void ov23_0224E17C(UnkStruct_ov23_0224E280 *param0, int param1)
{
    ov23_022540F4(ov23_0224219C(), param1);
    ov23_02253F40(ov23_0224219C(), 12, 0, NULL);
}

static void ov23_0224E19C(SysTask *param0, UnkStruct_ov23_0224E280 *param1)
{
    u32 v0;

    v0 = Menu_ProcessInputAndHandleExit(param1->unk_24, 4);

    if (v0 == 0xffffffff) {
        return;
    }

    if (v0 == 0) {
        param1->unk_28.unk_00 = param1->unk_30;
        CommSys_SendDataFixedSize(77, &param1->unk_28);
        param1->unk_37 = 21;
    } else {
        ov23_0224DC68(param1, 11);
        param1->unk_37 = 15;
    }

    param1->unk_24 = NULL;
}

static BOOL ov23_0224E1E0(SysTask *param0, void *param1)
{
    UnkStruct_ov23_0224E280 *v0 = param1;
    u32 v1;

    v1 = ListMenu_ProcessInput(v0->unk_20);
    ov23_0224F270(v0);

    if (CommSys_CheckError()) {
        v1 = 0xfffffffe;
    }

    switch (v1) {
    case 0xffffffff:
        return 0;
    case 0xfffffffe:
        Sound_PlayEffect(1500);
        ov23_0224E8E0(v0);
        ov23_0224E244(param0, v0);
        break;
    default:
        Sound_PlayEffect(1500);
        {
            UnkFuncPtr_ov23_0224E1E0 v2 = (UnkFuncPtr_ov23_0224E1E0)v1;

            v2(v0);
            ov23_0224E244(param0, v0);
        }
        break;
    }

    return 1;
}

static void ov23_0224E244(SysTask *param0, UnkStruct_ov23_0224E280 *param1)
{
    if (param1->unk_1C) {
        Window_Clear(&param1->unk_0C, 1);
        ListMenu_Free(param1->unk_20, NULL, NULL);
        Window_ClearAndCopyToVRAM(&param1->unk_0C);
        Window_Remove(&param1->unk_0C);
        StringList_Free(param1->unk_1C);
        param1->unk_1C = NULL;
    }
}

static void ov23_0224E280(UnkStruct_ov23_0224E280 *param0)
{
    ov23_0224DC54(param0, 5);
    ov23_0224DC68(param0, 7);

    param0->unk_37 = 5;
}

static void ov23_0224E29C(UnkStruct_ov23_0224E280 *param0)
{
    ov23_0224DC54(param0, 22);
    param0->unk_37 = 27;
}

static void ov23_0224E2B0(UnkStruct_ov23_0224E280 *param0)
{
    param0->unk_37 = 16;
}

static void ov23_0224E2B8(int param0)
{
    Unk_ov23_022577B4->unk_28.unk_02 = param0;
    Unk_ov23_022577B4->unk_37 = 18;
}

static void ov23_0224E2D0(void *param0)
{
    UnkStruct_ov23_0224E280 *v0 = param0;

    v0->unk_37 = 11;
}

static void ov23_0224E2D8(SysTask *param0, void *param1)
{
    UnkStruct_ov23_0224E280 *v0 = param1;
    u32 v1;

    if (v0->unk_37 != 17) {
        if (!CommSys_IsPlayerConnected(v0->unk_30)) {
            v0->unk_04 = NULL;
            ov23_022535EC();
            v0->unk_37 = 4;
        }
    }

    switch (v0->unk_37) {
    case 1:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            ov23_0224DD2C(v0);
            v0->unk_37++;
        }
        break;
    case 2:
        ov23_0224E1E0(param0, param1);
        break;
    case 3:
    case 4:
        ov23_02254044(ov23_0224219C());
        ov23_0224DDE4(param0, v0);
        break;
    case 5:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            if (v0->unk_38 == 9) {
                v0->unk_37 = 9;
                ov23_022538FC(v0->unk_30);
            }

            if (v0->unk_38 == 6) {
                v0->unk_37 = 6;
            }
        }
        break;
    case 8:
        ov23_0224DC68(v0, 15);
        v0->unk_37 = 7;
        break;
    case 6:
        ov23_0224DC68(v0, 8);
        v0->unk_37 = 7;
        break;
    case 7:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            if ((PAD_BUTTON_A)&gCoreSys.pressedKeys) {
                v0->unk_37 = 4;
            }
        }
        break;
    case 9:
        if (ov23_022539D8()) {
            ov23_02254044(ov23_0224219C());
            ov23_02253834(v0->fieldSystem->unk_08, CommInfo_TrainerInfo(v0->unk_30), ov23_0224E2D0, v0, 0);
            v0->unk_37 = 10;
        }
        break;
    case 10:
        break;
    case 11:
        GameRecords_IncrementTrainerScore(SaveData_GetGameRecordsPtr(v0->fieldSystem->saveData), TRAINER_SCORE_EVENT_UNK_32);
        ov23_022539E8();
        ov23_0224DC68(v0, 9);
        v0->unk_37 = 12;
        break;
    case 12:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            ov23_0224DC54(v0, 14);
            v0->unk_37 = 13;
        }
        break;
    case 13:
        if (v0->unk_38 == 13) {
            v0->unk_37 = 14;
        }
        break;
    case 14:
        ov23_0224DC68(v0, 10);
        v0->unk_37 = 1;
        break;
    case 15:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            if ((PAD_BUTTON_A)&gCoreSys.pressedKeys) {
                v0->unk_37 = 14;
            }
        }
        break;
    case 16:
        v0->unk_04 = ov23_022511B0(ov23_0224E2B8, v0->fieldSystem);
        v0->unk_37 = 17;
        break;
    case 17:
        break;
    case 18:
        v0->unk_04 = NULL;

        if (Unk_ov23_022577B4->unk_28.unk_02 == 0) {
            ov23_0224DC68(v0, 11);
            v0->unk_37 = 15;
        } else if (sub_02032FC0(v0->unk_30)) {
            ov23_0224DC68(v0, 87);
            v0->unk_37 = 15;
        } else if (!sub_02028810(v0->fieldSystem->saveData)) {
            ov23_0224DC68(v0, 87);
            v0->unk_37 = 15;
        } else if (sub_0205748C(Unk_ov23_022577B4->unk_28.unk_02)) {
            ov23_0224DC68(v0, 86);
            v0->unk_37 = 15;
        } else {
            ov23_0224E17C(v0, Unk_ov23_022577B4->unk_28.unk_02);
            v0->unk_37 = 19;
        }
        break;
    case 19:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            v0->unk_24 = Menu_MakeYesNoChoice(v0->fieldSystem->unk_08, &Unk_ov23_0225688C, 1024 - (18 + 12) - 9, 11, 4);
            v0->unk_37 = 20;

            if (v0->unk_38 != 8) {
                v0->unk_38 = 1;
            }
        }
        break;
    case 20:
        ov23_0224E19C(param0, v0);
        break;
    case 21:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            if (v0->unk_38 == 22) {
                v0->unk_37 = 22;
            }

            if (v0->unk_38 == 24) {
                v0->unk_37 = 24;
            }

            if (v0->unk_38 == 23) {
                v0->unk_37 = 23;
            }
        }
        break;
    case 23:
        ov23_0224DC68(v0, 30);
        v0->unk_37 = 26;
        break;
    case 24:
        ov23_0224DC68(v0, 13);
        v0->unk_37 = 26;
        break;
    case 22:
        ov23_0224E124(v0);
        {
            VarsFlags *v2 = SaveData_GetVarsFlags(v0->fieldSystem->saveData);
            sub_0206B3FC(v2, sub_0206B3EC(v2) + 1);
        }

        GameRecords_IncrementTrainerScore(SaveData_GetGameRecordsPtr(v0->fieldSystem->saveData), TRAINER_SCORE_EVENT_UNK_31);
        v0->unk_37 = 25;
        break;
    case 25:
        v0->unk_37 = 26;
        break;
    case 26:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            if (v0->unk_38 == 15) {
                v0->unk_37 = 14;
            }
        }
        break;
    case 27:
        ov23_0224DC68(v0, 136);
        v0->unk_37 = 28;
        break;
    case 28:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            ov23_0224DE3C(v0);
            v0->unk_37 = 29;
        }
        break;
    case 29:
        ov23_0224DF1C(param0, param1);
        break;
    case 30:
        ov23_022540B0(ov23_0224219C(), v0->unk_32);
        ov23_0224DC68(v0, 137);
        v0->unk_37 = 31;
        break;
    case 31:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            if (v0->unk_38 == 32) {
                v0->unk_37 = 32;
            }
        }
        break;
    case 32:
        if (51 == v0->unk_33) {
            ov23_0224DC68(v0, 139);
            v0->unk_38 = 0;
            v0->unk_37 = 33;
        } else {
            ov23_022540C8(ov23_0224219C(), v0->unk_33);
            ov23_0224DC68(v0, 138);
            v0->unk_37 = 34;
        }
        break;
    case 33:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            if (v0->unk_38 == 42) {
                v0->unk_38 = 0;
                v0->unk_37 = 14;
            }
        }
        break;
    case 34:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            ov23_0224DFA0(v0);
            v0->unk_37 = 35;
        }
        break;
    case 35:
        ov23_0224E05C(param0, param1);
        break;
    case 36:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            GameRecords_IncrementTrainerScore(SaveData_GetGameRecordsPtr(v0->fieldSystem->saveData), TRAINER_SCORE_EVENT_UNK_33);
            ov23_0224DC68(v0, 142);
            v0->unk_37 = 37;
        }
        break;
    case 37:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
                v0->unk_37 = 38;
            }
        }
        break;
    case 38:
        if (v0->unk_38 == 37) {
            ov23_0224DC54(v0, 100);
            v0->unk_37 = 39;
        }
        break;
    case 39:
        if (v0->unk_38 == 100) {
            ov23_0224DC68(v0, 150);
            v0->unk_37 = 40;
        }
        break;
    case 40:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            ov23_0224DC54(v0, 101);
            v0->unk_37 = 41;
        }
        break;
    case 41:
        if (v0->unk_38 == 101) {
            v0->unk_37 = 14;
        }
        break;
    }

    if (v0->unk_38 == 8) {
        if ((v0->unk_37 == 4) || (v0->unk_37 == 7)) {
            return;
        }

        if (v0->unk_24) {
            Menu_DestroyForExit(v0->unk_24, 4);
            v0->unk_24 = NULL;
        }

        if (v0->unk_04) {
            ov23_02251044(v0->unk_04, 0xfffffffe);
            ov23_02243204();
            ov23_02254044(ov23_022421DC());
            v0->unk_04 = NULL;
        }

        ov23_0224E244(param0, v0);

        v0->unk_37 = 8;
        v0->unk_38 = 0;
    }
}

static void ov23_0224E8E0(UnkStruct_ov23_0224E280 *param0)
{
    ov23_0224DC68(param0, 15);
    ov23_0224DC54(param0, 8);

    param0->unk_37 = 7;
}

static void ov23_0224E8FC(SysTask *param0, UnkStruct_ov23_022577B0 *param1)
{
    u32 v0;

    v0 = Menu_ProcessInputAndHandleExit(param1->unk_20, 4);

    if (v0 == 0xffffffff) {
        return;
    }

    if (v0 == 0) {
        ov23_0224DC40(param1, 9);
        ov23_022538FC(param1->unk_2C);
        param1->unk_34 = 10;
    } else {
        ov23_0224DC40(param1, 6);
        param1->unk_34 = 8;
    }

    param1->unk_20 = NULL;
}

static void ov23_0224E93C(SysTask *param0, UnkStruct_ov23_022577B0 *param1)
{
    u32 v0;

    v0 = Menu_ProcessInputAndHandleExit(param1->unk_20, 4);

    if (v0 == 0xffffffff) {
        return;
    }

    if (v0 == 0) {
        if (ov23_0224F744(param1->unk_24.unk_02)) {
            sub_0202977C(SaveData_SecretBaseRecord(FieldSystem_SaveData(param1->fieldSystem)));
            Sound_PlayEffect(1507);
            ov23_0224DC40(param1, 22);

            param1->unk_34 = 19;
        } else {
            ov23_0224DC40(param1, 23);
            ov23_0224DC90(param1, 21);

            param1->unk_34 = 21;
        }
    } else {
        ov23_0224DC40(param1, 24);
        ov23_0224DC90(param1, 29);

        param1->unk_34 = 21;
    }

    param1->unk_20 = NULL;
}

static void ov23_0224E9C4(SysTask *param0, UnkStruct_ov23_022577B0 *param1)
{
    if (param1->unk_20) {
        Menu_DestroyForExit(param1->unk_20, 4);
        param1->unk_20 = NULL;
    }

    if (param1->unk_28) {
        param1->unk_28(0);
    }

    ov23_0224EA08(param0, param1);

    Heap_FreeToHeap(param1);
    sub_02059514();
    SysTask_Done(param0);

    Unk_ov23_022577B0 = NULL;
}

static void ov23_0224EA08(SysTask *param0, UnkStruct_ov23_022577B0 *param1)
{
    if (param1->unk_18) {
        Window_Clear(&param1->unk_08, 1);
        ListMenu_Free(param1->unk_1C, NULL, NULL);
        Window_ClearAndCopyToVRAM(&param1->unk_08);
        Window_Remove(&param1->unk_08);
        StringList_Free(param1->unk_18);

        param1->unk_18 = NULL;
    }
}

static void ov23_0224EA44(UnkStruct_ov23_022577B0 *param0, int param1, int param2)
{
    ov23_02254068(ov23_0224219C(), CommInfo_TrainerInfo(param1));
    ov23_02253F40(ov23_0224219C(), param2, 0, NULL);
}

static void ov23_0224EA70(UnkStruct_ov23_022577B0 *param0)
{
    ov23_02254068(ov23_0224219C(), CommInfo_TrainerInfo(param0->unk_2C));
    ov23_022540F4(ov23_0224219C(), param0->unk_24.unk_02);
    ov23_02253F40(ov23_0224219C(), 31, 0, NULL);
}

static void ov23_0224EAA4(UnkStruct_ov23_022577B0 *param0)
{
    ListMenuTemplate v0;
    const int v1 = 4 + 1;

    param0->unk_18 = StringList_New(v1, 4);

    Window_Add(param0->fieldSystem->unk_08, &param0->unk_08, 3, 1, 1, 16, v1 * 2, 13, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (16 * v1 * 2));
    Window_Show(&param0->unk_08, 1, 1024 - (18 + 12) - 9, 11);
    {
        MessageLoader *v2;
        int v3;

        v2 = MessageLoader_Init(0, 26, 632, 4);

        for (v3 = 0; v3 < 4; v3++) {
            u32 v4 = 4 * param0->unk_2E + v3;

            StringList_AddFromMessageBank(param0->unk_18, v2, 0 + v4, v3);
        }

        StringList_AddFromMessageBank(param0->unk_18, v2, 48, 51);
        MessageLoader_Free(v2);
    }

    v0 = Unk_ov23_02256894;
    v0.choices = param0->unk_18;
    v0.window = &param0->unk_08;
    v0.count = v1;
    v0.maxDisplay = v1;

    param0->unk_36 = 0;
    param0->unk_1C = ListMenu_New(&v0, 0, 0, 4);

    Window_CopyToVRAM(&param0->unk_08);
}

static BOOL ov23_0224EB74(SysTask *param0, void *param1)
{
    UnkStruct_ov23_022577B0 *v0 = param1;
    u32 v1;
    UnkStruct_ov23_0224DF1C v2;
    u16 v3;

    v1 = ListMenu_ProcessInput(v0->unk_1C);
    v3 = v0->unk_36;

    ListMenu_CalcTrueCursorPos(v0->unk_1C, &v0->unk_36);

    if (v3 != v0->unk_36) {
        Sound_PlayEffect(1500);
    }

    if (CommSys_CheckError()) {
        v1 = 0xfffffffe;
    }

    switch (v1) {
    case 0xffffffff:
        return 0;
    case 0xfffffffe:
        v1 = 51;
    default:
        Sound_PlayEffect(1500);
        ov23_0224EA08(param0, v0);

        if (v1 != 51) {
            v0->unk_2F = (v1 + v0->unk_2E * 4);
            v0->unk_34 = 26;

            ov23_022540C8(ov23_0224219C(), v0->unk_2F);
            ov23_0224DC90(v0, 146);
        } else {
            v0->unk_2F = 51;
            v0->unk_34 = 16;
            v0->unk_35 = 0;

            ov23_0224DC90(v0, 145);
        }

        v2.unk_00 = v0->unk_2F;
        v2.unk_01 = v0->unk_2C;
        v2.unk_02 = 1;

        CommSys_SendDataFixedSize(79, &v2);
        ov23_0224DC40(v0, 32);
        break;
    }

    return 1;
}

static void ov23_0224EC48(void *param0)
{
    UnkStruct_ov23_022577B0 *v0 = param0;
    v0->unk_34 = 12;
}

static void ov23_0224EC50(SysTask *param0, void *param1)
{
    UnkStruct_ov23_022577B0 *v0 = param1;

    if (!CommSys_IsPlayerConnected(v0->unk_2C)) {
        ov23_022535EC();
        v0->unk_34 = 4;
    }

    switch (v0->unk_34) {
    case 4:
        ov23_02254044(ov23_0224219C());
        ov23_0224E9C4(param0, v0);
        break;
    case 2:
        v0->unk_2E = 12;

        if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
            ov23_0224DC40(v0, 8);
            v0->unk_34 = 8;
        } else if (v0->unk_35 == 5) {
            v0->unk_34 = 5;
        } else if (v0->unk_35 == 22) {
            v0->unk_34 = 22;
        }
        break;
    case 5:
        ov23_0224DC90(v0, 24);
        v0->unk_34 = 6;
        break;
    case 6:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            v0->unk_34 = 7;
            v0->unk_20 = Menu_MakeYesNoChoice(v0->fieldSystem->unk_08, &Unk_ov23_0225688C, 1024 - (18 + 12) - 9, 11, 4);
        }
        break;
    case 7:
        ov23_0224E8FC(param0, v0);
        break;
    case 8:
        ov23_0224DC90(v0, 15);
        v0->unk_34 = 9;
        break;
    case 9:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            if ((PAD_BUTTON_A)&gCoreSys.pressedKeys) {
                v0->unk_34 = 4;
            }
        }
        break;
    case 10:
        if (ov23_022539D8()) {
            ov23_02254044(ov23_0224219C());
            ov23_02253834(v0->fieldSystem->unk_08, CommInfo_TrainerInfo(v0->unk_2C), ov23_0224EC48, v0, 0);
            v0->unk_34 = 11;
        }
        break;
    case 11:
        break;
    case 12:
        ov23_022539E8();
        ov23_0224EA44(v0, v0->unk_2C, 26);
        v0->unk_34 = 13;
        break;
    case 13:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            ov23_0224DC40(v0, 13);
            v0->unk_34 = 14;
        }
        break;
    case 14:
        if (v0->unk_35 == 14) {
            v0->unk_34 = 15;
        }
        break;
    case 15:
        ov23_0224DC90(v0, 27);
        v0->unk_34 = 2;
        break;
    case 16:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            v0->unk_34 = 15;
            ov23_0224DC40(v0, 42);
        }
        break;
    case 17:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            v0->unk_34 = 18;
            v0->unk_20 = Menu_MakeYesNoChoice(v0->fieldSystem->unk_08, &Unk_ov23_0225688C, 1024 - (18 + 12) - 9, 11, 4);
        }
        break;
    case 18:
        ov23_0224E93C(param0, v0);
        break;
    case 19:
        ov23_0224EA70(v0);
        v0->unk_34 = 20;
        break;
    case 20:
        v0->unk_34 = 21;
        break;
    case 21:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            if ((PAD_BUTTON_A)&gCoreSys.pressedKeys) {
                ov23_0224DC40(v0, 15);
                v0->unk_34 = 15;
            }
        }
        break;
    case 22:
        ov23_0224DC90(v0, 143);
        v0->unk_34++;
        break;
    case 23:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            if (v0->unk_2E != 12) {
                ov23_022540B0(ov23_0224219C(), v0->unk_2E);
                ov23_0224DC90(v0, 144);
                v0->unk_34 = 24;
            }
        }
        break;
    case 24:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            ov23_0224EAA4(v0);
            v0->unk_34 = 25;
        }
        break;
    case 25:
        ov23_0224EB74(param0, v0);
        break;
    case 26:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            if (v0->unk_35 == 27) {
                ov23_0224DC40(v0, 37);
                v0->unk_34 = 27;
            }
        }
        break;
    case 27:
        ov23_022540C8(ov23_0224219C(), v0->unk_30);
        ov23_022540E0(ov23_0224219C(), 6, v0->unk_2F);

        if (v0->unk_2F == v0->unk_30) {
            ov23_0224DC90(v0, 148);
        } else {
            ov23_0224DC90(v0, 147);
        }

        v0->unk_34 = 28;
        break;
    case 28:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            ov23_0224DC90(v0, 149);
            v0->unk_34 = 29;
        }
        break;
    case 29:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            v0->unk_34 = 30;
        }
        break;
    case 30:
        if (v0->unk_35 == 100) {
            ov23_0224DC40(v0, 100);
            ov23_0224DC90(v0, 150);
            v0->unk_34 = 31;
        }
        break;
    case 31:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            v0->unk_34 = 32;
        }
        break;
    case 32:
        if (v0->unk_35 == 101) {
            ov23_0224DC40(v0, 101);
            v0->unk_34 = 15;
        }
        break;
    }

    if (v0->unk_35 == 8) {
        if ((v0->unk_34 == 4) || (v0->unk_34 == 9)) {
            return;
        }

        if (v0->unk_20) {
            Menu_DestroyForExit(v0->unk_20, 4);
            v0->unk_20 = NULL;
        }

        ov23_0224EA08(param0, v0);

        v0->unk_34 = 8;
        v0->unk_35 = 0;
    }
}

void ov23_0224F07C(int param0, int param1, FieldSystem *fieldSystem)
{
    UnkStruct_ov23_022577B0 *v0;

    if (Unk_ov23_022577B0) {
        GF_ASSERT(FALSE);
        return;
    }

    v0 = Heap_AllocFromHeap(33, sizeof(UnkStruct_ov23_022577B0));
    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_022577B0));

    Unk_ov23_022577B0 = v0;

    v0->fieldSystem = fieldSystem;
    v0->unk_2C = param1;
    v0->unk_34 = 2;
    v0->unk_35 = 0;
    v0->unk_2E = 12;

    ov23_02253F40(ov23_0224219C(), 22, 0, NULL);
    CommPlayerMan_ForceDir();

    v0->unk_00 = SysTask_Start(ov23_0224EC50, v0, 10000);
}

void ov23_0224F0F0(int param0, int param1, void *param2, void *param3)
{
    sub_02035B48(75, param2);
}

void ov23_0224F0FC(int param0, int param1, void *param2, void *param3)
{
    sub_02035B48(76, param2);
}

void ov23_0224F108(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov23_0224DC40 *v0 = param2;

    if ((CommSys_CurNetId() == v0->unk_00) && (Unk_ov23_022577B0)) {
        GF_ASSERT(param1 == sizeof(UnkStruct_ov23_0224DC40));
        Unk_ov23_022577B0->unk_35 = v0->unk_01;
    }
}

void ov23_0224F138(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov23_0224DC40 *v0 = param2;

    if ((CommSys_CurNetId() == v0->unk_00) && (Unk_ov23_022577B4)) {
        GF_ASSERT(param1 == sizeof(UnkStruct_ov23_0224DC40));
        GF_ASSERT(Unk_ov23_022577B4 != NULL);

        Unk_ov23_022577B4->unk_38 = v0->unk_01;
    }
}

int ov23_0224F174(void)
{
    return sizeof(UnkStruct_ov23_0224DC40);
}

void ov23_0224F178(int param0, int param1, void *param2, void *param3)
{
    sub_02035B48(78, param2);
}

void ov23_0224F184(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov23_022577B0 *v0 = Unk_ov23_022577B0;
    UnkStruct_ov23_0224F184 *v1 = param2;

    if (CommSys_CurNetId() != v1->unk_00) {
        return;
    }

    GF_ASSERT(Unk_ov23_022577B0 != NULL);

    if (v0->unk_34 != 2) {
        ov23_0224DC40(v0, 8);
        v0->unk_34 = 8;
        return;
    }

    v0->unk_24.unk_00 = v1->unk_00;
    v0->unk_24.unk_01 = v1->unk_01;
    v0->unk_24.unk_02 = v1->unk_02;
    v0->unk_34 = 17;

    ov23_022540F4(ov23_0224219C(), v1->unk_02);
    ov23_02253F40(ov23_0224219C(), 28, 0, NULL);
}

int ov23_0224F1F8(void)
{
    return sizeof(UnkStruct_ov23_0224F184);
}

void ov23_0224F1FC(int param0, int param1, void *param2, void *param3)
{
    sub_02035B48(80, param2);
}

void ov23_0224F208(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov23_022577B0 *v0 = Unk_ov23_022577B0;
    UnkStruct_ov23_0224E280 *v1 = Unk_ov23_022577B4;
    UnkStruct_ov23_0224DF1C *v2 = param2;

    if (v2->unk_01 == CommSys_CurNetId()) {
        switch (v2->unk_02) {
        case 0:
            v0->unk_2E = v2->unk_00;
            break;
        case 1:
            v1->unk_33 = v2->unk_00;
            break;
        case 2:
            v0->unk_30 = v2->unk_00;
            break;
        }
    }
}

int ov23_0224F248(void)
{
    return sizeof(UnkStruct_ov23_0224DF1C);
}

void ov23_0224F24C(void)
{
    if (Unk_ov23_022577B4) {
        ov23_0224DDE4(Unk_ov23_022577B4->unk_00, Unk_ov23_022577B4);
    }

    if (Unk_ov23_022577B0) {
        ov23_0224E9C4(Unk_ov23_022577B0->unk_00, Unk_ov23_022577B0);
    }
}

static void ov23_0224F270(UnkStruct_ov23_0224E280 *param0)
{
    u16 v0;

    v0 = param0->unk_3A;
    ListMenu_CalcTrueCursorPos(param0->unk_20, &param0->unk_3A);

    if (v0 != param0->unk_3A) {
        Sound_PlayEffect(1500);
    }

    return;
}
