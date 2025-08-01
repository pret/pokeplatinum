#include "overlay013/ov13_02224500.h"

#include <nitro.h>
#include <string.h>

#include "generated/move_classes.h"
#include "generated/pokemon_types.h"

#include "applications/pokemon_summary_screen/main.h"
#include "battle/ov16_0223DF00.h"
#include "battle/ov16_0226DB7C.h"
#include "battle/struct_ov16_0226DC24_decl.h"
#include "overlay013/battle_party.h"

#include "grid_menu_cursor_position.h"
#include "gx_layers.h"
#include "item.h"
#include "move_table.h"
#include "narc.h"
#include "palette.h"
#include "party.h"
#include "pokemon_icon.h"
#include "sprite_system.h"
#include "type_icon.h"
#include "unk_0207E0B8.h"
#include "unk_0208C098.h"

static void ov13_0222453C(BattleParty *param0);
static void ov13_02224588(BattleParty *param0);
static void ov13_02224670(BattleParty *param0);
static void ov13_02224848(BattleParty *param0);
static void ov13_02224720(BattleParty *param0);
static void ov13_02224798(BattleParty *param0);
static void ov13_02224948(BattleParty *param0);
static void ov13_022249CC(BattleParty *param0);
static void ov13_02224C14(BattleParty *param0);
static void ov13_02224CB0(BattleParty *param0);
static void ov13_02224D08(BattleParty *param0);
static void ov13_02224DA0(BattleParty *param0);
static void ov13_02224E78(BattleParty *param0);
static void ov13_02224F3C(BattleParty *param0);
static void ov13_02224FA8(BattleParty *param0);
static void ov13_0222506C(BattleParty *param0);
static void ov13_022250D8(BattleParty *param0);
static void ov13_02225150(BattleParty *param0);
static void ov13_022251B4(BattleParty *param0);
static void ov13_02225248(BattleParty *param0);
static void ov13_02225420(BattleParty *param0);
static void ov13_0222554C(BattleParty *param0);
static void ov13_022255B8(BattleParty *param0);

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

void ov13_02224500(BattleParty *param0)
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

static void ov13_0222453C(BattleParty *param0)
{
    SpriteResourceCapacities v0 = { 18, 6, 6, 6, 0, 0 };
    SpriteSystem *v1 = BattleSystem_GetSpriteSystem(param0->context->battleSystem);

    param0->spriteMan = SpriteManager_New(v1);

    SpriteSystem_InitSprites(v1, param0->spriteMan, 38 + 5);
    SpriteSystem_InitManagerWithCapacities(v1, param0->spriteMan, &v0);
}

static void ov13_02224588(BattleParty *param0)
{
    SpriteSystem *v0;
    u32 v1;
    NARC *v2 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, param0->context->heapID);
    v0 = BattleSystem_GetSpriteSystem(param0->context->battleSystem);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->palette, PLTTBUF_SUB_OBJ, v0, param0->spriteMan, v2, PokeIconPalettesFileIndex(), FALSE, 3, NNS_G2D_VRAM_TYPE_2DSUB, 45063);
    SpriteSystem_LoadCellResObjFromOpenNarc(v0, param0->spriteMan, v2, PokeIcon32KCellsFileIndex(), FALSE, 45063);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v0, param0->spriteMan, v2, PokeIcon32KAnimationFileIndex(), FALSE, 45063);

    for (v1 = 0; v1 < 6; v1++) {
        if (param0->partyPokemon[v1].species != 0) {
            SpriteSystem_LoadCharResObjFromOpenNarc(v0, param0->spriteMan, v2, Pokemon_IconSpriteIndex(param0->partyPokemon[v1].pokemon), FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 45063 + v1);
        } else {
            SpriteSystem_LoadCharResObjFromOpenNarc(v0, param0->spriteMan, v2, PokeIconSpriteIndex(0, 0, 0), FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 45063 + v1);
        }
    }

    NARC_dtor(v2);
}

static void ov13_02224670(BattleParty *param0)
{
    SpriteSystem *v0 = BattleSystem_GetSpriteSystem(param0->context->battleSystem);
    NARC *v1 = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PST_GRA, param0->context->heapID);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->palette, PLTTBUF_SUB_OBJ, v0, param0->spriteMan, v1, PokemonSummaryScreen_StatusIconPltt(), FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, 45064);
    SpriteSystem_LoadCellResObjFromOpenNarc(v0, param0->spriteMan, v1, PokemonSummaryScreen_StatusIconCell(), FALSE, 45064);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v0, param0->spriteMan, v1, PokemonSummaryScreen_StatusIconAnim(), FALSE, 45064);
    SpriteSystem_LoadCharResObjFromOpenNarc(v0, param0->spriteMan, v1, PokemonSummaryScreen_StatusIconChar(), FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 45069);
    NARC_dtor(v1);
}

static void ov13_02224720(BattleParty *param0)
{
    SpriteSystem *spriteSys;
    u32 v1;
    spriteSys = BattleSystem_GetSpriteSystem(param0->context->battleSystem);

    TypeIcon_LoadPltt(param0->palette, PLTTBUF_SUB_OBJ, spriteSys, param0->spriteMan, NNS_G2D_VRAM_TYPE_2DSUB, 45065);
    TypeIcon_LoadAnim(spriteSys, param0->spriteMan, 45065, 45065);

    for (v1 = 45070; v1 <= 45076; v1++) {
        TypeIcon_LoadChar(spriteSys, param0->spriteMan, NNS_G2D_VRAM_TYPE_2DSUB, TYPE_NORMAL, v1);
    }

    CategoryIcon_LoadChar(spriteSys, param0->spriteMan, NNS_G2D_VRAM_TYPE_2DSUB, CLASS_PHYSICAL, 45077);
}

static void ov13_02224798(BattleParty *param0)
{
    SpriteSystem *v0;
    u32 v1;
    NARC *v2 = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PLIST_GRA, param0->context->heapID);
    v0 = BattleSystem_GetSpriteSystem(param0->context->battleSystem);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->palette, PLTTBUF_SUB_OBJ, v0, param0->spriteMan, v2, sub_02081934(), FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, 45066);
    SpriteSystem_LoadCellResObjFromOpenNarc(v0, param0->spriteMan, v2, sub_02081938(), FALSE, 45066);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v0, param0->spriteMan, v2, sub_0208193C(), FALSE, 45066);
    SpriteSystem_LoadCharResObjFromOpenNarc(v0, param0->spriteMan, v2, sub_02081930(), FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 45078);
    NARC_dtor(v2);
}

static void ov13_02224848(BattleParty *param0)
{
    SpriteSystem *v0 = BattleSystem_GetSpriteSystem(param0->context->battleSystem);

    SpriteSystem_LoadPaletteBuffer(param0->palette, PLTTBUF_SUB_OBJ, v0, param0->spriteMan, NARC_INDEX_BATTLE__GRAPHIC__PL_B_PLIST_GRA, 27, FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, 45067);
    SpriteSystem_LoadCellResObj(v0, param0->spriteMan, NARC_INDEX_BATTLE__GRAPHIC__PL_B_PLIST_GRA, 25, FALSE, 45067);
    SpriteSystem_LoadAnimResObj(v0, param0->spriteMan, NARC_INDEX_BATTLE__GRAPHIC__PL_B_PLIST_GRA, 24, FALSE, 45067);
    SpriteSystem_LoadCharResObj(v0, param0->spriteMan, NARC_INDEX_BATTLE__GRAPHIC__PL_B_PLIST_GRA, 26, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 45079);
}

static ManagedSprite *ov13_022248D8(BattleParty *param0, u32 param1)
{
    SpriteTemplate v0;
    SpriteSystem *v1 = BattleSystem_GetSpriteSystem(param0->context->battleSystem);

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
    v0.vramTransfer = FALSE;

    return SpriteSystem_NewSprite(v1, param0->spriteMan, &v0);
}

static void ov13_02224948(BattleParty *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 38; v0++) {
        param0->unk_1FB4[v0] = ov13_022248D8(param0, v0);
    }

    ov13_022249CC(param0);
}

void ov13_02224970(BattleParty *param0)
{
    SpriteSystem *v0;
    u32 v1;

    v0 = BattleSystem_GetSpriteSystem(param0->context->battleSystem);

    for (v1 = 0; v1 < 38; v1++) {
        Sprite_DeleteAndFreeResources(param0->unk_1FB4[v1]);
    }

    ov13_022255B8(param0);
    SpriteSystem_FreeResourcesAndManager(v0, param0->spriteMan);
}

static void ov13_022249AC(ManagedSprite *param0, const int param1, const int param2)
{
    ManagedSprite_SetDrawFlag(param0, 1);
    ManagedSprite_SetPositionXY(param0, param1, param2);
}

static void ov13_022249CC(BattleParty *param0)
{
    s32 v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->partyPokemon[v0].species == 0) {
            continue;
        }

        ManagedSprite_SetExplicitPalette(param0->unk_1FB4[7 + v0], PokeIconPaletteIndex(param0->partyPokemon[v0].species, param0->partyPokemon[v0].form, param0->partyPokemon[v0].isEgg));
    }
}

static void ov13_02224A0C(BattleParty *param0, ManagedSprite *param1, u32 param2, u8 moveType)
{
    SpriteSystem *v0 = BattleSystem_GetSpriteSystem(param0->context->battleSystem);

    SpriteSystem_ReplaceCharResObj(v0, param0->spriteMan, TypeIcon_GetNARC(), TypeIcon_GetChar(moveType), 1, param2);
    ManagedSprite_SetExplicitPalette(param1, TypeIcon_GetPltt(moveType) + 4);
}

static void ov13_02224A5C(BattleParty *param0, ManagedSprite *param1, u32 param2)
{
    SpriteSystem *v0 = BattleSystem_GetSpriteSystem(param0->context->battleSystem);

    SpriteSystem_ReplaceCharResObj(v0, param0->spriteMan, CategoryIcon_GetNARC(), CategoryIcon_GetChar(param2), 1, 45077);
    ManagedSprite_SetExplicitPalette(param1, CategoryIcon_GetPltt(param2) + 4);
}

static void ov13_02224AB0(u16 param0, ManagedSprite *param1, const int param2, const int param3)
{
    if (param0 == 7) {
        return;
    }

    ManagedSprite_SetAnim(param1, param0);
    ov13_022249AC(param1, param2, param3);
}

static void ov13_02224AD4(BattleParty *param0, BattlePartyPokemon *param1, const int *param2)
{
    ov13_02224A0C(param0, param0->unk_1FB4[19], 45070, param1->type_1);
    ov13_022249AC(param0->unk_1FB4[19], param2[0], param2[1]);

    if (param1->type_1 != param1->type_2) {
        ov13_02224A0C(param0, param0->unk_1FB4[20], 45071, param1->type_2);
        ov13_022249AC(param0->unk_1FB4[20], param2[2], param2[3]);
    }
}

static void ov13_02224B28(u16 param0, ManagedSprite *param1, const int param2, const int param3)
{
    if (param0 == 0) {
        return;
    }

    if (Item_IsMail(param0) == 1) {
        ManagedSprite_SetAnim(param1, 1);
    } else {
        ManagedSprite_SetAnim(param1, 0);
    }

    ov13_022249AC(param1, param2, param3);
}

static void ov13_02224B5C(u8 param0, ManagedSprite *param1, const int param2, const int param3)
{
    if (param0 == 0) {
        return;
    }

    ManagedSprite_SetAnim(param1, 2);
    ov13_022249AC(param1, param2, param3);
}

void ov13_02224B7C(BattleParty *param0, u32 param1)
{
    u32 v0;

    for (v0 = 0; v0 < 38; v0++) {
        ManagedSprite_SetDrawFlag(param0->unk_1FB4[v0], 0);
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

static void ov13_02224C14(BattleParty *param0)
{
    s32 v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->partyPokemon[v0].species == 0) {
            continue;
        }

        ov13_022249AC(param0->unk_1FB4[7 + v0], Unk_ov13_02229404[v0][0], Unk_ov13_02229404[v0][1]);
        ov13_02224AB0(param0->partyPokemon[v0].summaryStatus, param0->unk_1FB4[13 + v0], Unk_ov13_02229434[v0][0], Unk_ov13_02229434[v0][1]);
        ov13_02224B28(param0->partyPokemon[v0].heldItem, param0->unk_1FB4[0 + v0], Unk_ov13_02229404[v0][0] + 8, Unk_ov13_02229404[v0][1] + 8);
        ov13_02224B5C(param0->partyPokemon[v0].mail, param0->unk_1FB4[32 + v0], Unk_ov13_02229404[v0][0] + 16, Unk_ov13_02229404[v0][1] + 8);
    }
}

static void ov13_02224CB0(BattleParty *param0)
{
    BattlePartyPokemon *v0;
    u16 v1;

    v0 = &param0->partyPokemon[param0->context->selectedPartyIndex];

    ov13_022249AC(param0->unk_1FB4[7 + param0->context->selectedPartyIndex], Unk_ov13_0222921C[0], Unk_ov13_0222921C[1]);
    ov13_02224B28(v0->heldItem, param0->unk_1FB4[0 + param0->context->selectedPartyIndex], Unk_ov13_0222921C[0] + 8, Unk_ov13_0222921C[1] + 8);
    ov13_02224B5C(v0->mail, param0->unk_1FB4[32 + param0->context->selectedPartyIndex], Unk_ov13_0222921C[0] + 16, Unk_ov13_0222921C[1] + 8);
}

static void ov13_02224D08(BattleParty *param0)
{
    BattlePartyPokemon *v0;
    u16 v1;

    v0 = &param0->partyPokemon[param0->context->selectedPartyIndex];

    ov13_022249AC(param0->unk_1FB4[7 + param0->context->selectedPartyIndex], Unk_ov13_0222923C[0], Unk_ov13_0222923C[1]);
    ov13_02224AB0(v0->summaryStatus, param0->unk_1FB4[13 + param0->context->selectedPartyIndex], Unk_ov13_0222924C[0], Unk_ov13_0222924C[1]);
    ov13_02224AD4(param0, v0, &Unk_ov13_022292C4[0][0]);
    ov13_02224B28(v0->heldItem, param0->unk_1FB4[0 + param0->context->selectedPartyIndex], Unk_ov13_0222923C[0] + 8, Unk_ov13_0222923C[1] + 8);
    ov13_02224B5C(v0->mail, param0->unk_1FB4[32 + param0->context->selectedPartyIndex], Unk_ov13_0222923C[0] + 16, Unk_ov13_0222923C[1] + 8);
    ov13_02224B28(v0->heldItem, param0->unk_1FB4[6], 20, 132);
}

static void ov13_02224DA0(BattleParty *param0)
{
    BattlePartyPokemon *v0;
    u32 v1;

    v0 = &param0->partyPokemon[param0->context->selectedPartyIndex];

    ov13_022249AC(param0->unk_1FB4[7 + param0->context->selectedPartyIndex], Unk_ov13_02229244[0], Unk_ov13_02229244[1]);
    ov13_02224AB0(v0->summaryStatus, param0->unk_1FB4[13 + param0->context->selectedPartyIndex], Unk_ov13_02229254[0], Unk_ov13_02229254[1]);
    ov13_02224AD4(param0, v0, &Unk_ov13_022292A4[0][0]);
    ov13_02224B28(v0->heldItem, param0->unk_1FB4[0 + param0->context->selectedPartyIndex], Unk_ov13_02229244[0] + 8, Unk_ov13_02229244[1] + 8);
    ov13_02224B5C(v0->mail, param0->unk_1FB4[32 + param0->context->selectedPartyIndex], Unk_ov13_02229244[0] + 16, Unk_ov13_02229244[1] + 8);

    for (v1 = 0; v1 < 4; v1++) {
        if (v0->moves[v1].move == 0) {
            continue;
        }

        ov13_02224A0C(param0, param0->unk_1FB4[21 + v1], 45072 + v1, v0->moves[v1].type);
        ov13_022249AC(param0->unk_1FB4[21 + v1], Unk_ov13_02229324[v1][0], Unk_ov13_02229324[v1][1]);
    }
}

static void ov13_02224E78(BattleParty *param0)
{
    BattlePartyPokemon *v0 = &param0->partyPokemon[param0->context->selectedPartyIndex];

    ov13_022249AC(param0->unk_1FB4[7 + param0->context->selectedPartyIndex], Unk_ov13_02229264[0], Unk_ov13_02229264[1]);
    ov13_02224AB0(v0->summaryStatus, param0->unk_1FB4[13 + param0->context->selectedPartyIndex], Unk_ov13_02229224[0], Unk_ov13_02229224[1]);
    ov13_02224AD4(param0, v0, &Unk_ov13_022292B4[0][0]);
    ov13_022249AC(param0->unk_1FB4[21 + param0->context->selectedMoveSlot], Unk_ov13_0222922C[0], Unk_ov13_0222922C[1]);
    ov13_02224B28(v0->heldItem, param0->unk_1FB4[0 + param0->context->selectedPartyIndex], Unk_ov13_02229264[0] + 8, Unk_ov13_02229264[1] + 8);
    ov13_02224B5C(v0->mail, param0->unk_1FB4[32 + param0->context->selectedPartyIndex], Unk_ov13_02229264[0] + 16, Unk_ov13_02229264[1] + 8);
    ov13_02224A5C(param0, param0->unk_1FB4[26], v0->moves[param0->context->selectedMoveSlot].class);
    ov13_022249AC(param0->unk_1FB4[26], Unk_ov13_02229214[0], Unk_ov13_02229214[1]);
}

static void ov13_02224F3C(BattleParty *param0)
{
    BattlePartyPokemon *v0;
    u16 v1;

    v0 = &param0->partyPokemon[param0->context->selectedPartyIndex];

    ov13_022249AC(param0->unk_1FB4[7 + param0->context->selectedPartyIndex], Unk_ov13_02229234[0], Unk_ov13_02229234[1]);
    ov13_02224AD4(param0, v0, &Unk_ov13_02229294[0][0]);
    ov13_02224B28(v0->heldItem, param0->unk_1FB4[0 + param0->context->selectedPartyIndex], Unk_ov13_02229234[0] + 8, Unk_ov13_02229234[1] + 8);
    ov13_02224B5C(v0->mail, param0->unk_1FB4[32 + param0->context->selectedPartyIndex], Unk_ov13_02229234[0] + 16, Unk_ov13_02229234[1] + 8);
    ov13_022252E8(param0);
}

static void ov13_02224FA8(BattleParty *param0)
{
    BattlePartyPokemon *v0 = &param0->partyPokemon[param0->context->selectedPartyIndex];

    ov13_022249AC(param0->unk_1FB4[7 + param0->context->selectedPartyIndex], Unk_ov13_0222927C[0], Unk_ov13_0222927C[1]);
    ov13_02224AD4(param0, v0, &Unk_ov13_02229284[0][0]);
    ov13_022249AC(param0->unk_1FB4[21 + param0->context->selectedMoveSlot], Unk_ov13_0222926C[0], Unk_ov13_0222926C[1]);
    ov13_02224B28(v0->heldItem, param0->unk_1FB4[0 + param0->context->selectedPartyIndex], Unk_ov13_0222927C[0] + 8, Unk_ov13_0222927C[1] + 8);
    ov13_02224B5C(v0->mail, param0->unk_1FB4[32 + param0->context->selectedPartyIndex], Unk_ov13_0222927C[0] + 16, Unk_ov13_0222927C[1] + 8);

    if (param0->context->selectedMoveSlot < 4) {
        ov13_02224A5C(param0, param0->unk_1FB4[26], v0->moves[param0->context->selectedMoveSlot].class);
    } else {
        ov13_02224A5C(param0, param0->unk_1FB4[26], MoveTable_LoadParam(param0->context->moveToLearn, MOVEATTRIBUTE_CLASS));
    }

    ov13_022249AC(param0->unk_1FB4[26], Unk_ov13_02229274[0], Unk_ov13_02229274[1]);
}

static void ov13_0222506C(BattleParty *param0)
{
    BattlePartyPokemon *v0;
    u16 v1;

    v0 = &param0->partyPokemon[param0->context->selectedPartyIndex];

    ov13_022249AC(param0->unk_1FB4[7 + param0->context->selectedPartyIndex], Unk_ov13_02229234[0], Unk_ov13_02229234[1]);
    ov13_02224AD4(param0, v0, &Unk_ov13_02229294[0][0]);
    ov13_02224B28(v0->heldItem, param0->unk_1FB4[0 + param0->context->selectedPartyIndex], Unk_ov13_02229234[0] + 8, Unk_ov13_02229234[1] + 8);
    ov13_02224B5C(v0->mail, param0->unk_1FB4[32 + param0->context->selectedPartyIndex], Unk_ov13_02229234[0] + 16, Unk_ov13_02229234[1] + 8);
    ov13_022252E8(param0);
}

static void ov13_022250D8(BattleParty *param0)
{
    BattlePartyPokemon *v0 = &param0->partyPokemon[param0->context->selectedPartyIndex];

    ov13_022249AC(param0->unk_1FB4[7 + param0->context->selectedPartyIndex], Unk_ov13_0222927C[0], Unk_ov13_0222927C[1]);
    ov13_022249AC(param0->unk_1FB4[21 + param0->context->selectedMoveSlot], Unk_ov13_0222925C[0], Unk_ov13_0222925C[1]);
    ov13_02224B28(v0->heldItem, param0->unk_1FB4[0 + param0->context->selectedPartyIndex], Unk_ov13_0222927C[0] + 8, Unk_ov13_0222927C[1] + 8);
    ov13_02224B5C(v0->mail, param0->unk_1FB4[32 + param0->context->selectedPartyIndex], Unk_ov13_0222927C[0] + 16, Unk_ov13_0222927C[1] + 8);
    ov13_02225420(param0);
}

static void ov13_02225150(BattleParty *param0)
{
    BattlePartyPokemon *v0 = &param0->partyPokemon[param0->context->selectedPartyIndex];

    ov13_022249AC(param0->unk_1FB4[7 + param0->context->selectedPartyIndex], Unk_ov13_0222927C[0], Unk_ov13_0222927C[1]);
    ov13_02224B28(v0->heldItem, param0->unk_1FB4[0 + param0->context->selectedPartyIndex], Unk_ov13_0222927C[0] + 8, Unk_ov13_0222927C[1] + 8);
    ov13_02224B5C(v0->mail, param0->unk_1FB4[32 + param0->context->selectedPartyIndex], Unk_ov13_0222927C[0] + 16, Unk_ov13_0222927C[1] + 8);
    ov13_022252E8(param0);
    ov13_02225420(param0);
}

static void ov13_022251B4(BattleParty *param0)
{
    BattlePartyPokemon *v0;
    u16 v1;

    v0 = &param0->partyPokemon[param0->context->selectedPartyIndex];

    for (v1 = 0; v1 < 4; v1++) {
        if (v0->moves[v1].move == 0) {
            continue;
        }

        ov13_02224A0C(param0, param0->unk_1FB4[21 + v1], 45072 + v1, v0->moves[v1].type);
        ov13_022249AC(param0->unk_1FB4[21 + v1], Unk_ov13_022293DC[v1][0], Unk_ov13_022293DC[v1][1]);
    }

    if (param0->context->moveToLearn != 0) {
        ov13_02224A0C(param0, param0->unk_1FB4[25], 45076, MoveTable_LoadParam(param0->context->moveToLearn, MOVEATTRIBUTE_TYPE));
        ov13_022249AC(param0->unk_1FB4[25], Unk_ov13_022293DC[4][0], Unk_ov13_022293DC[4][1]);
    }
}

static void ov13_02225248(BattleParty *param0)
{
    BattlePartyPokemon *v0;
    u16 v1;

    v0 = &param0->partyPokemon[param0->context->selectedPartyIndex];

    for (v1 = 0; v1 < 4; v1++) {
        if (v0->moves[v1].move == 0) {
            continue;
        }

        ov13_02224A0C(param0, param0->unk_1FB4[21 + v1], 45072 + v1, MoveTable_LoadParam(v0->moves[v1].move, MOVEATTRIBUTE_CONTEST_TYPE) + 18);
        ov13_022249AC(param0->unk_1FB4[21 + v1], Unk_ov13_022293DC[v1][0], Unk_ov13_022293DC[v1][1]);
    }

    if (param0->context->moveToLearn != 0) {
        ov13_02224A0C(param0, param0->unk_1FB4[25], 45076, MoveTable_LoadParam(param0->context->moveToLearn, MOVEATTRIBUTE_CONTEST_TYPE) + 18);
        ov13_022249AC(param0->unk_1FB4[25], Unk_ov13_022293DC[4][0], Unk_ov13_022293DC[4][1]);
    }
}

void ov13_022252E8(BattleParty *param0)
{
    if (param0->displayingContestStats == 0) {
        ov13_022251B4(param0);
    } else {
        ov13_02225248(param0);
    }
}

static void ov13_02225304(ManagedSprite *param0, u8 param1)
{
    if (ManagedSprite_GetActiveAnim(param0) == param1) {
        return;
    }

    ManagedSprite_SetAnimationFrame(param0, 0);
    ManagedSprite_SetAnim(param0, param1);
}

static u8 PartyScreen_GetHealthBarColor(BattlePartyPokemon *param0)
{
    if (param0->curHP == 0) {
        return BARCOLOR_EMPTY;
    }

    if ((param0->summaryStatus != SUMMARY_CONDITION_NONE) && (param0->summaryStatus != SUMMARY_CONDITION_FAINTED)) {
        return 5;
    }

    switch (HealthBar_Color(param0->curHP, param0->maxHP, 48)) {
    case 4:
        return BARCOLOR_RED;
    case 3:
        return BARCOLOR_YELLOW;
    case 2:
        return BARCOLOR_GREEN;
    case 1:
        return BARCOLOR_MAX;
    }

    return BARCOLOR_EMPTY;
}

void ov13_0222537C(BattleParty *param0)
{
    u16 v0;
    u16 v1;

    for (v0 = 0; v0 < Party_GetCurrentCount(param0->context->party); v0++) {
        if (param0->partyPokemon[v0].species == 0) {
            continue;
        }

        v1 = PartyScreen_GetHealthBarColor(&param0->partyPokemon[v0]);

        ov13_02225304(param0->unk_1FB4[7 + v0], v1);
        ManagedSprite_TickNFrames(param0->unk_1FB4[7 + v0], FX32_ONE);
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

static void ov13_02225420(BattleParty *param0)
{
    BattlePartyPokemon *v0;
    u16 v1;

    v0 = &param0->partyPokemon[param0->context->selectedPartyIndex];

    ov13_02225304(param0->unk_1FB4[27], 0);
    ov13_02225304(param0->unk_1FB4[28], 1);
    ov13_02225304(param0->unk_1FB4[29], 3);
    ov13_02225304(param0->unk_1FB4[30], 4);
    ov13_02225304(param0->unk_1FB4[31], 2);

    ov13_022249AC(param0->unk_1FB4[27], ov13_022253DC(v0->cool, 144, 144), ov13_022253DC(v0->cool, 2, 24));
    ov13_022249AC(param0->unk_1FB4[28], ov13_022253DC(v0->beauty, 164, 144), ov13_022253DC(v0->beauty, 16, 24));
    ov13_022249AC(param0->unk_1FB4[29], ov13_022253DC(v0->cute, 156, 144), ov13_022253DC(v0->cute, 41, 24));
    ov13_022249AC(param0->unk_1FB4[30], ov13_022253DC(v0->smart, 131, 143), ov13_022253DC(v0->smart, 41, 24));
    ov13_022249AC(param0->unk_1FB4[31], ov13_022253DC(v0->tough, 123, 143), ov13_022253DC(v0->tough, 16, 24));
}

static void ov13_0222554C(BattleParty *param0)
{
    SpriteSystem *v0;
    UnkStruct_ov16_0226DC24 *v1;

    v0 = BattleSystem_GetSpriteSystem(param0->context->battleSystem);
    ov16_0226DB7C(v0, param0->spriteMan, param0->palette, param0->context->heapID, 45080, 45068, 45068, 45068);
    v1 = ov16_0226DC24(v0, param0->spriteMan, param0->context->heapID, 45080, 45068, 45068, 45068, 0, 1);

    SetBattleSubMenuCursorSprites(param0->cursor, v1);
}

static void ov13_022255B8(BattleParty *param0)
{
    ov16_0226DCA8(GetBattleSubMenuCursorSprites(param0->cursor));
    ov16_0226DBFC(param0->spriteMan, 45080, 45068, 45068, 45068);
}

static const GridMenuCursorPosition Unk_ov13_02229464[] = {
    { 0x8, 0x8, 0x78, 0x28, 0x6, 0x2, 0x6, 0x1 },
    { 0x88, 0x10, 0xF8, 0x30, 0x4, 0x3, 0x0, 0x2 },
    { 0x8, 0x38, 0x78, 0x58, 0x0, 0x4, 0x1, 0x3 },
    { 0x88, 0x40, 0xF8, 0x60, 0x1, 0x5, 0x2, 0x4 },
    { 0x8, 0x68, 0x78, 0x88, 0x2, 0x1, 0x3, 0x5 },
    { 0x88, 0x70, 0xF8, 0x90, 0x3, 0x6, 0x4, 0x6 },
    { 0xE0, 0xA0, 0xF8, 0xB8, 0x5, 0x0, 0x5, 0x0 }
};

static const GridMenuCursorPosition Unk_ov13_02229344[] = {
    { 0x10, 0x10, 0xF0, 0x88, 0x0, 0x81, 0x0, 0x0 },
    { 0x8, 0xA0, 0x60, 0xB8, 0x0, 0x1, 0x1, 0x2 },
    { 0x70, 0xA0, 0xC8, 0xB8, 0x0, 0x2, 0x1, 0x3 },
    { 0xE0, 0xA0, 0xF8, 0xB8, 0x0, 0x3, 0x2, 0x3 }
};

static const GridMenuCursorPosition Unk_ov13_02229304[] = {
    { 0x8, 0xA0, 0x20, 0xB8, 0x0, 0x0, 0x0, 0x1 },
    { 0x30, 0xA0, 0x48, 0xB8, 0x1, 0x1, 0x0, 0x2 },
    { 0x68, 0xA0, 0xC0, 0xB8, 0x2, 0x2, 0x1, 0x3 },
    { 0xE0, 0xA0, 0xF8, 0xB8, 0x3, 0x3, 0x2, 0x3 }
};

static const GridMenuCursorPosition Unk_ov13_022294D4[] = {
    { 0x8, 0x38, 0x78, 0x58, 0x0, 0x2, 0x0, 0x1 },
    { 0x88, 0x38, 0xF8, 0x58, 0x1, 0x3, 0x0, 0x1 },
    { 0x8, 0x68, 0x78, 0x88, 0x0, 0x84, 0x2, 0x3 },
    { 0x88, 0x68, 0xF8, 0x88, 0x1, 0x87, 0x2, 0x3 },
    { 0x8, 0xA0, 0x20, 0xB8, 0x2, 0x4, 0x4, 0x5 },
    { 0x30, 0xA0, 0x48, 0xB8, 0x2, 0x5, 0x4, 0x6 },
    { 0x68, 0xA0, 0xC0, 0xB8, 0x3, 0x6, 0x5, 0x7 },
    { 0xE0, 0xA0, 0xF8, 0xB8, 0x3, 0x7, 0x6, 0x7 }
};

static const GridMenuCursorPosition Unk_ov13_02229364[] = {
    { 0x5C, 0x9D, 0x7C, 0xA5, 0x0, 0x2, 0x0, 0x1 },
    { 0x84, 0x9D, 0xA4, 0xA5, 0x1, 0x3, 0x0, 0x4 },
    { 0x5C, 0xAD, 0x7C, 0xB5, 0x0, 0x2, 0x2, 0x3 },
    { 0x84, 0xAD, 0xA4, 0xB5, 0x1, 0x3, 0x2, 0x4 },
    { 0xE0, 0xA0, 0xF8, 0xB8, 0x4, 0x4, 0x83, 0x4 }
};

static const GridMenuCursorPosition Unk_ov13_0222949C[] = {
    { 0x8, 0x38, 0x78, 0x58, 0x5, 0x2, 0x0, 0x1 },
    { 0x88, 0x38, 0xF8, 0x58, 0x5, 0x3, 0x0, 0x1 },
    { 0x8, 0x68, 0x78, 0x88, 0x0, 0x4, 0x2, 0x3 },
    { 0x88, 0x68, 0xF8, 0x88, 0x1, 0x6, 0x2, 0x3 },
    { 0x48, 0x98, 0xB8, 0xB8, 0x2, 0x4, 0x4, 0x6 },
    { 0xC0, 0x8, 0xF8, 0x18, 0x5, 0x81, 0x0, 0x5 },
    { 0xE0, 0xA0, 0xF8, 0xB8, 0x3, 0x6, 0x4, 0x6 }
};

static const GridMenuCursorPosition Unk_ov13_022292D4[] = {
    { 0x8, 0xA0, 0xC8, 0xB8, 0x1, 0x0, 0x0, 0x2 },
    { 0xC0, 0x8, 0xF8, 0x18, 0x1, 0x82, 0x0, 0x1 },
    { 0xE0, 0xA0, 0xF8, 0xB8, 0x1, 0x2, 0x0, 0x2 }
};

static const GridMenuCursorPosition Unk_ov13_022293B4[] = {
    { 0x8, 0x38, 0x78, 0x58, 0x0, 0x2, 0x0, 0x1 },
    { 0x88, 0x38, 0xF8, 0x58, 0x1, 0x3, 0x0, 0x1 },
    { 0x8, 0x68, 0x78, 0x88, 0x0, 0x4, 0x2, 0x3 },
    { 0x88, 0x68, 0xF8, 0x88, 0x1, 0x4, 0x2, 0x3 },
    { 0xE0, 0xA0, 0xF8, 0xB8, 0x83, 0x4, 0x4, 0x4 }
};

static const GridMenuCursorPosition *const Unk_ov13_0222938C[] = {
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

static void ov13_022255EC(BattleParty *param0)
{
    if (param0->hasVisitedContestHall == FALSE) {
        SetBattleSubMenuCursorEnabledPositionsMask(param0->cursor, 0x5f);
    } else {
        SetBattleSubMenuCursorEnabledPositionsMask(param0->cursor, 0x7f);
    }
}

static void ov13_02225614(BattleParty *param0)
{
    if (param0->hasVisitedContestHall == FALSE) {
        SetBattleSubMenuCursorEnabledPositionsMask(param0->cursor, 5);
    } else {
        SetBattleSubMenuCursorEnabledPositionsMask(param0->cursor, 7);
    }
}

void ov13_0222563C(BattleParty *param0, u8 param1)
{
    SetBattleSubMenuCursorPositions(param0->cursor, Unk_ov13_0222938C[param1]);

    switch (param1) {
    case 0:
        SetBattleSubMenuCursorCurrentPosition(param0->cursor, param0->context->selectedPartyIndex);
        param0->selectPokemonPreviousScreenButton = 0;
        param0->context->selectedMoveSlot = 0;
        break;
    case 1:
        SetBattleSubMenuCursorCurrentPosition(param0->cursor, param0->selectPokemonPreviousScreenButton);
        param0->context->selectedMoveSlot = 0;
        break;
    case 3:
    case 4:
        SetBattleSubMenuCursorCurrentPosition(param0->cursor, param0->context->selectedMoveSlot);
        break;
    case 6:
    case 8:
        ov13_022255EC(param0);
        SetBattleSubMenuCursorCurrentPosition(param0->cursor, param0->learnMovePreviousScreenButton);
        break;
    case 7:
    case 9:
        ov13_02225614(param0);
        SetBattleSubMenuCursorCurrentPosition(param0->cursor, param0->confirmLearnMovePreviousScreenButton);
        break;
    }
}

void DisableBattlePartyCursor(BattleParty *battleParty)
{
    SetBattleSubMenuCursorVisibility(battleParty->cursor, FALSE);
    ResetBattleSubMenuCursorCurrentPosition(battleParty->cursor);
    ov16_0226DDE8(GetBattleSubMenuCursorSprites(battleParty->cursor));
}
