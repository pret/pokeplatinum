#include "unk_0209ACF4.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0209747C_decl.h"
#include "struct_defs/sentence.h"

#include "field/field_system.h"
#include "overlay005/fieldmap.h"

#include "bg_window.h"
#include "colored_arrow.h"
#include "field_message.h"
#include "field_task.h"
#include "heap.h"
#include "message.h"
#include "render_window.h"
#include "save_player.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "unk_02014A84.h"
#include "unk_0202D05C.h"
#include "unk_0203D1B8.h"
#include "unk_0209747C.h"

typedef struct {
    FieldSystem *fieldSystem;
    Strbuf *unk_04;
    Strbuf *unk_08;
    StringTemplate *unk_0C;
    MessageLoader *unk_10;
    ColoredArrow *unk_14;
    Window unk_18;
    Window unk_28;
    Window unk_38;
    Sentence unk_48;
    UnkStruct_0209747C *unk_50;
    int unk_54;
    int unk_58;
    int unk_5C;
    int unk_60;
    int unk_64;
    Window *unk_68;
} UnkStruct_0209AD84;

static void sub_0209AD84(UnkStruct_0209AD84 *param0);
static void sub_0209ADBC(UnkStruct_0209AD84 *param0);
static BOOL sub_0209AE14(FieldTask *param0);
static void sub_0209B084(UnkStruct_0209AD84 *param0, int param1, BOOL param2);
static BOOL sub_0209B100(UnkStruct_0209AD84 *param0);
static void sub_0209B110(UnkStruct_0209AD84 *param0);
static void sub_0209B12C(UnkStruct_0209AD84 *param0);
static void sub_0209B1CC(UnkStruct_0209AD84 *param0);
static void sub_0209B1D8(UnkStruct_0209AD84 *param0);
static void sub_0209B27C(UnkStruct_0209AD84 *param0);
static int sub_0209B288(UnkStruct_0209AD84 *param0);

void sub_0209ACF4(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0209AD84 *v1 = Heap_AllocFromHeap(HEAP_ID_FIELD_TASK, sizeof(UnkStruct_0209AD84));

    v1->fieldSystem = fieldSystem;
    v1->unk_04 = Strbuf_Init(400, HEAP_ID_FIELD_TASK);
    v1->unk_08 = Strbuf_Init(400, HEAP_ID_FIELD_TASK);
    v1->unk_0C = StringTemplate_Default(HEAP_ID_FIELD_TASK);
    v1->unk_10 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0420, HEAP_ID_FIELD_TASK);
    v1->unk_14 = ColoredArrow_New(HEAP_ID_FIELD_TASK);
    v1->unk_50 = sub_0209747C(2, 0, v1->fieldSystem->saveData, HEAP_ID_FIELD_TASK);

    sub_02097520(v1->unk_50);
    Window_Init(&(v1->unk_18));
    Window_Init(&(v1->unk_28));
    Window_Init(&(v1->unk_38));

    v1->unk_54 = 0;

    FieldTask_InitCall(param0, sub_0209AE14, v1);
}

static void sub_0209AD84(UnkStruct_0209AD84 *param0)
{
    sub_020974EC(param0->unk_50);
    ColoredArrow_Free(param0->unk_14);
    Strbuf_Free(param0->unk_04);
    Strbuf_Free(param0->unk_08);
    StringTemplate_Free(param0->unk_0C);
    MessageLoader_Free(param0->unk_10);
    sub_0209ADBC(param0);
    Heap_FreeToHeap(param0);
}

static void sub_0209ADBC(UnkStruct_0209AD84 *param0)
{
    if (Window_IsInUse(&(param0->unk_18))) {
        Window_Remove(&param0->unk_18);
        Window_Init(&(param0->unk_18));
    }

    if (Window_IsInUse(&(param0->unk_28))) {
        Window_Remove(&param0->unk_28);
        Window_Init(&(param0->unk_28));
    }

    if (Window_IsInUse(&(param0->unk_38))) {
        Window_Remove(&param0->unk_38);
        Window_Init(&(param0->unk_38));
    }
}

static BOOL sub_0209AE14(FieldTask *param0)
{
    UnkStruct_0209AD84 *v0 = FieldTask_GetEnv(param0);

    switch (v0->unk_54) {
    case 0:
        sub_0209B084(v0, 0, 0);
        v0->unk_54 = 1;
        break;
    case 1:
        if (sub_0209B100(v0)) {
            sub_0209B12C(v0);
            v0->unk_54 = 2;
        }
        break;
    case 2:
        v0->unk_64 = sub_0209B288(v0);

        if (v0->unk_64 != -1) {
            sub_0209B1CC(v0);

            switch (v0->unk_64) {
            case 0:
                sub_02014CC0(&(v0->unk_48), sub_0202D498(v0->fieldSystem->saveData, 0));
                v0->unk_54 = 3;
                break;
            case 1:
                sub_02014CC0(&(v0->unk_48), sub_0202D498(v0->fieldSystem->saveData, 1));
                v0->unk_54 = 3;
                break;
            case 2:
                sub_02014CC0(&(v0->unk_48), sub_0202D498(v0->fieldSystem->saveData, 2));
                v0->unk_54 = 3;
                break;
            case 3:
                sub_02014CC0(&(v0->unk_48), sub_0202D498(v0->fieldSystem->saveData, 3));
                v0->unk_54 = 3;
                break;
            case 4:
                v0->unk_54 = 11;
                break;
            }
        }
        break;
    case 3:
        sub_0209B084(v0, 1 + v0->unk_64, 0);
        v0->unk_54 = 4;
        break;
    case 4:
        if (sub_0209B100(v0)) {
            ov5_021D1744(0);
            v0->unk_54 = 5;
        }
        break;
    case 5:
        if (IsScreenTransitionDone()) {
            sub_02097500(v0->unk_50, &(v0->unk_48));
            sub_02097514(v0->unk_50);
            sub_0209ADBC(v0);
            sub_0203D874(v0->fieldSystem, v0->unk_50);
            v0->unk_54 = 6;
        }
        break;
    case 6:
        if (FieldSystem_IsRunningApplication(v0->fieldSystem) == 0) {
            FieldSystem_StartFieldMap(v0->fieldSystem);
            v0->unk_54 = 7;
        }
        break;
    case 7:
        if (FieldSystem_IsRunningFieldMap(v0->fieldSystem)) {
            ov5_021D1744(1);
            v0->unk_54 = 8;
        }
        break;
    case 8:
        if (IsScreenTransitionDone()) {
            if (sub_02097528(v0->unk_50)) {
                v0->unk_54 = 11;
            } else {
                sub_02097540(v0->unk_50, &(v0->unk_48));
                sub_0202D478(v0->fieldSystem->saveData, v0->unk_64, &(v0->unk_48));
                sub_0209B084(v0, 6, 0);
                v0->unk_54 = 9;
            }
        }
        break;
    case 9:
        if (sub_0209B100(v0)) {
            sub_0209B1D8(v0);
            v0->unk_54 = 10;
        }
        break;
    case 10:
        v0->unk_64 = sub_0209B288(v0);

        if (v0->unk_64 != -1) {
            switch (v0->unk_64) {
            case 0:
                sub_0209B27C(v0);
                sub_0209B12C(v0);
                v0->unk_54 = 2;
                break;
            case 1:
            default: {
                u16 v1 = sub_02014C78(&v0->unk_48, 0);
                sub_0209B27C(v0);

                if (v1 != 0xffff) {
                    StringTemplate_SetCustomMessageWord(v0->unk_0C, 0, v1);
                    sub_0209B084(v0, 8, 1);
                } else {
                    sub_0209B084(v0, 7, 0);
                }

                v0->unk_54 = 12;
            }
            }
        }
        break;
    case 11:
        sub_0209B084(v0, 5, 0);
        v0->unk_54 = 12;
        break;
    case 12:
        if (sub_0209B100(v0)) {
            if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_PLUS_KEY_MASK)) {
                sub_0209B110(v0);
                v0->unk_54 = 13;
            }
        }
        break;
    case 13:
        sub_0209AD84(v0);
        return 1;
    }

    return 0;
}

static void sub_0209B084(UnkStruct_0209AD84 *param0, int param1, BOOL param2)
{
    Window *v0 = &(param0->unk_18);

    if (param2) {
        MessageLoader_GetStrbuf(param0->unk_10, param1, param0->unk_04);
        StringTemplate_Format(param0->unk_0C, param0->unk_08, param0->unk_04);
    } else {
        MessageLoader_GetStrbuf(param0->unk_10, param1, param0->unk_08);
    }

    if (Window_IsInUse(v0) == 0) {
        FieldMessage_AddWindow(param0->fieldSystem->bgConfig, v0, 3);
        FieldMessage_DrawWindow(v0, SaveData_GetOptions(param0->fieldSystem->saveData));
    } else {
        FieldMessage_ClearWindow(v0);
        Window_DrawMessageBoxWithScrollCursor(v0, 0, 1024 - (18 + 12), 10);
    }

    param0->unk_58 = FieldMessage_Print(v0, param0->unk_08, SaveData_GetOptions(param0->fieldSystem->saveData), 1);
}

static BOOL sub_0209B100(UnkStruct_0209AD84 *param0)
{
    return FieldMessage_FinishedPrinting(param0->unk_58);
}

static void sub_0209B110(UnkStruct_0209AD84 *param0)
{
    Window *v0 = &(param0->unk_18);

    if (Window_IsInUse(v0)) {
        Window_EraseMessageBox(v0, 0);
    }
}

static void sub_0209B12C(UnkStruct_0209AD84 *param0)
{
    Window *v0 = &(param0->unk_28);

    if (Window_IsInUse(v0) == 0) {
        int v1;

        LoadStandardWindowGraphics(param0->fieldSystem->bgConfig, 3, 155, 11, 0, HEAP_ID_FIELD_TASK);
        Window_Add(param0->fieldSystem->bgConfig, v0, 3, 1, 1, 13, 10, 13, 1);
        Window_FillTilemap(v0, 15);

        for (v1 = 0; v1 < 5; v1++) {
            MessageLoader_GetStrbuf(param0->unk_10, 9 + v1, param0->unk_08);
            Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->unk_08, 12, v1 * 16, TEXT_SPEED_NO_TRANSFER, NULL);
        }

        ColoredArrow_Print(param0->unk_14, v0, 0, 0);
    }

    param0->unk_68 = v0;
    param0->unk_5C = 0;
    param0->unk_60 = 5;

    Window_DrawStandardFrame(v0, 0, 155, 11);
}

static void sub_0209B1CC(UnkStruct_0209AD84 *param0)
{
    Window *v0 = &(param0->unk_28);
    Window_EraseStandardFrame(v0, 1);
}

static void sub_0209B1D8(UnkStruct_0209AD84 *param0)
{
    Window *v0 = &(param0->unk_38);

    if (Window_IsInUse(v0) == 0) {
        int v1;

        LoadStandardWindowGraphics(param0->fieldSystem->bgConfig, 3, 155, 11, 0, HEAP_ID_FIELD_TASK);
        Window_Add(param0->fieldSystem->bgConfig, v0, 3, 25, 13, 6, 4, 13, 131);
        Window_FillTilemap(v0, 15);

        for (v1 = 0; v1 < 2; v1++) {
            MessageLoader_GetStrbuf(param0->unk_10, v1 + 14, param0->unk_08);
            Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->unk_08, 12, v1 * 16, TEXT_SPEED_NO_TRANSFER, NULL);
        }

        ColoredArrow_Print(param0->unk_14, v0, 0, 0);
    }

    param0->unk_68 = v0;
    param0->unk_5C = 0;
    param0->unk_60 = 2;

    Window_DrawStandardFrame(v0, 0, 155, 11);
}

static void sub_0209B27C(UnkStruct_0209AD84 *param0)
{
    Window *v0 = &(param0->unk_38);
    Window_EraseStandardFrame(v0, 1);
}

static int sub_0209B288(UnkStruct_0209AD84 *param0)
{
    do {
        if (gSystem.pressedKeys & PAD_KEY_UP) {
            param0->unk_5C--;

            if (param0->unk_5C < 0) {
                if (param0->unk_60 > 2) {
                    param0->unk_5C = param0->unk_60 - 1;
                } else {
                    param0->unk_5C = 0;
                }
            }
            break;
        }

        if (gSystem.pressedKeys & PAD_KEY_DOWN) {
            param0->unk_5C++;

            if (param0->unk_5C >= param0->unk_60) {
                if (param0->unk_60 > 2) {
                    param0->unk_5C = 0;
                } else {
                    param0->unk_5C = param0->unk_60 - 1;
                }
            }
            break;
        }

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            return param0->unk_5C;
        }

        if (gSystem.pressedKeys & PAD_BUTTON_B) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            return param0->unk_60 - 1;
        }

        return -1;
    } while (0);

    {
        Window_FillRectWithColor(param0->unk_68, 15, 0, 0, 12, param0->unk_68->height * 8);
        ColoredArrow_Print(param0->unk_14, param0->unk_68, 0, param0->unk_5C * 16);
        Window_LoadTiles(param0->unk_68);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    return -1;
}
