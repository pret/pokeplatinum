#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0202442C_decl.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0202DBAC.h"
#include "struct_defs/struct_0203CC84.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay084/struct_ov84_02240FA8.h"
#include "overlay097/ov97_0222D04C.h"
#include "overlay097/ov97_02232054.h"
#include "overlay097/ov97_02237694.h"
#include "overlay097/struct_ov97_0222D04C.h"
#include "overlay097/struct_ov97_0222D250.h"
#include "overlay097/union_ov97_0222D2B0.h"
#include "savedata/save_table.h"

#include "buffer_manager.h"
#include "cell_actor.h"
#include "communication_information.h"
#include "communication_system.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "message_util.h"
#include "overlay_manager.h"
#include "pokemon_icon.h"
#include "save_player.h"
#include "savedata.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02000C88.h"
#include "unk_0200112C.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02013A04.h"
#include "unk_02018340.h"
#include "unk_0202DAB4.h"
#include "unk_02033200.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"

FS_EXTERN_OVERLAY(overlay97);

typedef struct {
    u16 unk_00[2][768];
    BufferManager *bufferManager;
    SysTask *unk_C04;
    fx32 unk_C08;
    fx32 unk_C0C;
    BOOL unk_C10;
    BOOL unk_C14;
} UnkStruct_ov97_02231318;

typedef struct {
    int unk_00;
    UnkStruct_ov97_0222D04C unk_04;
    BGL *unk_2A5C;
    StringTemplate *unk_2A60;
    MessageLoader *unk_2A64;
    Window unk_2A68[20];
    int unk_2BA8[20];
    int unk_2BF8;
    void *unk_2BFC;
    MysteryGift *unk_2C00;
    SaveData *unk_2C04;
    Options *unk_2C08;
    int unk_2C0C;
    int unk_2C10;
    UnkStruct_0202DBAC *unk_2C14[3];
    int unk_2C20;
    int unk_2C24;
    BmpList *unk_2C28;
    ResourceMetadata *unk_2C2C;
    Window unk_2C30;
    Window unk_2C40;
    int unk_2C50;
    int unk_2C54;
    u32 unk_2C58[4];
    TrainerInfo *unk_2C68[5];
    int unk_2C7C[5];
    int unk_2C90;
    int unk_2C94;
    void (*unk_2C98)(void *);
    int unk_2C9C;
    int unk_2CA0;
    CellActorCollection *unk_2CA4;
    UnkStruct_0200C738 unk_2CA8;
    SpriteResourceCollection *unk_2E34[6];
    SpriteResource *unk_2E4C[6];
    CellActorResourceData unk_2E64;
    CellActor *unk_2E88[2];
    CellActor *unk_2E90[3];
    UnkUnion_ov97_0222D2B0 unk_2E9C;
    UnkStruct_ov97_02231318 unk_31F4;
    void (*unk_3E0C)(void *);
    int unk_3E10;
    void *unk_3E14;
} UnkStruct_ov97_02230868;

typedef struct {
    int unk_00;
    u32 unk_04;
} UnkStruct_ov97_0223E640;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    u32 unk_20;

    // clang-format off
    BOOL (* unk_24)(UnkStruct_ov97_02230868 *, Window *, u32);
    // clang-format on

    int unk_28;
    int unk_2C;
} UnkStruct_ov97_0223E680;

void Strbuf_CopyNumChars(Strbuf *param0, const u16 *param1, u32 param2);
MysteryGift *SaveData_MysteryGift(SaveData *param0);
void ov97_02231FFC(BGL *param0, void *, int param2);
static int ov97_02230728(OverlayManager *param0);
static int ov97_022306F4(OverlayManager *param0);
static int ov97_02230834(OverlayManager *param0);
static int ov97_02230778(OverlayManager *param0);
static void ov97_02230868(UnkStruct_ov97_02230868 *param0);
static BOOL ov97_022308B0(UnkStruct_ov97_02230868 *param0, Window *param1, TextColor param2);
static BOOL ov97_022308B4(UnkStruct_ov97_02230868 *param0, Window *param1, TextColor param2);
static BOOL ov97_02230904(UnkStruct_ov97_02230868 *param0, Window *param1, TextColor param2);
static BOOL ov97_0223097C(UnkStruct_ov97_02230868 *param0, Window *param1, TextColor param2);
static BOOL ov97_022309E4(UnkStruct_ov97_02230868 *param0, Window *param1, TextColor param2);
static BOOL ov97_02230A34(UnkStruct_ov97_02230868 *param0, Window *param1, TextColor param2);
static BOOL ov97_02230AB0(UnkStruct_ov97_02230868 *param0, Window *param1, TextColor param2);
static BOOL ov97_02230B94(UnkStruct_ov97_02230868 *param0, Window *param1, TextColor param2);
static BOOL ov97_02230BAC(UnkStruct_ov97_02230868 *param0, Window *param1, TextColor param2);
static BOOL ov97_02230BF0(UnkStruct_ov97_02230868 *param0, Window *param1, TextColor param2);
static int ov97_02231CA0(UnkStruct_ov97_02230868 *param0, Window *param1);
static void ov97_02231E78(UnkStruct_ov97_02230868 *param0, Window *param1, int param2);
static void ov97_02231F1C(UnkStruct_ov97_02230868 *param0, int *param1, int param2);
static int ov97_02230E04(UnkStruct_ov97_02230868 *param0, Window *param1, int param2, int param3);
static void ov97_02230F98(UnkStruct_ov97_02230868 *param0, int param1);
static int ov97_02230F20(UnkStruct_ov97_02230868 *param0, int param1, int param2);
static void ov97_02230C44(UnkStruct_ov97_02230868 *param0, int param1, int param2);
static int ov97_02231BD8(UnkStruct_ov97_02230868 *param0);
static void ov97_022310FC(UnkStruct_ov97_02230868 *param0);
static void ov97_02230438(UnkStruct_ov97_02230868 *param0);
static int ov97_02231C84(UnkStruct_ov97_02230868 *param0);

UnkStruct_ov97_0223E680 Unk_ov97_0223E680[] = {
    { 0x0, 0x2, 0x2, 0xC, 0x2, 0x1, 0x10200, -1, 0x24, ov97_022308B0 },
    { 0x0, 0x6, 0x11, 0xB, 0x2, 0x1, 0xF0200, -1, 0x28, ov97_022308B0 },
    { 0x0, 0x2, 0x9, 0x1C, 0x4, 0x1, 0x10200, -1, NULL, ov97_02230904 },
    { 0x0, 0x2, 0x6, 0x1C, 0x2, 0x1, 0xF0200, -1, NULL, ov97_022308B4 },
    { 0x0, 0x12, 0x11, 0xB, 0x2, 0x1, 0x10200, -1, 0x31, ov97_0223097C },
    { 0x1, 0x2, 0x3, 0x1C, 0xA, 0x1, 0x10200, -1, NULL, ov97_022309E4 },
    { 0x1, 0x2, 0xE, 0x1C, 0x4, 0x1, 0x10200, -1, 0x29, ov97_02230A34 },
    { 0x2, 0x2, 0x13, 0x1B, 0x4, 0x1, 0x10200, 0xF, 0x24, ov97_022308B0 },
    { 0x2, 0x12, 0x9, 0xC, 0x8, 0x1, 0x10200, 0x5, NULL, ov97_02230AB0 },
    { 0x2, 0x18, 0xD, 0x6, 0x4, 0x1, 0x10200, 0x5, NULL, ov97_02230B94 },
    { 0x2, 0x18, 0xD, 0x6, 0x4, 0x1, 0x10200, 0x5, NULL, ov97_02230BAC },
    { 0x3, 0x1, 0x1, 0x19, 0x2, 0x0, 0xE0F00, -1, 0x34, ov97_022308B0, 0x7, 0x0 },
    { 0x3, 0x17, 0x7, 0x9, 0x4, 0x0, 0xE0F00, -1, 0x37, ov97_022308B0, 0x2, 0x0 },
    { 0x3, 0x6, 0x14, 0x6, 0x2, 0x0, 0xE0F00, -1, 0x39, ov97_022308B0, -1, 0x1 },
    { 0x3, 0x14, 0x14, 0x6, 0x2, 0x0, 0xE0F00, -1, 0x3A, ov97_022308B0, -1, 0x1 },
    { 0x3, 0x19, 0xC, 0x4, 0x2, 0x1, 0x10200, -1, 0x38, ov97_02230BF0 },
    { 0x3, 0x2, 0x5, 0x13, 0xB, 0x0, 0x10200, -1, NULL, ov97_022308B0 },
    { 0x2, 0x2, 0x13, 0x1B, 0x4, 0x1, 0x10200, 0xE, 0x3B, ov97_022308B0 },
    { 0x2, 0x2, 0x13, 0x1B, 0x4, 0x1, 0x10200, 0xE, 0x3C, ov97_022308B0 }
};

UnkStruct_ov97_0223E640 Unk_ov97_0223E640[] = {
    { 0x2A, (u32)6 },
    { 0x2B, (u32)ov97_022306F4 },
    { 0x2C, (u32)ov97_02230728 },
    { 0x2D, (u32)11 }
};

UnkStruct_ov97_0223E640 Unk_ov97_0223E610[] = {
    { 0x40, (u32)ov97_02230778 },
    { 0x41, (u32)ov97_02230834 }
};

UnkStruct_ov97_0223E640 Unk_ov97_0223E630[] = {
    { 0x40, (u32)14 },
    { 0x41, (u32)ov97_02230834 }
};

UnkStruct_ov97_0223E640 Unk_ov97_0223E620[] = {
    { 0x40, (u32)15 },
    { 0x41, (u32)ov97_02230834 }
};

static UnkStruct_ov84_02240FA8 Unk_ov97_0223E660 = {
    NULL,
    ov97_022383C4,
    NULL,
    NULL,
    0x0,
    0x4,
    0x0,
    0xC,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x1,
    0x0,
    0x0
};

static void ov97_02230410(UnkStruct_ov97_02230868 *param0)
{
    ov97_02230438(param0);
    ov97_02237A20();
    ov97_02237A74();
    ov97_02237B0C(116, 15, 12, 14, 13, 0);
}

static void ov97_02230438(UnkStruct_ov97_02230868 *param0)
{
    if (param0->unk_2E88[0]) {
        CellActor_Delete(param0->unk_2E88[0]);
    }

    if (param0->unk_2E88[1]) {
        CellActor_Delete(param0->unk_2E88[1]);
    }

    param0->unk_2E88[0] = param0->unk_2E88[1] = NULL;

    if (param0->unk_2E90[0]) {
        CellActor_Delete(param0->unk_2E90[0]);
    }

    if (param0->unk_2E90[1]) {
        CellActor_Delete(param0->unk_2E90[1]);
    }

    if (param0->unk_2E90[2]) {
        CellActor_Delete(param0->unk_2E90[2]);
    }

    param0->unk_2E90[0] = param0->unk_2E90[1] = param0->unk_2E90[2] = NULL;
    ov97_02237DA0();
}

static void ov97_022304AC(UnkStruct_ov97_02230868 *param0)
{
    param0->unk_3E10 = 0;
    param0->unk_2E88[0] = ov97_02237D14(0, param0->unk_2E88[0], 72, 168, 1);

    CellActor_SetExplicitPriority(param0->unk_2E88[0], 2);
    param0->unk_2E88[1] = ov97_02237D14(0, param0->unk_2E88[1], 184, 168, 0);
    CellActor_SetExplicitPriority(param0->unk_2E88[1], 2);
}

static void ov97_02230500(Window *param0, u8 param1)
{
    if (BGL_WindowAdded(param0) == 1) {
        Window_Clear(param0, param1);
    }
}

static void ov97_02230518(Window *param0, u8 param1)
{
    if (BGL_WindowAdded(param0) == 1) {
        sub_0200E084(param0, param1);
    }
}

static void ov97_02230530(UnkStruct_ov97_02230868 *param0, UnkStruct_ov97_0223E640 *param1, int param2, Window *param3, int param4)
{
    int v0;
    UnkStruct_ov84_02240FA8 v1;

    if (param0->unk_2C2C) {
        sub_02013A3C(param0->unk_2C2C);
    }

    if (param0->unk_2C28) {
        sub_02001384(param0->unk_2C28, NULL, NULL);
    }

    param0->unk_2C2C = sub_02013A04(param2, 87);
    param0->unk_2A64 = MessageLoader_Init(0, 26, 421, 87);

    for (v0 = 0; v0 < param2; v0++) {
        sub_02013A4C(param0->unk_2C2C, param0->unk_2A64, param1[v0].unk_00, param1[v0].unk_04);
    }

    MessageLoader_Free(param0->unk_2A64);

    v1 = Unk_ov97_0223E660;

    v1.unk_00 = param0->unk_2C2C;
    v1.unk_10 = param2;
    v1.unk_0C = param3;

    param0->unk_2C28 = sub_0200112C(&v1, 0, param4, 87);
}

static void ov97_022305EC(Window *param0, int param1)
{
    Strbuf *v0;
    MessageLoader *v1 = MessageLoader_Init(1, 26, 421, 87);
    StringTemplate *v2 = StringTemplate_Default(87);

    BGL_FillWindow(param0, Font_GetAttribute(FONT_MESSAGE, FONTATTR_BG_COLOR));

    v0 = MessageUtil_ExpandedStrbuf(v2, v1, param1, 87);
    Text_AddPrinterWithParamsAndColor(param0, FONT_MESSAGE, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    sub_0201A954(param0);

    Strbuf_Free(v0);
    MessageLoader_Free(v1);
    StringTemplate_Free(v2);
}

static void ov97_02230664(BGL *param0)
{
    sub_02006E84(116, 11, 0, 16 * 2 * 15, 16 * 2, 87);
    sub_02006E84(116, 16, 0, 16 * 2 * 12, 16 * 2, 87);
    sub_02006E3C(116, 17, param0, 1, 0, 6 * 16 * 0x20, 1, 87);
    sub_02006E60(116, 18, param0, 1, 0, 32 * 24 * 2, 1, 87);
    sub_02019E2C(param0, 1, 0, 0, 32, 24, 12);
    sub_02019448(param0, 1);
}

static int ov97_022306F4(OverlayManager *param0)
{
    UnkStruct_ov97_02230868 *v0 = OverlayManager_Data(param0);

    ov97_02230868(v0);
    ov97_022305EC(&v0->unk_2C30, 46);
    ov97_02230E04(v0, &v0->unk_2C40, 7 + 3, v0->unk_2C50);

    return 13;
}

static int ov97_02230728(OverlayManager *param0)
{
    UnkStruct_ov97_02230868 *v0 = OverlayManager_Data(param0);

    ov97_02230868(v0);

    if (sub_0202DDA8(v0->unk_2C00, v0->unk_2C20) == 1) {
        ov97_022305EC(&v0->unk_2C30, 62);
    } else {
        ov97_022305EC(&v0->unk_2C30, 61);
    }

    ov97_02230E04(v0, &v0->unk_2C40, 7 + 2, v0->unk_2C50);
    return 12;
}

static int ov97_02230778(OverlayManager *param0)
{
    UnkStruct_ov97_02230868 *v0 = OverlayManager_Data(param0);

    ov97_02230868(v0);
    ov97_022305EC(&v0->unk_2C30, 63);

    v0->unk_3E14 = sub_0200E7FC(&v0->unk_2C30, ((1 + 9) + 9));

    if (sub_0202DDA8(v0->unk_2C00, v0->unk_2C20) == 1) {
        sub_0202DC7C(v0->unk_2C00, v0->unk_2C20);
    } else {
        sub_0202DCB8(v0->unk_2C00, v0->unk_2C20);
    }

    SaveData_Save(v0->unk_2C04);
    DeleteWaitDial(v0->unk_3E14);

    if (sub_0202DD88(v0->unk_2C00) == 0) {
        return 26;
    }

    v0->unk_2C20 = ov97_02230F20(v0, v0->unk_2C20, 1);

    ov97_022305EC(&v0->unk_2C30, 36);
    ov97_02230E04(v0, &v0->unk_2C40, 7 + 1, v0->unk_2C50);
    ov97_02230C44(v0, 1, 0);

    return 5;
}

static int ov97_02230834(OverlayManager *param0)
{
    UnkStruct_ov97_02230868 *v0 = OverlayManager_Data(param0);

    ov97_02230868(v0);
    ov97_022305EC(&v0->unk_2C30, 36);
    ov97_02230E04(v0, &v0->unk_2C40, 7 + 1, v0->unk_2C50);

    return 5;
}

static void ov97_02230868(UnkStruct_ov97_02230868 *param0)
{
    sub_02013A3C(param0->unk_2C2C);
    param0->unk_2C2C = NULL;
    sub_02001384(param0->unk_2C28, NULL, NULL);
    param0->unk_2C28 = NULL;
    ov97_02230500(&param0->unk_2C40, 0);
    sub_0201ACF4(&param0->unk_2C40);
    BGL_DeleteWindow(&param0->unk_2C40);
}

static BOOL ov97_022308B0(UnkStruct_ov97_02230868 *param0, Window *param1, TextColor param2)
{
    return 1;
}

static BOOL ov97_022308B4(UnkStruct_ov97_02230868 *param0, Window *param1, TextColor param2)
{
    Strbuf *v0;

    v0 = Strbuf_Init(36 + 1, param0->unk_00);

    Strbuf_CopyNumChars(v0, param0->unk_2C14[param0->unk_2C20]->unk_104.unk_00, 36);
    Text_AddPrinterWithParamsAndColor(param1, FONT_MESSAGE, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, param2, NULL);
    Strbuf_Free(v0);

    return 1;
}

static BOOL ov97_02230904(UnkStruct_ov97_02230868 *param0, Window *param1, TextColor param2)
{
    Strbuf *v0;
    UnkStruct_0202DBAC *v1 = param0->unk_2C14[param0->unk_2C20];
    int v2;

    if (v1->unk_104.unk_4E_3 == 0) {
        v2 = 39;
    } else {
        if ((param0->unk_2C00 == NULL) || (sub_0202DDA8(param0->unk_2C00, param0->unk_2C20) == 1)) {
            v2 = 37;
        } else {
            v2 = 38;
        }
    }

    v0 = MessageUtil_ExpandedStrbuf(param0->unk_2A60, param0->unk_2A64, v2, param0->unk_00);

    Text_AddPrinterWithParamsAndColor(param1, FONT_MESSAGE, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, param2, NULL);
    Strbuf_Free(v0);

    return 1;
}

static BOOL ov97_0223097C(UnkStruct_ov97_02230868 *param0, Window *param1, u32 param2)
{
    RTCDate v0;

    RTC_ConvertDayToDate(&v0, param0->unk_2C14[param0->unk_2C20]->unk_354);

    StringTemplate_SetNumber(param0->unk_2A60, 0, v0.year + 2000, 4, 2, 1);
    StringTemplate_SetMonthName(param0->unk_2A60, 1, v0.month);
    StringTemplate_SetNumber(param0->unk_2A60, 2, v0.day, 2, 2, 1);

    return 1;
}

static BOOL ov97_022309E4(UnkStruct_ov97_02230868 *param0, Window *param1, u32 param2)
{
    Strbuf *v0;

    v0 = Strbuf_Init(250 + 1, 87);

    Strbuf_CopyNumChars(v0, param0->unk_2C14[param0->unk_2C20]->unk_154, 250);
    Text_AddPrinterWithParamsAndColor(param1, FONT_MESSAGE, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, param2, NULL);
    Strbuf_Free(v0);

    return 0;
}

static BOOL ov97_02230A34(UnkStruct_ov97_02230868 *param0, Window *param1, u32 param2)
{
    if (param0->unk_2C14[param0->unk_2C20]->unk_348 == 255) {
        Strbuf *v0;

        v0 = MessageUtil_ExpandedStrbuf(param0->unk_2A60, param0->unk_2A64, 51, 87);
        Text_AddPrinterWithParamsAndColor(param1, FONT_MESSAGE, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, param2, NULL);
        Strbuf_Free(v0);
        return 0;
    } else if (param0->unk_2C14[param0->unk_2C20]->unk_348) {
        StringTemplate_SetNumber(param0->unk_2A60, 0, param0->unk_2C14[param0->unk_2C20]->unk_348, 3, 0, 1);
        return 1;
    } else {
        return 0;
    }
}

static BOOL ov97_02230AB0(UnkStruct_ov97_02230868 *param0, Window *param1, u32 param2)
{
    UnkStruct_ov97_0223E640 v0[4];
    UnkStruct_ov97_0223E680 *v1;
    int v2 = 0;

    v0[v2++] = Unk_ov97_0223E640[0];

    if (param0->unk_2C14[param0->unk_2C20]->unk_348) {
        v0[v2++] = Unk_ov97_0223E640[1];
    }

    v0[v2++] = Unk_ov97_0223E640[2];
    v0[v2++] = Unk_ov97_0223E640[3];

    v1 = param0->unk_2BFC;

    sub_0201ACF4(param1);
    BGL_DeleteWindow(param1);
    BGL_AddWindow(param0->unk_2A5C, param1, 2, v1->unk_04, v1->unk_08 + (4 - v2) * 2, v1->unk_0C, v1->unk_10 - (4 - v2) * 2, 15, param0->unk_2BF8);
    ov97_02230530(param0, v0, v2, param1, 0);

    return 1;
}

static BOOL ov97_02230B94(UnkStruct_ov97_02230868 *param0, Window *param1, u32 param2)
{
    ov97_02230530(param0, Unk_ov97_0223E610, 2, param1, 1);
    return 1;
}

static BOOL ov97_02230BAC(UnkStruct_ov97_02230868 *param0, Window *param1, u32 param2)
{
    ov97_02230530(param0, Unk_ov97_0223E630, 2, param1, 0);
    return 1;
}

static BOOL ov97_02230BC4(UnkStruct_ov97_02230868 *param0, Window *param1, u32 param2)
{
    ov97_022305EC(&param0->unk_2C30, 2);
    ov97_02230530(param0, Unk_ov97_0223E620, 2, param1, 0);

    return 1;
}

static BOOL ov97_02230BF0(UnkStruct_ov97_02230868 *param0, Window *param1, u32 param2)
{
    StringTemplate_SetNumber(param0->unk_2A60, 0, 0, 1, 1, 1);
    return 1;
}

static void ov97_02230C10(UnkStruct_ov97_02230868 *param0, int param1, int param2, int *param3)
{
    sub_0200F174(0, param1, param1, 0x0, 6, 1, 87);

    if (param3) {
        *param3 = 27;
    }

    param0->unk_2CA0 = param2;
}

static void ov97_02230C44(UnkStruct_ov97_02230868 *param0, int param1, int param2)
{
    int v0, v1;
    Strbuf *v2;
    TextColor v3;
    UnkStruct_ov97_0223E680 *v4 = Unk_ov97_0223E680;

    param0->unk_2A64 = MessageLoader_Init(1, 26, 421, param0->unk_00);
    param0->unk_2A60 = StringTemplate_Default(param0->unk_00);
    param0->unk_2C24 = param2;

    ov97_02230F98(param0, param2);

    for (v0 = 0; v0 < sizeof(Unk_ov97_0223E680) / sizeof(UnkStruct_ov97_0223E680); v0++) {
        if ((v4[v0].unk_00 != param2) && (v4[v0].unk_00 != 2)) {
            if (param0->unk_2A68[v0].unk_00) {
                sub_0201ACF4(&param0->unk_2A68[v0]);
                BGL_DeleteWindow(&param0->unk_2A68[v0]);
            }
        }
    }

    v1 = (((1 + 9) + 9) + (18 + 12));

    for (v0 = 0; v0 < sizeof(Unk_ov97_0223E680) / sizeof(UnkStruct_ov97_0223E680); v0++) {
        if (v4[v0].unk_00 == param2) {
            if (param0->unk_2A68[v0].unk_00 == NULL) {
                param0->unk_2BA8[v0] = v1;
                BGL_AddWindow(param0->unk_2A5C, &param0->unk_2A68[v0], 0, v4[v0].unk_04, v4[v0].unk_08, v4[v0].unk_0C, v4[v0].unk_10, 15, v1);
            }

            BGL_FillWindow(&param0->unk_2A68[v0], Font_GetAttribute(v4[v0].unk_14, v4[v0].unk_1C));
            v3 = v4[v0].unk_18;

            if (v4[v0].unk_24(param0, &param0->unk_2A68[v0], v3) == 1) {
                if (v4[v0].unk_20) {
                    v2 = MessageUtil_ExpandedStrbuf(param0->unk_2A60, param0->unk_2A64, v4[v0].unk_20, param0->unk_00);

                    {
                        u32 v5 = (v4[v0].unk_28 == -1) ? Font_CalcCenterAlignment(v4[v0].unk_14, v2, 0, v4[v0].unk_0C * 8) : v4[v0].unk_28;
                        Text_AddPrinterWithParamsAndColor(&param0->unk_2A68[v0], v4[v0].unk_14, v2, v5, v4[v0].unk_2C, TEXT_SPEED_NO_TRANSFER, v3, NULL);
                    }

                    Strbuf_Free(v2);
                }
            }

            sub_0201A954(&param0->unk_2A68[v0]);
            v1 += v4[v0].unk_0C * v4[v0].unk_10;
        }
    }

    MessageLoader_Free(param0->unk_2A64);
    StringTemplate_Free(param0->unk_2A60);

    if (param2 == 0) {
        ov97_022310FC(param0);
    }
}

static int ov97_02230E04(UnkStruct_ov97_02230868 *param0, Window *param1, int param2, int param3)
{
    Strbuf *v0;
    u32 v1;
    UnkStruct_ov97_0223E680 *v2 = Unk_ov97_0223E680 + param2;

    if (param1->unk_00 == NULL) {
        BGL_AddWindow(param0->unk_2A5C, param1, 2, v2->unk_04, v2->unk_08, v2->unk_0C, v2->unk_10, 15, param3);
    }

    BGL_FillWindow(param1, v2->unk_1C);

    if (v2->unk_20) {
        param0->unk_2A64 = MessageLoader_Init(1, 26, 421, 87);
        param0->unk_2A60 = StringTemplate_Default(87);
    }

    param0->unk_2BF8 = param3;
    param0->unk_2BFC = v2;

    v2->unk_24(param0, param1, 66048);

    if (v2->unk_20) {
        v0 = MessageUtil_ExpandedStrbuf(param0->unk_2A60, param0->unk_2A64, v2->unk_20, 87);

        Text_AddPrinterWithParamsAndColor(param1, v2->unk_14, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, v2->unk_18, NULL);
        Strbuf_Free(v0);
        MessageLoader_Free(param0->unk_2A64);
        StringTemplate_Free(param0->unk_2A60);
    }

    if (param1 == &param0->unk_2C30) {
        sub_0200E060(param1, 0, ((1 + 9) + 9), 10);
    } else {
        Window_Show(param1, 0, (1 + 9), 14);
    }

    return param3 + v2->unk_0C * v2->unk_10;
}

static int ov97_02230F20(UnkStruct_ov97_02230868 *param0, int param1, int param2)
{
    int v0 = param1;

    while (TRUE) {
        param1 += param2;

        if (param1 == 3) {
            param1 = 0;
        }

        if (param1 == -1) {
            param1 = 3 - 1;
        }

        if (v0 == param1) {
            break;
        }

        if (sub_0202DD5C(param0->unk_2C00, param1)) {
            break;
        }
    }

    return param1;
}

static void ov97_02230F58(UnkStruct_ov97_02230868 *param0, u32 param1, u32 param2, u32 param3)
{
    NNSG2dScreenData *v0;
    void *v1 = sub_02006FE8(116, param1, 1, param0->unk_00, 1);

    NNS_G2dGetUnpackedScreenData(v1, &v0);

    sub_02019574(param0->unk_2A5C, param2, v0->rawData, param3);
    Heap_FreeToHeap(v1);
}

static void ov97_02230F98(UnkStruct_ov97_02230868 *param0, int param1)
{
    sub_02006E84(116, 3, 0, 0, 16 * 16, param0->unk_00);
    sub_02006E3C(116, 6, param0->unk_2A5C, 1, 0, 24 * 16 * 0x20, 1, param0->unk_00);

    switch (param1) {
    case 0:
        sub_02006E60(116, 4, param0->unk_2A5C, 1, 0, 32 * 24 * 2, 1, param0->unk_00);
        break;
    case 1:
        sub_02006E60(116, 5, param0->unk_2A5C, 1, 0, 32 * 24 * 2, 1, param0->unk_00);
        break;
    }

    sub_02006E84(116, 0, 0, 16 * 2 * 11, 16 * 2, param0->unk_00);
    sub_02006E3C(116, 1, param0->unk_2A5C, 3, 0 * 1, 1 * 16 * 0x20, 1, param0->unk_00);

    ov97_02230F58(param0, 2, 3, 32 * 24 * 2);

    sub_02019E2C(param0->unk_2A5C, 3, 0, 0, 32, 24, 11);
    sub_02019448(param0->unk_2A5C, 3);
}

static void ov97_02231088(OverlayManager *param0, int *param1, int (*param2)(OverlayManager *))
{
    u32 v0;
    int v1;
    UnkStruct_ov97_02230868 *v2 = OverlayManager_Data(param0);
    static int (*v3)(OverlayManager *);

    v0 = sub_02001288(v2->unk_2C28);

    switch (v0) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        Sound_PlayEffect(1500);

        if (param2) {
            v1 = param2(param0);

            if (v1 != -1) {
                *param1 = v1;
            }
        }
        break;
    default:
        Sound_PlayEffect(1500);

        if (v0) {
            if (v0 < 30) {
                *param1 = v0;
            } else {
                v3 = (static int (*)(OverlayManager *))v0;
                v1 = v3(param0);

                if (v1 != -1) {
                    *param1 = v1;
                }
            }
        }
        break;
    }
}

static void ov97_022310FC(UnkStruct_ov97_02230868 *param0)
{
    int v0, v1, v2;
    u8 *v3;
    NNSG2dCharacterData *v4;

    if ((param0->unk_2E90[0] == NULL) && (param0->unk_2E90[1] == NULL) && (param0->unk_2E90[2] == NULL)) {
        if (ov97_02237A60() == 1) {
            ov97_02230438(param0);
        }

        ov97_02237A20();
        ov97_02237A74();
        ov97_02237B0C(116, 26, 23, 25, 24, 0);

        sub_02006E84(19, PokeIconPalettesFileIndex(), 1, 3 * 0x20, 0, param0->unk_00);
    }

    v2 = 1;
    v0 = 178;

    for (v1 = 0; v1 < 3; v1++, v0 += 25) {
        v2 = param0->unk_2C14[param0->unk_2C20]->unk_34A[v1];

        if (v2 == 0) {
            if (param0->unk_2E90[v1]) {
                CellActor_SetDrawFlag(param0->unk_2E90[v1], 0);
            }

            continue;
        }

        param0->unk_2E90[v1] = ov97_02237D14(0, param0->unk_2E90[v1], v0, 16, 10 + v1);
        v3 = sub_02006F50(19, PokeIconSpriteIndex(v2, 0, 0), 0, &v4, param0->unk_00);

        DC_FlushRange(v4->pRawData, ((4 * 4) * 0x20));
        GX_LoadOBJ(v4->pRawData, (0x64 + v1 * (4 * 4)) * 0x20, ((4 * 4) * 0x20));

        CellActor_SetExplicitPalette(param0->unk_2E90[v1], PokeIconPaletteIndex(v2, 0, 0) + 3);
        Heap_FreeToHeap(v3);
    }
}

static int ov97_02231224(OverlayManager *param0, int *param1)
{
    UnkStruct_ov97_02230868 *v0;

    Heap_Create(3, 87, 0x30000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov97_02230868), 87);
    memset(v0, 0, sizeof(UnkStruct_ov97_02230868));

    v0->unk_2A5C = sub_02018340(87);
    v0->unk_00 = 87;

    sub_0200F344(0, 0x0);
    sub_0200F344(1, 0x0);

    v0->unk_2C20 = 3 - 1;
    v0->unk_2C9C = 1;

    ov97_02237694(87);
    Heap_Create(0, 91, 0x300);

    return 1;
}

static void ov97_02231290(SysTask *param0, void *param1)
{
    UnkStruct_ov97_02231318 *v0 = (UnkStruct_ov97_02231318 *)param1;

    BufferManager_StopDMA();
    BufferManager_StartDMA(BufferManager_GetReadBuffer(v0->bufferManager), (void *)REG_BG0HOFS_ADDR, sizeof(u32) * 2, 1);
}

static void ov97_022312B4(UnkStruct_ov97_02230868 *param0, BOOL param1, fx32 param2, fx32 param3)
{
    UnkStruct_ov97_02231318 *v0 = &param0->unk_31F4;

    v0->unk_C14 = param1;
    v0->unk_C08 = param2;
    v0->unk_C0C = param3;

    if (v0->bufferManager == NULL) {
        v0->bufferManager = BufferManager_New(87, v0->unk_00[0], v0->unk_00[1]);
    }

    if (v0->unk_C04 == NULL) {
        v0->unk_C04 = SysTask_ExecuteOnVBlank(ov97_02231290, v0, 1024);
    }

    v0->unk_C10 = 1;
}

static void ov97_02231318(UnkStruct_ov97_02230868 *param0)
{
    UnkStruct_ov97_02231318 *v0 = &param0->unk_31F4;

    if (v0->bufferManager) {
        BufferManager_Delete(v0->bufferManager);
    }

    if (v0->unk_C04) {
        SysTask_Done(v0->unk_C04);
    }

    v0->bufferManager = NULL;
    v0->unk_C04 = NULL;

    BufferManager_StopDMA();
}

static BOOL ov97_02231354(UnkStruct_ov97_02230868 *param0)
{
    int v0, v1;
    u16 *v2;
    UnkStruct_ov97_02231318 *v3 = &param0->unk_31F4;
    fx32 v4 = (168 / 2) * FX32_ONE;

    if (v3->unk_C10 == 0) {
        return 1;
    }

    if (v3->unk_C14 == 1) {
        v3->unk_C08 += v3->unk_C0C;
        v3->unk_C0C += v3->unk_C0C;

        if (v3->unk_C08 / FX32_ONE > 1000) {
            v3->unk_C10 = 0;
            v4 = 168;
            v3->unk_C08 = 0;
            v3->unk_C0C = 0;
        }
    } else {
        v3->unk_C08 -= v3->unk_C0C;
        v3->unk_C0C /= 2;

        if (v3->unk_C0C < FX32_ONE / 4) {
            v3->unk_C10 = 0;
            v3->unk_C08 = 1 * FX32_ONE;
            v3->unk_C0C = 0;
        }
    }

    v2 = BufferManager_GetWriteBuffer(v3->bufferManager);

    for (v0 = 168 / 2; v0 < 168; v0++) {
        v1 = v4 / FX32_ONE;

        if (v1 < 0) {
            v1 = 0;
        }

        if (v1 > 168) {
            v1 = 168;
        }

        v2[v0 * 4 + 1] = v2[v0 * 4 + 3] = (0 - (v0) + (v1));
        v2[(168 - v0) * 4 + 1] = v2[(168 - v0) * 4 + 3] = (0 - (168 - v0) + (168 - v1));

        v4 += v3->unk_C08;
    }

    DC_FlushRange(v2, sizeof(u16) * HW_LCD_HEIGHT * 4);
    BufferManager_SwapBuffers(v3->bufferManager);

    return 0;
}

static void ov97_02231464(void *param0)
{
    int v0;
    UnkStruct_ov97_02230868 *v1 = (UnkStruct_ov97_02230868 *)param0;

    v0 = ov97_0223847C();

    if ((v0 == 2) || (v0 == 3)) {
        Sound_PlayEffect(1563);
        v1->unk_3E0C = NULL;
    }
}

static void ov97_02231488(UnkStruct_ov97_02230868 *param0)
{
    GF_ASSERT(param0->unk_2C20 < 3);
    SaveData_Checksum(31);

    if (param0->unk_2C14[param0->unk_2C20]->unk_350 != 255) {
        param0->unk_2C14[param0->unk_2C20]->unk_350++;
    }

    if (param0->unk_2C14[param0->unk_2C20]->unk_348 != 255) {
        param0->unk_2C14[param0->unk_2C20]->unk_348--;
    }

    SaveData_SetChecksum(31);
    ov97_0223846C(param0->unk_2C04);

    param0->unk_3E0C = ov97_02231464;
}

static void ov97_022314FC(UnkStruct_ov97_02230868 *param0, int param1, int *param2)
{
    int v0;
    int v1 = param0->unk_3E10;

    if (gCoreSys.pressedKeys & PAD_KEY_RIGHT && (param0->unk_3E10 != 1)) {
        param0->unk_3E10 = 1;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_LEFT && (param0->unk_3E10 != 0)) {
        param0->unk_3E10 = 0;
    }

    if (v1 != param0->unk_3E10) {
        CellActor_SetAnim(param0->unk_2E88[0], param0->unk_3E10 == 0 ? 1 : 0);
        CellActor_SetAnim(param0->unk_2E88[1], param0->unk_3E10 == 0 ? 0 : 1);
    }

    v0 = 0;

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        v0 = 2;
    } else if ((gCoreSys.pressedKeys & PAD_BUTTON_A) && param1 && (param0->unk_3E10 == 0)) {
        v0 = 1;
    } else if ((gCoreSys.pressedKeys & PAD_BUTTON_A) && (param0->unk_3E10 == 1)) {
        v0 = 2;
    } else if ((gCoreSys.pressedKeys & PAD_BUTTON_A) && (param1 == 0)) {
        v0 = 3;
    }

    if (v0 == 1) {
        Sound_PlayEffect(1500);
        CommTiming_StartSync(0xAB);

        param0->unk_2C94 = 1;
        *param2 = 21;
        ov97_02230E04(param0, &param0->unk_2C30, 17, 640);
        param0->unk_3E14 = sub_0200E7FC(&param0->unk_2C30, ((1 + 9) + 9));
    }

    if (v0 == 2) {
        Sound_PlayEffect(1500);
        ov97_02231F1C(param0, param2, 19);
    }

    if (v0 == 3) {
        Sound_PlayEffect(1500);
    }
}

static int ov97_0223161C(OverlayManager *param0, int *param1)
{
    int v0, v1, v2, v3;
    UnkStruct_ov97_02230868 *v4 = OverlayManager_Data(param0);

    switch (*param1) {
    case 0:
        v4->unk_2C04 = ((UnkStruct_0203CC84 *)OverlayManager_Args(param0))->unk_08;
        v4->unk_2C00 = SaveData_MysteryGift(v4->unk_2C04);
        v4->unk_2C08 = SaveData_Options(v4->unk_2C04);
        v4->unk_2C0C = Options_Frame(v4->unk_2C08);

        v4->unk_2C14[0] = sub_0202DB00(v4->unk_2C00, 0);
        v4->unk_2C14[1] = sub_0202DB00(v4->unk_2C00, 1);
        v4->unk_2C14[2] = sub_0202DB00(v4->unk_2C00, 2);

        v4->unk_2C20 = ov97_02230F20(v4, v4->unk_2C20, 1);
        *param1 = 1;
        break;
    case 1:
        ov97_02232054();
        ov97_02232074(v4->unk_2A5C);
        *param1 = 2;
        break;
    case 2:
        Text_ResetAllPrinters();
        ov97_02230F98(v4, 0);
        Font_LoadTextPalette(0, 15 * 32, 87);
        sub_0200DAA4(v4->unk_2A5C, 0, 1, 13, 0, 87);
        sub_0200DAA4(v4->unk_2A5C, 0, (1 + 9), 14, 1, 87);
        sub_0200DD0C(v4->unk_2A5C, 0, ((1 + 9) + 9), 10, v4->unk_2C0C, 87);

        ov97_02230C44(v4, 1, 0);
        ov97_02230C10(v4, 1, 3, param1);
        break;
    case 3:
        v0 = v4->unk_2C20;

        if (gCoreSys.pressedKeys & PAD_KEY_UP) {
            v0 = ov97_02230F20(v4, v4->unk_2C20, -1);
        } else if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
            v0 = ov97_02230F20(v4, v4->unk_2C20, 1);
        } else if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
            Sound_PlayEffect(1500);
            ov97_02230C10(v4, 0, 28, param1);
        } else if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
            Sound_PlayEffect(1500);
            *param1 = 4;
        }

        if (v4->unk_2C20 != v0) {
            Sound_PlayEffect(1536);
            v4->unk_2C20 = v0;
            ov97_02230C44(v4, 1, 0);
        }
        break;
    case 4:
        v4->unk_2C50 = ov97_02230E04(v4, &v4->unk_2C30, 7, 640);
        ov97_02230E04(v4, &v4->unk_2C40, 7 + 1, v4->unk_2C50);
        *param1 = 5;
        break;
    case 5:
        ov97_02231088(param0, param1, NULL);

        if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
            Sound_PlayEffect(1500);
            *param1 = 11;
        }
        break;
    case 6:
        Sound_PlayEffect(1536);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
        ov97_02230518(&v4->unk_2C30, 0);
        ov97_02230500(&v4->unk_2C40, 0);
        ov97_022312B4(v4, 1, 1 * FX32_ONE, 0.025 * FX32_ONE);
        *param1 = 7;
        break;
    case 7:
        if (ov97_02231354(v4)) {
            ov97_02230C44(v4, 1, 1);
            ov97_022312B4(v4, 0, 1800 * FX32_ONE, 900 * FX32_ONE);
            *param1 = 8;
        }
        break;
    case 8:
        ov97_02231354(v4);

        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(1536);
            ov97_022312B4(v4, 1, 1 * FX32_ONE, 0.025 * FX32_ONE);
            *param1 = 9;
        }
        break;
    case 9:
        if (ov97_02231354(v4)) {
            ov97_02230C44(v4, 1, 0);
            ov97_022312B4(v4, 0, 1800 * FX32_ONE, 900 * FX32_ONE);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
            *param1 = 10;
        }
        break;
    case 10:
        if (ov97_02231354(v4)) {
            sub_0200E060(&v4->unk_2C30, 0, ((1 + 9) + 9), 10);
            Window_Show(&v4->unk_2C40, 0, (1 + 9), 14);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
            ov97_02231318(v4);
            *param1 = 5;
        }
        break;
    case 11:
        ov97_02230868(v4);
        ov97_02230518(&v4->unk_2C30, 0);
        sub_0201ACF4(&v4->unk_2C30);
        BGL_DeleteWindow(&v4->unk_2C30);
        *param1 = 3;
        break;
    case 12:
        ov97_02231088(param0, param1, ov97_02230834);
        break;
    case 13:
        ov97_02231088(param0, param1, ov97_02230834);
        break;
    case 14:
        ov97_02230BC4(v4, &v4->unk_2C40, 66048);
        *param1 = 13;
        break;
    case 15:
        ov97_02230C10(v4, 0, 16, param1);
        break;
    case 16:
        ov97_02230868(v4);
        ov97_02230518(&v4->unk_2C30, 0);
        sub_0201ACF4(&v4->unk_2C30);
        BGL_DeleteWindow(&v4->unk_2C30);
        ov97_02230C44(v4, 0, 3);
        ov97_02230664(v4->unk_2A5C);
        ov97_02230410(v4);
        ov97_022304AC(v4);
        *param1 = 17;
        break;
    case 17:
        ov97_02231BD8(v4);
        sub_02039734();
        ov97_02230C10(v4, 1, 18, param1);
        break;
    case 18:
        v3 = 0;

        if (CommSys_IsPlayerConnected(0)) {
            sub_02034150(&v4->unk_04.unk_8C.unk_00);

            v3 = ov97_02231CA0(v4, &v4->unk_2A68[16]);

            if ((v3 == 0) && v4->unk_2C90) {
                BGL_FillWindow(&v4->unk_2A68[16], 0);
                sub_0201A954(&v4->unk_2A68[16]);
                v4->unk_2C90 = 0;
            }

            ov97_02231E78(v4, &v4->unk_2A68[15], v3);
            v4->unk_2C90 = v3;
        }

        ov97_022314FC(v4, v3, param1);
        break;
    case 19:
        ov97_02230C10(v4, 0, 20, param1);
        break;
    case 20:
        ov97_02230438(v4);
        ov97_02230518(&v4->unk_2C30, 0);
        ov97_02230500(&v4->unk_2C40, 0);
        ov97_02230C44(v4, 1, 0);
        Font_LoadTextPalette(0, 15 * 32, 87);
        ov97_02230C10(v4, 1, 4, param1);
        break;
    case 22:
        if (CommMan_IsInitialized() == 0) {
            *param1 = v4->unk_2CA0;
        }
        break;
    case 21:
        if (--v4->unk_2C94 == 0) {
            ov97_0223829C(&v4->unk_04.unk_8C, &v4->unk_2E9C, v4->unk_00);
            ov97_0222D1F0((const void *)&v4->unk_2E9C, sizeof(UnkUnion_ov97_0222D2B0));
            ov97_02231488(v4);
            *param1 = 23;
        }
        break;
    case 23:
        if (ov97_02238528() == 4) {
            CommTiming_StartSync(0x93);
            *param1 = 24;
        }
        break;
    case 24:
        if ((ov97_02231C84(v4) == 0) || (CommTiming_IsSyncState(0x93) == 1)) {
            ov97_022384F4();
            ov97_02230E04(v4, &v4->unk_2C30, 17 + 1, 640);
            DeleteWaitDial(v4->unk_3E14);
            ov97_02231F1C(v4, param1, 25);
        }
        break;
    case 25:
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            *param1 = 19;
        }
        break;
    case 26:
        ov97_02230C10(v4, 0, 28, param1);
        break;
    case 27:
        if (ScreenWipe_Done()) {
            *param1 = v4->unk_2CA0;
        }
        break;
    case 28:
        ov97_02230438(v4);
        ov97_02231318(v4);
        return 1;
        break;
    case 29:
        break;
    }

    if (v4->unk_2CA4 != NULL) {
        CellActorCollection_Update(v4->unk_2CA4);
    }

    ov97_02237CA0();

    if (v4->unk_3E0C) {
        v4->unk_3E0C(v4);
    }

    return 0;
}

static int ov97_02231BD8(UnkStruct_ov97_02230868 *param0)
{
    UnkStruct_0202DBAC *v0 = param0->unk_2C14[param0->unk_2C20];

    memcpy(&param0->unk_04.unk_8C.unk_50, v0, sizeof(UnkUnion_ov97_0222D2B0));
    memcpy(&param0->unk_04.unk_8C.unk_00, &v0->unk_104, sizeof(UnkStruct_ov97_0222D250));

    param0->unk_04.unk_8C.unk_50.val2.unk_348 = 0;
    param0->unk_04.unk_8C.unk_00.unk_4E_4 = 0;
    param0->unk_04.unk_8C.unk_00.unk_4E_5 = 1;

    ov97_0222D1C4(&param0->unk_04, param0->unk_2C04, 15);

    return NULL;
}

static int ov97_02231C48(int *param0)
{
    int *v0 = param0;
    int v1 = *param0;
    int v2 = 0;

    if (param0[1] < v1) {
        v1 = param0[1], v2 = 1, v0 = &param0[1];
    }

    if (param0[2] < v1) {
        v1 = param0[2], v2 = 2, v0 = &param0[2];
    }

    if (param0[3] < v1) {
        v1 = param0[3], v2 = 3, v0 = &param0[3];
    }

    *v0 = 32767 * 32767;
    return v2 + 1;
}

static int ov97_02231C84(UnkStruct_ov97_02230868 *param0)
{
    int v0, v1;
    TrainerInfo *v2;

    v1 = 0;

    for (v0 = 1; v0 < 4 + 1; v0++) {
        if (CommInfo_TrainerInfo(v0)) {
            v1++;
        }
    }

    return v1;
}

static int ov97_02231CA0(UnkStruct_ov97_02230868 *param0, Window *param1)
{
    int v0, v1, v2, v3;
    u32 v4;
    TrainerInfo *v5;
    Strbuf *v6;
    StringTemplate *v7;
    MessageLoader *v8;
    int v9[4];
    int v10[4];

    v1 = 0;
    v3 = 0;

    for (v0 = 1; v0 < 4 + 1; v0++) {
        v5 = CommInfo_TrainerInfo(v0);

        if (v5 == NULL) {
            if (param0->unk_2C68[v0]) {
                v3++;
            }

            param0->unk_2C68[v0] = NULL;
            param0->unk_2C7C[v0] = 32767 * 32767;
        } else if (param0->unk_2C68[v0] != v5) {
            v3++;
            v1++;
            param0->unk_2C68[v0] = v5;
            param0->unk_2C7C[v0] = param0->unk_2C9C++;
        } else {
            v1++;
        }
    }

    if (v3 == 0) {
        return v1;
    }

    v9[0] = param0->unk_2C7C[1], v9[1] = param0->unk_2C7C[2], v9[2] = param0->unk_2C7C[3], v9[3] = param0->unk_2C7C[4];
    v10[0] = ov97_02231C48(v9);
    v10[1] = ov97_02231C48(v9);
    v10[2] = ov97_02231C48(v9);
    v10[3] = ov97_02231C48(v9);

    v7 = StringTemplate_Default(87);
    v8 = MessageLoader_Init(1, 26, 421, 87);
    v2 = 0;

    BGL_FillWindow(param1, 0);

    for (v0 = 0; v0 < v1; v0++) {
        v5 = CommInfo_TrainerInfo(v10[v0]);

        if (v5) {
            StringTemplate_SetPlayerName(v7, 0, v5);
            v6 = MessageUtil_ExpandedStrbuf(v7, v8, 53, 87);

            if (TrainerInfo_Gender(v5) == 0) {
                Text_AddPrinterWithParamsAndColor(param1, FONT_SYSTEM, v6, 0, v2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(5, 6, 0), NULL);
            } else {
                Text_AddPrinterWithParamsAndColor(param1, FONT_SYSTEM, v6, 0, v2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 0), NULL);
            }

            Strbuf_Free(v6);
            StringTemplate_SetNumber(v7, 0, TrainerInfo_ID(v5) & 0xFFFF, 5, 2, 1);

            v6 = MessageUtil_ExpandedStrbuf(v7, v8, 54, 87);

            Text_AddPrinterWithParamsAndColor(param1, FONT_SYSTEM, v6, 80, v2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(14, 15, 0), NULL);
            Strbuf_Free(v6);

            v2 += 24;
        }
    }

    if (v1) {
        sub_0201A954(param1);
    }

    MessageLoader_Free(v8);
    StringTemplate_Free(v7);

    return v1;
}

static void ov97_02231E78(UnkStruct_ov97_02230868 *param0, Window *param1, int param2)
{
    Strbuf *v0;

    param0->unk_2C54 = param2;
    param0->unk_2A64 = MessageLoader_Init(1, 26, 421, 87);
    param0->unk_2A60 = StringTemplate_Default(87);

    BGL_FillWindow(param1, 0);
    StringTemplate_SetNumber(param0->unk_2A60, 0, param0->unk_2C54, 1, 1, 1);

    v0 = MessageUtil_ExpandedStrbuf(param0->unk_2A60, param0->unk_2A64, 56, 87);

    Text_AddPrinterWithParamsAndColor(param1, FONT_MESSAGE, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    sub_0201A954(param1);

    Strbuf_Free(v0);
    MessageLoader_Free(param0->unk_2A64);
    StringTemplate_Free(param0->unk_2A60);
}

static void ov97_02231F1C(UnkStruct_ov97_02230868 *param0, int *param1, int param2)
{
    ov97_0222D2DC();
    sub_02039794();
    param0->unk_2CA0 = param2;
    *param1 = 22;
}

extern const OverlayManagerTemplate Unk_ov97_0223D71C;

static int ov97_02231F38(OverlayManager *param0, int *param1)
{
    int v0;
    UnkStruct_ov97_02230868 *v1 = OverlayManager_Data(param0);

    for (v0 = 0; v0 < sizeof(Unk_ov97_0223E680) / sizeof(UnkStruct_ov97_0223E680); v0++) {
        if (v1->unk_2A68[v0].unk_00) {
            sub_0201ACF4(&v1->unk_2A68[v0]);
            BGL_DeleteWindow(&v1->unk_2A68[v0]);
        }
    }

    if (v1->unk_2C30.unk_00) {
        sub_0201ACF4(&v1->unk_2C30);
        BGL_DeleteWindow(&v1->unk_2C30);
    }

    if (v1->unk_2C40.unk_00) {
        sub_0201ACF4(&v1->unk_2C40);
        BGL_DeleteWindow(&v1->unk_2C40);
    }

    sub_02019044(v1->unk_2A5C, 0);
    sub_02019044(v1->unk_2A5C, 1);
    sub_02019044(v1->unk_2A5C, 2);
    sub_02019044(v1->unk_2A5C, 3);
    Heap_FreeToHeap(v1->unk_2A5C);
    sub_02000EC4(FS_OVERLAY_ID(overlay97), &Unk_ov97_0223D71C);
    Heap_Destroy(91);
    OverlayManager_FreeData(param0);
    Heap_Destroy(87);

    return 1;
}

const OverlayManagerTemplate Unk_ov97_0223D7AC = {
    ov97_02231224,
    ov97_0223161C,
    ov97_02231F38,
    0xffffffff
};

void ov97_02231FFC(BGL *param0, void *param1, int param2)
{
    UnkStruct_ov97_02230868 *v0;

    ov97_02232074(param0);

    v0 = Heap_AllocFromHeapAtEnd(param2, sizeof(UnkStruct_ov97_02230868));
    memset(v0, 0, sizeof(UnkStruct_ov97_02230868));

    v0->unk_2A5C = param0;
    v0->unk_00 = param2;

    Font_LoadTextPalette(0, 15 * 32, v0->unk_00);

    v0->unk_2C14[0] = (UnkStruct_0202DBAC *)param1;
    v0->unk_2C20 = 0;

    ov97_02230C44(v0, 1, 0);
    Heap_FreeToHeap(v0);
}
