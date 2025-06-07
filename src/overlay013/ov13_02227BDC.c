#include "overlay013/ov13_02227BDC.h"

#include <nitro.h>
#include <string.h>

#include "battle/ov16_0223DF00.h"
#include "battle/ov16_0226DB7C.h"
#include "battle/ov16_0226DE44.h"
#include "battle/struct_ov16_0226DC24_decl.h"
#include "battle/struct_ov16_0226DEEC_decl.h"
#include "overlay013/battle_bag.h"
#include "overlay013/battle_bag_utils.h"
#include "overlay013/battle_sub_menu_cursor.h"

#include "grid_menu_cursor_position.h"
#include "gx_layers.h"
#include "item.h"
#include "narc.h"
#include "palette.h"
#include "sprite_system.h"

static void ov13_02227C08(BattleBag *param0);
static void ov13_02227C54(BattleBag *param0);
static void ov13_02227D10(BattleBag *param0, u16 param1, u32 param2);
static void ov13_02227D48(BattleBag *param0, u16 param1, u16 param2, u32 param3);
static void ov13_02227DE8(BattleBag *param0);
static void ov13_02227EAC(BattleBag *param0);
static void ov13_02227EE0(BattleBag *param0);
static void ov13_02227F38(BattleBag *param0);
static void ov13_02227F7C(BattleBag *param0);
static void ov13_02227FDC(BattleBag *param0);
static void ov13_02228070(BattleBag *param0);
static void ov13_022280C8(BattleBag *param0);

static const int Unk_ov13_02229BC0[2] = {
    0x18,
    0xB2
};

static const int Unk_ov13_02229C44[][2] = {
    { 0x2C, 0x2D },
    { 0xAC, 0x2D },
    { 0x2C, 0x5D },
    { 0xAC, 0x5D },
    { 0x2C, 0x8D },
    { 0xAC, 0x8D }
};

static const int Unk_ov13_02229BB8[2] = {
    0x28,
    0x2C
};

static const int Unk_ov13_02229CBC[][5] = {
    { 0xB4B7, 0xB4B7, 0xB4B7, 0xB4B7, 0x1 },
    { 0xB4B8, 0xB4B8, 0xB4B7, 0xB4B7, 0x1 },
    { 0xB4B9, 0xB4B9, 0xB4B7, 0xB4B7, 0x1 },
    { 0xB4BA, 0xB4BA, 0xB4B7, 0xB4B7, 0x1 },
    { 0xB4BB, 0xB4BB, 0xB4B7, 0xB4B7, 0x1 },
    { 0xB4BC, 0xB4BC, 0xB4B7, 0xB4B7, 0x1 }
};

void ov13_02227BDC(BattleBag *param0)
{
    ov13_02227C08(param0);
    ov13_02227C54(param0);
    ov13_02227DE8(param0);
    ov13_02227F7C(param0);
    ov13_02228070(param0);

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov13_02227C08(BattleBag *param0)
{
    SpriteResourceCapacities v0 = { 8, 8, 3, 3, 0, 0 };
    SpriteSystem *v1 = BattleSystem_GetSpriteSystem(param0->context->battleSystem);

    param0->spriteManager = SpriteManager_New(v1);

    SpriteSystem_InitSprites(v1, param0->spriteManager, 6 + 5 + 1);
    SpriteSystem_InitManagerWithCapacities(v1, param0->spriteManager, &v0);
}

static void ov13_02227C54(BattleBag *param0)
{
    SpriteSystem *v0;
    u32 v1;
    NARC *v2 = NARC_ctor(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, param0->context->heapID);
    v0 = BattleSystem_GetSpriteSystem(param0->context->battleSystem);

    for (v1 = 0; v1 < 6; v1++) {
        SpriteSystem_LoadCharResObjFromOpenNarc(v0, param0->spriteManager, v2, Item_FileID(1, 1), FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 46263 + v1);
        SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->palette, PLTTBUF_SUB_OBJ, v0, param0->spriteManager, v2, Item_FileID(1, 2), FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, 46263 + v1);
    }

    SpriteSystem_LoadCellResObjFromOpenNarc(v0, param0->spriteManager, v2, Item_IconNCERFile(), FALSE, 46263);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v0, param0->spriteManager, v2, Item_IconNANRFile(), FALSE, 46263);
    NARC_dtor(v2);
}

static void ov13_02227D10(BattleBag *param0, u16 param1, u32 param2)
{
    SpriteSystem *v0 = BattleSystem_GetSpriteSystem(param0->context->battleSystem);
    SpriteSystem_ReplaceCharResObj(v0, param0->spriteManager, 16, Item_FileID(param1, 1), 0, param2);
}

static void ov13_02227D48(BattleBag *param0, u16 param1, u16 param2, u32 param3)
{
    PaletteData_LoadBufferFromFileStart(param0->palette, 16, Item_FileID(param1, 2), param0->context->heapID, 3, 0x20, param2 * 16);
}

static ManagedSprite *ov13_02227D78(BattleBag *param0, u32 param1)
{
    SpriteTemplate v0;
    SpriteSystem *v1 = BattleSystem_GetSpriteSystem(param0->context->battleSystem);

    v0.x = 0;
    v0.y = 0;
    v0.z = 0;
    v0.animIdx = 0;
    v0.priority = Unk_ov13_02229CBC[param1][4];
    v0.plttIdx = 0;
    v0.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v0.resources[0] = Unk_ov13_02229CBC[param1][0];
    v0.resources[1] = Unk_ov13_02229CBC[param1][1];
    v0.resources[2] = Unk_ov13_02229CBC[param1][2];
    v0.resources[3] = Unk_ov13_02229CBC[param1][3];
    v0.bgPriority = 1;
    v0.vramTransfer = FALSE;

    return SpriteSystem_NewSprite(v1, param0->spriteManager, &v0);
}

static void ov13_02227DE8(BattleBag *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_310[v0] = ov13_02227D78(param0, v0);
    }
}

void ov13_02227E08(BattleBag *param0)
{
    SpriteSystem *v0;
    u32 v1;

    v0 = BattleSystem_GetSpriteSystem(param0->context->battleSystem);

    for (v1 = 0; v1 < 6; v1++) {
        Sprite_DeleteAndFreeResources(param0->unk_310[v1]);
    }

    ov13_02227FDC(param0);
    ov13_022280C8(param0);
    SpriteSystem_FreeResourcesAndManager(v0, param0->spriteManager);
}

static void ov13_02227E48(ManagedSprite *param0, const int param1, const int param2)
{
    ManagedSprite_SetDrawFlag(param0, 1);
    ManagedSprite_SetPositionXY(param0, param1, param2);
}

void ov13_02227E68(BattleBag *param0, u32 param1)
{
    u32 v0;

    for (v0 = 0; v0 < 6; v0++) {
        ManagedSprite_SetDrawFlag(param0->unk_310[v0], 0);
    }

    switch (param1) {
    case 0:
        ov13_02227EAC(param0);
        break;
    case 1:
        ov13_02227EE0(param0);
        break;
    case 2:
        ov13_02227F38(param0);
        break;
    }
}

static void ov13_02227EAC(BattleBag *param0)
{
    u16 v0;

    if (param0->context->lastUsedItem != ITEM_NONE) {
        ov13_02227D10(param0, param0->context->lastUsedItem, 46263);
        ov13_02227D48(param0, param0->context->lastUsedItem, 0, 46263);
        ov13_02227E48(param0->unk_310[0], Unk_ov13_02229BC0[0], Unk_ov13_02229BC0[1]);
    }
}

static void ov13_02227EE0(BattleBag *param0)
{
    u32 v0;
    u16 v1;

    for (v0 = 0; v0 < BATTLE_POCKET_ITEMS_PER_PAGE; v0++) {
        v1 = BattleBag_GetItem(param0, v0);

        if (v1 == ITEM_NONE) {
            continue;
        }

        ov13_02227D10(param0, v1, 46263 + v0);
        ov13_02227D48(param0, v1, (u16)v0, 46263 + v0);
        ov13_02227E48(param0->unk_310[v0], Unk_ov13_02229C44[v0][0], Unk_ov13_02229C44[v0][1]);
    }
}

static void ov13_02227F38(BattleBag *param0)
{
    u16 v0 = BattleBag_GetItem(param0, param0->context->pocketCurrentPagePositions[param0->currentBattlePocket]);

    ov13_02227D10(param0, v0, 46263);
    ov13_02227D48(param0, v0, 0, 46263);
    ov13_02227E48(param0->unk_310[0], Unk_ov13_02229BB8[0], Unk_ov13_02229BB8[1]);
}

static void ov13_02227F7C(BattleBag *param0)
{
    SpriteSystem *v0;
    UnkStruct_ov16_0226DC24 *v1;

    v0 = BattleSystem_GetSpriteSystem(param0->context->battleSystem);
    ov16_0226DB7C(v0, param0->spriteManager, param0->palette, param0->context->heapID, 46270, 46270, 46265, 46265);
    v1 = ov16_0226DC24(v0, param0->spriteManager, param0->context->heapID, 46270, 46270, 46265, 46265, 0, 1);

    SetBattleSubMenuCursorSprites(param0->cursor, v1);
}

static void ov13_02227FDC(BattleBag *param0)
{
    ov16_0226DCA8(GetBattleSubMenuCursorSprites(param0->cursor));
    ov16_0226DBFC(param0->spriteManager, 46270, 46270, 46265, 46265);
}

static const GridMenuCursorPosition Unk_ov13_02229C14[] = {
    { 0x8, 0x10, 0x78, 0x48, 0x0, 0x1, 0x0, 0x2 },
    { 0x8, 0x58, 0x78, 0x90, 0x0, 0x4, 0x1, 0x3 },
    { 0x88, 0x10, 0xF8, 0x48, 0x2, 0x3, 0x0, 0x2 },
    { 0x88, 0x58, 0xF8, 0x90, 0x2, 0x5, 0x1, 0x3 },
    { 0x8, 0xA0, 0xC8, 0xB8, 0x1, 0x4, 0x4, 0x5 },
    { 0xE0, 0xA0, 0xF8, 0xB8, 0x83, 0x5, 0x4, 0x5 }
};

static const GridMenuCursorPosition Unk_ov13_02229C74[] = {
    { 0x8, 0x10, 0x78, 0x30, 0x0, 0x2, 0x0, 0x1 },
    { 0x88, 0x10, 0xF8, 0x30, 0x1, 0x3, 0x0, 0x1 },
    { 0x8, 0x40, 0x78, 0x60, 0x0, 0x4, 0x2, 0x3 },
    { 0x88, 0x40, 0xF8, 0x60, 0x1, 0x5, 0x2, 0x3 },
    { 0x8, 0x70, 0x78, 0x90, 0x2, 0x86, 0x4, 0x5 },
    { 0x88, 0x70, 0xF8, 0x90, 0x3, 0x8, 0x4, 0x5 },
    { 0x8, 0xA0, 0x20, 0xB8, 0x4, 0x6, 0x6, 0x7 },
    { 0x30, 0xA0, 0x48, 0xB8, 0x4, 0x7, 0x6, 0x8 },
    { 0xE0, 0xA0, 0xF8, 0xB8, 0x5, 0x8, 0x7, 0x8 }
};

static const GridMenuCursorPosition Unk_ov13_02229BD4[] = {
    { 0x8, 0xA0, 0xC8, 0xB8, 0x0, 0x0, 0x0, 0x1 },
    { 0xE0, 0xA0, 0xF8, 0xB8, 0x1, 0x1, 0x0, 0x1 }
};

static const GridMenuCursorPosition *const Unk_ov13_02229BC8[] = {
    Unk_ov13_02229C14,
    Unk_ov13_02229C74,
    Unk_ov13_02229BD4
};

void SetupBattleBagCursor(BattleBag *battleBag, enum BattleBagScreen screen)
{
    SetBattleSubMenuCursorPositions(battleBag->cursor, Unk_ov13_02229BC8[screen]);

    switch (screen) {
    case BATTLE_BAG_SCREEN_MENU:
        SetBattleSubMenuCursorCurrentPosition(battleBag->cursor, battleBag->currentBattlePocket);
        break;
    case BATTLE_BAG_SCREEN_POCKET_MENU:
        SetBattleSubMenuCursorCurrentPosition(battleBag->cursor, battleBag->context->pocketCurrentPagePositions[battleBag->currentBattlePocket]);
        break;
    case BATTLE_BAG_SCREEN_USE_ITEM:
        break;
    }
}

void DisableBattleBagCursor(BattleBag *battleBag)
{
    SetBattleSubMenuCursorVisibility(battleBag->cursor, FALSE);
    ResetBattleSubMenuCursorCurrentPosition(battleBag->cursor);
    ov16_0226DDE8(GetBattleSubMenuCursorSprites(battleBag->cursor));
}

static void ov13_02228070(BattleBag *param0)
{
    SpriteSystem *v0;
    UnkStruct_ov16_0226DEEC *v1;

    v0 = BattleSystem_GetSpriteSystem(param0->context->battleSystem);

    ov16_0226DE44(v0, param0->spriteManager, param0->context->heapID, param0->palette, 46269, 46269, 46264, 46264);
    param0->unk_38 = ov16_0226DEEC(v0, param0->spriteManager, param0->context->heapID, 46269, 46269, 46264, 46264, 0, 0);
}

static void ov13_022280C8(BattleBag *param0)
{
    ov16_0226DF68(param0->unk_38);
    ov16_0226DEC4(param0->spriteManager, 46269, 46269, 46264, 46264);
}

static const int Unk_ov13_02229BFC[3][2] = {
    { 0xC0, 0x18 },
    { 0x40, 0x10 },
    { 0x68, 0x98 }
};

void ov13_022280F0(BattleBag *param0, u8 param1)
{
    if (param0->context->isInCatchTutorial == 1) {
        ov16_0226DFB0(param0->unk_38, Unk_ov13_02229BFC[param1][0], Unk_ov13_02229BFC[param1][1]);
        ov16_0226DFD0(param0->unk_38, 60);
    } else {
        ov16_0226DFBC(param0->unk_38);
    }
}
