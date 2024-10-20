#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02023FCC_decl.h"
#include "struct_decls/struct_0202F41C_decl.h"
#include "struct_defs/struct_02030A80.h"
#include "struct_defs/struct_0205AA50.h"
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

#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200C6E4.h"
#include "unk_0200F174.h"
#include "unk_02012744.h"
#include "unk_02018340.h"
#include "unk_02023FCC.h"
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
    UnkStruct_ov61_0222BED8 * unk_184;
    UnkStruct_02023FCC * unk_188[3];
    UnkStruct_ov62_022323B8 unk_194;
    UnkStruct_ov62_02233F74 unk_220;
    UnkStruct_ov61_0222BED8 unk_2DC;
    int unk_1FB0;
    int unk_1FB4;
    int unk_1FB8;
    int unk_1FBC;
    BOOL unk_1FC0;
    UnkStruct_ov62_0223E01C_sub1 unk_1FC4;
    UnkStruct_ov62_02249380 * unk_1FD8;
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
    {0x10, 0x30, 0x40, 0xC8},
    {0x40, 0x70, 0x58, 0xA8},
    {0x98, 0xB8, 0x80, 0xE0},
    {0x98, 0xB8, 0x20, 0x80}
};

static const TouchScreenRect Unk_ov62_02248F98[] = {
    {0x19, 0x39, 0x32, 0xD2},
    {0x3D, 0x5D, 0x32, 0xD2},
    {0x61, 0x81, 0x32, 0xD2},
    {0x85, 0xA5, 0x32, 0xD2}
};

static const TouchScreenRect Unk_ov62_02248F84[] = {
    {0x28, 0x48, 0x20, 0x78},
    {0x28, 0x48, 0x90, 0xE8}
};

static const TouchScreenRect Unk_ov62_02248F80[] = {
    {0x98, 0xB8, 0x50, 0xB0}
};

static const TouchScreenRect Unk_ov62_02248F7C[] = {
    {0x20, 0x60, 0x50, 0xB0}
};

static void ov62_0223DFA8(UnkStruct_0208C06C * param0);
static void ov62_0223E01C(UnkStruct_0208C06C * param0);
static void ov62_0223E0FC(UnkStruct_0208C06C * param0, int param1, int param2);
static BOOL ov62_0223E22C(UnkStruct_0208C06C * param0);
static void ov62_0223E428(UnkStruct_0208C06C * param0);
static BOOL ov62_0223E448(UnkStruct_0208C06C * param0);
static BOOL ov62_0223E460(UnkStruct_0208C06C * param0);
static BOOL ov62_0223E510(UnkStruct_0208C06C * param0);
static BOOL ov62_0223E810(UnkStruct_0208C06C * param0);
static BOOL ov62_0223EB10(UnkStruct_0208C06C * param0);
static BOOL ov62_0223EB28(UnkStruct_0208C06C * param0);
static BOOL ov62_0223E8BC(UnkStruct_0208C06C * param0);
static BOOL ov62_0223ED7C(UnkStruct_0208C06C * param0);
static void ov62_0223EE88(UnkStruct_ov62_022312B0 * param0, UnkStruct_0208C06C * param1, int param2);
static void ov62_0223EF60(UnkStruct_0208C06C * param0);
static void ov62_0223F038(UnkStruct_0208C06C * param0);
static void ov62_0223F06C(UnkStruct_0208C06C * param0);
static void ov62_0223F0A8(UnkStruct_0208C06C * param0, int param1);
static void ov62_0223F124(UnkStruct_0208C06C * param0);
static void ov62_0223F160(UnkStruct_0208C06C * param0);
static BOOL ov62_0223F19C(UnkStruct_0208C06C * param0);
static BOOL ov62_0223F218(UnkStruct_0208C06C * param0);
static BOOL ov62_0223F348(UnkStruct_0208C06C * param0);
static void ov62_0223F65C(UnkStruct_0208C06C * param0);
static BOOL ov62_0223F760(UnkStruct_0208C06C * param0);
static BOOL ov62_0223F984(UnkStruct_0208C06C * param0);
static BOOL ov62_0223FB74(UnkStruct_0208C06C * param0);
static BOOL ov62_0223FCC4(UnkStruct_0208C06C * param0);
static BOOL ov62_0223FE2C(UnkStruct_0208C06C * param0);
static BOOL ov62_0223FE44(UnkStruct_0208C06C * param0);
static BOOL ov62_0223FF90(UnkStruct_0208C06C * param0);
static BOOL ov62_02240084(UnkStruct_0208C06C * param0);
static void ov62_022402FC(UnkStruct_0208C06C * param0, int param1, BOOL param2);
static BOOL ov62_022403F8(UnkStruct_0208C06C * param0);
static void ov62_0224088C(UnkStruct_0208C06C * param0);
static void ov62_022408A8(UnkStruct_0208C06C * param0, int param1);
static void ov62_02240900(UnkStruct_0208C06C * param0);
static void ov62_02240944(UnkStruct_0208C06C * param0);
static void ov62_02240A24(UnkStruct_0208C06C * param0);
static void ov62_02240A50(u32 param0, u32 param1, void * param2);
static void ov62_02240AEC(u32 param0, u32 param1, void * param2);
static void ov62_02240B5C(u32 param0, u32 param1, void * param2);
static void ov62_02240B94(UnkStruct_0208C06C * param0);
static void ov62_02240BF4(UnkStruct_0208C06C * param0);
static void ov62_02240D98(UnkStruct_0208C06C * param0, BOOL param1);
static void ov62_02240DDC(UnkStruct_0208C06C * param0);
static void ov62_02240E30(UnkStruct_0208C06C * param0);
static void ov62_022410F0(UnkStruct_0208C06C * param0);

static void ov62_0223DFA8 (UnkStruct_0208C06C * param0)
{
    const s16 v0[][2] = {
        {13 * 8, 9 * 8},
        {16 * 8, 9 * 8},
        {19 * 8, 9 * 8},
        {22 * 8, 9 * 8},
        {25 * 8, 9 * 8},
        {28 * 8, 9 * 8},
        {13 * 8, 12 * 8},
        {16 * 8, 12 * 8},
        {19 * 8, 12 * 8},
        {22 * 8, 12 * 8},
        {25 * 8, 12 * 8},
        {28 * 8, 12 * 8},
        {13 * 8, 15 * 8},
        {16 * 8, 15 * 8},
        {19 * 8, 15 * 8},
        {22 * 8, 15 * 8},
        {25 * 8, 15 * 8},
        {28 * 8, 15 * 8},
        {13 * 8, 18 * 8},
        {16 * 8, 18 * 8},
        {19 * 8, 18 * 8},
        {22 * 8, 18 * 8},
        {25 * 8, 18 * 8},
        {28 * 8, 18 * 8},
        {13 * 8, 21 * 8},
        {16 * 8, 21 * 8},
        {19 * 8, 21 * 8},
        {22 * 8, 21 * 8},
        {25 * 8, 21 * 8},
        {28 * 8, 21 * 8},
    };
    int v1, v2;
    UnkStruct_ov62_0223E01C * v3 = param0->unk_860;

    for (v1 = 0; v1 < 5; v1++) {
        for (v2 = 0; v2 < 6; v2++) {
            if (v3->unk_2008.unk_0C[v1][v2].unk_04) {
                SpriteActor_SetSpritePositionXY(v3->unk_2008.unk_0C[v1][v2].unk_04, v0[(v1 * 6) + v2][0], v0[(v1 * 6) + v2][1]);
            }
        }
    }
}

static void ov62_0223E01C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

    ov62_022312CC(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    v0->unk_114[0].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);
    v0->unk_114[1].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    ov62_0223118C(&v0->unk_114[0], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DSUB);
    ov62_0223118C(&v0->unk_114[1], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DSUB);
    ov62_0223124C(&v0->unk_114[0], &param0->unk_14, 3);
    ov62_0223124C(&v0->unk_114[1], &param0->unk_14, 94);

    sub_0200D364(v0->unk_114[0].unk_08, 0);
    sub_0200D364(v0->unk_114[1].unk_08, 3);
    SpriteActor_SetSpritePositionXY(v0->unk_114[0].unk_08, 32, 232);
    SpriteActor_SetSpritePositionXY(v0->unk_114[1].unk_08, 128, 232);
    sub_020128C4(v0->unk_114[0].unk_0C, 36, -8);
    sub_020128C4(v0->unk_114[1].unk_0C, 36, -8);
    sub_020129D0(v0->unk_114[0].unk_0C, 1);
    sub_020129D0(v0->unk_114[1].unk_0C, 1);

    ov62_0223F0A8(param0, 0);
}

static void ov62_0223E0FC (UnkStruct_0208C06C * param0, int param1, int param2)
{
    Strbuf* v0;
    Window * v1 = &param0->unk_8A4;
    UnkStruct_ov62_0223E01C * v2 = param0->unk_860;

    if (param1 == 100) {
        StringTemplate * v3;
        Strbuf* v4;
        Strbuf* v5;
        UnkStruct_02030A80 * v6 = v2->unk_194.unk_00;

        v3 = ov62_02231690(102);
        v0 = Strbuf_Init(255, 102);
        v4 = sub_02030B94(v6, 102);
        ov62_022349A8(param0, v4);
        v5 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);
        StringTemplate_SetStrbuf(v3, 0, v4, 0, 1, GAME_LANGUAGE);
        StringTemplate_Format(v3, v0, v5);
        Strbuf_Free(v4);
        Strbuf_Free(v5);
        StringTemplate_Free(v3);
    } else if (param1 == 102) {
        StringTemplate * v7;
        Strbuf* v8;
        Strbuf* v9;
        UnkStruct_02030A80 * v10 = param0->unk_88C[param2];

        v7 = ov62_02231690(102);
        v0 = Strbuf_Init(255, 102);
        v8 = sub_02030B94(v10, 102);
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

    BGL_FillWindow(v1, 0xCC);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 12), NULL);
    sub_0201A9A4(v1);
    Strbuf_Free(v0);
}

static BOOL ov62_0223E22C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;
    UnkStruct_ov62_0223CAA4 * v1;

    if (ov62_022411B8(param0) == 0) {
        return 0;
    }

    switch (param0->unk_08) {
    case 0:
        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);

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
        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        ov62_02231AAC(param0, 117);
        ov62_02234358(param0, param0->unk_6F0, 128, 96);
        sub_0208B9E0(param0->unk_6F0, 1);
        sub_0208BA08(param0->unk_6F0, 24, 24);
        v0->unk_1FC0 = 0;
        Sound_PlayEffect(1381);
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
            sub_020057A4(1381, 0);
            ov62_022348B8(param0, 8, v1->unk_0C, v1->unk_04);
            param0->unk_08++;
            v0->unk_1FC0 = 0;
        } else {
            sub_020057A4(1381, 0);
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
            Sound_PlayEffect(1375);
            ov62_0222FB60(param0, v0->unk_1FBC);
            ov62_0223381C(param0, 1);
        } else {
            ov62_0222FB60(param0, 20);
        }
        break;
    }

    return 0;
}

static void ov62_0223E428 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

    sub_0202FF44(v0->unk_220.unk_04);
    sub_02030A98(v0->unk_194.unk_00);
}

static BOOL ov62_0223E448 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

    sub_0202404C(v0->unk_188[2]);
    return 0;
}

static BOOL ov62_0223E460 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 1:
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 2)) {
            ov62_02240A24(param0);
            sub_02019EBC(param0->unk_14.unk_10, 6);
            sub_02019EBC(param0->unk_14.unk_10, 7);
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

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 12);
        break;
        return 1;
    }

    return 0;
}

static BOOL ov62_0223E510 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;
    UnkStruct_ov62_0223CAA4 * v1;

    switch (param0->unk_08) {
    case 0:
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 2)) {
            sub_02019EBC(param0->unk_14.unk_10, 6);
            ov62_0223E0FC(param0, 278, 0);
            ov62_022342BC(param0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        ;
        if (ov62_022337F0(param0, v0->unk_1FB0, param0->unk_8B4.unk_3904[param0->unk_14.unk_48C.unk_38.unk_00])) {
            param0->unk_08++;
        }
        break;
    case 3:
        ov62_02234358(param0, param0->unk_6F0, 128, 96);
        sub_0208B9E0(param0->unk_6F0, 1);
        sub_0208BA08(param0->unk_6F0, 24, 24);
        param0->unk_08++;
        Sound_PlayEffect(1381);
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
            sub_020057A4(1381, 0);

            param0->unk_08++;
        } else {
            sub_020057A4(1381, 0);
            Sound_PlayEffect(1375);
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
        sub_02024034(v0->unk_188[0]);
        sub_02024034(v0->unk_188[1]);
        sub_02024034(v0->unk_188[2]);
        ov62_0223E428(param0);
        ov62_02231688(&v0->unk_08);
        ov62_02234540(param0, 1);
        ov62_0223146C(param0);
        ov62_02234540(param0, 0);
        sub_020397C8(1, 102);
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
            sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);
            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);
            sub_02019EBC(param0->unk_14.unk_10, 2);
            sub_02019EBC(param0->unk_14.unk_10, 6);
            sub_02019EBC(param0->unk_14.unk_10, 3);
            sub_02019EBC(param0->unk_14.unk_10, 7);
            Heap_FreeToHeap(v0);

            if (sub_0202F250() == 1) {
                sub_0202F22C();
            }
        } else {
            sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        }

        break;
    }

    return 0;
}

static BOOL ov62_0223E810 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 2)) {
            sub_0200710C(param0->unk_14.unk_00, 84, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
            ov62_0223E0FC(param0, 102, v0->unk_1FB0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
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

static BOOL ov62_0223E8BC (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        if (param0->unk_86C == 210) {
            ov62_0223124C(&v0->unk_114[0], &param0->unk_14, 3);
            ov62_0223124C(&v0->unk_114[1], &param0->unk_14, 94);
            sub_0200D364(v0->unk_114[0].unk_08, 0);
            sub_0200D364(v0->unk_114[1].unk_08, 3);
        }

        ov62_0224088C(param0);
        ov62_02240900(param0);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
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
            sub_0200710C(param0->unk_14.unk_00, 80, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        }

        ov62_02234540(param0, 0);
        sub_0200710C(param0->unk_14.unk_00, 6, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
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

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
    {
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

static BOOL ov62_0223EB10 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

    sub_0202404C(v0->unk_188[1]);
    return 0;
}

static BOOL ov62_0223EB28 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);
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

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        ov62_0223E01C(param0);

        if (param0->unk_86C == 210) {
            ov62_0223124C(&v0->unk_114[0], &param0->unk_14, 3);
            ov62_0223124C(&v0->unk_114[1], &param0->unk_14, 94);
            sub_0200D364(v0->unk_114[0].unk_08, 0);
            sub_0200D364(v0->unk_114[1].unk_08, 3);
        }

        ov62_02240900(param0);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
        ov62_02234540(param0, 1);

        if (v0->unk_10 == 0) {
            ov62_02234214(&v0->unk_220, param0);
            ov62_0223427C(&v0->unk_220, 0);

            ov62_022343B8(param0, ov62_02233FEC(&v0->unk_220), 3);
        } else {
            ov62_02232378(&v0->unk_194, param0);
            ov62_022323B8(&v0->unk_194, 0);
            sub_0200710C(param0->unk_14.unk_00, 80, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        }

        ov62_02234540(param0, 0);
        sub_0200710C(param0->unk_14.unk_00, 6, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
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

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
    {
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

static BOOL ov62_0223ED7C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        sub_02024034(v0->unk_188[0]);
        sub_02024034(v0->unk_188[1]);
        sub_02024034(v0->unk_188[2]);
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
            sub_0200D364(v0->unk_114[0].unk_08, 0);
            sub_0200D364(v0->unk_114[1].unk_08, 1);
            ov62_0223F0A8(param0, 1);
            param0->unk_08++;
        }
        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 3);
        break;
    }

    return 0;
}

BOOL(*const Unk_ov62_022490DC[])(UnkStruct_0208C06C *) = {
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

static void ov62_0223EE88 (UnkStruct_ov62_022312B0 * param0, UnkStruct_0208C06C * param1, int param2)
{
    Strbuf* v0;
    MessageLoader * v1;
    Window v2;
    StringTemplate * v3;
    Strbuf* v4;
    Strbuf* v5;

    v1 = param1->unk_14.unk_34;

    if (param1->unk_88C[param2] == NULL) {
        v0 = MessageLoader_GetNewStrbuf(v1, 8);
    } else {
        v3 = ov62_02231690(102);
        v4 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 7);
        v5 = sub_02030B94(param1->unk_88C[param2], 102);
        ov62_022349A8(param1, v5);
        v0 = Strbuf_Init(255, 102);

        StringTemplate_SetStrbuf(v3, 0, v5, 0, 1, GAME_LANGUAGE);
        StringTemplate_Format(v3, v0, v4);
        Strbuf_Free(v4);
        Strbuf_Free(v5);
        StringTemplate_Free(v3);
    }

    Window_Init(&v2);
    BGL_AddFramelessWindow(param1->unk_14.unk_10, &v2, 20, 2, 0, 0);
    Text_AddPrinterWithParamsAndColor(&v2, FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(14, 13, 0), NULL);
    sub_02012BE0(param0->unk_0C, param0->unk_10, &v2, 102);
    Strbuf_Free(v0);
    BGL_DeleteWindow(&v2);
}

static void ov62_0223EF60 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;
    int v1;
    int v2[] = {8, 8, 8, 3, };
    int v3[] = {0, 0, 0, 1};

    ov62_0223136C(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    for (v1 = 0; v1 < 4; v1++) {
        v0->unk_114[v1].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);
        ov62_0223118C(&v0->unk_114[v1], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DSUB);
        ov62_0223124C(&v0->unk_114[v1], &param0->unk_14, v2[v1]);

        if (v1 != 3) {
            ov62_0223EE88(&v0->unk_114[v1], param0, v1 + 1);
        }

        SpriteActor_SetSpritePositionXY(v0->unk_114[v1].unk_08, 42 + 8, (25 + (36 * (v1)) + (16 * (5 - 4))) + 64);
        sub_0200D364(v0->unk_114[v1].unk_08, v3[v1]);
        sub_020128C4(v0->unk_114[v1].unk_0C, 36, -8);
        sub_020129D0(v0->unk_114[v1].unk_0C, 1);
    }
}

static void ov62_0223F038 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;
    int v1;

    for (v1 = 0; v1 < 4; v1++) {
        ov62_022312B0(&v0->unk_114[v1]);
        sub_0200D0F4(v0->unk_114[v1].unk_08);
    }

    ov62_022313BC(param0);
}

static void ov62_0223F06C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

    ov62_022312B0(&v0->unk_114[0]);
    ov62_022312B0(&v0->unk_114[1]);
    sub_0200D0F4(v0->unk_114[0].unk_08);
    sub_0200D0F4(v0->unk_114[1].unk_08);
    ov62_022313BC(param0);
}

static void ov62_0223F0A8 (UnkStruct_0208C06C * param0, int param1)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

    if (param1 == 0) {
        SpriteActor_EnableObject(v0->unk_114[1].unk_08, 1);
        sub_020129D0(v0->unk_114[1].unk_0C, 1);
        SpriteActor_SetSpritePositionXY(v0->unk_114[0].unk_08, 32, 232);
    } else {
        SpriteActor_EnableObject(v0->unk_114[1].unk_08, 0);
        sub_020129D0(v0->unk_114[1].unk_0C, 0);
        SpriteActor_SetSpritePositionXY(v0->unk_114[0].unk_08, 80, 232);
    }

    sub_020128C4(v0->unk_114[0].unk_0C, 36, -8);
    sub_020128C4(v0->unk_114[1].unk_0C, 36, -8);
}

static void ov62_0223F124 (UnkStruct_0208C06C * param0)
{
    int v0;
    UnkStruct_ov62_0223E01C * v1 = param0->unk_860;

    for (v0 = 0; v0 < v1->unk_1FB8; v0++) {
        sub_0201ACF4(&v1->unk_14[v0]);
        BGL_DeleteWindow(&v1->unk_14[v0]);
    }

    v1->unk_1FB8 = 0;
}

static void ov62_0223F160 (UnkStruct_0208C06C * param0)
{
    int v0;
    UnkStruct_ov62_0223E01C * v1 = param0->unk_860;

    for (v0 = 0; v0 < v1->unk_1FB4; v0++) {
        sub_0201ACF4(&v1->unk_94[v0]);
        BGL_DeleteWindow(&v1->unk_94[v0]);
    }

    v1->unk_1FB4 = 0;
}

static BOOL ov62_0223F19C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = Heap_AllocFromHeap(102, sizeof(UnkStruct_ov62_0223E01C));

    memset(v0, 0, sizeof(UnkStruct_ov62_0223E01C));

    param0->unk_860 = v0;

    if (param0->unk_86C == 300) {
        v0->unk_0C = 0;
    } else if (param0->unk_86C == 301) {
        v0->unk_0C = 1;
    } else if (param0->unk_86C == 200) {
        v0->unk_0C = 2;
    }

    sub_02019EBC(param0->unk_14.unk_10, 2);
    sub_02019EBC(param0->unk_14.unk_10, 3);
    sub_02019EBC(param0->unk_14.unk_10, 6);
    sub_02019EBC(param0->unk_14.unk_10, 7);
    ov62_022315C8(&v0->unk_00, &v0->unk_04, 0);
    ov62_0222FB60(param0, 1);

    return 0;
}

static BOOL ov62_0223F218 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        if (ov62_02231664(&v0->unk_08, 1)) {
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 1:
        BGL_SetPriority(0, 1);
        BGL_SetPriority(1, 3);
        BGL_SetPriority(2, 0);
        BGL_SetPriority(3, 1);
        BGL_SetPriority(4, 1);
        BGL_SetPriority(5, 3);
        BGL_SetPriority(6, 0);
        BGL_SetPriority(7, 2);
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

static BOOL ov62_0223F348 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;
    UnkStruct_ov62_0223CAA4 * v1;

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

        Sound_PlayEffect(1381);
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
            sub_020057A4(1381, 0);
            ov62_022348B8(param0, 7, v1->unk_0C, v1->unk_04);
            param0->unk_08++;
        } else {
            sub_020057A4(1381, 0);
            Sound_PlayEffect(1375);

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

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 5:
        ov62_02234540(param0, 1);
        ov62_0223F06C(param0);
        ov62_0223146C(param0);
        ov62_02234540(param0, 0);
        sub_020397C8(1, 102);
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
            sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);
            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);
            sub_02019EBC(param0->unk_14.unk_10, 2);
            sub_02019EBC(param0->unk_14.unk_10, 6);
            sub_02019EBC(param0->unk_14.unk_10, 3);
            sub_02019EBC(param0->unk_14.unk_10, 7);
            Heap_FreeToHeap(v0);
        } else {
            sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
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

static void ov62_0223F65C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;
    int v1 = 0;
    int v2 = 32;
    Strbuf* v3;
    Window * v4;
    int v5[] = {97, 98, 123};

    v4 = &v0->unk_14[0];

    Window_Init(v4);
    BGL_AddWindow(param0->unk_14.unk_10, v4, 2, 3, 3, 20, 4, 14, v2);
    BGL_FillWindow(v4, 0x0);

    v3 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, v5[v0->unk_0C]);

    Text_AddPrinterWithParamsAndColor(v4, FONT_SYSTEM, v3, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    sub_0201A9A4(v4);
    Strbuf_Free(v3);

    v2 = 256;
    v4 = &v0->unk_94[0];

    Window_Init(v4);
    BGL_AddWindow(param0->unk_14.unk_10, v4, 6, 11, 6, 10, 4, 14, v2);
    BGL_FillWindow(v4, 0x0);

    v3 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 95);

    {
        u32 v6 = (80 - Font_CalcMaxLineWidth(FONT_SYSTEM, v3, 0)) / 2;
        Text_AddPrinterWithParamsAndColor(v4, FONT_SYSTEM, v3, v6, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    }

    sub_0201A9A4(v4);
    Strbuf_Free(v3);

    v0->unk_1FB4 = 1;
    v0->unk_1FB8 = 1;
}

static BOOL ov62_0223F760 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

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

        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, 102);

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

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 4);
        break;
    }

    return 0;
}

static BOOL ov62_0223F984 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

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
                sub_0200D364(v0->unk_114[0].unk_08, 0);
                sub_0200D364(v0->unk_114[1].unk_08, 3);
            }

            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, v0->unk_1FBC);
        break;
    }

    return 0;
}

asm static BOOL ov62_0223FB74 (UnkStruct_0208C06C * param0)
{
    push {r3, r4, r5, lr}
    mov r1, #0x86
    add r5, r0, #0
    lsl r1, r1, #4
    ldr r4, [r5, r1]
    ldr r1, [r5, #8]
    cmp r1, #0
    beq _0223FB8E
    cmp r1, #1
    beq _0223FBA6
    cmp r1, #2
    beq _0223FBF6
    b _0223FC1C
 _0223FB8E:
    bl ov62_0223F124
    add r0, r5, #0
    bl ov62_0223F160
    add r0, r5, #0
    bl ov62_02231B8C
    ldr r0, [r5, #8]
    add r0, r0, #1
    str r0, [r5, #8]
    b _0223FCC0
 _0223FBA6:
    add r0, r4, #0
    add r0, #8
    mov r1, #1
    bl ov62_02231664
    add r0, r4, #0
    add r1, r4, #4
    mov r2, #1
    mov r3, #0
    bl ov62_022315E0
    cmp r0, #0
    beq _0223FBDC
    add r0, r5, #0
    mov r1, #1
    bl ov62_02234540
    add r0, r5, #0
    bl ov62_0223F06C
    add r0, r5, #0
    mov r1, #0
    bl ov62_02234540
    ldr r0, [r5, #8]
    add r0, r0, #1
    str r0, [r5, #8]
 _0223FBDC:
    ldr r0, [r5, #0x58]
    mov r1, #3
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp]
    ldr r3, [r4, #8]
    ldr r0, [r5, #0x28]
    lsl r3, r3, #0x18
    mov r2, #0xc
    lsr r3, r3, #0x18
    bl sub_02003A2C
    b _0223FCC0
 _0223FBF6:
    add r4, #8
    add r0, r4, #0
    bl ov62_02231688
    add r0, r5, #0
    bl ov62_0223146C
    mov r0, #1
    mov r1, #0x66
    bl sub_020397C8
    add r0, r5, #0
    mov r1, #1
    bl ov62_0223376C
    ldr r0, [r5, #8]
    add r0, r0, #1
    str r0, [r5, #8]
    b _0223FCC0
 _0223FC1C:
    bl ov62_02233790
    cmp r0, #0
    beq _0223FCC0
    add r0, r4, #0
    add r0, #8
    mov r1, #0
    bl ov62_02231664
    cmp r0, #0
    beq _0223FC90
    add r0, r5, #0
    bl ov62_022318E8
    add r0, r4, #0
    add r0, #8
    bl ov62_02231688
    ldr r0, [r5, #0x58]
    mov r1, #2
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp]
    ldr r0, [r5, #0x28]
    mov r2, #0xc
    mov r3, #0x10
    bl sub_02003A2C
    mov r1, #1
    ldr r3, [r5, #0x10]
    add r0, r5, #0
    add r2, r1, #0
    bl ov62_0222FB44
    add r0, r5, #0
    mov r1, #5
    bl ov62_0222FB60
    ldr r0, [r5, #0x24]
    mov r1, #2
    bl sub_02019EBC
    ldr r0, [r5, #0x24]
    mov r1, #6
    bl sub_02019EBC
    ldr r0, [r5, #0x24]
    mov r1, #3
    bl sub_02019EBC
    ldr r0, [r5, #0x24]
    mov r1, #7
    bl sub_02019EBC
    add r0, r4, #0
    bl Heap_FreeToHeap
    b _0223FCC0
 _0223FC90:
    ldr r0, [r5, #0x58]
    mov r1, #1
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp]
    ldr r3, [r4, #8]
    ldr r0, [r5, #0x28]
    lsl r3, r3, #0x18
    mov r2, #2
    lsr r3, r3, #0x18
    bl sub_02003A2C
    ldr r0, [r5, #0x58]
    mov r1, #3
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp]
    ldr r3, [r4, #8]
    ldr r0, [r5, #0x28]
    lsl r3, r3, #0x18
    mov r2, #0xc
    lsr r3, r3, #0x18
    bl sub_02003A2C
 _0223FCC0:
    mov r0, #0
    pop {r3, r4, r5, pc}
}

static BOOL ov62_0223FCC4 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_022343B8(param0, 6, 7);
        param0->unk_08++;
        break;
    case 1:
        ov62_02240B94(param0);
        v0->unk_188[0] = sub_02023FCC(Unk_ov62_02248FC8, NELEMS(Unk_ov62_02248FC8), ov62_02240A50, param0, 102);
        v0->unk_188[1] = sub_02023FCC(Unk_ov62_02248F98, NELEMS(Unk_ov62_02248F98), ov62_02240AEC, param0, 102);
        v0->unk_188[2] = sub_02023FCC(Unk_ov62_02248F84, NELEMS(Unk_ov62_02248F84), ov62_02240B5C, param0, 102);
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

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 7);
        break;
    }

    return 0;
}

static BOOL ov62_0223FE2C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

    sub_0202404C(v0->unk_188[0]);
    return 0;
}

static BOOL ov62_0223FE44 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

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

static BOOL ov62_0223FF90 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 102);
        param0->unk_08++;
        break;
    case 1:
        if (ScreenWipe_Done() == 1) {
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

        sub_02024034(v0->unk_188[0]);
        sub_02024034(v0->unk_188[1]);
        sub_02024034(v0->unk_188[2]);

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
        Heap_FreeToHeap(v0);
        return 1;
    }

    return 0;
}

static BOOL ov62_02240084 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

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

        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, 102);

        ov62_022343B8(param0, 6, 7);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);

        ov62_0223124C(&v0->unk_114[0], &param0->unk_14, 3);
        ov62_0223124C(&v0->unk_114[1], &param0->unk_14, 94);

        sub_0200D364(v0->unk_114[0].unk_08, 0);
        sub_0200D364(v0->unk_114[1].unk_08, 3);

        v0->unk_2008.unk_08 = 500;
        v0->unk_2008.unk_04 = param0->unk_14.unk_48C.unk_08;
        param0->unk_08++;
        break;
    case 1:
        ov62_02240B94(param0);
        v0->unk_188[0] = sub_02023FCC(Unk_ov62_02248FC8, NELEMS(Unk_ov62_02248FC8), ov62_02240A50, param0, 102);
        v0->unk_188[1] = sub_02023FCC(Unk_ov62_02248F98, NELEMS(Unk_ov62_02248F98), ov62_02240AEC, param0, 102);
        v0->unk_188[2] = sub_02023FCC(Unk_ov62_02248F84, NELEMS(Unk_ov62_02248F84), ov62_02240B5C, param0, 102);
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

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 4:
        sub_0200F174(0, 1, 1, 0, 6, 1, 102);
        param0->unk_08++;
        break;
    case 5:
        if (ScreenWipe_Done() == 1) {
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

static void ov62_022402FC (UnkStruct_0208C06C * param0, int param1, BOOL param2)
{
    Strbuf* v0;
    Window * v1 = &param0->unk_8A4;
    UnkStruct_ov62_0223E01C * v2 = param0->unk_860;

    ov62_022302A8(param0, 2, param2);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    Window_Init(v1);
    BGL_AddWindow(param0->unk_14.unk_10, v1, 2, 1, 19, 30, 4, 14, 300);

    if (param1 == 100) {
        StringTemplate * v3;
        Strbuf* v4;
        Strbuf* v5;
        UnkStruct_02030A80 * v6 = v2->unk_194.unk_00;

        v3 = ov62_02231690(102);
        v0 = Strbuf_Init(255, 102);
        v4 = sub_02030B94(v6, 102);
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

    BGL_FillWindow(v1, 0xCC);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 12), NULL);
    sub_0201A9A4(v1);
    Strbuf_Free(v0);
}

asm static BOOL ov62_022403F8 (UnkStruct_0208C06C * param0)
{
    push {r4, r5, r6, lr}
    sub sp, #0x10
    add r4, r0, #0
    mov r0, #0x86
    lsl r0, r0, #4
    ldr r5, [r4, r0]
    bl sub_0202FE04
    mov r1, #4
    mov r2, #0
    bl sub_0202FE98
    add r3, r0, #0
    add r2, r1, #0
    add r0, r4, #0
    add r1, r3, #0
    bl ov62_02234970
    cmp r0, #0
    ldr r0, [r4, #8]
    bne _02240424
    b _02240758
 _02240424:
    cmp r0, #6
    bls _0224042A
    b _0224072A
 _0224042A:
    add r0, r0, r0
    add r0, pc
    ldrh r0, [r0, #6]
    lsl r0, r0, #0x10
    asr r0, r0, #0x10
    add pc, r0
 _02240436:
    lsl r4, r1, #0
    dcd 0xd00070
    dcd 0x11800e0
    dcd 0x2880168
 _02240444:
    add r0, r4, #0
    mov r1, #1
    bl ov62_02234540
    ldr r0, [r5, #0x10]
    cmp r0, #0
    bne _02240460
    mov r0, #0x22
    lsl r0, r0, #4
    add r0, r5, r0
    add r1, r4, #0
    bl ov62_02234228
    b _0224046C
 _02240460:
    mov r0, #0x65
    lsl r0, r0, #2
    add r0, r5, r0
    add r1, r4, #0
    bl ov62_02232394
 _0224046C:
    add r0, r4, #0
    bl ov62_0224088C
    add r0, r4, #0
    mov r1, #0
    bl ov62_02234540
    add r0, r4, #0
    mov r1, #1
    bl ov62_02234540
    add r0, r4, #0
    bl ov62_022410F0
    add r0, r4, #0
    mov r1, #0
    bl ov62_02234540
    mov r0, #4
    mov r1, #0
    bl GXLayers_EngineAToggleLayers
    mov r0, #4
    mov r1, #0
    bl GXLayers_EngineBToggleLayers
    ldr r0, [r4, #8]
    add r0, r0, #1
    str r0, [r4, #8]
    b _02240884
 _022404A8:
    add r0, r5, #0
    add r0, #8
    mov r1, #1
    bl ov62_02231664
    add r0, r5, #0
    add r1, r5, #4
    mov r2, #1
    mov r3, #0
    bl ov62_022315E0
    cmp r0, #0
    beq _022404EE
    add r0, r4, #0
    mov r1, #1
    bl ov62_02234540
    add r0, r4, #0
    bl ov62_0223EF60
    add r0, r4, #0
    mov r1, #0
    bl ov62_02234540
    ldr r0, [r4, #0x24]
    mov r1, #3
    bl sub_02019EBC
    ldr r0, [r4, #0x24]
    mov r1, #7
    bl sub_02019EBC
    ldr r0, [r4, #8]
    add r0, r0, #1
    str r0, [r4, #8]
 _022404EE:
    ldr r0, [r4, #0x58]
    mov r1, #3
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp]
    ldr r3, [r5, #8]
    ldr r0, [r4, #0x28]
    lsl r3, r3, #0x18
    mov r2, #0xc
    lsr r3, r3, #0x18
    bl sub_02003A2C
    b _02240884
 _02240508:
    ldr r1, = 0x115
    add r0, r4, #0
    bl ov62_02231AAC
    ldr r0, [r4, #8]
    add r0, r0, #1
    str r0, [r4, #8]
    b _02240884
 _02240518:
    bl TouchScreen_Tapped
    cmp r0, #0
    bne _02240522
    b _02240884
 _02240522:
    add r0, r4, #0
    bl ov62_02231B8C
    ldr r0, [r4, #0x24]
    mov r1, #2
    bl sub_02019EBC
    ldr r0, [r4, #0x24]
    mov r1, #6
    bl sub_02019EBC
    mov r0, #4
    mov r1, #0
    bl GXLayers_EngineBToggleLayers
    mov r0, #4
    mov r1, #0
    bl GXLayers_EngineAToggleLayers
    ldr r0, [r4, #8]
    add r0, r0, #1
    str r0, [r4, #8]
    b _02240884
 _02240550:
    add r0, r5, #0
    add r0, #8
    mov r1, #1
    bl ov62_02231664
    add r0, r5, #0
    add r1, r5, #4
    mov r2, #1
    mov r3, #0
    bl ov62_022315E0
    cmp r0, #0
    beq _02240586
    add r0, r4, #0
    mov r1, #1
    bl ov62_02234540
    add r0, r4, #0
    bl ov62_0223F038
    add r0, r4, #0
    mov r1, #0
    bl ov62_02234540
    ldr r0, [r4, #8]
    add r0, r0, #1
    str r0, [r4, #8]
 _02240586:
    ldr r0, [r4, #0x58]
    mov r1, #3
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp]
    ldr r3, [r5, #8]
    ldr r0, [r4, #0x28]
    lsl r3, r3, #0x18
    mov r2, #0xc
    lsr r3, r3, #0x18
    bl sub_02003A2C
    b _02240884
 _022405A0:
    add r0, r4, #0
    mov r1, #1
    bl ov62_02234540
    add r0, r4, #0
    bl ov62_0223E01C
    add r0, r4, #0
    mov r1, #0
    bl ov62_02234540
    ldr r0, = 0x86C
    ldr r0, [r4, r0]
    cmp r0, #0xd2
    bne _022405F6
    mov r0, #0x45
    lsl r0, r0, #2
    add r1, r4, #0
    add r0, r5, r0
    add r1, #0x14
    mov r2, #3
    bl ov62_0223124C
    mov r0, #0x13
    lsl r0, r0, #4
    add r1, r4, #0
    add r0, r5, r0
    add r1, #0x14
    mov r2, #0x5e
    bl ov62_0223124C
    mov r0, #0x46
    lsl r0, r0, #2
    ldr r0, [r5, r0]
    mov r1, #0
    bl sub_0200D364
    mov r0, #0x4d
    lsl r0, r0, #2
    ldr r0, [r5, r0]
    mov r1, #3
    bl sub_0200D364
 _022405F6:
    add r0, r4, #0
    bl ov62_02240900
    mov r0, #0
    str r0, [sp]
    str r0, [sp, #4]
    str r0, [sp, #8]
    mov r0, #0x66
    str r0, [sp, #0xc]
    ldr r0, [r4, #0x14]
    ldr r2, [r4, #0x24]
    mov r1, #0x3e
    mov r3, #3
    bl sub_020070E8
    mov r0, #0
    str r0, [sp]
    str r0, [sp, #4]
    str r0, [sp, #8]
    mov r0, #0x66
    str r0, [sp, #0xc]
    ldr r0, [r4, #0x14]
    ldr r2, [r4, #0x24]
    mov r1, #0x3e
    mov r3, #7
    bl sub_020070E8
    add r0, r4, #0
    mov r1, #1
    bl ov62_02234540
    ldr r0, [r5, #0x10]
    cmp r0, #0
    bne _02240668
    mov r0, #0x22
    lsl r0, r0, #4
    add r0, r5, r0
    add r1, r4, #0
    bl ov62_02234214
    mov r0, #0x22
    lsl r0, r0, #4
    add r0, r5, r0
    mov r1, #0
    bl ov62_0223427C
    mov r0, #0x22
    lsl r0, r0, #4
    add r0, r5, r0
    bl ov62_02233FEC
    add r1, r0, #0
    add r0, r4, #0
    mov r2, #3
    bl ov62_022343B8
    b _02240698
 _02240668:
    mov r0, #0x65
    lsl r0, r0, #2
    add r0, r5, r0
    add r1, r4, #0
    bl ov62_02232378
    mov r0, #0x65
    lsl r0, r0, #2
    add r0, r5, r0
    mov r1, #0
    bl ov62_022323B8
    mov r0, #0
    str r0, [sp]
    str r0, [sp, #4]
    str r0, [sp, #8]
    mov r0, #0x66
    str r0, [sp, #0xc]
    ldr r0, [r4, #0x14]
    ldr r2, [r4, #0x24]
    mov r1, #0x50
    mov r3, #3
    bl sub_0200710C
 _02240698:
    add r0, r4, #0
    mov r1, #0
    bl ov62_02234540
    mov r0, #0
    str r0, [sp]
    str r0, [sp, #4]
    str r0, [sp, #8]
    mov r0, #0x66
    str r0, [sp, #0xc]
    ldr r0, [r4, #0x14]
    ldr r2, [r4, #0x24]
    mov r1, #6
    mov r3, #7
    bl sub_0200710C
    ldr r0, [r4, #8]
    add r0, r0, #1
    str r0, [r4, #8]
    b _02240884
 _022406C0:
    add r0, r5, #0
    add r0, #8
    mov r1, #0
    bl ov62_02231664
    mov r2, #0
    add r0, r5, #0
    add r1, r5, #4
    add r3, r2, #0
    bl ov62_022315E0
    cmp r0, #0
    beq _02240710
    ldr r0, [r5, #0x10]
    cmp r0, #0
    bne _022406EE
    mov r0, #0x22
    lsl r0, r0, #4
    add r0, r5, r0
    mov r1, #1
    bl ov62_0223427C
    b _022406FA
 _022406EE:
    mov r0, #0x65
    lsl r0, r0, #2
    add r0, r5, r0
    mov r1, #1
    bl ov62_022323B8
 _022406FA:
    mov r0, #4
    mov r1, #1
    bl GXLayers_EngineBToggleLayers
    mov r0, #4
    mov r1, #1
    bl GXLayers_EngineAToggleLayers
    ldr r0, [r4, #8]
    add r0, r0, #1
    str r0, [r4, #8]
 _02240710:
    ldr r0, [r4, #0x58]
    mov r1, #3
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp]
    ldr r3, [r5, #8]
    ldr r0, [r4, #0x28]
    lsl r3, r3, #0x18
    mov r2, #0xc
    lsr r3, r3, #0x18
    bl sub_02003A2C
    b _02240884
 _0224072A:
    ldr r1, = 0x4138
    mov r0, #0
    ldr r1, [r4, r1]
    cmp r1, #0
    ble _0224074E
    mov r1, #0x9a
    lsl r1, r1, #6
    add r5, r4, r1
    ldr r2, = 0x4138
    add r6, r4, #0
    sub r1, #0x78
 _02240740:
    str r5, [r6, r1]
    ldr r3, [r4, r2]
    add r0, r0, #1
    add r5, #0xe4
    add r6, r6, #4
    cmp r0, r3
    blt _02240740
 _0224074E:
    add r0, r4, #0
    mov r1, #7
    bl ov62_0222FB60
    b _02240884
 _02240758:
    cmp r0, #0
    beq _02240766
    cmp r0, #1
    beq _022407CA
    cmp r0, #2
    beq _02240838
    b _0224087C
 _02240766:
    add r0, r4, #0
    mov r1, #1
    bl ov62_02234540
    ldr r0, [r5, #0x10]
    cmp r0, #0
    bne _02240782
    mov r0, #0x22
    lsl r0, r0, #4
    add r0, r5, r0
    add r1, r4, #0
    bl ov62_02234228
    b _0224078E
 _02240782:
    mov r0, #0x65
    lsl r0, r0, #2
    add r0, r5, r0
    add r1, r4, #0
    bl ov62_02232394
 _0224078E:
    add r0, r4, #0
    mov r1, #0
    bl ov62_02234540
    add r0, r4, #0
    mov r1, #1
    bl ov62_02234540
    add r0, r4, #0
    bl ov62_022410F0
    add r0, r4, #0
    mov r1, #0
    bl ov62_02234540
    add r0, r4, #0
    bl ov62_0224088C
    mov r0, #4
    mov r1, #0
    bl GXLayers_EngineAToggleLayers
    mov r0, #4
    mov r1, #0
    bl GXLayers_EngineBToggleLayers
    ldr r0, [r4, #8]
    add r0, r0, #1
    str r0, [r4, #8]
    b _02240884
 _022407CA:
    add r0, r5, #0
    add r0, #8
    mov r1, #1
    bl ov62_02231664
    add r0, r5, #0
    add r1, r5, #4
    mov r2, #1
    mov r3, #0
    bl ov62_022315E0
    cmp r0, #0
    beq _02240810
    add r0, r4, #0
    mov r1, #1
    bl ov62_02234540
    add r0, r4, #0
    bl ov62_0223EF60
    add r0, r4, #0
    mov r1, #0
    bl ov62_02234540
    ldr r0, [r4, #0x24]
    mov r1, #3
    bl sub_02019EBC
    ldr r0, [r4, #0x24]
    mov r1, #7
    bl sub_02019EBC
    ldr r0, [r4, #8]
    add r0, r0, #1
    str r0, [r4, #8]
 _02240810:
    ldr r0, [r4, #0x58]
    mov r1, #3
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp]
    ldr r3, [r5, #8]
    ldr r0, [r4, #0x28]
    lsl r3, r3, #0x18
    mov r2, #0xc
    lsr r3, r3, #0x18
    bl sub_02003A2C
    b _02240884
 _02240838:
    add r0, r5, #0
    add r0, #8
    mov r1, #0
    bl ov62_02231664
    add r0, r5, #0
    add r1, r5, #4
    mov r2, #0
    mov r3, #1
    bl ov62_022315E0
    cmp r0, #0
    beq _02240862
    add r0, r4, #0
    mov r1, #0x64
    mov r2, #0
    bl ov62_022402FC
    ldr r0, [r4, #8]
    add r0, r0, #1
    str r0, [r4, #8]
 _02240862:
    ldr r0, [r4, #0x58]
    mov r1, #3
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp]
    ldr r3, [r5, #8]
    ldr r0, [r4, #0x28]
    lsl r3, r3, #0x18
    mov r2, #0xc
    lsr r3, r3, #0x18
    bl sub_02003A2C
    b _02240884
 _0224087C:
    add r0, r4, #0
    mov r1, #0xc
    bl ov62_0222FB60
 _02240884:
    mov r0, #0
    add sp, #0x10
    pop {r4, r5, r6, pc}
}

static void ov62_0224088C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

    sub_0201ACF4(&v0->unk_94[0]);
    BGL_DeleteWindow(&v0->unk_94[0]);
}

static void ov62_022408A8 (UnkStruct_0208C06C * param0, int param1)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;
    Window * v1;
    Strbuf* v2;
    int v3;

    v1 = &v0->unk_94[0];
    BGL_FillWindow(v1, 0x0);
    v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);
    v3 = ov62_0223429C(v1, v2);

    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, v3, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    Strbuf_Free(v2);
    sub_0201A9A4(v1);
}

static void ov62_02240900 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;
    Window * v1;
    int v2 = 1;

    v1 = &v0->unk_94[0];

    Window_Init(v1);
    BGL_AddWindow(param0->unk_14.unk_10, v1, 6, 8, 3, 16, 2, 14, v2);
    ov62_022408A8(param0, 121 + v0->unk_10);
}

static void ov62_02240944 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;
    Window * v1;
    Strbuf* v2;
    int v3 = 1;
    int v4;

    v1 = &v0->unk_94[0];

    Window_Init(v1);
    BGL_AddWindow(param0->unk_14.unk_10, v1, 6, 4, 6, 10, 2, 14, v3);
    BGL_FillWindow(v1, 0x0);

    v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 130);
    v4 = ov62_0223429C(v1, v2);

    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    Strbuf_Free(v2);
    sub_0201A9A4(v1);

    v3 += (10 * 2);
    v1 = &v0->unk_94[1];

    Window_Init(v1);
    BGL_AddWindow(param0->unk_14.unk_10, v1, 6, 18, 6, 10, 2, 14, v3);
    BGL_FillWindow(v1, 0x0);

    v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 131);
    v4 = ov62_0223429C(v1, v2);

    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    Strbuf_Free(v2);
    sub_0201A9A4(v1);
}

static void ov62_02240A24 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

    sub_0201ACF4(&v0->unk_94[0]);
    BGL_DeleteWindow(&v0->unk_94[0]);
    sub_0201ACF4(&v0->unk_94[1]);
    BGL_DeleteWindow(&v0->unk_94[1]);
}

static void ov62_02240A50 (u32 param0, u32 param1, void * param2)
{
    UnkStruct_0208C06C * v0 = param2;
    UnkStruct_ov62_0223E01C * v1 = v0->unk_860;

    if (param1 != 0) {
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

static void ov62_02240AEC (u32 param0, u32 param1, void * param2)
{
    UnkStruct_0208C06C * v0 = param2;
    UnkStruct_ov62_0223E01C * v1 = v0->unk_860;

    if (param1 != 0) {
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

static void ov62_02240B5C (u32 param0, u32 param1, void * param2)
{
    UnkStruct_0208C06C * v0 = param2;
    UnkStruct_ov62_0223E01C * v1 = v0->unk_860;

    if (param1 != 0) {
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

static void ov62_02240B94 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

    v0->unk_194.unk_00 = sub_02030A80(102);
    ov61_0222AFC0(&param0->unk_8B4.unk_1D58[param0->unk_14.unk_48C.unk_38.unk_00]->unk_00, v0->unk_194.unk_00);
    v0->unk_220.unk_00 = v0->unk_194.unk_00;
    v0->unk_220.unk_04 = sub_0202FF2C(102);
    MI_CpuCopy8(&param0->unk_8B4.unk_1D58[param0->unk_14.unk_48C.unk_38.unk_00]->unk_80, v0->unk_220.unk_04, sizeof(UnkStruct_ov61_0222BED8_sub1));
}

static void ov62_02240BF4 (UnkStruct_0208C06C * param0)
{
    int v0, v1;
    int v2 = 0;
    UnkStruct_ov62_0223E01C * v3 = param0->unk_860;
    int v4;
    int v5;
    int v6;
    int v7 = param0->unk_14.unk_48C.unk_08;
    int v8[][6] = {
        {0, 1, 2, 3, 4, 5},
        {0, 1, 2, 3, 4, 5},
    };
    int v9[6] = {0, 0, 0, 0, 0, 0};
    int v10[6] = {0, 0, 0, 0, 0, 0};
    int v11 = 0;

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->unk_8B4.unk_1D58[v7 + v0] == NULL) {
            continue;
        }

        if (ov62_02233F94(( UnkStruct_0202F41C * )&param0->unk_8B4.unk_1D58[v7 + v0]->unk_80)) {
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

            if (ov62_02233F94(( UnkStruct_0202F41C * )&param0->unk_8B4.unk_1D58[v7 + v0]->unk_80)) {
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
                sub_0200D474(v3->unk_2008.unk_0C[v0][v1].unk_04, 6 - v1);
            }

            v3->unk_2008.unk_08++;
        }
    }

    ov62_0223DFA8(param0);
}

static void ov62_02240D98 (UnkStruct_0208C06C * param0, BOOL param1)
{
    int v0, v1;
    UnkStruct_ov62_0223E01C * v2 = param0->unk_860;

    for (v0 = 0; v0 < 5; v0++) {
        for (v1 = 0; v1 < 6; v1++) {
            if (v2->unk_2008.unk_0C[v0][v1].unk_04) {
                SpriteActor_EnableObject(v2->unk_2008.unk_0C[v0][v1].unk_04, param1);
            }
        }
    }
}

static void ov62_02240DDC (UnkStruct_0208C06C * param0)
{
    int v0, v1;
    UnkStruct_ov62_0223E01C * v2 = param0->unk_860;

    for (v0 = 0; v0 < 5; v0++) {
        for (v1 = 0; v1 < 6; v1++) {
            if (v2->unk_2008.unk_0C[v0][v1].unk_04) {
                ov62_02233B24(param0, v2->unk_2008.unk_0C[v0][v1].unk_00, v2->unk_2008.unk_0C[v0][v1].unk_04);
                v2->unk_2008.unk_0C[v0][v1].unk_04 = NULL;
            }
        }
    }
}

static void ov62_02240E30 (UnkStruct_0208C06C * param0)
{
    int v0, v1;
    int v2 = 0;
    int v3;
    int v4[6] = {0, 0, 0, 0, 0, 0};
    UnkStruct_ov62_0223E01C * v5 = param0->unk_860;

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
            {0, 1, 2, 3, 4, 5},
            {0, 1, 2, 3, 4, 5},
        };
        int v11[6] = {0, 0, 0, 0, 0, 0};
        int v12[6] = {0, 0, 0, 0, 0, 0};
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
                sub_0200D474(v5->unk_2008.unk_0C[v2][v1].unk_04, 6 - v1);
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

        SpriteGfxHandler_UnloadCharObjById(param0->unk_14.unk_08, 100000 + v4[v0]);
    }

    ov62_02234540(param0, 0);
}

static void ov62_022410F0 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223E01C * v0 = param0->unk_860;

    ov62_022312B0(&v0->unk_114[0]);
    ov62_022312B0(&v0->unk_114[1]);
    sub_0200D0F4(v0->unk_114[0].unk_08);
    sub_0200D0F4(v0->unk_114[1].unk_08);
    ov62_022313BC(param0);
}
