#include "overlay104/ov104_02231F74.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_defs/archived_sprite.h"
#include "struct_defs/sentence.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02081CF4.h"

#include "overlay063/ov63_0222BE18.h"
#include "overlay063/ov63_0222CCE4.h"
#include "overlay063/ov63_0222D77C.h"
#include "overlay063/struct_ov63_0222BEC0_decl.h"
#include "overlay063/struct_ov63_0222CCB8.h"
#include "overlay084/struct_ov84_02240FA8.h"
#include "overlay104/ov104_0222E63C.h"
#include "overlay104/ov104_0222E930.h"
#include "overlay104/struct_ov104_0222E930_decl.h"
#include "overlay104/struct_ov104_0222E930_t.h"
#include "overlay104/struct_ov104_0222FEDC.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_022320B4_decl.h"
#include "overlay104/struct_ov104_022320B4_t.h"
#include "overlay104/struct_ov104_02232B78.h"
#include "overlay104/struct_ov104_0223319C.h"
#include "overlay104/struct_ov104_022331E8.h"
#include "overlay104/struct_ov104_0223C4CC.h"

#include "cell_actor.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "render_text.h"
#include "save_player.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_020131EC.h"
#include "unk_02014A84.h"
#include "unk_02018340.h"
#include "unk_0201F834.h"
#include "unk_0207E0B8.h"
#include "unk_0209B6F8.h"

typedef struct UnkStruct_ov104_02232B5C_t {
    UnkStruct_ov104_022320B4 *unk_00;
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
    UnkStruct_02081CF4 unk_A4;
    UIControlData *unk_B0;
    ResourceMetadata unk_B4[28];
    UnkStruct_ov84_02240FA8 unk_194;
    BmpList *unk_1B4;
    u16 unk_1B8;
    u16 unk_1BA;
    ResourceMetadata unk_1BC[28];
    u16 unk_29C[28];
    u16 unk_2D4;
} UnkStruct_ov104_02232B5C;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov104_022419A0;

static void ov104_02231FC4(UnkStruct_ov104_022320B4 *param0);
static void ov104_02232034(UnkStruct_ov104_022320B4 *param0, const MessageLoader *param1, u32 param2);
static void ov104_02232050(UnkStruct_ov104_022320B4 *param0, enum Font param1, int param2, int param3, int param4);
static void ov104_0223214C(UnkStruct_ov104_022320B4 *param0, UnkStruct_ov104_02232B5C *param1, u8 param2, u8 param3, u8 param4, u8 param5, u16 *param6, StringTemplate *param7, MessageLoader *param8);
UnkStruct_ov104_02232B5C *ov104_02232258(UnkStruct_ov104_022320B4 *param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 *param5, StringTemplate *param6, MessageLoader *param7);
void ov104_022322A8(UnkStruct_ov104_02232B5C *param0, u32 param1, u32 param2, u32 param3);
void ov104_022322B0(UnkStruct_ov104_02232B5C *param0);
static void ov104_02232390(UnkStruct_ov104_02232B5C *param0, u32 param1, u32 param2, u32 param3);
static u32 ov104_02232414(UnkStruct_ov104_02232B5C *param0);
static void ov104_02232454(UnkStruct_ov104_02232B5C *param0);
static void ov104_022324C8(SysTask *param0, void *param1);
static void ov104_02232570(UnkStruct_ov104_02232B5C *param0);
static void ov104_022325D8(UnkStruct_ov104_02232B5C *param0);
static void ov104_02232AC4(UnkStruct_ov104_02232B5C *param0, u16 param1, u32 param2);
void ov104_022320B4(UnkStruct_ov104_022320B4 *param0, u8 param1, u16 param2, u16 param3, u16 param4, s16 param5, u8 param6);
static void ov104_022320FC(Strbuf *param0, u16 param1, u16 param2, u16 param3, u16 param4);
static BOOL ov104_02233184(UnkStruct_ov104_0222E930 *param0);
UnkStruct_ov104_02232B5C *ov104_022325FC(UnkStruct_ov104_022320B4 *param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 *param5, StringTemplate *param6, MessageLoader *param7);
void ov104_0223261C(UnkStruct_ov104_02232B5C *param0, u32 param1, u32 param2, u32 param3);
void ov104_02232624(UnkStruct_ov104_02232B5C *param0);
static void ov104_02232750(UnkStruct_ov104_02232B5C *param0, u32 param1, u32 param2, u32 param3);
static u32 ov104_022327F0(UnkStruct_ov104_02232B5C *param0);
static void ov104_02232830(UnkStruct_ov104_02232B5C *param0);
static void ov104_0223293C(BmpList *param0, u32 param1, u8 param2);
static void ov104_02232960(BmpList *param0, u32 param1, u8 param2);
static void ov104_0223296C(SysTask *param0, void *param1);
static void ov104_02232A58(UnkStruct_ov104_02232B5C *param0, u8 param1);
static void ov104_02232B2C(UnkStruct_ov104_02232B5C *param0);
void ov104_02232B5C(UnkStruct_ov104_02232B5C *param0);
void ov104_022330FC(UnkStruct_ov104_0222E930 *param0, u16 *param1);
void ov104_0223310C(UnkStruct_ov104_0222E930 *param0, u16 *param1, u32 param2);
extern void ov104_0223327C(UnkStruct_ov104_02232B5C *param0, int param1);
extern void ov104_02233298(UnkStruct_ov104_02232B5C *param0, int param1);

void ov104_02231F74(UnkStruct_ov104_022320B4 *param0, const MessageLoader *param1, u16 param2, u8 param3, UnkStruct_ov104_0222FEDC *param4)
{
    u8 v0;
    u8 v1;
    u8 v2;

    ov104_02231FC4(param0);
    ov104_02232034(param0, param1, param2);

    if (param4 == NULL) {
        UnkStruct_ov104_0223C4CC *v3 = ov104_0222E924(param0);
        UnkStruct_ov104_02230BE4 *v4;

        v4 = sub_0209B970(v3->unk_08);

        v0 = Options_TextFrameDelay(v4->unk_04);
        v1 = 0;
        v2 = FONT_MESSAGE;
    } else {
        v0 = param4->unk_00;
        v1 = param4->unk_01;
        v2 = param4->unk_02;
    }

    ov104_02232050(param0, v2, v0, param3, v1);
}

static void ov104_02231FC4(UnkStruct_ov104_022320B4 *param0)
{
    UnkStruct_ov104_0223C4CC *v0 = ov104_0222E924(param0);

    if (param0->unk_5A == 0) {
        BGL_AddWindow(
            v0->unk_00, &param0->unk_64, 1, 2, 19, 27, 4, 13, (((1024 - (18 + 12)) - 9) - (27 * 4)));
        BGL_FillWindow(&param0->unk_64, 15);
        sub_0200E060(&param0->unk_64, 0, (1024 - (18 + 12)), 11);

        param0->unk_5A = 1;
    } else {
        BGL_FillWindow(&param0->unk_64, 15);
    }
}

static void ov104_02232034(UnkStruct_ov104_022320B4 *param0, const MessageLoader *param1, u32 param2)
{
    MessageLoader_GetStrbuf(param1, param2, param0->unk_4C);
    StringTemplate_Format(param0->unk_44, param0->unk_48, param0->unk_4C);
}

static void ov104_02232050(UnkStruct_ov104_022320B4 *param0, enum Font param1, int param2, int param3, int param4)
{
    RenderControlFlags_SetCanABSpeedUpPrint(param3);
    RenderControlFlags_SetAutoScrollFlags(param4);
    RenderControlFlags_SetSpeedUpOnTouch(0);
    param0->unk_50 = Text_AddPrinterWithParams(&param0->unk_64, param1, param0->unk_48, 0, 0, param2, NULL);
}

void ov104_02232088(UnkStruct_ov104_022320B4 *param0)
{
    GF_ASSERT(param0->unk_5A == 1);

    sub_0200E084(&param0->unk_64, 0);
    BGL_DeleteWindow(&param0->unk_64);

    param0->unk_5A = 0;
}

void ov104_022320B4(UnkStruct_ov104_022320B4 *param0, u8 param1, u16 param2, u16 param3, u16 param4, s16 param5, u8 param6)
{
    Sentence v0;

    ov104_02231FC4(param0);

    ov104_022320FC(param0->unk_48, param2, param3, param4, param5);

    if (param6 != 0xFF) {
        ov104_02232050(param0, FONT_MESSAGE, param1, param6, 0);
    } else {
        ov104_02232050(param0, FONT_MESSAGE, TEXT_SPEED_INSTANT, param6, 0);
    }
}

static void ov104_022320FC(Strbuf *param0, u16 param1, u16 param2, u16 param3, u16 param4)
{
    Sentence v0;
    Strbuf *v1;

    sub_02014A84(&v0);
    sub_02014CE0(&v0, param1, param2);
    sub_02014CF8(&v0, 0, param3);
    sub_02014CF8(&v0, 1, param4);

    v1 = sub_02014B34(&v0, 32);
    Strbuf_Copy(param0, v1);
    Strbuf_Free(v1);
}

static void ov104_0223214C(UnkStruct_ov104_022320B4 *param0, UnkStruct_ov104_02232B5C *param1, u8 param2, u8 param3, u8 param4, u8 param5, u16 *param6, StringTemplate *param7, MessageLoader *param8)
{
    int v0;

    if (param8 == NULL) {
        param1->unk_8C = MessageLoader_Init(1, 26, 361, param0->unk_34);
        param1->unk_97_1 = 1;
    } else {
        param1->unk_8C = param8;
        param1->unk_97_1 = 0;
    }

    param1->unk_90 = param7;

    param1->unk_00 = param0;
    param1->unk_A0 = param6;

    *param1->unk_A0 = 0;

    param1->unk_97_0 = param5;
    param1->unk_96 = param4;
    param1->unk_98 = param2;
    param1->unk_99 = param3;
    param1->unk_9B = 0;
    param1->unk_18 = &param0->unk_64;
    param1->unk_94 = 3;
    param1->unk_2D4 = param4;

    for (v0 = 0; v0 < 28; v0++) {
        param1->unk_B4[v0].unk_00 = NULL;
        param1->unk_B4[v0].unk_04 = 0;
    }

    for (v0 = 0; v0 < 28; v0++) {
        param1->unk_1BC[v0].unk_00 = NULL;
        param1->unk_1BC[v0].unk_04 = 0;
        param1->unk_29C[v0] = 0xff;
    }

    for (v0 = 0; v0 < 28; v0++) {
        param1->unk_1C[v0] = Strbuf_Init((40 * 2), param0->unk_34);
    }

    *param1->unk_A0 = 0xeeee;

    return;
}

UnkStruct_ov104_02232B5C *ov104_02232258(UnkStruct_ov104_022320B4 *param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 *param5, StringTemplate *param6, MessageLoader *param7)
{
    UnkStruct_ov104_02232B5C *v0;
    int v1;

    v0 = Heap_AllocFromHeap(param0->unk_34, sizeof(UnkStruct_ov104_02232B5C));

    if (v0 == NULL) {
        return NULL;
    }

    memset(v0, 0, sizeof(UnkStruct_ov104_02232B5C));

    ov104_0223214C(param0, v0, param1, param2, param3, param4, param5, param6, param7);

    return v0;
}

void ov104_022322A8(UnkStruct_ov104_02232B5C *param0, u32 param1, u32 param2, u32 param3)
{
    ov104_02232390(param0, param1, param2, param3);
    return;
}

void ov104_022322B0(UnkStruct_ov104_02232B5C *param0)
{
    u32 v0;
    UnkStruct_ov104_0223C4CC *v1 = ov104_0222E924(param0->unk_00);

    v0 = ov104_02232414(param0);
    if (v0 % 8 == 0) {
        v0 /= 8;
    } else {
        v0 = v0 / 8 + 1;
    }

    if (param0->unk_97_6) {
        param0->unk_98 -= v0;
    }
    if (param0->unk_97_7) {
        param0->unk_99 -= param0->unk_9B * 2;
    }

    BGL_AddWindow(v1->unk_00, &param0->unk_08, 1, param0->unk_98, param0->unk_99, v0, param0->unk_9B * 2, 14, 1);
    Window_Show(&param0->unk_08, 1, 985, 12);
    ov104_02232454(param0);
    param0->unk_B0 = sub_02001B9C(&param0->unk_A4, param0->unk_96, param0->unk_00->unk_34);
    ov104_022325D8(param0);
    param0->unk_04 = SysTask_Start(ov104_022324C8, param0, 0);
}

static void ov104_02232390(UnkStruct_ov104_02232B5C *param0, u32 param1, u32 param2, u32 param3)
{
    int v0;
    void *v1;

    {
        Strbuf *v2 = Strbuf_Init((40 * 2), param0->unk_00->unk_34);

        MessageLoader_GetStrbuf(param0->unk_8C, param1, v2);
        StringTemplate_Format(param0->unk_90, param0->unk_1C[param0->unk_9B], v2);
        param0->unk_B4[param0->unk_9B].unk_00 = (const void *)param0->unk_1C[param0->unk_9B];
        Strbuf_Free(v2);
    }

    param0->unk_29C[param0->unk_9B] = param2;
    param0->unk_B4[param0->unk_9B].unk_04 = param3;
    param0->unk_9B++;

    return;
}

static u32 ov104_02232414(UnkStruct_ov104_02232B5C *param0)
{
    int v0;
    u32 v1, v2;

    v1 = 0;
    v2 = 0;

    for (v0 = 0; v0 < param0->unk_9B; v0++) {
        if (param0->unk_B4[v0].unk_00 == NULL) {
            break;
        }

        v1 = Font_CalcStrbufWidth(FONT_SYSTEM, (Strbuf *)param0->unk_B4[v0].unk_00, 0);

        if (v2 < v1) {
            v2 = v1;
        }
    }

    return v2 + 12;
}

static void ov104_02232454(UnkStruct_ov104_02232B5C *param0)
{
    param0->unk_A4.unk_00 = param0->unk_B4;
    param0->unk_A4.unk_04 = &param0->unk_08;
    param0->unk_A4.unk_08 = 0;
    param0->unk_A4.unk_09 = 1;
    param0->unk_A4.unk_0A = param0->unk_9B;
    param0->unk_A4.unk_0B_0 = 0;
    param0->unk_A4.unk_0B_4 = 0;

    if (param0->unk_9B >= 4) {
        param0->unk_A4.unk_0B_6 = 1;
    } else {
        param0->unk_A4.unk_0B_6 = 0;
    }

    return;
}

static void ov104_022324C8(SysTask *param0, void *param1)
{
    u32 v0;
    UnkStruct_ov104_02232B5C *v1 = param1;

    if (v1->unk_94 != 0) {
        v1->unk_94--;
        return;
    }

    if (ScreenWipe_Done() == 0) {
        return;
    }

    v0 = sub_02001BE0(v1->unk_B0);

    if ((gCoreSys.pressedKeysRepeatable & PAD_KEY_UP) || (gCoreSys.pressedKeysRepeatable & PAD_KEY_DOWN) || (gCoreSys.pressedKeysRepeatable & PAD_KEY_LEFT) || (gCoreSys.pressedKeysRepeatable & PAD_KEY_RIGHT)) {
        ov104_022325D8(v1);
    }

    if (*v1->unk_A0 == 0xeedd) {
        ov104_02232570(param1);
    } else {
        switch (v0) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            if (v1->unk_97_0 == 1) {
                *v1->unk_A0 = 0xfffe;
                ov104_02232570(param1);
            }
            break;
        default:
            *v1->unk_A0 = v0;
            ov104_02232570(param1);
            break;
        }
    }

    return;
}

static void ov104_02232570(UnkStruct_ov104_02232B5C *param0)
{
    int v0;

    Sound_PlayEffect(1500);

    sub_02001BC4(param0->unk_B0, NULL);
    Window_Clear(param0->unk_A4.unk_04, 0);
    BGL_DeleteWindow(param0->unk_A4.unk_04);

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

static void ov104_022325D8(UnkStruct_ov104_02232B5C *param0)
{
    u8 v0;

    v0 = sub_02001DC4(param0->unk_B0);

    if (param0->unk_29C[v0] != 0xff) {
        ov104_02232AC4(param0, param0->unk_29C[v0], TEXT_SPEED_INSTANT);
    }

    return;
}

UnkStruct_ov104_02232B5C *ov104_022325FC(UnkStruct_ov104_022320B4 *param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 *param5, StringTemplate *param6, MessageLoader *param7)
{
    return ov104_02232258(param0, param1, param2, param3, param4, param5, param6, param7);
}

void ov104_0223261C(UnkStruct_ov104_02232B5C *param0, u32 param1, u32 param2, u32 param3)
{
    ov104_02232750(param0, param1, param2, param3);
    return;
}

void ov104_02232624(UnkStruct_ov104_02232B5C *param0)
{
    u32 v0;
    UnkStruct_ov104_0223C4CC *v1 = ov104_0222E924(param0->unk_00);

    v0 = ov104_022327F0(param0);
    if (v0 % 8 == 0) {
        v0 /= 8;
    } else {
        v0 = v0 / 8 + 1;
    }

    if (param0->unk_97_6) {
        param0->unk_98 -= v0;
    }

    if (param0->unk_9B > 8) {
        if (param0->unk_97_7) {
            param0->unk_99 -= 8 * 2;
        }
        BGL_AddWindow(v1->unk_00, &param0->unk_08, 1, param0->unk_98, param0->unk_99, v0, 8 * 2, 14, 1);
    } else {
        if (param0->unk_97_7) {
            param0->unk_99 -= param0->unk_9B * 2;
        }
        BGL_AddWindow(v1->unk_00, &param0->unk_08, 1, param0->unk_98, param0->unk_99, v0, param0->unk_9B * 2, 14, 1);
    }
    Window_Show(&param0->unk_08, 1, 985, 12);
    ov104_02232830(param0);
    param0->unk_1B4 = sub_0200112C((const UnkStruct_ov84_02240FA8 *)&param0->unk_194, 0, param0->unk_96, param0->unk_00->unk_34);
    ov104_02232B2C(param0);
    param0->unk_04 = SysTask_Start(ov104_0223296C, param0, 0);
}

static void ov104_02232750(UnkStruct_ov104_02232B5C *param0, u32 param1, u32 param2, u32 param3)
{
    int v0;
    void *v1;

    {
        Strbuf *v2 = Strbuf_Init((40 * 2), param0->unk_00->unk_34);

        MessageLoader_GetStrbuf(param0->unk_8C, param1, v2);
        StringTemplate_Format(param0->unk_90, param0->unk_1C[param0->unk_9B], v2);
        param0->unk_1BC[param0->unk_9B].unk_00 = (const void *)param0->unk_1C[param0->unk_9B];

        Strbuf_Free(v2);
    }

    if (param3 == 0xfa) {
        param0->unk_1BC[param0->unk_9B].unk_04 = 0xfffffffd;
    } else {
        param0->unk_1BC[param0->unk_9B].unk_04 = param3;
    }

    param0->unk_29C[param0->unk_9B] = param2;
    param0->unk_9B++;

    return;
}

static u32 ov104_022327F0(UnkStruct_ov104_02232B5C *param0)
{
    int v0;
    u32 v1, v2;

    v1 = 0;
    v2 = 0;

    for (v0 = 0; v0 < param0->unk_9B; v0++) {
        if (param0->unk_1BC[v0].unk_00 == NULL) {
            break;
        }

        v1 = Font_CalcStrbufWidth(FONT_SYSTEM, (Strbuf *)param0->unk_1BC[v0].unk_00, 0);

        if (v2 < v1) {
            v2 = v1;
        }
    }

    return v2 + 12;
}

static void ov104_02232830(UnkStruct_ov104_02232B5C *param0)
{
    param0->unk_194.unk_00 = param0->unk_1BC;
    param0->unk_194.unk_04 = ov104_02232960;
    param0->unk_194.unk_08 = ov104_0223293C;
    param0->unk_194.unk_0C = &param0->unk_08;

    param0->unk_194.unk_10 = param0->unk_9B;
    param0->unk_194.unk_12 = 8;

    param0->unk_194.unk_14 = 1;
    param0->unk_194.unk_15 = 12;
    param0->unk_194.unk_16 = 2;
    param0->unk_194.unk_17_0 = 1;

    param0->unk_194.unk_17_4 = 1;
    param0->unk_194.unk_18_0 = 15;
    param0->unk_194.unk_18_4 = 2;

    param0->unk_194.unk_1A_0 = 0;
    param0->unk_194.unk_1A_3 = 16;

    param0->unk_194.unk_1A_7 = 0;

    param0->unk_194.unk_1A_9 = 0;
    param0->unk_194.unk_1A_15 = 0;

    param0->unk_194.unk_1C = (void *)param0;
    return;
}

static void ov104_0223293C(BmpList *param0, u32 param1, u8 param2)
{
    if (param1 == 0xfffffffd) {
        sub_0200147C(param0, 3, 15, 4);
    } else {
        sub_0200147C(param0, 1, 15, 2);
    }
}

static void ov104_02232960(BmpList *param0, u32 param1, u8 param2)
{
    u32 v0, v1;
    u16 v2 = 0;
    u16 v3 = 0;
    UnkStruct_ov104_02232B5C *v4 = (UnkStruct_ov104_02232B5C *)sub_02001504(param0, 19);

    return;
}

static void ov104_0223296C(SysTask *param0, void *param1)
{
    u16 v0;
    u32 v1;
    UnkStruct_ov104_02232B5C *v2;

    v2 = (UnkStruct_ov104_02232B5C *)param1;

    if (v2->unk_94 != 0) {
        v2->unk_94--;
        return;
    }

    if (ScreenWipe_Done() == 0) {
        return;
    }

    v1 = sub_02001288(v2->unk_1B4);

    v0 = v2->unk_2D4;
    sub_020014D0(v2->unk_1B4, &v2->unk_2D4);

    if (v0 != v2->unk_2D4) {
        Sound_PlayEffect(1500);
    }

    if ((gCoreSys.pressedKeysRepeatable & PAD_KEY_UP) || (gCoreSys.pressedKeysRepeatable & PAD_KEY_DOWN) || (gCoreSys.pressedKeysRepeatable & PAD_KEY_LEFT) || (gCoreSys.pressedKeysRepeatable & PAD_KEY_RIGHT)) {
        ov104_02232B2C(v2);
    }

    if (*v2->unk_A0 == 0xeedd) {
        ov104_02232A58(param1, 0);
    } else {
        switch (v1) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            if (v2->unk_97_0 == 1) {
                Sound_PlayEffect(1500);
                *v2->unk_A0 = 0xfffe;

                ov104_02232A58(param1, 1);
            }

            break;
        default:
            Sound_PlayEffect(1500);
            *v2->unk_A0 = v1;

            ov104_02232A58(param1, 1);
            break;
        }
    }

    return;
}

static void ov104_02232A58(UnkStruct_ov104_02232B5C *param0, u8 param1)
{
    int v0;

    if (param1 == 1) {
        Sound_PlayEffect(1500);
    }

    sub_02001384(param0->unk_1B4, NULL, NULL);
    Window_Clear(param0->unk_194.unk_0C, 0);
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

static void ov104_02232AC4(UnkStruct_ov104_02232B5C *param0, u16 param1, u32 param2)
{
    Strbuf *v0 = Strbuf_Init((40 * 2), param0->unk_00->unk_34);
    Strbuf *v1 = Strbuf_Init((40 * 2), param0->unk_00->unk_34);

    BGL_FillWindow(param0->unk_18, 15);

    MessageLoader_GetStrbuf(param0->unk_8C, param1, v0);

    StringTemplate_Format(param0->unk_90, v1, v0);

    Text_AddPrinterWithParams(param0->unk_18, 1, v1, 0, 0, param2, NULL);

    Strbuf_Free(v0);
    Strbuf_Free(v1);
    return;
}

static void ov104_02232B2C(UnkStruct_ov104_02232B5C *param0)
{
    sub_020014D0(param0->unk_1B4, &param0->unk_1BA);

    if (param0->unk_29C[param0->unk_1BA] != 0xff) {
        ov104_02232AC4(param0, param0->unk_29C[param0->unk_1BA], TEXT_SPEED_INSTANT);
    }

    return;
}

void ov104_02232B5C(UnkStruct_ov104_02232B5C *param0)
{
    UnkStruct_ov104_02232B5C *v0;

    if (param0 == NULL) {
        return;
    }

    v0 = (UnkStruct_ov104_02232B5C *)param0;

    *v0->unk_A0 = 0xfffe;

    ov104_02232A58(param0, 0);
    return;
}

__attribute__((aligned(4))) static const u8 Unk_ov104_0223F9A4[] = {
    0x1,
    0x2,
    0x4,
    0x8,
    0xF,
    0x10,
    0x20
};

static UnkStruct_ov104_022419A0 Unk_ov104_022419A0[] = {
    { 0x0, 0x0 },
    { 0x0, 0x1 },
    { 0x0, 0x2 },
    { 0x0, 0x3 },
    { 0x2, 0x0 },
    { 0x2, 0x1 },
    { 0x2, 0x2 },
    { 0x2, 0x3 },
    { 0x6, 0x0 },
    { 0x6, 0x1 },
    { 0x6, 0x2 },
    { 0x6, 0x3 },
    { 0x7, 0x0 },
    { 0x7, 0x1 },
    { 0x7, 0x2 },
    { 0x7, 0x3 },
    { 0xA, 0x0 },
    { 0xA, 0x1 },
    { 0xA, 0x2 },
    { 0xA, 0x3 },
    { 0xB, 0x0 },
    { 0xB, 0x1 },
    { 0xB, 0x2 },
    { 0xB, 0x3 },
    { 0x8, 0x0 },
    { 0x8, 0x1 },
    { 0x8, 0x2 },
    { 0x8, 0x3 },
    { 0x9, 0x0 },
    { 0x9, 0x1 },
    { 0x9, 0x2 },
    { 0x9, 0x3 }
};

void ov104_02232B78(SysTask *param0, void *param1)
{
    UnkStruct_ov104_02232B78 *v0 = param1;
    UnkStruct_ov63_0222CCB8 v1;
    u16 v2, v3;

    v2 = v0->unk_0C->unk_00;
    v3 = v0->unk_0C->unk_02;

    switch (v0->unk_00) {
    case 0:
        if (v2 == 0xfd13) {
            v0->unk_00 = 2;
            break;
        }
    case 1:
        if (ov63_0222BF90(v0->unk_14->unk_00, 5) == 0) {
            if ((v2 >= (32 + 0)) && (v2 <= (32 + 6))) {
                v0->unk_02++;

                if (v0->unk_02 >= Unk_ov104_0223F9A4[v2 - (32 + 0)]) {
                    v0->unk_02 = 0;
                    v0->unk_0C++;
                }
                break;
            } else if ((v2 >= (32 + 7)) && (v2 < ((32 + 7) + 2))) {
                switch (v2) {
                case ((32 + 7) + 0):
                    ov63_0222D008(v0->unk_14->unk_04, 1);
                    break;
                case ((32 + 7) + 1):
                    ov63_0222D008(v0->unk_14->unk_04, 0);
                    break;
                default:
                    GF_ASSERT(0);
                    break;
                }

                v0->unk_0C++;
                break;
            }

            ov104_02232C80(&v1, v0->unk_14->unk_00, v0->unk_04, v2);
            ov63_0222D7C8(v0->unk_10, &v1);

            v0->unk_01++;

            if (v0->unk_01 >= v3) {
                v0->unk_01 = 0;
                v0->unk_0C++;
            }

            v0->unk_00 = 0;
        }
        break;
    case 2:
        if (ov63_0222BF90(v0->unk_14->unk_00, 5) == 0) {
            (*(v0->unk_08))--;
            v0->unk_14->unk_38 = NULL;
            Heap_FreeToHeap(v0);
            SysTask_Done(param0);
            return;
        }
        break;
    }
}

void ov104_02232C80(UnkStruct_ov63_0222CCB8 *param0, UnkStruct_ov63_0222BEC0 *param1, int param2, int param3)
{
    param0->unk_07 = param2;
    param0->unk_06 = Unk_ov104_022419A0[param3].unk_02;
    param0->unk_04 = Unk_ov104_022419A0[param3].unk_00;

    if ((param0->unk_04 == 2) || (param0->unk_04 == 3) || (param0->unk_04 == 6)) {
        param0->unk_00 = ov63_0222C0F0(param1);
    } else {
        param0->unk_00 = ov63_0222C0E4(param1);
    }
}

void ov104_02232CE0(UnkStruct_ov104_0223C4CC *param0, Pokemon *param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, u16 param9)
{
    SpriteRenderer *v0 = param0->unk_34.unk_00;
    SpriteGfxHandler *v1 = param0->unk_34.unk_04;
    PaletteData *v2 = param0->unk_04;
    ArchivedSprite v3;
    void *v4;
    CellActorData *v5;

    {
        NARC *v6;

        v6 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, param2);

        SpriteRenderer_LoadCharResObjFromOpenNarc(v0, v1, v6, 112, 0, NNS_G2D_VRAM_TYPE_2DMAIN, param3);
        SpriteRenderer_LoadPalette(v2, 2, v0, v1, v6, 111, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param3);
        SpriteRenderer_LoadCellResObjFromOpenNarc(v0, v1, v6, 113, 0, param3);
        SpriteRenderer_LoadAnimResObjFromOpenNarc(v0, v1, v6, 114, 0, param3);
        NARC_dtor(v6);
    }

    {
        int v7;
        SpriteTemplate v8;

        MI_CpuClear8(&v8, sizeof(SpriteTemplate));

        v8.x = param4;
        v8.y = param5;
        v8.z = 0;
        v8.animIdx = 0;
        v8.priority = param6;
        v8.plttIdx = 0;
        v8.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v8.bgPriority = param7;
        v8.transferToVRAM = FALSE;

        for (v7 = 0; v7 < 6; v7++) {
            v8.resources[v7] = param3;
        }

        v5 = SpriteActor_LoadResources(v0, v1, &v8);
        sub_0200D330(v5);
    }

    {
        u32 v9, v10;

        v4 = Heap_AllocFromHeap(param2, (10 * 10 * ((8 / 2) * 8)));
        v9 = Pokemon_GetValue(param1, MON_DATA_PERSONALITY, NULL);
        v10 = Pokemon_GetValue(param1, MON_DATA_SPECIES, NULL);

        Pokemon_BuildArchivedSprite(&v3, param1, 2);
        sub_020136A4(v3.archive, v3.character, param2, 0, 0, 10, 10, v4, v9, 0, 2, v10);
    }

    {
        NNSG2dImageProxy *v11;
        NNSG2dImagePaletteProxy *v12;
        int v13;

        v11 = SpriteActor_ImageProxy(v5->unk_00);
        DC_FlushRange(v4, sizeof(10 * 10 * ((8 / 2) * 8)));
        GX_LoadOBJ(v4, v11->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN], (10 * 10 * ((8 / 2) * 8)));

        v12 = CellActor_GetPaletteProxy(v5->unk_00);
        v13 = sub_0201FAB4(v12, NNS_G2D_VRAM_TYPE_2DMAIN);

        PaletteSys_LoadPalette(v2, v3.archive, v3.palette, param2, 2, 0x20, v13 * 16);

        if (param8 > 0) {
            sub_020039B0(v2, 2, v13 * 16, 16, param8, param9);
        }
    }

    Heap_FreeToHeap(v4);

    GF_ASSERT(param0->unk_80[param3 - 50000] == NULL);
    param0->unk_80[param3 - 50000] = v5;
}

void ov104_02232E80(UnkStruct_ov104_0223C4CC *param0, int param1)
{
    sub_0200D0F4(param0->unk_80[param1 - 50000]);

    param0->unk_80[param1 - 50000] = NULL;

    SpriteGfxHandler_UnloadCharObjById(param0->unk_34.unk_04, param1);
    SpriteGfxHandler_UnloadPlttObjById(param0->unk_34.unk_04, param1);
    SpriteGfxHandler_UnloadCellObjById(param0->unk_34.unk_04, param1);
    SpriteGfxHandler_UnloadAnimObjById(param0->unk_34.unk_04, param1);
}

static const SpriteTemplate Unk_ov104_0223F9E0 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x64,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x7D0, 0x7D0, 0x7D0, 0x7D0, 0xffffffff, 0xffffffff },
    0x1,
    0x0
};

static const SpriteTemplate Unk_ov104_0223F9AC = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x63,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x7D9, 0x7D1, 0x7D1, 0x7D1, 0xffffffff, 0xffffffff },
    0x1,
    0x0
};

void ov104_02232EC0(UnkStruct_ov104_0223C4CC *param0)
{
    sub_0200CD7C(param0->unk_04, 2, param0->unk_34.unk_00, param0->unk_34.unk_04, 19, PokeIconPalettesFileIndex(), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 2000);
    sub_0200CE0C(param0->unk_34.unk_00, param0->unk_34.unk_04, 19, PokeIcon32KCellsFileIndex(), 0, 2000);
    sub_0200CE3C(param0->unk_34.unk_00, param0->unk_34.unk_04, 19, PokeIcon32KAnimationFileIndex(), 0, 2000);
}

void ov104_02232F28(UnkStruct_ov104_0223C4CC *param0)
{
    SpriteGfxHandler_UnloadCellObjById(param0->unk_34.unk_04, 2000);
    SpriteGfxHandler_UnloadAnimObjById(param0->unk_34.unk_04, 2000);
    SpriteGfxHandler_UnloadPlttObjById(param0->unk_34.unk_04, 2000);
}

CellActorData *ov104_02232F4C(UnkStruct_ov104_0223C4CC *param0, Pokemon *param1, int param2, int param3, int param4)
{
    CellActorData *v0;
    SpriteTemplate v1;

    GF_ASSERT(param2 < (2008 - 2000));

    sub_0200D888(
        param0->unk_34.unk_00, param0->unk_34.unk_04, 19, Pokemon_IconSpriteIndex(param1), 0, NNS_G2D_VRAM_TYPE_2DMAIN, 2000 + param2);

    v1 = Unk_ov104_0223F9E0;

    v1.resources[0] += param2;
    v1.x = param3;
    v1.y = param4;
    v1.priority = 200;

    v0 = SpriteActor_LoadResources(param0->unk_34.unk_00, param0->unk_34.unk_04, &v1);

    CellActor_SetExplicitPaletteOffsetAutoAdjust(v0->unk_00, Pokemon_IconPaletteIndex(param1));
    sub_0200D330(v0);

    return v0;
}

void ov104_02232FD4(UnkStruct_ov104_0223C4CC *param0, CellActorData *param1, int param2)
{
    SpriteGfxHandler_UnloadCharObjById(param0->unk_34.unk_04, 2000 + param2);
    sub_0200D0F4(param1);
}

void ov104_02232FEC(UnkStruct_ov104_0223C4CC *param0)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PLIST_GRA, 94);

    SpriteRenderer_LoadPalette(param0->unk_04, 2, param0->unk_34.unk_00, param0->unk_34.unk_04, v0, sub_02081934(), 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 2001);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_34.unk_00, param0->unk_34.unk_04, v0, sub_02081938(), 0, 2001);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_34.unk_00, param0->unk_34.unk_04, v0, sub_0208193C(), 0, 2001);
    sub_0200D888(param0->unk_34.unk_00, param0->unk_34.unk_04, 20, sub_02081930(), 0, NNS_G2D_VRAM_TYPE_2DMAIN, 2009);
    NARC_dtor(v0);
}

void ov104_0223307C(UnkStruct_ov104_0223C4CC *param0)
{
    SpriteGfxHandler_UnloadCharObjById(param0->unk_34.unk_04, 2009);
    SpriteGfxHandler_UnloadCellObjById(param0->unk_34.unk_04, 2001);
    SpriteGfxHandler_UnloadAnimObjById(param0->unk_34.unk_04, 2001);
    SpriteGfxHandler_UnloadPlttObjById(param0->unk_34.unk_04, 2001);
}

CellActorData *ov104_022330AC(UnkStruct_ov104_0223C4CC *param0, int param1, int param2)
{
    CellActorData *v0;
    SpriteTemplate v1;

    v1 = Unk_ov104_0223F9AC;

    v1.x = param1;
    v1.y = param2;
    v1.priority = 300;

    v0 = SpriteActor_LoadResources(param0->unk_34.unk_00, param0->unk_34.unk_04, &v1);
    sub_0200D330(v0);

    return v0;
}

void ov104_022330F0(UnkStruct_ov104_0223C4CC *param0, CellActorData *param1)
{
    sub_0200D0F4(param1);
}

void ov104_022330FC(UnkStruct_ov104_0222E930 *param0, u16 *param1)
{
    ov104_0223310C(param0, param1, 614);
    return;
}

void ov104_0223310C(UnkStruct_ov104_0222E930 *param0, u16 *param1, u32 param2)
{
    u8 v0;
    MessageLoader *v1;
    UnkStruct_ov104_02230BE4 *v2 = sub_0209B970(param0->unk_00->unk_00);

    if (param1[0] == 0xFFFF) {
        v1 = MessageLoader_Init(1, 26, param2, 32);

        ov104_02231F74(param0->unk_00, v1, param1[1], 1, NULL);
        MessageLoader_Free(v1);
    } else {
        v0 = Options_TextFrameDelay(SaveData_Options(v2->unk_08));
        ov104_022320B4(param0->unk_00, v0, param1[0], param1[1], param1[2], param1[3], 1);
    }

    ov104_0222E974(param0, ov104_02233184);
    return;
}

static BOOL ov104_02233184(UnkStruct_ov104_0222E930 *param0)
{
    if (Text_IsPrinterActive(param0->unk_00->unk_50) == 0) {
        return 1;
    }

    return 0;
}

void ov104_0223319C(SysTask *param0, void *param1)
{
    UnkStruct_ov104_0223319C *v0 = param1;

    v0->unk_08++;

    if (v0->unk_08 > v0->unk_09) {
        v0->unk_08 = 0;
        v0->unk_0A--;

        if (v0->unk_0A < 0) {
            SysTask_Done(param0);
            MI_CpuClear8(v0, sizeof(UnkStruct_ov104_0223319C));
            return;
        }

        v0->unk_04 = -v0->unk_04;
        v0->unk_06 = -v0->unk_06;
    }
}

void ov104_022331E8(SysTask *param0, void *param1)
{
    UnkStruct_ov104_022331E8 *v0 = param1;

    if (v0->unk_08 <= 0) {
        if (v0->unk_0A == 1) {
            G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3, 1);
            G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
            G2_SetWnd0Position(v0->unk_04, v0->unk_05, v0->unk_06, v0->unk_07);
            GX_SetVisibleWnd(GX_WNDMASK_W0);
        } else {
            GX_SetVisibleWnd(GX_WNDMASK_NONE);
        }

        SysTask_Done(param0);
        MI_CpuClear8(v0, sizeof(UnkStruct_ov104_022331E8));
        return;
    } else {
        v0->unk_08--;
    }
}

void ov104_0223327C(UnkStruct_ov104_02232B5C *param0, int param1)
{
    param0->unk_97_6 = param1;
}

void ov104_02233298(UnkStruct_ov104_02232B5C *param0, int param1)
{
    param0->unk_97_7 = param1;
}
