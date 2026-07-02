#include "applications/party_menu/context_menu.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/heap.h"
#include "constants/pokemon.h"
#include "generated/items.h"

#include "applications/mail.h"
#include "applications/party_menu/defs.h"
#include "applications/party_menu/form_change.h"
#include "applications/party_menu/main.h"
#include "applications/party_menu/sprites.h"
#include "applications/party_menu/windows.h"
#include "field/field_system.h"

#include "bag.h"
#include "bg_window.h"
#include "field_move_tasks.h"
#include "font.h"
#include "heap.h"
#include "menu.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "render_window.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"

#include "res/text/bank/party_menu.h"

static void PartyMenu_SelectSwitch(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectSummary(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectFieldMove(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectCut(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectRockSmash(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectStrength(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectSurf(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectDefog(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectRockClimb(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectFly(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectWaterfall(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectFlash(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectTeleport(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectDig(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectSweetScent(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectChatter(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectMilkDrink(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectSoftboiled(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SetBallCapsuleAction(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectItem(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectItemGive(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectItemTake(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectMail(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectMailRead(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectMailTake(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_CleanupContextMenu(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectChooseWithLimit(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_PrintAllEligibilities(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_CleanupContextMenu2(PartyMenuApplication *application, int *partyMenuState);
static void PartyMenu_SelectBallSeal(PartyMenuApplication *application, int *partyMenuState);

static enum PartyMenuState PartyMenuCB_TakeMail_Transfer(PartyMenuApplication *application);
static enum PartyMenuState PartyMenuCB_TakeMail_PromptRemoval(PartyMenuApplication *application);
static enum PartyMenuState PartyMenuCB_TakeMail_Remove(PartyMenuApplication *application);
static enum PartyMenuState PartyMenuCB_TakeMail_Cancel(PartyMenuApplication *application);
static enum PartyMenuState PartyMenu_StartFieldMoveHPTransfer(PartyMenuApplication *application);

static void UpdateBGScroll(PartyMenuApplication *application, u8 slot);
static void UpdateSpriteScroll(PartyMenuApplication *application, u8 slot, u8 side);
static void UpdateSlotHealthbar(PartyMenuApplication *application, u8 slot);
static void SwapSwitchedSlots(PartyMenuApplication *application);

union PartyMenuActionFunc {
    PartyMenuAction func;
    u32 raw;
};

enum {
    ACTION_SWITCH = 0,
    ACTION_SUMMARY,
    ACTION_ITEM,
    ACTION_ITEM_GIVE,
    ACTION_ITEM_TAKE,
    ACTION_MAIL,
    ACTION_MAIL_READ,
    ACTION_MAIL_TAKE,
    ACTION_BALL_SEAL,
    ACTION_CANCEL,
    ACTION_CANCEL_2,
    ACTION_CHOOSE,
    ACTION_ELGIBILITY,
    ACTION_CLEANUP,
    ACTION_SET_CAPSULE,
    ACTION_CLEANUP_2,
    ACTION_CUT,
    ACTION_FLY,
    ACTION_SURF,
    ACTION_STRENGTH,
    ACTION_DEFOG,
    ACTION_ROCK_SMASH,
    ACTION_WATERFALL,
    ACTION_ROCK_CLIMB,
    ACTION_FLASH,
    ACTION_TELEPORT,
    ACTION_DIG,
    ACTION_SWEET_SCENT,
    ACTION_CHATTER,
    ACTION_MILK_DRINK,
    ACTION_SOFTBOILED,
    ACTION_CANCEL_3,

    ACTION_MAX,
};

// clang-format off
static const union PartyMenuActionFunc sPartyMenuActions[ACTION_MAX] = {
    [ACTION_SWITCH] =      PartyMenu_SelectSwitch,
    [ACTION_SUMMARY] =     PartyMenu_SelectSummary,
    [ACTION_ITEM] =        PartyMenu_SelectItem,
    [ACTION_ITEM_GIVE] =   PartyMenu_SelectItemGive,
    [ACTION_ITEM_TAKE] =   PartyMenu_SelectItemTake,
    [ACTION_MAIL] =        PartyMenu_SelectMail,
    [ACTION_MAIL_READ] =   PartyMenu_SelectMailRead,
    [ACTION_MAIL_TAKE] =   PartyMenu_SelectMailTake,
    [ACTION_BALL_SEAL] =   PartyMenu_SelectBallSeal,
    [ACTION_CANCEL] =      { .raw = MENU_CANCEL },
    [ACTION_CANCEL_2] =    { .raw = MENU_CANCEL },
    [ACTION_CHOOSE] =      PartyMenu_SelectChooseWithLimit,
    [ACTION_ELGIBILITY] =  PartyMenu_PrintAllEligibilities,
    [ACTION_CLEANUP] =     PartyMenu_CleanupContextMenu,
    [ACTION_SET_CAPSULE] = PartyMenu_SetBallCapsuleAction,
    [ACTION_CLEANUP_2] =   PartyMenu_CleanupContextMenu2,
    [ACTION_CUT] =         PartyMenu_SelectCut,
    [ACTION_FLY] =         PartyMenu_SelectFly,
    [ACTION_SURF] =        PartyMenu_SelectSurf,
    [ACTION_STRENGTH] =    PartyMenu_SelectStrength,
    [ACTION_DEFOG] =       PartyMenu_SelectDefog,
    [ACTION_ROCK_SMASH] =  PartyMenu_SelectRockSmash,
    [ACTION_WATERFALL] =   PartyMenu_SelectWaterfall,
    [ACTION_ROCK_CLIMB] =  PartyMenu_SelectRockClimb,
    [ACTION_FLASH] =       PartyMenu_SelectFlash,
    [ACTION_TELEPORT] =    PartyMenu_SelectTeleport,
    [ACTION_DIG] =         PartyMenu_SelectDig,
    [ACTION_SWEET_SCENT] = PartyMenu_SelectSweetScent,
    [ACTION_CHATTER] =     PartyMenu_SelectChatter,
    [ACTION_MILK_DRINK] =  PartyMenu_SelectMilkDrink,
    [ACTION_SOFTBOILED] =  PartyMenu_SelectSoftboiled,
    [ACTION_CANCEL_3] =    { .raw = MENU_CANCEL },
};
// clang-format on

u32 PartyMenu_GetAction(u8 action)
{
    return sPartyMenuActions[action].raw;
}

void PartyMenu_ClearContextWindow(PartyMenuApplication *application)
{
    Window_EraseStandardFrame(application->menuWindows, TRUE);
    Window_ClearAndScheduleCopyToVRAM(application->menuWindows);
    Menu_Free(application->contextMenu, NULL);
    StringList_Free(application->contextMenuChoices);
    Window_Remove(application->menuWindows);
}

static void PartyMenu_SelectItem(PartyMenuApplication *application, int *partyMenuState)
{
    PartyMenu_ClearContextWindow(application);
    PartyMenu_PrintMediumMessage(application, PartyMenu_Text_DoWhatWithAnItem, FALSE);

    application->contextMenuChoices = StringList_New(3, HEAP_ID_PARTY_MENU);
    StringList_AddFromString(application->contextMenuChoices, application->menuStrings[PARTY_MENU_STR_ITEM_GIVE], PartyMenu_GetAction(ACTION_ITEM_GIVE));
    StringList_AddFromString(application->contextMenuChoices, application->menuStrings[PARTY_MENU_STR_ITEM_TAKE], PartyMenu_GetAction(ACTION_ITEM_TAKE));
    StringList_AddFromString(application->contextMenuChoices, application->menuStrings[PARTY_MENU_STR_CANCEL], PartyMenu_GetAction(ACTION_CANCEL));

    MenuTemplate template;
    template.choices = application->contextMenuChoices;
    template.window = &application->windows[PARTY_MENU_WIN_GIVE_ITEM_OR_MAIL];
    template.fontID = FONT_SYSTEM;
    template.xSize = 1;
    template.ySize = 3;
    template.lineSpacing = 0;
    template.suppressCursor = FALSE;
    template.loopAround = FALSE;

    Window_DrawStandardFrame(&application->windows[PARTY_MENU_WIN_GIVE_ITEM_OR_MAIL], TRUE, 1, 14);

    application->contextMenu = Menu_NewAndCopyToVRAM(&template, 8, 0, 0, HEAP_ID_PARTY_MENU, PAD_BUTTON_B);
    *partyMenuState = PARTY_MENU_STATE_HANDLE_CONTEXT_MENU_INPUT;
}

static void PartyMenu_SelectItemGive(PartyMenuApplication *application, int *partyMenuState)
{
    Menu_Free(application->contextMenu, NULL);
    StringList_Free(application->contextMenuChoices);

    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_GIVE_ITEM;
    *partyMenuState = PARTY_MENU_STATE_FADE_OUT;
}

static void PartyMenu_SelectItemTake(PartyMenuApplication *application, int *partyMenuState)
{
    int result = PARTY_MENU_STATE_PRINTING;

    Window_EraseStandardFrame(&application->windows[PARTY_MENU_WIN_GIVE_ITEM_OR_MAIL], 1);
    Menu_Free(application->contextMenu, NULL);
    StringList_Free(application->contextMenuChoices);

    FieldSystem *fieldSystem = application->partyMenu->fieldSystem;

    if (application->partyMembers[application->currPartySlot].heldItem == ITEM_NONE) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
        MessageLoader_GetString(application->messageLoader, PartyMenu_Text_MonIsntHoldingAnything, application->tmpFormat);
        StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);
    } else if (Bag_TryAddItem(application->partyMenu->bag, application->partyMembers[application->currPartySlot].heldItem, 1, HEAP_ID_PARTY_MENU) == TRUE) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
        enum Item newItem = ITEM_NONE;

        Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &newItem);
        Pokemon_SetArceusForm(mon);

        if (fieldSystem == NULL
            || fieldSystem->location->mapId < MAP_HEADER_DISTORTION_WORLD_1F
            || fieldSystem->location->mapId > MAP_HEADER_DISTORTION_WORLD_TURNBACK_CAVE_ROOM) {
            int newForm = Pokemon_SetGiratinaFormByHeldItem(mon);

            if (application->partyMembers[application->currPartySlot].heldItem == ITEM_GRISEOUS_ORB && newForm == 0) {
                result = PARTY_MENU_STATE_PRINTING_FORM_CHANGE;
            }
        }

        MessageLoader_GetString(application->messageLoader, PartyMenu_Text_ReceivedItemFromMon, application->tmpFormat);
        StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_SetItemName(application->template, 1, application->partyMembers[application->currPartySlot].heldItem);
        StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);

        application->partyMembers[application->currPartySlot].heldItem = ITEM_NONE;
        PartyMenu_DrawMemberHeldItem(application, application->currPartySlot, application->partyMembers[application->currPartySlot].heldItem);
    } else {
        MessageLoader_GetString(application->messageLoader, PartyMenu_Text_BagIsFull, application->tmpString);
    }

    Window_DrawMessageBoxWithScrollCursor(&application->windows[PARTY_MENU_WIN_LONG_MESSAGE], TRUE, 1 + STANDARD_WINDOW_TILE_COUNT, 15);
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_LONG_MESSAGE], 15);
    PartyMenu_AddLongMessagePrinter(application);

    *partyMenuState = result;
}

enum PartyMenuState PartyMenu_WaitForPrinter(PartyMenuApplication *application)
{
    if (Text_IsPrinterActive(application->textPrinterID) == FALSE) {
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_LONG_MESSAGE], TRUE);
            PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, TRUE);
            Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
            return PARTY_MENU_STATE_DEFAULT;
        }
    }

    return PARTY_MENU_STATE_PRINTING;
}

enum PartyMenuState PartyMenu_WaitForPrinterThenFormChange(PartyMenuApplication *application)
{
    if (Text_IsPrinterActive(application->textPrinterID) == FALSE) {
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_LONG_MESSAGE], TRUE);
            PartyMenu_SetupFormChangeAnim(application);
            return PARTY_MENU_STATE_FORM_CHANGE;
        }
    }

    return PARTY_MENU_STATE_PRINTING_FORM_CHANGE;
}

enum PartyMenuState PartyMenu_ChangeForm(PartyMenuApplication *application)
{
    if (PartyMenuFormChange_ChangeForm(application) == TRUE) {
        PartyMenu_TeardownFormChangeAnim(application);
        return PARTY_MENU_STATE_PRINTING;
    }

    return PARTY_MENU_STATE_FORM_CHANGE;
}

static void PartyMenu_SelectMail(PartyMenuApplication *application, int *partyMenuState)
{
    PartyMenu_ClearContextWindow(application);
    PartyMenu_PrintMediumMessage(application, PartyMenu_Text_DoWhatWithMail, FALSE);

    application->contextMenuChoices = StringList_New(3, HEAP_ID_PARTY_MENU);
    StringList_AddFromString(application->contextMenuChoices, application->menuStrings[PARTY_MENU_STR_MAIL_READ], PartyMenu_GetAction(ACTION_MAIL_READ));
    StringList_AddFromString(application->contextMenuChoices, application->menuStrings[PARTY_MENU_STR_MAIL_TAKE], PartyMenu_GetAction(ACTION_MAIL_TAKE));
    StringList_AddFromString(application->contextMenuChoices, application->menuStrings[PARTY_MENU_STR_CANCEL], PartyMenu_GetAction(ACTION_CANCEL));

    MenuTemplate template;
    template.choices = application->contextMenuChoices;
    template.window = &application->windows[PARTY_MENU_WIN_GIVE_ITEM_OR_MAIL];
    template.fontID = FONT_SYSTEM;
    template.xSize = 1;
    template.ySize = 3;
    template.lineSpacing = 0;
    template.suppressCursor = FALSE;
    template.loopAround = FALSE;

    Window_DrawStandardFrame(&application->windows[PARTY_MENU_WIN_GIVE_ITEM_OR_MAIL], 1, 1, 14);

    application->contextMenu = Menu_NewAndCopyToVRAM(&template, 8, 0, 0, HEAP_ID_PARTY_MENU, PAD_BUTTON_B);
    *partyMenuState = PARTY_MENU_STATE_HANDLE_CONTEXT_MENU_INPUT;
}

static void PartyMenu_SelectMailRead(PartyMenuApplication *application, int *partyMenuState)
{
    Menu_Free(application->contextMenu, NULL);
    StringList_Free(application->contextMenuChoices);

    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_READ_MAIL;
    *partyMenuState = PARTY_MENU_STATE_FADE_OUT;
}

static void PartyMenu_SelectMailTake(PartyMenuApplication *application, int *partyMenuState)
{
    Window_EraseStandardFrame(&application->windows[PARTY_MENU_WIN_GIVE_ITEM_OR_MAIL], 1);
    Menu_Free(application->contextMenu, NULL);
    StringList_Free(application->contextMenuChoices);
    PartyMenu_PrintLongMessage(application, PartyMenu_Text_SendMailToPC, TRUE);

    application->yesnoCallbacks.onYes = PartyMenuCB_TakeMail_Transfer;
    application->yesnoCallbacks.onNo = PartyMenuCB_TakeMail_PromptRemoval;
    application->stateAfterMessage = PARTY_MENU_STATE_DRAW_YES_NO_CHOICE;
    *partyMenuState = PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

static enum PartyMenuState PartyMenuCB_TakeMail_Transfer(PartyMenuApplication *application)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    if (Mail_TransferFromMonToMailbox(application->partyMenu->mailbox, mon, HEAP_ID_PARTY_MENU) != -1) {
        application->partyMembers[application->currPartySlot].heldItem = ITEM_NONE;
        PartyMenu_DrawMemberHeldItem(application, application->currPartySlot, application->partyMembers[application->currPartySlot].heldItem);
        PartyMenu_PrintLongMessage(application, PartyMenu_Text_MailWasSentToYourPC, FALSE);
    } else {
        PartyMenu_PrintLongMessage(application, PartyMenu_Text_MailboxIsFull, FALSE);
    }

    application->stateAfterMessage = PARTY_MENU_STATE_WAIT_AB_PRESS_2;
    return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

static enum PartyMenuState PartyMenuCB_TakeMail_PromptRemoval(PartyMenuApplication *application)
{
    PartyMenu_PrintLongMessage(application, PartyMenu_Text_IfMailIsRemovedMessageWillBeLostConfirm, FALSE);

    application->yesnoCallbacks.onYes = PartyMenuCB_TakeMail_Remove;
    application->yesnoCallbacks.onNo = PartyMenuCB_TakeMail_Cancel;
    application->stateAfterMessage = PARTY_MENU_STATE_DRAW_YES_NO_CHOICE;

    return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

static enum PartyMenuState PartyMenuCB_TakeMail_Remove(PartyMenuApplication *application)
{
    if (Bag_TryAddItem(application->partyMenu->bag, application->partyMembers[application->currPartySlot].heldItem, 1, HEAP_ID_PARTY_MENU) == TRUE) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
        enum Item newItem = ITEM_NONE;

        Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &newItem);
        Pokemon_SetArceusForm(mon);
        Pokemon_SetGiratinaFormByHeldItem(mon);

        application->partyMembers[application->currPartySlot].heldItem = ITEM_NONE;

        PartyMenu_DrawMemberHeldItem(application, application->currPartySlot, application->partyMembers[application->currPartySlot].heldItem);
        PartyMenu_PrintLongMessage(application, PartyMenu_Text_MailWasTakenFromMon, FALSE);
    } else {
        PartyMenu_PrintLongMessage(application, PartyMenu_Text_BagIsFull, FALSE);
    }

    application->stateAfterMessage = PARTY_MENU_STATE_WAIT_AB_PRESS_2;
    return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

static enum PartyMenuState PartyMenuCB_TakeMail_Cancel(PartyMenuApplication *application)
{
    Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_LONG_MESSAGE], TRUE);
    PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, TRUE);
    Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);

    return PARTY_MENU_STATE_DEFAULT;
}

enum PartyMenuState PartyMenu_WaitABPress2(PartyMenuApplication *application)
{
    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
        Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_LONG_MESSAGE], TRUE);
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, TRUE);
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
        return PARTY_MENU_STATE_DEFAULT;
    }

    return PARTY_MENU_STATE_WAIT_AB_PRESS_2;
}

static void PartyMenu_SelectBallSeal(PartyMenuApplication *application, int *partyMenuState)
{
    if (application->partyMembers[application->currPartySlot].ballSeal == 0) {
        Menu_Free(application->contextMenu, NULL);
        StringList_Free(application->contextMenuChoices);
        application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
        *partyMenuState = PARTY_MENU_STATE_FADE_OUT;
        return;
    }

    PartyMenu_ClearContextWindow(application);
    PartyMenu_PrintLongMessage(application, PartyMenu_Text_BallCapsuleWillBeDetached, TRUE);

    application->yesnoCallbacks.onYes = PartyMenuCB_DetachBallSeal_Clear;
    application->yesnoCallbacks.onNo = PartyMenuCB_DetachBallSeal_Cancel;
    application->stateAfterMessage = PARTY_MENU_STATE_DRAW_YES_NO_CHOICE;
    *partyMenuState = PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

enum PartyMenuState PartyMenuCB_DetachBallSeal_Clear(PartyMenuApplication *application)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    Pokemon_ClearBallCapsuleData(mon);

    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
    return PARTY_MENU_STATE_FADE_OUT;
}

enum PartyMenuState PartyMenuCB_DetachBallSeal_Cancel(PartyMenuApplication *application)
{
    Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_LONG_MESSAGE], TRUE);
    PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, TRUE);
    Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);

    return PARTY_MENU_STATE_DEFAULT;
}

static void PartyMenu_SelectSwitch(PartyMenuApplication *application, int *partyMenuState)
{
    s16 x, y;

    application->inTargetSlotMode = TRUE;
    application->selectTargetSlot = application->currPartySlot;

    Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
    Sprite_GetPositionXY(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], &x, &y);
    Sprite_SetPositionXY(application->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], x, y);
    Sprite_SetAnim(application->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], PartyMenu_GetMemberPanelAnim(application->partyMenu->type, application->selectTargetSlot) + 2);
    Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], TRUE);
    PartyMenu_UpdateSlotPalette(application, application->selectTargetSlot);
    Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_MEDIUM_MESSAGE], TRUE);
    PartyMenu_ClearContextWindow(application);
    PartyMenu_PrintShortMessage(application, PartyMenu_MoveToWhere, TRUE);

    *partyMenuState = PARTY_MENU_STATE_SELECT_SWITCH_SLOT;
}

void PartyMenu_ResetCursor(PartyMenuApplication *application)
{
    application->inTargetSlotMode = FALSE;
    Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], FALSE);

    if (application->currPartySlot < MAX_PARTY_SIZE) {
        PartyMenu_UpdateSlotPalette(application, application->currPartySlot);
    }

    PartyMenu_UpdateSlotPalette(application, application->selectTargetSlot);
    PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, TRUE);
}

#define MEMBER_PANEL_WIDTH  16
#define MEMBER_PANEL_HEIGHT 6

enum {
    SWITCHSTATE_SCROLL_OUT_SOUND = 0,
    SWITCHSTATE_SCROLL_OUT,
    SWITCHSTATE_SCROLL_IN_SOUND,
    SWITCHSTATE_SCROLL_IN,
    SWITCHSTATE_CLEANUP,
};

void PartyMenu_PrepareSwitch(PartyMenuApplication *application)
{
    application->orderSwitch.slots[0] = application->currPartySlot;
    application->orderSwitch.slots[1] = application->selectTargetSlot;
    application->orderSwitch.inProgress = TRUE;
    application->orderSwitch.scrollTicker = 0;
    application->orderSwitch.state = SWITCHSTATE_SCROLL_OUT_SOUND;

    if (application->orderSwitch.slots[0] & 1) {
        application->orderSwitch.sides[0] = 1;
    } else {
        application->orderSwitch.sides[0] = 0;
    }

    if (application->orderSwitch.slots[1] & 1) {
        application->orderSwitch.sides[1] = 1;
    } else {
        application->orderSwitch.sides[1] = 0;
    }

    u16 *bgPanels = Bg_GetTilemapBuffer(application->bgConfig, BG_LAYER_MAIN_2);
    u16 *bgWindows = Bg_GetTilemapBuffer(application->bgConfig, BG_LAYER_MAIN_1);
    s8 x0 = application->partyMembers[application->orderSwitch.slots[0]].panelXPos;
    s8 y0 = application->partyMembers[application->orderSwitch.slots[0]].panelYPos;
    s8 x1 = application->partyMembers[application->orderSwitch.slots[1]].panelXPos;
    s8 y1 = application->partyMembers[application->orderSwitch.slots[1]].panelYPos;

    for (u16 i = 0; i < MEMBER_PANEL_HEIGHT; i++) {
        memcpy(&application->orderSwitch.bufPanels[0][i * MEMBER_PANEL_WIDTH], &bgPanels[x0 + (y0 + i) * TILE_SIZE_4BPP], TILE_SIZE_4BPP);
        memcpy(&application->orderSwitch.bufWindows[0][i * MEMBER_PANEL_WIDTH], &bgWindows[x0 + (y0 + i) * TILE_SIZE_4BPP], TILE_SIZE_4BPP);
        memcpy(&application->orderSwitch.bufPanels[1][i * MEMBER_PANEL_WIDTH], &bgPanels[x1 + (y1 + i) * TILE_SIZE_4BPP], TILE_SIZE_4BPP);
        memcpy(&application->orderSwitch.bufWindows[1][i * MEMBER_PANEL_WIDTH], &bgWindows[x1 + (y1 + i) * TILE_SIZE_4BPP], TILE_SIZE_4BPP);
    }

    Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], FALSE);
    Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], FALSE);
}

BOOL PartyMenu_DoSwitch(PartyMenuApplication *application)
{
    PartyOrderSwitchData *orderSwitch = &application->orderSwitch;

    switch (orderSwitch->state) {
    case SWITCHSTATE_SCROLL_OUT_SOUND:
        Sound_PlayEffect(SEQ_SE_DP_POKELIST_001);
        orderSwitch->state = SWITCHSTATE_SCROLL_OUT;
        break;

    case SWITCHSTATE_SCROLL_OUT:
        orderSwitch->scrollTicker += 1;

        UpdateBGScroll(application, 0);
        UpdateBGScroll(application, 1);
        UpdateSpriteScroll(application, 0, orderSwitch->sides[0]);
        UpdateSpriteScroll(application, 1, orderSwitch->sides[1]);
        Bg_ScheduleTilemapTransfer(application->bgConfig, BG_LAYER_MAIN_2);
        Bg_ScheduleTilemapTransfer(application->bgConfig, BG_LAYER_MAIN_1);

        if (orderSwitch->scrollTicker == MEMBER_PANEL_WIDTH) {
            orderSwitch->state = SWITCHSTATE_SCROLL_IN_SOUND;
        }
        break;

    case SWITCHSTATE_SCROLL_IN_SOUND:
        SwapSwitchedSlots(application);
        Sound_PlayEffect(SEQ_SE_DP_POKELIST_001);
        orderSwitch->state = SWITCHSTATE_SCROLL_IN;
        break;

    case SWITCHSTATE_SCROLL_IN:
        orderSwitch->scrollTicker -= 1;

        UpdateBGScroll(application, 0);
        UpdateBGScroll(application, 1);
        UpdateSpriteScroll(application, 0, orderSwitch->sides[0] ^ 1);
        UpdateSpriteScroll(application, 1, orderSwitch->sides[1] ^ 1);
        Bg_ScheduleTilemapTransfer(application->bgConfig, BG_LAYER_MAIN_2);
        Bg_ScheduleTilemapTransfer(application->bgConfig, BG_LAYER_MAIN_1);

        if (orderSwitch->scrollTicker == 0) {
            orderSwitch->state = SWITCHSTATE_CLEANUP;
        }
        break;

    case SWITCHSTATE_CLEANUP:
        Party_SwapSlots(application->partyMenu->party, orderSwitch->slots[0], orderSwitch->slots[1]);
        Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], TRUE);

        orderSwitch->inProgress = FALSE;
        application->inTargetSlotMode = FALSE;

        PartyMenu_UpdateSlotPalette(application, application->currPartySlot);
        PartyMenu_UpdateSlotPalette(application, application->selectTargetSlot);
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, FALSE);

        return TRUE;
    }

    return FALSE;
}

static void UpdateBGScroll(PartyMenuApplication *application, u8 slot)
{
    PartyOrderSwitchData *orderSwitch = &application->orderSwitch;
    s8 x = application->partyMembers[orderSwitch->slots[slot]].panelXPos;
    s8 y = application->partyMembers[orderSwitch->slots[slot]].panelYPos;

    Bg_FillTilemapRect(
        application->bgConfig,
        BG_LAYER_MAIN_2,
        0,
        x,
        y,
        MEMBER_PANEL_WIDTH,
        MEMBER_PANEL_HEIGHT,
        TILEMAP_FILL_VAL_KEEP_PALETTE);
    Bg_FillTilemapRect(
        application->bgConfig,
        BG_LAYER_MAIN_1,
        0,
        x,
        y,
        MEMBER_PANEL_WIDTH,
        MEMBER_PANEL_HEIGHT,
        TILEMAP_FILL_VAL_KEEP_PALETTE);

#define ScrollOut0(layer, buffer) Bg_CopyToTilemapRect(application->bgConfig, layer, x, y, MEMBER_PANEL_WIDTH - orderSwitch->scrollTicker, MEMBER_PANEL_HEIGHT, &buffer[slot], orderSwitch->scrollTicker, 0, MEMBER_PANEL_WIDTH, MEMBER_PANEL_HEIGHT);
#define ScrollOut1(layer, buffer) Bg_CopyToTilemapRect(application->bgConfig, layer, x + orderSwitch->scrollTicker, y, MEMBER_PANEL_WIDTH - orderSwitch->scrollTicker, MEMBER_PANEL_HEIGHT, &buffer[slot], 0, 0, MEMBER_PANEL_WIDTH, MEMBER_PANEL_HEIGHT);

    if (orderSwitch->sides[slot] == 0) {
        ScrollOut0(BG_LAYER_MAIN_2, orderSwitch->bufPanels);
        ScrollOut0(BG_LAYER_MAIN_1, orderSwitch->bufWindows);
    } else {
        ScrollOut1(BG_LAYER_MAIN_2, orderSwitch->bufPanels);
        ScrollOut1(BG_LAYER_MAIN_1, orderSwitch->bufWindows);
    }

#undef ScrollOut0
#undef ScrollOut1
}

static void UpdateSpriteScroll(PartyMenuApplication *application, u8 slot, u8 side)
{
    PartyOrderSwitchData *orderSwitch = &application->orderSwitch;

    s16 x, y;
    Sprite_GetPositionXY(application->sprites[0 + orderSwitch->slots[slot]], &x, &y);

#define SPRITE_DX 8

    if (side == 0) {
        application->partyMembers[orderSwitch->slots[slot]].spriteXDelta -= SPRITE_DX;
        application->partyMembers[orderSwitch->slots[slot]].statusXPos -= SPRITE_DX;
        application->partyMembers[orderSwitch->slots[slot]].itemXPos -= SPRITE_DX;
        x -= SPRITE_DX;
    } else {
        application->partyMembers[orderSwitch->slots[slot]].spriteXDelta += SPRITE_DX;
        application->partyMembers[orderSwitch->slots[slot]].statusXPos += SPRITE_DX;
        application->partyMembers[orderSwitch->slots[slot]].itemXPos += SPRITE_DX;
        x += SPRITE_DX;
    }

    Sprite_SetPositionXY(application->partyMembers[orderSwitch->slots[slot]].sprite, application->partyMembers[orderSwitch->slots[slot]].spriteXDelta, application->partyMembers[orderSwitch->slots[slot]].spriteYDelta);
    Sprite_SetPositionXY(application->sprites[PARTY_MENU_SPRITE_STATUS_ICON_MEMB0 + orderSwitch->slots[slot]], application->partyMembers[orderSwitch->slots[slot]].statusXPos, application->partyMembers[orderSwitch->slots[slot]].statusYPos);
    Sprite_SetPositionXY(application->sprites[PARTY_MENU_SPRITE_HELD_ITEM_MEMB0 + orderSwitch->slots[slot]], application->partyMembers[orderSwitch->slots[slot]].itemXPos, application->partyMembers[orderSwitch->slots[slot]].itemYPos);
    Sprite_SetPositionXY(application->sprites[PARTY_MENU_SPRITE_BALL_SEAL_MEMB0 + orderSwitch->slots[slot]], application->partyMembers[orderSwitch->slots[slot]].itemXPos + 8, application->partyMembers[orderSwitch->slots[slot]].itemYPos);
    Sprite_SetPositionXY(application->sprites[PARTY_MENU_SPRITE_POKE_BALL_MEMB0 + orderSwitch->slots[slot]], x, y);
}

static void SwapSwitchedSlots(PartyMenuApplication *application)
{
    PartyOrderSwitchData *orderSwitch = &application->orderSwitch;

    PartyMenuMember *tmp = Heap_Alloc(HEAP_ID_PARTY_MENU, sizeof(PartyMenuMember));
    *tmp = application->partyMembers[orderSwitch->slots[0]];
    application->partyMembers[orderSwitch->slots[0]] = application->partyMembers[orderSwitch->slots[1]];
    application->partyMembers[orderSwitch->slots[1]] = *tmp;
    Heap_FreeExplicit(HEAP_ID_PARTY_MENU, tmp);

#define SwapSlotFields(field)                                                                                            \
    do {                                                                                                                 \
        s16 tmp = application->partyMembers[orderSwitch->slots[0]].field;                                                \
        application->partyMembers[orderSwitch->slots[0]].field = application->partyMembers[orderSwitch->slots[1]].field; \
        application->partyMembers[orderSwitch->slots[1]].field = tmp;                                                    \
    } while (0)

    SwapSlotFields(spriteXDelta);
    SwapSlotFields(spriteYDelta);
    SwapSlotFields(statusXPos);
    SwapSlotFields(statusYPos);
    SwapSlotFields(itemXPos);
    SwapSlotFields(itemYPos);
    SwapSlotFields(panelXPos);
    SwapSlotFields(panelYPos);

#undef SwapSlotFields

    PartyMenu_DrawMemberPanelData(application, orderSwitch->slots[0]);
    PartyMenu_DrawMemberPanelData(application, orderSwitch->slots[1]);
    PartyMenu_CopyMemberWindowToVRAM(application, orderSwitch->slots[0]);
    PartyMenu_CopyMemberWindowToVRAM(application, orderSwitch->slots[1]);

    UpdateSlotHealthbar(application, 0);
    UpdateSlotHealthbar(application, 1);

    PartyMenu_DrawMemberStatusCondition(application, orderSwitch->slots[0], application->partyMembers[orderSwitch->slots[0]].statusIcon);
    PartyMenu_DrawMemberStatusCondition(application, orderSwitch->slots[1], application->partyMembers[orderSwitch->slots[1]].statusIcon);

    PartyMenu_DrawMemberHeldItem(application, orderSwitch->slots[0], application->partyMembers[orderSwitch->slots[0]].heldItem);
    PartyMenu_DrawMemberHeldItem(application, orderSwitch->slots[1], application->partyMembers[orderSwitch->slots[1]].heldItem);

    PartyMenu_DrawMemberBallSeal(application, orderSwitch->slots[0]);
    PartyMenu_DrawMemberBallSeal(application, orderSwitch->slots[1]);
}

static void UpdateSlotHealthbar(PartyMenuApplication *application, u8 slot)
{
    PartyOrderSwitchData *orderSwitch = &application->orderSwitch;
    u16 *bufPanel = orderSwitch->bufPanels[slot];
    const u16 *bufHealthbar = PartyMenu_GetHealthbarTilemap(application);

    if (application->partyMembers[orderSwitch->slots[slot]].isEgg == TRUE) {
        for (u16 i = 0; i < MEMBER_HEALTHBAR_WIDTH; i++) {
            u16 pal = bufPanel[MEMBER_HEALTHBAR_YPOS * 16 + MEMBER_HEALTHBAR_XPOS + i] & TILEMAP_MASK_PALETTE;
            bufPanel[MEMBER_HEALTHBAR_YPOS * 16 + MEMBER_HEALTHBAR_XPOS + i] = pal | MEMBER_HEALTHBAR_EMPTY;
        }
    } else {
        for (u16 i = 0; i < MEMBER_HEALTHBAR_WIDTH; i++) {
            u16 pal = bufPanel[MEMBER_HEALTHBAR_YPOS * 16 + MEMBER_HEALTHBAR_XPOS + i] & TILEMAP_MASK_PALETTE;
            bufPanel[MEMBER_HEALTHBAR_YPOS * 16 + MEMBER_HEALTHBAR_XPOS + i] = pal | (bufHealthbar[i] & TILEMAP_MASK_INDEX);
        }
    }
}

static void PartyMenu_SelectChooseWithLimit(PartyMenuApplication *application, int *partyMenuState)
{
    Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_MEDIUM_MESSAGE], TRUE);
    PartyMenu_ClearContextWindow(application);

    for (u8 i = 0; i < application->partyMenu->maxSelectionSlots; i++) {
        if (application->partyMenu->selectionOrder[i] != 0) {
            continue;
        }

        application->partyMenu->selectionOrder[i] = application->currPartySlot + 1;

        PartyMenu_PrintSelectionEligibility(application, application->currPartySlot);
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseMonAndConfirm, TRUE);
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);

        if (i == application->partyMenu->maxSelectionSlots - 1) {
            sub_0207FD68(application, 6);
        }

        *partyMenuState = PARTY_MENU_STATE_DEFAULT;
        return;
    }

    switch (application->partyMenu->maxSelectionSlots) {
    case 1:
        PartyMenu_PrintLongMessage(application, PartyMenu_Text_NoMoreThanOneMon, TRUE);
        break;
    case 2:
        PartyMenu_PrintLongMessage(application, PartyMenu_Text_NoMoreThanTwoMon, TRUE);
        break;
    case 3:
        PartyMenu_PrintLongMessage(application, PartyMenu_Text_NoMoreThanThreeMon, TRUE);
        break;
    case 4:
        PartyMenu_PrintLongMessage(application, PartyMenu_Text_NoMoreThanFourMon, TRUE);
        break;
    case 5:
        PartyMenu_PrintLongMessage(application, PartyMenu_Text_NoMoreThanFiveMon, TRUE);
        break;
    }

    application->stateAfterMessage = PARTY_MENU_STATE_WAIT_AB_PRESS_CHOOSE_MONS;
    *partyMenuState = PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

enum PartyMenuState PartyMenu_WaitABPressChooseMons(PartyMenuApplication *application)
{
    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
        Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_LONG_MESSAGE], TRUE);
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseMonAndConfirm, TRUE);
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
        return PARTY_MENU_STATE_DEFAULT;
    }

    return PARTY_MENU_STATE_WAIT_AB_PRESS_CHOOSE_MONS;
}

static void PartyMenu_PrintAllEligibilities(PartyMenuApplication *application, int *partyMenuState)
{
    for (u8 i = 0; i < application->partyMenu->maxSelectionSlots; i++) {
        if (application->partyMenu->selectionOrder[i] == application->currPartySlot + 1) {
            application->partyMenu->selectionOrder[i] = 0;

            for (i = i; i < application->partyMenu->maxSelectionSlots - 1; i++) {
                application->partyMenu->selectionOrder[i] = application->partyMenu->selectionOrder[i + 1];
                application->partyMenu->selectionOrder[i + 1] = 0;
            }
            break;
        }
    }

    for (u8 i = 0; i < MAX_PARTY_SIZE; i++) {
        if (application->partyMembers[i].isPresent == FALSE) {
            continue;
        }

        PartyMenu_PrintSelectionEligibility(application, i);
    }

    Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_MEDIUM_MESSAGE], TRUE);
    PartyMenu_ClearContextWindow(application);
    PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, TRUE);
    Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);

    *partyMenuState = PARTY_MENU_STATE_DEFAULT;
}

static void PartyMenu_CleanupContextMenu(PartyMenuApplication *application, int *partyMenuState)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;

    Menu_Free(application->contextMenu, NULL);
    StringList_Free(application->contextMenuChoices);

    *partyMenuState = PARTY_MENU_STATE_FADE_OUT;
}

static void PartyMenu_CleanupContextMenu2(PartyMenuApplication *application, int *partyMenuState)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;

    Menu_Free(application->contextMenu, NULL);
    StringList_Free(application->contextMenuChoices);

    *partyMenuState = PARTY_MENU_STATE_FADE_OUT;
}

static void PartyMenu_SelectSummary(PartyMenuApplication *application, int *partyMenuState)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_SUMMARY;

    Menu_Free(application->contextMenu, NULL);
    StringList_Free(application->contextMenuChoices);

    *partyMenuState = PARTY_MENU_STATE_FADE_OUT;
}

static void PartyMenu_SetBallCapsuleAction(PartyMenuApplication *application, int *partyMenuState)
{
    PartyMenu_ClearContextWindow(application);
    Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_MEDIUM_MESSAGE], TRUE);

    *partyMenuState = PartyMenu_SetBallCapsule(application);
}

enum PartyMenuState PartyMenu_SetBallCapsule(PartyMenuApplication *application)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);

    if (Pokemon_GetValue(mon, MON_DATA_BALL_CAPSULE_ID, NULL) == 0) {
        MessageLoader_GetString(application->messageLoader, PartyMenu_Text_BallCapsuleWasSet, application->tmpString);
        Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_BALL_SEAL_MEMB0 + application->currPartySlot], TRUE);
    } else {
        MessageLoader_GetString(application->messageLoader, PartyMenu_Text_TwoCapsulsesCantBeSet, application->tmpString);
        application->currPartySlot = PARTY_MENU_SLOT_CANCEL;
    }

    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
    application->stateAfterMessage = PARTY_MENU_STATE_WAIT_AB_PRESS_BEFORE_FADE;

    return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

static void PartyMenu_SelectFieldMove(PartyMenuApplication *windowLayout, int *partyMenuState)
{
    FieldMoveErrContext fieldMoveErrorCtx;
    u32 fieldMoveResult;
    u32 msgID;

    fieldMoveErrorCtx = (FieldMoveErrContext)FieldMove_GetTaskOrError(FIELD_MOVE_ERROR, windowLayout->partyMenu->menuSelectionResult - 11);

    if (fieldMoveErrorCtx != NULL) {
        fieldMoveResult = fieldMoveErrorCtx(windowLayout->partyMenu->fieldMoveContext);
    } else {
        fieldMoveResult = 1;
    }

    switch (fieldMoveResult) {
    case 0:
        Menu_Free(windowLayout->contextMenu, NULL);
        StringList_Free(windowLayout->contextMenuChoices);
        *partyMenuState = PARTY_MENU_STATE_FADE_OUT;
        return;
    case 1:
        msgID = PartyMenu_Text_CantUseThatHere;
        break;
    case 2:
        msgID = PartyMenu_Text_CantBeUsedUntilBadgeIsObtained;
        break;
    case 3:
        msgID = PartyMenu_Text_CantUseWhenYouHaveSomeoneWithYou;
        break;
    case 4:
        msgID = PartyMenu_Text_YoureAlreadySurfing;
        break;
    }

    Window_EraseMessageBox(&windowLayout->windows[33], 1);
    PartyMenu_ClearContextWindow(windowLayout);
    PartyMenu_PrintLongMessage(windowLayout, msgID, TRUE);

    windowLayout->stateAfterMessage = PARTY_MENU_STATE_WAIT_AB_PRESS;
    *partyMenuState = PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

static void PartyMenu_SelectCut(PartyMenuApplication *application, int *partyMenuState)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_CUT;
    PartyMenu_SelectFieldMove(application, partyMenuState);
}

static void PartyMenu_SelectRockSmash(PartyMenuApplication *application, int *partyMenuState)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_ROCK_SMASH;
    PartyMenu_SelectFieldMove(application, partyMenuState);
}

static void PartyMenu_SelectStrength(PartyMenuApplication *application, int *partyMenuState)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_STRENGTH;
    PartyMenu_SelectFieldMove(application, partyMenuState);
}

static void PartyMenu_SelectSurf(PartyMenuApplication *application, int *partyMenuState)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_SURF;
    PartyMenu_SelectFieldMove(application, partyMenuState);
}

static void PartyMenu_SelectDefog(PartyMenuApplication *application, int *partyMenuState)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DEFOG;
    PartyMenu_SelectFieldMove(application, partyMenuState);
}

static void PartyMenu_SelectRockClimb(PartyMenuApplication *application, int *partyMenuState)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_ROCK_CLIMB;
    PartyMenu_SelectFieldMove(application, partyMenuState);
}

static void PartyMenu_SelectFly(PartyMenuApplication *application, int *partyMenuState)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_FLY;
    PartyMenu_SelectFieldMove(application, partyMenuState);
}

static void PartyMenu_SelectWaterfall(PartyMenuApplication *application, int *partyMenuState)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_WATERFALL;
    PartyMenu_SelectFieldMove(application, partyMenuState);
}

static void PartyMenu_SelectFlash(PartyMenuApplication *application, int *partyMenuState)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_FLASH;
    PartyMenu_SelectFieldMove(application, partyMenuState);
}

static void PartyMenu_SelectTeleport(PartyMenuApplication *application, int *partyMenuState)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_TELEPORT;
    PartyMenu_SelectFieldMove(application, partyMenuState);
}

static void PartyMenu_SelectDig(PartyMenuApplication *application, int *partyMenuState)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DIG;
    PartyMenu_SelectFieldMove(application, partyMenuState);
}

static void PartyMenu_SelectSweetScent(PartyMenuApplication *application, int *partyMenuState)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_SWEET_SCENT;
    PartyMenu_SelectFieldMove(application, partyMenuState);
}

static void PartyMenu_SelectChatter(PartyMenuApplication *application, int *partyMenuState)
{
    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_CHATTER;
    PartyMenu_SelectFieldMove(application, partyMenuState);
}

static void PartyMenu_SelectMilkDrink(PartyMenuApplication *application, int *partyMenuState)
{
    *partyMenuState = PartyMenu_StartFieldMoveHPTransfer(application);

    if (*partyMenuState == PARTY_MENU_STATE_HP_TRANSFER_FIELD_MOVE) {
        application->monHpTransfer[HP_TRANSFER_JOURNAL_MOVE_IDX] = FIELD_MOVE_MILK_DRINK;
    }
}

static void PartyMenu_SelectSoftboiled(PartyMenuApplication *application, int *partyMenuState)
{
    *partyMenuState = PartyMenu_StartFieldMoveHPTransfer(application);

    if (*partyMenuState == PARTY_MENU_STATE_HP_TRANSFER_FIELD_MOVE) {
        application->monHpTransfer[HP_TRANSFER_JOURNAL_MOVE_IDX] = FIELD_MOVE_SOFTBOILED;
    }
}

static enum PartyMenuState PartyMenu_StartFieldMoveHPTransfer(PartyMenuApplication *application)
{
    Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_MEDIUM_MESSAGE], 1);
    PartyMenu_ClearContextWindow(application);

    application->monHpTransfer[HP_TRANSFER_HP_BUFFER] = application->partyMembers[application->currPartySlot].maxHP / 5; // 20% of user's health

    if (application->partyMembers[application->currPartySlot].curHP <= application->monHpTransfer[HP_TRANSFER_HP_BUFFER]) {
        PartyMenu_PrintLongMessage(application, PartyMenu_Text_NotEnoughHP, TRUE);
        application->stateAfterMessage = PARTY_MENU_STATE_WAIT_AB_PRESS;
        return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
    } else {
        s16 x, y;

        application->inTargetSlotMode = TRUE;
        application->selectTargetSlot = application->currPartySlot;

        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
        Sprite_GetPositionXY(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], &x, &y);
        Sprite_SetPositionXY(application->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], x, y);
        Sprite_SetAnim(application->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], PartyMenu_GetMemberPanelAnim(application->partyMenu->type, application->selectTargetSlot) + 2);
        Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_SWITCH], TRUE);
        PartyMenu_UpdateSlotPalette(application, application->selectTargetSlot);
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_UseOnWhichPokemon, TRUE);

        application->monHpTransfer[HP_TRANSFER_STATE] = HP_TRANSFER_STATE_HANDLE_INPUT;
        return PARTY_MENU_STATE_HP_TRANSFER_FIELD_MOVE;
    }
}

enum PartyMenuState PartyMenu_WaitABPress(PartyMenuApplication *application)
{
    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
        Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_LONG_MESSAGE], 1);
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, TRUE);
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
        return PARTY_MENU_STATE_DEFAULT;
    }

    return PARTY_MENU_STATE_WAIT_AB_PRESS;
}
