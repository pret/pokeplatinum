#include "overlay013/battle_bag_sprites.h"

#include "battle/ov16_0223DF00.h"
#include "battle/ov16_0226DB7C.h"
#include "battle/ov16_0226DE44.h"
#include "battle/struct_ov16_0226DC24_decl.h"
#include "overlay013/battle_bag.h"
#include "overlay013/battle_bag_utils.h"
#include "overlay013/battle_sub_menu_cursor.h"

#include "grid_menu_cursor_position.h"
#include "gx_layers.h"
#include "item.h"
#include "narc.h"
#include "palette.h"
#include "sprite_system.h"

#define SPRITE_MANAGER_IMAGE_RESOURCE_CAPACITY      8
#define SPRITE_MANAGER_ANIM_RESOURCE_CAPACITY       3
#define SPRITE_MANAGER_MULTI_ANIM_RESOURCE_CAPACITY 0
#define SPRITE_MANAGER_MAX_SPRITES                  12

#define POCKET_SLOT_1_RESOURCE_ID 46263
#define POCKET_SLOT_2_RESOURCE_ID 46264
#define POCKET_SLOT_3_RESOURCE_ID 46265
#define POCKET_SLOT_4_RESOURCE_ID 46266
#define POCKET_SLOT_5_RESOURCE_ID 46267
#define POCKET_SLOT_6_RESOURCE_ID 46268

#define CURSOR_IMAGE_RESOURCE_ID 46270
#define CURSOR_ANIM_RESOURCE_ID  46265

#define CATCH_TUTORIAL_CURSOR_IMAGE_RESOURCE_ID 46269
#define CATCH_TUTORIAL_CURSOR_ANIM_RESOURCE_ID  46264

#define PALETTE_FILE_SIZE 32

static void InitializeSpriteManager(BattleBag *battleBag);
static void LoadSpriteData(BattleBag *battleBag);
static void LoadItemIcon(BattleBag *battleBag, u16 item, u32 resourceID);
static void LoadItemPaletteData(BattleBag *battleBag, u16 item, u16 slotIndex, u32 resourceID);
static void InitializePocketItemSprites(BattleBag *battleBag);
static void DrawLastUsedItem(BattleBag *battleBag);
static void DrawPocketItems(BattleBag *battleBag);
static void DrawSelectedItem(BattleBag *battleBag);
static void InitializeCursor(BattleBag *battleBag);
static void CleanupCursor(BattleBag *battleBag);
static void InitializeCatchTutorialCursor(BattleBag *battleBag);
static void CleanupCatchTutorialCursor(BattleBag *battleBag);

static const int lastUsedItemSpritePosition[2] = {
    24,
    178
};

static const int pocketItemSpritePositions[][2] = {
    { 44, 45 },
    { 172, 45 },
    { 44, 93 },
    { 172, 93 },
    { 44, 141 },
    { 172, 141 }
};

static const int selectedItemSpritePosition[2] = {
    40,
    44
};

static const int pocketItemSpriteResourcesAndPriority[][5] = {
    { [SPRITE_RESOURCE_CHAR] = POCKET_SLOT_1_RESOURCE_ID, [SPRITE_RESOURCE_PLTT] = POCKET_SLOT_1_RESOURCE_ID, [SPRITE_RESOURCE_CELL] = POCKET_SLOT_1_RESOURCE_ID, [SPRITE_RESOURCE_ANIM] = POCKET_SLOT_1_RESOURCE_ID, 1 },
    { [SPRITE_RESOURCE_CHAR] = POCKET_SLOT_2_RESOURCE_ID, [SPRITE_RESOURCE_PLTT] = POCKET_SLOT_2_RESOURCE_ID, [SPRITE_RESOURCE_CELL] = POCKET_SLOT_1_RESOURCE_ID, [SPRITE_RESOURCE_ANIM] = POCKET_SLOT_1_RESOURCE_ID, 1 },
    { [SPRITE_RESOURCE_CHAR] = POCKET_SLOT_3_RESOURCE_ID, [SPRITE_RESOURCE_PLTT] = POCKET_SLOT_3_RESOURCE_ID, [SPRITE_RESOURCE_CELL] = POCKET_SLOT_1_RESOURCE_ID, [SPRITE_RESOURCE_ANIM] = POCKET_SLOT_1_RESOURCE_ID, 1 },
    { [SPRITE_RESOURCE_CHAR] = POCKET_SLOT_4_RESOURCE_ID, [SPRITE_RESOURCE_PLTT] = POCKET_SLOT_4_RESOURCE_ID, [SPRITE_RESOURCE_CELL] = POCKET_SLOT_1_RESOURCE_ID, [SPRITE_RESOURCE_ANIM] = POCKET_SLOT_1_RESOURCE_ID, 1 },
    { [SPRITE_RESOURCE_CHAR] = POCKET_SLOT_5_RESOURCE_ID, [SPRITE_RESOURCE_PLTT] = POCKET_SLOT_5_RESOURCE_ID, [SPRITE_RESOURCE_CELL] = POCKET_SLOT_1_RESOURCE_ID, [SPRITE_RESOURCE_ANIM] = POCKET_SLOT_1_RESOURCE_ID, 1 },
    { [SPRITE_RESOURCE_CHAR] = POCKET_SLOT_6_RESOURCE_ID, [SPRITE_RESOURCE_PLTT] = POCKET_SLOT_6_RESOURCE_ID, [SPRITE_RESOURCE_CELL] = POCKET_SLOT_1_RESOURCE_ID, [SPRITE_RESOURCE_ANIM] = POCKET_SLOT_1_RESOURCE_ID, 1 }
};

void BattleBagSprites_InitializeSprites(BattleBag *battleBag)
{
    InitializeSpriteManager(battleBag);
    LoadSpriteData(battleBag);
    InitializePocketItemSprites(battleBag);
    InitializeCursor(battleBag);
    InitializeCatchTutorialCursor(battleBag);

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void InitializeSpriteManager(BattleBag *battleBag)
{
    SpriteResourceCapacities capacities = { .asArray[SPRITE_RESOURCE_CHAR] = SPRITE_MANAGER_IMAGE_RESOURCE_CAPACITY, .asArray[SPRITE_RESOURCE_PLTT] = SPRITE_MANAGER_IMAGE_RESOURCE_CAPACITY, .asArray[SPRITE_RESOURCE_CELL] = SPRITE_MANAGER_ANIM_RESOURCE_CAPACITY, .asArray[SPRITE_RESOURCE_ANIM] = SPRITE_MANAGER_ANIM_RESOURCE_CAPACITY, .asArray[SPRITE_RESOURCE_MULTI_CELL] = SPRITE_MANAGER_MULTI_ANIM_RESOURCE_CAPACITY, .asArray[SPRITE_RESOURCE_MULTI_ANIM] = SPRITE_MANAGER_MULTI_ANIM_RESOURCE_CAPACITY };
    SpriteSystem *spriteSystem = ov16_0223E010(battleBag->context->battleSystem);

    battleBag->spriteManager = SpriteManager_New(spriteSystem);

    SpriteSystem_InitSprites(spriteSystem, battleBag->spriteManager, SPRITE_MANAGER_MAX_SPRITES);
    SpriteSystem_InitManagerWithCapacities(spriteSystem, battleBag->spriteManager, &capacities);
}

static void LoadSpriteData(BattleBag *battleBag)
{
    u32 i;
    NARC *narc = NARC_ctor(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, battleBag->context->heapID);
    SpriteSystem *spriteSystem = ov16_0223E010(battleBag->context->battleSystem);

    for (i = 0; i < BATTLE_POCKET_ITEMS_PER_PAGE; i++) {
        SpriteSystem_LoadCharResObjFromOpenNarc(spriteSystem, battleBag->spriteManager, narc, Item_FileID(ITEM_MASTER_BALL, ITEM_FILE_TYPE_ICON), FALSE, NNS_G2D_VRAM_TYPE_2DSUB, POCKET_SLOT_1_RESOURCE_ID + i);
        SpriteSystem_LoadPaletteBufferFromOpenNarc(battleBag->palette, PLTTBUF_SUB_OBJ, spriteSystem, battleBag->spriteManager, narc, Item_FileID(ITEM_MASTER_BALL, ITEM_FILE_TYPE_PALETTE), FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, POCKET_SLOT_1_RESOURCE_ID + i);
    }

    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSystem, battleBag->spriteManager, narc, Item_IconNCERFile(), FALSE, POCKET_SLOT_1_RESOURCE_ID);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSystem, battleBag->spriteManager, narc, Item_IconNANRFile(), FALSE, POCKET_SLOT_1_RESOURCE_ID);
    NARC_dtor(narc);
}

static void LoadItemIcon(BattleBag *battleBag, u16 item, u32 resourceID)
{
    SpriteSystem *spriteSystem = ov16_0223E010(battleBag->context->battleSystem);
    SpriteSystem_ReplaceCharResObj(spriteSystem, battleBag->spriteManager, NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(item, ITEM_FILE_TYPE_ICON), FALSE, resourceID);
}

static void LoadItemPaletteData(BattleBag *battleBag, u16 item, u16 slotIndex, u32 resourceID)
{
    PaletteData_LoadBufferFromFileStart(battleBag->palette, NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(item, ITEM_FILE_TYPE_PALETTE), battleBag->context->heapID, PLTTBUF_SUB_OBJ, PALETTE_FILE_SIZE, slotIndex * 16);
}

static ManagedSprite *CreatePocketItemSprite(BattleBag *battleBag, u32 slotIndex)
{
    SpriteTemplate template;
    SpriteSystem *spriteSystem = ov16_0223E010(battleBag->context->battleSystem);

    template.x = 0;
    template.y = 0;
    template.z = 0;
    template.animIdx = 0;
    template.priority = pocketItemSpriteResourcesAndPriority[slotIndex][4];
    template.plttIdx = 0;
    template.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    template.resources[SPRITE_RESOURCE_CHAR] = pocketItemSpriteResourcesAndPriority[slotIndex][SPRITE_RESOURCE_CHAR];
    template.resources[SPRITE_RESOURCE_PLTT] = pocketItemSpriteResourcesAndPriority[slotIndex][SPRITE_RESOURCE_PLTT];
    template.resources[SPRITE_RESOURCE_CELL] = pocketItemSpriteResourcesAndPriority[slotIndex][SPRITE_RESOURCE_CELL];
    template.resources[SPRITE_RESOURCE_ANIM] = pocketItemSpriteResourcesAndPriority[slotIndex][SPRITE_RESOURCE_ANIM];
    template.bgPriority = 1;
    template.vramTransfer = FALSE;

    return SpriteSystem_NewSprite(spriteSystem, battleBag->spriteManager, &template);
}

static void InitializePocketItemSprites(BattleBag *battleBag)
{
    u32 i;

    for (i = 0; i < BATTLE_POCKET_ITEMS_PER_PAGE; i++) {
        battleBag->pocketItemSprites[i] = CreatePocketItemSprite(battleBag, i);
    }
}

void BattleBagSprites_CleanupSprites(BattleBag *battleBag)
{
    u32 i;
    SpriteSystem *spriteSystem = ov16_0223E010(battleBag->context->battleSystem);

    for (i = 0; i < BATTLE_POCKET_ITEMS_PER_PAGE; i++) {
        Sprite_DeleteAndFreeResources(battleBag->pocketItemSprites[i]);
    }

    CleanupCursor(battleBag);
    CleanupCatchTutorialCursor(battleBag);
    SpriteSystem_FreeResourcesAndManager(spriteSystem, battleBag->spriteManager);
}

static void DrawSprite(ManagedSprite *sprite, const int x, const int y)
{
    ManagedSprite_SetDrawFlag(sprite, TRUE);
    ManagedSprite_SetPositionXY(sprite, x, y);
}

void BattleBagSprites_SetupScreen(BattleBag *battleBag, enum BattleBagScreen screen)
{
    u32 i;

    for (i = 0; i < BATTLE_POCKET_ITEMS_PER_PAGE; i++) {
        ManagedSprite_SetDrawFlag(battleBag->pocketItemSprites[i], FALSE);
    }

    switch (screen) {
    case BATTLE_BAG_SCREEN_MENU:
        DrawLastUsedItem(battleBag);
        break;
    case BATTLE_BAG_SCREEN_POCKET_MENU:
        DrawPocketItems(battleBag);
        break;
    case BATTLE_BAG_SCREEN_USE_ITEM:
        DrawSelectedItem(battleBag);
        break;
    }
}

static void DrawLastUsedItem(BattleBag *battleBag)
{
    if (battleBag->context->lastUsedItem != ITEM_NONE) {
        LoadItemIcon(battleBag, battleBag->context->lastUsedItem, POCKET_SLOT_1_RESOURCE_ID);
        LoadItemPaletteData(battleBag, battleBag->context->lastUsedItem, 0, POCKET_SLOT_1_RESOURCE_ID);
        DrawSprite(battleBag->pocketItemSprites[0], lastUsedItemSpritePosition[0], lastUsedItemSpritePosition[1]);
    }
}

static void DrawPocketItems(BattleBag *battleBag)
{
    u32 i;
    u16 item;

    for (i = 0; i < BATTLE_POCKET_ITEMS_PER_PAGE; i++) {
        item = BattleBag_GetItem(battleBag, i);

        if (item == ITEM_NONE) {
            continue;
        }

        LoadItemIcon(battleBag, item, POCKET_SLOT_1_RESOURCE_ID + i);
        LoadItemPaletteData(battleBag, item, (u16)i, POCKET_SLOT_1_RESOURCE_ID + i);
        DrawSprite(battleBag->pocketItemSprites[i], pocketItemSpritePositions[i][0], pocketItemSpritePositions[i][1]);
    }
}

static void DrawSelectedItem(BattleBag *battleBag)
{
    u16 item = BattleBag_GetItem(battleBag, battleBag->context->pocketCurrentPagePositions[battleBag->currentBattlePocket]);

    LoadItemIcon(battleBag, item, POCKET_SLOT_1_RESOURCE_ID);
    LoadItemPaletteData(battleBag, item, 0, POCKET_SLOT_1_RESOURCE_ID);
    DrawSprite(battleBag->pocketItemSprites[0], selectedItemSpritePosition[0], selectedItemSpritePosition[1]);
}

static void InitializeCursor(BattleBag *battleBag)
{
    SpriteSystem *spriteSystem;
    UnkStruct_ov16_0226DC24 *cursorSprites;

    spriteSystem = ov16_0223E010(battleBag->context->battleSystem);
    ov16_0226DB7C(spriteSystem, battleBag->spriteManager, battleBag->palette, battleBag->context->heapID, CURSOR_IMAGE_RESOURCE_ID, CURSOR_IMAGE_RESOURCE_ID, CURSOR_ANIM_RESOURCE_ID, CURSOR_ANIM_RESOURCE_ID);
    cursorSprites = ov16_0226DC24(spriteSystem, battleBag->spriteManager, battleBag->context->heapID, CURSOR_IMAGE_RESOURCE_ID, CURSOR_IMAGE_RESOURCE_ID, CURSOR_ANIM_RESOURCE_ID, CURSOR_ANIM_RESOURCE_ID, 0, 1);

    SetBattleSubMenuCursorSprites(battleBag->cursor, cursorSprites);
}

static void CleanupCursor(BattleBag *battleBag)
{
    ov16_0226DCA8(GetBattleSubMenuCursorSprites(battleBag->cursor));
    ov16_0226DBFC(battleBag->spriteManager, CURSOR_IMAGE_RESOURCE_ID, CURSOR_IMAGE_RESOURCE_ID, CURSOR_ANIM_RESOURCE_ID, CURSOR_ANIM_RESOURCE_ID);
}

static const GridMenuCursorPosition menuScreenCursorPositions[] = {
    [BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_HP_POCKET] = { .xCoord1 = 8, .yCoord1 = 16, .xCoord2 = 120, .yCoord2 = 72, .upIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_HP_POCKET, .downIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_STATUS_POCKET, .leftIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_HP_POCKET, .rightIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_POKE_BALLS_POCKET },
    [BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_STATUS_POCKET] = { .xCoord1 = 8, .yCoord1 = 88, .xCoord2 = 120, .yCoord2 = 144, .upIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_HP_POCKET, .downIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_LAST_USED_ITEM, .leftIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_STATUS_POCKET, .rightIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_BATTLE_ITEMS_POCKET },
    [BATTLE_BAG_MENU_SCREEN_BUTTON_POKE_BALLS_POCKET] = { .xCoord1 = 136, .yCoord1 = 16, .xCoord2 = 248, .yCoord2 = 72, .upIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_POKE_BALLS_POCKET, .downIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_BATTLE_ITEMS_POCKET, .leftIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_HP_POCKET, .rightIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_POKE_BALLS_POCKET },
    [BATTLE_BAG_MENU_SCREEN_BUTTON_BATTLE_ITEMS_POCKET] = { .xCoord1 = 136, .yCoord1 = 88, .xCoord2 = 248, .yCoord2 = 144, .upIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_POKE_BALLS_POCKET, .downIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_CANCEL, .leftIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_STATUS_POCKET, .rightIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_BATTLE_ITEMS_POCKET },
    [BATTLE_BAG_MENU_SCREEN_BUTTON_LAST_USED_ITEM] = { .xCoord1 = 8, .yCoord1 = 160, .xCoord2 = 200, .yCoord2 = 184, .upIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_STATUS_POCKET, .downIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_LAST_USED_ITEM, .leftIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_LAST_USED_ITEM, .rightIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_CANCEL },
    [BATTLE_BAG_MENU_SCREEN_BUTTON_CANCEL] = { .xCoord1 = 224, .yCoord1 = 160, .xCoord2 = 248, .yCoord2 = 184, .upIndex = BATTLE_SUB_MENU_CURSOR_GO_TO_PREVIOUS_POSITION_INDEX_MASK + BATTLE_BAG_MENU_SCREEN_BUTTON_BATTLE_ITEMS_POCKET, .downIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_CANCEL, .leftIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_LAST_USED_ITEM, .rightIndex = BATTLE_BAG_MENU_SCREEN_BUTTON_CANCEL }
};

static const GridMenuCursorPosition pocketMenuScreenCursorPositions[] = {
    [BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_1] = { .xCoord1 = 8, .yCoord1 = 16, .xCoord2 = 120, .yCoord2 = 48, .upIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_1, .downIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_3, .leftIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_1, .rightIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_2 },
    [BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_2] = { .xCoord1 = 136, .yCoord1 = 16, .xCoord2 = 248, .yCoord2 = 48, .upIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_2, .downIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_4, .leftIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_1, .rightIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_2 },
    [BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_3] = { .xCoord1 = 8, .yCoord1 = 64, .xCoord2 = 120, .yCoord2 = 96, .upIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_1, .downIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_5, .leftIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_3, .rightIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_4 },
    [BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_4] = { .xCoord1 = 136, .yCoord1 = 64, .xCoord2 = 248, .yCoord2 = 96, .upIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_2, .downIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_6, .leftIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_3, .rightIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_4 },
    [BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_5] = { .xCoord1 = 8, .yCoord1 = 112, .xCoord2 = 120, .yCoord2 = 144, .upIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_3, .downIndex = BATTLE_SUB_MENU_CURSOR_GO_TO_PREVIOUS_POSITION_INDEX_MASK + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_PREV_PAGE, .leftIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_5, .rightIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_6 },
    [BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_6] = { .xCoord1 = 136, .yCoord1 = 112, .xCoord2 = 248, .yCoord2 = 144, .upIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_4, .downIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_CANCEL, .leftIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_5, .rightIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_6 },
    [BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_PREV_PAGE] = { .xCoord1 = 8, .yCoord1 = 160, .xCoord2 = 32, .yCoord2 = 184, .upIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_5, .downIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_PREV_PAGE, .leftIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_PREV_PAGE, .rightIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_NEXT_PAGE },
    [BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_NEXT_PAGE] = { .xCoord1 = 48, .yCoord1 = 160, .xCoord2 = 72, .yCoord2 = 184, .upIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_5, .downIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_NEXT_PAGE, .leftIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_PREV_PAGE, .rightIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_CANCEL },
    [BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_CANCEL] = { .xCoord1 = 224, .yCoord1 = 160, .xCoord2 = 248, .yCoord2 = 184, .upIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_6, .downIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_CANCEL, .leftIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_NEXT_PAGE, .rightIndex = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_CANCEL }
};

static const GridMenuCursorPosition useItemScreenCursorPositions[] = {
    [BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_USE] = { .xCoord1 = 8, .yCoord1 = 160, .xCoord2 = 200, .yCoord2 = 184, .upIndex = BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_USE, .downIndex = BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_USE, .leftIndex = BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_USE, .rightIndex = BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_CANCEL },
    [BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_CANCEL] = { .xCoord1 = 224, .yCoord1 = 160, .xCoord2 = 248, .yCoord2 = 184, .upIndex = BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_CANCEL, .downIndex = BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_CANCEL, .leftIndex = BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_USE, .rightIndex = BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_CANCEL }
};

static const GridMenuCursorPosition *const screenCursorPositions[] = {
    [BATTLE_BAG_SCREEN_MENU] = menuScreenCursorPositions,
    [BATTLE_BAG_SCREEN_POCKET_MENU] = pocketMenuScreenCursorPositions,
    [BATTLE_BAG_SCREEN_USE_ITEM] = useItemScreenCursorPositions
};

void BattleBagSprites_SetupCursor(BattleBag *battleBag, enum BattleBagScreen screen)
{
    SetBattleSubMenuCursorPositions(battleBag->cursor, screenCursorPositions[screen]);

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

void BattleBagSprites_DisableCursor(BattleBag *battleBag)
{
    SetBattleSubMenuCursorVisibility(battleBag->cursor, FALSE);
    ResetBattleSubMenuCursorCurrentPosition(battleBag->cursor);
    ov16_0226DDE8(GetBattleSubMenuCursorSprites(battleBag->cursor));
}

static void InitializeCatchTutorialCursor(BattleBag *battleBag)
{
    SpriteSystem *spriteSystem = ov16_0223E010(battleBag->context->battleSystem);

    ov16_0226DE44(spriteSystem, battleBag->spriteManager, battleBag->context->heapID, battleBag->palette, CATCH_TUTORIAL_CURSOR_IMAGE_RESOURCE_ID, CATCH_TUTORIAL_CURSOR_IMAGE_RESOURCE_ID, CATCH_TUTORIAL_CURSOR_ANIM_RESOURCE_ID, CATCH_TUTORIAL_CURSOR_ANIM_RESOURCE_ID);
    battleBag->catchTutorialCursor = ov16_0226DEEC(spriteSystem, battleBag->spriteManager, battleBag->context->heapID, CATCH_TUTORIAL_CURSOR_IMAGE_RESOURCE_ID, CATCH_TUTORIAL_CURSOR_IMAGE_RESOURCE_ID, CATCH_TUTORIAL_CURSOR_ANIM_RESOURCE_ID, CATCH_TUTORIAL_CURSOR_ANIM_RESOURCE_ID, 0, 0);
}

static void CleanupCatchTutorialCursor(BattleBag *battleBag)
{
    ov16_0226DF68(battleBag->catchTutorialCursor);
    ov16_0226DEC4(battleBag->spriteManager, CATCH_TUTORIAL_CURSOR_IMAGE_RESOURCE_ID, CATCH_TUTORIAL_CURSOR_IMAGE_RESOURCE_ID, CATCH_TUTORIAL_CURSOR_ANIM_RESOURCE_ID, CATCH_TUTORIAL_CURSOR_ANIM_RESOURCE_ID);
}

static const int catchTutorialCursorPositions[3][2] = {
    [BATTLE_BAG_SCREEN_MENU] = { 192, 24 },
    [BATTLE_BAG_SCREEN_POCKET_MENU] = { 64, 16 },
    [BATTLE_BAG_SCREEN_USE_ITEM] = { 104, 152 }
};

void BattleBagSprites_SetupCatchTutorialCursor(BattleBag *battleBag, enum BattleBagScreen screen)
{
    if (battleBag->context->isInCatchTutorial == TRUE) {
        ov16_0226DFB0(battleBag->catchTutorialCursor, catchTutorialCursorPositions[screen][0], catchTutorialCursorPositions[screen][1]);
        ov16_0226DFD0(battleBag->catchTutorialCursor, 60);
    } else {
        ov16_0226DFBC(battleBag->catchTutorialCursor);
    }
}
