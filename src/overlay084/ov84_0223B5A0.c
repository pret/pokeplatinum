#include "overlay084/ov84_0223B5A0.h"

#include "nitro/hw/common/lcd.h"
#include <nitro.h>
#include <string.h>

#include "constants/field/map_load.h"
#include "constants/heap.h"
#include "constants/items.h"

#include "struct_defs/special_encounter.h"
#include "struct_defs/struct_0207CB08.h"
#include "struct_defs/struct_02099F80.h"

#include "functypes/funcptr_02069238.h"
#include "overlay084/ov84_0223F040.h"
#include "overlay084/ov84_022403F4.h"

#include "bag.h"
#include "bg_window.h"
#include "font.h"
#include "font_special_chars.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "items.h"
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
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "touch_pad.h"
#include "touch_screen.h"
#include "trainer_info.h"
#include "unk_020393C8.h"
#include "unk_020683F4.h"
#include "unk_0207CB08.h"
#include "unk_0208C098.h"
#include "vram_transfer.h"

#include "res/text/bank/unk_0007.h"

#define BOTTOM_SCREEN_BALL_CENTER_X      (HW_LCD_WIDTH / 2)
#define BOTTOM_SCREEN_BALL_CENTER_Y      80
#define BOTTOM_SCREEN_BALL_BUTTON_RADIUS 24

#define BASE_TILE_STANDARD_WINDOW_FRAME (1024 - NUM_TILES_STANDARD_WINDOW_FRAME)
#define BASE_TILE_MSG_BOX_FRAME         (BASE_TILE_STANDARD_WINDOW_FRAME - NUM_TILES_MESSAGE_BOX_FRAME)

#define ITEM_LIST_EMPTY_ENTRY -3

typedef struct {
    const u8 *pocketButtonCoordinates;
    const TouchScreenRect *pocketButtonTouchRect;
} PocketButtonPosition;

typedef int (*UnkFuncPtr_ov84_0223DA04)(BagInterface *);

static void BagInterface_LoadSaveInfo(BagInterface *interface);
static void BagInterfaceVBlankCB(void *interface);
static void SetVramBanks(void);
static void SetupBGLayers(BgConfig *bgConfig);
static void FreeBGLayers(BgConfig *bgConfig);
static void LoadGraphics(BagInterface *interface);
static u8 HandleItemListMenuInput(BagInterface *interface);
static u8 CheckPocketChange_DPad(BagInterface *interface);
static int ProcessItemActionsMenuInput(BagInterface *interface);
static void LoadCurrentPocketItemNames(BagInterface *interface);
static void LimitMenuScroll(u16 *cursorScroll, u16 *cursorPos, u8 numEntries);
static void RestrictMenuCursor(u16 *cursorScroll, u16 *cursorPos, u8 numEntries, u8 numVisibleSlots);
static void CreateItemsListMenu(BagInterface *interface, u16 cursorScroll, u16 cursorPos);
static void ItemsListMenuCursorCallback(ListMenu *menu, u32 index, u8 onInit);
static void ItemsListMenuPrintCallback(ListMenu *menu, u32 index, u8 yOffset);
static void FreeItemsListMenu(BagInterface *interface);
static void CountAccessiblePockets(BagInterface *interface);
static void CalcPocketIndicatorPos(BagInterface *interface);
static int CheckPlayerPressedPocketButton(BagInterface *interface);
static void StepPocketIndicatorArrowsAnim(BagInterface *interface);
static void DrawPocketButton(BagInterface *interface, u8 pocketIdx, u8 buttonState);
static u8 CheckPocketChange_Touch(BagInterface *interface);
static int CheckPlayerHeldPocketButton(BagInterface *interface);
static u8 StepPocketIndicatorAnim(BagInterface *interface);
static void DrawBottomScreenButtons(BagInterface *interface);
static u8 CanSelectHoveredItemForSorting(BagInterface *interface);
static void SelectItemForSorting(BagInterface *interface);
static u8 HandleInput_MovingItem(BagInterface *interface);
static void FinishMovingItem(BagInterface *interface);
static void RebuildItemsListMenuAfterSort(BagInterface *interface);
static void SwitchPositionIndicatorSprite(BagInterface *interface);
static void SetupPocketChangeFromDPad(BagInterface *interface);
static void SetupPocketChangeFromTouch(BagInterface *interface);
static void SetupPocketChange(BagInterface *interface);
static u8 DoPocketSwitch(BagInterface *interface);
static u8 DoDPadPocketSwitch(BagInterface *interface);
static u8 DoPressedPocketButtonAnim(BagInterface *interface);
static u8 StepPocketIndicatorAnim(BagInterface *interface);
static void SetupTextLoaders(BagInterface *interface);
static void ShowItemActionsMenu(BagInterface *interface);
static void InitItemNamesBuffers(BagInterface *interface);
static void FreeItemNamesBuffers(BagInterface *interface);
static int ItemActionFunc_Use(BagInterface *interface);
static int ItemActionFunc_CheckTag(BagInterface *interface);
static int ItemActionFunc_Confirm(BagInterface *interface);
static int ItemActionFunc_Trash(BagInterface *interface);
static int ItemActionFunc_Give(BagInterface *interface);
static int ItemActionFunc_Register(BagInterface *interface);
static int ItemActionFunc_Deselect(BagInterface *interface);
static int HandleInput_General(BagInterface *interface);
static int HandleInput_SellItems(BagInterface *interface);
static int WaitPlayerDismissMsg_ItemsSold(BagInterface *interface);
static int SetSellLimitAndSetupWindows(BagInterface *interface);
static int UpdateSellCountBasedOnPlayerInput(BagInterface *interface);
static int WaitConfirmSaleMsgPrinted(BagInterface *interface);
static int HandleSellYesNoInput(BagInterface *interface);
static int ResolveSale(BagInterface *interface);
static int WaitPlayerDismissMsg(BagInterface *interface);
static int UpdateTrashCountBasedOnPlayerInput(BagInterface *interface);
static int WaitConfirmTrashMsgPrinted(BagInterface *interface);
static int HandleTrashYesNoInput(BagInterface *interface);
static int TrashItemOnceMsgPrinted(BagInterface *interface);
static int WaitPlayerDismissMsg_ItemsTrashed(BagInterface *interface);
static int HandleInput_GiveToMon(BagInterface *interface);
static int WaitPlayerDismissMsg_CantBeHeld(BagInterface *interface);
static int HandleInput_Gardening(BagInterface *interface);
static void RestoreCursorPosition(BagInterface *interface);
static void SaveCursorPosition(BagInterface *interface);
static int HandleItemUsed(BagInterface *interface);
static int RunItemUseTask(BagInterface *interface);
static int TMHMUseTask(BagInterface *interface);
static BOOL ShowItemUseMessage(BagInterface *interface, u16 item);
static Strbuf *TryUseRepel(BagInterface *interface, u16 item);
static void TrashItem(BagInterface *interface);
static int MessageItemUseTask(BagInterface *interface);
static void TrashItem(BagInterface *interface);
static void ToggleHideItemSprite(BagInterface *interface, u8 hide);
static BOOL PlayerPressedPokeballButton(BagInterface *interface);
static void DrawPokeballButton(BagInterface *interface, u8 buttonState);
static void StepPokeballButtonPressedAnim(BagInterface *interface);
static void RotatePokeball(BagInterface *interface, s8 angle);
static BOOL CheckMenuPokeballScroll(BagInterface *interface);
static BOOL CalcPokeballScroll(BagInterface *interface, u16 stepAngle);
static BOOL CheckItemsListPokeballScroll(BagInterface *interface);
static BOOL CheckPokeballScroll_Sorting(BagInterface *interface);
static BOOL CheckPokeballItemAmountChange(BagInterface *interface, s16 *amount, u16 maxValue);
static BOOL SimulateItemsListInput_ItemsList(BagInterface *interface, u16 input);
static BOOL SimulateItemsListInput_Sorting(BagInterface *interface, u16 input);
static BOOL SimulateMenuInput(BagInterface *interface, u8 input);

const ApplicationManagerTemplate gBagApplicationTemplate = {
    BagInterface_Init,
    BagInterface_Main,
    BagInterface_Exit,
    FS_OVERLAY_ID_NONE
};

static const ListMenuTemplate sItemsListMenuTemplate = {
    .choices = NULL,
    .cursorCallback = ItemsListMenuCursorCallback,
    .printCallback = ItemsListMenuPrintCallback,
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
    .lineSpacing = 0x10,
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

static const PocketButtonPosition sPocketCountToPocketButtonPositions[] = {
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

static const TouchScreenRect sPokeballButtonTouchRect[] = {
    {
        .rect = {
            .top = BOTTOM_SCREEN_BALL_CENTER_Y - BOTTOM_SCREEN_BALL_BUTTON_RADIUS,
            .bottom = BOTTOM_SCREEN_BALL_CENTER_Y + BOTTOM_SCREEN_BALL_BUTTON_RADIUS - 1,
            .left = BOTTOM_SCREEN_BALL_CENTER_X - BOTTOM_SCREEN_BALL_BUTTON_RADIUS,
            .right = BOTTOM_SCREEN_BALL_CENTER_X + BOTTOM_SCREEN_BALL_BUTTON_RADIUS - 1,
        },
    },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0x0, 0x0, 0x0 }
};

// Used to detect when the player starts touching the "body" of the ball on the bottom screen.
// The first, smaller circle is used to exclude the button, which is used to select the item instead.
static const TouchScreenHitTable sPokeballStartTouchingTouchBox[] = {
    {
        .circle = {
            .code = TOUCHSCREEN_USE_CIRCLE,
            .x = BOTTOM_SCREEN_BALL_CENTER_X,
            .y = BOTTOM_SCREEN_BALL_CENTER_Y,
            .r = 26,
        },
    },
    {
        .circle = {
            .code = TOUCHSCREEN_USE_CIRCLE,
            .x = BOTTOM_SCREEN_BALL_CENTER_X,
            .y = BOTTOM_SCREEN_BALL_CENTER_Y,
            .r = 64,
        },
    },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0x0, 0x0, 0x0 }
};

// Used to detect when the player stops touching the body of the pokeball or moves outside of the ball area.
// The valid touch zone is larger than the one above to be more lenient when moving the stylus around to scroll
static const TouchScreenHitTable sPokeballHeldTouchBox[] = {
    {
        .circle = {
            .code = TOUCHSCREEN_USE_CIRCLE,
            .x = BOTTOM_SCREEN_BALL_CENTER_X,
            .y = BOTTOM_SCREEN_BALL_CENTER_Y,
            .r = 16,
        },
    },
    {
        .circle = {
            .code = TOUCHSCREEN_USE_CIRCLE,
            .x = BOTTOM_SCREEN_BALL_CENTER_X,
            .y = BOTTOM_SCREEN_BALL_CENTER_Y,
            .r = 80,
        },
    },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0x0, 0x0, 0x0 }
};

int BagInterface_Init(ApplicationManager *appMan, int *state)
{
    BagInterface *interface;

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    G2_BlendNone();
    G2S_BlendNone();

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BAG, HEAP_SIZE_BAG);

    interface = ApplicationManager_NewData(appMan, sizeof(BagInterface), HEAP_ID_BAG);
    memset(interface, 0, sizeof(BagInterface));
    interface->appArguments = ApplicationManager_Args(appMan);

    BagInterface_LoadSaveInfo(interface);

    interface->bgConfig = BgConfig_New(HEAP_ID_BAG);
    interface->trainerGender = TrainerInfo_Gender(interface->trainerInfo);

    StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_DOWNWARD_IN, FADE_TYPE_DOWNWARD_IN, COLOR_BLACK, 6, 1, HEAP_ID_BAG);
    SetAutorepeat(3, 8);

    RestoreCursorPosition(interface);
    SetupTextLoaders(interface);
    InitItemNamesBuffers(interface);
    CountAccessiblePockets(interface);
    CalcPocketIndicatorPos(interface);
    SetVramBanks();
    SetupBGLayers(interface->bgConfig);
    LoadGraphics(interface);
    DrawBottomScreenButtons(interface);

    EnableTouchPad();
    InitializeTouchPad(4);

    BagInterface_CreateWindows(interface);
    RenderControlFlags_SetSpeedUpOnTouch(TRUE);
    BagInterface_LoadPocketNames(interface);
    BagInterface_MaybeClearPocketNameBox(interface);
    BagInterface_PrintPocketNames(interface);
    BagInterface_DrawPocketIndicatorIcons(interface);
    BagInterface_LoadItemActionStrings(interface);
    BagInterface_LoadItemCountStrings(interface);
    LoadCurrentPocketItemNames(interface);

    // Can't use a variable since it wouldn't match
#define pocket interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx]
    LimitMenuScroll(&pocket.cursorScroll, &pocket.cursorPos, pocket.listItemsCount);
    RestrictMenuCursor(&pocket.cursorScroll, &pocket.cursorPos, pocket.listItemsCount, BAG_UI_NUM_VISIBLE_ITEMS);
    BagInterface_InitSprites(interface);
    CreateItemsListMenu(interface, pocket.cursorScroll, pocket.cursorPos);
#undef pocket

    if (interface->appArguments->context == BAG_CONTEXT_POFFIN_SINGLEPLAYER || interface->appArguments->context == BAG_CONTEXT_POFFIN_MULTIPLAYER) {
        BagInterface_DrawPoffinCountMsgBox(interface);
    }

    SetVBlankCallback(BagInterfaceVBlankCB, interface);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_BAG, SEQ_NONE, 0);
    DrawWifiConnectionIcon();

    return TRUE;
}

int BagInterface_Main(ApplicationManager *appMan, int *state)
{
    BagInterface *interface = ApplicationManager_Data(appMan);

    switch (*state) {
    case BAG_INTERFACE_STATE_WAIT_INITIAL_SCREEN_FADE:
        if (IsScreenFadeDone() == TRUE) {
            if (interface->appArguments->context == BAG_CONTEXT_SELL_ITEMS) {
                *state = BAG_INTERFACE_STATE_SELECT_ITEM_TO_SELL;
            } else if (interface->appArguments->context == BAG_CONTEXT_GIVE_TO_MON) {
                *state = BAG_INTERFACE_STATE_SELECT_ITEM_TO_GIVE;
            } else if (interface->appArguments->context == BAG_CONTEXT_GARDENING) {
                *state = BAG_INTERFACE_STATE_SELECT_ITEM_GARDENING;
            } else {
                *state = BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
            }
        }
        break;
    case BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL:
        *state = HandleInput_General(interface);
        break;
    case BAG_INTERFACE_STATE_SWITCH_POCKET:
        StepPocketIndicatorArrowsAnim(interface);
        if (DoPocketSwitch(interface) == TRUE) {
            if (interface->appArguments->context == BAG_CONTEXT_SELL_ITEMS) {
                *state = BAG_INTERFACE_STATE_SELECT_ITEM_TO_SELL;
            } else if (interface->appArguments->context == BAG_CONTEXT_GIVE_TO_MON) {
                *state = BAG_INTERFACE_STATE_SELECT_ITEM_TO_GIVE;
            } else if (interface->appArguments->context == BAG_CONTEXT_GARDENING) {
                *state = BAG_INTERFACE_STATE_SELECT_ITEM_GARDENING;
            } else {
                *state = BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
            }
        }
        break;
    case BAG_INTERFACE_STATE_MOVING_ITEM:
        if (HandleInput_MovingItem(interface) == TRUE) {
            *state = BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
        }
        break;
    case BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_ACTION:
        *state = ProcessItemActionsMenuInput(interface);
        break;
    case BAG_INTERFACE_STATE_UNUSED_5:
        break;
    case BAG_INTERFACE_STATE_UNUSED_6:
        break;
    case BAG_INTERFACE_STATE_SELECT_ITEM_TRASH_COUNT:
        *state = UpdateTrashCountBasedOnPlayerInput(interface);
        break;
    case BAG_INTERFACE_STATE_WAIT_CONFIRM_TRASH_MSG:
        *state = WaitConfirmTrashMsgPrinted(interface);
        break;
    case BAG_INTERFACE_STATE_CONFIRM_TRASH:
        *state = HandleTrashYesNoInput(interface);
        break;
    case BAG_INTERFACE_STATE_TRASH_ITEM:
        *state = TrashItemOnceMsgPrinted(interface);
        break;
    case BAG_INTERFACE_STATE_WAIT_DISMISS_TRASHED_MSG:
        *state = WaitPlayerDismissMsg_ItemsTrashed(interface);
        break;
    case BAG_INTERFACE_STATE_DISMISS_MSG:
        *state = WaitPlayerDismissMsg(interface);
        break;
    case BAG_INTERFACE_STATE_RUN_ITEM_USE_TASK:
        *state = RunItemUseTask(interface);
        break;
    case BAG_INTERFACE_STATE_SELECT_ITEM_TO_GIVE:
        *state = HandleInput_GiveToMon(interface);
        break;
    case BAG_INTERFACE_STATE_WAIT_ITEM_CANT_BE_HELD_MSG:
        *state = WaitPlayerDismissMsg_CantBeHeld(interface);
        break;
    case BAG_INTERFACE_STATE_SELECT_ITEM_TO_SELL:
        *state = HandleInput_SellItems(interface);
        break;
    case BAG_INTERFACE_STATE_WAIT_SELL_HOW_MANY_MSG:
        *state = SetSellLimitAndSetupWindows(interface);
        break;
    case BAG_INTERFACE_STATE_SELECT_ITEM_SELL_COUNT:
        *state = UpdateSellCountBasedOnPlayerInput(interface);
        break;
    case BAG_INTERFACE_STATE_WAIT_CONFIRM_SALE_MSG:
        *state = WaitConfirmSaleMsgPrinted(interface);
        break;
    case BAG_INTERFACE_STATE_CONFIRM_SALE:
        *state = HandleSellYesNoInput(interface);
        break;
    case BAG_INTERFACE_STATE_RESOLVE_SALE:
        *state = ResolveSale(interface);
        break;
    case BAG_INTERFACE_STATE_DISMISS_ITEMS_SOLD_MSG:
        *state = WaitPlayerDismissMsg_ItemsSold(interface);
        break;
    case BAG_INTERFACE_STATE_SELECT_ITEM_GARDENING:
        *state = HandleInput_Gardening(interface);
        break;
    case BAG_INTERFACE_STATE_EXIT:
        if (IsScreenFadeDone() == TRUE) {
            return TRUE;
        }
        break;
    }

    StepPokeballButtonPressedAnim(interface);
    BagInterface_TickBtnShockwaveAnim(interface);
    BagInterface_TickSpriteAnimations(interface);
    SpriteSystem_DrawSprites(interface->spriteMan);

    return FALSE;
}

int BagInterface_Exit(ApplicationManager *appMan, int *state)
{
    BagInterface *interface = ApplicationManager_Data(appMan);

    BagInterface_FreeSprites(interface);
    FreeItemsListMenu(interface);
    SaveCursorPosition(interface);
    BagInterface_DeleteWindows(interface->windows);
    FreeBGLayers(interface->bgConfig);

    DisableTouchPad();
    VramTransfer_Free();

    BagInterface_FreeItemActionStrings(interface);
    BagInterface_FreePocketNames(interface);
    BagInterface_FreeItemCountStrings(interface);
    FreeItemNamesBuffers(interface);

    Strbuf_Free(interface->strBuffer);
    MessageLoader_Free(interface->moveNamesLoader);
    MessageLoader_Free(interface->itemNamesLoader);
    MessageLoader_Free(interface->bagStringsLoader);
    FontSpecialChars_Free(interface->specialChars);
    StringTemplate_Free(interface->strTemplate);
    NARC_dtor(interface->bagGraphicsNARC);
    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_BAG);
    SetAutorepeat(4, 8);

    return TRUE;
}

static void BagInterface_LoadSaveInfo(BagInterface *interface)
{
    interface->bag = SaveData_GetBag(interface->appArguments->saveData);
    interface->trainerInfo = SaveData_GetTrainerInfo(interface->appArguments->saveData);
    interface->options = SaveData_GetOptions(interface->appArguments->saveData);
}

static SpecialEncounter *GetSpecialEncounters(BagInterface *interface)
{
    return SaveData_GetSpecialEncounters(interface->appArguments->saveData);
}

static void SetRepelSteps(BagInterface *interface, u8 stepCount)
{
    u8 *repelSteps = SpecialEncounter_GetRepelSteps(GetSpecialEncounters(interface));
    *repelSteps = stepCount;
}

static void SetBlackWhiteFluteActive(BagInterface *interface, u8 flute)
{
    SpecialEncounter_SetFluteFactor(GetSpecialEncounters(interface), flute);
}

static void BagInterfaceVBlankCB(void *param0)
{
    BagInterface *interface = param0;

    Bg_RunScheduledUpdates(interface->bgConfig);
    VramTransfer_Process();
    SpriteSystem_TransferOam();
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void SetVramBanks(void)
{
    UnkStruct_02099F80 vramBanks = {
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

    GXLayers_SetBanks(&vramBanks);
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

    Bg_ScheduleAffineRotationCenter(bgConfig, BG_LAYER_SUB_3, BG_AFFINE_UPDATE_SET_X_CENTER, BOTTOM_SCREEN_BALL_CENTER_X);
    Bg_ScheduleAffineRotationCenter(bgConfig, BG_LAYER_SUB_3, BG_AFFINE_UPDATE_SET_Y_CENTER, BOTTOM_SCREEN_BALL_CENTER_Y);

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

static void LoadGraphics(BagInterface *interface)
{
    interface->bagGraphicsNARC = NARC_ctor(NARC_INDEX_GRAPHIC__PL_BAG_GRA, HEAP_ID_BAG);

    Graphics_LoadTilesToBgLayerFromOpenNARC(interface->bagGraphicsNARC, 11, interface->bgConfig, BG_LAYER_MAIN_1, 0, 0, FALSE, HEAP_ID_BAG);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(interface->bagGraphicsNARC, 14, interface->bgConfig, BG_LAYER_MAIN_1, 0, 0, FALSE, HEAP_ID_BAG);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(interface->bagGraphicsNARC, 13, interface->bgConfig, BG_LAYER_MAIN_3, 0, 0, FALSE, HEAP_ID_BAG);
    Graphics_LoadPaletteFromOpenNARC(interface->bagGraphicsNARC, 12, PAL_LOAD_MAIN_BG, PLTT_OFFSET(0), 0, HEAP_ID_BAG);
    Graphics_LoadPaletteFromOpenNARC(interface->bagGraphicsNARC, 22, PAL_LOAD_MAIN_BG, PLTT_OFFSET(13), PALETTE_SIZE_BYTES, HEAP_ID_BAG);
    Font_LoadScreenIndicatorsPalette(0, PLTT_OFFSET(11), HEAP_ID_BAG);
    LoadStandardWindowGraphics(interface->bgConfig, BG_LAYER_MAIN_0, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_14, STANDARD_WINDOW_SYSTEM, HEAP_ID_BAG);
    LoadMessageBoxGraphics(interface->bgConfig, BG_LAYER_MAIN_0, BASE_TILE_MSG_BOX_FRAME, PLTT_12, Options_Frame(interface->options), HEAP_ID_BAG);
    Graphics_LoadTilesToBgLayerFromOpenNARC(interface->bagGraphicsNARC, 15, interface->bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, HEAP_ID_BAG);
    Graphics_LoadPaletteFromOpenNARC(interface->bagGraphicsNARC, 16, PAL_LOAD_SUB_BG, PLTT_OFFSET(0), 0, HEAP_ID_BAG);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(interface->bagGraphicsNARC, 17, interface->bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, HEAP_ID_BAG);
    Graphics_LoadTilesToBgLayerFromOpenNARC(interface->bagGraphicsNARC, 32, interface->bgConfig, BG_LAYER_SUB_3, 0, 0, FALSE, HEAP_ID_BAG);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(interface->bagGraphicsNARC, 33, interface->bgConfig, BG_LAYER_SUB_3, 0, 0, FALSE, HEAP_ID_BAG);
    Graphics_LoadTilesToBgLayerFromOpenNARC(interface->bagGraphicsNARC, 19, interface->bgConfig, BG_LAYER_SUB_0, 0, 0, FALSE, HEAP_ID_BAG);
    Graphics_LoadPaletteFromOpenNARC(interface->bagGraphicsNARC, 18, PAL_LOAD_SUB_BG, PLTT_OFFSET(2), PALETTE_SIZE_BYTES * 2, HEAP_ID_BAG);
}

static void SetupTextLoaders(BagInterface *interface)
{
    interface->bagStringsLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0007, HEAP_ID_BAG);
    interface->specialChars = FontSpecialChars_Init(1, 2, 0, HEAP_ID_BAG);
    interface->strTemplate = StringTemplate_Default(HEAP_ID_BAG);
    interface->itemNamesLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ITEM_NAMES, HEAP_ID_BAG);
    interface->moveNamesLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVE_NAMES, HEAP_ID_BAG);
    interface->strBuffer = Strbuf_Init(256, HEAP_ID_BAG);
}

static void CountAccessiblePockets(BagInterface *interface)
{
    interface->numPockets = 0;

    for (u8 i = 0; i < POCKET_MAX; i++) {
        if (interface->appArguments->accessiblePockets[i].items != NULL) {
            interface->numPockets++;
        }
    }
}

u16 BagInterface_GetItemSlotProperty(BagInterface *interface, u16 slotIdx, u16 property)
{
    BagInterfacePocketInfo *pocket = &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx];

    if (property == ITEM_SLOT_ITEM) {
        return pocket->items[slotIdx].item;
    }

    return pocket->items[slotIdx].quantity;
}

static void LoadItemName(MessageLoader *msgLoader, Strbuf *string, u16 item, u32 unused)
{
    MessageLoader_GetStrbuf(msgLoader, item, string);
}

static void LoadMoveNameForTMHM(MessageLoader *msgLoader, Strbuf *string, u16 item, u32 unused)
{
    MessageLoader_GetStrbuf(msgLoader, Item_MoveForTMHM(item), string);
}

static void RestoreCursorPosition(BagInterface *interface)
{
    BagInterfacePocketInfo *accessiblePockets;
    u16 i, lastOpenPocket;

    interface->appArguments->currPocketIdx = 0;
    accessiblePockets = interface->appArguments->accessiblePockets;

    if (interface->appArguments->bagCursor == NULL) {
        for (i = 0; i < POCKET_MAX; i++) {
            if (accessiblePockets[i].items == NULL) {
                break;
            }

            accessiblePockets[i].cursorPos = 1;
            accessiblePockets[i].cursorScroll = 0;
        }

        return;
    }

    for (i = 0; i < POCKET_MAX; i++) {
        u8 cursorPos, cursorScroll;

        if (accessiblePockets[i].items == NULL) {
            break;
        }

        BagCursor_GetFieldPocketPosition(interface->appArguments->bagCursor, accessiblePockets[i].pocketType, &cursorPos, &cursorScroll);

        if (cursorPos == 0) {
            cursorPos = 1;
        }

        accessiblePockets[i].cursorPos = cursorPos;
        accessiblePockets[i].cursorScroll = cursorScroll;
    }

    lastOpenPocket = BagCursor_GetFieldPocket(interface->appArguments->bagCursor);

    for (i = 0; i < POCKET_MAX; i++) {
        if (accessiblePockets[i].items == NULL) {
            break;
        }

        if (accessiblePockets[i].pocketType == lastOpenPocket) {
            interface->appArguments->currPocketIdx = i;
        }
    }
}

static void SaveCursorPosition(BagInterface *interface)
{
    if (interface->appArguments->bagCursor == NULL) {
        return;
    }

    BagInterfacePocketInfo *pocket = interface->appArguments->accessiblePockets;

    for (u32 i = 0; i < POCKET_MAX; i++) {
        if (pocket[i].items == NULL) {
            break;
        }

        BagCursor_SetFieldPocketPosition(interface->appArguments->bagCursor, pocket[i].pocketType, pocket[i].cursorPos, pocket[i].cursorScroll);
    }

    BagCursor_SetFieldPocket(interface->appArguments->bagCursor, pocket[interface->appArguments->currPocketIdx].pocketType);
}

static void LoadCurrentPocketItemNames(BagInterface *interface)
{
    BagInterfacePocketInfo *pocket;

    pocket = &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx];
    interface->itemListEntries = StringList_New(sPocketSizes[pocket->pocketType] + 3, HEAP_ID_BAG); // + 3 to account for some non-item entries

    // The first line of the items list is partially hidden behing the UI, so we begin with an empty entry.
    // Similarly, the last line is partially hidden so a second empty entry gets added to the end later on.
    StringList_AddFromMessageBank(interface->itemListEntries, interface->bagStringsLoader, Bag_Text_Empty, ITEM_LIST_EMPTY_ENTRY);

    if (pocket->pocketType == POCKET_TMHMS) {
        u32 i;
        for (i = 0; i < sPocketSizes[pocket->pocketType]; i++) {
            if (pocket->items[i].item == ITEM_NONE || pocket->items[i].quantity == 0) {
                break;
            }

            LoadMoveNameForTMHM(interface->moveNamesLoader, interface->itemNamesBuffers[i], pocket->items[i].item, HEAP_ID_BAG);
            StringList_AddFromStrbuf(interface->itemListEntries, interface->itemNamesBuffers[i], i);
        }

        StringList_AddFromMessageBank(interface->itemListEntries, interface->bagStringsLoader, Bag_Text_Empty, LIST_CANCEL);
        StringList_AddFromMessageBank(interface->itemListEntries, interface->bagStringsLoader, Bag_Text_Empty, ITEM_LIST_EMPTY_ENTRY);

        pocket->listItemsCount = i + 3;
    } else {
        u32 i;
        for (i = 0; i < sPocketSizes[pocket->pocketType]; i++) {
            if (pocket->items[i].item == ITEM_NONE || pocket->items[i].quantity == 0) {
                break;
            }

            LoadItemName(interface->itemNamesLoader, interface->itemNamesBuffers[i], pocket->items[i].item, HEAP_ID_BAG);
            StringList_AddFromStrbuf(interface->itemListEntries, interface->itemNamesBuffers[i], i);
        }

        if (interface->appArguments->context != BAG_CONTEXT_POFFIN_MULTIPLAYER) {
            if (pocket->pocketType == POCKET_BERRIES) {
                StringList_AddFromMessageBank(interface->itemListEntries, interface->bagStringsLoader, Bag_Text_Empty, LIST_CANCEL);
            } else {
                StringList_AddFromMessageBank(interface->itemListEntries, interface->bagStringsLoader, Bag_Text_CloseBag, LIST_CANCEL);
            }

            StringList_AddFromMessageBank(interface->itemListEntries, interface->bagStringsLoader, Bag_Text_Empty, ITEM_LIST_EMPTY_ENTRY);
            pocket->listItemsCount = i + 3;
        } else { // Can't close the bag when choosing a berry for multiplayer poffin making
            StringList_AddFromMessageBank(interface->itemListEntries, interface->bagStringsLoader, Bag_Text_Empty, ITEM_LIST_EMPTY_ENTRY);
            pocket->listItemsCount = i + 2;
        }
    }
}

static void InitItemNamesBuffers(BagInterface *interface)
{
    for (u32 i = 0; i < LARGEST_POCKET_SIZE; i++) {
        interface->itemNamesBuffers[i] = Strbuf_Init(18, HEAP_ID_BAG);
    }
}

static void FreeItemNamesBuffers(BagInterface *interface)
{
    for (u32 i = 0; i < LARGEST_POCKET_SIZE; i++) {
        Strbuf_Free(interface->itemNamesBuffers[i]);
    }
}

static void LimitMenuScroll(u16 *cursorScroll, u16 *cursorPos, u8 numEntries)
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

static void RestrictMenuCursor(u16 *cursorScroll, u16 *cursorPos, u8 numEntries, u8 numVisibleSlots)
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

static void CreateItemsListMenu(BagInterface *interface, u16 cursorScroll, u16 cursorPos)
{
    ListMenuTemplate template;

    template = sItemsListMenuTemplate;
    template.choices = interface->itemListEntries;
    template.window = &interface->windows[BAG_INTERFACE_WINDOW_ITEM_LIST];
    template.count = interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].listItemsCount;
    template.parent = (void *)interface;

    if (interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].pocketType == POCKET_TMHMS
        || interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].pocketType == POCKET_BERRIES) {
        template.textXOffset = (32 + 3);
    } else {
        template.textXOffset = 0;
    }

    interface->itemsListMenu = ListMenu_New(&template, cursorScroll, cursorPos, HEAP_ID_BAG);
    Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_LIST]);
}

static void ItemsListMenuCursorCallback(ListMenu *menu, u32 index, u8 onInit)
{
    BagInterface *bagInterface = (BagInterface *)ListMenu_GetAttribute(menu, LIST_MENU_PARENT);

    if (onInit != 1) {
        switch (bagInterface->cursorSoundIdx) {
        case 0:
            Sound_PlayEffect(SEQ_SE_DP_GASA01);
            break;
        case 1:
            Sound_PlayEffect(SEQ_SE_DP_GASA02);
            break;
        default:
            Sound_PlayEffect(SEQ_SE_DP_GASA03);
        }

        bagInterface->cursorSoundIdx = (bagInterface->cursorSoundIdx + 1) % 3;

        if (bagInterface->scrollingBall == 0 || ManagedSprite_IsAnimated(bagInterface->sprites[BAG_SPRITE_BAG]) == FALSE) {
            ManagedSprite_SetAnimationFrame(bagInterface->sprites[BAG_SPRITE_BAG], 0);
            ManagedSprite_SetAnim(
                bagInterface->sprites[BAG_SPRITE_BAG], 8 + bagInterface->appArguments->accessiblePockets[bagInterface->appArguments->currPocketIdx].pocketType);
        }
    }

    if (bagInterface->movingItem == TRUE) {
        return;
    }

    Window_FillTilemap(&bagInterface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], 0);

    if (index != LIST_CANCEL) {
        BagInterfacePocketInfo *pocket;

        pocket = &bagInterface->appArguments->accessiblePockets[bagInterface->appArguments->currPocketIdx];
        BagInterface_PrintItemDescription(bagInterface, pocket->items[index].item);
        BahInterface_UpdateItemSprite(bagInterface, pocket->items[index].item);
    } else {
        BagInterface_PrintItemDescription(bagInterface, 0xffff);
        BahInterface_UpdateItemSprite(bagInterface, 0xffff);
    }

    if (bagInterface->hideDescription == FALSE) {
        Window_ScheduleCopyToVRAM(&bagInterface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
    }
}

static void ItemsListMenuPrintCallback(ListMenu *menu, u32 index, u8 yOffset)
{
    BagInterface *interface = (BagInterface *)ListMenu_GetAttribute(menu, LIST_MENU_PARENT);
    BagInterfacePocketInfo *pocket = &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx];

    if (interface->movingItem == TRUE && interface->movingItemID == index) {
        ListMenu_SetAltTextColors(menu, 8, 0, 9);
    } else {
        ListMenu_SetAltTextColors(menu, 1, 0, 2);
    }

    if (pocket->pocketType == POCKET_KEY_ITEMS) {
        if (index != ITEM_LIST_EMPTY_ENTRY && index != LIST_CANCEL) {
            if (Bag_GetRegisteredItem(interface->bag) == pocket->items[index].item) {
                BagInterface_DrawRegisteredIcon(interface, yOffset);
            }
        }
    } else if (pocket->pocketType == POCKET_TMHMS) {
        if (index == LIST_CANCEL) {
            BagInterface_PrintCloseBagEntry(interface, yOffset);
        } else if (index != ITEM_LIST_EMPTY_ENTRY) {
            BagInterface_PrintTMHMNumber(interface, &pocket->items[index], yOffset);
        }
    } else if (pocket->pocketType == POCKET_BERRIES) {
        if (index == LIST_CANCEL) {
            BagInterface_PrintCloseBagEntry(interface, yOffset);
        } else if (index != ITEM_LIST_EMPTY_ENTRY) {
            BagInterface_PrintBerryNumber(interface, &pocket->items[index], yOffset);
        }
    } else {
        if (index != ITEM_LIST_EMPTY_ENTRY && index != LIST_CANCEL) {
            if (interface->movingItem == TRUE && interface->movingItemID == index) {
                BagInterface_PrintItemCount(interface, pocket->items[index].quantity, yOffset, TEXT_COLOR(8, 9, 0));
            } else {
                BagInterface_PrintItemCount(interface, pocket->items[index].quantity, yOffset, TEXT_COLOR(1, 2, 0));
            }
        }
    }
}

static void FreeItemsListMenu(BagInterface *interface)
{
    ListMenu_Free(interface->itemsListMenu, &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorScroll, &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorPos);
    StringList_Free(interface->itemListEntries);
    interface->itemsListMenu = NULL;
}

static int HandleInput_General(BagInterface *interface)
{
    StepPocketIndicatorArrowsAnim(interface);

    if (CheckItemsListPokeballScroll(interface) == TRUE) {
        return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
    }

    if (CheckPocketChange_DPad(interface) == TRUE) {
        return BAG_INTERFACE_STATE_SWITCH_POCKET;
    }

    if (CheckPocketChange_Touch(interface) == TRUE) {
        return BAG_INTERFACE_STATE_SWITCH_POCKET;
    }

    {
        u8 action = HandleItemListMenuInput(interface);

        if (action == 1) {
            BagInterface_SetHighlighterSpritesPalette(interface, PLTT_2);
            Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], 0);
            Window_ClearAndCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
            ShowItemActionsMenu(interface);

            if (interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].pocketType == POCKET_TMHMS) {
                ToggleHideItemSprite(interface, 1);
            }

            return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_ACTION;
        } else if (action == 2) {
            SelectItemForSorting(interface);
            return BAG_INTERFACE_STATE_MOVING_ITEM;
        } else if (action == 3) {
            return BAG_INTERFACE_STATE_EXIT;
        }
    }

    return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
}

static u8 HandleItemListMenuInput(BagInterface *interface)
{
    BagInterfacePocketInfo *pocket;
    u32 chosen;
    u16 newCursorScroll, newCursorPos;

    pocket = &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx];
    ListMenu_GetListAndCursorPos(interface->itemsListMenu, &pocket->cursorScroll, &pocket->cursorPos);

    if (JOY_NEW(PAD_BUTTON_SELECT)) {
        if (CanSelectHoveredItemForSorting(interface) == TRUE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            return 2;
        }
    }

    chosen = ListMenu_ProcessInput(interface->itemsListMenu);
    ListMenu_GetListAndCursorPos(interface->itemsListMenu, &newCursorScroll, &newCursorPos);

    if (pocket->cursorPos != newCursorPos) {
        ManagedSprite_SetPositionXY(
            interface->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], 177, 24 + (newCursorPos - 1) * 16);
    }

    pocket->cursorScroll = newCursorScroll;
    pocket->cursorPos = newCursorPos;

    if (chosen == LIST_NOTHING_CHOSEN) {
        if (PlayerPressedPokeballButton(interface) == TRUE) {
            chosen = ListMenu_GetIndexOfChoice(interface->itemsListMenu, newCursorScroll + newCursorPos);
            interface->pokeballButtonAnimStep = 1;
        }
    }

    switch (chosen) {
    case LIST_NOTHING_CHOSEN: {
        u8 lastAction = ListMenu_GetLastAction(interface->itemsListMenu);

        if (lastAction == LIST_MENU_ACTION_MOVE_UP) {
            RotatePokeball(interface, 36);
        } else if (lastAction == LIST_MENU_ACTION_MOVE_DOWN) {
            RotatePokeball(interface, -36);
        }
    } break;
    case LIST_CANCEL:
        if (interface->appArguments->context == BAG_CONTEXT_POFFIN_MULTIPLAYER) {
            return 0;
        }

        Sound_PlayEffect(SEQ_SE_CONFIRM);
        interface->appArguments->selectedItem = ITEM_NONE;
        interface->appArguments->exitCode = BAG_EXIT_CODE_DONE;
        sub_0208C120(1, HEAP_ID_BAG);
        return 3;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        interface->appArguments->selectedItem = (u16)pocket->items[chosen].item;
        interface->numSelectedItemOwned = (u16)pocket->items[chosen].quantity;
        return 1;
    }

    return 0;
}

static void CalcPocketIndicatorPos(BagInterface *interface)
{
    interface->pocketIndicatorLeftX = 6 + (90 - (10 * interface->numPockets)) / (interface->numPockets + 1);
    interface->pocketIndicatorSpacing = 10 + interface->pocketIndicatorLeftX - 6;
}

static u8 CheckPocketChange_DPad(BagInterface *interface)
{
    if (JOY_REPEAT(PAD_KEY_LEFT)) {
        if (interface->numPockets == 1) {
            return FALSE;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);

        if (interface->appArguments->currPocketIdx != 0) {
            interface->pocketIndicatorMan.nextPocketIdx = interface->appArguments->currPocketIdx - 1;
            interface->nextPocketIdx = interface->appArguments->currPocketIdx - 1;
        } else {
            interface->pocketIndicatorMan.nextPocketIdx = interface->numPockets - 1;
            interface->nextPocketIdx = interface->numPockets - 1;
        }

        BagInterface_StartMovingPocketHighlighter(interface);
        interface->pocketIndicatorMan.scrollDirection = 0;
        SetupPocketChangeFromDPad(interface);
        Bg_ScheduleTilemapTransfer(interface->bgConfig, BG_LAYER_SUB_0);

        return TRUE;
    }
    if (JOY_REPEAT(PAD_KEY_RIGHT)) {
        if (interface->numPockets == 1) {
            return FALSE;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);

        if (interface->appArguments->currPocketIdx + 1 < interface->numPockets) {
            interface->pocketIndicatorMan.nextPocketIdx = interface->appArguments->currPocketIdx + 1;
            interface->nextPocketIdx = interface->appArguments->currPocketIdx + 1;
        } else {
            interface->pocketIndicatorMan.nextPocketIdx = 0;
            interface->nextPocketIdx = 0;
        }

        BagInterface_StartMovingPocketHighlighter(interface);
        interface->pocketIndicatorMan.scrollDirection = 1;
        SetupPocketChangeFromDPad(interface);
        Bg_ScheduleTilemapTransfer(interface->bgConfig, BG_LAYER_SUB_0);

        return TRUE;
    }

    return FALSE;
}

static void SetupPocketChangeFromDPad(BagInterface *interface)
{
    SetupPocketChange(interface);
    interface->pocketIndicatorMan.unk_04 = 3;
    interface->pocketIndicatorMan.unk_07_7 = FALSE;
}

static void SetupPocketChangeFromTouch(BagInterface *interface)
{
    if (interface->pocketIndicatorMan.scrollDirection != 2) {
        SetupPocketChange(interface);
    } else {
        interface->pocketIndicatorMan.animationStage = 2;
    }

    interface->pocketIndicatorMan.unk_04 = 0;
    interface->pocketIndicatorMan.unk_07_7 = TRUE;
}

static void SetupPocketChange(BagInterface *interface)
{
    BagPocketIndicatorManager *animMan = &interface->pocketIndicatorMan;

    animMan->animationStage = 0;
    animMan->animFrame = 0;
    animMan->unk_05 = 0;
    animMan->unk_07_0 = 0;
    animMan->unk_07_4 = 0;

    FreeItemsListMenu(interface);
    Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], 0);
    Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], 0);
    Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_LIST]);
    Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
    ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], FALSE);
    ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_ITEM], FALSE);
    BagInterface_DrawPocketIndicatorIcon(interface, interface->appArguments->currPocketIdx, FALSE);
    DrawPocketButton(interface, interface->appArguments->currPocketIdx, 0);
}

static u8 DoPocketSwitch(BagInterface *interface)
{
    BagPocketIndicatorManager *indicMan;
    int heldPocketBtnIndex;
    u8 pocketIndicAnimDone;
    u8 pocketButtonAnimDone;

    indicMan = &interface->pocketIndicatorMan;

    if (TouchScreen_Touched() == FALSE) {
        indicMan->unk_07_4 = TRUE;
    }

    heldPocketBtnIndex = CheckPlayerHeldPocketButton(interface);

    if (heldPocketBtnIndex == -1 || heldPocketBtnIndex != indicMan->nextPocketIdx) {
        indicMan->unk_07_0 = TRUE;
    }

    if (DoDPadPocketSwitch(interface) == FALSE) {
        if (indicMan->unk_07_4 == 1 && heldPocketBtnIndex != -1) {
            interface->appArguments->currPocketIdx = indicMan->nextPocketIdx;

            if (indicMan->nextPocketIdx > (u8)heldPocketBtnIndex) {
                indicMan->scrollDirection = 0;
                indicMan->animationStage = 0;
                DrawPocketButton(interface, indicMan->nextPocketIdx, 0);
                BagInterface_DrawPocketIndicatorIcon(interface, indicMan->nextPocketIdx, 0);
            } else if (indicMan->nextPocketIdx < (u8)heldPocketBtnIndex) {
                indicMan->scrollDirection = 1;
                indicMan->animationStage = 0;
                DrawPocketButton(interface, indicMan->nextPocketIdx, 0);
                BagInterface_DrawPocketIndicatorIcon(interface, indicMan->nextPocketIdx, 0);
            } else {
                indicMan->scrollDirection = 2;
            }

            indicMan->nextPocketIdx = (u8)heldPocketBtnIndex;
            indicMan->unk_07_0 = 0;
            indicMan->unk_07_4 = 0;
            indicMan->unk_04 = 0;
            interface->nextPocketIdx = (u8)heldPocketBtnIndex;

            BagInterface_StartMovingPocketHighlighter(interface);
        }
    }

    pocketIndicAnimDone = StepPocketIndicatorAnim(interface);
    pocketButtonAnimDone = DoPressedPocketButtonAnim(interface);

    BagInterface_DoPocketHighlighterMovementStep(interface);

    if (pocketIndicAnimDone == TRUE && pocketButtonAnimDone == TRUE && indicMan->unk_07_0 == TRUE && BagInterface_IsPocketHighlighterDoneMoving(interface) == TRUE) {
        if (indicMan->unk_07_7 == TRUE) {
            DrawPocketButton(interface, indicMan->nextPocketIdx, 1);
            Bg_ScheduleTilemapTransfer(interface->bgConfig, BG_LAYER_SUB_0);
        }

        ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_ITEM], TRUE);
        return TRUE;
    }

    return FALSE;
}

static u8 DoDPadPocketSwitch(BagInterface *interface)
{
    BagPocketIndicatorManager *indicMan = &interface->pocketIndicatorMan;

    if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        if (interface->numPockets == 1) {
            return TRUE;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);
        ManagedSprite_SetAnim(interface->sprites[BAG_SPRITE_BAG], interface->appArguments->accessiblePockets[indicMan->nextPocketIdx].pocketType);
        DrawPocketButton(interface, indicMan->nextPocketIdx, 0);
        Bg_ScheduleTilemapTransfer(interface->bgConfig, BG_LAYER_SUB_0);

        interface->appArguments->currPocketIdx = indicMan->nextPocketIdx;

        if (indicMan->nextPocketIdx != 0) {
            indicMan->nextPocketIdx = indicMan->nextPocketIdx - 1;
            interface->nextPocketIdx = interface->nextPocketIdx - 1;
        } else {
            indicMan->nextPocketIdx = interface->numPockets - 1;
            interface->nextPocketIdx = interface->numPockets - 1;
        }

        indicMan->animationStage = 0;
        indicMan->scrollDirection = 0;
        indicMan->unk_07_4 = 1;
        indicMan->unk_07_0 = 1;
        indicMan->unk_07_7 = 0;

        if (indicMan->unk_04 != 3) {
            indicMan->unk_04 = 4;
        }

        BagInterface_StartMovingPocketHighlighter(interface);
        return TRUE;
    }
    if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        if (interface->numPockets == 1) {
            return TRUE;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);
        ManagedSprite_SetAnim(interface->sprites[BAG_SPRITE_BAG], interface->appArguments->accessiblePockets[indicMan->nextPocketIdx].pocketType);
        DrawPocketButton(interface, indicMan->nextPocketIdx, 0);
        Bg_ScheduleTilemapTransfer(interface->bgConfig, BG_LAYER_SUB_0);

        interface->appArguments->currPocketIdx = indicMan->nextPocketIdx;

        if (indicMan->nextPocketIdx + 1 < interface->numPockets) {
            indicMan->nextPocketIdx = indicMan->nextPocketIdx + 1;
            interface->nextPocketIdx = interface->nextPocketIdx + 1;
        } else {
            indicMan->nextPocketIdx = 0;
            interface->nextPocketIdx = 0;
        }

        indicMan->animationStage = 0;
        indicMan->scrollDirection = 1;
        indicMan->unk_07_4 = 1;
        indicMan->unk_07_0 = 1;
        indicMan->unk_07_7 = 0;

        if (indicMan->unk_04 != 3) {
            indicMan->unk_04 = 4;
        }

        BagInterface_StartMovingPocketHighlighter(interface);
        return TRUE;
    }

    return FALSE;
}

static u8 StepPocketIndicatorAnim(BagInterface *interface)
{
    BagPocketIndicatorManager *indicMan = &interface->pocketIndicatorMan;

    switch (indicMan->animationStage) {
    case 0:
        indicMan->animFrame = 0;
        indicMan->animationStage++;
        break;
    case 1:
        if (indicMan->animFrame < 8) {
            indicMan->animFrame++;
            BagInterface_PrintPocketNames(interface);
        } else {
            if (interface->itemsListMenu != NULL) {
                ListMenu_Free(interface->itemsListMenu, &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorScroll, &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorPos);
                StringList_Free(interface->itemListEntries);
            }

            interface->appArguments->currPocketIdx = indicMan->nextPocketIdx;

            ManagedSprite_SetAnim(interface->sprites[BAG_SPRITE_BAG], interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].pocketType);
            BagInterface_DrawPocketIndicatorIcons(interface);
            BagInterface_DrawPocketIndicatorIcon(interface, interface->appArguments->currPocketIdx, TRUE);
            LoadCurrentPocketItemNames(interface);
            LimitMenuScroll(&interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorScroll, &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorPos, interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].listItemsCount);
            RestrictMenuCursor(&interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorScroll, &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorPos, interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].listItemsCount, BAG_UI_NUM_VISIBLE_ITEMS);
            CreateItemsListMenu(interface, interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorScroll, interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorPos);
            ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], 177, 24 + (interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorPos - 1) * TEXT_LINES(1));
            ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], TRUE);

            indicMan->animationStage++;
            return 1;
        }

        break;
    case 2:
        return 1;
    }

    return 0;
}

static u8 CheckPocketChange_Touch(BagInterface *interface)
{
    int pressedPocketBtnIndex = CheckPlayerPressedPocketButton(interface);

    if (pressedPocketBtnIndex == -1) {
        return FALSE;
    }

    if (interface->numPockets == 1) {
        return FALSE;
    }

    if (interface->appArguments->currPocketIdx == (u8)pressedPocketBtnIndex) {
        interface->pocketIndicatorMan.scrollDirection = 2;
    } else if (interface->appArguments->currPocketIdx > (u8)pressedPocketBtnIndex) {
        interface->pocketIndicatorMan.scrollDirection = 0;
    } else {
        interface->pocketIndicatorMan.scrollDirection = 1;
    }

    interface->pocketIndicatorMan.nextPocketIdx = (u8)pressedPocketBtnIndex;
    interface->nextPocketIdx = (u8)pressedPocketBtnIndex;

    BagInterface_StartMovingPocketHighlighter(interface);
    SetupPocketChangeFromTouch(interface);

    return TRUE;
}

static int CheckPlayerPressedPocketButton(BagInterface *interface)
{
    int pocketIndex = TouchScreen_CheckRectanglePressed(sPocketCountToPocketButtonPositions[interface->numPockets].pocketButtonTouchRect);

    if (pocketIndex != -1) {
        u16 mask = ~1;

        // Touched pixel is background (index 0), not part of the button's sprite
        if (Bg_DoesPixelAtXYMatchVal(interface->bgConfig, BG_LAYER_SUB_0, gSystem.touchX, gSystem.touchY, &mask) == 0) {
            return -1;
        }
    }

    return pocketIndex;
}

static int CheckPlayerHeldPocketButton(BagInterface *interface)
{
    int pocketIndex = TouchScreen_CheckRectangleHeld(sPocketCountToPocketButtonPositions[interface->numPockets].pocketButtonTouchRect);

    if (pocketIndex != -1) {
        u16 mask = ~1;

        // Touched pixel is background (index 0), not part of the button's sprite
        if (Bg_DoesPixelAtXYMatchVal(interface->bgConfig, BG_LAYER_SUB_0, gSystem.touchX, gSystem.touchY, &mask) == FALSE) {
            return -1;
        }
    }

    return pocketIndex;
}

static u8 DoPressedPocketButtonAnim(BagInterface *interface)
{
    BagPocketIndicatorManager *indicMan = &interface->pocketIndicatorMan;

    switch (indicMan->unk_04) {
    case 0:
        indicMan->unk_05 = 0;
        indicMan->unk_07_7 = 1;
        indicMan->pressedButtonIdx = indicMan->nextPocketIdx;
        indicMan->unk_04++;
        break;
    case 1:
        if (indicMan->unk_05 != 3) {
            break;
        }

        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        DrawPocketButton(interface, indicMan->pressedButtonIdx, 2);
        Bg_ScheduleTilemapTransfer(interface->bgConfig, BG_LAYER_SUB_0);
        BagInterface_DrawBtnShockwaveSprite(interface, sPocketCountToPocketButtonPositions[interface->numPockets].pocketButtonCoordinates[indicMan->pressedButtonIdx * 2] * 8 + 20, sPocketCountToPocketButtonPositions[interface->numPockets].pocketButtonCoordinates[indicMan->pressedButtonIdx * 2 + 1] * 8 + 20);

        indicMan->unk_04++;
        break;
    case 2:
        if (indicMan->unk_05 != 7) {
            break;
        }

        indicMan->unk_04++;
        return TRUE;
    case 3:
        return TRUE;
    case 4:
        indicMan->unk_04 = 3;
        return TRUE;
    }

    indicMan->unk_05++;
    return FALSE;
}

static void DrawPocketButton(BagInterface *interface, u8 pocketIdx, u8 buttonState)
{
    u16 *tilemapBuffer = (u16 *)Bg_GetTilemapBuffer(interface->bgConfig, BG_LAYER_SUB_0);
    const u8 *iconCoordinates = &sPocketCountToPocketButtonPositions[interface->numPockets].pocketButtonCoordinates[pocketIdx * 2];
    u8 pocketType = interface->appArguments->accessiblePockets[pocketIdx].pocketType;
    u16 pocketButtonTilesStart = (pocketType / 2) * (30 * 5) + (pocketType & 1) * 15 + 30 + buttonState * 5;

    for (u8 y = 0; y < 5; y++) {
        for (u8 x = 0; x < 5; x++) {
            tilemapBuffer[(y + iconCoordinates[1]) * 32 + x + iconCoordinates[0]] = pocketButtonTilesStart + y * 30 + x + (2 << 12);
        }
    }
}

static void DrawPokeballButton(BagInterface *interface, u8 buttonState)
{
    u16 *tilemapBuffer = (u16 *)Bg_GetTilemapBuffer(interface->bgConfig, BG_LAYER_SUB_0);
    u16 buttonTilesStart = 0x276 + 6 * buttonState;

    for (u8 y = 0; y < 6; y++) {
        for (u8 x = 0; x < 6; x++) {
            tilemapBuffer[(7 + y) * 32 + 13 + x] = buttonTilesStart + y * 30 + x + (3 << 12);
        }
    }

    Bg_ScheduleTilemapTransfer(interface->bgConfig, 4);
}

static void StepPokeballButtonPressedAnim(BagInterface *interface)
{
    switch (interface->pokeballButtonAnimStep) {
    case 0:
        break;
    case 1:
        BagInterface_DrawBtnShockwaveSprite(interface, 128, 80);
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        DrawPokeballButton(interface, 2);

        interface->pokeballButtonAnimFrameCount = 0;
        interface->pokeballButtonAnimStep++;
        break;
    case 2:
        if (interface->pokeballButtonAnimFrameCount == 3) {
            DrawPokeballButton(interface, 1);

            interface->pokeballButtonAnimStep++;
            interface->pokeballButtonAnimFrameCount = 0;
        } else {
            interface->pokeballButtonAnimFrameCount++;
        }

        break;
    case 3:
        if (interface->pokeballButtonAnimFrameCount == 2) {
            DrawPokeballButton(interface, 0);

            interface->pokeballButtonAnimStep = 0;
            interface->pokeballButtonAnimFrameCount = 0;
        } else {
            interface->pokeballButtonAnimFrameCount++;
        }
    }
}

static void DrawBottomScreenButtons(BagInterface *interface)
{
    DrawPokeballButton(interface, 0);
    if (interface->numPockets != 1) {
        for (u8 i = 0; i < interface->numPockets; i++) {
            DrawPocketButton(interface, i, 0);
        }
    }

    Bg_ScheduleTilemapTransfer(interface->bgConfig, BG_LAYER_SUB_0);
}

static void StepPocketIndicatorArrowsAnim(BagInterface *interface)
{
    if (interface->pocketIndicatorArrowsAnimTimer == 0) {
        s16 x, y;

        switch (interface->pocketIndicatorArrowsAnimCyclePos) {
        case 0:
        case 1:
            ManagedSprite_GetPositionXY(interface->sprites[BAG_SPRITE_POCKET_INDICATOR_LEFT_ARROW], &x, &y); // Left arrow

            x -= 1;
            ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_POCKET_INDICATOR_LEFT_ARROW], x, y);
            ManagedSprite_GetPositionXY(interface->sprites[BAG_SPRITE_POCKET_INDICATOR_RIGHT_ARROW], &x, &y); // Right arrow

            x += 1;
            ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_POCKET_INDICATOR_RIGHT_ARROW], x, y);
            break;
        case 2:
        case 3:
            ManagedSprite_GetPositionXY(interface->sprites[BAG_SPRITE_POCKET_INDICATOR_LEFT_ARROW], &x, &y);

            x += 1;
            ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_POCKET_INDICATOR_LEFT_ARROW], x, y);
            ManagedSprite_GetPositionXY(interface->sprites[BAG_SPRITE_POCKET_INDICATOR_RIGHT_ARROW], &x, &y);

            x -= 1;
            ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_POCKET_INDICATOR_RIGHT_ARROW], x, y);
            break;
        }

        interface->pocketIndicatorArrowsAnimCyclePos = (interface->pocketIndicatorArrowsAnimCyclePos + 1) & 3;
    }

    interface->pocketIndicatorArrowsAnimTimer = (interface->pocketIndicatorArrowsAnimTimer + 1) & 3;
}

static BOOL PlayerPressedPokeballButton(BagInterface *interface)
{
    int touchedZoneIdx = TouchScreen_CheckRectanglePressed(sPokeballButtonTouchRect);

    if (touchedZoneIdx != -1) {
        u16 mask = ~1;

        if (Bg_DoesPixelAtXYMatchVal(interface->bgConfig, BG_LAYER_SUB_0, gSystem.touchX, gSystem.touchY, &mask) == FALSE) {
            return FALSE;
        }

        return TRUE;
    }

    return FALSE;
}

static u8 CanSelectHoveredItemForSorting(BagInterface *interface)
{
    BagInterfacePocketInfo *pocketInfo = &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx];

    if (ListMenu_GetIndexOfChoice(interface->itemsListMenu, pocketInfo->cursorScroll + pocketInfo->cursorPos) == LIST_CANCEL) {
        return FALSE;
    }

    if (interface->appArguments->context != BAG_CONTEXT_FROM_START_MENU) {
        return FALSE;
    }

    if (pocketInfo->pocketType == POCKET_BERRIES || pocketInfo->pocketType == POCKET_TMHMS) {
        return FALSE;
    }

    return TRUE;
}

static void SelectItemForSorting(BagInterface *interface)
{
    BagInterfacePocketInfo *pocketInfo = &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx];

    interface->movingItem = TRUE;
    interface->movingItemIndex = pocketInfo->cursorScroll + pocketInfo->cursorPos;
    interface->movingItemID = ListMenu_GetIndexOfChoice(interface->itemsListMenu, interface->movingItemIndex);

    BagInterface_PrintMovingItemMessage(interface);
    ListMenu_Draw(interface->itemsListMenu);
    SwitchPositionIndicatorSprite(interface);
}

static u8 HandleInput_MovingItem(BagInterface *interface)
{
    BagInterfacePocketInfo *pocket;
    u32 chosen;
    u16 cursorScroll, cursorPos;

    if (CheckPokeballScroll_Sorting(interface) == 1) {
        return 0;
    }

    pocket = &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx];
    ListMenu_GetListAndCursorPos(interface->itemsListMenu, &pocket->cursorScroll, &pocket->cursorPos);

    if (PlayerPressedPokeballButton(interface) == 1) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        FinishMovingItem(interface);
        interface->pokeballButtonAnimStep = 1;

        return 1;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_SELECT) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        FinishMovingItem(interface);
        return 1;
    }

    chosen = ListMenu_ProcessInput(interface->itemsListMenu);
    ListMenu_GetListAndCursorPos(interface->itemsListMenu, &cursorScroll, &cursorPos);

    if (pocket->cursorPos != cursorPos) {
        ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_ITEM_SORTING_POS_BAR], 177, 24 + (cursorPos - 1) * 16 - 8);
    }

    pocket->cursorScroll = cursorScroll;
    pocket->cursorPos = cursorPos;

    switch (chosen) {
    case LIST_NOTHING_CHOSEN: {
        u8 action = ListMenu_GetLastAction(interface->itemsListMenu);

        if (action == LIST_MENU_ACTION_MOVE_UP) {
            RotatePokeball(interface, 36);
        } else if (action == LIST_MENU_ACTION_MOVE_DOWN) {
            RotatePokeball(interface, -36);
        }
    } break;
    case LIST_CANCEL:
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            FinishMovingItem(interface);
        } else {
            RebuildItemsListMenuAfterSort(interface);
        }

        return 1;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        FinishMovingItem(interface);
        return 1;
    }

    return 0;
}

static void FinishMovingItem(BagInterface *interface)
{
    BagInterfacePocketInfo *pocket = &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx];
    u16 listPos = pocket->cursorScroll + pocket->cursorPos;

    if (!(interface->movingItemIndex == listPos || interface->movingItemIndex == listPos - 1)) {
        Item_MoveInPocket(pocket->items, interface->movingItemIndex - 1, listPos - 1);
        StringList_Free(interface->itemListEntries);
        LoadCurrentPocketItemNames(interface);
    }

    RebuildItemsListMenuAfterSort(interface);
}

static void RebuildItemsListMenuAfterSort(BagInterface *interface)
{
    BagInterfacePocketInfo *pocket = &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx];

    ListMenu_Free(interface->itemsListMenu, &pocket->cursorScroll, &pocket->cursorPos);
    interface->itemsListMenu = NULL;

    if (interface->movingItemIndex < (pocket->cursorScroll + pocket->cursorPos)) {
        pocket->cursorPos -= 1;
    }

    interface->movingItem = FALSE;
    interface->movingItemIndex = 0;
    interface->movingItemID = ITEM_NONE;

    CreateItemsListMenu(interface, pocket->cursorScroll, pocket->cursorPos);
    SwitchPositionIndicatorSprite(interface);
}

static void SwitchPositionIndicatorSprite(BagInterface *interface)
{
    BagInterfacePocketInfo *pocket = &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx];

    if (interface->movingItem == FALSE) {
        ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], 177, 24 + (pocket->cursorPos - 1) * 16);
        ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], TRUE);
        ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_ITEM_SORTING_POS_BAR], FALSE);

        if (interface->numPockets != 1) {
            ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_POCKET_INDICATOR_LEFT_ARROW], TRUE);
            ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_POCKET_INDICATOR_RIGHT_ARROW], TRUE);
        }
    } else {
        ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_ITEM_SORTING_POS_BAR], 177, 24 + (pocket->cursorPos - 1) * 16 - 8);
        ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], FALSE);
        ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_ITEM_SORTING_POS_BAR], TRUE);

        if (interface->numPockets != 1) {
            ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_POCKET_INDICATOR_LEFT_ARROW], FALSE);
            ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_POCKET_INDICATOR_RIGHT_ARROW], FALSE);
        }
    }
}

static void ShowItemActionsMenu(BagInterface *interface)
{
    void *itemData;
    u32 itemActionsIdx;
    u8 currentPocketType;
    u8 itemActions[NUM_ITEM_ACTIONS];

    itemData = Item_Load(interface->appArguments->selectedItem, ITEM_FILE_TYPE_DATA, HEAP_ID_BAG);
    itemActionsIdx = 0;
    currentPocketType = interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].pocketType;

    if (interface->appArguments->context == BAG_CONTEXT_FROM_START_MENU) {
        if (currentPocketType == POCKET_BERRIES) {
            itemActions[itemActionsIdx] = ITEM_ACTION_CHECK_TAG;
            itemActionsIdx++;
        }

        if (interface->appArguments->mapLoadType == MAP_LOAD_TYPE_COLOSSEUM
            || interface->appArguments->mapLoadType == MAP_LOAD_TYPE_UNION) {
            if (interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].pocketType == POCKET_MAIL) {
                itemActions[itemActionsIdx] = ITEM_ACTION_CHECK;
                itemActionsIdx++;
            }
        } else {
            if (Item_Get(itemData, ITEM_PARAM_FIELD_USE_FUNC) != 0) {
                if (interface->appArguments->selectedItem == ITEM_BICYCLE && interface->appArguments->cycling == 1) {
                    itemActions[itemActionsIdx] = ITEM_ACTION_WALK;
                } else if (interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].pocketType == POCKET_MAIL) {
                    itemActions[itemActionsIdx] = ITEM_ACTION_CHECK;
                } else if (interface->appArguments->selectedItem == ITEM_POFFIN_CASE) {
                    itemActions[itemActionsIdx] = ITEM_ACTION_OPEN;
                } else if (interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].pocketType == POCKET_BERRIES && sub_02068B50(interface->appArguments->itemUseCtx) == TRUE) {
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
            if (Bag_GetRegisteredItem(interface->bag) == interface->appArguments->selectedItem) {
                itemActions[itemActionsIdx] = ITEM_ACTION_DESELECT;
            } else {
                itemActions[itemActionsIdx] = ITEM_ACTION_REGISTER;
            }

            itemActionsIdx++;
        }
    } else if (interface->appArguments->context == BAG_CONTEXT_POFFIN_SINGLEPLAYER
        || interface->appArguments->context == BAG_CONTEXT_POFFIN_MULTIPLAYER) {
        itemActions[itemActionsIdx] = ITEM_ACTION_CONFIRM;
        itemActionsIdx++;
        itemActions[itemActionsIdx] = ITEM_ACTION_CHECK_TAG;
        itemActionsIdx++;
    }

    itemActions[itemActionsIdx] = ITEM_ACTION_CANCEL;
    itemActionsIdx++;
    BagInterface_ShowItemActionsMenu(interface, itemActions, itemActionsIdx);
    Heap_Free(itemData);
}

static int ProcessItemActionsMenuInput(BagInterface *interface)
{
    u32 selectedAction;

    if (CheckMenuPokeballScroll(interface) == TRUE) {
        return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_ACTION;
    }

    selectedAction = Menu_ProcessInput(interface->menu);

    if (selectedAction == MENU_NOTHING_CHOSEN) {
        if (PlayerPressedPokeballButton(interface) == TRUE) {
            selectedAction = Menu_ProcessExternalInput(interface->menu, MENU_INPUT_CONFIRM);
            interface->pokeballButtonAnimStep = 1;
        }
    }

    switch (selectedAction) {
    case MENU_NOTHING_CHOSEN: {
        u8 lastAction = Menu_GetLastAction(interface->menu);

        if (lastAction == MENU_ACTION_MOVE_UP) {
            RotatePokeball(interface, 18);
        } else if (lastAction == MENU_ACTION_MOVE_DOWN) {
            RotatePokeball(interface, -18);
        }
    } break;
    case MENU_CANCELED:
        BagInterface_SetHighlighterSpritesPalette(interface, PLTT_1);
        BagInterface_CloseItemActionsMenu(interface);

        if (interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].pocketType == POCKET_TMHMS) {
            ToggleHideItemSprite(interface, FALSE);
        }

        return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
    default: {
        ItemActionFuncPtr actionFunc = (ItemActionFuncPtr)selectedAction;
        return actionFunc(interface);
    }
    }

    return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_ACTION;
}

static void ToggleHideItemSprite(BagInterface *interface, u8 hide)
{
    if (hide == FALSE) {
        Bg_LoadToTilemapRect(interface->bgConfig, BG_LAYER_MAIN_1, sItemSpriteBoxTiles, 0, 18, 5, 5);
        ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_ITEM], TRUE);
    } else {
        Bg_LoadToTilemapRect(interface->bgConfig, BG_LAYER_MAIN_1, sHiddenItemSpriteBoxTiles, 0, 18, 5, 5);
        ManagedSprite_SetDrawFlag(interface->sprites[BAG_SPRITE_ITEM], FALSE);
    }

    Bg_ScheduleTilemapTransfer(interface->bgConfig, BG_LAYER_MAIN_1);
}

const u32 GetItemActionFunc(u32 itemAction)
{
    return sItemActionFuncs[itemAction];
}

static int ItemActionFunc_Use(BagInterface *interface)
{
    UnkFuncPtr_02069238 canUseItem;
    s32 itemUseFuncIdx;

    BagInterface_CloseItemActionsMenu(interface);

    itemUseFuncIdx = Item_LoadParam(interface->appArguments->selectedItem, ITEM_PARAM_FIELD_USE_FUNC, HEAP_ID_BAG);
    canUseItem = (UnkFuncPtr_02069238)sub_020683F4(2, itemUseFuncIdx);

    if (canUseItem != NULL) {
        u32 itemUseError = canUseItem(interface->appArguments->itemUseCtx);

        if (itemUseError != 0) {
            sub_0207CD34(interface->trainerInfo, interface->strBuffer, interface->appArguments->selectedItem, itemUseError, HEAP_ID_BAG);
            Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
            Window_DrawMessageBoxWithScrollCursor(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], FALSE, BASE_TILE_MSG_BOX_FRAME, PLTT_12);
            interface->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(interface);

            return BAG_INTERFACE_STATE_DISMISS_MSG;
        }
    }

    return HandleItemUsed(interface);
}

static int WaitPlayerDismissMsg(BagInterface *interface)
{
    if (Text_IsPrinterActive(interface->msgBoxPrinter) == FALSE) {
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) || gSystem.touchPressed) {
            Window_EraseMessageBox(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], FALSE);
            Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
            BagInterface_SetHighlighterSpritesPalette(interface, PLTT_1);

            if (interface->appArguments->context == BAG_CONTEXT_GARDENING) {
                return BAG_INTERFACE_STATE_SELECT_ITEM_GARDENING;
            } else {
                return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
            }
        }
    }

    return BAG_INTERFACE_STATE_DISMISS_MSG;
}

static int HandleItemUsed(BagInterface *interface)
{
    BagInterfacePocketInfo *pocket = &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx];

    interface->itemUseTaskState = 0;

    if (pocket->pocketType == POCKET_TMHMS) {
        interface->itemUseCallback = (u32)TMHMUseTask;
        return BAG_INTERFACE_STATE_RUN_ITEM_USE_TASK;
    }

    if (sub_0207CC10(interface->appArguments->saveData, interface->strBuffer, interface->appArguments->selectedItem, HEAP_ID_BAG) == TRUE) {
        Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
        Window_DrawMessageBoxWithScrollCursor(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], FALSE, BASE_TILE_MSG_BOX_FRAME, PLTT_12);
        interface->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(interface);
        return BAG_INTERFACE_STATE_DISMISS_MSG;
    }

    if (ShowItemUseMessage(interface, interface->appArguments->selectedItem) == TRUE) {
        interface->itemUseCallback = (u32)MessageItemUseTask;
        return BAG_INTERFACE_STATE_RUN_ITEM_USE_TASK;
    }

    sub_0208C120(1, HEAP_ID_BAG);
    interface->appArguments->exitCode = BAG_EXIT_CODE_USE_ITEM;

    return BAG_INTERFACE_STATE_EXIT;
}

static int RunItemUseTask(BagInterface *interface)
{
    UnkFuncPtr_ov84_0223DA04 callback = (UnkFuncPtr_ov84_0223DA04)interface->itemUseCallback;
    return callback(interface);
}

static int TMHMUseTask(BagInterface *interface)
{
    switch (interface->itemUseTaskState) {
    case 0: {
        u16 move = Item_MoveForTMHM(interface->appArguments->selectedItem);

        StringTemplate_SetMoveName(interface->strTemplate, 0, move);

        if (Item_IsHMMove(move) == TRUE) {
            MessageLoader_GetStrbuf(interface->bagStringsLoader, Bag_Text_BootedUpHM, interface->strBuffer);
        } else {
            MessageLoader_GetStrbuf(interface->bagStringsLoader, Bag_Text_BootedUpTM, interface->strBuffer);
        }
    }
        Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
        Window_DrawMessageBoxWithScrollCursor(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], FALSE, BASE_TILE_MSG_BOX_FRAME, PLTT_12);

        interface->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(interface);
        interface->itemUseTaskState = 1;
        break;
    case 1:
        if (Text_IsPrinterActive(interface->msgBoxPrinter) != 0) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) || gSystem.touchPressed) {
            Strbuf *string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_TMHMContainedMove);

            Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
            StringTemplate_Format(interface->strTemplate, interface->strBuffer, string);
            Strbuf_Free(string);

            interface->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(interface);
            interface->itemUseTaskState = 2;
        }
        break;
    case 2:
        if (Text_IsPrinterActive(interface->msgBoxPrinter) != FALSE) {
            break;
        }

        BagInterface_ShowYesNoMenu(interface);
        interface->itemUseTaskState = 3;
        break;
    case 3: {
        u32 chosen;

        if (CheckMenuPokeballScroll(interface) == TRUE) {
            break;
        }

        if (PlayerPressedPokeballButton(interface) == TRUE) {
            chosen = Menu_ProcessExternalInputAndHandleExit(interface->menu, MENU_INPUT_CONFIRM, HEAP_ID_BAG);
            interface->pokeballButtonAnimStep = 1;
        } else {
            chosen = Menu_ProcessInputAndHandleExit(interface->menu, HEAP_ID_BAG);
        }

        switch (chosen) {
        case 0:
            sub_0208C120(1, HEAP_ID_BAG);
            ToggleHideItemSprite(interface, FALSE);
            interface->appArguments->exitCode = BAG_EXIT_CODE_USE_ITEM;
            return BAG_INTERFACE_STATE_EXIT;
        case MENU_NOTHING_CHOSEN: {
            u8 action = Menu_GetLastAction(interface->menu);

            if (action == MENU_ACTION_MOVE_UP) {
                RotatePokeball(interface, 18);
            } else if (action == MENU_ACTION_MOVE_DOWN) {
                RotatePokeball(interface, -18);
            }
        } break;
        case MENU_CANCELED:
            Window_EraseMessageBox(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], FALSE);
            Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
            BagInterface_SetHighlighterSpritesPalette(interface, PLTT_1);
            ToggleHideItemSprite(interface, 0);
            return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
        }
    } break;
    }

    return BAG_INTERFACE_STATE_RUN_ITEM_USE_TASK;
}

static BOOL ShowItemUseMessage(BagInterface *interface, u16 item)
{
    Strbuf *strToPrint;

    StringTemplate_SetPlayerName(interface->strTemplate, 0, interface->trainerInfo);
    StringTemplate_SetItemName(interface->strTemplate, 1, item);

    if (item == ITEM_BLACK_FLUTE) {
        strToPrint = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_UsedBlackFlute);
        SetBlackWhiteFluteActive(interface, FLUTE_FACTOR_USED_BLACK);
        interface->selectedItemCount = 0;
    } else if (item == ITEM_WHITE_FLUTE) {
        strToPrint = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_UsedWhiteFlute);
        SetBlackWhiteFluteActive(interface, FLUTE_FACTOR_USED_WHITE);
        interface->selectedItemCount = 0;
    } else if (item == ITEM_MAX_REPEL || item == ITEM_SUPER_REPEL || item == ITEM_REPEL) {
        strToPrint = TryUseRepel(interface, item);
    } else {
        return FALSE;
    }

    StringTemplate_Format(interface->strTemplate, interface->strBuffer, strToPrint);
    Strbuf_Free(strToPrint);
    return TRUE;
}

static Strbuf *TryUseRepel(BagInterface *interface, u16 item)
{
    s32 stepCount;

    if (SpecialEncounter_RepelStepsEmpty(GetSpecialEncounters(interface)) == FALSE) {
        interface->selectedItemCount = 0;
        return MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_RepelEffectsLinger);
    }

    stepCount = Item_LoadParam(item, ITEM_PARAM_HOLD_EFFECT_PARAM, HEAP_ID_BAG);
    SetRepelSteps(interface, (u8)stepCount);
    interface->selectedItemCount = 1;
    Sound_PlayEffect(SEQ_SE_DP_CARD2);

    return MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_UsedRepel);
}

static void TrashItem(BagInterface *interface)
{
    Pocket_TryRemoveItem(interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].items, interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].listItemsCount - 3, interface->appArguments->selectedItem, interface->selectedItemCount, HEAP_ID_BAG);
    ListMenu_Free(interface->itemsListMenu, &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorScroll, &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorPos);
    StringList_Free(interface->itemListEntries);

    LoadCurrentPocketItemNames(interface);
    LimitMenuScroll(&interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorScroll, &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorPos, interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].listItemsCount);
    RestrictMenuCursor(&interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorScroll, &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorPos, interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].listItemsCount, BAG_UI_NUM_VISIBLE_ITEMS);
    CreateItemsListMenu(interface, interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorScroll, interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorPos);
}

static int MessageItemUseTask(BagInterface *interface)
{
    switch (interface->itemUseTaskState) {
    case 0:
        Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
        Window_DrawMessageBoxWithScrollCursor(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], FALSE, BASE_TILE_MSG_BOX_FRAME, PLTT_12);
        interface->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(interface);
        interface->itemUseTaskState = 1;
        break;
    case 1:
        if (Text_IsPrinterActive(interface->msgBoxPrinter) != FALSE) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) || gSystem.touchPressed) {
            Window_EraseMessageBox(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], FALSE);
            interface->itemUseTaskState = 2;
        }

        break;
    case 2:
        if (interface->selectedItemCount != 0) {
            TrashItem(interface);
        }

        Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
        BagInterface_SetHighlighterSpritesPalette(interface, PLTT_1);

        return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
    }

    return BAG_INTERFACE_STATE_RUN_ITEM_USE_TASK;
}

static int ItemActionFunc_CheckTag(BagInterface *interface)
{
    BagInterface_CloseItemActionsMenu(interface);
    sub_0208C120(1, HEAP_ID_BAG);
    interface->appArguments->exitCode = BAG_EXIT_CODE_SHOW_BERRY_DATA;

    return BAG_INTERFACE_STATE_EXIT;
}

static int ItemActionFunc_Confirm(BagInterface *interface)
{
    BagInterface_CloseItemActionsMenu(interface);
    sub_0208C120(1, HEAP_ID_BAG);
    interface->appArguments->exitCode = BAG_EXIT_CODE_POFFIN_BERRY_CHOSEN;

    return BAG_INTERFACE_STATE_EXIT;
}

static int ItemActionFunc_Trash(BagInterface *interface)
{
    BagInterface_CloseItemActionsMenu(interface);
    interface->selectedItemCount = 1;
    if (Pocket_GetItemQuantity(interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].items, interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].listItemsCount - 3, interface->appArguments->selectedItem, HEAP_ID_BAG) == 1) {
        BagInterface_PrintConfirmItemTrashMsg(interface);
        return BAG_INTERFACE_STATE_WAIT_CONFIRM_TRASH_MSG;
    }

    BagInterface_ShowItemTrashWindows(interface);
    BagInterface_ShowItemCountArrows(interface, 0);

    return BAG_INTERFACE_STATE_SELECT_ITEM_TRASH_COUNT;
}

static int UpdateTrashCountBasedOnPlayerInput(BagInterface *interface)
{
    if (CheckPokeballItemAmountChange(interface, &interface->selectedItemCount, interface->numSelectedItemOwned) == TRUE) {
        BagInterface_PrintItemTrashCount(interface);
        return BAG_INTERFACE_STATE_SELECT_ITEM_TRASH_COUNT;
    }

    if (PlayerPressedPokeballButton(interface) == TRUE) {
        BagInterface_PrintConfirmItemTrashMsg(interface);
        BagInterface_ToggleItemCountArrows(interface, 0);
        interface->pokeballButtonAnimStep = 1;

        return BAG_INTERFACE_STATE_WAIT_CONFIRM_TRASH_MSG;
    }

    switch (sub_0208C15C(&interface->selectedItemCount, interface->numSelectedItemOwned)) {
    case 0:
        break;
    case 1:
        RotatePokeball(interface, 18);
        BagInterface_PrintItemTrashCount(interface);
        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return BAG_INTERFACE_STATE_SELECT_ITEM_TRASH_COUNT;
    case 2:
        RotatePokeball(interface, -18);
        BagInterface_PrintItemTrashCount(interface);
        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return BAG_INTERFACE_STATE_SELECT_ITEM_TRASH_COUNT;
    }
    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        BagInterface_PrintConfirmItemTrashMsg(interface);
        BagInterface_ToggleItemCountArrows(interface, 0);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return BAG_INTERFACE_STATE_WAIT_CONFIRM_TRASH_MSG;
    }
    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        BagInterface_CloseItemTrashWindows(interface);
        BagInterface_ToggleItemCountArrows(interface, 0);
        BagInterface_SetHighlighterSpritesPalette(interface, PLTT_1);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
    }

    return BAG_INTERFACE_STATE_SELECT_ITEM_TRASH_COUNT;
}

static int WaitConfirmTrashMsgPrinted(BagInterface *interface)
{
    if (Text_IsPrinterActive(interface->msgBoxPrinter) == FALSE) {
        BagInterface_ShowYesNoMenu(interface);
        return BAG_INTERFACE_STATE_CONFIRM_TRASH;
    }

    return BAG_INTERFACE_STATE_WAIT_CONFIRM_TRASH_MSG;
}

static int HandleTrashYesNoInput(BagInterface *interface)
{
    u32 chosen;

    if (CheckMenuPokeballScroll(interface) == TRUE) {
        return BAG_INTERFACE_STATE_CONFIRM_TRASH;
    }

    if (PlayerPressedPokeballButton(interface) == TRUE) {
        chosen = Menu_ProcessExternalInputAndHandleExit(interface->menu, MENU_INPUT_CONFIRM, HEAP_ID_BAG);
        interface->pokeballButtonAnimStep = 1;
    } else {
        chosen = Menu_ProcessInputAndHandleExit(interface->menu, HEAP_ID_BAG);
    }

    switch (chosen) {
    case 0: {
        Strbuf *string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_ThrewAwayItem);

        if (interface->selectedItemCount == 1) {
            StringTemplate_SetItemName(interface->strTemplate, 0, interface->appArguments->selectedItem);
        } else {
            StringTemplate_SetItemNamePlural(interface->strTemplate, 0, interface->appArguments->selectedItem);
        }

        StringTemplate_SetNumber(interface->strTemplate, 1, interface->selectedItemCount, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_Format(interface->strTemplate, interface->strBuffer, string);
        Strbuf_Free(string);
    }
        Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
        interface->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(interface);
        return BAG_INTERFACE_STATE_TRASH_ITEM;

    case MENU_NOTHING_CHOSEN: {
        u8 action = Menu_GetLastAction(interface->menu);

        if (action == MENU_ACTION_MOVE_UP) {
            RotatePokeball(interface, 18);
        } else if (action == MENU_ACTION_MOVE_DOWN) {
            RotatePokeball(interface, -18);
        }
    } break;
    case MENU_CANCELED:
        Window_EraseMessageBox(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], FALSE);
        Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
        BagInterface_SetHighlighterSpritesPalette(interface, PLTT_1);
        return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
    }

    return BAG_INTERFACE_STATE_CONFIRM_TRASH;
}

static int TrashItemOnceMsgPrinted(BagInterface *interface)
{
    if (Text_IsPrinterActive(interface->msgBoxPrinter) != FALSE) {
        return BAG_INTERFACE_STATE_TRASH_ITEM;
    }

    interface->hideDescription = TRUE;
    TrashItem(interface);
    Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE]);

    return BAG_INTERFACE_STATE_WAIT_DISMISS_TRASHED_MSG;
}

static int WaitPlayerDismissMsg_ItemsTrashed(BagInterface *interface)
{
    if (Text_IsPrinterActive(interface->msgBoxPrinter) == FALSE) {
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) || gSystem.touchPressed) {
            interface->hideDescription = FALSE;
            Window_EraseMessageBox(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], FALSE);
            Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
            BagInterface_SetHighlighterSpritesPalette(interface, PLTT_1);

            return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
        }
    }

    return BAG_INTERFACE_STATE_WAIT_DISMISS_TRASHED_MSG;
}

static int ItemActionFunc_Register(BagInterface *interface)
{
    Bag_RegisterItem(interface->bag, interface->appArguments->selectedItem);
    ListMenu_Draw(interface->itemsListMenu);
    BagInterface_CloseItemActionsMenu(interface);
    Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
    BagInterface_SetHighlighterSpritesPalette(interface, PLTT_1);

    return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
}

static int ItemActionFunc_Deselect(BagInterface *interface)
{
    Bag_RegisterItem(interface->bag, ITEM_NONE);
    ListMenu_Draw(interface->itemsListMenu);
    BagInterface_CloseItemActionsMenu(interface);
    Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
    BagInterface_SetHighlighterSpritesPalette(interface, PLTT_1);

    return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
}

static int ItemActionFunc_Give(BagInterface *interface)
{
    BagInterface_CloseItemActionsMenu(interface);
    sub_0208C120(1, HEAP_ID_BAG);
    ToggleHideItemSprite(interface, FALSE);
    interface->appArguments->exitCode = BAG_EXIT_CODE_GIVE_ITEM;

    return BAG_INTERFACE_STATE_EXIT;
}

static int HandleInput_GiveToMon(BagInterface *interface)
{
    StepPocketIndicatorArrowsAnim(interface);
    if (CheckItemsListPokeballScroll(interface) == TRUE) {
        return BAG_INTERFACE_STATE_SELECT_ITEM_TO_GIVE;
    }

    if (CheckPocketChange_DPad(interface) == TRUE) {
        return BAG_INTERFACE_STATE_SWITCH_POCKET;
    }

    if (CheckPocketChange_Touch(interface) == TRUE) {
        return BAG_INTERFACE_STATE_SWITCH_POCKET;
    }

    {
        u8 action = HandleItemListMenuInput(interface);

        if (action == 1) {
            if (Item_LoadParam(interface->appArguments->selectedItem, ITEM_PARAM_PREVENT_TOSS, HEAP_ID_BAG) != FALSE) {
                Strbuf *string;

                Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
                Window_DrawMessageBoxWithScrollCursor(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], FALSE, BASE_TILE_MSG_BOX_FRAME, PLTT_12);
                StringTemplate_SetItemName(interface->strTemplate, 0, interface->appArguments->selectedItem);

                string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_ItemCantBeHeld);

                StringTemplate_Format(interface->strTemplate, interface->strBuffer, string);
                Strbuf_Free(string);
                interface->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(interface);
                BagInterface_SetHighlighterSpritesPalette(interface, PLTT_2);

                return BAG_INTERFACE_STATE_WAIT_ITEM_CANT_BE_HELD_MSG;
            }

            interface->appArguments->exitCode = BAG_EXIT_CODE_GIVE_FROM_MON_MENU;
            sub_0208C120(1, HEAP_ID_BAG);

            return BAG_INTERFACE_STATE_EXIT;
        } else if (action == 3) {
            interface->appArguments->exitCode = BAG_EXIT_CODE_GIVE_FROM_MON_MENU;
            return BAG_INTERFACE_STATE_EXIT;
        }
    }
    return BAG_INTERFACE_STATE_SELECT_ITEM_TO_GIVE;
}

static int WaitPlayerDismissMsg_CantBeHeld(BagInterface *interface)
{
    if (Text_IsPrinterActive(interface->msgBoxPrinter) == FALSE) {
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) || gSystem.touchPressed) {
            Window_EraseMessageBox(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], FALSE);
            Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
            BagInterface_SetHighlighterSpritesPalette(interface, PLTT_1);

            return BAG_INTERFACE_STATE_SELECT_ITEM_TO_GIVE;
        }
    }

    return BAG_INTERFACE_STATE_WAIT_ITEM_CANT_BE_HELD_MSG;
}

static int HandleInput_SellItems(BagInterface *interface)
{
    StepPocketIndicatorArrowsAnim(interface);
    if (CheckItemsListPokeballScroll(interface) == TRUE) {
        return BAG_INTERFACE_STATE_SELECT_ITEM_TO_SELL;
    }

    if (CheckPocketChange_DPad(interface) == TRUE) {
        return BAG_INTERFACE_STATE_SWITCH_POCKET;
    }

    if (CheckPocketChange_Touch(interface) == TRUE) {
        return BAG_INTERFACE_STATE_SWITCH_POCKET;
    }

    {
        u8 action = HandleItemListMenuInput(interface);

        if (action == 1) {
            Strbuf *string;

            BagInterface_PrintMoney(interface, FALSE);
            Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
            Window_DrawMessageBoxWithScrollCursor(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], FALSE, BASE_TILE_MSG_BOX_FRAME, PLTT_12);
            StringTemplate_SetItemName(interface->strTemplate, 0, interface->appArguments->selectedItem);
            BagInterface_SetHighlighterSpritesPalette(interface, PLTT_2);

            interface->soldItemPrice = Item_LoadParam(interface->appArguments->selectedItem, ITEM_PARAM_PRICE, HEAP_ID_BAG);

            if (Item_LoadParam(interface->appArguments->selectedItem, ITEM_PARAM_PREVENT_TOSS, HEAP_ID_BAG) != FALSE
                || interface->soldItemPrice == 0) {
                string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_CantSellItem);
                StringTemplate_Format(interface->strTemplate, interface->strBuffer, string);
                Strbuf_Free(string);

                interface->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(interface);
                return BAG_INTERFACE_STATE_DISMISS_ITEMS_SOLD_MSG;
            }

            interface->selectedItemCount = 1;
            interface->soldItemPrice >>= 1; // Items sell for half their original price

            if (Pocket_GetItemQuantity(interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].items, interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].listItemsCount - 3, interface->appArguments->selectedItem, HEAP_ID_BAG) == 1) {
                string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_ConfirmSellPrice);
                StringTemplate_SetNumber(interface->strTemplate, 0, interface->selectedItemCount * interface->soldItemPrice, 6, PADDING_MODE_NONE, CHARSET_MODE_EN);
                StringTemplate_Format(interface->strTemplate, interface->strBuffer, string);
                Strbuf_Free(string);

                interface->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(interface);
                return BAG_INTERFACE_STATE_WAIT_CONFIRM_SALE_MSG;
            }

            string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_SellHowMany);
            StringTemplate_Format(interface->strTemplate, interface->strBuffer, string);
            Strbuf_Free(string);

            interface->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(interface);
            return BAG_INTERFACE_STATE_WAIT_SELL_HOW_MANY_MSG;
        } else if (action == 3) {
            return BAG_INTERFACE_STATE_EXIT;
        }
    }

    return BAG_INTERFACE_STATE_SELECT_ITEM_TO_SELL;
}

static int SetSellLimitAndSetupWindows(BagInterface *interface)
{
    if (Text_IsPrinterActive(interface->msgBoxPrinter) == FALSE) {
        if (interface->numSelectedItemOwned > 99) {
            interface->numSelectedItemOwned = 99;
        }

        BagInterface_PrintSellCountAndValue(interface, FALSE);
        BagInterface_ShowItemCountArrows(interface, 1);
        return BAG_INTERFACE_STATE_SELECT_ITEM_SELL_COUNT;
    }

    return BAG_INTERFACE_STATE_WAIT_SELL_HOW_MANY_MSG;
}

static int UpdateSellCountBasedOnPlayerInput(BagInterface *interface)
{
    if (CheckPokeballItemAmountChange(interface, &interface->selectedItemCount, interface->numSelectedItemOwned) == TRUE) {
        BagInterface_PrintSellCountAndValue(interface, TRUE);
        return BAG_INTERFACE_STATE_SELECT_ITEM_SELL_COUNT;
    }
    if (PlayerPressedPokeballButton(interface) == TRUE) {
        Strbuf *string;

        BagInterface_ToggleItemCountArrows(interface, FALSE);
        Window_EraseStandardFrame(&interface->windows[BAG_INTERFACE_WINDOW_SELL_COUNT_VALUE], TRUE);
        Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
        string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_ConfirmSellPrice);
        StringTemplate_SetNumber(interface->strTemplate, 0, interface->selectedItemCount * interface->soldItemPrice, 6, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_Format(interface->strTemplate, interface->strBuffer, string);
        Strbuf_Free(string);
        interface->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(interface);
        interface->pokeballButtonAnimStep = 1;

        return BAG_INTERFACE_STATE_WAIT_CONFIRM_SALE_MSG;
    }

    switch (sub_0208C15C(&interface->selectedItemCount, interface->numSelectedItemOwned)) {
    case 0:
        break;
    case 1:
        RotatePokeball(interface, 18);
        BagInterface_PrintSellCountAndValue(interface, TRUE);
        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return BAG_INTERFACE_STATE_SELECT_ITEM_SELL_COUNT;
    case 2:
        RotatePokeball(interface, -18);
        BagInterface_PrintSellCountAndValue(interface, TRUE);
        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return BAG_INTERFACE_STATE_SELECT_ITEM_SELL_COUNT;
    }
    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        Strbuf *string;

        BagInterface_ToggleItemCountArrows(interface, FALSE);
        Window_EraseStandardFrame(&interface->windows[BAG_INTERFACE_WINDOW_SELL_COUNT_VALUE], TRUE);
        Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);

        string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_ConfirmSellPrice);

        StringTemplate_SetNumber(interface->strTemplate, 0, interface->selectedItemCount * interface->soldItemPrice, 6, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_Format(interface->strTemplate, interface->strBuffer, string);
        Strbuf_Free(string);
        interface->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(interface);
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        return BAG_INTERFACE_STATE_WAIT_CONFIRM_SALE_MSG;
    }
    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        interface->soldItemPrice = 0;

        BagInterface_ToggleItemCountArrows(interface, FALSE);
        Window_EraseStandardFrame(&interface->windows[BAG_INTERFACE_WINDOW_MONEY], TRUE);
        Window_EraseStandardFrame(&interface->windows[BAG_INTERFACE_WINDOW_SELL_COUNT_VALUE], TRUE);
        Window_EraseMessageBox(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], FALSE);
        Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
        BagInterface_SetHighlighterSpritesPalette(interface, PLTT_1);
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        return BAG_INTERFACE_STATE_SELECT_ITEM_TO_SELL;
    }

    return BAG_INTERFACE_STATE_SELECT_ITEM_SELL_COUNT;
}

static int WaitConfirmSaleMsgPrinted(BagInterface *interface)
{
    if (Text_IsPrinterActive(interface->msgBoxPrinter) == FALSE) {
        BagInterface_ShowYesNoMenu(interface);

        return BAG_INTERFACE_STATE_CONFIRM_SALE;
    }

    return BAG_INTERFACE_STATE_WAIT_CONFIRM_SALE_MSG;
}

static int HandleSellYesNoInput(BagInterface *interface)
{
    u32 chosen;

    if (CheckMenuPokeballScroll(interface) == TRUE) {
        return BAG_INTERFACE_STATE_CONFIRM_SALE;
    }

    if (PlayerPressedPokeballButton(interface) == TRUE) {
        chosen = Menu_ProcessExternalInputAndHandleExit(interface->menu, MENU_INPUT_CONFIRM, HEAP_ID_BAG);
        interface->pokeballButtonAnimStep = 1;
    } else {
        chosen = Menu_ProcessInputAndHandleExit(interface->menu, HEAP_ID_BAG);
    }

    switch (chosen) {
    case 0: {
        Strbuf *string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_TurnedOverItems);

        if (interface->selectedItemCount > 1) {
            StringTemplate_SetItemNamePlural(interface->strTemplate, 0, interface->appArguments->selectedItem);
        } else {
            StringTemplate_SetItemName(interface->strTemplate, 0, interface->appArguments->selectedItem);
        }

        StringTemplate_SetNumber(interface->strTemplate, 1, interface->selectedItemCount * interface->soldItemPrice, 6, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_Format(interface->strTemplate, interface->strBuffer, string);
        Strbuf_Free(string);
    }
        Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
        interface->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(interface);
        return BAG_INTERFACE_STATE_RESOLVE_SALE;
    case MENU_NOTHING_CHOSEN: {
        u8 action = Menu_GetLastAction(interface->menu);

        if (action == MENU_ACTION_MOVE_UP) {
            RotatePokeball(interface, 18);
        } else if (action == MENU_ACTION_MOVE_DOWN) {
            RotatePokeball(interface, -18);
        }
    } break;
    case MENU_CANCELED:
        interface->soldItemPrice = 0;
        Window_EraseStandardFrame(&interface->windows[BAG_INTERFACE_WINDOW_MONEY], TRUE);
        Window_EraseMessageBox(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], FALSE);
        Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
        BagInterface_SetHighlighterSpritesPalette(interface, PLTT_1);

        return BAG_INTERFACE_STATE_SELECT_ITEM_TO_SELL;
    }

    return BAG_INTERFACE_STATE_CONFIRM_SALE;
}

static int ResolveSale(BagInterface *interface)
{
    if (Text_IsPrinterActive(interface->msgBoxPrinter) != FALSE) {
        return BAG_INTERFACE_STATE_RESOLVE_SALE;
    }

    Sound_PlayEffect(SEQ_SE_DP_REGI);
    TrainerInfo_GiveMoney(interface->trainerInfo, interface->selectedItemCount * interface->soldItemPrice);

    if (interface->selectedItemCount == 1) {
        if (interface->appArguments->itemSoldAmount != 0xff) {
            interface->appArguments->itemSoldAmount++;
        }
    } else {
        interface->appArguments->itemSoldAmount = 2;
    }

    BagInterface_PrintMoney(interface, TRUE);
    interface->hideDescription = TRUE;
    TrashItem(interface);
    Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE]);

    return BAG_INTERFACE_STATE_DISMISS_ITEMS_SOLD_MSG;
}

static int WaitPlayerDismissMsg_ItemsSold(BagInterface *interface)
{
    if (Text_IsPrinterActive(interface->msgBoxPrinter) == FALSE) {
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) || gSystem.touchPressed) {
            interface->hideDescription = FALSE;
            interface->soldItemPrice = 0;

            Window_EraseStandardFrame(&interface->windows[BAG_INTERFACE_WINDOW_MONEY], TRUE);
            Window_EraseMessageBox(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], FALSE);
            Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
            BagInterface_SetHighlighterSpritesPalette(interface, PLTT_1);

            return BAG_INTERFACE_STATE_SELECT_ITEM_TO_SELL;
        }
    }

    return BAG_INTERFACE_STATE_DISMISS_ITEMS_SOLD_MSG;
}

static int HandleInput_Gardening(BagInterface *interface)
{
    StepPocketIndicatorArrowsAnim(interface);

    if (CheckItemsListPokeballScroll(interface) == TRUE) {
        return BAG_INTERFACE_STATE_SELECT_ITEM_GARDENING;
    }

    if (CheckPocketChange_DPad(interface) == TRUE) {
        return BAG_INTERFACE_STATE_SWITCH_POCKET;
    }

    if (CheckPocketChange_Touch(interface) == TRUE) {
        return BAG_INTERFACE_STATE_SWITCH_POCKET;
    }

    {
        u8 action = HandleItemListMenuInput(interface);

        if (action == 1) {
            if (interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].pocketType == POCKET_ITEMS) {
                if (Item_LoadParam(interface->appArguments->selectedItem, ITEM_PARAM_FIELD_USE_FUNC, HEAP_ID_BAG) != 13) {
                    sub_0207CD34(interface->trainerInfo, interface->strBuffer, interface->appArguments->selectedItem, -1, HEAP_ID_BAG);
                    Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
                    Window_DrawMessageBoxWithScrollCursor(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], FALSE, BASE_TILE_MSG_BOX_FRAME, PLTT_12);

                    interface->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(interface);
                    return BAG_INTERFACE_STATE_DISMISS_MSG;
                }
            }

            interface->appArguments->exitCode = BAG_EXIT_CODE_USE_ITEM;
            sub_0208C120(TRUE, HEAP_ID_BAG);
            return BAG_INTERFACE_STATE_EXIT;
        } else if (action == 3) {
            interface->appArguments->exitCode = BAG_EXIT_CODE_DONE;
            return BAG_INTERFACE_STATE_EXIT;
        }
    }
    return BAG_INTERFACE_STATE_SELECT_ITEM_GARDENING;
}

static void RotatePokeball(BagInterface *interface, s8 angle)
{
    s16 ballRotation = Bg_GetRotation(interface->bgConfig, BG_LAYER_SUB_3);

    ballRotation += angle;

    if (ballRotation >= 360) {
        ballRotation -= 360;
    } else if (ballRotation < 0) {
        ballRotation += 360;
    }

    Bg_ScheduleAffineRotation(interface->bgConfig, BG_LAYER_SUB_3, BG_AFFINE_UPDATE_SET_ROTATION, ballRotation);
    interface->pokeballRotation = ballRotation;
}

static BOOL DetectPlayerStartedTouchingPokeball(void)
{
    return TouchScreen_CheckPressedHitTableID(sPokeballStartTouchingTouchBox) == 1;
}

static BOOL DetectPlayerHeldPokeball(void)
{
    return TouchScreen_CheckHeldHitTableID(sPokeballHeldTouchBox) == 1;
}

static BOOL CalcPokeballScroll(BagInterface *interface, u16 stepAngle)
{
    if (DetectPlayerStartedTouchingPokeball() == TRUE) {
        interface->scrollingBall = TRUE;
        interface->queuedScroll = 0;
        interface->scrollRemainder = 0;
        interface->previousTouchX = gSystem.touchX;
        interface->previousTouchY = gSystem.touchY;
    }

    if (interface->scrollingBall == TRUE) {
        if (DetectPlayerHeldPokeball() == TRUE) {
            s32 scrollArcLength, scrollAngle;

            scrollArcLength = ApproximateArcLength(BOTTOM_SCREEN_BALL_CENTER_X - interface->previousTouchX, BOTTOM_SCREEN_BALL_CENTER_Y - interface->previousTouchY, BOTTOM_SCREEN_BALL_CENTER_X - gSystem.touchX, BOTTOM_SCREEN_BALL_CENTER_Y - gSystem.touchY, 80);
            scrollAngle = CalcRadialAngle(80, scrollArcLength * 2);
            scrollAngle = ((scrollAngle << 8) / 182) >> 8;
            interface->pokeballRotation += scrollAngle;

            if (interface->pokeballRotation < 0) {
                interface->pokeballRotation += 360;
            } else if (interface->pokeballRotation >= 360) {
                interface->pokeballRotation -= 360;
            }

            Bg_ScheduleAffineRotation(interface->bgConfig, BG_LAYER_SUB_3, BG_AFFINE_UPDATE_SET_ROTATION, interface->pokeballRotation);
            {
                s32 circumference = 2 * 80 * 3.14;
                s32 stepDistance = circumference / stepAngle;
                if (scrollArcLength > 0) {
                    if (interface->queuedScroll < 0) { // Changed direction
                        interface->queuedScroll = scrollArcLength / stepDistance;
                        interface->scrollRemainder = scrollArcLength % stepDistance;
                    } else {
                        interface->queuedScroll += ((interface->scrollRemainder + scrollArcLength) / stepDistance);
                        interface->scrollRemainder = (interface->scrollRemainder + scrollArcLength) % stepDistance;
                    }
                } else if (scrollArcLength < 0) {
                    if (interface->queuedScroll > 0) { // Changed direction
                        interface->queuedScroll = scrollArcLength / stepDistance;
                        interface->scrollRemainder = scrollArcLength % stepDistance;
                    } else {
                        interface->queuedScroll += ((interface->scrollRemainder + scrollArcLength) / stepDistance);
                        interface->scrollRemainder = (interface->scrollRemainder + scrollArcLength) % stepDistance;
                    }
                }
            }
            interface->previousTouchX = gSystem.touchX;
            interface->previousTouchY = gSystem.touchY;
        } else {
            interface->scrollingBall = 0;
            interface->queuedScroll = 0;
        }

        return TRUE;
    }

    return FALSE;
}

static BOOL CheckItemsListPokeballScroll(BagInterface *interface)
{
    BOOL scrolling = CalcPokeballScroll(interface, 36);

    if (interface->queuedScroll > 0) {
        if (SimulateItemsListInput_ItemsList(interface, PAD_KEY_UP) == TRUE) {
            interface->queuedScroll--;
        } else {
            interface->queuedScroll = 0;
        }

        return TRUE;
    } else if (interface->queuedScroll < 0) {
        if (SimulateItemsListInput_ItemsList(interface, PAD_KEY_DOWN) == TRUE) {
            interface->queuedScroll++;
        } else {
            interface->queuedScroll = 0;
        }

        return TRUE;
    }

    return scrolling;
}

static BOOL SimulateItemsListInput_ItemsList(BagInterface *interface, u16 input)
{
    u16 cursorScroll = interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorScroll;
    u16 cursorPos = interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorPos;

    ListMenu_TestInput(interface->itemsListMenu, NULL, cursorScroll, cursorPos, TRUE, input, &cursorScroll, &cursorPos);

    if (cursorScroll == interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorScroll
        && cursorPos == interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorPos) {
        return FALSE;
    }

    ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], 177, 24 + (cursorPos - 1) * 16);

    interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorScroll = cursorScroll;
    interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorPos = cursorPos;

    return TRUE;
}

static BOOL CheckPokeballScroll_Sorting(BagInterface *interface)
{
    BOOL scrolling = CalcPokeballScroll(interface, 36);

    if (interface->queuedScroll > 0) {
        if (SimulateItemsListInput_Sorting(interface, PAD_KEY_UP) == TRUE) {
            interface->queuedScroll--;
        } else {
            interface->queuedScroll = 0;
        }

        return TRUE;
    } else if (interface->queuedScroll < 0) {
        if (SimulateItemsListInput_Sorting(interface, PAD_KEY_DOWN) == TRUE) {
            interface->queuedScroll++;
        } else {
            interface->queuedScroll = 0;
        }

        return TRUE;
    }

    return scrolling;
}

static BOOL SimulateItemsListInput_Sorting(BagInterface *interface, u16 input)
{
    u16 cursorScroll = interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorScroll;
    u16 cursorPos = interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorPos;

    ListMenu_TestInput(interface->itemsListMenu, NULL, cursorScroll, cursorPos, TRUE, input, &cursorScroll, &cursorPos);

    if (cursorScroll == interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorScroll
        && cursorPos == interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorPos) {
        return FALSE;
    }

    ManagedSprite_SetPositionXY(interface->sprites[BAG_SPRITE_ITEM_SORTING_POS_BAR], 177, 24 + (cursorPos - 1) * 16 - 8);

    interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorScroll = cursorScroll;
    interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].cursorPos = cursorPos;

    return TRUE;
}

static BOOL CheckMenuPokeballScroll(BagInterface *interface)
{
    BOOL scrolling = CalcPokeballScroll(interface, 18);

    if (interface->queuedScroll > 0) {
        if (SimulateMenuInput(interface, MENU_INPUT_MOVE_UP) == TRUE) {
            interface->queuedScroll--;
        } else {
            interface->queuedScroll = 0;
        }

        return TRUE;
    } else if (interface->queuedScroll < 0) {
        if (SimulateMenuInput(interface, MENU_INPUT_MOVE_DOWN) == TRUE) {
            interface->queuedScroll++;
        } else {
            interface->queuedScroll = 0;
        }

        return TRUE;
    }

    return scrolling;
}

static BOOL SimulateMenuInput(BagInterface *interface, u8 input)
{
    u8 prevCursorPos = Menu_GetCursorPos(interface->menu);

    Menu_ProcessExternalInput(interface->menu, input);

    if (prevCursorPos == Menu_GetCursorPos(interface->menu)) {
        return FALSE;
    }

    return TRUE;
}

static BOOL CheckPokeballItemAmountChange(BagInterface *interface, s16 *amount, u16 maxValue)
{
    BOOL scrolling = CalcPokeballScroll(interface, 18);
    s16 prevAmount = *amount;

    if (interface->queuedScroll > 0) {
        interface->queuedScroll--;
        *amount += 1;

        if (*amount > maxValue) {
            *amount = 1;
        }

        if (*amount == prevAmount) {
            return FALSE;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return TRUE;
    } else if (interface->queuedScroll < 0) {
        interface->queuedScroll++;
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

    return scrolling;
}
