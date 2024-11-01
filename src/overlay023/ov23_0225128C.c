#include "overlay023/ov23_0225128C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020298B0_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_defs/struct_02049FA8.h"

#include "field/field_system.h"
#include "overlay023/funcptr_ov23_022515D8.h"
#include "overlay023/ov23_0223E140.h"
#include "overlay023/ov23_022416A8.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224340C.h"
#include "overlay023/ov23_02248C08.h"
#include "overlay023/ov23_0224A1D0.h"
#include "overlay023/ov23_0224B05C.h"
#include "overlay023/ov23_0224F294.h"
#include "overlay023/ov23_022521F0.h"
#include "overlay023/ov23_02253598.h"
#include "overlay023/ov23_02253D40.h"
#include "overlay023/ov23_02254A14.h"
#include "overlay023/struct_ov23_0224271C.h"
#include "overlay023/struct_ov23_02250CD4.h"

#include "bg_window.h"
#include "camera.h"
#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "core_sys.h"
#include "field_system.h"
#include "heap.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "player_avatar.h"
#include "render_window.h"
#include "save_player.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02005474.h"
#include "unk_0200A9DC.h"
#include "unk_0200F174.h"
#include "unk_0202854C.h"
#include "unk_02033200.h"
#include "unk_020508D4.h"
#include "unk_0206A780.h"
#include "unk_0206A8DC.h"
#include "vars_flags.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
} UnkStruct_ov23_022513B0;

typedef struct {
    int unk_00;
    int unk_04;
    u8 unk_08;
} UnkStruct_ov23_02251ACC;

typedef struct {
    int unk_00;
    FieldSystem *fieldSystem;
    Menu *unk_08;
    UnkStruct_ov23_022513B0 unk_0C;
    SysTask *unk_10;
} UnkStruct_ov23_02252038;

static void ov23_022520E8(FieldSystem *fieldSystem, UnkStruct_ov23_022513B0 *param1);
static void ov23_02251F94(FieldSystem *fieldSystem);
static void ov23_022521C8(UnkStruct_ov23_02250CD4 *param0);

static const WindowTemplate Unk_ov23_022569C8 = {
    0x3,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x21F
};

void ov23_0225128C(UnkStruct_ov23_02250CD4 *param0, int param1, int param2, int param3)
{
    if (param2 <= param3) {
        return;
    }

    if (param1 != 0) {
        sub_0206A8C4(param0->unk_08, 0, 1);
    } else {
        sub_0206A8C4(param0->unk_08, 0, 0);
    }

    if (param2 != (param1 + param3)) {
        sub_0206A8C4(param0->unk_08, 1, 1);
    } else {
        sub_0206A8C4(param0->unk_08, 1, 0);
    }

    sub_0206A870(param0->unk_08);
}

int ov23_022512D4(UnkStruct_ov23_0224271C *param0, int param1)
{
    int v0;
    int v1 = param0->unk_00;
    int v2 = param0->unk_02;
    int v3 = 0;

    if (param1 != -1) {
        if (param1 != 0) {
            return 0xff;
        }
    }

    if (v2 == 12) {
        v3 = 0;
    } else if (v2 == (12 + 32)) {
        v3 = 8;
    } else {
        return 0xff;
    }

    if ((v1 == 15) || (v1 == (15 + 1))) {
        return 0;
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if ((v1 == (15 + 32)) || (v1 == ((15 + 32) + 1))) {
            return v0 + v3;
        }

        v1 -= 32;
    }

    return 0xff;
}

BOOL ov23_02251324(int param0, UnkStruct_ov23_0224271C *param1)
{
    int v0;
    int v1 = param1->unk_00;
    int v2 = param1->unk_02;
    UnkStruct_ov23_022513B0 v3;
    int v4 = ov23_022512D4(param1, CommPlayer_DirServer(param0));

    if (CommPlayer_Dir(v4) == -1) {
        v4 = 0xff;
    }

    if (v4 != 0xff) {
        sub_02059058(param0, 0);

        v3.unk_01 = v4;
        v3.unk_00 = param0;
        v3.unk_02 = 0;

        if (v4 != param0) {
            if (!ov23_0224AEA4(param0)) {
                v3.unk_02 = 1;
            } else {
                (void)0;
            }
        } else {
            if (ov23_0224AEA4(param0)) {
                u8 v5 = 3;
                ov23_0224A570(param0, 1, &v5, NULL);
                return 1;
            }
        }

        sub_02035B48(83, &v3);
        return 1;
    }

    return 0;
}

static void ov23_022513A4(int param0)
{
    sub_0205948C(0x40);
}

void ov23_022513B0(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov23_022513B0 *v0 = param2;
    FieldSystem *fieldSystem = param3;

    if (!CommSys_IsSendingMovementData()) {
        return;
    }

    if (v0->unk_00 == CommSys_CurNetId()) {
        if (v0->unk_01 == CommSys_CurNetId()) {
            Sound_PlayEffect(1548);
            sub_020594FC();
            ov23_02251F94(fieldSystem);
        } else {
            sub_02059464(0x40);

            if (v0->unk_02) {
                ov23_022520E8(fieldSystem, v0);
            } else {
                ov23_02253F40(ov23_022421AC(), 9, 1, ov23_022513A4);
            }
        }
    } else {
        (void)0;
    }

    if (v0->unk_02) {
        (void)0;
    }
}

int ov23_02251414(void)
{
    return sizeof(UnkStruct_ov23_022513B0);
}

static BOOL ov23_02251418(int param0, UnkStruct_ov23_02250CD4 *param1)
{
    UndergroundData *v0 = sub_020298B0(FieldSystem_SaveData(param1->fieldSystem));
    int v1;

    v1 = sub_02028B88(v0, param0);

    if (sub_0202895C(v0, v1)) {
        sub_02028B94(v0, param0);
        return 1;
    }

    return 0;
}

static int ov23_0225144C(int param0, UnkStruct_ov23_02250CD4 *param1)
{
    UndergroundData *v0 = sub_020298B0(FieldSystem_SaveData(param1->fieldSystem));
    int v1;

    if (sub_02028AFC(v0, param0)) {
        return -1;
    }

    v1 = sub_020289B8(v0, param0);

    if (ov23_0224F744(v1)) {
        sub_020289C4(v0, param0);
        return 1;
    }

    return 0;
}

static void ov23_0225148C(ListMenu *param0, u32 param1, u8 param2)
{
    UnkStruct_ov23_02250CD4 *v0 = (UnkStruct_ov23_02250CD4 *)ListMenu_GetAttribute(param0, 19);
    int v1 = param1;

    if (param1 == 0xfffffffe) {
        v1 = 5;
    }

    ov23_02253F60(ov23_022421BC(), 6 + v1, 0, NULL);
}

static void ov23_022514B0(ListMenu *param0, u32 param1, u8 param2)
{
    UnkStruct_ov23_02250CD4 *v0 = (UnkStruct_ov23_02250CD4 *)ListMenu_GetAttribute(param0, 19);
    int v1 = param1;

    if (param1 == 0xfffffffe) {
        v1 = 3;
    }

    ov23_02253F60(ov23_022421BC(), 44 + v1, 0, NULL);
}

static BOOL ov23_022514D8(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    u32 v1;
    u16 v2, v3;

    v1 = ListMenu_ProcessInput(v0->unk_48);
    ListMenu_GetListAndCursorPos(v0->unk_48, &v2, &v3);

    ov23_022430E0(23, v3, v2);
    ov23_022521C8(v0);

    switch (v1) {
    case 0xffffffff:
        return 0;
    case 0xfffffffe:
        Sound_PlayEffect(1550);
        v0->unk_2AA = 2;
        break;
    case 0: {
        UndergroundData *v4 = sub_020298B0(v0->fieldSystem->saveData);

        if (0 == sub_020289A0(v4)) {
            ov23_02253F40(ov23_022421BC(), 60, 0, NULL);
            v0->unk_2AA = 23;
        } else if (sub_02033DFC()) {
            ov23_02243204();
            v0->unk_2AA = 3;
        } else {
            ov23_02253F40(ov23_022421BC(), 56, 0, NULL);
            v0->unk_2AA = 23;
        }
    } break;
    case 4:
        Sound_PlayEffect(1500);
        v0->unk_2AA = 8;
        break;
    case 3:
        Sound_PlayEffect(1500);
        v0->unk_2AA = 6;
        break;
    case 1:
        Sound_PlayEffect(1500);
        v0->unk_2AA = 17;
        break;
    case 2:
        Sound_PlayEffect(1500);
        v0->unk_2AA = 20;
        break;
    default:
        break;
    }

    return 1;
}

static void ov23_022515D8(UnkStruct_ov23_02250CD4 *param0, int param1, int param2, UnkFuncPtr_ov23_022515D8 param3, int param4)
{
    ListMenuTemplate v0;
    int v1 = param2 + 1;
    BOOL v2 = 1;

    if (3 > sub_0202958C(SaveData_SecretBaseRecord(param0->fieldSystem->saveData))) {
        v2 = 0;
        v1 -= 1;
    }

    ov23_0224FB7C(param0);

    param0->unk_40 = StringList_New(v1, 4);

    Window_Add(param0->fieldSystem->bgConfig, &param0->unk_10, 3, 17, 3, 14, v1 * 2, 13, 2);
    Window_DrawStandardFrame(&param0->unk_10, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v3;
        int v4 = 0;

        v3 = MessageLoader_Init(0, 26, 639, 4);

        for (v4 = 0; v4 < v1; v4++) {
            if (v4 == (v1 - 1)) {
                StringList_AddFromMessageBank(param0->unk_40, v3, param1 + 5, 0xfffffffe);
            } else {
                StringList_AddFromMessageBank(param0->unk_40, v3, param1 + v4, v4);
            }
        }

        MessageLoader_Free(v3);
    }

    MI_CpuCopy8(ov23_02253D40(), &v0, sizeof(ListMenuTemplate));

    v0.count = v1;
    v0.maxDisplay = v1;
    v0.choices = param0->unk_40;
    v0.window = &param0->unk_10;

    if (param3) {
        v0.cursorCallback = param3;
    }

    v0.tmp = param0;
    ov23_02251238(param0, v1, v0.count);
    param0->unk_48 = ListMenu_New(&v0, param0->unk_294, param0->unk_290, 4);
}

static void ov23_022516E8(UnkStruct_ov23_02250CD4 *param0, int param1, int param2, UnkFuncPtr_ov23_022515D8 param3, int param4)
{
    ListMenuTemplate v0;
    int v1 = param2 + 1;
    BOOL v2 = 1;

    ov23_0224FB7C(param0);

    param0->unk_40 = StringList_New(v1, 4);

    Window_Add(param0->fieldSystem->bgConfig, &param0->unk_10, 3, 17, 3, 14, v1 * 2, 13, (2 + 14 * 16));
    Window_DrawStandardFrame(&param0->unk_10, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v3;
        int v4 = 0;

        v3 = MessageLoader_Init(0, 26, 639, 4);

        for (v4 = 0; v4 < v1; v4++) {
            if (v4 == param2) {
                StringList_AddFromMessageBank(param0->unk_40, v3, param1 + v4, 0xfffffffe);
            } else {
                StringList_AddFromMessageBank(param0->unk_40, v3, param1 + v4, v4);
            }
        }

        MessageLoader_Free(v3);
    }

    MI_CpuCopy8(ov23_02253D40(), &v0, sizeof(ListMenuTemplate));

    v0.count = param2 + 1;
    v0.maxDisplay = v1;
    v0.choices = param0->unk_40;
    v0.window = &param0->unk_10;

    if (param3) {
        v0.cursorCallback = param3;
    }

    v0.tmp = param0;
    ov23_02251238(param0, v1, v0.count);
    param0->unk_48 = ListMenu_New(&v0, param0->unk_294, param0->unk_290, 4);
}

static BOOL ov23_022517E0(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    u32 v1;
    u16 v2, v3;

    v1 = ListMenu_ProcessInput(v0->unk_48);
    ListMenu_GetListAndCursorPos(v0->unk_48, &v2, &v3);

    ov23_022430E0(22, v3, v2);
    ov23_022521C8(v0);

    switch (v1) {
    case 0xffffffff:
        return 0;
    case 0xfffffffe:
        Sound_PlayEffect(1500);
        v0->unk_2AA = 0;
        break;
    case 0:
        if (sub_02033DFC()) {
            v0->unk_2AA = 11;
        } else {
            v0->unk_2AA = 10;
        }
        break;
    case 1:
        if (sub_02033DFC()) {
            v0->unk_2AA = 13;
        } else {
            v0->unk_2AA = 12;
        }
        break;
    case 2:
        if (sub_02033DFC()) {
            v0->unk_2AA = 15;
        } else {
            v0->unk_2AA = 14;
        }
        break;
    default:
        v0->unk_2AA = 2;
        break;
    }

    return 1;
}

static BOOL ov23_02251894(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    u32 v1, v2;
    u16 v3, v4;

    v1 = ov23_02248D20(v0->unk_4C);

    ListMenu_GetListAndCursorPos(v0->unk_4C->unk_0C, &v3, &v4);
    ov23_022430E0(2, v4, v3);

    if (v1 == 0xfffffffe) {
        v1 = 0xfffffffe;
    }

    switch (v1) {
    case 0xffffffff:
        ov23_0225128C(v0, v3, ListMenu_GetAttribute(v0->unk_4C->unk_0C, 2), 6);
        return 0;
    case 0xfffffffe:
        ov23_02254044(ov23_022421DC());
        v0->unk_2AA = 0;
        break;
    default:
        ov23_02254044(ov23_022421DC());
        v2 = ov23_0224F61C(v1, v0);

        if (ov23_02251418(v1, v0)) {
            ov23_022540F4(ov23_022421BC(), v2);
            ov23_02253F40(ov23_022421BC(), 37, 0, NULL);
        } else {
            ov23_02253F40(ov23_022421BC(), 38, 0, NULL);
        }

        v0->unk_2AA = 19;
        ov23_0224FB7C(v0);
        break;
    }

    return 1;
}

static BOOL ov23_02251960(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    u32 v1, v2;
    u16 v3, v4;
    int v5;

    v1 = ov23_02248D20(v0->unk_4C);

    ListMenu_GetListAndCursorPos(v0->unk_4C->unk_0C, &v3, &v4);
    ov23_022430E0(6, v4, v3);

    if (v1 == 0xfffffffe) {
        v1 = 0xfffffffe;
    }

    switch (v1) {
    case 0xffffffff:
        ov23_0225128C(v0, v3, ListMenu_GetAttribute(v0->unk_4C->unk_0C, 2), 6);
        return 0;
    case 0xfffffffe:
        ov23_02254044(ov23_022421DC());
        v0->unk_2AA = 0;
        break;
    default:
        ov23_02254044(ov23_022421DC());
        v2 = ov23_0224F5F0(v1, v0);
        v5 = ov23_0225144C(v1, v0);

        if (1 == v5) {
            ov23_022540F4(ov23_022421BC(), v2);
            ov23_02253F40(ov23_022421BC(), 36, 0, NULL);
        } else if (-1 == v5) {
            ov23_02253F40(ov23_022421BC(), 55, 0, NULL);
        } else {
            ov23_02253F40(ov23_022421BC(), 39, 0, NULL);
        }

        v0->unk_2AA = 22;
        ov23_0224FB7C(v0);
        break;
    }

    sub_0206A8C4(v0->unk_08, 0, 0);
    sub_0206A8C4(v0->unk_08, 1, 0);

    return 1;
}

static BOOL ov23_02251A58(UnkStruct_ov23_02250CD4 *param0)
{
    if (ov23_02254238(ov23_022421BC()) == 0) {
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov23_02254044(ov23_022421BC());
            return 1;
        }
    }

    return 0;
}

static void ov23_02251A84(BOOL param0, FieldSystem *fieldSystem)
{
    VecFx32 v0;

    v0.y = 0;
    v0.x = 15 * FX32_ONE * 16 - Player_GetXPos(fieldSystem->playerAvatar) * FX32_ONE * 16;
    v0.z = 17 * FX32_ONE * 16 - Player_GetZPos(fieldSystem->playerAvatar) * FX32_ONE * 16;

    if (!param0) {
        v0.x = -v0.x;
        v0.z = -v0.z;
    }

    Camera_Move(&v0, fieldSystem->camera);
}

static BOOL ov23_02251ACC(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_ov23_02251ACC *v1 = TaskManager_Environment(param0);
    Location v2;
    u32 v3;
    BOOL v4 = 0;
    int v5;

    switch (v1->unk_00) {
    case 0:
        Sound_PlayEffect(1549);
        StartScreenTransition(2, 0, 0, 0x0, 6, 1, 4);
        v1->unk_00 = 1;
        break;
    case 1:
        if (IsScreenTransitionDone()) {
            PlayerAvatar_SetHidden(fieldSystem->playerAvatar, 0);

            ov23_02251A84(1, fieldSystem);
            v1->unk_00 = 2;
        }
        break;
    case 2:
        ov23_02254D98(fieldSystem, param0);
        v1->unk_00 = 3;
        break;
    case 3:
        v1->unk_00 = 4;
        break;
    case 4:
        PlayerAvatar_SetHidden(fieldSystem->playerAvatar, 1);
        ov23_02251A84(0, fieldSystem);
        StartScreenTransition(1, 1, 1, 0x0, 6, 1, 4);
        v1->unk_00 = 5;
        break;
    case 5:
        if (IsScreenTransitionDone()) {
            ov23_0224B2C8(fieldSystem);
            sub_0206AA30(SaveData_GetVarsFlags(fieldSystem->saveData));
            ov23_02251F94(fieldSystem);
            Heap_FreeToHeap(v1);
            return 1;
        }
        break;
    }

    return 0;
}

static void ov23_02251BB4(SysTask *param0, UnkStruct_ov23_02250CD4 *param1)
{
    Strbuf_Free(param1->unk_68);
    Strbuf_Free(param1->unk_6C);
    StringTemplate_Free(param1->unk_70);

    if (param1->unk_260 != NULL) {
        param1->unk_260(0);
    }

    if (param1->unk_08) {
        sub_0206A844(param1->unk_08);
        param1->unk_08 = NULL;
    }

    ov23_0224FB7C(param1);
    ov23_02254044(ov23_022421BC());

    SysTask_Done(param0);
    Heap_FreeToHeap(param1);
}

static void ov23_02251C04(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    u32 v1;
    UnkStruct_ov23_02251ACC *v2;

    switch (v0->unk_2AA) {
    case 0:
        ov23_02252E18(param1);
        v0->unk_290 = ov23_0224318C(23);
        v0->unk_294 = ov23_02243154(23);
        v0->unk_2AE = v0->unk_290;
        ov23_022515D8(param1, 0, 5, ov23_0225148C, 0);
        v0->unk_2AA = 1;
        break;
    case 1:
        ov23_022514D8(param0, param1);
        break;
    case 2:
        sub_02059514();
        ov23_02243204();
        ov23_02251BB4(param0, v0);
        break;
    case 6:
        ov23_0224FB7C(param1);
        ov23_02254044(ov23_022421BC());
        v0->unk_270 = ov23_02253C64(v0->fieldSystem->bgConfig, SaveData_GetTrainerInfo(FieldSystem_SaveData(v0->fieldSystem)), sub_020298B0(FieldSystem_SaveData(v0->fieldSystem)), NULL, NULL);
        v0->unk_2AA = 7;
        break;
    case 7:
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov23_02253D10(v0->unk_270);
            v0->unk_270 = NULL;
            v0->unk_2AA = 0;
        }
        break;
    case 8:
        ov23_02254044(ov23_022421BC());
        v0->unk_290 = ov23_0224318C(22);
        v0->unk_294 = ov23_02243154(22);
        v0->unk_2AE = v0->unk_290;
        ov23_022516E8(param1, 40, 3, ov23_022514B0, 1);
        v0->unk_2AA = 9;
        break;
    case 9:
        ov23_022517E0(param0, param1);
        break;
    case 10:
        ov23_0224FB7C(v0);
        ov23_02242FF8();
        ov23_022412F0();
        sub_0200AAE0(1, -6, 0, GX_BLEND_PLANEMASK_BG0, 1);
        ov23_02253F40(ov23_022421BC(), 48, 0, NULL);
        v0->unk_2AA = 16;
        break;
    case 11:
        ov23_02253F40(ov23_022421BC(), 57, 0, NULL);
        v0->unk_2AA = 16;
        break;
    case 12:
        ov23_0224FB7C(v0);
        ov23_02242FD0();
        ov23_02241E6C();
        sub_0200AAE0(1, -6, 0, GX_BLEND_PLANEMASK_BG0, 1);
        ov23_02253F40(ov23_022421BC(), 49, 0, NULL);
        v0->unk_2AA = 16;
        break;
    case 13:
        ov23_02253F40(ov23_022421BC(), 58, 0, NULL);
        v0->unk_2AA = 16;
        break;
    case 14:
        ov23_0224FB7C(v0);
        ov23_02242FE4();
        ov23_02245728();
        sub_0200AAE0(1, -6, 0, GX_BLEND_PLANEMASK_BG0, 1);
        ov23_02253F40(ov23_022421BC(), 50, 0, NULL);
        v0->unk_2AA = 16;
        break;
    case 15:
        ov23_02253F40(ov23_022421BC(), 59, 0, NULL);
        v0->unk_2AA = 16;
        break;
    case 16:
        if (ov23_02254238(ov23_022421BC()) == 0) {
            if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                if (!sub_02033DFC()) {
                    sub_0200AAE0(1, 0, -6, GX_BLEND_PLANEMASK_BG0, 1);
                }

                ov23_02254044(ov23_022421BC());

                if (sub_02033DFC()) {
                    ov23_02242FA8();
                } else {
                    ov23_02242FBC();
                }

                ov23_02245784();
                ov23_02241364();
                ov23_02241ED0();

                v0->unk_2AA = 8;
            }
        }
        break;
    case 3:
        if (v0->fieldSystem->taskManager == NULL) {
            v2 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_ov23_02251ACC));
            MI_CpuClear8(v2, sizeof(UnkStruct_ov23_02251ACC));
            v2->unk_00 = 0;
            v2->unk_04 = 0;
            FieldTask_Set(v0->fieldSystem, ov23_02251ACC, v2);
        }

        ov23_02251BB4(param0, v0);
        break;
    case 17:
        v0->unk_290 = ov23_0224318C(2);
        v0->unk_294 = ov23_02243154(2);
        ov23_02250D2C(param1);
        ov23_02252D74(param1, 28);
        v0->unk_2AA = 18;
        break;
    case 18:
        ov23_02251894(param0, param1);
        break;
    case 19:
        if (ov23_02251A58(v0)) {
            v0->unk_2AA = 17;
        }
        break;
    case 20:
        v0->unk_290 = ov23_0224318C(6);
        v0->unk_294 = ov23_02243154(6);
        ov23_02250D5C(param1);
        ov23_02252D74(param1, 32);
        v0->unk_2AA = 21;
        break;
    case 21:
        ov23_02251960(param0, param1);
        break;
    case 22:
        if (ov23_02251A58(v0)) {
            v0->unk_2AA = 20;
        }
        break;
    case 23:
        if (ov23_02251A58(v0)) {
            v0->unk_2AA = 0;
        }
        break;
    }
}

static void ov23_02251F94(FieldSystem *fieldSystem)
{
    ListMenuTemplate v0;
    UnkStruct_ov23_02250CD4 *v1;
    const int v2 = 6;

    ov23_022430D0(1);

    v1 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov23_02250CD4));
    MI_CpuFill8(v1, 0, sizeof(UnkStruct_ov23_02250CD4));
    v1->fieldSystem = fieldSystem;

    ov23_02253DFC(ov23_022421BC(), 639, 1);

    v1->unk_2AA = 0;
    v1->unk_68 = Strbuf_Init((50 * 2), 4);
    v1->unk_6C = Strbuf_Init((50 * 2), 4);
    v1->unk_70 = StringTemplate_Default(4);
    v1->unk_08 = sub_0206A780(4);

    sub_0206A8A0(v1->unk_08, 200, 20, 122);
    sub_0206A8C4(v1->unk_08, 0, 0);
    sub_0206A8C4(v1->unk_08, 1, 0);

    v1->unk_04 = SysTask_Start(ov23_02251C04, v1, 10000);

    ov23_022431EC(v1, v1->unk_04, ov23_02251270);
}

static void ov23_02252038(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02252038 *v0 = param1;
    int v1;

    switch (v0->unk_00) {
    case 0:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            v0->unk_08 = Menu_MakeYesNoChoice(v0->fieldSystem->bgConfig, &Unk_ov23_022569C8, 1024 - (18 + 12) - 9, 11, 4);
            v0->unk_00 = 1;
        }
        break;
    case 1:
        v1 = Menu_ProcessInputAndHandleExit(v0->unk_08, 4);

        if (v1 == 0xffffffff) {
            return;
        } else if (v1 == 0) {
            CommSys_SendDataFixedSize(89, &v0->unk_0C);
        } else {
            sub_0205948C(0x40);
            ov23_02254044(ov23_0224219C());
        }

        v0->unk_00 = 2;
        v0->unk_08 = NULL;
        break;
    case 2:
        Heap_FreeToHeap(v0);
        ov23_02243204();
        SysTask_Done(param0);
        break;
    }
}

static void ov23_022520C8(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02252038 *v0 = param1;

    if (v0->unk_08) {
        Menu_DestroyForExit(v0->unk_08, 4);
    }

    Heap_FreeToHeap(v0);
    SysTask_Done(param0);
}

static void ov23_022520E8(FieldSystem *fieldSystem, UnkStruct_ov23_022513B0 *param1)
{
    UnkStruct_ov23_02252038 *v0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov23_02250CD4));

    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_02252038));

    v0->unk_00 = 0;
    v0->fieldSystem = fieldSystem;
    v0->unk_10 = SysTask_Start(ov23_02252038, v0, 10000);

    ov23_02254068(ov23_0224219C(), CommInfo_TrainerInfo(param1->unk_01));
    ov23_02253F40(ov23_0224219C(), 67, 0, NULL);

    v0->unk_0C.unk_00 = param1->unk_00;
    v0->unk_0C.unk_01 = param1->unk_01;
    v0->unk_0C.unk_02 = param1->unk_02;

    ov23_022431EC(v0, v0->unk_10, ov23_022520C8);
}

void ov23_0225215C(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov23_022513B0 *v0 = param2;

    if (ov23_0224AEC4(v0->unk_00, v0->unk_01)) {
        sub_02035B48(90, v0);
    }
}

void ov23_02252178(int param0, int param1, void *param2, void *param3)
{
    FieldSystem *fieldSystem = param3;
    UnkStruct_ov23_022513B0 *v1 = param2;

    if (CommSys_CurNetId() == v1->unk_00) {
        ov23_02254068(ov23_022421AC(), CommInfo_TrainerInfo(v1->unk_01));
        ov23_02253F40(ov23_022421AC(), 8, 1, ov23_022513A4);
        Sound_PlayBGM(1061);
    }

    ov23_0224AEC4(v1->unk_00, v1->unk_01);
    ov23_0224D500(v1->unk_00, v1->unk_01);
}

static void ov23_022521C8(UnkStruct_ov23_02250CD4 *param0)
{
    u16 v0;

    v0 = param0->unk_2AE;
    ListMenu_CalcTrueCursorPos(param0->unk_48, &param0->unk_2AE);

    if (v0 != param0->unk_2AE) {
        Sound_PlayEffect(1500);
    }

    return;
}
