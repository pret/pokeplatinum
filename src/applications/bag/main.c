#include "applications/bag/main.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map_load.h"
#include "constants/heap.h"
#include "constants/items.h"

#include "struct_defs/special_encounter.h"

#include "applications/bag/application.h"
#include "applications/bag/sprites.h"
#include "applications/bag/windows.h"

#include "bag.h"
#include "bag_context.h"
#include "bg_window.h"
#include "font.h"
#include "font_special_chars.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "item_use_functions.h"
#include "list_menu.h"
#include "math_util.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "render_text.h"
#include "render_window.h"
#include "save_player.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "special_encounter.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "touch_pad.h"
#include "touch_screen.h"
#include "trainer_info.h"
#include "unk_020393C8.h"
#include "unk_0208C098.h"
#include "vram_transfer.h"

#include "res/graphics/bag/bag_graphics.naix"
#include "res/text/bank/bag.h"

#define DIAL_CENTER_X      (HW_LCD_WIDTH / 2)
#define DIAL_CENTER_Y      80
#define DIAL_RADIUS        80
#define DIAL_BUTTON_RADIUS 24

#define BASE_TILE_BAG_WINDOW_FRAME (1024 - STANDARD_WINDOW_TILE_COUNT)
#define BASE_TILE_MSG_BOX_FRAME    (BASE_TILE_BAG_WINDOW_FRAME - SCROLLING_MESSAGE_BOX_TILE_COUNT)

#define ITEM_LIST_EMPTY_ENTRY -3

enum ItemListInput {
    ITEM_LIST_INPUT_NONE = 0,
    ITEM_LIST_INPUT_SELECT_ITEM,
    ITEM_LIST_INPUT_MOVE_ITEM,
    ITEM_LIST_INPUT_EXIT_BAG,
};

enum BagApplicationState {
    BAG_APP_STATE_WAIT_INITIAL_SCREEN_FADE = 0,
    BAG_APP_STATE_WAIT_SELECT_ITEM_GENERAL,
    BAG_APP_STATE_SWITCH_POCKET,
    BAG_APP_STATE_MOVING_ITEM,
    BAG_APP_STATE_WAIT_SELECT_ITEM_ACTION,
    BAG_APP_STATE_UNUSED_5,
    BAG_APP_STATE_UNUSED_6,
    BAG_APP_STATE_SELECT_ITEM_TRASH_COUNT,
    BAG_APP_STATE_SHOW_CONFIRM_TRASH_MSG,
    BAG_APP_STATE_CONFIRM_TRASH,
    BAG_APP_STATE_RESOLVE_TRASH,
    BAG_APP_STATE_SHOWING_TRASHED_MSG,
    BAG_APP_STATE_SHOWING_ITEM_USE_MSG,
    BAG_APP_STATE_RUN_ITEM_USE_TASK,
    BAG_APP_STATE_SELECT_ITEM_TO_GIVE,
    BAG_APP_STATE_SHOWING_ITEM_CANT_BE_HELD_MSG,
    BAG_APP_STATE_SELECT_ITEM_TO_SELL,
    BAG_APP_STATE_WAIT_SELL_HOW_MANY_MSG,
    BAG_APP_STATE_SELECT_ITEM_SELL_COUNT,
    BAG_APP_STATE_PRINT_CONFIRM_SALE_MSG,
    BAG_APP_STATE_CONFIRM_SALE,
    BAG_APP_STATE_RESOLVE_SALE,
    BAG_APP_STATE_SHOWING_ITEMS_SOLD_MSG,
    BAG_APP_STATE_SELECT_ITEM_GARDENING,
    BAG_APP_STATE_EXIT,
};

typedef struct PocketButtonCoordinateLists {
    const u8 *buttonSprite;
    const TouchScreenRect *buttonTouchRect;
} PocketButtonCoordinateLists;

static void RetrieveSaveData(BagController *controller);
static void BagUIVBlankCB(void *data);
static void SetVRAMBanks(void);
static void SetupBGLayers(BgConfig *bgConfig);
static void FreeBGLayers(BgConfig *bgConfig);
static void LoadGraphics(BagController *controller);
static u8 ProcessItemListMenuInput(BagController *interface);
static u8 CheckPocketChange_DPad(BagController *controller);
static int ProcessMenuInput_SelectAction(BagController *controller);
static void LoadCurrentPocketItemNames(BagController *controller);
static void LimitItemListScroll(u16 *cursorScroll, u16 *cursorPos, u8 numEntries);
static void RestrictItemListCursor(u16 *cursorScroll, u16 *cursorPos, u8 numEntries, u8 numVisibleSlots);
static void CreateItemListMenu(BagController *controller, u16 initialScroll, u16 initialPos);
static void ItemListMenuCursorCB(ListMenu *menu, u32 index, u8 onInit);
static void ItemListMenuPrintCB(ListMenu *menu, u32 index, u8 yOffset);
static void FreeItemListMenu(BagController *controller);
static void CountAccessiblePockets(BagController *controller);
static void CalcPocketSelectorIconsPos(BagController *controller);
static int CheckPlayerPressedPocketButton(BagController *controller);
static void StepPocketSelectorArrowsAnim(BagController *controller);
static u8 CheckPocketChange_Touch(BagController *controller);
static int CheckPlayerHeldPocketButton(BagController *controller);
static u8 StepPocketSelectorAnim(BagController *controller);
static void DrawPocketButton(BagController *interface, u8 pocketIdx, u8 buttonState);
static void DrawTouchScreenButtons(BagController *controller);
static u8 CanMoveSelectedEntry(BagController *controller);
static void StartMovingItem(BagController *controller);
static u8 ProcessItemListInput_MovingItem(BagController *controller);
static void MoveItemToCurrentPosition(BagController *controller);
static void StopMovingItem(BagController *controller);
static void SwitchSpritesForSorting(BagController *interface);
static void SetupPocketChangeFromDPad(BagController *controller);
static void SetupPocketChangeFromTouch(BagController *controller);
static void SetupPocketSwitch(BagController *controller);
static u8 DoPocketSwitch(BagController *controller);
static u8 DoDPadPocketSwitch(BagController *controller);
static u8 StepPocketSwitchPressedButtonAnim(BagController *controller);
static u8 StepPocketSelectorAnim(BagController *controller);
static void SetupTextLoaders(BagController *controller);
static void MakeItemActionsMenu(BagController *controller);
static void InitItemNameBuffers(BagController *controller);
static void FreeItemNameBuffers(BagController *controller);
static int ItemActionFunc_Use(BagController *controller);
static int ItemActionFunc_CheckTag(BagController *controller);
static int ItemActionFunc_Confirm(BagController *controller);
static int ItemActionFunc_Trash(BagController *controller);
static int ItemActionFunc_Give(BagController *controller);
static int ItemActionFunc_Register(BagController *controller);
static int ItemActionFunc_Deselect(BagController *controller);
static int ProcessItemListInput_Normal(BagController *controller);
static int ProcessItemListInput_SellItems(BagController *controller);
static int CheckPlayerDismissedItemsSoldMsg(BagController *interface);
static int ShowSaleCountValueWindow(BagController *controller);
static int ProcessItemCountInput_SellCount(BagController *interface);
static int WaitConfirmSaleMsgPrinted(BagController *controller);
static int ProcessMenuInput_ConfirmSale(BagController *interface);
static int ResolveSale(BagController *interface);
static int CheckPlayerDismissedItemUseMsg(BagController *interface);
static int ProcessItemCountInput_TrashCount(BagController *controller);
static int ShowConfirmTrashMenu(BagController *controller);
static int ProcessMenuInput_ConfirmTrash(BagController *controller);
static int ResolveTrash(BagController *controller);
static int CheckPlayerDismissedTrashedMsg(BagController *controller);
static int ProcessItemListInput_GiveToMon(BagController *controller);
static int CheckPlayerDismissedItemCantBeHeldMsg(BagController *controller);
static int ProcessItemListInput_Gardening(BagController *controller);
static void RestoreCursorPosition(BagController *controller);
static void SaveCursorPosition(BagController *controller);
static int HandleItemUsed(BagController *interface);
static int RunItemUseCallback(BagController *controller);
static int TMHMUseTask(BagController *controller);
static BOOL UseItemInBag(BagController *controller, u16 item);
static String *TryUseRepel(BagController *controller, u16 item);
static void TrashSelectedItem(BagController *controller);
static int InBagItemUseTask(BagController *controller);
static void ToggleHideItemSprite(BagController *controller, u8 hide);
static BOOL CheckDialButtonPressed(BagController *controller);
static void DrawDialButton(BagController *controller, u8 buttonState);
static void StepDialButtonPressedAnim(BagController *controller);
static void RotateDial(BagController *controller, s8 angle);
static BOOL CheckDialScroll_Menu(BagController *controller);
static BOOL CalcDialScroll(BagController *controller, u16 stepAngle);
static BOOL CheckItemListDialScroll_Normal(BagController *controller);
static BOOL CheckItemListDialScroll_Sorting(BagController *interface);
static BOOL CheckDialItemAmountChange(BagController *controller, s16 *amount, u16 maxValue);
static BOOL DoItemListInput_Normal(BagController *interface, u16 input);
static BOOL DoItemListInput_Sorting(BagController *interface, u16 input);
static BOOL DoMenuInput(BagController *controller, u8 input);

const ApplicationManagerTemplate gBagApplicationTemplate = {
    BagApplication_Init,
    BagApplication_Main,
    BagApplication_Exit,
    FS_OVERLAY_ID_NONE
};

static const ListMenuTemplate sItemListMenuTemplate = {
    .choices = NULL,
    .cursorCallback = ItemListMenuCursorCB,
    .printCallback = ItemListMenuPrintCB,
    .window = NULL,
    .count = 0,
    .maxDisplay = BAG_UI_NUM_VISIBLE_ITEMS,
    .headerXOffset = 0,
    .textXOffset = 0,
    .cursorXOffset = 0,
    .yOffset = 0,
    .textColorFg = 1,
    .textColorBg = 0,
    .textColorShadow = 2,
    .letterSpacing = 0,
    .lineSpacing = 16,
    .pagerMode = PAGER_MODE_NONE,
    .fontID = FONT_SYSTEM,
    .cursorType = 1,
    .parent = NULL
};

// clang-format off
static const u8 sPocketButtonSpritesPositions_8Pockets[] = {
//   x   y
     1,  4,
     2, 10,
     5, 15,
    10, 18,
    17, 18,
    22, 15,
    25, 10,
    26,  4
};

static const TouchScreenRect sPocketButtonTouchRectangles_8Pockets[] = {
    { .rect = { .top =  32, .bottom =  71, .left =   8, .right =  47 } },
    { .rect = { .top =  80, .bottom = 119, .left =  16, .right =  55 } },
    { .rect = { .top = 120, .bottom = 159, .left =  40, .right =  79 } },
    { .rect = { .top = 144, .bottom = 183, .left =  80, .right = 119 } },
    { .rect = { .top = 144, .bottom = 183, .left = 136, .right = 175 } },
    { .rect = { .top = 120, .bottom = 159, .left = 176, .right = 215 } },
    { .rect = { .top =  80, .bottom = 119, .left = 200, .right = 239 } },
    { .rect = { .top =  32, .bottom =  71, .left = 208, .right = 247 } },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0x0, 0x0, 0x0 }
};

static const u8 sPocketButtonSpritesPositions_4Pockets[] = {
//   x   y
     1,  4,
     5, 15,
    22, 15,
    26,  4
};

static const TouchScreenRect sPocketButtonTouchRectangles_4Pockets[] = {
    { .rect = { .top =  32, .bottom =  71, .left =   8, .right =  47 } },
    { .rect = { .top = 120, .bottom = 159, .left =  40, .right =  79 } },
    { .rect = { .top = 120, .bottom = 159, .left = 176, .right = 215 } },
    { .rect = { .top =  32, .bottom =  71, .left = 208, .right = 247 } },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0x0, 0x0, 0x0 }
};

static const u8 sPocketButtonSpritesPositions_1Pocket[] = {
//   x   y
    17, 18
};

static const TouchScreenRect sPocketButtonTouchRectangles_1Pocket[] = {
    { .rect = { .top = 144, .bottom = 183, .left = 136, .right = 175 } },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0x0, 0x0, 0x0 }
};

static const u8 sPocketButtonSpritesPositions_7Pockets[] = {
//   x   y
     2, 10,
     5, 15,
    10, 18,
    17, 18,
    22, 15,
    25, 10,
    26,  4
};

static const TouchScreenRect sPocketButtonTouchRectangles_7Pockets[] = {
    { .rect = { .top =  80, .bottom = 119, .left =  16, .right =  55 } },
    { .rect = { .top = 120, .bottom = 159, .left =  40, .right =  79 } },
    { .rect = { .top = 144, .bottom = 183, .left =  80, .right = 119 } },
    { .rect = { .top = 144, .bottom = 183, .left = 136, .right = 175 } },
    { .rect = { .top = 120, .bottom = 159, .left = 176, .right = 215 } },
    { .rect = { .top =  80, .bottom = 119, .left = 200, .right = 239 } },
    { .rect = { .top =  32, .bottom =  71, .left = 208, .right = 247 } },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0x0, 0x0, 0x0 }
};
// clang-format on

// Coordinate lists for the bottom screen pocket buttons, depending on the number of pockets
static const PocketButtonCoordinateLists sPocketButtonCoordLists[POCKET_MAX + 1] = {
    { NULL, NULL },
    { sPocketButtonSpritesPositions_1Pocket, sPocketButtonTouchRectangles_1Pocket },
    { NULL, NULL },
    { NULL, NULL },
    { sPocketButtonSpritesPositions_4Pockets, sPocketButtonTouchRectangles_4Pockets },
    { NULL, NULL },
    { NULL, NULL },
    { sPocketButtonSpritesPositions_7Pockets, sPocketButtonTouchRectangles_7Pockets },
    { sPocketButtonSpritesPositions_8Pockets, sPocketButtonTouchRectangles_8Pockets }
};

static const u8 sPocketSizes[POCKET_MAX] = {
    [POCKET_ITEMS] = ITEM_POCKET_SIZE,
    [POCKET_MEDICINE] = MEDICINE_POCKET_SIZE,
    [POCKET_BALLS] = POKEBALL_POCKET_SIZE,
    [POCKET_TMHMS] = TMHM_POCKET_SIZE,
    [POCKET_BERRIES] = BERRY_POCKET_SIZE,
    [POCKET_MAIL] = MAIL_POCKET_SIZE,
    [POCKET_BATTLE_ITEMS] = BATTLE_ITEM_POCKET_SIZE,
    [POCKET_KEY_ITEMS] = KEY_ITEM_POCKET_SIZE
};

static const u32 sItemActionFuncs[] = {
    [ITEM_ACTION_USE] = (u32)ItemActionFunc_Use,
    [ITEM_ACTION_WALK] = (u32)ItemActionFunc_Use,
    [ITEM_ACTION_CHECK] = (u32)ItemActionFunc_Use,
    [ITEM_ACTION_PLANT] = (u32)ItemActionFunc_Use,
    [ITEM_ACTION_OPEN] = (u32)ItemActionFunc_Use,
    [ITEM_ACTION_TRASH] = (u32)ItemActionFunc_Trash,
    [ITEM_ACTION_REGISTER] = (u32)ItemActionFunc_Register,
    [ITEM_ACTION_DESELECT] = (u32)ItemActionFunc_Deselect,
    [ITEM_ACTION_GIVE] = (u32)ItemActionFunc_Give,
    [ITEM_ACTION_CHECK_TAG] = (u32)ItemActionFunc_CheckTag,
    [ITEM_ACTION_CONFIRM] = (u32)ItemActionFunc_Confirm,
    [ITEM_ACTION_CANCEL] = LIST_CANCEL
};

// clang-format off
static const u16 sItemSpriteBoxTiles[] = {
    0x1077, 0x1078, 0x1078, 0x1079, 0x1026,
    0x1010, 0x1011, 0x1011, 0x1012, 0x1013,
    0x1014, 0x1001, 0x1001, 0x1001, 0x1034,
    0x1014, 0x1001, 0x1001, 0x1001, 0x1034,
    0x1030, 0x1031, 0x1031, 0x1032, 0x1033
};

static const u16 sHiddenItemSpriteBoxTiles[] = {
    0x1026, 0x1002, 0x1002, 0x1002, 0x1002,
    0x1026, 0x1002, 0x1002, 0x1002, 0x1002,
    0x1026, 0x1002, 0x1002, 0x1002, 0x1002,
    0x1026, 0x1002, 0x1002, 0x1002, 0x1002,
    0x1026, 0x1002, 0x1002, 0x1002, 0x1002
};
// clang-format on

static const TouchScreenRect sDialBtnTouchRect[] = {
    {
        .rect = {
            .top = DIAL_CENTER_Y - DIAL_BUTTON_RADIUS,
            .bottom = DIAL_CENTER_Y + DIAL_BUTTON_RADIUS - 1,
            .left = DIAL_CENTER_X - DIAL_BUTTON_RADIUS,
            .right = DIAL_CENTER_X + DIAL_BUTTON_RADIUS - 1,
        },
    },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0x0, 0x0, 0x0 }
};

// Used to detect when the player starts touching the pokeball dial on the bottom screen.
// The first, smaller circle is used to exclude the button, which mimics the A button instead.
static const TouchScreenHitTable sDialTouchedTouchBox[] = {
    {
        .circle = {
            .code = TOUCHSCREEN_USE_CIRCLE,
            .x = DIAL_CENTER_X,
            .y = DIAL_CENTER_Y,
            .r = 26,
        },
    },
    {
        .circle = {
            .code = TOUCHSCREEN_USE_CIRCLE,
            .x = DIAL_CENTER_X,
            .y = DIAL_CENTER_Y,
            .r = 64,
        },
    },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0x0, 0x0, 0x0 }
};

// Used to detect when the player stops touching the pokeball dial or moves outside of the dial area.
// The valid touch zone is larger than the one above to be more lenient when moving the stylus around to scroll.
static const TouchScreenHitTable sDialHeldTouchBox[] = {
    {
        .circle = {
            .code = TOUCHSCREEN_USE_CIRCLE,
            .x = DIAL_CENTER_X,
            .y = DIAL_CENTER_Y,
            .r = 16,
        },
    },
    {
        .circle = {
            .code = TOUCHSCREEN_USE_CIRCLE,
            .x = DIAL_CENTER_X,
            .y = DIAL_CENTER_Y,
            .r = DIAL_RADIUS,
        },
    },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0x0, 0x0, 0x0 }
};

int BagApplication_Init(ApplicationManager *appMan, int *state)
{
    BagController *controller;

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    G2_BlendNone();
    G2S_BlendNone();

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BAG, HEAP_SIZE_BAG);

    controller = ApplicationManager_NewData(appMan, sizeof(BagController), HEAP_ID_BAG);
    memset(controller, 0, sizeof(BagController));
    controller->bagCtx = ApplicationManager_Args(appMan);

    RetrieveSaveData(controller);

    controller->bgConfig = BgConfig_New(HEAP_ID_BAG);
    controller->trainerGender = TrainerInfo_Gender(controller->trainerInfo);

    StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_DOWNWARD_IN, FADE_TYPE_DOWNWARD_IN, COLOR_BLACK, 6, 1, HEAP_ID_BAG);
    SetAutorepeat(3, 8);

    RestoreCursorPosition(controller);
    SetupTextLoaders(controller);
    InitItemNameBuffers(controller);
    CountAccessiblePockets(controller);
    CalcPocketSelectorIconsPos(controller);
    SetVRAMBanks();
    SetupBGLayers(controller->bgConfig);
    LoadGraphics(controller);
    DrawTouchScreenButtons(controller);

    EnableTouchPad();
    InitializeTouchPad(4);

    BagUI_CreateWindows(controller);
    RenderControlFlags_SetSpeedUpOnTouch(TRUE);
    BagUI_LoadPocketNames(controller);
    BagUI_ClearPocketNameBox(controller);
    BagUI_PrintPocketNames(controller);
    BagUI_DrawPocketSelectorIcons(controller);
    BagUI_LoadItemActionStrings(controller);
    BagUI_LoadItemCountStrings(controller);
    LoadCurrentPocketItemNames(controller);

    // Can't use a temporary variable since it wouldn't match
#define pocket controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx]
    LimitItemListScroll(&pocket.cursorScroll, &pocket.cursorPos, pocket.listEntryCount);
    RestrictItemListCursor(&pocket.cursorScroll, &pocket.cursorPos, pocket.listEntryCount, BAG_UI_NUM_VISIBLE_ITEMS);
    BagUI_InitSprites(controller);
    CreateItemListMenu(controller, pocket.cursorScroll, pocket.cursorPos);
#undef pocket

    if (controller->bagCtx->mode == BAG_MODE_POFFIN_SINGLEPLAYER || controller->bagCtx->mode == BAG_MODE_POFFIN_MULTIPLAYER) {
        BagUI_DrawPoffinCountMsgBox(controller);
    }

    SetVBlankCallback(BagUIVBlankCB, controller);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_BAG, SEQ_NONE, 0);
    NetworkIcon_Init();

    return TRUE;
}

int BagApplication_Main(ApplicationManager *appMan, int *state)
{
    BagController *controller = ApplicationManager_Data(appMan);

    switch (*state) {
    case BAG_APP_STATE_WAIT_INITIAL_SCREEN_FADE:
        if (IsScreenFadeDone() == TRUE) {
            if (controller->bagCtx->mode == BAG_MODE_SELL_ITEMS) {
                *state = BAG_APP_STATE_SELECT_ITEM_TO_SELL;
            } else if (controller->bagCtx->mode == BAG_MODE_GIVE_TO_MON) {
                *state = BAG_APP_STATE_SELECT_ITEM_TO_GIVE;
            } else if (controller->bagCtx->mode == BAG_MODE_GARDENING) {
                *state = BAG_APP_STATE_SELECT_ITEM_GARDENING;
            } else {
                *state = BAG_APP_STATE_WAIT_SELECT_ITEM_GENERAL;
            }
        }
        break;
    case BAG_APP_STATE_WAIT_SELECT_ITEM_GENERAL:
        *state = ProcessItemListInput_Normal(controller);
        break;
    case BAG_APP_STATE_SWITCH_POCKET:
        StepPocketSelectorArrowsAnim(controller);
        if (DoPocketSwitch(controller) == TRUE) {
            if (controller->bagCtx->mode == BAG_MODE_SELL_ITEMS) {
                *state = BAG_APP_STATE_SELECT_ITEM_TO_SELL;
            } else if (controller->bagCtx->mode == BAG_MODE_GIVE_TO_MON) {
                *state = BAG_APP_STATE_SELECT_ITEM_TO_GIVE;
            } else if (controller->bagCtx->mode == BAG_MODE_GARDENING) {
                *state = BAG_APP_STATE_SELECT_ITEM_GARDENING;
            } else {
                *state = BAG_APP_STATE_WAIT_SELECT_ITEM_GENERAL;
            }
        }
        break;
    case BAG_APP_STATE_MOVING_ITEM:
        if (ProcessItemListInput_MovingItem(controller) == TRUE) {
            *state = BAG_APP_STATE_WAIT_SELECT_ITEM_GENERAL;
        }
        break;
    case BAG_APP_STATE_WAIT_SELECT_ITEM_ACTION:
        *state = ProcessMenuInput_SelectAction(controller);
        break;
    case BAG_APP_STATE_UNUSED_5:
        break;
    case BAG_APP_STATE_UNUSED_6:
        break;
    case BAG_APP_STATE_SELECT_ITEM_TRASH_COUNT:
        *state = ProcessItemCountInput_TrashCount(controller);
        break;
    case BAG_APP_STATE_SHOW_CONFIRM_TRASH_MSG:
        *state = ShowConfirmTrashMenu(controller);
        break;
    case BAG_APP_STATE_CONFIRM_TRASH:
        *state = ProcessMenuInput_ConfirmTrash(controller);
        break;
    case BAG_APP_STATE_RESOLVE_TRASH:
        *state = ResolveTrash(controller);
        break;
    case BAG_APP_STATE_SHOWING_TRASHED_MSG:
        *state = CheckPlayerDismissedTrashedMsg(controller);
        break;
    case BAG_APP_STATE_SHOWING_ITEM_USE_MSG:
        *state = CheckPlayerDismissedItemUseMsg(controller);
        break;
    case BAG_APP_STATE_RUN_ITEM_USE_TASK:
        *state = RunItemUseCallback(controller);
        break;
    case BAG_APP_STATE_SELECT_ITEM_TO_GIVE:
        *state = ProcessItemListInput_GiveToMon(controller);
        break;
    case BAG_APP_STATE_SHOWING_ITEM_CANT_BE_HELD_MSG:
        *state = CheckPlayerDismissedItemCantBeHeldMsg(controller);
        break;
    case BAG_APP_STATE_SELECT_ITEM_TO_SELL:
        *state = ProcessItemListInput_SellItems(controller);
        break;
    case BAG_APP_STATE_WAIT_SELL_HOW_MANY_MSG:
        *state = ShowSaleCountValueWindow(controller);
        break;
    case BAG_APP_STATE_SELECT_ITEM_SELL_COUNT:
        *state = ProcessItemCountInput_SellCount(controller);
        break;
    case BAG_APP_STATE_PRINT_CONFIRM_SALE_MSG:
        *state = WaitConfirmSaleMsgPrinted(controller);
        break;
    case BAG_APP_STATE_CONFIRM_SALE:
        *state = ProcessMenuInput_ConfirmSale(controller);
        break;
    case BAG_APP_STATE_RESOLVE_SALE:
        *state = ResolveSale(controller);
        break;
    case BAG_APP_STATE_SHOWING_ITEMS_SOLD_MSG:
        *state = CheckPlayerDismissedItemsSoldMsg(controller);
        break;
    case BAG_APP_STATE_SELECT_ITEM_GARDENING:
        *state = ProcessItemListInput_Gardening(controller);
        break;
    case BAG_APP_STATE_EXIT:
        if (IsScreenFadeDone() == TRUE) {
            return TRUE;
        }
        break;
    }

    StepDialButtonPressedAnim(controller);
    BagUI_TickBtnShockwaveAnim(controller);
    BagUI_TickSpriteAnimations(controller);
    SpriteSystem_DrawSprites(controller->spriteMan);

    return FALSE;
}

int BagApplication_Exit(ApplicationManager *appMan, int *state)
{
    BagController *controller = ApplicationManager_Data(appMan);

    BagUI_FreeSprites(controller);
    FreeItemListMenu(controller);
    SaveCursorPosition(controller);
    BagUI_DeleteWindows(controller->windows);
    FreeBGLayers(controller->bgConfig);

    DisableTouchPad();
    VramTransfer_Free();

    BagUI_FreeItemActionStrings(controller);
    BagUI_FreePocketNames(controller);
    BagUI_FreeItemCountStrings(controller);
    FreeItemNameBuffers(controller);

    String_Free(controller->stringBuffer);
    MessageLoader_Free(controller->moveNamesLoader);
    MessageLoader_Free(controller->itemNamesLoader);
    MessageLoader_Free(controller->bagStringsLoader);
    FontSpecialChars_Free(controller->specialChars);
    StringTemplate_Free(controller->strTemplate);
    NARC_dtor(controller->bagGraphicsNARC);
    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_BAG);
    SetAutorepeat(4, 8);

    return TRUE;
}

static void RetrieveSaveData(BagController *controller)
{
    controller->bag = SaveData_GetBag(controller->bagCtx->saveData);
    controller->trainerInfo = SaveData_GetTrainerInfo(controller->bagCtx->saveData);
    controller->options = SaveData_GetOptions(controller->bagCtx->saveData);
}

static SpecialEncounter *GetSpecialEncounter(BagController *controller)
{
    return SaveData_GetSpecialEncounters(controller->bagCtx->saveData);
}

static void SetRepelSteps(BagController *controller, u8 stepCount)
{
    u8 *repelSteps = SpecialEncounter_GetRepelSteps(GetSpecialEncounter(controller));
    *repelSteps = stepCount;
}

static void SetFluteActive(BagController *controller, u8 flute)
{
    SpecialEncounter_SetFluteFactor(GetSpecialEncounter(controller), flute);
}

static void BagUIVBlankCB(void *data)
{
    BagController *controller = data;

    Bg_RunScheduledUpdates(controller->bgConfig);
    VramTransfer_Process();
    SpriteSystem_TransferOam();
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void SetVRAMBanks(void)
{
    GXBanks banks = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_128_B,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&banks);
}

static void SetupBGLayers(BgConfig *bgConfig)
{
    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_1,
        GX_BG0_AS_2D,
    };
    SetAllGraphicsModes(&graphicsModes);

    BgTemplate layerMain0 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf800,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &layerMain0, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);

    BgTemplate layerMain1 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &layerMain1, BG_TYPE_STATIC);

    BgTemplate layerMain2 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe800,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &layerMain2, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);

    BgTemplate layerMain3 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &layerMain3, BG_TYPE_STATIC);

    BgTemplate layerSub0 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf800,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &layerSub0, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);

    BgTemplate layerSub1 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x08000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &layerSub1, BG_TYPE_STATIC);

    BgTemplate layerSub3 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x400,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_256,
        .screenBase = GX_BG_SCRBASE_0xe800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_3, &layerSub3, BG_TYPE_AFFINE);

    Bg_ScheduleAffineRotationCenter(bgConfig, BG_LAYER_SUB_3, BG_AFFINE_UPDATE_SET_X_CENTER, DIAL_CENTER_X);
    Bg_ScheduleAffineRotationCenter(bgConfig, BG_LAYER_SUB_3, BG_AFFINE_UPDATE_SET_Y_CENTER, DIAL_CENTER_Y);

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_BAG);
    Bg_ClearTilesRange(BG_LAYER_SUB_0, 32, 0, HEAP_ID_BAG);
}

static void FreeBGLayers(BgConfig *bgConfig)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_3);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
    Heap_FreeExplicit(HEAP_ID_BAG, bgConfig);
}

static void LoadGraphics(BagController *controller)
{
    controller->bagGraphicsNARC = NARC_ctor(NARC_INDEX_GRAPHIC__PL_BAG_GRA, HEAP_ID_BAG);

    Graphics_LoadTilesToBgLayerFromOpenNARC(controller->bagGraphicsNARC, bag_ui_main_tileset_NCGR, controller->bgConfig, BG_LAYER_MAIN_1, 0, 0, FALSE, HEAP_ID_BAG);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(controller->bagGraphicsNARC, bag_ui_main_NSCR, controller->bgConfig, BG_LAYER_MAIN_1, 0, 0, FALSE, HEAP_ID_BAG);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(controller->bagGraphicsNARC, item_list_border_NSCR, controller->bgConfig, BG_LAYER_MAIN_3, 0, 0, FALSE, HEAP_ID_BAG);
    Graphics_LoadPaletteFromOpenNARC(controller->bagGraphicsNARC, bag_ui_main_NCLR, PAL_LOAD_MAIN_BG, PLTT_OFFSET(0), 0, HEAP_ID_BAG);
    Graphics_LoadPaletteFromOpenNARC(controller->bagGraphicsNARC, pocket_selector_icons_NCLR, PAL_LOAD_MAIN_BG, PLTT_OFFSET(13), PALETTE_SIZE_BYTES, HEAP_ID_BAG);
    Font_LoadScreenIndicatorsPalette(0, PLTT_OFFSET(11), HEAP_ID_BAG);
    LoadStandardWindowGraphics(controller->bgConfig, BG_LAYER_MAIN_0, BASE_TILE_BAG_WINDOW_FRAME, PLTT_14, STANDARD_WINDOW_SYSTEM, HEAP_ID_BAG);
    LoadMessageBoxGraphics(controller->bgConfig, BG_LAYER_MAIN_0, BASE_TILE_MSG_BOX_FRAME, PLTT_12, Options_Frame(controller->options), HEAP_ID_BAG);
    Graphics_LoadTilesToBgLayerFromOpenNARC(controller->bagGraphicsNARC, pokeball_borders_tileset_NCGR, controller->bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, HEAP_ID_BAG);
    Graphics_LoadPaletteFromOpenNARC(controller->bagGraphicsNARC, pokeball_borders_NCLR, PAL_LOAD_SUB_BG, PLTT_OFFSET(0), 0, HEAP_ID_BAG);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(controller->bagGraphicsNARC, pokeball_borders_NSCR, controller->bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, HEAP_ID_BAG);
    Graphics_LoadTilesToBgLayerFromOpenNARC(controller->bagGraphicsNARC, pokeball_inside_NCGR, controller->bgConfig, BG_LAYER_SUB_3, 0, 0, FALSE, HEAP_ID_BAG);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(controller->bagGraphicsNARC, pokeball_inside_NSCR, controller->bgConfig, BG_LAYER_SUB_3, 0, 0, FALSE, HEAP_ID_BAG);
    Graphics_LoadTilesToBgLayerFromOpenNARC(controller->bagGraphicsNARC, buttons_NCGR, controller->bgConfig, BG_LAYER_SUB_0, 0, 0, FALSE, HEAP_ID_BAG);
    Graphics_LoadPaletteFromOpenNARC(controller->bagGraphicsNARC, buttons_NCLR, PAL_LOAD_SUB_BG, PLTT_OFFSET(2), PALETTE_SIZE_BYTES * 2, HEAP_ID_BAG);
}

static void SetupTextLoaders(BagController *controller)
{
    controller->bagStringsLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BAG, HEAP_ID_BAG);
    controller->specialChars = FontSpecialChars_Init(1, 2, 0, HEAP_ID_BAG);
    controller->strTemplate = StringTemplate_Default(HEAP_ID_BAG);
    controller->itemNamesLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ITEM_NAMES, HEAP_ID_BAG);
    controller->moveNamesLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVE_NAMES, HEAP_ID_BAG);
    controller->stringBuffer = String_Init(256, HEAP_ID_BAG);
}

static void CountAccessiblePockets(BagController *controller)
{
    controller->numPockets = 0;

    for (u8 i = 0; i < POCKET_MAX; i++) {
        if (controller->bagCtx->accessiblePockets[i].items != NULL) {
            controller->numPockets++;
        }
    }
}

u16 BagInterface_GetItemSlotParam(BagController *controller, u16 slotIndex, u16 itemParam)
{
    BagApplicationPocket *pocket = &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx];

    if (itemParam == BAG_APP_ITEM_SLOT_PARAM_ITEM) {
        return pocket->items[slotIndex].item;
    }

    return pocket->items[slotIndex].quantity;
}

static void LoadItemName(MessageLoader *loader, String *dest, u16 item, u32 unused)
{
    MessageLoader_GetString(loader, item, dest);
}

static void LoadTMHMMoveName(MessageLoader *loader, String *dest, u16 item, u32 unused)
{
    MessageLoader_GetString(loader, Item_MoveForTMHM(item), dest);
}

static void RestoreCursorPosition(BagController *controller)
{
    u16 i; // forward declaration required to match

    controller->bagCtx->currPocketIdx = 0;
    BagApplicationPocket *pockets = controller->bagCtx->accessiblePockets;

    if (controller->bagCtx->bagCursor == NULL) {
        for (i = 0; i < POCKET_MAX; i++) {
            if (pockets[i].items == NULL) {
                break;
            }

            pockets[i].cursorPos = 1; // Prevent accessing the first entry
            pockets[i].cursorScroll = 0;
        }

        return;
    }

    for (i = 0; i < POCKET_MAX; i++) {
        if (pockets[i].items == NULL) {
            break;
        }

        u8 savedPos, savedScroll;
        BagCursor_GetFieldPocketPosition(controller->bagCtx->bagCursor, pockets[i].pocketType, &savedPos, &savedScroll);

        if (savedPos == 0) {
            savedPos = 1; // Prevent accessing the first entry
        }

        pockets[i].cursorPos = savedPos;
        pockets[i].cursorScroll = savedScroll;
    }

    u16 savedPocket = BagCursor_GetFieldPocket(controller->bagCtx->bagCursor);

    for (i = 0; i < POCKET_MAX; i++) {
        if (pockets[i].items == NULL) {
            break;
        }

        if (pockets[i].pocketType == savedPocket) {
            controller->bagCtx->currPocketIdx = i;
        }
    }
}

static void SaveCursorPosition(BagController *controller)
{
    if (controller->bagCtx->bagCursor == NULL) {
        return;
    }

    BagApplicationPocket *pocket = controller->bagCtx->accessiblePockets;

    for (u32 i = 0; i < POCKET_MAX; i++) {
        if (pocket[i].items == NULL) {
            break;
        }

        BagCursor_SetFieldPocketPosition(controller->bagCtx->bagCursor, pocket[i].pocketType, pocket[i].cursorPos, pocket[i].cursorScroll);
    }

    BagCursor_SetFieldPocket(controller->bagCtx->bagCursor, pocket[controller->bagCtx->currPocketIdx].pocketType);
}

static void LoadCurrentPocketItemNames(BagController *controller)
{
    BagApplicationPocket *pocket = &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx];
    controller->itemListEntries = StringList_New(sPocketSizes[pocket->pocketType] + 3, HEAP_ID_BAG); // + 3 to account for some non-item entries

    // The first line of the items list is partially hidden behind the UI, so we begin with an empty entry.
    // Similarly, the last line is partially hidden so a second empty entry gets added to the end later on.
    StringList_AddFromMessageBank(controller->itemListEntries, controller->bagStringsLoader, Bag_Text_Empty, ITEM_LIST_EMPTY_ENTRY);

    if (pocket->pocketType == POCKET_TMHMS) {
        u32 i;
        for (i = 0; i < sPocketSizes[pocket->pocketType]; i++) {
            if (pocket->items[i].item == ITEM_NONE || pocket->items[i].quantity == 0) {
                break;
            }

            LoadTMHMMoveName(controller->moveNamesLoader, controller->itemNames[i], pocket->items[i].item, HEAP_ID_BAG);
            StringList_AddFromString(controller->itemListEntries, controller->itemNames[i], i);
        }

        StringList_AddFromMessageBank(controller->itemListEntries, controller->bagStringsLoader, Bag_Text_Empty, LIST_CANCEL);
        StringList_AddFromMessageBank(controller->itemListEntries, controller->bagStringsLoader, Bag_Text_Empty, ITEM_LIST_EMPTY_ENTRY);

        pocket->listEntryCount = i + 3;
    } else {
        u32 i;
        for (i = 0; i < sPocketSizes[pocket->pocketType]; i++) {
            if (pocket->items[i].item == ITEM_NONE || pocket->items[i].quantity == 0) {
                break;
            }

            LoadItemName(controller->itemNamesLoader, controller->itemNames[i], pocket->items[i].item, HEAP_ID_BAG);
            StringList_AddFromString(controller->itemListEntries, controller->itemNames[i], i);
        }

        if (controller->bagCtx->mode != BAG_MODE_POFFIN_MULTIPLAYER) {
            if (pocket->pocketType == POCKET_BERRIES) {
                StringList_AddFromMessageBank(controller->itemListEntries, controller->bagStringsLoader, Bag_Text_Empty, LIST_CANCEL); // The game has some logic to print the close bag message instead of the empty string in this case
            } else {
                StringList_AddFromMessageBank(controller->itemListEntries, controller->bagStringsLoader, Bag_Text_CloseBag, LIST_CANCEL);
            }

            StringList_AddFromMessageBank(controller->itemListEntries, controller->bagStringsLoader, Bag_Text_Empty, ITEM_LIST_EMPTY_ENTRY);
            pocket->listEntryCount = i + 3;
        } else { // Can't close the bag when choosing a berry for multiplayer poffin making
            StringList_AddFromMessageBank(controller->itemListEntries, controller->bagStringsLoader, Bag_Text_Empty, ITEM_LIST_EMPTY_ENTRY);
            pocket->listEntryCount = i + 2;
        }
    }
}

static void InitItemNameBuffers(BagController *controller)
{
    for (u32 i = 0; i < LARGEST_POCKET_SIZE; i++) {
        controller->itemNames[i] = String_Init(18, HEAP_ID_BAG);
    }
}

static void FreeItemNameBuffers(BagController *controller)
{
    for (u32 i = 0; i < LARGEST_POCKET_SIZE; i++) {
        String_Free(controller->itemNames[i]);
    }
}

static void LimitItemListScroll(u16 *cursorScroll, u16 *cursorPos, u8 numEntries)
{
    numEntries -= 1;

    u8 numShownEntries;
    if (numEntries > BAG_UI_NUM_VISIBLE_ITEMS - 1) {
        numShownEntries = BAG_UI_NUM_VISIBLE_ITEMS - 2;
    } else {
        numShownEntries = numEntries - 1;
    }

    if (*cursorScroll != 0) {
        if (*cursorScroll + numShownEntries > numEntries - 1) {
            *cursorScroll = numEntries - 1 - numShownEntries;
        }
    }

    if (*cursorScroll + *cursorPos >= numEntries - 1) {
        *cursorPos = numEntries - 1 - *cursorScroll;
    }
}

static void RestrictItemListCursor(u16 *cursorScroll, u16 *cursorPos, u8 numEntries, u8 numVisibleSlots)
{
    numEntries -= 1;

    u8 numShownEntries;
    if (numEntries > BAG_UI_NUM_VISIBLE_ITEMS - 1) {
        numShownEntries = BAG_UI_NUM_VISIBLE_ITEMS - 2;
    } else {
        numShownEntries = numEntries - 1;
    }

    if (!(*cursorPos >= (numVisibleSlots >> 1) + 2)) {
        return;
    }

    for (u8 i = 0; i <= *cursorPos - (numVisibleSlots >> 1) - 2; i++) {
        if (*cursorScroll + numShownEntries == numEntries - 1) {
            break;
        }
        *cursorPos -= 1;
        *cursorScroll += 1;
    }
}

static void CreateItemListMenu(BagController *controller, u16 initialScroll, u16 initialPos)
{
    ListMenuTemplate template = sItemListMenuTemplate;
    template.choices = controller->itemListEntries;
    template.window = &controller->windows[BAG_UI_WINDOW_ITEM_LIST];
    template.count = controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].listEntryCount;
    template.parent = (void *)controller;

    if (controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].pocketType == POCKET_TMHMS
        || controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].pocketType == POCKET_BERRIES) {
        template.textXOffset = 35; // Space to print the berry/HM/TM number
    } else {
        template.textXOffset = 0;
    }

    controller->itemList = ListMenu_New(&template, initialScroll, initialPos, HEAP_ID_BAG);
    Window_ScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_ITEM_LIST]);
}

static void ItemListMenuCursorCB(ListMenu *menu, u32 index, u8 onInit)
{
    BagController *controller = (BagController *)ListMenu_GetAttribute(menu, LIST_MENU_PARENT);

    if (onInit != TRUE) {
        switch (controller->cursorSoundIdx) {
        case 0:
            Sound_PlayEffect(SEQ_SE_DP_GASA01);
            break;
        case 1:
            Sound_PlayEffect(SEQ_SE_DP_GASA02);
            break;
        default:
            Sound_PlayEffect(SEQ_SE_DP_GASA03);
        }

        controller->cursorSoundIdx = (controller->cursorSoundIdx + 1) % 3;

        if (controller->isTouchingDial == FALSE || ManagedSprite_IsAnimated(controller->sprites[BAG_SPRITE_BAG]) == FALSE) {
            ManagedSprite_SetAnimationFrame(controller->sprites[BAG_SPRITE_BAG], 0);
            ManagedSprite_SetAnim(
                controller->sprites[BAG_SPRITE_BAG], 8 + controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].pocketType);
        }
    }

    if (controller->isMovingItem == TRUE) {
        return;
    }

    Window_FillTilemap(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION], 0);

    if (index != LIST_CANCEL) {
        BagApplicationPocket *pocket;

        pocket = &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx];
        BagUI_PrintItemDescription(controller, pocket->items[index].item);
        BagUI_UpdateItemSprite(controller, pocket->items[index].item);
    } else {
        BagUI_PrintItemDescription(controller, -1);
        BagUI_UpdateItemSprite(controller, -1);
    }

    if (controller->hideDescription == FALSE) {
        Window_ScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION]);
    }
}

static void ItemListMenuPrintCB(ListMenu *menu, u32 index, u8 yOffset)
{
    BagController *controller = (BagController *)ListMenu_GetAttribute(menu, LIST_MENU_PARENT);
    BagApplicationPocket *pocket = &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx];

    if (controller->isMovingItem == TRUE && controller->movedItemID == index) {
        ListMenu_SetAltTextColors(menu, 8, 0, 9);
    } else {
        ListMenu_SetAltTextColors(menu, 1, 0, 2);
    }

    if (pocket->pocketType == POCKET_KEY_ITEMS) {
        if (index != ITEM_LIST_EMPTY_ENTRY && index != LIST_CANCEL) {
            if (Bag_GetRegisteredItem(controller->bag) == pocket->items[index].item) {
                BagUI_DrawRegisteredIcon(controller, yOffset);
            }
        }
    } else if (pocket->pocketType == POCKET_TMHMS) {
        if (index == LIST_CANCEL) {
            BagUI_PrintCloseBagEntry(controller, yOffset);
        } else if (index != ITEM_LIST_EMPTY_ENTRY) {
            BagUI_PrintTMHMNumber(controller, &pocket->items[index], yOffset);
        }
    } else if (pocket->pocketType == POCKET_BERRIES) {
        if (index == LIST_CANCEL) {
            BagUI_PrintCloseBagEntry(controller, yOffset);
        } else if (index != ITEM_LIST_EMPTY_ENTRY) {
            BagUI_PrintBerryNumber(controller, &pocket->items[index], yOffset);
        }
    } else {
        if (index != ITEM_LIST_EMPTY_ENTRY && index != LIST_CANCEL) {
            if (controller->isMovingItem == 1 && controller->movedItemID == index) {
                BagUI_PrintItemCount(controller, pocket->items[index].quantity, yOffset, TEXT_COLOR(8, 9, 0));
            } else {
                BagUI_PrintItemCount(controller, pocket->items[index].quantity, yOffset, TEXT_COLOR(1, 2, 0));
            }
        }
    }
}

static void FreeItemListMenu(BagController *controller)
{
    ListMenu_Free(controller->itemList, &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].cursorScroll, &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].cursorPos);
    StringList_Free(controller->itemListEntries);
    controller->itemList = NULL;
}

static int ProcessItemListInput_Normal(BagController *controller)
{
    StepPocketSelectorArrowsAnim(controller);

    if (CheckItemListDialScroll_Normal(controller) == TRUE) {
        return BAG_APP_STATE_WAIT_SELECT_ITEM_GENERAL;
    }

    if (CheckPocketChange_DPad(controller) == TRUE) {
        return BAG_APP_STATE_SWITCH_POCKET;
    }

    if (CheckPocketChange_Touch(controller) == TRUE) {
        return BAG_APP_STATE_SWITCH_POCKET;
    }

    u8 input = ProcessItemListMenuInput(controller);

    if (input == ITEM_LIST_INPUT_SELECT_ITEM) {
        BagUI_SetHighlightSpritesPalette(controller, PLTT_2);
        Window_FillTilemap(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION], 0);
        Window_ClearAndCopyToVRAM(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION]);
        MakeItemActionsMenu(controller);

        if (controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].pocketType == POCKET_TMHMS) {
            ToggleHideItemSprite(controller, TRUE);
        }

        return BAG_APP_STATE_WAIT_SELECT_ITEM_ACTION;
    } else if (input == ITEM_LIST_INPUT_MOVE_ITEM) {
        StartMovingItem(controller);
        return BAG_APP_STATE_MOVING_ITEM;
    } else if (input == ITEM_LIST_INPUT_EXIT_BAG) {
        return BAG_APP_STATE_EXIT;
    }

    return BAG_APP_STATE_WAIT_SELECT_ITEM_GENERAL;
}

static u8 ProcessItemListMenuInput(BagController *interface)
{
    BagApplicationPocket *pocket = &interface->bagCtx->accessiblePockets[interface->bagCtx->currPocketIdx];

    ListMenu_GetListAndCursorPos(interface->itemList, &pocket->cursorScroll, &pocket->cursorPos);

    if (JOY_NEW(PAD_BUTTON_SELECT)) {
        if (CanMoveSelectedEntry(interface) == TRUE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            return ITEM_LIST_INPUT_MOVE_ITEM;
        }
    }

    u32 selectedItem = ListMenu_ProcessInput(interface->itemList);
    u16 newCursorScroll, newCursorPos;
    ListMenu_GetListAndCursorPos(interface->itemList, &newCursorScroll, &newCursorPos);

    if (pocket->cursorPos != newCursorPos) {
        ManagedSprite_SetPositionXY(
            interface->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], 177, 24 + TEXT_LINES(newCursorPos - 1));
    }

    pocket->cursorScroll = newCursorScroll;
    pocket->cursorPos = newCursorPos;

    if (selectedItem == LIST_NOTHING_CHOSEN) {
        if (CheckDialButtonPressed(interface) == TRUE) {
            selectedItem = ListMenu_GetIndexOfChoice(interface->itemList, newCursorScroll + newCursorPos);
            interface->dialButtonAnimStep = 1;
        }
    }

    switch (selectedItem) {
    case LIST_NOTHING_CHOSEN: {
        u8 lastAction = ListMenu_GetLastAction(interface->itemList);

        if (lastAction == LIST_MENU_ACTION_MOVE_UP) {
            RotateDial(interface, 36);
        } else if (lastAction == LIST_MENU_ACTION_MOVE_DOWN) {
            RotateDial(interface, -36);
        }
    } break;
    case LIST_CANCEL:
        if (interface->bagCtx->mode == BAG_MODE_POFFIN_MULTIPLAYER) {
            return ITEM_LIST_INPUT_NONE;
        }

        Sound_PlayEffect(SEQ_SE_CONFIRM);
        interface->bagCtx->selectedItem = ITEM_NONE;
        interface->bagCtx->exitCode = BAG_EXIT_CODE_DONE;
        App_StartScreenFade(TRUE, HEAP_ID_BAG);
        return ITEM_LIST_INPUT_EXIT_BAG;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        interface->bagCtx->selectedItem = (u16)pocket->items[selectedItem].item;
        interface->selectedItemCountLimit = (u16)pocket->items[selectedItem].quantity;
        return ITEM_LIST_INPUT_SELECT_ITEM;
    }

    return ITEM_LIST_INPUT_NONE;
}

static void CalcPocketSelectorIconsPos(BagController *controller)
{
    controller->pocketSelectorIconsX = 6 + (90 - (10 * controller->numPockets)) / (controller->numPockets + 1);
    controller->pocketSelectorIconsSpacing = 10 + controller->pocketSelectorIconsX - 6;
}

static u8 CheckPocketChange_DPad(BagController *controller)
{
    if (JOY_REPEAT(PAD_KEY_LEFT)) {
        if (controller->numPockets == 1) {
            return FALSE;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);

        if (controller->bagCtx->currPocketIdx != 0) {
            controller->pocketSelector.nextPocket = controller->bagCtx->currPocketIdx - 1;
            controller->nextPocket = controller->bagCtx->currPocketIdx - 1;
        } else {
            controller->pocketSelector.nextPocket = controller->numPockets - 1;
            controller->nextPocket = controller->numPockets - 1;
        }

        BagUI_StartMovingPocketHighlight(controller);
        controller->pocketSelector.nextPocketDirection = 0;
        SetupPocketChangeFromDPad(controller);
        Bg_ScheduleTilemapTransfer(controller->bgConfig, BG_LAYER_SUB_0);

        return TRUE;
    }
    if (JOY_REPEAT(PAD_KEY_RIGHT)) {
        if (controller->numPockets == 1) {
            return FALSE;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);

        if (controller->bagCtx->currPocketIdx + 1 < controller->numPockets) {
            controller->pocketSelector.nextPocket = controller->bagCtx->currPocketIdx + 1;
            controller->nextPocket = controller->bagCtx->currPocketIdx + 1;
        } else {
            controller->pocketSelector.nextPocket = 0;
            controller->nextPocket = 0;
        }

        BagUI_StartMovingPocketHighlight(controller);
        controller->pocketSelector.nextPocketDirection = 1;
        SetupPocketChangeFromDPad(controller);
        Bg_ScheduleTilemapTransfer(controller->bgConfig, BG_LAYER_SUB_0);

        return TRUE;
    }

    return FALSE;
}

static void SetupPocketChangeFromDPad(BagController *controller)
{
    SetupPocketSwitch(controller);
    controller->pocketSelector.pocketChangeState = 3;
    controller->pocketSelector.unk_07_7 = 0;
}

static void SetupPocketChangeFromTouch(BagController *controller)
{
    if (controller->pocketSelector.nextPocketDirection != 2) {
        SetupPocketSwitch(controller);
    } else {
        controller->pocketSelector.animStage = 2;
    }

    controller->pocketSelector.pocketChangeState = 0;
    controller->pocketSelector.unk_07_7 = 1;
}

static void SetupPocketSwitch(BagController *controller)
{
    BagPocketSelector *animMan = &controller->pocketSelector;

    animMan->animStage = 0;
    animMan->animFrame = 0;
    animMan->pocketChangeFrame = 0;
    animMan->unk_07_0 = 0;
    animMan->unk_07_4 = 0;

    FreeItemListMenu(controller);
    Window_FillTilemap(&controller->windows[BAG_UI_WINDOW_ITEM_LIST], 0);
    Window_FillTilemap(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION], 0);
    Window_ScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_ITEM_LIST]);
    Window_ScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION]);
    ManagedSprite_SetDrawFlag(controller->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], FALSE);
    ManagedSprite_SetDrawFlag(controller->sprites[BAG_SPRITE_ITEM], FALSE);
    BagUI_DrawPocketSelectorIcon(controller, controller->bagCtx->currPocketIdx, FALSE);
    DrawPocketButton(controller, controller->bagCtx->currPocketIdx, 0);
}

static u8 DoPocketSwitch(BagController *controller)
{

    BagPocketSelector *pocketSelector = &controller->pocketSelector;

    if (TouchScreen_Touched() == 0) {
        pocketSelector->unk_07_4 = 1;
    }

    int pocketIdx = CheckPlayerHeldPocketButton(controller);

    if (pocketIdx == TOUCHSCREEN_INPUT_NONE || pocketIdx != pocketSelector->nextPocket) {
        pocketSelector->unk_07_0 = 1;
    }

    if (DoDPadPocketSwitch(controller) == FALSE) {
        if (pocketSelector->unk_07_4 == 1 && pocketIdx != TOUCHSCREEN_INPUT_NONE) {
            controller->bagCtx->currPocketIdx = pocketSelector->nextPocket;

            if (pocketSelector->nextPocket > (u8)pocketIdx) {
                pocketSelector->nextPocketDirection = 0;
                pocketSelector->animStage = 0;
                DrawPocketButton(controller, pocketSelector->nextPocket, 0);
                BagUI_DrawPocketSelectorIcon(controller, pocketSelector->nextPocket, FALSE);
            } else if (pocketSelector->nextPocket < (u8)pocketIdx) {
                pocketSelector->nextPocketDirection = 1;
                pocketSelector->animStage = 0;
                DrawPocketButton(controller, pocketSelector->nextPocket, 0);
                BagUI_DrawPocketSelectorIcon(controller, pocketSelector->nextPocket, FALSE);
            } else {
                pocketSelector->nextPocketDirection = 2;
            }

            pocketSelector->nextPocket = (u8)pocketIdx;
            pocketSelector->unk_07_0 = 0;
            pocketSelector->unk_07_4 = 0;
            pocketSelector->pocketChangeState = 0;
            controller->nextPocket = (u8)pocketIdx;

            BagUI_StartMovingPocketHighlight(controller);
        }
    }

    u8 pocketSelectorAnimDone = StepPocketSelectorAnim(controller);
    u8 pocketButtonAnimDone = StepPocketSwitchPressedButtonAnim(controller);

    BagUI_StepPocketHighlightMovement(controller);

    if (pocketSelectorAnimDone == TRUE && pocketButtonAnimDone == TRUE && pocketSelector->unk_07_0 == TRUE && BagUI_IsPocketHighlightDoneMoving(controller) == TRUE) {
        if (pocketSelector->unk_07_7 == TRUE) {
            DrawPocketButton(controller, pocketSelector->nextPocket, 1);
            Bg_ScheduleTilemapTransfer(controller->bgConfig, BG_LAYER_SUB_0);
        }

        ManagedSprite_SetDrawFlag(controller->sprites[BAG_SPRITE_ITEM], TRUE);
        return TRUE;
    }

    return FALSE;
}

static u8 DoDPadPocketSwitch(BagController *controller)
{
    BagPocketSelector *pocketSelector = &controller->pocketSelector;

    if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        if (controller->numPockets == 1) {
            return TRUE;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);
        ManagedSprite_SetAnim(controller->sprites[BAG_SPRITE_BAG], controller->bagCtx->accessiblePockets[pocketSelector->nextPocket].pocketType);
        DrawPocketButton(controller, pocketSelector->nextPocket, 0);
        Bg_ScheduleTilemapTransfer(controller->bgConfig, BG_LAYER_SUB_0);

        controller->bagCtx->currPocketIdx = pocketSelector->nextPocket;

        if (pocketSelector->nextPocket != 0) {
            pocketSelector->nextPocket = pocketSelector->nextPocket - 1;
            controller->nextPocket = controller->nextPocket - 1;
        } else {
            pocketSelector->nextPocket = controller->numPockets - 1;
            controller->nextPocket = controller->numPockets - 1;
        }

        pocketSelector->animStage = 0;
        pocketSelector->nextPocketDirection = 0;
        pocketSelector->unk_07_4 = 1;
        pocketSelector->unk_07_0 = 1;
        pocketSelector->unk_07_7 = 0;

        if (pocketSelector->pocketChangeState != 3) {
            pocketSelector->pocketChangeState = 4;
        }

        BagUI_StartMovingPocketHighlight(controller);
        return TRUE;
    }
    if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        if (controller->numPockets == 1) {
            return TRUE;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);
        ManagedSprite_SetAnim(controller->sprites[BAG_SPRITE_BAG], controller->bagCtx->accessiblePockets[pocketSelector->nextPocket].pocketType);
        DrawPocketButton(controller, pocketSelector->nextPocket, 0);
        Bg_ScheduleTilemapTransfer(controller->bgConfig, BG_LAYER_SUB_0);

        controller->bagCtx->currPocketIdx = pocketSelector->nextPocket;

        if (pocketSelector->nextPocket + 1 < controller->numPockets) {
            pocketSelector->nextPocket = pocketSelector->nextPocket + 1;
            controller->nextPocket = controller->nextPocket + 1;
        } else {
            pocketSelector->nextPocket = 0;
            controller->nextPocket = 0;
        }

        pocketSelector->animStage = 0;
        pocketSelector->nextPocketDirection = 1;
        pocketSelector->unk_07_4 = 1;
        pocketSelector->unk_07_0 = 1;
        pocketSelector->unk_07_7 = 0;

        if (pocketSelector->pocketChangeState != 3) {
            pocketSelector->pocketChangeState = 4;
        }

        BagUI_StartMovingPocketHighlight(controller);
        return TRUE;
    }

    return FALSE;
}

static u8 StepPocketSelectorAnim(BagController *controller)
{
    BagPocketSelector *pocketSelector = &controller->pocketSelector;

    switch (pocketSelector->animStage) {
    case 0:
        pocketSelector->animFrame = 0;
        pocketSelector->animStage++;
        break;
    case 1:
        if (pocketSelector->animFrame < 8) {
            pocketSelector->animFrame++;
            BagUI_PrintPocketNames(controller);
        } else {
            if (controller->itemList != NULL) {
                ListMenu_Free(controller->itemList, &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].cursorScroll, &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].cursorPos);
                StringList_Free(controller->itemListEntries);
            }

            controller->bagCtx->currPocketIdx = pocketSelector->nextPocket;

            ManagedSprite_SetAnim(controller->sprites[BAG_SPRITE_BAG], controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].pocketType);
            BagUI_DrawPocketSelectorIcons(controller);
            BagUI_DrawPocketSelectorIcon(controller, controller->bagCtx->currPocketIdx, TRUE);
            LoadCurrentPocketItemNames(controller);
            LimitItemListScroll(&controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].cursorScroll, &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].cursorPos, controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].listEntryCount);
            RestrictItemListCursor(&controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].cursorScroll, &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].cursorPos, controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].listEntryCount, BAG_UI_NUM_VISIBLE_ITEMS);
            CreateItemListMenu(controller, controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].cursorScroll, controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].cursorPos);
            ManagedSprite_SetPositionXY(controller->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], 177, 24 + TEXT_LINES(controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].cursorPos - 1));
            ManagedSprite_SetDrawFlag(controller->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], TRUE);

            pocketSelector->animStage++;
            return TRUE;
        }

        break;
    case 2:
        return TRUE;
    }

    return FALSE;
}

static u8 CheckPocketChange_Touch(BagController *controller)
{
    int pocketIndex = CheckPlayerPressedPocketButton(controller);

    if (pocketIndex == TOUCHSCREEN_INPUT_NONE) {
        return FALSE;
    }

    if (controller->numPockets == 1) {
        return FALSE;
    }

    if (controller->bagCtx->currPocketIdx == (u8)pocketIndex) {
        controller->pocketSelector.nextPocketDirection = 2;
    } else if (controller->bagCtx->currPocketIdx > (u8)pocketIndex) {
        controller->pocketSelector.nextPocketDirection = 0;
    } else {
        controller->pocketSelector.nextPocketDirection = 1;
    }

    controller->pocketSelector.nextPocket = (u8)pocketIndex;
    controller->nextPocket = (u8)pocketIndex;

    BagUI_StartMovingPocketHighlight(controller);
    SetupPocketChangeFromTouch(controller);

    return TRUE;
}

static int CheckPlayerPressedPocketButton(BagController *controller)
{
    int pocketIndex = TouchScreen_CheckRectanglePressed(sPocketButtonCoordLists[controller->numPockets].buttonTouchRect);

    if (pocketIndex != TOUCHSCREEN_INPUT_NONE) {
        u16 mask = ~1;

        if (Bg_DoesPixelAtXYMatchVal(controller->bgConfig, BG_LAYER_SUB_0, gSystem.touchX, gSystem.touchY, &mask) == FALSE) {
            return TOUCHSCREEN_INPUT_NONE;
        }
    }

    return pocketIndex;
}

static int CheckPlayerHeldPocketButton(BagController *controller)
{
    int pocketIndex = TouchScreen_CheckRectangleHeld(sPocketButtonCoordLists[controller->numPockets].buttonTouchRect);

    if (pocketIndex != TOUCHSCREEN_INPUT_NONE) {
        u16 mask = ~1;

        if (Bg_DoesPixelAtXYMatchVal(controller->bgConfig, BG_LAYER_SUB_0, gSystem.touchX, gSystem.touchY, &mask) == FALSE) {
            return TOUCHSCREEN_INPUT_NONE;
        }
    }

    return pocketIndex;
}

static u8 StepPocketSwitchPressedButtonAnim(BagController *controller)
{
    BagPocketSelector *pocketSelector = &controller->pocketSelector;

    switch (pocketSelector->pocketChangeState) {
    case 0:
        pocketSelector->pocketChangeFrame = 0;
        pocketSelector->unk_07_7 = 1;
        pocketSelector->pressedPocketBtnIdx = pocketSelector->nextPocket;
        pocketSelector->pocketChangeState++;
        break;
    case 1:
        if (pocketSelector->pocketChangeFrame != 3) {
            break;
        }

        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        DrawPocketButton(controller, pocketSelector->pressedPocketBtnIdx, 2);
        Bg_ScheduleTilemapTransfer(controller->bgConfig, BG_LAYER_SUB_0);
        BagUI_DrawBtnShockwave(controller, sPocketButtonCoordLists[controller->numPockets].buttonSprite[pocketSelector->pressedPocketBtnIdx * 2] * TILE_WIDTH_PIXELS + (5 * TILE_WIDTH_PIXELS) / 2, sPocketButtonCoordLists[controller->numPockets].buttonSprite[pocketSelector->pressedPocketBtnIdx * 2 + 1] * TILE_HEIGHT_PIXELS + (5 * TILE_HEIGHT_PIXELS) / 2);

        pocketSelector->pocketChangeState++;
        break;
    case 2:
        if (pocketSelector->pocketChangeFrame != 7) {
            break;
        }

        pocketSelector->pocketChangeState++;
        return TRUE;
    case 3:
        return TRUE;
    case 4:
        pocketSelector->pocketChangeState = 3;
        return TRUE;
    }

    pocketSelector->pocketChangeFrame++;
    return FALSE;
}

static void DrawPocketButton(BagController *interface, u8 pocketIdx, u8 buttonState)
{
    u16 *tilemapBuffer = (u16 *)Bg_GetTilemapBuffer(interface->bgConfig, BG_LAYER_SUB_0);
    const u8 *iconCoordinates = &sPocketButtonCoordLists[interface->numPockets].buttonSprite[pocketIdx * 2];
    u8 pocketType = interface->bagCtx->accessiblePockets[pocketIdx].pocketType;
    u16 pocketButtonTilesStart = (pocketType / 2) * (30 * 5) + (pocketType & 1) * 15 + 30 + buttonState * 5;

    for (u8 y = 0; y < 5; y++) {
        for (u8 x = 0; x < 5; x++) {
            tilemapBuffer[(y + iconCoordinates[1]) * 32 + x + iconCoordinates[0]] = pocketButtonTilesStart + y * 30 + x + (2 << 12);
        }
    }
}

static void DrawDialButton(BagController *controller, u8 buttonState)
{
    u16 *tilemapBuffer = (u16 *)Bg_GetTilemapBuffer(controller->bgConfig, BG_LAYER_SUB_0);
    u16 buttonTilesStart = 0x276 + 6 * buttonState;

    for (u8 y = 0; y < 6; y++) {
        for (u8 x = 0; x < 6; x++) {
            tilemapBuffer[(7 + y) * 32 + 13 + x] = buttonTilesStart + y * 30 + x + (3 << 12);
        }
    }

    Bg_ScheduleTilemapTransfer(controller->bgConfig, BG_LAYER_SUB_0);
}

static void StepDialButtonPressedAnim(BagController *controller)
{
    switch (controller->dialButtonAnimStep) {
    case 0:
        break;
    case 1:
        BagUI_DrawBtnShockwave(controller, DIAL_CENTER_X, DIAL_CENTER_Y);
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        DrawDialButton(controller, 2);

        controller->dialButtonAnimFrame = 0;
        controller->dialButtonAnimStep++;
        break;
    case 2:
        if (controller->dialButtonAnimFrame == 3) {
            DrawDialButton(controller, 1);

            controller->dialButtonAnimStep++;
            controller->dialButtonAnimFrame = 0;
        } else {
            controller->dialButtonAnimFrame++;
        }

        break;
    case 3:
        if (controller->dialButtonAnimFrame == 2) {
            DrawDialButton(controller, 0);

            controller->dialButtonAnimStep = 0;
            controller->dialButtonAnimFrame = 0;
        } else {
            controller->dialButtonAnimFrame++;
        }
    }
}

static void DrawTouchScreenButtons(BagController *controller)
{
    DrawDialButton(controller, 0);
    if (controller->numPockets != 1) {
        for (u8 i = 0; i < controller->numPockets; i++) {
            DrawPocketButton(controller, i, 0);
        }
    }

    Bg_ScheduleTilemapTransfer(controller->bgConfig, BG_LAYER_SUB_0);
}

static void StepPocketSelectorArrowsAnim(BagController *controller)
{
    if (controller->pocketSelectorArrowsAnimTimer == 0) {
        s16 x, y;

        switch (controller->pocketSelectorArrowsAnimStep) {
        case 0:
        case 1:
            ManagedSprite_GetPositionXY(controller->sprites[BAG_SPRITE_POCKET_SELECTOR_LEFT_ARROW], &x, &y);

            x -= 1;
            ManagedSprite_SetPositionXY(controller->sprites[BAG_SPRITE_POCKET_SELECTOR_LEFT_ARROW], x, y);
            ManagedSprite_GetPositionXY(controller->sprites[BAG_SPRITE_POCKET_SELECTOR_RIGHT_ARROW], &x, &y);

            x += 1;
            ManagedSprite_SetPositionXY(controller->sprites[BAG_SPRITE_POCKET_SELECTOR_RIGHT_ARROW], x, y);
            break;
        case 2:
        case 3:
            ManagedSprite_GetPositionXY(controller->sprites[BAG_SPRITE_POCKET_SELECTOR_LEFT_ARROW], &x, &y);

            x += 1;
            ManagedSprite_SetPositionXY(controller->sprites[BAG_SPRITE_POCKET_SELECTOR_LEFT_ARROW], x, y);
            ManagedSprite_GetPositionXY(controller->sprites[BAG_SPRITE_POCKET_SELECTOR_RIGHT_ARROW], &x, &y);

            x -= 1;
            ManagedSprite_SetPositionXY(controller->sprites[BAG_SPRITE_POCKET_SELECTOR_RIGHT_ARROW], x, y);
            break;
        }

        controller->pocketSelectorArrowsAnimStep = (controller->pocketSelectorArrowsAnimStep + 1) & 3;
    }

    controller->pocketSelectorArrowsAnimTimer = (controller->pocketSelectorArrowsAnimTimer + 1) & 3;
}

static BOOL CheckDialButtonPressed(BagController *controller)
{
    int touchedZoneIdx = TouchScreen_CheckRectanglePressed(sDialBtnTouchRect);

    if (touchedZoneIdx != TOUCHSCREEN_INPUT_NONE) {
        u16 mask = ~1;

        if (Bg_DoesPixelAtXYMatchVal(controller->bgConfig, BG_LAYER_SUB_0, gSystem.touchX, gSystem.touchY, &mask) == FALSE) {
            return FALSE;
        }

        return TRUE;
    }

    return FALSE;
}

static u8 CanMoveSelectedEntry(BagController *controller)
{
    BagApplicationPocket *pocket = &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx];

    if (ListMenu_GetIndexOfChoice(controller->itemList, pocket->cursorScroll + pocket->cursorPos) == LIST_CANCEL) {
        return FALSE;
    }

    if (controller->bagCtx->mode != BAG_MODE_NORMAL) {
        return FALSE;
    }

    if (pocket->pocketType == POCKET_BERRIES || pocket->pocketType == POCKET_TMHMS) {
        return FALSE;
    }

    return TRUE;
}

static void StartMovingItem(BagController *controller)
{
    BagApplicationPocket *pocket = &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx];

    controller->isMovingItem = TRUE;
    controller->movedItemPos = pocket->cursorScroll + pocket->cursorPos;
    controller->movedItemID = ListMenu_GetIndexOfChoice(controller->itemList, controller->movedItemPos);

    BagUI_PrintMovingItemMsg(controller);
    ListMenu_Draw(controller->itemList);
    SwitchSpritesForSorting(controller);
}

static u8 ProcessItemListInput_MovingItem(BagController *controller)
{

    if (CheckItemListDialScroll_Sorting(controller) == TRUE) {
        return FALSE;
    }

    BagApplicationPocket *pocket = &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx];
    ListMenu_GetListAndCursorPos(controller->itemList, &pocket->cursorScroll, &pocket->cursorPos);

    if (CheckDialButtonPressed(controller) == TRUE) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        MoveItemToCurrentPosition(controller);
        controller->dialButtonAnimStep = 1;

        return TRUE;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_SELECT) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        MoveItemToCurrentPosition(controller);
        return TRUE;
    }

    u32 selectedItem = ListMenu_ProcessInput(controller->itemList);
    u16 cursorScroll, cursorPos;
    ListMenu_GetListAndCursorPos(controller->itemList, &cursorScroll, &cursorPos);

    if (pocket->cursorPos != cursorPos) {
        ManagedSprite_SetPositionXY(controller->sprites[BAG_SPRITE_MOVING_ITEM_POS_BAR], 177, 16 + TEXT_LINES(cursorPos - 1));
    }

    pocket->cursorScroll = cursorScroll;
    pocket->cursorPos = cursorPos;

    switch (selectedItem) {
    case LIST_NOTHING_CHOSEN: {
        u8 lastAction = ListMenu_GetLastAction(controller->itemList);

        if (lastAction == LIST_MENU_ACTION_MOVE_UP) {
            RotateDial(controller, 36);
        } else if (lastAction == LIST_MENU_ACTION_MOVE_DOWN) {
            RotateDial(controller, -36);
        }
    } break;
    case LIST_CANCEL:
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            MoveItemToCurrentPosition(controller);
        } else {
            StopMovingItem(controller);
        }

        return TRUE;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        MoveItemToCurrentPosition(controller);
        return TRUE;
    }

    return FALSE;
}

static void MoveItemToCurrentPosition(BagController *controller)
{
    BagApplicationPocket *pocket = &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx];
    u16 currentPos = pocket->cursorScroll + pocket->cursorPos;

    if (!(controller->movedItemPos == currentPos || controller->movedItemPos == (currentPos - 1))) {
        Item_MoveInPocket(pocket->items, controller->movedItemPos - 1, currentPos - 1);
        StringList_Free(controller->itemListEntries);
        LoadCurrentPocketItemNames(controller);
    }

    StopMovingItem(controller);
}

static void StopMovingItem(BagController *controller)
{
    BagApplicationPocket *pocket = &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx];

    ListMenu_Free(controller->itemList, &pocket->cursorScroll, &pocket->cursorPos);
    controller->itemList = NULL;

    if (controller->movedItemPos < (pocket->cursorScroll + pocket->cursorPos)) {
        pocket->cursorPos -= 1;
    }

    controller->isMovingItem = FALSE;
    controller->movedItemPos = 0;
    controller->movedItemID = ITEM_NONE;

    CreateItemListMenu(controller, pocket->cursorScroll, pocket->cursorPos);
    SwitchSpritesForSorting(controller);
}

static void SwitchSpritesForSorting(BagController *interface)
{
    BagApplicationPocket *pocket = &interface->bagCtx->accessiblePockets[interface->bagCtx->currPocketIdx];

    if (interface->isMovingItem == FALSE) {
        ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], 177, 24 + TEXT_LINES(pocket->cursorPos - 1));
        ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], TRUE);
        ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_MOVING_ITEM_POS_BAR], FALSE);

        if (interface->numPockets != 1) {
            ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_POCKET_SELECTOR_LEFT_ARROW], TRUE);
            ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_POCKET_SELECTOR_RIGHT_ARROW], TRUE);
        }
    } else {
        ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_MOVING_ITEM_POS_BAR], 177, 16 + TEXT_LINES(pocket->cursorPos - 1));
        ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], FALSE);
        ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_MOVING_ITEM_POS_BAR], TRUE);

        if (interface->numPockets != 1) {
            ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_POCKET_SELECTOR_LEFT_ARROW], FALSE);
            ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_POCKET_SELECTOR_RIGHT_ARROW], FALSE);
        }
    }
}

static void MakeItemActionsMenu(BagController *controller)
{
    void *itemData;
    u32 itemActionsIdx;
    u8 currentPocketType;
    u8 itemActions[NUM_ITEM_ACTIONS];

    itemData = Item_Load(controller->bagCtx->selectedItem, ITEM_FILE_TYPE_DATA, HEAP_ID_BAG);
    itemActionsIdx = 0;
    currentPocketType = controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].pocketType;

    if (controller->bagCtx->mode == BAG_MODE_NORMAL) {
        if (currentPocketType == POCKET_BERRIES) {
            itemActions[itemActionsIdx] = ITEM_ACTION_CHECK_TAG;
            itemActionsIdx++;
        }

        if (controller->bagCtx->mapLoadType == MAP_LOAD_TYPE_COLOSSEUM
            || controller->bagCtx->mapLoadType == MAP_LOAD_TYPE_UNION) {
            if (controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].pocketType == POCKET_MAIL) {
                itemActions[itemActionsIdx] = ITEM_ACTION_CHECK;
                itemActionsIdx++;
            }
        } else {
            if (Item_Get(itemData, ITEM_PARAM_FIELD_USE_FUNC) != ITEM_USE_FUNC_NONE) {
                if (controller->bagCtx->selectedItem == ITEM_BICYCLE && controller->bagCtx->isCycling == TRUE) {
                    itemActions[itemActionsIdx] = ITEM_ACTION_WALK;
                } else if (controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].pocketType == POCKET_MAIL) {
                    itemActions[itemActionsIdx] = ITEM_ACTION_CHECK;
                } else if (controller->bagCtx->selectedItem == ITEM_POFFIN_CASE) {
                    itemActions[itemActionsIdx] = ITEM_ACTION_OPEN;
                } else if (controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].pocketType == POCKET_BERRIES && BerryPatch_IsEmpty(controller->bagCtx->itemUseCtx) == TRUE) {
                    itemActions[itemActionsIdx] = ITEM_ACTION_PLANT;
                } else {
                    itemActions[itemActionsIdx] = ITEM_ACTION_USE;
                }

                itemActionsIdx++;
            }
        }
        if (Item_Get(itemData, ITEM_PARAM_PREVENT_TOSS) == FALSE) {
            itemActions[itemActionsIdx] = ITEM_ACTION_GIVE;
            itemActionsIdx++;

            if (currentPocketType != POCKET_TMHMS) {
                itemActions[itemActionsIdx] = ITEM_ACTION_TRASH;
                itemActionsIdx++;
            }
        }
        if (Item_Get(itemData, ITEM_PARAM_IS_SELECTABLE)) {
            if (Bag_GetRegisteredItem(controller->bag) == controller->bagCtx->selectedItem) {
                itemActions[itemActionsIdx] = ITEM_ACTION_DESELECT;
            } else {
                itemActions[itemActionsIdx] = ITEM_ACTION_REGISTER;
            }

            itemActionsIdx++;
        }
    } else if (controller->bagCtx->mode == BAG_MODE_POFFIN_SINGLEPLAYER
        || controller->bagCtx->mode == BAG_MODE_POFFIN_MULTIPLAYER) {
        itemActions[itemActionsIdx] = ITEM_ACTION_CONFIRM;
        itemActionsIdx++;
        itemActions[itemActionsIdx] = ITEM_ACTION_CHECK_TAG;
        itemActionsIdx++;
    }

    itemActions[itemActionsIdx] = ITEM_ACTION_CANCEL;
    itemActionsIdx++;
    BagUI_ShowItemActionsMenu(controller, itemActions, itemActionsIdx);
    Heap_Free(itemData);
}

static int ProcessMenuInput_SelectAction(BagController *controller)
{
    if (CheckDialScroll_Menu(controller) == TRUE) {
        return BAG_APP_STATE_WAIT_SELECT_ITEM_ACTION;
    }

    u32 selectedOption = Menu_ProcessInput(controller->menu);

    if (selectedOption == MENU_NOTHING_CHOSEN) {
        if (CheckDialButtonPressed(controller) == TRUE) {
            selectedOption = Menu_ProcessExternalInput(controller->menu, MENU_INPUT_CONFIRM);
            controller->dialButtonAnimStep = 1;
        }
    }

    switch (selectedOption) {
    case MENU_NOTHING_CHOSEN: {
        u8 lastAction = Menu_GetLastAction(controller->menu);

        if (lastAction == MENU_ACTION_MOVE_UP) {
            RotateDial(controller, 18);
        } else if (lastAction == MENU_ACTION_MOVE_DOWN) {
            RotateDial(controller, -18);
        }
    } break;
    case MENU_CANCELED:
        BagUI_SetHighlightSpritesPalette(controller, PLTT_1);
        BagUI_CloseItemActionsMenu(controller);

        if (controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].pocketType == POCKET_TMHMS) {
            ToggleHideItemSprite(controller, FALSE);
        }

        return BAG_APP_STATE_WAIT_SELECT_ITEM_GENERAL;
    default: {
        ItemActionFuncPtr itemAction = (ItemActionFuncPtr)selectedOption;
        return itemAction(controller);
    }
    }

    return BAG_APP_STATE_WAIT_SELECT_ITEM_ACTION;
}

static void ToggleHideItemSprite(BagController *controller, u8 hide)
{
    if (hide == FALSE) {
        Bg_LoadToTilemapRect(controller->bgConfig, BG_LAYER_MAIN_1, sItemSpriteBoxTiles, 0, 18, 5, 5);
        ManagedSprite_SetDrawFlag(controller->sprites[BAG_SPRITE_ITEM], TRUE);
    } else {
        Bg_LoadToTilemapRect(controller->bgConfig, BG_LAYER_MAIN_1, sHiddenItemSpriteBoxTiles, 0, 18, 5, 5);
        ManagedSprite_SetDrawFlag(controller->sprites[BAG_SPRITE_ITEM], FALSE);
    }

    Bg_ScheduleTilemapTransfer(controller->bgConfig, BG_LAYER_MAIN_1);
}

const u32 BagApplication_GetItemActionFunc(enum ItemAction action)
{
    return sItemActionFuncs[action];
}

static int ItemActionFunc_Use(BagController *controller)
{
    BagUI_CloseItemActionsMenu(controller);

    s32 itemUseFuncIdx = Item_LoadParam(controller->bagCtx->selectedItem, ITEM_PARAM_FIELD_USE_FUNC, HEAP_ID_BAG);
    ItemCheckUseFunc checkFunc = (ItemCheckUseFunc)GetItemUseFunction(USE_ITEM_TASK_CHECK, itemUseFuncIdx);

    if (checkFunc != NULL) {
        enum ItemUseCheckResult checkResult = checkFunc(controller->bagCtx->itemUseCtx);

        if (checkResult != 0) {
            BagContext_FormatErrorMessage(controller->trainerInfo, controller->stringBuffer, controller->bagCtx->selectedItem, checkResult, HEAP_ID_BAG);
            Window_FillTilemap(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], 15);
            Window_DrawMessageBoxWithScrollCursor(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], FALSE, BASE_TILE_MSG_BOX_FRAME, PLTT_12);
            controller->msgBoxPrinterID = BagUI_PrintStrBufferToWideMsgBox(controller);

            return BAG_APP_STATE_SHOWING_ITEM_USE_MSG;
        }
    }

    return HandleItemUsed(controller);
}

static int CheckPlayerDismissedItemUseMsg(BagController *interface)
{
    if (Text_IsPrinterActive(interface->msgBoxPrinterID) == FALSE) {
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) || gSystem.touchPressed) {
            Window_EraseMessageBox(&interface->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], FALSE);
            Window_ScheduleCopyToVRAM(&interface->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION]);
            BagUI_SetHighlightSpritesPalette(interface, PLTT_1);

            if (interface->bagCtx->mode == BAG_MODE_GARDENING) {
                return BAG_APP_STATE_SELECT_ITEM_GARDENING;
            } else {
                return BAG_APP_STATE_WAIT_SELECT_ITEM_GENERAL;
            }
        }
    }

    return BAG_APP_STATE_SHOWING_ITEM_USE_MSG;
}

static int HandleItemUsed(BagController *interface)
{
    BagApplicationPocket *pocket = &interface->bagCtx->accessiblePockets[interface->bagCtx->currPocketIdx];

    interface->itemUseTaskState = 0;

    if (pocket->pocketType == POCKET_TMHMS) {
        interface->itemUseCallback = TMHMUseTask;
        return BAG_APP_STATE_RUN_ITEM_USE_TASK;
    }

    if (BagContext_FormatUsageMessage(interface->bagCtx->saveData, interface->stringBuffer, interface->bagCtx->selectedItem, HEAP_ID_BAG) == TRUE) {
        Window_FillTilemap(&interface->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], 15);
        Window_DrawMessageBoxWithScrollCursor(&interface->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], FALSE, BASE_TILE_MSG_BOX_FRAME, PLTT_12);
        interface->msgBoxPrinterID = BagUI_PrintStrBufferToWideMsgBox(interface);
        return BAG_APP_STATE_SHOWING_ITEM_USE_MSG;
    }

    if (UseItemInBag(interface, interface->bagCtx->selectedItem) == TRUE) {
        interface->itemUseCallback = InBagItemUseTask;
        return BAG_APP_STATE_RUN_ITEM_USE_TASK;
    }

    App_StartScreenFade(1, HEAP_ID_BAG);
    interface->bagCtx->exitCode = BAG_EXIT_CODE_USE_ITEM;

    return BAG_APP_STATE_EXIT;
}

static int RunItemUseCallback(BagController *controller)
{
    return controller->itemUseCallback(controller);
}

static int TMHMUseTask(BagController *controller)
{
    switch (controller->itemUseTaskState) {
    case 0: {
        u16 move = Item_MoveForTMHM(controller->bagCtx->selectedItem);

        StringTemplate_SetMoveName(controller->strTemplate, 0, move);

        if (Item_IsHMMove(move) == TRUE) {
            MessageLoader_GetString(controller->bagStringsLoader, Bag_Text_BootedUpHM, controller->stringBuffer);
        } else {
            MessageLoader_GetString(controller->bagStringsLoader, Bag_Text_BootedUpTM, controller->stringBuffer);
        }
    }
        Window_FillTilemap(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], 15);
        Window_DrawMessageBoxWithScrollCursor(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], FALSE, BASE_TILE_MSG_BOX_FRAME, PLTT_12);

        controller->msgBoxPrinterID = BagUI_PrintStrBufferToWideMsgBox(controller);
        controller->itemUseTaskState = 1;
        break;
    case 1:
        if (Text_IsPrinterActive(controller->msgBoxPrinterID)) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) || gSystem.touchPressed) {
            String *string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_TMHMContainedMove);

            Window_FillTilemap(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], 15);
            StringTemplate_Format(controller->strTemplate, controller->stringBuffer, string);
            String_Free(string);

            controller->msgBoxPrinterID = BagUI_PrintStrBufferToWideMsgBox(controller);
            controller->itemUseTaskState = 2;
        }
        break;
    case 2:
        if (Text_IsPrinterActive(controller->msgBoxPrinterID) != FALSE) {
            break;
        }

        BagUI_ShowYesNoMenu(controller);
        controller->itemUseTaskState = 3;
        break;
    case 3: {
        u32 selected;

        if (CheckDialScroll_Menu(controller) == TRUE) {
            break;
        }

        if (CheckDialButtonPressed(controller) == TRUE) {
            selected = Menu_ProcessExternalInputAndHandleExit(controller->menu, MENU_INPUT_CONFIRM, HEAP_ID_BAG);
            controller->dialButtonAnimStep = 1;
        } else {
            selected = Menu_ProcessInputAndHandleExit(controller->menu, HEAP_ID_BAG);
        }

        switch (selected) {
        case 0:
            App_StartScreenFade(TRUE, HEAP_ID_BAG);
            ToggleHideItemSprite(controller, FALSE);
            controller->bagCtx->exitCode = BAG_EXIT_CODE_USE_ITEM;
            return BAG_APP_STATE_EXIT;
        case MENU_NOTHING_CHOSEN: {
            u8 action = Menu_GetLastAction(controller->menu);

            if (action == MENU_ACTION_MOVE_UP) {
                RotateDial(controller, 18);
            } else if (action == MENU_ACTION_MOVE_DOWN) {
                RotateDial(controller, -18);
            }
        } break;
        case MENU_CANCELED:
            Window_EraseMessageBox(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], FALSE);
            Window_ScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION]);
            BagUI_SetHighlightSpritesPalette(controller, PLTT_1);
            ToggleHideItemSprite(controller, FALSE);
            return BAG_APP_STATE_WAIT_SELECT_ITEM_GENERAL;
        }
    } break;
    }

    return BAG_APP_STATE_RUN_ITEM_USE_TASK;
}

static BOOL UseItemInBag(BagController *controller, u16 item)
{
    StringTemplate_SetPlayerName(controller->strTemplate, 0, controller->trainerInfo);
    StringTemplate_SetItemName(controller->strTemplate, 1, item);

    String *string;
    if (item == ITEM_BLACK_FLUTE) {
        string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_UsedBlackFlute);
        SetFluteActive(controller, FLUTE_FACTOR_USED_BLACK);
        controller->selectedItemCount = 0;
    } else if (item == ITEM_WHITE_FLUTE) {
        string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_UsedWhiteFlute);
        SetFluteActive(controller, FLUTE_FACTOR_USED_WHITE);
        controller->selectedItemCount = 0;
    } else if (item == ITEM_MAX_REPEL || item == ITEM_SUPER_REPEL || item == ITEM_REPEL) {
        string = TryUseRepel(controller, item);
    } else {
        return FALSE;
    }

    StringTemplate_Format(controller->strTemplate, controller->stringBuffer, string);
    String_Free(string);
    return TRUE;
}

static String *TryUseRepel(BagController *controller, u16 item)
{
    if (SpecialEncounter_RepelStepsEmpty(GetSpecialEncounter(controller)) == FALSE) {
        controller->selectedItemCount = 0;
        return MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_RepelEffectsLinger);
    }

    u32 stepCount = Item_LoadParam(item, ITEM_PARAM_HOLD_EFFECT_PARAM, HEAP_ID_BAG);
    SetRepelSteps(controller, stepCount);
    controller->selectedItemCount = 1;
    Sound_PlayEffect(SEQ_SE_DP_CARD2);

    return MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_UsedRepel);
}

static void TrashSelectedItem(BagController *controller)
{
    Pocket_TryRemoveItem(controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].items, controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].listEntryCount - 3, controller->bagCtx->selectedItem, controller->selectedItemCount, HEAP_ID_BAG);
    ListMenu_Free(controller->itemList, &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].cursorScroll, &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].cursorPos);
    StringList_Free(controller->itemListEntries);

    LoadCurrentPocketItemNames(controller);
    LimitItemListScroll(&controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].cursorScroll, &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].cursorPos, controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].listEntryCount);
    RestrictItemListCursor(&controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].cursorScroll, &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].cursorPos, controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].listEntryCount, BAG_UI_NUM_VISIBLE_ITEMS);
    CreateItemListMenu(controller, controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].cursorScroll, controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].cursorPos);
}

static int InBagItemUseTask(BagController *controller)
{
    switch (controller->itemUseTaskState) {
    case 0:
        Window_FillTilemap(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], 15);
        Window_DrawMessageBoxWithScrollCursor(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], 0, BASE_TILE_MSG_BOX_FRAME, PLTT_12);
        controller->msgBoxPrinterID = BagUI_PrintStrBufferToWideMsgBox(controller);
        controller->itemUseTaskState = 1;
        break;
    case 1:
        if (Text_IsPrinterActive(controller->msgBoxPrinterID)) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) || gSystem.touchPressed) {
            Window_EraseMessageBox(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], FALSE);
            controller->itemUseTaskState = 2;
        }

        break;
    case 2:
        if (controller->selectedItemCount != 0) {
            TrashSelectedItem(controller);
        }

        Window_ScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION]);
        BagUI_SetHighlightSpritesPalette(controller, PLTT_1);

        return BAG_APP_STATE_WAIT_SELECT_ITEM_GENERAL;
    }

    return BAG_APP_STATE_RUN_ITEM_USE_TASK;
}

static int ItemActionFunc_CheckTag(BagController *controller)
{
    BagUI_CloseItemActionsMenu(controller);
    App_StartScreenFade(TRUE, HEAP_ID_BAG);
    controller->bagCtx->exitCode = BAG_EXIT_CODE_SHOW_BERRY_DATA;

    return BAG_APP_STATE_EXIT;
}

static int ItemActionFunc_Confirm(BagController *controller)
{
    BagUI_CloseItemActionsMenu(controller);
    App_StartScreenFade(TRUE, HEAP_ID_BAG);
    controller->bagCtx->exitCode = BAG_EXIT_CODE_POFFIN_BERRY_CHOSEN;

    return BAG_APP_STATE_EXIT;
}

static int ItemActionFunc_Trash(BagController *controller)
{
    BagUI_CloseItemActionsMenu(controller);
    controller->selectedItemCount = 1;
    if (Pocket_GetItemQuantity(controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].items, controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].listEntryCount - 3, controller->bagCtx->selectedItem, HEAP_ID_BAG) == 1) {
        BagUI_PrintConfirmItemTrashMsg(controller);
        return BAG_APP_STATE_SHOW_CONFIRM_TRASH_MSG;
    }

    BagUI_ShowItemTrashWindows(controller);
    BagUI_ShowItemCountArrows(controller, BAG_ITEM_COUNT_ARROWS_POS_TRASH);

    return BAG_APP_STATE_SELECT_ITEM_TRASH_COUNT;
}

static int ProcessItemCountInput_TrashCount(BagController *controller)
{
    if (CheckDialItemAmountChange(controller, &controller->selectedItemCount, controller->selectedItemCountLimit) == TRUE) {
        BagUI_PrintItemTrashCount(controller);
        return BAG_APP_STATE_SELECT_ITEM_TRASH_COUNT;
    }

    if (CheckDialButtonPressed(controller) == TRUE) {
        BagUI_PrintConfirmItemTrashMsg(controller);
        BagUI_ToggleItemCountArrows(controller, FALSE);
        controller->dialButtonAnimStep = 1;

        return BAG_APP_STATE_SHOW_CONFIRM_TRASH_MSG;
    }

    switch (sub_0208C15C(&controller->selectedItemCount, controller->selectedItemCountLimit)) {
    case 0:
        break;
    case 1:
        RotateDial(controller, 18);
        BagUI_PrintItemTrashCount(controller);
        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return BAG_APP_STATE_SELECT_ITEM_TRASH_COUNT;
    case 2:
        RotateDial(controller, -18);
        BagUI_PrintItemTrashCount(controller);
        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return BAG_APP_STATE_SELECT_ITEM_TRASH_COUNT;
    }
    if (JOY_NEW(PAD_BUTTON_A)) {
        BagUI_PrintConfirmItemTrashMsg(controller);
        BagUI_ToggleItemCountArrows(controller, FALSE);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return BAG_APP_STATE_SHOW_CONFIRM_TRASH_MSG;
    }
    if (JOY_NEW(PAD_BUTTON_B)) {
        BagUI_CloseItemTrashWindows(controller);
        BagUI_ToggleItemCountArrows(controller, FALSE);
        BagUI_SetHighlightSpritesPalette(controller, PLTT_1);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return BAG_APP_STATE_WAIT_SELECT_ITEM_GENERAL;
    }

    return BAG_APP_STATE_SELECT_ITEM_TRASH_COUNT;
}

static int ShowConfirmTrashMenu(BagController *controller)
{
    if (Text_IsPrinterActive(controller->msgBoxPrinterID) == FALSE) {
        BagUI_ShowYesNoMenu(controller);
        return BAG_APP_STATE_CONFIRM_TRASH;
    }

    return BAG_APP_STATE_SHOW_CONFIRM_TRASH_MSG;
}

static int ProcessMenuInput_ConfirmTrash(BagController *controller)
{
    if (CheckDialScroll_Menu(controller) == TRUE) {
        return BAG_APP_STATE_CONFIRM_TRASH;
    }

    u32 selectedOption;
    if (CheckDialButtonPressed(controller) == TRUE) {
        selectedOption = Menu_ProcessExternalInputAndHandleExit(controller->menu, MENU_INPUT_CONFIRM, HEAP_ID_BAG);
        controller->dialButtonAnimStep = 1;
    } else {
        selectedOption = Menu_ProcessInputAndHandleExit(controller->menu, HEAP_ID_BAG);
    }

    switch (selectedOption) {
    case 0: {
        String *string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_ThrewAwayItem);

        if (controller->selectedItemCount == 1) {
            StringTemplate_SetItemName(controller->strTemplate, 0, controller->bagCtx->selectedItem);
        } else {
            StringTemplate_SetItemNamePlural(controller->strTemplate, 0, controller->bagCtx->selectedItem);
        }

        StringTemplate_SetNumber(controller->strTemplate, 1, controller->selectedItemCount, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_Format(controller->strTemplate, controller->stringBuffer, string);
        String_Free(string);
    }
        Window_FillTilemap(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], 15);
        controller->msgBoxPrinterID = BagUI_PrintStrBufferToWideMsgBox(controller);
        return BAG_APP_STATE_RESOLVE_TRASH;

    case MENU_NOTHING_CHOSEN: {
        u8 action = Menu_GetLastAction(controller->menu);

        if (action == MENU_ACTION_MOVE_UP) {
            RotateDial(controller, 18);
        } else if (action == MENU_ACTION_MOVE_DOWN) {
            RotateDial(controller, -18);
        }
    } break;
    case MENU_CANCELED:
        Window_EraseMessageBox(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], FALSE);
        Window_ScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION]);
        BagUI_SetHighlightSpritesPalette(controller, PLTT_1);
        return BAG_APP_STATE_WAIT_SELECT_ITEM_GENERAL;
    }

    return BAG_APP_STATE_CONFIRM_TRASH;
}

static int ResolveTrash(BagController *controller)
{
    if (Text_IsPrinterActive(controller->msgBoxPrinterID)) {
        return BAG_APP_STATE_RESOLVE_TRASH;
    }

    controller->hideDescription = TRUE;
    TrashSelectedItem(controller);
    Window_ScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE]);

    return BAG_APP_STATE_SHOWING_TRASHED_MSG;
}

static int CheckPlayerDismissedTrashedMsg(BagController *controller)
{
    if (Text_IsPrinterActive(controller->msgBoxPrinterID) == FALSE) {
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) || gSystem.touchPressed) {
            controller->hideDescription = FALSE;
            Window_EraseMessageBox(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], FALSE);
            Window_ScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION]);
            BagUI_SetHighlightSpritesPalette(controller, PLTT_1);

            return BAG_APP_STATE_WAIT_SELECT_ITEM_GENERAL;
        }
    }

    return BAG_APP_STATE_SHOWING_TRASHED_MSG;
}

static int ItemActionFunc_Register(BagController *controller)
{
    Bag_RegisterItem(controller->bag, controller->bagCtx->selectedItem);
    ListMenu_Draw(controller->itemList);
    BagUI_CloseItemActionsMenu(controller);
    Window_ScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION]);
    BagUI_SetHighlightSpritesPalette(controller, PLTT_1);

    return BAG_APP_STATE_WAIT_SELECT_ITEM_GENERAL;
}

static int ItemActionFunc_Deselect(BagController *controller)
{
    Bag_RegisterItem(controller->bag, ITEM_NONE);
    ListMenu_Draw(controller->itemList);
    BagUI_CloseItemActionsMenu(controller);
    Window_ScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION]);
    BagUI_SetHighlightSpritesPalette(controller, PLTT_1);

    return BAG_APP_STATE_WAIT_SELECT_ITEM_GENERAL;
}

static int ItemActionFunc_Give(BagController *controller)
{
    BagUI_CloseItemActionsMenu(controller);
    App_StartScreenFade(TRUE, HEAP_ID_BAG);
    ToggleHideItemSprite(controller, FALSE);
    controller->bagCtx->exitCode = BAG_EXIT_CODE_GIVE_ITEM;

    return BAG_APP_STATE_EXIT;
}

static int ProcessItemListInput_GiveToMon(BagController *controller)
{
    StepPocketSelectorArrowsAnim(controller);
    if (CheckItemListDialScroll_Normal(controller) == TRUE) {
        return BAG_APP_STATE_SELECT_ITEM_TO_GIVE;
    }

    if (CheckPocketChange_DPad(controller) == TRUE) {
        return BAG_APP_STATE_SWITCH_POCKET;
    }

    if (CheckPocketChange_Touch(controller) == TRUE) {
        return BAG_APP_STATE_SWITCH_POCKET;
    }

    {
        u8 input = ProcessItemListMenuInput(controller);

        if (input == ITEM_LIST_INPUT_SELECT_ITEM) {
            if (Item_LoadParam(controller->bagCtx->selectedItem, ITEM_PARAM_PREVENT_TOSS, HEAP_ID_BAG)) {
                String *string;

                Window_FillTilemap(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], 15);
                Window_DrawMessageBoxWithScrollCursor(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], FALSE, BASE_TILE_MSG_BOX_FRAME, PLTT_12);

                StringTemplate_SetItemName(controller->strTemplate, 0, controller->bagCtx->selectedItem);

                string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_ItemCantBeHeld);

                StringTemplate_Format(controller->strTemplate, controller->stringBuffer, string);
                String_Free(string);
                controller->msgBoxPrinterID = BagUI_PrintStrBufferToWideMsgBox(controller);
                BagUI_SetHighlightSpritesPalette(controller, PLTT_2);

                return BAG_APP_STATE_SHOWING_ITEM_CANT_BE_HELD_MSG;
            }

            controller->bagCtx->exitCode = BAG_EXIT_CODE_GIVE_FROM_MON_MENU;
            App_StartScreenFade(TRUE, HEAP_ID_BAG);

            return BAG_APP_STATE_EXIT;
        } else if (input == ITEM_LIST_INPUT_EXIT_BAG) {
            controller->bagCtx->exitCode = BAG_EXIT_CODE_GIVE_FROM_MON_MENU;
            return BAG_APP_STATE_EXIT;
        }
    }
    return BAG_APP_STATE_SELECT_ITEM_TO_GIVE;
}

static int CheckPlayerDismissedItemCantBeHeldMsg(BagController *controller)
{
    if (Text_IsPrinterActive(controller->msgBoxPrinterID) == FALSE) {
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) || gSystem.touchPressed) {
            Window_EraseMessageBox(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], FALSE);
            Window_ScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION]);
            BagUI_SetHighlightSpritesPalette(controller, PLTT_1);

            return BAG_APP_STATE_SELECT_ITEM_TO_GIVE;
        }
    }

    return BAG_APP_STATE_SHOWING_ITEM_CANT_BE_HELD_MSG;
}

static int ProcessItemListInput_SellItems(BagController *controller)
{
    StepPocketSelectorArrowsAnim(controller);
    if (CheckItemListDialScroll_Normal(controller) == TRUE) {
        return BAG_APP_STATE_SELECT_ITEM_TO_SELL;
    }

    if (CheckPocketChange_DPad(controller) == TRUE) {
        return BAG_APP_STATE_SWITCH_POCKET;
    }

    if (CheckPocketChange_Touch(controller) == TRUE) {
        return BAG_APP_STATE_SWITCH_POCKET;
    }

    {
        u8 input = ProcessItemListMenuInput(controller);

        if (input == ITEM_LIST_INPUT_SELECT_ITEM) {
            String *string;

            BagUI_PrintMoney(controller, 0);
            Window_FillTilemap(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], 15);
            Window_DrawMessageBoxWithScrollCursor(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], 0, BASE_TILE_MSG_BOX_FRAME, 12);
            StringTemplate_SetItemName(controller->strTemplate, 0, controller->bagCtx->selectedItem);
            BagUI_SetHighlightSpritesPalette(controller, 2);

            controller->soldItemPrice = Item_LoadParam(controller->bagCtx->selectedItem, ITEM_PARAM_PRICE, HEAP_ID_BAG);

            if (Item_LoadParam(controller->bagCtx->selectedItem, ITEM_PARAM_PREVENT_TOSS, HEAP_ID_BAG) != 0
                || controller->soldItemPrice == 0) {
                string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_CantSellItem);
                StringTemplate_Format(controller->strTemplate, controller->stringBuffer, string);
                String_Free(string);

                controller->msgBoxPrinterID = BagUI_PrintStrBufferToWideMsgBox(controller);
                return BAG_APP_STATE_SHOWING_ITEMS_SOLD_MSG;
            }

            controller->selectedItemCount = 1;
            controller->soldItemPrice >>= 1;

            if (Pocket_GetItemQuantity(controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].items, controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].listEntryCount - 3, controller->bagCtx->selectedItem, HEAP_ID_BAG) == 1) {
                string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_ConfirmSellPrice);
                StringTemplate_SetNumber(controller->strTemplate, 0, controller->selectedItemCount * controller->soldItemPrice, 6, PADDING_MODE_NONE, CHARSET_MODE_EN);
                StringTemplate_Format(controller->strTemplate, controller->stringBuffer, string);
                String_Free(string);

                controller->msgBoxPrinterID = BagUI_PrintStrBufferToWideMsgBox(controller);
                return BAG_APP_STATE_PRINT_CONFIRM_SALE_MSG;
            }

            string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_SellHowMany);
            StringTemplate_Format(controller->strTemplate, controller->stringBuffer, string);
            String_Free(string);

            controller->msgBoxPrinterID = BagUI_PrintStrBufferToWideMsgBox(controller);
            return BAG_APP_STATE_WAIT_SELL_HOW_MANY_MSG;
        } else if (input == ITEM_LIST_INPUT_EXIT_BAG) {
            return BAG_APP_STATE_EXIT;
        }
    }

    return BAG_APP_STATE_SELECT_ITEM_TO_SELL;
}

static int ShowSaleCountValueWindow(BagController *controller)
{
    if (Text_IsPrinterActive(controller->msgBoxPrinterID) == FALSE) {
        if (controller->selectedItemCountLimit > 99) {
            controller->selectedItemCountLimit = 99;
        }

        BagUI_PrintSellCountAndValue(controller, FALSE);
        BagUI_ShowItemCountArrows(controller, BAG_ITEM_COUNT_ARROWS_POS_SELL);
        return BAG_APP_STATE_SELECT_ITEM_SELL_COUNT;
    }

    return BAG_APP_STATE_WAIT_SELL_HOW_MANY_MSG;
}

static int ProcessItemCountInput_SellCount(BagController *interface)
{
    if (CheckDialItemAmountChange(interface, &interface->selectedItemCount, interface->selectedItemCountLimit) == TRUE) {
        BagUI_PrintSellCountAndValue(interface, TRUE);
        return BAG_APP_STATE_SELECT_ITEM_SELL_COUNT;
    }
    if (CheckDialButtonPressed(interface) == TRUE) {
        String *string;

        BagUI_ToggleItemCountArrows(interface, FALSE);
        Window_EraseStandardFrame(&interface->windows[BAG_UI_WINDOW_SELL_COUNT_VALUE], TRUE);
        Window_FillTilemap(&interface->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], 15);
        string = MessageLoader_GetNewString(interface->bagStringsLoader, Bag_Text_ConfirmSellPrice);
        StringTemplate_SetNumber(interface->strTemplate, 0, interface->selectedItemCount * interface->soldItemPrice, 6, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_Format(interface->strTemplate, interface->stringBuffer, string);
        String_Free(string);
        interface->msgBoxPrinterID = BagUI_PrintStrBufferToWideMsgBox(interface);
        interface->dialButtonAnimStep = 1;

        return BAG_APP_STATE_PRINT_CONFIRM_SALE_MSG;
    }

    switch (sub_0208C15C(&interface->selectedItemCount, interface->selectedItemCountLimit)) {
    case 0:
        break;
    case 1:
        RotateDial(interface, 18);
        BagUI_PrintSellCountAndValue(interface, TRUE);
        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return BAG_APP_STATE_SELECT_ITEM_SELL_COUNT;
    case 2:
        RotateDial(interface, -18);
        BagUI_PrintSellCountAndValue(interface, TRUE);
        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return BAG_APP_STATE_SELECT_ITEM_SELL_COUNT;
    }
    if (JOY_NEW(PAD_BUTTON_A)) {
        String *string;

        BagUI_ToggleItemCountArrows(interface, FALSE);
        Window_EraseStandardFrame(&interface->windows[BAG_UI_WINDOW_SELL_COUNT_VALUE], TRUE);
        Window_FillTilemap(&interface->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], 15);

        string = MessageLoader_GetNewString(interface->bagStringsLoader, Bag_Text_ConfirmSellPrice);

        StringTemplate_SetNumber(interface->strTemplate, 0, interface->selectedItemCount * interface->soldItemPrice, 6, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_Format(interface->strTemplate, interface->stringBuffer, string);
        String_Free(string);
        interface->msgBoxPrinterID = BagUI_PrintStrBufferToWideMsgBox(interface);
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        return BAG_APP_STATE_PRINT_CONFIRM_SALE_MSG;
    }
    if (JOY_NEW(PAD_BUTTON_B)) {
        interface->soldItemPrice = 0;

        BagUI_ToggleItemCountArrows(interface, FALSE);
        Window_EraseStandardFrame(&interface->windows[BAG_UI_WINDOW_MONEY], TRUE);
        Window_EraseStandardFrame(&interface->windows[BAG_UI_WINDOW_SELL_COUNT_VALUE], TRUE);
        Window_EraseMessageBox(&interface->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], FALSE);
        Window_ScheduleCopyToVRAM(&interface->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION]);
        BagUI_SetHighlightSpritesPalette(interface, PLTT_1);
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        return BAG_APP_STATE_SELECT_ITEM_TO_SELL;
    }

    return BAG_APP_STATE_SELECT_ITEM_SELL_COUNT;
}

static int WaitConfirmSaleMsgPrinted(BagController *controller)
{
    if (Text_IsPrinterActive(controller->msgBoxPrinterID) == 0) {
        BagUI_ShowYesNoMenu(controller);

        return BAG_APP_STATE_CONFIRM_SALE;
    }

    return BAG_APP_STATE_PRINT_CONFIRM_SALE_MSG;
}

static int ProcessMenuInput_ConfirmSale(BagController *interface)
{
    if (CheckDialScroll_Menu(interface) == TRUE) {
        return BAG_APP_STATE_CONFIRM_SALE;
    }

    u32 selected;
    if (CheckDialButtonPressed(interface) == TRUE) {
        selected = Menu_ProcessExternalInputAndHandleExit(interface->menu, MENU_INPUT_CONFIRM, HEAP_ID_BAG);
        interface->dialButtonAnimStep = 1;
    } else {
        selected = Menu_ProcessInputAndHandleExit(interface->menu, HEAP_ID_BAG);
    }

    switch (selected) {
    case 0: {
        String *string = MessageLoader_GetNewString(interface->bagStringsLoader, Bag_Text_TurnedOverItems);

        if (interface->selectedItemCount > 1) {
            StringTemplate_SetItemNamePlural(interface->strTemplate, 0, interface->bagCtx->selectedItem);
        } else {
            StringTemplate_SetItemName(interface->strTemplate, 0, interface->bagCtx->selectedItem);
        }

        StringTemplate_SetNumber(interface->strTemplate, 1, interface->selectedItemCount * interface->soldItemPrice, 6, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_Format(interface->strTemplate, interface->stringBuffer, string);
        String_Free(string);
    }
        Window_FillTilemap(&interface->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], 15);
        interface->msgBoxPrinterID = BagUI_PrintStrBufferToWideMsgBox(interface);
        return BAG_APP_STATE_RESOLVE_SALE;
    case MENU_NOTHING_CHOSEN: {
        u8 action = Menu_GetLastAction(interface->menu);

        if (action == MENU_ACTION_MOVE_UP) {
            RotateDial(interface, 18);
        } else if (action == MENU_ACTION_MOVE_DOWN) {
            RotateDial(interface, -18);
        }
    } break;
    case MENU_CANCELED:
        interface->soldItemPrice = 0;
        Window_EraseStandardFrame(&interface->windows[BAG_UI_WINDOW_MONEY], TRUE);
        Window_EraseMessageBox(&interface->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], FALSE);
        Window_ScheduleCopyToVRAM(&interface->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION]);
        BagUI_SetHighlightSpritesPalette(interface, PLTT_1);

        return BAG_APP_STATE_SELECT_ITEM_TO_SELL;
    }

    return BAG_APP_STATE_CONFIRM_SALE;
}

static int ResolveSale(BagController *interface)
{
    if (Text_IsPrinterActive(interface->msgBoxPrinterID) != FALSE) {
        return BAG_APP_STATE_RESOLVE_SALE;
    }

    Sound_PlayEffect(SEQ_SE_DP_REGI);
    TrainerInfo_GiveMoney(interface->trainerInfo, interface->selectedItemCount * interface->soldItemPrice);

    if (interface->selectedItemCount == 1) {
        if (interface->bagCtx->soldAmount != 0xff) {
            interface->bagCtx->soldAmount++;
        }
    } else {
        interface->bagCtx->soldAmount = 2;
    }

    BagUI_PrintMoney(interface, TRUE);
    interface->hideDescription = TRUE;
    TrashSelectedItem(interface);
    Window_ScheduleCopyToVRAM(&interface->windows[BAG_UI_WINDOW_MSG_BOX_WIDE]);

    return BAG_APP_STATE_SHOWING_ITEMS_SOLD_MSG;
}

static int CheckPlayerDismissedItemsSoldMsg(BagController *interface)
{
    if (Text_IsPrinterActive(interface->msgBoxPrinterID) == FALSE) {
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) || gSystem.touchPressed) {
            interface->hideDescription = FALSE;
            interface->soldItemPrice = 0;

            Window_EraseStandardFrame(&interface->windows[BAG_UI_WINDOW_MONEY], TRUE);
            Window_EraseMessageBox(&interface->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], FALSE);
            Window_ScheduleCopyToVRAM(&interface->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION]);
            BagUI_SetHighlightSpritesPalette(interface, PLTT_1);

            return BAG_APP_STATE_SELECT_ITEM_TO_SELL;
        }
    }

    return BAG_APP_STATE_SHOWING_ITEMS_SOLD_MSG;
}

static int ProcessItemListInput_Gardening(BagController *controller)
{
    StepPocketSelectorArrowsAnim(controller);

    if (CheckItemListDialScroll_Normal(controller) == TRUE) {
        return BAG_APP_STATE_SELECT_ITEM_GARDENING;
    }

    if (CheckPocketChange_DPad(controller) == TRUE) {
        return BAG_APP_STATE_SWITCH_POCKET;
    }

    if (CheckPocketChange_Touch(controller) == TRUE) {
        return BAG_APP_STATE_SWITCH_POCKET;
    }

    {
        u8 input = ProcessItemListMenuInput(controller);

        if (input == ITEM_LIST_INPUT_SELECT_ITEM) {
            if (controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].pocketType == POCKET_ITEMS
                && Item_LoadParam(controller->bagCtx->selectedItem, ITEM_PARAM_FIELD_USE_FUNC, HEAP_ID_BAG) != ITEM_USE_FUNC_MULCH) {

                BagContext_FormatErrorMessage(controller->trainerInfo, controller->stringBuffer, controller->bagCtx->selectedItem, ITEM_USE_CANNOT_USE_GENERIC, HEAP_ID_BAG);
                Window_FillTilemap(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], 15);
                Window_DrawMessageBoxWithScrollCursor(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], 0, BASE_TILE_MSG_BOX_FRAME, PLTT_12);

                controller->msgBoxPrinterID = BagUI_PrintStrBufferToWideMsgBox(controller);
                return BAG_APP_STATE_SHOWING_ITEM_USE_MSG;
            }

            controller->bagCtx->exitCode = BAG_EXIT_CODE_USE_ITEM;
            App_StartScreenFade(TRUE, HEAP_ID_BAG);
            return BAG_APP_STATE_EXIT;
        } else if (input == ITEM_LIST_INPUT_EXIT_BAG) {
            controller->bagCtx->exitCode = BAG_EXIT_CODE_DONE;
            return BAG_APP_STATE_EXIT;
        }
    }
    return BAG_APP_STATE_SELECT_ITEM_GARDENING;
}

static void RotateDial(BagController *controller, s8 angle)
{
    s16 dialRotation = Bg_GetRotation(controller->bgConfig, BG_LAYER_SUB_3);

    dialRotation += angle;

    if (dialRotation >= 360) {
        dialRotation -= 360;
    } else if (dialRotation < 0) {
        dialRotation += 360;
    }

    Bg_ScheduleAffineRotation(controller->bgConfig, BG_LAYER_SUB_3, BG_AFFINE_UPDATE_SET_ROTATION, dialRotation);
    controller->dialRotation = dialRotation;
}

static BOOL DetectPlayerTouchedDial(void)
{
    return TouchScreen_CheckPressedHitTableID(sDialTouchedTouchBox) == 1;
}

static BOOL DetectPlayerHeldDial(void)
{
    return TouchScreen_CheckHeldHitTableID(sDialHeldTouchBox) == 1;
}

static BOOL CalcDialScroll(BagController *controller, u16 stepAngle)
{
    if (DetectPlayerTouchedDial() == TRUE) {
        controller->isTouchingDial = TRUE;
        controller->queuedScroll = 0;
        controller->queuedScrollRemainder = 0;
        controller->previousTouchX = gSystem.touchX;
        controller->previousTouchY = gSystem.touchY;
    }

    if (controller->isTouchingDial == TRUE) {
        if (DetectPlayerHeldDial() == TRUE) {
            s32 scrollArcLength, scrollAngle;

            scrollArcLength = ApproximateArcLength(DIAL_CENTER_X - controller->previousTouchX, DIAL_CENTER_Y - controller->previousTouchY, DIAL_CENTER_X - gSystem.touchX, DIAL_CENTER_Y - gSystem.touchY, DIAL_RADIUS);
            scrollAngle = CalcRadialAngle(DIAL_RADIUS, scrollArcLength * 2);
            scrollAngle = ((scrollAngle << 8) / 182) >> 8;
            controller->dialRotation += scrollAngle;

            if (controller->dialRotation < 0) {
                controller->dialRotation += 360;
            } else if (controller->dialRotation >= 360) {
                controller->dialRotation -= 360;
            }

            Bg_ScheduleAffineRotation(controller->bgConfig, BG_LAYER_SUB_3, BG_AFFINE_UPDATE_SET_ROTATION, controller->dialRotation);
            {
                s32 circumference = 2 * DIAL_RADIUS * 3.14;
                s32 stepDistance = circumference / stepAngle;
                if (scrollArcLength > 0) {
                    if (controller->queuedScroll < 0) { // Changed direction
                        controller->queuedScroll = scrollArcLength / stepDistance;
                        controller->queuedScrollRemainder = scrollArcLength % stepDistance;
                    } else {
                        controller->queuedScroll += ((controller->queuedScrollRemainder + scrollArcLength) / stepDistance);
                        controller->queuedScrollRemainder = (controller->queuedScrollRemainder + scrollArcLength) % stepDistance;
                    }
                } else if (scrollArcLength < 0) {
                    if (controller->queuedScroll > 0) { // Changed direction
                        controller->queuedScroll = scrollArcLength / stepDistance;
                        controller->queuedScrollRemainder = scrollArcLength % stepDistance;
                    } else {
                        controller->queuedScroll += ((controller->queuedScrollRemainder + scrollArcLength) / stepDistance);
                        controller->queuedScrollRemainder = (controller->queuedScrollRemainder + scrollArcLength) % stepDistance;
                    }
                }
            }
            controller->previousTouchX = gSystem.touchX;
            controller->previousTouchY = gSystem.touchY;
        } else {
            controller->isTouchingDial = 0;
            controller->queuedScroll = 0;
        }

        return TRUE;
    }

    return FALSE;
}

static BOOL CheckItemListDialScroll_Normal(BagController *controller)
{
    BOOL scrolling = CalcDialScroll(controller, 36);

    if (controller->queuedScroll > 0) {
        if (DoItemListInput_Normal(controller, PAD_KEY_UP) == TRUE) {
            controller->queuedScroll--;
        } else {
            controller->queuedScroll = 0;
        }

        return TRUE;
    } else if (controller->queuedScroll < 0) {
        if (DoItemListInput_Normal(controller, PAD_KEY_DOWN) == TRUE) {
            controller->queuedScroll++;
        } else {
            controller->queuedScroll = 0;
        }

        return TRUE;
    }

    return scrolling;
}

static BOOL DoItemListInput_Normal(BagController *interface, u16 input)
{
    u16 cursorScroll = interface->bagCtx->accessiblePockets[interface->bagCtx->currPocketIdx].cursorScroll;
    u16 cursorPos = interface->bagCtx->accessiblePockets[interface->bagCtx->currPocketIdx].cursorPos;

    ListMenu_TestInput(interface->itemList, NULL, cursorScroll, cursorPos, TRUE, input, &cursorScroll, &cursorPos);

    if (cursorScroll == interface->bagCtx->accessiblePockets[interface->bagCtx->currPocketIdx].cursorScroll
        && cursorPos == interface->bagCtx->accessiblePockets[interface->bagCtx->currPocketIdx].cursorPos) {
        return FALSE;
    }

    ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], 177, 24 + TEXT_LINES(cursorPos - 1));

    interface->bagCtx->accessiblePockets[interface->bagCtx->currPocketIdx].cursorScroll = cursorScroll;
    interface->bagCtx->accessiblePockets[interface->bagCtx->currPocketIdx].cursorPos = cursorPos;

    return TRUE;
}

static BOOL CheckItemListDialScroll_Sorting(BagController *interface)
{
    BOOL scrolling = CalcDialScroll(interface, 36);

    if (interface->queuedScroll > 0) {
        if (DoItemListInput_Sorting(interface, PAD_KEY_UP) == TRUE) {
            interface->queuedScroll--;
        } else {
            interface->queuedScroll = 0;
        }

        return TRUE;
    } else if (interface->queuedScroll < 0) {
        if (DoItemListInput_Sorting(interface, PAD_KEY_DOWN) == TRUE) {
            interface->queuedScroll++;
        } else {
            interface->queuedScroll = 0;
        }

        return TRUE;
    }

    return scrolling;
}

static BOOL DoItemListInput_Sorting(BagController *interface, u16 input)
{
    u16 cursorScroll = interface->bagCtx->accessiblePockets[interface->bagCtx->currPocketIdx].cursorScroll;
    u16 cursorPos = interface->bagCtx->accessiblePockets[interface->bagCtx->currPocketIdx].cursorPos;

    ListMenu_TestInput(interface->itemList, NULL, cursorScroll, cursorPos, TRUE, input, &cursorScroll, &cursorPos);

    if (cursorScroll == interface->bagCtx->accessiblePockets[interface->bagCtx->currPocketIdx].cursorScroll
        && cursorPos == interface->bagCtx->accessiblePockets[interface->bagCtx->currPocketIdx].cursorPos) {
        return FALSE;
    }

    ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_MOVING_ITEM_POS_BAR], 177, 24 + TEXT_LINES(cursorPos - 1) - 8);

    interface->bagCtx->accessiblePockets[interface->bagCtx->currPocketIdx].cursorScroll = cursorScroll;
    interface->bagCtx->accessiblePockets[interface->bagCtx->currPocketIdx].cursorPos = cursorPos;

    return TRUE;
}

static BOOL CheckDialScroll_Menu(BagController *controller)
{
    BOOL isUsingDial = CalcDialScroll(controller, 18);

    if (controller->queuedScroll > 0) {
        if (DoMenuInput(controller, MENU_INPUT_MOVE_UP) == TRUE) {
            controller->queuedScroll--;
        } else {
            controller->queuedScroll = 0;
        }

        return TRUE;
    } else if (controller->queuedScroll < 0) {
        if (DoMenuInput(controller, MENU_INPUT_MOVE_DOWN) == TRUE) {
            controller->queuedScroll++;
        } else {
            controller->queuedScroll = 0;
        }

        return TRUE;
    }

    return isUsingDial;
}

static BOOL DoMenuInput(BagController *controller, u8 input)
{
    u8 previousPos = Menu_GetCursorPos(controller->menu);

    Menu_ProcessExternalInput(controller->menu, input);

    if (previousPos == Menu_GetCursorPos(controller->menu)) {
        return FALSE;
    }

    return TRUE;
}

static BOOL CheckDialItemAmountChange(BagController *controller, s16 *amount, u16 maxValue)
{
    BOOL isUsingDial = CalcDialScroll(controller, 18);
    s16 prevAmount = *amount;

    if (controller->queuedScroll > 0) {
        controller->queuedScroll--;
        *amount += 1;

        if (*amount > maxValue) {
            *amount = 1;
        }

        if (*amount == prevAmount) {
            return FALSE;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return TRUE;
    } else if (controller->queuedScroll < 0) {
        controller->queuedScroll++;
        *amount -= 1;

        if (*amount <= 0) {
            *amount = maxValue;
        }

        if (*amount == prevAmount) {
            return FALSE;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return TRUE;
    }

    return isUsingDial;
}
