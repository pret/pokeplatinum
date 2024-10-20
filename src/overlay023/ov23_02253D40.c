#include "overlay023/ov23_02253D40.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay023/struct_ov23_02253E2C_decl.h"
#include "overlay023/struct_ov23_02253F60.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "core_sys.h"
#include "heap.h"
#include "message.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_0200DA60.h"
#include "unk_02018340.h"

typedef struct UnkStruct_ov23_02253E2C_t {
    Strbuf *unk_00;
    Strbuf *unk_04;
    Window unk_08;
    BGL *unk_18;
    UnkStruct_ov23_02253F60 unk_1C;
    SysTask *unk_20;
    MessageLoader *unk_24;
    StringTemplate *unk_28;
    int unk_2C;
    int unk_30;
    int unk_34;
    int unk_38;
    int unk_3C;
    u16 unk_40;
    u16 unk_42;
    BOOL unk_44_0 : 1;
    BOOL unk_44_1 : 1;
    BOOL unk_44_2 : 1;
};

void ov23_022421EC(void);
static void ov23_02253FA4(UnkStruct_ov23_02253E2C *param0, BOOL param1);

static const UnkStruct_ov84_02240FA8 Unk_ov23_022569E0 = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x0,
    0x0,
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

const UnkStruct_ov84_02240FA8 *ov23_02253D40(void)
{
    return &Unk_ov23_022569E0;
}

UnkStruct_ov23_02253E2C *ov23_02253D48(int param0, int param1, BGL *param2, int param3, int param4)
{
    int v0 = param4;
    UnkStruct_ov23_02253E2C *v1 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov23_02253E2C));

    MI_CpuClear8(v1, sizeof(UnkStruct_ov23_02253E2C));

    if (0 == v0) {
        v0 = 230;
    }

    v1->unk_00 = Strbuf_Init(v0, param1);
    v1->unk_04 = Strbuf_Init(v0, param1);
    v1->unk_28 = StringTemplate_Default(param1);
    v1->unk_2C = param0;
    v1->unk_24 = MessageLoader_Init(1, 26, param0, param1);
    v1->unk_34 = param1;
    v1->unk_18 = param2;

    Window_Init(&v1->unk_08);

    v1->unk_44_0 = 0;
    v1->unk_44_1 = 0;
    v1->unk_20 = NULL;
    v1->unk_38 = param3;
    v1->unk_40 = (((1024 - (18 + 12)) - 73) - (27 * 4));
    v1->unk_42 = (1024 - (18 + 12));

    return v1;
}

void ov23_02253DD8(UnkStruct_ov23_02253E2C *param0)
{
    Strbuf_Free(param0->unk_00);
    Strbuf_Free(param0->unk_04);
    StringTemplate_Free(param0->unk_28);
    MessageLoader_Free(param0->unk_24);
    Heap_FreeToHeap(param0);
}

void ov23_02253DFC(UnkStruct_ov23_02253E2C *param0, int param1, int param2)
{
    if (param0->unk_2C != param1) {
        param0->unk_2C = param1;
        MessageLoader_Free(param0->unk_24);

        param0->unk_24 = MessageLoader_Init(param2, 26, param1, param0->unk_34);
        GF_ASSERT(param0->unk_24 != NULL);
    }
}

void ov23_02253E2C(UnkStruct_ov23_02253E2C *param0, BGL *param1, u16 param2, u16 param3)
{
    param0->unk_18 = param1;
    param0->unk_42 = param2;
    param0->unk_40 = param3;
}

MessageLoader *ov23_02253E3C(UnkStruct_ov23_02253E2C *param0)
{
    return param0->unk_24;
}

static void ov23_02253E40(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02253E2C *v0 = param1;

    if (v0->unk_30 < 8) {
        if (Text_IsPrinterActive(v0->unk_30) != 0) {
            return;
        }
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        ov23_02254044(v0);
    }
}

static Strbuf *ov23_02253E6C(UnkStruct_ov23_02253E2C *param0)
{
    Strbuf *v0 = param0->unk_00;

    if (param0->unk_44_1) {
        StringTemplate_Format(param0->unk_28, param0->unk_04, param0->unk_00);
        v0 = param0->unk_04;
        param0->unk_44_1 = 0;
    }

    return v0;
}

static int ov23_02253E90(UnkStruct_ov23_02253E2C *param0, BOOL param1, UnkStruct_ov23_02253F60 param2, int param3)
{
    Strbuf *v0;

    ov23_02253FA4(param0, 0);
    ov23_022421EC();

    if (!BGL_WindowAdded(&param0->unk_08)) {
        BGL_AddWindow(param0->unk_18, &param0->unk_08, 3, 2, 19, 27, 4, 12, param0->unk_40);
    }

    BGL_FillWindow(&param0->unk_08, 15);
    sub_0200E060(&param0->unk_08, 1, param0->unk_42, 10);

    if (param1) {
        param0->unk_20 = SysTask_Start(ov23_02253E40, param0, 100);
    }

    param0->unk_44_0 = 1;
    param0->unk_44_2 = 0;

    v0 = ov23_02253E6C(param0);

    param0->unk_30 = Text_AddPrinterWithParams(&param0->unk_08, FONT_MESSAGE, v0, 0, 0, param0->unk_38, NULL);
    param0->unk_1C = param2;
    param0->unk_3C = param3;

    return param0->unk_30;
}

int ov23_02253F40(UnkStruct_ov23_02253E2C *param0, int param1, BOOL param2, UnkStruct_ov23_02253F60 param3)
{
    MessageLoader_GetStrbuf(param0->unk_24, param1, param0->unk_00);
    return ov23_02253E90(param0, param2, param3, 0);
}

int ov23_02253F60(UnkStruct_ov23_02253E2C *param0, int param1, BOOL param2, UnkStruct_ov23_02253F60 param3)
{
    int v0, v1;

    v1 = param0->unk_38;
    param0->unk_38 = 0;

    v0 = ov23_02253F40(param0, param1, param2, param3);
    param0->unk_30 = 8;
    param0->unk_38 = v1;

    return v0;
}

int ov23_02253F78(UnkStruct_ov23_02253E2C *param0, int param1, BOOL param2, UnkStruct_ov23_02253F60 param3, int param4)
{
    MessageLoader_GetStrbuf(param0->unk_24, param1, param0->unk_00);
    return ov23_02253E90(param0, param2, param3, param4);
}

void ov23_02253F98(UnkStruct_ov23_02253E2C *param0)
{
    param0->unk_44_2 = 1;
}

static void ov23_02253FA4(UnkStruct_ov23_02253E2C *param0, int param1)
{
    if (param0->unk_44_0) {
        param0->unk_44_0 = 0;

        if ((param0->unk_30 < 8) && (Text_IsPrinterActive(param0->unk_30))) {
            Text_RemovePrinter(param0->unk_30);
        }

        switch (param1) {
        case 0:
            sub_0200E084(&param0->unk_08, 1);
            break;
        case 1:
            sub_0200E084(&param0->unk_08, 1);
            sub_0201ACF4(&param0->unk_08);
            BGL_DeleteWindow(&param0->unk_08);
            break;
        case 2:
            sub_0200E084(&param0->unk_08, 1);
            sub_0201AD10(&param0->unk_08);
            BGL_DeleteWindow(&param0->unk_08);
            break;
        }

        param0->unk_30 = 8;

        if (param0->unk_20 != NULL) {
            SysTask_Done(param0->unk_20);
            param0->unk_20 = NULL;
        }

        if (param0->unk_1C) {
            UnkStruct_ov23_02253F60 v0 = param0->unk_1C;
            v0(param0->unk_3C);
        }
    }
}

void ov23_02254044(UnkStruct_ov23_02253E2C *param0)
{
    ov23_02253FA4(param0, 2);
}

void ov23_02254050(UnkStruct_ov23_02253E2C *param0, TrainerInfo *param1)
{
    StringTemplate_SetPlayerName(param0->unk_28, 1, param1);
    param0->unk_44_1 = 1;
}

void ov23_02254068(UnkStruct_ov23_02253E2C *param0, TrainerInfo *param1)
{
    StringTemplate_SetPlayerName(param0->unk_28, 0, param1);
    param0->unk_44_1 = 1;
}

void ov23_02254080(UnkStruct_ov23_02253E2C *param0, int param1)
{
    StringTemplate_SetUndergroundItemNameWithArticle(param0->unk_28, 2, param1);
    param0->unk_44_1 = 1;
}

void ov23_02254098(UnkStruct_ov23_02253E2C *param0, int param1)
{
    StringTemplate_SetUndergroundTrapName(param0->unk_28, 3, param1);
    param0->unk_44_1 = 1;
}

void ov23_022540B0(UnkStruct_ov23_02253E2C *param0, int param1)
{
    StringTemplate_SetUndergroundQuestion(param0->unk_28, 5, param1);
    param0->unk_44_1 = 1;
}

void ov23_022540C8(UnkStruct_ov23_02253E2C *param0, int param1)
{
    StringTemplate_SetUndergroundAnswer(param0->unk_28, 5, param1);
    param0->unk_44_1 = 1;
}

void ov23_022540E0(UnkStruct_ov23_02253E2C *param0, int param1, int param2)
{
    StringTemplate_SetUndergroundAnswer(param0->unk_28, param1, param2);
    param0->unk_44_1 = 1;
}

void ov23_022540F4(UnkStruct_ov23_02253E2C *param0, int param1)
{
    StringTemplate_SetUndergroundGoodsName(param0->unk_28, 2, param1);
    param0->unk_44_1 = 1;
}

void ov23_0225410C(UnkStruct_ov23_02253E2C *param0, int param1, int param2)
{
    StringTemplate_SetNumber(param0->unk_28, param1, param2, 1, 0, 1);
    param0->unk_44_1 = 1;
}

void ov23_0225412C(UnkStruct_ov23_02253E2C *param0, int param1)
{
    StringTemplate_SetNumber(param0->unk_28, 6, param1, 2, 0, 1);
    param0->unk_44_1 = 1;
}

void ov23_02254154(UnkStruct_ov23_02253E2C *param0, int param1, int param2)
{
    StringTemplate_SetNumber(param0->unk_28, param1, param2, 2, 0, 1);
    param0->unk_44_1 = 1;
}

void ov23_02254178(UnkStruct_ov23_02253E2C *param0, int param1)
{
    StringTemplate_SetNumber(param0->unk_28, 6, param1, 6, 0, 1);
    param0->unk_44_1 = 1;
}

void ov23_022541A0(UnkStruct_ov23_02253E2C *param0, int param1, int param2)
{
    StringTemplate_SetUndergroundItemName(param0->unk_28, param1, param2);
    param0->unk_44_1 = 1;
}

void ov23_022541B4(UnkStruct_ov23_02253E2C *param0, int param1, int param2)
{
    StringTemplate_SetUndergroundTrapName(param0->unk_28, param1, param2);
    param0->unk_44_1 = 1;
}

void ov23_022541C8(UnkStruct_ov23_02253E2C *param0, int param1, int param2)
{
    StringTemplate_SetUndergroundGoodsName(param0->unk_28, param1, param2);
    param0->unk_44_1 = 1;
}

void ov23_022541DC(UnkStruct_ov23_02253E2C *param0, int param1, int param2)
{
    StringTemplate_SetUndergroundItemNameWithArticle(param0->unk_28, param1, param2);
    param0->unk_44_1 = 1;
}

void ov23_022541F0(UnkStruct_ov23_02253E2C *param0, int param1, int param2)
{
    StringTemplate_SetUndergroundTrapNameWithArticle(param0->unk_28, param1, param2);
    param0->unk_44_1 = 1;
}

void ov23_02254204(UnkStruct_ov23_02253E2C *param0, int param1)
{
    StringTemplate_CapitalizeArgAtIndex(param0->unk_28, param1);
}

void ov23_02254210(UnkStruct_ov23_02253E2C *param0)
{
    if (param0->unk_30 < 8) {
        if (Text_IsPrinterActive(param0->unk_30)) {
            Text_RemovePrinter(param0->unk_30);
            param0->unk_30 = 8;
        }
    }
}

BOOL ov23_02254238(UnkStruct_ov23_02253E2C *param0)
{
    if (param0->unk_30 == 8) {
        return 0;
    }

    return Text_IsPrinterActive(param0->unk_30);
}

void ov23_02254250(UnkStruct_ov23_02253E2C *param0)
{
    if ((param0->unk_30 < 8) && (!Text_IsPrinterActive(param0->unk_30))) {
        param0->unk_30 = 8;
    }
}
