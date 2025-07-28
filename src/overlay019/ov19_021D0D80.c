#include "overlay019/ov19_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "constants/items.h"
#include "constants/species.h"

#include "struct_decls/pc_boxes_decl.h"
#include "struct_decls/struct_0207CB08_decl.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/struct_02042434.h"

#include "applications/keyboard.h"
#include "applications/pokemon_summary_screen/main.h"
#include "overlay019/box_cursor.h"
#include "overlay019/box_customization.h"
#include "overlay019/box_menu.h"
#include "overlay019/box_mon_selection.h"
#include "overlay019/box_settings.h"
#include "overlay019/ov19_021D61B0.h"
#include "overlay019/pc_compare_mon.h"
#include "overlay019/pc_mon_preview.h"
#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D4EE4.h"
#include "overlay019/struct_ov19_021D4F34.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"
#include "overlay019/touch_dial.h"
#include "overlay084/const_ov84_02241130.h"
#include "savedata/save_table.h"

#include "bag.h"
#include "dexmode_checker.h"
#include "enums.h"
#include "game_options.h"
#include "game_overlay.h"
#include "heap.h"
#include "inlines.h"
#include "item.h"
#include "message.h"
#include "overlay_manager.h"
#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"
#include "unk_0202CC64.h"
#include "unk_0202D778.h"
#include "unk_0207CB08.h"

#include "constdata/const_020F410C.h"
#include "res/text/bank/box_messages.h"

FS_EXTERN_OVERLAY(overlay84);

enum ReleasedFrom {
    RELEASED_FROM_CURSOR,
    RELEASED_FROM_BOX,
    RELEASED_FROM_PARTY
};

enum BoxSelectorState {
    BOX_SELECTOR_START,
    BOX_SELECTOR_DISPLAY_MESSAGE_START,
    BOX_SELECTOR_DISPLAY_MESSAGE_DONE,
    BOX_SELECTOR_WAIT_FOR_USER
};

static const TouchScreenHitTable sMainPcButtons[] = {
    { TOUCHSCREEN_USE_CIRCLE, MAIN_PC_LEFT_BUTTON_X, MAIN_PC_BUTTON_Y, MAIN_PC_BUTTON_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, MAIN_PC_RIGHT_BUTTON_X, MAIN_PC_BUTTON_Y, MAIN_PC_BUTTON_RADIUS },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const TouchScreenHitTable sComparePokemonButtons[] = {
    { TOUCHSCREEN_USE_CIRCLE, MAIN_PC_LEFT_BUTTON_X, MAIN_PC_BUTTON_Y, MAIN_PC_BUTTON_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, MAIN_PC_RIGHT_BUTTON_X, MAIN_PC_BUTTON_Y, MAIN_PC_BUTTON_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, COMPARE_MON_PC_BUTTON_X, COMPARE_MON_PC_BUTTON_Y, COMPARE_MON_PC_BUTTON_RADIUS },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const TouchScreenHitTable sPokemonMarkingsButtons[] = {
    { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON1_X, PC_MARKINGS_BUTTON1_Y, PC_MARKINGS_BUTTONS_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON2_X, PC_MARKINGS_BUTTON2_Y, PC_MARKINGS_BUTTONS_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON3_X, PC_MARKINGS_BUTTON3_Y, PC_MARKINGS_BUTTONS_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON4_X, PC_MARKINGS_BUTTON4_Y, PC_MARKINGS_BUTTONS_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON5_X, PC_MARKINGS_BUTTON5_Y, PC_MARKINGS_BUTTONS_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON6_X, PC_MARKINGS_BUTTON6_Y, PC_MARKINGS_BUTTONS_RADIUS },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const u16 sReleaseBlockingMoves[] = {
    MOVE_SURF,
    MOVE_ROCK_CLIMB,
    MOVE_WATERFALL
};

typedef struct BoxSelectorPopup {
    u32 state;
    u8 hasReset;
    s8 boxID;
    u16 boxMessageID;
} BoxSelectorPopup;

typedef struct {
    u8 checkedCanReleaseMon;
    u8 canReleaseMon;
    u8 boxID;
    u8 monPosInBox;
    u8 hasReleaseBlockingMove[NELEMS(sReleaseBlockingMoves)];
    u16 monsWithReleaseBlockingMoveCount[NELEMS(sReleaseBlockingMoves)];
    BoxPokemon *boxMon;
    PCBoxes *pcBoxes;
    Party *party;
    BOOL monHeldInCursor;
} ReleaseMon;

typedef struct UnkStruct_ov19_021D5DF8_t {
    UnkStruct_ov19_021D4DF0 unk_00;
    UnkStruct_ov19_021D61B0 *unk_114;
    UnkStruct_02042434 *unk_118;
    SaveData *saveData;
    PCBoxes *pcBoxes;
    Party *party;
    KeyboardArgs *unk_128;
    PokemonSummary monSummary;
    ReleaseMon releaseMon;
    TouchScreenActions *mainBoxAndCompareButtonsAction;
    TouchScreenActions *markingsButtonsAction;
    u32 touchScreenButtonPressed;
    u32 unk_188;
    MessageLoader *boxMessagesLoader;
    MessageLoader *speciesNameLoader;
    MessageLoader *natureNameLoader;
    MessageLoader *abilityNameLoader;
    StringTemplate *MessageVariableBuffer;
    Pokemon *mon;
    Options *options;
    int (*cursorLocationInputHandler)(struct UnkStruct_ov19_021D5DF8_t *param0);
    void (*boxApplicationAction)(struct UnkStruct_ov19_021D5DF8_t *param0, u32 *state);
    u32 cursorLocationHandlerState;
    u32 boxApplicationActionState;
    union {
        enum BoxMenuItem menuItem;
        enum ReleasedFrom releasedFrom;
    };
    BoxSelectorPopup boxSelector;
    u32 unk_1C4;
    TouchDial touchDial;
    int unk_1FC;
    u32 unk_200;
    BOOL unk_204;
    BOOL unk_208;
    int unk_20C;
    ApplicationManager *ApplicationManager;
    void *unk_214;
    u32 unk_218;
} UnkStruct_ov19_021D5DF8;

typedef int (*CursorLocationInputHandler)(UnkStruct_ov19_021D5DF8 *);
typedef void (*BoxApplicationAction)(UnkStruct_ov19_021D5DF8 *, u32 *);

static void ov19_RegisterCursorLocationInputHandler(UnkStruct_ov19_021D5DF8 *param0, CursorLocationInputHandler cursorLocationInputHandler);
static void ov19_RegisterBoxApplicationAction(UnkStruct_ov19_021D5DF8 *param0, BoxApplicationAction boxApplicationAction);
static void ov19_ClearBoxApplicationAction(UnkStruct_ov19_021D5DF8 *param0);
static CursorLocationInputHandler ov19_GetCursorLocationInputHandler(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_FlagRecordBoxUseInJournal(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D0F20(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_ReturnToBoxFade1Action(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static inline int inline_ov19_021D0FF0(UnkStruct_ov19_021D5DF8 *param0);
static int ov19_CursorInBoxInputHandler(UnkStruct_ov19_021D5DF8 *param0);
static BOOL ov19_IsPreviewedMonHoldingMailOrHasBallCapsule(UnkStruct_ov19_021D5DF8 *param0, int *destMessageID);
static int ov19_CursorInPartyInputHandler(UnkStruct_ov19_021D5DF8 *param0);
static int ov19_CursorOnHeaderInputHandler(UnkStruct_ov19_021D5DF8 *param0);
static int ov19_CursorOnCloseInputHandler(UnkStruct_ov19_021D5DF8 *param0);
static int ov19_CursorOnPartyButtonInputHandler(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_InitSummary(UnkStruct_ov19_021D5DF8 *param0);
static int ov19_LogOffScreenFade(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_CloseBoxAction(UnkStruct_ov19_021D5DF8 *param0, u32 *close);
static void ov19_ContinueBoxOperationsAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static void ov19_MonCursorMenuAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static void ov19_MonItemMenuAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static void ov19_BoxHeaderMenuAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static void ov19_BoxJumpAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static void ov19_WallpaperMenu(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static void ov19_MarkAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static void ov19_MultiSelectAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static BOOL ov19_IsBoxUnderSelectedMonsEmpty(const UnkStruct_ov19_021D4DF0 *param0);
static void ov19_PickUpMonAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static void ov19_PlaceMonAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static void ov19_ShiftMonAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static void ov19_WithdrawMonAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static void ov19_StoreMonAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static BOOL ov19_OnLastAliveMon(UnkStruct_ov19_021D5DF8 *param0);
static BOOL ov19_CheckReleaseMonValid(UnkStruct_ov19_021D5DF8 *param0, int *destBoxMessageID);
static void ov19_ReleaseMonAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static void ov19_CheckShouldMonReturn(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_CheckLastMonWithReleaseBlockingMove(SysTask *task, void *releaseMon);
static BOOL BoxPokemon_HasMove(BoxPokemon *boxMon, u16 move);
static void ov19_RenameBoxAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static void ov19_OpenSummaryAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static void ov19_SetCursorPosToSummaryMonPos(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1);
static void ov19_GiveItemFromBagAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static void ov19_MonItemHeldAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static void ov19_PutAwayItemAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static void ov19_DisplayItemInfoAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static void BoxSelectorPopup_Init(UnkStruct_ov19_021D5DF8 *param0, u32 boxID, u32 boxMessageID);
static void BoxSelectorPopup_Reset(UnkStruct_ov19_021D5DF8 *param0);
static BOOL ov19_TrySelectBoxFromPopup(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_ChangeToNewBoxAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state);
static void ov19_021D4640(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D4938(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static BOOL ov19_021D4B88(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_BoxTouchScreenMarkingsButtonHandler(u32 buttonIndex, enum TouchScreenButtonState buttonTouchState, void *context);
static void ov19_021D4BE0(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_02042434 *param1);
static void ov19_021D4D58(UnkStruct_ov19_021D5DF8 *param0);
static void BoxSettings_Init(BoxSettings *param0, enum BoxMode boxMode);
static void ov19_InitCursor(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_InitMonSelection(BoxMonSelection *selection);
static void ov19_MonSelectionFree(BoxMonSelection *selection);
static void PCBoxes_InitCustomization(PCBoxes *pcBoxes, BoxCustomization *customization);
static void Customization_Free(BoxCustomization *customization);
static void PCMonPreviewInit(PCMonPreview *param0);
static void PCMonPreviewFree(PCMonPreview *param0);
static void ov19_PCCompareMonsInit(UnkStruct_ov19_021D4EE4 *param0);
static void ov19_PCCompareMonsFree(UnkStruct_ov19_021D4EE4 *param0);
static void ov19_021D4F34(UnkStruct_ov19_021D4F34 *param0);
static void PCBoxes_LoadCustomization(const PCBoxes *pcBoxes, BoxCustomization *customization);
static void ov19_LoadWallpaper(UnkStruct_ov19_021D4DF0 *param0, PCBoxes *pcBoxes);
static BOOL ov19_TryMoveCursorFromUserInput(u32 heldKeys, UnkStruct_ov19_021D5DF8 *param1);
static BOOL ov19_TryMoveCursor(UnkStruct_ov19_021D4DF0 *param0, int colChange, int rowChange);
static enum CursorMovementState ov19_TryMoveSelectionFromUserInput(u32 heldKeys, UnkStruct_ov19_021D5DF8 *param1);
static enum CursorMovementState ov19_TryMoveSelection(UnkStruct_ov19_021D4DF0 *param0, int colChange, int rowChange);
static void ov19_MoveCursorToParty(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_ReturnCursorToBox(UnkStruct_ov19_021D5DF8 *param0);
static BOOL ov19_TryPreviewCursorMon(UnkStruct_ov19_021D5DF8 *param0);
static BOOL ov19_TryPressTouchScreenButton(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_BoxTouchScreenButtonHandler(u32 buttonIndex, enum TouchScreenButtonState buttonTouchState, void *context);
static void ov19_SetBoxMessage(UnkStruct_ov19_021D4DF0 *param0, u32 boxMessageID);
static void ov19_SetCursorBoxLocation(UnkStruct_ov19_021D4DF0 *param0, u32 col, u32 row);
static void ov19_PickUpMon(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static void ov19_PickUpMultiSelectedMons(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static void ov19_ResetMultiSelectLocation(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static void ov19_SetMultiSelectionEndLocation(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static void ov19_PutDownCursorMon(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static void ov19_PutDownSelectedMons(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static void ov19_SwapMonInCursor(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static BOOL ov19_TryStoreCursorMonInBox(UnkStruct_ov19_021D5DF8 *param0, u32 boxID);
static BOOL ov19_TryStoreSelectedMonInBox(UnkStruct_ov19_021D5DF8 *param0, u32 boxID);
static void ov19_RemoveCursorMon(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_RemoveMonUnderCursor(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_PreviewBoxMon(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 *param2);
static void ov19_LoadBoxMonIntoPreview(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 *param2);
static void ov19_LoadBoxMonIntoComparison(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 *param2);
static void ov19_ToggleCompareMonSlot(UnkStruct_ov19_021D4DF0 *param0);
static void ov19_021D5B80(UnkStruct_ov19_021D4DF0 *param0);
static void ov19_SetCompareButtonPressed(UnkStruct_ov19_021D4DF0 *param0, BOOL pressed);
static void ov19_SetPreviewedBoxMon(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon);
static void ov19_UpdatePreviewMonMarkings(UnkStruct_ov19_021D4DF0 *param0);
static void ov19_GiveItemToSelectedMon(UnkStruct_ov19_021D4DF0 *param0, u16 item, UnkStruct_ov19_021D5DF8 *param2);
static void ov19_LoadRightBoxCustomization(UnkStruct_ov19_021D4DF0 *param0);
static void ov19_LoadLeftBoxCustomization(UnkStruct_ov19_021D4DF0 *param0);
static void ov19_LoadCustomizationsFor(UnkStruct_ov19_021D4DF0 *param0, u32 boxID);
static void ov19_SetBoxSelectionBoxID(UnkStruct_ov19_021D4DF0 *param0, u32 boxID);
static void ov19_PickUpHeldItem(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1);
static void ov19_RemoveCursorItem(UnkStruct_ov19_021D4DF0 *param0);
static void ov19_GiveItemFromCursor(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1);
static void ov19_SwapMonAndCursorItems(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1);
static void ov19_021D5D94(UnkStruct_ov19_021D4DF0 *param0, u32 param1);
static void ov19_021D5D9C(UnkStruct_ov19_021D4DF0 *param0, u32 param1);
static void ov19_SetMarkingsButtonsScrollOffset(UnkStruct_ov19_021D4DF0 *param0, u32 offset);
static void ov19_021D5DAC(UnkStruct_ov19_021D4DF0 *param0, int param1);
static void ov19_SetMonSpriteTransparencyMask(UnkStruct_ov19_021D4DF0 *param0, u32 param1);
static void ov19_ToggleCursorFastMode(UnkStruct_ov19_021D4DF0 *param0);
static u32 ov19_GetPreviewedMonValue(UnkStruct_ov19_021D4DF0 *param0, enum PokemonDataParam value, void *dest);
static u32 ov19_GetPreviewedOrSelectedMonValue(UnkStruct_ov19_021D4DF0 *param0, enum PokemonDataParam value, void *dest);

int ov19_021D0D80(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov19_021D5DF8 *v0;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BOX_DATA, 16384);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BOX_GRAPHICS, 245760);

    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov19_021D5DF8), HEAP_ID_BOX_DATA);

    if (v0 != NULL) {
        ov19_021D4BE0(v0, ApplicationManager_Args(appMan));
        BoxGraphics_Load(&(v0->unk_114), &v0->unk_00, v0);

        v0->cursorLocationHandlerState = 0;
        v0->cursorLocationInputHandler = ov19_GetCursorLocationInputHandler(v0);

        ov19_RegisterBoxApplicationAction(v0, ov19_021D0F20);
    }

    return 1;
}

int ov19_021D0DEC(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov19_021D5DF8 *v0 = ApplicationManager_Data(appMan);

    if (v0->boxApplicationAction != NULL) {
        v0->boxApplicationAction(v0, &(v0->boxApplicationActionState));
        return 0;
    } else {
        if (v0->cursorLocationInputHandler != NULL) {
            if (JOY_NEW(PAD_BUTTON_Y)) {
                if (ov19_CheckAllTasksDone(v0->unk_114) == 1) {
                    ov19_ToggleCursorFastMode(&v0->unk_00);
                    ov19_BoxTaskHandler(v0->unk_114, FUNC_ov19_021D7340);
                    return 0;
                }
            }

            return v0->cursorLocationInputHandler(v0);
        }
    }

    GF_ASSERT(0);
    return 1;
}

int ov19_021D0E58(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov19_021D5DF8 *v0 = ApplicationManager_Data(appMan);

    if (Party_HasSpecies(v0->party, SPECIES_CHATOT) == 0) {
        ChatotCry *chatotCry = SaveData_GetChatotCry(v0->saveData);

        ResetChatotCryDataStatus(chatotCry);
    }

    BoxGraphics_Free(v0->unk_114);
    ov19_021D4D58(v0);

    Heap_Destroy(HEAP_ID_BOX_DATA);
    Heap_Destroy(HEAP_ID_BOX_GRAPHICS);

    return 1;
}

static void ov19_RegisterCursorLocationInputHandler(UnkStruct_ov19_021D5DF8 *param0, CursorLocationInputHandler cursorLocationInputHandler)
{
    param0->cursorLocationInputHandler = cursorLocationInputHandler;
    param0->cursorLocationHandlerState = 0;
}

static void ov19_RegisterBoxApplicationAction(UnkStruct_ov19_021D5DF8 *param0, BoxApplicationAction boxApplicationAction)
{
    param0->boxApplicationAction = boxApplicationAction;
    param0->boxApplicationActionState = 0;
}

static void ov19_ClearBoxApplicationAction(UnkStruct_ov19_021D5DF8 *param0)
{
    param0->boxApplicationAction = NULL;
}

static CursorLocationInputHandler ov19_GetCursorLocationInputHandler(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (ov19_GetCursorLocation(&(param0->unk_00))) {
    case CURSOR_IN_BOX:
    default:
        return ov19_CursorInBoxInputHandler;
    case CURSOR_IN_PARTY:
        return ov19_CursorInPartyInputHandler;
    case CURSOR_ON_BOX_HEADER:
        return ov19_CursorOnHeaderInputHandler;
    case CURSOR_ON_CLOSE_BUTTON:
        return ov19_CursorOnCloseInputHandler;
    case CURSOR_ON_PARTY_BUTTON:
        return ov19_CursorOnPartyButtonInputHandler;
    }
}

static void ov19_FlagRecordBoxUseInJournal(UnkStruct_ov19_021D5DF8 *param0)
{
    param0->unk_118->recordBoxUseInJournal = TRUE;
}

static void ov19_021D0F20(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case 0:
        ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6694);
        (*state)++;
        break;
    case 1:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_ov19_021D6694)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack0);
            (*state)++;
        }
        break;
    case 2:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack0)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

static void ov19_ReturnToBoxFade1Action(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case 0:
        ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6694);
        (*state)++;
        break;
    case 1:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_ov19_021D6694)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack1);
            (*state)++;
        }
        break;
    case 2:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack1)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

static inline void inline_ov19_021D0FF0_sub1(UnkStruct_ov19_021D5DF8 *wk)
{
    ov19_ToggleCompareMonSlot(&wk->unk_00);
    ov19_PreviewBoxMon(&wk->unk_00, wk->unk_00.cursor.mon, wk);
    ov19_BoxTaskHandler(wk->unk_114, FUNC_ov19_021D7408);
    ov19_BoxTaskHandler(wk->unk_114, FUNC_BoxGraphics_PreviewMon);
}

static inline int inline_ov19_021D0FF0(UnkStruct_ov19_021D5DF8 *param0)
{
    if (ov19_TryPressTouchScreenButton(param0)) {
        if (ov19_GetBoxMode(&param0->unk_00) != PC_MODE_COMPARE) {
            switch (param0->touchScreenButtonPressed) {
            case 0:
                ov19_RegisterBoxApplicationAction(param0, ov19_021D4640);
                break;
            case 1:
                if (ov19_GetBoxMode(&param0->unk_00) != PC_MODE_MOVE_ITEMS) {
                    ov19_RegisterBoxApplicationAction(param0, ov19_021D4938);
                } else {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;
            }
        } else {
            switch (param0->touchScreenButtonPressed) {
            case 0:
                if ((ov19_GetCompareMonSlot(&param0->unk_00) == 0) && (ov19_IsMonUnderCursor(&param0->unk_00) == TRUE)) {
                    Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                    inline_ov19_021D0FF0_sub1(param0);
                    return 1;
                } else {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;
            case 1:
                if ((ov19_GetCompareMonSlot(&param0->unk_00) == 1) && (ov19_IsMonUnderCursor(&param0->unk_00) == TRUE)) {
                    Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                    inline_ov19_021D0FF0_sub1(param0);
                    return 1;
                } else {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;
            case 2:
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                ov19_021D5B80(&param0->unk_00);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D7424);
                return 1;
            }
        }
    }

    return 0;
}

enum CursorInBoxState {
    CURSOR_IN_BOX_WAIT_FOR_INPUT,
    CURSOR_IN_BOX_WAIT_FOR_MOVE_CURSOR,
    CURSOR_IN_BOX_WAIT_FOR_TOUCHSCREEN_DONE
};

static int ov19_CursorInBoxInputHandler(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (param0->cursorLocationHandlerState) {
    case CURSOR_IN_BOX_WAIT_FOR_INPUT:
        if (JOY_NEW(PAD_BUTTON_A)) {
            if (ov19_IsMonAvailableToCursor(&param0->unk_00)) {
                if (ov19_GetBoxMode(&param0->unk_00) != PC_MODE_MOVE_ITEMS) {
                    ov19_RegisterBoxApplicationAction(param0, ov19_MonCursorMenuAction);
                } else {
                    ov19_RegisterBoxApplicationAction(param0, ov19_MonItemMenuAction);
                }
                break;
            }
        }

        if (JOY_NEW(PAD_BUTTON_B)) {
            ov19_RegisterBoxApplicationAction(param0, ov19_ContinueBoxOperationsAction);
            break;
        }

        if (JOY_HELD(PAD_BUTTON_L)) {
            ov19_LoadLeftBoxCustomization(&param0->unk_00);
            ov19_RegisterBoxApplicationAction(param0, ov19_ChangeToNewBoxAction);
            break;
        }

        if (JOY_HELD(PAD_BUTTON_R)) {
            ov19_LoadRightBoxCustomization(&(param0->unk_00));
            ov19_RegisterBoxApplicationAction(param0, ov19_ChangeToNewBoxAction);
            break;
        }

        if (ov19_TryMoveCursorFromUserInput(gSystem.heldKeys, param0)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_MoveCursor);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
            }

            param0->cursorLocationHandlerState++;
            break;
        }

        if (inline_ov19_021D0FF0(param0)) {
            param0->cursorLocationHandlerState = CURSOR_IN_BOX_WAIT_FOR_TOUCHSCREEN_DONE;
        }
        break;
    case CURSOR_IN_BOX_WAIT_FOR_MOVE_CURSOR:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_MoveCursor)) {
            ov19_RegisterCursorLocationInputHandler(param0, ov19_GetCursorLocationInputHandler(param0));
        }
        break;
    case CURSOR_IN_BOX_WAIT_FOR_TOUCHSCREEN_DONE:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            param0->cursorLocationHandlerState = CURSOR_IN_BOX_WAIT_FOR_INPUT;
        }
        break;
    }

    return 0;
}

static BOOL ov19_IsPreviewedMonHoldingMailOrHasBallCapsule(UnkStruct_ov19_021D5DF8 *param0, int *destMessageID)
{
    if (Item_IsMail(ov19_GetPreviewedMonHeldItem(&param0->unk_00))) {
        *destMessageID = BoxText_RemoveMail;
        return TRUE;
    }

    if (ov19_GetPreviewedMonValue(&param0->unk_00, MON_DATA_BALL_CAPSULE_ID, NULL)) {
        *destMessageID = BoxText_DetachBallCapsule;
        return TRUE;
    }

    return FALSE;
}

enum CursorInPartyState {
    CURSOR_IN_PARTY_WAIT_FOR_INPUT,
    CURSOR_IN_PARTY_WAIT_FOR_MOVE_CURSOR,
    CURSOR_IN_PARTY_LEAVE_PARTY,
    CURSOR_IN_PARTY_RETURN_TO_BOX,
    CURSOR_IN_PARTY_WAIT_FOR_MOVE_CURSOR_TO_BOX,
    CURSOR_IN_PARTY_CONFIRM_MESSAGE,
    CURSOR_IN_PARTY_WAIT_FOR_TOUCHSCREEN_DONE
};

static int ov19_CursorInPartyInputHandler(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (param0->cursorLocationHandlerState) {
    case CURSOR_IN_PARTY_WAIT_FOR_INPUT:
        if (JOY_NEW(PAD_BUTTON_A)) {
            if (ov19_GetCursorPartyPosition(&param0->unk_00) == MAX_PARTY_SIZE) {
                param0->cursorLocationHandlerState = CURSOR_IN_PARTY_LEAVE_PARTY;
                break;
            }

            if (ov19_IsMonAvailableToCursor(&param0->unk_00)) {
                if (ov19_GetBoxMode(&param0->unk_00) != PC_MODE_MOVE_ITEMS) {
                    ov19_RegisterBoxApplicationAction(param0, ov19_MonCursorMenuAction);
                } else {
                    ov19_RegisterBoxApplicationAction(param0, ov19_MonItemMenuAction);
                }
                break;
            }
            break;
        }

        if (JOY_NEW(PAD_BUTTON_B) || JOY_NEW(PAD_KEY_RIGHT) && ov19_GetCursorPartyPosition(&param0->unk_00) & 1 || JOY_NEW(PAD_KEY_RIGHT) && ov19_GetCursorPartyPosition(&param0->unk_00) == MAX_PARTY_SIZE) {
            param0->cursorLocationHandlerState = CURSOR_IN_PARTY_LEAVE_PARTY;
            break;
        }

        if (ov19_TryMoveCursorFromUserInput(gSystem.heldKeys, param0)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_MoveCursor);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
            }

            param0->cursorLocationHandlerState = CURSOR_IN_PARTY_WAIT_FOR_MOVE_CURSOR;
            break;
        }

        if (inline_ov19_021D0FF0(param0)) {
            param0->cursorLocationHandlerState = CURSOR_IN_PARTY_WAIT_FOR_TOUCHSCREEN_DONE;
            break;
        }
        break;
    case CURSOR_IN_PARTY_WAIT_FOR_MOVE_CURSOR:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_MoveCursor)) {
            param0->cursorLocationHandlerState = CURSOR_IN_PARTY_WAIT_FOR_INPUT;
        }
        break;
    case CURSOR_IN_PARTY_LEAVE_PARTY:
        if (ov19_GetBoxMode(&param0->unk_00) == PC_MODE_DEPOSIT) {
            ov19_RegisterBoxApplicationAction(param0, ov19_ContinueBoxOperationsAction);
            param0->cursorLocationHandlerState = CURSOR_IN_PARTY_WAIT_FOR_INPUT;
        } else {
            int messageID;

            if (ov19_GetPreviewMonSource(&param0->unk_00) != PREVIEW_MON_UNDER_CURSOR && ov19_IsPreviewedMonHoldingMailOrHasBallCapsule(param0, &messageID)) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                ov19_SetBoxMessage(&param0->unk_00, messageID);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                param0->cursorLocationHandlerState = CURSOR_IN_PARTY_CONFIRM_MESSAGE;
            } else {
                ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D7138);
                param0->cursorLocationHandlerState = CURSOR_IN_PARTY_RETURN_TO_BOX;
            }
        }
        break;
    case CURSOR_IN_PARTY_RETURN_TO_BOX:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_ov19_021D7138)) {
            ov19_ReturnCursorToBox(param0);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_MoveCursor);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
            }

            param0->cursorLocationHandlerState = CURSOR_IN_PARTY_WAIT_FOR_MOVE_CURSOR_TO_BOX;
        }
        break;
    case CURSOR_IN_PARTY_WAIT_FOR_MOVE_CURSOR_TO_BOX:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_MoveCursor)) {
            ov19_RegisterCursorLocationInputHandler(param0, ov19_GetCursorLocationInputHandler(param0));
        }
        break;
    case CURSOR_IN_PARTY_CONFIRM_MESSAGE:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage) == FALSE) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            param0->cursorLocationHandlerState = CURSOR_IN_PARTY_WAIT_FOR_INPUT;
        }
        break;
    case CURSOR_IN_PARTY_WAIT_FOR_TOUCHSCREEN_DONE:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            param0->cursorLocationHandlerState = CURSOR_IN_PARTY_WAIT_FOR_INPUT;
        }
        break;
    }

    return 0;
}

enum CursorOnHeaderState {
    CURSOR_ON_HEADER_WAIT_FOR_INPUT,
    CURSOR_ON_HEADER_WAIT_FOR_MOVE_CURSOR
};

static int ov19_CursorOnHeaderInputHandler(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (param0->cursorLocationHandlerState) {
    case CURSOR_ON_HEADER_WAIT_FOR_INPUT:
        if (JOY_HELD(PAD_KEY_LEFT | PAD_BUTTON_L)) {
            ov19_LoadLeftBoxCustomization(&param0->unk_00);
            ov19_RegisterBoxApplicationAction(param0, ov19_ChangeToNewBoxAction);
            break;
        }

        if (JOY_HELD(PAD_KEY_RIGHT | PAD_BUTTON_R)) {
            ov19_LoadRightBoxCustomization(&(param0->unk_00));
            ov19_RegisterBoxApplicationAction(param0, ov19_ChangeToNewBoxAction);
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A)) {
            ov19_RegisterBoxApplicationAction(param0, ov19_BoxHeaderMenuAction);
            break;
        }

        if (JOY_NEW(PAD_BUTTON_B)) {
            ov19_RegisterBoxApplicationAction(param0, ov19_ContinueBoxOperationsAction);
            break;
        }

        if (ov19_TryMoveCursorFromUserInput(gSystem.heldKeys, param0)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_MoveCursor);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
            }

            param0->cursorLocationHandlerState = CURSOR_ON_HEADER_WAIT_FOR_MOVE_CURSOR;
            break;
        }

        inline_ov19_021D0FF0(param0);
        break;
    case CURSOR_ON_HEADER_WAIT_FOR_MOVE_CURSOR:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_MoveCursor)) {
            ov19_RegisterCursorLocationInputHandler(param0, ov19_GetCursorLocationInputHandler(param0));
        }
        break;
    }

    return 0;
}

enum CursorOnCloseState {
    CURSOR_CLOSE_WAIT_FOR_INPUT,
    CURSOR_CLOSE_WAIT_FOR_BOX_CHANGE,
    CURSOR_CLOSE_WAIT_FOR_CURSOR_MOVE
};

static int ov19_CursorOnCloseInputHandler(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (param0->cursorLocationHandlerState) {
    case CURSOR_CLOSE_WAIT_FOR_INPUT:
        if (JOY_NEW(PAD_BUTTON_A)) {
            ov19_RegisterBoxApplicationAction(param0, ov19_CloseBoxAction);
            break;
        }

        if (JOY_NEW(PAD_BUTTON_B)) {
            ov19_RegisterBoxApplicationAction(param0, ov19_ContinueBoxOperationsAction);
            break;
        }

        if (JOY_HELD(PAD_BUTTON_L)) {
            ov19_LoadLeftBoxCustomization(&param0->unk_00);
            ov19_RegisterBoxApplicationAction(param0, ov19_ChangeToNewBoxAction);
            break;
        }

        if (JOY_HELD(PAD_BUTTON_R)) {
            ov19_LoadRightBoxCustomization(&(param0->unk_00));
            ov19_RegisterBoxApplicationAction(param0, ov19_ChangeToNewBoxAction);
            break;
        }

        if (ov19_TryMoveCursorFromUserInput(gSystem.heldKeys, param0)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_MoveCursor);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
            }

            param0->cursorLocationHandlerState = CURSOR_CLOSE_WAIT_FOR_CURSOR_MOVE;
            break;
        }

        inline_ov19_021D0FF0(param0);
        break;
    case CURSOR_CLOSE_WAIT_FOR_BOX_CHANGE:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ChangeToNewBox)) {
            param0->cursorLocationHandlerState = CURSOR_CLOSE_WAIT_FOR_INPUT;
        }
        break;
    case CURSOR_CLOSE_WAIT_FOR_CURSOR_MOVE:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_MoveCursor)) {
            ov19_RegisterCursorLocationInputHandler(param0, ov19_GetCursorLocationInputHandler(param0));
        }
        break;
    }

    return 0;
}

enum CursorOnPartyButtonState {
    CURSOR_ON_PARTY_BUTTON_STATE_WAIT_FOR_INPUT,
    CURSOR_ON_PARTY_BUTTON_ANIMATE_PRESS_BUTTON,
    CURSOR_ON_PARTY_BUTTON_WAIT_FOR_OPEN_PARTY,
    CURSOR_ON_PARTY_BUTTON_WAIT_FOR_CHANGE_BOX,
    CURSOR_ON_PARTY_BUTTON_WAIT_FOR_MOVE_CURSOR,
    CURSOR_ON_PARTY_BUTTON_CONFIRM_MESSAGE
};

static int ov19_CursorOnPartyButtonInputHandler(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (param0->cursorLocationHandlerState) {
    case CURSOR_ON_PARTY_BUTTON_STATE_WAIT_FOR_INPUT:
        if (JOY_NEW(PAD_BUTTON_A)) {
            if (ov19_GetBoxMode(&param0->unk_00) != PC_MODE_WITHDRAW) {
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PressBoxButton);
                param0->cursorLocationHandlerState = CURSOR_ON_PARTY_BUTTON_ANIMATE_PRESS_BUTTON;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                ov19_SetBoxMessage(&param0->unk_00, BoxText_PickOne);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                param0->cursorLocationHandlerState = CURSOR_ON_PARTY_BUTTON_CONFIRM_MESSAGE;
            }
            break;
        }

        if (JOY_NEW(PAD_BUTTON_B)) {
            ov19_RegisterBoxApplicationAction(param0, ov19_ContinueBoxOperationsAction);
            break;
        }

        if (JOY_HELD(PAD_BUTTON_L)) {
            ov19_LoadLeftBoxCustomization(&param0->unk_00);
            ov19_RegisterBoxApplicationAction(param0, ov19_ChangeToNewBoxAction);
            break;
        }

        if (JOY_HELD(PAD_BUTTON_R)) {
            ov19_LoadRightBoxCustomization(&(param0->unk_00));
            ov19_RegisterBoxApplicationAction(param0, ov19_ChangeToNewBoxAction);
            break;
        }

        if (ov19_TryMoveCursorFromUserInput(gSystem.heldKeys, param0)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_MoveCursor);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
            }

            param0->cursorLocationHandlerState = CURSOR_ON_PARTY_BUTTON_WAIT_FOR_MOVE_CURSOR;
            break;
        }

        inline_ov19_021D0FF0(param0);
        break;
    case CURSOR_ON_PARTY_BUTTON_ANIMATE_PRESS_BUTTON:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_PressBoxButton)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_OpenPartyPopup);
            param0->cursorLocationHandlerState = CURSOR_ON_PARTY_BUTTON_WAIT_FOR_OPEN_PARTY;
        }

        break;
    case CURSOR_ON_PARTY_BUTTON_WAIT_FOR_OPEN_PARTY:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_OpenPartyPopup)) {
            ov19_MoveCursorToParty(param0);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_MoveCursor);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
            }

            param0->cursorLocationHandlerState = CURSOR_ON_PARTY_BUTTON_WAIT_FOR_MOVE_CURSOR;
        }
        break;
    case CURSOR_ON_PARTY_BUTTON_WAIT_FOR_CHANGE_BOX:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ChangeToNewBox)) {
            param0->cursorLocationHandlerState = CURSOR_ON_PARTY_BUTTON_STATE_WAIT_FOR_INPUT;
        }
        break;
    case CURSOR_ON_PARTY_BUTTON_WAIT_FOR_MOVE_CURSOR:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_MoveCursor)) {
            ov19_RegisterCursorLocationInputHandler(param0, ov19_GetCursorLocationInputHandler(param0));
        }
        break;
    case CURSOR_ON_PARTY_BUTTON_CONFIRM_MESSAGE:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            param0->cursorLocationHandlerState = 0;
        }
        break;
    }

    return 0;
}

static void ov19_InitSummary(UnkStruct_ov19_021D5DF8 *param0)
{
    static const u8 summaryPages[] = {
        SUMMARY_PAGE_INFO,
        SUMMARY_PAGE_MEMO,
        SUMMARY_PAGE_SKILLS,
        SUMMARY_PAGE_CONDITION,
        SUMMARY_PAGE_BATTLE_MOVES,
        SUMMARY_PAGE_CONTEST_MOVES,
        SUMMARY_PAGE_RIBBONS,
        SUMMARY_PAGE_EXIT,
        SUMMARY_PAGE_MAX
    };

    if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_IN_CURSOR) {
        BoxMonSelection *selection = &param0->unk_00.selection;

        param0->monSummary.monData = param0->unk_00.selection.boxMon;
        param0->monSummary.dataType = (selection->cursorMonIsPartyMon) ? SUMMARY_DATA_MON : SUMMARY_DATA_BOX_MON;
        param0->monSummary.monMax = 1;
        param0->monSummary.monIndex = 0;
        param0->monSummary.mode = SUMMARY_MODE_NORMAL;
        param0->monSummary.move = 0;
        param0->monSummary.options = param0->options;
    } else if (ov19_GetCursorLocation(&param0->unk_00) == CURSOR_IN_BOX) {
        param0->monSummary.monData = PCBoxes_GetBoxMonAt(param0->pcBoxes, PCBoxes_GetCurrentBoxID(param0->pcBoxes), 0);
        param0->monSummary.dataType = SUMMARY_DATA_BOX_MON;
        param0->monSummary.monMax = MAX_MONS_PER_BOX;
        param0->monSummary.monIndex = ov19_GetCursorBoxPosition(&param0->unk_00);
        param0->monSummary.mode = SUMMARY_MODE_NORMAL;
        param0->monSummary.move = 0;
    } else {
        param0->monSummary.monData = param0->party;
        param0->monSummary.dataType = SUMMARY_DATA_PARTY_MON;
        param0->monSummary.monMax = Party_GetCurrentCount(param0->party);
        param0->monSummary.monIndex = ov19_GetCursorPartyPosition(&param0->unk_00);
        param0->monSummary.mode = SUMMARY_MODE_NORMAL;
        param0->monSummary.move = 0;
    }

    param0->monSummary.chatotCry = NULL;
    param0->monSummary.dexMode = SaveData_GetDexMode(param0->saveData);
    param0->monSummary.showContest = PokemonSummaryScreen_ShowContestData(param0->saveData);
    param0->monSummary.specialRibbons = sub_0202D79C(param0->saveData);

    PokemonSummaryScreen_FlagVisiblePages(&(param0->monSummary), summaryPages);
    PokemonSummaryScreen_SetPlayerProfile(&(param0->monSummary), SaveData_GetTrainerInfo(param0->saveData));
}

static int ov19_LogOffScreenFade(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (param0->cursorLocationHandlerState) {
    case 0:
        ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlackLogOff);
        param0->cursorLocationHandlerState++;
        break;
    case 1:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            return 1;
        }
    }

    return 0;
}

enum CloseBoxState {
    CLOSE_BOX_START,
    CLOSE_BOX_SHOW_MENU,
    CLOSE_BOX_YES_NO,
    CLOSE_BOX_UNUSED,
    CLOSE_BOX_CANNOT_CLOSE,
    CLOSE_BOX_CONFIRM_MESSAGE,
    CLOSE_BOX_END
};

static void ov19_CloseBoxAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case CLOSE_BOX_START:
        if (ov19_GetBoxMode(&(param0->unk_00)) == PC_MODE_MOVE_ITEMS && ov19_GetCursorItem(&(param0->unk_00)) != ITEM_NONE) {
            ov19_RegisterBoxApplicationAction(param0, ov19_PutAwayItemAction);
            break;
        }

        if (ov19_GetPreviewMonSource(&(param0->unk_00)) != PREVIEW_MON_UNDER_CURSOR) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_HoldingMon);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = CLOSE_BOX_CANNOT_CLOSE;
            break;
        } else {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PressBoxButton);
            *state = CLOSE_BOX_SHOW_MENU;
        }

        break;

    case CLOSE_BOX_SHOW_MENU:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_PressBoxButton)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_ConfirmExit);
            BoxMenu_FillYesNo(&(param0->unk_00), 1);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ShowMenu);
            *state = CLOSE_BOX_YES_NO;
        }
        break;
    case CLOSE_BOX_YES_NO:
        switch (BoxMenu_GetMenuNavigation(&(param0->unk_00))) {
        case BOX_MENU_NAVIGATION_UP_DOWN:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_NO:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = CLOSE_BOX_END;
            break;
        case BOX_MENU_YES:
            ov19_RegisterCursorLocationInputHandler(param0, ov19_LogOffScreenFade);
            ov19_ClearBoxApplicationAction(param0);
            break;
        }
        break;
    case CLOSE_BOX_CANNOT_CLOSE:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ShowMenu) == FALSE) {
            break;
        }
        *state = CLOSE_BOX_CONFIRM_MESSAGE;
    case CLOSE_BOX_CONFIRM_MESSAGE:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = CLOSE_BOX_END;
        }
        break;
    case CLOSE_BOX_END:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}
enum ContinueBoxOperationsState {
    CONTINUE_OPERATIONS_START,
    CONTINUE_OPERATIONS_UNUSED,
    CONTINUE_OPERATIONS_WAIT_FOR_MESSAGE,
    CONTINUE_OPERATIONS_CONFIRM_MESSAGE,
    CONTINUE_OPERATIONS_END,
    CONTINUE_OPERATIONS_YES_NO
};

static void ov19_ContinueBoxOperationsAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case CONTINUE_OPERATIONS_START:
        if (ov19_GetPreviewMonSource(&(param0->unk_00)) != PREVIEW_MON_UNDER_CURSOR) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_HoldingMon);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = CONTINUE_OPERATIONS_WAIT_FOR_MESSAGE;
            break;
        } else if (ov19_GetBoxMode(&param0->unk_00) == PC_MODE_MOVE_ITEMS && ov19_GetCursorItem(&param0->unk_00) != ITEM_NONE) {
            ov19_RegisterBoxApplicationAction(param0, ov19_PutAwayItemAction);
            break;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_ConfirmContinue);
            BoxMenu_FillYesNo(&(param0->unk_00), 0);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ShowMenu);
            *state = CONTINUE_OPERATIONS_YES_NO;
        }
        break;
    case CONTINUE_OPERATIONS_YES_NO:
        switch (BoxMenu_GetMenuNavigation(&(param0->unk_00))) {
        case BOX_MENU_NAVIGATION_UP_DOWN:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_NO:
            ov19_RegisterCursorLocationInputHandler(param0, ov19_LogOffScreenFade);
            ov19_ClearBoxApplicationAction(param0);
            break;
        case BOX_MENU_YES:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = CONTINUE_OPERATIONS_END;
            break;
        }
        break;
    case CONTINUE_OPERATIONS_WAIT_FOR_MESSAGE:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ShowMenu) == FALSE) {
            break;
        }
        *state = CONTINUE_OPERATIONS_CONFIRM_MESSAGE;
    case CONTINUE_OPERATIONS_CONFIRM_MESSAGE:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = CONTINUE_OPERATIONS_END;
        }
        break;
    case CONTINUE_OPERATIONS_END:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

enum MonCursorMenuState {
    MON_CURSOR_MENU_START,
    MON_CURSOR_MENU_SHOW_MENU,
    MON_CURSOR_MENU_NAVIGATE_MENU,
    MON_CURSOR_MENU_ITEM_SELECTED,
    MON_CURSOR_MENU_END_WHEN_READY,
    MON_CURSOR_MENU_END
};

static void ov19_MonCursorMenuAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case MON_CURSOR_MENU_START:
        StringTemplate_SetNickname(param0->MessageVariableBuffer, 0, ov19_GetPreviewedBoxMon(&param0->unk_00));
        ov19_SetBoxMessage(&param0->unk_00, BoxText_MonSelected);
        BoxMenu_FillTopLevelMenuItems(&param0->unk_00);

        if (ov19_IsCursorFastMode(&param0->unk_00)) {
            param0->menuItem = BoxMenu_GetDefaultMenuItem(&param0->unk_00);
            *state = MON_CURSOR_MENU_ITEM_SELECTED;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ShowMenu);
            *state = MON_CURSOR_MENU_SHOW_MENU;
        }
        break;
    case MON_CURSOR_MENU_SHOW_MENU:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ShowMenu) == FALSE) {
            break;
        }
        *state = MON_CURSOR_MENU_NAVIGATE_MENU;
    case MON_CURSOR_MENU_NAVIGATE_MENU:
        param0->menuItem = BoxMenu_GetMenuNavigation(&(param0->unk_00));

        switch (param0->menuItem) {
        case BOX_MENU_NAVIGATION_NONE:
            break;
        case BOX_MENU_NAVIGATION_UP_DOWN:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_CANCEL:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = MON_CURSOR_MENU_END_WHEN_READY;
            break;
        default:
            *state = MON_CURSOR_MENU_ITEM_SELECTED;
            break;
        }
        break;
    case MON_CURSOR_MENU_ITEM_SELECTED:
        switch (param0->menuItem) {
        case BOX_MENU_MOVE:
            if (ov19_GetCursorLocation(&param0->unk_00) == CURSOR_IN_BOX && ov19_IsCursorFastMode(&param0->unk_00) == TRUE) {
                ov19_RegisterBoxApplicationAction(param0, ov19_MultiSelectAction);
            } else {
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                ov19_RegisterBoxApplicationAction(param0, ov19_PickUpMonAction);
            }
            break;
        case BOX_MENU_PLACE:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            ov19_RegisterBoxApplicationAction(param0, ov19_PlaceMonAction);
            break;
        case BOX_MENU_SHIFT:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            ov19_RegisterBoxApplicationAction(param0, ov19_ShiftMonAction);
            break;
        case BOX_MENU_WITHDRAW:
            ov19_RegisterBoxApplicationAction(param0, ov19_WithdrawMonAction);
            break;
        case BOX_MENU_STORE:
            ov19_RegisterBoxApplicationAction(param0, ov19_StoreMonAction);
            break;
        case BOX_MENU_MARK:
            ov19_RegisterBoxApplicationAction(param0, ov19_MarkAction);
            break;
        case BOX_MENU_RELEASE:
            ov19_RegisterBoxApplicationAction(param0, ov19_ReleaseMonAction);
            break;
        case BOX_MENU_SUMMARY:
            ov19_RegisterBoxApplicationAction(param0, ov19_OpenSummaryAction);
            break;
        case BOX_MENU_ITEM: {
            if (ov19_GetPreviewedMonHeldItem(&param0->unk_00) == ITEM_NONE) {
                ov19_RegisterBoxApplicationAction(param0, ov19_GiveItemFromBagAction);
            } else {
                ov19_RegisterBoxApplicationAction(param0, ov19_MonItemHeldAction);
            }
        } break;
        case BOX_MENU_SET_ON_LEFT:
        case BOX_MENU_SET_ON_RIGHT:
            ov19_ToggleCompareMonSlot(&param0->unk_00);
            ov19_PreviewBoxMon(&param0->unk_00, param0->unk_00.cursor.mon, param0);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D73EC);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            *state = MON_CURSOR_MENU_END;
            break;
        }
        break;
    case MON_CURSOR_MENU_END_WHEN_READY:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    case MON_CURSOR_MENU_END:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

enum MonItemMenuState {
    MON_ITEM_MENU_START,
    MON_ITEM_MENU_WAIT_FOR_MENU,
    MON_ITEM_MENU_NAVIGATE_MENU,
    MON_ITEM_MENU_SELECTED,
    MON_ITEM_MENU_END_WHEN_READY,
    MON_ITEM_MENU_WAIT_FOR_ANIMATIONS,
    MON_ITEM_MENU_END,
    MON_ITEM_MENU_CONFIRM_MESSAGE
};

static void ov19_MonItemMenuAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case MON_ITEM_MENU_START:
        u32 item = ov19_GetCursorItem(&param0->unk_00);

        if (item != ITEM_NONE) {
            StringTemplate_SetItemName(param0->MessageVariableBuffer, ITEM_NONE, item);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_ItemSelected);
        } else {
            item = ov19_GetPreviewedMonHeldItem(&param0->unk_00);

            if (item != ITEM_NONE) {
                StringTemplate_SetItemName(param0->MessageVariableBuffer, 0, item);
                ov19_SetBoxMessage(&param0->unk_00, BoxText_ItemSelected);
            } else {
                ov19_SetBoxMessage(&param0->unk_00, BoxText_GiveToMon);
            }
        }

        BoxMenu_FillItemsMenu(&param0->unk_00);

        if (ov19_IsPreviewedMonEgg(&param0->unk_00)) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_EggsCantHoldItems);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = MON_ITEM_MENU_CONFIRM_MESSAGE;
        } else if (ov19_IsCursorFastMode(&param0->unk_00)) {
            param0->menuItem = BoxMenu_GetDefaultMenuItem(&param0->unk_00);
            *state = MON_ITEM_MENU_SELECTED;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ShowMenu);
            *state = MON_ITEM_MENU_WAIT_FOR_MENU;
        }
        break;
    case MON_ITEM_MENU_WAIT_FOR_MENU:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ShowMenu) == FALSE) {
            break;
        }
        *state = MON_ITEM_MENU_NAVIGATE_MENU;
    case MON_ITEM_MENU_NAVIGATE_MENU:
        param0->menuItem = BoxMenu_GetMenuNavigation(&(param0->unk_00));

        switch (param0->menuItem) {
        case BOX_MENU_NAVIGATION_NONE:
            break;
        case BOX_MENU_NAVIGATION_UP_DOWN:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_ITEMS_CANCEL:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = MON_ITEM_MENU_END_WHEN_READY;
            break;
        default:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            *state = MON_ITEM_MENU_SELECTED;
            break;
        }
        break;
    case MON_ITEM_MENU_SELECTED:
        switch (param0->menuItem) {
        case BOX_MENU_GIVE:
            if (ov19_GetCursorItem(&param0->unk_00) == ITEM_GRISEOUS_ORB && BoxPokemon_GetValue(param0->unk_00.pcMonPreview.mon, MON_DATA_SPECIES, NULL) != SPECIES_GIRATINA) {
                StringTemplate_SetItemName(param0->MessageVariableBuffer, 0, ITEM_GRISEOUS_ORB);
                ov19_SetBoxMessage(&param0->unk_00, BoxText_MonCantHoldItem);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                *state = MON_ITEM_MENU_CONFIRM_MESSAGE;
            } else if (ov19_GetCursorItem(&param0->unk_00) != ITEM_NONE) {
                ov19_GiveItemFromCursor(&param0->unk_00, param0);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6CF8);
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                *state = MON_ITEM_MENU_WAIT_FOR_ANIMATIONS;
            } else {
                ov19_RegisterBoxApplicationAction(param0, ov19_GiveItemFromBagAction);
            }

            break;
        case BOX_MENU_TAKE:
            if (Item_IsMail(ov19_GetPreviewedMonHeldItem(&param0->unk_00))) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                ov19_SetBoxMessage(&param0->unk_00, BoxText_CantTakeMail);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                *state = MON_ITEM_MENU_CONFIRM_MESSAGE;
            } else {
                ov19_PickUpHeldItem(&param0->unk_00, param0);
                ov19_FlagRecordBoxUseInJournal(param0);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6CB0);
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                *state = MON_ITEM_MENU_WAIT_FOR_ANIMATIONS;
            }
            break;
        case BOX_MENU_INFO:
            ov19_RegisterBoxApplicationAction(param0, ov19_DisplayItemInfoAction);
            break;
        case BOX_MENU_SWITCH:
            if (Item_IsMail(ov19_GetPreviewedMonHeldItem(&param0->unk_00))) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                ov19_SetBoxMessage(&param0->unk_00, BoxText_CantTakeMail);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                *state = MON_ITEM_MENU_CONFIRM_MESSAGE;
            } else if (param0->unk_00.cursorItem == ITEM_GRISEOUS_ORB && (BoxPokemon_GetValue(param0->unk_00.pcMonPreview.mon, MON_DATA_SPECIES, NULL) != SPECIES_GIRATINA)) {
                StringTemplate_SetItemName(param0->MessageVariableBuffer, ITEM_NONE, ITEM_GRISEOUS_ORB);
                ov19_SetBoxMessage(&param0->unk_00, BoxText_MonCantHoldItem);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                *state = MON_ITEM_MENU_CONFIRM_MESSAGE;
            } else {
                ov19_SwapMonAndCursorItems(&param0->unk_00, param0);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6D40);
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                *state = MON_ITEM_MENU_WAIT_FOR_ANIMATIONS;
            }
            break;
        case BOX_MENU_BAG:
            ov19_RegisterBoxApplicationAction(param0, ov19_PutAwayItemAction);
            break;
        }
        break;
    case MON_ITEM_MENU_END_WHEN_READY:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    case MON_ITEM_MENU_WAIT_FOR_ANIMATIONS:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6D88);
            *state = MON_ITEM_MENU_END;
        }
        break;
    case MON_ITEM_MENU_END:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    case MON_ITEM_MENU_CONFIRM_MESSAGE:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = MON_ITEM_MENU_END;
        }
        break;
    }
}

enum BoxHeaderActionState {
    BOX_HEADER_MENU_START,
    BOX_HEADER_MENU_SHOW_MENU,
    BOX_HEADER_MENU_NAVIGATE_MENU,
    BOX_HEADER_MENU_ITEM_SELECTED,
    BOX_HEADER_MENU_END_WHEN_READY,
    BOX_HEADER_MENU_UNUSED1,
    BOX_HEADER_MENU_UNUSED2,
    BOX_HEADER_MENU_END
};

static void ov19_BoxHeaderMenuAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case BOX_HEADER_MENU_START:
        ov19_SetBoxMessage(&param0->unk_00, BoxText_WhatDo);
        BoxMenu_FillHeaderMenu(&param0->unk_00);

        if (ov19_IsCursorFastMode(&param0->unk_00)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param0->menuItem = BoxMenu_GetDefaultMenuItem(&param0->unk_00);
            *state = BOX_HEADER_MENU_ITEM_SELECTED;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ShowMenu);
            *state = BOX_HEADER_MENU_SHOW_MENU;
        }
        break;
    case BOX_HEADER_MENU_SHOW_MENU:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ShowMenu) == FALSE) {
            break;
        }
        *state = BOX_HEADER_MENU_NAVIGATE_MENU;
    case BOX_HEADER_MENU_NAVIGATE_MENU:
        param0->menuItem = BoxMenu_GetMenuNavigation(&(param0->unk_00));

        switch (param0->menuItem) {
        case BOX_MENU_NAVIGATION_NONE:
            break;
        case BOX_MENU_NAVIGATION_UP_DOWN:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_HEADER_CANCEL:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = BOX_HEADER_MENU_END_WHEN_READY;
            break;
        default:
            *state = BOX_HEADER_MENU_ITEM_SELECTED;
            break;
        }
        break;
    case BOX_HEADER_MENU_ITEM_SELECTED:
        switch (param0->menuItem) {
        case BOX_MENU_JUMP:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            ov19_RegisterBoxApplicationAction(param0, ov19_BoxJumpAction);
            break;
        case BOX_MENU_WALLPAPER:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6EC0);
            *state = BOX_HEADER_MENU_END;
            break;
        case BOX_MENU_NAME:
            ov19_RegisterBoxApplicationAction(param0, ov19_RenameBoxAction);
            break;
        }
        break;
    case BOX_HEADER_MENU_END_WHEN_READY:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    case BOX_HEADER_MENU_END:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_RegisterBoxApplicationAction(param0, ov19_WallpaperMenu);
        }
        break;
    }
}

enum BoxJumpState {
    JUMP_START,
    JUMP_TO_BOX,
    JUMP_END
};

static void ov19_BoxJumpAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case JUMP_START:
        BoxSelectorPopup_Init(param0, ov19_GetCurrentBox(&param0->unk_00), BoxText_JumpToBox);
        *state = JUMP_TO_BOX;
        break;
    case JUMP_TO_BOX:
        if (ov19_TrySelectBoxFromPopup(param0) == FALSE) {
            break;
        }

        if (param0->boxSelector.boxID == -1 || param0->boxSelector.boxID == ov19_GetCurrentBox(&param0->unk_00)) {
            *state = JUMP_END;
        } else {
            ov19_LoadCustomizationsFor(&param0->unk_00, param0->boxSelector.boxID);
            PCBoxes_SetCurrentBox(param0->pcBoxes, param0->boxSelector.boxID);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ChangeToNewBox);
            *state = JUMP_END;
        }

        ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
        ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6FB0);
        break;
    case JUMP_END:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

enum WallpaperMenuState {
    WALLPAPER_MENU_START,
    WALLPAPER_MENU_PICK_THEME_INIT,
    WALLPAPER_MENU_PICK_THEME_WAIT_FOR_TASK,
    WALLPAPER_MENU_PICK_THEME_WAIT_FOR_USER,
    WALLPAPER_MENU_PICK_WALLPAPER_WAIT_FOR_TASK,
    WALLPAPER_MENU_PICK_WALLPAPER_WAIT_FOR_USER,
    WALLPAPER_MENU_TRANSITION_WALLPAPER,
    WALLPAPER_MENU_UNREACHABLE,
    WALLPAPER_MENU_END,
};

static void ov19_WallpaperMenu(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case WALLPAPER_MENU_START:
        param0->menuItem = BOX_MENU_SCENERY_1;
        *state = WALLPAPER_MENU_PICK_THEME_INIT;
    case WALLPAPER_MENU_PICK_THEME_INIT:
        ov19_SetBoxMessage(&param0->unk_00, BoxText_PickTheme);
        BoxMenu_FillWallpaperMenu(&param0->unk_00, param0->menuItem);
        ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ShowMenu);
        *state = WALLPAPER_MENU_PICK_THEME_WAIT_FOR_TASK;
        break;
    case WALLPAPER_MENU_PICK_THEME_WAIT_FOR_TASK:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ShowMenu) == FALSE) {
            break;
        }
        *state = WALLPAPER_MENU_PICK_THEME_WAIT_FOR_USER;
    case WALLPAPER_MENU_PICK_THEME_WAIT_FOR_USER:
        switch (BoxMenu_GetMenuNavigation(&(param0->unk_00))) {
        case BOX_MENU_NAVIGATION_NONE:
            break;
        case BOX_MENU_NAVIGATION_UP_DOWN:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_HEADER_CANCEL:
        default:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = WALLPAPER_MENU_END;
            break;
        case BOX_MENU_SCENERY_1:
        case BOX_MENU_SCENERY_2:
        case BOX_MENU_SCENERY_3:
        case BOX_MENU_ETCETERA:
        case BOX_MENU_FRIENDS_1:
        case BOX_MENU_FRIENDS_2:
            param0->menuItem = BoxMenu_GetSelectedMenuItem(&param0->unk_00);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_Wallpaper);
            BoxMenu_FillWallpaperSelectionMenu(&param0->unk_00, param0->menuItem);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ShowMenu);
            *state = WALLPAPER_MENU_PICK_WALLPAPER_WAIT_FOR_TASK;
            break;
        }
        break;
    case WALLPAPER_MENU_PICK_WALLPAPER_WAIT_FOR_TASK:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ShowMenu) == FALSE) {
            break;
        }
        *state = WALLPAPER_MENU_PICK_WALLPAPER_WAIT_FOR_USER;
    case WALLPAPER_MENU_PICK_WALLPAPER_WAIT_FOR_USER:
        switch (BoxMenu_GetMenuNavigation(&(param0->unk_00))) {
        case BOX_MENU_NAVIGATION_NONE:
            break;
        case BOX_MENU_NAVIGATION_UP_DOWN:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_HEADER_CANCEL:
            *state = WALLPAPER_MENU_PICK_THEME_INIT;
            break;
        default:
            param0->menuItem = BoxMenu_GetSelectedMenuItem(&param0->unk_00);

            if (param0->menuItem >= BOX_MENU_FIRST_WALLPAPER && param0->menuItem <= BOX_MENU_LAST_WALLPAPER) {
                PCBoxes_SetWallpaper(param0->pcBoxes, USE_CURRENT_BOX, param0->menuItem - BOX_MENU_FIRST_WALLPAPER);
                ov19_LoadWallpaper(&param0->unk_00, param0->pcBoxes);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                *state = WALLPAPER_MENU_TRANSITION_WALLPAPER;
            } else {
                GF_ASSERT(FALSE);
                *state = WALLPAPER_MENU_PICK_THEME_INIT;
            }
        }
        break;
    case WALLPAPER_MENU_TRANSITION_WALLPAPER:
        ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_TransitionWallpaper);
        *state = WALLPAPER_MENU_END;
        break;
    case WALLPAPER_MENU_UNREACHABLE:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            *state = WALLPAPER_MENU_PICK_THEME_INIT;
        }
        break;
    case WALLPAPER_MENU_END:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

enum MarkState {
    MARK_START,
    MARK_PROCESS_USER_INPUT,
    MARK_END,
};

static void ov19_MarkAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case MARK_START:
        BoxMenu_FillMarkingsMenu(&param0->unk_00);
        ov19_SetBoxMessage(&param0->unk_00, BoxText_MarkMon);
        ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ShowMenu);
        *state = MARK_PROCESS_USER_INPUT;
        break;
    case MARK_PROCESS_USER_INPUT:
        if (ov19_CheckAllTasksDone(param0->unk_114) == FALSE) {
            break;
        } else {
            u32 selectedItem = BoxMenu_GetMenuNavigation(&(param0->unk_00));

            switch (selectedItem) {
            case BOX_MENU_NAVIGATION_NONE:
                break;
            case BOX_MENU_NAVIGATION_UP_DOWN:
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
                break;
            case BOX_MENU_NAVIGATION_B:
            case BOX_MENU_MARK_CANCEL:
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                *state = MARK_END;
                break;
            case BOX_MENU_CONFIRM:
                ov19_UpdatePreviewMonMarkings(&param0->unk_00);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D69BC);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D7248);
                *state = MARK_END;
                break;
            default:
                if (selectedItem >= BOX_MENU_FIRST_MARKING && selectedItem <= BOX_MENU_LAST_MARKING) {
                    selectedItem -= BOX_MENU_FIRST_MARKING;
                    BoxMenu_ToggleMarking(&param0->unk_00, selectedItem);
                    ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6F0C);
                }
                break;
            }
        }
        break;
    case MARK_END:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

enum MultiSelectMoveStates {
    MULTI_MOVE_START,
    MULTI_MOVE_DEFINE_SELECTION,
    MULTI_MOVE_SELECTED_MONS,
    MULTI_MOVE_WAIT_FOR_ANIMATIONS,
    MULTI_MOVE_END,
    MULTI_MOVE_PREVIEW_MON
};

static void ov19_MultiSelectAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case MULTI_MOVE_START:
        if (JOY_HELD(PAD_BUTTON_A)) {
            ov19_ResetMultiSelectLocation(param0, &param0->unk_00);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_StartDrawMultiSelect);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            *state = MULTI_MOVE_DEFINE_SELECTION;
        } else {
            ov19_RegisterBoxApplicationAction(param0, ov19_PickUpMonAction);
        }
        break;

    case MULTI_MOVE_DEFINE_SELECTION:
        if (JOY_HELD(PAD_BUTTON_A)) {
            switch (ov19_TryMoveSelectionFromUserInput(gSystem.heldKeys, param0)) {
            case CURSOR_STOP:
                if (JOY_HELD(PAD_PLUS_KEY_MASK) == JOY_NEW(PAD_PLUS_KEY_MASK)) {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;

            case CURSOR_MOVE:
                ov19_SetMultiSelectionEndLocation(param0, &param0->unk_00);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ApplyMultiSelectMonShadingTask);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_MoveCursor);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
                *state = MULTI_MOVE_WAIT_FOR_ANIMATIONS;
                break;
            }
        } else {
            if (ov19_IsMultiSelectSingleSelect(&param0->unk_00)) {
                ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D7380);
                ov19_RegisterBoxApplicationAction(param0, ov19_PickUpMonAction);
            } else {
                ov19_PickUpMultiSelectedMons(param0, &param0->unk_00);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D73B0);
                Sound_PlayEffect(SEQ_SE_DP_BOX02);
                *state = MULTI_MOVE_SELECTED_MONS;
            }
        }
        break;

    case MULTI_MOVE_SELECTED_MONS:
        if (ov19_CheckAllTasksDone(param0->unk_114) == FALSE) {
            break;
        }

        switch (ov19_TryMoveSelectionFromUserInput(gSystem.heldKeys, param0)) {
        case CURSOR_STOP:
            if (JOY_HELD(PAD_PLUS_KEY_MASK) == JOY_NEW(PAD_PLUS_KEY_MASK)) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
            }
            break;

        case CURSOR_MOVE:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_MoveCursor);
            if ((ov19_GetPreviewMonSource(&param0->unk_00) & PREVIEW_MON_HELD) == 0) {
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
            }
            break;

        case CURSOR_MOVE_TO_LEFT_BOX:
            ov19_LoadLeftBoxCustomization(&param0->unk_00);
            PCBoxes_SetCurrentBox(param0->pcBoxes, ov19_GetCurrentBox(&param0->unk_00));
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ChangeToNewBox);
            *state = MULTI_MOVE_PREVIEW_MON;
            break;

        case CURSOR_MOVE_TO_RIGHT_BOX:
            ov19_LoadRightBoxCustomization(&(param0->unk_00));
            PCBoxes_SetCurrentBox(param0->pcBoxes, ov19_GetCurrentBox(&param0->unk_00));
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ChangeToNewBox);
            *state = MULTI_MOVE_PREVIEW_MON;
            break;

        case CURSOR_NO_MOVEMENT:
            if (JOY_NEW(PAD_BUTTON_A)) {
                if (ov19_IsBoxUnderSelectedMonsEmpty(&param0->unk_00)) {
                    ov19_PutDownSelectedMons(param0, &param0->unk_00);
                    ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PlaceMonDownFromCursor);
                    Sound_PlayEffect(SEQ_SE_DP_BOX01);
                    *state = MULTI_MOVE_END;
                } else {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;
            }
            if (JOY_NEW(PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
            }
            break;
        }
        break;

    case MULTI_MOVE_PREVIEW_MON:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ChangeToNewBox)) {
            if (!(ov19_GetPreviewMonSource(&param0->unk_00) & PREVIEW_MON_HELD)) {
                ov19_TryPreviewCursorMon(param0);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
            }
            *state = MULTI_MOVE_SELECTED_MONS;
        }
        break;

    case MULTI_MOVE_WAIT_FOR_ANIMATIONS:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            *state = MULTI_MOVE_DEFINE_SELECTION;
        }
        break;

    case MULTI_MOVE_END:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

static BOOL ov19_IsBoxUnderSelectedMonsEmpty(const UnkStruct_ov19_021D4DF0 *param0)
{
    BoxPokemon *boxMon;
    int i, posInBox;
    const BoxCursor *cursor = &param0->cursor;
    const BoxMonSelection *selection = &param0->selection;

    int selectionTopLeftPos = ov19_GetMultiSelectTopLeftPos(param0);
    int origSelectionTopLeftPos = selection->origSelectionTopLeftPos;

    for (i = 0; i < selection->selectedMonCount; i++) {
        posInBox = selectionTopLeftPos + (selection->selectedMonsOrigBoxPos[i] - origSelectionTopLeftPos);
        boxMon = PCBoxes_GetBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, posInBox);

        if (BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES_EXISTS, NULL)) {
            return FALSE;
        }
    }

    return TRUE;
}

enum PickUpMonState {
    PICK_UP_MON_START,
    PICK_UP_PARTY_MON,
    PICK_UP_MON_CONFIRM_LAST_MON,
    PICK_UP_MON_DONE
};

static void ov19_PickUpMonAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case PICK_UP_MON_START:
        if (ov19_GetCursorLocation(&param0->unk_00) == CURSOR_IN_PARTY) {
            if (ov19_OnLastAliveMon(param0) == FALSE) {
                Sound_PlayEffect(SEQ_SE_DP_BOX02);
                ov19_PickUpMon(param0, &param0->unk_00);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PickUpMonIntoCursor);
                *state = PICK_UP_PARTY_MON;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                ov19_SetBoxMessage(&param0->unk_00, BoxText_LastMon);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                *state = PICK_UP_MON_CONFIRM_LAST_MON;
            }
        } else {
            Sound_PlayEffect(SEQ_SE_DP_BOX02);
            ov19_PickUpMon(param0, &param0->unk_00);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PickUpMonIntoCursor);
            *state = PICK_UP_MON_DONE;
        }
        break;
    case PICK_UP_PARTY_MON:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_TryPreviewCursorMon(param0);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PlayAdjustPartyAnimation);
            *state = PICK_UP_MON_DONE;
        }
        break;
    case PICK_UP_MON_CONFIRM_LAST_MON:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = PICK_UP_MON_DONE;
        }
        break;
    case PICK_UP_MON_DONE:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

enum PlaceMonState {
    PLACE_MON_DOWN,
    PLACE_ADJUST_PARTY_ANIMATION,
    PLACE_MON_END
};

static void ov19_PlaceMonAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case PLACE_MON_DOWN:
        ov19_PutDownCursorMon(param0, &param0->unk_00);
        ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PlaceMonDownFromCursor);
        Sound_PlayEffect(SEQ_SE_DP_BOX01);

        if (ov19_GetCursorLocation(&param0->unk_00) == CURSOR_IN_PARTY) {
            u32 cursorPosition = ov19_GetCursorPartyPosition(&param0->unk_00);
            u32 partyCount = Party_GetCurrentCount(param0->party);

            if (cursorPosition != (partyCount - 1)) {
                *state = PLACE_ADJUST_PARTY_ANIMATION;
                ov19_TryPreviewCursorMon(param0);
                break;
            }
        }
        *state = PLACE_MON_END;
        break;
    case PLACE_ADJUST_PARTY_ANIMATION:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_TryPreviewCursorMon(param0);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D71F8);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
            *state = PLACE_MON_END;
        }
        break;
    case PLACE_MON_END:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_FlagRecordBoxUseInJournal(param0);
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

static BOOL ov19_CheckLastAliveMonReason(UnkStruct_ov19_021D5DF8 *param0, u32 *destMessageID)
{
    if (ov19_OnLastAliveMon(param0)) {
        if (ov19_GetPreviewedMonValue(&param0->unk_00, MON_DATA_EGG_EXISTS, NULL)) {
            *destMessageID = BoxText_LastMon;
            return TRUE;
        }

        if (ov19_GetCursorMonIsPartyMon(&param0->unk_00)) {
            if (ov19_GetPreviewedMonValue(&param0->unk_00, MON_DATA_CURRENT_HP, NULL) == 0) {
                *destMessageID = BoxText_LastMon;
                return TRUE;
            }
        }
    }

    return FALSE;
}

enum ShiftState {
    SHIFT_START,
    SHIFT_CONFIRM_MESSAGE,
    SHIFT_END
};

static void ov19_ShiftMonAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case SHIFT_START: {
        u32 messageID;

        if (ov19_CheckLastAliveMonReason(param0, &messageID)) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_SetBoxMessage(&param0->unk_00, messageID);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = SHIFT_CONFIRM_MESSAGE;
        } else {
            ov19_SwapMonInCursor(param0, &param0->unk_00);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6AB0);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
            *state = SHIFT_END;
        }
    } break;
    case SHIFT_CONFIRM_MESSAGE:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage) == FALSE) {
            break;
        }

        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = SHIFT_END;
        }
        break;
    case SHIFT_END:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_FlagRecordBoxUseInJournal(param0);
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

enum WithdrawMonState {
    WITHDRAW_START,
    WITHDRAW_WAIT_FOR_PICK_UP_MON,
    WITHDRAW_WAIT_FOR_PARTY_POPUP,
    WITHDRAW_WAIT_FOR_MOVE_CURSOR_TO_PARTY,
    WITHDRAW_WAIT_FOR_MOVE_PLACE_MON_DOWN,
    WITHDRAW_RETURN_TO_BOX,
    WITHDRAW_UNUSED,
    WITHDRAW_CONFIRM_PARTY_FULL,
    WITHDRAW_END
};

static void ov19_WithdrawMonAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case WITHDRAW_START:
        if (Party_GetCurrentCount(param0->party) != MAX_PARTY_SIZE) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_IN_CURSOR) {
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_OpenPartyPopup);
                *state = WITHDRAW_WAIT_FOR_PARTY_POPUP;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_BOX02);
                ov19_PickUpMon(param0, &param0->unk_00);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PickUpMonIntoCursor);
                *state = WITHDRAW_WAIT_FOR_PICK_UP_MON;
            }
        } else {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6EC0);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_PartyFull);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = WITHDRAW_CONFIRM_PARTY_FULL;
        }
        break;
    case WITHDRAW_WAIT_FOR_PICK_UP_MON:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_PickUpMonIntoCursor)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_OpenPartyPopup);
            *state = WITHDRAW_WAIT_FOR_PARTY_POPUP;
        }
        break;
    case WITHDRAW_WAIT_FOR_PARTY_POPUP:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_OpenPartyPopup)) {
            ov19_MoveCursorToParty(param0);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_MoveCursor);
            *state = WITHDRAW_WAIT_FOR_MOVE_CURSOR_TO_PARTY;
        }
        break;
    case WITHDRAW_WAIT_FOR_MOVE_CURSOR_TO_PARTY:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_MoveCursor)) {
            ov19_PutDownCursorMon(param0, &param0->unk_00);
            ov19_FlagRecordBoxUseInJournal(param0);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PlaceMonDownFromCursor);
            *state = WITHDRAW_WAIT_FOR_MOVE_PLACE_MON_DOWN;
        }
        break;
    case WITHDRAW_WAIT_FOR_MOVE_PLACE_MON_DOWN:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_PlaceMonDownFromCursor)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D7138);
            *state = WITHDRAW_RETURN_TO_BOX;
        }
        break;
    case WITHDRAW_RETURN_TO_BOX:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_ov19_021D7138)) {
            ov19_ReturnCursorToBox(param0);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_MoveCursor);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
            *state = WITHDRAW_END;
        }
        break;
    case WITHDRAW_CONFIRM_PARTY_FULL:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage) == FALSE) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = WITHDRAW_END;
        }
        break;

    case WITHDRAW_END:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

enum StoreMonState {
    STORE_MON_CHECK_CAN_STORE_MON,
    STORE_MON_SELECT_BOX,
    STORE_MON_BOX_FULL,
    STORE_MON_CONFIRM_CANNOT_STORE_MON,
    STORE_MON_FROM_CURSOR,
    STORE_MON_FROM_PARTY,
    STORE_MON_END
};

static void ov19_StoreMonAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case STORE_MON_CHECK_CAN_STORE_MON:
        if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR && ov19_OnLastAliveMon(param0) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_LastMon);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6EC0);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = STORE_MON_CONFIRM_CANNOT_STORE_MON;
        } else {
            int boxMessageID;

            if (ov19_IsPreviewedMonHoldingMailOrHasBallCapsule(param0, &boxMessageID)) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                ov19_SetBoxMessage(&param0->unk_00, boxMessageID);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6EC0);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                *state = STORE_MON_CONFIRM_CANNOT_STORE_MON;
            } else {
                BoxSelectorPopup_Init(param0, param0->unk_00.unk_110, BoxText_PickDepositBox);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                *state = STORE_MON_SELECT_BOX;
            }
        }
        break;
    case STORE_MON_SELECT_BOX:
        if (ov19_TrySelectBoxFromPopup(param0) == FALSE) {
            break;
        }

        if (param0->boxSelector.boxID == -1) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6FB0);
            *state = STORE_MON_END;
            break;
        }

        param0->unk_00.unk_110 = param0->boxSelector.boxID;

        if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_IN_CURSOR) {
            if (ov19_TryStoreCursorMonInBox(param0, param0->boxSelector.boxID)) {
                ov19_FlagRecordBoxUseInJournal(param0);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6FB0);
                *state = STORE_MON_FROM_CURSOR;
                break;
            }
        } else {
            if (ov19_TryStoreSelectedMonInBox(param0, param0->boxSelector.boxID)) {
                ov19_FlagRecordBoxUseInJournal(param0);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6FB0);
                *state = STORE_MON_FROM_PARTY;
                break;
            }
        }

        Sound_PlayEffect(SEQ_SE_DP_BOX03);
        ov19_SetBoxMessage(&param0->unk_00, BoxText_BoxFull);
        ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
        *state = STORE_MON_BOX_FULL;
        break;
    case STORE_MON_BOX_FULL:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage) == FALSE) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            BoxSelectorPopup_Reset(param0);
            *state = STORE_MON_SELECT_BOX;
        }
        break;
    case STORE_MON_CONFIRM_CANNOT_STORE_MON:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage) == FALSE) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = STORE_MON_END;
        }
        break;
    case STORE_MON_FROM_CURSOR:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_ov19_021D6FB0)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6AEC);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
            *state = STORE_MON_END;
        }
        break;
    case STORE_MON_FROM_PARTY:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_ov19_021D6FB0)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6B1C);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
            *state = STORE_MON_END;
        }
        break;
    case STORE_MON_END:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

static BOOL ov19_OnLastAliveMon(UnkStruct_ov19_021D5DF8 *param0)
{
    Pokemon *mon;
    int count;
    BOOL reencrypt;

    int partyCount = Party_GetCurrentCount(param0->party);
    for (int i = 0, count = 0; i < partyCount; i++) {
        mon = Party_GetPokemonBySlotIndex(param0->party, i);
        reencrypt = Pokemon_EnterDecryptionContext(mon);

        if (Pokemon_GetValue(mon, MON_DATA_EGG_EXISTS, NULL) == FALSE && Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL)) {
            count++;
        }

        Pokemon_ExitDecryptionContext(mon, reencrypt);

        if (count >= 2) {
            return FALSE;
        }
    }

    if (ov19_GetPreviewedOrSelectedMonValue(&param0->unk_00, MON_DATA_EGG_EXISTS, NULL)) {
        return FALSE;
    }

    if (ov19_GetPreviewedOrSelectedMonValue(&param0->unk_00, MON_DATA_CURRENT_HP, NULL) == 0) {
        return FALSE;
    }

    return TRUE;
}

static BOOL ov19_CheckReleaseMonValid(UnkStruct_ov19_021D5DF8 *param0, int *destBoxMessageID)
{
    if (ov19_GetPreviewedMonValue(&param0->unk_00, MON_DATA_EGG_EXISTS, NULL)) {
        *destBoxMessageID = BoxText_CantReleaseEgg;
        return FALSE;
    }

    {
        u16 unused = ov19_GetPreviewedMonHeldItem(&param0->unk_00);

        if (Item_IsMail(ov19_GetPreviewedMonHeldItem(&param0->unk_00))) {
            *destBoxMessageID = BoxText_RemoveMail;
            return FALSE;
        }
    }

    if (ov19_GetPreviewedMonValue(&param0->unk_00, MON_DATA_BALL_CAPSULE_ID, NULL)) {
        *destBoxMessageID = BoxText_DetachBallCapsule;
        return FALSE;
    }

    if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
        if (ov19_GetCursorLocation(&param0->unk_00) == CURSOR_IN_PARTY) {
            if (ov19_OnLastAliveMon(param0)) {
                *destBoxMessageID = BoxText_LastMon;
                return FALSE;
            }
        }
    }

    return TRUE;
}

enum ReleaseMonState {
    RELEASE_MON_START,
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

static void ov19_ReleaseMonAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case RELEASE_MON_START: {
        int boxMessageID;

        if (ov19_CheckReleaseMonValid(param0, &boxMessageID)) {
            ov19_SetBoxMessage(&param0->unk_00, BoxText_ReleaseMon);
            BoxMenu_FillYesNo(&(param0->unk_00), 1);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ShowMenu);
            *state = RELEASE_MON_CONFIRM;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_SetBoxMessage(&param0->unk_00, boxMessageID);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6EC0);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = RELEASE_MON_CANNOT_RELEASE;
        }
    } break;

    case RELEASE_MON_CONFIRM:
        if (ov19_CheckAllTasksDone(param0->unk_114) == FALSE) {
            break;
        }

        switch (BoxMenu_GetMenuNavigation(&(param0->unk_00))) {
        case BOX_MENU_NAVIGATION_UP_DOWN:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_NO:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = RELEASE_MON_END;
            break;
        case BOX_MENU_YES:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = RELEASE_MON_RELEASE_ANIMATION;
            break;
        }
        break;
    case RELEASE_MON_RELEASE_ANIMATION:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox)) {
            StringTemplate_SetNickname(param0->MessageVariableBuffer, 0, ov19_GetPreviewedBoxMon(&param0->unk_00));
            ov19_CheckShouldMonReturn(param0);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_IN_CURSOR) {
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PlayReleaseCursorMonAnimation);
                param0->releasedFrom = RELEASED_FROM_CURSOR;
            } else {
                if (ov19_GetCursorLocation(&param0->unk_00) == CURSOR_IN_BOX) {
                    ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PlayReleaseBoxMonAnimation);
                    param0->releasedFrom = RELEASED_FROM_BOX;
                } else {
                    ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PlayReleasePartyMonAnimation);
                    param0->releasedFrom = RELEASED_FROM_PARTY;
                }
            }
            *state = RELEASE_MON_TRY_RELEASE;
        }
        break;
    case RELEASE_MON_TRY_RELEASE:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            if (ov19_CanReleaseMon(param0)) {
                if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_IN_CURSOR) {
                    ov19_RemoveCursorMon(param0);
                } else {
                    ov19_RemoveMonUnderCursor(param0);
                }

                ov19_SetBoxMessage(&param0->unk_00, BoxText_MonReleased);
                *state = RELEASE_MON_CONFIRM_RELEASED;
            } else {
                ov19_SetBoxMessage(&param0->unk_00, BoxText_MonReturned);
                *state = RELEASE_MON_CONFIRM_RETURNED;
            }

            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
        }
        break;
    case RELEASE_MON_CONFIRM_RELEASED:
        if (ov19_CheckAllTasksDone(param0->unk_114) == FALSE) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_SetBoxMessage(&param0->unk_00, BoxText_GoodbyeForever);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = RELEASE_MON_CLOSE_MESSAGE_BOX;
        }
        break;
    case RELEASE_MON_CONFIRM_RETURNED:
        if (ov19_CheckAllTasksDone(param0->unk_114) == FALSE) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_SetBoxMessage(&param0->unk_00, BoxText_MonWasWorried);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = RELEASE_MON_CLOSE_MESSAGE_BOX;
        }
        break;
    case RELEASE_MON_CLOSE_MESSAGE_BOX:
        if (ov19_CheckAllTasksDone(param0->unk_114) == FALSE) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = RELEASE_MON_PREPARE_END_RELEASE;
        }
        break;
    case RELEASE_MON_PREPARE_END_RELEASE:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            if (ov19_CanReleaseMon(param0)) {
                if (param0->releasedFrom == RELEASED_FROM_PARTY) {
                    ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PlayAdjustPartyAnimation);
                }

                ov19_FlagRecordBoxUseInJournal(param0);
            }

            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
            *state = RELEASE_MON_END;
        }
        break;
    case RELEASE_MON_CANNOT_RELEASE:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage) == FALSE) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = RELEASE_MON_END;
        }
        break;
    case RELEASE_MON_END:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

static void ov19_CheckShouldMonReturn(UnkStruct_ov19_021D5DF8 *param0)
{
    ReleaseMon *releaseMon = &(param0->releaseMon);
    int i, releaseBlockingMovesCount;

    releaseMon->boxMon = param0->unk_00.pcMonPreview.mon;

    for (i = 0, releaseBlockingMovesCount = 0; i < (NELEMS(sReleaseBlockingMoves)); i++) {
        releaseMon->hasReleaseBlockingMove[i] = BoxPokemon_HasMove(releaseMon->boxMon, sReleaseBlockingMoves[i]);

        if (releaseMon->hasReleaseBlockingMove[i]) {
            releaseBlockingMovesCount++;
        }
    }

    if (releaseBlockingMovesCount == 0) {
        releaseMon->checkedCanReleaseMon = TRUE;
        releaseMon->canReleaseMon = TRUE;
        return;
    } else {
        releaseMon->checkedCanReleaseMon = FALSE;
        releaseMon->canReleaseMon = FALSE;
        releaseMon->boxID = 0;
        releaseMon->monPosInBox = 0;
        releaseMon->pcBoxes = param0->pcBoxes;
        releaseMon->party = param0->party;
        releaseMon->monHeldInCursor = ov19_GetPreviewMonSource(&param0->unk_00) != PREVIEW_MON_UNDER_CURSOR;

        for (i = 0; i < NELEMS(sReleaseBlockingMoves); i++) {
            releaseMon->monsWithReleaseBlockingMoveCount[i] = 0;
        }

        SysTask_Start(ov19_CheckLastMonWithReleaseBlockingMove, releaseMon, 0);
    }
}

static void ov19_CheckLastMonWithReleaseBlockingMove(SysTask *task, void *releaseMonParam)
{
    ReleaseMon *releaseMon = releaseMonParam;
    BoxPokemon *boxMon;
    int monIndex, i;

    if (releaseMon->boxID < MAX_PC_BOXES) {
        int v4 = releaseMon->monPosInBox + 15; // why + 15?

        if (v4 > MAX_MONS_PER_BOX) {
            v4 = MAX_MONS_PER_BOX;
        }

        for (monIndex = releaseMon->monPosInBox; monIndex < v4; monIndex++) {
            boxMon = PCBoxes_GetBoxMonAt(releaseMon->pcBoxes, releaseMon->boxID, monIndex);

            if (BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES_EXISTS, NULL)) {
                for (i = 0; i < NELEMS(sReleaseBlockingMoves); i++) {
                    if (BoxPokemon_HasMove(boxMon, sReleaseBlockingMoves[i])) {
                        releaseMon->monsWithReleaseBlockingMoveCount[i]++;
                    }
                }
            }
        }

        if (v4 == MAX_MONS_PER_BOX) {
            releaseMon->monPosInBox = 0;
            releaseMon->boxID++;
        } else {
            releaseMon->monPosInBox = v4;
        }
    } else {
        int partyCount = Party_GetCurrentCount(releaseMon->party);

        for (monIndex = 0; monIndex < partyCount; monIndex++) {
            boxMon = (BoxPokemon *)Party_GetPokemonBySlotIndex(releaseMon->party, monIndex);

            for (i = 0; i < NELEMS(sReleaseBlockingMoves); i++) {
                if (BoxPokemon_HasMove(boxMon, sReleaseBlockingMoves[i])) {
                    releaseMon->monsWithReleaseBlockingMoveCount[i]++;
                }
            }
        }

        if (releaseMon->monHeldInCursor) {
            for (i = 0; i < NELEMS(sReleaseBlockingMoves); i++) {
                if (BoxPokemon_HasMove(releaseMon->boxMon, sReleaseBlockingMoves[i])) {
                    releaseMon->monsWithReleaseBlockingMoveCount[i]++;
                }
            }
        }

        releaseMon->canReleaseMon = TRUE;

        for (i = 0; i < NELEMS(sReleaseBlockingMoves); i++) {
            if (releaseMon->monsWithReleaseBlockingMoveCount[i] == 1 && releaseMon->hasReleaseBlockingMove[i] == TRUE) {
                releaseMon->canReleaseMon = FALSE;
                break;
            }
        }

        releaseMon->checkedCanReleaseMon = TRUE;
        SysTask_Done(task);
    }
}

static BOOL BoxPokemon_HasMove(BoxPokemon *boxMon, u16 move)
{
    BOOL hasMove = FALSE;
    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);

    if (BoxPokemon_GetValue(boxMon, MON_DATA_EGG_EXISTS, NULL) == FALSE) {
        for (int i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (BoxPokemon_GetValue(boxMon, MON_DATA_MOVE1 + i, NULL) == move) {
                hasMove = TRUE;
                break;
            }
        }
    }

    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
    return hasMove;
}

BOOL ov19_HasCheckedCanReleaseMon(const UnkStruct_ov19_021D5DF8 *param0)
{
    const ReleaseMon *releaseMon = &(param0->releaseMon);
    return releaseMon->checkedCanReleaseMon;
}

BOOL ov19_CanReleaseMon(const UnkStruct_ov19_021D5DF8 *param0)
{
    const ReleaseMon *releaseMon = &(param0->releaseMon);

    if (releaseMon->checkedCanReleaseMon) {
        return releaseMon->canReleaseMon;
    }

    return FALSE;
}

enum RenameBoxStates {
    RENAME_BOX_START,
    RENAME_BOX_LAUNCH_TEXT_INPUT_APP,
    RENAME_BOX_RETURN_TO_BOX
};

static void ov19_RenameBoxAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case RENAME_BOX_START:
        ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack2);
        (*state)++;
        break;
    case RENAME_BOX_LAUNCH_TEXT_INPUT_APP:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack2)) {
            BoxGraphics_Free(param0->unk_114);
            Heap_Destroy(HEAP_ID_BOX_GRAPHICS);
            PCBoxes_BufferBoxName(param0->pcBoxes, PCBoxes_GetCurrentBoxID(param0->pcBoxes), param0->unk_128->textInputStr);
            param0->ApplicationManager = ApplicationManager_New(&gKeyboardAppTemplate, param0->unk_128, HEAP_ID_BOX_DATA);
            (*state)++;
        }
        break;
    case RENAME_BOX_RETURN_TO_BOX:
        if (ApplicationManager_Exec(param0->ApplicationManager)) {
            u32 boxID = PCBoxes_GetCurrentBoxID(param0->pcBoxes);

            ApplicationManager_Free(param0->ApplicationManager);
            Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BOX_GRAPHICS, 245760);
            PCBoxes_RenameBox(param0->pcBoxes, boxID, param0->unk_128->textInputStr);

            PCBoxes_LoadCustomization(param0->pcBoxes, &param0->unk_00.customization);
            BoxGraphics_Load(&(param0->unk_114), &param0->unk_00, param0);
            ov19_RegisterBoxApplicationAction(param0, ov19_ReturnToBoxFade1Action);
        }
        break;
    }
}

enum SummaryState {
    SUMMARY_START,
    SUMMARY_LAUNCH,
    SUMMARY_RETURN_TO_BOX,
};

static void ov19_OpenSummaryAction(UnkStruct_ov19_021D5DF8 *param0, u32 *openSummaryState)
{
    switch (*openSummaryState) {
    case SUMMARY_START:
        ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack2);
        (*openSummaryState)++;
        break;
    case SUMMARY_LAUNCH:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack2)) {
            BoxGraphics_Free(param0->unk_114);
            Heap_Destroy(HEAP_ID_BOX_GRAPHICS);
            ov19_InitSummary(param0);
            param0->ApplicationManager = ApplicationManager_New(&gPokemonSummaryScreenApp, &(param0->monSummary), HEAP_ID_BOX_DATA);
            (*openSummaryState)++;
        }
        break;
    case SUMMARY_RETURN_TO_BOX:
        if (ApplicationManager_Exec(param0->ApplicationManager)) {
            u32 unused = PCBoxes_GetCurrentBoxID(param0->pcBoxes);

            ApplicationManager_Free(param0->ApplicationManager);
            Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BOX_GRAPHICS, 245760);

            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                ov19_SetCursorPosToSummaryMonPos(&(param0->unk_00), param0);
            }

            BoxGraphics_Load(&(param0->unk_114), &param0->unk_00, param0);
            ov19_RegisterBoxApplicationAction(param0, ov19_ReturnToBoxFade1Action);
            ov19_FlagRecordBoxUseInJournal(param0);
        }
    }
}

static void ov19_SetCursorPosToSummaryMonPos(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1)
{
    BoxCursor *cursor = &param0->cursor;

    switch (cursor->cursorLocation) {
    case CURSOR_IN_BOX:
        cursor->posInBox = param1->monSummary.monIndex;
        cursor->boxCol = cursor->posInBox % MAX_PC_COLS;
        cursor->boxRow = cursor->posInBox / MAX_PC_COLS;
        break;
    case CURSOR_IN_PARTY:
        cursor->posInParty = param1->monSummary.monIndex;
        break;
    default:
        return;
    }

    ov19_TryPreviewCursorMon(param1);
}

enum GiveItemFromBag {
    GIVE_FROM_BAG_START,
    GIVE_FROM_BAG_INIT_BAG_APP,
    GIVE_FROM_BAG_SELECT_ITEM,
    GIVE_FROM_BAG_RETURN_TO_BOX,
    GIVE_FROM_BAG_DISPLAY_MESSAGE,
    GIVE_FROM_BAG_CONFIRM_MESSAGE,
    GIVE_FROM_BAG_END
};

static void ov19_GiveItemFromBagAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    FS_EXTERN_OVERLAY(overlay84);

    static const u8 bagPockets[] = {
        POCKET_ITEMS,
        POCKET_MEDICINE,
        POCKET_BALLS,
        POCKET_TMHMS,
        POCKET_BERRIES,
        POCKET_BATTLE_ITEMS,
        POCKET_KEY_ITEMS,
        -1
    };
    static u32 item;

    switch (*state) {
    case GIVE_FROM_BAG_START:
        ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack2);
        (*state)++;
        break;
    case GIVE_FROM_BAG_INIT_BAG_APP:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack2)) {
            BoxGraphics_Free(param0->unk_114);
            Heap_Destroy(HEAP_ID_BOX_GRAPHICS);

            Bag *bag = SaveData_GetBag(param0->saveData);
            param0->unk_214 = sub_0207D824(bag, bagPockets, HEAP_ID_BOX_DATA);
            sub_0207CB2C(param0->unk_214, param0->saveData, 1, NULL);
            Overlay_LoadByID(FS_OVERLAY_ID(overlay84), 2);
            param0->ApplicationManager = ApplicationManager_New(&Unk_ov84_02241130, param0->unk_214, HEAP_ID_BOX_DATA);
            (*state)++;
        }
        break;
    case GIVE_FROM_BAG_SELECT_ITEM:
        if (ApplicationManager_Exec(param0->ApplicationManager)) {
            item = sub_0207CB94((UnkStruct_0207CB08 *)(param0->unk_214));

            ApplicationManager_Free(param0->ApplicationManager);
            Heap_Free(param0->unk_214);
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay84));

            if (item == ITEM_GRISEOUS_ORB && BoxPokemon_GetValue(param0->unk_00.pcMonPreview.mon, MON_DATA_SPECIES, NULL) != SPECIES_GIRATINA) {
                (void)0;
            } else if (item != ITEM_NONE) {
                Bag_TryRemoveItem(SaveData_GetBag(param0->saveData), item, 1, HEAP_ID_BOX_DATA);
                ov19_GiveItemToSelectedMon(&param0->unk_00, item, param0);
                ov19_FlagRecordBoxUseInJournal(param0);
            }

            Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BOX_GRAPHICS, 245760);
            BoxGraphics_Load(&(param0->unk_114), &param0->unk_00, param0);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6694);
            (*state)++;
        }
        break;
    case GIVE_FROM_BAG_RETURN_TO_BOX:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_ov19_021D6694)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack1);
            (*state)++;
        }
        break;
    case GIVE_FROM_BAG_DISPLAY_MESSAGE:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack1)) {
            if (item == ITEM_NONE) {
                ov19_ClearBoxApplicationAction(param0);
            } else if (item == ITEM_GRISEOUS_ORB && BoxPokemon_GetValue(param0->unk_00.pcMonPreview.mon, MON_DATA_SPECIES, NULL) != SPECIES_GIRATINA) {
                StringTemplate_SetItemName(param0->MessageVariableBuffer, 0, item);
                ov19_SetBoxMessage(&param0->unk_00, BoxText_MonCantHoldItem);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                (*state)++;
            } else {
                StringTemplate_SetItemName(param0->MessageVariableBuffer, 0, item);
                ov19_SetBoxMessage(&param0->unk_00, BoxText_HoldingItem);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                (*state)++;
            }
        }
        break;
    case GIVE_FROM_BAG_CONFIRM_MESSAGE:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage)) {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                (*state)++;
            }
        }
        break;
    case GIVE_FROM_BAG_END:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

enum ItemHeldState {
    ITEM_HELD_START,
    ITEM_HELD_YES_NO,
    ITEM_HELD_ADD_TO_BAG,
    ITEM_HELD_DISPLAY_TOOK_ITEM_MESSAGE,
    ITEM_HELD_CONFIRM_MESSAGE,
    ITEM_HELD_END
};

static void ov19_MonItemHeldAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    static u32 item;

    switch (*state) {
    case ITEM_HELD_START:
        item = ov19_GetPreviewedMonHeldItem(&param0->unk_00);

        if (Item_IsMail(item)) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_CantTakeMail);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = ITEM_HELD_CONFIRM_MESSAGE;
        } else {
            StringTemplate_SetItemName(param0->MessageVariableBuffer, 0, item);
            BoxMenu_FillYesNo(&(param0->unk_00), 0);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_ConfirmTakeItem);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ShowMenu);
            *state = ITEM_HELD_YES_NO;
        }
        break;
    case ITEM_HELD_YES_NO:
        if (ov19_CheckAllTasksDone(param0->unk_114) == FALSE) {
            break;
        }

        switch (BoxMenu_GetMenuNavigation(&(param0->unk_00))) {
        case BOX_MENU_NAVIGATION_UP_DOWN:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_NO:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = ITEM_HELD_END;
            break;
        case BOX_MENU_YES:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6EC0);
            *state = ITEM_HELD_ADD_TO_BAG;
            break;
        }
        break;
    case ITEM_HELD_ADD_TO_BAG:
        if (Bag_TryAddItem(SaveData_GetBag(param0->saveData), item, 1, HEAP_ID_BOX_DATA)) {
            ov19_GiveItemToSelectedMon(&param0->unk_00, ITEM_NONE, param0);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6D88);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
            *state = ITEM_HELD_DISPLAY_TOOK_ITEM_MESSAGE;
        } else {
            ov19_SetBoxMessage(&param0->unk_00, BoxText_BagFull);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = ITEM_HELD_CONFIRM_MESSAGE;
        }
        break;
    case ITEM_HELD_DISPLAY_TOOK_ITEM_MESSAGE:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_SetBoxMessage(&param0->unk_00, BoxText_TookItem);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = ITEM_HELD_CONFIRM_MESSAGE;
        }
        break;
    case ITEM_HELD_CONFIRM_MESSAGE:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage)) {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                *state = ITEM_HELD_END;
            }
        }
        break;
    case ITEM_HELD_END:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

enum PutAwayItemState {
    PUT_AWAY_ITEM_START,
    PUT_AWAY_ITEM_YES_NO,
    PUT_AWAY_ITEM_ADD_TO_BAG,
    PUT_AWAY_ITEM_ANIMATE_ITEM_AWAY,
    PUT_AWAY_ITEM_SHOW_STORED_MESSAGE,
    PUT_AWAY_ITEM_CONFIRM_MESSAGE,
    PUT_AWAY_ITEM_END
};

static void ov19_PutAwayItemAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    static u32 item;

    switch (*state) {
    case PUT_AWAY_ITEM_START:
        item = ov19_GetCursorOrPreviewedItem(&param0->unk_00);

        if (Item_IsMail(item)) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_CantTakeMail);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = PUT_AWAY_ITEM_CONFIRM_MESSAGE;
        } else {
            StringTemplate_SetItemName(param0->MessageVariableBuffer, 0, item);
            ov19_SetBoxMessage(&param0->unk_00, BoxText_PutAwayItem);
            BoxMenu_FillYesNo(&(param0->unk_00), 0);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ShowMenu);
            *state = PUT_AWAY_ITEM_YES_NO;
        }
        break;
    case PUT_AWAY_ITEM_YES_NO:
        if (ov19_CheckAllTasksDone(param0->unk_114) == FALSE) {
            break;
        }

        switch (BoxMenu_GetMenuNavigation(&(param0->unk_00))) {
        case BOX_MENU_NAVIGATION_UP_DOWN:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_NO:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = PUT_AWAY_ITEM_END;
            break;
        case BOX_MENU_YES:
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = PUT_AWAY_ITEM_ADD_TO_BAG;
            break;
        }
        break;
    case PUT_AWAY_ITEM_ADD_TO_BAG:
        if (Bag_TryAddItem(SaveData_GetBag(param0->saveData), item, 1, HEAP_ID_BOX_DATA)) {
            if (ov19_GetCursorItem(&param0->unk_00) != ITEM_NONE) {
                ov19_RemoveCursorItem(&param0->unk_00);
                *state = PUT_AWAY_ITEM_SHOW_STORED_MESSAGE;
            } else {
                ov19_GiveItemToSelectedMon(&param0->unk_00, ITEM_NONE, param0);
                *state = PUT_AWAY_ITEM_ANIMATE_ITEM_AWAY;
            }

            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ItemShrinkToNothing);
        } else {
            ov19_SetBoxMessage(&param0->unk_00, BoxText_BagFull);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = PUT_AWAY_ITEM_CONFIRM_MESSAGE;
        }
        break;
    case PUT_AWAY_ITEM_ANIMATE_ITEM_AWAY:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ItemShrinkToNothing)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6D88);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
            *state = PUT_AWAY_ITEM_SHOW_STORED_MESSAGE;
        }
        break;
    case PUT_AWAY_ITEM_SHOW_STORED_MESSAGE:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_SetBoxMessage(&param0->unk_00, BoxText_PlaceItemInBag);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = PUT_AWAY_ITEM_CONFIRM_MESSAGE;
        }
        break;
    case PUT_AWAY_ITEM_CONFIRM_MESSAGE:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage)) {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                *state = PUT_AWAY_ITEM_END;
            }
        }
        break;
    case PUT_AWAY_ITEM_END:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

enum ItemInfoState {
    ITEM_INFO_START,
    ITEM_INFO_CLOSE_MENU,
    ITEM_INFO_DISPLAY,
    ITEM_INFO_CONFIRM,
    ITEM_INFO_END
};

static void ov19_DisplayItemInfoAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case ITEM_INFO_START:
        ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox);
        (*state)++;
        break;
    case ITEM_INFO_CLOSE_MENU:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_CloseMessageBox)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayItemInfo);
            (*state)++;
        }
        break;
    case ITEM_INFO_DISPLAY:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_DisplayItemInfo)) {
            (*state)++;
        }
        break;
    case ITEM_INFO_CONFIRM:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B | PAD_PLUS_KEY_MASK)) {
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_CloseItemInfo);
            (*state)++;
        }
        break;
    case ITEM_INFO_END:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_CloseItemInfo)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

static void BoxSelectorPopup_Init(UnkStruct_ov19_021D5DF8 *param0, u32 boxID, u32 boxMessageID)
{
    param0->boxSelector.state = BOX_SELECTOR_START;
    param0->boxSelector.boxID = boxID;
    param0->boxSelector.boxMessageID = boxMessageID;
    param0->boxSelector.hasReset = FALSE;
}

static void BoxSelectorPopup_Reset(UnkStruct_ov19_021D5DF8 *param0)
{
    param0->boxSelector.state = BOX_SELECTOR_START;
    param0->boxSelector.hasReset = TRUE;
}

static BOOL ov19_TrySelectBoxFromPopup(UnkStruct_ov19_021D5DF8 *param0)
{
    BoxSelectorPopup *boxSelector = &(param0->boxSelector);

    switch (boxSelector->state) {
    case BOX_SELECTOR_START:
        if (boxSelector->hasReset == TRUE) {
            boxSelector->state = BOX_SELECTOR_DISPLAY_MESSAGE_START;
            break;
        }

        if (boxSelector->boxID == -1) {
            boxSelector->boxID = 0;
        }

        ov19_SetBoxSelectionBoxID(&param0->unk_00, boxSelector->boxID);
        ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ShowBoxSelectionPopup);
        boxSelector->state = BOX_SELECTOR_DISPLAY_MESSAGE_START;
        break;
    case BOX_SELECTOR_DISPLAY_MESSAGE_START:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ShowBoxSelectionPopup)) {
            ov19_SetBoxMessage(&param0->unk_00, boxSelector->boxMessageID);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            boxSelector->state = BOX_SELECTOR_DISPLAY_MESSAGE_DONE;
        }
        break;
    case BOX_SELECTOR_DISPLAY_MESSAGE_DONE:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_DisplayBoxMessage) == FALSE) {
            break;
        }

        boxSelector->state = BOX_SELECTOR_WAIT_FOR_USER;
    case BOX_SELECTOR_WAIT_FOR_USER:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ScrollBoxSelectionPopup) == FALSE) {
            break;
        }

        if (JOY_NEW(PAD_KEY_LEFT | PAD_BUTTON_L)) {
            boxSelector->boxID--;

            if (boxSelector->boxID < 0) {
                boxSelector->boxID = MAX_PC_BOXES - 1;
            }

            ov19_SetBoxSelectionBoxID(&param0->unk_00, boxSelector->boxID);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ScrollBoxSelectionPopup);
            break;
        }

        if (JOY_NEW(PAD_KEY_RIGHT | PAD_BUTTON_R)) {
            if (++(boxSelector->boxID) >= MAX_PC_BOXES) {
                boxSelector->boxID = 0;
            }

            ov19_SetBoxSelectionBoxID(&param0->unk_00, boxSelector->boxID);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ScrollBoxSelectionPopup);
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            return TRUE;
        }

        if (JOY_NEW(PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            boxSelector->boxID = -1;
            return TRUE;
        }
        break;
    }

    return FALSE;
}

enum MoveBoxState {
    MOVE_BOX_START,
    MOVE_BOX_WAIT_FOR_ANIMATION,
    MOVE_BOX_END
};

static void ov19_ChangeToNewBoxAction(UnkStruct_ov19_021D5DF8 *param0, u32 *state)
{
    switch (*state) {
    case MOVE_BOX_START:
        PCBoxes_SetCurrentBox(param0->pcBoxes, ov19_GetCurrentBox(&param0->unk_00));
        ov19_TryPreviewCursorMon(param0);
        ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ChangeToNewBox);
        (*state)++;
        break;
    case MOVE_BOX_WAIT_FOR_ANIMATION:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ChangeToNewBox)) {
            if (ov19_GetCursorLocation(&param0->unk_00) == CURSOR_IN_BOX && ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
                (*state)++;
            } else {
                ov19_ClearBoxApplicationAction(param0);
            }
        }
        break;
    case MOVE_BOX_END:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_PreviewMon)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

static void ov19_021D4640(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        ov19_021D5D94(&param0->unk_00, 1);
        ov19_021D5D9C(&(param0->unk_00), ov19_GetCurrentBox(&param0->unk_00));
        ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D7278);
        TouchDial_Init(&(param0->touchDial), 0, 192, 56, 88);
        param0->unk_204 = 0;
        param0->unk_208 = 1;
        (*param1) = 1;
        break;
    case 1:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_ov19_021D7278) == FALSE) {
            break;
        }

        if (ov19_TryPressTouchScreenButton(param0)) {
            if (param0->touchScreenButtonPressed == 1) {
                if (ov19_GetBoxMode(&param0->unk_00) != PC_MODE_MOVE_ITEMS) {
                    ov19_RegisterBoxApplicationAction(param0, ov19_021D4938);
                } else {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;
            }
        }

        if (JOY_NEW(PAD_PLUS_KEY_MASK | PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D5D94(&(param0->unk_00), 0);
            ov19_021D5D9C(&(param0->unk_00), ov19_GetCurrentBox(&param0->unk_00));
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D7278);
            (*param1) = 5;
            break;
        }

        if (param0->unk_204) {
            if (param0->unk_208) {
                if (++(param0->unk_200) > 20) {
                    u32 v0 = ov19_021D5EB8(&param0->unk_00);

                    ov19_LoadCustomizationsFor(&param0->unk_00, v0);
                    PCBoxes_SetCurrentBox(param0->pcBoxes, v0);
                    ov19_TryPreviewCursorMon(param0);

                    if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR) {
                        ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D6A1C);
                    }

                    ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_ChangeToNewBox);
                    param0->unk_204 = 0;
                    param0->unk_200 = 0;
                    (*param1) = 3;
                    break;
                }
            }
        }

        switch (TouchDial_HandleAction(&param0->touchDial)) {
        case TOUCH_DIAL_INITIAL_TOUCH:
            param0->unk_1FC = ov19_021D5EB8(&param0->unk_00);
            param0->unk_204 = 0;
            param0->unk_20C = 0;
            param0->unk_208 = 0;
            break;
        case TOUCH_DIAL_SCROLLING: {
            int v1;

            v1 = TouchDial_CalcScrollAmount(&param0->touchDial);

            if (v1 != param0->unk_20C) {
                int v2, v3;

                v2 = v1 - param0->unk_20C;
                v3 = ov19_021D5EB8(&param0->unk_00) + v2;

                if (v3 < 0) {
                    v3 += 18;
                } else if (v3 >= 18) {
                    v3 -= 18;
                }

                param0->unk_20C = v1;
                ov19_021D5D9C(&(param0->unk_00), v3);
                ov19_021D5DAC(&(param0->unk_00), v2);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D72E8);
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                (*param1) = 2;
            }
        } break;
        case TOUCH_DIAL_END_SCROLL: {
            int v4, v5;

            v4 = ov19_GetCurrentBox(&param0->unk_00);
            v5 = ov19_021D5EB8(&param0->unk_00);

            param0->unk_204 = (v4 != v5);
            param0->unk_200 = 0;
            param0->unk_208 = 1;
        } break;
        }
        break;
    case 2:
        if (param0->unk_208 == 0) {
            if (TouchDial_HandleAction(&param0->touchDial) == TOUCH_DIAL_END_SCROLL) {
                int v6, v7;

                v6 = ov19_GetCurrentBox(&param0->unk_00);
                v7 = ov19_021D5EB8(&param0->unk_00);

                param0->unk_204 = (v6 != v7);
                param0->unk_200 = 0;
                param0->unk_208 = 1;
            }
        }

        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_ov19_021D72E8)) {
            (*param1) = 1;
        }
        break;
    case 3:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_ChangeToNewBox)) {
            if (ov19_GetPreviewMonSource(&param0->unk_00) == PREVIEW_MON_UNDER_CURSOR && ov19_IsMonUnderCursor(&param0->unk_00)) {
                ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
                (*param1) = 4;
            } else {
                (*param1) = 1;
            }
        }
        break;
    case 4:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_BoxGraphics_PreviewMon)) {
            (*param1) = 1;
        }
        break;
    case 5:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

static void ov19_021D4938(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        ov19_021D5D94(&param0->unk_00, 2);
        ov19_SetMarkingsButtonsScrollOffset(&(param0->unk_00), 0);
        ov19_021D5D9C(&(param0->unk_00), 0);
        ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D7278);
        TouchDial_Init(&(param0->touchDial), 255, 192, 56, 88);
        param0->unk_204 = 0;
        param0->unk_208 = 1;
        (*param1) = 1;
        break;
    case 1:
        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_ov19_021D7278) == FALSE) {
            break;
        }

        if (ov19_TryPressTouchScreenButton(param0)) {
            if (param0->touchScreenButtonPressed == 0) {
                ov19_RegisterBoxApplicationAction(param0, ov19_021D4640);
                break;
            }
        }

        if (JOY_NEW(PAD_PLUS_KEY_MASK | PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D5D94(&param0->unk_00, 0);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D7278);
            (*param1) = 3;
        }

        if (ov19_021D4B88(param0)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D7324);
            ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D7248);
            break;
        }

        switch (TouchDial_HandleAction(&param0->touchDial)) {
        case TOUCH_DIAL_INITIAL_TOUCH:
            param0->unk_1FC = ov19_021D5EB8(&param0->unk_00);
            param0->unk_204 = 0;
            param0->unk_20C = 0;
            param0->unk_208 = 0;
            break;
        case TOUCH_DIAL_SCROLLING: {
            int v0;

            v0 = TouchDial_CalcScrollAmount(&param0->touchDial);

            if (v0 != param0->unk_20C) {
                int v1, offset;

                v1 = v0 - param0->unk_20C;
                offset = ov19_021D5EB8(&param0->unk_00) + v1;

                if (offset < 0) {
                    offset += 8;
                } else if (offset >= 8) {
                    offset -= 8;
                }

                param0->unk_20C = v0;

                ov19_021D5D9C(&(param0->unk_00), offset);
                ov19_SetMarkingsButtonsScrollOffset(&(param0->unk_00), offset);
                ov19_021D5DAC(&(param0->unk_00), v1);
                ov19_BoxTaskHandler(param0->unk_114, FUNC_ov19_021D72E8);
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                (*param1) = 2;
            }
        } break;
        case TOUCH_DIAL_END_SCROLL: {
            int v3, v4;

            v3 = ov19_GetCurrentBox(&param0->unk_00);
            v4 = ov19_021D5EB8(&param0->unk_00);

            param0->unk_204 = (v3 != v4);
            param0->unk_200 = 0;
            param0->unk_208 = 1;
        } break;
        }
        break;
    case 2:
        if (param0->unk_208 == 0) {
            if (TouchDial_HandleAction(&param0->touchDial) == TOUCH_DIAL_END_SCROLL) {
                int v5, v6;

                v5 = ov19_GetCurrentBox(&param0->unk_00);
                v6 = ov19_021D5EB8(&param0->unk_00);

                param0->unk_204 = (v5 != v6);
                param0->unk_200 = 0;
                param0->unk_208 = 1;
            }
        }

        if (ov19_IsSysTaskDone(param0->unk_114, FUNC_ov19_021D72E8)) {
            (*param1) = 1;
        }
        break;
    case 3:
        if (ov19_CheckAllTasksDone(param0->unk_114)) {
            ov19_ClearBoxApplicationAction(param0);
        }
        break;
    }
}

static BOOL ov19_021D4B88(UnkStruct_ov19_021D5DF8 *param0)
{
    param0->unk_188 = 8;

    TouchScreenActions_HandleAction(param0->markingsButtonsAction);

    if (param0->unk_188 != 8) {
        return TRUE;
    }

    return FALSE;
}

static void ov19_BoxTouchScreenMarkingsButtonHandler(u32 buttonIndex, enum TouchScreenButtonState buttonTouchState, void *context)
{
    UnkStruct_ov19_021D5DF8 *v0 = (UnkStruct_ov19_021D5DF8 *)context;

    if (v0->unk_188 == 8) {
        if (buttonTouchState == TOUCH_BUTTON_PRESSED) {
            u32 mask = ov19_GetMarkingsButtonsScrollOffset(&v0->unk_00);
            mask += buttonIndex;

            if (mask >= 8) {
                mask -= 8;
            }

            ov19_SetMonSpriteTransparencyMask(&v0->unk_00, mask);
            v0->unk_188 = buttonIndex;
        }
    }
}

static void ov19_021D4BE0(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_02042434 *param1)
{
    param0->pcBoxes = SaveData_GetPCBoxes(param1->saveData);
    param0->saveData = param1->saveData;
    param0->party = SaveData_GetParty(param1->saveData);
    param0->options = SaveData_GetOptions(param1->saveData);
    param0->unk_118 = param1;
    param1->recordBoxUseInJournal = FALSE;
    param0->boxMessagesLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BOX_MESSAGES, HEAP_ID_BOX_DATA);
    param0->speciesNameLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_BOX_DATA);
    param0->natureNameLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_NATURE_NAMES, HEAP_ID_BOX_DATA);
    param0->abilityNameLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ABILITY_NAMES, HEAP_ID_BOX_DATA);
    param0->MessageVariableBuffer = StringTemplate_Default(HEAP_ID_BOX_DATA);
    param0->mon = Heap_AllocFromHeap(HEAP_ID_BOX_DATA, Pokemon_StructSize());

    GF_ASSERT(param0->MessageVariableBuffer);
    param0->unk_128 = KeyboardArgs_Init(HEAP_ID_BOX_DATA, 2, 0, 8, param0->options);

    if (param1->boxMode != PC_MODE_COMPARE) {
        param0->mainBoxAndCompareButtonsAction = TouchScreenActions_RegisterHandler(sMainPcButtons, NELEMS(sMainPcButtons), ov19_BoxTouchScreenButtonHandler, param0, HEAP_ID_BOX_DATA);
    } else {
        param0->mainBoxAndCompareButtonsAction = TouchScreenActions_RegisterHandler(sComparePokemonButtons, NELEMS(sComparePokemonButtons), ov19_BoxTouchScreenButtonHandler, param0, HEAP_ID_BOX_DATA);
    }

    param0->markingsButtonsAction = TouchScreenActions_RegisterHandler(sPokemonMarkingsButtons, NELEMS(sPokemonMarkingsButtons), ov19_BoxTouchScreenMarkingsButtonHandler, param0, HEAP_ID_BOX_DATA);
    param0->unk_00.pcBoxes = param0->pcBoxes;
    param0->unk_00.party = param0->party;
    param0->unk_00.unk_110 = 0;
    param0->unk_00.cursorItem = ITEM_NONE;

    BoxSettings_Init(&(param0->unk_00.boxSettings), param1->boxMode);
    PCMonPreviewInit(&(param0->unk_00.pcMonPreview));
    PCBoxes_InitCustomization(param0->pcBoxes, &(param0->unk_00.customization));
    ov19_PCCompareMonsInit(&(param0->unk_00.unk_A4));
    ov19_InitCursor(param0);
    ov19_InitMonSelection(&(param0->unk_00.selection));
    ov19_021D4F34(&(param0->unk_00.unk_9C));
}

static void ov19_021D4D58(UnkStruct_ov19_021D5DF8 *param0)
{
    TouchScreenActions_Free(param0->markingsButtonsAction);
    TouchScreenActions_Free(param0->mainBoxAndCompareButtonsAction);

    if (param0->mon) {
        Heap_Free(param0->mon);
    }

    StringTemplate_Free(param0->MessageVariableBuffer);
    MessageLoader_Free(param0->boxMessagesLoader);
    MessageLoader_Free(param0->speciesNameLoader);
    MessageLoader_Free(param0->natureNameLoader);
    MessageLoader_Free(param0->abilityNameLoader);
    KeyboardArgs_Free(param0->unk_128);

    PCMonPreviewFree(&(param0->unk_00.pcMonPreview));
    ov19_MonSelectionFree(&(param0->unk_00.selection));
    Customization_Free(&(param0->unk_00.customization));
    ov19_PCCompareMonsFree(&(param0->unk_00.unk_A4));

    Heap_Free(param0);
}

static void BoxSettings_Init(BoxSettings *boxSettings, enum BoxMode boxMode)
{
    boxSettings->boxMode = boxMode;
    boxSettings->isCursorFastMode = FALSE;
    boxSettings->monSpriteTransparencyMask = 0;
}

static void ov19_InitCursor(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D4DF0 *v0 = &(param0->unk_00);
    BoxCursor *cursor = &(v0->cursor);

    ov19_SetCursorBoxLocation(v0, 0, 0);

    cursor->posInParty = 0;
    cursor->prevCursorLocation = CURSOR_IN_PARTY;

    switch (v0->boxSettings.boxMode) {
    case PC_MODE_DEPOSIT:
        cursor->cursorLocation = CURSOR_IN_PARTY;
        break;
    case PC_MODE_COMPARE:
        cursor->cursorLocation = CURSOR_ON_BOX_HEADER;
        break;
    default:
        cursor->cursorLocation = CURSOR_IN_BOX;
    }

    cursor->previewMonSource = PREVIEW_MON_UNDER_CURSOR;
    ov19_TryPreviewCursorMon(param0);
}

static void ov19_InitMonSelection(BoxMonSelection *selection)
{
    selection->boxMon = Heap_AllocFromHeap(HEAP_ID_BOX_DATA, MAX_MONS_PER_BOX * BoxPokemon_GetStructSize());
    selection->selectedMonCount = 0;
    selection->cursorMonIsPartyMon = FALSE;
}

static void ov19_MonSelectionFree(BoxMonSelection *selection)
{
    Heap_Free(selection->boxMon);
}

static void PCBoxes_InitCustomization(PCBoxes *pcBoxes, BoxCustomization *customization)
{
    customization->boxID = PCBoxes_GetCurrentBoxID(pcBoxes);
    customization->name = Strbuf_Init(PC_BOX_NAME_BUFFER_LEN, HEAP_ID_BOX_DATA);
    PCBoxes_LoadCustomization(pcBoxes, customization);
}

static void Customization_Free(BoxCustomization *customization)
{
    Strbuf_Free(customization->name);
}

static void PCMonPreviewInit(PCMonPreview *param0)
{
    param0->nickname = Strbuf_Init(12, HEAP_ID_BOX_DATA);
    param0->speciesName = Strbuf_Init(12, HEAP_ID_BOX_DATA);
    param0->heldItemName = Strbuf_Init(18, HEAP_ID_BOX_DATA);
    param0->nature = Strbuf_Init(12, HEAP_ID_BOX_DATA);
    param0->ability = Strbuf_Init(16, HEAP_ID_BOX_DATA);
}

static void PCMonPreviewFree(PCMonPreview *param0)
{
    Strbuf_Free(param0->nickname);
    Strbuf_Free(param0->speciesName);
    Strbuf_Free(param0->heldItemName);
    Strbuf_Free(param0->nature);
    Strbuf_Free(param0->ability);
}

static void ov19_PCCompareMonsInit(UnkStruct_ov19_021D4EE4 *param0)
{
    param0->compareMonSlot = 0;
    param0->unk_01 = 0;
    param0->compareButtonAnimationPressed = FALSE;

    for (int i = 0; i < 2; i++) {
        param0->unk_02[i] = 0;
        param0->compareMons[i].monName = Strbuf_Init(12, HEAP_ID_BOX_DATA);
        param0->compareMons[i].nature = Strbuf_Init(12, HEAP_ID_BOX_DATA);
    }
}

static void ov19_PCCompareMonsFree(UnkStruct_ov19_021D4EE4 *param0)
{
    for (int i = 0; i < 2; i++) {
        Strbuf_Free(param0->compareMons[i].monName);
        Strbuf_Free(param0->compareMons[i].nature);
    }
}

static void ov19_021D4F34(UnkStruct_ov19_021D4F34 *param0)
{
    param0->unk_00 = 0;
    param0->unk_02 = 0;
    param0->markingsButtonsScrollOffset = 0;
    param0->unk_04 = 0;
}

static void PCBoxes_LoadCustomization(const PCBoxes *pcBoxes, BoxCustomization *customization)
{
    customization->wallpaper = PCBoxes_GetWallpaper(pcBoxes, customization->boxID);
    PCBoxes_BufferBoxName(pcBoxes, customization->boxID, customization->name);
}

static void ov19_LoadWallpaper(UnkStruct_ov19_021D4DF0 *param0, PCBoxes *pcBoxes)
{
    BoxCustomization *customization = &(param0->customization);
    customization->wallpaper = PCBoxes_GetWallpaper(pcBoxes, customization->boxID);
}

static BOOL ov19_TryMoveCursorFromUserInput(u32 heldKeys, UnkStruct_ov19_021D5DF8 *param1)
{
    BOOL cursorMoved = FALSE;

    do {
        if (heldKeys & PAD_KEY_LEFT) {
            cursorMoved = ov19_TryMoveCursor(&(param1->unk_00), -1, 0);
            break;
        }

        if (heldKeys & PAD_KEY_RIGHT) {
            cursorMoved = ov19_TryMoveCursor(&(param1->unk_00), 1, 0);
            break;
        }

        if (heldKeys & PAD_KEY_UP) {
            cursorMoved = ov19_TryMoveCursor(&(param1->unk_00), 0, -1);
            break;
        }

        if (heldKeys & PAD_KEY_DOWN) {
            cursorMoved = ov19_TryMoveCursor(&(param1->unk_00), 0, 1);
            break;
        }
    } while (FALSE);

    if (cursorMoved == TRUE) {
        ov19_TryPreviewCursorMon(param1);
    }

    return cursorMoved;
}

static BOOL ov19_TryMoveCursor(UnkStruct_ov19_021D4DF0 *param0, int colChange, int rowChange)
{
    BoxCursor *cursor = &param0->cursor;

    switch (cursor->cursorLocation) {
    case CURSOR_IN_BOX:
        if (colChange != 0) {
            int newCol = cursor->boxCol += colChange;

            if (newCol < 0) {
                newCol = MAX_PC_COLS - 1;
            } else if (newCol >= MAX_PC_COLS) {
                newCol = 0;
            }

            ov19_SetCursorBoxLocation(param0, newCol, cursor->boxRow);

            return TRUE;
        } else if (rowChange != 0) {
            int newRow = cursor->boxRow + rowChange;

            if (newRow < 0) {
                newRow = 0;
                cursor->cursorLocation = CURSOR_ON_BOX_HEADER;
            } else if (newRow > 4) {
                newRow = 4;
                cursor->cursorLocation = cursor->boxCol == MAX_PC_COLS - 1 ? CURSOR_ON_CLOSE_BUTTON : CURSOR_ON_PARTY_BUTTON;
            }

            ov19_SetCursorBoxLocation(param0, cursor->boxCol, newRow);
            return TRUE;
        }
        break;

    case CURSOR_ON_BOX_HEADER:
        if (rowChange > 0) {
            cursor->cursorLocation = CURSOR_IN_BOX;
            ov19_SetCursorBoxLocation(param0, cursor->boxCol, 0);
            return TRUE;
        } else if (rowChange < 0) {
            cursor->cursorLocation = cursor->boxCol == MAX_PC_COLS - 1 ? CURSOR_ON_CLOSE_BUTTON : CURSOR_ON_PARTY_BUTTON;
            return TRUE;
        }
        break;
    case CURSOR_ON_CLOSE_BUTTON:
        if (rowChange < 0) {
            cursor->cursorLocation = CURSOR_IN_BOX;
            ov19_SetCursorBoxLocation(param0, cursor->boxCol, 4);
            return TRUE;
        } else if (rowChange > 0) {
            cursor->cursorLocation = CURSOR_ON_BOX_HEADER;
            return TRUE;
        } else if (colChange != 0) {
            cursor->cursorLocation = CURSOR_ON_PARTY_BUTTON;
            return TRUE;
        }
        break;
    case CURSOR_ON_PARTY_BUTTON:
        if (rowChange < 0) {
            cursor->cursorLocation = CURSOR_IN_BOX;
            ov19_SetCursorBoxLocation(param0, cursor->boxCol, 4);
            return TRUE;
        }

        if (rowChange > 0) {
            cursor->cursorLocation = CURSOR_ON_BOX_HEADER;
            return TRUE;
        }

        if (colChange != 0) {
            cursor->cursorLocation = CURSOR_ON_CLOSE_BUTTON;
            return TRUE;
        }
        break;
    case CURSOR_IN_PARTY: {
        u32 initialPosition = cursor->posInParty;

        if (rowChange < 0) {
            if (initialPosition == MAX_PARTY_SIZE) {
                cursor->posInParty = 5;
            } else {
                cursor->posInParty -= 2;

                if (cursor->posInParty < 0) {
                    cursor->posInParty = MAX_PARTY_SIZE;
                }
            }
        } else if (rowChange > 0) {
            if (initialPosition == MAX_PARTY_SIZE) {
                cursor->posInParty = 0;
            } else {
                cursor->posInParty += 2;

                if (cursor->posInParty >= MAX_PARTY_SIZE) {
                    cursor->posInParty = MAX_PARTY_SIZE;
                }
            }
        } else if (colChange < 0) {
            if (initialPosition & 1) {
                cursor->posInParty -= 1;
            }
        } else if (colChange > 0) {
            if (initialPosition != MAX_PARTY_SIZE) {
                if ((initialPosition & 1) == 0) {
                    cursor->posInParty += 1;
                }
            }
        }

        if (initialPosition != cursor->posInParty) {
            return TRUE;
        }
        break;
    } break;
    }

    return FALSE;
}

static enum CursorMovementState ov19_TryMoveSelectionFromUserInput(u32 heldKeys, UnkStruct_ov19_021D5DF8 *param1)
{
    enum CursorMovementState cursorMovement = CURSOR_NO_MOVEMENT;

    do {
        if (heldKeys & PAD_KEY_LEFT) {
            cursorMovement = ov19_TryMoveSelection(&(param1->unk_00), -1, 0);
            break;
        }

        if (heldKeys & PAD_KEY_RIGHT) {
            cursorMovement = ov19_TryMoveSelection(&(param1->unk_00), 1, 0);
            break;
        }

        if (heldKeys & PAD_KEY_UP) {
            cursorMovement = ov19_TryMoveSelection(&(param1->unk_00), 0, -1);
            break;
        }

        if (heldKeys & PAD_KEY_DOWN) {
            cursorMovement = ov19_TryMoveSelection(&(param1->unk_00), 0, 1);
            break;
        }

        if (heldKeys & PAD_BUTTON_L) {
            cursorMovement = CURSOR_MOVE_TO_LEFT_BOX;
            break;
        }

        if (heldKeys & PAD_BUTTON_R) {
            cursorMovement = CURSOR_MOVE_TO_RIGHT_BOX;
            break;
        }
    } while (FALSE);

    if (cursorMovement == CURSOR_MOVE) {
        ov19_TryPreviewCursorMon(param1);
    }

    return cursorMovement;
}

static enum CursorMovementState ov19_TryMoveSelection(UnkStruct_ov19_021D4DF0 *param0, int colChange, int rowChange)
{
    BoxCursor *cursor = &param0->cursor;
    const BoxMonSelection *selection = &param0->selection;

    if (cursor->cursorLocation == CURSOR_IN_BOX) {
        if (colChange != 0) {
            int newCol = cursor->boxCol + colChange;

            if (ov19_GetPreviewMonSource(param0) & PREVIEW_MON_SELECTION) {
                int selectionLeftCol, selectionRightCol;

                selectionLeftCol = selectionRightCol = newCol;

                if (selection->selectionEndCol > selection->selectionStartCol) {
                    selectionLeftCol -= selection->selectionEndCol - selection->selectionStartCol;
                } else {
                    selectionRightCol += selection->selectionStartCol - selection->selectionEndCol;
                }

                if (selectionLeftCol < 0) {
                    return CURSOR_MOVE_TO_LEFT_BOX;
                }

                if (selectionRightCol >= MAX_PC_COLS) {
                    return CURSOR_MOVE_TO_RIGHT_BOX;
                }
            } else {
                if (newCol < 0 || newCol >= MAX_PC_COLS) {
                    return CURSOR_STOP;
                }
            }

            ov19_SetCursorBoxLocation(param0, newCol, cursor->boxRow);
            return CURSOR_MOVE;
        }

        if (rowChange != 0) {
            int newRow = cursor->boxRow + rowChange;

            if (ov19_GetPreviewMonSource(param0) & PREVIEW_MON_SELECTION) {
                int selectionTopRow, selectionBottomRow;

                selectionTopRow = selectionBottomRow = newRow;

                if (selection->selectionEndRow > selection->selectionStartRow) {
                    selectionTopRow -= selection->selectionEndRow - selection->selectionStartRow;
                } else {
                    selectionBottomRow += selection->selectionStartRow - selection->selectionEndRow;
                }

                if (selectionTopRow < 0 || selectionBottomRow >= MAX_PC_ROWS) {
                    return CURSOR_STOP;
                }
            } else {
                if (newRow < 0 || newRow >= MAX_PC_ROWS) {
                    return CURSOR_STOP;
                }
            }

            ov19_SetCursorBoxLocation(param0, cursor->boxCol, newRow);
            return CURSOR_MOVE;
        }
    }

    GF_ASSERT(FALSE);
    return CURSOR_NO_MOVEMENT;
}

static void ov19_MoveCursorToParty(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D4DF0 *v0 = &param0->unk_00;
    BoxCursor *cursor = &v0->cursor;
    u32 unused;

    if (ov19_GetPreviewMonSource(v0) == PREVIEW_MON_IN_CURSOR) {
        cursor->posInParty = Party_GetCurrentCount(param0->party);

        if (cursor->posInParty >= MAX_PARTY_SIZE) {
            cursor->posInParty = MAX_PARTY_SIZE - 1;
        }
    } else {
        cursor->posInParty = 0;
    }

    cursor->prevCursorLocation = cursor->cursorLocation;
    cursor->cursorLocation = CURSOR_IN_PARTY;

    ov19_TryPreviewCursorMon(param0);
}

static void ov19_ReturnCursorToBox(UnkStruct_ov19_021D5DF8 *param0)
{
    BoxCursor *cursor = &(param0->unk_00.cursor);
    cursor->cursorLocation = CURSOR_IN_BOX;

    if (cursor->prevCursorLocation != CURSOR_IN_BOX) {
        ov19_SetCursorBoxLocation(&param0->unk_00, 0, 0);
    }

    ov19_TryPreviewCursorMon(param0);
}

static BOOL ov19_TryPreviewCursorMon(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D4DF0 *v0 = &param0->unk_00;
    PCMonPreview *preview = &v0->pcMonPreview;
    BoxCursor *cursor = &v0->cursor;
    u32 unused;

    cursor->isMonUnderCursor = FALSE;

    switch (cursor->cursorLocation) {
    case CURSOR_IN_BOX:
        cursor->mon = PCBoxes_GetBoxMonAt(v0->pcBoxes, USE_CURRENT_BOX, cursor->posInBox);
        break;
    case CURSOR_IN_PARTY:
        if (cursor->posInParty < Party_GetCurrentCount(param0->party)) {
            cursor->mon = Party_GetPokemonBySlotIndex(param0->party, cursor->posInParty);
        } else {
            cursor->mon = NULL;
        }

        break;
    case CURSOR_ON_BOX_HEADER:
    case CURSOR_ON_CLOSE_BUTTON:
    case CURSOR_ON_PARTY_BUTTON:
    default:
        cursor->mon = NULL;
        break;
    }

    if (cursor->mon) {
        if (BoxPokemon_GetValue(cursor->mon, MON_DATA_SPECIES_EXISTS, NULL)) {
            cursor->isMonUnderCursor = TRUE;

            if (!(ov19_GetPreviewMonSource(v0) & PREVIEW_MON_HELD)) {
                ov19_PreviewBoxMon(v0, cursor->mon, param0);
                return TRUE;
            }
        }
    }

    return FALSE;
}

static BOOL ov19_TryPressTouchScreenButton(UnkStruct_ov19_021D5DF8 *param0)
{
    param0->touchScreenButtonPressed = 0xFFFF;
    TouchScreenActions_HandleAction(param0->mainBoxAndCompareButtonsAction);

    return param0->touchScreenButtonPressed != 0xFFFF;
}

static void ov19_BoxTouchScreenButtonHandler(u32 buttonIndex, enum TouchScreenButtonState buttonTouchState, void *context)
{
    UnkStruct_ov19_021D5DF8 *v0 = (UnkStruct_ov19_021D5DF8 *)context;

    if (buttonTouchState == TOUCH_BUTTON_PRESSED && v0->touchScreenButtonPressed == 0xFFFF) {
        v0->touchScreenButtonPressed = buttonIndex;
    }

    if (ov19_GetBoxMode(&v0->unk_00) == PC_MODE_COMPARE) {
        if (buttonIndex == 2) {
            switch (buttonTouchState) {
            case TOUCH_BUTTON_PRESSED:
                ov19_SetCompareButtonPressed(&v0->unk_00, TRUE);
                break;
            case TOUCH_BUTTON_RELEASED:
            case TOUCH_BUTTON_HELD_OUT_OF_BOUNDS:
                ov19_SetCompareButtonPressed(&v0->unk_00, FALSE);
                break;
            }
        }
    }
}

static void ov19_SetBoxMessage(UnkStruct_ov19_021D4DF0 *param0, u32 boxMessageID)
{
    param0->boxMessageID = boxMessageID;
}

static void ov19_SetCursorBoxLocation(UnkStruct_ov19_021D4DF0 *param0, u32 col, u32 row)
{
    BoxCursor *cursor = &param0->cursor;

    cursor->boxCol = col;
    cursor->boxRow = row;
    cursor->posInBox = row * MAX_PC_COLS + col;
}

static void ov19_PickUpMon(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    BoxMonSelection *selection = &param1->selection;
    BoxCursor *cursor = &param1->cursor;

    if (ov19_GetCursorLocation(param1) == CURSOR_IN_BOX) {
        MI_CpuCopy32(cursor->mon, selection->boxMon, BoxPokemon_GetStructSize());
        PCBoxes_InitBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, cursor->posInBox);
        selection->cursorMonIsPartyMon = FALSE;
    } else {
        MI_CpuCopy32(cursor->mon, selection->boxMon, Pokemon_GetStructSize());
        Party_RemovePokemonBySlotIndex(param0->party, cursor->posInParty);
        selection->cursorMonIsPartyMon = TRUE;
    }

    ov19_SetPreviewedBoxMon(param1, selection->boxMon);

    selection->selectionStartCol = selection->selectionEndCol = cursor->boxCol;
    selection->selectionStartRow = selection->selectionEndRow = cursor->boxRow;

    param1->cursor.previewMonSource = PREVIEW_MON_IN_CURSOR;
    param1->cursor.isMonUnderCursor = FALSE;
}

static void ov19_PickUpMultiSelectedMons(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    u32 col, row, selectionLeftCol, selectionRightCol, selectionTopRow, selectionBottomRow, monPosInBox;
    BoxPokemon *boxMon;

    BoxMonSelection *selection = &param1->selection;
    selection->unused = 1;

    u32 cursorPosInBox = ov19_GetCursorBoxPosition(param1);
    u32 boxMonSize = BoxPokemon_GetStructSize();
    u32 processedMonCount = 0;
    void *cursorMonBuffer = selection->boxMon;

    ov19_GetMultiSelectBoundingBox(param1, &selectionLeftCol, &selectionRightCol, &selectionTopRow, &selectionBottomRow);

    for (row = selectionTopRow; row <= selectionBottomRow; row++) {
        monPosInBox = row * MAX_PC_COLS + selectionLeftCol;

        for (col = selectionLeftCol; col <= selectionRightCol; col++) {
            boxMon = PCBoxes_GetBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, monPosInBox);

            if (BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES_EXISTS, NULL)) {
                MI_CpuCopy32(boxMon, cursorMonBuffer, boxMonSize);
                PCBoxes_InitBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, monPosInBox);
                cursorMonBuffer += boxMonSize;
                selection->selectedMonsOrigBoxPos[processedMonCount++] = monPosInBox;

                if (monPosInBox == cursorPosInBox) {
                    selection->unused = 0;
                }
            }

            monPosInBox++;
        }
    }

    selection->selectedMonCount = processedMonCount;
    selection->origSelectionTopLeftPos = selectionTopRow * MAX_PC_COLS + selectionLeftCol;

    param1->cursor.previewMonSource = param1->cursor.isMonUnderCursor ? PREVIEW_MON_FROM_SELECTION : PREVIEW_MON_UNDER_SELECTION;
    param1->cursor.isMonUnderCursor = FALSE;
}

static void ov19_ResetMultiSelectLocation(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    BoxMonSelection *selection = &param1->selection;
    BoxCursor *cursor = &param1->cursor;

    selection->selectionStartCol = selection->selectionEndCol = cursor->boxCol;
    selection->selectionStartRow = selection->selectionEndRow = cursor->boxRow;
}

static void ov19_SetMultiSelectionEndLocation(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    BoxMonSelection *selection = &param1->selection;
    BoxCursor *cursor = &param1->cursor;

    selection->selectionEndCol = cursor->boxCol;
    selection->selectionEndRow = cursor->boxRow;
}

static void ov19_PutDownCursorMon(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    BoxMonSelection *selection = &param1->selection;
    BoxCursor *cursor = &param1->cursor;
    BoxPokemon *boxMon;
    BOOL shayminIsForm1 = FALSE;
    int monForm;

    if (ov19_GetCursorLocation(param1) == CURSOR_IN_BOX) {
        monForm = BoxPokemon_GetValue(selection->boxMon, MON_DATA_FORM, NULL);
        PCBoxes_TryStoreBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, cursor->posInBox, selection->boxMon);
        boxMon = PCBoxes_GetBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, cursor->posInBox);

        if (BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL) == SPECIES_SHAYMIN && monForm == 1) {
            shayminIsForm1 = TRUE;
        }
    } else {
        if (selection->cursorMonIsPartyMon) {
            Party_AddPokemon(param0->party, (Pokemon *)selection->boxMon);
        } else {
            Pokemon_FromBoxPokemon(selection->boxMon, param0->mon);
            Party_AddPokemon(param0->party, param0->mon);
        }

        boxMon = (BoxPokemon *)Party_GetPokemonBySlotIndex(param0->party, Party_GetCurrentCount(param0->party) - 1);
    }

    ov19_SetPreviewedBoxMon(param1, boxMon);
    BOOL isMonInPreview = ov19_TryPreviewCursorMon(param0);

    if (isMonInPreview == FALSE && shayminIsForm1 == TRUE) {
        ov19_LoadBoxMonIntoPreview(param1, boxMon, param0);
        ov19_BoxTaskHandler(param0->unk_114, FUNC_BoxGraphics_PreviewMon);
    }

    param1->cursor.previewMonSource = PREVIEW_MON_UNDER_CURSOR;
    param1->cursor.isMonUnderCursor = TRUE;
}

static void ov19_PutDownSelectedMons(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    BoxPokemon *boxMon;
    int i, origSelectionTopLeftPos, selectionTopLeftPos, posInBox, boxMonStructSize;
    BoxCursor *cursor = &param1->cursor;
    BoxMonSelection *selection = &param1->selection;

    selectionTopLeftPos = ov19_GetMultiSelectTopLeftPos(param1);
    origSelectionTopLeftPos = selection->origSelectionTopLeftPos;
    boxMonStructSize = BoxPokemon_GetStructSize();
    boxMon = selection->boxMon;

    for (i = 0; i < selection->selectedMonCount; i++) {
        posInBox = selectionTopLeftPos + (selection->selectedMonsOrigBoxPos[i] - origSelectionTopLeftPos);
        PCBoxes_TryStoreBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, posInBox, boxMon);
        (u8 *)boxMon += boxMonStructSize;
    }

    ov19_SetPreviewedBoxMon(param1, PCBoxes_GetBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, ov19_GetCursorBoxPosition(param1)));
    ov19_TryPreviewCursorMon(param0);

    selection->selectedMonCount = 0;
    param1->cursor.previewMonSource = PREVIEW_MON_UNDER_CURSOR;
}

static void ov19_SwapMonInCursor(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    BoxMonSelection *selection = &param1->selection;
    u32 monStructSize = Pokemon_GetStructSize();
    void *monBuffer = (u8 *)(selection->boxMon) + monStructSize;
    BoxCursor *cursor = &param1->cursor;

    MI_CpuCopy32(selection->boxMon, monBuffer, monStructSize);
    MI_CpuCopy32(cursor->mon, selection->boxMon, monStructSize);

    if (ov19_GetCursorLocation(param1) == CURSOR_IN_BOX) {
        PCBoxes_TryStoreBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, cursor->posInBox, monBuffer);
        selection->cursorMonIsPartyMon = 0;
    } else {
        if (selection->cursorMonIsPartyMon == 0) {
            Pokemon_FromBoxPokemon(monBuffer, param0->mon);
        } else {
            MI_CpuCopy32(monBuffer, param0->mon, monStructSize);
        }

        Party_AddPokemonBySlotIndex(param0->party, cursor->posInParty, param0->mon);
        selection->cursorMonIsPartyMon = 1;
    }

    ov19_PreviewBoxMon(param1, selection->boxMon, param0);
}

static BOOL ov19_TryStoreCursorMonInBox(UnkStruct_ov19_021D5DF8 *param0, u32 boxID)
{
    UnkStruct_ov19_021D4DF0 *v0 = &(param0->unk_00);
    BoxCursor *cursor = &v0->cursor;
    BoxMonSelection *selection = &v0->selection;

    if (PCBoxes_TryStoreBoxMonInBox(param0->pcBoxes, boxID, selection->boxMon)) {
        v0->cursor.previewMonSource = PREVIEW_MON_UNDER_CURSOR;
        ov19_TryPreviewCursorMon(param0);
        return TRUE;
    }

    return FALSE;
}

static BOOL ov19_TryStoreSelectedMonInBox(UnkStruct_ov19_021D5DF8 *param0, u32 boxID)
{
    UnkStruct_ov19_021D4DF0 *v0 = &(param0->unk_00);
    BoxCursor *cursor = &v0->cursor;

    if (PCBoxes_TryStoreBoxMonInBox(param0->pcBoxes, boxID, cursor->mon)) {
        Party_RemovePokemonBySlotIndex(param0->party, cursor->posInParty);
        ov19_TryPreviewCursorMon(param0);
        return TRUE;
    }

    return FALSE;
}

static void ov19_RemoveCursorMon(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D4DF0 *v0 = &(param0->unk_00);
    BoxCursor *cursor = &v0->cursor;
    BoxMonSelection *selection = &v0->selection;

    BoxPokemon_Init(selection->boxMon);
    cursor->previewMonSource = PREVIEW_MON_UNDER_CURSOR;
    ov19_TryPreviewCursorMon(param0);
}

static void ov19_RemoveMonUnderCursor(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D4DF0 *v0 = &(param0->unk_00);
    BoxCursor *cursor = &v0->cursor;

    if (ov19_GetCursorLocation(v0) == CURSOR_IN_BOX) {
        PCBoxes_InitBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, cursor->posInBox);
    } else {
        Party_RemovePokemonBySlotIndex(param0->party, cursor->posInParty);
    }

    ov19_TryPreviewCursorMon(param0);
}

static void ov19_PreviewBoxMon(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 *param2)
{
    ov19_LoadBoxMonIntoPreview(param0, boxMon, param2);

    if (ov19_GetBoxMode(param0) == PC_MODE_COMPARE) {
        ov19_LoadBoxMonIntoComparison(param0, boxMon, param2);
    }
}

static void ov19_LoadBoxMonIntoPreview(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 *param2)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);

    preview->mon = boxMon;
    preview->species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    preview->heldItem = BoxPokemon_GetValue(boxMon, MON_DATA_HELD_ITEM, NULL);
    preview->dexNum = GetDexNumber(SaveData_GetDexMode(param2->saveData), preview->species);
    preview->isEgg = BoxPokemon_GetValue(boxMon, MON_DATA_EGG_EXISTS, NULL);
    SpeciesData *speciesData = SpeciesData_FromMonSpecies(preview->species, HEAP_ID_BOX_DATA);
    preview->level = SpeciesData_GetLevelAt(speciesData, preview->species, BoxPokemon_GetValue(boxMon, MON_DATA_EXP, NULL));
    preview->markings = BoxPokemon_GetValue(boxMon, MON_DATA_MARKS, NULL);
    preview->type1 = BoxPokemon_GetValue(boxMon, MON_DATA_TYPE_1, NULL);
    preview->type2 = BoxPokemon_GetValue(boxMon, MON_DATA_TYPE_2, NULL);

    if ((preview->isEgg == FALSE) && BoxPokemon_GetValue(boxMon, MON_DATA_NIDORAN_HAS_NICKNAME, NULL)) {
        preview->gender = SpeciesData_GetGenderOf(speciesData, preview->species, BoxPokemon_GetValue(boxMon, MON_DATA_PERSONALITY, NULL));
    } else {
        preview->gender = GENDER_INVALID;
    }

    BoxPokemon_GetValue(boxMon, MON_DATA_NICKNAME_STRBUF, preview->nickname);

    if (preview->isEgg == FALSE) {
        MessageLoader_GetStrbuf(param2->speciesNameLoader, preview->species, preview->speciesName);
    } else {
        Strbuf_Copy(preview->speciesName, preview->nickname);
        Strbuf_Clear(preview->nickname);
    }

    if (preview->heldItem != ITEM_NONE) {
        Item_LoadName(preview->heldItemName, preview->heldItem, HEAP_ID_BOX_DATA);
    } else {
        MessageLoader_GetStrbuf(param2->boxMessagesLoader, BoxText_NoItem, preview->heldItemName);
    }

    {
        u32 value = BoxPokemon_GetNature(boxMon);
        MessageLoader_GetStrbuf(param2->natureNameLoader, value, preview->nature);

        value = BoxPokemon_GetValue(boxMon, MON_DATA_ABILITY, NULL);
        MessageLoader_GetStrbuf(param2->abilityNameLoader, value, preview->ability);
    }

    SpeciesData_Free(speciesData);
    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
}

static void ov19_LoadBoxMonIntoComparison(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 *param2)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    PCCompareMon *compareMon = &(param0->unk_A4.compareMons[param0->unk_A4.compareMonSlot]);

    compareMon->mon = boxMon;
    compareMon->species = preview->species;
    compareMon->isEgg = preview->isEgg;
    compareMon->level = preview->level;

    if (compareMon->isEgg) {
        Strbuf_Copy(compareMon->monName, preview->speciesName);
    } else {
        Strbuf_Copy(compareMon->monName, preview->nickname);
    }

    Strbuf_Copy(compareMon->nature, preview->nature);
    Pokemon_FromBoxPokemon(boxMon, param2->mon);

    BOOL reencrypt = Pokemon_EnterDecryptionContext(param2->mon);

    compareMon->maxHP = Pokemon_GetValue(param2->mon, MON_DATA_MAX_HP, NULL);
    compareMon->attack = Pokemon_GetValue(param2->mon, MON_DATA_ATK, NULL);
    compareMon->defense = Pokemon_GetValue(param2->mon, MON_DATA_DEF, NULL);
    compareMon->spAttack = Pokemon_GetValue(param2->mon, MON_DATA_SP_ATK, NULL);
    compareMon->spDefense = Pokemon_GetValue(param2->mon, MON_DATA_SP_DEF, NULL);
    compareMon->speed = Pokemon_GetValue(param2->mon, MON_DATA_SPEED, NULL);
    compareMon->cool = Pokemon_GetValue(param2->mon, MON_DATA_COOL, NULL);
    compareMon->beauty = Pokemon_GetValue(param2->mon, MON_DATA_BEAUTY, NULL);
    compareMon->cute = Pokemon_GetValue(param2->mon, MON_DATA_CUTE, NULL);
    compareMon->smart = Pokemon_GetValue(param2->mon, MON_DATA_SMART, NULL);
    compareMon->tough = Pokemon_GetValue(param2->mon, MON_DATA_TOUGH, NULL);
    compareMon->moves[0] = Pokemon_GetValue(param2->mon, MON_DATA_MOVE1, NULL);
    compareMon->moves[1] = Pokemon_GetValue(param2->mon, MON_DATA_MOVE2, NULL);
    compareMon->moves[2] = Pokemon_GetValue(param2->mon, MON_DATA_MOVE3, NULL);
    compareMon->moves[3] = Pokemon_GetValue(param2->mon, MON_DATA_MOVE4, NULL);
    compareMon->form = Pokemon_GetValue(param2->mon, MON_DATA_FORM, NULL);

    Pokemon_ExitDecryptionContext(param2->mon, reencrypt);

    param0->unk_A4.unk_02[param0->unk_A4.compareMonSlot] = 1;
}
static void ov19_ToggleCompareMonSlot(UnkStruct_ov19_021D4DF0 *param0)
{
    param0->unk_A4.compareMonSlot ^= 1;
}

static void ov19_021D5B80(UnkStruct_ov19_021D4DF0 *param0)
{
    if (++(param0->unk_A4.unk_01) >= 3) {
        param0->unk_A4.unk_01 = 0;
    }
}

static void ov19_SetCompareButtonPressed(UnkStruct_ov19_021D4DF0 *param0, BOOL pressed)
{
    param0->unk_A4.compareButtonAnimationPressed = pressed;
}

static void ov19_SetPreviewedBoxMon(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon)
{
    param0->pcMonPreview.mon = boxMon;
}

static void ov19_UpdatePreviewMonMarkings(UnkStruct_ov19_021D4DF0 *param0)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    u8 markings = param0->boxMenu.markings;
    preview->markings = markings;

    BoxPokemon_SetValue(preview->mon, MON_DATA_MARKS, &(markings));

    if (ov19_GetCursorLocation(param0) == CURSOR_IN_BOX && ov19_GetPreviewMonSource(param0) == PREVIEW_MON_UNDER_CURSOR) {
        SaveData_SetFullSaveRequired();
    }
}

static void ov19_GiveItemToSelectedMon(UnkStruct_ov19_021D4DF0 *param0, u16 item, UnkStruct_ov19_021D5DF8 *param2)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    preview->heldItem = item;

    if (preview->heldItem != 0) {
        Item_LoadName(preview->heldItemName, preview->heldItem, HEAP_ID_BOX_DATA);
    } else {
        MessageLoader_GetStrbuf(param2->boxMessagesLoader, BoxText_NoItem, preview->heldItemName);
    }

    if (ov19_GetCursorLocation(param0) == CURSOR_IN_BOX && ov19_GetPreviewMonSource(param0) == PREVIEW_MON_UNDER_CURSOR) {
        u32 posInBox = ov19_GetCursorBoxPosition(param0);
        PCBoxes_SetBoxMonData(param2->pcBoxes, USE_CURRENT_BOX, posInBox, MON_DATA_HELD_ITEM, &item);
    }

    BoxPokemon_SetValue(preview->mon, MON_DATA_HELD_ITEM, &item);

    int species = BoxPokemon_GetValue(preview->mon, MON_DATA_SPECIES, NULL);

    if (species == SPECIES_ARCEUS) {
        BoxPokemon_SetArceusForm(preview->mon);
        preview->type1 = BoxPokemon_GetValue(preview->mon, MON_DATA_TYPE_1, NULL);
        preview->type2 = BoxPokemon_GetValue(preview->mon, MON_DATA_TYPE_2, NULL);
    } else if (species == SPECIES_GIRATINA) {
        BoxPokemon_SetGiratinaForm(preview->mon);
        int ability = BoxPokemon_GetValue(preview->mon, MON_DATA_ABILITY, NULL);
        MessageLoader_GetStrbuf(param2->abilityNameLoader, ability, preview->ability);
    }
}

static void ov19_LoadRightBoxCustomization(UnkStruct_ov19_021D4DF0 *param0)
{
    BoxCustomization *customization = &param0->customization;

    if (++(customization->boxID) >= MAX_PC_BOXES) {
        customization->boxID = 0;
    }

    PCBoxes_LoadCustomization(param0->pcBoxes, customization);
}

static void ov19_LoadLeftBoxCustomization(UnkStruct_ov19_021D4DF0 *param0)
{
    BoxCustomization *customization = &param0->customization;

    if (customization->boxID) {
        customization->boxID--;
    } else {
        customization->boxID = MAX_PC_BOXES - 1;
    }

    PCBoxes_LoadCustomization(param0->pcBoxes, customization);
}

static void ov19_LoadCustomizationsFor(UnkStruct_ov19_021D4DF0 *param0, u32 boxID)
{
    BoxCustomization *customization = &param0->customization;

    customization->boxID = boxID;
    PCBoxes_LoadCustomization(param0->pcBoxes, customization);
}

static void ov19_SetBoxSelectionBoxID(UnkStruct_ov19_021D4DF0 *param0, u32 boxID)
{
    param0->boxSelectionBoxID = boxID;
}

static void ov19_PickUpHeldItem(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    u16 itemNone = ITEM_NONE;

    param0->cursorItem = preview->heldItem;

    MessageLoader_GetStrbuf(param1->boxMessagesLoader, BoxText_NoItem, preview->heldItemName);
    ov19_GiveItemToSelectedMon(param0, itemNone, param1);
}

static void ov19_RemoveCursorItem(UnkStruct_ov19_021D4DF0 *param0)
{
    param0->cursorItem = ITEM_NONE;
}

static void ov19_GiveItemFromCursor(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    u16 item = param0->cursorItem;
    param0->cursorItem = ITEM_NONE;

    ov19_GiveItemToSelectedMon(param0, item, param1);
}

static void ov19_SwapMonAndCursorItems(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    u16 item = param0->cursorItem;
    param0->cursorItem = preview->heldItem;

    ov19_GiveItemToSelectedMon(param0, item, param1);
}

static void ov19_021D5D94(UnkStruct_ov19_021D4DF0 *param0, u32 param1)
{
    param0->unk_9C.unk_00 = param1;
}

static void ov19_021D5D9C(UnkStruct_ov19_021D4DF0 *param0, u32 param1)
{
    param0->unk_9C.unk_02 = param1;
}

static void ov19_SetMarkingsButtonsScrollOffset(UnkStruct_ov19_021D4DF0 *param0, u32 offset)
{
    param0->unk_9C.markingsButtonsScrollOffset = offset;
}

static void ov19_021D5DAC(UnkStruct_ov19_021D4DF0 *param0, int param1)
{
    param0->unk_9C.unk_04 = param1;
}

static void ov19_SetMonSpriteTransparencyMask(UnkStruct_ov19_021D4DF0 *param0, u32 param1)
{
    if (param1 == 0) {
        param0->boxSettings.monSpriteTransparencyMask = 0;
    } else {
        param0->boxSettings.monSpriteTransparencyMask ^= (1 << (param1 - 1));
    }
}

static void ov19_ToggleCursorFastMode(UnkStruct_ov19_021D4DF0 *param0)
{
    param0->boxSettings.isCursorFastMode ^= 1;
}

MessageLoader *ov19_GetBoxMessagesLoader(const UnkStruct_ov19_021D5DF8 *param0)
{
    return param0->boxMessagesLoader;
}

const StringTemplate *ov19_GetMessageVariableBuffer(const UnkStruct_ov19_021D5DF8 *param0)
{
    return param0->MessageVariableBuffer;
}

int ov19_GetOptionsFrame(const UnkStruct_ov19_021D5DF8 *param0)
{
    return Options_Frame(param0->options);
}

enum BoxMode ov19_GetBoxMode(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->boxSettings.boxMode;
}

enum CursorLocation ov19_GetCursorLocation(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->cursor.cursorLocation;
}

u32 ov19_GetCursorBoxCol(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->cursor.boxCol;
}

u32 ov19_GetCursorBoxRow(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->cursor.boxRow;
}

u32 ov19_GetCursorBoxPosition(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->cursor.posInBox;
}

u32 ov19_GetCursorPartyPosition(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->cursor.posInParty;
}

BOOL ov19_IsMonUnderCursor(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->cursor.isMonUnderCursor;
}

u32 ov19_GetPreviewMonSource(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->cursor.previewMonSource;
}

BOOL ov19_GetCursorMonIsPartyMon(const UnkStruct_ov19_021D4DF0 *param0)
{
    if (param0->cursor.previewMonSource) { // this can never be 0, so this will effectively always be true
        return param0->selection.cursorMonIsPartyMon;
    }

    return FALSE;
}

BOOL ov19_IsMonAvailableToCursor(const UnkStruct_ov19_021D4DF0 *param0)
{
    const BoxMonSelection *unused = &param0->selection;
    const BoxCursor *cursor = &param0->cursor;

    if (cursor->previewMonSource == PREVIEW_MON_IN_CURSOR || cursor->previewMonSource == PREVIEW_MON_FROM_SELECTION) {
        return TRUE;
    }

    if (param0->cursor.isMonUnderCursor) {
        return TRUE;
    }

    return FALSE;
}

u32 ov19_GetCurrentBox(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->customization.boxID;
}

const PCMonPreview *ov19_GetPCMonPreview(const UnkStruct_ov19_021D4DF0 *param0)
{
    return &(param0->pcMonPreview);
}

u32 ov19_GetPreviewedMonHeldItem(const UnkStruct_ov19_021D4DF0 *param0)
{
    if (ov19_IsMonAvailableToCursor(param0)) {
        return param0->pcMonPreview.heldItem;
    }

    return ITEM_NONE;
}

const BoxCustomization *ov19_GetBoxCustomization(const UnkStruct_ov19_021D4DF0 *param0)
{
    return &(param0->customization);
}

const PCBoxes *ov19_GetPCBoxes(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->pcBoxes;
}

u32 ov19_GetBoxMessageID(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->boxMessageID;
}

BoxPokemon *ov19_GetPreviewedBoxMon(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->pcMonPreview.mon;
}

u32 ov19_GetPreviewedMonMarkings(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->pcMonPreview.markings;
}

u32 ov19_GetBoxSelectionBoxID(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->boxSelectionBoxID;
}

s32 ov19_021D5EB0(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_9C.unk_04;
}

u32 ov19_021D5EB8(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_9C.unk_02;
}

u32 ov19_GetMarkingsButtonsScrollOffset(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_9C.markingsButtonsScrollOffset;
}

u32 ov19_GetMonSpriteTransparencyMask(const UnkStruct_ov19_021D4DF0 *param0)
{
    if (ov19_GetBoxMode(param0) != PC_MODE_MOVE_ITEMS) {
        return param0->boxSettings.monSpriteTransparencyMask;
    } else {
        return 1;
    }
}

BOOL ov19_IsCursorFastMode(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->boxSettings.isCursorFastMode;
}

void ov19_GetMultiSelectBoundingBox(const UnkStruct_ov19_021D4DF0 *param0, u32 *leftCol, u32 *rightCol, u32 *topRow, u32 *bottomRow)
{
    const BoxMonSelection *selection = &param0->selection;

    if (selection->selectionStartCol <= selection->selectionEndCol) {
        *leftCol = selection->selectionStartCol;
        *rightCol = selection->selectionEndCol;
    } else {
        *leftCol = selection->selectionEndCol;
        *rightCol = selection->selectionStartCol;
    }

    if (selection->selectionStartRow <= selection->selectionEndRow) {
        *topRow = selection->selectionStartRow;
        *bottomRow = selection->selectionEndRow;
    } else {
        *topRow = selection->selectionEndRow;
        *bottomRow = selection->selectionStartRow;
    }
}

BOOL ov19_IsMultiSelectSingleSelect(const UnkStruct_ov19_021D4DF0 *param0)
{
    const BoxMonSelection *selection = &param0->selection;

    if (selection->selectionStartCol == selection->selectionEndCol && selection->selectionStartRow == selection->selectionEndRow) {
        return TRUE;
    }

    return FALSE;
}

u32 ov19_GetMultiSelectTopLeftPos(const UnkStruct_ov19_021D4DF0 *param0)
{
    const BoxMonSelection *selection = &param0->selection;
    int col = param0->cursor.boxCol;
    int row = param0->cursor.boxRow;

    if (selection->selectionEndCol > selection->selectionStartCol) {
        col -= selection->selectionEndCol - selection->selectionStartCol;
    }

    if (selection->selectionEndRow > selection->selectionStartRow) {
        row -= selection->selectionEndRow - selection->selectionStartRow;
    }

    return row * MAX_PC_COLS + col;
}

u32 ov19_GetRelativeMonPosInMultiSelection(const UnkStruct_ov19_021D4DF0 *param0, u32 param1)
{
    const BoxMonSelection *selection = &param0->selection;
    return selection->selectedMonsOrigBoxPos[param1] - selection->origSelectionTopLeftPos;
}

u32 ov19_GetCursorItem(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->cursorItem;
}

u32 ov19_GetCursorOrPreviewedItem(const UnkStruct_ov19_021D4DF0 *param0)
{
    u32 cursorItem = ov19_GetCursorItem(param0);

    if (cursorItem != ITEM_NONE) {
        return cursorItem;
    }

    return ov19_GetPreviewedMonHeldItem(param0);
}

u32 ov19_GetCompareMonSlot(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_A4.compareMonSlot;
}

u32 ov19_021D5FA4(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_A4.unk_01;
}

const PCCompareMon *ov19_GetCompareMonFrom(const UnkStruct_ov19_021D4DF0 *param0, int compareSlot)
{
    return &param0->unk_A4.compareMons[compareSlot];
}

BOOL ov19_021D5FB8(const UnkStruct_ov19_021D4DF0 *param0, int compareMonSlot)
{
    return param0->unk_A4.unk_02[compareMonSlot];
}

BOOL ov19_IsCompareButtonPressed(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_A4.compareButtonAnimationPressed;
}

BOOL ov19_IsPreviewedMonEgg(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->pcMonPreview.isEgg;
}

static u32 ov19_GetPreviewedMonValue(UnkStruct_ov19_021D4DF0 *param0, enum PokemonDataParam value, void *dest)
{
    if (ov19_GetPreviewMonSource(param0) == PREVIEW_MON_UNDER_CURSOR) {
        if (ov19_GetCursorLocation(param0) == CURSOR_IN_BOX) {
            return BoxPokemon_GetValue(param0->pcMonPreview.mon, value, dest);
        }
    } else {
        BoxMonSelection *selection = &param0->selection;

        if (selection->cursorMonIsPartyMon == FALSE) {
            return BoxPokemon_GetValue(param0->pcMonPreview.mon, value, dest);
        }
    }

    return Pokemon_GetValue(param0->pcMonPreview.mon, value, dest);
}

static u32 ov19_GetPreviewedOrSelectedMonValue(UnkStruct_ov19_021D4DF0 *param0, enum PokemonDataParam value, void *dest)
{
    if (ov19_GetCursorLocation(param0) == CURSOR_IN_BOX) {
        return BoxPokemon_GetValue(param0->pcMonPreview.mon, value, dest);
    } else {
        return Pokemon_GetValue(param0->cursor.mon, value, dest);
    }
}
