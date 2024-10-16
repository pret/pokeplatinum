#include "overlay013/ov13_02224500.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_020F1DB8.h"

#include "battle/battle_icon.h"
#include "battle/ov16_0223DF00.h"
#include "battle/ov16_0226DB7C.h"
#include "battle/struct_ov16_0226DC24_decl.h"
#include "overlay013/ov13_02228A38.h"
#include "overlay013/struct_ov13_022213F0.h"
#include "overlay013/struct_ov13_02221ED0.h"
#include "overlay104/struct_ov104_02241308.h"

#include "gx_layers.h"
#include "item.h"
#include "move_table.h"
#include "narc.h"
#include "party.h"
#include "pokemon_icon.h"
#include "pokemon_summary_app.h"
#include "unk_0200C6E4.h"
#include "unk_0207E0B8.h"
#include "unk_0208C098.h"

static void ov13_0222453C(UnkStruct_ov13_022213F0 *param0);
static void ov13_02224588(UnkStruct_ov13_022213F0 *param0);
static void ov13_02224670(UnkStruct_ov13_022213F0 *param0);
static void ov13_02224848(UnkStruct_ov13_022213F0 *param0);
static void ov13_02224720(UnkStruct_ov13_022213F0 *param0);
static void ov13_02224798(UnkStruct_ov13_022213F0 *param0);
static void ov13_02224948(UnkStruct_ov13_022213F0 *param0);
static void ov13_022249CC(UnkStruct_ov13_022213F0 *param0);
static void ov13_02224C14(UnkStruct_ov13_022213F0 *param0);
static void ov13_02224CB0(UnkStruct_ov13_022213F0 *param0);
static void ov13_02224D08(UnkStruct_ov13_022213F0 *param0);
static void ov13_02224DA0(UnkStruct_ov13_022213F0 *param0);
static void ov13_02224E78(UnkStruct_ov13_022213F0 *param0);
static void ov13_02224F3C(UnkStruct_ov13_022213F0 *param0);
static void ov13_02224FA8(UnkStruct_ov13_022213F0 *param0);
static void ov13_0222506C(UnkStruct_ov13_022213F0 *param0);
static void ov13_022250D8(UnkStruct_ov13_022213F0 *param0);
static void ov13_02225150(UnkStruct_ov13_022213F0 *param0);
static void ov13_022251B4(UnkStruct_ov13_022213F0 *param0);
static void ov13_02225248(UnkStruct_ov13_022213F0 *param0);
static void ov13_02225420(UnkStruct_ov13_022213F0 *param0);
static void ov13_0222554C(UnkStruct_ov13_022213F0 *param0);
static void ov13_022255B8(UnkStruct_ov13_022213F0 *param0);

static const int Unk_ov13_02229514[][5] = {
    { 0xB016, 0xB00A, 0xB00A, 0xB00A, 0x0 },
    { 0xB016, 0xB00A, 0xB00A, 0xB00A, 0x0 },
    { 0xB016, 0xB00A, 0xB00A, 0xB00A, 0x0 },
    { 0xB016, 0xB00A, 0xB00A, 0xB00A, 0x0 },
    { 0xB016, 0xB00A, 0xB00A, 0xB00A, 0x0 },
    { 0xB016, 0xB00A, 0xB00A, 0xB00A, 0x0 },
    { 0xB016, 0xB00A, 0xB00A, 0xB00A, 0x0 },
    { 0xB007, 0xB007, 0xB007, 0xB007, 0x1 },
    { 0xB008, 0xB007, 0xB007, 0xB007, 0x1 },
    { 0xB009, 0xB007, 0xB007, 0xB007, 0x1 },
    { 0xB00A, 0xB007, 0xB007, 0xB007, 0x1 },
    { 0xB00B, 0xB007, 0xB007, 0xB007, 0x1 },
    { 0xB00C, 0xB007, 0xB007, 0xB007, 0x1 },
    { 0xB00D, 0xB008, 0xB008, 0xB008, 0x1 },
    { 0xB00D, 0xB008, 0xB008, 0xB008, 0x1 },
    { 0xB00D, 0xB008, 0xB008, 0xB008, 0x1 },
    { 0xB00D, 0xB008, 0xB008, 0xB008, 0x1 },
    { 0xB00D, 0xB008, 0xB008, 0xB008, 0x1 },
    { 0xB00D, 0xB008, 0xB008, 0xB008, 0x1 },
    { 0xB00E, 0xB009, 0xB009, 0xB009, 0x0 },
    { 0xB00F, 0xB009, 0xB009, 0xB009, 0x0 },
    { 0xB010, 0xB009, 0xB009, 0xB009, 0x0 },
    { 0xB011, 0xB009, 0xB009, 0xB009, 0x0 },
    { 0xB012, 0xB009, 0xB009, 0xB009, 0x0 },
    { 0xB013, 0xB009, 0xB009, 0xB009, 0x0 },
    { 0xB014, 0xB009, 0xB009, 0xB009, 0x0 },
    { 0xB015, 0xB009, 0xB009, 0xB009, 0x0 },
    { 0xB017, 0xB00B, 0xB00B, 0xB00B, 0x0 },
    { 0xB017, 0xB00B, 0xB00B, 0xB00B, 0x0 },
    { 0xB017, 0xB00B, 0xB00B, 0xB00B, 0x0 },
    { 0xB017, 0xB00B, 0xB00B, 0xB00B, 0x0 },
    { 0xB017, 0xB00B, 0xB00B, 0xB00B, 0x0 },
    { 0xB016, 0xB00A, 0xB00A, 0xB00A, 0x0 },
    { 0xB016, 0xB00A, 0xB00A, 0xB00A, 0x0 },
    { 0xB016, 0xB00A, 0xB00A, 0xB00A, 0x0 },
    { 0xB016, 0xB00A, 0xB00A, 0xB00A, 0x0 },
    { 0xB016, 0xB00A, 0xB00A, 0xB00A, 0x0 },
    { 0xB016, 0xB00A, 0xB00A, 0xB00A, 0x0 },
    { 0xB016, 0xB00A, 0xB00A, 0xB00A, 0x0 }
};

static const int Unk_ov13_02229404[][2] = {
    { 0x10, 0x10 },
    { 0x90, 0x18 },
    { 0x10, 0x40 },
    { 0x90, 0x48 },
    { 0x10, 0x70 },
    { 0x90, 0x78 }
};

static const int Unk_ov13_02229434[][2] = {
    { 0x1C, 0x28 },
    { 0x9C, 0x30 },
    { 0x1C, 0x58 },
    { 0x9C, 0x60 },
    { 0x1C, 0x88 },
    { 0x9C, 0x90 }
};

static const int Unk_ov13_0222921C[2] = {
    0x80,
    0x48
};

static const int Unk_ov13_0222923C[2] = {
    0x18,
    0xC
};

static const int Unk_ov13_0222924C[2] = {
    0xC6,
    0x14
};

static const int Unk_ov13_022292C4[][2] = {
    { 0x82, 0x10 },
    { 0xA4, 0x10 }
};

static const int Unk_ov13_02229324[][2] = {
    { 0x18, 0x50 },
    { 0x98, 0x50 },
    { 0x18, 0x80 },
    { 0x98, 0x80 }
};

static const int Unk_ov13_02229244[2] = {
    0x18,
    0xC
};

static const int Unk_ov13_02229254[2] = {
    0xC6,
    0x14
};

static const int Unk_ov13_022292A4[][2] = {
    { 0x82, 0x10 },
    { 0xA4, 0x10 }
};

static const int Unk_ov13_02229264[2] = {
    0x18,
    0xC
};

static const int Unk_ov13_02229224[2] = {
    0xC6,
    0x14
};

static const int Unk_ov13_022292B4[][2] = {
    { 0x82, 0x10 },
    { 0xA4, 0x10 }
};

static const int Unk_ov13_0222922C[2] = {
    0x88,
    0x30
};

static const int Unk_ov13_02229214[2] = {
    0x18,
    0x58
};

static const int Unk_ov13_02229234[2] = {
    0x18,
    0xC
};

static const int Unk_ov13_02229294[][2] = {
    { 0x82, 0x10 },
    { 0xA4, 0x10 }
};

static const int Unk_ov13_022293DC[][2] = {
    { 0x18, 0x50 },
    { 0x98, 0x50 },
    { 0x18, 0x80 },
    { 0x98, 0x80 },
    { 0x58, 0xB0 }
};

static const int Unk_ov13_0222927C[2] = {
    0x18,
    0xC
};

static const int Unk_ov13_02229284[][2] = {
    { 0x82, 0x10 },
    { 0xA4, 0x10 }
};

static const int Unk_ov13_0222926C[2] = {
    0x88,
    0x30
};

static const int Unk_ov13_02229274[2] = {
    0x18,
    0x58
};

static const int Unk_ov13_0222925C[2] = {
    0x88,
    0x48
};

void ov13_02224500(UnkStruct_ov13_022213F0 *param0)
{
    ov13_0222453C(param0);
    ov13_02224588(param0);
    ov13_02224670(param0);
    ov13_02224720(param0);
    ov13_02224798(param0);
    ov13_02224848(param0);
    ov13_02224948(param0);
    ov13_0222554C(param0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov13_0222453C(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov104_02241308 v0 = { 18, 6, 6, 6, 0, 0 };
    SpriteRenderer *v1 = ov16_0223E010(param0->unk_00->unk_08);

    param0->unk_1FB0 = sub_0200C704(v1);

    sub_0200C7C0(v1, param0->unk_1FB0, 38 + 5);
    sub_0200CB30(v1, param0->unk_1FB0, &v0);
}

static void ov13_02224588(UnkStruct_ov13_022213F0 *param0)
{
    SpriteRenderer *v0;
    u32 v1;
    NARC *v2;

    v2 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, param0->unk_00->unk_0C);
    v0 = ov16_0223E010(param0->unk_00->unk_08);

    SpriteRenderer_LoadPalette(param0->unk_1E4, 3, v0, param0->unk_1FB0, v2, PokeIconPalettesFileIndex(), 0, 3, NNS_G2D_VRAM_TYPE_2DSUB, 45063);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v0, param0->unk_1FB0, v2, PokeIcon32KCellsFileIndex(), 0, 45063);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v0, param0->unk_1FB0, v2, PokeIcon32KAnimationFileIndex(), 0, 45063);

    for (v1 = 0; v1 < 6; v1++) {
        if (param0->unk_04[v1].unk_04 != 0) {
            SpriteRenderer_LoadCharResObjFromOpenNarc(v0, param0->unk_1FB0, v2, Pokemon_IconSpriteIndex(param0->unk_04[v1].unk_00), 0, NNS_G2D_VRAM_TYPE_2DSUB, 45063 + v1);
        } else {
            SpriteRenderer_LoadCharResObjFromOpenNarc(v0, param0->unk_1FB0, v2, PokeIconSpriteIndex(0, 0, 0), 0, NNS_G2D_VRAM_TYPE_2DSUB, 45063 + v1);
        }
    }

    NARC_dtor(v2);
}

static void ov13_02224670(UnkStruct_ov13_022213F0 *param0)
{
    SpriteRenderer *v0 = ov16_0223E010(param0->unk_00->unk_08);
    NARC *v1;

    v1 = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PST_GRA, param0->unk_00->unk_0C);

    SpriteRenderer_LoadPalette(param0->unk_1E4, 3, v0, param0->unk_1FB0, v1, PokemonSummary_StatusIconPltt(), 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 45064);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v0, param0->unk_1FB0, v1, PokemonSummary_StatusIconCell(), 0, 45064);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v0, param0->unk_1FB0, v1, PokemonSummary_StatusIconAnim(), 0, 45064);
    SpriteRenderer_LoadCharResObjFromOpenNarc(v0, param0->unk_1FB0, v1, PokemonSummary_StatusIconChar(), 0, NNS_G2D_VRAM_TYPE_2DSUB, 45069);
    NARC_dtor(v1);
}

static void ov13_02224720(UnkStruct_ov13_022213F0 *param0)
{
    SpriteRenderer *v0;
    u32 v1;

    v0 = ov16_0223E010(param0->unk_00->unk_08);

    sub_0207C9B0(param0->unk_1E4, 3, v0, param0->unk_1FB0, NNS_G2D_VRAM_TYPE_2DSUB, 45065);
    sub_0207C9EC(v0, param0->unk_1FB0, 45065, 45065);

    for (v1 = 45070; v1 <= 45076; v1++) {
        BattleIcon_MakeTypeSpriteTiles(v0, param0->unk_1FB0, NNS_G2D_VRAM_TYPE_2DSUB, 0, v1);
    }

    BattleIcon_MakeMoveTypeSpriteTiles(v0, param0->unk_1FB0, NNS_G2D_VRAM_TYPE_2DSUB, 0, 45077);
}

static void ov13_02224798(UnkStruct_ov13_022213F0 *param0)
{
    SpriteRenderer *v0;
    u32 v1;
    NARC *v2;

    v2 = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PLIST_GRA, param0->unk_00->unk_0C);
    v0 = ov16_0223E010(param0->unk_00->unk_08);

    SpriteRenderer_LoadPalette(param0->unk_1E4, 3, v0, param0->unk_1FB0, v2, sub_02081934(), 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 45066);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v0, param0->unk_1FB0, v2, sub_02081938(), 0, 45066);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v0, param0->unk_1FB0, v2, sub_0208193C(), 0, 45066);
    SpriteRenderer_LoadCharResObjFromOpenNarc(v0, param0->unk_1FB0, v2, sub_02081930(), 0, NNS_G2D_VRAM_TYPE_2DSUB, 45078);
    NARC_dtor(v2);
}

static void ov13_02224848(UnkStruct_ov13_022213F0 *param0)
{
    SpriteRenderer *v0 = ov16_0223E010(param0->unk_00->unk_08);

    sub_0200CD7C(param0->unk_1E4, 3, v0, param0->unk_1FB0, 72, 27, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 45067);
    sub_0200CE0C(v0, param0->unk_1FB0, 72, 25, 0, 45067);
    sub_0200CE3C(v0, param0->unk_1FB0, 72, 24, 0, 45067);
    sub_0200CBDC(v0, param0->unk_1FB0, 72, 26, 0, NNS_G2D_VRAM_TYPE_2DSUB, 45079);
}

static CellActorData *ov13_022248D8(UnkStruct_ov13_022213F0 *param0, u32 param1)
{
    SpriteTemplate v0;
    SpriteRenderer *v1;

    v1 = ov16_0223E010(param0->unk_00->unk_08);

    v0.x = 0;
    v0.y = 0;
    v0.z = 0;
    v0.animIdx = 0;
    v0.priority = Unk_ov13_02229514[param1][4];
    v0.plttIdx = 0;
    v0.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v0.resources[0] = Unk_ov13_02229514[param1][0];
    v0.resources[1] = Unk_ov13_02229514[param1][1];
    v0.resources[2] = Unk_ov13_02229514[param1][2];
    v0.resources[3] = Unk_ov13_02229514[param1][3];
    v0.bgPriority = 1;
    v0.transferToVRAM = FALSE;

    return SpriteActor_LoadResources(v1, param0->unk_1FB0, &v0);
}

static void ov13_02224948(UnkStruct_ov13_022213F0 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 38; v0++) {
        param0->unk_1FB4[v0] = ov13_022248D8(param0, v0);
    }

    ov13_022249CC(param0);
}

void ov13_02224970(UnkStruct_ov13_022213F0 *param0)
{
    SpriteRenderer *v0;
    u32 v1;

    v0 = ov16_0223E010(param0->unk_00->unk_08);

    for (v1 = 0; v1 < 38; v1++) {
        sub_0200D0F4(param0->unk_1FB4[v1]);
    }

    ov13_022255B8(param0);
    sub_0200D0B0(v0, param0->unk_1FB0);
}

static void ov13_022249AC(CellActorData *param0, const int param1, const int param2)
{
    SpriteActor_EnableObject(param0, 1);
    SpriteActor_SetSpritePositionXY(param0, param1, param2);
}

static void ov13_022249CC(UnkStruct_ov13_022213F0 *param0)
{
    s32 v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_04[v0].unk_04 == 0) {
            continue;
        }

        sub_0200D41C(param0->unk_1FB4[7 + v0], PokeIconPaletteIndex(param0->unk_04[v0].unk_04, param0->unk_04[v0].unk_2E, param0->unk_04[v0].unk_17_7));
    }
}

static void ov13_02224A0C(UnkStruct_ov13_022213F0 *param0, CellActorData *param1, u32 param2, u8 param3)
{
    SpriteRenderer *v0 = ov16_0223E010(param0->unk_00->unk_08);

    sub_0200D948(v0, param0->unk_1FB0, BattleIcon_GetNARCIndex(), BattleIcon_TypeIndexToNARCMember(param3), 1, param2);
    sub_0200D41C(param1, BattleIcon_TypeIndexToPaletteIndex(param3) + 4);
}

static void ov13_02224A5C(UnkStruct_ov13_022213F0 *param0, CellActorData *param1, u32 param2)
{
    SpriteRenderer *v0 = ov16_0223E010(param0->unk_00->unk_08);

    sub_0200D948(v0, param0->unk_1FB0, BattleIcon_GetMoveClassNARCIndex(), BattleIcon_MoveClassIndexToNARCMember(param2), 1, 45077);
    sub_0200D41C(param1, BattleIcon_MoveClassIndexToPaletteIndex(param2) + 4);
}

static void ov13_02224AB0(u16 param0, CellActorData *param1, const int param2, const int param3)
{
    if (param0 == 7) {
        return;
    }

    sub_0200D364(param1, param0);
    ov13_022249AC(param1, param2, param3);
}

static void ov13_02224AD4(UnkStruct_ov13_022213F0 *param0, UnkStruct_ov13_02221ED0 *param1, const int *param2)
{
    ov13_02224A0C(param0, param0->unk_1FB4[19], 45070, param1->unk_14);
    ov13_022249AC(param0->unk_1FB4[19], param2[0], param2[1]);

    if (param1->unk_14 != param1->unk_15) {
        ov13_02224A0C(param0, param0->unk_1FB4[20], 45071, param1->unk_15);
        ov13_022249AC(param0->unk_1FB4[20], param2[2], param2[3]);
    }
}

static void ov13_02224B28(u16 param0, CellActorData *param1, const int param2, const int param3)
{
    if (param0 == 0) {
        return;
    }

    if (Item_IsMail(param0) == 1) {
        sub_0200D364(param1, 1);
    } else {
        sub_0200D364(param1, 0);
    }

    ov13_022249AC(param1, param2, param3);
}

static void ov13_02224B5C(u8 param0, CellActorData *param1, const int param2, const int param3)
{
    if (param0 == 0) {
        return;
    }

    sub_0200D364(param1, 2);
    ov13_022249AC(param1, param2, param3);
}

void ov13_02224B7C(UnkStruct_ov13_022213F0 *param0, u32 param1)
{
    u32 v0;

    for (v0 = 0; v0 < 38; v0++) {
        SpriteActor_EnableObject(param0->unk_1FB4[v0], 0);
    }

    switch (param1) {
    case 0:
        ov13_02224C14(param0);
        break;
    case 1:
        ov13_02224CB0(param0);
        break;
    case 2:
        ov13_02224D08(param0);
        break;
    case 3:
        ov13_02224DA0(param0);
        break;
    case 4:
        ov13_02224E78(param0);
        break;
    case 5:
        ov13_0222506C(param0);
        break;
    case 6:
        ov13_02224F3C(param0);
        break;
    case 7:
        ov13_02224FA8(param0);
        break;
    case 8:
        ov13_02225150(param0);
        break;
    case 9:
        ov13_022250D8(param0);
        break;
    }
}

static void ov13_02224C14(UnkStruct_ov13_022213F0 *param0)
{
    s32 v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_04[v0].unk_04 == 0) {
            continue;
        }

        ov13_022249AC(param0->unk_1FB4[7 + v0], Unk_ov13_02229404[v0][0], Unk_ov13_02229404[v0][1]);
        ov13_02224AB0(param0->unk_04[v0].unk_17_3, param0->unk_1FB4[13 + v0], Unk_ov13_02229434[v0][0], Unk_ov13_02229434[v0][1]);
        ov13_02224B28(param0->unk_04[v0].unk_1A, param0->unk_1FB4[0 + v0], Unk_ov13_02229404[v0][0] + 8, Unk_ov13_02229404[v0][1] + 8);
        ov13_02224B5C(param0->unk_04[v0].unk_2D, param0->unk_1FB4[32 + v0], Unk_ov13_02229404[v0][0] + 16, Unk_ov13_02229404[v0][1] + 8);
    }
}

static void ov13_02224CB0(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_02221ED0 *v0;
    u16 v1;

    v0 = &param0->unk_04[param0->unk_00->unk_11];

    ov13_022249AC(param0->unk_1FB4[7 + param0->unk_00->unk_11], Unk_ov13_0222921C[0], Unk_ov13_0222921C[1]);
    ov13_02224B28(v0->unk_1A, param0->unk_1FB4[0 + param0->unk_00->unk_11], Unk_ov13_0222921C[0] + 8, Unk_ov13_0222921C[1] + 8);
    ov13_02224B5C(v0->unk_2D, param0->unk_1FB4[32 + param0->unk_00->unk_11], Unk_ov13_0222921C[0] + 16, Unk_ov13_0222921C[1] + 8);
}

static void ov13_02224D08(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_02221ED0 *v0;
    u16 v1;

    v0 = &param0->unk_04[param0->unk_00->unk_11];

    ov13_022249AC(param0->unk_1FB4[7 + param0->unk_00->unk_11], Unk_ov13_0222923C[0], Unk_ov13_0222923C[1]);
    ov13_02224AB0(v0->unk_17_3, param0->unk_1FB4[13 + param0->unk_00->unk_11], Unk_ov13_0222924C[0], Unk_ov13_0222924C[1]);
    ov13_02224AD4(param0, v0, &Unk_ov13_022292C4[0][0]);
    ov13_02224B28(v0->unk_1A, param0->unk_1FB4[0 + param0->unk_00->unk_11], Unk_ov13_0222923C[0] + 8, Unk_ov13_0222923C[1] + 8);
    ov13_02224B5C(v0->unk_2D, param0->unk_1FB4[32 + param0->unk_00->unk_11], Unk_ov13_0222923C[0] + 16, Unk_ov13_0222923C[1] + 8);
    ov13_02224B28(v0->unk_1A, param0->unk_1FB4[6], 20, 132);
}

static void ov13_02224DA0(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_02221ED0 *v0;
    u32 v1;

    v0 = &param0->unk_04[param0->unk_00->unk_11];

    ov13_022249AC(param0->unk_1FB4[7 + param0->unk_00->unk_11], Unk_ov13_02229244[0], Unk_ov13_02229244[1]);
    ov13_02224AB0(v0->unk_17_3, param0->unk_1FB4[13 + param0->unk_00->unk_11], Unk_ov13_02229254[0], Unk_ov13_02229254[1]);
    ov13_02224AD4(param0, v0, &Unk_ov13_022292A4[0][0]);
    ov13_02224B28(v0->unk_1A, param0->unk_1FB4[0 + param0->unk_00->unk_11], Unk_ov13_02229244[0] + 8, Unk_ov13_02229244[1] + 8);
    ov13_02224B5C(v0->unk_2D, param0->unk_1FB4[32 + param0->unk_00->unk_11], Unk_ov13_02229244[0] + 16, Unk_ov13_02229244[1] + 8);

    for (v1 = 0; v1 < 4; v1++) {
        if (v0->unk_30[v1].unk_00 == 0) {
            continue;
        }

        ov13_02224A0C(param0, param0->unk_1FB4[21 + v1], 45072 + v1, v0->unk_30[v1].unk_04);
        ov13_022249AC(param0->unk_1FB4[21 + v1], Unk_ov13_02229324[v1][0], Unk_ov13_02229324[v1][1]);
    }
}

static void ov13_02224E78(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_02221ED0 *v0 = &param0->unk_04[param0->unk_00->unk_11];

    ov13_022249AC(param0->unk_1FB4[7 + param0->unk_00->unk_11], Unk_ov13_02229264[0], Unk_ov13_02229264[1]);
    ov13_02224AB0(v0->unk_17_3, param0->unk_1FB4[13 + param0->unk_00->unk_11], Unk_ov13_02229224[0], Unk_ov13_02229224[1]);
    ov13_02224AD4(param0, v0, &Unk_ov13_022292B4[0][0]);
    ov13_022249AC(param0->unk_1FB4[21 + param0->unk_00->unk_34], Unk_ov13_0222922C[0], Unk_ov13_0222922C[1]);
    ov13_02224B28(v0->unk_1A, param0->unk_1FB4[0 + param0->unk_00->unk_11], Unk_ov13_02229264[0] + 8, Unk_ov13_02229264[1] + 8);
    ov13_02224B5C(v0->unk_2D, param0->unk_1FB4[32 + param0->unk_00->unk_11], Unk_ov13_02229264[0] + 16, Unk_ov13_02229264[1] + 8);
    ov13_02224A5C(param0, param0->unk_1FB4[26], v0->unk_30[param0->unk_00->unk_34].unk_05);
    ov13_022249AC(param0->unk_1FB4[26], Unk_ov13_02229214[0], Unk_ov13_02229214[1]);
}

static void ov13_02224F3C(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_02221ED0 *v0;
    u16 v1;

    v0 = &param0->unk_04[param0->unk_00->unk_11];

    ov13_022249AC(param0->unk_1FB4[7 + param0->unk_00->unk_11], Unk_ov13_02229234[0], Unk_ov13_02229234[1]);
    ov13_02224AD4(param0, v0, &Unk_ov13_02229294[0][0]);
    ov13_02224B28(v0->unk_1A, param0->unk_1FB4[0 + param0->unk_00->unk_11], Unk_ov13_02229234[0] + 8, Unk_ov13_02229234[1] + 8);
    ov13_02224B5C(v0->unk_2D, param0->unk_1FB4[32 + param0->unk_00->unk_11], Unk_ov13_02229234[0] + 16, Unk_ov13_02229234[1] + 8);
    ov13_022252E8(param0);
}

static void ov13_02224FA8(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_02221ED0 *v0 = &param0->unk_04[param0->unk_00->unk_11];

    ov13_022249AC(param0->unk_1FB4[7 + param0->unk_00->unk_11], Unk_ov13_0222927C[0], Unk_ov13_0222927C[1]);
    ov13_02224AD4(param0, v0, &Unk_ov13_02229284[0][0]);
    ov13_022249AC(param0->unk_1FB4[21 + param0->unk_00->unk_34], Unk_ov13_0222926C[0], Unk_ov13_0222926C[1]);
    ov13_02224B28(v0->unk_1A, param0->unk_1FB4[0 + param0->unk_00->unk_11], Unk_ov13_0222927C[0] + 8, Unk_ov13_0222927C[1] + 8);
    ov13_02224B5C(v0->unk_2D, param0->unk_1FB4[32 + param0->unk_00->unk_11], Unk_ov13_0222927C[0] + 16, Unk_ov13_0222927C[1] + 8);

    if (param0->unk_00->unk_34 < 4) {
        ov13_02224A5C(param0, param0->unk_1FB4[26], v0->unk_30[param0->unk_00->unk_34].unk_05);
    } else {
        ov13_02224A5C(param0, param0->unk_1FB4[26], MoveTable_LoadParam(param0->unk_00->unk_24, MOVEATTRIBUTE_CLASS));
    }

    ov13_022249AC(param0->unk_1FB4[26], Unk_ov13_02229274[0], Unk_ov13_02229274[1]);
}

static void ov13_0222506C(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_02221ED0 *v0;
    u16 v1;

    v0 = &param0->unk_04[param0->unk_00->unk_11];

    ov13_022249AC(param0->unk_1FB4[7 + param0->unk_00->unk_11], Unk_ov13_02229234[0], Unk_ov13_02229234[1]);
    ov13_02224AD4(param0, v0, &Unk_ov13_02229294[0][0]);
    ov13_02224B28(v0->unk_1A, param0->unk_1FB4[0 + param0->unk_00->unk_11], Unk_ov13_02229234[0] + 8, Unk_ov13_02229234[1] + 8);
    ov13_02224B5C(v0->unk_2D, param0->unk_1FB4[32 + param0->unk_00->unk_11], Unk_ov13_02229234[0] + 16, Unk_ov13_02229234[1] + 8);
    ov13_022252E8(param0);
}

static void ov13_022250D8(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_02221ED0 *v0 = &param0->unk_04[param0->unk_00->unk_11];

    ov13_022249AC(param0->unk_1FB4[7 + param0->unk_00->unk_11], Unk_ov13_0222927C[0], Unk_ov13_0222927C[1]);
    ov13_022249AC(param0->unk_1FB4[21 + param0->unk_00->unk_34], Unk_ov13_0222925C[0], Unk_ov13_0222925C[1]);
    ov13_02224B28(v0->unk_1A, param0->unk_1FB4[0 + param0->unk_00->unk_11], Unk_ov13_0222927C[0] + 8, Unk_ov13_0222927C[1] + 8);
    ov13_02224B5C(v0->unk_2D, param0->unk_1FB4[32 + param0->unk_00->unk_11], Unk_ov13_0222927C[0] + 16, Unk_ov13_0222927C[1] + 8);
    ov13_02225420(param0);
}

static void ov13_02225150(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_02221ED0 *v0 = &param0->unk_04[param0->unk_00->unk_11];

    ov13_022249AC(param0->unk_1FB4[7 + param0->unk_00->unk_11], Unk_ov13_0222927C[0], Unk_ov13_0222927C[1]);
    ov13_02224B28(v0->unk_1A, param0->unk_1FB4[0 + param0->unk_00->unk_11], Unk_ov13_0222927C[0] + 8, Unk_ov13_0222927C[1] + 8);
    ov13_02224B5C(v0->unk_2D, param0->unk_1FB4[32 + param0->unk_00->unk_11], Unk_ov13_0222927C[0] + 16, Unk_ov13_0222927C[1] + 8);
    ov13_022252E8(param0);
    ov13_02225420(param0);
}

static void ov13_022251B4(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_02221ED0 *v0;
    u16 v1;

    v0 = &param0->unk_04[param0->unk_00->unk_11];

    for (v1 = 0; v1 < 4; v1++) {
        if (v0->unk_30[v1].unk_00 == 0) {
            continue;
        }

        ov13_02224A0C(param0, param0->unk_1FB4[21 + v1], 45072 + v1, v0->unk_30[v1].unk_04);
        ov13_022249AC(param0->unk_1FB4[21 + v1], Unk_ov13_022293DC[v1][0], Unk_ov13_022293DC[v1][1]);
    }

    if (param0->unk_00->unk_24 != 0) {
        ov13_02224A0C(param0, param0->unk_1FB4[25], 45076, MoveTable_LoadParam(param0->unk_00->unk_24, MOVEATTRIBUTE_TYPE));
        ov13_022249AC(param0->unk_1FB4[25], Unk_ov13_022293DC[4][0], Unk_ov13_022293DC[4][1]);
    }
}

static void ov13_02225248(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_02221ED0 *v0;
    u16 v1;

    v0 = &param0->unk_04[param0->unk_00->unk_11];

    for (v1 = 0; v1 < 4; v1++) {
        if (v0->unk_30[v1].unk_00 == 0) {
            continue;
        }

        ov13_02224A0C(param0, param0->unk_1FB4[21 + v1], 45072 + v1, MoveTable_LoadParam(v0->unk_30[v1].unk_00, MOVEATTRIBUTE_CONTEST_TYPE) + 18);
        ov13_022249AC(param0->unk_1FB4[21 + v1], Unk_ov13_022293DC[v1][0], Unk_ov13_022293DC[v1][1]);
    }

    if (param0->unk_00->unk_24 != 0) {
        ov13_02224A0C(param0, param0->unk_1FB4[25], 45076, MoveTable_LoadParam(param0->unk_00->unk_24, MOVEATTRIBUTE_CONTEST_TYPE) + 18);
        ov13_022249AC(param0->unk_1FB4[25], Unk_ov13_022293DC[4][0], Unk_ov13_022293DC[4][1]);
    }
}

void ov13_022252E8(UnkStruct_ov13_022213F0 *param0)
{
    if (param0->unk_2073_0 == 0) {
        ov13_022251B4(param0);
    } else {
        ov13_02225248(param0);
    }
}

static void ov13_02225304(CellActorData *param0, u8 param1)
{
    if (sub_0200D37C(param0) == param1) {
        return;
    }

    sub_0200D3CC(param0, 0);
    sub_0200D364(param0, param1);
}

static u8 ov13_02225324(UnkStruct_ov13_02221ED0 *param0)
{
    if (param0->unk_10 == 0) {
        return 0;
    }

    if ((param0->unk_17_3 != 7) && (param0->unk_17_3 != 6)) {
        return 5;
    }

    switch (HealthBar_Color(param0->unk_10, param0->unk_12, 48)) {
    case 4:
        return 1;
    case 3:
        return 2;
    case 2:
        return 3;
    case 1:
        return 4;
    }

    return 0;
}

void ov13_0222537C(UnkStruct_ov13_022213F0 *param0)
{
    u16 v0;
    u16 v1;

    for (v0 = 0; v0 < Party_GetCurrentCount(param0->unk_00->unk_00); v0++) {
        if (param0->unk_04[v0].unk_04 == 0) {
            continue;
        }

        v1 = ov13_02225324(&param0->unk_04[v0]);

        ov13_02225304(param0->unk_1FB4[7 + v0], v1);
        sub_0200D34C(param0->unk_1FB4[7 + v0], FX32_ONE);
    }
}

static s16 ov13_022253DC(u32 param0, s16 param1, s16 param2)
{
    u32 v0;

    param0 += 44;

    if (param2 > param1) {
        v0 = ((param2 - param1) * param0) << 16;
        v0 = (v0 / 300) >> 16;

        return param2 + (s16)v0 * -1;
    }

    v0 = ((param1 - param2) * param0) << 16;
    v0 = (v0 / 300) >> 16;

    return param2 + (s16)v0;
}

static void ov13_02225420(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_02221ED0 *v0;
    u16 v1;

    v0 = &param0->unk_04[param0->unk_00->unk_11];

    ov13_02225304(param0->unk_1FB4[27], 0);
    ov13_02225304(param0->unk_1FB4[28], 1);
    ov13_02225304(param0->unk_1FB4[29], 3);
    ov13_02225304(param0->unk_1FB4[30], 4);
    ov13_02225304(param0->unk_1FB4[31], 2);

    ov13_022249AC(param0->unk_1FB4[27], ov13_022253DC(v0->unk_28, 144, 144), ov13_022253DC(v0->unk_28, 2, 24));
    ov13_022249AC(param0->unk_1FB4[28], ov13_022253DC(v0->unk_29, 164, 144), ov13_022253DC(v0->unk_29, 16, 24));
    ov13_022249AC(param0->unk_1FB4[29], ov13_022253DC(v0->unk_2A, 156, 144), ov13_022253DC(v0->unk_2A, 41, 24));
    ov13_022249AC(param0->unk_1FB4[30], ov13_022253DC(v0->unk_2B, 131, 143), ov13_022253DC(v0->unk_2B, 41, 24));
    ov13_022249AC(param0->unk_1FB4[31], ov13_022253DC(v0->unk_2C, 123, 143), ov13_022253DC(v0->unk_2C, 16, 24));
}

static void ov13_0222554C(UnkStruct_ov13_022213F0 *param0)
{
    SpriteRenderer *v0;
    UnkStruct_ov16_0226DC24 *v1;

    v0 = ov16_0223E010(param0->unk_00->unk_08);
    ov16_0226DB7C(v0, param0->unk_1FB0, param0->unk_1E4, param0->unk_00->unk_0C, 45080, 45068, 45068, 45068);
    v1 = ov16_0226DC24(v0, param0->unk_1FB0, param0->unk_00->unk_0C, 45080, 45068, 45068, 45068, 0, 1);

    ov13_02228A64(param0->unk_2084, v1);
}

static void ov13_022255B8(UnkStruct_ov13_022213F0 *param0)
{
    ov16_0226DCA8(ov13_02228A58(param0->unk_2084));
    ov16_0226DBFC(param0->unk_1FB0, 45080, 45068, 45068, 45068);
}

static const ByteFlagSet Unk_ov13_02229464[] = {
    { 0x8, 0x8, 0x78, 0x28, 0x6, 0x2, 0x6, 0x1 },
    { 0x88, 0x10, 0xF8, 0x30, 0x4, 0x3, 0x0, 0x2 },
    { 0x8, 0x38, 0x78, 0x58, 0x0, 0x4, 0x1, 0x3 },
    { 0x88, 0x40, 0xF8, 0x60, 0x1, 0x5, 0x2, 0x4 },
    { 0x8, 0x68, 0x78, 0x88, 0x2, 0x1, 0x3, 0x5 },
    { 0x88, 0x70, 0xF8, 0x90, 0x3, 0x6, 0x4, 0x6 },
    { 0xE0, 0xA0, 0xF8, 0xB8, 0x5, 0x0, 0x5, 0x0 }
};

static const ByteFlagSet Unk_ov13_02229344[] = {
    { 0x10, 0x10, 0xF0, 0x88, 0x0, 0x81, 0x0, 0x0 },
    { 0x8, 0xA0, 0x60, 0xB8, 0x0, 0x1, 0x1, 0x2 },
    { 0x70, 0xA0, 0xC8, 0xB8, 0x0, 0x2, 0x1, 0x3 },
    { 0xE0, 0xA0, 0xF8, 0xB8, 0x0, 0x3, 0x2, 0x3 }
};

static const ByteFlagSet Unk_ov13_02229304[] = {
    { 0x8, 0xA0, 0x20, 0xB8, 0x0, 0x0, 0x0, 0x1 },
    { 0x30, 0xA0, 0x48, 0xB8, 0x1, 0x1, 0x0, 0x2 },
    { 0x68, 0xA0, 0xC0, 0xB8, 0x2, 0x2, 0x1, 0x3 },
    { 0xE0, 0xA0, 0xF8, 0xB8, 0x3, 0x3, 0x2, 0x3 }
};

static const ByteFlagSet Unk_ov13_022294D4[] = {
    { 0x8, 0x38, 0x78, 0x58, 0x0, 0x2, 0x0, 0x1 },
    { 0x88, 0x38, 0xF8, 0x58, 0x1, 0x3, 0x0, 0x1 },
    { 0x8, 0x68, 0x78, 0x88, 0x0, 0x84, 0x2, 0x3 },
    { 0x88, 0x68, 0xF8, 0x88, 0x1, 0x87, 0x2, 0x3 },
    { 0x8, 0xA0, 0x20, 0xB8, 0x2, 0x4, 0x4, 0x5 },
    { 0x30, 0xA0, 0x48, 0xB8, 0x2, 0x5, 0x4, 0x6 },
    { 0x68, 0xA0, 0xC0, 0xB8, 0x3, 0x6, 0x5, 0x7 },
    { 0xE0, 0xA0, 0xF8, 0xB8, 0x3, 0x7, 0x6, 0x7 }
};

static const ByteFlagSet Unk_ov13_02229364[] = {
    { 0x5C, 0x9D, 0x7C, 0xA5, 0x0, 0x2, 0x0, 0x1 },
    { 0x84, 0x9D, 0xA4, 0xA5, 0x1, 0x3, 0x0, 0x4 },
    { 0x5C, 0xAD, 0x7C, 0xB5, 0x0, 0x2, 0x2, 0x3 },
    { 0x84, 0xAD, 0xA4, 0xB5, 0x1, 0x3, 0x2, 0x4 },
    { 0xE0, 0xA0, 0xF8, 0xB8, 0x4, 0x4, 0x83, 0x4 }
};

static const ByteFlagSet Unk_ov13_0222949C[] = {
    { 0x8, 0x38, 0x78, 0x58, 0x5, 0x2, 0x0, 0x1 },
    { 0x88, 0x38, 0xF8, 0x58, 0x5, 0x3, 0x0, 0x1 },
    { 0x8, 0x68, 0x78, 0x88, 0x0, 0x4, 0x2, 0x3 },
    { 0x88, 0x68, 0xF8, 0x88, 0x1, 0x6, 0x2, 0x3 },
    { 0x48, 0x98, 0xB8, 0xB8, 0x2, 0x4, 0x4, 0x6 },
    { 0xC0, 0x8, 0xF8, 0x18, 0x5, 0x81, 0x0, 0x5 },
    { 0xE0, 0xA0, 0xF8, 0xB8, 0x3, 0x6, 0x4, 0x6 }
};

static const ByteFlagSet Unk_ov13_022292D4[] = {
    { 0x8, 0xA0, 0xC8, 0xB8, 0x1, 0x0, 0x0, 0x2 },
    { 0xC0, 0x8, 0xF8, 0x18, 0x1, 0x82, 0x0, 0x1 },
    { 0xE0, 0xA0, 0xF8, 0xB8, 0x1, 0x2, 0x0, 0x2 }
};

static const ByteFlagSet Unk_ov13_022293B4[] = {
    { 0x8, 0x38, 0x78, 0x58, 0x0, 0x2, 0x0, 0x1 },
    { 0x88, 0x38, 0xF8, 0x58, 0x1, 0x3, 0x0, 0x1 },
    { 0x8, 0x68, 0x78, 0x88, 0x0, 0x4, 0x2, 0x3 },
    { 0x88, 0x68, 0xF8, 0x88, 0x1, 0x4, 0x2, 0x3 },
    { 0xE0, 0xA0, 0xF8, 0xB8, 0x83, 0x4, 0x4, 0x4 }
};

static const ByteFlagSet *const Unk_ov13_0222938C[] = {
    Unk_ov13_02229464,
    Unk_ov13_02229344,
    Unk_ov13_02229304,
    Unk_ov13_022294D4,
    Unk_ov13_02229364,
    Unk_ov13_022293B4,
    Unk_ov13_0222949C,
    Unk_ov13_022292D4,
    Unk_ov13_0222949C,
    Unk_ov13_022292D4
};

static void ov13_022255EC(UnkStruct_ov13_022213F0 *param0)
{
    if (param0->unk_2073_4 == 0) {
        ov13_02228AC8(param0->unk_2084, 0x5f);
    } else {
        ov13_02228AC8(param0->unk_2084, 0x7f);
    }
}

static void ov13_02225614(UnkStruct_ov13_022213F0 *param0)
{
    if (param0->unk_2073_4 == 0) {
        ov13_02228AC8(param0->unk_2084, 5);
    } else {
        ov13_02228AC8(param0->unk_2084, 7);
    }
}

void ov13_0222563C(UnkStruct_ov13_022213F0 *param0, u8 param1)
{
    ov13_02228A9C(param0->unk_2084, Unk_ov13_0222938C[param1]);

    switch (param1) {
    case 0:
        ov13_02228A68(param0->unk_2084, param0->unk_00->unk_11);
        param0->unk_2088 = 0;
        param0->unk_00->unk_34 = 0;
        break;
    case 1:
        ov13_02228A68(param0->unk_2084, param0->unk_2088);
        param0->unk_00->unk_34 = 0;
        break;
    case 3:
    case 4:
        ov13_02228A68(param0->unk_2084, param0->unk_00->unk_34);
        break;
    case 6:
    case 8:
        ov13_022255EC(param0);
        ov13_02228A68(param0->unk_2084, param0->unk_2089);
        break;
    case 7:
    case 9:
        ov13_02225614(param0);
        ov13_02228A68(param0->unk_2084, param0->unk_208A);
        break;
    }
}

void ov13_022256E8(UnkStruct_ov13_022213F0 *param0)
{
    ov13_02228A60(param0->unk_2084, 0);
    ov13_02228A90(param0->unk_2084);
    ov16_0226DDE8(ov13_02228A58(param0->unk_2084));
}
