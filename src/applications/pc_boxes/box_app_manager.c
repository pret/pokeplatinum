#include "applications/pc_boxes/box_app_manager.h"

#include <nitro.h>
#include <string.h>

#include "constants/items.h"
#include "constants/species.h"
#include "constants/string.h"

#include "struct_decls/pc_boxes_decl.h"
#include "struct_defs/chatot_cry.h"

#include "applications/bag/application.h"
#include "applications/naming_screen.h"
#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/box_cursor.h"
#include "applications/pc_boxes/box_customization.h"
#include "applications/pc_boxes/box_menu.h"
#include "applications/pc_boxes/box_mon_selection.h"
#include "applications/pc_boxes/box_settings.h"
#include "applications/pc_boxes/box_touch_dial_helper.h"
#include "applications/pc_boxes/compare_mode_helper.h"
#include "applications/pc_boxes/ov19_021D61B0.h"
#include "applications/pc_boxes/pc_compare_mon.h"
#include "applications/pc_boxes/pc_mon_preview.h"
#include "applications/pc_boxes/pokemon_storage_session.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/touch_dial.h"
#include "applications/pokemon_summary_screen/main.h"
#include "global/utility.h"
#include "savedata/save_table.h"

#include "bag.h"
#include "bag_context.h"
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

#include "constdata/const_020F410C.h"
#include "res/text/bank/box_messages.h"

FS_EXTERN_OVERLAY(bag);

enum BoxSelectorState {
    BOX_SELECTOR_START,
    BOX_SELECTOR_DISPLAY_MESSAGE_START,
    BOX_SELECTOR_DISPLAY_MESSAGE_DONE,
    BOX_SELECTOR_WAIT_FOR_USER
};

static const TouchScreenHitTable sMainPcButtons[] = {
    [MAIN_PC_LEFT_BUTTON_ID] = { TOUCHSCREEN_USE_CIRCLE, MAIN_PC_LEFT_BUTTON_X, MAIN_PC_BUTTON_Y, MAIN_PC_BUTTON_RADIUS },
    [MAIN_PC_RIGHT_BUTTON_ID] = { TOUCHSCREEN_USE_CIRCLE, MAIN_PC_RIGHT_BUTTON_X, MAIN_PC_BUTTON_Y, MAIN_PC_BUTTON_RADIUS },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const TouchScreenHitTable sComparePokemonButtons[] = {
    [MAIN_PC_LEFT_BUTTON_ID] = { TOUCHSCREEN_USE_CIRCLE, MAIN_PC_LEFT_BUTTON_X, MAIN_PC_BUTTON_Y, MAIN_PC_BUTTON_RADIUS },
    [MAIN_PC_RIGHT_BUTTON_ID] = { TOUCHSCREEN_USE_CIRCLE, MAIN_PC_RIGHT_BUTTON_X, MAIN_PC_BUTTON_Y, MAIN_PC_BUTTON_RADIUS },
    [COMPARE_MON_PC_BUTTON_ID] = { TOUCHSCREEN_USE_CIRCLE, COMPARE_MON_PC_BUTTON_X, COMPARE_MON_PC_BUTTON_Y, COMPARE_MON_PC_BUTTON_RADIUS },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const TouchScreenHitTable sPokemonMarkingsButtons[] = {
    [PC_MARKINGS_BUTTON1_ID] = { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON1_X, PC_MARKINGS_BUTTON1_Y, PC_MARKINGS_BUTTONS_RADIUS },
    [PC_MARKINGS_BUTTON2_ID] = { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON2_X, PC_MARKINGS_BUTTON2_Y, PC_MARKINGS_BUTTONS_RADIUS },
    [PC_MARKINGS_BUTTON3_ID] = { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON3_X, PC_MARKINGS_BUTTON3_Y, PC_MARKINGS_BUTTONS_RADIUS },
    [PC_MARKINGS_BUTTON4_ID] = { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON4_X, PC_MARKINGS_BUTTON4_Y, PC_MARKINGS_BUTTONS_RADIUS },
    [PC_MARKINGS_BUTTON5_ID] = { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON5_X, PC_MARKINGS_BUTTON5_Y, PC_MARKINGS_BUTTONS_RADIUS },
    [PC_MARKINGS_BUTTON6_ID] = { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON6_X, PC_MARKINGS_BUTTON6_Y, PC_MARKINGS_BUTTONS_RADIUS },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const u16 sReleaseBlockingMoves[NUM_RELEASE_BLOCKING_MOVES] = {
    MOVE_SURF,
    MOVE_ROCK_CLIMB,
    MOVE_WATERFALL
};

typedef int (*CursorLocationInputHandler)(BoxApplicationManager *);
typedef void (*BoxApplicationAction)(BoxApplicationManager *, u32 *);

static void BoxAppMan_RegisterCursorLocationInputHandler(BoxApplicationManager *boxAppMan, CursorLocationInputHandler cursorLocationInputHandler);
static void BoxAppMan_RegisterBoxApplicationAction(BoxApplicationManager *boxAppMan, BoxApplicationAction boxApplicationAction);
static void BoxAppMan_ClearBoxApplicationAction(BoxApplicationManager *boxAppMan);
static CursorLocationInputHandler BoxAppMan_GetCursorLocationInputHandler(BoxApplicationManager *boxAppMan);
static void BoxAppMan_FlagRecordBoxUseInJournal(BoxApplicationManager *boxAppMan);
static void BoxAppMan_LogInAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_ReturnToBoxFade1Action(BoxApplicationManager *boxAppMan, u32 *state);
static inline BOOL BoxAppMan_RegisterBoxTouchActionOrTryTouchCompareButton(BoxApplicationManager *boxAppMan);
static int BoxAppMan_CursorInBoxInputHandler(BoxApplicationManager *boxAppMan);
static BOOL BoxAppMan_IsPreviewedMonHoldingMailOrHasBallCapsule(BoxApplicationManager *boxAppMan, int *destMessageID);
static int BoxAppMan_CursorInPartyInputHandler(BoxApplicationManager *boxAppMan);
static int BoxAppMan_CursorOnHeaderInputHandler(BoxApplicationManager *boxAppMan);
static int BoxAppMan_CursorOnCloseInputHandler(BoxApplicationManager *boxAppMan);
static int BoxAppMan_CursorOnPartyButtonInputHandler(BoxApplicationManager *boxAppMan);
static void BoxAppMan_InitSummary(BoxApplicationManager *boxAppMan);
static int BoxAppMan_LogOffScreenFade(BoxApplicationManager *boxAppMan);
static void BoxAppMan_CloseBoxAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_ContinueBoxOperationsAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_MonCursorMenuAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_MonItemMenuAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_BoxHeaderMenuAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_BoxJumpAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_WallpaperMenu(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_MarkAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_MultiSelectAction(BoxApplicationManager *boxAppMan, u32 *state);
static BOOL BoxApp_IsBoxUnderSelectedMonsEmpty(const BoxApplication *boxApp);
static void BoxAppMan_PickUpMonAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_PlaceMonAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_ShiftMonAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_WithdrawMonAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_StoreMonAction(BoxApplicationManager *boxAppMan, u32 *state);
static BOOL BoxAppMan_OnLastAliveMon(BoxApplicationManager *boxAppMan);
static BOOL BoxAppMan_CheckReleaseMonValid(BoxApplicationManager *boxAppMan, int *destBoxMessageID);
static void BoxAppMan_ReleaseMonAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_CheckShouldMonReturn(BoxApplicationManager *boxAppMan);
static void CheckLastMonWithReleaseBlockingMove(SysTask *task, void *releaseMon);
static BOOL BoxPokemon_HasMove(BoxPokemon *boxMon, u16 move);
static void BoxAppMan_RenameBoxAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_OpenSummaryAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxApp_SetCursorPosToSummaryMonPos(BoxApplication *boxApp, BoxApplicationManager *boxAppMan);
static void BoxAppMan_GiveItemFromBagAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_MonItemHeldAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_PutAwayItemAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_DisplayItemInfoAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxSelectorPopup_Init(BoxApplicationManager *boxAppMan, u32 boxID, u32 boxMessageID);
static void BoxSelectorPopup_Reset(BoxApplicationManager *boxAppMan);
static BOOL BoxAppMan_TrySelectBoxFromPopup(BoxApplicationManager *boxAppMan);
static void BoxAppMan_ChangeToNewBoxAction(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_TouchScreenBoxJump(BoxApplicationManager *boxAppMan, u32 *state);
static void BoxAppMan_MarkingsFilterAction(BoxApplicationManager *boxAppMan, u32 *state);
static BOOL BoxAppMan_TryPressMarkingsButton(BoxApplicationManager *boxAppMan);
static void BoxApp_BoxTouchScreenMarkingsButtonHandler(u32 buttonIndex, enum TouchScreenButtonState buttonTouchState, void *context);
static void BoxAppMan_Load(BoxApplicationManager *boxAppMan, PokemonStorageSession *pokemonStorageSession);
static void BoxAppMan_Free(BoxApplicationManager *boxAppMan);
static void BoxSettings_Init(BoxSettings *boxSettings, enum BoxMode boxMode);
static void BoxAppMan_InitCursor(BoxApplicationManager *boxAppMan);
static void BoxMonSelection_Init(BoxMonSelection *selection);
static void BoxMonSelection_Free(BoxMonSelection *selection);
static void PCBoxes_InitCustomization(PCBoxes *pcBoxes, BoxCustomization *customization);
static void Customization_Free(BoxCustomization *customization);
static void PCMonPreview_Init(PCMonPreview *preview);
static void PCMonPreview_Free(PCMonPreview *preview);
static void PCCompareHelper_Init(CompareModeHelper *compareHelper);
static void PCCompareHelper_Free(CompareModeHelper *compareHelper);
static void BoxTouchDialHelper_Init(BoxTouchDialHelper *touchDialHelper);
static void PCBoxes_LoadCustomization(const PCBoxes *pcBoxes, BoxCustomization *customization);
static void BoxApp_LoadWallpaper(BoxApplication *boxApp, PCBoxes *pcBoxes);
static BOOL BoxAppMan_TryMoveCursorFromUserInput(u32 heldKeys, BoxApplicationManager *boxAppMan);
static BOOL BoxApp_TryMoveCursor(BoxApplication *boxApp, int colChange, int rowChange);
static enum CursorMovementState BoxAppMan_TryMoveSelectionFromUserInput(u32 heldKeys, BoxApplicationManager *boxAppMan);
static enum CursorMovementState BoxApp_TryMoveSelection(BoxApplication *boxApp, int colChange, int rowChange);
static void BoxAppMan_MoveCursorToParty(BoxApplicationManager *boxAppMan);
static void BoxAppMan_ReturnCursorToBox(BoxApplicationManager *boxAppMan);
static BOOL BoxAppMan_TryPreviewCursorMon(BoxApplicationManager *boxAppMan);
static BOOL BoxAppMan_TryPressTouchScreenButton(BoxApplicationManager *boxAppMan);
static void BoxAppMan_BoxTouchScreenButtonHandler(u32 buttonIndex, enum TouchScreenButtonState buttonTouchState, void *context);
static void BoxApp_SetBoxMessage(BoxApplication *boxApp, u32 boxMessageID);
static void BoxApp_SetCursorBoxLocation(BoxApplication *boxApp, u32 col, u32 row);
static void BoxAppMan_PickUpMon(BoxApplicationManager *boxAppMan, BoxApplication *boxApp);
static void BoxAppMan_PickUpMultiSelectedMons(BoxApplicationManager *boxAppMan, BoxApplication *boxApp);
static void BoxAppMan_ResetMultiSelectLocation(BoxApplicationManager *boxAppMan, BoxApplication *boxApp);
static void BoxAppMan_SetMultiSelectionEndLocation(BoxApplicationManager *boxAppMan, BoxApplication *boxApp);
static void BoxAppMan_PutDownCursorMon(BoxApplicationManager *boxAppMan, BoxApplication *boxApp);
static void BoxAppMan_PutDownSelectedMons(BoxApplicationManager *boxAppMan, BoxApplication *boxApp);
static void BoxAppMan_SwapMonInCursor(BoxApplicationManager *boxAppMan, BoxApplication *boxApp);
static BOOL BoxAppMan_TryStoreCursorMonInBox(BoxApplicationManager *boxAppMan, u32 boxID);
static BOOL BoxAppMan_TryStoreSelectedMonInBox(BoxApplicationManager *boxAppMan, u32 boxID);
static void BoxAppMan_RemoveCursorMon(BoxApplicationManager *boxAppMan);
static void BoxAppMan_RemoveMonUnderCursor(BoxApplicationManager *boxAppMan);
static void BoxApp_PreviewBoxMon(BoxApplication *boxApp, BoxPokemon *boxMon, BoxApplicationManager *boxAppMan);
static void BoxApp_LoadBoxMonIntoPreview(BoxApplication *boxApp, BoxPokemon *boxMon, BoxApplicationManager *boxAppMan);
static void BoxApp_LoadBoxMonIntoComparison(BoxApplication *boxApp, BoxPokemon *boxMon, BoxApplicationManager *boxAppMan);
static void BoxApp_ToggleCompareMonSlot(BoxApplication *boxApp);
static void BoxApp_NextCompareMode(BoxApplication *boxApp);
static void BoxApp_SetCompareButtonPressed(BoxApplication *boxApp, BOOL pressed);
static void BoxApp_SetPreviewedBoxMon(BoxApplication *boxApp, BoxPokemon *boxMon);
static void BoxApp_UpdatePreviewMonMarkings(BoxApplication *boxApp);
static void BoxApp_GiveItemToSelectedMon(BoxApplication *boxApp, u16 item, BoxApplicationManager *boxAppMan);
static void BoxApp_LoadRightBoxCustomization(BoxApplication *boxApp);
static void BoxApp_LoadLeftBoxCustomization(BoxApplication *boxApp);
static void BoxApp_LoadCustomizationsFor(BoxApplication *boxApp, u32 boxID);
static void BoxApp_SetBoxSelectionBoxID(BoxApplication *boxApp, u32 boxID);
static void BoxApp_PickUpHeldItem(BoxApplication *boxApp, BoxApplicationManager *boxAppMan);
static void BoxApp_RemoveCursorItem(BoxApplication *boxApp);
static void BoxApp_GiveItemFromCursor(BoxApplication *boxApp, BoxApplicationManager *boxAppMan);
static void BoxApp_SwapMonAndCursorItems(BoxApplication *boxApp, BoxApplicationManager *boxAppMan);
static void BoxApp_SetTouchDialSelected(BoxApplication *boxApp, enum TouchDials touchDialID);
static void BoxApp_SetTouchDialOffset(BoxApplication *boxApp, u32 offset);
static void BoxApp_SetMarkingsButtonsScrollOffset(BoxApplication *boxApp, u32 offset);
static void BoxApp_SetTouchDialScrollDelta(BoxApplication *boxApp, int amount);
static void BoxApp_SetMonSpriteTransparencyMask(BoxApplication *boxApp, u32 mask);
static void BoxApp_ToggleCursorFastMode(BoxApplication *boxApp);
static u32 BoxApp_GetPreviewedMonValue(BoxApplication *boxApp, enum PokemonDataParam value, void *dest);
static u32 BoxApp_GetPreviewedOrSelectedMonValue(BoxApplication *boxApp, enum PokemonDataParam value, void *dest);

BOOL BoxAppMan_Init(ApplicationManager *appMan, int *state)
{
    BoxApplicationManager *boxAppMan;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BOX_DATA, HEAP_SIZE_BOX_DATA);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BOX_GRAPHICS, HEAP_SIZE_BOX_GRAPHICS);

    boxAppMan = ApplicationManager_NewData(appMan, sizeof(BoxApplicationManager), HEAP_ID_BOX_DATA);

    if (boxAppMan != NULL) {
        BoxAppMan_Load(boxAppMan, ApplicationManager_Args(appMan));
        BoxGraphics_Load(&boxAppMan->unk_114, &boxAppMan->boxApp, boxAppMan);

        boxAppMan->cursorLocationHandlerState = 0;
        boxAppMan->cursorLocationInputHandler = BoxAppMan_GetCursorLocationInputHandler(boxAppMan);

        BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_LogInAction);
    }

    return TRUE;
}

BOOL BoxAppMan_Main(ApplicationManager *appMan, int *state)
{
    BoxApplicationManager *boxAppMan = ApplicationManager_Data(appMan);

    if (boxAppMan->boxApplicationAction != NULL) {
        boxAppMan->boxApplicationAction(boxAppMan, &boxAppMan->boxApplicationActionState);
        return FALSE;
    } else if (boxAppMan->cursorLocationInputHandler != NULL) {
        if (JOY_NEW(PAD_BUTTON_Y)) {
            if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114) == TRUE) {
                BoxApp_ToggleCursorFastMode(&boxAppMan->boxApp);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D7340);
                return FALSE;
            }
        }

        return boxAppMan->cursorLocationInputHandler(boxAppMan);
    }

    GF_ASSERT(0);
    return TRUE;
}

BOOL BoxAppMan_Exit(ApplicationManager *appMan, int *state)
{
    BoxApplicationManager *boxAppMan = ApplicationManager_Data(appMan);

    if (Party_HasSpecies(boxAppMan->party, SPECIES_CHATOT) == FALSE) {
        ChatotCry *chatotCry = SaveData_GetChatotCry(boxAppMan->saveData);

        ResetChatotCryDataStatus(chatotCry);
    }

    BoxGraphics_Free(boxAppMan->unk_114);
    BoxAppMan_Free(boxAppMan);

    Heap_Destroy(HEAP_ID_BOX_DATA);
    Heap_Destroy(HEAP_ID_BOX_GRAPHICS);

    return TRUE;
}

static void BoxAppMan_RegisterCursorLocationInputHandler(BoxApplicationManager *boxAppMan, CursorLocationInputHandler cursorLocationInputHandler)
{
    boxAppMan->cursorLocationInputHandler = cursorLocationInputHandler;
    boxAppMan->cursorLocationHandlerState = 0;
}

static void BoxAppMan_RegisterBoxApplicationAction(BoxApplicationManager *boxAppMan, BoxApplicationAction boxApplicationAction)
{
    boxAppMan->boxApplicationAction = boxApplicationAction;
    boxAppMan->boxApplicationActionState = 0;
}

static void BoxAppMan_ClearBoxApplicationAction(BoxApplicationManager *boxAppMan)
{
    boxAppMan->boxApplicationAction = NULL;
}

static CursorLocationInputHandler BoxAppMan_GetCursorLocationInputHandler(BoxApplicationManager *boxAppMan)
{
    switch (BoxApp_GetCursorLocation(&boxAppMan->boxApp)) {
    case CURSOR_IN_BOX:
    default:
        return BoxAppMan_CursorInBoxInputHandler;
    case CURSOR_IN_PARTY:
        return BoxAppMan_CursorInPartyInputHandler;
    case CURSOR_ON_BOX_HEADER:
        return BoxAppMan_CursorOnHeaderInputHandler;
    case CURSOR_ON_CLOSE_BUTTON:
        return BoxAppMan_CursorOnCloseInputHandler;
    case CURSOR_ON_PARTY_BUTTON:
        return BoxAppMan_CursorOnPartyButtonInputHandler;
    }
}

static void BoxAppMan_FlagRecordBoxUseInJournal(BoxApplicationManager *boxAppMan)
{
    boxAppMan->pokemonStorageSession->recordBoxUseInJournal = TRUE;
}

static void BoxAppMan_LogInAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case 0:
        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6694);
        (*state)++;
        break;
    case 1:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_ov19_021D6694)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack0);
            (*state)++;
        }
        break;
    case 2:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack0)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
        }
        break;
    }
}

static void BoxAppMan_ReturnToBoxFade1Action(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case 0:
        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6694);
        (*state)++;
        break;
    case 1:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_ov19_021D6694)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack1);
            (*state)++;
        }
        break;
    case 2:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack1)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
        }
        break;
    }
}

static inline void BoxAppMan_PreviewCompareMon(BoxApplicationManager *boxAppMan)
{
    BoxApp_ToggleCompareMonSlot(&boxAppMan->boxApp);
    BoxApp_PreviewBoxMon(&boxAppMan->boxApp, boxAppMan->boxApp.cursor.mon, boxAppMan);
    BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D7408);
    BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
}

static inline BOOL BoxAppMan_RegisterBoxTouchActionOrTryTouchCompareButton(BoxApplicationManager *boxAppMan)
{
    if (BoxAppMan_TryPressTouchScreenButton(boxAppMan)) {
        if (BoxApp_GetBoxMode(&boxAppMan->boxApp) != PC_MODE_COMPARE) {
            switch (boxAppMan->touchScreenButtonPressed) {
            case MAIN_PC_LEFT_BUTTON_ID:
                BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_TouchScreenBoxJump);
                break;
            case MAIN_PC_RIGHT_BUTTON_ID:
                if (BoxApp_GetBoxMode(&boxAppMan->boxApp) != PC_MODE_MOVE_ITEMS) {
                    BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_MarkingsFilterAction);
                } else {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;
            }
        } else {
            switch (boxAppMan->touchScreenButtonPressed) {
            case MAIN_PC_LEFT_BUTTON_ID:
                if (BoxApp_GetCompareMonSlot(&boxAppMan->boxApp) == 0 && BoxApp_IsMonUnderCursor(&boxAppMan->boxApp) == TRUE) {
                    Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                    BoxAppMan_PreviewCompareMon(boxAppMan);
                    return TRUE;
                } else {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;
            case MAIN_PC_RIGHT_BUTTON_ID:
                if (BoxApp_GetCompareMonSlot(&boxAppMan->boxApp) == 1 && BoxApp_IsMonUnderCursor(&boxAppMan->boxApp) == TRUE) {
                    Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                    BoxAppMan_PreviewCompareMon(boxAppMan);
                    return TRUE;
                } else {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;
            case COMPARE_MON_PC_BUTTON_ID:
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                BoxApp_NextCompareMode(&boxAppMan->boxApp);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D7424);
                return TRUE;
            }
        }
    }

    return FALSE;
}

enum CursorInBoxState {
    CURSOR_IN_BOX_WAIT_FOR_INPUT,
    CURSOR_IN_BOX_WAIT_FOR_MOVE_CURSOR,
    CURSOR_IN_BOX_WAIT_FOR_TOUCHSCREEN_DONE
};

static int BoxAppMan_CursorInBoxInputHandler(BoxApplicationManager *boxAppMan)
{
    switch (boxAppMan->cursorLocationHandlerState) {
    case CURSOR_IN_BOX_WAIT_FOR_INPUT:
        if (JOY_NEW(PAD_BUTTON_A)) {
            if (BoxApp_IsMonAvailableToCursor(&boxAppMan->boxApp)) {
                if (BoxApp_GetBoxMode(&boxAppMan->boxApp) != PC_MODE_MOVE_ITEMS) {
                    BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_MonCursorMenuAction);
                } else {
                    BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_MonItemMenuAction);
                }
                break;
            }
        }

        if (JOY_NEW(PAD_BUTTON_B)) {
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_ContinueBoxOperationsAction);
            break;
        }

        if (JOY_HELD(PAD_BUTTON_L)) {
            BoxApp_LoadLeftBoxCustomization(&boxAppMan->boxApp);
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_ChangeToNewBoxAction);
            break;
        }

        if (JOY_HELD(PAD_BUTTON_R)) {
            BoxApp_LoadRightBoxCustomization(&boxAppMan->boxApp);
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_ChangeToNewBoxAction);
            break;
        }

        if (BoxAppMan_TryMoveCursorFromUserInput(gSystem.heldKeys, boxAppMan)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_MoveCursor);

            if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) == PREVIEW_MON_UNDER_CURSOR) {
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
            }

            boxAppMan->cursorLocationHandlerState++;
            break;
        }

        if (BoxAppMan_RegisterBoxTouchActionOrTryTouchCompareButton(boxAppMan)) {
            boxAppMan->cursorLocationHandlerState = CURSOR_IN_BOX_WAIT_FOR_TOUCHSCREEN_DONE;
        }
        break;
    case CURSOR_IN_BOX_WAIT_FOR_MOVE_CURSOR:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_MoveCursor)) {
            BoxAppMan_RegisterCursorLocationInputHandler(boxAppMan, BoxAppMan_GetCursorLocationInputHandler(boxAppMan));
        }
        break;
    case CURSOR_IN_BOX_WAIT_FOR_TOUCHSCREEN_DONE:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            boxAppMan->cursorLocationHandlerState = CURSOR_IN_BOX_WAIT_FOR_INPUT;
        }
        break;
    }

    return 0;
}

static BOOL BoxAppMan_IsPreviewedMonHoldingMailOrHasBallCapsule(BoxApplicationManager *boxAppMan, int *destMessageID)
{
    if (Item_IsMail(BoxApp_GetPreviewedMonHeldItem(&boxAppMan->boxApp))) {
        *destMessageID = BoxText_RemoveMail;
        return TRUE;
    }

    if (BoxApp_GetPreviewedMonValue(&boxAppMan->boxApp, MON_DATA_BALL_CAPSULE_ID, NULL)) {
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

static int BoxAppMan_CursorInPartyInputHandler(BoxApplicationManager *boxAppMan)
{
    switch (boxAppMan->cursorLocationHandlerState) {
    case CURSOR_IN_PARTY_WAIT_FOR_INPUT:
        if (JOY_NEW(PAD_BUTTON_A)) {
            if (BoxApp_GetCursorPartyPosition(&boxAppMan->boxApp) == MAX_PARTY_SIZE) {
                boxAppMan->cursorLocationHandlerState = CURSOR_IN_PARTY_LEAVE_PARTY;
                break;
            }

            if (BoxApp_IsMonAvailableToCursor(&boxAppMan->boxApp)) {
                if (BoxApp_GetBoxMode(&boxAppMan->boxApp) != PC_MODE_MOVE_ITEMS) {
                    BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_MonCursorMenuAction);
                } else {
                    BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_MonItemMenuAction);
                }
                break;
            }
            break;
        }

        if (JOY_NEW(PAD_BUTTON_B) || JOY_NEW(PAD_KEY_RIGHT) && BoxApp_GetCursorPartyPosition(&boxAppMan->boxApp) & 1 || JOY_NEW(PAD_KEY_RIGHT) && BoxApp_GetCursorPartyPosition(&boxAppMan->boxApp) == MAX_PARTY_SIZE) {
            boxAppMan->cursorLocationHandlerState = CURSOR_IN_PARTY_LEAVE_PARTY;
            break;
        }

        if (BoxAppMan_TryMoveCursorFromUserInput(gSystem.heldKeys, boxAppMan)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_MoveCursor);

            if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) == PREVIEW_MON_UNDER_CURSOR) {
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
            }

            boxAppMan->cursorLocationHandlerState = CURSOR_IN_PARTY_WAIT_FOR_MOVE_CURSOR;
            break;
        }

        if (BoxAppMan_RegisterBoxTouchActionOrTryTouchCompareButton(boxAppMan)) {
            boxAppMan->cursorLocationHandlerState = CURSOR_IN_PARTY_WAIT_FOR_TOUCHSCREEN_DONE;
            break;
        }
        break;
    case CURSOR_IN_PARTY_WAIT_FOR_MOVE_CURSOR:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_MoveCursor)) {
            boxAppMan->cursorLocationHandlerState = CURSOR_IN_PARTY_WAIT_FOR_INPUT;
        }
        break;
    case CURSOR_IN_PARTY_LEAVE_PARTY:
        if (BoxApp_GetBoxMode(&boxAppMan->boxApp) == PC_MODE_DEPOSIT) {
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_ContinueBoxOperationsAction);
            boxAppMan->cursorLocationHandlerState = CURSOR_IN_PARTY_WAIT_FOR_INPUT;
        } else {
            int messageID;

            if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) != PREVIEW_MON_UNDER_CURSOR && BoxAppMan_IsPreviewedMonHoldingMailOrHasBallCapsule(boxAppMan, &messageID)) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                BoxApp_SetBoxMessage(&boxAppMan->boxApp, messageID);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                boxAppMan->cursorLocationHandlerState = CURSOR_IN_PARTY_CONFIRM_MESSAGE;
            } else {
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D7138);
                boxAppMan->cursorLocationHandlerState = CURSOR_IN_PARTY_RETURN_TO_BOX;
            }
        }
        break;
    case CURSOR_IN_PARTY_RETURN_TO_BOX:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_ov19_021D7138)) {
            BoxAppMan_ReturnCursorToBox(boxAppMan);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_MoveCursor);

            if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) == PREVIEW_MON_UNDER_CURSOR) {
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
            }

            boxAppMan->cursorLocationHandlerState = CURSOR_IN_PARTY_WAIT_FOR_MOVE_CURSOR_TO_BOX;
        }
        break;
    case CURSOR_IN_PARTY_WAIT_FOR_MOVE_CURSOR_TO_BOX:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_MoveCursor)) {
            BoxAppMan_RegisterCursorLocationInputHandler(boxAppMan, BoxAppMan_GetCursorLocationInputHandler(boxAppMan));
        }
        break;
    case CURSOR_IN_PARTY_CONFIRM_MESSAGE:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage) == FALSE) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            boxAppMan->cursorLocationHandlerState = CURSOR_IN_PARTY_WAIT_FOR_INPUT;
        }
        break;
    case CURSOR_IN_PARTY_WAIT_FOR_TOUCHSCREEN_DONE:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            boxAppMan->cursorLocationHandlerState = CURSOR_IN_PARTY_WAIT_FOR_INPUT;
        }
        break;
    }

    return 0;
}

enum CursorOnHeaderState {
    CURSOR_ON_HEADER_WAIT_FOR_INPUT,
    CURSOR_ON_HEADER_WAIT_FOR_MOVE_CURSOR
};

static int BoxAppMan_CursorOnHeaderInputHandler(BoxApplicationManager *boxAppMan)
{
    switch (boxAppMan->cursorLocationHandlerState) {
    case CURSOR_ON_HEADER_WAIT_FOR_INPUT:
        if (JOY_HELD(PAD_KEY_LEFT | PAD_BUTTON_L)) {
            BoxApp_LoadLeftBoxCustomization(&boxAppMan->boxApp);
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_ChangeToNewBoxAction);
            break;
        }

        if (JOY_HELD(PAD_KEY_RIGHT | PAD_BUTTON_R)) {
            BoxApp_LoadRightBoxCustomization(&boxAppMan->boxApp);
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_ChangeToNewBoxAction);
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A)) {
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_BoxHeaderMenuAction);
            break;
        }

        if (JOY_NEW(PAD_BUTTON_B)) {
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_ContinueBoxOperationsAction);
            break;
        }

        if (BoxAppMan_TryMoveCursorFromUserInput(gSystem.heldKeys, boxAppMan)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_MoveCursor);

            if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) == PREVIEW_MON_UNDER_CURSOR) {
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
            }

            boxAppMan->cursorLocationHandlerState = CURSOR_ON_HEADER_WAIT_FOR_MOVE_CURSOR;
            break;
        }

        BoxAppMan_RegisterBoxTouchActionOrTryTouchCompareButton(boxAppMan);
        break;
    case CURSOR_ON_HEADER_WAIT_FOR_MOVE_CURSOR:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_MoveCursor)) {
            BoxAppMan_RegisterCursorLocationInputHandler(boxAppMan, BoxAppMan_GetCursorLocationInputHandler(boxAppMan));
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

static int BoxAppMan_CursorOnCloseInputHandler(BoxApplicationManager *boxAppMan)
{
    switch (boxAppMan->cursorLocationHandlerState) {
    case CURSOR_CLOSE_WAIT_FOR_INPUT:
        if (JOY_NEW(PAD_BUTTON_A)) {
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_CloseBoxAction);
            break;
        }

        if (JOY_NEW(PAD_BUTTON_B)) {
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_ContinueBoxOperationsAction);
            break;
        }

        if (JOY_HELD(PAD_BUTTON_L)) {
            BoxApp_LoadLeftBoxCustomization(&boxAppMan->boxApp);
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_ChangeToNewBoxAction);
            break;
        }

        if (JOY_HELD(PAD_BUTTON_R)) {
            BoxApp_LoadRightBoxCustomization(&boxAppMan->boxApp);
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_ChangeToNewBoxAction);
            break;
        }

        if (BoxAppMan_TryMoveCursorFromUserInput(gSystem.heldKeys, boxAppMan)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_MoveCursor);

            if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) == PREVIEW_MON_UNDER_CURSOR) {
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
            }

            boxAppMan->cursorLocationHandlerState = CURSOR_CLOSE_WAIT_FOR_CURSOR_MOVE;
            break;
        }

        BoxAppMan_RegisterBoxTouchActionOrTryTouchCompareButton(boxAppMan);
        break;
    case CURSOR_CLOSE_WAIT_FOR_BOX_CHANGE:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ChangeToNewBox)) {
            boxAppMan->cursorLocationHandlerState = CURSOR_CLOSE_WAIT_FOR_INPUT;
        }
        break;
    case CURSOR_CLOSE_WAIT_FOR_CURSOR_MOVE:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_MoveCursor)) {
            BoxAppMan_RegisterCursorLocationInputHandler(boxAppMan, BoxAppMan_GetCursorLocationInputHandler(boxAppMan));
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

static int BoxAppMan_CursorOnPartyButtonInputHandler(BoxApplicationManager *boxAppMan)
{
    switch (boxAppMan->cursorLocationHandlerState) {
    case CURSOR_ON_PARTY_BUTTON_STATE_WAIT_FOR_INPUT:
        if (JOY_NEW(PAD_BUTTON_A)) {
            if (BoxApp_GetBoxMode(&boxAppMan->boxApp) != PC_MODE_WITHDRAW) {
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PressBoxButton);
                boxAppMan->cursorLocationHandlerState = CURSOR_ON_PARTY_BUTTON_ANIMATE_PRESS_BUTTON;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_PickOne);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                boxAppMan->cursorLocationHandlerState = CURSOR_ON_PARTY_BUTTON_CONFIRM_MESSAGE;
            }
            break;
        }

        if (JOY_NEW(PAD_BUTTON_B)) {
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_ContinueBoxOperationsAction);
            break;
        }

        if (JOY_HELD(PAD_BUTTON_L)) {
            BoxApp_LoadLeftBoxCustomization(&boxAppMan->boxApp);
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_ChangeToNewBoxAction);
            break;
        }

        if (JOY_HELD(PAD_BUTTON_R)) {
            BoxApp_LoadRightBoxCustomization(&boxAppMan->boxApp);
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_ChangeToNewBoxAction);
            break;
        }

        if (BoxAppMan_TryMoveCursorFromUserInput(gSystem.heldKeys, boxAppMan)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_MoveCursor);

            if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) == PREVIEW_MON_UNDER_CURSOR) {
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
            }

            boxAppMan->cursorLocationHandlerState = CURSOR_ON_PARTY_BUTTON_WAIT_FOR_MOVE_CURSOR;
            break;
        }

        BoxAppMan_RegisterBoxTouchActionOrTryTouchCompareButton(boxAppMan);
        break;
    case CURSOR_ON_PARTY_BUTTON_ANIMATE_PRESS_BUTTON:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_PressBoxButton)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_OpenPartyPopup);
            boxAppMan->cursorLocationHandlerState = CURSOR_ON_PARTY_BUTTON_WAIT_FOR_OPEN_PARTY;
        }

        break;
    case CURSOR_ON_PARTY_BUTTON_WAIT_FOR_OPEN_PARTY:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_OpenPartyPopup)) {
            BoxAppMan_MoveCursorToParty(boxAppMan);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_MoveCursor);

            if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) == PREVIEW_MON_UNDER_CURSOR) {
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
            }

            boxAppMan->cursorLocationHandlerState = CURSOR_ON_PARTY_BUTTON_WAIT_FOR_MOVE_CURSOR;
        }
        break;
    case CURSOR_ON_PARTY_BUTTON_WAIT_FOR_CHANGE_BOX:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ChangeToNewBox)) {
            boxAppMan->cursorLocationHandlerState = CURSOR_ON_PARTY_BUTTON_STATE_WAIT_FOR_INPUT;
        }
        break;
    case CURSOR_ON_PARTY_BUTTON_WAIT_FOR_MOVE_CURSOR:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_MoveCursor)) {
            BoxAppMan_RegisterCursorLocationInputHandler(boxAppMan, BoxAppMan_GetCursorLocationInputHandler(boxAppMan));
        }
        break;
    case CURSOR_ON_PARTY_BUTTON_CONFIRM_MESSAGE:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            boxAppMan->cursorLocationHandlerState = 0;
        }
        break;
    }

    return 0;
}

static void BoxAppMan_InitSummary(BoxApplicationManager *boxAppMan)
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

    if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) == PREVIEW_MON_IN_CURSOR) {
        BoxMonSelection *selection = &boxAppMan->boxApp.selection;

        boxAppMan->monSummary.monData = boxAppMan->boxApp.selection.boxMon;
        boxAppMan->monSummary.dataType = (selection->cursorMonIsPartyMon) ? SUMMARY_DATA_MON : SUMMARY_DATA_BOX_MON;
        boxAppMan->monSummary.monMax = 1;
        boxAppMan->monSummary.monIndex = 0;
        boxAppMan->monSummary.mode = SUMMARY_MODE_NORMAL;
        boxAppMan->monSummary.move = MOVE_NONE;
        boxAppMan->monSummary.options = boxAppMan->options;
    } else if (BoxApp_GetCursorLocation(&boxAppMan->boxApp) == CURSOR_IN_BOX) {
        boxAppMan->monSummary.monData = PCBoxes_GetBoxMonAt(boxAppMan->pcBoxes, PCBoxes_GetCurrentBoxID(boxAppMan->pcBoxes), 0);
        boxAppMan->monSummary.dataType = SUMMARY_DATA_BOX_MON;
        boxAppMan->monSummary.monMax = MAX_MONS_PER_BOX;
        boxAppMan->monSummary.monIndex = BoxApp_GetCursorBoxPosition(&boxAppMan->boxApp);
        boxAppMan->monSummary.mode = SUMMARY_MODE_NORMAL;
        boxAppMan->monSummary.move = MOVE_NONE;
    } else {
        boxAppMan->monSummary.monData = boxAppMan->party;
        boxAppMan->monSummary.dataType = SUMMARY_DATA_PARTY_MON;
        boxAppMan->monSummary.monMax = Party_GetCurrentCount(boxAppMan->party);
        boxAppMan->monSummary.monIndex = BoxApp_GetCursorPartyPosition(&boxAppMan->boxApp);
        boxAppMan->monSummary.mode = SUMMARY_MODE_NORMAL;
        boxAppMan->monSummary.move = MOVE_NONE;
    }

    boxAppMan->monSummary.chatotCry = NULL;
    boxAppMan->monSummary.dexMode = SaveData_GetDexMode(boxAppMan->saveData);
    boxAppMan->monSummary.showContest = PokemonSummaryScreen_ShowContestData(boxAppMan->saveData);
    boxAppMan->monSummary.specialRibbons = sub_0202D79C(boxAppMan->saveData);

    PokemonSummaryScreen_FlagVisiblePages(&boxAppMan->monSummary, summaryPages);
    PokemonSummaryScreen_SetPlayerProfile(&boxAppMan->monSummary, SaveData_GetTrainerInfo(boxAppMan->saveData));
}

static int BoxAppMan_LogOffScreenFade(BoxApplicationManager *boxAppMan)
{
    switch (boxAppMan->cursorLocationHandlerState) {
    case 0:
        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlackLogOff);
        boxAppMan->cursorLocationHandlerState++;
        break;
    case 1:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
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

static void BoxAppMan_CloseBoxAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case CLOSE_BOX_START:
        if (BoxApp_GetBoxMode(&boxAppMan->boxApp) == PC_MODE_MOVE_ITEMS && BoxApp_GetCursorItem(&boxAppMan->boxApp) != ITEM_NONE) {
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_PutAwayItemAction);
            break;
        }

        if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) != PREVIEW_MON_UNDER_CURSOR) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_HoldingMon);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = CLOSE_BOX_CANNOT_CLOSE;
            break;
        } else {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PressBoxButton);
            *state = CLOSE_BOX_SHOW_MENU;
        }

        break;

    case CLOSE_BOX_SHOW_MENU:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_PressBoxButton)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_ConfirmExit);
            BoxMenu_FillYesNo(&boxAppMan->boxApp, 1);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ShowMenu);
            *state = CLOSE_BOX_YES_NO;
        }
        break;
    case CLOSE_BOX_YES_NO:
        switch (BoxMenu_GetMenuNavigation(&boxAppMan->boxApp)) {
        case BOX_MENU_NAVIGATION_UP_DOWN:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_NO:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = CLOSE_BOX_END;
            break;
        case BOX_MENU_YES:
            BoxAppMan_RegisterCursorLocationInputHandler(boxAppMan, BoxAppMan_LogOffScreenFade);
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
            break;
        }
        break;
    case CLOSE_BOX_CANNOT_CLOSE:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ShowMenu) == FALSE) {
            break;
        }
        *state = CLOSE_BOX_CONFIRM_MESSAGE;
    case CLOSE_BOX_CONFIRM_MESSAGE:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = CLOSE_BOX_END;
        }
        break;
    case CLOSE_BOX_END:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
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

static void BoxAppMan_ContinueBoxOperationsAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case CONTINUE_OPERATIONS_START:
        if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) != PREVIEW_MON_UNDER_CURSOR) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_HoldingMon);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = CONTINUE_OPERATIONS_WAIT_FOR_MESSAGE;
            break;
        } else if (BoxApp_GetBoxMode(&boxAppMan->boxApp) == PC_MODE_MOVE_ITEMS && BoxApp_GetCursorItem(&boxAppMan->boxApp) != ITEM_NONE) {
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_PutAwayItemAction);
            break;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_ConfirmContinue);
            BoxMenu_FillYesNo(&boxAppMan->boxApp, 0);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ShowMenu);
            *state = CONTINUE_OPERATIONS_YES_NO;
        }
        break;
    case CONTINUE_OPERATIONS_YES_NO:
        switch (BoxMenu_GetMenuNavigation(&boxAppMan->boxApp)) {
        case BOX_MENU_NAVIGATION_UP_DOWN:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_NO:
            BoxAppMan_RegisterCursorLocationInputHandler(boxAppMan, BoxAppMan_LogOffScreenFade);
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
            break;
        case BOX_MENU_YES:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = CONTINUE_OPERATIONS_END;
            break;
        }
        break;
    case CONTINUE_OPERATIONS_WAIT_FOR_MESSAGE:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ShowMenu) == FALSE) {
            break;
        }
        *state = CONTINUE_OPERATIONS_CONFIRM_MESSAGE;
    case CONTINUE_OPERATIONS_CONFIRM_MESSAGE:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = CONTINUE_OPERATIONS_END;
        }
        break;
    case CONTINUE_OPERATIONS_END:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
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

static void BoxAppMan_MonCursorMenuAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case MON_CURSOR_MENU_START:
        StringTemplate_SetNickname(boxAppMan->MessageVariableBuffer, 0, BoxApp_GetPreviewedBoxMon(&boxAppMan->boxApp));
        BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_MonSelected);
        BoxMenu_FillTopLevelMenuItems(&boxAppMan->boxApp);

        if (BoxApp_IsCursorFastMode(&boxAppMan->boxApp)) {
            boxAppMan->menuItem = BoxMenu_GetDefaultMenuItem(&boxAppMan->boxApp);
            *state = MON_CURSOR_MENU_ITEM_SELECTED;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ShowMenu);
            *state = MON_CURSOR_MENU_SHOW_MENU;
        }
        break;
    case MON_CURSOR_MENU_SHOW_MENU:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ShowMenu) == FALSE) {
            break;
        }
        *state = MON_CURSOR_MENU_NAVIGATE_MENU;
    case MON_CURSOR_MENU_NAVIGATE_MENU:
        boxAppMan->menuItem = BoxMenu_GetMenuNavigation(&boxAppMan->boxApp);

        switch (boxAppMan->menuItem) {
        case BOX_MENU_NAVIGATION_NONE:
            break;
        case BOX_MENU_NAVIGATION_UP_DOWN:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_CANCEL:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = MON_CURSOR_MENU_END_WHEN_READY;
            break;
        default:
            *state = MON_CURSOR_MENU_ITEM_SELECTED;
            break;
        }
        break;
    case MON_CURSOR_MENU_ITEM_SELECTED:
        switch (boxAppMan->menuItem) {
        case BOX_MENU_MOVE:
            if (BoxApp_GetCursorLocation(&boxAppMan->boxApp) == CURSOR_IN_BOX && BoxApp_IsCursorFastMode(&boxAppMan->boxApp) == TRUE) {
                BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_MultiSelectAction);
            } else {
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_PickUpMonAction);
            }
            break;
        case BOX_MENU_PLACE:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_PlaceMonAction);
            break;
        case BOX_MENU_SHIFT:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_ShiftMonAction);
            break;
        case BOX_MENU_WITHDRAW:
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_WithdrawMonAction);
            break;
        case BOX_MENU_STORE:
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_StoreMonAction);
            break;
        case BOX_MENU_MARK:
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_MarkAction);
            break;
        case BOX_MENU_RELEASE:
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_ReleaseMonAction);
            break;
        case BOX_MENU_SUMMARY:
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_OpenSummaryAction);
            break;
        case BOX_MENU_ITEM: {
            if (BoxApp_GetPreviewedMonHeldItem(&boxAppMan->boxApp) == ITEM_NONE) {
                BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_GiveItemFromBagAction);
            } else {
                BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_MonItemHeldAction);
            }
        } break;
        case BOX_MENU_SET_ON_LEFT:
        case BOX_MENU_SET_ON_RIGHT:
            BoxApp_ToggleCompareMonSlot(&boxAppMan->boxApp);
            BoxApp_PreviewBoxMon(&boxAppMan->boxApp, boxAppMan->boxApp.cursor.mon, boxAppMan);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D73EC);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            *state = MON_CURSOR_MENU_END;
            break;
        }
        break;
    case MON_CURSOR_MENU_END_WHEN_READY:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
        }
        break;
    case MON_CURSOR_MENU_END:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
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

static void BoxAppMan_MonItemMenuAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case MON_ITEM_MENU_START:
        u32 item = BoxApp_GetCursorItem(&boxAppMan->boxApp);

        if (item != ITEM_NONE) {
            StringTemplate_SetItemName(boxAppMan->MessageVariableBuffer, ITEM_NONE, item);
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_ItemSelected);
        } else {
            item = BoxApp_GetPreviewedMonHeldItem(&boxAppMan->boxApp);

            if (item != ITEM_NONE) {
                StringTemplate_SetItemName(boxAppMan->MessageVariableBuffer, 0, item);
                BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_ItemSelected);
            } else {
                BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_GiveToMon);
            }
        }

        BoxMenu_FillItemsMenu(&boxAppMan->boxApp);

        if (BoxApp_IsPreviewedMonEgg(&boxAppMan->boxApp)) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_EggsCantHoldItems);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = MON_ITEM_MENU_CONFIRM_MESSAGE;
        } else if (BoxApp_IsCursorFastMode(&boxAppMan->boxApp)) {
            boxAppMan->menuItem = BoxMenu_GetDefaultMenuItem(&boxAppMan->boxApp);
            *state = MON_ITEM_MENU_SELECTED;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ShowMenu);
            *state = MON_ITEM_MENU_WAIT_FOR_MENU;
        }
        break;
    case MON_ITEM_MENU_WAIT_FOR_MENU:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ShowMenu) == FALSE) {
            break;
        }
        *state = MON_ITEM_MENU_NAVIGATE_MENU;
    case MON_ITEM_MENU_NAVIGATE_MENU:
        boxAppMan->menuItem = BoxMenu_GetMenuNavigation(&boxAppMan->boxApp);

        switch (boxAppMan->menuItem) {
        case BOX_MENU_NAVIGATION_NONE:
            break;
        case BOX_MENU_NAVIGATION_UP_DOWN:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_ITEMS_CANCEL:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = MON_ITEM_MENU_END_WHEN_READY;
            break;
        default:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            *state = MON_ITEM_MENU_SELECTED;
            break;
        }
        break;
    case MON_ITEM_MENU_SELECTED:
        switch (boxAppMan->menuItem) {
        case BOX_MENU_GIVE:
            if (BoxApp_GetCursorItem(&boxAppMan->boxApp) == ITEM_GRISEOUS_ORB && BoxPokemon_GetValue(boxAppMan->boxApp.pcMonPreview.mon, MON_DATA_SPECIES, NULL) != SPECIES_GIRATINA) {
                StringTemplate_SetItemName(boxAppMan->MessageVariableBuffer, 0, ITEM_GRISEOUS_ORB);
                BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_MonCantHoldItem);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                *state = MON_ITEM_MENU_CONFIRM_MESSAGE;
            } else if (BoxApp_GetCursorItem(&boxAppMan->boxApp) != ITEM_NONE) {
                BoxApp_GiveItemFromCursor(&boxAppMan->boxApp, boxAppMan);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6CF8);
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                *state = MON_ITEM_MENU_WAIT_FOR_ANIMATIONS;
            } else {
                BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_GiveItemFromBagAction);
            }

            break;
        case BOX_MENU_TAKE:
            if (Item_IsMail(BoxApp_GetPreviewedMonHeldItem(&boxAppMan->boxApp))) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_CantTakeMail);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                *state = MON_ITEM_MENU_CONFIRM_MESSAGE;
            } else {
                BoxApp_PickUpHeldItem(&boxAppMan->boxApp, boxAppMan);
                BoxAppMan_FlagRecordBoxUseInJournal(boxAppMan);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6CB0);
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                *state = MON_ITEM_MENU_WAIT_FOR_ANIMATIONS;
            }
            break;
        case BOX_MENU_INFO:
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_DisplayItemInfoAction);
            break;
        case BOX_MENU_SWITCH:
            if (Item_IsMail(BoxApp_GetPreviewedMonHeldItem(&boxAppMan->boxApp))) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_CantTakeMail);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                *state = MON_ITEM_MENU_CONFIRM_MESSAGE;
            } else if (boxAppMan->boxApp.cursorItem == ITEM_GRISEOUS_ORB && BoxPokemon_GetValue(boxAppMan->boxApp.pcMonPreview.mon, MON_DATA_SPECIES, NULL) != SPECIES_GIRATINA) {
                StringTemplate_SetItemName(boxAppMan->MessageVariableBuffer, ITEM_NONE, ITEM_GRISEOUS_ORB);
                BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_MonCantHoldItem);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                *state = MON_ITEM_MENU_CONFIRM_MESSAGE;
            } else {
                BoxApp_SwapMonAndCursorItems(&boxAppMan->boxApp, boxAppMan);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6D40);
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                *state = MON_ITEM_MENU_WAIT_FOR_ANIMATIONS;
            }
            break;
        case BOX_MENU_BAG:
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_PutAwayItemAction);
            break;
        }
        break;
    case MON_ITEM_MENU_END_WHEN_READY:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
        }
        break;
    case MON_ITEM_MENU_WAIT_FOR_ANIMATIONS:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6D88);
            *state = MON_ITEM_MENU_END;
        }
        break;
    case MON_ITEM_MENU_END:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
        }
        break;
    case MON_ITEM_MENU_CONFIRM_MESSAGE:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
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

static void BoxAppMan_BoxHeaderMenuAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case BOX_HEADER_MENU_START:
        BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_WhatDo);
        BoxMenu_FillHeaderMenu(&boxAppMan->boxApp);

        if (BoxApp_IsCursorFastMode(&boxAppMan->boxApp)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            boxAppMan->menuItem = BoxMenu_GetDefaultMenuItem(&boxAppMan->boxApp);
            *state = BOX_HEADER_MENU_ITEM_SELECTED;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ShowMenu);
            *state = BOX_HEADER_MENU_SHOW_MENU;
        }
        break;
    case BOX_HEADER_MENU_SHOW_MENU:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ShowMenu) == FALSE) {
            break;
        }
        *state = BOX_HEADER_MENU_NAVIGATE_MENU;
    case BOX_HEADER_MENU_NAVIGATE_MENU:
        boxAppMan->menuItem = BoxMenu_GetMenuNavigation(&boxAppMan->boxApp);

        switch (boxAppMan->menuItem) {
        case BOX_MENU_NAVIGATION_NONE:
            break;
        case BOX_MENU_NAVIGATION_UP_DOWN:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_HEADER_CANCEL:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = BOX_HEADER_MENU_END_WHEN_READY;
            break;
        default:
            *state = BOX_HEADER_MENU_ITEM_SELECTED;
            break;
        }
        break;
    case BOX_HEADER_MENU_ITEM_SELECTED:
        switch (boxAppMan->menuItem) {
        case BOX_MENU_JUMP:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_BoxJumpAction);
            break;
        case BOX_MENU_WALLPAPER:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6EC0);
            *state = BOX_HEADER_MENU_END;
            break;
        case BOX_MENU_NAME:
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_RenameBoxAction);
            break;
        }
        break;
    case BOX_HEADER_MENU_END_WHEN_READY:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
        }
        break;
    case BOX_HEADER_MENU_END:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_WallpaperMenu);
        }
        break;
    }
}

enum BoxJumpState {
    JUMP_START,
    JUMP_TO_BOX,
    JUMP_END
};

static void BoxAppMan_BoxJumpAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case JUMP_START:
        BoxSelectorPopup_Init(boxAppMan, BoxApp_GetCurrentBox(&boxAppMan->boxApp), BoxText_JumpToBox);
        *state = JUMP_TO_BOX;
        break;
    case JUMP_TO_BOX:
        if (BoxAppMan_TrySelectBoxFromPopup(boxAppMan) == FALSE) {
            break;
        }

        if (boxAppMan->boxSelector.boxID == -1 || boxAppMan->boxSelector.boxID == BoxApp_GetCurrentBox(&boxAppMan->boxApp)) {
            *state = JUMP_END;
        } else {
            BoxApp_LoadCustomizationsFor(&boxAppMan->boxApp, boxAppMan->boxSelector.boxID);
            PCBoxes_SetCurrentBox(boxAppMan->pcBoxes, boxAppMan->boxSelector.boxID);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ChangeToNewBox);
            *state = JUMP_END;
        }

        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6FB0);
        break;
    case JUMP_END:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
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

static void BoxAppMan_WallpaperMenu(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case WALLPAPER_MENU_START:
        boxAppMan->menuItem = BOX_MENU_SCENERY_1;
        *state = WALLPAPER_MENU_PICK_THEME_INIT;
    case WALLPAPER_MENU_PICK_THEME_INIT:
        BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_PickTheme);
        BoxMenu_FillWallpaperMenu(&boxAppMan->boxApp, boxAppMan->menuItem);
        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ShowMenu);
        *state = WALLPAPER_MENU_PICK_THEME_WAIT_FOR_TASK;
        break;
    case WALLPAPER_MENU_PICK_THEME_WAIT_FOR_TASK:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ShowMenu) == FALSE) {
            break;
        }
        *state = WALLPAPER_MENU_PICK_THEME_WAIT_FOR_USER;
    case WALLPAPER_MENU_PICK_THEME_WAIT_FOR_USER:
        switch (BoxMenu_GetMenuNavigation(&boxAppMan->boxApp)) {
        case BOX_MENU_NAVIGATION_NONE:
            break;
        case BOX_MENU_NAVIGATION_UP_DOWN:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_HEADER_CANCEL:
        default:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = WALLPAPER_MENU_END;
            break;
        case BOX_MENU_SCENERY_1:
        case BOX_MENU_SCENERY_2:
        case BOX_MENU_SCENERY_3:
        case BOX_MENU_ETCETERA:
        case BOX_MENU_FRIENDS_1:
        case BOX_MENU_FRIENDS_2:
            boxAppMan->menuItem = BoxMenu_GetSelectedMenuItem(&boxAppMan->boxApp);
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_Wallpaper);
            BoxMenu_FillWallpaperSelectionMenu(&boxAppMan->boxApp, boxAppMan->menuItem);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ShowMenu);
            *state = WALLPAPER_MENU_PICK_WALLPAPER_WAIT_FOR_TASK;
            break;
        }
        break;
    case WALLPAPER_MENU_PICK_WALLPAPER_WAIT_FOR_TASK:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ShowMenu) == FALSE) {
            break;
        }
        *state = WALLPAPER_MENU_PICK_WALLPAPER_WAIT_FOR_USER;
    case WALLPAPER_MENU_PICK_WALLPAPER_WAIT_FOR_USER:
        switch (BoxMenu_GetMenuNavigation(&boxAppMan->boxApp)) {
        case BOX_MENU_NAVIGATION_NONE:
            break;
        case BOX_MENU_NAVIGATION_UP_DOWN:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_HEADER_CANCEL:
            *state = WALLPAPER_MENU_PICK_THEME_INIT;
            break;
        default:
            boxAppMan->menuItem = BoxMenu_GetSelectedMenuItem(&boxAppMan->boxApp);

            if (boxAppMan->menuItem >= BOX_MENU_FIRST_WALLPAPER && boxAppMan->menuItem <= BOX_MENU_LAST_WALLPAPER) {
                PCBoxes_SetWallpaper(boxAppMan->pcBoxes, USE_CURRENT_BOX, boxAppMan->menuItem - BOX_MENU_FIRST_WALLPAPER);
                BoxApp_LoadWallpaper(&boxAppMan->boxApp, boxAppMan->pcBoxes);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                *state = WALLPAPER_MENU_TRANSITION_WALLPAPER;
            } else {
                GF_ASSERT(FALSE);
                *state = WALLPAPER_MENU_PICK_THEME_INIT;
            }
        }
        break;
    case WALLPAPER_MENU_TRANSITION_WALLPAPER:
        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_TransitionWallpaper);
        *state = WALLPAPER_MENU_END;
        break;
    case WALLPAPER_MENU_UNREACHABLE:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            *state = WALLPAPER_MENU_PICK_THEME_INIT;
        }
        break;
    case WALLPAPER_MENU_END:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
        }
        break;
    }
}

enum MarkState {
    MARK_START,
    MARK_PROCESS_USER_INPUT,
    MARK_END,
};

static void BoxAppMan_MarkAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case MARK_START:
        BoxMenu_FillMarkingsMenu(&boxAppMan->boxApp);
        BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_MarkMon);
        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ShowMenu);
        *state = MARK_PROCESS_USER_INPUT;
        break;
    case MARK_PROCESS_USER_INPUT:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114) == FALSE) {
            break;
        } else {
            u32 selectedItem = BoxMenu_GetMenuNavigation(&boxAppMan->boxApp);

            switch (selectedItem) {
            case BOX_MENU_NAVIGATION_NONE:
                break;
            case BOX_MENU_NAVIGATION_UP_DOWN:
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
                break;
            case BOX_MENU_NAVIGATION_B:
            case BOX_MENU_MARK_CANCEL:
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                *state = MARK_END;
                break;
            case BOX_MENU_CONFIRM:
                BoxApp_UpdatePreviewMonMarkings(&boxAppMan->boxApp);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D69BC);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_SetMonMarkingsTransparency);
                *state = MARK_END;
                break;
            default:
                if (selectedItem >= BOX_MENU_FIRST_MARKING && selectedItem <= BOX_MENU_LAST_MARKING) {
                    selectedItem -= BOX_MENU_FIRST_MARKING;
                    BoxMenu_ToggleMarking(&boxAppMan->boxApp, selectedItem);
                    BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6F0C);
                }
                break;
            }
        }
        break;
    case MARK_END:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
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

static void BoxAppMan_MultiSelectAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case MULTI_MOVE_START:
        if (JOY_HELD(PAD_BUTTON_A)) {
            BoxAppMan_ResetMultiSelectLocation(boxAppMan, &boxAppMan->boxApp);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_StartDrawMultiSelect);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            *state = MULTI_MOVE_DEFINE_SELECTION;
        } else {
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_PickUpMonAction);
        }
        break;

    case MULTI_MOVE_DEFINE_SELECTION:
        if (JOY_HELD(PAD_BUTTON_A)) {
            switch (BoxAppMan_TryMoveSelectionFromUserInput(gSystem.heldKeys, boxAppMan)) {
            case CURSOR_STOP:
                if (JOY_HELD(PAD_PLUS_KEY_MASK) == JOY_NEW(PAD_PLUS_KEY_MASK)) {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;

            case CURSOR_MOVE:
                BoxAppMan_SetMultiSelectionEndLocation(boxAppMan, &boxAppMan->boxApp);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ApplyMultiSelectMonShadingTask);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_MoveCursor);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
                *state = MULTI_MOVE_WAIT_FOR_ANIMATIONS;
                break;
            }
        } else {
            if (BoxApp_IsMultiSelectSingleSelect(&boxAppMan->boxApp)) {
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D7380);
                BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_PickUpMonAction);
            } else {
                BoxAppMan_PickUpMultiSelectedMons(boxAppMan, &boxAppMan->boxApp);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D73B0);
                Sound_PlayEffect(SEQ_SE_DP_BOX02);
                *state = MULTI_MOVE_SELECTED_MONS;
            }
        }
        break;

    case MULTI_MOVE_SELECTED_MONS:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114) == FALSE) {
            break;
        }

        switch (BoxAppMan_TryMoveSelectionFromUserInput(gSystem.heldKeys, boxAppMan)) {
        case CURSOR_STOP:
            if (JOY_HELD(PAD_PLUS_KEY_MASK) == JOY_NEW(PAD_PLUS_KEY_MASK)) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
            }
            break;

        case CURSOR_MOVE:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_MoveCursor);
            if ((BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) & PREVIEW_MON_HELD) == 0) {
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
            }
            break;

        case CURSOR_MOVE_TO_LEFT_BOX:
            BoxApp_LoadLeftBoxCustomization(&boxAppMan->boxApp);
            PCBoxes_SetCurrentBox(boxAppMan->pcBoxes, BoxApp_GetCurrentBox(&boxAppMan->boxApp));
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ChangeToNewBox);
            *state = MULTI_MOVE_PREVIEW_MON;
            break;

        case CURSOR_MOVE_TO_RIGHT_BOX:
            BoxApp_LoadRightBoxCustomization(&boxAppMan->boxApp);
            PCBoxes_SetCurrentBox(boxAppMan->pcBoxes, BoxApp_GetCurrentBox(&boxAppMan->boxApp));
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ChangeToNewBox);
            *state = MULTI_MOVE_PREVIEW_MON;
            break;

        case CURSOR_NO_MOVEMENT:
            if (JOY_NEW(PAD_BUTTON_A)) {
                if (BoxApp_IsBoxUnderSelectedMonsEmpty(&boxAppMan->boxApp)) {
                    BoxAppMan_PutDownSelectedMons(boxAppMan, &boxAppMan->boxApp);
                    BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PlaceMonDownFromCursor);
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
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ChangeToNewBox)) {
            if (!(BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) & PREVIEW_MON_HELD)) {
                BoxAppMan_TryPreviewCursorMon(boxAppMan);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
            }
            *state = MULTI_MOVE_SELECTED_MONS;
        }
        break;

    case MULTI_MOVE_WAIT_FOR_ANIMATIONS:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            *state = MULTI_MOVE_DEFINE_SELECTION;
        }
        break;

    case MULTI_MOVE_END:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
        }
        break;
    }
}

static BOOL BoxApp_IsBoxUnderSelectedMonsEmpty(const BoxApplication *boxApp)
{
    BoxPokemon *boxMon;
    int i, posInBox;
    const BoxCursor *cursor = &boxApp->cursor;
    const BoxMonSelection *selection = &boxApp->selection;

    int selectionTopLeftPos = BoxApp_GetMultiSelectTopLeftPos(boxApp);
    int origSelectionTopLeftPos = selection->origSelectionTopLeftPos;

    for (i = 0; i < selection->selectedMonCount; i++) {
        posInBox = selectionTopLeftPos + (selection->selectedMonsOrigBoxPos[i] - origSelectionTopLeftPos);
        boxMon = PCBoxes_GetBoxMonAt(boxApp->pcBoxes, USE_CURRENT_BOX, posInBox);

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

static void BoxAppMan_PickUpMonAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case PICK_UP_MON_START:
        if (BoxApp_GetCursorLocation(&boxAppMan->boxApp) == CURSOR_IN_PARTY) {
            if (BoxAppMan_OnLastAliveMon(boxAppMan) == FALSE) {
                Sound_PlayEffect(SEQ_SE_DP_BOX02);
                BoxAppMan_PickUpMon(boxAppMan, &boxAppMan->boxApp);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PickUpMonIntoCursor);
                *state = PICK_UP_PARTY_MON;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_LastMon);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                *state = PICK_UP_MON_CONFIRM_LAST_MON;
            }
        } else {
            Sound_PlayEffect(SEQ_SE_DP_BOX02);
            BoxAppMan_PickUpMon(boxAppMan, &boxAppMan->boxApp);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PickUpMonIntoCursor);
            *state = PICK_UP_MON_DONE;
        }
        break;
    case PICK_UP_PARTY_MON:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_TryPreviewCursorMon(boxAppMan);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PlayAdjustPartyAnimation);
            *state = PICK_UP_MON_DONE;
        }
        break;
    case PICK_UP_MON_CONFIRM_LAST_MON:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = PICK_UP_MON_DONE;
        }
        break;
    case PICK_UP_MON_DONE:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
        }
        break;
    }
}

enum PlaceMonState {
    PLACE_MON_DOWN,
    PLACE_ADJUST_PARTY_ANIMATION,
    PLACE_MON_END
};

static void BoxAppMan_PlaceMonAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case PLACE_MON_DOWN:
        BoxAppMan_PutDownCursorMon(boxAppMan, &boxAppMan->boxApp);
        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PlaceMonDownFromCursor);
        Sound_PlayEffect(SEQ_SE_DP_BOX01);

        if (BoxApp_GetCursorLocation(&boxAppMan->boxApp) == CURSOR_IN_PARTY) {
            u32 cursorPosition = BoxApp_GetCursorPartyPosition(&boxAppMan->boxApp);
            u32 partyCount = Party_GetCurrentCount(boxAppMan->party);

            if (cursorPosition != partyCount - 1) {
                *state = PLACE_ADJUST_PARTY_ANIMATION;
                BoxAppMan_TryPreviewCursorMon(boxAppMan);
                break;
            }
        }
        *state = PLACE_MON_END;
        break;
    case PLACE_ADJUST_PARTY_ANIMATION:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_TryPreviewCursorMon(boxAppMan);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D71F8);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
            *state = PLACE_MON_END;
        }
        break;
    case PLACE_MON_END:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_FlagRecordBoxUseInJournal(boxAppMan);
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
        }
        break;
    }
}

static BOOL BoxAppMan_CheckLastAliveMonReason(BoxApplicationManager *boxAppMan, u32 *destMessageID)
{
    if (BoxAppMan_OnLastAliveMon(boxAppMan)) {
        if (BoxApp_GetPreviewedMonValue(&boxAppMan->boxApp, MON_DATA_SANITY_IS_EGG, NULL)) {
            *destMessageID = BoxText_LastMon;
            return TRUE;
        }

        if (BoxApp_GetCursorMonIsPartyMon(&boxAppMan->boxApp)) {
            if (BoxApp_GetPreviewedMonValue(&boxAppMan->boxApp, MON_DATA_HP, NULL) == 0) {
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

static void BoxAppMan_ShiftMonAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case SHIFT_START: {
        u32 messageID;

        if (BoxAppMan_CheckLastAliveMonReason(boxAppMan, &messageID)) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, messageID);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = SHIFT_CONFIRM_MESSAGE;
        } else {
            BoxAppMan_SwapMonInCursor(boxAppMan, &boxAppMan->boxApp);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6AB0);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
            *state = SHIFT_END;
        }
    } break;
    case SHIFT_CONFIRM_MESSAGE:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage) == FALSE) {
            break;
        }

        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = SHIFT_END;
        }
        break;
    case SHIFT_END:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_FlagRecordBoxUseInJournal(boxAppMan);
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
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

static void BoxAppMan_WithdrawMonAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case WITHDRAW_START:
        if (Party_GetCurrentCount(boxAppMan->party) != MAX_PARTY_SIZE) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);

            if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) == PREVIEW_MON_IN_CURSOR) {
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_OpenPartyPopup);
                *state = WITHDRAW_WAIT_FOR_PARTY_POPUP;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_BOX02);
                BoxAppMan_PickUpMon(boxAppMan, &boxAppMan->boxApp);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PickUpMonIntoCursor);
                *state = WITHDRAW_WAIT_FOR_PICK_UP_MON;
            }
        } else {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6EC0);
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_PartyFull);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = WITHDRAW_CONFIRM_PARTY_FULL;
        }
        break;
    case WITHDRAW_WAIT_FOR_PICK_UP_MON:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_PickUpMonIntoCursor)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_OpenPartyPopup);
            *state = WITHDRAW_WAIT_FOR_PARTY_POPUP;
        }
        break;
    case WITHDRAW_WAIT_FOR_PARTY_POPUP:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_OpenPartyPopup)) {
            BoxAppMan_MoveCursorToParty(boxAppMan);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_MoveCursor);
            *state = WITHDRAW_WAIT_FOR_MOVE_CURSOR_TO_PARTY;
        }
        break;
    case WITHDRAW_WAIT_FOR_MOVE_CURSOR_TO_PARTY:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_MoveCursor)) {
            BoxAppMan_PutDownCursorMon(boxAppMan, &boxAppMan->boxApp);
            BoxAppMan_FlagRecordBoxUseInJournal(boxAppMan);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PlaceMonDownFromCursor);
            *state = WITHDRAW_WAIT_FOR_MOVE_PLACE_MON_DOWN;
        }
        break;
    case WITHDRAW_WAIT_FOR_MOVE_PLACE_MON_DOWN:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_PlaceMonDownFromCursor)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D7138);
            *state = WITHDRAW_RETURN_TO_BOX;
        }
        break;
    case WITHDRAW_RETURN_TO_BOX:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_ov19_021D7138)) {
            BoxAppMan_ReturnCursorToBox(boxAppMan);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_MoveCursor);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
            *state = WITHDRAW_END;
        }
        break;
    case WITHDRAW_CONFIRM_PARTY_FULL:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage) == FALSE) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = WITHDRAW_END;
        }
        break;

    case WITHDRAW_END:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
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

static void BoxAppMan_StoreMonAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case STORE_MON_CHECK_CAN_STORE_MON:
        if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) == PREVIEW_MON_UNDER_CURSOR && BoxAppMan_OnLastAliveMon(boxAppMan) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_LastMon);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6EC0);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = STORE_MON_CONFIRM_CANNOT_STORE_MON;
        } else {
            int boxMessageID;

            if (BoxAppMan_IsPreviewedMonHoldingMailOrHasBallCapsule(boxAppMan, &boxMessageID)) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                BoxApp_SetBoxMessage(&boxAppMan->boxApp, boxMessageID);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6EC0);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                *state = STORE_MON_CONFIRM_CANNOT_STORE_MON;
            } else {
                BoxSelectorPopup_Init(boxAppMan, boxAppMan->boxApp.selectedBoxID, BoxText_PickDepositBox);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                *state = STORE_MON_SELECT_BOX;
            }
        }
        break;
    case STORE_MON_SELECT_BOX:
        if (BoxAppMan_TrySelectBoxFromPopup(boxAppMan) == FALSE) {
            break;
        }

        if (boxAppMan->boxSelector.boxID == -1) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6FB0);
            *state = STORE_MON_END;
            break;
        }

        boxAppMan->boxApp.selectedBoxID = boxAppMan->boxSelector.boxID;

        if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) == PREVIEW_MON_IN_CURSOR) {
            if (BoxAppMan_TryStoreCursorMonInBox(boxAppMan, boxAppMan->boxSelector.boxID)) {
                BoxAppMan_FlagRecordBoxUseInJournal(boxAppMan);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6FB0);
                *state = STORE_MON_FROM_CURSOR;
                break;
            }
        } else {
            if (BoxAppMan_TryStoreSelectedMonInBox(boxAppMan, boxAppMan->boxSelector.boxID)) {
                BoxAppMan_FlagRecordBoxUseInJournal(boxAppMan);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6FB0);
                *state = STORE_MON_FROM_PARTY;
                break;
            }
        }

        Sound_PlayEffect(SEQ_SE_DP_BOX03);
        BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_BoxFull);
        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
        *state = STORE_MON_BOX_FULL;
        break;
    case STORE_MON_BOX_FULL:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage) == FALSE) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            BoxSelectorPopup_Reset(boxAppMan);
            *state = STORE_MON_SELECT_BOX;
        }
        break;
    case STORE_MON_CONFIRM_CANNOT_STORE_MON:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage) == FALSE) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = STORE_MON_END;
        }
        break;
    case STORE_MON_FROM_CURSOR:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_ov19_021D6FB0)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6AEC);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
            *state = STORE_MON_END;
        }
        break;
    case STORE_MON_FROM_PARTY:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_ov19_021D6FB0)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6B1C);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
            *state = STORE_MON_END;
        }
        break;
    case STORE_MON_END:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
        }
        break;
    }
}

static BOOL BoxAppMan_OnLastAliveMon(BoxApplicationManager *boxAppMan)
{
    Pokemon *mon;
    int count;
    BOOL reencrypt;

    int partyCount = Party_GetCurrentCount(boxAppMan->party);
    for (int i = 0, count = 0; i < partyCount; i++) {
        mon = Party_GetPokemonBySlotIndex(boxAppMan->party, i);
        reencrypt = Pokemon_EnterDecryptionContext(mon);

        if (Pokemon_GetValue(mon, MON_DATA_SANITY_IS_EGG, NULL) == FALSE && Pokemon_GetValue(mon, MON_DATA_HP, NULL)) {
            count++;
        }

        Pokemon_ExitDecryptionContext(mon, reencrypt);

        if (count >= 2) {
            return FALSE;
        }
    }

    if (BoxApp_GetPreviewedOrSelectedMonValue(&boxAppMan->boxApp, MON_DATA_SANITY_IS_EGG, NULL)) {
        return FALSE;
    }

    if (BoxApp_GetPreviewedOrSelectedMonValue(&boxAppMan->boxApp, MON_DATA_HP, NULL) == 0) {
        return FALSE;
    }

    return TRUE;
}

static BOOL BoxAppMan_CheckReleaseMonValid(BoxApplicationManager *boxAppMan, int *destBoxMessageID)
{
    if (BoxApp_GetPreviewedMonValue(&boxAppMan->boxApp, MON_DATA_SANITY_IS_EGG, NULL)) {
        *destBoxMessageID = BoxText_CantReleaseEgg;
        return FALSE;
    }

    UNUSED(BoxApp_GetPreviewedMonHeldItem(&boxAppMan->boxApp));

    if (Item_IsMail(BoxApp_GetPreviewedMonHeldItem(&boxAppMan->boxApp))) {
        *destBoxMessageID = BoxText_RemoveMail;
        return FALSE;
    }

    if (BoxApp_GetPreviewedMonValue(&boxAppMan->boxApp, MON_DATA_BALL_CAPSULE_ID, NULL)) {
        *destBoxMessageID = BoxText_DetachBallCapsule;
        return FALSE;
    }

    if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) == PREVIEW_MON_UNDER_CURSOR) {
        if (BoxApp_GetCursorLocation(&boxAppMan->boxApp) == CURSOR_IN_PARTY) {
            if (BoxAppMan_OnLastAliveMon(boxAppMan)) {
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

static void BoxAppMan_ReleaseMonAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case RELEASE_MON_START: {
        int boxMessageID;

        if (BoxAppMan_CheckReleaseMonValid(boxAppMan, &boxMessageID)) {
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_ReleaseMon);
            BoxMenu_FillYesNo(&boxAppMan->boxApp, 1);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ShowMenu);
            *state = RELEASE_MON_CONFIRM;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, boxMessageID);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6EC0);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = RELEASE_MON_CANNOT_RELEASE;
        }
    } break;

    case RELEASE_MON_CONFIRM:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114) == FALSE) {
            break;
        }

        switch (BoxMenu_GetMenuNavigation(&boxAppMan->boxApp)) {
        case BOX_MENU_NAVIGATION_UP_DOWN:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_NO:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = RELEASE_MON_END;
            break;
        case BOX_MENU_YES:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = RELEASE_MON_RELEASE_ANIMATION;
            break;
        }
        break;
    case RELEASE_MON_RELEASE_ANIMATION:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox)) {
            StringTemplate_SetNickname(boxAppMan->MessageVariableBuffer, 0, BoxApp_GetPreviewedBoxMon(&boxAppMan->boxApp));
            BoxAppMan_CheckShouldMonReturn(boxAppMan);

            if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) == PREVIEW_MON_IN_CURSOR) {
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PlayReleaseCursorMonAnimation);
                boxAppMan->releasedFrom = RELEASED_FROM_CURSOR;
            } else {
                if (BoxApp_GetCursorLocation(&boxAppMan->boxApp) == CURSOR_IN_BOX) {
                    BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PlayReleaseBoxMonAnimation);
                    boxAppMan->releasedFrom = RELEASED_FROM_BOX;
                } else {
                    BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PlayReleasePartyMonAnimation);
                    boxAppMan->releasedFrom = RELEASED_FROM_PARTY;
                }
            }
            *state = RELEASE_MON_TRY_RELEASE;
        }
        break;
    case RELEASE_MON_TRY_RELEASE:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            if (BoxAppMan_CanReleaseMon(boxAppMan)) {
                if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) == PREVIEW_MON_IN_CURSOR) {
                    BoxAppMan_RemoveCursorMon(boxAppMan);
                } else {
                    BoxAppMan_RemoveMonUnderCursor(boxAppMan);
                }

                BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_MonReleased);
                *state = RELEASE_MON_CONFIRM_RELEASED;
            } else {
                BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_MonReturned);
                *state = RELEASE_MON_CONFIRM_RETURNED;
            }

            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
        }
        break;
    case RELEASE_MON_CONFIRM_RELEASED:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114) == FALSE) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_GoodbyeForever);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = RELEASE_MON_CLOSE_MESSAGE_BOX;
        }
        break;
    case RELEASE_MON_CONFIRM_RETURNED:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114) == FALSE) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_MonWasWorried);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = RELEASE_MON_CLOSE_MESSAGE_BOX;
        }
        break;
    case RELEASE_MON_CLOSE_MESSAGE_BOX:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114) == FALSE) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = RELEASE_MON_PREPARE_END_RELEASE;
        }
        break;
    case RELEASE_MON_PREPARE_END_RELEASE:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            if (BoxAppMan_CanReleaseMon(boxAppMan)) {
                if (boxAppMan->releasedFrom == RELEASED_FROM_PARTY) {
                    BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PlayAdjustPartyAnimation);
                }

                BoxAppMan_FlagRecordBoxUseInJournal(boxAppMan);
            }

            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
            *state = RELEASE_MON_END;
        }
        break;
    case RELEASE_MON_CANNOT_RELEASE:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage) == FALSE) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = RELEASE_MON_END;
        }
        break;
    case RELEASE_MON_END:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
        }
        break;
    }
}

static void BoxAppMan_CheckShouldMonReturn(BoxApplicationManager *boxAppMan)
{
    ReleaseMon *releaseMon = &boxAppMan->releaseMon;
    int i, releaseBlockingMovesCount;

    releaseMon->boxMon = boxAppMan->boxApp.pcMonPreview.mon;

    for (i = 0, releaseBlockingMovesCount = 0; i < (NUM_RELEASE_BLOCKING_MOVES); i++) {
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
        releaseMon->pcBoxes = boxAppMan->pcBoxes;
        releaseMon->party = boxAppMan->party;
        releaseMon->monHeldInCursor = BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) != PREVIEW_MON_UNDER_CURSOR;

        for (i = 0; i < NUM_RELEASE_BLOCKING_MOVES; i++) {
            releaseMon->monsWithReleaseBlockingMoveCount[i] = 0;
        }

        SysTask_Start(CheckLastMonWithReleaseBlockingMove, releaseMon, 0);
    }
}

static void CheckLastMonWithReleaseBlockingMove(SysTask *task, void *releaseMonParam)
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
                for (i = 0; i < NUM_RELEASE_BLOCKING_MOVES; i++) {
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

            for (i = 0; i < NUM_RELEASE_BLOCKING_MOVES; i++) {
                if (BoxPokemon_HasMove(boxMon, sReleaseBlockingMoves[i])) {
                    releaseMon->monsWithReleaseBlockingMoveCount[i]++;
                }
            }
        }

        if (releaseMon->monHeldInCursor) {
            for (i = 0; i < NUM_RELEASE_BLOCKING_MOVES; i++) {
                if (BoxPokemon_HasMove(releaseMon->boxMon, sReleaseBlockingMoves[i])) {
                    releaseMon->monsWithReleaseBlockingMoveCount[i]++;
                }
            }
        }

        releaseMon->canReleaseMon = TRUE;

        for (i = 0; i < NUM_RELEASE_BLOCKING_MOVES; i++) {
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

    if (BoxPokemon_GetValue(boxMon, MON_DATA_SANITY_IS_EGG, NULL) == FALSE) {
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

BOOL BoxAppMan_HasCheckedCanReleaseMon(const BoxApplicationManager *boxAppMan)
{
    return (&boxAppMan->releaseMon)->checkedCanReleaseMon;
}

BOOL BoxAppMan_CanReleaseMon(const BoxApplicationManager *boxAppMan)
{
    const ReleaseMon *releaseMon = &boxAppMan->releaseMon;

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

static void BoxAppMan_RenameBoxAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case RENAME_BOX_START:
        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack2);
        (*state)++;
        break;
    case RENAME_BOX_LAUNCH_TEXT_INPUT_APP:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack2)) {
            BoxGraphics_Free(boxAppMan->unk_114);
            Heap_Destroy(HEAP_ID_BOX_GRAPHICS);
            PCBoxes_BufferBoxName(boxAppMan->pcBoxes, PCBoxes_GetCurrentBoxID(boxAppMan->pcBoxes), boxAppMan->namingScreenArgs->textInputStr);
            boxAppMan->ApplicationManager = ApplicationManager_New(&gNamingScreenAppTemplate, boxAppMan->namingScreenArgs, HEAP_ID_BOX_DATA);
            (*state)++;
        }
        break;
    case RENAME_BOX_RETURN_TO_BOX:
        if (ApplicationManager_Exec(boxAppMan->ApplicationManager)) {
            u32 boxID = PCBoxes_GetCurrentBoxID(boxAppMan->pcBoxes);

            ApplicationManager_Free(boxAppMan->ApplicationManager);
            Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BOX_GRAPHICS, 245760);
            PCBoxes_RenameBox(boxAppMan->pcBoxes, boxID, boxAppMan->namingScreenArgs->textInputStr);

            PCBoxes_LoadCustomization(boxAppMan->pcBoxes, &boxAppMan->boxApp.customization);
            BoxGraphics_Load(&boxAppMan->unk_114, &boxAppMan->boxApp, boxAppMan);
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_ReturnToBoxFade1Action);
        }
        break;
    }
}

enum SummaryState {
    SUMMARY_START,
    SUMMARY_LAUNCH,
    SUMMARY_RETURN_TO_BOX,
};

static void BoxAppMan_OpenSummaryAction(BoxApplicationManager *boxAppMan, u32 *openSummaryState)
{
    switch (*openSummaryState) {
    case SUMMARY_START:
        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack2);
        (*openSummaryState)++;
        break;
    case SUMMARY_LAUNCH:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack2)) {
            BoxGraphics_Free(boxAppMan->unk_114);
            Heap_Destroy(HEAP_ID_BOX_GRAPHICS);
            BoxAppMan_InitSummary(boxAppMan);
            boxAppMan->ApplicationManager = ApplicationManager_New(&gPokemonSummaryScreenApp, &boxAppMan->monSummary, HEAP_ID_BOX_DATA);
            (*openSummaryState)++;
        }
        break;
    case SUMMARY_RETURN_TO_BOX:
        if (ApplicationManager_Exec(boxAppMan->ApplicationManager)) {
            u32 unused = PCBoxes_GetCurrentBoxID(boxAppMan->pcBoxes);

            ApplicationManager_Free(boxAppMan->ApplicationManager);
            Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BOX_GRAPHICS, 245760);

            if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) == PREVIEW_MON_UNDER_CURSOR) {
                BoxApp_SetCursorPosToSummaryMonPos(&boxAppMan->boxApp, boxAppMan);
            }

            BoxGraphics_Load(&boxAppMan->unk_114, &boxAppMan->boxApp, boxAppMan);
            BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_ReturnToBoxFade1Action);
            BoxAppMan_FlagRecordBoxUseInJournal(boxAppMan);
        }
    }
}

static void BoxApp_SetCursorPosToSummaryMonPos(BoxApplication *boxApp, BoxApplicationManager *boxAppMan)
{
    BoxCursor *cursor = &boxApp->cursor;

    switch (cursor->cursorLocation) {
    case CURSOR_IN_BOX:
        cursor->posInBox = boxAppMan->monSummary.monIndex;
        cursor->boxCol = cursor->posInBox % MAX_PC_COLS;
        cursor->boxRow = cursor->posInBox / MAX_PC_COLS;
        break;
    case CURSOR_IN_PARTY:
        cursor->posInParty = boxAppMan->monSummary.monIndex;
        break;
    default:
        return;
    }

    BoxAppMan_TryPreviewCursorMon(boxAppMan);
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

static void BoxAppMan_GiveItemFromBagAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    FS_EXTERN_OVERLAY(bag);

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
        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack2);
        (*state)++;
        break;
    case GIVE_FROM_BAG_INIT_BAG_APP:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack2)) {
            BoxGraphics_Free(boxAppMan->unk_114);
            Heap_Destroy(HEAP_ID_BOX_GRAPHICS);

            Bag *bag = SaveData_GetBag(boxAppMan->saveData);
            boxAppMan->bagAppArgs = BagContext_CreateWithPockets(bag, bagPockets, HEAP_ID_BOX_DATA);
            BagContext_Init(boxAppMan->bagAppArgs, boxAppMan->saveData, 1, NULL);
            Overlay_LoadByID(FS_OVERLAY_ID(bag), OVERLAY_LOAD_ASYNC);
            boxAppMan->ApplicationManager = ApplicationManager_New(&gBagApplicationTemplate, boxAppMan->bagAppArgs, HEAP_ID_BOX_DATA);
            (*state)++;
        }
        break;
    case GIVE_FROM_BAG_SELECT_ITEM:
        if (ApplicationManager_Exec(boxAppMan->ApplicationManager)) {
            item = BagContext_GetItem(boxAppMan->bagAppArgs);

            ApplicationManager_Free(boxAppMan->ApplicationManager);
            Heap_Free(boxAppMan->bagAppArgs);
            Overlay_UnloadByID(FS_OVERLAY_ID(bag));

            if (item == ITEM_GRISEOUS_ORB && BoxPokemon_GetValue(boxAppMan->boxApp.pcMonPreview.mon, MON_DATA_SPECIES, NULL) != SPECIES_GIRATINA) {
                (void)0;
            } else if (item != ITEM_NONE) {
                Bag_TryRemoveItem(SaveData_GetBag(boxAppMan->saveData), item, 1, HEAP_ID_BOX_DATA);
                BoxApp_GiveItemToSelectedMon(&boxAppMan->boxApp, item, boxAppMan);
                BoxAppMan_FlagRecordBoxUseInJournal(boxAppMan);
            }

            Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BOX_GRAPHICS, 245760);
            BoxGraphics_Load(&boxAppMan->unk_114, &boxAppMan->boxApp, boxAppMan);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6694);
            (*state)++;
        }
        break;
    case GIVE_FROM_BAG_RETURN_TO_BOX:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_ov19_021D6694)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack1);
            (*state)++;
        }
        break;
    case GIVE_FROM_BAG_DISPLAY_MESSAGE:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ScreenFadeBothToBlack1)) {
            if (item == ITEM_NONE) {
                BoxAppMan_ClearBoxApplicationAction(boxAppMan);
            } else if (item == ITEM_GRISEOUS_ORB && BoxPokemon_GetValue(boxAppMan->boxApp.pcMonPreview.mon, MON_DATA_SPECIES, NULL) != SPECIES_GIRATINA) {
                StringTemplate_SetItemName(boxAppMan->MessageVariableBuffer, 0, item);
                BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_MonCantHoldItem);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                (*state)++;
            } else {
                StringTemplate_SetItemName(boxAppMan->MessageVariableBuffer, 0, item);
                BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_HoldingItem);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
                (*state)++;
            }
        }
        break;
    case GIVE_FROM_BAG_CONFIRM_MESSAGE:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage)) {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                (*state)++;
            }
        }
        break;
    case GIVE_FROM_BAG_END:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
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

static void BoxAppMan_MonItemHeldAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    static u32 item;

    switch (*state) {
    case ITEM_HELD_START:
        item = BoxApp_GetPreviewedMonHeldItem(&boxAppMan->boxApp);

        if (Item_IsMail(item)) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_CantTakeMail);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = ITEM_HELD_CONFIRM_MESSAGE;
        } else {
            StringTemplate_SetItemName(boxAppMan->MessageVariableBuffer, 0, item);
            BoxMenu_FillYesNo(&boxAppMan->boxApp, 0);
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_ConfirmTakeItem);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ShowMenu);
            *state = ITEM_HELD_YES_NO;
        }
        break;
    case ITEM_HELD_YES_NO:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114) == FALSE) {
            break;
        }

        switch (BoxMenu_GetMenuNavigation(&boxAppMan->boxApp)) {
        case BOX_MENU_NAVIGATION_UP_DOWN:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_NO:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = ITEM_HELD_END;
            break;
        case BOX_MENU_YES:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6EC0);
            *state = ITEM_HELD_ADD_TO_BAG;
            break;
        }
        break;
    case ITEM_HELD_ADD_TO_BAG:
        if (Bag_TryAddItem(SaveData_GetBag(boxAppMan->saveData), item, 1, HEAP_ID_BOX_DATA)) {
            BoxApp_GiveItemToSelectedMon(&boxAppMan->boxApp, ITEM_NONE, boxAppMan);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6D88);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
            *state = ITEM_HELD_DISPLAY_TOOK_ITEM_MESSAGE;
        } else {
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_BagFull);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = ITEM_HELD_CONFIRM_MESSAGE;
        }
        break;
    case ITEM_HELD_DISPLAY_TOOK_ITEM_MESSAGE:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_TookItem);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = ITEM_HELD_CONFIRM_MESSAGE;
        }
        break;
    case ITEM_HELD_CONFIRM_MESSAGE:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage)) {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                *state = ITEM_HELD_END;
            }
        }
        break;
    case ITEM_HELD_END:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
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

static void BoxAppMan_PutAwayItemAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    static u32 item;

    switch (*state) {
    case PUT_AWAY_ITEM_START:
        item = BoxApp_GetCursorOrPreviewedItem(&boxAppMan->boxApp);

        if (Item_IsMail(item)) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_CantTakeMail);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = PUT_AWAY_ITEM_CONFIRM_MESSAGE;
        } else {
            StringTemplate_SetItemName(boxAppMan->MessageVariableBuffer, 0, item);
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_PutAwayItem);
            BoxMenu_FillYesNo(&boxAppMan->boxApp, 0);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ShowMenu);
            *state = PUT_AWAY_ITEM_YES_NO;
        }
        break;
    case PUT_AWAY_ITEM_YES_NO:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114) == FALSE) {
            break;
        }

        switch (BoxMenu_GetMenuNavigation(&boxAppMan->boxApp)) {
        case BOX_MENU_NAVIGATION_UP_DOWN:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_UpdateMenuCursor);
            break;
        case BOX_MENU_NAVIGATION_B:
        case BOX_MENU_NO:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = PUT_AWAY_ITEM_END;
            break;
        case BOX_MENU_YES:
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
            *state = PUT_AWAY_ITEM_ADD_TO_BAG;
            break;
        }
        break;
    case PUT_AWAY_ITEM_ADD_TO_BAG:
        if (Bag_TryAddItem(SaveData_GetBag(boxAppMan->saveData), item, 1, HEAP_ID_BOX_DATA)) {
            if (BoxApp_GetCursorItem(&boxAppMan->boxApp) != ITEM_NONE) {
                BoxApp_RemoveCursorItem(&boxAppMan->boxApp);
                *state = PUT_AWAY_ITEM_SHOW_STORED_MESSAGE;
            } else {
                BoxApp_GiveItemToSelectedMon(&boxAppMan->boxApp, ITEM_NONE, boxAppMan);
                *state = PUT_AWAY_ITEM_ANIMATE_ITEM_AWAY;
            }

            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ItemShrinkToNothing);
        } else {
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_BagFull);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = PUT_AWAY_ITEM_CONFIRM_MESSAGE;
        }
        break;
    case PUT_AWAY_ITEM_ANIMATE_ITEM_AWAY:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ItemShrinkToNothing)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6D88);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
            *state = PUT_AWAY_ITEM_SHOW_STORED_MESSAGE;
        }
        break;
    case PUT_AWAY_ITEM_SHOW_STORED_MESSAGE:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, BoxText_PlaceItemInBag);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            *state = PUT_AWAY_ITEM_CONFIRM_MESSAGE;
        }
        break;
    case PUT_AWAY_ITEM_CONFIRM_MESSAGE:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage)) {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
                *state = PUT_AWAY_ITEM_END;
            }
        }
        break;
    case PUT_AWAY_ITEM_END:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
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

static void BoxAppMan_DisplayItemInfoAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case ITEM_INFO_START:
        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox);
        (*state)++;
        break;
    case ITEM_INFO_CLOSE_MENU:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_CloseMessageBox)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayItemInfo);
            (*state)++;
        }
        break;
    case ITEM_INFO_DISPLAY:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayItemInfo)) {
            (*state)++;
        }
        break;
    case ITEM_INFO_CONFIRM:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B | PAD_PLUS_KEY_MASK)) {
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_CloseItemInfo);
            (*state)++;
        }
        break;
    case ITEM_INFO_END:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_CloseItemInfo)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
        }
        break;
    }
}

static void BoxSelectorPopup_Init(BoxApplicationManager *boxAppMan, u32 boxID, u32 boxMessageID)
{
    boxAppMan->boxSelector.state = BOX_SELECTOR_START;
    boxAppMan->boxSelector.boxID = boxID;
    boxAppMan->boxSelector.boxMessageID = boxMessageID;
    boxAppMan->boxSelector.hasReset = FALSE;
}

static void BoxSelectorPopup_Reset(BoxApplicationManager *boxAppMan)
{
    boxAppMan->boxSelector.state = BOX_SELECTOR_START;
    boxAppMan->boxSelector.hasReset = TRUE;
}

static BOOL BoxAppMan_TrySelectBoxFromPopup(BoxApplicationManager *boxAppMan)
{
    BoxSelectorPopup *boxSelector = &boxAppMan->boxSelector;

    switch (boxSelector->state) {
    case BOX_SELECTOR_START:
        if (boxSelector->hasReset == TRUE) {
            boxSelector->state = BOX_SELECTOR_DISPLAY_MESSAGE_START;
            break;
        }

        if (boxSelector->boxID == -1) {
            boxSelector->boxID = 0;
        }

        BoxApp_SetBoxSelectionBoxID(&boxAppMan->boxApp, boxSelector->boxID);
        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ShowBoxSelectionPopup);
        boxSelector->state = BOX_SELECTOR_DISPLAY_MESSAGE_START;
        break;
    case BOX_SELECTOR_DISPLAY_MESSAGE_START:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ShowBoxSelectionPopup)) {
            BoxApp_SetBoxMessage(&boxAppMan->boxApp, boxSelector->boxMessageID);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage);
            boxSelector->state = BOX_SELECTOR_DISPLAY_MESSAGE_DONE;
        }
        break;
    case BOX_SELECTOR_DISPLAY_MESSAGE_DONE:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_DisplayBoxMessage) == FALSE) {
            break;
        }

        boxSelector->state = BOX_SELECTOR_WAIT_FOR_USER;
    case BOX_SELECTOR_WAIT_FOR_USER:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ScrollBoxSelectionPopup) == FALSE) {
            break;
        }

        if (JOY_NEW(PAD_KEY_LEFT | PAD_BUTTON_L)) {
            boxSelector->boxID--;

            if (boxSelector->boxID < 0) {
                boxSelector->boxID = MAX_PC_BOXES - 1;
            }

            BoxApp_SetBoxSelectionBoxID(&boxAppMan->boxApp, boxSelector->boxID);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ScrollBoxSelectionPopup);
            break;
        }

        if (JOY_NEW(PAD_KEY_RIGHT | PAD_BUTTON_R)) {
            if (++(boxSelector->boxID) >= MAX_PC_BOXES) {
                boxSelector->boxID = 0;
            }

            BoxApp_SetBoxSelectionBoxID(&boxAppMan->boxApp, boxSelector->boxID);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ScrollBoxSelectionPopup);
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

static void BoxAppMan_ChangeToNewBoxAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case MOVE_BOX_START:
        PCBoxes_SetCurrentBox(boxAppMan->pcBoxes, BoxApp_GetCurrentBox(&boxAppMan->boxApp));
        BoxAppMan_TryPreviewCursorMon(boxAppMan);
        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ChangeToNewBox);
        (*state)++;
        break;
    case MOVE_BOX_WAIT_FOR_ANIMATION:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ChangeToNewBox)) {
            if (BoxApp_GetCursorLocation(&boxAppMan->boxApp) == CURSOR_IN_BOX && BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) == PREVIEW_MON_UNDER_CURSOR) {
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
                (*state)++;
            } else {
                BoxAppMan_ClearBoxApplicationAction(boxAppMan);
            }
        }
        break;
    case MOVE_BOX_END:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
        }
        break;
    }
}

enum TouchScreenBoxJump {
    TOUCH_BOX_JUMP_START,
    TOUCH_BOX_JUMP_WAIT_FOR_INPUT_OR_JUMP,
    TOUCH_BOX_JUMP_END_SCROLL,
    TOUCH_BOX_JUMP_WAIT_FOR_BOX_CHANGE,
    TOUCH_BOX_JUMP_WAIT_FOR_MON_PREVIEW,
    TOUCH_BOX_JUMP_END
};

static void BoxAppMan_TouchScreenBoxJump(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case TOUCH_BOX_JUMP_START:
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        BoxApp_SetTouchDialSelected(&boxAppMan->boxApp, TOUCH_DIALS_BOX_JUMP);
        BoxApp_SetTouchDialOffset(&boxAppMan->boxApp, BoxApp_GetCurrentBox(&boxAppMan->boxApp));
        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_OpenOrCloseSelectedTouchDial);
        TouchDial_Init(&boxAppMan->touchDial, 0, 192, 56, 88);
        boxAppMan->touchDialBoxChanged = FALSE;
        boxAppMan->scrollEnded = TRUE;
        *state = TOUCH_BOX_JUMP_WAIT_FOR_INPUT_OR_JUMP;
        break;
    case TOUCH_BOX_JUMP_WAIT_FOR_INPUT_OR_JUMP:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_OpenOrCloseSelectedTouchDial) == FALSE) {
            break;
        }

        if (BoxAppMan_TryPressTouchScreenButton(boxAppMan)) {
            if (boxAppMan->touchScreenButtonPressed == MAIN_PC_RIGHT_BUTTON_ID) {
                if (BoxApp_GetBoxMode(&boxAppMan->boxApp) != PC_MODE_MOVE_ITEMS) {
                    BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_MarkingsFilterAction);
                } else {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;
            }
        }

        if (JOY_NEW(PAD_PLUS_KEY_MASK | PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            BoxApp_SetTouchDialSelected(&boxAppMan->boxApp, TOUCH_DIALS_NONE);
            BoxApp_SetTouchDialOffset(&boxAppMan->boxApp, BoxApp_GetCurrentBox(&boxAppMan->boxApp));
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_OpenOrCloseSelectedTouchDial);
            *state = TOUCH_BOX_JUMP_END;
            break;
        }

        if (boxAppMan->touchDialBoxChanged) {
            if (boxAppMan->scrollEnded) {
                if (++(boxAppMan->boxJumpDelayCounter) > 20) {
                    u32 destinationBoxID = BoxApp_GetTouchDialOffset(&boxAppMan->boxApp);

                    BoxApp_LoadCustomizationsFor(&boxAppMan->boxApp, destinationBoxID);
                    PCBoxes_SetCurrentBox(boxAppMan->pcBoxes, destinationBoxID);
                    BoxAppMan_TryPreviewCursorMon(boxAppMan);

                    if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) == PREVIEW_MON_UNDER_CURSOR) {
                        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D6A1C);
                    }

                    BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_ChangeToNewBox);
                    boxAppMan->touchDialBoxChanged = FALSE;
                    boxAppMan->boxJumpDelayCounter = 0;
                    *state = TOUCH_BOX_JUMP_WAIT_FOR_BOX_CHANGE;
                    break;
                }
            }
        }

        switch (TouchDial_HandleAction(&boxAppMan->touchDial)) {
        case TOUCH_DIAL_INITIAL_TOUCH:
            boxAppMan->unused1 = BoxApp_GetTouchDialOffset(&boxAppMan->boxApp);
            boxAppMan->touchDialBoxChanged = FALSE;
            boxAppMan->touchDialScrollAmount = 0;
            boxAppMan->scrollEnded = FALSE;
            break;
        case TOUCH_DIAL_SCROLLING: {
            int scrollAmount = TouchDial_CalcScrollAmount(&boxAppMan->touchDial);

            if (scrollAmount != boxAppMan->touchDialScrollAmount) {
                int scrollDelta = scrollAmount - boxAppMan->touchDialScrollAmount;
                int newOffset = BoxApp_GetTouchDialOffset(&boxAppMan->boxApp) + scrollDelta;

                if (newOffset < 0) {
                    newOffset += MAX_PC_BOXES;
                } else if (newOffset >= MAX_PC_BOXES) {
                    newOffset -= MAX_PC_BOXES;
                }

                boxAppMan->touchDialScrollAmount = scrollAmount;
                BoxApp_SetTouchDialOffset(&boxAppMan->boxApp, newOffset);
                BoxApp_SetTouchDialScrollDelta(&boxAppMan->boxApp, scrollDelta);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D72E8);
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                *state = TOUCH_BOX_JUMP_END_SCROLL;
            }
        } break;
        case TOUCH_DIAL_END_SCROLL: {
            int currentBox = BoxApp_GetCurrentBox(&boxAppMan->boxApp);
            int selectedBox = BoxApp_GetTouchDialOffset(&boxAppMan->boxApp);

            boxAppMan->touchDialBoxChanged = currentBox != selectedBox;
            boxAppMan->boxJumpDelayCounter = 0;
            boxAppMan->scrollEnded = TRUE;
        } break;
        }
        break;
    case TOUCH_BOX_JUMP_END_SCROLL:
        if (boxAppMan->scrollEnded == FALSE) {
            if (TouchDial_HandleAction(&boxAppMan->touchDial) == TOUCH_DIAL_END_SCROLL) {
                int currentBox = BoxApp_GetCurrentBox(&boxAppMan->boxApp);
                int selectedBox = BoxApp_GetTouchDialOffset(&boxAppMan->boxApp);

                boxAppMan->touchDialBoxChanged = currentBox != selectedBox;
                boxAppMan->boxJumpDelayCounter = 0;
                boxAppMan->scrollEnded = TRUE;
            }
        }

        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_ov19_021D72E8)) {
            *state = TOUCH_BOX_JUMP_WAIT_FOR_INPUT_OR_JUMP;
        }
        break;
    case TOUCH_BOX_JUMP_WAIT_FOR_BOX_CHANGE:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_ChangeToNewBox)) {
            if (BoxApp_GetPreviewMonSource(&boxAppMan->boxApp) == PREVIEW_MON_UNDER_CURSOR && BoxApp_IsMonUnderCursor(&boxAppMan->boxApp)) {
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
                *state = TOUCH_BOX_JUMP_WAIT_FOR_MON_PREVIEW;
            } else {
                *state = TOUCH_BOX_JUMP_WAIT_FOR_INPUT_OR_JUMP;
            }
        }
        break;
    case TOUCH_BOX_JUMP_WAIT_FOR_MON_PREVIEW:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon)) {
            *state = TOUCH_BOX_JUMP_WAIT_FOR_INPUT_OR_JUMP;
        }
        break;
    case TOUCH_BOX_JUMP_END:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
        }
        break;
    }
}

enum TouchMarkingsState {
    TOUCH_MARKINGS_START,
    TOUCH_MARKINGS_WAIT_FOR_USER_INPUT,
    TOUCH_MARKINGS_END_SCROLL,
    TOUCH_MARKINGS_END
};

static void BoxAppMan_MarkingsFilterAction(BoxApplicationManager *boxAppMan, u32 *state)
{
    switch (*state) {
    case TOUCH_MARKINGS_START:
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        BoxApp_SetTouchDialSelected(&boxAppMan->boxApp, TOUCH_DIALS_MARKINGS);
        BoxApp_SetMarkingsButtonsScrollOffset(&boxAppMan->boxApp, 0);
        BoxApp_SetTouchDialOffset(&boxAppMan->boxApp, 0);
        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_OpenOrCloseSelectedTouchDial);
        TouchDial_Init(&boxAppMan->touchDial, 255, 192, 56, 88);
        boxAppMan->touchDialBoxChanged = FALSE;
        boxAppMan->scrollEnded = TRUE;
        *state = TOUCH_MARKINGS_WAIT_FOR_USER_INPUT;
        break;
    case TOUCH_MARKINGS_WAIT_FOR_USER_INPUT:
        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_BoxGraphics_OpenOrCloseSelectedTouchDial) == FALSE) {
            break;
        }

        if (BoxAppMan_TryPressTouchScreenButton(boxAppMan)) {
            if (boxAppMan->touchScreenButtonPressed == MAIN_PC_LEFT_BUTTON_ID) {
                BoxAppMan_RegisterBoxApplicationAction(boxAppMan, BoxAppMan_TouchScreenBoxJump);
                break;
            }
        }

        if (JOY_NEW(PAD_PLUS_KEY_MASK | PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            BoxApp_SetTouchDialSelected(&boxAppMan->boxApp, TOUCH_DIALS_NONE);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_OpenOrCloseSelectedTouchDial);
            *state = TOUCH_MARKINGS_END;
        }

        if (BoxAppMan_TryPressMarkingsButton(boxAppMan)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_UpdateMarkingsTouchButton);
            BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_SetMonMarkingsTransparency);
            break;
        }

        switch (TouchDial_HandleAction(&boxAppMan->touchDial)) {
        case TOUCH_DIAL_INITIAL_TOUCH:
            boxAppMan->unused1 = BoxApp_GetTouchDialOffset(&boxAppMan->boxApp);
            boxAppMan->touchDialBoxChanged = FALSE;
            boxAppMan->touchDialScrollAmount = 0;
            boxAppMan->scrollEnded = FALSE;
            break;
        case TOUCH_DIAL_SCROLLING: {
            int scrollAmount = TouchDial_CalcScrollAmount(&boxAppMan->touchDial);

            if (scrollAmount != boxAppMan->touchDialScrollAmount) {
                int scrollDelta = scrollAmount - boxAppMan->touchDialScrollAmount;
                int newOffset = BoxApp_GetTouchDialOffset(&boxAppMan->boxApp) + scrollDelta;

                if (newOffset < 0) {
                    newOffset += PC_MARKINGS_BUTTON_TYPES;
                } else if (newOffset >= PC_MARKINGS_BUTTON_TYPES) {
                    newOffset -= PC_MARKINGS_BUTTON_TYPES;
                }

                boxAppMan->touchDialScrollAmount = scrollAmount;

                BoxApp_SetTouchDialOffset(&boxAppMan->boxApp, newOffset);
                BoxApp_SetMarkingsButtonsScrollOffset(&boxAppMan->boxApp, newOffset);
                BoxApp_SetTouchDialScrollDelta(&boxAppMan->boxApp, scrollDelta);
                BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_ov19_021D72E8);
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                *state = TOUCH_MARKINGS_END_SCROLL;
            }
        } break;
        case TOUCH_DIAL_END_SCROLL: {
            // Seems like GF just copy-pasted the code from the box jump touch dial into this section for the markings touch dial
            // Somehow surprisingly doesn't cause any bugs
            int currentBox = BoxApp_GetCurrentBox(&boxAppMan->boxApp);
            int markingsScrollAmount = BoxApp_GetTouchDialOffset(&boxAppMan->boxApp);

            boxAppMan->touchDialBoxChanged = currentBox != markingsScrollAmount;
            boxAppMan->boxJumpDelayCounter = 0;
            boxAppMan->scrollEnded = TRUE;
        } break;
        }
        break;
    case TOUCH_MARKINGS_END_SCROLL:
        if (boxAppMan->scrollEnded == FALSE) {
            if (TouchDial_HandleAction(&boxAppMan->touchDial) == TOUCH_DIAL_END_SCROLL) {
                // Also looks copy-pasted from the box scroll
                int currentBox = BoxApp_GetCurrentBox(&boxAppMan->boxApp);
                int markingsScrollAmount = BoxApp_GetTouchDialOffset(&boxAppMan->boxApp);

                boxAppMan->touchDialBoxChanged = currentBox != markingsScrollAmount;
                boxAppMan->boxJumpDelayCounter = 0;
                boxAppMan->scrollEnded = TRUE;
            }
        }

        if (BoxGraphics_IsSysTaskDone(boxAppMan->unk_114, FUNC_ov19_021D72E8)) {
            *state = TOUCH_MARKINGS_WAIT_FOR_USER_INPUT;
        }
        break;
    case TOUCH_MARKINGS_END:
        if (BoxGraphics_CheckAllTasksDone(boxAppMan->unk_114)) {
            BoxAppMan_ClearBoxApplicationAction(boxAppMan);
        }
        break;
    }
}

static BOOL BoxAppMan_TryPressMarkingsButton(BoxApplicationManager *boxAppMan)
{
    boxAppMan->touchScreenMarkingsButtonPressed = PC_MARKINGS_BUTTON_TYPES;

    TouchScreenActions_HandleAction(boxAppMan->markingsButtonsAction);

    if (boxAppMan->touchScreenMarkingsButtonPressed != PC_MARKINGS_BUTTON_TYPES) {
        return TRUE;
    }

    return FALSE;
}

static void BoxApp_BoxTouchScreenMarkingsButtonHandler(u32 buttonIndex, enum TouchScreenButtonState buttonTouchState, void *context)
{
    BoxApplicationManager *boxAppMan = (BoxApplicationManager *)context;

    if (boxAppMan->touchScreenMarkingsButtonPressed == PC_MARKINGS_BUTTON_TYPES) {
        if (buttonTouchState == TOUCH_BUTTON_PRESSED) {
            u32 mask = BoxApp_GetMarkingsButtonsScrollOffset(&boxAppMan->boxApp);
            mask += buttonIndex;

            if (mask >= PC_MARKINGS_BUTTON_TYPES) {
                mask -= PC_MARKINGS_BUTTON_TYPES;
            }

            BoxApp_SetMonSpriteTransparencyMask(&boxAppMan->boxApp, mask);
            boxAppMan->touchScreenMarkingsButtonPressed = buttonIndex;
        }
    }
}

static void BoxAppMan_Load(BoxApplicationManager *boxAppMan, PokemonStorageSession *pokemonStorageSession)
{
    boxAppMan->pcBoxes = SaveData_GetPCBoxes(pokemonStorageSession->saveData);
    boxAppMan->saveData = pokemonStorageSession->saveData;
    boxAppMan->party = SaveData_GetParty(pokemonStorageSession->saveData);
    boxAppMan->options = SaveData_GetOptions(pokemonStorageSession->saveData);
    boxAppMan->pokemonStorageSession = pokemonStorageSession;
    pokemonStorageSession->recordBoxUseInJournal = FALSE;
    boxAppMan->boxMessagesLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BOX_MESSAGES, HEAP_ID_BOX_DATA);
    boxAppMan->speciesNameLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_BOX_DATA);
    boxAppMan->natureNameLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_NATURE_NAMES, HEAP_ID_BOX_DATA);
    boxAppMan->abilityNameLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ABILITY_NAMES, HEAP_ID_BOX_DATA);
    boxAppMan->MessageVariableBuffer = StringTemplate_Default(HEAP_ID_BOX_DATA);
    boxAppMan->mon = Heap_Alloc(HEAP_ID_BOX_DATA, Pokemon_StructSize());

    GF_ASSERT(boxAppMan->MessageVariableBuffer);
    boxAppMan->namingScreenArgs = NamingScreenArgs_Init(HEAP_ID_BOX_DATA, NAMING_SCREEN_TYPE_BOX, 0, BOX_NAME_LEN, boxAppMan->options);

    if (pokemonStorageSession->boxMode != PC_MODE_COMPARE) {
        boxAppMan->mainBoxAndCompareButtonsAction = TouchScreenActions_RegisterHandler(sMainPcButtons, NELEMS(sMainPcButtons), BoxAppMan_BoxTouchScreenButtonHandler, boxAppMan, HEAP_ID_BOX_DATA);
    } else {
        boxAppMan->mainBoxAndCompareButtonsAction = TouchScreenActions_RegisterHandler(sComparePokemonButtons, NELEMS(sComparePokemonButtons), BoxAppMan_BoxTouchScreenButtonHandler, boxAppMan, HEAP_ID_BOX_DATA);
    }

    boxAppMan->markingsButtonsAction = TouchScreenActions_RegisterHandler(sPokemonMarkingsButtons, NELEMS(sPokemonMarkingsButtons), BoxApp_BoxTouchScreenMarkingsButtonHandler, boxAppMan, HEAP_ID_BOX_DATA);
    boxAppMan->boxApp.pcBoxes = boxAppMan->pcBoxes;
    boxAppMan->boxApp.party = boxAppMan->party;
    boxAppMan->boxApp.selectedBoxID = 0;
    boxAppMan->boxApp.cursorItem = ITEM_NONE;

    BoxSettings_Init(&boxAppMan->boxApp.boxSettings, pokemonStorageSession->boxMode);
    PCMonPreview_Init(&boxAppMan->boxApp.pcMonPreview);
    PCBoxes_InitCustomization(boxAppMan->pcBoxes, &boxAppMan->boxApp.customization);
    PCCompareHelper_Init(&boxAppMan->boxApp.compareModeHelper);
    BoxAppMan_InitCursor(boxAppMan);
    BoxMonSelection_Init(&boxAppMan->boxApp.selection);
    BoxTouchDialHelper_Init(&boxAppMan->boxApp.touchDialHelper);
}

static void BoxAppMan_Free(BoxApplicationManager *boxAppMan)
{
    TouchScreenActions_Free(boxAppMan->markingsButtonsAction);
    TouchScreenActions_Free(boxAppMan->mainBoxAndCompareButtonsAction);

    if (boxAppMan->mon) {
        Heap_Free(boxAppMan->mon);
    }

    StringTemplate_Free(boxAppMan->MessageVariableBuffer);
    MessageLoader_Free(boxAppMan->boxMessagesLoader);
    MessageLoader_Free(boxAppMan->speciesNameLoader);
    MessageLoader_Free(boxAppMan->natureNameLoader);
    MessageLoader_Free(boxAppMan->abilityNameLoader);
    NamingScreenArgs_Free(boxAppMan->namingScreenArgs);

    PCMonPreview_Free(&boxAppMan->boxApp.pcMonPreview);
    BoxMonSelection_Free(&boxAppMan->boxApp.selection);
    Customization_Free(&boxAppMan->boxApp.customization);
    PCCompareHelper_Free(&boxAppMan->boxApp.compareModeHelper);

    Heap_Free(boxAppMan);
}

static void BoxSettings_Init(BoxSettings *boxSettings, enum BoxMode boxMode)
{
    boxSettings->boxMode = boxMode;
    boxSettings->isCursorFastMode = FALSE;
    boxSettings->monSpriteTransparencyMask = 0;
}

static void BoxAppMan_InitCursor(BoxApplicationManager *boxAppMan)
{
    BoxApplication *boxApp = &boxAppMan->boxApp;
    BoxCursor *cursor = &boxApp->cursor;

    BoxApp_SetCursorBoxLocation(boxApp, 0, 0);

    cursor->posInParty = 0;
    cursor->prevCursorLocation = CURSOR_IN_PARTY;

    switch (boxApp->boxSettings.boxMode) {
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
    BoxAppMan_TryPreviewCursorMon(boxAppMan);
}

static void BoxMonSelection_Init(BoxMonSelection *selection)
{
    selection->boxMon = Heap_Alloc(HEAP_ID_BOX_DATA, MAX_MONS_PER_BOX * BoxPokemon_GetStructSize());
    selection->selectedMonCount = 0;
    selection->cursorMonIsPartyMon = FALSE;
}

static void BoxMonSelection_Free(BoxMonSelection *selection)
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

static void PCMonPreview_Init(PCMonPreview *preview)
{
    preview->nickname = Strbuf_Init(12, HEAP_ID_BOX_DATA);
    preview->speciesName = Strbuf_Init(12, HEAP_ID_BOX_DATA);
    preview->heldItemName = Strbuf_Init(18, HEAP_ID_BOX_DATA);
    preview->nature = Strbuf_Init(12, HEAP_ID_BOX_DATA);
    preview->ability = Strbuf_Init(16, HEAP_ID_BOX_DATA);
}

static void PCMonPreview_Free(PCMonPreview *preview)
{
    Strbuf_Free(preview->nickname);
    Strbuf_Free(preview->speciesName);
    Strbuf_Free(preview->heldItemName);
    Strbuf_Free(preview->nature);
    Strbuf_Free(preview->ability);
}

static void PCCompareHelper_Init(CompareModeHelper *compareHelper)
{
    compareHelper->compareMonSlot = 0;
    compareHelper->compareMode = COMPARE_BATTLE_STATS;
    compareHelper->compareButtonAnimationPressed = FALSE;

    for (int i = 0; i < 2; i++) {
        compareHelper->compareSlotHasMon[i] = FALSE;
        compareHelper->compareMons[i].monName = Strbuf_Init(12, HEAP_ID_BOX_DATA);
        compareHelper->compareMons[i].nature = Strbuf_Init(12, HEAP_ID_BOX_DATA);
    }
}

static void PCCompareHelper_Free(CompareModeHelper *compareHelper)
{
    for (int i = 0; i < 2; i++) {
        Strbuf_Free(compareHelper->compareMons[i].monName);
        Strbuf_Free(compareHelper->compareMons[i].nature);
    }
}

static void BoxTouchDialHelper_Init(BoxTouchDialHelper *touchDialHelper)
{
    touchDialHelper->selectedTouchDial = TOUCH_DIALS_NONE;
    touchDialHelper->touchDialOffset = 0;
    touchDialHelper->markingsButtonsScrollOffset = 0;
    touchDialHelper->scrollDelta = 0;
}

static void PCBoxes_LoadCustomization(const PCBoxes *pcBoxes, BoxCustomization *customization)
{
    customization->wallpaper = PCBoxes_GetWallpaper(pcBoxes, customization->boxID);
    PCBoxes_BufferBoxName(pcBoxes, customization->boxID, customization->name);
}

static void BoxApp_LoadWallpaper(BoxApplication *boxApp, PCBoxes *pcBoxes)
{
    BoxCustomization *customization = &boxApp->customization;
    customization->wallpaper = PCBoxes_GetWallpaper(pcBoxes, customization->boxID);
}

static BOOL BoxAppMan_TryMoveCursorFromUserInput(u32 heldKeys, BoxApplicationManager *boxAppMan)
{
    BOOL cursorMoved = FALSE;

    do {
        if (heldKeys & PAD_KEY_LEFT) {
            cursorMoved = BoxApp_TryMoveCursor(&boxAppMan->boxApp, -1, 0);
            break;
        }

        if (heldKeys & PAD_KEY_RIGHT) {
            cursorMoved = BoxApp_TryMoveCursor(&boxAppMan->boxApp, 1, 0);
            break;
        }

        if (heldKeys & PAD_KEY_UP) {
            cursorMoved = BoxApp_TryMoveCursor(&boxAppMan->boxApp, 0, -1);
            break;
        }

        if (heldKeys & PAD_KEY_DOWN) {
            cursorMoved = BoxApp_TryMoveCursor(&boxAppMan->boxApp, 0, 1);
            break;
        }
    } while (FALSE);

    if (cursorMoved == TRUE) {
        BoxAppMan_TryPreviewCursorMon(boxAppMan);
    }

    return cursorMoved;
}

static BOOL BoxApp_TryMoveCursor(BoxApplication *boxApp, int colChange, int rowChange)
{
    BoxCursor *cursor = &boxApp->cursor;

    switch (cursor->cursorLocation) {
    case CURSOR_IN_BOX:
        if (colChange != 0) {
            int newCol = cursor->boxCol += colChange;

            if (newCol < 0) {
                newCol = MAX_PC_COLS - 1;
            } else if (newCol >= MAX_PC_COLS) {
                newCol = 0;
            }

            BoxApp_SetCursorBoxLocation(boxApp, newCol, cursor->boxRow);

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

            BoxApp_SetCursorBoxLocation(boxApp, cursor->boxCol, newRow);
            return TRUE;
        }
        break;

    case CURSOR_ON_BOX_HEADER:
        if (rowChange > 0) {
            cursor->cursorLocation = CURSOR_IN_BOX;
            BoxApp_SetCursorBoxLocation(boxApp, cursor->boxCol, 0);
            return TRUE;
        } else if (rowChange < 0) {
            cursor->cursorLocation = cursor->boxCol == MAX_PC_COLS - 1 ? CURSOR_ON_CLOSE_BUTTON : CURSOR_ON_PARTY_BUTTON;
            return TRUE;
        }
        break;
    case CURSOR_ON_CLOSE_BUTTON:
        if (rowChange < 0) {
            cursor->cursorLocation = CURSOR_IN_BOX;
            BoxApp_SetCursorBoxLocation(boxApp, cursor->boxCol, 4);
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
            BoxApp_SetCursorBoxLocation(boxApp, cursor->boxCol, 4);
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

static enum CursorMovementState BoxAppMan_TryMoveSelectionFromUserInput(u32 heldKeys, BoxApplicationManager *boxAppMan)
{
    enum CursorMovementState cursorMovement = CURSOR_NO_MOVEMENT;

    do {
        if (heldKeys & PAD_KEY_LEFT) {
            cursorMovement = BoxApp_TryMoveSelection(&boxAppMan->boxApp, -1, 0);
            break;
        }

        if (heldKeys & PAD_KEY_RIGHT) {
            cursorMovement = BoxApp_TryMoveSelection(&boxAppMan->boxApp, 1, 0);
            break;
        }

        if (heldKeys & PAD_KEY_UP) {
            cursorMovement = BoxApp_TryMoveSelection(&boxAppMan->boxApp, 0, -1);
            break;
        }

        if (heldKeys & PAD_KEY_DOWN) {
            cursorMovement = BoxApp_TryMoveSelection(&boxAppMan->boxApp, 0, 1);
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
        BoxAppMan_TryPreviewCursorMon(boxAppMan);
    }

    return cursorMovement;
}

static enum CursorMovementState BoxApp_TryMoveSelection(BoxApplication *boxApp, int colChange, int rowChange)
{
    BoxCursor *cursor = &boxApp->cursor;
    const BoxMonSelection *selection = &boxApp->selection;

    if (cursor->cursorLocation == CURSOR_IN_BOX) {
        if (colChange != 0) {
            int newCol = cursor->boxCol + colChange;

            if (BoxApp_GetPreviewMonSource(boxApp) & PREVIEW_MON_SELECTION) {
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

            BoxApp_SetCursorBoxLocation(boxApp, newCol, cursor->boxRow);
            return CURSOR_MOVE;
        }

        if (rowChange != 0) {
            int newRow = cursor->boxRow + rowChange;

            if (BoxApp_GetPreviewMonSource(boxApp) & PREVIEW_MON_SELECTION) {
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

            BoxApp_SetCursorBoxLocation(boxApp, cursor->boxCol, newRow);
            return CURSOR_MOVE;
        }
    }

    GF_ASSERT(FALSE);
    return CURSOR_NO_MOVEMENT;
}

static void BoxAppMan_MoveCursorToParty(BoxApplicationManager *boxAppMan)
{
    BoxApplication *boxApp = &boxAppMan->boxApp;
    BoxCursor *cursor = &boxApp->cursor;

    if (BoxApp_GetPreviewMonSource(boxApp) == PREVIEW_MON_IN_CURSOR) {
        cursor->posInParty = Party_GetCurrentCount(boxAppMan->party);

        if (cursor->posInParty >= MAX_PARTY_SIZE) {
            cursor->posInParty = MAX_PARTY_SIZE - 1;
        }
    } else {
        cursor->posInParty = 0;
    }

    cursor->prevCursorLocation = cursor->cursorLocation;
    cursor->cursorLocation = CURSOR_IN_PARTY;

    BoxAppMan_TryPreviewCursorMon(boxAppMan);
}

static void BoxAppMan_ReturnCursorToBox(BoxApplicationManager *boxAppMan)
{
    BoxCursor *cursor = &boxAppMan->boxApp.cursor;
    cursor->cursorLocation = CURSOR_IN_BOX;

    if (cursor->prevCursorLocation != CURSOR_IN_BOX) {
        BoxApp_SetCursorBoxLocation(&boxAppMan->boxApp, 0, 0);
    }

    BoxAppMan_TryPreviewCursorMon(boxAppMan);
}

static BOOL BoxAppMan_TryPreviewCursorMon(BoxApplicationManager *boxAppMan)
{
    BoxApplication *boxApp = &boxAppMan->boxApp;
    PCMonPreview *preview = &boxApp->pcMonPreview;
    BoxCursor *cursor = &boxApp->cursor;

    cursor->isMonUnderCursor = FALSE;

    switch (cursor->cursorLocation) {
    case CURSOR_IN_BOX:
        cursor->mon = PCBoxes_GetBoxMonAt(boxApp->pcBoxes, USE_CURRENT_BOX, cursor->posInBox);
        break;
    case CURSOR_IN_PARTY:
        if (cursor->posInParty < Party_GetCurrentCount(boxAppMan->party)) {
            cursor->mon = Party_GetPokemonBySlotIndex(boxAppMan->party, cursor->posInParty);
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

            if (!(BoxApp_GetPreviewMonSource(boxApp) & PREVIEW_MON_HELD)) {
                BoxApp_PreviewBoxMon(boxApp, cursor->mon, boxAppMan);
                return TRUE;
            }
        }
    }

    return FALSE;
}

static BOOL BoxAppMan_TryPressTouchScreenButton(BoxApplicationManager *boxAppMan)
{
    boxAppMan->touchScreenButtonPressed = 0xFFFF;
    TouchScreenActions_HandleAction(boxAppMan->mainBoxAndCompareButtonsAction);

    return boxAppMan->touchScreenButtonPressed != 0xFFFF;
}

static void BoxAppMan_BoxTouchScreenButtonHandler(u32 buttonIndex, enum TouchScreenButtonState buttonTouchState, void *context)
{
    BoxApplicationManager *boxAppMan = (BoxApplicationManager *)context;

    if (buttonTouchState == TOUCH_BUTTON_PRESSED && boxAppMan->touchScreenButtonPressed == 0xFFFF) {
        boxAppMan->touchScreenButtonPressed = buttonIndex;
    }

    if (BoxApp_GetBoxMode(&boxAppMan->boxApp) == PC_MODE_COMPARE) {
        if (buttonIndex == COMPARE_MON_PC_BUTTON_ID) {
            switch (buttonTouchState) {
            case TOUCH_BUTTON_PRESSED:
                BoxApp_SetCompareButtonPressed(&boxAppMan->boxApp, TRUE);
                break;
            case TOUCH_BUTTON_RELEASED:
            case TOUCH_BUTTON_HELD_OUT_OF_BOUNDS:
                BoxApp_SetCompareButtonPressed(&boxAppMan->boxApp, FALSE);
                break;
            }
        }
    }
}

static void BoxApp_SetBoxMessage(BoxApplication *boxApp, u32 boxMessageID)
{
    boxApp->boxMessageID = boxMessageID;
}

static void BoxApp_SetCursorBoxLocation(BoxApplication *boxApp, u32 col, u32 row)
{
    BoxCursor *cursor = &boxApp->cursor;

    cursor->boxCol = col;
    cursor->boxRow = row;
    cursor->posInBox = row * MAX_PC_COLS + col;
}

static void BoxAppMan_PickUpMon(BoxApplicationManager *boxAppMan, BoxApplication *boxApp)
{
    BoxMonSelection *selection = &boxApp->selection;
    BoxCursor *cursor = &boxApp->cursor;

    if (BoxApp_GetCursorLocation(boxApp) == CURSOR_IN_BOX) {
        MI_CpuCopy32(cursor->mon, selection->boxMon, BoxPokemon_GetStructSize());
        PCBoxes_InitBoxMonAt(boxAppMan->pcBoxes, USE_CURRENT_BOX, cursor->posInBox);
        selection->cursorMonIsPartyMon = FALSE;
    } else {
        MI_CpuCopy32(cursor->mon, selection->boxMon, Pokemon_GetStructSize());
        Party_RemovePokemonBySlotIndex(boxAppMan->party, cursor->posInParty);
        selection->cursorMonIsPartyMon = TRUE;
    }

    BoxApp_SetPreviewedBoxMon(boxApp, selection->boxMon);

    selection->selectionStartCol = selection->selectionEndCol = cursor->boxCol;
    selection->selectionStartRow = selection->selectionEndRow = cursor->boxRow;

    boxApp->cursor.previewMonSource = PREVIEW_MON_IN_CURSOR;
    boxApp->cursor.isMonUnderCursor = FALSE;
}

static void BoxAppMan_PickUpMultiSelectedMons(BoxApplicationManager *boxAppMan, BoxApplication *boxApp)
{
    u32 col, row, selectionLeftCol, selectionRightCol, selectionTopRow, selectionBottomRow, monPosInBox;
    BoxPokemon *boxMon;

    BoxMonSelection *selection = &boxApp->selection;
    selection->unused = 1;

    u32 cursorPosInBox = BoxApp_GetCursorBoxPosition(boxApp);
    u32 boxMonSize = BoxPokemon_GetStructSize();
    u32 processedMonCount = 0;
    void *cursorMonBuffer = selection->boxMon;

    BoxApp_GetMultiSelectBoundingBox(boxApp, &selectionLeftCol, &selectionRightCol, &selectionTopRow, &selectionBottomRow);

    for (row = selectionTopRow; row <= selectionBottomRow; row++) {
        monPosInBox = row * MAX_PC_COLS + selectionLeftCol;

        for (col = selectionLeftCol; col <= selectionRightCol; col++) {
            boxMon = PCBoxes_GetBoxMonAt(boxAppMan->pcBoxes, USE_CURRENT_BOX, monPosInBox);

            if (BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES_EXISTS, NULL)) {
                MI_CpuCopy32(boxMon, cursorMonBuffer, boxMonSize);
                PCBoxes_InitBoxMonAt(boxAppMan->pcBoxes, USE_CURRENT_BOX, monPosInBox);
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

    boxApp->cursor.previewMonSource = boxApp->cursor.isMonUnderCursor ? PREVIEW_MON_FROM_SELECTION : PREVIEW_MON_UNDER_SELECTION;
    boxApp->cursor.isMonUnderCursor = FALSE;
}

static void BoxAppMan_ResetMultiSelectLocation(BoxApplicationManager *boxAppMan, BoxApplication *boxApp)
{
    BoxMonSelection *selection = &boxApp->selection;
    BoxCursor *cursor = &boxApp->cursor;

    selection->selectionStartCol = selection->selectionEndCol = cursor->boxCol;
    selection->selectionStartRow = selection->selectionEndRow = cursor->boxRow;
}

static void BoxAppMan_SetMultiSelectionEndLocation(BoxApplicationManager *boxAppMan, BoxApplication *boxApp)
{
    BoxMonSelection *selection = &boxApp->selection;
    BoxCursor *cursor = &boxApp->cursor;

    selection->selectionEndCol = cursor->boxCol;
    selection->selectionEndRow = cursor->boxRow;
}

static void BoxAppMan_PutDownCursorMon(BoxApplicationManager *boxAppMan, BoxApplication *boxApp)
{
    BoxMonSelection *selection = &boxApp->selection;
    BoxCursor *cursor = &boxApp->cursor;
    BoxPokemon *boxMon;
    BOOL shayminIsSkyForm = FALSE;

    if (BoxApp_GetCursorLocation(boxApp) == CURSOR_IN_BOX) {
        int monForm = BoxPokemon_GetValue(selection->boxMon, MON_DATA_FORM, NULL);
        PCBoxes_TryStoreBoxMonAt(boxAppMan->pcBoxes, USE_CURRENT_BOX, cursor->posInBox, selection->boxMon);
        boxMon = PCBoxes_GetBoxMonAt(boxAppMan->pcBoxes, USE_CURRENT_BOX, cursor->posInBox);

        if (BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL) == SPECIES_SHAYMIN && monForm == SHAYMIN_FORM_SKY) {
            shayminIsSkyForm = TRUE;
        }
    } else {
        if (selection->cursorMonIsPartyMon) {
            Party_AddPokemon(boxAppMan->party, (Pokemon *)selection->boxMon);
        } else {
            Pokemon_FromBoxPokemon(selection->boxMon, boxAppMan->mon);
            Party_AddPokemon(boxAppMan->party, boxAppMan->mon);
        }

        boxMon = (BoxPokemon *)Party_GetPokemonBySlotIndex(boxAppMan->party, Party_GetCurrentCount(boxAppMan->party) - 1);
    }

    BoxApp_SetPreviewedBoxMon(boxApp, boxMon);
    BOOL isMonInPreview = BoxAppMan_TryPreviewCursorMon(boxAppMan);

    if (isMonInPreview == FALSE && shayminIsSkyForm == TRUE) {
        BoxApp_LoadBoxMonIntoPreview(boxApp, boxMon, boxAppMan);
        BoxGraphics_TaskHandler(boxAppMan->unk_114, FUNC_BoxGraphics_PreviewMon);
    }

    boxApp->cursor.previewMonSource = PREVIEW_MON_UNDER_CURSOR;
    boxApp->cursor.isMonUnderCursor = TRUE;
}

static void BoxAppMan_PutDownSelectedMons(BoxApplicationManager *boxAppMan, BoxApplication *boxApp)
{
    int origSelectionTopLeftPos;
    BoxCursor *cursor = &boxApp->cursor;
    BoxMonSelection *selection = &boxApp->selection;

    int selectionTopLeftPos = BoxApp_GetMultiSelectTopLeftPos(boxApp);
    origSelectionTopLeftPos = selection->origSelectionTopLeftPos;
    int boxMonStructSize = BoxPokemon_GetStructSize();
    BoxPokemon *boxMon = selection->boxMon;

    int posInBox;
    for (int i = 0; i < selection->selectedMonCount; i++) {
        posInBox = selectionTopLeftPos + (selection->selectedMonsOrigBoxPos[i] - origSelectionTopLeftPos);
        PCBoxes_TryStoreBoxMonAt(boxAppMan->pcBoxes, USE_CURRENT_BOX, posInBox, boxMon);
        (u8 *)boxMon += boxMonStructSize;
    }

    BoxApp_SetPreviewedBoxMon(boxApp, PCBoxes_GetBoxMonAt(boxAppMan->pcBoxes, USE_CURRENT_BOX, BoxApp_GetCursorBoxPosition(boxApp)));
    BoxAppMan_TryPreviewCursorMon(boxAppMan);

    selection->selectedMonCount = 0;
    boxApp->cursor.previewMonSource = PREVIEW_MON_UNDER_CURSOR;
}

static void BoxAppMan_SwapMonInCursor(BoxApplicationManager *boxAppMan, BoxApplication *boxApp)
{
    BoxMonSelection *selection = &boxApp->selection;
    u32 monStructSize = Pokemon_GetStructSize();
    void *monBuffer = (u8 *)selection->boxMon + monStructSize;
    BoxCursor *cursor = &boxApp->cursor;

    MI_CpuCopy32(selection->boxMon, monBuffer, monStructSize);
    MI_CpuCopy32(cursor->mon, selection->boxMon, monStructSize);

    if (BoxApp_GetCursorLocation(boxApp) == CURSOR_IN_BOX) {
        PCBoxes_TryStoreBoxMonAt(boxAppMan->pcBoxes, USE_CURRENT_BOX, cursor->posInBox, monBuffer);
        selection->cursorMonIsPartyMon = FALSE;
    } else {
        if (selection->cursorMonIsPartyMon == FALSE) {
            Pokemon_FromBoxPokemon(monBuffer, boxAppMan->mon);
        } else {
            MI_CpuCopy32(monBuffer, boxAppMan->mon, monStructSize);
        }

        Party_AddPokemonBySlotIndex(boxAppMan->party, cursor->posInParty, boxAppMan->mon);
        selection->cursorMonIsPartyMon = TRUE;
    }

    BoxApp_PreviewBoxMon(boxApp, selection->boxMon, boxAppMan);
}

static BOOL BoxAppMan_TryStoreCursorMonInBox(BoxApplicationManager *boxAppMan, u32 boxID)
{
    BoxApplication *boxApp = &boxAppMan->boxApp;
    BoxCursor *cursor = &boxApp->cursor;
    BoxMonSelection *selection = &boxApp->selection;

    if (PCBoxes_TryStoreBoxMonInBox(boxAppMan->pcBoxes, boxID, selection->boxMon)) {
        boxApp->cursor.previewMonSource = PREVIEW_MON_UNDER_CURSOR;
        BoxAppMan_TryPreviewCursorMon(boxAppMan);
        return TRUE;
    }

    return FALSE;
}

static BOOL BoxAppMan_TryStoreSelectedMonInBox(BoxApplicationManager *boxAppMan, u32 boxID)
{
    BoxApplication *boxApp = &boxAppMan->boxApp;
    BoxCursor *cursor = &boxApp->cursor;

    if (PCBoxes_TryStoreBoxMonInBox(boxAppMan->pcBoxes, boxID, cursor->mon)) {
        Party_RemovePokemonBySlotIndex(boxAppMan->party, cursor->posInParty);
        BoxAppMan_TryPreviewCursorMon(boxAppMan);
        return TRUE;
    }

    return FALSE;
}

static void BoxAppMan_RemoveCursorMon(BoxApplicationManager *boxAppMan)
{
    BoxApplication *boxApp = &boxAppMan->boxApp;
    BoxCursor *cursor = &boxApp->cursor;
    BoxMonSelection *selection = &boxApp->selection;

    BoxPokemon_Init(selection->boxMon);
    cursor->previewMonSource = PREVIEW_MON_UNDER_CURSOR;
    BoxAppMan_TryPreviewCursorMon(boxAppMan);
}

static void BoxAppMan_RemoveMonUnderCursor(BoxApplicationManager *boxAppMan)
{
    BoxApplication *boxApp = &boxAppMan->boxApp;
    BoxCursor *cursor = &boxApp->cursor;

    if (BoxApp_GetCursorLocation(boxApp) == CURSOR_IN_BOX) {
        PCBoxes_InitBoxMonAt(boxAppMan->pcBoxes, USE_CURRENT_BOX, cursor->posInBox);
    } else {
        Party_RemovePokemonBySlotIndex(boxAppMan->party, cursor->posInParty);
    }

    BoxAppMan_TryPreviewCursorMon(boxAppMan);
}

static void BoxApp_PreviewBoxMon(BoxApplication *boxApp, BoxPokemon *boxMon, BoxApplicationManager *boxAppMan)
{
    BoxApp_LoadBoxMonIntoPreview(boxApp, boxMon, boxAppMan);

    if (BoxApp_GetBoxMode(boxApp) == PC_MODE_COMPARE) {
        BoxApp_LoadBoxMonIntoComparison(boxApp, boxMon, boxAppMan);
    }
}

static void BoxApp_LoadBoxMonIntoPreview(BoxApplication *boxApp, BoxPokemon *boxMon, BoxApplicationManager *boxAppMan)
{
    PCMonPreview *preview = &boxApp->pcMonPreview;
    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);

    preview->mon = boxMon;
    preview->species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    preview->heldItem = BoxPokemon_GetValue(boxMon, MON_DATA_HELD_ITEM, NULL);
    preview->dexNum = GetDexNumber(SaveData_GetDexMode(boxAppMan->saveData), preview->species);
    preview->isEgg = BoxPokemon_GetValue(boxMon, MON_DATA_SANITY_IS_EGG, NULL);
    SpeciesData *speciesData = SpeciesData_FromMonSpecies(preview->species, HEAP_ID_BOX_DATA);
    preview->level = SpeciesData_GetLevelAt(speciesData, preview->species, BoxPokemon_GetValue(boxMon, MON_DATA_EXPERIENCE, NULL));
    preview->markings = BoxPokemon_GetValue(boxMon, MON_DATA_MARKINGS, NULL);
    preview->type1 = BoxPokemon_GetValue(boxMon, MON_DATA_TYPE_1, NULL);
    preview->type2 = BoxPokemon_GetValue(boxMon, MON_DATA_TYPE_2, NULL);

    if ((preview->isEgg == FALSE) && BoxPokemon_GetValue(boxMon, MON_DATA_NO_PRINT_GENDER, NULL)) {
        preview->gender = SpeciesData_GetGenderOf(speciesData, preview->species, BoxPokemon_GetValue(boxMon, MON_DATA_PERSONALITY, NULL));
    } else {
        preview->gender = PREVIEW_GENDER_INVALID;
    }

    BoxPokemon_GetValue(boxMon, MON_DATA_NICKNAME_STRING, preview->nickname);

    if (preview->isEgg == FALSE) {
        MessageLoader_GetStrbuf(boxAppMan->speciesNameLoader, preview->species, preview->speciesName);
    } else {
        Strbuf_Copy(preview->speciesName, preview->nickname);
        Strbuf_Clear(preview->nickname);
    }

    if (preview->heldItem != ITEM_NONE) {
        Item_LoadName(preview->heldItemName, preview->heldItem, HEAP_ID_BOX_DATA);
    } else {
        MessageLoader_GetStrbuf(boxAppMan->boxMessagesLoader, BoxText_NoItem, preview->heldItemName);
    }

    u32 value = BoxPokemon_GetNature(boxMon);
    MessageLoader_GetStrbuf(boxAppMan->natureNameLoader, value, preview->nature);

    value = BoxPokemon_GetValue(boxMon, MON_DATA_ABILITY, NULL);
    MessageLoader_GetStrbuf(boxAppMan->abilityNameLoader, value, preview->ability);

    SpeciesData_Free(speciesData);
    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
}

static void BoxApp_LoadBoxMonIntoComparison(BoxApplication *boxApp, BoxPokemon *boxMon, BoxApplicationManager *boxAppMan)
{
    PCMonPreview *preview = &boxApp->pcMonPreview;
    PCCompareMon *compareMon = &boxApp->compareModeHelper.compareMons[boxApp->compareModeHelper.compareMonSlot];

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
    Pokemon_FromBoxPokemon(boxMon, boxAppMan->mon);

    BOOL reencrypt = Pokemon_EnterDecryptionContext(boxAppMan->mon);

    compareMon->maxHP = Pokemon_GetValue(boxAppMan->mon, MON_DATA_MAX_HP, NULL);
    compareMon->attack = Pokemon_GetValue(boxAppMan->mon, MON_DATA_ATK, NULL);
    compareMon->defense = Pokemon_GetValue(boxAppMan->mon, MON_DATA_DEF, NULL);
    compareMon->spAttack = Pokemon_GetValue(boxAppMan->mon, MON_DATA_SP_ATK, NULL);
    compareMon->spDefense = Pokemon_GetValue(boxAppMan->mon, MON_DATA_SP_DEF, NULL);
    compareMon->speed = Pokemon_GetValue(boxAppMan->mon, MON_DATA_SPEED, NULL);
    compareMon->cool = Pokemon_GetValue(boxAppMan->mon, MON_DATA_COOL, NULL);
    compareMon->beauty = Pokemon_GetValue(boxAppMan->mon, MON_DATA_BEAUTY, NULL);
    compareMon->cute = Pokemon_GetValue(boxAppMan->mon, MON_DATA_CUTE, NULL);
    compareMon->smart = Pokemon_GetValue(boxAppMan->mon, MON_DATA_SMART, NULL);
    compareMon->tough = Pokemon_GetValue(boxAppMan->mon, MON_DATA_TOUGH, NULL);
    compareMon->moves[0] = Pokemon_GetValue(boxAppMan->mon, MON_DATA_MOVE1, NULL);
    compareMon->moves[1] = Pokemon_GetValue(boxAppMan->mon, MON_DATA_MOVE2, NULL);
    compareMon->moves[2] = Pokemon_GetValue(boxAppMan->mon, MON_DATA_MOVE3, NULL);
    compareMon->moves[3] = Pokemon_GetValue(boxAppMan->mon, MON_DATA_MOVE4, NULL);
    compareMon->form = Pokemon_GetValue(boxAppMan->mon, MON_DATA_FORM, NULL);

    Pokemon_ExitDecryptionContext(boxAppMan->mon, reencrypt);

    boxApp->compareModeHelper.compareSlotHasMon[boxApp->compareModeHelper.compareMonSlot] = TRUE;
}

static void BoxApp_ToggleCompareMonSlot(BoxApplication *boxApp)
{
    boxApp->compareModeHelper.compareMonSlot ^= 1;
}

static void BoxApp_NextCompareMode(BoxApplication *boxApp)
{
    if (++(boxApp->compareModeHelper.compareMode) >= NUM_COMPARE_MODES) {
        boxApp->compareModeHelper.compareMode = COMPARE_BATTLE_STATS;
    }
}

static void BoxApp_SetCompareButtonPressed(BoxApplication *boxApp, BOOL pressed)
{
    boxApp->compareModeHelper.compareButtonAnimationPressed = pressed;
}

static void BoxApp_SetPreviewedBoxMon(BoxApplication *boxApp, BoxPokemon *boxMon)
{
    boxApp->pcMonPreview.mon = boxMon;
}

static void BoxApp_UpdatePreviewMonMarkings(BoxApplication *boxApp)
{
    PCMonPreview *preview = &boxApp->pcMonPreview;
    u8 markings = boxApp->boxMenu.markings;
    preview->markings = markings;

    BoxPokemon_SetValue(preview->mon, MON_DATA_MARKINGS, &markings);

    if (BoxApp_GetCursorLocation(boxApp) == CURSOR_IN_BOX && BoxApp_GetPreviewMonSource(boxApp) == PREVIEW_MON_UNDER_CURSOR) {
        SaveData_SetFullSaveRequired();
    }
}

static void BoxApp_GiveItemToSelectedMon(BoxApplication *boxApp, u16 item, BoxApplicationManager *boxAppMan)
{
    PCMonPreview *preview = &boxApp->pcMonPreview;
    preview->heldItem = item;

    if (preview->heldItem != ITEM_NONE) {
        Item_LoadName(preview->heldItemName, preview->heldItem, HEAP_ID_BOX_DATA);
    } else {
        MessageLoader_GetStrbuf(boxAppMan->boxMessagesLoader, BoxText_NoItem, preview->heldItemName);
    }

    if (BoxApp_GetCursorLocation(boxApp) == CURSOR_IN_BOX && BoxApp_GetPreviewMonSource(boxApp) == PREVIEW_MON_UNDER_CURSOR) {
        u32 posInBox = BoxApp_GetCursorBoxPosition(boxApp);
        PCBoxes_SetBoxMonData(boxAppMan->pcBoxes, USE_CURRENT_BOX, posInBox, MON_DATA_HELD_ITEM, &item);
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
        MessageLoader_GetStrbuf(boxAppMan->abilityNameLoader, ability, preview->ability);
    }
}

static void BoxApp_LoadRightBoxCustomization(BoxApplication *boxApp)
{
    BoxCustomization *customization = &boxApp->customization;

    if (++(customization->boxID) >= MAX_PC_BOXES) {
        customization->boxID = 0;
    }

    PCBoxes_LoadCustomization(boxApp->pcBoxes, customization);
}

static void BoxApp_LoadLeftBoxCustomization(BoxApplication *boxApp)
{
    BoxCustomization *customization = &boxApp->customization;

    if (customization->boxID) {
        customization->boxID--;
    } else {
        customization->boxID = MAX_PC_BOXES - 1;
    }

    PCBoxes_LoadCustomization(boxApp->pcBoxes, customization);
}

static void BoxApp_LoadCustomizationsFor(BoxApplication *boxApp, u32 boxID)
{
    BoxCustomization *customization = &boxApp->customization;

    customization->boxID = boxID;
    PCBoxes_LoadCustomization(boxApp->pcBoxes, customization);
}

static void BoxApp_SetBoxSelectionBoxID(BoxApplication *boxApp, u32 boxID)
{
    boxApp->boxSelectionBoxID = boxID;
}

static void BoxApp_PickUpHeldItem(BoxApplication *boxApp, BoxApplicationManager *boxAppMan)
{
    PCMonPreview *preview = &boxApp->pcMonPreview;
    u16 itemNone = ITEM_NONE;

    boxApp->cursorItem = preview->heldItem;

    MessageLoader_GetStrbuf(boxAppMan->boxMessagesLoader, BoxText_NoItem, preview->heldItemName);
    BoxApp_GiveItemToSelectedMon(boxApp, itemNone, boxAppMan);
}

static void BoxApp_RemoveCursorItem(BoxApplication *boxApp)
{
    boxApp->cursorItem = ITEM_NONE;
}

static void BoxApp_GiveItemFromCursor(BoxApplication *boxApp, BoxApplicationManager *boxAppMan)
{
    u16 item = boxApp->cursorItem;
    boxApp->cursorItem = ITEM_NONE;

    BoxApp_GiveItemToSelectedMon(boxApp, item, boxAppMan);
}

static void BoxApp_SwapMonAndCursorItems(BoxApplication *boxApp, BoxApplicationManager *boxAppMan)
{
    PCMonPreview *preview = &boxApp->pcMonPreview;
    u16 item = boxApp->cursorItem;
    boxApp->cursorItem = preview->heldItem;

    BoxApp_GiveItemToSelectedMon(boxApp, item, boxAppMan);
}

static void BoxApp_SetTouchDialSelected(BoxApplication *boxApp, enum TouchDials touchDialID)
{
    boxApp->touchDialHelper.selectedTouchDial = touchDialID;
}

static void BoxApp_SetTouchDialOffset(BoxApplication *boxApp, u32 offset)
{
    boxApp->touchDialHelper.touchDialOffset = offset;
}

static void BoxApp_SetMarkingsButtonsScrollOffset(BoxApplication *boxApp, u32 offset)
{
    boxApp->touchDialHelper.markingsButtonsScrollOffset = offset;
}

static void BoxApp_SetTouchDialScrollDelta(BoxApplication *boxApp, int amount)
{
    boxApp->touchDialHelper.scrollDelta = amount;
}

static void BoxApp_SetMonSpriteTransparencyMask(BoxApplication *boxApp, u32 mask)
{
    if (mask == 0) {
        boxApp->boxSettings.monSpriteTransparencyMask = 0;
    } else {
        boxApp->boxSettings.monSpriteTransparencyMask ^= (1 << (mask - 1));
    }
}

static void BoxApp_ToggleCursorFastMode(BoxApplication *boxApp)
{
    boxApp->boxSettings.isCursorFastMode ^= 1;
}

MessageLoader *BoxAppMan_GetBoxMessagesLoader(const BoxApplicationManager *boxAppMan)
{
    return boxAppMan->boxMessagesLoader;
}

const StringTemplate *BoxAppMan_GetMessageVariableBuffer(const BoxApplicationManager *boxAppMan)
{
    return boxAppMan->MessageVariableBuffer;
}

int BoxAppMan_GetOptionsFrame(const BoxApplicationManager *boxAppMan)
{
    return Options_Frame(boxAppMan->options);
}

enum BoxMode BoxApp_GetBoxMode(const BoxApplication *boxApp)
{
    return boxApp->boxSettings.boxMode;
}

enum CursorLocation BoxApp_GetCursorLocation(const BoxApplication *boxApp)
{
    return boxApp->cursor.cursorLocation;
}

u32 BoxApp_GetCursorBoxCol(const BoxApplication *boxApp)
{
    return boxApp->cursor.boxCol;
}

u32 BoxApp_GetCursorBoxRow(const BoxApplication *boxApp)
{
    return boxApp->cursor.boxRow;
}

u32 BoxApp_GetCursorBoxPosition(const BoxApplication *boxApp)
{
    return boxApp->cursor.posInBox;
}

u32 BoxApp_GetCursorPartyPosition(const BoxApplication *boxApp)
{
    return boxApp->cursor.posInParty;
}

BOOL BoxApp_IsMonUnderCursor(const BoxApplication *boxApp)
{
    return boxApp->cursor.isMonUnderCursor;
}

u32 BoxApp_GetPreviewMonSource(const BoxApplication *boxApp)
{
    return boxApp->cursor.previewMonSource;
}

BOOL BoxApp_GetCursorMonIsPartyMon(const BoxApplication *boxApp)
{
    if (boxApp->cursor.previewMonSource) { // this can never be 0, so this will effectively always be true
        return boxApp->selection.cursorMonIsPartyMon;
    }

    return FALSE;
}

BOOL BoxApp_IsMonAvailableToCursor(const BoxApplication *boxApp)
{
    const BoxCursor *cursor = &boxApp->cursor;

    if (cursor->previewMonSource == PREVIEW_MON_IN_CURSOR || cursor->previewMonSource == PREVIEW_MON_FROM_SELECTION) {
        return TRUE;
    }

    if (boxApp->cursor.isMonUnderCursor) {
        return TRUE;
    }

    return FALSE;
}

u32 BoxApp_GetCurrentBox(const BoxApplication *boxApp)
{
    return boxApp->customization.boxID;
}

const PCMonPreview *BoxApp_GetPCMonPreview(const BoxApplication *boxApp)
{
    return &boxApp->pcMonPreview;
}

u32 BoxApp_GetPreviewedMonHeldItem(const BoxApplication *boxApp)
{
    if (BoxApp_IsMonAvailableToCursor(boxApp)) {
        return boxApp->pcMonPreview.heldItem;
    }

    return ITEM_NONE;
}

const BoxCustomization *BoxApp_GetBoxCustomization(const BoxApplication *boxApp)
{
    return &boxApp->customization;
}

const PCBoxes *BoxApp_GetPCBoxes(const BoxApplication *boxApp)
{
    return boxApp->pcBoxes;
}

u32 BoxApp_GetBoxMessageID(const BoxApplication *boxApp)
{
    return boxApp->boxMessageID;
}

BoxPokemon *BoxApp_GetPreviewedBoxMon(const BoxApplication *boxApp)
{
    return boxApp->pcMonPreview.mon;
}

u32 BoxApp_GetPreviewedMonMarkings(const BoxApplication *boxApp)
{
    return boxApp->pcMonPreview.markings;
}

u32 BoxApp_GetBoxSelectionBoxID(const BoxApplication *boxApp)
{
    return boxApp->boxSelectionBoxID;
}

s32 BoxApp_GetTouchDialScrollDelta(const BoxApplication *boxAppMan)
{
    return boxAppMan->touchDialHelper.scrollDelta;
}

u32 BoxApp_GetTouchDialOffset(const BoxApplication *boxApp)
{
    return boxApp->touchDialHelper.touchDialOffset;
}

u32 BoxApp_GetMarkingsButtonsScrollOffset(const BoxApplication *boxApp)
{
    return boxApp->touchDialHelper.markingsButtonsScrollOffset;
}

u32 BoxApp_GetMonSpriteTransparencyMask(const BoxApplication *boxApp)
{
    if (BoxApp_GetBoxMode(boxApp) != PC_MODE_MOVE_ITEMS) {
        return boxApp->boxSettings.monSpriteTransparencyMask;
    } else {
        return 1;
    }
}

BOOL BoxApp_IsCursorFastMode(const BoxApplication *boxApp)
{
    return boxApp->boxSettings.isCursorFastMode;
}

void BoxApp_GetMultiSelectBoundingBox(const BoxApplication *boxApp, u32 *leftCol, u32 *rightCol, u32 *topRow, u32 *bottomRow)
{
    const BoxMonSelection *selection = &boxApp->selection;

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

BOOL BoxApp_IsMultiSelectSingleSelect(const BoxApplication *boxApp)
{
    const BoxMonSelection *selection = &boxApp->selection;

    if (selection->selectionStartCol == selection->selectionEndCol && selection->selectionStartRow == selection->selectionEndRow) {
        return TRUE;
    }

    return FALSE;
}

u32 BoxApp_GetMultiSelectTopLeftPos(const BoxApplication *boxApp)
{
    const BoxMonSelection *selection = &boxApp->selection;
    int col = boxApp->cursor.boxCol;
    int row = boxApp->cursor.boxRow;

    if (selection->selectionEndCol > selection->selectionStartCol) {
        col -= selection->selectionEndCol - selection->selectionStartCol;
    }

    if (selection->selectionEndRow > selection->selectionStartRow) {
        row -= selection->selectionEndRow - selection->selectionStartRow;
    }

    return row * MAX_PC_COLS + col;
}

u32 BoxApp_GetRelativeMonPosInMultiSelection(const BoxApplication *boxApp, u32 position)
{
    const BoxMonSelection *selection = &boxApp->selection;
    return selection->selectedMonsOrigBoxPos[position] - selection->origSelectionTopLeftPos;
}

u32 BoxApp_GetCursorItem(const BoxApplication *boxApp)
{
    return boxApp->cursorItem;
}

u32 BoxApp_GetCursorOrPreviewedItem(const BoxApplication *boxApp)
{
    u32 cursorItem = BoxApp_GetCursorItem(boxApp);

    if (cursorItem != ITEM_NONE) {
        return cursorItem;
    }

    return BoxApp_GetPreviewedMonHeldItem(boxApp);
}

u32 BoxApp_GetCompareMonSlot(const BoxApplication *boxApp)
{
    return boxApp->compareModeHelper.compareMonSlot;
}

u32 BoxApp_GetCompareMode(const BoxApplication *boxApp)
{
    return boxApp->compareModeHelper.compareMode;
}

const PCCompareMon *BoxApp_GetCompareMonFrom(const BoxApplication *boxApp, int compareSlot)
{
    return &boxApp->compareModeHelper.compareMons[compareSlot];
}

BOOL BoxApp_CompareSlotHasMon(const BoxApplication *boxApp, int compareMonSlot)
{
    return boxApp->compareModeHelper.compareSlotHasMon[compareMonSlot];
}

BOOL BoxApp_IsCompareButtonPressed(const BoxApplication *boxApp)
{
    return boxApp->compareModeHelper.compareButtonAnimationPressed;
}

BOOL BoxApp_IsPreviewedMonEgg(const BoxApplication *boxApp)
{
    return boxApp->pcMonPreview.isEgg;
}

static u32 BoxApp_GetPreviewedMonValue(BoxApplication *boxApp, enum PokemonDataParam value, void *dest)
{
    if (BoxApp_GetPreviewMonSource(boxApp) == PREVIEW_MON_UNDER_CURSOR) {
        if (BoxApp_GetCursorLocation(boxApp) == CURSOR_IN_BOX) {
            return BoxPokemon_GetValue(boxApp->pcMonPreview.mon, value, dest);
        }
    } else {
        BoxMonSelection *selection = &boxApp->selection;

        if (selection->cursorMonIsPartyMon == FALSE) {
            return BoxPokemon_GetValue(boxApp->pcMonPreview.mon, value, dest);
        }
    }

    return Pokemon_GetValue(boxApp->pcMonPreview.mon, value, dest);
}

static u32 BoxApp_GetPreviewedOrSelectedMonValue(BoxApplication *boxApp, enum PokemonDataParam value, void *dest)
{
    if (BoxApp_GetCursorLocation(boxApp) == CURSOR_IN_BOX) {
        return BoxPokemon_GetValue(boxApp->pcMonPreview.mon, value, dest);
    } else {
        return Pokemon_GetValue(boxApp->cursor.mon, value, dest);
    }
}
