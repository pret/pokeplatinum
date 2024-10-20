#include "overlay005/ov5_021DC018.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02081CF4.h"

#include "field/field_system.h"
#include "overlay005/struct_ov5_021DC1A4_decl.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "coins.h"
#include "core_sys.h"
#include "font.h"
#include "heap.h"
#include "message.h"
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
#include "unk_0200F174.h"
#include "unk_02018340.h"
#include "unk_0202D05C.h"

struct UnkStruct_ov5_021DC1A4_t {
    FieldSystem *fieldSystem;
    SysTask *unk_04;
    Window unk_08;
    Window *unk_18;
    Strbuf *unk_1C[28];
    MessageLoader *unk_8C;
    StringTemplate *unk_90;
    u8 unk_94;
    u8 unk_95;
    u8 unk_96;
    u8 unk_97_0 : 1;
    u8 unk_97_1 : 1;
    u8 unk_97_2 : 4;
    u8 unk_97_6 : 1;
    u8 unk_97_7 : 1;
    u8 unk_98;
    u8 unk_99;
    u8 unk_9A;
    u8 unk_9B;
    u16 *unk_9C;
    u16 *unk_A0;
    u16 *unk_A4;
    u16 *unk_A8;
    UnkStruct_02081CF4 unk_AC;
    UIControlData *unk_B8;
    ResourceMetadata unk_BC[28];
    UnkStruct_ov84_02240FA8 unk_19C;
    BmpList *unk_1BC;
    u16 unk_1C0;
    u16 unk_1C2;
    ResourceMetadata unk_1C4[28];
    u16 unk_2A4[28];
    u16 unk_2DC;
};

static void ov5_021DC018(FieldSystem *fieldSystem, UnkStruct_ov5_021DC1A4 *param1, u8 param2, u8 param3, u8 param4, u8 param5, u16 *param6, StringTemplate *param7, Window *param8, MessageLoader *param9);
UnkStruct_ov5_021DC1A4 *ov5_021DC150(FieldSystem *fieldSystem, u8 param1, u8 param2, u8 param3, u8 param4, u16 *param5, StringTemplate *param6, Window *param7, MessageLoader *param8);
void ov5_021DC1A4(UnkStruct_ov5_021DC1A4 *param0, u32 param1, u32 param2);
void ov5_021DC1AC(UnkStruct_ov5_021DC1A4 *param0);
void ov5_021DCD94(UnkStruct_ov5_021DC1A4 *param0, u8 param1);
static void ov5_021DCE64(UnkStruct_ov5_021DC1A4 *param0, u8 param1, u8 param2);
static void ov5_021DC290(UnkStruct_ov5_021DC1A4 *param0, u32 param1, u32 param2);
static u32 ov5_021DC300(UnkStruct_ov5_021DC1A4 *param0);
static void ov5_021DC33C(UnkStruct_ov5_021DC1A4 *param0);
static void ov5_021DC3B0(SysTask *param0, void *param1);
UnkStruct_ov5_021DC1A4 *ov5_021DC48C(FieldSystem *fieldSystem, u8 param1, u8 param2, u8 param3, u8 param4, u16 *param5, StringTemplate *param6, Window *param7, MessageLoader *param8);
void ov5_021DC4B0(UnkStruct_ov5_021DC1A4 *param0, u32 param1, u32 param2, u32 param3);
void ov5_021DC4B8(UnkStruct_ov5_021DC1A4 *param0);
void ov5_021DC528(UnkStruct_ov5_021DC1A4 *param0, u16 param1);
static void ov5_021DC530(UnkStruct_ov5_021DC1A4 *param0, u32 param1);
static void ov5_021DC708(UnkStruct_ov5_021DC1A4 *param0, u32 param1, u32 param2, u32 param3);
static u32 ov5_021DC7A8(UnkStruct_ov5_021DC1A4 *param0);
static void ov5_021DC7E4(UnkStruct_ov5_021DC1A4 *param0);
static void ov5_021DC8F4(BmpList *param0, u32 param1, u8 param2);
static void ov5_021DC918(BmpList *param0, u32 param1, u8 param2);
static void ov5_021DC95C(SysTask *param0, void *param1);
static void ov5_021DCA28(UnkStruct_ov5_021DC1A4 *param0);
static void ov5_021DCA90(UnkStruct_ov5_021DC1A4 *param0, u16 param1, u32 param2);
static void ov5_021DCAF4(UnkStruct_ov5_021DC1A4 *param0);
static void ov5_021DCC64(SysTask *param0, void *param1);
void ov5_021DCB24(FieldSystem *fieldSystem, u8 param1, u8 param2, u16 *param3, StringTemplate *param4, u16 param5);
static void ov5_021DCC00(UnkStruct_ov5_021DC1A4 *param0, u16 param1, u8 param2, u8 param3);
u16 ov5_021DCCC8(int param0);
UnkStruct_ov5_021DC1A4 *ov5_021DD250(FieldSystem *fieldSystem, u8 param1, u8 param2, u16 *param3, StringTemplate *param4, u8 param5, u8 param6, u8 param7, u8 param8);
void ov5_021DD3A8(UnkStruct_ov5_021DC1A4 *param0);

static void ov5_021DC018(FieldSystem *fieldSystem, UnkStruct_ov5_021DC1A4 *param1, u8 param2, u8 param3, u8 param4, u8 param5, u16 *param6, StringTemplate *param7, Window *param8, MessageLoader *param9)
{
    int v0;

    if (param9 == NULL) {
        param1->unk_8C = MessageLoader_Init(1, 26, 361, 4);
        param1->unk_97_1 = 1;
    } else {
        param1->unk_8C = param9;
        param1->unk_97_1 = 0;
    }

    param1->unk_90 = param7;
    param1->fieldSystem = fieldSystem;
    param1->unk_A0 = param6;

    *param1->unk_A0 = 0;

    param1->unk_A4 = NULL;
    param1->unk_A8 = NULL;
    param1->unk_97_0 = param5;
    param1->unk_96 = param4;
    param1->unk_97_6 = 0;
    param1->unk_97_7 = 0;
    param1->unk_98 = param2;
    param1->unk_99 = param3;
    param1->unk_9B = 0;
    param1->unk_18 = param8;
    param1->unk_94 = 3;
    param1->unk_2DC = param4;

    for (v0 = 0; v0 < 28; v0++) {
        param1->unk_BC[v0].unk_00 = NULL;
        param1->unk_BC[v0].unk_04 = 0;
    }

    for (v0 = 0; v0 < 28; v0++) {
        param1->unk_1C4[v0].unk_00 = NULL;
        param1->unk_1C4[v0].unk_04 = 0;
        param1->unk_2A4[v0] = 0xff;
    }

    for (v0 = 0; v0 < 28; v0++) {
        param1->unk_1C[v0] = Strbuf_Init((40 * 2), 4);
    }

    *param1->unk_A0 = 0xeeee;

    return;
}

UnkStruct_ov5_021DC1A4 *ov5_021DC150(FieldSystem *fieldSystem, u8 param1, u8 param2, u8 param3, u8 param4, u16 *param5, StringTemplate *param6, Window *param7, MessageLoader *param8)
{
    UnkStruct_ov5_021DC1A4 *v0;
    int v1;

    v0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021DC1A4));

    if (v0 == NULL) {
        return NULL;
    }

    memset(v0, 0, sizeof(UnkStruct_ov5_021DC1A4));
    ov5_021DC018(fieldSystem, v0, param1, param2, param3, param4, param5, param6, param7, param8);

    return v0;
}

void ov5_021DC1A4(UnkStruct_ov5_021DC1A4 *param0, u32 param1, u32 param2)
{
    ov5_021DC290(param0, param1, param2);
    return;
}

void ov5_021DC1AC(UnkStruct_ov5_021DC1A4 *param0)
{
    u32 v0;

    v0 = ov5_021DC300(param0);

    if ((v0 % 8) == 0) {
        v0 = (v0 / 8);
    } else {
        v0 = (v0 / 8) + 1;
    }

    if (param0->unk_97_6) {
        param0->unk_98 -= v0;
    }

    if (param0->unk_97_7) {
        param0->unk_99 -= param0->unk_9B * 2;
    }

    BGL_AddWindow(param0->fieldSystem->unk_08, &param0->unk_08, 3, param0->unk_98, param0->unk_99, v0, param0->unk_9B * 2, 13, ((1 + (10 * 4)) + (10 * 2)));
    sub_0200DAA4(param0->fieldSystem->unk_08, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_Show(&param0->unk_08, 1, 1024 - (18 + 12) - 9, 11);

    ov5_021DC33C(param0);

    param0->unk_B8 = sub_02001B9C(&param0->unk_AC, param0->unk_96, 4);
    param0->unk_04 = SysTask_Start(ov5_021DC3B0, param0, 0);

    return;
}

static void ov5_021DC290(UnkStruct_ov5_021DC1A4 *param0, u32 param1, u32 param2)
{
    int v0;
    void *v1;

    {
        Strbuf *v2 = Strbuf_Init((40 * 2), 4);

        MessageLoader_GetStrbuf(param0->unk_8C, param1, v2);
        StringTemplate_Format(param0->unk_90, param0->unk_1C[param0->unk_9B], v2);
        param0->unk_BC[param0->unk_9B].unk_00 = (const void *)param0->unk_1C[param0->unk_9B];
        Strbuf_Free(v2);
    }

    param0->unk_BC[param0->unk_9B].unk_04 = param2;
    param0->unk_9B++;

    return;
}

static u32 ov5_021DC300(UnkStruct_ov5_021DC1A4 *param0)
{
    int v0;
    u32 v1, v2;

    v1 = 0;
    v2 = 0;

    for (v0 = 0; v0 < param0->unk_9B; v0++) {
        if (param0->unk_BC[v0].unk_00 == NULL) {
            break;
        }

        v1 = Font_CalcStringWidthWithCursorControl(FONT_SYSTEM, (Strbuf *)param0->unk_BC[v0].unk_00);

        if (v2 < v1) {
            v2 = v1;
        }
    }

    return v2 + 12;
}

static void ov5_021DC33C(UnkStruct_ov5_021DC1A4 *param0)
{
    param0->unk_AC.unk_00 = param0->unk_BC;
    param0->unk_AC.unk_04 = &param0->unk_08;
    param0->unk_AC.unk_08 = 0;
    param0->unk_AC.unk_09 = 1;
    param0->unk_AC.unk_0A = param0->unk_9B;
    param0->unk_AC.unk_0B_0 = 0;
    param0->unk_AC.unk_0B_4 = 0;

    if (param0->unk_9B >= 4) {
        param0->unk_AC.unk_0B_6 = 1;
    } else {
        param0->unk_AC.unk_0B_6 = 0;
    }

    return;
}

static void ov5_021DC3B0(SysTask *param0, void *param1)
{
    u32 v0;
    UnkStruct_ov5_021DC1A4 *v1;

    v1 = (UnkStruct_ov5_021DC1A4 *)param1;

    if (v1->unk_94 != 0) {
        v1->unk_94--;
        return;
    }

    if (ScreenWipe_Done() == 0) {
        return;
    }

    v0 = sub_02001BE0(v1->unk_B8);

    switch (v0) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        if (v1->unk_97_0 == 1) {
            *v1->unk_A0 = 0xfffe;
            ov5_021DC424(param1);
        }
        break;
    default:
        *v1->unk_A0 = v0;
        ov5_021DC424(param1);
        break;
    }

    return;
}

void ov5_021DC424(UnkStruct_ov5_021DC1A4 *param0)
{
    int v0;

    Sound_PlayEffect(1500);
    sub_02001BC4(param0->unk_B8, NULL);
    Window_Clear(param0->unk_AC.unk_04, 0);
    BGL_DeleteWindow(param0->unk_AC.unk_04);

    for (v0 = 0; v0 < 28; v0++) {
        Strbuf_Free(param0->unk_1C[v0]);
    }

    if (param0->unk_97_1 == 1) {
        MessageLoader_Free(param0->unk_8C);
    }

    SysTask_Done(param0->unk_04);
    Heap_FreeToHeap(param0);

    return;
}

UnkStruct_ov5_021DC1A4 *ov5_021DC48C(FieldSystem *fieldSystem, u8 param1, u8 param2, u8 param3, u8 param4, u16 *param5, StringTemplate *param6, Window *param7, MessageLoader *param8)
{
    return ov5_021DC150(fieldSystem, param1, param2, param3, param4, param5, param6, param7, param8);
}

void ov5_021DC4B0(UnkStruct_ov5_021DC1A4 *param0, u32 param1, u32 param2, u32 param3)
{
    ov5_021DC708(param0, param1, param2, param3);
    return;
}

void ov5_021DC4B8(UnkStruct_ov5_021DC1A4 *param0)
{
    u32 v0;

    v0 = ov5_021DC7A8(param0);

    if ((v0 % 8) == 0) {
        v0 = (v0 / 8);
    } else {
        v0 = (v0 / 8) + 1;
    }

    if (param0->unk_97_6) {
        param0->unk_98 -= v0;
    }

    if (param0->unk_97_7) {
        if (param0->unk_9B > 8) {
            param0->unk_99 -= 8 * 2;
        } else {
            param0->unk_99 -= param0->unk_9B * 2;
        }
    }

    ov5_021DC530(param0, v0);
    return;
}

void ov5_021DC528(UnkStruct_ov5_021DC1A4 *param0, u16 param1)
{
    u32 v0;

    v0 = param1;
    ov5_021DC530(param0, v0);

    return;
}

static void ov5_021DC530(UnkStruct_ov5_021DC1A4 *param0, u32 param1)
{
    if (param0->unk_9B > 8) {
        BGL_AddWindow(param0->fieldSystem->unk_08, &param0->unk_08, 3, param0->unk_98, param0->unk_99, param1, 8 * 2, 13, ((1 + (10 * 4)) + (10 * 2)));
    } else {
        BGL_AddWindow(param0->fieldSystem->unk_08, &param0->unk_08, 3, param0->unk_98, param0->unk_99, param1, param0->unk_9B * 2, 13, ((1 + (10 * 4)) + (10 * 2)));
    }

    sub_0200DAA4(param0->fieldSystem->unk_08, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_Show(&param0->unk_08, 1, 1024 - (18 + 12) - 9, 11);

    ov5_021DC7E4(param0);
    param0->unk_1BC = sub_0200112C((const UnkStruct_ov84_02240FA8 *)&param0->unk_19C, 0, param0->unk_96, 4);

    ov5_021DCAF4(param0);
    param0->unk_04 = SysTask_Start(ov5_021DC95C, param0, 0);

    return;
}

void ov5_021DC600(UnkStruct_ov5_021DC1A4 *param0, u16 *param1, u16 *param2)
{
    u32 v0;

    v0 = ov5_021DC7A8(param0);

    if ((v0 % 8) == 0) {
        v0 = (v0 / 8);
    } else {
        v0 = (v0 / 8) + 1;
    }

    if (param0->unk_9B > 8) {
        BGL_AddWindow(param0->fieldSystem->unk_08, &param0->unk_08, 3, param0->unk_98, param0->unk_99, v0, 8 * 2, 13, ((1 + (10 * 4)) + (10 * 2)));
    } else {
        BGL_AddWindow(param0->fieldSystem->unk_08, &param0->unk_08, 3, param0->unk_98, param0->unk_99, v0, param0->unk_9B * 2, 13, ((1 + (10 * 4)) + (10 * 2)));
    }

    sub_0200DAA4(param0->fieldSystem->unk_08, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_Show(&param0->unk_08, 1, 1024 - (18 + 12) - 9, 11);

    ov5_021DC7E4(param0);

    param0->unk_A4 = param1;
    param0->unk_A8 = param2;
    param0->unk_2DC = ((*param0->unk_A4) + (*param0->unk_A8));
    param0->unk_1BC = sub_0200112C((const UnkStruct_ov84_02240FA8 *)&param0->unk_19C, *param1, *param2, 4);

    ov5_021DCAF4(param0);

    param0->unk_04 = SysTask_Start(ov5_021DC95C, param0, 0);
    return;
}

static void ov5_021DC708(UnkStruct_ov5_021DC1A4 *param0, u32 param1, u32 param2, u32 param3)
{
    int v0;
    void *v1;

    {
        Strbuf *v2 = Strbuf_Init((40 * 2), 4);

        MessageLoader_GetStrbuf(param0->unk_8C, param1, v2);
        StringTemplate_Format(param0->unk_90, param0->unk_1C[param0->unk_9B], v2);
        param0->unk_1C4[param0->unk_9B].unk_00 = (const void *)param0->unk_1C[param0->unk_9B];
        Strbuf_Free(v2);
    }

    if (param3 == 0xfa) {
        param0->unk_1C4[param0->unk_9B].unk_04 = 0xfffffffd;
    } else {
        param0->unk_1C4[param0->unk_9B].unk_04 = param3;
    }

    param0->unk_2A4[param0->unk_9B] = param2;
    param0->unk_9B++;

    return;
}

static u32 ov5_021DC7A8(UnkStruct_ov5_021DC1A4 *param0)
{
    int v0;
    u32 v1, v2;

    v1 = 0;
    v2 = 0;

    for (v0 = 0; v0 < param0->unk_9B; v0++) {
        if (param0->unk_1C4[v0].unk_00 == NULL) {
            break;
        }

        v1 = Font_CalcStringWidthWithCursorControl(FONT_SYSTEM, (Strbuf *)param0->unk_1C4[v0].unk_00);

        if (v2 < v1) {
            v2 = v1;
        }
    }

    return v2 + 12;
}

static void ov5_021DC7E4(UnkStruct_ov5_021DC1A4 *param0)
{
    param0->unk_19C.unk_00 = param0->unk_1C4;
    param0->unk_19C.unk_04 = ov5_021DC918;
    param0->unk_19C.unk_08 = ov5_021DC8F4;
    param0->unk_19C.unk_0C = &param0->unk_08;
    param0->unk_19C.unk_10 = param0->unk_9B;
    param0->unk_19C.unk_12 = 8;
    param0->unk_19C.unk_14 = 1;
    param0->unk_19C.unk_15 = 12;
    param0->unk_19C.unk_16 = 2;
    param0->unk_19C.unk_17_0 = 1;
    param0->unk_19C.unk_17_4 = 1;
    param0->unk_19C.unk_18_0 = 15;
    param0->unk_19C.unk_18_4 = 2;
    param0->unk_19C.unk_1A_0 = 0;
    param0->unk_19C.unk_1A_3 = 16;
    param0->unk_19C.unk_1A_7 = 1;
    param0->unk_19C.unk_1A_9 = 0;
    param0->unk_19C.unk_1A_15 = 0;
    param0->unk_19C.unk_1C = (void *)param0;

    return;
}

static void ov5_021DC8F4(BmpList *param0, u32 param1, u8 param2)
{
    if (param1 == 0xfffffffd) {
        sub_0200147C(param0, 3, 15, 4);
    } else {
        sub_0200147C(param0, 1, 15, 2);
    }
}

static void ov5_021DC918(BmpList *param0, u32 param1, u8 param2)
{
    u32 v0, v1;
    u16 v2 = 0;
    u16 v3 = 0;
    UnkStruct_ov5_021DC1A4 *v4 = (UnkStruct_ov5_021DC1A4 *)sub_02001504(param0, 19);

    sub_020014DC(param0, &v2, &v3);

    if ((v4->unk_A4 != NULL) && (v4->unk_A8 != NULL)) {
        *v4->unk_A4 = v2;
        *v4->unk_A8 = v3;
    }

    return;
}

static void ov5_021DC95C(SysTask *param0, void *param1)
{
    u16 v0;
    u32 v1;
    UnkStruct_ov5_021DC1A4 *v2;

    v2 = (UnkStruct_ov5_021DC1A4 *)param1;

    if (v2->unk_94 != 0) {
        v2->unk_94--;
        return;
    }

    if (ScreenWipe_Done() == 0) {
        return;
    }

    v1 = sub_02001288(v2->unk_1BC);
    v0 = v2->unk_2DC;

    sub_020014D0(v2->unk_1BC, &v2->unk_2DC);

    if (v0 != v2->unk_2DC) {
        Sound_PlayEffect(1500);
    }

    if ((gCoreSys.pressedKeysRepeatable & PAD_KEY_UP) || (gCoreSys.pressedKeysRepeatable & PAD_KEY_DOWN) || (gCoreSys.pressedKeysRepeatable & PAD_KEY_LEFT) || (gCoreSys.pressedKeysRepeatable & PAD_KEY_RIGHT)) {
        ov5_021DCAF4(v2);
    }

    switch (v1) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        if (v2->unk_97_0 == 1) {
            Sound_PlayEffect(1500);
            *v2->unk_A0 = 0xfffe;
            ov5_021DCA28(param1);
        }
        break;
    default:
        Sound_PlayEffect(1500);
        *v2->unk_A0 = v1;
        ov5_021DCA28(param1);
        break;
    }

    return;
}

static void ov5_021DCA28(UnkStruct_ov5_021DC1A4 *param0)
{
    int v0;

    Sound_PlayEffect(1500);
    sub_02001384(param0->unk_1BC, NULL, NULL);
    Window_Clear(param0->unk_19C.unk_0C, 0);
    BGL_DeleteWindow(&param0->unk_08);

    for (v0 = 0; v0 < 28; v0++) {
        Strbuf_Free(param0->unk_1C[v0]);
    }

    if (param0->unk_97_1 == 1) {
        MessageLoader_Free(param0->unk_8C);
    }

    SysTask_Done(param0->unk_04);
    Heap_FreeToHeap(param0);

    return;
}

static void ov5_021DCA90(UnkStruct_ov5_021DC1A4 *param0, u16 param1, u32 param2)
{
    Strbuf *v0 = Strbuf_Init((40 * 2), 4);
    Strbuf *v1 = Strbuf_Init((40 * 2), 4);

    BGL_FillWindow(param0->unk_18, 15);
    MessageLoader_GetStrbuf(param0->unk_8C, param1, v0);
    StringTemplate_Format(param0->unk_90, v1, v0);
    Text_AddPrinterWithParams(param0->unk_18, FONT_MESSAGE, v1, 0, 0, param2, NULL);
    Strbuf_Free(v0);
    Strbuf_Free(v1);

    return;
}

static void ov5_021DCAF4(UnkStruct_ov5_021DC1A4 *param0)
{
    sub_020014D0(param0->unk_1BC, &param0->unk_1C2);

    if (param0->unk_2A4[param0->unk_1C2] != 0xff) {
        ov5_021DCA90(param0, param0->unk_2A4[param0->unk_1C2], 0);
    }

    return;
}

void ov5_021DCB24(FieldSystem *fieldSystem, u8 param1, u8 param2, u16 *param3, StringTemplate *param4, u16 param5)
{
    u8 v0;
    u32 v1, v2;
    UnkStruct_ov5_021DC1A4 *v3;

    v3 = ov5_021DC150(fieldSystem, param1, param2, 0, 0, param3, param4, NULL, NULL);
    v1 = 8 * Font_GetAttribute(FONT_SYSTEM, FONTATTR_MAX_LETTER_WIDTH);

    if ((v1 % 8) == 0) {
        v1 = (v1 / 8);
    } else {
        v1 = (v1 / 8) + 1;
    }

    BGL_AddWindow(v3->fieldSystem->unk_08, &v3->unk_08, 3, v3->unk_98, v3->unk_99, v1, 4, 13, ((1 + (10 * 4)) + (10 * 2)) + (16 * 10));
    sub_0200DAA4(v3->fieldSystem->unk_08, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_Show(&v3->unk_08, 1, 1024 - (18 + 12) - 9, 11);
    BGL_WindowColor(&v3->unk_08, 15, 0, 0, (v1 * 8), (4 * 8));

    ov5_021DCC00(v3, 15, 0, 0);
    ov5_021DCC00(v3, 16, (8 * 4), 16);

    v3->unk_AC.unk_04 = &v3->unk_08;
    sub_0201A954(&v3->unk_08);
    v3->unk_04 = SysTask_Start(ov5_021DCC64, v3, 0);

    return;
}

static void ov5_021DCC00(UnkStruct_ov5_021DC1A4 *param0, u16 param1, u8 param2, u8 param3)
{
    Strbuf *v0 = Strbuf_Init((40 * 2), 4);
    Strbuf *v1 = Strbuf_Init((40 * 2), 4);

    MessageLoader_GetStrbuf(param0->unk_8C, param1, v0);
    StringTemplate_Format(param0->unk_90, v1, v0);
    Text_AddPrinterWithParams(&param0->unk_08, FONT_SYSTEM, v1, param2, param3, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v0);
    Strbuf_Free(v1);

    return;
}

static void ov5_021DCC64(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov5_021DC1A4 *v1;

    v1 = (UnkStruct_ov5_021DC1A4 *)param1;

    if (*v1->unk_A0 == 0xffff) {
        Window_Clear(v1->unk_AC.unk_04, 0);
        BGL_DeleteWindow(v1->unk_AC.unk_04);

        for (v0 = 0; v0 < 28; v0++) {
            Strbuf_Free(v1->unk_1C[v0]);
        }

        if (v1->unk_97_1 == 1) {
            MessageLoader_Free(v1->unk_8C);
        }

        SysTask_Done(v1->unk_04);
        Heap_FreeToHeap(v1);
    }

    return;
}

u16 ov5_021DCCC8(int param0)
{
    u16 v0;

    switch (param0) {
    case 103:
        v0 = 1;
        break;
    case 104:
        v0 = 0;
        break;
    case 164:
        v0 = 0;
        break;
    case 150:
        v0 = 1;
        break;
    case 112:
        v0 = 1;
        break;
    case 113:
        v0 = 0;
        break;
    case 461:
        v0 = 1;
        break;
    case 462:
        v0 = 0;
        break;
    case 137:
        v0 = 4;
        break;
    case 138:
        v0 = 3;
        break;
    case 139:
        v0 = 2;
        break;
    case 140:
        v0 = 1;
        break;
    case 141:
        v0 = 0;
        break;
    case 566:
        v0 = 5;
        break;
    case 11:
        v0 = 3;
        break;
    case 12:
        v0 = 2;
        break;
    case 13:
        v0 = 1;
        break;
    case 14:
        v0 = 0;
        break;
    default:
        v0 = 1;
    }

    return v0;
}

void ov5_021DCD94(UnkStruct_ov5_021DC1A4 *param0, u8 param1)
{
    u32 v0;
    u8 v1;

    v0 = ov5_021DC300(param0);

    if ((v0 % 8) == 0) {
        v0 = (v0 / 8);
    } else {
        v0 = (v0 / 8) + 1;
    }

    v1 = (param0->unk_9B / param1);

    if ((param0->unk_9B % param1) != 0) {
        v1++;
    }

    BGL_AddWindow(param0->fieldSystem->unk_08, &param0->unk_08, 3, param0->unk_98, param0->unk_99, (v0 * param1), v1 * 2, 13, ((1 + (10 * 4)) + (10 * 2)));
    sub_0200DAA4(param0->fieldSystem->unk_08, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_Show(&param0->unk_08, 1, 1024 - (18 + 12) - 9, 11);

    ov5_021DCE64(param0, param1, v1);

    param0->unk_B8 = sub_02001B9C(&param0->unk_AC, param0->unk_96, 4);
    param0->unk_04 = SysTask_Start(ov5_021DC3B0, param0, 0);

    return;
}

static void ov5_021DCE64(UnkStruct_ov5_021DC1A4 *param0, u8 param1, u8 param2)
{
    param0->unk_AC.unk_00 = param0->unk_BC;
    param0->unk_AC.unk_04 = &param0->unk_08;
    param0->unk_AC.unk_08 = 0;
    param0->unk_AC.unk_09 = param1;
    param0->unk_AC.unk_0A = param2;
    param0->unk_AC.unk_0B_0 = 0;
    param0->unk_AC.unk_0B_4 = 0;

    return;
}

Window *ov5_021DCEB0(FieldSystem *fieldSystem, u8 param1, u8 param2)
{
    Window *v0 = sub_0201A778(4, 1);

    BGL_AddWindow(fieldSystem->unk_08, v0, 3, param1, param2, 10, 4, 13, 1);
    sub_0200DAA4(fieldSystem->unk_08, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_Show(v0, 1, 1024 - (18 + 12) - 9, 11);
    BGL_FillWindow(v0, 15);

    {
        MessageLoader *v1;
        Strbuf *v2;

        v1 = MessageLoader_Init(0, 26, 543, 4);
        v2 = MessageLoader_GetNewStrbuf(v1, 18);

        Text_AddPrinterWithParams(v0, FONT_SYSTEM, v2, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        MessageLoader_Free(v1);
        Strbuf_Free(v2);
    }

    ov5_021DCF6C(fieldSystem, v0);

    return v0;
}

void ov5_021DCF58(Window *param0)
{
    Window_Clear(param0, 0);
    sub_0201A928(param0, 1);
}

void ov5_021DCF6C(FieldSystem *fieldSystem, Window *param1)
{
    MessageLoader *v0;
    StringTemplate *v1;
    Strbuf *v2;
    Strbuf *v3;
    u32 v4;
    u32 v5;

    BGL_WindowColor(param1, 15, 0, 16, 10 * 8, 4 * 8 - 16);

    v0 = MessageLoader_Init(0, 26, 543, 4);
    v1 = StringTemplate_Default(4);
    v2 = Strbuf_Init(16, 4);
    v3 = MessageLoader_GetNewStrbuf(v0, 19);
    v4 = TrainerInfo_Money(SaveData_GetTrainerInfo(fieldSystem->saveData));

    StringTemplate_SetNumber(v1, 0, v4, 6, 1, 1);
    StringTemplate_Format(v1, v2, v3);

    v5 = (10 * 8) - Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

    Text_AddPrinterWithParams(param1, FONT_SYSTEM, v2, v5, 16, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v3);
    Strbuf_Free(v2);
    StringTemplate_Free(v1);
    MessageLoader_Free(v0);
    sub_0201A9A4(param1);
}

Window *ov5_021DD020(FieldSystem *fieldSystem, u8 param1, u8 param2)
{
    Window *v0 = sub_0201A778(4, 1);

    BGL_AddWindow(fieldSystem->unk_08, v0, 3, param1, param2, 10, 2, 13, (1 + (10 * 4)));
    sub_0200DAA4(fieldSystem->unk_08, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_Show(v0, 1, 1024 - (18 + 12) - 9, 11);

    ov5_021DD098(fieldSystem, v0);

    return v0;
}

void ov5_021DD084(Window *param0)
{
    Window_Clear(param0, 0);
    sub_0201A928(param0, 1);
}

void ov5_021DD098(FieldSystem *fieldSystem, Window *param1)
{
    MessageLoader *v0;
    StringTemplate *v1;
    Strbuf *v2;
    Strbuf *v3;
    u32 v4;
    u32 v5;

    BGL_FillWindow(param1, 15);

    v0 = MessageLoader_Init(0, 26, 361, 4);
    v1 = StringTemplate_Default(4);
    v2 = Strbuf_Init(16, 4);
    v3 = MessageLoader_GetNewStrbuf(v0, 197);
    v4 = Coins_GetValue(SaveData_GetCoins(fieldSystem->saveData));

    StringTemplate_SetNumber(v1, 0, v4, 5, 1, 1);
    StringTemplate_Format(v1, v2, v3);

    v5 = (10 * 8) - Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

    Text_AddPrinterWithParams(param1, FONT_SYSTEM, v2, v5, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v3);
    Strbuf_Free(v2);
    StringTemplate_Free(v1);
    MessageLoader_Free(v0);
    sub_0201A9A4(param1);
}

Window *ov5_021DD140(FieldSystem *fieldSystem, u8 param1, u8 param2)
{
    Window *v0 = sub_0201A778(4, 1);

    BGL_AddWindow(fieldSystem->unk_08, v0, 3, param1, param2, 10, 2, 13, (1 + (10 * 4)));
    sub_0200DAA4(fieldSystem->unk_08, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_Show(v0, 1, 1024 - (18 + 12) - 9, 11);

    ov5_021DD1A4(fieldSystem, v0);

    return v0;
}

void ov5_021DD1A4(FieldSystem *fieldSystem, Window *param1)
{
    MessageLoader *v0;
    StringTemplate *v1;
    Strbuf *v2;
    Strbuf *v3;
    u16 v4;
    u32 v5;

    BGL_FillWindow(param1, 15);

    v0 = MessageLoader_Init(0, 26, 361, 4);
    v1 = StringTemplate_Default(4);
    v2 = Strbuf_Init(16, 4);
    v3 = MessageLoader_GetNewStrbuf(v0, 230);
    v4 = sub_0202D230(sub_0202D750(fieldSystem->saveData), 0, 0);

    StringTemplate_SetNumber(v1, 0, v4, 5, 1, 1);
    StringTemplate_Format(v1, v2, v3);

    v5 = (10 * 8) - Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

    Text_AddPrinterWithParams(param1, FONT_SYSTEM, v2, v5, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v3);
    Strbuf_Free(v2);
    StringTemplate_Free(v1);
    MessageLoader_Free(v0);
    sub_0201A9A4(param1);
}

UnkStruct_ov5_021DC1A4 *ov5_021DD250(FieldSystem *fieldSystem, u8 param1, u8 param2, u16 *param3, StringTemplate *param4, u8 param5, u8 param6, u8 param7, u8 param8)
{
    UnkStruct_ov5_021DC1A4 *v0;

    v0 = ov5_021DC150(fieldSystem, param1, param2, 0, 0, param3, param4, NULL, NULL);

    BGL_AddWindow(v0->fieldSystem->unk_08, &v0->unk_08, 3, v0->unk_98, v0->unk_99, 10, 16, 13, ((1 + (10 * 4)) + (10 * 2)));
    sub_0200DAA4(v0->fieldSystem->unk_08, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_Show(&v0->unk_08, 1, 1024 - (18 + 12) - 9, 11);
    BGL_WindowColor(&v0->unk_08, 15, 0, 0, (10 * 8), (16 * 8));

    ov5_021DCC00(v0, 273, 0, 0);
    StringTemplate_SetNumber(param4, 0, param5, 3, 1, 1);
    ov5_021DCC00(v0, 277, 0, (0 + 16));

    ov5_021DCC00(v0, 274, 0, 32);
    StringTemplate_SetNumber(param4, 0, param6, 3, 1, 1);
    ov5_021DCC00(v0, 277, 0, (32 + 16));

    ov5_021DCC00(v0, 275, 0, 64);
    StringTemplate_SetNumber(param4, 0, param7, 3, 1, 1);
    ov5_021DCC00(v0, 277, 0, (64 + 16));

    ov5_021DCC00(v0, 276, 0, 96);
    StringTemplate_SetNumber(param4, 0, param8, 3, 1, 1);
    ov5_021DCC00(v0, 277, 0, (96 + 16));

    v0->unk_AC.unk_04 = &v0->unk_08;
    sub_0201A954(&v0->unk_08);

    return v0;
}

void ov5_021DD3A8(UnkStruct_ov5_021DC1A4 *param0)
{
    int v0;

    Window_Clear(param0->unk_AC.unk_04, 0);
    BGL_DeleteWindow(param0->unk_AC.unk_04);

    for (v0 = 0; v0 < 28; v0++) {
        Strbuf_Free(param0->unk_1C[v0]);
    }

    if (param0->unk_97_1 == 1) {
        MessageLoader_Free(param0->unk_8C);
    }

    Heap_FreeToHeap(param0);
    return;
}

void ov5_021DD3F4(UnkStruct_ov5_021DC1A4 *param0, BOOL param1)
{
    param0->unk_97_6 = param1;
}

void ov5_021DD410(UnkStruct_ov5_021DC1A4 *param0, BOOL param1)
{
    param0->unk_97_7 = param1;
}
