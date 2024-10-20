#include "overlay097/ov97_02237694.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/archived_sprite.h"
#include "struct_defs/struct_0202DF40.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay022/struct_ov22_022559F8.h"
#include "overlay097/struct_ov97_0222D250.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay097/struct_ov97_02237808.h"
#include "overlay097/struct_ov97_02237AEC.h"
#include "overlay097/struct_ov97_0223829C.h"
#include "overlay097/union_ov97_0222D2B0.h"

#include "assert.h"
#include "cell_actor.h"
#include "crypto.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "message_util.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "savedata.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_020131EC.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_02033200.h"

typedef struct {
    BGL *unk_00;
    BOOL unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    SaveData *unk_18;
    void *unk_1C;
    int unk_20;
    BOOL unk_24[4];
    UnkStruct_ov97_02237AEC unk_34;
    CellActor *unk_26C;
    int unk_270;
    fx32 unk_274;
    u8 unk_278[3200];
    ArchivedSprite unk_EF8;
    void (*unk_F08)(void *param0);
} UnkStruct_ov97_0223F550;

static void ov97_02237E58(void *param0);

static UnkStruct_ov97_0223F550 Unk_ov97_0223F550;

void ov97_02237694(int param0)
{
    UnkStruct_ov97_0223F550 *v0 = &Unk_ov97_0223F550;

    memset(v0, 0, sizeof(UnkStruct_ov97_0223F550));

    v0->unk_04 = 1;
    v0->unk_08 = param0;
}

void *ov97_022376C4(OverlayManager *param0, int param1, int param2, int param3)
{
    void *v0;

    Heap_Create(3, param1, param3);
    v0 = OverlayManager_NewData(param0, param2, param1);

    memset(v0, 0, param2);

    sub_0200F344(0, 0x0);
    sub_0200F344(1, 0x0);

    return v0;
}

void ov97_022376FC(BGL *param0, int param1, u8 param2, u32 param3, u32 param4)
{
    UnkStruct_ov97_0222DB78 v0 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0x0000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0,
        0,
        0,
        0
    };

    v0.unk_10 = param2;

    switch (param2) {
    case 1:
        v0.unk_08 = 0x800;
        break;
    case 2:
        v0.unk_08 = 0x1000;
        break;
    case 3:
        v0.unk_08 = 0x1000;
        break;
    case 4:
        v0.unk_08 = 0x2000;
        break;
    }

    v0.unk_12 = param3 / 0x800;
    v0.unk_13 = param4 / 0x4000;

    sub_020183C4(param0, param1, &v0, 0);
    sub_02019EBC(param0, param1);
}

void ov97_02237784(int param0)
{
    UnkStruct_ov97_0223F550 *v0 = &Unk_ov97_0223F550;
    v0->unk_10 = param0;
}

void ov97_02237790(int param0, int param1, int *param2, int param3)
{
    UnkStruct_ov97_0223F550 *v0 = &Unk_ov97_0223F550;

    if (v0->unk_10 == 0) {
        sub_0200F174(0, param0, param0, 0x0, 6, 1, v0->unk_08);
    } else {
        sub_0200F174(0, param0, param0, 0x7fff, 6, 1, v0->unk_08);
    }

    if (param2) {
        *param2 = param3;
    }

    v0->unk_0C = param1;
}

void ov97_022377F0(int *param0)
{
    UnkStruct_ov97_0223F550 *v0 = &Unk_ov97_0223F550;

    if (ScreenWipe_Done()) {
        *param0 = v0->unk_0C;
    }
}

void ov97_02237808(UnkStruct_ov97_02237808 *param0, Window *param1, int param2, int param3, int param4, int param5)
{
    memset(param0, 0, sizeof(UnkStruct_ov97_02237808));

    param0->unk_04 = 1;
    param0->unk_08 = 1;
    param0->unk_4C = -1;
    param0->unk_10 = param1;
    param0->unk_30 = param2;
    param0->unk_34 = param3;
    param0->unk_38 = param4;
    param0->unk_3C = param5;
    param0->unk_2C = 0;
    param0->unk_40 = 0;
    param0->unk_44 = TEXT_COLOR(1, 2, 15);
    param0->unk_48 = 15;
    param0->unk_00 = 0;
    param0->unk_20 = param0->unk_24 = 0;
    param0->unk_14 = NULL;
    param0->unk_50 = 0xff;
}

void ov97_02237858(UnkStruct_ov97_02237808 *param0, int param1, int param2, int param3)
{
    param0->unk_18 = param1;
    param0->unk_1C = param2;
    param0->unk_28 = param3;
}

void ov97_02237860(UnkStruct_ov97_02237808 *param0, int param1, int param2)
{
    param0->unk_00 = param1;
    param0->unk_40 = param2;
}

void ov97_02237868(UnkStruct_ov97_02237808 *param0, int param1, int param2)
{
    param0->unk_20 = param1;
    param0->unk_24 = param2;
}

static int ov97_02237870(UnkStruct_ov97_02237808 *param0, int param1)
{
    int v0;
    Strbuf *v1;
    StringTemplate *v2;
    MessageLoader *v3;
    UnkStruct_ov97_0223F550 *v4 = &Unk_ov97_0223F550;

    if ((param1 != -1) && (param0->unk_4C != param1)) {
        param0->unk_4C = param1;

        if (param0->unk_08 == 1) {
            BGL_FillWindow(param0->unk_10, param0->unk_48);
        }

        if (param0->unk_4C != -1) {
            v3 = MessageLoader_Init(1, 26, param0->unk_34, v4->unk_08);

            if (param0->unk_14 == NULL) {
                v2 = StringTemplate_Default(v4->unk_08);
            } else {
                v2 = param0->unk_14;
            }

            v1 = MessageUtil_ExpandedStrbuf(v2, v3, param0->unk_4C, v4->unk_08);

            if (param0->unk_0C == 0) {
                v0 = Text_AddPrinterWithParamsAndColor(param0->unk_10, param0->unk_40, v1, param0->unk_20, param0->unk_24, param0->unk_50, param0->unk_44, NULL);
            } else {
                int v5, v6;

                v5 = Font_CalcStrbufWidth(param0->unk_40, v1, Font_GetAttribute(param0->unk_40, 2));
                v6 = sub_0201C294(param0->unk_10) * 8 - v5;
                v0 = Text_AddPrinterWithParamsAndColor(param0->unk_10, param0->unk_40, v1, v6, param0->unk_24, param0->unk_50, param0->unk_44, NULL);

                param0->unk_0C = 0;
            }

            Strbuf_Free(v1);

            if (param0->unk_14 == NULL) {
                StringTemplate_Free(v2);
            }

            MessageLoader_Free(v3);
        }
    }

    param0->unk_50 = 0xff;
    return v0;
}

int ov97_0223795C(BGL *param0, UnkStruct_ov97_02237808 *param1, int param2, int param3, int param4)
{
    int v0;

    if (param1->unk_10->unk_00 == NULL) {
        BGL_AddWindow(param0, param1->unk_10, param1->unk_2C, param2, param3, param1->unk_18, param1->unk_1C, param1->unk_30, param1->unk_28);
        v0 = ov97_02237870(param1, param4);
    } else {
        if (param2 != -1) {
            sub_0201C2AC(param1->unk_10, param2);
        }

        if (param3 != -1) {
            sub_0201C2B0(param1->unk_10, param3);
        }

        v0 = ov97_02237870(param1, param4);
    }

    if (param1->unk_04 == 1) {
        if (param1->unk_00 == 0) {
            Window_Show(param1->unk_10, 0, param1->unk_38, param1->unk_3C);
        } else {
            sub_0200E060(param1->unk_10, 0, param1->unk_38, param1->unk_3C);
        }
    }

    return v0;
}

int ov97_02237A18(UnkStruct_ov97_02237808 *param0)
{
    return param0->unk_18 * param0->unk_1C;
}

void ov97_02237A20(void)
{
    UnkStruct_ov97_0223F550 *v0 = &Unk_ov97_0223F550;
    UnkStruct_ov22_022559F8 v1 = {
        40,
        4096,
        4096,
        NULL,
    };

    v1.unk_0C = v0->unk_08;

    sub_0201E88C(&v1, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K);
    sub_0201F834(30, v0->unk_08);

    sub_0201E994();
    sub_0201F8E4();
}

BOOL ov97_02237A60(void)
{
    UnkStruct_ov97_0223F550 *v0 = &Unk_ov97_0223F550;

    return !!v0->unk_34.unk_00;
}

void ov97_02237A74(void)
{
    int v0;
    UnkStruct_ov97_0223F550 *v1 = &Unk_ov97_0223F550;

    NNS_G2dInitOamManagerModule();

    sub_0200A784(0, 126, 0, 32, 0, 126, 0, 32, v1->unk_08);
    v1->unk_34.unk_00 = sub_020095C4(128, &v1->unk_34.unk_04, v1->unk_08);
    sub_0200964C(&v1->unk_34.unk_04, 0, (256 * FX32_ONE));

    v1->unk_274 = (192 << FX32_SHIFT);

    for (v0 = 0; v0 < 6; v0++) {
        v1->unk_34.unk_190[v0] = SpriteResourceCollection_New(32, v0, v1->unk_08);
    }
}

UnkStruct_ov97_02237AEC *ov97_02237AEC(void)
{
    UnkStruct_ov97_0223F550 *v0 = &Unk_ov97_0223F550;

    GF_ASSERT(v0 != NULL);
    GF_ASSERT(v0->unk_34.unk_00 != NULL);

    return &v0->unk_34;
}

void ov97_02237B0C(int param0, int param1, int param2, int param3, int param4, int param5)
{
    UnkStruct_ov97_0223F550 *v0 = &Unk_ov97_0223F550;
    int v1 = (param5 == 0) ? NNS_G2D_VRAM_TYPE_2DMAIN : NNS_G2D_VRAM_TYPE_2DSUB;
    int v2;

    v2 = 1;

    if (param0 == 16) {
        v2 = 0;
    }

    if (param1 != -1) {
        v0->unk_34.unk_1A8[param5][0] = SpriteResourceCollection_AddTiles(v0->unk_34.unk_190[0], param0, param1, v2, param5, v1, v0->unk_08);
    }

    if (param2 != -1) {
        v0->unk_34.unk_1A8[param5][1] = SpriteResourceCollection_AddPalette(v0->unk_34.unk_190[1], param0, param2, 0, param5, v1, 3, v0->unk_08);
    }

    if (param3 != -1) {
        v0->unk_34.unk_1A8[param5][2] = SpriteResourceCollection_Add(v0->unk_34.unk_190[2], param0, param3, v2, param5, 2, v0->unk_08);
    }

    if (param4 != -1) {
        v0->unk_34.unk_1A8[param5][3] = SpriteResourceCollection_Add(v0->unk_34.unk_190[3], param0, param4, v2, param5, 3, v0->unk_08);
    }

    sub_0200A328(v0->unk_34.unk_1A8[param5][0]);
    sub_0200A640(v0->unk_34.unk_1A8[param5][1]);
    sub_020093B4(&v0->unk_34.unk_1D8[param5], param5, param5, param5, param5, 0xffffffff, 0xffffffff, 0, 0, v0->unk_34.unk_190[0], v0->unk_34.unk_190[1], v0->unk_34.unk_190[2], v0->unk_34.unk_190[3], NULL, NULL);

    if (param5 == 0) {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    } else {
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    }

    SetMainCallback(ov97_02237E58, NULL);
}

void ov97_02237C80(fx32 param0, fx32 param1)
{
    UnkStruct_ov97_0223F550 *v0 = &Unk_ov97_0223F550;

    sub_0200964C(&v0->unk_34.unk_04, param0, param1);
    v0->unk_274 = param1;
}

void ov97_02237CA0(void)
{
    ov97_02237CAC(0);
}

void ov97_02237CAC(int param0)
{
    UnkStruct_ov97_0223F550 *v0 = &Unk_ov97_0223F550;

    if (v0->unk_26C) {
        VecFx32 *v1;

        if (v0->unk_270 == 0) {
            if ((CellActor_GetDrawFlag(v0->unk_26C) == 0) && (param0 == 0)) {
                CellActor_SetDrawFlag(v0->unk_26C, 1);
            }

            v1 = (VecFx32 *)CellActor_GetPosition(v0->unk_26C);

            if (v1->y < 384 * FX32_ONE) {
                v1->y += FX32_ONE * 3;
            }
        } else {
            v0->unk_270--;
        }
    }

    if (v0->unk_34.unk_00 != NULL) {
        CellActorCollection_Update(v0->unk_34.unk_00);
    }
}

CellActor *ov97_02237D14(int param0, CellActor *param1, int param2, int param3, int param4)
{
    UnkStruct_ov97_0223F550 *v0 = &Unk_ov97_0223F550;

    if (param1 == NULL) {
        CellActorInitParamsEx v1;

        v1.collection = v0->unk_34.unk_00;
        v1.resourceData = &v0->unk_34.unk_1D8[param0];
        v1.position.z = 0;
        v1.affineScale.x = FX32_ONE;
        v1.affineScale.y = FX32_ONE;
        v1.affineScale.z = FX32_ONE;
        v1.affineZRotation = 0;
        v1.position.x = FX32_ONE * param2;
        v1.position.y = FX32_ONE * param3;
        v1.priority = 10;
        v1.vramType = (param0 == 0) ? NNS_G2D_VRAM_TYPE_2DMAIN : NNS_G2D_VRAM_TYPE_2DSUB;
        v1.heapID = v0->unk_08;

        if (v1.vramType == NNS_G2D_VRAM_TYPE_2DSUB) {
            v1.position.y += v0->unk_274;
        }

        param1 = CellActorCollection_AddEx(&v1);
    }

    CellActor_SetAnimateFlag(param1, 1);
    CellActor_SetExplicitPriority(param1, 0);
    CellActor_SetAnim(param1, param4);
    CellActor_SetDrawFlag(param1, 1);

    return param1;
}

void ov97_02237DA0(void)
{
    UnkStruct_ov97_0223F550 *v0 = &Unk_ov97_0223F550;
    UnkStruct_ov97_02237AEC *v1 = &v0->unk_34;
    int v2;

    if (v0->unk_26C) {
        CellActor_Delete(v0->unk_26C);
        v0->unk_26C = NULL;
    }

    if (v1->unk_1A8[0][0]) {
        sub_0200A4E4(v1->unk_1A8[0][0]);
    }

    if (v1->unk_1A8[1][0]) {
        sub_0200A4E4(v1->unk_1A8[1][0]);
    }

    if (v1->unk_1A8[0][1]) {
        sub_0200A6DC(v1->unk_1A8[0][1]);
    }

    if (v1->unk_1A8[1][1]) {
        sub_0200A6DC(v1->unk_1A8[1][1]);
    }

    for (v2 = 0; v2 < 6; v2++) {
        SpriteResourceCollection_Delete(v1->unk_190[v2]);
        v1->unk_190[v2] = NULL;
    }

    CellActorCollection_Delete(v1->unk_00);
    v1->unk_00 = NULL;

    sub_0200A878();
    sub_0201E958();
    sub_0201F8B4();

    SetMainCallback(NULL, NULL);
}

u32 ov97_02237E4C(int param0)
{
    return (u32)1 << (param0 - 10);
}

static void ov97_02237E58(void *param0)
{
    UnkStruct_ov97_0223F550 *v0 = &Unk_ov97_0223F550;

    if (v0->unk_F08) {
        v0->unk_F08(v0);
        v0->unk_F08 = NULL;
    }

    sub_0201DCAC();
    sub_0200A858();

    if (v0->unk_00) {
        sub_0201C2B8(v0->unk_00);
    }

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static int ov97_02237EA8(int param0)
{
    int v0;

    struct {
        u8 unk_00, unk_01;
    } v1[] = {
        { 0, 0 },
        { 1, 1 },
        { 2, 1 },
        { 3, 2 },
        { 4, 3 },
        { 5, 2 },
        { 6, 2 },
        { 7, 0 },
        { 8, 5 },
        { 9, 5 },
        { 10, 5 },
        { 11, 4 },
        { 12, 5 },
        { 13, 5 },
        { -1 },
    };

    for (v0 = 0; v1[v0].unk_00 != -1; v0++) {
        if (v1[v0].unk_00 == param0) {
            return v1[v0].unk_01;
        }
    }

    return 0;
}

static void ov97_02237EF8(CellActor *param0, Pokemon *param1, int param2, int param3, u8 *param4, ArchivedSprite *param5)
{
    int v0, v1;
    u32 v2;
    UnkStruct_ov97_0223F550 *v3 = &Unk_ov97_0223F550;

    v0 = Pokemon_GetGender(param1);
    v1 = Pokemon_IsShiny(param1);

    BuildArchivedPokemonSprite(param5, param2, v0, 2, v1, param3, 0);

    v2 = Pokemon_GetValue(param1, MON_DATA_PERSONALITY, NULL);
    sub_020136A4(param5->archive, param5->character, v3->unk_08, 0, 0, 10, 10, param4, v2, 0, 2, param2);

    DC_FlushRange(param4, 0x20 * 10 * 10);

    {
        NNSG2dImageProxy *v4 = SpriteActor_ImageProxy(param0);
        u32 v5 = NNS_G2dGetImageLocation(v4, NNS_G2D_VRAM_TYPE_2DSUB);

        GXS_LoadOBJ(param4, v5 + 1 * (0x20 * 10 * 10), (0x20 * 10 * 10));
    }

    {
        NNSG2dImagePaletteProxy *v6 = CellActor_GetPaletteProxy(param0);
        u32 v7 = NNS_G2dGetImagePaletteLocation(v6, NNS_G2D_VRAM_TYPE_2DSUB);

        sub_02006E84(param5->archive, param5->palette, 5, 0x20 * (2 + 1) + v7, 32, v3->unk_08);
    }
}

static void ov97_02237FB4(UnkStruct_ov97_0223F550 *param0, int param1, UnkStruct_0202DF40 *param2)
{
    ov97_02237B0C(116, 35, 32, 34, 33, 1);
    ov97_02237C80((0 * FX32_ONE), (256 * FX32_ONE));

    param0->unk_26C = ov97_02237D14(1, param0->unk_26C, HW_LCD_WIDTH / 2, 0, 0);
}

static void ov97_02237FF4(UnkStruct_ov97_0223F550 *param0, int param1, UnkStruct_0202DF40 *param2)
{
    Pokemon *v0;

    ov97_02237B0C(54, 10, 0, 11, 12, 1);
    ov97_02237C80((0 * FX32_ONE), (256 * FX32_ONE));

    param0->unk_26C = ov97_02237D14(1, param0->unk_26C, HW_LCD_WIDTH / 2, 0, 1);
    v0 = (Pokemon *)&param2->unk_04.val1.unk_04;

    switch (param1) {
    case 1:
    case 13:
        ov97_02237EF8(param0->unk_26C, v0, Pokemon_GetValue(v0, MON_DATA_SPECIES, 0), Pokemon_GetValue(v0, MON_DATA_FORM, 0), param0->unk_278, &param0->unk_EF8);
        break;
    case 2:
        ov97_02237EF8(param0->unk_26C, v0, SPECIES_EGG, 0, param0->unk_278, &param0->unk_EF8);
        break;
    case 7:
        ov97_02237EF8(param0->unk_26C, v0, SPECIES_EGG, 1, param0->unk_278, &param0->unk_EF8);
        break;
    }
}

static void ov97_022380C8(UnkStruct_ov97_0223F550 *param0, int param1, UnkStruct_0202DF40 *param2)
{
    int v0;

    switch (param1) {
    case 3:
        v0 = param2->unk_04.val3.unk_00;
        break;
    case 8:
        v0 = 454;
        break;
    case 9:
        v0 = 452;
        break;
    case 10:
        v0 = 455;
        break;
    case 12:
        v0 = 467;
        break;
    }

    ov97_02237B0C(16, Item_FileID(v0, 1), Item_FileID(v0, 2), Item_IconNCERFile(), Item_IconNANRFile(), 1);
    ov97_02237C80((0 * FX32_ONE), (256 * FX32_ONE));

    param0->unk_26C = ov97_02237D14(1, param0->unk_26C, HW_LCD_WIDTH / 2, 0, 0);
}

static void ov97_02238174(void *param0)
{
    UnkStruct_ov97_0223F550 *v0 = (UnkStruct_ov97_0223F550 *)param0;
    sub_02006E84(116, 29, 4, 16 * 2 * 8, 16 * 2 * 6, v0->unk_08);
}

void ov97_02238194(BGL *param0, UnkStruct_0202DF40 *param1)
{
    int v0, v1;
    UnkStruct_ov97_0223F550 *v2 = &Unk_ov97_0223F550;

    v1 = param1->unk_00;
    v0 = ov97_02237EA8(v1);

    sub_02006E3C(116, 30, param0, 5, 0, 10 * 16 * 0x20, 1, v2->unk_08);

    {
        NNSG2dScreenData *v3;
        void *v4 = sub_02006FE8(116, 31, 1, v2->unk_08, 1);

        NNS_G2dGetUnpackedScreenData(v4, &v3);

        sub_02019574(param0, 5, v3->rawData, 32 * 24 * 2);
        Heap_FreeToHeap(v4);
    }

    sub_02019E2C(param0, 5, 0, 0, 32, 24, 8 + v0);
    sub_0201C3C0(param0, 5);

    v2->unk_F08 = ov97_02238174;
    v2->unk_00 = param0;

    switch (v1) {
    case 4:
    case 5:
    case 6:
    case 11:
        ov97_02237FB4(v2, v1, param1);
        break;
    case 7:
        v2->unk_270 = 120;
    case 1:
    case 2:
    case 13:
        ov97_02237FF4(v2, v1, param1);
        break;
    case 3:
    case 8:
    case 9:
    case 10:
    case 12:
        ov97_022380C8(v2, v1, param1);
        break;
    }

    CellActor_SetDrawFlag(v2->unk_26C, 0);
}

void ov97_0223829C(UnkStruct_ov97_0223829C *param0, UnkUnion_ov97_0222D2B0 *param1, int param2)
{
    MATHCRC16Table *v0;
    CRYPTORC4Context *v1;
    u16 v2[4];
    u16 v3, v4;
    int v5;

    v0 = Heap_AllocFromHeap(param2, sizeof(MATHCRC16Table));
    MATH_CRC16InitTable(v0);

    v3 = MATH_CalcCRC16(v0, &param0->unk_00, sizeof(UnkStruct_ov97_0222D250));
    Heap_FreeToHeap(v0);

    OS_GetMacAddress((u8 *)v2);

    v2[3] = v2[1];
    v2[1] = v3;
    v4 = 0xD679;

    for (v5 = 0; v5 < 4; v5++) {
        v2[v5] = v2[v5] ^ v4;
        v4 = v2[v5];
    }

    v1 = Heap_AllocFromHeap(param2, sizeof(CRYPTORC4Context));

    CRYPTO_RC4Init(v1, v2, 8);
    CRYPTO_RC4Encrypt(v1, &param0->unk_50, sizeof(UnkUnion_ov97_0222D2B0), param1);

    Heap_FreeToHeap(v1);
}

void ov97_02238324(UnkStruct_ov97_0223829C *param0, UnkUnion_ov97_0222D2B0 *param1, int param2)
{
    MATHCRC16Table *v0;
    CRYPTORC4Context *v1;
    const WMBssDesc *v2;
    u16 v3[4];
    u16 v4, v5;
    int v6;

    v0 = Heap_AllocFromHeap(param2, sizeof(MATHCRC16Table));
    MATH_CRC16InitTable(v0);

    v4 = MATH_CalcCRC16(v0, &param0->unk_00, sizeof(UnkStruct_ov97_0222D250));
    Heap_FreeToHeap(v0);

    v2 = sub_02033F3C(0);
    memcpy(v3, v2->bssid, WM_SIZE_BSSID);

    v3[3] = v3[1];
    v3[1] = v4;
    v5 = 0xD679;

    for (v6 = 0; v6 < 4; v6++) {
        v3[v6] = v3[v6] ^ v5;
        v5 = v3[v6];
    }

    v1 = Heap_AllocFromHeap(param2, sizeof(CRYPTORC4Context));

    CRYPTO_RC4Init(v1, v3, 8);
    CRYPTO_RC4Encrypt(v1, &param0->unk_50, sizeof(UnkUnion_ov97_0222D2B0), param1);

    Heap_FreeToHeap(v1);
}

void ov97_022383C4(BmpList *param0, u32 param1, u8 param2)
{
    switch (param2) {
    case 0:
        Sound_PlayEffect(1500);
        break;
    case 1:
        break;
    }
}

static void ov97_022383DC(void)
{
    if (PAD_DetectFold() == 0) {
        if (CTRDG_IsAgbCartridge() == 0) {
            CTRDG_TerminateForPulledOut();
        }
    }
}

void ov97_02238400(BOOL param0)
{
    if (param0 == 1) {
        OS_DisableIrq();
        OS_SetIrqFunction(OS_IE_CARTRIDGE, ov97_022383DC);
        OS_EnableIrqMask(OS_IE_CARTRIDGE);
        OS_EnableIrq();
    } else {
        OS_DisableIrqMask(OS_IE_CARTRIDGE);
    }
}

static void ov97_0223843C(void)
{
    return;
}

void ov97_02238440(void)
{
    OS_DisableIrq();
    OS_SetIrqFunction(OS_IE_CARTRIDGE, ov97_0223843C);
    OS_EnableIrqMask(OS_IE_CARTRIDGE);
    OS_EnableIrq();
}

void ov97_0223846C(SaveData *param0)
{
    UnkStruct_ov97_0223F550 *v0 = &Unk_ov97_0223F550;

    v0->unk_18 = param0;
    v0->unk_14 = 0;
}

int ov97_0223847C(void)
{
    int v0;
    UnkStruct_ov97_0223F550 *v1 = &Unk_ov97_0223F550;

    switch (v1->unk_14) {
    case 0:
        ResetLock(4);
        SaveData_SaveStateInit(v1->unk_18, 2);
        v1->unk_14++;
        break;
    case 1:
        v0 = SaveData_SaveStateMain(v1->unk_18);

        if (v0 == 3) {
            v1->unk_14 = 3;
        } else if (v0 == 2) {
            v1->unk_14 = 2;
        } else if (v0 == 1) {
            v1->unk_14 = 4;
        }

        if ((v0 == 2) || (v0 == 3)) {
            ResetUnlock(4);
        }

        return v0;
        break;
    case 4:
        break;
    case 2:
        break;
    case 3:
        break;
    }

    return 0;
}

void ov97_022384F4(void)
{
    UnkStruct_ov97_0223F550 *v0 = &Unk_ov97_0223F550;

    if (v0->unk_14 == 4) {
        v0->unk_14 = 1;
    }
}

void ov97_0223850C(void)
{
    UnkStruct_ov97_0223F550 *v0 = &Unk_ov97_0223F550;

    SaveData_SaveStateCancel(v0->unk_18);
    v0->unk_14 = 3;
    ResetUnlock(4);
}

int ov97_02238528(void)
{
    UnkStruct_ov97_0223F550 *v0 = &Unk_ov97_0223F550;
    return v0->unk_14;
}
