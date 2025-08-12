#ifndef POKEPLATINUM_BOX_APP_MANAGER_H
#define POKEPLATINUM_BOX_APP_MANAGER_H

#include "struct_decls/pc_boxes_decl.h"

#include "applications/naming_screen.h"
#include "applications/pokemon_summary_screen/main.h"
#include "overlay019/box_application.h"
#include "overlay019/box_customization.h"
#include "overlay019/pc_compare_mon.h"
#include "overlay019/pc_mon_preview.h"
#include "overlay019/pokemon_storage_session.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"
#include "overlay019/touch_dial.h"

#include "message.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "string_template.h"
#include "touch_screen_actions.h"

#define MAIN_PC_LEFT_BUTTON_ID  0
#define MAIN_PC_LEFT_BUTTON_X   0
#define MAIN_PC_RIGHT_BUTTON_ID 1
#define MAIN_PC_RIGHT_BUTTON_X  255
#define MAIN_PC_BUTTON_Y        184
#define MAIN_PC_BUTTON_RADIUS   40

#define COMPARE_MON_PC_BUTTON_ID     2
#define COMPARE_MON_PC_BUTTON_X      128
#define COMPARE_MON_PC_BUTTON_Y      178
#define COMPARE_MON_PC_BUTTON_RADIUS 12

#define PC_MARKINGS_BUTTON1_ID     0
#define PC_MARKINGS_BUTTON1_X      152
#define PC_MARKINGS_BUTTON1_Y      168
#define PC_MARKINGS_BUTTON2_ID     1
#define PC_MARKINGS_BUTTON2_X      163
#define PC_MARKINGS_BUTTON2_Y      134
#define PC_MARKINGS_BUTTON3_ID     2
#define PC_MARKINGS_BUTTON3_X      184
#define PC_MARKINGS_BUTTON3_Y      104
#define PC_MARKINGS_BUTTON4_ID     3
#define PC_MARKINGS_BUTTON4_X      216
#define PC_MARKINGS_BUTTON4_Y      84
#define PC_MARKINGS_BUTTON5_ID     4
#define PC_MARKINGS_BUTTON5_X      240
#define PC_MARKINGS_BUTTON5_Y      52
#define PC_MARKINGS_BUTTON6_ID     5
#define PC_MARKINGS_BUTTON6_X      240
#define PC_MARKINGS_BUTTON6_Y      16
#define PC_MARKINGS_BUTTONS_RADIUS 16

#define PC_MARKINGS_BUTTON_TYPES 8

#define GENDER_INVALID -1

enum CursorMovementState {
    CURSOR_NO_MOVEMENT = 0,
    CURSOR_MOVE,
    CURSOR_STOP,
    CURSOR_MOVE_TO_LEFT_BOX,
    CURSOR_MOVE_TO_RIGHT_BOX
};

enum ReleasedFrom {
    RELEASED_FROM_CURSOR,
    RELEASED_FROM_BOX,
    RELEASED_FROM_PARTY
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
    UnkStruct_ov19_021D61B0 *unk_114;
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
    StringTemplate *MessageVariableBuffer;
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
    u32 unused; // never referenced
    TouchDial touchDial;
    int unused1; // only written to, never read from
    u32 boxJumpDelayCounter;
    BOOL touchDialBoxChanged;
    BOOL scrollEnded;
    int touchDialScrollAmount;
    ApplicationManager *ApplicationManager;
    void *bagAppArgs;
    u32 unused2; // never referenced
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
BOOL BoxApp_GetCursorMonIsPartyMon(const BoxApplication *boxApp);
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
s32 BoxApp_GetTouchDialScrollDelta(const BoxApplication *boxApp);
u32 BoxApp_GetTouchDialOffset(const BoxApplication *boxApp);
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
const PCCompareMon *BoxApp_GetCompareMonFrom(const BoxApplication *boxApp, int compareSlot);
BOOL BoxApp_CompareSlotHasMon(const BoxApplication *boxApp, int compareMonSlot);
BOOL BoxApp_IsCompareButtonPressed(const BoxApplication *boxApp);
BOOL BoxApp_IsPreviewedMonEgg(const BoxApplication *boxApp);

#endif // POKEPLATINUM_BOX_APP_MANAGER_H
