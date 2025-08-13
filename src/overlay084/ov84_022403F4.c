#include "overlay084/ov84_022403F4.h"

#include <nitro.h>
#include <string.h>

#include "generated/pokemon_types.h"

#include "struct_defs/struct_0207CB08.h"

#include "overlay084/ov84_0223B5A0.h"

#include "gx_layers.h"
#include "item.h"
#include "move_table.h"
#include "sprite.h"
#include "sprite_system.h"
#include "type_icon.h"
#include "vram_transfer.h"

static void ov84_02240424(BagInterfaceManager *param0);
static void ov84_022404C0(BagInterfaceManager *param0);
static void ov84_02240950(BagInterfaceManager *param0);
static void ov84_02240C48(BagInterfaceManager *param0);
static u8 GetIndicatorPocketSpriteX(BagInterfaceManager *param0, u8 param1);
static void ov84_02240B98(BagInterfaceManager *param0);

static const SpriteTemplate sBagInterfaceSpriteTemplates[] = {
    [BAG_SPRITE_BAG] = {
        .x = 0x30,
        .y = 0x32,
        .z = 0x0,
        .animIdx = 0x0,
        .priority = 0x1,
        .plttIdx = 0x0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC0F9, 0xC0F9, 0xC0F9, 0xC0F9, 0x0, 0x0 },
        .bgPriority = 0x1,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_POCKET_HIGHLIGHT] = {
        .x = 0xD,
        .y = 0x61,
        .z = 0x0,
        .animIdx = 0x0,
        .priority = 0x0,
        .plttIdx = 0x0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC0FA, 0xC0FA, 0xC0FA, 0xC0FA, 0x0, 0x0 },
        .bgPriority = 0x0,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_POCKET_INDICATOR_LEFT_ARROW] = {
        .x = 0x2,
        .y = 0x60,
        .z = 0x0,
        .animIdx = 0x1,
        .priority = 0x0,
        .plttIdx = 0x0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC0FD, 0xC0FA, 0xC0FD, 0xC0FD, 0x0, 0x0 },
        .bgPriority = 0x0,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_POCKET_INDICATOR_RIGHT_ARROW] = {
        .x = 0x62,
        .y = 0x60,
        .z = 0x0,
        .animIdx = 0x0,
        .priority = 0x0,
        .plttIdx = 0x0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC0FD, 0xC0FA, 0xC0FD, 0xC0FD, 0x0, 0x0 },
        .bgPriority = 0x0,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_ITEM_HIGHLIGHT] = {
        .x = 0xB1,
        .y = 0x18,
        .z = 0x0,
        .animIdx = 0x0,
        .priority = 0x0,
        .plttIdx = 0x0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC0FB, 0xC0FA, 0xC0FB, 0xC0FB, 0x0, 0x0 },
        .bgPriority = 0x1,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_ITEM_SORTING_POS] = {
        .x = 0xB1,
        .y = 0xE,
        .z = 0x0,
        .animIdx = 0x0,
        .priority = 0x0,
        .plttIdx = 0x0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC0FC, 0xC0FA, 0xC0FC, 0xC0FC, 0x0, 0x0 },
        .bgPriority = 0x1,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE] = {
        .x = 0x0,
        .y = 0x0,
        .z = 0x0,
        .animIdx = 0x0,
        .priority = 0x0,
        .plttIdx = 0x0,
        .vramType = NNS_G2D_VRAM_TYPE_2DSUB,
        .resources = { 0xC0FE, 0xC0FB, 0xC0FE, 0xC0FE, 0x0, 0x0 },
        .bgPriority = 0x0,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_ITEM] = {
        .x = 0x16,
        .y = 0xAC,
        .z = 0x0,
        .animIdx = 0x0,
        .priority = 0x0,
        .plttIdx = 0x0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC0FF, 0xC0FC, 0xC0FF, 0xC0FF, 0x0, 0x0 },
        .bgPriority = 0x1,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_ITEM_COUNT_ARROW_UP] = {
        .x = 0xDC,
        .y = 0x9C,
        .z = 0x0,
        .animIdx = 0x0,
        .priority = 0x0,
        .plttIdx = 0x0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC100, 0xC0FD, 0xC100, 0xC100, 0x0, 0x0 },
        .bgPriority = 0x0,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_ITEM_COUNT_ARROW_DOWN] = {
        .x = 0xDC,
        .y = 0xB4,
        .z = 0x0,
        .animIdx = 0x1,
        .priority = 0x0,
        .plttIdx = 0x0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC100, 0xC0FD, 0xC100, 0xC100, 0x0, 0x0 },
        .bgPriority = 0x0,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_MOVE_TYPE] = {
        .x = 0x40,
        .y = 0x98,
        .z = 0x0,
        .animIdx = 0x0,
        .priority = 0x0,
        .plttIdx = 0x0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC101, 0xC0FE, 0xC101, 0xC101, 0x0, 0x0 },
        .bgPriority = 0x0,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_MOVE_CATEGORY] = {
        .x = 0xA8,
        .y = 0x98,
        .z = 0x0,
        .animIdx = 0x0,
        .priority = 0x0,
        .plttIdx = 0x0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC102, 0xC0FE, 0xC101, 0xC101, 0x0, 0x0 },
        .bgPriority = 0x0,
        .vramTransfer = FALSE,
    },
};

void ov84_022403F4(BagInterfaceManager *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    VramTransfer_New(32, HEAP_ID_6);
    ov84_02240424(param0);
    ov84_022404C0(param0);
    ov84_02240950(param0);
}

static void ov84_02240424(BagInterfaceManager *param0)
{
    SpriteResourceCapacities v0 = { 10, 6, 9, 9, 0, 0 };

    param0->spriteSystem = SpriteSystem_Alloc(6);
    param0->spriteMan = SpriteManager_New(param0->spriteSystem);
    {
        RenderOamTemplate v1 = {
            0,
            128,
            0,
            32,
            0,
            128,
            0,
            32,
        };

        CharTransferTemplateWithModes v2 = {
            12,
            1024 * 128,
            1024 * 16,
            GX_OBJVRAMMODE_CHAR_1D_32K,
            GX_OBJVRAMMODE_CHAR_1D_32K
        };

        SpriteSystem_Init(param0->spriteSystem, &v1, &v2, 32);
    }

    SpriteSystem_InitSprites(param0->spriteSystem, param0->spriteMan, 12);
    SpriteSystem_InitManagerWithCapacities(param0->spriteSystem, param0->spriteMan, &v0);
}

static void ov84_022404C0(BagInterfaceManager *param0)
{
    u32 v0, v1;

    if (param0->trainerGender == 0) {
        v0 = 2;
        v1 = 3;
    } else {
        v0 = 6;
        v1 = 7;
    }

    SpriteSystem_LoadCharResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, v0, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49401);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 25, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49402);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 28, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49403);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 31, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49404);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 10, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49405);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 36, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 49406);
    SpriteSystem_LoadCharResObj(param0->spriteSystem, param0->spriteMan, 62, 4, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49408);
    SpriteSystem_LoadCharResObj(param0->spriteSystem, param0->spriteMan, 16, Item_FileID(ITEM_NONE, ITEM_FILE_TYPE_ICON), FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49407);
    TypeIcon_LoadChar(param0->spriteSystem, param0->spriteMan, NNS_G2D_VRAM_TYPE_2DMAIN, TYPE_NORMAL, 49409);
    CategoryIcon_LoadChar(param0->spriteSystem, param0->spriteMan, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 49410);
    SpriteSystem_LoadPlttResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, v1, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 49401);
    SpriteSystem_LoadPlttResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 20, FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 49402);
    SpriteSystem_LoadPlttResObj(param0->spriteSystem, param0->spriteMan, 16, Item_FileID(ITEM_NONE, ITEM_FILE_TYPE_PALETTE), 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 49404);
    SpriteSystem_LoadPlttResObj(param0->spriteSystem, param0->spriteMan, 62, 10, FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 49405);
    TypeIcon_LoadPlttSrc(param0->spriteSystem, param0->spriteMan, NNS_G2D_VRAM_TYPE_2DMAIN, 49406);
    SpriteSystem_LoadPlttResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 37, FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, 49403);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 1, FALSE, 49401);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 24, FALSE, 49402);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 27, FALSE, 49403);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 30, FALSE, 49404);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 9, FALSE, 49405);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 35, FALSE, 49406);
    SpriteSystem_LoadCellResObj(param0->spriteSystem, param0->spriteMan, 16, Item_IconNCERFile(), FALSE, 49407);
    SpriteSystem_LoadCellResObj(param0->spriteSystem, param0->spriteMan, 62, 5, FALSE, 49408);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 0, FALSE, 49401);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 23, FALSE, 49402);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 26, FALSE, 49403);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 29, FALSE, 49404);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 8, FALSE, 49405);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 34, FALSE, 49406);
    SpriteSystem_LoadAnimResObj(param0->spriteSystem, param0->spriteMan, 16, Item_IconNANRFile(), FALSE, 49407);
    SpriteSystem_LoadAnimResObj(param0->spriteSystem, param0->spriteMan, 62, 6, FALSE, 49408);
    TypeIcon_LoadAnim(param0->spriteSystem, param0->spriteMan, 49409, 49409);
}

static void ov84_02240950(BagInterfaceManager *param0)
{
    u32 v0;

    for (v0 = 0; v0 < NUM_BAG_INTERFACE_SPRITES; v0++) {
        param0->sprites[v0] = SpriteSystem_NewSprite(param0->spriteSystem, param0->spriteMan, &sBagInterfaceSpriteTemplates[v0]);
    }

    ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_ITEM_SORTING_POS], FALSE);
    ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], FALSE);
    ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_MOVE_TYPE], FALSE);
    ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_MOVE_CATEGORY], FALSE);

    if ((param0->appArguments->context == BAG_CONTEXT_POFFIN_SINGLEPLAYER) || (param0->appArguments->context == BAG_CONTEXT_POFFIN_MULTIPLAYER)) {
        ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_POCKET_HIGHLIGHT], FALSE);
    }

    if (param0->numPockets == 1) {
        ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_POCKET_INDICATOR_LEFT_ARROW], FALSE);
        ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_POCKET_INDICATOR_RIGHT_ARROW], FALSE);
    }

    ov84_02240D3C(param0, 0);

    ManagedSprite_SetAnim(param0->sprites[BAG_SPRITE_BAG], param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType);
    ManagedSprite_SetPositionXY(param0->sprites[BAG_SPRITE_POCKET_HIGHLIGHT], GetIndicatorPocketSpriteX(param0, param0->appArguments->currPocketIdx), 97);
    ManagedSprite_SetPositionXY(param0->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], 177, 24 + (param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorPos - 1) * 16);

    {
        VecFx32 v1 = { FX32_ONE, FX32_ONE, FX32_ONE };
        Sprite_SetAffineScaleEx(param0->sprites[BAG_SPRITE_BAG]->sprite, &v1, 2);
    }
}

void BagInterface_FreeSprites(BagInterfaceManager *param0)
{
    u32 v0;

    for (v0 = 0; v0 < NUM_BAG_INTERFACE_SPRITES; v0++) {
        Sprite_DeleteAndFreeResources(param0->sprites[v0]);
    }

    SpriteSystem_FreeResourcesAndManager(param0->spriteSystem, param0->spriteMan);
    SpriteSystem_Free(param0->spriteSystem);
}

void BagInterface_TickSpriteAnimations(BagInterfaceManager *param0)
{
    u32 v0;

    for (v0 = 0; v0 < NUM_BAG_INTERFACE_SPRITES; v0++) {
        ManagedSprite_TickFrame(param0->sprites[v0]);
    }
}

void ov84_02240AD8(BagInterfaceManager *param0, u16 param1)
{
    SpriteSystem_ReplaceCharResObj(param0->spriteSystem, param0->spriteMan, 16, Item_FileID(param1, ITEM_FILE_TYPE_ICON), FALSE, 49407);
    SpriteSystem_ReplacePlttResObj(param0->spriteSystem, param0->spriteMan, 16, Item_FileID(param1, ITEM_FILE_TYPE_PALETTE), FALSE, 49404);
}

void ov84_02240B34(BagInterfaceManager *param0, u8 param1)
{
    ManagedSprite_SetExplicitPalette(param0->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], param1);
    ManagedSprite_SetExplicitPalette(param0->sprites[BAG_SPRITE_POCKET_HIGHLIGHT], param1);
}

u8 ov84_02240B50(BagInterfaceManager *param0)
{
    if (param0->unk_454.unk_00 == 0) {
        return 1;
    }

    return 0;
}

void ov84_02240B68(BagInterfaceManager *param0)
{
    param0->unk_454.unk_03 = 0;
    param0->unk_454.unk_00 = 1;

    ov84_02240C48(param0);
}

void ov84_02240B80(BagInterfaceManager *param0)
{
    switch (param0->unk_454.unk_00) {
    case 0:
        break;
    case 1:
        ov84_02240B98(param0);
        break;
    }
}

static void ov84_02240B98(BagInterfaceManager *param0)
{
    VecFx32 v0;

    v0 = *(Sprite_GetPosition(param0->sprites[BAG_SPRITE_POCKET_HIGHLIGHT]->sprite));

    if (param0->unk_454.unk_01 == 0) {
        v0.x -= param0->unk_454.unk_04[param0->unk_454.unk_03];
    } else {
        v0.x += param0->unk_454.unk_04[param0->unk_454.unk_03];
    }

    Sprite_SetPosition(param0->sprites[BAG_SPRITE_POCKET_HIGHLIGHT]->sprite, &v0);
    param0->unk_454.unk_03++;

    if (param0->unk_454.unk_03 == 8) {
        v0.x = GetIndicatorPocketSpriteX(param0, param0->nextPocketIdx) * FX32_ONE;
        Sprite_SetPosition(param0->sprites[BAG_SPRITE_POCKET_HIGHLIGHT]->sprite, &v0);
        param0->unk_454.unk_00 = 0;
    }
}

static u8 GetIndicatorPocketSpriteX(BagInterfaceManager *param0, u8 pocketIdx)
{
    return 0 * 8 + param0->pocketIndicatorLeftX + param0->pocketIndicatorSpacing * pocketIdx + 6;
}

static void ov84_02240C48(BagInterfaceManager *param0)
{
    VecFx32 v0;
    fx32 v1;

    v0 = *(Sprite_GetPosition(param0->sprites[BAG_SPRITE_POCKET_HIGHLIGHT]->sprite));
    v1 = GetIndicatorPocketSpriteX(param0, param0->nextPocketIdx) * FX32_ONE;

    if (v1 < v0.x) {
        v1 = (v0.x - v1) / 100;
        param0->unk_454.unk_01 = 0;
    } else {
        v1 = (v1 - v0.x) / 100;
        param0->unk_454.unk_01 = 1;
    }

    param0->unk_454.unk_04[0] = 0;
    param0->unk_454.unk_04[1] = v1 * 40;
    param0->unk_454.unk_04[2] = v1 * 25;
    param0->unk_454.unk_04[3] = v1 * 15;
    param0->unk_454.unk_04[4] = v1 * 10;
    param0->unk_454.unk_04[5] = v1 * 7;
    param0->unk_454.unk_04[6] = v1 * 3;
    param0->unk_454.unk_04[7] = 0;
}

void ov84_02240CF0(BagInterfaceManager *param0, u8 param1)
{
    if (param1 == 0) {
        ManagedSprite_SetPositionXY(param0->sprites[BAG_SPRITE_ITEM_COUNT_ARROW_UP], 220, 156);
        ManagedSprite_SetPositionXY(param0->sprites[BAG_SPRITE_ITEM_COUNT_ARROW_DOWN], 220, 180);
    } else {
        ManagedSprite_SetPositionXY(param0->sprites[BAG_SPRITE_ITEM_COUNT_ARROW_UP], 162, 108);
        ManagedSprite_SetPositionXY(param0->sprites[BAG_SPRITE_ITEM_COUNT_ARROW_DOWN], 162, 132);
    }

    ov84_02240D3C(param0, TRUE);
}

void ov84_02240D3C(BagInterfaceManager *param0, u8 param1)
{
    ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_ITEM_COUNT_ARROW_UP], param1);
    ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_ITEM_COUNT_ARROW_DOWN], param1);
}

void UpdateTypeAndCategoryIcons(BagInterfaceManager *param0, u16 item, u8 draw)
{
    u16 move;
    u16 moveType;
    u16 moveCategory;

    ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_MOVE_TYPE], draw);
    ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_MOVE_CATEGORY], draw);

    if (draw == FALSE) {
        return;
    }

    move = Item_MoveForTMHM(item);
    moveType = MoveTable_LoadParam(move, MOVEATTRIBUTE_TYPE);
    moveCategory = MoveTable_LoadParam(move, MOVEATTRIBUTE_CLASS);

    SpriteSystem_ReplaceCharResObj(param0->spriteSystem, param0->spriteMan, TypeIcon_GetNARC(), TypeIcon_GetChar(moveType), 1, 49409);
    ManagedSprite_SetExplicitPalette(param0->sprites[BAG_SPRITE_MOVE_TYPE], TypeIcon_GetPltt(moveType) + 6);
    SpriteSystem_ReplaceCharResObj(param0->spriteSystem, param0->spriteMan, CategoryIcon_GetNARC(), CategoryIcon_GetChar(moveCategory), 1, 49410);
    ManagedSprite_SetExplicitPalette(param0->sprites[BAG_SPRITE_MOVE_CATEGORY], CategoryIcon_GetPltt(moveCategory) + 6);
}

void ov84_02240E24(BagInterfaceManager *param0, s16 param1, s16 param2)
{
    ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], 1);
    ManagedSprite_SetPositionXY(param0->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], param1, param2);
    ManagedSprite_SetAnimationFrame(param0->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], 0);
    ManagedSprite_SetAnim(param0->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], 0);
}

void ov84_02240E5C(BagInterfaceManager *param0)
{
    if (ManagedSprite_GetDrawFlag(param0->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE]) == 1) {
        ManagedSprite_TickNFrames(param0->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], FX32_ONE);

        if (ManagedSprite_GetAnimationFrame(param0->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE]) == 2) {
            ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], 0);
        }
    }
}
