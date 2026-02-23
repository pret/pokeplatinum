#include "applications/bag/sprites.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"
#include "generated/pokemon_types.h"

#include "applications/bag/main.h"

#include "bag_context.h"
#include "genders.h"
#include "gx_layers.h"
#include "item.h"
#include "move_classes.h"
#include "move_table.h"
#include "sprite.h"
#include "sprite_system.h"
#include "type_icon.h"
#include "vram_transfer.h"

#include "res/graphics/bag/bag_graphics.naix"
#include "res/graphics/shop_menu/shop_gra.naix"

static void InitSpriteSystem(BagController *controller);
static void LoadSpriteResources(BagController *controller);
static void InitSprites(BagController *controller);
static void CalcPocketHighlightMovement(BagController *controller);
static u8 CalcPocketHighlightXForPocket(BagController *controller, u8 pocketIdx);
static void StepPocketHighlightMovingAnim(BagController *controller);

static const SpriteTemplate sBagUISpriteTemplates[] = {
    [BAG_SPRITE_BAG] = {
        .x = 48,
        .y = 50,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 49401, 49401, 49401, 49401, 0, 0 },
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
        .resources = { 49402, 49402, 49402, 49402, 0, 0 },
        .bgPriority = 0,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_POCKET_SELECTOR_LEFT_ARROW] = {
        .x = 2,
        .y = 96,
        .z = 0,
        .animIdx = 1,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 49405, 49402, 49405, 49405, 0, 0 },
        .bgPriority = 0,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_POCKET_SELECTOR_RIGHT_ARROW] = {
        .x = 98,
        .y = 96,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 49405, 49402, 49405, 49405, 0, 0 },
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
        .resources = { 49403, 49402, 49403, 49403, 0, 0 },
        .bgPriority = 1,
        .vramTransfer = FALSE,
    },
    [BAG_SPRITE_MOVING_ITEM_POS_BAR] = {
        .x = 177,
        .y = 14,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 49404, 49402, 49404, 49404, 0, 0 },
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
        .resources = { 49406, 49403, 49406, 49406, 0, 0 },
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
        .resources = { 49407, 49404, 49407, 49407, 0, 0 },
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
        .resources = { 49408, 49405, 49408, 49408, 0, 0 },
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
        .resources = { 49408, 49405, 49408, 49408, 0, 0 },
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
        .resources = { 49409, 49406, 49409, 49409, 0, 0 },
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
        .resources = { 49410, 49406, 49409, 49409, 0, 0 },
        .bgPriority = 0,
        .vramTransfer = FALSE,
    },
};

void BagUI_InitSprites(BagController *controller)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    VramTransfer_New(32, HEAP_ID_BAG);
    InitSpriteSystem(controller);
    LoadSpriteResources(controller);
    InitSprites(controller);
}

static void InitSpriteSystem(BagController *controller)
{
    SpriteResourceCapacities capacities = { 10, 6, 9, 9, 0, 0 };

    controller->spriteSystem = SpriteSystem_Alloc(HEAP_ID_BAG);
    controller->spriteMan = SpriteManager_New(controller->spriteSystem);

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

    SpriteSystem_Init(controller->spriteSystem, &oamTemplate, &transferTemplate, 32);

    SpriteSystem_InitSprites(controller->spriteSystem, controller->spriteMan, NUM_BAG_UI_SPRITES);
    SpriteSystem_InitManagerWithCapacities(controller->spriteSystem, controller->spriteMan, &capacities);
}

static void LoadSpriteResources(BagController *controller)
{
    u32 bagSpriteIdx, bagPaletteIdx;

    if (controller->trainerGender == GENDER_MALE) {
        bagSpriteIdx = bag_sprite_male_NCGR;
        bagPaletteIdx = bag_sprite_male_NCLR;
    } else {
        bagSpriteIdx = bag_sprite_female_NCGR;
        bagPaletteIdx = bag_sprite_female_NCLR;
    }

    SpriteSystem_LoadCharResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, bagSpriteIdx, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49401);
    SpriteSystem_LoadCharResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, pocket_highlight_NCGR, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49402);
    SpriteSystem_LoadCharResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, item_highlight_NCGR, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49403);
    SpriteSystem_LoadCharResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, moving_item_pos_bar_NCGR, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49404);
    SpriteSystem_LoadCharResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, pocket_selector_arrows_NCGR, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49405);
    SpriteSystem_LoadCharResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, button_shockwave_NCGR, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 49406);
    SpriteSystem_LoadCharResObj(controller->spriteSystem, controller->spriteMan, NARC_INDEX_GRAPHIC__SHOP_GRA, scroll_arrow_NCGR, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49408);
    SpriteSystem_LoadCharResObj(controller->spriteSystem, controller->spriteMan, NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(ITEM_NONE, ITEM_FILE_TYPE_ICON), FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49407);
    TypeIcon_LoadChar(controller->spriteSystem, controller->spriteMan, NNS_G2D_VRAM_TYPE_2DMAIN, TYPE_NORMAL, 49409);
    CategoryIcon_LoadChar(controller->spriteSystem, controller->spriteMan, NNS_G2D_VRAM_TYPE_2DMAIN, CLASS_PHYSICAL, 49410);
    SpriteSystem_LoadPlttResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, bagPaletteIdx, FALSE, PLTT_1, NNS_G2D_VRAM_TYPE_2DMAIN, 49401);
    SpriteSystem_LoadPlttResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, ui_elements_NCLR, FALSE, PLTT_2, NNS_G2D_VRAM_TYPE_2DMAIN, 49402);
    SpriteSystem_LoadPlttResObj(controller->spriteSystem, controller->spriteMan, NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(ITEM_NONE, ITEM_FILE_TYPE_PALETTE), FALSE, PLTT_1, NNS_G2D_VRAM_TYPE_2DMAIN, 49404);
    SpriteSystem_LoadPlttResObj(controller->spriteSystem, controller->spriteMan, NARC_INDEX_GRAPHIC__SHOP_GRA, sprites_NCLR, FALSE, PLTT_2, NNS_G2D_VRAM_TYPE_2DMAIN, 49405);
    TypeIcon_LoadPlttSrc(controller->spriteSystem, controller->spriteMan, NNS_G2D_VRAM_TYPE_2DMAIN, 49406);
    SpriteSystem_LoadPlttResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, button_shockwave_NCLR, FALSE, PLTT_1, NNS_G2D_VRAM_TYPE_2DSUB, 49403);
    SpriteSystem_LoadCellResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, bag_sprite_cell_NCER, FALSE, 49401);
    SpriteSystem_LoadCellResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, pocket_highlight_cell_NCER, FALSE, 49402);
    SpriteSystem_LoadCellResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, item_highlight_cell_NCER, FALSE, 49403);
    SpriteSystem_LoadCellResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, moving_item_pos_bar_cell_NCER, FALSE, 49404);
    SpriteSystem_LoadCellResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, pocket_selector_arrows_cell_NCER, FALSE, 49405);
    SpriteSystem_LoadCellResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, button_shockwave_cell_NCER, FALSE, 49406);
    SpriteSystem_LoadCellResObj(controller->spriteSystem, controller->spriteMan, NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_IconNCERFile(), FALSE, 49407);
    SpriteSystem_LoadCellResObj(controller->spriteSystem, controller->spriteMan, NARC_INDEX_GRAPHIC__SHOP_GRA, scroll_arrow_cell_NCER, FALSE, 49408);
    SpriteSystem_LoadAnimResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, bag_sprite_anim_NANR, FALSE, 49401);
    SpriteSystem_LoadAnimResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, pocket_highlight_anim_NANR, FALSE, 49402);
    SpriteSystem_LoadAnimResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, item_highlight_anim_NANR, FALSE, 49403);
    SpriteSystem_LoadAnimResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, moving_item_pos_bar_anim_NANR, FALSE, 49404);
    SpriteSystem_LoadAnimResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, pocket_selector_arrows_anim_NANR, FALSE, 49405);
    SpriteSystem_LoadAnimResObjFromOpenNarc(controller->spriteSystem, controller->spriteMan, controller->bagGraphicsNARC, button_shockwave_anim_NANR, FALSE, 49406);
    SpriteSystem_LoadAnimResObj(controller->spriteSystem, controller->spriteMan, NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_IconNANRFile(), FALSE, 49407);
    SpriteSystem_LoadAnimResObj(controller->spriteSystem, controller->spriteMan, NARC_INDEX_GRAPHIC__SHOP_GRA, scroll_arrow_anim_NANR, FALSE, 49408);
    TypeIcon_LoadAnim(controller->spriteSystem, controller->spriteMan, 49409, 49409);
}

static void InitSprites(BagController *interface)
{
    for (u32 i = 0; i < NUM_BAG_UI_SPRITES; i++) {
        interface->sprites[i] = SpriteSystem_NewSprite(interface->spriteSystem, interface->spriteMan, &sBagUISpriteTemplates[i]);
    }

    ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_MOVING_ITEM_POS_BAR], FALSE);
    ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], FALSE);
    ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_MOVE_TYPE], FALSE);
    ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_MOVE_CATEGORY], FALSE);

    if ((interface->bagCtx->mode == 4) || (interface->bagCtx->mode == 5)) {
        ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_POCKET_HIGHLIGHT], FALSE);
    }

    if (interface->numPockets == 1) {
        ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_POCKET_SELECTOR_LEFT_ARROW], FALSE);
        ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_POCKET_SELECTOR_RIGHT_ARROW], FALSE);
    }

    BagUI_ToggleItemCountArrows(interface, FALSE);

    ManagedSprite_SetAnim(interface->sprites[BAG_SPRITE_BAG], interface->bagCtx->accessiblePockets[interface->bagCtx->currPocketIdx].pocketType);
    ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_POCKET_HIGHLIGHT], CalcPocketHighlightXForPocket(interface, interface->bagCtx->currPocketIdx), 97);
    ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], 177, 24 + (interface->bagCtx->accessiblePockets[interface->bagCtx->currPocketIdx].cursorPos - 1) * 16);

    VecFx32 spriteScale = { FX32_ONE, FX32_ONE, FX32_ONE };
    Sprite_SetAffineScaleEx(interface->sprites[BAG_SPRITE_BAG]->sprite, &spriteScale, AFFINE_OVERWRITE_MODE_DOUBLE);
}

void BagUI_FreeSprites(BagController *controller)
{
    for (u32 i = 0; i < NUM_BAG_UI_SPRITES; i++) {
        Sprite_DeleteAndFreeResources(controller->sprites[i]);
    }

    SpriteSystem_FreeResourcesAndManager(controller->spriteSystem, controller->spriteMan);
    SpriteSystem_Free(controller->spriteSystem);
}

void BagUI_TickSpriteAnimations(BagController *controller)
{
    for (u32 i = 0; i < NUM_BAG_UI_SPRITES; i++) {
        ManagedSprite_TickFrame(controller->sprites[i]);
    }
}

void BagUI_UpdateItemSprite(BagController *controller, u16 item)
{
    SpriteSystem_ReplaceCharResObj(controller->spriteSystem, controller->spriteMan, NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(item, ITEM_FILE_TYPE_ICON), FALSE, 49407);
    SpriteSystem_ReplacePlttResObj(controller->spriteSystem, controller->spriteMan, NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(item, ITEM_FILE_TYPE_PALETTE), FALSE, 49404);
}

void BagUI_SetHighlightSpritesPalette(BagController *controller, u8 palette)
{
    ManagedSprite_SetExplicitPalette(controller->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], palette);
    ManagedSprite_SetExplicitPalette(controller->sprites[BAG_SPRITE_POCKET_HIGHLIGHT], palette);
}

u8 BagUI_IsPocketHighlightDoneMoving(BagController *controller)
{
    return controller->pocketHighlight.isMoving == FALSE;
}

void BagUI_StartMovingPocketHighlight(BagController *controller)
{
    controller->pocketHighlight.currentStep = 0;
    controller->pocketHighlight.isMoving = TRUE;

    CalcPocketHighlightMovement(controller);
}

void BagUI_StepPocketHighlightMovement(BagController *controller)
{
    switch (controller->pocketHighlight.isMoving) {
    case FALSE:
        break;
    case TRUE:
        StepPocketHighlightMovingAnim(controller);
        break;
    }
}

static void StepPocketHighlightMovingAnim(BagController *controller)
{
    VecFx32 pocketHighlighPos = *(Sprite_GetPosition(controller->sprites[BAG_SPRITE_POCKET_HIGHLIGHT]->sprite));

    if (controller->pocketHighlight.direction == 0) {
        pocketHighlighPos.x -= controller->pocketHighlight.positions[controller->pocketHighlight.currentStep];
    } else {
        pocketHighlighPos.x += controller->pocketHighlight.positions[controller->pocketHighlight.currentStep];
    }

    Sprite_SetPosition(controller->sprites[BAG_SPRITE_POCKET_HIGHLIGHT]->sprite, &pocketHighlighPos);
    controller->pocketHighlight.currentStep++;

    if (controller->pocketHighlight.currentStep == 8) {
        pocketHighlighPos.x = CalcPocketHighlightXForPocket(controller, controller->nextPocket) * FX32_ONE;
        Sprite_SetPosition(controller->sprites[BAG_SPRITE_POCKET_HIGHLIGHT]->sprite, &pocketHighlighPos);
        controller->pocketHighlight.isMoving = 0;
    }
}

static u8 CalcPocketHighlightXForPocket(BagController *controller, u8 pocketIdx)
{
    return controller->pocketSelectorIconsX + controller->pocketSelectorIconsSpacing * pocketIdx + 6;
}

static void CalcPocketHighlightMovement(BagController *controller)
{
    VecFx32 pocketHighlighterPos = *(Sprite_GetPosition(controller->sprites[BAG_SPRITE_POCKET_HIGHLIGHT]->sprite));
    fx32 targetX = CalcPocketHighlightXForPocket(controller, controller->nextPocket) * FX32_ONE;

    fx32 displacement;
    if (targetX < pocketHighlighterPos.x) {
        displacement = (pocketHighlighterPos.x - targetX) / 100;
        controller->pocketHighlight.direction = 0;
    } else {
        displacement = (targetX - pocketHighlighterPos.x) / 100;
        controller->pocketHighlight.direction = 1;
    }

    controller->pocketHighlight.positions[0] = 0;
    controller->pocketHighlight.positions[1] = displacement * 40;
    controller->pocketHighlight.positions[2] = displacement * 25;
    controller->pocketHighlight.positions[3] = displacement * 15;
    controller->pocketHighlight.positions[4] = displacement * 10;
    controller->pocketHighlight.positions[5] = displacement * 7;
    controller->pocketHighlight.positions[6] = displacement * 3;
    controller->pocketHighlight.positions[7] = 0;
}

void BagUI_ShowItemCountArrows(BagController *controller, u8 position)
{
    if (position == BAG_ITEM_COUNT_ARROWS_POS_TRASH) {
        ManagedSprite_SetPositionXY(controller->sprites[BAG_SPRITE_ITEM_COUNT_ARROW_UP], 220, 156);
        ManagedSprite_SetPositionXY(controller->sprites[BAG_SPRITE_ITEM_COUNT_ARROW_DOWN], 220, 180);
    } else {
        ManagedSprite_SetPositionXY(controller->sprites[BAG_SPRITE_ITEM_COUNT_ARROW_UP], 162, 108);
        ManagedSprite_SetPositionXY(controller->sprites[BAG_SPRITE_ITEM_COUNT_ARROW_DOWN], 162, 132);
    }

    BagUI_ToggleItemCountArrows(controller, TRUE);
}

void BagUI_ToggleItemCountArrows(BagController *controller, u8 show)
{
    ManagedSprite_SetDrawFlag(controller->sprites[BAG_SPRITE_ITEM_COUNT_ARROW_UP], show);
    ManagedSprite_SetDrawFlag(controller->sprites[BAG_SPRITE_ITEM_COUNT_ARROW_DOWN], show);
}

void BagUI_UpdateTypeAndCategoryIcons(BagController *controller, u16 item, u8 draw)
{
    ManagedSprite_SetDrawFlag(controller->sprites[BAG_SPRITE_MOVE_TYPE], draw);
    ManagedSprite_SetDrawFlag(controller->sprites[BAG_SPRITE_MOVE_CATEGORY], draw);

    if (draw == FALSE) {
        return;
    }

    u16 move = Item_MoveForTMHM(item);
    u16 moveType = MoveTable_LoadParam(move, MOVEATTRIBUTE_TYPE);
    u16 moveCategory = MoveTable_LoadParam(move, MOVEATTRIBUTE_CLASS);

    SpriteSystem_ReplaceCharResObj(controller->spriteSystem, controller->spriteMan, TypeIcon_GetNARC(), TypeIcon_GetChar(moveType), TRUE, 49409);
    ManagedSprite_SetExplicitPalette(controller->sprites[BAG_SPRITE_MOVE_TYPE], TypeIcon_GetPltt(moveType) + 6);
    SpriteSystem_ReplaceCharResObj(controller->spriteSystem, controller->spriteMan, CategoryIcon_GetNARC(), CategoryIcon_GetChar(moveCategory), TRUE, 49410);
    ManagedSprite_SetExplicitPalette(controller->sprites[BAG_SPRITE_MOVE_CATEGORY], CategoryIcon_GetPltt(moveCategory) + 6);
}

void BagUI_DrawBtnShockwave(BagController *controller, s16 x, s16 y)
{
    ManagedSprite_SetDrawFlag(controller->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], TRUE);
    ManagedSprite_SetPositionXY(controller->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], x, y);
    ManagedSprite_SetAnimationFrame(controller->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], 0);
    ManagedSprite_SetAnim(controller->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], 0);
}

void BagUI_TickBtnShockwaveAnim(BagController *controller)
{
    if (ManagedSprite_GetDrawFlag(controller->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE]) == TRUE) {
        ManagedSprite_TickNFrames(controller->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], FX32_ONE);

        if (ManagedSprite_GetAnimationFrame(controller->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE]) == 2) {
            ManagedSprite_SetDrawFlag(controller->sprites[BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE], FALSE);
        }
    }
}
