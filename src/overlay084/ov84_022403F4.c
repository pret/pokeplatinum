#include "overlay084/ov84_022403F4.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"
#include "generated/pokemon_types.h"

#include "struct_defs/struct_0207CB08.h"

#include "overlay084/ov84_0223B5A0.h"

#include "genders.h"
#include "gx_layers.h"
#include "item.h"
#include "move_table.h"
#include "sprite.h"
#include "sprite_system.h"
#include "type_icon.h"
#include "vram_transfer.h"

static void InitSpriteSystem(BagInterface *interface);
static void LoadSpriteResources(BagInterface *interface);
static void InitSprites(BagInterface *interface);
static void CalcPocketHighlighterMovement(BagInterface *interface);
static u8 CalcPocketHighlighterXForPocket(BagInterface *interface, u8 pocketIdx);
static void StepPocketHighlighterMovingAnim(BagInterface *interface);

static const SpriteTemplate sBagInterfaceSpriteTemplates[] = {
    [BAG_SPRITE_BAG] = {
        .x = 48,
        .y = 50,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC0F9, 0xC0F9, 0xC0F9, 0xC0F9, 0, 0 },
        .bgPriority = 1,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_POCKET_HIGHLIGHT] = {
        .x = 13,
        .y = 97,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC0FA, 0xC0FA, 0xC0FA, 0xC0FA, 0, 0 },
        .bgPriority = 0,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_POCKET_INDICATOR_LEFT_ARROW] = {
        .x = 2,
        .y = 96,
        .z = 0,
        .animIdx = 1,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC0FD, 0xC0FA, 0xC0FD, 0xC0FD, 0, 0 },
        .bgPriority = 0,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_POCKET_INDICATOR_RIGHT_ARROW] = {
        .x = 98,
        .y = 96,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC0FD, 0xC0FA, 0xC0FD, 0xC0FD, 0, 0 },
        .bgPriority = 0,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_ITEM_HIGHLIGHT] = {
        .x = 177,
        .y = 24,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC0FB, 0xC0FA, 0xC0FB, 0xC0FB, 0, 0 },
        .bgPriority = 1,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_ITEM_SORTING_POS_BAR] = {
        .x = 177,
        .y = 14,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC0FC, 0xC0FA, 0xC0FC, 0xC0FC, 0, 0 },
        .bgPriority = 1,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE] = {
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DSUB,
        .resources = { 0xC0FE, 0xC0FB, 0xC0FE, 0xC0FE, 0, 0 },
        .bgPriority = 0,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_ITEM] = {
        .x = 22,
        .y = 172,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC0FF, 0xC0FC, 0xC0FF, 0xC0FF, 0, 0 },
        .bgPriority = 1,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_ITEM_COUNT_ARROW_UP] = {
        .x = 220,
        .y = 156,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC100, 0xC0FD, 0xC100, 0xC100, 0, 0 },
        .bgPriority = 0,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_ITEM_COUNT_ARROW_DOWN] = {
        .x = 220,
        .y = 180,
        .z = 0,
        .animIdx = 1,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC100, 0xC0FD, 0xC100, 0xC100, 0, 0 },
        .bgPriority = 0,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_MOVE_TYPE] = {
        .x = 64,
        .y = 152,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC101, 0xC0FE, 0xC101, 0xC101, 0, 0 },
        .bgPriority = 0,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_MOVE_CATEGORY] = {
        .x = 168,
        .y = 152,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0xC102, 0xC0FE, 0xC101, 0xC101, 0, 0 },
        .bgPriority = 0,
        .vramTransfer = FALSE,
    },
};

void BagInterface_InitSprites(BagInterface *interface)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    VramTransfer_New(32, HEAP_ID_BAG);
    InitSpriteSystem(interface);
    LoadSpriteResources(interface);
    InitSprites(interface);
}

static void InitSpriteSystem(BagInterface *interface)
{
    SpriteResourceCapacities capacities = { 10, 6, 9, 9, 0, 0 };

    interface->spriteSystem = SpriteSystem_Alloc(HEAP_ID_BAG);
    interface->spriteMan = SpriteManager_New(interface->spriteSystem);

    RenderOamTemplate oamTemplate = {
        .mainOamStart = 0,
        .mainOamCount = 128,
        .mainAffineOamStart = 0,
        .mainAffineOamCount = 32,
        .subOamStart = 0,
        .subOamCount = 128,
        .subAffineOamStart = 0,
        .subAffineOamCount = 32,
    };

    CharTransferTemplateWithModes transferTemplate = {
        .maxTasks = 12,
        .sizeMain = 1024 * 128,
        .sizeSub = 1024 * 16,
        .modeMain = GX_OBJVRAMMODE_CHAR_1D_32K,
        .modeSub = GX_OBJVRAMMODE_CHAR_1D_32K
    };

    SpriteSystem_Init(interface->spriteSystem, &oamTemplate, &transferTemplate, 32);

    SpriteSystem_InitSprites(interface->spriteSystem, interface->spriteMan, NUM_BAG_INTERFACE_SPRITES);
    SpriteSystem_InitManagerWithCapacities(interface->spriteSystem, interface->spriteMan, &capacities);
}

static void LoadSpriteResources(BagInterface *interface)
{
    u32 bagSpriteIdx, bagPlttIdx;

    if (interface->trainerGender == GENDER_MALE) {
        bagSpriteIdx = 2;
        bagPlttIdx = 3;
    } else {
        bagSpriteIdx = 6;
        bagPlttIdx = 7;
    }

    SpriteSystem_LoadCharResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, bagSpriteIdx, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49401);
    SpriteSystem_LoadCharResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, 25, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49402);
    SpriteSystem_LoadCharResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, 28, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49403);
    SpriteSystem_LoadCharResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, 31, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49404);
    SpriteSystem_LoadCharResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, 10, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49405);
    SpriteSystem_LoadCharResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, 36, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 49406);
    SpriteSystem_LoadCharResObj(interface->spriteSystem, interface->spriteMan, NARC_INDEX_GRAPHIC__SHOP_GRA, 4, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49408);
    SpriteSystem_LoadCharResObj(interface->spriteSystem, interface->spriteMan, NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(ITEM_NONE, ITEM_FILE_TYPE_ICON), FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49407);
    TypeIcon_LoadChar(interface->spriteSystem, interface->spriteMan, NNS_G2D_VRAM_TYPE_2DMAIN, TYPE_NORMAL, 49409);
    CategoryIcon_LoadChar(interface->spriteSystem, interface->spriteMan, NNS_G2D_VRAM_TYPE_2DMAIN, CLASS_PHYSICAL, 49410);
    SpriteSystem_LoadPlttResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, bagPlttIdx, FALSE, PLTT_1, NNS_G2D_VRAM_TYPE_2DMAIN, 49401);
    SpriteSystem_LoadPlttResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, 20, FALSE, PLTT_2, NNS_G2D_VRAM_TYPE_2DMAIN, 49402);
    SpriteSystem_LoadPlttResObj(interface->spriteSystem, interface->spriteMan, NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(ITEM_NONE, ITEM_FILE_TYPE_PALETTE), FALSE, PLTT_1, NNS_G2D_VRAM_TYPE_2DMAIN, 49404);
    SpriteSystem_LoadPlttResObj(interface->spriteSystem, interface->spriteMan, NARC_INDEX_GRAPHIC__SHOP_GRA, 10, FALSE, PLTT_2, NNS_G2D_VRAM_TYPE_2DMAIN, 49405);
    TypeIcon_LoadPlttSrc(interface->spriteSystem, interface->spriteMan, NNS_G2D_VRAM_TYPE_2DMAIN, 49406);
    SpriteSystem_LoadPlttResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, 37, FALSE, PLTT_1, NNS_G2D_VRAM_TYPE_2DSUB, 49403);
    SpriteSystem_LoadCellResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, 1, FALSE, 49401);
    SpriteSystem_LoadCellResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, 24, FALSE, 49402);
    SpriteSystem_LoadCellResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, 27, FALSE, 49403);
    SpriteSystem_LoadCellResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, 30, FALSE, 49404);
    SpriteSystem_LoadCellResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, 9, FALSE, 49405);
    SpriteSystem_LoadCellResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, 35, FALSE, 49406);
    SpriteSystem_LoadCellResObj(interface->spriteSystem, interface->spriteMan, NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_IconNCERFile(), FALSE, 49407);
    SpriteSystem_LoadCellResObj(interface->spriteSystem, interface->spriteMan, NARC_INDEX_GRAPHIC__SHOP_GRA, 5, FALSE, 49408);
    SpriteSystem_LoadAnimResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, 0, FALSE, 49401);
    SpriteSystem_LoadAnimResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, 23, FALSE, 49402);
    SpriteSystem_LoadAnimResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, 26, FALSE, 49403);
    SpriteSystem_LoadAnimResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, 29, FALSE, 49404);
    SpriteSystem_LoadAnimResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, 8, FALSE, 49405);
    SpriteSystem_LoadAnimResObjFromOpenNarc(interface->spriteSystem, interface->spriteMan, interface->bagGraphicsNARC, 34, FALSE, 49406);
    SpriteSystem_LoadAnimResObj(interface->spriteSystem, interface->spriteMan, NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_IconNANRFile(), FALSE, 49407);
    SpriteSystem_LoadAnimResObj(interface->spriteSystem, interface->spriteMan, NARC_INDEX_GRAPHIC__SHOP_GRA, 6, FALSE, 49408);
    TypeIcon_LoadAnim(interface->spriteSystem, interface->spriteMan, 49409, 49409);
}

static void InitSprites(BagInterface *interface)
{
    for (u32 i = 0; i < NUM_BAG_INTERFACE_SPRITES; i++) {
        interface->sprites[i] = SpriteSystem_NewSprite(interface->spriteSystem, interface->spriteMan, &sBagInterfaceSpriteTemplates[i]);
    }

    ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_ITEM_SORTING_POS_BAR], FALSE);
    ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], FALSE);
    ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_MOVE_TYPE], FALSE);
    ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_MOVE_CATEGORY], FALSE);

    if ((interface->appArguments->context == BAG_CONTEXT_POFFIN_SINGLEPLAYER) || (interface->appArguments->context == BAG_CONTEXT_POFFIN_MULTIPLAYER)) {
        ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_POCKET_HIGHLIGHT], FALSE);
    }

    if (interface->numPockets == 1) {
        ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_POCKET_INDICATOR_LEFT_ARROW], FALSE);
        ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_POCKET_INDICATOR_RIGHT_ARROW], FALSE);
    }

    BagInterface_ToggleItemCountArrows(interface, FALSE);

    ManagedSprite_SetAnim(interface->sprites[BAG_SPRITE_BAG], interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].pocketType);
    ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_POCKET_HIGHLIGHT], CalcPocketHighlighterXForPocket(interface, interface->appArguments->currPocketIdx), 97);
    ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], 177, 24 + (interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorPos - 1) * 16);

    VecFx32 spriteScale = { FX32_ONE, FX32_ONE, FX32_ONE };
    Sprite_SetAffineScaleEx(interface->sprites[BAG_SPRITE_BAG]->sprite, &spriteScale, AFFINE_OVERWRITE_MODE_DOUBLE);
}

void BagInterface_FreeSprites(BagInterface *interface)
{
    for (u32 i = 0; i < NUM_BAG_INTERFACE_SPRITES; i++) {
        Sprite_DeleteAndFreeResources(interface->sprites[i]);
    }

    SpriteSystem_FreeResourcesAndManager(interface->spriteSystem, interface->spriteMan);
    SpriteSystem_Free(interface->spriteSystem);
}

void BagInterface_TickSpriteAnimations(BagInterface *interface)
{
    for (u32 i = 0; i < NUM_BAG_INTERFACE_SPRITES; i++) {
        ManagedSprite_TickFrame(interface->sprites[i]);
    }
}

void BahInterface_UpdateItemSprite(BagInterface *interface, u16 item)
{
    SpriteSystem_ReplaceCharResObj(interface->spriteSystem, interface->spriteMan, NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(item, ITEM_FILE_TYPE_ICON), FALSE, 49407);
    SpriteSystem_ReplacePlttResObj(interface->spriteSystem, interface->spriteMan, NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(item, ITEM_FILE_TYPE_PALETTE), FALSE, 49404);
}

void BagInterface_SetHighlighterSpritesPalette(BagInterface *interface, u8 palette)
{
    ManagedSprite_SetExplicitPalette(interface->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], palette);
    ManagedSprite_SetExplicitPalette(interface->sprites[BAG_SPRITE_POCKET_HIGHLIGHT], palette);
}

u8 BagInterface_IsPocketHighlighterDoneMoving(BagInterface *interface)
{
    return interface->pocketHighlighterMovtMan.moving == FALSE;
}

void BagInterface_StartMovingPocketHighlighter(BagInterface *interface)
{
    interface->pocketHighlighterMovtMan.currentStep = 0;
    interface->pocketHighlighterMovtMan.moving = TRUE;

    CalcPocketHighlighterMovement(interface);
}

void BagInterface_DoPocketHighlighterMovementStep(BagInterface *interface)
{
    switch (interface->pocketHighlighterMovtMan.moving) {
    case FALSE:
        break;
    case TRUE:
        StepPocketHighlighterMovingAnim(interface);
        break;
    }
}

static void StepPocketHighlighterMovingAnim(BagInterface *interface)
{
    VecFx32 pocketHighlightPos = *(Sprite_GetPosition(interface->sprites[BAG_SPRITE_POCKET_HIGHLIGHT]->sprite));

    if (interface->pocketHighlighterMovtMan.direction == 0) {
        pocketHighlightPos.x -= interface->pocketHighlighterMovtMan.positions[interface->pocketHighlighterMovtMan.currentStep];
    } else {
        pocketHighlightPos.x += interface->pocketHighlighterMovtMan.positions[interface->pocketHighlighterMovtMan.currentStep];
    }

    Sprite_SetPosition(interface->sprites[BAG_SPRITE_POCKET_HIGHLIGHT]->sprite, &pocketHighlightPos);
    interface->pocketHighlighterMovtMan.currentStep++;

    if (interface->pocketHighlighterMovtMan.currentStep == 8) {
        pocketHighlightPos.x = CalcPocketHighlighterXForPocket(interface, interface->nextPocketIdx) * FX32_ONE;
        Sprite_SetPosition(interface->sprites[BAG_SPRITE_POCKET_HIGHLIGHT]->sprite, &pocketHighlightPos);
        interface->pocketHighlighterMovtMan.moving = FALSE;
    }
}

static u8 CalcPocketHighlighterXForPocket(BagInterface *interface, u8 pocketIdx)
{
    return interface->pocketIndicatorLeftX + interface->pocketIndicatorSpacing * pocketIdx + 6;
}

static void CalcPocketHighlighterMovement(BagInterface *interface)
{
    VecFx32 pocketHighlighterPos = *(Sprite_GetPosition(interface->sprites[BAG_SPRITE_POCKET_HIGHLIGHT]->sprite));
    fx32 targetX = CalcPocketHighlighterXForPocket(interface, interface->nextPocketIdx) * FX32_ONE;

    fx32 displacement;
    if (targetX < pocketHighlighterPos.x) {
        displacement = (pocketHighlighterPos.x - targetX) / 100;
        interface->pocketHighlighterMovtMan.direction = 0;
    } else {
        displacement = (targetX - pocketHighlighterPos.x) / 100;
        interface->pocketHighlighterMovtMan.direction = 1;
    }

    interface->pocketHighlighterMovtMan.positions[0] = 0;
    interface->pocketHighlighterMovtMan.positions[1] = displacement * 40;
    interface->pocketHighlighterMovtMan.positions[2] = displacement * 25;
    interface->pocketHighlighterMovtMan.positions[3] = displacement * 15;
    interface->pocketHighlighterMovtMan.positions[4] = displacement * 10;
    interface->pocketHighlighterMovtMan.positions[5] = displacement * 7;
    interface->pocketHighlighterMovtMan.positions[6] = displacement * 3;
    interface->pocketHighlighterMovtMan.positions[7] = 0;
}

void BagInterface_ShowItemCountArrows(BagInterface *interface, u8 position)
{
    if (position == BAG_UI_ARROWS_POS_TRASH) {
        ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_ITEM_COUNT_ARROW_UP], 220, 156);
        ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_ITEM_COUNT_ARROW_DOWN], 220, 180);
    } else {
        ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_ITEM_COUNT_ARROW_UP], 162, 108);
        ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_ITEM_COUNT_ARROW_DOWN], 162, 132);
    }

    BagInterface_ToggleItemCountArrows(interface, TRUE);
}

void BagInterface_ToggleItemCountArrows(BagInterface *interface, u8 show)
{
    ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_ITEM_COUNT_ARROW_UP], show);
    ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_ITEM_COUNT_ARROW_DOWN], show);
}

void BagInterface_UpdateTypeAndCategoryIcons(BagInterface *interface, u16 item, u8 draw)
{
    ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_MOVE_TYPE], draw);
    ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_MOVE_CATEGORY], draw);

    if (draw == FALSE) {
        return;
    }

    u16 move = Item_MoveForTMHM(item);
    u16 moveType = MoveTable_LoadParam(move, MOVEATTRIBUTE_TYPE);
    u16 moveCategory = MoveTable_LoadParam(move, MOVEATTRIBUTE_CLASS);

    SpriteSystem_ReplaceCharResObj(interface->spriteSystem, interface->spriteMan, TypeIcon_GetNARC(), TypeIcon_GetChar(moveType), TRUE, 49409);
    ManagedSprite_SetExplicitPalette(interface->sprites[BAG_SPRITE_MOVE_TYPE], TypeIcon_GetPltt(moveType) + 6);
    SpriteSystem_ReplaceCharResObj(interface->spriteSystem, interface->spriteMan, CategoryIcon_GetNARC(), CategoryIcon_GetChar(moveCategory), TRUE, 49410);
    ManagedSprite_SetExplicitPalette(interface->sprites[BAG_SPRITE_MOVE_CATEGORY], CategoryIcon_GetPltt(moveCategory) + 6);
}

void BagInterface_DrawBtnShockwaveSprite(BagInterface *interface, s16 x, s16 y)
{
    ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], TRUE);
    ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], x, y);
    ManagedSprite_SetAnimationFrame(interface->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], 0);
    ManagedSprite_SetAnim(interface->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], 0);
}

void BagInterface_TickBtnShockwaveAnim(BagInterface *interface)
{
    if (ManagedSprite_GetDrawFlag(interface->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE]) == TRUE) {
        ManagedSprite_TickNFrames(interface->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], FX32_ONE);

        if (ManagedSprite_GetAnimationFrame(interface->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE]) == 2) {
            ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], FALSE);
        }
    }
}
