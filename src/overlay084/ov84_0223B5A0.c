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
#include "overlay084/struct_ov84_0223BE5C.h"
#include "overlay084/struct_ov84_0223C920.h"

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

#define ITEM_LIST_EMPTY_ENTRY -3

typedef struct {
    const u8 *pocketButtonCoordinates;
    const TouchScreenRect *pocketButtonTouchRect;
} PocketButtonPosition;

typedef int (*UnkFuncPtr_ov84_0223DA04)(BagInterface *);

static void BagInterface_LoadSaveInfo(BagInterface *param0);
static void BagInterfaceVBlankCB(void *param0);
static void SetVramBanks(void);
static void SetupBGLayers(BgConfig *param0);
static void FreeBGLayers(BgConfig *param0);
static void LoadGraphics(BagInterface *param0);
static u8 HandleItemListMenuInput(BagInterface *param0);
static u8 CheckPocketChange_DPad(BagInterface *param0);
static int ProcessItemActionsMenuInput(BagInterface *param0);
static void LoadCurrentPocketItemNames(BagInterface *param0);
static void LimitMenuScroll(u16 *param0, u16 *param1, u8 param2);
static void RestrictMenuCursor(u16 *param0, u16 *param1, u8 param2, u8 param3);
static void CreateItemsListMenu(BagInterface *param0, u16 param1, u16 param2);
static void ItemsListMenuCursorCallback(ListMenu *param0, u32 param1, u8 param2);
static void ItemsListMenuPrintCallback(ListMenu *param0, u32 param1, u8 param2);
static void FreeItemsListMenu(BagInterface *param0);
static void CountAccessiblePockets(BagInterface *param0);
static void CalcPocketIndicatorPos(BagInterface *param0);
static int CheckPlayerPressedPocketButton(BagInterface *param0);
static void StepPocketIndicatorArrowsAnim(BagInterface *param0);
static void DrawPocketButton(BagInterface *param0, u8 param1, u8 param2);
static u8 CheckPocketChange_Touch(BagInterface *param0);
static int CheckPlayerHeldPocketButton(BagInterface *param0);
static u8 StepPocketIndicatorAnim(BagInterface *param0);
static void DrawPocketButton(BagInterface *param0, u8 param1, u8 param2);
static void DrawBottomScreenButtons(BagInterface *param0);
static u8 CanSelectHoveredItemForSorting(BagInterface *param0);
static void SelectItemForSorting(BagInterface *param0);
static u8 HandleInput_MovingItem(BagInterface *param0);
static void FinishMovingItem(BagInterface *param0);
static void RebuildItemsListMenuAfterSort(BagInterface *param0);
static void SwitchPositionIndicatorSprite(BagInterface *param0);
static void ov84_0223C848(BagInterface *param0);
static void ov84_0223C868(BagInterface *param0);
static void ov84_0223C89C(BagInterface *param0);
static u8 DoPocketSwitch(BagInterface *param0);
static u8 DoDPadPocketSwitch(BagInterface *param0);
static u8 DoPressedPocketButtonAnim(BagInterface *param0);
static u8 StepPocketIndicatorAnim(BagInterface *param0);
static void SetupTextLoaders(BagInterface *param0);
static void ShowItemActionsMenu(BagInterface *param0);
static void InitItemNamesBuffers(BagInterface *param0);
static void FreeItemNamesBuffers(BagInterface *param0);
static int ItemActionFunc_Use(BagInterface *param0);
static int ItemActionFunc_CheckTag(BagInterface *param0);
static int ItemActionFunc_Confirm(BagInterface *param0);
static int ItemActionFunc_Trash(BagInterface *param0);
static int ItemActionFunc_Give(BagInterface *param0);
static int ItemActionFunc_Register(BagInterface *param0);
static int ItemActionFunc_Deselect(BagInterface *param0);
static int HandleInput_General(BagInterface *param0);
static int HandleInput_SellItems(BagInterface *param0);
static int ov84_0223E9B0(BagInterface *param0);
static int ov84_0223E588(BagInterface *param0);
static int ov84_0223E5C4(BagInterface *param0);
static int ov84_0223E7A8(BagInterface *param0);
static int ov84_0223E7CC(BagInterface *param0);
static int ov84_0223E920(BagInterface *param0);
static int ov84_0223D8EC(BagInterface *param0);
static int ov84_0223DF0C(BagInterface *param0);
static int ov84_0223DFF8(BagInterface *param0);
static int ov84_0223E01C(BagInterface *param0);
static int ov84_0223E158(BagInterface *param0);
static int ov84_0223E18C(BagInterface *param0);
static int HandleInput_GiveToMon(BagInterface *param0);
static int ov84_0223E36C(BagInterface *param0);
static int HandleInput_Gardening(BagInterface *param0);
static void RestoreCursorPosition(BagInterface *param0);
static void SaveCursorPosition(BagInterface *param0);
static int ov84_0223D94C(BagInterface *param0);
static int ov84_0223DA04(BagInterface *param0);
static int ov84_0223DA14(BagInterface *param0);
static BOOL ShowItemUseMessage(BagInterface *param0, u16 param1);
static Strbuf *UseRepel(BagInterface *param0, u16 param1);
static void ov84_0223DCF8(BagInterface *param0);
static int ov84_0223DDD0(BagInterface *param0);
static void ov84_0223DCF8(BagInterface *param0);
static void ToggleHideItemSprite(BagInterface *param0, u8 param1);
static BOOL PlayerPressedPokeballButton(BagInterface *param0);
static void DrawPokeballButton(BagInterface *param0, u8 param1);
static void StepPokeballButtonPressedAnim(BagInterface *param0);
static void RotatePokeball(BagInterface *param0, s8 param1);
static BOOL CheckMenuPokeballScroll(BagInterface *param0);
static BOOL CalcPokeballScroll(BagInterface *param0, u16 param1);
static BOOL CheckItemsListPokeballScroll(BagInterface *param0);
static BOOL CheckPokeballScroll_Sorting(BagInterface *param0);
static BOOL CheckPokeballItemAmountChange(BagInterface *param0, s16 *param1, u16 param2);
static BOOL SimulateItemsListInput_ItemsList(BagInterface *param0, u16 param1);
static BOOL SimulateItemsListInput_Sorting(BagInterface *param0, u16 param1);
static BOOL SimulateMenuInput(BagInterface *param0, u8 param1);

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
    .count = 0x0,
    .maxDisplay = 0x9,
    .headerXOffset = 0x0,
    .textXOffset = 0x0,
    .cursorXOffset = 0x0,
    .yOffset = 0x0,
    .textColorFg = 0x1,
    .textColorBg = 0x0,
    .textColorShadow = 0x2,
    .letterSpacing = 0x0,
    .lineSpacing = 0x10,
    .pagerMode = 0x0,
    .fontID = 0x0,
    .cursorType = 0x1,
    .parent = NULL
};

// clang-format off
static const u8 sPocketButtonSpritesPositions_8Pockets[] = {
//   y   x
     1,  4,
     2, 10,
     5, 15,
    10, 18,
    17, 18,
    22, 15,
    25, 10,
    26,  4
};
// clang-format on

static const TouchScreenRect sPocketButtonTouchRectangles_8Pockets[] = {
    { .rect = { .top = 32, .bottom = 71, .left = 8, .right = 47 } },
    { .rect = { .top = 80, .bottom = 119, .left = 16, .right = 55 } },
    { .rect = { .top = 120, .bottom = 159, .left = 40, .right = 79 } },
    { .rect = { .top = 144, .bottom = 183, .left = 80, .right = 119 } },
    { .rect = { .top = 144, .bottom = 183, .left = 136, .right = 175 } },
    { .rect = { .top = 120, .bottom = 159, .left = 176, .right = 215 } },
    { .rect = { .top = 80, .bottom = 119, .left = 200, .right = 239 } },
    { .rect = { .top = 32, .bottom = 71, .left = 208, .right = 247 } },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0x0, 0x0, 0x0 }
};

// clang-format off
static const u8 sPocketButtonSpritesPositions_4Pockets[] = {
//   y   x
     1,  4,
     5, 15,
    22, 15,
    26,  4
};
// clang-format on

static const TouchScreenRect sPocketButtonTouchRectangles_4Pockets[] = {
    { .rect = { .top = 32, .bottom = 71, .left = 8, .right = 47 } },
    { .rect = { .top = 120, .bottom = 159, .left = 40, .right = 79 } },
    { .rect = { .top = 120, .bottom = 159, .left = 176, .right = 215 } },
    { .rect = { .top = 32, .bottom = 71, .left = 208, .right = 247 } },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0x0, 0x0, 0x0 }
};

// clang-format off
static const u8 sPocketButtonSpritesPositions_1Pocket[] = {
//   y   x
    17, 18
};
// clang-format on

static const TouchScreenRect sPocketButtonTouchRectangles_1Pocket[] = {
    { .rect = { .top = 144, .bottom = 183, .left = 136, .right = 175 } },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0x0, 0x0, 0x0 }
};

// clang-format off
static const u8 sPocketButtonSpritesPositions_7Pockets[] = {
//   y   x
     2, 10,
     5, 15,
    10, 18,
    17, 18,
    22, 15,
    25, 10,
    26,  4
};
// clang-format on

static const TouchScreenRect sPocketButtonTouchRectangles_7Pockets[] = {
    { .rect = { .top = 80, .bottom = 119, .left = 16, .right = 55 } },
    { .rect = { .top = 120, .bottom = 159, .left = 40, .right = 79 } },
    { .rect = { .top = 144, .bottom = 183, .left = 80, .right = 119 } },
    { .rect = { .top = 144, .bottom = 183, .left = 136, .right = 175 } },
    { .rect = { .top = 120, .bottom = 159, .left = 176, .right = 215 } },
    { .rect = { .top = 80, .bottom = 119, .left = 200, .right = 239 } },
    { .rect = { .top = 32, .bottom = 71, .left = 208, .right = 247 } },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0x0, 0x0, 0x0 }
};

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
// The valid touch zone is larger than the one above to be more lenient
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

int BagInterface_Init(ApplicationManager *appMan, int *param1)
{
    BagInterface *appData;

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    G2_BlendNone();
    G2S_BlendNone();

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_6, 0x30000);

    appData = ApplicationManager_NewData(appMan, sizeof(BagInterface), HEAP_ID_6);
    memset(appData, 0, sizeof(BagInterface));
    appData->appArguments = ApplicationManager_Args(appMan);

    BagInterface_LoadSaveInfo(appData);

    appData->bgConfig = BgConfig_New(HEAP_ID_6);
    appData->trainerGender = TrainerInfo_Gender(appData->trainerInfo);

    StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_DOWNWARD_IN, FADE_TYPE_DOWNWARD_IN, COLOR_BLACK, 6, 1, HEAP_ID_6);
    SetAutorepeat(3, 8);

    RestoreCursorPosition(appData);
    SetupTextLoaders(appData);
    InitItemNamesBuffers(appData);
    CountAccessiblePockets(appData);
    CalcPocketIndicatorPos(appData);
    SetVramBanks();
    SetupBGLayers(appData->bgConfig);
    LoadGraphics(appData);
    DrawBottomScreenButtons(appData);

    EnableTouchPad();
    InitializeTouchPad(4);

    BagInterface_CreateWindows(appData);
    RenderControlFlags_SetSpeedUpOnTouch(1);
    BagInterface_LoadPocketNames(appData);
    BagInterface_MaybeClearPocketNameBox(appData);
    BagInterface_PrintPocketNames(appData);
    BagInterface_DrawPocketIndicatorIcons(appData);
    BagInterface_LoadItemActionStrings(appData);
    BagInterface_LoadItemCountStrings(appData);
    LoadCurrentPocketItemNames(appData);
    LimitMenuScroll(&appData->appArguments->accessiblePockets[appData->appArguments->currPocketIdx].cursorScroll, &appData->appArguments->accessiblePockets[appData->appArguments->currPocketIdx].cursorPos, appData->appArguments->accessiblePockets[appData->appArguments->currPocketIdx].listItemsCount);
    RestrictMenuCursor(&appData->appArguments->accessiblePockets[appData->appArguments->currPocketIdx].cursorScroll, &appData->appArguments->accessiblePockets[appData->appArguments->currPocketIdx].cursorPos, appData->appArguments->accessiblePockets[appData->appArguments->currPocketIdx].listItemsCount, BAG_UI_NUM_VISIBLE_ITEMS);
    BagInterface_InitSprites(appData);
    CreateItemsListMenu(appData, appData->appArguments->accessiblePockets[appData->appArguments->currPocketIdx].cursorScroll, appData->appArguments->accessiblePockets[appData->appArguments->currPocketIdx].cursorPos);

    if ((appData->appArguments->context == BAG_CONTEXT_POFFIN_SINGLEPLAYER) || (appData->appArguments->context == BAG_CONTEXT_POFFIN_MULTIPLAYER)) {
        BagInterface_DrawPoffinCountMsgBox(appData);
    }

    SetVBlankCallback(BagInterfaceVBlankCB, appData);
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
                *state = BAG_INTERFACE_STATE_SELECT_ITEM_BERRY_CARE;
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
                *state = BAG_INTERFACE_STATE_SELECT_ITEM_BERRY_CARE;
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
    case BAG_INTERFACE_STATE_7:
        *state = ov84_0223DF0C(interface);
        break;
    case BAG_INTERFACE_STATE_8:
        *state = ov84_0223DFF8(interface);
        break;
    case BAG_INTERFACE_STATE_9:
        *state = ov84_0223E01C(interface);
        break;
    case BAG_INTERFACE_STATE_10:
        *state = ov84_0223E158(interface);
        break;
    case BAG_INTERFACE_STATE_11:
        *state = ov84_0223E18C(interface);
        break;
    case BAG_INTERFACE_STATE_12:
        *state = ov84_0223D8EC(interface);
        break;
    case BAG_INTERFACE_STATE_13:
        *state = ov84_0223DA04(interface);
        break;
    case BAG_INTERFACE_STATE_SELECT_ITEM_TO_GIVE:
        *state = HandleInput_GiveToMon(interface);
        break;
    case BAG_INTERFACE_STATE_15:
        *state = ov84_0223E36C(interface);
        break;
    case BAG_INTERFACE_STATE_SELECT_ITEM_TO_SELL:
        *state = HandleInput_SellItems(interface);
        break;
    case BAG_INTERFACE_STATE_17:
        *state = ov84_0223E588(interface);
        break;
    case BAG_INTERFACE_STATE_18:
        *state = ov84_0223E5C4(interface);
        break;
    case BAG_INTERFACE_STATE_19:
        *state = ov84_0223E7A8(interface);
        break;
    case BAG_INTERFACE_STATE_20:
        *state = ov84_0223E7CC(interface);
        break;
    case BAG_INTERFACE_STATE_21:
        *state = ov84_0223E920(interface);
        break;
    case BAG_INTERFACE_STATE_22:
        *state = ov84_0223E9B0(interface);
        break;
    case BAG_INTERFACE_STATE_SELECT_ITEM_BERRY_CARE:
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

int BagInterface_Exit(ApplicationManager *appMan, int *param1)
{
    BagInterface *v0 = ApplicationManager_Data(appMan);

    BagInterface_FreeSprites(v0);
    FreeItemsListMenu(v0);
    SaveCursorPosition(v0);
    BagInterface_DeleteWindows(v0->windows);
    FreeBGLayers(v0->bgConfig);

    DisableTouchPad();
    VramTransfer_Free();

    BagInterface_FreeItemActionStrings(v0);
    BagInterface_FreePocketNames(v0);
    BagInterface_FreeItemCountStrings(v0);
    FreeItemNamesBuffers(v0);

    Strbuf_Free(v0->strBuffer);
    MessageLoader_Free(v0->moveNamesLoader);
    MessageLoader_Free(v0->itemNamesLoader);
    MessageLoader_Free(v0->bagStringsLoader);
    FontSpecialChars_Free(v0->specialChars);
    StringTemplate_Free(v0->strTemplate);
    NARC_dtor(v0->bagGraphicsNARC);
    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_6);
    SetAutorepeat(4, 8);

    return TRUE;
}

static void BagInterface_LoadSaveInfo(BagInterface *param0)
{
    param0->bag = SaveData_GetBag(param0->appArguments->saveData);
    param0->trainerInfo = SaveData_GetTrainerInfo(param0->appArguments->saveData);
    param0->options = SaveData_GetOptions(param0->appArguments->saveData);
}

static SpecialEncounter *GetSpecialEncounters(BagInterface *param0)
{
    return SaveData_GetSpecialEncounters(param0->appArguments->saveData);
}

static void SetRepelSteps(BagInterface *param0, u8 stepCount)
{
    u8 *repelSteps = SpecialEncounter_GetRepelSteps(GetSpecialEncounters(param0));
    *repelSteps = stepCount;
}

static void SetBlackWhiteFluteActive(BagInterface *param0, u8 param1)
{
    SpecialEncounter_SetFluteFactor(GetSpecialEncounters(param0), param1);
}

static void BagInterfaceVBlankCB(void *param0)
{
    BagInterface *v0 = param0;

    Bg_RunScheduledUpdates(v0->bgConfig);
    VramTransfer_Process();
    SpriteSystem_TransferOam();
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void SetVramBanks(void)
{
    UnkStruct_02099F80 v0 = {
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

    GXLayers_SetBanks(&v0);
}

static void SetupBGLayers(BgConfig *param0)
{
    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_1,
            GX_BG0_AS_2D,
        };
        SetAllGraphicsModes(&v0);
    }
    {
        BgTemplate v1 = {
            .x = 0x0,
            .y = 0x0,
            .bufferSize = 0x800,
            .baseTile = 0x0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf800,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0x0,
            .areaOver = 0x0,
            .mosaic = FALSE,
        };
        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_0, &v1, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_0);
    }
    {
        BgTemplate v2 = {
            .x = 0x0,
            .y = 0x0,
            .bufferSize = 0x800,
            .baseTile = 0x0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf000,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0x1,
            .areaOver = 0x0,
            .mosaic = FALSE,
        };
        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_1, &v2, 0);
    }
    {
        BgTemplate v3 = {
            .x = 0x0,
            .y = 0x0,
            .bufferSize = 0x800,
            .baseTile = 0x0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xe800,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0x2,
            .areaOver = 0x0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_2, &v3, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_2);
    }
    {
        BgTemplate v4 = {
            .x = 0x0,
            .y = 0x0,
            .bufferSize = 0x800,
            .baseTile = 0x0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xe000,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0x3,
            .areaOver = 0x0,
            .mosaic = FALSE,
        };
        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_3, &v4, 0);
    }
    {
        BgTemplate v5 = {
            .x = 0x0,
            .y = 0x0,
            .bufferSize = 0x800,
            .baseTile = 0x0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf800,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0x0,
            .areaOver = 0x0,
            .mosaic = FALSE,
        };
        Bg_InitFromTemplate(param0, BG_LAYER_SUB_0, &v5, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_0);
    }
    {
        BgTemplate v6 = {
            .x = 0x0,
            .y = 0x0,
            .bufferSize = 0x800,
            .baseTile = 0x0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf000,
            .charBase = GX_BG_CHARBASE_0x08000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0x1,
            .areaOver = 0x0,
            .mosaic = FALSE,
        };
        Bg_InitFromTemplate(param0, BG_LAYER_SUB_1, &v6, 0);
    }
    {
        BgTemplate v7 = {
            .x = 0x0,
            .y = 0x0,
            .bufferSize = 0x400,
            .baseTile = 0x0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_256,
            .screenBase = GX_BG_SCRBASE_0xe800,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0x2,
            .areaOver = 0x0,
            .mosaic = FALSE,
        };
        Bg_InitFromTemplate(param0, BG_LAYER_SUB_3, &v7, 1);
        Bg_ScheduleAffineRotationCenter(param0, 7, 9, 128);
        Bg_ScheduleAffineRotationCenter(param0, 7, 12, 80);
    }

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_6);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_6);
}

static void FreeBGLayers(BgConfig *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_3);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_0);
    Heap_FreeExplicit(HEAP_ID_6, param0);
}

static void LoadGraphics(BagInterface *param0)
{
    param0->bagGraphicsNARC = NARC_ctor(NARC_INDEX_GRAPHIC__PL_BAG_GRA, HEAP_ID_6);

    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->bagGraphicsNARC, 11, param0->bgConfig, BG_LAYER_MAIN_1, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->bagGraphicsNARC, 14, param0->bgConfig, BG_LAYER_MAIN_1, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->bagGraphicsNARC, 13, param0->bgConfig, BG_LAYER_MAIN_3, 0, 0, 0, HEAP_ID_6);
    Graphics_LoadPaletteFromOpenNARC(param0->bagGraphicsNARC, 12, PAL_LOAD_MAIN_BG, 0, 0, HEAP_ID_6);
    Graphics_LoadPaletteFromOpenNARC(param0->bagGraphicsNARC, 22, PAL_LOAD_MAIN_BG, PLTT_OFFSET(13), PALETTE_SIZE_BYTES, HEAP_ID_6);
    Font_LoadScreenIndicatorsPalette(0, PLTT_OFFSET(11), HEAP_ID_6);
    LoadStandardWindowGraphics(param0->bgConfig, BG_LAYER_MAIN_0, 1024 - 9, PLTT_14, STANDARD_WINDOW_SYSTEM, HEAP_ID_6);
    LoadMessageBoxGraphics(param0->bgConfig, BG_LAYER_MAIN_0, 1024 - 9 - (18 + 12), PLTT_12, Options_Frame(param0->options), HEAP_ID_6);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->bagGraphicsNARC, 15, param0->bgConfig, 5, 0, 0, FALSE, HEAP_ID_6);
    Graphics_LoadPaletteFromOpenNARC(param0->bagGraphicsNARC, 16, PAL_LOAD_SUB_BG, 0, 0, HEAP_ID_6);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->bagGraphicsNARC, 17, param0->bgConfig, 5, 0, 0, FALSE, HEAP_ID_6);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->bagGraphicsNARC, 32, param0->bgConfig, 7, 0, 0, FALSE, HEAP_ID_6);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->bagGraphicsNARC, 33, param0->bgConfig, 7, 0, 0, FALSE, HEAP_ID_6);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->bagGraphicsNARC, 19, param0->bgConfig, 4, 0, 0, FALSE, HEAP_ID_6);
    Graphics_LoadPaletteFromOpenNARC(param0->bagGraphicsNARC, 18, PAL_LOAD_SUB_BG, PLTT_OFFSET(2), PALETTE_SIZE_BYTES * 2, HEAP_ID_6);
}

static void SetupTextLoaders(BagInterface *param0)
{
    param0->bagStringsLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0007, HEAP_ID_6);
    param0->specialChars = FontSpecialChars_Init(1, 2, 0, HEAP_ID_6);
    param0->strTemplate = StringTemplate_Default(HEAP_ID_6);
    param0->itemNamesLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ITEM_NAMES, HEAP_ID_6);
    param0->moveNamesLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVE_NAMES, HEAP_ID_6);
    param0->strBuffer = Strbuf_Init(256, HEAP_ID_6);
}

static void CountAccessiblePockets(BagInterface *param0)
{
    param0->numPockets = 0;

    for (u8 i = 0; i < POCKET_MAX; i++) {
        if (param0->appArguments->accessiblePockets[i].items != NULL) {
            param0->numPockets++;
        }
    }
}

u16 BagInterface_GetItemSlotProperty(BagInterface *param0, u16 param1, u16 param2)
{
    BagInterfacePocketInfo *v0 = &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx];

    if (param2 == 0) {
        return v0->items[param1].item;
    }

    return v0->items[param1].quantity;
}

static void LoadItemName(MessageLoader *param0, Strbuf *param1, u16 param2, u32 unused)
{
    MessageLoader_GetStrbuf(param0, param2, param1);
}

static void LoadMoveNameForTMHM(MessageLoader *param0, Strbuf *param1, u16 param2, u32 unused)
{
    MessageLoader_GetStrbuf(param0, Item_MoveForTMHM(param2), param1);
}

static void RestoreCursorPosition(BagInterface *param0)
{
    BagInterfacePocketInfo *accessiblePockets;
    u16 i, lastOpenPocket;

    param0->appArguments->currPocketIdx = 0;
    accessiblePockets = param0->appArguments->accessiblePockets;

    if (param0->appArguments->bagCursor == NULL) {
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

        BagCursor_GetFieldPocketPosition(param0->appArguments->bagCursor, accessiblePockets[i].pocketType, &cursorPos, &cursorScroll);

        if (cursorPos == 0) {
            cursorPos = 1;
        }

        accessiblePockets[i].cursorPos = cursorPos;
        accessiblePockets[i].cursorScroll = cursorScroll;
    }

    lastOpenPocket = BagCursor_GetFieldPocket(param0->appArguments->bagCursor);

    for (i = 0; i < POCKET_MAX; i++) {
        if (accessiblePockets[i].items == NULL) {
            break;
        }

        if (accessiblePockets[i].pocketType == lastOpenPocket) {
            param0->appArguments->currPocketIdx = i;
        }
    }
}

static void SaveCursorPosition(BagInterface *param0)
{
    BagInterfacePocketInfo *v0;
    u32 v1;

    if (param0->appArguments->bagCursor == NULL) {
        return;
    }

    v0 = param0->appArguments->accessiblePockets;

    for (v1 = 0; v1 < POCKET_MAX; v1++) {
        if (v0[v1].items == NULL) {
            break;
        }

        BagCursor_SetFieldPocketPosition(param0->appArguments->bagCursor, v0[v1].pocketType, v0[v1].cursorPos, v0[v1].cursorScroll);
    }

    BagCursor_SetFieldPocket(param0->appArguments->bagCursor, v0[param0->appArguments->currPocketIdx].pocketType);
}

static void LoadCurrentPocketItemNames(BagInterface *param0)
{
    BagInterfacePocketInfo *pocket;
    u32 v1;

    pocket = &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx];
    param0->itemListEntries = StringList_New(sPocketSizes[pocket->pocketType] + 3, HEAP_ID_6); // + 3 to account for some non-item entries

    // The first line of the items list is partially hidden behing the UI, so we begin with an empty entry.
    // Similarly, the last line is partially hidden so a second empty entry gets added to the end later on.
    StringList_AddFromMessageBank(param0->itemListEntries, param0->bagStringsLoader, Bag_Text_Empty, ITEM_LIST_EMPTY_ENTRY);

    if (pocket->pocketType == POCKET_TMHMS) {
        for (v1 = 0; v1 < sPocketSizes[pocket->pocketType]; v1++) {
            if (pocket->items[v1].item == ITEM_NONE || pocket->items[v1].quantity == 0) {
                break;
            }

            LoadMoveNameForTMHM(param0->moveNamesLoader, param0->itemNamesBuffers[v1], pocket->items[v1].item, HEAP_ID_6);
            StringList_AddFromStrbuf(param0->itemListEntries, param0->itemNamesBuffers[v1], v1);
        }

        StringList_AddFromMessageBank(param0->itemListEntries, param0->bagStringsLoader, Bag_Text_Empty, LIST_CANCEL);
        StringList_AddFromMessageBank(param0->itemListEntries, param0->bagStringsLoader, Bag_Text_Empty, ITEM_LIST_EMPTY_ENTRY);

        pocket->listItemsCount = v1 + 3;
    } else {
        for (v1 = 0; v1 < sPocketSizes[pocket->pocketType]; v1++) {
            if (pocket->items[v1].item == ITEM_NONE || pocket->items[v1].quantity == 0) {
                break;
            }

            LoadItemName(param0->itemNamesLoader, param0->itemNamesBuffers[v1], pocket->items[v1].item, HEAP_ID_6);
            StringList_AddFromStrbuf(param0->itemListEntries, param0->itemNamesBuffers[v1], v1);
        }

        if (param0->appArguments->context != BAG_CONTEXT_POFFIN_MULTIPLAYER) {
            if (pocket->pocketType == POCKET_BERRIES) {
                StringList_AddFromMessageBank(param0->itemListEntries, param0->bagStringsLoader, Bag_Text_Empty, LIST_CANCEL);
            } else {
                StringList_AddFromMessageBank(param0->itemListEntries, param0->bagStringsLoader, Bag_Text_CloseBag, LIST_CANCEL);
            }

            StringList_AddFromMessageBank(param0->itemListEntries, param0->bagStringsLoader, Bag_Text_Empty, ITEM_LIST_EMPTY_ENTRY);
            pocket->listItemsCount = v1 + 3;
        } else {
            StringList_AddFromMessageBank(param0->itemListEntries, param0->bagStringsLoader, Bag_Text_Empty, ITEM_LIST_EMPTY_ENTRY);
            pocket->listItemsCount = v1 + 2;
        }
    }
}

static void InitItemNamesBuffers(BagInterface *param0)
{
    for (u32 i = 0; i < LARGEST_POCKET_SIZE; i++) {
        param0->itemNamesBuffers[i] = Strbuf_Init(18, HEAP_ID_6);
    }
}

static void FreeItemNamesBuffers(BagInterface *param0)
{
    for (u32 i = 0; i < LARGEST_POCKET_SIZE; i++) {
        Strbuf_Free(param0->itemNamesBuffers[i]);
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

static void CreateItemsListMenu(BagInterface *param0, u16 cursorScroll, u16 cursorPos)
{
    ListMenuTemplate template;

    template = sItemsListMenuTemplate;
    template.choices = param0->itemListEntries;
    template.window = &param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST];
    template.count = param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].listItemsCount;
    template.parent = (void *)param0;

    if ((param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType == POCKET_TMHMS) || (param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType == POCKET_BERRIES)) {
        template.textXOffset = (32 + 3);
    } else {
        template.textXOffset = 0;
    }

    param0->itemsListMenu = ListMenu_New(&template, cursorScroll, cursorPos, HEAP_ID_6);
    Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST]);
}

static void ItemsListMenuCursorCallback(ListMenu *param0, u32 param1, u8 param2)
{
    BagInterface *v0 = (BagInterface *)ListMenu_GetAttribute(param0, 19);

    if (param2 != 1) {
        switch (v0->unk_482) {
        case 0:
            Sound_PlayEffect(SEQ_SE_DP_GASA01);
            break;
        case 1:
            Sound_PlayEffect(SEQ_SE_DP_GASA02);
            break;
        default:
            Sound_PlayEffect(SEQ_SE_DP_GASA03);
        }

        v0->unk_482 = (v0->unk_482 + 1) % 3;

        if ((v0->scrollingBall == 0) || (ManagedSprite_IsAnimated(v0->sprites[BAG_SPRITE_BAG]) == 0)) {
            ManagedSprite_SetAnimationFrame(v0->sprites[BAG_SPRITE_BAG], 0);
            ManagedSprite_SetAnim(
                v0->sprites[BAG_SPRITE_BAG], 8 + v0->appArguments->accessiblePockets[v0->appArguments->currPocketIdx].pocketType);
        }
    }

    if (v0->movingItem == 1) {
        return;
    }

    Window_FillTilemap(&v0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], 0);

    if (param1 != 0xfffffffe) {
        BagInterfacePocketInfo *v1;

        v1 = &v0->appArguments->accessiblePockets[v0->appArguments->currPocketIdx];
        BagInterface_PrintItemDescription(v0, v1->items[param1].item);
        BahInterface_UpdateItemSprite(v0, v1->items[param1].item);
    } else {
        BagInterface_PrintItemDescription(v0, 0xffff);
        BahInterface_UpdateItemSprite(v0, 0xffff);
    }

    if (v0->unk_479 == 0) {
        Window_ScheduleCopyToVRAM(&v0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
    }
}

static void ItemsListMenuPrintCallback(ListMenu *param0, u32 param1, u8 param2)
{
    BagInterface *v0 = (BagInterface *)ListMenu_GetAttribute(param0, 19);
    BagInterfacePocketInfo *v1 = &v0->appArguments->accessiblePockets[v0->appArguments->currPocketIdx];

    if ((v0->movingItem == 1) && (v0->movingItemID == param1)) {
        ListMenu_SetAltTextColors(param0, 8, 0, 9);
    } else {
        ListMenu_SetAltTextColors(param0, 1, 0, 2);
    }

    if (v1->pocketType == POCKET_KEY_ITEMS) {
        if ((param1 != 0xfffffffd) && (param1 != 0xfffffffe)) {
            if (Bag_GetRegisteredItem(v0->bag) == v1->items[param1].item) {
                BagInterface_DrawRegisteredIcon(v0, param2);
            }
        }
    } else if (v1->pocketType == POCKET_TMHMS) {
        if (param1 == 0xfffffffe) {
            BagInterface_PrintCloseBagEntry(v0, param2);
        } else if (param1 != 0xfffffffd) {
            BagInterface_PrintTMHMNumber(v0, &v1->items[param1], param2);
        }
    } else if (v1->pocketType == POCKET_BERRIES) {
        if (param1 == 0xfffffffe) {
            BagInterface_PrintCloseBagEntry(v0, param2);
        } else if (param1 != 0xfffffffd) {
            BagInterface_PrintBerryNumber(v0, &v1->items[param1], param2);
        }
    } else {
        if ((param1 != 0xfffffffd) && (param1 != 0xfffffffe)) {
            if ((v0->movingItem == 1) && (v0->movingItemID == param1)) {
                BagInterface_PrintItemCount(v0, v1->items[param1].quantity, param2, TEXT_COLOR(8, 9, 0));
            } else {
                BagInterface_PrintItemCount(v0, v1->items[param1].quantity, param2, TEXT_COLOR(1, 2, 0));
            }
        }
    }
}

static void FreeItemsListMenu(BagInterface *param0)
{
    ListMenu_Free(param0->itemsListMenu, &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorScroll, &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorPos);
    StringList_Free(param0->itemListEntries);
    param0->itemsListMenu = NULL;
}

static int HandleInput_General(BagInterface *param0)
{
    StepPocketIndicatorArrowsAnim(param0);

    if (CheckItemsListPokeballScroll(param0) == TRUE) {
        return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
    }

    if (CheckPocketChange_DPad(param0) == TRUE) {
        return BAG_INTERFACE_STATE_SWITCH_POCKET;
    }

    if (CheckPocketChange_Touch(param0) == TRUE) {
        return BAG_INTERFACE_STATE_SWITCH_POCKET;
    }

    {
        u8 v0 = HandleItemListMenuInput(param0);

        if (v0 == 1) {
            BagInterface_SetHighlighterSpritesPalette(param0, 2);
            Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], 0);
            Window_ClearAndCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
            ShowItemActionsMenu(param0);

            if (param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType == POCKET_TMHMS) {
                ToggleHideItemSprite(param0, 1);
            }

            return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_ACTION;
        } else if (v0 == 2) {
            SelectItemForSorting(param0);
            return BAG_INTERFACE_STATE_MOVING_ITEM;
        } else if (v0 == 3) {
            return BAG_INTERFACE_STATE_EXIT;
        }
    }

    return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
}

static u8 HandleItemListMenuInput(BagInterface *param0)
{
    BagInterfacePocketInfo *v0;
    u32 v1;
    u16 v2, v3;

    v0 = &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx];
    ListMenu_GetListAndCursorPos(param0->itemsListMenu, &v0->cursorScroll, &v0->cursorPos);

    if (JOY_NEW(PAD_BUTTON_SELECT)) {
        if (CanSelectHoveredItemForSorting(param0) == 1) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            return 2;
        }
    }

    v1 = ListMenu_ProcessInput(param0->itemsListMenu);
    ListMenu_GetListAndCursorPos(param0->itemsListMenu, &v2, &v3);

    if (v0->cursorPos != v3) {
        ManagedSprite_SetPositionXY(
            param0->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], 177, 24 + (v3 - 1) * 16);
    }

    v0->cursorScroll = v2;
    v0->cursorPos = v3;

    if (v1 == LIST_NOTHING_CHOSEN) {
        if (PlayerPressedPokeballButton(param0) == TRUE) {
            v1 = ListMenu_GetIndexOfChoice(param0->itemsListMenu, v2 + v3);
            param0->pokeballButtonAnimStep = 1;
        }
    }

    switch (v1) {
    case LIST_NOTHING_CHOSEN: {
        u8 v4 = ListMenu_GetLastAction(param0->itemsListMenu);

        if (v4 == LIST_MENU_ACTION_MOVE_UP) {
            RotatePokeball(param0, 36);
        } else if (v4 == LIST_MENU_ACTION_MOVE_DOWN) {
            RotatePokeball(param0, -36);
        }
    } break;
    case LIST_CANCEL:
        if (param0->appArguments->context == BAG_CONTEXT_POFFIN_MULTIPLAYER) {
            return 0;
        }

        Sound_PlayEffect(SEQ_SE_CONFIRM);
        param0->appArguments->selectedItem = ITEM_NONE;
        param0->appArguments->exitCode = BAG_EXIT_CODE_DONE;
        sub_0208C120(1, HEAP_ID_6);
        return 3;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        param0->appArguments->selectedItem = (u16)v0->items[v1].item;
        param0->numSelectedItemOwned = (u16)v0->items[v1].quantity;
        return 1;
    }

    return 0;
}

static void CalcPocketIndicatorPos(BagInterface *param0)
{
    param0->pocketIndicatorLeftX = 6 + (90 - (10 * param0->numPockets)) / (param0->numPockets + 1);
    param0->pocketIndicatorSpacing = 10 + param0->pocketIndicatorLeftX - 6;
}

static u8 CheckPocketChange_DPad(BagInterface *param0)
{
    if (JOY_REPEAT(PAD_KEY_LEFT)) {
        if (param0->numPockets == 1) {
            return FALSE;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);

        if (param0->appArguments->currPocketIdx != 0) {
            param0->pocketIndicatorMan.nextPocketIdx = param0->appArguments->currPocketIdx - 1;
            param0->nextPocketIdx = param0->appArguments->currPocketIdx - 1;
        } else {
            param0->pocketIndicatorMan.nextPocketIdx = param0->numPockets - 1;
            param0->nextPocketIdx = param0->numPockets - 1;
        }

        BagInterface_StartMovingPocketHighlighter(param0);
        param0->pocketIndicatorMan.scrollDirection = 0;
        ov84_0223C848(param0);
        Bg_ScheduleTilemapTransfer(param0->bgConfig, 4);

        return TRUE;
    }
    if (JOY_REPEAT(PAD_KEY_RIGHT)) {
        if (param0->numPockets == 1) {
            return FALSE;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);

        if (param0->appArguments->currPocketIdx + 1 < param0->numPockets) {
            param0->pocketIndicatorMan.nextPocketIdx = param0->appArguments->currPocketIdx + 1;
            param0->nextPocketIdx = param0->appArguments->currPocketIdx + 1;
        } else {
            param0->pocketIndicatorMan.nextPocketIdx = 0;
            param0->nextPocketIdx = 0;
        }

        BagInterface_StartMovingPocketHighlighter(param0);
        param0->pocketIndicatorMan.scrollDirection = 1;
        ov84_0223C848(param0);
        Bg_ScheduleTilemapTransfer(param0->bgConfig, 4);

        return TRUE;
    }

    return FALSE;
}

static void ov84_0223C848(BagInterface *param0)
{
    ov84_0223C89C(param0);
    param0->pocketIndicatorMan.unk_04 = 3;
    param0->pocketIndicatorMan.unk_07_7 = 0;
}

static void ov84_0223C868(BagInterface *param0)
{
    if (param0->pocketIndicatorMan.scrollDirection != 2) {
        ov84_0223C89C(param0);
    } else {
        param0->pocketIndicatorMan.animationStep = 2;
    }

    param0->pocketIndicatorMan.unk_04 = 0;
    param0->pocketIndicatorMan.unk_07_7 = 1;
}

static void ov84_0223C89C(BagInterface *param0)
{
    BagPocketIndicatorManager *v0 = &param0->pocketIndicatorMan;

    v0->animationStep = 0;
    v0->animFrame = 0;
    v0->unk_05 = 0;
    v0->unk_07_0 = 0;
    v0->unk_07_4 = 0;

    FreeItemsListMenu(param0);
    Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], 0);
    Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], 0);
    Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST]);
    Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
    ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], 0);
    ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_ITEM], 0);
    BagInterface_DrawPocketIndicatorIcon(param0, param0->appArguments->currPocketIdx, 0);
    DrawPocketButton(param0, param0->appArguments->currPocketIdx, 0);
}

static u8 DoPocketSwitch(BagInterface *param0)
{
    BagPocketIndicatorManager *v0;
    int heldPocketBtnIndex;
    u8 pocketIndiAnimDone;
    u8 pocketButtonAnimDone;

    v0 = &param0->pocketIndicatorMan;

    if (TouchScreen_Touched() == FALSE) {
        v0->unk_07_4 = TRUE;
    }

    heldPocketBtnIndex = CheckPlayerHeldPocketButton(param0);

    if ((heldPocketBtnIndex == 0xffffffff) || (heldPocketBtnIndex != v0->nextPocketIdx)) {
        v0->unk_07_0 = TRUE;
    }

    if (DoDPadPocketSwitch(param0) == FALSE) {
        if ((v0->unk_07_4 == 1) && (heldPocketBtnIndex != 0xffffffff)) {
            param0->appArguments->currPocketIdx = v0->nextPocketIdx;

            if (v0->nextPocketIdx > (u8)heldPocketBtnIndex) {
                v0->scrollDirection = 0;
                v0->animationStep = 0;
                DrawPocketButton(param0, v0->nextPocketIdx, 0);
                BagInterface_DrawPocketIndicatorIcon(param0, v0->nextPocketIdx, 0);
            } else if (v0->nextPocketIdx < (u8)heldPocketBtnIndex) {
                v0->scrollDirection = 1;
                v0->animationStep = 0;
                DrawPocketButton(param0, v0->nextPocketIdx, 0);
                BagInterface_DrawPocketIndicatorIcon(param0, v0->nextPocketIdx, 0);
            } else {
                v0->scrollDirection = 2;
            }

            v0->nextPocketIdx = (u8)heldPocketBtnIndex;
            v0->unk_07_0 = 0;
            v0->unk_07_4 = 0;
            v0->unk_04 = 0;
            param0->nextPocketIdx = (u8)heldPocketBtnIndex;

            BagInterface_StartMovingPocketHighlighter(param0);
        }
    }

    pocketIndiAnimDone = StepPocketIndicatorAnim(param0);
    pocketButtonAnimDone = DoPressedPocketButtonAnim(param0);

    BagInterface_DoPocketHighlighterMovementStep(param0);

    if ((pocketIndiAnimDone == TRUE) && (pocketButtonAnimDone == TRUE) && (v0->unk_07_0 == TRUE) && (BagInterface_IsPocketHighlighterDoneMoving(param0) == TRUE)) {
        if (v0->unk_07_7 == TRUE) {
            DrawPocketButton(param0, v0->nextPocketIdx, 1);
            Bg_ScheduleTilemapTransfer(param0->bgConfig, 4);
        }

        ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_ITEM], 1);
        return TRUE;
    }

    return FALSE;
}

static u8 DoDPadPocketSwitch(BagInterface *param0)
{
    BagPocketIndicatorManager *v0 = &param0->pocketIndicatorMan;

    if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        if (param0->numPockets == 1) {
            return TRUE;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);
        ManagedSprite_SetAnim(param0->sprites[BAG_SPRITE_BAG], param0->appArguments->accessiblePockets[v0->nextPocketIdx].pocketType);
        DrawPocketButton(param0, v0->nextPocketIdx, 0);
        Bg_ScheduleTilemapTransfer(param0->bgConfig, 4);

        param0->appArguments->currPocketIdx = v0->nextPocketIdx;

        if (v0->nextPocketIdx != 0) {
            v0->nextPocketIdx = v0->nextPocketIdx - 1;
            param0->nextPocketIdx = param0->nextPocketIdx - 1;
        } else {
            v0->nextPocketIdx = param0->numPockets - 1;
            param0->nextPocketIdx = param0->numPockets - 1;
        }

        v0->animationStep = 0;
        v0->scrollDirection = 0;
        v0->unk_07_4 = 1;
        v0->unk_07_0 = 1;
        v0->unk_07_7 = 0;

        if (v0->unk_04 != 3) {
            v0->unk_04 = 4;
        }

        BagInterface_StartMovingPocketHighlighter(param0);
        return TRUE;
    }
    if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        if (param0->numPockets == 1) {
            return TRUE;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_030);
        ManagedSprite_SetAnim(param0->sprites[BAG_SPRITE_BAG], param0->appArguments->accessiblePockets[v0->nextPocketIdx].pocketType);
        DrawPocketButton(param0, v0->nextPocketIdx, 0);
        Bg_ScheduleTilemapTransfer(param0->bgConfig, 4);

        param0->appArguments->currPocketIdx = v0->nextPocketIdx;

        if (v0->nextPocketIdx + 1 < param0->numPockets) {
            v0->nextPocketIdx = v0->nextPocketIdx + 1;
            param0->nextPocketIdx = param0->nextPocketIdx + 1;
        } else {
            v0->nextPocketIdx = 0;
            param0->nextPocketIdx = 0;
        }

        v0->animationStep = 0;
        v0->scrollDirection = 1;
        v0->unk_07_4 = 1;
        v0->unk_07_0 = 1;
        v0->unk_07_7 = 0;

        if (v0->unk_04 != 3) {
            v0->unk_04 = 4;
        }

        BagInterface_StartMovingPocketHighlighter(param0);
        return TRUE;
    }

    return FALSE;
}

static u8 StepPocketIndicatorAnim(BagInterface *param0)
{
    BagPocketIndicatorManager *v0 = &param0->pocketIndicatorMan;

    switch (v0->animationStep) {
    case 0:
        v0->animFrame = 0;
        v0->animationStep++;
        break;
    case 1:
        if (v0->animFrame < 8) {
            v0->animFrame++;
            BagInterface_PrintPocketNames(param0);
        } else {
            if (param0->itemsListMenu != NULL) {
                ListMenu_Free(param0->itemsListMenu, &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorScroll, &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorPos);
                StringList_Free(param0->itemListEntries);
            }

            param0->appArguments->currPocketIdx = v0->nextPocketIdx;

            ManagedSprite_SetAnim(param0->sprites[BAG_SPRITE_BAG], param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType);
            BagInterface_DrawPocketIndicatorIcons(param0);
            BagInterface_DrawPocketIndicatorIcon(param0, param0->appArguments->currPocketIdx, TRUE);
            LoadCurrentPocketItemNames(param0);
            LimitMenuScroll(&param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorScroll, &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorPos, param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].listItemsCount);
            RestrictMenuCursor(&param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorScroll, &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorPos, param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].listItemsCount, BAG_UI_NUM_VISIBLE_ITEMS);
            CreateItemsListMenu(param0, param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorScroll, param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorPos);
            ManagedSprite_SetPositionXY(param0->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], 177, 24 + (param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorPos - 1) * TEXT_LINES(1));
            ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], 1);

            v0->animationStep++;
            return 1;
        }

        break;
    case 2:
        return 1;
    }

    return 0;
}

static u8 CheckPocketChange_Touch(BagInterface *param0)
{
    int pressedPocketBtnIndex = CheckPlayerPressedPocketButton(param0);

    if (pressedPocketBtnIndex == 0xffffffff) {
        return 0;
    }

    if (param0->numPockets == 1) {
        return 0;
    }

    if (param0->appArguments->currPocketIdx == (u8)pressedPocketBtnIndex) {
        param0->pocketIndicatorMan.scrollDirection = 2;
    } else if (param0->appArguments->currPocketIdx > (u8)pressedPocketBtnIndex) {
        param0->pocketIndicatorMan.scrollDirection = 0;
    } else {
        param0->pocketIndicatorMan.scrollDirection = 1;
    }

    param0->pocketIndicatorMan.nextPocketIdx = (u8)pressedPocketBtnIndex;
    param0->nextPocketIdx = (u8)pressedPocketBtnIndex;

    BagInterface_StartMovingPocketHighlighter(param0);
    ov84_0223C868(param0);

    return 1;
}

static int CheckPlayerPressedPocketButton(BagInterface *param0)
{
    int pocketIndex = TouchScreen_CheckRectanglePressed(sPocketCountToPocketButtonPositions[param0->numPockets].pocketButtonTouchRect);

    if (pocketIndex != 0xffffffff) {
        u16 v1 = ~1;

        // Touched pixel is background (index 0), not part of the button's sprite
        if (Bg_DoesPixelAtXYMatchVal(param0->bgConfig, BG_LAYER_SUB_0, gSystem.touchX, gSystem.touchY, &v1) == 0) {
            return 0xffffffff;
        }
    }

    return pocketIndex;
}

static int CheckPlayerHeldPocketButton(BagInterface *param0)
{
    int pocketIndex = TouchScreen_CheckRectangleHeld(sPocketCountToPocketButtonPositions[param0->numPockets].pocketButtonTouchRect);

    if (pocketIndex != 0xffffffff) {
        u16 v1 = ~1;

        // Touched pixel is background (index 0), not part of the button's sprite
        if (Bg_DoesPixelAtXYMatchVal(param0->bgConfig, BG_LAYER_SUB_0, gSystem.touchX, gSystem.touchY, &v1) == FALSE) {
            return 0xffffffff;
        }
    }

    return pocketIndex;
}

static u8 DoPressedPocketButtonAnim(BagInterface *param0)
{
    BagPocketIndicatorManager *v0 = &param0->pocketIndicatorMan;

    switch (v0->unk_04) {
    case 0:
        v0->unk_05 = 0;
        v0->unk_07_7 = 1;
        v0->pressedButtonIdx = v0->nextPocketIdx;
        v0->unk_04++;
        break;
    case 1:
        if (v0->unk_05 != 3) {
            break;
        }

        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        DrawPocketButton(param0, v0->pressedButtonIdx, 2);
        Bg_ScheduleTilemapTransfer(param0->bgConfig, BG_LAYER_SUB_0);
        BagInterface_DrawBtnShockwaveSprite(param0, sPocketCountToPocketButtonPositions[param0->numPockets].pocketButtonCoordinates[v0->pressedButtonIdx * 2] * 8 + 20, sPocketCountToPocketButtonPositions[param0->numPockets].pocketButtonCoordinates[v0->pressedButtonIdx * 2 + 1] * 8 + 20);

        v0->unk_04++;
        break;
    case 2:
        if (v0->unk_05 != 7) {
            break;
        }

        v0->unk_04++;
        return TRUE;
    case 3:
        return TRUE;
    case 4:
        v0->unk_04 = 3;
        return TRUE;
    }

    v0->unk_05++;
    return FALSE;
}

static void DrawPocketButton(BagInterface *param0, u8 pocketIdx, u8 buttonState)
{
    u16 *tilemapBuffer = (u16 *)Bg_GetTilemapBuffer(param0->bgConfig, BG_LAYER_SUB_0);
    const u8 *iconCoordinates = &sPocketCountToPocketButtonPositions[param0->numPockets].pocketButtonCoordinates[pocketIdx * 2];
    u8 pocketType = param0->appArguments->accessiblePockets[pocketIdx].pocketType;
    u16 pocketButtonTilesStart = (pocketType / 2) * (30 * 5) + (pocketType & 1) * 15 + 30 + buttonState * 5;

    for (u8 y = 0; y < 5; y++) {
        for (u8 x = 0; x < 5; x++) {
            tilemapBuffer[(y + iconCoordinates[1]) * 32 + x + iconCoordinates[0]] = pocketButtonTilesStart + y * 30 + x + (2 << 12);
        }
    }
}

static void DrawPokeballButton(BagInterface *param0, u8 buttonState)
{
    u16 *tilemapBuffer = (u16 *)Bg_GetTilemapBuffer(param0->bgConfig, BG_LAYER_SUB_0);
    u16 buttonTilesStart = 0x276 + 6 * buttonState;

    for (u8 y = 0; y < 6; y++) {
        for (u8 x = 0; x < 6; x++) {
            tilemapBuffer[(7 + y) * 32 + 13 + x] = buttonTilesStart + y * 30 + x + (3 << 12);
        }
    }

    Bg_ScheduleTilemapTransfer(param0->bgConfig, 4);
}

static void StepPokeballButtonPressedAnim(BagInterface *param0)
{
    switch (param0->pokeballButtonAnimStep) {
    case 0:
        break;
    case 1:
        BagInterface_DrawBtnShockwaveSprite(param0, 128, 80);
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        DrawPokeballButton(param0, 2);

        param0->pokeballButtonAnimFrameCount = 0;
        param0->pokeballButtonAnimStep++;
        break;
    case 2:
        if (param0->pokeballButtonAnimFrameCount == 3) {
            DrawPokeballButton(param0, 1);

            param0->pokeballButtonAnimStep++;
            param0->pokeballButtonAnimFrameCount = 0;
        } else {
            param0->pokeballButtonAnimFrameCount++;
        }

        break;
    case 3:
        if (param0->pokeballButtonAnimFrameCount == 2) {
            DrawPokeballButton(param0, 0);

            param0->pokeballButtonAnimStep = 0;
            param0->pokeballButtonAnimFrameCount = 0;
        } else {
            param0->pokeballButtonAnimFrameCount++;
        }
    }
}

static void DrawBottomScreenButtons(BagInterface *param0)
{
    DrawPokeballButton(param0, 0);
    if (param0->numPockets != 1) {
        for (u8 i = 0; i < param0->numPockets; i++) {
            DrawPocketButton(param0, i, 0);
        }
    }

    Bg_ScheduleTilemapTransfer(param0->bgConfig, BG_LAYER_SUB_0);
}

static void StepPocketIndicatorArrowsAnim(BagInterface *param0)
{
    if (param0->pocketIndicatorArrowsAnimTimer == 0) {
        s16 x, y;

        switch (param0->pocketIndicatorArrowsAnimCyclePos) {
        case 0:
        case 1:
            ManagedSprite_GetPositionXY(param0->sprites[BAG_SPRITE_POCKET_INDICATOR_LEFT_ARROW], &x, &y); // Left arrow

            x -= 1;
            ManagedSprite_SetPositionXY(param0->sprites[BAG_SPRITE_POCKET_INDICATOR_LEFT_ARROW], x, y);
            ManagedSprite_GetPositionXY(param0->sprites[BAG_SPRITE_POCKET_INDICATOR_RIGHT_ARROW], &x, &y); // Right arrow

            x += 1;
            ManagedSprite_SetPositionXY(param0->sprites[BAG_SPRITE_POCKET_INDICATOR_RIGHT_ARROW], x, y);
            break;
        case 2:
        case 3:
            ManagedSprite_GetPositionXY(param0->sprites[BAG_SPRITE_POCKET_INDICATOR_LEFT_ARROW], &x, &y);

            x += 1;
            ManagedSprite_SetPositionXY(param0->sprites[BAG_SPRITE_POCKET_INDICATOR_LEFT_ARROW], x, y);
            ManagedSprite_GetPositionXY(param0->sprites[BAG_SPRITE_POCKET_INDICATOR_RIGHT_ARROW], &x, &y);

            x -= 1;
            ManagedSprite_SetPositionXY(param0->sprites[BAG_SPRITE_POCKET_INDICATOR_RIGHT_ARROW], x, y);
            break;
        }

        param0->pocketIndicatorArrowsAnimCyclePos = (param0->pocketIndicatorArrowsAnimCyclePos + 1) & 3;
    }

    param0->pocketIndicatorArrowsAnimTimer = (param0->pocketIndicatorArrowsAnimTimer + 1) & 3;
}

static BOOL PlayerPressedPokeballButton(BagInterface *param0)
{
    int v0 = TouchScreen_CheckRectanglePressed(sPokeballButtonTouchRect);

    if (v0 != 0xffffffff) {
        u16 v1 = 0xfffe;

        if (Bg_DoesPixelAtXYMatchVal(param0->bgConfig, BG_LAYER_SUB_0, gSystem.touchX, gSystem.touchY, &v1) == FALSE) {
            return FALSE;
        }

        return TRUE;
    }

    return FALSE;
}

static u8 CanSelectHoveredItemForSorting(BagInterface *param0)
{
    BagInterfacePocketInfo *pocketInfo = &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx];

    if (ListMenu_GetIndexOfChoice(param0->itemsListMenu, pocketInfo->cursorScroll + pocketInfo->cursorPos) == LIST_CANCEL) {
        return FALSE;
    }

    if (param0->appArguments->context != BAG_CONTEXT_FROM_START_MENU) {
        return FALSE;
    }

    if ((pocketInfo->pocketType == POCKET_BERRIES) || (pocketInfo->pocketType == POCKET_TMHMS)) {
        return FALSE;
    }

    return TRUE;
}

static void SelectItemForSorting(BagInterface *param0)
{
    BagInterfacePocketInfo *pocketInfo = &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx];

    param0->movingItem = TRUE;
    param0->movingItemIndex = pocketInfo->cursorScroll + pocketInfo->cursorPos;
    param0->movingItemID = ListMenu_GetIndexOfChoice(param0->itemsListMenu, param0->movingItemIndex);

    BagInterface_PrintMovingItemMessage(param0);
    ListMenu_Draw(param0->itemsListMenu);
    SwitchPositionIndicatorSprite(param0);
}

static u8 HandleInput_MovingItem(BagInterface *param0)
{
    BagInterfacePocketInfo *pocket;
    u32 v1;
    u16 v2, v3;

    if (CheckPokeballScroll_Sorting(param0) == 1) {
        return 0;
    }

    pocket = &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx];
    ListMenu_GetListAndCursorPos(param0->itemsListMenu, &pocket->cursorScroll, &pocket->cursorPos);

    if (PlayerPressedPokeballButton(param0) == 1) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        FinishMovingItem(param0);
        param0->pokeballButtonAnimStep = 1;

        return 1;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_SELECT) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        FinishMovingItem(param0);
        return 1;
    }

    v1 = ListMenu_ProcessInput(param0->itemsListMenu);
    ListMenu_GetListAndCursorPos(param0->itemsListMenu, &v2, &v3);

    if (pocket->cursorPos != v3) {
        ManagedSprite_SetPositionXY(param0->sprites[BAG_SPRITE_ITEM_SORTING_POS_BAR], 177, 24 + (v3 - 1) * 16 - 8);
    }

    pocket->cursorScroll = v2;
    pocket->cursorPos = v3;

    switch (v1) {
    case LIST_NOTHING_CHOSEN: {
        u8 v4 = ListMenu_GetLastAction(param0->itemsListMenu);

        if (v4 == LIST_MENU_ACTION_MOVE_UP) {
            RotatePokeball(param0, 36);
        } else if (v4 == LIST_MENU_ACTION_MOVE_DOWN) {
            RotatePokeball(param0, -36);
        }
    } break;
    case LIST_CANCEL:
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            FinishMovingItem(param0);
        } else {
            RebuildItemsListMenuAfterSort(param0);
        }

        return 1;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        FinishMovingItem(param0);
        return 1;
    }

    return 0;
}

static void FinishMovingItem(BagInterface *param0)
{
    BagInterfacePocketInfo *pocket = &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx];
    u16 listPos = pocket->cursorScroll + pocket->cursorPos;

    if (!(param0->movingItemIndex == listPos || param0->movingItemIndex == listPos - 1)) {
        Item_MoveInPocket(pocket->items, param0->movingItemIndex - 1, listPos - 1);
        StringList_Free(param0->itemListEntries);
        LoadCurrentPocketItemNames(param0);
    }

    RebuildItemsListMenuAfterSort(param0);
}

static void RebuildItemsListMenuAfterSort(BagInterface *param0)
{
    BagInterfacePocketInfo *v0 = &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx];

    ListMenu_Free(param0->itemsListMenu, &v0->cursorScroll, &v0->cursorPos);
    param0->itemsListMenu = NULL;

    if (param0->movingItemIndex < (v0->cursorScroll + v0->cursorPos)) {
        v0->cursorPos -= 1;
    }

    param0->movingItem = FALSE;
    param0->movingItemIndex = 0;
    param0->movingItemID = ITEM_NONE;

    CreateItemsListMenu(param0, v0->cursorScroll, v0->cursorPos);
    SwitchPositionIndicatorSprite(param0);
}

static void SwitchPositionIndicatorSprite(BagInterface *param0)
{
    BagInterfacePocketInfo *v0 = &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx];

    if (param0->movingItem == 0) {
        ManagedSprite_SetPositionXY(param0->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], 177, 24 + (v0->cursorPos - 1) * 16);
        ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], 1);
        ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_ITEM_SORTING_POS_BAR], 0);

        if (param0->numPockets != 1) {
            ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_POCKET_INDICATOR_LEFT_ARROW], 1);
            ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_POCKET_INDICATOR_RIGHT_ARROW], 1);
        }
    } else {
        ManagedSprite_SetPositionXY(param0->sprites[BAG_SPRITE_ITEM_SORTING_POS_BAR], 177, 24 + (v0->cursorPos - 1) * 16 - 8);
        ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], 0);
        ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_ITEM_SORTING_POS_BAR], 1);

        if (param0->numPockets != 1) {
            ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_POCKET_INDICATOR_LEFT_ARROW], 0);
            ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_POCKET_INDICATOR_RIGHT_ARROW], 0);
        }
    }
}

static void ShowItemActionsMenu(BagInterface *param0)
{
    void *itemData;
    u32 itemActionsIdx;
    u8 currentPocketType;
    u8 itemActions[NUM_ITEM_ACTIONS];

    itemData = Item_Load(param0->appArguments->selectedItem, ITEM_FILE_TYPE_DATA, HEAP_ID_6);
    itemActionsIdx = 0;
    currentPocketType = param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType;

    if (param0->appArguments->context == BAG_CONTEXT_FROM_START_MENU) {
        if (currentPocketType == POCKET_BERRIES) {
            itemActions[itemActionsIdx] = ITEM_ACTION_CHECK_TAG;
            itemActionsIdx++;
        }

        if ((param0->appArguments->mapLoadType == MAP_LOAD_TYPE_COLOSSEUM) || (param0->appArguments->mapLoadType == MAP_LOAD_TYPE_UNION)) {
            if (param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType == POCKET_MAIL) {
                itemActions[itemActionsIdx] = ITEM_ACTION_CHECK;
                itemActionsIdx++;
            }
        } else {
            if (Item_Get(itemData, ITEM_PARAM_FIELD_USE_FUNC) != 0) {
                if ((param0->appArguments->selectedItem == ITEM_BICYCLE) && (param0->appArguments->unk_76_0 == 1)) {
                    itemActions[itemActionsIdx] = ITEM_ACTION_WALK;
                } else if (param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType == POCKET_MAIL) {
                    itemActions[itemActionsIdx] = ITEM_ACTION_CHECK;
                } else if (param0->appArguments->selectedItem == ITEM_POFFIN_CASE) {
                    itemActions[itemActionsIdx] = ITEM_ACTION_OPEN;
                } else if ((param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType == POCKET_BERRIES) && (sub_02068B50(param0->appArguments->unk_70) == TRUE)) {
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
            if (Bag_GetRegisteredItem(param0->bag) == param0->appArguments->selectedItem) {
                itemActions[itemActionsIdx] = ITEM_ACTION_DESELECT;
            } else {
                itemActions[itemActionsIdx] = ITEM_ACTION_REGISTER;
            }

            itemActionsIdx++;
        }
    } else if ((param0->appArguments->context == BAG_CONTEXT_POFFIN_SINGLEPLAYER) || (param0->appArguments->context == BAG_CONTEXT_POFFIN_MULTIPLAYER)) {
        itemActions[itemActionsIdx] = ITEM_ACTION_CONFIRM;
        itemActionsIdx++;
        itemActions[itemActionsIdx] = ITEM_ACTION_CHECK_TAG;
        itemActionsIdx++;
    }

    itemActions[itemActionsIdx] = ITEM_ACTION_CANCEL;
    itemActionsIdx++;
    BagInterface_ShowItemActionsMenu(param0, itemActions, itemActionsIdx);
    Heap_Free(itemData);
}

static int ProcessItemActionsMenuInput(BagInterface *param0)
{
    u32 selectedAction;

    if (CheckMenuPokeballScroll(param0) == TRUE) {
        return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_ACTION;
    }

    selectedAction = Menu_ProcessInput(param0->menu);

    if (selectedAction == MENU_NOTHING_CHOSEN) {
        if (PlayerPressedPokeballButton(param0) == TRUE) {
            selectedAction = Menu_ProcessExternalInput(param0->menu, MENU_INPUT_CONFIRM);
            param0->pokeballButtonAnimStep = 1;
        }
    }

    switch (selectedAction) {
    case MENU_NOTHING_CHOSEN: {
        u8 lastAction = Menu_GetLastAction(param0->menu);

        if (lastAction == MENU_ACTION_MOVE_UP) {
            RotatePokeball(param0, 18);
        } else if (lastAction == MENU_ACTION_MOVE_DOWN) {
            RotatePokeball(param0, -18);
        }
    } break;
    case MENU_CANCELED:
        BagInterface_SetHighlighterSpritesPalette(param0, PLTT_1);
        BagInterface_CloseItemActionsMenu(param0);

        if (param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType == POCKET_TMHMS) {
            ToggleHideItemSprite(param0, FALSE);
        }

        return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
    default: {
        ItemActionFuncPtr actionFunc = (ItemActionFuncPtr)selectedAction;
        return actionFunc(param0);
    }
    }

    return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_ACTION;
}

static void ToggleHideItemSprite(BagInterface *param0, u8 hide)
{
    if (hide == FALSE) {
        Bg_LoadToTilemapRect(param0->bgConfig, BG_LAYER_MAIN_1, sItemSpriteBoxTiles, 0, 18, 5, 5);
        ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_ITEM], TRUE);
    } else {
        Bg_LoadToTilemapRect(param0->bgConfig, BG_LAYER_MAIN_1, sHiddenItemSpriteBoxTiles, 0, 18, 5, 5);
        ManagedSprite_SetDrawFlag(param0->sprites[BAG_SPRITE_ITEM], FALSE);
    }

    Bg_ScheduleTilemapTransfer(param0->bgConfig, BG_LAYER_MAIN_1);
}

const u32 GetItemActionFunc(u32 itemAction)
{
    return sItemActionFuncs[itemAction];
}

static int ItemActionFunc_Use(BagInterface *param0)
{
    UnkFuncPtr_02069238 canUseItem;
    s32 itemUseFuncIdx;

    BagInterface_CloseItemActionsMenu(param0);

    itemUseFuncIdx = Item_LoadParam(param0->appArguments->selectedItem, ITEM_PARAM_FIELD_USE_FUNC, HEAP_ID_6);
    canUseItem = (UnkFuncPtr_02069238)sub_020683F4(2, itemUseFuncIdx);

    if (canUseItem != NULL) {
        u32 v2 = canUseItem(param0->appArguments->unk_70);

        if (v2 != 0) {
            sub_0207CD34(param0->trainerInfo, param0->strBuffer, param0->appArguments->selectedItem, v2, HEAP_ID_6);
            Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
            Window_DrawMessageBoxWithScrollCursor(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 0, 1024 - 9 - (18 + 12), PLTT_12);
            param0->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(param0);

            return BAG_INTERFACE_STATE_12;
        }
    }

    return ov84_0223D94C(param0);
}

static int ov84_0223D8EC(BagInterface *param0)
{
    if (Text_IsPrinterActive(param0->msgBoxPrinter) == 0) {
        if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || gSystem.touchPressed) {
            Window_EraseMessageBox(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 0);
            Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
            BagInterface_SetHighlighterSpritesPalette(param0, 1);

            if (param0->appArguments->context == BAG_CONTEXT_GARDENING) {
                return BAG_INTERFACE_STATE_SELECT_ITEM_BERRY_CARE;
            } else {
                return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
            }
        }
    }

    return BAG_INTERFACE_STATE_12;
}

static int ov84_0223D94C(BagInterface *param0)
{
    BagInterfacePocketInfo *v0 = &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx];

    param0->unk_483 = 0;

    if (v0->pocketType == POCKET_TMHMS) {
        param0->unk_484 = (u32)ov84_0223DA14;
        return BAG_INTERFACE_STATE_13;
    }

    if (sub_0207CC10(param0->appArguments->saveData, param0->strBuffer, param0->appArguments->selectedItem, HEAP_ID_6) == TRUE) {
        Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
        Window_DrawMessageBoxWithScrollCursor(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 0, 1024 - 9 - (18 + 12), 12);
        param0->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(param0);
        return BAG_INTERFACE_STATE_12;
    }

    if (ShowItemUseMessage(param0, param0->appArguments->selectedItem) == TRUE) {
        param0->unk_484 = (u32)ov84_0223DDD0;
        return BAG_INTERFACE_STATE_13;
    }

    sub_0208C120(1, HEAP_ID_6);
    param0->appArguments->exitCode = BAG_EXIT_CODE_USE_ITEM;

    return BAG_INTERFACE_STATE_EXIT;
}

static int ov84_0223DA04(BagInterface *param0)
{
    UnkFuncPtr_ov84_0223DA04 v0 = (UnkFuncPtr_ov84_0223DA04)param0->unk_484;
    return v0(param0);
}

static int ov84_0223DA14(BagInterface *param0)
{
    switch (param0->unk_483) {
    case 0: {
        u16 v0 = Item_MoveForTMHM(param0->appArguments->selectedItem);

        StringTemplate_SetMoveName(param0->strTemplate, 0, v0);

        if (Item_IsHMMove(v0) == 1) {
            MessageLoader_GetStrbuf(param0->bagStringsLoader, Bag_Text_BootedUpHM, param0->strBuffer);
        } else {
            MessageLoader_GetStrbuf(param0->bagStringsLoader, Bag_Text_BootedUpTM, param0->strBuffer);
        }
    }
        Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
        Window_DrawMessageBoxWithScrollCursor(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 0, 1024 - 9 - (18 + 12), 12);

        param0->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(param0);
        param0->unk_483 = 1;
        break;
    case 1:
        if (Text_IsPrinterActive(param0->msgBoxPrinter) != 0) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) || gSystem.touchPressed) {
            Strbuf *v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_TMHMContainedMove);

            Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
            StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
            Strbuf_Free(v1);

            param0->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(param0);
            param0->unk_483 = 2;
        }
        break;
    case 2:
        if (Text_IsPrinterActive(param0->msgBoxPrinter) != 0) {
            break;
        }

        BagInterface_ShowYesNoMenu(param0);
        param0->unk_483 = 3;
        break;
    case 3: {
        u32 v2;

        if (CheckMenuPokeballScroll(param0) == 1) {
            break;
        }

        if (PlayerPressedPokeballButton(param0) == TRUE) {
            v2 = Menu_ProcessExternalInputAndHandleExit(param0->menu, MENU_INPUT_CONFIRM, HEAP_ID_6);
            param0->pokeballButtonAnimStep = 1;
        } else {
            v2 = Menu_ProcessInputAndHandleExit(param0->menu, HEAP_ID_6);
        }

        switch (v2) {
        case 0:
            sub_0208C120(1, HEAP_ID_6);
            ToggleHideItemSprite(param0, 0);
            param0->appArguments->exitCode = BAG_EXIT_CODE_USE_ITEM;
            return BAG_INTERFACE_STATE_EXIT;
        case 0xffffffff: {
            u8 v3 = Menu_GetLastAction(param0->menu);

            if (v3 == MENU_ACTION_MOVE_UP) {
                RotatePokeball(param0, 18);
            } else if (v3 == MENU_ACTION_MOVE_DOWN) {
                RotatePokeball(param0, -18);
            }
        } break;
        case 0xfffffffe:
            Window_EraseMessageBox(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 0);
            Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
            BagInterface_SetHighlighterSpritesPalette(param0, 1);
            ToggleHideItemSprite(param0, 0);
            return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
        }
    } break;
    }

    return BAG_INTERFACE_STATE_13;
}

static BOOL ShowItemUseMessage(BagInterface *param0, u16 param1)
{
    Strbuf *v0;

    StringTemplate_SetPlayerName(param0->strTemplate, 0, param0->trainerInfo);
    StringTemplate_SetItemName(param0->strTemplate, 1, param1);

    if (param1 == ITEM_BLACK_FLUTE) {
        v0 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_UsedBlackFlute);
        SetBlackWhiteFluteActive(param0, FLUTE_FACTOR_USED_BLACK);
        param0->selectedItemCount = 0;
    } else if (param1 == ITEM_WHITE_FLUTE) {
        v0 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_UsedWhiteFlute);
        SetBlackWhiteFluteActive(param0, FLUTE_FACTOR_USED_WHITE);
        param0->selectedItemCount = 0;
    } else if ((param1 == ITEM_MAX_REPEL) || (param1 == ITEM_SUPER_REPEL) || (param1 == ITEM_REPEL)) {
        v0 = UseRepel(param0, param1);
    } else {
        return FALSE;
    }

    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v0);
    Strbuf_Free(v0);
    return TRUE;
}

static Strbuf *UseRepel(BagInterface *param0, u16 item)
{
    s32 stepCount;

    if (SpecialEncounter_RepelStepsEmpty(GetSpecialEncounters(param0)) == FALSE) {
        param0->selectedItemCount = 0;
        return MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_RepelEffectsLinger);
    }

    stepCount = Item_LoadParam(item, ITEM_PARAM_HOLD_EFFECT_PARAM, HEAP_ID_6);
    SetRepelSteps(param0, (u8)stepCount);
    param0->selectedItemCount = 1;
    Sound_PlayEffect(SEQ_SE_DP_CARD2);

    return MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_UsedRepel);
}

static void ov84_0223DCF8(BagInterface *param0)
{
    Pocket_TryRemoveItem(param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].items, param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].listItemsCount - 3, param0->appArguments->selectedItem, param0->selectedItemCount, HEAP_ID_6);
    ListMenu_Free(param0->itemsListMenu, &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorScroll, &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorPos);
    StringList_Free(param0->itemListEntries);

    LoadCurrentPocketItemNames(param0);
    LimitMenuScroll(&param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorScroll, &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorPos, param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].listItemsCount);
    RestrictMenuCursor(&param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorScroll, &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorPos, param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].listItemsCount, 9);
    CreateItemsListMenu(param0, param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorScroll, param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorPos);
}

static int ov84_0223DDD0(BagInterface *param0)
{
    switch (param0->unk_483) {
    case 0:
        Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
        Window_DrawMessageBoxWithScrollCursor(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 0, 1024 - 9 - (18 + 12), 12);
        param0->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(param0);
        param0->unk_483 = 1;
        break;
    case 1:
        if (Text_IsPrinterActive(param0->msgBoxPrinter) != 0) {
            break;
        }

        if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || gSystem.touchPressed) {
            Window_EraseMessageBox(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 0);
            param0->unk_483 = 2;
        }

        break;
    case 2:
        if (param0->selectedItemCount != 0) {
            ov84_0223DCF8(param0);
        }

        Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
        BagInterface_SetHighlighterSpritesPalette(param0, 1);

        return 1;
    }

    return 13;
}

static int ItemActionFunc_CheckTag(BagInterface *param0)
{
    BagInterface_CloseItemActionsMenu(param0);
    sub_0208C120(1, HEAP_ID_6);
    param0->appArguments->exitCode = BAG_EXIT_CODE_SHOW_BERRY_DATA;

    return BAG_INTERFACE_STATE_EXIT;
}

static int ItemActionFunc_Confirm(BagInterface *param0)
{
    BagInterface_CloseItemActionsMenu(param0);
    sub_0208C120(1, HEAP_ID_6);
    param0->appArguments->exitCode = BAG_EXIT_CODE_3;

    return BAG_INTERFACE_STATE_EXIT;
}

static int ItemActionFunc_Trash(BagInterface *param0)
{
    BagInterface_CloseItemActionsMenu(param0);
    param0->selectedItemCount = 1;
    if (Pocket_GetItemQuantity(param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].items, param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].listItemsCount - 3, param0->appArguments->selectedItem, HEAP_ID_6) == 1) {
        BagInterface_PrintConfirmItemTrashMsg(param0);
        return BAG_INTERFACE_STATE_8;
    }

    BagInterface_ShowItemTrashWindows(param0);
    BagInterface_ShowItemCountArrows(param0, 0);

    return BAG_INTERFACE_STATE_7;
}

static int ov84_0223DF0C(BagInterface *param0)
{
    if (CheckPokeballItemAmountChange(param0, &param0->selectedItemCount, param0->numSelectedItemOwned) == 1) {
        BagInterface_PrintItemTrashCount(param0);
        return BAG_INTERFACE_STATE_7;
    }

    if (PlayerPressedPokeballButton(param0) == 1) {
        BagInterface_PrintConfirmItemTrashMsg(param0);
        BagInterface_ToggleItemCountArrows(param0, 0);
        param0->pokeballButtonAnimStep = 1;

        return BAG_INTERFACE_STATE_8;
    }

    switch (sub_0208C15C(&param0->selectedItemCount, param0->numSelectedItemOwned)) {
    case 0:
        break;
    case 1:
        RotatePokeball(param0, 18);
        BagInterface_PrintItemTrashCount(param0);
        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return BAG_INTERFACE_STATE_7;
    case 2:
        RotatePokeball(param0, -18);
        BagInterface_PrintItemTrashCount(param0);
        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return BAG_INTERFACE_STATE_7;
    }
    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        BagInterface_PrintConfirmItemTrashMsg(param0);
        BagInterface_ToggleItemCountArrows(param0, 0);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return BAG_INTERFACE_STATE_8;
    }
    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        BagInterface_CloseItemTrashWindows(param0);
        BagInterface_ToggleItemCountArrows(param0, 0);
        BagInterface_SetHighlighterSpritesPalette(param0, 1);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
    }

    return BAG_INTERFACE_STATE_7;
}

static int ov84_0223DFF8(BagInterface *param0)
{
    if (Text_IsPrinterActive(param0->msgBoxPrinter) == 0) {
        BagInterface_ShowYesNoMenu(param0);
        return BAG_INTERFACE_STATE_9;
    }

    return BAG_INTERFACE_STATE_8;
}

static int ov84_0223E01C(BagInterface *param0)
{
    u32 v0;

    if (CheckMenuPokeballScroll(param0) == 1) {
        return BAG_INTERFACE_STATE_9;
    }

    if (PlayerPressedPokeballButton(param0) == 1) {
        v0 = Menu_ProcessExternalInputAndHandleExit(param0->menu, 0, 6);
        param0->pokeballButtonAnimStep = 1;
    } else {
        v0 = Menu_ProcessInputAndHandleExit(param0->menu, 6);
    }

    switch (v0) {
    case 0: {
        Strbuf *v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_ThrewAwayItem);

        if (param0->selectedItemCount == 1) {
            StringTemplate_SetItemName(param0->strTemplate, 0, param0->appArguments->selectedItem);
        } else {
            StringTemplate_SetItemNamePlural(param0->strTemplate, 0, param0->appArguments->selectedItem);
        }

        StringTemplate_SetNumber(param0->strTemplate, 1, param0->selectedItemCount, 3, 0, 1);
        StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
        Strbuf_Free(v1);
    }
        Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
        param0->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(param0);
        return BAG_INTERFACE_STATE_10;

    case 0xffffffff: {
        u8 v2 = Menu_GetLastAction(param0->menu);

        if (v2 == MENU_ACTION_MOVE_UP) {
            RotatePokeball(param0, 18);
        } else if (v2 == MENU_ACTION_MOVE_DOWN) {
            RotatePokeball(param0, -18);
        }
    } break;
    case 0xfffffffe:
        Window_EraseMessageBox(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 0);
        Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
        BagInterface_SetHighlighterSpritesPalette(param0, 1);
        return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
    }

    return BAG_INTERFACE_STATE_9;
}

static int ov84_0223E158(BagInterface *param0)
{
    if (Text_IsPrinterActive(param0->msgBoxPrinter) != 0) {
        return BAG_INTERFACE_STATE_10;
    }

    param0->unk_479 = 1;
    ov84_0223DCF8(param0);
    Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE]);

    return BAG_INTERFACE_STATE_11;
}

static int ov84_0223E18C(BagInterface *param0)
{
    if (Text_IsPrinterActive(param0->msgBoxPrinter) == 0) {
        if ((JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) || gSystem.touchPressed) {
            param0->unk_479 = 0;
            Window_EraseMessageBox(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 0);
            Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
            BagInterface_SetHighlighterSpritesPalette(param0, 1);

            return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
        }
    }

    return BAG_INTERFACE_STATE_11;
}

static int ItemActionFunc_Register(BagInterface *param0)
{
    Bag_RegisterItem(param0->bag, param0->appArguments->selectedItem);
    ListMenu_Draw(param0->itemsListMenu);
    BagInterface_CloseItemActionsMenu(param0);
    Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
    BagInterface_SetHighlighterSpritesPalette(param0, 1);

    return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
}

static int ItemActionFunc_Deselect(BagInterface *param0)
{
    Bag_RegisterItem(param0->bag, 0);
    ListMenu_Draw(param0->itemsListMenu);
    BagInterface_CloseItemActionsMenu(param0);
    Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
    BagInterface_SetHighlighterSpritesPalette(param0, 1);

    return BAG_INTERFACE_STATE_WAIT_SELECT_ITEM_GENERAL;
}

static int ItemActionFunc_Give(BagInterface *param0)
{
    BagInterface_CloseItemActionsMenu(param0);
    sub_0208C120(1, HEAP_ID_6);
    ToggleHideItemSprite(param0, 0);
    param0->appArguments->exitCode = BAG_EXIT_CODE_GIVE_ITEM;

    return BAG_INTERFACE_STATE_EXIT;
}

static int HandleInput_GiveToMon(BagInterface *param0)
{
    StepPocketIndicatorArrowsAnim(param0);
    if (CheckItemsListPokeballScroll(param0) == 1) {
        return BAG_INTERFACE_STATE_SELECT_ITEM_TO_GIVE;
    }

    if (CheckPocketChange_DPad(param0) == 1) {
        return BAG_INTERFACE_STATE_SWITCH_POCKET;
    }

    if (CheckPocketChange_Touch(param0) == 1) {
        return BAG_INTERFACE_STATE_SWITCH_POCKET;
    }

    {
        u8 v0 = HandleItemListMenuInput(param0);

        if (v0 == 1) {
            if (Item_LoadParam(param0->appArguments->selectedItem, ITEM_PARAM_PREVENT_TOSS, HEAP_ID_6) != 0) {
                Strbuf *v1;

                Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
                Window_DrawMessageBoxWithScrollCursor(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 0, 1024 - 9 - (18 + 12), 12);
                StringTemplate_SetItemName(param0->strTemplate, 0, param0->appArguments->selectedItem);

                v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_ItemCantBeHeld);

                StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
                Strbuf_Free(v1);
                param0->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(param0);
                BagInterface_SetHighlighterSpritesPalette(param0, 2);

                return BAG_INTERFACE_STATE_15;
            }

            param0->appArguments->exitCode = BAG_EXIT_CODE_GIVE_FROM_MON_MENU;
            sub_0208C120(1, HEAP_ID_6);

            return BAG_INTERFACE_STATE_EXIT;
        } else if (v0 == 3) {
            param0->appArguments->exitCode = BAG_EXIT_CODE_GIVE_FROM_MON_MENU;
            return BAG_INTERFACE_STATE_EXIT;
        }
    }
    return BAG_INTERFACE_STATE_SELECT_ITEM_TO_GIVE;
}

static int ov84_0223E36C(BagInterface *param0)
{
    if (Text_IsPrinterActive(param0->msgBoxPrinter) == FALSE) {
        if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || gSystem.touchPressed) {
            Window_EraseMessageBox(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 0);
            Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
            BagInterface_SetHighlighterSpritesPalette(param0, 1);

            return BAG_INTERFACE_STATE_SELECT_ITEM_TO_GIVE;
        }
    }

    return BAG_INTERFACE_STATE_15;
}

static int HandleInput_SellItems(BagInterface *param0)
{
    StepPocketIndicatorArrowsAnim(param0);
    if (CheckItemsListPokeballScroll(param0) == 1) {
        return BAG_INTERFACE_STATE_SELECT_ITEM_TO_SELL;
    }

    if (CheckPocketChange_DPad(param0) == 1) {
        return BAG_INTERFACE_STATE_SWITCH_POCKET;
    }

    if (CheckPocketChange_Touch(param0) == 1) {
        return BAG_INTERFACE_STATE_SWITCH_POCKET;
    }

    {
        u8 v0 = HandleItemListMenuInput(param0);

        if (v0 == 1) {
            Strbuf *v1;

            BagInterface_PrintMoney(param0, 0);
            Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
            Window_DrawMessageBoxWithScrollCursor(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 0, 1024 - 9 - (18 + 12), 12);
            StringTemplate_SetItemName(param0->strTemplate, 0, param0->appArguments->selectedItem);
            BagInterface_SetHighlighterSpritesPalette(param0, 2);

            param0->soldItemPrice = Item_LoadParam(param0->appArguments->selectedItem, ITEM_PARAM_PRICE, HEAP_ID_6);

            if ((Item_LoadParam(param0->appArguments->selectedItem, ITEM_PARAM_PREVENT_TOSS, HEAP_ID_6) != 0) || (param0->soldItemPrice == 0)) {
                v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_CantSellItem);
                StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
                Strbuf_Free(v1);

                param0->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(param0);
                return BAG_INTERFACE_STATE_22;
            }

            param0->selectedItemCount = 1;
            param0->soldItemPrice >>= 1; // Items sell for half their original price

            if (Pocket_GetItemQuantity(param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].items, param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].listItemsCount - 3, param0->appArguments->selectedItem, HEAP_ID_6) == 1) {
                v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_ConfirmSellPrice);
                StringTemplate_SetNumber(param0->strTemplate, 0, param0->selectedItemCount * param0->soldItemPrice, 6, 0, 1);
                StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
                Strbuf_Free(v1);

                param0->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(param0);
                return BAG_INTERFACE_STATE_19;
            }

            v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_SellHowMany);
            StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
            Strbuf_Free(v1);

            param0->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(param0);
            return BAG_INTERFACE_STATE_17;
        } else if (v0 == 3) {
            return BAG_INTERFACE_STATE_EXIT;
        }
    }

    return BAG_INTERFACE_STATE_SELECT_ITEM_TO_SELL;
}

static int ov84_0223E588(BagInterface *param0)
{
    if (Text_IsPrinterActive(param0->msgBoxPrinter) == FALSE) {
        if (param0->numSelectedItemOwned > 99) {
            param0->numSelectedItemOwned = 99;
        }

        BagInterface_PrintSellCountAndValue(param0, FALSE);
        BagInterface_ShowItemCountArrows(param0, 1);
        return BAG_INTERFACE_STATE_18;
    }

    return BAG_INTERFACE_STATE_17;
}

static int ov84_0223E5C4(BagInterface *param0)
{
    if (CheckPokeballItemAmountChange(param0, &param0->selectedItemCount, param0->numSelectedItemOwned) == 1) {
        BagInterface_PrintSellCountAndValue(param0, 1);
        return BAG_INTERFACE_STATE_18;
    }
    if (PlayerPressedPokeballButton(param0) == 1) {
        Strbuf *v0;

        BagInterface_ToggleItemCountArrows(param0, 0);
        Window_EraseStandardFrame(&param0->windows[BAG_INTERFACE_WINDOW_SELL_COUNT_VALUE], 1);
        Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
        v0 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_ConfirmSellPrice);
        StringTemplate_SetNumber(param0->strTemplate, 0, param0->selectedItemCount * param0->soldItemPrice, 6, 0, 1);
        StringTemplate_Format(param0->strTemplate, param0->strBuffer, v0);
        Strbuf_Free(v0);
        param0->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(param0);
        param0->pokeballButtonAnimStep = 1;

        return BAG_INTERFACE_STATE_19;
    }

    switch (sub_0208C15C(&param0->selectedItemCount, param0->numSelectedItemOwned)) {
    case 0:
        break;
    case 1:
        RotatePokeball(param0, 18);
        BagInterface_PrintSellCountAndValue(param0, 1);
        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return BAG_INTERFACE_STATE_18;
    case 2:
        RotatePokeball(param0, -18);
        BagInterface_PrintSellCountAndValue(param0, 1);
        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return BAG_INTERFACE_STATE_18;
    }
    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        Strbuf *v1;

        BagInterface_ToggleItemCountArrows(param0, 0);
        Window_EraseStandardFrame(&param0->windows[BAG_INTERFACE_WINDOW_SELL_COUNT_VALUE], 1);
        Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);

        v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_ConfirmSellPrice);

        StringTemplate_SetNumber(param0->strTemplate, 0, param0->selectedItemCount * param0->soldItemPrice, 6, 0, 1);
        StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
        Strbuf_Free(v1);
        param0->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(param0);
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        return BAG_INTERFACE_STATE_19;
    }
    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        param0->soldItemPrice = 0;

        BagInterface_ToggleItemCountArrows(param0, 0);
        Window_EraseStandardFrame(&param0->windows[BAG_INTERFACE_WINDOW_MONEY], 1);
        Window_EraseStandardFrame(&param0->windows[BAG_INTERFACE_WINDOW_SELL_COUNT_VALUE], 1);
        Window_EraseMessageBox(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 0);
        Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
        BagInterface_SetHighlighterSpritesPalette(param0, 1);
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        return BAG_INTERFACE_STATE_SELECT_ITEM_TO_SELL;
    }

    return BAG_INTERFACE_STATE_18;
}

static int ov84_0223E7A8(BagInterface *param0)
{
    if (Text_IsPrinterActive(param0->msgBoxPrinter) == 0) {
        BagInterface_ShowYesNoMenu(param0);

        return BAG_INTERFACE_STATE_20;
    }

    return BAG_INTERFACE_STATE_19;
}

static int ov84_0223E7CC(BagInterface *param0)
{
    u32 v0;

    if (CheckMenuPokeballScroll(param0) == 1) {
        return BAG_INTERFACE_STATE_20;
    }

    if (PlayerPressedPokeballButton(param0) == 1) {
        v0 = Menu_ProcessExternalInputAndHandleExit(param0->menu, 0, HEAP_ID_6);
        param0->pokeballButtonAnimStep = 1;
    } else {
        v0 = Menu_ProcessInputAndHandleExit(param0->menu, HEAP_ID_6);
    }

    switch (v0) {
    case 0: {
        Strbuf *v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_TurnedOverItems);

        if (param0->selectedItemCount > 1) {
            StringTemplate_SetItemNamePlural(param0->strTemplate, 0, param0->appArguments->selectedItem);
        } else {
            StringTemplate_SetItemName(param0->strTemplate, 0, param0->appArguments->selectedItem);
        }

        StringTemplate_SetNumber(param0->strTemplate, 1, param0->selectedItemCount * param0->soldItemPrice, 6, 0, 1);
        StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
        Strbuf_Free(v1);
    }
        Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
        param0->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(param0);
        return BAG_INTERFACE_STATE_21;
    case LIST_NOTHING_CHOSEN: {
        u8 v2 = Menu_GetLastAction(param0->menu);

        if (v2 == MENU_ACTION_MOVE_UP) {
            RotatePokeball(param0, 18);
        } else if (v2 == MENU_ACTION_MOVE_DOWN) {
            RotatePokeball(param0, -18);
        }
    } break;
    case LIST_CANCEL:
        param0->soldItemPrice = 0;
        Window_EraseStandardFrame(&param0->windows[BAG_INTERFACE_WINDOW_MONEY], 1);
        Window_EraseMessageBox(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 0);
        Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
        BagInterface_SetHighlighterSpritesPalette(param0, 1);

        return BAG_INTERFACE_STATE_SELECT_ITEM_TO_SELL;
    }

    return BAG_INTERFACE_STATE_20;
}

static int ov84_0223E920(BagInterface *param0)
{
    if (Text_IsPrinterActive(param0->msgBoxPrinter) != 0) {
        return BAG_INTERFACE_STATE_21;
    }

    Sound_PlayEffect(SEQ_SE_DP_REGI);
    TrainerInfo_GiveMoney(param0->trainerInfo, param0->selectedItemCount * param0->soldItemPrice);

    if (param0->selectedItemCount == 1) {
        if (param0->appArguments->unk_75 != 0xff) {
            param0->appArguments->unk_75++;
        }
    } else {
        param0->appArguments->unk_75 = 2;
    }

    BagInterface_PrintMoney(param0, 1);
    param0->unk_479 = 1;
    ov84_0223DCF8(param0);
    Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE]);

    return BAG_INTERFACE_STATE_22;
}

static int ov84_0223E9B0(BagInterface *param0)
{
    if (Text_IsPrinterActive(param0->msgBoxPrinter) == FALSE) {
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) || gSystem.touchPressed) {
            param0->unk_479 = 0;
            param0->soldItemPrice = 0;

            Window_EraseStandardFrame(&param0->windows[BAG_INTERFACE_WINDOW_MONEY], 1);
            Window_EraseMessageBox(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 0);
            Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
            BagInterface_SetHighlighterSpritesPalette(param0, 1);

            return BAG_INTERFACE_STATE_SELECT_ITEM_TO_SELL;
        }
    }

    return BAG_INTERFACE_STATE_22;
}

static int HandleInput_Gardening(BagInterface *param0)
{
    StepPocketIndicatorArrowsAnim(param0);

    if (CheckItemsListPokeballScroll(param0) == 1) {
        return BAG_INTERFACE_STATE_SELECT_ITEM_BERRY_CARE;
    }

    if (CheckPocketChange_DPad(param0) == 1) {
        return BAG_INTERFACE_STATE_SWITCH_POCKET;
    }

    if (CheckPocketChange_Touch(param0) == 1) {
        return BAG_INTERFACE_STATE_SWITCH_POCKET;
    }

    {
        u8 v0 = HandleItemListMenuInput(param0);

        if (v0 == 1) {
            if (param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType == POCKET_ITEMS) {
                if (Item_LoadParam(param0->appArguments->selectedItem, ITEM_PARAM_FIELD_USE_FUNC, HEAP_ID_6) != 13) {
                    sub_0207CD34(param0->trainerInfo, param0->strBuffer, param0->appArguments->selectedItem, -1, HEAP_ID_6);
                    Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);
                    Window_DrawMessageBoxWithScrollCursor(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 0, 1024 - 9 - (18 + 12), 12);

                    param0->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(param0);
                    return BAG_INTERFACE_STATE_12;
                }
            }

            param0->appArguments->exitCode = BAG_EXIT_CODE_USE_ITEM;
            sub_0208C120(1, HEAP_ID_6);
            return BAG_INTERFACE_STATE_EXIT;
        } else if (v0 == 3) {
            param0->appArguments->exitCode = BAG_EXIT_CODE_DONE;
            return BAG_INTERFACE_STATE_EXIT;
        }
    }
    return BAG_INTERFACE_STATE_SELECT_ITEM_BERRY_CARE;
}

static void RotatePokeball(BagInterface *param0, s8 amount)
{
    s16 ballRotation = Bg_GetRotation(param0->bgConfig, BG_LAYER_SUB_3);

    ballRotation += amount;

    if (ballRotation >= 360) {
        ballRotation -= 360;
    } else if (ballRotation < 0) {
        ballRotation += 360;
    }

    Bg_ScheduleAffineRotation(param0->bgConfig, BG_LAYER_SUB_3, BG_AFFINE_UPDATE_SET_ROTATION, ballRotation);
    param0->pokeballRotation = ballRotation;
}

static BOOL DetectPlayerStartedTouchingPokeball(void)
{
    return TouchScreen_CheckPressedHitTableID(sPokeballStartTouchingTouchBox) == 1;
}

static BOOL DetectPlayerHeldPokeball(void)
{
    return TouchScreen_CheckHeldHitTableID(sPokeballHeldTouchBox) == 1;
}

static BOOL CalcPokeballScroll(BagInterface *param0, u16 stepAngle)
{
    if (DetectPlayerStartedTouchingPokeball() == TRUE) {
        param0->scrollingBall = TRUE;
        param0->queuedScroll = 0;
        param0->scrollRemainder = 0;
        param0->previousTouchX = gSystem.touchX;
        param0->previousTouchY = gSystem.touchY;
    }

    if (param0->scrollingBall == TRUE) {
        if (DetectPlayerHeldPokeball() == TRUE) {
            s32 v0, v1;

            v0 = ApproximateArcLength(BOTTOM_SCREEN_BALL_CENTER_X - param0->previousTouchX, BOTTOM_SCREEN_BALL_CENTER_Y - param0->previousTouchY, BOTTOM_SCREEN_BALL_CENTER_X - gSystem.touchX, BOTTOM_SCREEN_BALL_CENTER_Y - gSystem.touchY, 80);
            v1 = CalcRadialAngle(80, v0 * 2);
            v1 = ((v1 << 8) / 182) >> 8;
            param0->pokeballRotation += v1;

            if (param0->pokeballRotation < 0) {
                param0->pokeballRotation += 360;
            } else if (param0->pokeballRotation >= 360) {
                param0->pokeballRotation -= 360;
            }

            Bg_ScheduleAffineRotation(param0->bgConfig, BG_LAYER_SUB_3, BG_AFFINE_UPDATE_SET_ROTATION, param0->pokeballRotation);
            {
                s32 circumference = 2 * 80 * 3.14;
                s32 stepDistance = circumference / stepAngle;
                if (v0 > 0) {
                    if (param0->queuedScroll < 0) { // Changed direction
                        param0->queuedScroll = v0 / stepDistance;
                        param0->scrollRemainder = v0 % stepDistance;
                    } else {
                        param0->queuedScroll += ((param0->scrollRemainder + v0) / stepDistance);
                        param0->scrollRemainder = (param0->scrollRemainder + v0) % stepDistance;
                    }
                } else if (v0 < 0) {
                    if (param0->queuedScroll > 0) { // Changed direction
                        param0->queuedScroll = v0 / stepDistance;
                        param0->scrollRemainder = v0 % stepDistance;
                    } else {
                        param0->queuedScroll += ((param0->scrollRemainder + v0) / stepDistance);
                        param0->scrollRemainder = (param0->scrollRemainder + v0) % stepDistance;
                    }
                }
            }
            param0->previousTouchX = gSystem.touchX;
            param0->previousTouchY = gSystem.touchY;
        } else {
            param0->scrollingBall = 0;
            param0->queuedScroll = 0;
        }

        return TRUE;
    }

    return FALSE;
}

static BOOL CheckItemsListPokeballScroll(BagInterface *param0)
{
    BOOL scrolling = CalcPokeballScroll(param0, 36);

    if (param0->queuedScroll > 0) {
        if (SimulateItemsListInput_ItemsList(param0, PAD_KEY_UP) == 1) {
            param0->queuedScroll--;
        } else {
            param0->queuedScroll = 0;
        }

        return TRUE;
    } else if (param0->queuedScroll < 0) {
        if (SimulateItemsListInput_ItemsList(param0, PAD_KEY_DOWN) == 1) {
            param0->queuedScroll++;
        } else {
            param0->queuedScroll = 0;
        }

        return TRUE;
    }

    return scrolling;
}

static BOOL SimulateItemsListInput_ItemsList(BagInterface *param0, u16 param1)
{
    u16 v0 = param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorScroll;
    u16 v1 = param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorPos;

    ListMenu_TestInput(param0->itemsListMenu, NULL, v0, v1, 1, param1, &v0, &v1);

    if ((v0 == param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorScroll) && (v1 == param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorPos)) {
        return 0;
    }

    ManagedSprite_SetPositionXY(param0->sprites[BAG_SPRITE_ITEM_HIGHLIGHT], 177, 24 + (v1 - 1) * 16);

    param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorScroll = v0;
    param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorPos = v1;

    return 1;
}

static BOOL CheckPokeballScroll_Sorting(BagInterface *param0)
{
    BOOL scrolling = CalcPokeballScroll(param0, 36);

    if (param0->queuedScroll > 0) {
        if (SimulateItemsListInput_Sorting(param0, PAD_KEY_UP) == 1) {
            param0->queuedScroll--;
        } else {
            param0->queuedScroll = 0;
        }

        return TRUE;
    } else if (param0->queuedScroll < 0) {
        if (SimulateItemsListInput_Sorting(param0, PAD_KEY_DOWN) == 1) {
            param0->queuedScroll++;
        } else {
            param0->queuedScroll = 0;
        }

        return TRUE;
    }

    return scrolling;
}

static BOOL SimulateItemsListInput_Sorting(BagInterface *param0, u16 input)
{
    u16 cursorScroll = param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorScroll;
    u16 cursorPos = param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorPos;

    ListMenu_TestInput(param0->itemsListMenu, NULL, cursorScroll, cursorPos, TRUE, input, &cursorScroll, &cursorPos);

    if ((cursorScroll == param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorScroll) && (cursorPos == param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorPos)) {
        return 0;
    }

    ManagedSprite_SetPositionXY(param0->sprites[BAG_SPRITE_ITEM_SORTING_POS_BAR], 177, 24 + (cursorPos - 1) * 16 - 8);

    param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorScroll = cursorScroll;
    param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].cursorPos = cursorPos;

    return 1;
}

static BOOL CheckMenuPokeballScroll(BagInterface *param0)
{
    BOOL scrolling = CalcPokeballScroll(param0, 18);

    if (param0->queuedScroll > 0) {
        if (SimulateMenuInput(param0, MENU_INPUT_MOVE_UP) == TRUE) {
            param0->queuedScroll--;
        } else {
            param0->queuedScroll = 0;
        }

        return TRUE;
    } else if (param0->queuedScroll < 0) {
        if (SimulateMenuInput(param0, MENU_INPUT_MOVE_DOWN) == TRUE) {
            param0->queuedScroll++;
        } else {
            param0->queuedScroll = 0;
        }

        return TRUE;
    }

    return scrolling;
}

static BOOL SimulateMenuInput(BagInterface *param0, u8 input)
{
    u8 prevCursorPos = Menu_GetCursorPos(param0->menu);

    Menu_ProcessExternalInput(param0->menu, input);

    if (prevCursorPos == Menu_GetCursorPos(param0->menu)) {
        return FALSE;
    }

    return TRUE;
}

static BOOL CheckPokeballItemAmountChange(BagInterface *param0, s16 *param1, u16 maxValue)
{
    BOOL v0;
    s16 v1;

    v0 = CalcPokeballScroll(param0, 18);
    v1 = *param1;

    if (param0->queuedScroll > 0) {
        param0->queuedScroll--;
        *param1 += 1;

        if (*param1 > maxValue) {
            *param1 = 1;
        }

        if (*param1 == v1) {
            return 0;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return 1;
    } else if (param0->queuedScroll < 0) {
        param0->queuedScroll++;
        *param1 -= 1;

        if (*param1 <= 0) {
            *param1 = maxValue;
        }

        if (*param1 == v1) {
            return 0;
        }

        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        return 1;
    }

    return v0;
}
