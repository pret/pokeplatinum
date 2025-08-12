#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0202F41C_decl.h"
#include "struct_defs/struct_02030A80.h"
#include "struct_defs/struct_0208C06C.h"

#include "overlay061/ov61_0222AE60.h"
#include "overlay061/ov61_0222B008.h"
#include "overlay061/struct_ov61_0222BED8.h"
#include "overlay061/struct_ov61_0222BED8_sub1.h"
#include "overlay062/ov62_0222F2C0.h"
#include "overlay062/ov62_022300D8.h"
#include "overlay062/ov62_02231690.h"
#include "overlay062/ov62_0224112C.h"
#include "overlay062/ov62_const_funcptr_tables.h"
#include "overlay062/struct_ov62_022312B0.h"
#include "overlay062/struct_ov62_022323B8.h"
#include "overlay062/struct_ov62_02233F74.h"
#include "overlay062/struct_ov62_0223CAA4.h"
#include "overlay062/struct_ov62_0223E01C_sub1.h"
#include "overlay062/struct_ov62_0223E01C_sub2.h"
#include "overlay062/struct_ov62_02248CDC.h"
#include "overlay062/struct_ov62_02249380.h"

#include "bg_window.h"
#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "palette.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"
#include "unk_02012744.h"
#include "unk_0202F1D4.h"
#include "unk_02030A80.h"
#include "unk_020393C8.h"
#include "unk_0208B284.h"
#include "unk_0208BA78.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    Window unk_14[8];
    Window unk_94[8];
    UnkStruct_ov62_022312B0 unk_114[4];
    UnkStruct_ov61_0222BED8 *unk_184;
    TouchScreenActions *unk_188[3];
    UnkStruct_ov62_022323B8 unk_194;
    UnkStruct_ov62_02233F74 unk_220;
    UnkStruct_ov61_0222BED8 unk_2DC;
    int unk_1FB0;
    int unk_1FB4;
    int unk_1FB8;
    int unk_1FBC;
    BOOL unk_1FC0;
    UnkStruct_ov62_0223E01C_sub1 unk_1FC4;
    UnkStruct_ov62_02249380 *unk_1FD8;
    UnkStruct_ov62_02248CDC unk_1FDC;
    UnkStruct_ov62_0223E01C_sub2 unk_2008;
} UnkStruct_ov62_0223E01C;

static const UnkStruct_ov62_02248CDC Unk_ov62_02248FD8 = {
    NULL,
    0x6,
    0x3,
    0x2,
    0x8,
    0xA,
    0xF,
    0x80,
    0x2,
    0x5,
    NULL
};

static const TouchScreenRect Unk_ov62_02248FC8[] = {
    { 0x10, 0x30, 0x40, 0xC8 },
    { 0x40, 0x70, 0x58, 0xA8 },
    { 0x98, 0xB8, 0x80, 0xE0 },
    { 0x98, 0xB8, 0x20, 0x80 }
};

static const TouchScreenRect Unk_ov62_02248F98[] = {
    { 0x19, 0x39, 0x32, 0xD2 },
    { 0x3D, 0x5D, 0x32, 0xD2 },
    { 0x61, 0x81, 0x32, 0xD2 },
    { 0x85, 0xA5, 0x32, 0xD2 }
};

static const TouchScreenRect Unk_ov62_02248F84[] = {
    { 0x28, 0x48, 0x20, 0x78 },
    { 0x28, 0x48, 0x90, 0xE8 }
};

static const TouchScreenRect Unk_ov62_02248F80[] = {
    { 0x98, 0xB8, 0x50, 0xB0 }
};

static const TouchScreenRect Unk_ov62_02248F7C[] = {
    { 0x20, 0x60, 0x50, 0xB0 }
};

static void ov62_0223DFA8(UnkStruct_0208C06C *param0);
static void ov62_0223E01C(UnkStruct_0208C06C *param0);
static void ov62_0223E0FC(UnkStruct_0208C06C *param0, int param1, int param2);
static BOOL ov62_0223E22C(UnkStruct_0208C06C *param0);
static void ov62_0223E428(UnkStruct_0208C06C *param0);
static BOOL ov62_0223E448(UnkStruct_0208C06C *param0);
static BOOL ov62_0223E460(UnkStruct_0208C06C *param0);
static BOOL ov62_0223E510(UnkStruct_0208C06C *param0);
static BOOL ov62_0223E810(UnkStruct_0208C06C *param0);
static BOOL ov62_0223EB10(UnkStruct_0208C06C *param0);
static BOOL ov62_0223EB28(UnkStruct_0208C06C *param0);
static BOOL ov62_0223E8BC(UnkStruct_0208C06C *param0);
static BOOL ov62_0223ED7C(UnkStruct_0208C06C *param0);
static void ov62_0223EE88(UnkStruct_ov62_022312B0 *param0, UnkStruct_0208C06C *param1, int param2);
static void ov62_0223EF60(UnkStruct_0208C06C *param0);
static void ov62_0223F038(UnkStruct_0208C06C *param0);
static void ov62_0223F06C(UnkStruct_0208C06C *param0);
static void ov62_0223F0A8(UnkStruct_0208C06C *param0, int param1);
static void ov62_0223F124(UnkStruct_0208C06C *param0);
static void ov62_0223F160(UnkStruct_0208C06C *param0);
static BOOL ov62_0223F19C(UnkStruct_0208C06C *param0);
static BOOL ov62_0223F218(UnkStruct_0208C06C *param0);
static BOOL ov62_0223F348(UnkStruct_0208C06C *param0);
static void ov62_0223F65C(UnkStruct_0208C06C *param0);
static BOOL ov62_0223F760(UnkStruct_0208C06C *param0);
static BOOL ov62_0223F984(UnkStruct_0208C06C *param0);
static BOOL ov62_0223FB74(UnkStruct_0208C06C *param0);
static BOOL ov62_0223FCC4(UnkStruct_0208C06C *param0);
static BOOL ov62_0223FE2C(UnkStruct_0208C06C *param0);
static BOOL ov62_0223FE44(UnkStruct_0208C06C *param0);
static BOOL ov62_0223FF90(UnkStruct_0208C06C *param0);
static BOOL ov62_02240084(UnkStruct_0208C06C *param0);
static void ov62_022402FC(UnkStruct_0208C06C *param0, int param1, BOOL param2);
static BOOL ov62_022403F8(UnkStruct_0208C06C *param0);
static void ov62_0224088C(UnkStruct_0208C06C *param0);
static void ov62_022408A8(UnkStruct_0208C06C *param0, int param1);
static void ov62_02240900(UnkStruct_0208C06C *param0);
static void ov62_02240944(UnkStruct_0208C06C *param0);
static void ov62_02240A24(UnkStruct_0208C06C *param0);
static void ov62_02240A50(u32 param0, enum TouchScreenButtonState param1, void *param2);
static void ov62_02240AEC(u32 param0, enum TouchScreenButtonState param1, void *param2);
static void ov62_02240B5C(u32 param0, enum TouchScreenButtonState param1, void *param2);
static void ov62_02240B94(UnkStruct_0208C06C *param0);
static void ov62_02240BF4(UnkStruct_0208C06C *param0);
static void ov62_02240D98(UnkStruct_0208C06C *param0, BOOL param1);
static void ov62_02240DDC(UnkStruct_0208C06C *param0);
static void ov62_02240E30(UnkStruct_0208C06C *param0);
static void ov62_022410F0(UnkStruct_0208C06C *param0);

static void ov62_0223DFA8(UnkStruct_0208C06C *param0)
{
    const s16 v0[][2] = {
        { 13 * 8, 9 * 8 },
        { 16 * 8, 9 * 8 },
        { 19 * 8, 9 * 8 },
        { 22 * 8, 9 * 8 },
        { 25 * 8, 9 * 8 },
        { 28 * 8, 9 * 8 },
        { 13 * 8, 12 * 8 },
        { 16 * 8, 12 * 8 },
        { 19 * 8, 12 * 8 },
        { 22 * 8, 12 * 8 },
        { 25 * 8, 12 * 8 },
        { 28 * 8, 12 * 8 },
        { 13 * 8, 15 * 8 },
        { 16 * 8, 15 * 8 },
        { 19 * 8, 15 * 8 },
        { 22 * 8, 15 * 8 },
        { 25 * 8, 15 * 8 },
        { 28 * 8, 15 * 8 },
        { 13 * 8, 18 * 8 },
        { 16 * 8, 18 * 8 },
        { 19 * 8, 18 * 8 },
        { 22 * 8, 18 * 8 },
        { 25 * 8, 18 * 8 },
        { 28 * 8, 18 * 8 },
        { 13 * 8, 21 * 8 },
        { 16 * 8, 21 * 8 },
        { 19 * 8, 21 * 8 },
        { 22 * 8, 21 * 8 },
        { 25 * 8, 21 * 8 },
        { 28 * 8, 21 * 8 },
    };
    int v1, v2;
    UnkStruct_ov62_0223E01C *v3 = param0->unk_860;

    for (v1 = 0; v1 < 5; v1++) {
        for (v2 = 0; v2 < 6; v2++) {
            if (v3->unk_2008.unk_0C[v1][v2].unk_04) {
                ManagedSprite_SetPositionXY(v3->unk_2008.unk_0C[v1][v2].unk_04, v0[(v1 * 6) + v2][0], v0[(v1 * 6) + v2][1]);
            }
        }
    }
}

static void ov62_0223E01C(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    ov62_022312CC(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    v0->unk_114[0].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);
    v0->unk_114[1].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    ov62_0223118C(&v0->unk_114[0], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DSUB);
    ov62_0223118C(&v0->unk_114[1], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DSUB);
    ov62_0223124C(&v0->unk_114[0], &param0->unk_14, 3);
    ov62_0223124C(&v0->unk_114[1], &param0->unk_14, 94);

    ManagedSprite_SetAnim(v0->unk_114[0].unk_08, 0);
    ManagedSprite_SetAnim(v0->unk_114[1].unk_08, 3);
    ManagedSprite_SetPositionXY(v0->unk_114[0].unk_08, 32, 232);
    ManagedSprite_SetPositionXY(v0->unk_114[1].unk_08, 128, 232);
    sub_020128C4(v0->unk_114[0].unk_0C, 36, -8);
    sub_020128C4(v0->unk_114[1].unk_0C, 36, -8);
    sub_020129D0(v0->unk_114[0].unk_0C, 1);
    sub_020129D0(v0->unk_114[1].unk_0C, 1);

    ov62_0223F0A8(param0, 0);
}

static void ov62_0223E0FC(UnkStruct_0208C06C *param0, int param1, int param2)
{
    Strbuf *v0;
    Window *v1 = &param0->unk_8A4;
    UnkStruct_ov62_0223E01C *v2 = param0->unk_860;

    if (param1 == 100) {
        StringTemplate *v3;
        Strbuf *v4;
        Strbuf *v5;
        UnkStruct_02030A80 *v6 = v2->unk_194.unk_00;

        v3 = ov62_02231690(HEAP_ID_102);
        v0 = Strbuf_Init(255, HEAP_ID_102);
        v4 = sub_02030B94(v6, HEAP_ID_102);
        ov62_022349A8(param0, v4);
        v5 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);
        StringTemplate_SetStrbuf(v3, 0, v4, 0, 1, GAME_LANGUAGE);
        StringTemplate_Format(v3, v0, v5);
        Strbuf_Free(v4);
        Strbuf_Free(v5);
        StringTemplate_Free(v3);
    } else if (param1 == 102) {
        StringTemplate *v7;
        Strbuf *v8;
        Strbuf *v9;
        UnkStruct_02030A80 *v10 = param0->unk_88C[param2];

        v7 = ov62_02231690(HEAP_ID_102);
        v0 = Strbuf_Init(255, HEAP_ID_102);
        v8 = sub_02030B94(v10, HEAP_ID_102);
        ov62_022349A8(param0, v8);
        v9 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);

        StringTemplate_SetStrbuf(v7, 0, v8, 0, 1, GAME_LANGUAGE);
        StringTemplate_Format(v7, v0, v9);
        Strbuf_Free(v8);
        Strbuf_Free(v9);
        StringTemplate_Free(v7);
    } else {
        v0 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);
    }

    Window_FillTilemap(v1, 0xCC);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 12), NULL);
    Window_ScheduleCopyToVRAM(v1);
    Strbuf_Free(v0);
}

static BOOL ov62_0223E22C(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;
    UnkStruct_ov62_0223CAA4 *v1;

    if (ov62_022411B8(param0) == 0) {
        return 0;
    }

    switch (param0->unk_08) {
    case 0:
        Bg_ClearTilemap(param0->unk_14.unk_10, 2);
        Bg_ClearTilemap(param0->unk_14.unk_10, 6);

        if (v0->unk_10 == 0) {
            ov62_0223427C(&v0->unk_220, 0);
        } else {
            ov62_022323B8(&v0->unk_194, 0);
        }

        param0->unk_08++;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            param0->unk_08++;
        }
        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        ov62_02231AAC(param0, 117);
        ov62_02234358(param0, param0->unk_6F0, 128, 96);
        sub_0208B9E0(param0->unk_6F0, 1);
        sub_0208BA08(param0->unk_6F0, 24, 24);
        v0->unk_1FC0 = 0;
        Sound_PlayEffect(SEQ_SE_PL_BREC80);
        param0->unk_08++;
        break;
    case 3:
        if (ov61_0222B524(ov62_0224112C(param0), param0->unk_8B4.unk_1D58[param0->unk_14.unk_48C.unk_38.unk_00]->unk_80.unk_58) == 1) {
            param0->unk_08++;
        }
        break;
    case 4:
        ov62_02231B8C(param0);

        if (ov61_0222BB48(ov62_0224112C(param0), &v1) == 1) {
            Sound_StopEffect(1381, 0);
            ov62_022348B8(param0, 8, v1->unk_0C, v1->unk_04);
            param0->unk_08++;
            v0->unk_1FC0 = 0;
        } else {
            Sound_StopEffect(1381, 0);
            param0->unk_08 = 0xFF;
            v0->unk_1FC0 = 1;
            param0->unk_878 = &param0->unk_8B4.unk_3904[param0->unk_14.unk_48C.unk_38.unk_00];
            v0->unk_184 = param0->unk_8B4.unk_00;
            MI_CpuCopy8(v0->unk_184, &param0->unk_8B4.unk_04, sizeof(UnkStruct_ov61_0222BED8));
        }

        sub_0208B9E0(param0->unk_6F0, 0);
        sub_0208BA08(param0->unk_6F0, 0, 0);
        break;
    default:
        if (v0->unk_1FC0) {
            Sound_PlayEffect(SEQ_SE_PL_BREC12);
            ov62_0222FB60(param0, v0->unk_1FBC);
            ov62_0223381C(param0, 1);
        } else {
            ov62_0222FB60(param0, 20);
        }
        break;
    }

    return 0;
}

static void ov62_0223E428(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    sub_0202FF44(v0->unk_220.unk_04);
    sub_02030A98(v0->unk_194.unk_00);
}

static BOOL ov62_0223E448(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    TouchScreenActions_HandleAction(v0->unk_188[2]);
    return 0;
}

static BOOL ov62_0223E460(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 1:
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 2)) {
            ov62_02240A24(param0);
            Bg_ClearTilemap(param0->unk_14.unk_10, 6);
            Bg_ClearTilemap(param0->unk_14.unk_10, 7);
            param0->unk_08++;
        }
        break;
    case 2:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 2)) {
            ov62_0223E0FC(param0, 100, 0);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 12);
        break;
        return 1;
    }

    return 0;
}

static BOOL ov62_0223E510(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;
    UnkStruct_ov62_0223CAA4 *v1;

    switch (param0->unk_08) {
    case 0:
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 2)) {
            Bg_ClearTilemap(param0->unk_14.unk_10, 6);
            ov62_0223E0FC(param0, 278, 0);
            ov62_022342BC(param0);
            param0->unk_08++;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:;
        if (ov62_022337F0(param0, v0->unk_1FB0, param0->unk_8B4.unk_3904[param0->unk_14.unk_48C.unk_38.unk_00])) {
            param0->unk_08++;
        }
        break;
    case 3:
        ov62_02234358(param0, param0->unk_6F0, 128, 96);
        sub_0208B9E0(param0->unk_6F0, 1);
        sub_0208BA08(param0->unk_6F0, 24, 24);
        param0->unk_08++;
        Sound_PlayEffect(SEQ_SE_PL_BREC80);
        break;
    case 4:
        if (ov62_022411B8(param0) == 0) {
            return 0;
        }

        ov62_0223E0FC(param0, 280, 0);

        {
            u64 v2 = sub_0202FE98(sub_0202FE04(), 4, 0);

            if (ov61_0222B550(ov62_0224112C(param0), v2) == 1) {
                param0->unk_08++;
            }
        }
        break;
    case 5:
        if (ov62_022411B8(param0) == 0) {
            return 0;
        }

        if (ov61_0222BB48(ov62_0224112C(param0), &v1) == 1) {
            Sound_StopEffect(1381, 0);

            param0->unk_08++;
        } else {
            Sound_StopEffect(1381, 0);
            Sound_PlayEffect(SEQ_SE_PL_BREC12);
            param0->unk_08++;
        }
        ov62_0223E0FC(param0, 281, 0);
        break;
    case 6:
        if (!TouchScreen_Tapped()) {
            break;
        }

        ov62_02231A88(param0);
        ov62_02234540(param0, 1);
        ov62_0223F038(param0);
        ov62_02234540(param0, 0);
        sub_0208B9E0(param0->unk_6F0, 0);
        sub_0208BA08(param0->unk_6F0, 0, 0);
        ov62_022339A0(param0);
        ov62_022338A8(param0);
        ov62_02233310(&param0->unk_14.unk_48C);
        param0->unk_08++;
        break;
    case 7:
        TouchScreenActions_Free(v0->unk_188[0]);
        TouchScreenActions_Free(v0->unk_188[1]);
        TouchScreenActions_Free(v0->unk_188[2]);
        ov62_0223E428(param0);
        ov62_02231688(&v0->unk_08);
        ov62_02234540(param0, 1);
        ov62_0223146C(param0);
        ov62_02234540(param0, 0);
        sub_020397C8(1, HEAP_ID_102);
        ov62_0223376C(param0, 1);
        param0->unk_08++;
        break;
    default:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        if (ov62_02231664(&v0->unk_08, 0)) {
            ov62_022318E8(param0);
            ov62_02231688(&v0->unk_08);
            PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);
            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);
            Bg_ClearTilemap(param0->unk_14.unk_10, 2);
            Bg_ClearTilemap(param0->unk_14.unk_10, 6);
            Bg_ClearTilemap(param0->unk_14.unk_10, 3);
            Bg_ClearTilemap(param0->unk_14.unk_10, 7);
            Heap_Free(v0);

            if (sub_0202F250() == 1) {
                sub_0202F22C();
            }
        } else {
            PaletteData_BlendMulti(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
            PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        }

        break;
    }

    return 0;
}

static BOOL ov62_0223E810(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 2)) {
            Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_14.unk_00, 84, param0->unk_14.unk_10, 7, 0, 0, 0, HEAP_ID_102);
            ov62_0223E0FC(param0, 102, v0->unk_1FB0);
            param0->unk_08++;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 1:
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 2)) {
            ov62_02240944(param0);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }
        break;
    default:
        ov62_0222FB60(param0, 15);
        break;
    }

    return 0;
}

static BOOL ov62_0223E8BC(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        Bg_ClearTilemap(param0->unk_14.unk_10, 2);
        Bg_ClearTilemap(param0->unk_14.unk_10, 6);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            param0->unk_08++;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        if (param0->unk_86C == 210) {
            ov62_0223124C(&v0->unk_114[0], &param0->unk_14, 3);
            ov62_0223124C(&v0->unk_114[1], &param0->unk_14, 94);
            ManagedSprite_SetAnim(v0->unk_114[0].unk_08, 0);
            ManagedSprite_SetAnim(v0->unk_114[1].unk_08, 3);
        }

        ov62_0224088C(param0);
        ov62_02240900(param0);
        Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, HEAP_ID_102);
        Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, HEAP_ID_102);
        ov62_02234540(param0, 1);

        if (v0->unk_10 == 0) {
            ov62_02234228(&v0->unk_220, param0);
            ov62_02234214(&v0->unk_220, param0);
            ov62_0223427C(&v0->unk_220, 0);
            ov62_022343B8(param0, ov62_02233FEC(&v0->unk_220), 3);
        } else {
            ov62_02232394(&v0->unk_194, param0);
            ov62_02232378(&v0->unk_194, param0);
            ov62_022323B8(&v0->unk_194, 0);
            Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_14.unk_00, 80, param0->unk_14.unk_10, 3, 0, 0, 0, HEAP_ID_102);
        }

        ov62_02234540(param0, 0);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_14.unk_00, 6, param0->unk_14.unk_10, 7, 0, 0, 0, HEAP_ID_102);
        param0->unk_08++;
        break;
    case 3:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            if (v0->unk_10 == 0) {
                ov62_0223427C(&v0->unk_220, 1);
            } else {
                ov62_022323B8(&v0->unk_194, 1);
            }

            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default: {
        int v1;

        for (v1 = 0; v1 < param0->unk_8B4.unk_3900; v1++) {
            param0->unk_8B4.unk_1D58[v1] = &param0->unk_8B4.unk_1DD0[v1];
        }
    }
        ov62_0222FB60(param0, 7);
        break;
    }

    return 0;
}

static BOOL ov62_0223EB10(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    TouchScreenActions_HandleAction(v0->unk_188[1]);
    return 0;
}

static BOOL ov62_0223EB28(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        Bg_ClearTilemap(param0->unk_14.unk_10, 2);
        Bg_ClearTilemap(param0->unk_14.unk_10, 6);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            ov62_02234540(param0, 1);
            ov62_0223F038(param0);
            ov62_02234540(param0, 0);
            param0->unk_08++;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        ov62_0223E01C(param0);

        if (param0->unk_86C == 210) {
            ov62_0223124C(&v0->unk_114[0], &param0->unk_14, 3);
            ov62_0223124C(&v0->unk_114[1], &param0->unk_14, 94);
            ManagedSprite_SetAnim(v0->unk_114[0].unk_08, 0);
            ManagedSprite_SetAnim(v0->unk_114[1].unk_08, 3);
        }

        ov62_02240900(param0);
        Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, HEAP_ID_102);
        Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, HEAP_ID_102);
        ov62_02234540(param0, 1);

        if (v0->unk_10 == 0) {
            ov62_02234214(&v0->unk_220, param0);
            ov62_0223427C(&v0->unk_220, 0);

            ov62_022343B8(param0, ov62_02233FEC(&v0->unk_220), 3);
        } else {
            ov62_02232378(&v0->unk_194, param0);
            ov62_022323B8(&v0->unk_194, 0);
            Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_14.unk_00, 80, param0->unk_14.unk_10, 3, 0, 0, 0, HEAP_ID_102);
        }

        ov62_02234540(param0, 0);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_14.unk_00, 6, param0->unk_14.unk_10, 7, 0, 0, 0, HEAP_ID_102);
        param0->unk_08++;
        break;
    case 3:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            if (v0->unk_10 == 0) {
                ov62_0223427C(&v0->unk_220, 1);
            } else {
                ov62_022323B8(&v0->unk_194, 1);
            }

            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default: {
        int v1;

        for (v1 = 0; v1 < param0->unk_8B4.unk_3900; v1++) {
            param0->unk_8B4.unk_1D58[v1] = &param0->unk_8B4.unk_1DD0[v1];
        }
    }
        ov62_0222FB60(param0, 7);
        break;
    }

    return 0;
}

static BOOL ov62_0223ED7C(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        TouchScreenActions_Free(v0->unk_188[0]);
        TouchScreenActions_Free(v0->unk_188[1]);
        TouchScreenActions_Free(v0->unk_188[2]);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        ov62_0223E428(param0);
        ov62_02234540(param0, 1);

        if (v0->unk_10 == 0) {
            ov62_02234228(&v0->unk_220, param0);
        } else {
            ov62_02232394(&v0->unk_194, param0);
        }

        ov62_02234540(param0, 0);
        ov62_0224088C(param0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            ov62_0223124C(&v0->unk_114[0], &param0->unk_14, 3);
            ov62_0223124C(&v0->unk_114[1], &param0->unk_14, 111);
            ManagedSprite_SetAnim(v0->unk_114[0].unk_08, 0);
            ManagedSprite_SetAnim(v0->unk_114[1].unk_08, 1);
            ov62_0223F0A8(param0, 1);
            param0->unk_08++;
        }
        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 3);
        break;
    }

    return 0;
}

BOOL (*const Unk_ov62_022490DC[])(UnkStruct_0208C06C *) = {
    ov62_0223F19C,
    ov62_0223F218,
    ov62_0223F348,
    ov62_0223F760,
    ov62_0223F984,
    ov62_0223FB74,
    ov62_0223FCC4,
    ov62_0223FE2C,
    ov62_0223FE44,
    ov62_0223FF90,
    ov62_0223ED7C,
    ov62_022403F8,
    ov62_0223EB10,
    ov62_0223EB28,
    ov62_0223E810,
    ov62_0223E448,
    ov62_0223E460,
    ov62_0223E510,
    ov62_0223E22C,
    ov62_02240084,
    ov62_0223E8BC,
};

static void ov62_0223EE88(UnkStruct_ov62_022312B0 *param0, UnkStruct_0208C06C *param1, int param2)
{
    Strbuf *v0;
    MessageLoader *v1;
    Window v2;
    StringTemplate *v3;
    Strbuf *v4;
    Strbuf *v5;

    v1 = param1->unk_14.unk_34;

    if (param1->unk_88C[param2] == NULL) {
        v0 = MessageLoader_GetNewStrbuf(v1, 8);
    } else {
        v3 = ov62_02231690(HEAP_ID_102);
        v4 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 7);
        v5 = sub_02030B94(param1->unk_88C[param2], HEAP_ID_102);
        ov62_022349A8(param1, v5);
        v0 = Strbuf_Init(255, HEAP_ID_102);

        StringTemplate_SetStrbuf(v3, 0, v5, 0, 1, GAME_LANGUAGE);
        StringTemplate_Format(v3, v0, v4);
        Strbuf_Free(v4);
        Strbuf_Free(v5);
        StringTemplate_Free(v3);
    }

    Window_Init(&v2);
    Window_AddToTopLeftCorner(param1->unk_14.unk_10, &v2, 20, 2, 0, 0);
    Text_AddPrinterWithParamsAndColor(&v2, FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(14, 13, 0), NULL);
    sub_02012BE0(param0->unk_0C, param0->unk_10, &v2, HEAP_ID_102);
    Strbuf_Free(v0);
    Window_Remove(&v2);
}

static void ov62_0223EF60(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;
    int v1;
    int v2[] = {
        8,
        8,
        8,
        3,
    };
    int v3[] = { 0, 0, 0, 1 };

    ov62_0223136C(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    for (v1 = 0; v1 < 4; v1++) {
        v0->unk_114[v1].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);
        ov62_0223118C(&v0->unk_114[v1], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DSUB);
        ov62_0223124C(&v0->unk_114[v1], &param0->unk_14, v2[v1]);

        if (v1 != 3) {
            ov62_0223EE88(&v0->unk_114[v1], param0, v1 + 1);
        }

        ManagedSprite_SetPositionXY(v0->unk_114[v1].unk_08, 42 + 8, (25 + (36 * (v1)) + (16 * (5 - 4))) + 64);
        ManagedSprite_SetAnim(v0->unk_114[v1].unk_08, v3[v1]);
        sub_020128C4(v0->unk_114[v1].unk_0C, 36, -8);
        sub_020129D0(v0->unk_114[v1].unk_0C, 1);
    }
}

static void ov62_0223F038(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;
    int v1;

    for (v1 = 0; v1 < 4; v1++) {
        ov62_022312B0(&v0->unk_114[v1]);
        Sprite_DeleteAndFreeResources(v0->unk_114[v1].unk_08);
    }

    ov62_022313BC(param0);
}

static void ov62_0223F06C(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    ov62_022312B0(&v0->unk_114[0]);
    ov62_022312B0(&v0->unk_114[1]);
    Sprite_DeleteAndFreeResources(v0->unk_114[0].unk_08);
    Sprite_DeleteAndFreeResources(v0->unk_114[1].unk_08);
    ov62_022313BC(param0);
}

static void ov62_0223F0A8(UnkStruct_0208C06C *param0, int param1)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    if (param1 == 0) {
        ManagedSprite_SetDrawFlag(v0->unk_114[1].unk_08, 1);
        sub_020129D0(v0->unk_114[1].unk_0C, 1);
        ManagedSprite_SetPositionXY(v0->unk_114[0].unk_08, 32, 232);
    } else {
        ManagedSprite_SetDrawFlag(v0->unk_114[1].unk_08, 0);
        sub_020129D0(v0->unk_114[1].unk_0C, 0);
        ManagedSprite_SetPositionXY(v0->unk_114[0].unk_08, 80, 232);
    }

    sub_020128C4(v0->unk_114[0].unk_0C, 36, -8);
    sub_020128C4(v0->unk_114[1].unk_0C, 36, -8);
}

static void ov62_0223F124(UnkStruct_0208C06C *param0)
{
    int v0;
    UnkStruct_ov62_0223E01C *v1 = param0->unk_860;

    for (v0 = 0; v0 < v1->unk_1FB8; v0++) {
        Window_ClearAndCopyToVRAM(&v1->unk_14[v0]);
        Window_Remove(&v1->unk_14[v0]);
    }

    v1->unk_1FB8 = 0;
}

static void ov62_0223F160(UnkStruct_0208C06C *param0)
{
    int v0;
    UnkStruct_ov62_0223E01C *v1 = param0->unk_860;

    for (v0 = 0; v0 < v1->unk_1FB4; v0++) {
        Window_ClearAndCopyToVRAM(&v1->unk_94[v0]);
        Window_Remove(&v1->unk_94[v0]);
    }

    v1->unk_1FB4 = 0;
}

static BOOL ov62_0223F19C(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = Heap_AllocFromHeap(HEAP_ID_102, sizeof(UnkStruct_ov62_0223E01C));

    memset(v0, 0, sizeof(UnkStruct_ov62_0223E01C));

    param0->unk_860 = v0;

    if (param0->unk_86C == 300) {
        v0->unk_0C = 0;
    } else if (param0->unk_86C == 301) {
        v0->unk_0C = 1;
    } else if (param0->unk_86C == 200) {
        v0->unk_0C = 2;
    }

    Bg_ClearTilemap(param0->unk_14.unk_10, 2);
    Bg_ClearTilemap(param0->unk_14.unk_10, 3);
    Bg_ClearTilemap(param0->unk_14.unk_10, 6);
    Bg_ClearTilemap(param0->unk_14.unk_10, 7);
    ov62_022315C8(&v0->unk_00, &v0->unk_04, 0);
    ov62_0222FB60(param0, 1);

    return 0;
}

static BOOL ov62_0223F218(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        if (ov62_02231664(&v0->unk_08, 1)) {
            param0->unk_08++;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 1:
        Bg_SetPriority(BG_LAYER_MAIN_0, 1);
        Bg_SetPriority(BG_LAYER_MAIN_1, 3);
        Bg_SetPriority(BG_LAYER_MAIN_2, 0);
        Bg_SetPriority(BG_LAYER_MAIN_3, 1);
        Bg_SetPriority(BG_LAYER_SUB_0, 1);
        Bg_SetPriority(BG_LAYER_SUB_1, 3);
        Bg_SetPriority(BG_LAYER_SUB_2, 0);
        Bg_SetPriority(BG_LAYER_SUB_3, 2);
        ov62_0223376C(param0, 0);
        sub_0208B9E0(param0->unk_6F0, 0);
        param0->unk_08++;
        break;
    case 2:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        ov62_02234540(param0, 1);
        ov62_02231454(param0);
        ov62_02234540(param0, 0);
        ov62_02234540(param0, 1);
        ov62_0223E01C(param0);
        ov62_02234540(param0, 0);
        param0->unk_08++;
        break;
    default:
        if (ov62_022300BC(param0) == 1) {
            ov62_0222FB60(param0, 19);
        } else {
            ov62_0222FB60(param0, 2);
        }

        break;
    }

    return 0;
}

static BOOL ov62_0223F348(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;
    UnkStruct_ov62_0223CAA4 *v1;

    if (ov62_022411B8(param0) == 0) {
        return 0;
    }

    switch (param0->unk_08) {
    case 0:
        ov62_02234358(param0, param0->unk_6F0, 128, 96);
        sub_0208B9E0(param0->unk_6F0, 1);
        sub_0208BA08(param0->unk_6F0, 24, 24);

        if ((param0->unk_86C == 300) || (param0->unk_86C == 301)) {
            ov62_02231AAC(param0, 279);
        } else {
            ov62_02231AAC(param0, 292);
        }

        Sound_PlayEffect(SEQ_SE_PL_BREC80);
        param0->unk_08++;
        break;
    case 1:
        if (param0->unk_86C == 300) {
            v0->unk_0C = 0;
            if (ov61_0222B4A8(ov62_0224112C(param0)) == 1) {
                param0->unk_08++;
            }
        } else if (param0->unk_86C == 301) {
            v0->unk_0C = 1;
            if (ov61_0222B4E4(ov62_0224112C(param0)) == 1) {
                param0->unk_08++;
            }
        } else if (param0->unk_86C == 200) {
            v0->unk_0C = 2;
            if (sub_0208BE68(param0) == 1) {
                if (ov61_0222B44C(ov62_0224112C(param0)) == 1) {
                    param0->unk_08++;
                }
            } else {
                if (ov61_0222B3EC(ov62_0224112C(param0)) == 1) {
                    param0->unk_08++;
                }
            }
        } else {
            GF_ASSERT(0);
        }

        break;
    case 2:
        ov62_02231B8C(param0);

        if (ov61_0222BB48(ov62_0224112C(param0), &v1) == 1) {
            Sound_StopEffect(1381, 0);
            ov62_022348B8(param0, 7, v1->unk_0C, v1->unk_04);
            param0->unk_08++;
        } else {
            Sound_StopEffect(1381, 0);
            Sound_PlayEffect(SEQ_SE_PL_BREC12);

            if (param0->unk_8B4.unk_3900 == 0) {
                ov62_022348B8(param0, 5, 0, 0);

                if (v0->unk_0C == 2) {
                    param0->unk_14.unk_4F0.unk_0C = 118;
                } else {
                    param0->unk_14.unk_4F0.unk_0C = 300;
                }

                sub_0208B9E0(param0->unk_6F0, 0);
                param0->unk_08++;
            } else {
                param0->unk_08 = 0xFF;
            }
        }

        break;
    case 3:
        sub_0208B9E0(param0->unk_6F0, 0);
        sub_0208BA08(param0->unk_6F0, 0, 0);
        param0->unk_08++;
        break;
    case 4:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            param0->unk_08++;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 5:
        ov62_02234540(param0, 1);
        ov62_0223F06C(param0);
        ov62_0223146C(param0);
        ov62_02234540(param0, 0);
        sub_020397C8(1, HEAP_ID_102);
        ov62_0223376C(param0, 1);
        param0->unk_08++;
        break;
    case 6:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        if (ov62_02231664(&v0->unk_08, 0)) {
            ov62_022318E8(param0);
            ov62_02231688(&v0->unk_08);
            PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);
            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);
            Bg_ClearTilemap(param0->unk_14.unk_10, 2);
            Bg_ClearTilemap(param0->unk_14.unk_10, 6);
            Bg_ClearTilemap(param0->unk_14.unk_10, 3);
            Bg_ClearTilemap(param0->unk_14.unk_10, 7);
            Heap_Free(v0);
        } else {
            PaletteData_BlendMulti(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
            PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        }

        break;
    default:
        sub_0208B9E0(param0->unk_6F0, 0);
        sub_0208BA08(param0->unk_6F0, 0, 0);
        ov62_0222FB60(param0, 3);
        break;
    }

    return 0;
}

static void ov62_0223F65C(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;
    int v1 = 0;
    int v2 = 32;
    Strbuf *v3;
    Window *v4;
    int v5[] = { 97, 98, 123 };

    v4 = &v0->unk_14[0];

    Window_Init(v4);
    Window_Add(param0->unk_14.unk_10, v4, 2, 3, 3, 20, 4, 14, v2);
    Window_FillTilemap(v4, 0x0);

    v3 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, v5[v0->unk_0C]);

    Text_AddPrinterWithParamsAndColor(v4, FONT_SYSTEM, v3, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    Window_ScheduleCopyToVRAM(v4);
    Strbuf_Free(v3);

    v2 = 256;
    v4 = &v0->unk_94[0];

    Window_Init(v4);
    Window_Add(param0->unk_14.unk_10, v4, 6, 11, 6, 10, 4, 14, v2);
    Window_FillTilemap(v4, 0x0);

    v3 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 95);

    {
        u32 v6 = (80 - Font_CalcMaxLineWidth(FONT_SYSTEM, v3, 0)) / 2;
        Text_AddPrinterWithParamsAndColor(v4, FONT_SYSTEM, v3, v6, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    }

    Window_ScheduleCopyToVRAM(v4);
    Strbuf_Free(v3);

    v0->unk_1FB4 = 1;
    v0->unk_1FB8 = 1;
}

static BOOL ov62_0223F760(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        if (sub_0202F250()) {
            sub_0202F22C();
        }

        v0->unk_1FDC = Unk_ov62_02248FD8;
        v0->unk_1FDC.unk_00 = NULL;
        v0->unk_1FDC.unk_04 = param0->unk_8B4.unk_3900;

        ov62_022339DC(param0);

        v0->unk_2008.unk_00 = ov62_02233A68(102);
        v0->unk_2008.unk_08 = 500;

        Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, HEAP_ID_102);
        Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, HEAP_ID_102);

        ov62_022343B8(param0, 4, 3);
        ov62_022343B8(param0, 7, 7);

        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);

        ov62_0223F0A8(param0, 1);
        ov62_0223F65C(param0);
        ov62_02234540(param0, 1);
        ov62_022335B0(&param0->unk_14.unk_46C, param0);
        ov62_02232594(&param0->unk_14.unk_48C, param0, NULL, &v0->unk_1FDC);

        param0->unk_14.unk_48C.unk_48 = 1;

        ov62_02233638(&param0->unk_14.unk_46C, &param0->unk_14.unk_48C);
        ov62_0223331C(&param0->unk_14.unk_48C, param0, 1);
        ov62_02233434(&param0->unk_14.unk_48C, 64, 184);
        ov62_02233064(&param0->unk_14.unk_48C, param0);
        ov62_02234540(param0, 0);
        ov62_02234540(param0, 1);
        ov62_02240BF4(param0);
        ov62_02240D98(param0, 0);
        ov62_02234540(param0, 0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            ov62_02240D98(param0, 1);
            ov62_02234358(param0, param0->unk_6F0, 16, 76 + (param0->unk_14.unk_48C.unk_38.unk_04 * 24));
            sub_0208B9E0(param0->unk_6F0, 1);
            sub_0208BA08(param0->unk_6F0, 12, 12);
            param0->unk_08++;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 4);
        break;
    }

    return 0;
}

static BOOL ov62_0223F984(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02233664(&param0->unk_14.unk_46C);
        ov62_022331C8(&param0->unk_14.unk_48C, param0->unk_14.unk_46C.unk_10);
        ov62_02233064(&param0->unk_14.unk_48C, param0);
        sub_0208B8EC(param0->unk_6F0, 16, 76 + (param0->unk_14.unk_48C.unk_38.unk_04 * 24));
        ov62_02240E30(param0);

        if (TouchScreen_LocationPressed(&Unk_ov62_02248F7C[0])) {
            ov62_02234520(param0);
            if (param0->unk_8B4.unk_1D58[param0->unk_14.unk_48C.unk_38.unk_00] != NULL) {
                v0->unk_1FBC = 6;
                v0->unk_10 = 0;
                param0->unk_08++;
            }
        }

        if (TouchScreen_LocationPressed(&Unk_ov62_02248F80[0])) {
            ov62_02234520(param0);
            v0->unk_1FBC = 5;
            param0->unk_08++;
        }

        break;
    case 1:
        ov62_02233600(&param0->unk_14.unk_46C);
        ov62_022332FC(&param0->unk_14.unk_48C);
        ov62_022334FC(&param0->unk_14.unk_48C, param0);
        ov62_02233A74(v0->unk_2008.unk_00);
        ov62_02240DDC(param0);
        ov62_02233A44(param0);
        ov62_0223F124(param0);
        ov62_0223F160(param0);

        sub_0208B9E0(param0->unk_6F0, 0);
        sub_0208BA08(param0->unk_6F0, 0, 0);

        if (v0->unk_1FBC == 5) {
            ov62_022335F4(&param0->unk_14.unk_46C);
            ov62_02233310(&param0->unk_14.unk_48C);
            v0->unk_2008.unk_04 = 0;
        }

        param0->unk_08++;
    case 2:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            ov62_0223F0A8(param0, 0);

            if (v0->unk_1FBC == 6) {
                ov62_0223124C(&v0->unk_114[0], &param0->unk_14, 3);
                ov62_0223124C(&v0->unk_114[1], &param0->unk_14, 94);
                ManagedSprite_SetAnim(v0->unk_114[0].unk_08, 0);
                ManagedSprite_SetAnim(v0->unk_114[1].unk_08, 3);
            }

            param0->unk_08++;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, v0->unk_1FBC);
        break;
    }

    return 0;
}

static BOOL ov62_0223FB74(UnkStruct_0208C06C *a0)
{
    UnkStruct_0208C06C *r5 = a0;
    UnkStruct_ov62_0223E01C *r4 = r5->unk_860;
    switch (r5->unk_08) {
    case 0:
        ov62_0223F124(r5);
        ov62_0223F160(r5);
        ov62_02231B8C(r5);
        r5->unk_08++;
        break;
    case 1:
        ov62_02231664(&r4->unk_08, 1);
        if (ov62_022315E0(&r4->unk_00, &r4->unk_04, 1, 0)) {
            ov62_02234540(r5, 1);
            ov62_0223F06C(r5);
            ov62_02234540(r5, 0);
            r5->unk_08++;
        }
        PaletteData_BlendMulti(r5->unk_14.unk_14, 3, 0xc, r4->unk_08, r5->unk_14.unk_44);
        break;
    case 2:
        ov62_02231688(&r4->unk_08);
        ov62_0223146C(r5);
        sub_020397C8(1, 0x66);
        ov62_0223376C(r5, 1);
        r5->unk_08++;
        break;
    default:
        if (ov62_02233790(r5) == 0) {
            break;
        }
        if (ov62_02231664(&r4->unk_08, 0)) {
            ov62_022318E8(r5);
            ov62_02231688(&r4->unk_08);
            PaletteData_BlendMulti(r5->unk_14.unk_14, 2, 0xc, 0x10, r5->unk_14.unk_44);
            ov62_0222FB44(r5, 1, 1, r5->unk_10);
            ov62_0222FB60(r5, 5);
            Bg_ClearTilemap(r5->unk_14.unk_10, 2);
            Bg_ClearTilemap(r5->unk_14.unk_10, 6);
            Bg_ClearTilemap(r5->unk_14.unk_10, 3);
            Bg_ClearTilemap(r5->unk_14.unk_10, 7);
            Heap_Free(r4);
        } else {
            PaletteData_BlendMulti(r5->unk_14.unk_14, 1, 2, r4->unk_08, r5->unk_14.unk_44);
            PaletteData_BlendMulti(r5->unk_14.unk_14, 3, 0xc, r4->unk_08, r5->unk_14.unk_44);
        }
        break;
    }
    return FALSE;
}

static BOOL ov62_0223FCC4(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_022343B8(param0, 6, 7);
        param0->unk_08++;
        break;
    case 1:
        ov62_02240B94(param0);
        v0->unk_188[0] = TouchScreenActions_RegisterHandler(Unk_ov62_02248FC8, NELEMS(Unk_ov62_02248FC8), ov62_02240A50, param0, HEAP_ID_102);
        v0->unk_188[1] = TouchScreenActions_RegisterHandler(Unk_ov62_02248F98, NELEMS(Unk_ov62_02248F98), ov62_02240AEC, param0, HEAP_ID_102);
        v0->unk_188[2] = TouchScreenActions_RegisterHandler(Unk_ov62_02248F84, NELEMS(Unk_ov62_02248F84), ov62_02240B5C, param0, HEAP_ID_102);
        param0->unk_08++;
        break;
    case 2:
        ov62_02234540(param0, 1);
        ov62_02234214(&v0->unk_220, param0);
        ov62_022343B8(param0, ov62_02233FEC(&v0->unk_220), 3);
        ov62_0223427C(&v0->unk_220, 0);
        ov62_02234540(param0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 3:
        ov62_02231664(&v0->unk_08, 0);
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            ov62_0223427C(&v0->unk_220, 1);
            ov62_02240900(param0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 7);
        break;
    }

    return 0;
}

static BOOL ov62_0223FE2C(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    TouchScreenActions_HandleAction(v0->unk_188[0]);
    return 0;
}

static BOOL ov62_0223FE44(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02234540(param0, 1);

        if (v0->unk_10 == 0) {
            ov62_02234228(&v0->unk_220, param0);
        } else {
            ov62_02232394(&v0->unk_194, param0);
        }
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        ov62_02234540(param0, 0);
        param0->unk_08++;
        break;
    case 1:
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 1)) {
            param0->unk_08++;
        }

        break;
    case 2:
        ov62_02234540(param0, 1);

        if (v0->unk_10 == 0) {
            ov62_02232378(&v0->unk_194, param0);
            ov62_022323B8(&v0->unk_194, 0);
            ov62_022343B8(param0, 80, 3);
        } else {
            ov62_02234214(&v0->unk_220, param0);
            ov62_0223427C(&v0->unk_220, 0);
            ov62_022343B8(param0, ov62_02233FEC(&v0->unk_220), 3);
        }

        ov62_02234540(param0, 0);
        param0->unk_08++;
        break;
    case 3:
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 1)) {
            if (v0->unk_10 == 0) {
                ov62_022323B8(&v0->unk_194, 1);
            } else {
                ov62_0223427C(&v0->unk_220, 1);
            }

            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }

        break;
    default:
        v0->unk_10 ^= 1;
        ov62_022408A8(param0, 121 + v0->unk_10);
        ov62_0222FB60(param0, 7);
        break;
    }

    return 0;
}

static BOOL ov62_0223FF90(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_102);
        param0->unk_08++;
        break;
    case 1:
        if (IsScreenFadeDone() == TRUE) {
            param0->unk_08++;
        }

        break;
    case 2:
        ov62_02234540(param0, 1);

        if (v0->unk_10 == 0) {
            ov62_02234228(&v0->unk_220, param0);
        } else {
            ov62_02232394(&v0->unk_194, param0);
        }

        TouchScreenActions_Free(v0->unk_188[0]);
        TouchScreenActions_Free(v0->unk_188[1]);
        TouchScreenActions_Free(v0->unk_188[2]);

        ov62_0223E428(param0);
        ov62_0224088C(param0);
        ov62_022410F0(param0);
        ov62_02234540(param0, 0);
        ov62_02234540(param0, 1);
        ov62_022314A8(param0);
        ov62_02234540(param0, 0);
        ov62_022300C8(param0, *(param0->unk_10));

        sub_0208BA84(param0->unk_868, 1, 0);

        param0->unk_08++;
        break;
    default:
        Heap_Free(v0);
        return 1;
    }

    return 0;
}

static BOOL ov62_02240084(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02234314();
        ov62_022315C8(&v0->unk_00, &v0->unk_04, 0);
        {
            int v1;

            for (v1 = 0; v1 < param0->unk_8B4.unk_3900; v1++) {
                param0->unk_8B4.unk_1D58[v1] = &param0->unk_8B4.unk_1DD0[v1];
            }
        }

        Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, HEAP_ID_102);
        Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, HEAP_ID_102);

        ov62_022343B8(param0, 6, 7);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);

        ov62_0223124C(&v0->unk_114[0], &param0->unk_14, 3);
        ov62_0223124C(&v0->unk_114[1], &param0->unk_14, 94);

        ManagedSprite_SetAnim(v0->unk_114[0].unk_08, 0);
        ManagedSprite_SetAnim(v0->unk_114[1].unk_08, 3);

        v0->unk_2008.unk_08 = 500;
        v0->unk_2008.unk_04 = param0->unk_14.unk_48C.unk_08;
        param0->unk_08++;
        break;
    case 1:
        ov62_02240B94(param0);
        v0->unk_188[0] = TouchScreenActions_RegisterHandler(Unk_ov62_02248FC8, NELEMS(Unk_ov62_02248FC8), ov62_02240A50, param0, HEAP_ID_102);
        v0->unk_188[1] = TouchScreenActions_RegisterHandler(Unk_ov62_02248F98, NELEMS(Unk_ov62_02248F98), ov62_02240AEC, param0, HEAP_ID_102);
        v0->unk_188[2] = TouchScreenActions_RegisterHandler(Unk_ov62_02248F84, NELEMS(Unk_ov62_02248F84), ov62_02240B5C, param0, HEAP_ID_102);
        param0->unk_08++;
        break;
    case 2:
        ov62_02234540(param0, 1);
        ov62_02234214(&v0->unk_220, param0);
        ov62_022343B8(param0, ov62_02233FEC(&v0->unk_220), 3);
        ov62_0223427C(&v0->unk_220, 0);
        ov62_02234540(param0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 3:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            ov62_0223427C(&v0->unk_220, 1);
            ov62_02240900(param0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 4:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_102);
        param0->unk_08++;
        break;
    case 5:
        if (IsScreenFadeDone() == TRUE) {
            param0->unk_08++;
        }

        break;
    default:
        param0->unk_534.unk_1A4 += 1;
        ov62_02230098(param0);
        ov62_0222FB60(param0, 7);
        break;
    }

    return 0;
}

static void ov62_022402FC(UnkStruct_0208C06C *param0, int param1, BOOL param2)
{
    Strbuf *v0;
    Window *v1 = &param0->unk_8A4;
    UnkStruct_ov62_0223E01C *v2 = param0->unk_860;

    ov62_022302A8(param0, 2, param2);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    Window_Init(v1);
    Window_Add(param0->unk_14.unk_10, v1, 2, 1, 19, 30, 4, 14, 300);

    if (param1 == 100) {
        StringTemplate *v3;
        Strbuf *v4;
        Strbuf *v5;
        UnkStruct_02030A80 *v6 = v2->unk_194.unk_00;

        v3 = ov62_02231690(HEAP_ID_102);
        v0 = Strbuf_Init(255, HEAP_ID_102);
        v4 = sub_02030B94(v6, HEAP_ID_102);
        ov62_022349A8(param0, v4);
        v5 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);
        StringTemplate_SetStrbuf(v3, 0, v4, 0, 1, GAME_LANGUAGE);
        StringTemplate_Format(v3, v0, v5);
        Strbuf_Free(v4);
        Strbuf_Free(v5);
        StringTemplate_Free(v3);
    } else {
        v0 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);
    }

    Window_FillTilemap(v1, 0xCC);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 12), NULL);
    Window_ScheduleCopyToVRAM(v1);
    Strbuf_Free(v0);
}

static BOOL ov62_022403F8(UnkStruct_0208C06C *a0)
{
    UnkStruct_0208C06C *r4 = a0;
    UnkStruct_ov62_0223E01C *r5 = r4->unk_860;
    if (ov62_02234970(r4, sub_0202FE98(sub_0202FE04(), 4, 0))) {
        switch (r4->unk_08) {
        case 0:
            ov62_02234540(r4, 1);
            if (r5->unk_10 == 0) {
                ov62_02234228(&r5->unk_220, r4);
            } else {
                ov62_02232394(&r5->unk_194, r4);
            }
            ov62_0224088C(r4);
            ov62_02234540(r4, 0);
            ov62_02234540(r4, 1);
            ov62_022410F0(r4);
            ov62_02234540(r4, 0);
            GXLayers_EngineAToggleLayers(4, 0);
            GXLayers_EngineBToggleLayers(4, 0);
            r4->unk_08++;
            break;
        case 1:
            ov62_02231664(&r5->unk_08, 1);
            if (ov62_022315E0(&r5->unk_00, &r5->unk_04, 1, 0)) {
                ov62_02234540(r4, 1);
                ov62_0223EF60(r4);
                ov62_02234540(r4, 0);
                Bg_ClearTilemap(r4->unk_14.unk_10, 3);
                Bg_ClearTilemap(r4->unk_14.unk_10, 7);
                r4->unk_08++;
            }
            PaletteData_BlendMulti(r4->unk_14.unk_14, 3, 0xc, r5->unk_08, r4->unk_14.unk_44);
            break;
        case 2:
            ov62_02231AAC(r4, 0x115);
            r4->unk_08++;
            break;
        case 3:
            if (!TouchScreen_Tapped()) {
                break;
            }
            ov62_02231B8C(r4);
            Bg_ClearTilemap(r4->unk_14.unk_10, 2);
            Bg_ClearTilemap(r4->unk_14.unk_10, 6);
            GXLayers_EngineBToggleLayers(4, 0);
            GXLayers_EngineAToggleLayers(4, 0);
            r4->unk_08++;
            break;
        case 4:
            ov62_02231664(&r5->unk_08, 1);
            if (ov62_022315E0(&r5->unk_00, &r5->unk_04, 1, 0)) {
                ov62_02234540(r4, 1);
                ov62_0223F038(r4);
                ov62_02234540(r4, 0);
                r4->unk_08++;
            }
            PaletteData_BlendMulti(r4->unk_14.unk_14, 3, 0xc, r5->unk_08, r4->unk_14.unk_44);
            break;
        case 5:
            ov62_02234540(r4, 1);
            ov62_0223E01C(r4);
            ov62_02234540(r4, 0);
            if (r4->unk_86C == 0xd2) {
                ov62_0223124C(&r5->unk_114[0], &r4->unk_14, 3);
                ov62_0223124C(&r5->unk_114[1], &r4->unk_14, 0x5e);
                ManagedSprite_SetAnim(r5->unk_114[0].unk_08, 0);
                ManagedSprite_SetAnim(r5->unk_114[1].unk_08, 3);
            }
            ov62_02240900(r4);
            Graphics_LoadTilesToBgLayerFromOpenNARC(r4->unk_14.unk_00, 0x3e, r4->unk_14.unk_10, 3, 0, 0, 0, 0x66);
            Graphics_LoadTilesToBgLayerFromOpenNARC(r4->unk_14.unk_00, 0x3e, r4->unk_14.unk_10, 7, 0, 0, 0, 0x66);
            ov62_02234540(r4, 1);
            if (r5->unk_10 == 0) {
                ov62_02234214(&r5->unk_220, r4);
                ov62_0223427C(&r5->unk_220, 0);
                ov62_022343B8(r4, ov62_02233FEC(&r5->unk_220), 3);
            } else {
                ov62_02232378(&r5->unk_194, r4);
                ov62_022323B8(&r5->unk_194, 0);
                Graphics_LoadTilemapToBgLayerFromOpenNARC(r4->unk_14.unk_00, 0x50, r4->unk_14.unk_10, 3, 0, 0, 0, 0x66);
            }
            ov62_02234540(r4, 0);
            Graphics_LoadTilemapToBgLayerFromOpenNARC(r4->unk_14.unk_00, 6, r4->unk_14.unk_10, 7, 0, 0, 0, 0x66);
            r4->unk_08++;
            break;
        case 6:
            ov62_02231664(&r5->unk_08, 0);
            if (ov62_022315E0(&r5->unk_00, &r5->unk_04, 0, 0)) {
                if (r5->unk_10 == 0) {
                    ov62_0223427C(&r5->unk_220, 1);
                } else {
                    ov62_022323B8(&r5->unk_194, 1);
                }
                GXLayers_EngineBToggleLayers(4, 1);
                GXLayers_EngineAToggleLayers(4, 1);
                r4->unk_08++;
            }
            PaletteData_BlendMulti(r4->unk_14.unk_14, 3, 0xc, r5->unk_08, r4->unk_14.unk_44);
            break;
        default:
            for (int i = 0; i < r4->unk_8B4.unk_3900; i++) {
                r4->unk_8B4.unk_1D58[i] = &r4->unk_8B4.unk_1DD0[i];
            }
            ov62_0222FB60(r4, 7);
            break;
        }
    } else {
        switch (r4->unk_08) {
        case 0:
            ov62_02234540(r4, 1);
            if (r5->unk_10 == 0) {
                ov62_02234228(&r5->unk_220, r4);
            } else {
                ov62_02232394(&r5->unk_194, r4);
            }
            ov62_02234540(r4, 0);
            ov62_02234540(r4, 1);
            ov62_022410F0(r4);
            ov62_02234540(r4, 0);
            ov62_0224088C(r4);
            GXLayers_EngineAToggleLayers(4, 0);
            GXLayers_EngineBToggleLayers(4, 0);
            r4->unk_08++;
            break;
        case 1:
            ov62_02231664(&r5->unk_08, 1);
            if (ov62_022315E0(&r5->unk_00, &r5->unk_04, 1, 0)) {
                ov62_02234540(r4, 1);
                ov62_0223EF60(r4);
                ov62_02234540(r4, 0);
                Bg_ClearTilemap(r4->unk_14.unk_10, 3);
                Bg_ClearTilemap(r4->unk_14.unk_10, 7);
                r4->unk_08++;
            }
            PaletteData_BlendMulti(r4->unk_14.unk_14, 3, 0xc, r5->unk_08, r4->unk_14.unk_44);
            break;
        case 2:
            ov62_02231664(&r5->unk_08, 0);
            if (ov62_022315E0(&r5->unk_00, &r5->unk_04, 0, 1)) {
                ov62_022402FC(r4, 0x64, 0);
                r4->unk_08++;
            }
            PaletteData_BlendMulti(r4->unk_14.unk_14, 3, 0xc, r5->unk_08, r4->unk_14.unk_44);
            break;
        default:
            ov62_0222FB60(r4, 0xc);
            break;
        }
    }
    return FALSE;
}

static void ov62_0224088C(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    Window_ClearAndCopyToVRAM(&v0->unk_94[0]);
    Window_Remove(&v0->unk_94[0]);
}

static void ov62_022408A8(UnkStruct_0208C06C *param0, int param1)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;
    Window *v1;
    Strbuf *v2;
    int v3;

    v1 = &v0->unk_94[0];
    Window_FillTilemap(v1, 0x0);
    v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);
    v3 = ov62_0223429C(v1, v2);

    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, v3, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    Strbuf_Free(v2);
    Window_ScheduleCopyToVRAM(v1);
}

static void ov62_02240900(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;
    Window *v1;
    int v2 = 1;

    v1 = &v0->unk_94[0];

    Window_Init(v1);
    Window_Add(param0->unk_14.unk_10, v1, 6, 8, 3, 16, 2, 14, v2);
    ov62_022408A8(param0, 121 + v0->unk_10);
}

static void ov62_02240944(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;
    Window *v1;
    Strbuf *v2;
    int v3 = 1;
    int v4;

    v1 = &v0->unk_94[0];

    Window_Init(v1);
    Window_Add(param0->unk_14.unk_10, v1, 6, 4, 6, 10, 2, 14, v3);
    Window_FillTilemap(v1, 0x0);

    v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 130);
    v4 = ov62_0223429C(v1, v2);

    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    Strbuf_Free(v2);
    Window_ScheduleCopyToVRAM(v1);

    v3 += (10 * 2);
    v1 = &v0->unk_94[1];

    Window_Init(v1);
    Window_Add(param0->unk_14.unk_10, v1, 6, 18, 6, 10, 2, 14, v3);
    Window_FillTilemap(v1, 0x0);

    v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 131);
    v4 = ov62_0223429C(v1, v2);

    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    Strbuf_Free(v2);
    Window_ScheduleCopyToVRAM(v1);
}

static void ov62_02240A24(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    Window_ClearAndCopyToVRAM(&v0->unk_94[0]);
    Window_Remove(&v0->unk_94[0]);
    Window_ClearAndCopyToVRAM(&v0->unk_94[1]);
    Window_Remove(&v0->unk_94[1]);
}

static void ov62_02240A50(u32 param0, enum TouchScreenButtonState param1, void *param2)
{
    UnkStruct_0208C06C *v0 = param2;
    UnkStruct_ov62_0223E01C *v1 = v0->unk_860;

    if (param1 != TOUCH_BUTTON_PRESSED) {
        return;
    }

    switch (param0) {
    case 0:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 8);
        break;
    case 1:
        ov62_02234520(v0);

        if (sub_0202F250()) {
            ov62_0222FB60(v0, 9);
        } else {
            v1->unk_1FBC = 9;
            ov62_0222FB60(v0, 18);
        }
        break;
    case 2:
        ov62_02234520(v0);

        if (sub_0202F250()) {
            ov62_0222FB60(v0, 11);
        } else {
            v1->unk_1FBC = 11;
            ov62_0222FB60(v0, 18);
        }
        break;
    case 3:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 10);
        break;
    }
}

static void ov62_02240AEC(u32 param0, enum TouchScreenButtonState param1, void *param2)
{
    UnkStruct_0208C06C *v0 = param2;
    UnkStruct_ov62_0223E01C *v1 = v0->unk_860;

    if (param1 != TOUCH_BUTTON_PRESSED) {
        return;
    }

    switch (param0) {
    case 0:
    case 1:
    case 2:
        v1->unk_1FB0 = param0 + 1;

        if (v0->unk_88C[v1->unk_1FB0] != NULL) {
            ov62_0222FB60(v0, 14);
        } else {
            ov62_0222FB60(v0, 17);
        }

        ov62_02234520(v0);
        break;
    case 3:
        ov62_02234520(v0);
        ov62_02231A88(v0);
        ov62_0222FB60(v0, 13);
        break;
    }
}

static void ov62_02240B5C(u32 param0, enum TouchScreenButtonState param1, void *param2)
{
    UnkStruct_0208C06C *v0 = param2;
    UnkStruct_ov62_0223E01C *v1 = v0->unk_860;

    if (param1 != TOUCH_BUTTON_PRESSED) {
        return;
    }

    switch (param0) {
    case 0:
        ov62_02234520(v0);
        ov62_02240A24(v0);
        ov62_0222FB60(v0, 17);
        break;
    case 1:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 16);
        break;
    }
}

static void ov62_02240B94(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    v0->unk_194.unk_00 = sub_02030A80(HEAP_ID_102);
    ov61_0222AFC0(&param0->unk_8B4.unk_1D58[param0->unk_14.unk_48C.unk_38.unk_00]->unk_00, v0->unk_194.unk_00);
    v0->unk_220.unk_00 = v0->unk_194.unk_00;
    v0->unk_220.unk_04 = sub_0202FF2C(HEAP_ID_102);
    MI_CpuCopy8(&param0->unk_8B4.unk_1D58[param0->unk_14.unk_48C.unk_38.unk_00]->unk_80, v0->unk_220.unk_04, sizeof(UnkStruct_ov61_0222BED8_sub1));
}

static void ov62_02240BF4(UnkStruct_0208C06C *param0)
{
    int v0, v1;
    int v2 = 0;
    UnkStruct_ov62_0223E01C *v3 = param0->unk_860;
    int v4;
    int v5;
    int v6;
    int v7 = param0->unk_14.unk_48C.unk_08;
    int v8[][6] = {
        { 0, 1, 2, 3, 4, 5 },
        { 0, 1, 2, 3, 4, 5 },
    };
    int v9[6] = { 0, 0, 0, 0, 0, 0 };
    int v10[6] = { 0, 0, 0, 0, 0, 0 };
    int v11 = 0;

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->unk_8B4.unk_1D58[v7 + v0] == NULL) {
            continue;
        }

        if (ov62_02233F94((UnkStruct_0202F41C *)&param0->unk_8B4.unk_1D58[v7 + v0]->unk_80)) {
            v11 = 1;
        } else {
            v11 = 0;
        }

        {
            int v12, v13;
            int v14 = 0;

            for (v12 = 0; v12 < 6; v12++) {
                v9[v12] = 0;
                v10[v12] = 0;
            }

            for (v12 = 0; v12 < 3; v12++) {
                v4 = param0->unk_8B4.unk_1D58[v7 + v0]->unk_80.unk_00[v8[v11][v12]];

                if (v4 == 0) {
                    continue;
                }

                v9[v14] = v4;
                v10[v14] = param0->unk_8B4.unk_1D58[v7 + v0]->unk_80.unk_18[v8[v11][v12]];
                v14++;
            }

            if (ov62_02233F94((UnkStruct_0202F41C *)&param0->unk_8B4.unk_1D58[v7 + v0]->unk_80)) {
                v14 = 3;
            }

            for (v12 = 3; v12 < 6; v12++) {
                v4 = param0->unk_8B4.unk_1D58[v7 + v0]->unk_80.unk_00[v8[v11][v12]];

                if (v4 == 0) {
                    continue;
                }

                v9[v14] = v4;
                v10[v14] = param0->unk_8B4.unk_1D58[v7 + v0]->unk_80.unk_18[v8[v11][v12]];
                v14++;
            }
        }

        for (v1 = 0; v1 < 6; v1++) {
            v4 = v9[v1];
            v5 = v10[v1];
            v6 = 0;

            v3->unk_2008.unk_0C[v0][v1].unk_00 = v3->unk_2008.unk_08;
            v3->unk_2008.unk_0C[v0][v1].unk_04 = ov62_02233A7C(param0, v3->unk_2008.unk_00, v3->unk_2008.unk_0C[v0][v1].unk_00, v4, v5, v6);

            if (v3->unk_2008.unk_0C[v0][v1].unk_04) {
                ManagedSprite_SetPriority(v3->unk_2008.unk_0C[v0][v1].unk_04, 6 - v1);
            }

            v3->unk_2008.unk_08++;
        }
    }

    ov62_0223DFA8(param0);
}

static void ov62_02240D98(UnkStruct_0208C06C *param0, BOOL param1)
{
    int v0, v1;
    UnkStruct_ov62_0223E01C *v2 = param0->unk_860;

    for (v0 = 0; v0 < 5; v0++) {
        for (v1 = 0; v1 < 6; v1++) {
            if (v2->unk_2008.unk_0C[v0][v1].unk_04) {
                ManagedSprite_SetDrawFlag(v2->unk_2008.unk_0C[v0][v1].unk_04, param1);
            }
        }
    }
}

static void ov62_02240DDC(UnkStruct_0208C06C *param0)
{
    int v0, v1;
    UnkStruct_ov62_0223E01C *v2 = param0->unk_860;

    for (v0 = 0; v0 < 5; v0++) {
        for (v1 = 0; v1 < 6; v1++) {
            if (v2->unk_2008.unk_0C[v0][v1].unk_04) {
                ov62_02233B24(param0, v2->unk_2008.unk_0C[v0][v1].unk_00, v2->unk_2008.unk_0C[v0][v1].unk_04);
                v2->unk_2008.unk_0C[v0][v1].unk_04 = NULL;
            }
        }
    }
}

static void ov62_02240E30(UnkStruct_0208C06C *param0)
{
    int v0, v1;
    int v2 = 0;
    int v3;
    int v4[6] = { 0, 0, 0, 0, 0, 0 };
    UnkStruct_ov62_0223E01C *v5 = param0->unk_860;

    if (v5->unk_2008.unk_04 == param0->unk_14.unk_48C.unk_08) {
        return;
    }

    ov62_02234540(param0, 1);

    if (v5->unk_2008.unk_04 > param0->unk_14.unk_48C.unk_08) {
        v2 = 4;
    }

    for (v0 = 0; v0 < 6; v0++) {
        if (v5->unk_2008.unk_0C[v2][v0].unk_04) {
            ov62_02233B40(param0, v5->unk_2008.unk_0C[v2][v0].unk_00, v5->unk_2008.unk_0C[v2][v0].unk_04);
            v4[v0] = v5->unk_2008.unk_0C[v2][v0].unk_00;
            v5->unk_2008.unk_0C[v2][v0].unk_04 = NULL;
        }
    }

    if (v2) {
        for (v0 = 4; v0 >= 1; v0--) {
            for (v1 = 0; v1 < 6; v1++) {
                v5->unk_2008.unk_0C[v0][v1].unk_04 = v5->unk_2008.unk_0C[v0 - 1][v1].unk_04;
                v5->unk_2008.unk_0C[v0][v1].unk_00 = v5->unk_2008.unk_0C[v0 - 1][v1].unk_00;
            }
        }

        v2 = 0;
    } else {
        for (v0 = 1; v0 < 5; v0++) {
            for (v1 = 0; v1 < 6; v1++) {
                v5->unk_2008.unk_0C[v0 - 1][v1].unk_04 = v5->unk_2008.unk_0C[v0][v1].unk_04;
                v5->unk_2008.unk_0C[v0 - 1][v1].unk_00 = v5->unk_2008.unk_0C[v0][v1].unk_00;
            }
        }

        v2 = 4;
    }

    {
        int v6;
        int v7;
        int v8;
        int v9 = param0->unk_14.unk_48C.unk_08 + v2;
        int v10[][6] = {
            { 0, 1, 2, 3, 4, 5 },
            { 0, 1, 2, 3, 4, 5 },
        };
        int v11[6] = { 0, 0, 0, 0, 0, 0 };
        int v12[6] = { 0, 0, 0, 0, 0, 0 };
        int v13 = 0;

        if (ov62_02233F94((UnkStruct_0202F41C *)&param0->unk_8B4.unk_1D58[v9]->unk_80)) {
            v13 = 1;
        }

        {
            int v14, v15;
            int v16 = 0;

            for (v14 = 0; v14 < 6; v14++) {
                v11[v14] = 0;
                v12[v14] = 0;
            }

            for (v14 = 0; v14 < 3; v14++) {
                v6 = param0->unk_8B4.unk_1D58[v9]->unk_80.unk_00[v10[v13][v14]];

                if (v6 == 0) {
                    continue;
                }

                v11[v16] = v6;
                v12[v16] = param0->unk_8B4.unk_1D58[v9]->unk_80.unk_18[v10[v13][v14]];
                v16++;
            }

            if (ov62_02233F94((UnkStruct_0202F41C *)&param0->unk_8B4.unk_1D58[v9]->unk_80)) {
                v16 = 3;
            }

            for (v14 = 3; v14 < 6; v14++) {
                v6 = param0->unk_8B4.unk_1D58[v9]->unk_80.unk_00[v10[v13][v14]];

                if (v6 == 0) {
                    continue;
                }

                v11[v16] = v6;
                v12[v16] = param0->unk_8B4.unk_1D58[v9]->unk_80.unk_18[v10[v13][v14]];
                v16++;
            }
        }

        for (v1 = 0; v1 < 6; v1++) {
            v6 = v11[v1];
            v7 = v12[v1];
            v8 = 0;
            v5->unk_2008.unk_0C[v2][v1].unk_00 = v5->unk_2008.unk_08;
            v5->unk_2008.unk_0C[v2][v1].unk_04 = ov62_02233A7C(param0, v5->unk_2008.unk_00, v5->unk_2008.unk_0C[v2][v1].unk_00, v6, v7, v8);

            if (v5->unk_2008.unk_0C[v2][v1].unk_04) {
                ManagedSprite_SetPriority(v5->unk_2008.unk_0C[v2][v1].unk_04, 6 - v1);
            }

            v5->unk_2008.unk_08++;
        }
    }

    ov62_0223DFA8(param0);
    v5->unk_2008.unk_04 = param0->unk_14.unk_48C.unk_08;

    for (v0 = 0; v0 < 6; v0++) {
        if (v4[v0] == 0) {
            continue;
        }

        SpriteManager_UnloadCharObjById(param0->unk_14.unk_08, 100000 + v4[v0]);
    }

    ov62_02234540(param0, 0);
}

static void ov62_022410F0(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_0223E01C *v0 = param0->unk_860;

    ov62_022312B0(&v0->unk_114[0]);
    ov62_022312B0(&v0->unk_114[1]);
    Sprite_DeleteAndFreeResources(v0->unk_114[0].unk_08);
    Sprite_DeleteAndFreeResources(v0->unk_114[1].unk_08);
    ov62_022313BC(param0);
}
