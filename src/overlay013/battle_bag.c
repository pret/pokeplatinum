#include "overlay013/battle_bag.h"

#include "generated/text_banks.h"

#include "struct_decls/battle_system.h"
#include "struct_decls/pc_boxes_decl.h"

#include "battle/battle_lib.h"
#include "battle/ov16_0223DF00.h"
#include "battle/ov16_0226DE44.h"
#include "overlay013/battle_bag_utils.h"
#include "overlay013/ov13_02227288.h"
#include "overlay013/ov13_02227BDC.h"
#include "overlay013/ov13_02228128.h"

#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "narc.h"
#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "render_window.h"
#include "sound_playback.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_0200679C.h"
#include "unk_0200C440.h"

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

enum MenuScreenButton {
    MENU_SCREEN_BUTTON_RECOVER_HP_POCKET = 0,
    MENU_SCREEN_BUTTON_RECOVER_STATUS_POCKET,
    MENU_SCREEN_BUTTON_RECOVER_POKE_BALLS_POCKET,
    MENU_SCREEN_BUTTON_BATTLE_ITEMS_POCKET,
    MENU_SCREEN_BUTTON_LAST_USED_ITEM,
    MENU_SCREEN_BUTTON_CANCEL,
};

enum PocketMenuScreenButton {
    POCKET_MENU_SCREEN_BUTTON_ITEM_1 = 0,
    POCKET_MENU_SCREEN_BUTTON_ITEM_2,
    POCKET_MENU_SCREEN_BUTTON_ITEM_3,
    POCKET_MENU_SCREEN_BUTTON_ITEM_4,
    POCKET_MENU_SCREEN_BUTTON_ITEM_5,
    POCKET_MENU_SCREEN_BUTTON_ITEM_6,
    POCKET_MENU_SCREEN_BUTTON_PREV_PAGE,
    POCKET_MENU_SCREEN_BUTTON_NEXT_PAGE,
    POCKET_MENU_SCREEN_BUTTON_CANCEL,
};

enum UseItemScreenButton {
    USE_ITEM_SCREEN_BUTTON_USE = 0,
    USE_ITEM_SCREEN_BUTTON_CANCEL,
};

#define POCKET_NEXT_PAGE 1
#define POCKET_PREV_PAGE -1

static void BattleBagTask_Tick(SysTask *task, void *taskParam);
static u8 BattleBagTask_Initialize(BattleBag *battleBagTask);
static u8 BattleBagTask_MenuScreen(BattleBag *battleBagTask);
static u8 BattleBagTask_PocketMenuScreen(BattleBag *battleBagTask);
static u8 BattleBagTask_UseItemScreen(BattleBag *battleBagTask);
static u8 BattleBagTask_SetupMenuScreen(BattleBag *battleBagTask);
static u8 BattleBagTask_SetupPocketMenuScreen(BattleBag *battleBagTask);
static u8 BattleBagTask_SetupUseItemScreen(BattleBag *battleBagTask);
static u8 BattleBagTask_ChangePocketPage(BattleBag *battleBagTask);
static u8 BattleBagTask_ClearErrorMessage(BattleBag *battleBagTask);
static u8 BattleBagTask_AwaitingTextFinish(BattleBag *battleBagTask);
static u8 BattleBagTask_AwaitingInput(BattleBag *battleBagTask);
static u8 BattleBagTask_ScreenTransition(BattleBag *battleBagTask);
static u8 BattleBagTask_CatchTutorial(BattleBag *battleBagTask);
static u8 BattleBagTask_Exit(BattleBag *battleBagTask);
static BOOL BattleBagTask_FinishTask(SysTask *task, BattleBag *battleBagTask);
static void InitializeBackground(BattleBag *battleBagTask);
static void CleanupBackground(BgConfig *background);
static void LoadBackgroundData(BattleBag *battleBagTask);
static void InitializeMessageLoader(BattleBag *battleBagTask);
static void CleanupMessageLoader(BattleBag *battleBagTask);
static u8 TryUseItem(BattleBag *battleBagTask);
static void SetupBackgroundScroll(BattleBag *battleBagTask, enum BattleBagScreen screen);
static void ChangeBattleBagScreen(BattleBag *battleBagTask, u8 screen);
static BOOL CheckTouchRectIsPressed(BattleBag *battleBagTask, const TouchScreenRect *rect);
static void UseBagItem(BattleSystem *battleSys, u16 item, u16 category, u32 heapID);

static const TouchScreenRect menuScreenTouchRects[] = {
    [MENU_SCREEN_BUTTON_RECOVER_HP_POCKET] = { 8, 79, 0, 127 },
    [MENU_SCREEN_BUTTON_RECOVER_STATUS_POCKET] = { 80, 151, 0, 127 },
    [MENU_SCREEN_BUTTON_RECOVER_POKE_BALLS_POCKET] = { 8, 79, 128, 255 },
    [MENU_SCREEN_BUTTON_BATTLE_ITEMS_POCKET] = { 80, 151, 128, 255 },
    [MENU_SCREEN_BUTTON_LAST_USED_ITEM] = { 152, 191, 0, 207 },
    [MENU_SCREEN_BUTTON_CANCEL] = { 152, 191, 216, 255 },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const TouchScreenRect pocketMenuScreenTouchRects[] = {
    [POCKET_MENU_SCREEN_BUTTON_ITEM_1] = { 8, 55, 0, 127 },
    [POCKET_MENU_SCREEN_BUTTON_ITEM_2] = { 8, 55, 128, 255 },
    [POCKET_MENU_SCREEN_BUTTON_ITEM_3] = { 56, 103, 0, 127 },
    [POCKET_MENU_SCREEN_BUTTON_ITEM_4] = { 56, 103, 128, 255 },
    [POCKET_MENU_SCREEN_BUTTON_ITEM_5] = { 104, 151, 0, 127 },
    [POCKET_MENU_SCREEN_BUTTON_ITEM_6] = { 104, 151, 128, 255 },
    [POCKET_MENU_SCREEN_BUTTON_PREV_PAGE] = { 152, 191, 0, 39 },
    [POCKET_MENU_SCREEN_BUTTON_NEXT_PAGE] = { 152, 191, 40, 79 },
    [POCKET_MENU_SCREEN_BUTTON_CANCEL] = { 152, 191, 216, 255 },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const TouchScreenRect useItemScreenTouchRects[] = {
    [USE_ITEM_SCREEN_BUTTON_USE] = { 152, 191, 0, 207 },
    [USE_ITEM_SCREEN_BUTTON_CANCEL] = { 152, 191, 216, 255 },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

void BattleBagTask_Start(BattleBagContext *context)
{
    BattleBag *battleBagTask = SysTask_GetParam(SysTask_StartAndAllocateParam(BattleBagTask_Tick, sizeof(BattleBag), 100, context->heapID));
    memset(battleBagTask, 0, sizeof(BattleBag));

    battleBagTask->context = context;
    battleBagTask->background = BattleSystem_BGL(context->battleSystem);
    battleBagTask->palette = BattleSystem_PaletteSys(context->battleSystem);
    battleBagTask->currentState = TASK_STATE_INITIALIZE;

    u8 i;
    BagCursor *cursor = BattleSystem_BagCursor(context->battleSystem);

    for (i = 0; i < BATTLE_POCKET_MAX; i++) {
        BagCursor_GetBattleCategoryPosition(cursor, i, &battleBagTask->context->pocketCurrentPagePositions[i], &battleBagTask->context->pocketCurrentPages[i]);
    }

    battleBagTask->context->lastUsedItem = BagCursor_GetLastUsedBattleItem(cursor);
    battleBagTask->context->lastUsedItemPocket = BagCursor_GetLastUsedBattleItemCategory(cursor);

    BattleBag_CanUseLastUsedItem(battleBagTask);

    if (BattleSystem_BattleType(battleBagTask->context->battleSystem) & BATTLE_TYPE_CATCH_TUTORIAL) {
        battleBagTask->context->isInCatchTutorial = TRUE;
    }
}

static void BattleBagTask_Tick(SysTask *task, void *taskParam)
{
    BattleBag *battleBagTask = taskParam;

    switch (battleBagTask->currentState) {
    case TASK_STATE_INITIALIZE:
        battleBagTask->currentState = BattleBagTask_Initialize(battleBagTask);
        break;
    case TASK_STATE_MENU_SCREEN:
        battleBagTask->currentState = BattleBagTask_MenuScreen(battleBagTask);
        break;
    case TASK_STATE_POCKET_MENU_SCREEN:
        battleBagTask->currentState = BattleBagTask_PocketMenuScreen(battleBagTask);
        break;
    case TASK_STATE_USE_ITEM_SCREEN:
        battleBagTask->currentState = BattleBagTask_UseItemScreen(battleBagTask);
        break;
    case TASK_STATE_SETUP_MENU_SCREEN:
        battleBagTask->currentState = BattleBagTask_SetupMenuScreen(battleBagTask);
        break;
    case TASK_STATE_SETUP_POCKET_MENU_SCREEN:
        battleBagTask->currentState = BattleBagTask_SetupPocketMenuScreen(battleBagTask);
        break;
    case TASK_STATE_SETUP_USE_ITEM_SCREEN:
        battleBagTask->currentState = BattleBagTask_SetupUseItemScreen(battleBagTask);
        break;
    case TASK_STATE_CHANGE_POCKET_PAGE:
        battleBagTask->currentState = BattleBagTask_ChangePocketPage(battleBagTask);
        break;
    case TASK_STATE_CLEAR_ERROR_MESSAGE:
        battleBagTask->currentState = BattleBagTask_ClearErrorMessage(battleBagTask);
        break;
    case TASK_STATE_AWAITING_TEXT_FINISH:
        battleBagTask->currentState = BattleBagTask_AwaitingTextFinish(battleBagTask);
        break;
    case TASK_STATE_AWAITING_INPUT:
        battleBagTask->currentState = BattleBagTask_AwaitingInput(battleBagTask);
        break;
    case TASK_STATE_SCREEN_TRANSITION:
        battleBagTask->currentState = BattleBagTask_ScreenTransition(battleBagTask);
        break;
    case TASK_STATE_CATCH_TUTORIAL:
        battleBagTask->currentState = BattleBagTask_CatchTutorial(battleBagTask);
        break;
    case TASK_STATE_EXIT:
        battleBagTask->currentState = BattleBagTask_Exit(battleBagTask);
        break;
    case TASK_STATE_FINISH_TASK:
        if (BattleBagTask_FinishTask(task, battleBagTask) == TRUE) {
            return;
        }
    }

    ov13_02228848(battleBagTask);
    SpriteSystem_DrawSprites(battleBagTask->spriteManager);
}

static u8 BattleBagTask_Initialize(BattleBag *battleBagTask)
{
    G2S_BlendNone();

    battleBagTask->cursor = MakeBattleSubMenuCursor(battleBagTask->context->heapID);

    InitializeBackground(battleBagTask);
    LoadBackgroundData(battleBagTask);
    InitializeMessageLoader(battleBagTask);
    Font_InitManager(FONT_SUBSCREEN, battleBagTask->context->heapID);

    battleBagTask->currentBattlePocket = (u8)BagCursor_GetBattleCurrentCategory(BattleSystem_BagCursor(battleBagTask->context->battleSystem));

    BattleBag_Init(battleBagTask);
    ov13_02228924(battleBagTask, battleBagTask->currentScreen);
    ov13_02227288(battleBagTask);
    ov13_02227350(battleBagTask, battleBagTask->currentScreen);
    ov13_02227BDC(battleBagTask);
    ov13_02227E68(battleBagTask, battleBagTask->currentScreen);

    if (battleBagTask->context->isCursorEnabled != FALSE) {
        SetBattleSubMenuCursorVisibility(battleBagTask->cursor, TRUE);
    }

    SetupBattleBagCursor(battleBagTask, battleBagTask->currentScreen);
    ov13_022280F0(battleBagTask, battleBagTask->currentScreen);
    PaletteData_StartFade(battleBagTask->palette, PLTTBUF_SUB_BG_F | PLTTBUF_SUB_OBJ_F, 0xffff, -8, 16, 0, 0);

    if (battleBagTask->context->isInCatchTutorial == TRUE) {
        return TASK_STATE_CATCH_TUTORIAL;
    }

    return TASK_STATE_MENU_SCREEN;
}

static u8 BattleBagTask_MenuScreen(BattleBag *battleBagTask)
{
    if (PaletteData_GetSelectedBuffersMask(battleBagTask->palette) != 0) {
        return TASK_STATE_MENU_SCREEN;
    }

    enum MenuScreenButton menuButtonPressed = CheckTouchRectIsPressed(battleBagTask, menuScreenTouchRects);

    if (menuButtonPressed == TOUCHSCREEN_INPUT_NONE) {
        menuButtonPressed = BattleSubMenuCursorTick(battleBagTask->cursor);

        if (menuButtonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            menuButtonPressed = MENU_SCREEN_BUTTON_CANCEL;
        }
    } else {
        DisableBattleBagCursor(battleBagTask);
    }

    switch (menuButtonPressed) {
    case MENU_SCREEN_BUTTON_RECOVER_HP_POCKET:
    case MENU_SCREEN_BUTTON_RECOVER_STATUS_POCKET:
    case MENU_SCREEN_BUTTON_RECOVER_POKE_BALLS_POCKET:
    case MENU_SCREEN_BUTTON_BATTLE_ITEMS_POCKET:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        battleBagTask->currentBattlePocket = menuButtonPressed;
        battleBagTask->queuedState = TASK_STATE_SETUP_POCKET_MENU_SCREEN;
        ov13_0222880C(battleBagTask, menuButtonPressed, 0);
        return TASK_STATE_SCREEN_TRANSITION;
    case MENU_SCREEN_BUTTON_LAST_USED_ITEM:
        if (battleBagTask->context->lastUsedItem != ITEM_NONE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBagTask->currentBattlePocket = battleBagTask->context->lastUsedItemPocket;
            battleBagTask->queuedState = TASK_STATE_SETUP_USE_ITEM_SCREEN;
            BattleBag_SetLastUsedPocket(battleBagTask);
            ov13_0222880C(battleBagTask, 4, 0);
            return TASK_STATE_SCREEN_TRANSITION;
        }
        break;
    case MENU_SCREEN_BUTTON_CANCEL:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        battleBagTask->context->selectedBattleBagItem = ITEM_NONE;
        battleBagTask->context->selectedBattleBagPocket = BATTLE_POCKET_INDEX_NONE;
        ov13_0222880C(battleBagTask, 5, 0);
        return TASK_STATE_EXIT;
    }

    return TASK_STATE_MENU_SCREEN;
}

static u8 BattleBagTask_PocketMenuScreen(BattleBag *battleBagTask)
{
    enum PocketMenuScreenButton pocketMenuScreenButtonPressed = CheckTouchRectIsPressed(battleBagTask, pocketMenuScreenTouchRects);

    if (pocketMenuScreenButtonPressed == TOUCHSCREEN_INPUT_NONE) {
        pocketMenuScreenButtonPressed = BattleSubMenuCursorTick(battleBagTask->cursor);

        if (pocketMenuScreenButtonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            pocketMenuScreenButtonPressed = POCKET_MENU_SCREEN_BUTTON_CANCEL;
        }
    } else {
        DisableBattleBagCursor(battleBagTask);
    }

    switch (pocketMenuScreenButtonPressed) {
    case POCKET_MENU_SCREEN_BUTTON_ITEM_1:
    case POCKET_MENU_SCREEN_BUTTON_ITEM_2:
    case POCKET_MENU_SCREEN_BUTTON_ITEM_3:
    case POCKET_MENU_SCREEN_BUTTON_ITEM_4:
    case POCKET_MENU_SCREEN_BUTTON_ITEM_5:
    case POCKET_MENU_SCREEN_BUTTON_ITEM_6:
        if (BattleBag_GetItem(battleBagTask, pocketMenuScreenButtonPressed) != ITEM_NONE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBagTask->context->pocketCurrentPagePositions[battleBagTask->currentBattlePocket] = pocketMenuScreenButtonPressed;
            battleBagTask->queuedState = TASK_STATE_SETUP_USE_ITEM_SCREEN;
            ov13_0222880C(battleBagTask, 6 + pocketMenuScreenButtonPressed, 0);
            return TASK_STATE_SCREEN_TRANSITION;
        }
        break;
    case POCKET_MENU_SCREEN_BUTTON_PREV_PAGE:
        if (battleBagTask->numBattlePocketPages[battleBagTask->currentBattlePocket] != 0) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBagTask->queuedState = TASK_STATE_CHANGE_POCKET_PAGE;
            battleBagTask->queuedBattlePocketPageChange = POCKET_PREV_PAGE;
            ov13_0222880C(battleBagTask, 12, 0);
            return TASK_STATE_SCREEN_TRANSITION;
        }
        break;
    case POCKET_MENU_SCREEN_BUTTON_NEXT_PAGE:
        if (battleBagTask->numBattlePocketPages[battleBagTask->currentBattlePocket] != 0) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBagTask->queuedState = TASK_STATE_CHANGE_POCKET_PAGE;
            battleBagTask->queuedBattlePocketPageChange = POCKET_NEXT_PAGE;
            ov13_0222880C(battleBagTask, 13, 0);
            return TASK_STATE_SCREEN_TRANSITION;
        }
        break;
    case POCKET_MENU_SCREEN_BUTTON_CANCEL:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        battleBagTask->queuedState = TASK_STATE_SETUP_MENU_SCREEN;
        ov13_0222880C(battleBagTask, 14, 0);
        return TASK_STATE_SCREEN_TRANSITION;
    }

    return TASK_STATE_POCKET_MENU_SCREEN;
}

static u8 BattleBagTask_ChangePocketPage(BattleBag *battleBagTask)
{
    s8 currentPage = battleBagTask->context->pocketCurrentPages[battleBagTask->currentBattlePocket];

    battleBagTask->context->pocketCurrentPagePositions[battleBagTask->currentBattlePocket] = 0;
    currentPage += battleBagTask->queuedBattlePocketPageChange;

    if (currentPage > battleBagTask->numBattlePocketPages[battleBagTask->currentBattlePocket]) {
        battleBagTask->context->pocketCurrentPages[battleBagTask->currentBattlePocket] = 0;
    } else if (currentPage < 0) {
        battleBagTask->context->pocketCurrentPages[battleBagTask->currentBattlePocket] = battleBagTask->numBattlePocketPages[battleBagTask->currentBattlePocket];
    } else {
        battleBagTask->context->pocketCurrentPages[battleBagTask->currentBattlePocket] = currentPage;
    }

    ov13_02227650(battleBagTask);
    ov13_02227698(battleBagTask);
    ov13_02227E68(battleBagTask, battleBagTask->currentScreen);
    ov13_02228924(battleBagTask, battleBagTask->currentScreen);

    return TASK_STATE_POCKET_MENU_SCREEN;
}

static u8 BattleBagTask_UseItemScreen(BattleBag *battleBagTask)
{
    enum UseItemScreenButton useItemScreenButtonPressed = CheckTouchRectIsPressed(battleBagTask, useItemScreenTouchRects);

    if (useItemScreenButtonPressed == TOUCHSCREEN_INPUT_NONE) {
        useItemScreenButtonPressed = BattleSubMenuCursorTick(battleBagTask->cursor);

        if (useItemScreenButtonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            useItemScreenButtonPressed = USE_ITEM_SCREEN_BUTTON_CANCEL;
        }
    } else {
        DisableBattleBagCursor(battleBagTask);
    }

    switch (useItemScreenButtonPressed) {
    case USE_ITEM_SCREEN_BUTTON_USE:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        battleBagTask->context->selectedBattleBagItem = BattleBag_GetItem(battleBagTask, battleBagTask->context->pocketCurrentPagePositions[battleBagTask->currentBattlePocket]);
        battleBagTask->context->selectedBattleBagPocket = battleBagTask->currentBattlePocket;
        ov13_0222880C(battleBagTask, 15, 0);
        return TryUseItem(battleBagTask);
    case USE_ITEM_SCREEN_BUTTON_CANCEL:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        battleBagTask->queuedState = TASK_STATE_SETUP_POCKET_MENU_SCREEN;
        ov13_0222880C(battleBagTask, 16, 0);
        return TASK_STATE_SCREEN_TRANSITION;
    }

    return TASK_STATE_USE_ITEM_SCREEN;
}

static u8 TryUseItem(BattleBag *battleBagTask)
{
    BattleBagContext *context = battleBagTask->context;

    if (battleBagTask->currentBattlePocket == ITEM_BATTLE_CATEGORY_BATTLE_ITEMS) {
        int partySlot = BattleBagTask_GetSelectedPartySlot(battleBagTask);
        u32 itemBattleUse = Item_LoadParam(context->selectedBattleBagItem, ITEM_PARAM_BATTLE_USE_FUNC, context->heapID);

        if (context->embargoRemainingTurns != 0 && context->selectedBattleBagItem != ITEM_GUARD_SPEC && itemBattleUse != 3) {
            Pokemon *pokemon;
            Strbuf *strbuf;

            pokemon = BattleSystem_PartyPokemon(context->battleSystem, context->battler, partySlot);
            strbuf = MessageLoader_GetNewStrbuf(battleBagTask->messageLoader, BattleBag_Text_EmbargoBlockingItemUse);

            StringTemplate_SetNickname(battleBagTask->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon));
            StringTemplate_SetMoveName(battleBagTask->stringTemplate, 1, MOVE_EMBARGO);
            StringTemplate_Format(battleBagTask->stringTemplate, battleBagTask->strbuf, strbuf);
            Strbuf_Free(strbuf);

            DisplayBattleBagMessage(battleBagTask);
            battleBagTask->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;

            return TASK_STATE_AWAITING_TEXT_FINISH;
        }

        if (BattleSystem_UseBagItem(context->battleSystem, context->battler, partySlot, 0, context->selectedBattleBagItem) == TRUE) {
            UseBagItem(context->battleSystem, context->selectedBattleBagItem, battleBagTask->currentBattlePocket, context->heapID);
            return TASK_STATE_EXIT;
        } else if (itemBattleUse == 3) {
            if (!(BattleSystem_BattleType(context->battleSystem) & BATTLE_TYPE_TRAINER)) {
                UseBagItem(context->battleSystem, context->selectedBattleBagItem, battleBagTask->currentBattlePocket, context->heapID);
                return TASK_STATE_EXIT;
            } else {
                MessageLoader *messageLoader;
                Strbuf *strbuf;

                messageLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS, context->heapID);
                strbuf = MessageLoader_GetNewStrbuf(messageLoader, CommonStrings_Text_CantDoThatRightNow);
                StringTemplate_SetPlayerName(battleBagTask->stringTemplate, 0, context->trainerInfo);
                StringTemplate_Format(battleBagTask->stringTemplate, battleBagTask->strbuf, strbuf);
                Strbuf_Free(strbuf);
                MessageLoader_Free(messageLoader);
                DisplayBattleBagMessage(battleBagTask);
                battleBagTask->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;
                return TASK_STATE_AWAITING_TEXT_FINISH;
            }
        } else {
            MessageLoader_GetStrbuf(battleBagTask->messageLoader, BattleBag_Text_ItemHasNoUse, battleBagTask->strbuf);
            DisplayBattleBagMessage(battleBagTask);
            battleBagTask->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;
            return TASK_STATE_AWAITING_TEXT_FINISH;
        }
    } else if (battleBagTask->currentBattlePocket == ITEM_BATTLE_CATEGORY_POKE_BALLS) {
        if (context->hasTwoOpponents == TRUE) {
            MessageLoader_GetStrbuf(battleBagTask->messageLoader, BattleBag_Text_CantUseBallTwoPokemon, battleBagTask->strbuf);
            DisplayBattleBagMessage(battleBagTask);
            battleBagTask->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;
            return TASK_STATE_AWAITING_TEXT_FINISH;
        }

        if (context->opponentHidden == TRUE) {
            MessageLoader_GetStrbuf(battleBagTask->messageLoader, BattleBag_Text_CantUseBallPokemonHidden, battleBagTask->strbuf);
            DisplayBattleBagMessage(battleBagTask);
            battleBagTask->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;
            return TASK_STATE_AWAITING_TEXT_FINISH;
        }

        if (context->opponentSubstituted == TRUE) {
            MessageLoader_GetStrbuf(battleBagTask->messageLoader, BattleBag_Text_CantUseBallPokemonSubstituted, battleBagTask->strbuf);
            DisplayBattleBagMessage(battleBagTask);
            battleBagTask->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;
            return TASK_STATE_AWAITING_TEXT_FINISH;
        }

        {
            Party *party = BattleSystem_Party(context->battleSystem, context->battler);
            PCBoxes *boxes = ov16_0223E228(context->battleSystem);

            if (Party_GetCurrentCount(party) == MAX_PARTY_SIZE && PCBoxes_FirstEmptyBox(boxes) == MAX_PC_BOXES) {
                MessageLoader_GetStrbuf(battleBagTask->messageLoader, BattleBag_Text_CantUseBallNoRoomLeft, battleBagTask->strbuf);
                DisplayBattleBagMessage(battleBagTask);
                battleBagTask->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;
                return TASK_STATE_AWAITING_TEXT_FINISH;
            }
        }
    }

    return TASK_STATE_EXIT;
}

static u8 BattleBagTask_SetupMenuScreen(BattleBag *battleBagTask)
{
    ChangeBattleBagScreen(battleBagTask, BATTLE_BAG_SCREEN_MENU);
    return TASK_STATE_MENU_SCREEN;
}

static u8 BattleBagTask_SetupPocketMenuScreen(BattleBag *battleBagTask)
{
    ChangeBattleBagScreen(battleBagTask, BATTLE_BAG_SCREEN_POCKET_MENU);
    return TASK_STATE_POCKET_MENU_SCREEN;
}

static u8 BattleBagTask_SetupUseItemScreen(BattleBag *battleBagTask)
{
    ChangeBattleBagScreen(battleBagTask, BATTLE_BAG_SCREEN_USE_ITEM);
    return TASK_STATE_USE_ITEM_SCREEN;
}

static u8 BattleBagTask_ClearErrorMessage(BattleBag *battleBagTask)
{
    Window_EraseMessageBox(&battleBagTask->messageBoxWindow, FALSE);
    return TASK_STATE_USE_ITEM_SCREEN;
}

static u8 BattleBagTask_AwaitingTextFinish(BattleBag *battleBagTask)
{
    if (Text_IsPrinterActive(battleBagTask->textPrinterID) == FALSE) {
        return TASK_STATE_AWAITING_INPUT;
    }

    return TASK_STATE_AWAITING_TEXT_FINISH;
}

static u8 BattleBagTask_AwaitingInput(BattleBag *battleBagTask)
{
    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) || TouchScreen_Tapped() == TRUE) {
        return battleBagTask->queuedState;
    }

    return TASK_STATE_AWAITING_INPUT;
}

static u8 BattleBagTask_ScreenTransition(BattleBag *battleBagTask)
{
    if (battleBagTask->unk_113E == 2) {
        return battleBagTask->queuedState;
    }

    return TASK_STATE_SCREEN_TRANSITION;
}

static u8 BattleBagTask_Exit(BattleBag *battleBagTask)
{
    PaletteData_StartFade(battleBagTask->palette, PLTTBUF_SUB_BG_F | PLTTBUF_SUB_OBJ_F, 0xffff, -8, 0, 16, 0);
    return TASK_STATE_FINISH_TASK;
}

static BOOL BattleBagTask_FinishTask(SysTask *task, BattleBag *battleBagTask)
{
    if (PaletteData_GetSelectedBuffersMask(battleBagTask->palette) != 0) {
        return FALSE;
    }

    ov13_02227E08(battleBagTask);
    ov13_02227334(battleBagTask);
    CleanupMessageLoader(battleBagTask);
    CleanupBackground(battleBagTask->background);

    battleBagTask->context->isCursorEnabled = IsBattleSubMenuCursorVisible(battleBagTask->cursor);

    DeleteBattleSubMenuCursor(battleBagTask->cursor);
    Font_Free(FONT_SUBSCREEN);

    if (battleBagTask->context->selectedBattleBagItem != ITEM_NONE) {
        BagCursor *cursor;
        u8 i;

        cursor = BattleSystem_BagCursor(battleBagTask->context->battleSystem);

        for (i = 0; i < BATTLE_POCKET_MAX; i++) {
            BagCursor_SetBattleCategoryPosition(cursor, i, battleBagTask->context->pocketCurrentPagePositions[i], battleBagTask->context->pocketCurrentPages[i]);
        }

        BagCursor_SetBattleCurrentCategory(cursor, battleBagTask->currentBattlePocket);
    }

    battleBagTask->context->battleBagExited = TRUE;
    SysTask_FinishAndFreeParam(task);

    return TRUE;
}

static u8 BattleBagTask_CatchTutorial(BattleBag *battleBagTask)
{
    if (PaletteData_GetSelectedBuffersMask(battleBagTask->palette) != 0) {
        return TASK_STATE_CATCH_TUTORIAL;
    }

    switch (battleBagTask->catchTutorialState) {
    case CATCH_TUTORIAL_STATE_MENU_SCREEN:
        if (ov16_0226DFD4(battleBagTask->unk_38) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBagTask->currentBattlePocket = BATTLE_POCKET_INDEX_POKE_BALLS;
            battleBagTask->queuedState = TASK_STATE_CATCH_TUTORIAL;
            ov13_0222880C(battleBagTask, 2, 0);
            battleBagTask->catchTutorialTickCount = 0;
            battleBagTask->catchTutorialState++;
            return TASK_STATE_SCREEN_TRANSITION;
        } else {
            battleBagTask->catchTutorialTickCount++;
        }
        break;
    case CATCH_TUTORIAL_STATE_SETUP_POCKET_MENU_SCREEN:
        BattleBagTask_SetupPocketMenuScreen(battleBagTask);
        battleBagTask->catchTutorialState++;
        break;
    case CATCH_TUTORIAL_STATE_POCKET_MENU_SCREEN:
        if (ov16_0226DFD4(battleBagTask->unk_38) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBagTask->context->pocketCurrentPagePositions[battleBagTask->currentBattlePocket] = 0;
            battleBagTask->queuedState = TASK_STATE_CATCH_TUTORIAL;
            ov13_0222880C(battleBagTask, 6, 0);
            battleBagTask->catchTutorialTickCount = 0;
            battleBagTask->catchTutorialState++;
            return TASK_STATE_SCREEN_TRANSITION;
        } else {
            battleBagTask->catchTutorialTickCount++;
        }
        break;
    case CATCH_TUTORIAL_STATE_SETUP_USE_ITEM_SCREEN:
        BattleBagTask_SetupUseItemScreen(battleBagTask);
        battleBagTask->catchTutorialState++;
        break;
    case CATCH_TUTORIAL_STATE_USE_ITEM_SCREEN:
        if (ov16_0226DFD4(battleBagTask->unk_38) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBagTask->context->selectedBattleBagItem = BattleBag_GetItem(battleBagTask, battleBagTask->context->pocketCurrentPagePositions[battleBagTask->currentBattlePocket]);
            battleBagTask->context->selectedBattleBagPocket = battleBagTask->currentBattlePocket;
            ov13_0222880C(battleBagTask, 15, 0);
            return TryUseItem(battleBagTask);
        } else {
            battleBagTask->catchTutorialTickCount++;
        }
        break;
    }

    return TASK_STATE_CATCH_TUTORIAL;
}

static void InitializeBackground(BattleBag *battleBagTask)
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

        Bg_InitFromTemplate(battleBagTask->background, BG_LAYER_SUB_2, &background, BG_TYPE_STATIC);
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

        Bg_InitFromTemplate(battleBagTask->background, BG_LAYER_SUB_1, &background, BG_TYPE_STATIC);
        Bg_ClearTilemap(battleBagTask->background, BG_LAYER_SUB_1);
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

        Bg_InitFromTemplate(battleBagTask->background, BG_LAYER_SUB_0, &background, BG_TYPE_STATIC);
        Bg_ClearTilemap(battleBagTask->background, BG_LAYER_SUB_0);
    }

    Bg_ClearTilesRange(BG_LAYER_SUB_1, 32, 0, battleBagTask->context->heapID);
    Bg_ClearTilesRange(BG_LAYER_SUB_0, 32, 0, battleBagTask->context->heapID);
    Bg_ScheduleTilemapTransfer(battleBagTask->background, BG_LAYER_SUB_1);
    Bg_ScheduleTilemapTransfer(battleBagTask->background, BG_LAYER_SUB_0);
}

static void CleanupBackground(BgConfig *background)
{
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ, FALSE);
    Bg_FreeTilemapBuffer(background, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(background, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(background, BG_LAYER_SUB_2);
}

static void LoadBackgroundData(BattleBag *battleBagTask)
{
    NARC *narc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__B_BAG_GRA, battleBagTask->context->heapID);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 2, battleBagTask->background, BG_LAYER_SUB_2, 0, 0, 0, battleBagTask->context->heapID);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 0, battleBagTask->background, BG_LAYER_SUB_2, 0, 0, 0, battleBagTask->context->heapID);

    NNSG2dScreenData *screenData;

    void *buffer = NARC_AllocAndReadWholeMember(narc, 1, battleBagTask->context->heapID);
    NNS_G2dGetUnpackedScreenData(buffer, &screenData);
    ov13_02228128(battleBagTask, (u16 *)screenData->rawData);
    Heap_FreeToHeap(buffer);

    NARC_dtor(narc);
    PaletteData_LoadBufferFromFileStart(battleBagTask->palette, NARC_INDEX_BATTLE__GRAPHIC__B_BAG_GRA, 3, battleBagTask->context->heapID, PLTTBUF_SUB_BG, 0x20 * 12, 0);
    PaletteData_LoadBufferFromFileStart(battleBagTask->palette, NARC_INDEX_GRAPHIC__PL_FONT, 7, battleBagTask->context->heapID, PLTTBUF_SUB_BG, 0x20, 15 * 16);

    int optionsFrame = ov16_0223EDE0(battleBagTask->context->battleSystem);

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__PL_WINFRAME, GetMessageBoxTilesNARCMember(optionsFrame), battleBagTask->background, BG_LAYER_SUB_0, 1024 - (18 + 12), 0, 0, battleBagTask->context->heapID);
    PaletteData_LoadBufferFromFileStart(battleBagTask->palette, NARC_INDEX_GRAPHIC__PL_WINFRAME, GetMessageBoxPaletteNARCMember(optionsFrame), battleBagTask->context->heapID, PLTTBUF_SUB_BG, 0x20, 14 * 16);
}

static void InitializeMessageLoader(BattleBag *battleBagTask)
{
    battleBagTask->messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_BAG, battleBagTask->context->heapID);
    battleBagTask->unk_0C = sub_0200C440(15, 14, 0, battleBagTask->context->heapID);
    battleBagTask->stringTemplate = StringTemplate_Default(battleBagTask->context->heapID);
    battleBagTask->strbuf = Strbuf_Init(512, battleBagTask->context->heapID);
}

static void CleanupMessageLoader(BattleBag *battleBagTask)
{
    MessageLoader_Free(battleBagTask->messageLoader);
    sub_0200C560(battleBagTask->unk_0C);
    StringTemplate_Free(battleBagTask->stringTemplate);
    Strbuf_Free(battleBagTask->strbuf);
}

static void SetupBackgroundScroll(BattleBag *battleBagTask, enum BattleBagScreen screen)
{
    switch (screen) {
    case BATTLE_BAG_SCREEN_MENU:
        Bg_ScheduleScroll(battleBagTask->background, BG_LAYER_SUB_2, 0, 0);
        Bg_ScheduleScroll(battleBagTask->background, BG_LAYER_SUB_2, 3, 0);
        break;
    case BATTLE_BAG_SCREEN_POCKET_MENU:
        Bg_ScheduleScroll(battleBagTask->background, BG_LAYER_SUB_2, 0, 256);
        Bg_ScheduleScroll(battleBagTask->background, BG_LAYER_SUB_2, 3, 0);
        break;
    case BATTLE_BAG_SCREEN_USE_ITEM:
        Bg_ScheduleScroll(battleBagTask->background, BG_LAYER_SUB_2, 0, 0);
        Bg_ScheduleScroll(battleBagTask->background, BG_LAYER_SUB_2, 3, 256);
        break;
    }
}

static void SetupBackgroundTilemap(BattleBag *battleBagTask, enum BattleBagScreen screen)
{
    if (screen != BATTLE_BAG_SCREEN_USE_ITEM) {
        return;
    }

    Bg_ChangeTilemapRectPalette(battleBagTask->background, BG_LAYER_SUB_2, 2, 35, 28, 4, 8 + battleBagTask->currentBattlePocket);
    Bg_ChangeTilemapRectPalette(battleBagTask->background, BG_LAYER_SUB_2, 2, 40, 28, 8, 8 + battleBagTask->currentBattlePocket);
}

static void ChangeBattleBagScreen(BattleBag *battleBagTask, u8 screen)
{
    SetupBackgroundTilemap(battleBagTask, screen);
    SetupBackgroundScroll(battleBagTask, screen);

    Bg_ScheduleFillTilemap(battleBagTask->background, BG_LAYER_SUB_0, 0);
    Bg_ScheduleFillTilemap(battleBagTask->background, BG_LAYER_SUB_1, 0);

    ov13_02227324(battleBagTask);
    ov13_022272AC(battleBagTask, screen);
    ov13_02227350(battleBagTask, screen);
    ov13_02228924(battleBagTask, screen);
    SetupBattleBagCursor(battleBagTask, screen);
    ov13_022280F0(battleBagTask, screen);

    battleBagTask->currentScreen = screen;

    ov13_02227E68(battleBagTask, battleBagTask->currentScreen);
}

static BOOL CheckTouchRectIsPressed(BattleBag *battleBagTask, const TouchScreenRect *rect)
{
    BOOL isPressed = TouchScreen_CheckRectanglePressed(rect);
    return isPressed;
}

int BattleBagTask_GetSelectedPartySlot(BattleBag *battleBagTask)
{
    int slot = BattleContext_Get(battleBagTask->context->battleSystem, BattleSystem_Context(battleBagTask->context->battleSystem), BATTLECTX_SELECTED_PARTY_SLOT, battleBagTask->context->battler);
    return slot;
}

static void UseBagItem(BattleSystem *battleSys, u16 item, u16 category, u32 heapID)
{
    Bag_TryRemoveItem(BattleSystem_Bag(battleSys), item, 1, heapID);
    Bag_SetLastBattleItemUsed(BattleSystem_BagCursor(battleSys), item, category);
}
