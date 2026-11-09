#ifndef POKEPLATINUM_APPLICATIONS_PC_BOXES_APPLICATION_MANAGER_H
#define POKEPLATINUM_APPLICATIONS_PC_BOXES_APPLICATION_MANAGER_H

#include "applications/naming_screen.h"
#include "applications/pc_boxes/defs.h"
#include "applications/pc_boxes/dial.h"
#include "applications/pokemon_summary_screen/main.h"

#include "message.h"
#include "overlay_manager.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "string_template.h"
#include "touch_screen_actions.h"

enum PCButton {
    MAIN_PC_LEFT_BUTTON_ID = 0,
    MAIN_PC_RIGHT_BUTTON_ID,
    COMPARE_MON_PC_BUTTON_ID,
};

#define MAIN_PC_LEFT_BUTTON_X  0
#define MAIN_PC_RIGHT_BUTTON_X 255
#define MAIN_PC_BUTTON_Y       184
#define MAIN_PC_BUTTON_RADIUS  40

#define COMPARE_MON_PC_BUTTON_X      128
#define COMPARE_MON_PC_BUTTON_Y      178
#define COMPARE_MON_PC_BUTTON_RADIUS 12

enum PCMarkingsButton {
    PC_MARKINGS_BUTTON1_ID = 0,
    PC_MARKINGS_BUTTON2_ID,
    PC_MARKINGS_BUTTON3_ID,
    PC_MARKINGS_BUTTON4_ID,
    PC_MARKINGS_BUTTON5_ID,
    PC_MARKINGS_BUTTON6_ID,
};

#define PC_MARKINGS_BUTTON1_X      152
#define PC_MARKINGS_BUTTON1_Y      168
#define PC_MARKINGS_BUTTON2_X      163
#define PC_MARKINGS_BUTTON2_Y      134
#define PC_MARKINGS_BUTTON3_X      184
#define PC_MARKINGS_BUTTON3_Y      104
#define PC_MARKINGS_BUTTON4_X      216
#define PC_MARKINGS_BUTTON4_Y      84
#define PC_MARKINGS_BUTTON5_X      240
#define PC_MARKINGS_BUTTON5_Y      52
#define PC_MARKINGS_BUTTON6_X      240
#define PC_MARKINGS_BUTTON6_Y      16
#define PC_MARKINGS_BUTTONS_RADIUS 16

#define PC_MARKINGS_BUTTON_COUNT 8

#define PC_DIAL_Y            192
#define PC_DIAL_INNER_RADIUS 56
#define PC_DIAL_OUTER_RADIUS 88

#define BOX_JUMP_DELAY_FRAMES 20

#define PARTY_DISPLAY_COLS 2

#define PREVIEW_GENDER_HIDDEN -1

enum CursorMovementState {
    CURSOR_NO_MOVEMENT = 0,
    CURSOR_MOVE,
    CURSOR_STOP,
    CURSOR_MOVE_TO_LEFT_BOX,
    CURSOR_MOVE_TO_RIGHT_BOX
};

enum ReleasedFrom {
    RELEASED_FROM_CURSOR = 0,
    RELEASED_FROM_BOX,
    RELEASED_FROM_PARTY
};

enum BoxSelectorState {
    BOX_SELECTOR_START = 0,
    BOX_SELECTOR_DISPLAY_MESSAGE_START,
    BOX_SELECTOR_DISPLAY_MESSAGE_DONE,
    BOX_SELECTOR_WAIT_FOR_USER
};

enum CursorInBoxState {
    CURSOR_IN_BOX_WAIT_FOR_INPUT = 0,
    CURSOR_IN_BOX_WAIT_FOR_MOVE_CURSOR,
    CURSOR_IN_BOX_WAIT_FOR_TOUCHSCREEN_DONE
};

enum CursorInPartyState {
    CURSOR_IN_PARTY_WAIT_FOR_INPUT = 0,
    CURSOR_IN_PARTY_WAIT_FOR_MOVE_CURSOR,
    CURSOR_IN_PARTY_LEAVE_PARTY,
    CURSOR_IN_PARTY_RETURN_TO_BOX,
    CURSOR_IN_PARTY_WAIT_FOR_MOVE_CURSOR_TO_BOX,
    CURSOR_IN_PARTY_CONFIRM_MESSAGE,
    CURSOR_IN_PARTY_WAIT_FOR_TOUCHSCREEN_DONE
};

enum CursorOnHeaderState {
    CURSOR_ON_HEADER_WAIT_FOR_INPUT = 0,
    CURSOR_ON_HEADER_WAIT_FOR_MOVE_CURSOR
};

enum CursorOnCloseState {
    CURSOR_CLOSE_WAIT_FOR_INPUT = 0,
    CURSOR_CLOSE_WAIT_FOR_BOX_CHANGE,
    CURSOR_CLOSE_WAIT_FOR_CURSOR_MOVE
};

enum CursorOnPartyButtonState {
    CURSOR_ON_PARTY_BUTTON_STATE_WAIT_FOR_INPUT = 0,
    CURSOR_ON_PARTY_BUTTON_ANIMATE_PRESS_BUTTON,
    CURSOR_ON_PARTY_BUTTON_WAIT_FOR_OPEN_PARTY,
    CURSOR_ON_PARTY_BUTTON_WAIT_FOR_CHANGE_BOX,
    CURSOR_ON_PARTY_BUTTON_WAIT_FOR_MOVE_CURSOR,
    CURSOR_ON_PARTY_BUTTON_CONFIRM_MESSAGE
};

enum CloseBoxState {
    CLOSE_BOX_START = 0,
    CLOSE_BOX_SHOW_MENU,
    CLOSE_BOX_YES_NO,
    CLOSE_BOX_UNUSED,
    CLOSE_BOX_CANNOT_CLOSE,
    CLOSE_BOX_CONFIRM_MESSAGE,
    CLOSE_BOX_END
};

enum ContinueBoxOperationsState {
    CONTINUE_OPERATIONS_START = 0,
    CONTINUE_OPERATIONS_UNUSED,
    CONTINUE_OPERATIONS_WAIT_FOR_MESSAGE,
    CONTINUE_OPERATIONS_CONFIRM_MESSAGE,
    CONTINUE_OPERATIONS_END,
    CONTINUE_OPERATIONS_YES_NO
};

enum MonCursorMenuState {
    MON_CURSOR_MENU_START = 0,
    MON_CURSOR_MENU_SHOW_MENU,
    MON_CURSOR_MENU_NAVIGATE_MENU,
    MON_CURSOR_MENU_ITEM_SELECTED,
    MON_CURSOR_MENU_END_WHEN_READY,
    MON_CURSOR_MENU_END
};

enum MonItemMenuState {
    MON_ITEM_MENU_START = 0,
    MON_ITEM_MENU_WAIT_FOR_MENU,
    MON_ITEM_MENU_NAVIGATE_MENU,
    MON_ITEM_MENU_SELECTED,
    MON_ITEM_MENU_END_WHEN_READY,
    MON_ITEM_MENU_WAIT_FOR_ANIMATIONS,
    MON_ITEM_MENU_END,
    MON_ITEM_MENU_CONFIRM_MESSAGE
};

enum BoxHeaderActionState {
    BOX_HEADER_MENU_START = 0,
    BOX_HEADER_MENU_SHOW_MENU,
    BOX_HEADER_MENU_NAVIGATE_MENU,
    BOX_HEADER_MENU_ITEM_SELECTED,
    BOX_HEADER_MENU_END_WHEN_READY,
    BOX_HEADER_MENU_UNUSED1,
    BOX_HEADER_MENU_UNUSED2,
    BOX_HEADER_MENU_END
};

enum BoxJumpState {
    JUMP_START = 0,
    JUMP_TO_BOX,
    JUMP_END
};

enum WallpaperMenuState {
    WALLPAPER_MENU_START = 0,
    WALLPAPER_MENU_PICK_THEME_INIT,
    WALLPAPER_MENU_PICK_THEME_WAIT_FOR_TASK,
    WALLPAPER_MENU_PICK_THEME_WAIT_FOR_USER,
    WALLPAPER_MENU_PICK_WALLPAPER_WAIT_FOR_TASK,
    WALLPAPER_MENU_PICK_WALLPAPER_WAIT_FOR_USER,
    WALLPAPER_MENU_TRANSITION_WALLPAPER,
    WALLPAPER_MENU_UNREACHABLE,
    WALLPAPER_MENU_END,
};

enum MarkState {
    MARK_START = 0,
    MARK_PROCESS_USER_INPUT,
    MARK_END,
};

enum MultiSelectMoveState {
    MULTI_MOVE_START = 0,
    MULTI_MOVE_DEFINE_SELECTION,
    MULTI_MOVE_SELECTED_MONS,
    MULTI_MOVE_WAIT_FOR_ANIMATIONS,
    MULTI_MOVE_END,
    MULTI_MOVE_PREVIEW_MON
};

enum PickUpMonState {
    PICK_UP_MON_START = 0,
    PICK_UP_PARTY_MON,
    PICK_UP_MON_CONFIRM_LAST_MON,
    PICK_UP_MON_DONE
};

enum PlaceMonState {
    PLACE_MON_DOWN = 0,
    PLACE_ADJUST_PARTY_ANIMATION,
    PLACE_MON_END
};

enum ShiftState {
    SHIFT_START = 0,
    SHIFT_CONFIRM_MESSAGE,
    SHIFT_END
};

enum WithdrawMonState {
    WITHDRAW_START = 0,
    WITHDRAW_WAIT_FOR_PICK_UP_MON,
    WITHDRAW_WAIT_FOR_PARTY_POPUP,
    WITHDRAW_WAIT_FOR_MOVE_CURSOR_TO_PARTY,
    WITHDRAW_WAIT_FOR_MOVE_PLACE_MON_DOWN,
    WITHDRAW_RETURN_TO_BOX,
    WITHDRAW_UNUSED,
    WITHDRAW_CONFIRM_PARTY_FULL,
    WITHDRAW_END
};

enum StoreMonState {
    STORE_MON_CHECK_CAN_STORE_MON = 0,
    STORE_MON_SELECT_BOX,
    STORE_MON_BOX_FULL,
    STORE_MON_CONFIRM_CANNOT_STORE_MON,
    STORE_MON_FROM_CURSOR,
    STORE_MON_FROM_PARTY,
    STORE_MON_END
};

enum ReleaseMonState {
    RELEASE_MON_START = 0,
    RELEASE_MON_CONFIRM,
    RELEASE_MON_RELEASE_ANIMATION,
    RELEASE_MON_TRY_RELEASE,
    RELEASE_MON_CONFIRM_RETURNED,
    RELEASE_MON_CONFIRM_RELEASED,
    RELEASE_MON_CLOSE_MESSAGE_BOX,
    RELEASE_MON_PREPARE_END_RELEASE,
    RELEASE_MON_CANNOT_RELEASE,
    RELEASE_MON_END
};

enum RenameBoxState {
    RENAME_BOX_START = 0,
    RENAME_BOX_LAUNCH_TEXT_INPUT_APP,
    RENAME_BOX_RETURN_TO_BOX
};

enum SummaryState {
    SUMMARY_START = 0,
    SUMMARY_LAUNCH,
    SUMMARY_RETURN_TO_BOX,
};

enum GiveItemFromBagState {
    GIVE_FROM_BAG_START = 0,
    GIVE_FROM_BAG_INIT_BAG_APP,
    GIVE_FROM_BAG_SELECT_ITEM,
    GIVE_FROM_BAG_RETURN_TO_BOX,
    GIVE_FROM_BAG_DISPLAY_MESSAGE,
    GIVE_FROM_BAG_CONFIRM_MESSAGE,
    GIVE_FROM_BAG_END
};

enum ItemHeldState {
    ITEM_HELD_START = 0,
    ITEM_HELD_YES_NO,
    ITEM_HELD_ADD_TO_BAG,
    ITEM_HELD_DISPLAY_TOOK_ITEM_MESSAGE,
    ITEM_HELD_CONFIRM_MESSAGE,
    ITEM_HELD_END
};

enum PutAwayItemState {
    PUT_AWAY_ITEM_START = 0,
    PUT_AWAY_ITEM_YES_NO,
    PUT_AWAY_ITEM_ADD_TO_BAG,
    PUT_AWAY_ITEM_ANIMATE_ITEM_AWAY,
    PUT_AWAY_ITEM_SHOW_STORED_MESSAGE,
    PUT_AWAY_ITEM_CONFIRM_MESSAGE,
    PUT_AWAY_ITEM_END
};

enum ItemInfoState {
    ITEM_INFO_START = 0,
    ITEM_INFO_CLOSE_MENU,
    ITEM_INFO_DISPLAY,
    ITEM_INFO_CONFIRM,
    ITEM_INFO_END
};

enum MoveBoxState {
    MOVE_BOX_START = 0,
    MOVE_BOX_WAIT_FOR_ANIMATION,
    MOVE_BOX_END
};

enum TouchScreenBoxJumpState {
    TOUCH_BOX_JUMP_START = 0,
    TOUCH_BOX_JUMP_WAIT_FOR_INPUT_OR_JUMP,
    TOUCH_BOX_JUMP_END_SCROLL,
    TOUCH_BOX_JUMP_WAIT_FOR_BOX_CHANGE,
    TOUCH_BOX_JUMP_WAIT_FOR_MON_PREVIEW,
    TOUCH_BOX_JUMP_END
};

enum TouchMarkingsState {
    TOUCH_MARKINGS_START = 0,
    TOUCH_MARKINGS_WAIT_FOR_USER_INPUT,
    TOUCH_MARKINGS_END_SCROLL,
    TOUCH_MARKINGS_END
};

enum LogInState {
    LOG_IN_START = 0,
    LOG_IN_WAIT_FOR_BOX_GRAPHICS_LOAD,
    LOG_IN_END
};

enum ReturnToBoxFadeState {
    RETURN_TO_BOX_FADE_START = 0,
    RETURN_TO_BOX_FADE_WAIT_FOR_BOX_GRAPHICS_LOAD,
    RETURN_TO_BOX_FADE_END
};

enum LogOffScreenFadeState {
    LOG_OFF_SCREEN_FADE_START = 0,
    LOG_OFF_SCREEN_FADE_WAIT_FOR_FADE
};

#define NUM_RELEASE_BLOCKING_MOVES (u32)3

typedef struct BoxSelectorPopup {
    u32 state;
    u8 hasReset;
    s8 boxID;
    u16 boxMessageID;
} BoxSelectorPopup;

typedef struct ReleaseMon {
    u8 checkedCanReleaseMon;
    u8 canReleaseMon;
    u8 boxID;
    u8 monPosInBox;
    u8 hasReleaseBlockingMove[NUM_RELEASE_BLOCKING_MOVES];
    u16 monsWithReleaseBlockingMoveCount[NUM_RELEASE_BLOCKING_MOVES];
    BoxPokemon *boxMon;
    PCBoxes *pcBoxes;
    Party *party;
    BOOL monHeldInCursor;
} ReleaseMon;

typedef struct BoxApplicationManager {
    BoxApplication boxApp;
    BoxGraphics *boxGraphics;
    PokemonStorageSession *pokemonStorageSession;
    SaveData *saveData;
    PCBoxes *pcBoxes;
    Party *party;
    NamingScreenArgs *namingScreenArgs;
    PokemonSummary monSummary;
    ReleaseMon releaseMon;
    TouchScreenActions *mainBoxAndCompareButtonsAction;
    TouchScreenActions *markingsButtonsAction;
    u32 touchScreenButtonPressed;
    u32 touchScreenMarkingsButtonPressed;
    MessageLoader *boxMessagesLoader;
    MessageLoader *speciesNameLoader;
    MessageLoader *natureNameLoader;
    MessageLoader *abilityNameLoader;
    StringTemplate *messageVariableBuffer;
    Pokemon *mon;
    Options *options;
    int (*cursorLocationInputHandler)(struct BoxApplicationManager *boxAppMan);
    void (*boxApplicationAction)(struct BoxApplicationManager *boxAppMan, u32 *state);
    u32 cursorLocationHandlerState;
    u32 boxApplicationActionState;
    union {
        enum BoxMenuItem menuItem;
        enum ReleasedFrom releasedFrom;
    };
    BoxSelectorPopup boxSelector;
    u32 unused_1C4;
    BoxDial dial;
    int unread_1FC;
    u32 boxJumpDelayCounter;
    BOOL dialBoxChanged;
    BOOL scrollEnded;
    int dialScrollAmount;
    ApplicationManager *subAppMan;
    void *bagAppArgs;
    u32 unused_218;
} BoxApplicationManager;

BOOL BoxAppMan_Init(ApplicationManager *appMan, int *state);
BOOL BoxAppMan_Main(ApplicationManager *appMan, int *state);
BOOL BoxAppMan_Exit(ApplicationManager *appMan, int *state);
BOOL BoxAppMan_HasCheckedCanReleaseMon(const BoxApplicationManager *boxAppMan);
BOOL BoxAppMan_CanReleaseMon(const BoxApplicationManager *boxAppMan);
MessageLoader *BoxAppMan_GetBoxMessagesLoader(const BoxApplicationManager *boxAppMan);
const StringTemplate *BoxAppMan_GetMessageVariableBuffer(const BoxApplicationManager *boxAppMan);
int BoxAppMan_GetOptionsFrame(const BoxApplicationManager *boxAppMan);
enum BoxMode BoxApp_GetBoxMode(const BoxApplication *boxApp);
enum CursorLocation BoxApp_GetCursorLocation(const BoxApplication *boxApp);
u32 BoxApp_GetCursorBoxCol(const BoxApplication *boxApp);
u32 BoxApp_GetCursorBoxRow(const BoxApplication *boxApp);
u32 BoxApp_GetCursorBoxPosition(const BoxApplication *boxApp);
u32 BoxApp_GetCursorPartyPosition(const BoxApplication *boxApp);
BOOL BoxApp_IsMonUnderCursor(const BoxApplication *boxApp);
u32 BoxApp_GetPreviewMonSource(const BoxApplication *boxApp);
BOOL BoxApp_IsCursorMonFromParty(const BoxApplication *boxApp);
BOOL BoxApp_IsMonAvailableToCursor(const BoxApplication *boxApp);
u32 BoxApp_GetCurrentBox(const BoxApplication *boxApp);
const PCMonPreview *BoxApp_GetPCMonPreview(const BoxApplication *boxApp);
u32 BoxApp_GetPreviewedMonHeldItem(const BoxApplication *boxApp);
const BoxCustomization *BoxApp_GetBoxCustomization(const BoxApplication *boxApp);
const PCBoxes *BoxApp_GetPCBoxes(const BoxApplication *boxApp);
u32 BoxApp_GetBoxMessageID(const BoxApplication *boxApp);
BoxPokemon *BoxApp_GetPreviewedBoxMon(const BoxApplication *boxApp);
u32 BoxApp_GetPreviewedMonMarkings(const BoxApplication *boxApp);
u32 BoxApp_GetBoxSelectionBoxID(const BoxApplication *boxApp);
s32 BoxApp_GetDialScrollDelta(const BoxApplication *boxApp);
u32 BoxApp_GetDialOffset(const BoxApplication *boxApp);
u32 BoxApp_GetMarkingsButtonsScrollOffset(const BoxApplication *boxApp);
u32 BoxApp_GetMonSpriteTransparencyMask(const BoxApplication *boxApp);
BOOL BoxApp_IsCursorFastMode(const BoxApplication *boxApp);
void BoxApp_GetMultiSelectBoundingBox(const BoxApplication *boxApp, u32 *leftCol, u32 *rightCol, u32 *topRow, u32 *bottomRow);
BOOL BoxApp_IsMultiSelectSingleSelect(const BoxApplication *boxApp);
u32 BoxApp_GetMultiSelectTopLeftPos(const BoxApplication *boxApp);
u32 BoxApp_GetRelativeMonPosInMultiSelection(const BoxApplication *boxApp, u32 position);
u32 BoxApp_GetCursorItem(const BoxApplication *boxApp);
u32 BoxApp_GetCursorOrPreviewedItem(const BoxApplication *boxApp);
u32 BoxApp_GetCompareMonSlot(const BoxApplication *boxApp);
u32 BoxApp_GetCompareMode(const BoxApplication *boxApp);
const PCCompareMon *BoxApp_GetCompareMonFrom(const BoxApplication *boxApp, int compareMonSlot);
BOOL BoxApp_CompareSlotHasMon(const BoxApplication *boxApp, int compareMonSlot);
BOOL BoxApp_IsCompareButtonPressed(const BoxApplication *boxApp);
BOOL BoxApp_IsPreviewedMonEgg(const BoxApplication *boxApp);

#endif // POKEPLATINUM_APPLICATIONS_PC_BOXES_APPLICATION_MANAGER_H
