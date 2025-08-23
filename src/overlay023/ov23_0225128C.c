#include "overlay023/ov23_0225128C.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/underground.h"

#include "field/field_system.h"
#include "overlay023/ov23_0223E140.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224340C.h"
#include "overlay023/ov23_02248C08.h"
#include "overlay023/ov23_0224A1D0.h"
#include "overlay023/ov23_0224B05C.h"
#include "overlay023/ov23_0224F294.h"
#include "overlay023/ov23_022521F0.h"
#include "overlay023/ov23_02253598.h"
#include "overlay023/ov23_02254A14.h"
#include "overlay023/struct_ov23_02250CD4.h"
#include "overlay023/underground_spheres.h"
#include "overlay023/underground_text_printer.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "camera.h"
#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_system.h"
#include "field_task.h"
#include "heap.h"
#include "list_menu.h"
#include "location.h"
#include "menu.h"
#include "message.h"
#include "player_avatar.h"
#include "render_window.h"
#include "save_player.h"
#include "screen_fade.h"
#include "scroll_prompts.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "system_flags.h"
#include "unk_0202854C.h"
#include "unk_02033200.h"
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
        ScrollPrompts_SetDrawFlag(param0->unk_08, SCROLL_PROMPT_TOP_ARROW, TRUE);
    } else {
        ScrollPrompts_SetDrawFlag(param0->unk_08, SCROLL_PROMPT_TOP_ARROW, FALSE);
    }

    if (param2 != (param1 + param3)) {
        ScrollPrompts_SetDrawFlag(param0->unk_08, SCROLL_PROMPT_BOTTOM_ARROW, TRUE);
    } else {
        ScrollPrompts_SetDrawFlag(param0->unk_08, SCROLL_PROMPT_BOTTOM_ARROW, FALSE);
    }

    ScrollPrompts_UpdateAnim(param0->unk_08);
}

int ov23_022512D4(Coordinates *param0, int param1)
{
    int v0;
    int v1 = param0->x;
    int v2 = param0->z;
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

BOOL ov23_02251324(int param0, Coordinates *param1)
{
    int v0;
    int v1 = param1->x;
    int v2 = param1->z;
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
            Sound_PlayEffect(SEQ_SE_DP_PC_ON);
            CommPlayerMan_PauseFieldSystem();
            ov23_02251F94(fieldSystem);
        } else {
            sub_02059464(0x40);

            if (v0->unk_02) {
                ov23_022520E8(fieldSystem, v0);
            } else {
                UndergroundTextPrinter_PrintText(CommManUnderground_GetCaptureFlagTextPrinter(), 9, TRUE, ov23_022513A4);
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
    Underground *v0 = SaveData_GetUnderground(FieldSystem_GetSaveData(param1->fieldSystem));
    int v1 = Underground_GetGoodAtSlotBag(v0, param0);

    if (Underground_TryAddGoodPC(v0, v1)) {
        Underground_RemoveGoodAtSlotBag(v0, param0);
        return 1;
    }

    return 0;
}

static int ov23_0225144C(int param0, UnkStruct_ov23_02250CD4 *param1)
{
    Underground *v0 = SaveData_GetUnderground(FieldSystem_GetSaveData(param1->fieldSystem));
    int v1;

    if (Underground_IsGoodAtSlotPlacedInBase(v0, param0)) {
        return -1;
    }

    v1 = Underground_GetGoodAtSlotPC(v0, param0);

    if (Underground_TryAddGoodBag2(v1)) {
        Underground_RemoveGoodAtSlotPC(v0, param0);
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

    UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetMiscTextPrinter(), 6 + v1, FALSE, NULL);
}

static void ov23_022514B0(ListMenu *param0, u32 param1, u8 param2)
{
    UnkStruct_ov23_02250CD4 *v0 = (UnkStruct_ov23_02250CD4 *)ListMenu_GetAttribute(param0, 19);
    int v1 = param1;

    if (param1 == 0xfffffffe) {
        v1 = 3;
    }

    UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetMiscTextPrinter(), 44 + v1, FALSE, NULL);
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
        Sound_PlayEffect(SEQ_SE_DP_PC_LOGOFF);
        v0->unk_2AA = 2;
        break;
    case 0: {
        Underground *v4 = SaveData_GetUnderground(v0->fieldSystem->saveData);

        if (0 == Underground_GetGoodsCountPC(v4)) {
            UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), 60, FALSE, NULL);
            v0->unk_2AA = 23;
        } else if (sub_02033DFC()) {
            ov23_02243204();
            v0->unk_2AA = 3;
        } else {
            UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), 56, FALSE, NULL);
            v0->unk_2AA = 23;
        }
    } break;
    case 4:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        v0->unk_2AA = 8;
        break;
    case 3:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        v0->unk_2AA = 6;
        break;
    case 1:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        v0->unk_2AA = 17;
        break;
    case 2:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        v0->unk_2AA = 20;
        break;
    default:
        break;
    }

    return 1;
}

static void ov23_022515D8(UnkStruct_ov23_02250CD4 *param0, int param1, int param2, CursorCallback cursorCallback, int param4)
{
    ListMenuTemplate v0;
    int v1 = param2 + 1;
    BOOL v2 = 1;

    if (BASE_FLAG_GOLD > UndergroundRecord_GetFlagRank(SaveData_UndergroundRecord(param0->fieldSystem->saveData))) {
        v2 = 0;
        v1 -= 1;
    }

    ov23_0224FB7C(param0);

    param0->unk_40 = StringList_New(v1, HEAP_ID_FIELD);

    Window_Add(param0->fieldSystem->bgConfig, &param0->unk_10, 3, 17, 3, 14, v1 * 2, 13, 2);
    Window_DrawStandardFrame(&param0->unk_10, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v3;
        int v4 = 0;

        v3 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_BASE_PC, HEAP_ID_FIELD);

        for (v4 = 0; v4 < v1; v4++) {
            if (v4 == (v1 - 1)) {
                StringList_AddFromMessageBank(param0->unk_40, v3, param1 + 5, 0xfffffffe);
            } else {
                StringList_AddFromMessageBank(param0->unk_40, v3, param1 + v4, v4);
            }
        }

        MessageLoader_Free(v3);
    }

    MI_CpuCopy8(UndergroundTextPrinter_GetListMenuTemplate(), &v0, sizeof(ListMenuTemplate));

    v0.count = v1;
    v0.maxDisplay = v1;
    v0.choices = param0->unk_40;
    v0.window = &param0->unk_10;

    if (cursorCallback) {
        v0.cursorCallback = cursorCallback;
    }

    v0.parent = param0;
    ov23_02251238(param0, v1, v0.count);
    param0->unk_48 = ListMenu_New(&v0, param0->unk_294, param0->unk_290, HEAP_ID_FIELD);
}

static void ov23_022516E8(UnkStruct_ov23_02250CD4 *param0, int param1, int param2, CursorCallback cursorCallback, int param4)
{
    ListMenuTemplate v0;
    int v1 = param2 + 1;
    BOOL v2 = 1;

    ov23_0224FB7C(param0);

    param0->unk_40 = StringList_New(v1, HEAP_ID_FIELD);

    Window_Add(param0->fieldSystem->bgConfig, &param0->unk_10, 3, 17, 3, 14, v1 * 2, 13, (2 + 14 * 16));
    Window_DrawStandardFrame(&param0->unk_10, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v3;
        int v4 = 0;

        v3 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_BASE_PC, HEAP_ID_FIELD);

        for (v4 = 0; v4 < v1; v4++) {
            if (v4 == param2) {
                StringList_AddFromMessageBank(param0->unk_40, v3, param1 + v4, 0xfffffffe);
            } else {
                StringList_AddFromMessageBank(param0->unk_40, v3, param1 + v4, v4);
            }
        }

        MessageLoader_Free(v3);
    }

    MI_CpuCopy8(UndergroundTextPrinter_GetListMenuTemplate(), &v0, sizeof(ListMenuTemplate));

    v0.count = param2 + 1;
    v0.maxDisplay = v1;
    v0.choices = param0->unk_40;
    v0.window = &param0->unk_10;

    if (cursorCallback) {
        v0.cursorCallback = cursorCallback;
    }

    v0.parent = param0;
    ov23_02251238(param0, v1, v0.count);
    param0->unk_48 = ListMenu_New(&v0, param0->unk_294, param0->unk_290, HEAP_ID_FIELD);
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
        Sound_PlayEffect(SEQ_SE_CONFIRM);
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
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
        v0->unk_2AA = 0;
        break;
    default:
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
        v2 = Underground_GetGoodAtSlotBag2(v1, v0);

        if (ov23_02251418(v1, v0)) {
            UndergroundTextPrinter_SetUndergroundGoodsName(CommManUnderground_GetMiscTextPrinter(), v2);
            UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), 37, FALSE, NULL);
        } else {
            UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), 38, FALSE, NULL);
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
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
        v0->unk_2AA = 0;
        break;
    default:
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
        v2 = Underground_GetGoodAtSlotPC2(v1, v0);
        v5 = ov23_0225144C(v1, v0);

        if (1 == v5) {
            UndergroundTextPrinter_SetUndergroundGoodsName(CommManUnderground_GetMiscTextPrinter(), v2);
            UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), 36, FALSE, NULL);
        } else if (-1 == v5) {
            UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), 55, FALSE, NULL);
        } else {
            UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), 39, FALSE, NULL);
        }

        v0->unk_2AA = 22;
        ov23_0224FB7C(v0);
        break;
    }

    ScrollPrompts_SetDrawFlag(v0->unk_08, SCROLL_PROMPT_TOP_ARROW, FALSE);
    ScrollPrompts_SetDrawFlag(v0->unk_08, SCROLL_PROMPT_BOTTOM_ARROW, FALSE);

    return 1;
}

static BOOL ov23_02251A58(UnkStruct_ov23_02250CD4 *param0)
{
    if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetMiscTextPrinter()) == FALSE) {
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetMiscTextPrinter());
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

static BOOL ov23_02251ACC(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_ov23_02251ACC *v1 = FieldTask_GetEnv(param0);
    Location v2;
    u32 v3;
    BOOL v4 = 0;
    int v5;

    switch (v1->unk_00) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_PC_LOGIN);
        StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_FIELD);
        v1->unk_00 = 1;
        break;
    case 1:
        if (IsScreenFadeDone()) {
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
        StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_FIELD);
        v1->unk_00 = 5;
        break;
    case 5:
        if (IsScreenFadeDone()) {
            ov23_0224B2C8(fieldSystem);
            SystemFlag_SetDecoratedSecretBase(SaveData_GetVarsFlags(fieldSystem->saveData));
            ov23_02251F94(fieldSystem);
            Heap_Free(v1);
            return 1;
        }
        break;
    }

    return 0;
}

static void ov23_02251BB4(SysTask *param0, UnkStruct_ov23_02250CD4 *param1)
{
    Strbuf_Free(param1->strbuf);
    Strbuf_Free(param1->fmtString);
    StringTemplate_Free(param1->template);

    if (param1->unk_260 != NULL) {
        param1->unk_260(0);
    }

    if (param1->unk_08) {
        ScrollPrompts_Free(param1->unk_08);
        param1->unk_08 = NULL;
    }

    ov23_0224FB7C(param1);
    UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetMiscTextPrinter());

    SysTask_Done(param0);
    Heap_Free(param1);
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
        CommPlayerMan_ResumeFieldSystem();
        ov23_02243204();
        ov23_02251BB4(param0, v0);
        break;
    case 6:
        ov23_0224FB7C(param1);
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetMiscTextPrinter());
        v0->unk_270 = ov23_02253C64(v0->fieldSystem->bgConfig, SaveData_GetTrainerInfo(FieldSystem_GetSaveData(v0->fieldSystem)), SaveData_GetUnderground(FieldSystem_GetSaveData(v0->fieldSystem)), NULL, NULL);
        v0->unk_2AA = 7;
        break;
    case 7:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov23_02253D10(v0->unk_270);
            v0->unk_270 = NULL;
            v0->unk_2AA = 0;
        }
        break;
    case 8:
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetMiscTextPrinter());
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
        BrightnessController_StartTransition(1, -6, 0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), 48, FALSE, NULL);
        v0->unk_2AA = 16;
        break;
    case 11:
        UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), 57, FALSE, NULL);
        v0->unk_2AA = 16;
        break;
    case 12:
        ov23_0224FB7C(v0);
        ov23_02242FD0();
        SphereRadar_Start();
        BrightnessController_StartTransition(1, -6, 0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), 49, FALSE, NULL);
        v0->unk_2AA = 16;
        break;
    case 13:
        UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), 58, FALSE, NULL);
        v0->unk_2AA = 16;
        break;
    case 14:
        ov23_0224FB7C(v0);
        ov23_02242FE4();
        ov23_02245728();
        BrightnessController_StartTransition(1, -6, 0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), 50, FALSE, NULL);
        v0->unk_2AA = 16;
        break;
    case 15:
        UndergroundTextPrinter_PrintText(CommManUnderground_GetMiscTextPrinter(), 59, FALSE, NULL);
        v0->unk_2AA = 16;
        break;
    case 16:
        if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetMiscTextPrinter()) == FALSE) {
            if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                if (!sub_02033DFC()) {
                    BrightnessController_StartTransition(1, 0, -6, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
                }

                UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetMiscTextPrinter());

                if (sub_02033DFC()) {
                    ov23_02242FA8();
                } else {
                    ov23_02242FBC();
                }

                ov23_02245784();
                ov23_02241364();
                SphereRadar_Exit();

                v0->unk_2AA = 8;
            }
        }
        break;
    case 3:
        if (v0->fieldSystem->task == NULL) {
            v2 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELDMAP, sizeof(UnkStruct_ov23_02251ACC));
            MI_CpuClear8(v2, sizeof(UnkStruct_ov23_02251ACC));
            v2->unk_00 = 0;
            v2->unk_04 = 0;
            FieldSystem_CreateTask(v0->fieldSystem, ov23_02251ACC, v2);
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

    v1 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(UnkStruct_ov23_02250CD4));
    MI_CpuFill8(v1, 0, sizeof(UnkStruct_ov23_02250CD4));
    v1->fieldSystem = fieldSystem;

    UndergroundTextPrinter_ChangeMessageLoaderBank(CommManUnderground_GetMiscTextPrinter(), TEXT_BANK_UNDERGROUND_BASE_PC, MESSAGE_LOADER_NARC_HANDLE);

    v1->unk_2AA = 0;
    v1->strbuf = Strbuf_Init((50 * 2), HEAP_ID_FIELD);
    v1->fmtString = Strbuf_Init((50 * 2), HEAP_ID_FIELD);
    v1->template = StringTemplate_Default(HEAP_ID_FIELD);
    v1->unk_08 = ScrollPrompts_New(HEAP_ID_FIELD);

    ScrollPrompts_SetPosition(v1->unk_08, 200, 20, 122);
    ScrollPrompts_SetDrawFlag(v1->unk_08, SCROLL_PROMPT_TOP_ARROW, FALSE);
    ScrollPrompts_SetDrawFlag(v1->unk_08, SCROLL_PROMPT_BOTTOM_ARROW, FALSE);

    v1->unk_04 = SysTask_Start(ov23_02251C04, v1, 10000);

    ov23_022431EC(v1, v1->unk_04, ov23_02251270);
}

static void ov23_02252038(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02252038 *v0 = param1;
    int v1;

    switch (v0->unk_00) {
    case 0:
        if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetCommonTextPrinter()) == FALSE) {
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
            UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
        }

        v0->unk_00 = 2;
        v0->unk_08 = NULL;
        break;
    case 2:
        Heap_Free(v0);
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

    Heap_Free(v0);
    SysTask_Done(param0);
}

static void ov23_022520E8(FieldSystem *fieldSystem, UnkStruct_ov23_022513B0 *param1)
{
    UnkStruct_ov23_02252038 *v0 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(UnkStruct_ov23_02250CD4));

    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_02252038));

    v0->unk_00 = 0;
    v0->fieldSystem = fieldSystem;
    v0->unk_10 = SysTask_Start(ov23_02252038, v0, 10000);

    UndergroundTextPrinter_SetPlayerNameIndex0(CommManUnderground_GetCommonTextPrinter(), CommInfo_TrainerInfo(param1->unk_01));
    UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), 67, FALSE, NULL);

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
        UndergroundTextPrinter_SetPlayerNameIndex0(CommManUnderground_GetCaptureFlagTextPrinter(), CommInfo_TrainerInfo(v1->unk_01));
        UndergroundTextPrinter_PrintText(CommManUnderground_GetCaptureFlagTextPrinter(), 8, TRUE, ov23_022513A4);
        Sound_PlayBGM(SEQ_HATANIGE);
    }

    ov23_0224AEC4(v1->unk_00, v1->unk_01);
    ov23_0224D500(v1->unk_00, v1->unk_01);
}

static void ov23_022521C8(UnkStruct_ov23_02250CD4 *param0)
{
    u16 v0 = param0->unk_2AE;
    ListMenu_CalcTrueCursorPos(param0->unk_48, &param0->unk_2AE);

    if (v0 != param0->unk_2AE) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    return;
}
