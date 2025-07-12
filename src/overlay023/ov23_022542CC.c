#include "overlay023/ov23_022542CC.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0206A844.h"
#include "struct_defs/underground.h"

#include "field/field_system.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_02248C08.h"
#include "overlay023/ov23_02253D40.h"
#include "overlay023/struct_ov23_02248D20.h"
#include "overlay023/struct_ov23_022542D8_decl.h"
#include "overlay023/struct_ov23_02254594_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "list_menu.h"
#include "message.h"
#include "render_window.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "text.h"
#include "unk_0202854C.h"
#include "unk_0206A780.h"

typedef struct UnkStruct_ov23_022542D8_t {
    FieldSystem *fieldSystem;
    Window unk_04;
    Window unk_14;
    StringList *unk_24;
    ListMenu *unk_28;
    Strbuf *unk_2C;
    u16 *unk_30;
    u16 *unk_34;
    u8 unk_38;
    u32 unk_3C;
    u16 unk_40;
};

typedef struct UnkStruct_ov23_02254594_t {
    FieldSystem *fieldSystem;
    UnkStruct_0206A844 *unk_04;
    Window unk_08;
    Window unk_18;
    StringList *unk_28;
    UnkStruct_ov23_02248D20 *unk_2C;
    ListMenu *unk_30;
    Strbuf *unk_34;
    u16 *unk_38;
    u16 *unk_3C;
    u8 unk_40;
    u8 unk_41;
    u8 unk_42;
    u32 unk_44;
    int unk_48;
};

static void ov23_0225437C(UnkStruct_ov23_022542D8 *param0);
static void ov23_022544C0(UnkStruct_ov23_022542D8 *param0);
static void ov23_0225451C(UnkStruct_ov23_022542D8 *param0);
static void ov23_022546E0(UnkStruct_ov23_02254594 *param0);
static void ov23_0225461C(UnkStruct_ov23_02254594 *param0);
static void ov23_02254958(UnkStruct_ov23_02254594 *param0);
static void ov23_022549A8(UnkStruct_0206A844 *param0, const u16 param1, const u16 param2, const u16 param3);
static void ov23_022549EC(UnkStruct_ov23_022542D8 *param0);

static const ListMenuTemplate Unk_ov23_02256B3C = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x4,
    0x4,
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

UnkStruct_ov23_022542D8 *ov23_022542CC(void)
{
    UnkStruct_ov23_022542D8 *v0 = Heap_Alloc(HEAP_ID_FIELD, sizeof(UnkStruct_ov23_022542D8));

    return v0;
}

void ov23_022542D8(UnkStruct_ov23_022542D8 *param0, FieldSystem *fieldSystem, u16 *param2, u16 *param3)
{
    param0->fieldSystem = fieldSystem;
    param0->unk_38 = 0;
    param0->unk_30 = param2;
    param0->unk_34 = param3;
    param0->unk_40 = 0;

    LoadStandardWindowGraphics(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, 11, 2, HEAP_ID_FIELD);
}

void ov23_0225430C(UnkStruct_ov23_022542D8 *param0)
{
    Heap_Free(param0);
}

const u32 ov23_02254314(UnkStruct_ov23_022542D8 *param0)
{
    return param0->unk_3C;
}

BOOL ov23_02254318(UnkStruct_ov23_022542D8 *param0)
{
    switch (param0->unk_38) {
    case 0:
        ov23_0225437C(param0);
        break;
    case 1:
        ov23_022544C0(param0);
        break;
    case 2:
        param0->unk_38 = 0;
        ov23_0225451C(param0);
        return 1;
    }

    return 0;
}

static void ov23_02254350(ListMenu *param0, u32 param1, u8 param2)
{
    const int v0[4] = {
        5,
        6,
        7,
        8,
    };

    ov23_02253F60(ov23_022421CC(), v0[param1], 0, NULL);
}

static void ov23_0225437C(UnkStruct_ov23_022542D8 *param0)
{
    ListMenuTemplate v0;
    int v1, v2;
    int v3 = 3;
    int v4 = 4;

    param0->unk_24 = StringList_New(v3 + 1, HEAP_ID_FIELD);

    v1 = 12 * v4 * 2;
    v2 = 7 * (1 * 2);

    Window_Add(param0->fieldSystem->bgConfig, &param0->unk_04, 3, 19, 3, 12, v4 * 2, 13, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (v1));
    Window_Add(param0->fieldSystem->bgConfig, &param0->unk_14, 3, 1, 1, 7, (1 * 2), 13, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (v1 + v2));

    Window_DrawStandardFrame(&param0->unk_04, 1, 1024 - (18 + 12) - 9, 11);
    Window_DrawStandardFrame(&param0->unk_14, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v5;
        int v6;
        const int v7[3 + 1] = {
            1,
            2,
            3,
            4,
        };

        v5 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_DECORATE_BASE, HEAP_ID_FIELD);

        {
            Strbuf *v8;

            Window_FillTilemap(&param0->unk_14, 15);
            v8 = MessageLoader_GetNewStrbuf(v5, 0);
            Text_AddPrinterWithParams(&param0->unk_14, FONT_SYSTEM, v8, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
            Strbuf_Free(v8);
        }

        for (v6 = 0; v6 < v3 + 1; v6++) {
            StringList_AddFromMessageBank(param0->unk_24, v5, v7[v6], v6);
        }

        MessageLoader_Free(v5);
    }

    v0 = Unk_ov23_02256B3C;
    v0.count = v3 + 1;
    v0.maxDisplay = v4;
    v0.choices = param0->unk_24;
    v0.window = &param0->unk_04;
    v0.cursorCallback = ov23_02254350;

    param0->unk_28 = ListMenu_New(&v0, *(param0->unk_30), *(param0->unk_34), HEAP_ID_FIELD);
    Window_CopyToVRAM(&param0->unk_04);
    Window_CopyToVRAM(&param0->unk_14);
    param0->unk_38 = 1;
}

static void ov23_022544C0(UnkStruct_ov23_022542D8 *param0)
{
    u32 v0 = ListMenu_ProcessInput(param0->unk_28);

    ov23_022549EC(param0);

    if (v0 == 3) {
        v0 = 0xfffffffe;
    }

    switch (v0) {
    case 0xffffffff:
        return;
    case 0xfffffffe:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        param0->unk_3C = v0;
        param0->unk_38 = 2;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        break;
    default: {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        param0->unk_3C = v0;
        param0->unk_38 = 2;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } break;
    }

    return;
}

static void ov23_0225451C(UnkStruct_ov23_022542D8 *param0)
{
    ov23_02254044(ov23_022421CC());

    Window_EraseStandardFrame(&param0->unk_14, 1);
    ListMenu_Free(param0->unk_28, param0->unk_30, param0->unk_34);
    Window_EraseStandardFrame(&param0->unk_04, 1);
    Bg_ScheduleTilemapTransfer(param0->unk_04.bgConfig, param0->unk_04.bgLayer);
    Window_Remove(&param0->unk_04);
    Window_Remove(&param0->unk_14);
    StringList_Free(param0->unk_24);
}

static void ov23_02254564(ListMenu *param0, u32 param1, u8 param2)
{
    u8 v0 = param1 & 0x1;

    if (v0) {
        ListMenu_SetAltTextColors(param0, 1, 15, 2);
    } else {
        ListMenu_SetAltTextColors(param0, 2, 15, 2);
    }
}

UnkStruct_ov23_02254594 *ov23_02254588(void)
{
    UnkStruct_ov23_02254594 *v0 = Heap_Alloc(HEAP_ID_FIELD, sizeof(UnkStruct_ov23_02254594));
    return v0;
}

void ov23_02254594(UnkStruct_ov23_02254594 *param0, FieldSystem *fieldSystem, u16 *param2, u16 *param3)
{
    param0->fieldSystem = fieldSystem;
    param0->unk_42 = 0;
    param0->unk_04 = NULL;
    param0->unk_38 = param2;
    param0->unk_3C = param3;

    LoadStandardWindowGraphics(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, 11, 2, HEAP_ID_FIELD);
}

void ov23_022545C4(UnkStruct_ov23_02254594 *param0, const u8 param1, const u8 param2)
{
    param0->unk_40 = param1;
    param0->unk_41 = param2;
}

void ov23_022545D0(UnkStruct_ov23_02254594 *param0)
{
    Heap_Free(param0);
}

const u32 ov23_022545D8(UnkStruct_ov23_02254594 *param0)
{
    return param0->unk_44;
}

BOOL ov23_022545DC(UnkStruct_ov23_02254594 *param0)
{
    switch (param0->unk_42) {
    case 0:
        ov23_022546E0(param0);
        break;
    case 1:
        ov23_0225461C(param0);
        break;
    case 2:
        param0->unk_42 = 0;
        ov23_02254958(param0);
        return 1;
    }

    if (param0->unk_04) {
        sub_0206A870(param0->unk_04);
    }

    return 0;
}

static void ov23_0225461C(UnkStruct_ov23_02254594 *param0)
{
    u32 v0;
    u32 v1;
    u16 v2, v3;

    v0 = ov23_02248D20(param0->unk_2C);
    v1 = (v0 >> 1);

    if (param0->unk_48 == v1) {
        v1 = 0xfffffffe;
    }

    {
        ListMenu_GetListAndCursorPos(param0->unk_2C->unk_0C, &v2, &v3);
        ov23_022549A8(param0->unk_04, v2, ListMenu_GetAttribute(param0->unk_2C->unk_0C, 2), ListMenu_GetAttribute(param0->unk_2C->unk_0C, 3));
    }

    switch (v0) {
    case 0xffffffff:
        return;
    case 0xfffffffe:
        param0->unk_44 = 0xfffffffe;
        param0->unk_42 = 2;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        break;
    default: {
        param0->unk_44 = v1;
        param0->unk_42 = 2;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } break;
    }

    return;
}

static void ov23_022546A0(ListMenu *param0, u32 param1, u8 param2)
{
    int v0;
    Underground *v1;
    u32 v2;
    u32 v3;

    v1 = (Underground *)ListMenu_GetAttribute(param0, 19);
    v3 = ListMenu_GetAttribute(param0, 2);
    v2 = (param1 >> 1);

    if (v2 == v3 - 1) {
        v0 = 278;
    } else {
        v0 = sub_020289B8(v1, v2);
        v0 = 145 + v0 - 7;
    }

    ov23_02253F60(ov23_022421DC(), v0, 0, NULL);
}

static void ov23_022546E0(UnkStruct_ov23_02254594 *param0)
{
    Underground *v0;
    ListMenuTemplate v1;
    int v2, v3;
    int v4;
    int v5;

    v0 = SaveData_GetUnderground(param0->fieldSystem->saveData);
    v4 = sub_020289A0(v0);
    param0->unk_48 = v4;
    v5 = v4 + 1;

    if (v5 > 7) {
        v5 = 7;
    }

    param0->unk_28 = StringList_New(v4 + 1, HEAP_ID_FIELD);

    v2 = 12 * 7 * 2;
    v3 = 8 * (2 * 2);

    Window_Add(param0->fieldSystem->bgConfig, &param0->unk_08, 3, 19, 3, 12, v5 * 2, 13, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (v2));
    Window_Add(param0->fieldSystem->bgConfig, &param0->unk_18, 3, 1, 1, 8, (2 * 2), 13, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (v2 + v3));
    Window_DrawStandardFrame(&param0->unk_08, 1, 1024 - (18 + 12) - 9, 11);
    Window_DrawStandardFrame(&param0->unk_18, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v6;
        int v7 = 0;
        int v8;
        BOOL v9;
        int v10;
        u8 v11;

        v6 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_GOODS, HEAP_ID_FIELD);

        {
            MessageLoader *v12;
            Strbuf *v13;
            Strbuf *v14;
            Strbuf *v15;
            StringTemplate *v16;

            v12 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_DECORATE_BASE, HEAP_ID_FIELD);

            Window_FillTilemap(&param0->unk_18, 15);

            v13 = MessageLoader_GetNewStrbuf(v12, 9);
            v14 = MessageLoader_GetNewStrbuf(v12, 10);
            v15 = Strbuf_Init(6, HEAP_ID_FIELD);

            Text_AddPrinterWithParams(&param0->unk_18, FONT_SYSTEM, v13, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
            v16 = StringTemplate_Default(HEAP_ID_FIELD);

            StringTemplate_SetNumber(v16, 0, param0->unk_40, 2, 1, 1);
            StringTemplate_SetNumber(v16, 1, param0->unk_41, 2, 1, 1);
            StringTemplate_Format(v16, v15, v14);
            Text_AddPrinterWithParams(&param0->unk_18, FONT_SYSTEM, v15, 0, 16, TEXT_SPEED_NO_TRANSFER, NULL);

            StringTemplate_Free(v16);
            Strbuf_Free(v13);
            Strbuf_Free(v14);
            Strbuf_Free(v15);

            MessageLoader_Free(v12);
        }

        for (v7 = 0; v7 < v4; v7++) {
            v8 = sub_020289B8(v0, v7);
            v9 = sub_02028AFC(v0, v7);

            if (!v9) {
                v11 = 1;
            } else {
                v11 = 0;
            }

            v10 = (v7 << 1) + v11;
            StringList_AddFromMessageBank(param0->unk_28, v6, v8, v10);
        }

        v10 = (v7 << 1) + 1;

        StringList_AddFromMessageBank(param0->unk_28, v6, 277, v10);
        MessageLoader_Free(v6);
    }

    ov23_02253DFC(ov23_022421DC(), 626, 0);

    v1 = Unk_ov23_02256B3C;
    v1.printCallback = ov23_02254564;
    v1.count = v4 + 1;
    v1.maxDisplay = v5;
    v1.choices = param0->unk_28;
    v1.window = &param0->unk_08;
    v1.cursorCallback = ov23_022546A0;
    v1.parent = v0;

    param0->unk_2C = ov23_02248C08(&v1, *(param0->unk_38), *(param0->unk_3C), HEAP_ID_FIELD, sub_02028A10, v0, 1);

    Window_CopyToVRAM(&param0->unk_08);
    Window_CopyToVRAM(&param0->unk_18);

    param0->unk_04 = sub_0206A780(HEAP_ID_FIELD);

    sub_0206A8A0(param0->unk_04, 200, 10 + 8 * 2, 118 + 8 * 2);
    sub_0206A8C4(param0->unk_04, 0, 0);
    sub_0206A8C4(param0->unk_04, 1, 0);

    param0->unk_42 = 1;
}

static void ov23_02254958(UnkStruct_ov23_02254594 *param0)
{
    ov23_02254044(ov23_022421DC());
    Window_EraseStandardFrame(&param0->unk_18, 1);
    ov23_02248EF8(param0->unk_2C, param0->unk_38, param0->unk_3C);

    Window_EraseStandardFrame(&param0->unk_08, 1);
    Bg_ScheduleTilemapTransfer(param0->unk_08.bgConfig, param0->unk_08.bgLayer);
    Window_Remove(&param0->unk_08);
    Window_Remove(&param0->unk_18);
    StringList_Free(param0->unk_28);
    sub_0206A844(param0->unk_04);
}

static void ov23_022549A8(UnkStruct_0206A844 *param0, const u16 param1, const u16 param2, const u16 param3)
{
    if (param2 <= param3) {
        return;
    }

    if (param1 != 0) {
        sub_0206A8C4(param0, 0, 1);
    } else {
        sub_0206A8C4(param0, 0, 0);
    }

    if (param2 != (param1 + param3)) {
        sub_0206A8C4(param0, 1, 1);
    } else {
        sub_0206A8C4(param0, 1, 0);
    }
}

static void ov23_022549EC(UnkStruct_ov23_022542D8 *param0)
{
    u16 v0 = param0->unk_40;
    ListMenu_CalcTrueCursorPos(param0->unk_28, &param0->unk_40);

    if (v0 != param0->unk_40) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    return;
}
