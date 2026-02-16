#include "battle_sub_menus/battle_bag.h"

#include "generated/text_banks.h"

#include "struct_decls/battle_system.h"
#include "struct_decls/pc_boxes_decl.h"

#include "battle/battle_lib.h"
#include "battle/battle_system.h"
#include "battle/ov16_0226DE44.h"
#include "battle_sub_menus/battle_bag_buttons.h"
#include "battle_sub_menus/battle_bag_sprites.h"
#include "battle_sub_menus/battle_bag_text.h"
#include "battle_sub_menus/battle_bag_utils.h"
#include "battle_sub_menus/battle_sub_menu_cursor.h"

#include "bag.h"
#include "bg_window.h"
#include "font.h"
#include "font_special_chars.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "render_window.h"
#include "sound_playback.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_0200679C.h"

#include "res/text/bank/battle_bag.h"
#include "res/text/bank/common_strings.h"

#define TASK_STATE_INITIALIZE               0
#define TASK_STATE_MENU_SCREEN              1
#define TASK_STATE_POCKET_MENU_SCREEN       2
#define TASK_STATE_USE_ITEM_SCREEN          3
#define TASK_STATE_SETUP_MENU_SCREEN        4
#define TASK_STATE_SETUP_POCKET_MENU_SCREEN 5
#define TASK_STATE_SETUP_USE_ITEM_SCREEN    6
#define TASK_STATE_CHANGE_POCKET_PAGE       7
#define TASK_STATE_CLEAR_ERROR_MESSAGE      8
#define TASK_STATE_AWAITING_TEXT_FINISH     9
#define TASK_STATE_AWAITING_INPUT           10
#define TASK_STATE_SCREEN_TRANSITION        11
#define TASK_STATE_CATCH_TUTORIAL           12
#define TASK_STATE_EXIT                     13
#define TASK_STATE_FINISH_TASK              14

enum CatchTutorialState {
    CATCH_TUTORIAL_STATE_MENU_SCREEN = 0,
    CATCH_TUTORIAL_STATE_SETUP_POCKET_MENU_SCREEN,
    CATCH_TUTORIAL_STATE_POCKET_MENU_SCREEN,
    CATCH_TUTORIAL_STATE_SETUP_USE_ITEM_SCREEN,
    CATCH_TUTORIAL_STATE_USE_ITEM_SCREEN,
};

#define POCKET_NEXT_PAGE 1
#define POCKET_PREV_PAGE -1

static void BattleBagTask_Tick(SysTask *task, void *taskParam);
static u8 BattleBagTask_Initialize(BattleBag *battleBag);
static u8 BattleBagTask_MenuScreen(BattleBag *battleBag);
static u8 BattleBagTask_PocketMenuScreen(BattleBag *battleBag);
static u8 BattleBagTask_UseItemScreen(BattleBag *battleBag);
static u8 BattleBagTask_SetupMenuScreen(BattleBag *battleBag);
static u8 BattleBagTask_SetupPocketMenuScreen(BattleBag *battleBag);
static u8 BattleBagTask_SetupUseItemScreen(BattleBag *battleBag);
static u8 BattleBagTask_ChangePocketPage(BattleBag *battleBag);
static u8 BattleBagTask_ClearErrorMessage(BattleBag *battleBag);
static u8 BattleBagTask_AwaitingTextFinish(BattleBag *battleBag);
static u8 BattleBagTask_AwaitingInput(BattleBag *battleBag);
static u8 BattleBagTask_ScreenTransition(BattleBag *battleBag);
static u8 BattleBagTask_CatchTutorial(BattleBag *battleBag);
static u8 BattleBagTask_Exit(BattleBag *battleBag);
static BOOL BattleBagTask_FinishTask(SysTask *task, BattleBag *battleBag);
static void InitializeBackground(BattleBag *battleBag);
static void CleanupBackground(BgConfig *background);
static void LoadGraphicsData(BattleBag *battleBag);
static void InitializeMessageLoader(BattleBag *battleBag);
static void CleanupMessageLoader(BattleBag *battleBag);
static u8 TryUseItem(BattleBag *battleBag);
static void SetupBackgroundScroll(BattleBag *battleBag, enum BattleBagScreen screen);
static void ChangeBattleBagScreen(BattleBag *battleBag, u8 screen);
static int CheckTouchRectIsPressed(BattleBag *battleBag, const TouchScreenRect *rect);
static void UseBagItem(BattleSystem *battleSys, u16 item, u16 category, enum HeapID heapID);

static const TouchScreenRect sMenuTouchRects[] = {
    [BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_HP_POCKET] = { 8, 79, 0, 127 },
    [BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_STATUS_POCKET] = { 80, 151, 0, 127 },
    [BATTLE_BAG_MENU_SCREEN_BUTTON_POKE_BALLS_POCKET] = { 8, 79, 128, 255 },
    [BATTLE_BAG_MENU_SCREEN_BUTTON_BATTLE_ITEMS_POCKET] = { 80, 151, 128, 255 },
    [BATTLE_BAG_MENU_SCREEN_BUTTON_LAST_USED_ITEM] = { 152, 191, 0, 207 },
    [BATTLE_BAG_MENU_SCREEN_BUTTON_CANCEL] = { 152, 191, 216, 255 },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const TouchScreenRect sPocketMenuTouchRects[] = {
    [BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_1] = { 8, 55, 0, 127 },
    [BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_2] = { 8, 55, 128, 255 },
    [BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_3] = { 56, 103, 0, 127 },
    [BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_4] = { 56, 103, 128, 255 },
    [BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_5] = { 104, 151, 0, 127 },
    [BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_6] = { 104, 151, 128, 255 },
    [BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_PREV_PAGE] = { 152, 191, 0, 39 },
    [BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_NEXT_PAGE] = { 152, 191, 40, 79 },
    [BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_CANCEL] = { 152, 191, 216, 255 },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const TouchScreenRect sUseItemMenuTouchRects[] = {
    [BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_USE] = { 152, 191, 0, 207 },
    [BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_CANCEL] = { 152, 191, 216, 255 },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

void BattleBagTask_Start(BattleBagContext *context)
{
    BattleBag *battleBagTask = SysTask_GetParam(SysTask_StartAndAllocateParam(BattleBagTask_Tick, sizeof(BattleBag), 100, context->heapID));
    memset(battleBagTask, 0, sizeof(BattleBag));

    battleBagTask->context = context;
    battleBagTask->background = BattleSystem_GetBgConfig(context->battleSys);
    battleBagTask->palette = BattleSystem_GetPaletteData(context->battleSys);
    battleBagTask->currentState = TASK_STATE_INITIALIZE;

    BagCursor *cursor = BattleSystem_GetBagCursor(context->battleSys);

    for (u8 i = 0; i < BATTLE_POCKET_MAX; i++) {
        BagCursor_GetBattleCategoryPosition(cursor, i, &battleBagTask->context->pocketCurrentPagePositions[i], &battleBagTask->context->pocketCurrentPages[i]);
    }

    battleBagTask->context->lastUsedItem = BagCursor_GetLastUsedBattleItem(cursor);
    battleBagTask->context->lastUsedItemPocket = BagCursor_GetLastUsedBattleItemCategory(cursor);

    BattleBag_CanUseLastUsedItem(battleBagTask);

    if (BattleSystem_GetBattleType(battleBagTask->context->battleSys) & BATTLE_TYPE_CATCH_TUTORIAL) {
        battleBagTask->context->isInCatchTutorial = TRUE;
    }
}

static void BattleBagTask_Tick(SysTask *task, void *taskParam)
{
    BattleBag *battleBag = taskParam;

    switch (battleBag->currentState) {
    case TASK_STATE_INITIALIZE:
        battleBag->currentState = BattleBagTask_Initialize(battleBag);
        break;
    case TASK_STATE_MENU_SCREEN:
        battleBag->currentState = BattleBagTask_MenuScreen(battleBag);
        break;
    case TASK_STATE_POCKET_MENU_SCREEN:
        battleBag->currentState = BattleBagTask_PocketMenuScreen(battleBag);
        break;
    case TASK_STATE_USE_ITEM_SCREEN:
        battleBag->currentState = BattleBagTask_UseItemScreen(battleBag);
        break;
    case TASK_STATE_SETUP_MENU_SCREEN:
        battleBag->currentState = BattleBagTask_SetupMenuScreen(battleBag);
        break;
    case TASK_STATE_SETUP_POCKET_MENU_SCREEN:
        battleBag->currentState = BattleBagTask_SetupPocketMenuScreen(battleBag);
        break;
    case TASK_STATE_SETUP_USE_ITEM_SCREEN:
        battleBag->currentState = BattleBagTask_SetupUseItemScreen(battleBag);
        break;
    case TASK_STATE_CHANGE_POCKET_PAGE:
        battleBag->currentState = BattleBagTask_ChangePocketPage(battleBag);
        break;
    case TASK_STATE_CLEAR_ERROR_MESSAGE:
        battleBag->currentState = BattleBagTask_ClearErrorMessage(battleBag);
        break;
    case TASK_STATE_AWAITING_TEXT_FINISH:
        battleBag->currentState = BattleBagTask_AwaitingTextFinish(battleBag);
        break;
    case TASK_STATE_AWAITING_INPUT:
        battleBag->currentState = BattleBagTask_AwaitingInput(battleBag);
        break;
    case TASK_STATE_SCREEN_TRANSITION:
        battleBag->currentState = BattleBagTask_ScreenTransition(battleBag);
        break;
    case TASK_STATE_CATCH_TUTORIAL:
        battleBag->currentState = BattleBagTask_CatchTutorial(battleBag);
        break;
    case TASK_STATE_EXIT:
        battleBag->currentState = BattleBagTask_Exit(battleBag);
        break;
    case TASK_STATE_FINISH_TASK:
        if (BattleBagTask_FinishTask(task, battleBag) == TRUE) {
            return;
        }
    }

    BattleBagButtons_Tick(battleBag);
    SpriteSystem_DrawSprites(battleBag->spriteManager);
}

static u8 BattleBagTask_Initialize(BattleBag *battleBag)
{
    G2S_BlendNone();

    battleBag->cursor = MakeBattleSubMenuCursor(battleBag->context->heapID);

    InitializeBackground(battleBag);
    LoadGraphicsData(battleBag);
    InitializeMessageLoader(battleBag);
    Font_InitManager(FONT_SUBSCREEN, battleBag->context->heapID);

    battleBag->currentBattlePocket = (u8)BagCursor_GetBattleCurrentCategory(BattleSystem_GetBagCursor(battleBag->context->battleSys));

    BattleBag_Init(battleBag);
    BattleBagButtons_InitializeButtons(battleBag, battleBag->currentScreen);

    BattleBagText_InitializeWindows(battleBag);
    BattleBagText_ChangeScreen(battleBag, battleBag->currentScreen);
    BattleBagSprites_InitializeSprites(battleBag);
    BattleBagSprites_SetupScreen(battleBag, battleBag->currentScreen);

    if (battleBag->context->isCursorEnabled != FALSE) {
        SetBattleSubMenuCursorVisibility(battleBag->cursor, TRUE);
    }

    BattleBagSprites_SetupCursor(battleBag, battleBag->currentScreen);
    BattleBagSprites_SetupCatchTutorialCursor(battleBag, battleBag->currentScreen);
    PaletteData_StartFade(battleBag->palette, PLTTBUF_SUB_BG_F | PLTTBUF_SUB_OBJ_F, 0xffff, -8, 16, 0, 0);

    if (battleBag->context->isInCatchTutorial == TRUE) {
        return TASK_STATE_CATCH_TUTORIAL;
    }

    return TASK_STATE_MENU_SCREEN;
}

static u8 BattleBagTask_MenuScreen(BattleBag *battleBag)
{
    if (PaletteData_GetSelectedBuffersMask(battleBag->palette) != 0) {
        return TASK_STATE_MENU_SCREEN;
    }

    enum BattleBagMenuScreenButton menuButtonPressed = CheckTouchRectIsPressed(battleBag, sMenuTouchRects);

    if (menuButtonPressed == TOUCHSCREEN_INPUT_NONE) {
        menuButtonPressed = BattleSubMenuCursorTick(battleBag->cursor);

        if (menuButtonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            menuButtonPressed = BATTLE_BAG_MENU_SCREEN_BUTTON_CANCEL;
        }
    } else {
        BattleBagSprites_DisableCursor(battleBag);
    }

    switch (menuButtonPressed) {
    case BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_HP_POCKET:
    case BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_STATUS_POCKET:
    case BATTLE_BAG_MENU_SCREEN_BUTTON_POKE_BALLS_POCKET:
    case BATTLE_BAG_MENU_SCREEN_BUTTON_BATTLE_ITEMS_POCKET:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        battleBag->currentBattlePocket = menuButtonPressed;
        battleBag->queuedState = TASK_STATE_SETUP_POCKET_MENU_SCREEN;
        BattleBagButtons_PressButton(battleBag, menuButtonPressed, 0);
        return TASK_STATE_SCREEN_TRANSITION;
    case BATTLE_BAG_MENU_SCREEN_BUTTON_LAST_USED_ITEM:
        if (battleBag->context->lastUsedItem != ITEM_NONE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBag->currentBattlePocket = battleBag->context->lastUsedItemPocket;
            battleBag->queuedState = TASK_STATE_SETUP_USE_ITEM_SCREEN;
            BattleBag_SetLastUsedPocket(battleBag);
            BattleBagButtons_PressButton(battleBag, BATTLE_BAG_MENU_SCREEN_BUTTON_LAST_USED_ITEM, 0);
            return TASK_STATE_SCREEN_TRANSITION;
        }
        break;
    case BATTLE_BAG_MENU_SCREEN_BUTTON_CANCEL:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        battleBag->context->selectedBattleBagItem = ITEM_NONE;
        battleBag->context->selectedBattleBagPocket = BATTLE_POCKET_INDEX_NONE;
        BattleBagButtons_PressButton(battleBag, BATTLE_BAG_MENU_SCREEN_BUTTON_CANCEL, 0);
        return TASK_STATE_EXIT;
    }

    return TASK_STATE_MENU_SCREEN;
}

static u8 BattleBagTask_PocketMenuScreen(BattleBag *battleBag)
{
    enum BattleBagPocketMenuScreenButton pocketMenuScreenButtonPressed = CheckTouchRectIsPressed(battleBag, sPocketMenuTouchRects);

    if (pocketMenuScreenButtonPressed == TOUCHSCREEN_INPUT_NONE) {
        pocketMenuScreenButtonPressed = BattleSubMenuCursorTick(battleBag->cursor);

        if (pocketMenuScreenButtonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            pocketMenuScreenButtonPressed = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_CANCEL;
        }
    } else {
        BattleBagSprites_DisableCursor(battleBag);
    }

    switch (pocketMenuScreenButtonPressed) {
    case BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_1:
    case BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_2:
    case BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_3:
    case BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_4:
    case BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_5:
    case BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_6:
        if (BattleBag_GetItem(battleBag, pocketMenuScreenButtonPressed) != ITEM_NONE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBag->context->pocketCurrentPagePositions[battleBag->currentBattlePocket] = pocketMenuScreenButtonPressed;
            battleBag->queuedState = TASK_STATE_SETUP_USE_ITEM_SCREEN;
            BattleBagButtons_PressButton(battleBag, BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_OFFSET + pocketMenuScreenButtonPressed, 0);
            return TASK_STATE_SCREEN_TRANSITION;
        }
        break;
    case BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_PREV_PAGE:
        if (battleBag->numBattlePocketPages[battleBag->currentBattlePocket] != 0) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBag->queuedState = TASK_STATE_CHANGE_POCKET_PAGE;
            battleBag->queuedBattlePocketPageChange = POCKET_PREV_PAGE;
            BattleBagButtons_PressButton(battleBag, BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_OFFSET + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_PREV_PAGE, 0);
            return TASK_STATE_SCREEN_TRANSITION;
        }
        break;
    case BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_NEXT_PAGE:
        if (battleBag->numBattlePocketPages[battleBag->currentBattlePocket] != 0) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBag->queuedState = TASK_STATE_CHANGE_POCKET_PAGE;
            battleBag->queuedBattlePocketPageChange = POCKET_NEXT_PAGE;
            BattleBagButtons_PressButton(battleBag, BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_OFFSET + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_NEXT_PAGE, 0);
            return TASK_STATE_SCREEN_TRANSITION;
        }
        break;
    case BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_CANCEL:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        battleBag->queuedState = TASK_STATE_SETUP_MENU_SCREEN;
        BattleBagButtons_PressButton(battleBag, BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_OFFSET + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_CANCEL, 0);
        return TASK_STATE_SCREEN_TRANSITION;
    }

    return TASK_STATE_POCKET_MENU_SCREEN;
}

static u8 BattleBagTask_ChangePocketPage(BattleBag *battleBag)
{
    s8 currentPage = battleBag->context->pocketCurrentPages[battleBag->currentBattlePocket];

    battleBag->context->pocketCurrentPagePositions[battleBag->currentBattlePocket] = 0;
    currentPage += battleBag->queuedBattlePocketPageChange;

    if (currentPage > battleBag->numBattlePocketPages[battleBag->currentBattlePocket]) {
        battleBag->context->pocketCurrentPages[battleBag->currentBattlePocket] = 0;
    } else if (currentPage < 0) {
        battleBag->context->pocketCurrentPages[battleBag->currentBattlePocket] = battleBag->numBattlePocketPages[battleBag->currentBattlePocket];
    } else {
        battleBag->context->pocketCurrentPages[battleBag->currentBattlePocket] = currentPage;
    }

    BattleBagText_PrintAllPocketItemInfo(battleBag);
    BattleBagText_PrintPocketPageNums(battleBag);
    BattleBagSprites_SetupScreen(battleBag, battleBag->currentScreen);
    BattleBagButtons_InitializeButtons(battleBag, battleBag->currentScreen);

    return TASK_STATE_POCKET_MENU_SCREEN;
}

static u8 BattleBagTask_UseItemScreen(BattleBag *battleBag)
{
    enum BattleBagUseItemScreenButton useItemScreenButtonPressed = CheckTouchRectIsPressed(battleBag, sUseItemMenuTouchRects);

    if (useItemScreenButtonPressed == TOUCHSCREEN_INPUT_NONE) {
        useItemScreenButtonPressed = BattleSubMenuCursorTick(battleBag->cursor);

        if (useItemScreenButtonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            useItemScreenButtonPressed = BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_CANCEL;
        }
    } else {
        BattleBagSprites_DisableCursor(battleBag);
    }

    switch (useItemScreenButtonPressed) {
    case BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_USE:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        battleBag->context->selectedBattleBagItem = BattleBag_GetItem(battleBag, battleBag->context->pocketCurrentPagePositions[battleBag->currentBattlePocket]);
        battleBag->context->selectedBattleBagPocket = battleBag->currentBattlePocket;
        BattleBagButtons_PressButton(battleBag, BATTLE_BAG_USE_ITEM_MENU_SCREEN_BUTTON_OFFSET + BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_USE, 0);
        return TryUseItem(battleBag);
    case BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_CANCEL:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        battleBag->queuedState = TASK_STATE_SETUP_POCKET_MENU_SCREEN;
        BattleBagButtons_PressButton(battleBag, BATTLE_BAG_USE_ITEM_MENU_SCREEN_BUTTON_OFFSET + BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_CANCEL, 0);
        return TASK_STATE_SCREEN_TRANSITION;
    }

    return TASK_STATE_USE_ITEM_SCREEN;
}

static u8 TryUseItem(BattleBag *battleBag)
{
    BattleBagContext *context = battleBag->context;

    if (battleBag->currentBattlePocket == ITEM_BATTLE_CATEGORY_BATTLE_ITEMS) {
        int partySlot = BattleBagTask_GetSelectedPartySlot(battleBag);
        u32 itemBattleUse = Item_LoadParam(context->selectedBattleBagItem, ITEM_PARAM_BATTLE_USE_FUNC, context->heapID);

        if (context->embargoRemainingTurns != 0 && context->selectedBattleBagItem != ITEM_GUARD_SPEC && itemBattleUse != 3) {
            Pokemon *mon = BattleSystem_GetPartyPokemon(context->battleSys, context->battler, partySlot);
            String *string = MessageLoader_GetNewString(battleBag->messageLoader, BattleBag_Text_EmbargoBlockingItemUse);

            StringTemplate_SetNickname(battleBag->stringTemplate, 0, Pokemon_GetBoxPokemon(mon));
            StringTemplate_SetMoveName(battleBag->stringTemplate, 1, MOVE_EMBARGO);
            StringTemplate_Format(battleBag->stringTemplate, battleBag->string, string);
            String_Free(string);

            BattleBagText_DisplayMessage(battleBag);
            battleBag->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;

            return TASK_STATE_AWAITING_TEXT_FINISH;
        }

        if (BattleSystem_UseBagItem(context->battleSys, context->battler, partySlot, 0, context->selectedBattleBagItem) == TRUE) {
            UseBagItem(context->battleSys, context->selectedBattleBagItem, battleBag->currentBattlePocket, context->heapID);
            return TASK_STATE_EXIT;
        } else if (itemBattleUse == 3) {
            if (!(BattleSystem_GetBattleType(context->battleSys) & BATTLE_TYPE_TRAINER)) {
                UseBagItem(context->battleSys, context->selectedBattleBagItem, battleBag->currentBattlePocket, context->heapID);
                return TASK_STATE_EXIT;
            } else {
                MessageLoader *messageLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS, context->heapID);
                String *string = MessageLoader_GetNewString(messageLoader, CommonStrings_Text_CantDoThatRightNow);
                StringTemplate_SetPlayerName(battleBag->stringTemplate, 0, context->trainerInfo);
                StringTemplate_Format(battleBag->stringTemplate, battleBag->string, string);
                String_Free(string);
                MessageLoader_Free(messageLoader);
                BattleBagText_DisplayMessage(battleBag);
                battleBag->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;
                return TASK_STATE_AWAITING_TEXT_FINISH;
            }
        } else {
            MessageLoader_GetString(battleBag->messageLoader, BattleBag_Text_ItemHasNoUse, battleBag->string);
            BattleBagText_DisplayMessage(battleBag);
            battleBag->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;
            return TASK_STATE_AWAITING_TEXT_FINISH;
        }
    } else if (battleBag->currentBattlePocket == ITEM_BATTLE_CATEGORY_POKE_BALLS) {
        if (context->hasTwoOpponents == TRUE) {
            MessageLoader_GetString(battleBag->messageLoader, BattleBag_Text_CantUseBallTwoPokemon, battleBag->string);
            BattleBagText_DisplayMessage(battleBag);
            battleBag->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;
            return TASK_STATE_AWAITING_TEXT_FINISH;
        }

        if (context->opponentHidden == TRUE) {
            MessageLoader_GetString(battleBag->messageLoader, BattleBag_Text_CantUseBallPokemonHidden, battleBag->string);
            BattleBagText_DisplayMessage(battleBag);
            battleBag->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;
            return TASK_STATE_AWAITING_TEXT_FINISH;
        }

        if (context->opponentSubstituted == TRUE) {
            MessageLoader_GetString(battleBag->messageLoader, BattleBag_Text_CantUseBallPokemonSubstituted, battleBag->string);
            BattleBagText_DisplayMessage(battleBag);
            battleBag->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;
            return TASK_STATE_AWAITING_TEXT_FINISH;
        }

        Party *party = BattleSystem_GetParty(context->battleSys, context->battler);
        PCBoxes *pcBoxes = BattleSystem_GetPCBoxes(context->battleSys);

        if (Party_GetCurrentCount(party) == MAX_PARTY_SIZE && PCBoxes_FirstEmptyBox(pcBoxes) == MAX_PC_BOXES) {
            MessageLoader_GetString(battleBag->messageLoader, BattleBag_Text_CantUseBallNoRoomLeft, battleBag->string);
            BattleBagText_DisplayMessage(battleBag);
            battleBag->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;
            return TASK_STATE_AWAITING_TEXT_FINISH;
        }
    }

    return TASK_STATE_EXIT;
}

static u8 BattleBagTask_SetupMenuScreen(BattleBag *battleBag)
{
    ChangeBattleBagScreen(battleBag, BATTLE_BAG_SCREEN_MENU);
    return TASK_STATE_MENU_SCREEN;
}

static u8 BattleBagTask_SetupPocketMenuScreen(BattleBag *battleBag)
{
    ChangeBattleBagScreen(battleBag, BATTLE_BAG_SCREEN_POCKET_MENU);
    return TASK_STATE_POCKET_MENU_SCREEN;
}

static u8 BattleBagTask_SetupUseItemScreen(BattleBag *battleBag)
{
    ChangeBattleBagScreen(battleBag, BATTLE_BAG_SCREEN_USE_ITEM);
    return TASK_STATE_USE_ITEM_SCREEN;
}

static u8 BattleBagTask_ClearErrorMessage(BattleBag *battleBag)
{
    Window_EraseMessageBox(&battleBag->messageBoxWindow, FALSE);
    return TASK_STATE_USE_ITEM_SCREEN;
}

static u8 BattleBagTask_AwaitingTextFinish(BattleBag *battleBag)
{
    if (Text_IsPrinterActive(battleBag->textPrinterID) == FALSE) {
        return TASK_STATE_AWAITING_INPUT;
    }

    return TASK_STATE_AWAITING_TEXT_FINISH;
}

static u8 BattleBagTask_AwaitingInput(BattleBag *battleBag)
{
    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) || TouchScreen_Tapped() == TRUE) {
        return battleBag->queuedState;
    }

    return TASK_STATE_AWAITING_INPUT;
}

static u8 BattleBagTask_ScreenTransition(BattleBag *battleBag)
{
    if (battleBag->pressedButtonState == BATTLE_SUB_MENU_BUTTON_STATE_PRESSED) {
        return battleBag->queuedState;
    }

    return TASK_STATE_SCREEN_TRANSITION;
}

static u8 BattleBagTask_Exit(BattleBag *battleBag)
{
    PaletteData_StartFade(battleBag->palette, PLTTBUF_SUB_BG_F | PLTTBUF_SUB_OBJ_F, 0xffff, -8, 0, 16, 0);
    return TASK_STATE_FINISH_TASK;
}

static BOOL BattleBagTask_FinishTask(SysTask *task, BattleBag *battleBag)
{
    if (PaletteData_GetSelectedBuffersMask(battleBag->palette) != 0) {
        return FALSE;
    }

    BattleBagSprites_CleanupSprites(battleBag);
    BattleBagText_ClearWindows(battleBag);
    CleanupMessageLoader(battleBag);
    CleanupBackground(battleBag->background);

    battleBag->context->isCursorEnabled = IsBattleSubMenuCursorVisible(battleBag->cursor);

    DeleteBattleSubMenuCursor(battleBag->cursor);
    Font_Free(FONT_SUBSCREEN);

    if (battleBag->context->selectedBattleBagItem != ITEM_NONE) {
        BagCursor *cursor = BattleSystem_GetBagCursor(battleBag->context->battleSys);

        for (u8 i = 0; i < BATTLE_POCKET_MAX; i++) {
            BagCursor_SetBattleCategoryPosition(cursor, i, battleBag->context->pocketCurrentPagePositions[i], battleBag->context->pocketCurrentPages[i]);
        }

        BagCursor_SetBattleCurrentCategory(cursor, battleBag->currentBattlePocket);
    }

    battleBag->context->battleBagExited = TRUE;
    SysTask_FinishAndFreeParam(task);

    return TRUE;
}

static u8 BattleBagTask_CatchTutorial(BattleBag *battleBag)
{
    if (PaletteData_GetSelectedBuffersMask(battleBag->palette) != 0) {
        return TASK_STATE_CATCH_TUTORIAL;
    }

    switch (battleBag->catchTutorialState) {
    case CATCH_TUTORIAL_STATE_MENU_SCREEN:
        if (ov16_0226DFD4(battleBag->catchTutorialCursor) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBag->currentBattlePocket = BATTLE_POCKET_INDEX_POKE_BALLS;
            battleBag->queuedState = TASK_STATE_CATCH_TUTORIAL;
            BattleBagButtons_PressButton(battleBag, BATTLE_BAG_MENU_SCREEN_BUTTON_POKE_BALLS_POCKET, 0);
            battleBag->catchTutorialTickCount = 0;
            battleBag->catchTutorialState++;
            return TASK_STATE_SCREEN_TRANSITION;
        } else {
            battleBag->catchTutorialTickCount++;
        }
        break;
    case CATCH_TUTORIAL_STATE_SETUP_POCKET_MENU_SCREEN:
        BattleBagTask_SetupPocketMenuScreen(battleBag);
        battleBag->catchTutorialState++;
        break;
    case CATCH_TUTORIAL_STATE_POCKET_MENU_SCREEN:
        if (ov16_0226DFD4(battleBag->catchTutorialCursor) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBag->context->pocketCurrentPagePositions[battleBag->currentBattlePocket] = 0;
            battleBag->queuedState = TASK_STATE_CATCH_TUTORIAL;
            BattleBagButtons_PressButton(battleBag, BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_OFFSET + BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_1, 0);
            battleBag->catchTutorialTickCount = 0;
            battleBag->catchTutorialState++;
            return TASK_STATE_SCREEN_TRANSITION;
        } else {
            battleBag->catchTutorialTickCount++;
        }
        break;
    case CATCH_TUTORIAL_STATE_SETUP_USE_ITEM_SCREEN:
        BattleBagTask_SetupUseItemScreen(battleBag);
        battleBag->catchTutorialState++;
        break;
    case CATCH_TUTORIAL_STATE_USE_ITEM_SCREEN:
        if (ov16_0226DFD4(battleBag->catchTutorialCursor) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBag->context->selectedBattleBagItem = BattleBag_GetItem(battleBag, battleBag->context->pocketCurrentPagePositions[battleBag->currentBattlePocket]);
            battleBag->context->selectedBattleBagPocket = battleBag->currentBattlePocket;
            BattleBagButtons_PressButton(battleBag, BATTLE_BAG_USE_ITEM_MENU_SCREEN_BUTTON_OFFSET + BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_USE, 0);
            return TryUseItem(battleBag);
        } else {
            battleBag->catchTutorialTickCount++;
        }
        break;
    }

    return TASK_STATE_CATCH_TUTORIAL;
}

static void InitializeBackground(BattleBag *battleBag)
{
    {
        GraphicsModes graphicsMode = {
            .displayMode = GX_DISPMODE_GRAPHICS,
            .mainBgMode = GX_BGMODE_0,
            .subBgMode = GX_BGMODE_0,
            .bg0As2DOr3D = GX_BG0_AS_3D,
        };

        SetScreenGraphicsModes(&graphicsMode, DS_SCREEN_SUB);
    }

    {
        BgTemplate background = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x2000,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_512x512,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xd000,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_23,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE
        };

        Bg_InitFromTemplate(battleBag->background, BG_LAYER_SUB_2, &background, BG_TYPE_STATIC);
    }

    {
        BgTemplate background = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf800,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE
        };

        Bg_InitFromTemplate(battleBag->background, BG_LAYER_SUB_1, &background, BG_TYPE_STATIC);
        Bg_ClearTilemap(battleBag->background, BG_LAYER_SUB_1);
    }

    {
        BgTemplate background = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf000,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE
        };

        Bg_InitFromTemplate(battleBag->background, BG_LAYER_SUB_0, &background, BG_TYPE_STATIC);
        Bg_ClearTilemap(battleBag->background, BG_LAYER_SUB_0);
    }

    Bg_ClearTilesRange(BG_LAYER_SUB_1, PALETTE_SIZE_BYTES, 0, battleBag->context->heapID);
    Bg_ClearTilesRange(BG_LAYER_SUB_0, PALETTE_SIZE_BYTES, 0, battleBag->context->heapID);
    Bg_ScheduleTilemapTransfer(battleBag->background, BG_LAYER_SUB_1);
    Bg_ScheduleTilemapTransfer(battleBag->background, BG_LAYER_SUB_0);
}

static void CleanupBackground(BgConfig *background)
{
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ, FALSE);
    Bg_FreeTilemapBuffer(background, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(background, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(background, BG_LAYER_SUB_2);
}

static void LoadGraphicsData(BattleBag *battleBag)
{
    NARC *narc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__B_BAG_GRA, battleBag->context->heapID);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 2, battleBag->background, BG_LAYER_SUB_2, 0, 0, FALSE, battleBag->context->heapID);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 0, battleBag->background, BG_LAYER_SUB_2, 0, 0, FALSE, battleBag->context->heapID);

    NNSG2dScreenData *screenData;

    void *buffer = NARC_AllocAndReadWholeMember(narc, 1, battleBag->context->heapID);
    NNS_G2dGetUnpackedScreenData(buffer, &screenData);
    BattleBagButtons_InitializeButtonData(battleBag, (u16 *)screenData->rawData);
    Heap_Free(buffer);

    NARC_dtor(narc);
    PaletteData_LoadBufferFromFileStart(battleBag->palette, NARC_INDEX_BATTLE__GRAPHIC__B_BAG_GRA, 3, battleBag->context->heapID, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES * 12, 0);
    PaletteData_LoadBufferFromFileStart(battleBag->palette, NARC_INDEX_GRAPHIC__PL_FONT, 7, battleBag->context->heapID, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES, 240);

    int optionsFrame = BattleSystem_GetOptionsFrame(battleBag->context->battleSys);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__PL_WINFRAME, GetMessageBoxTilesNARCMember(optionsFrame), battleBag->background, BG_LAYER_SUB_0, 1024 - SCROLLING_MESSAGE_BOX_TILE_COUNT, 0, FALSE, battleBag->context->heapID);
    PaletteData_LoadBufferFromFileStart(battleBag->palette, NARC_INDEX_GRAPHIC__PL_WINFRAME, GetMessageBoxPaletteNARCMember(optionsFrame), battleBag->context->heapID, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES, 224);
}

static void InitializeMessageLoader(BattleBag *battleBagTask)
{
    battleBagTask->messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_BAG, battleBagTask->context->heapID);
    battleBagTask->unused1 = FontSpecialChars_Init(15, 14, 0, battleBagTask->context->heapID);
    battleBagTask->stringTemplate = StringTemplate_Default(battleBagTask->context->heapID);
    battleBagTask->string = String_Init(512, battleBagTask->context->heapID);
}

static void CleanupMessageLoader(BattleBag *battleBag)
{
    MessageLoader_Free(battleBag->messageLoader);
    FontSpecialChars_Free(battleBag->unused1);
    StringTemplate_Free(battleBag->stringTemplate);
    String_Free(battleBag->string);
}

static void SetupBackgroundScroll(BattleBag *battleBag, enum BattleBagScreen screen)
{
    switch (screen) {
    case BATTLE_BAG_SCREEN_MENU:
        Bg_ScheduleScroll(battleBag->background, BG_LAYER_SUB_2, 0, 0);
        Bg_ScheduleScroll(battleBag->background, BG_LAYER_SUB_2, 3, 0);
        break;
    case BATTLE_BAG_SCREEN_POCKET_MENU:
        Bg_ScheduleScroll(battleBag->background, BG_LAYER_SUB_2, 0, 256);
        Bg_ScheduleScroll(battleBag->background, BG_LAYER_SUB_2, 3, 0);
        break;
    case BATTLE_BAG_SCREEN_USE_ITEM:
        Bg_ScheduleScroll(battleBag->background, BG_LAYER_SUB_2, 0, 0);
        Bg_ScheduleScroll(battleBag->background, BG_LAYER_SUB_2, 3, 256);
        break;
    }
}

static void SetupBackgroundTilemap(BattleBag *battleBag, enum BattleBagScreen screen)
{
    if (screen != BATTLE_BAG_SCREEN_USE_ITEM) {
        return;
    }

    Bg_ChangeTilemapRectPalette(battleBag->background, BG_LAYER_SUB_2, 2, 35, 28, 4, 8 + battleBag->currentBattlePocket);
    Bg_ChangeTilemapRectPalette(battleBag->background, BG_LAYER_SUB_2, 2, 40, 28, 8, 8 + battleBag->currentBattlePocket);
}

static void ChangeBattleBagScreen(BattleBag *battleBag, u8 screen)
{
    SetupBackgroundTilemap(battleBag, screen);
    SetupBackgroundScroll(battleBag, screen);

    Bg_ScheduleFillTilemap(battleBag->background, BG_LAYER_SUB_0, 0);
    Bg_ScheduleFillTilemap(battleBag->background, BG_LAYER_SUB_1, 0);

    BattleBagText_ClearScreenWindows(battleBag);
    BattleBagText_InitializeScreenWindows(battleBag, screen);
    BattleBagText_ChangeScreen(battleBag, screen);
    BattleBagButtons_InitializeButtons(battleBag, screen);
    BattleBagSprites_SetupCursor(battleBag, screen);
    BattleBagSprites_SetupCatchTutorialCursor(battleBag, screen);

    battleBag->currentScreen = screen;

    BattleBagSprites_SetupScreen(battleBag, battleBag->currentScreen);
}

static int CheckTouchRectIsPressed(BattleBag *battleBag, const TouchScreenRect *rect)
{
    return TouchScreen_CheckRectanglePressed(rect);
}

int BattleBagTask_GetSelectedPartySlot(BattleBag *battleBag)
{
    return BattleContext_Get(battleBag->context->battleSys, BattleSystem_GetBattleContext(battleBag->context->battleSys), BATTLECTX_SELECTED_PARTY_SLOT, battleBag->context->battler);
}

static void UseBagItem(BattleSystem *battleSys, u16 item, u16 category, enum HeapID heapID)
{
    Bag_TryRemoveItem(BattleSystem_GetBag(battleSys), item, 1, heapID);
    Bag_SetLastBattleItemUsed(BattleSystem_GetBagCursor(battleSys), item, category);
}
