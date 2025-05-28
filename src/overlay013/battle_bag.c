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
static void LoadBackgroundData(BattleBag *battleBag);
static void InitializeMessageLoader(BattleBag *battleBag);
static void CleanupMessageLoader(BattleBag *battleBag);
static u8 TryUseItem(BattleBag *battleBag);
static void SetupBackgroundScroll(BattleBag *battleBag, enum BattleBagScreen screen);
static void ChangeBattleBagScreen(BattleBag *battleBag, u8 screen);
static BOOL CheckTouchRectIsPressed(BattleBag *battleBag, const TouchScreenRect *rect);
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

    ov13_02228848(battleBag);
    SpriteSystem_DrawSprites(battleBag->spriteManager);
}

static u8 BattleBagTask_Initialize(BattleBag *battleBag)
{
    G2S_BlendNone();

    battleBag->cursor = MakeBattleSubMenuCursor(battleBag->context->heapID);

    InitializeBackground(battleBag);
    LoadBackgroundData(battleBag);
    InitializeMessageLoader(battleBag);
    Font_InitManager(FONT_SUBSCREEN, battleBag->context->heapID);

    battleBag->currentBattlePocket = (u8)BagCursor_GetBattleCurrentCategory(BattleSystem_BagCursor(battleBag->context->battleSystem));

    BattleBag_Init(battleBag);
    ov13_02228924(battleBag, battleBag->currentScreen);
    ov13_02227288(battleBag);
    ov13_02227350(battleBag, battleBag->currentScreen);
    ov13_02227BDC(battleBag);
    ov13_02227E68(battleBag, battleBag->currentScreen);

    if (battleBag->context->isCursorEnabled != FALSE) {
        SetBattleSubMenuCursorVisibility(battleBag->cursor, TRUE);
    }

    SetupBattleBagCursor(battleBag, battleBag->currentScreen);
    ov13_022280F0(battleBag, battleBag->currentScreen);
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

    enum MenuScreenButton menuButtonPressed = CheckTouchRectIsPressed(battleBag, menuScreenTouchRects);

    if (menuButtonPressed == TOUCHSCREEN_INPUT_NONE) {
        menuButtonPressed = BattleSubMenuCursorTick(battleBag->cursor);

        if (menuButtonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            menuButtonPressed = MENU_SCREEN_BUTTON_CANCEL;
        }
    } else {
        DisableBattleBagCursor(battleBag);
    }

    switch (menuButtonPressed) {
    case MENU_SCREEN_BUTTON_RECOVER_HP_POCKET:
    case MENU_SCREEN_BUTTON_RECOVER_STATUS_POCKET:
    case MENU_SCREEN_BUTTON_RECOVER_POKE_BALLS_POCKET:
    case MENU_SCREEN_BUTTON_BATTLE_ITEMS_POCKET:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        battleBag->currentBattlePocket = menuButtonPressed;
        battleBag->queuedState = TASK_STATE_SETUP_POCKET_MENU_SCREEN;
        ov13_0222880C(battleBag, menuButtonPressed, 0);
        return TASK_STATE_SCREEN_TRANSITION;
    case MENU_SCREEN_BUTTON_LAST_USED_ITEM:
        if (battleBag->context->lastUsedItem != ITEM_NONE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBag->currentBattlePocket = battleBag->context->lastUsedItemPocket;
            battleBag->queuedState = TASK_STATE_SETUP_USE_ITEM_SCREEN;
            BattleBag_SetLastUsedPocket(battleBag);
            ov13_0222880C(battleBag, 4, 0);
            return TASK_STATE_SCREEN_TRANSITION;
        }
        break;
    case MENU_SCREEN_BUTTON_CANCEL:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        battleBag->context->selectedBattleBagItem = ITEM_NONE;
        battleBag->context->selectedBattleBagPocket = BATTLE_POCKET_INDEX_NONE;
        ov13_0222880C(battleBag, 5, 0);
        return TASK_STATE_EXIT;
    }

    return TASK_STATE_MENU_SCREEN;
}

static u8 BattleBagTask_PocketMenuScreen(BattleBag *battleBag)
{
    enum PocketMenuScreenButton pocketMenuScreenButtonPressed = CheckTouchRectIsPressed(battleBag, pocketMenuScreenTouchRects);

    if (pocketMenuScreenButtonPressed == TOUCHSCREEN_INPUT_NONE) {
        pocketMenuScreenButtonPressed = BattleSubMenuCursorTick(battleBag->cursor);

        if (pocketMenuScreenButtonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            pocketMenuScreenButtonPressed = POCKET_MENU_SCREEN_BUTTON_CANCEL;
        }
    } else {
        DisableBattleBagCursor(battleBag);
    }

    switch (pocketMenuScreenButtonPressed) {
    case POCKET_MENU_SCREEN_BUTTON_ITEM_1:
    case POCKET_MENU_SCREEN_BUTTON_ITEM_2:
    case POCKET_MENU_SCREEN_BUTTON_ITEM_3:
    case POCKET_MENU_SCREEN_BUTTON_ITEM_4:
    case POCKET_MENU_SCREEN_BUTTON_ITEM_5:
    case POCKET_MENU_SCREEN_BUTTON_ITEM_6:
        if (BattleBag_GetItem(battleBag, pocketMenuScreenButtonPressed) != ITEM_NONE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBag->context->pocketCurrentPagePositions[battleBag->currentBattlePocket] = pocketMenuScreenButtonPressed;
            battleBag->queuedState = TASK_STATE_SETUP_USE_ITEM_SCREEN;
            ov13_0222880C(battleBag, 6 + pocketMenuScreenButtonPressed, 0);
            return TASK_STATE_SCREEN_TRANSITION;
        }
        break;
    case POCKET_MENU_SCREEN_BUTTON_PREV_PAGE:
        if (battleBag->numBattlePocketPages[battleBag->currentBattlePocket] != 0) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBag->queuedState = TASK_STATE_CHANGE_POCKET_PAGE;
            battleBag->queuedBattlePocketPageChange = POCKET_PREV_PAGE;
            ov13_0222880C(battleBag, 12, 0);
            return TASK_STATE_SCREEN_TRANSITION;
        }
        break;
    case POCKET_MENU_SCREEN_BUTTON_NEXT_PAGE:
        if (battleBag->numBattlePocketPages[battleBag->currentBattlePocket] != 0) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBag->queuedState = TASK_STATE_CHANGE_POCKET_PAGE;
            battleBag->queuedBattlePocketPageChange = POCKET_NEXT_PAGE;
            ov13_0222880C(battleBag, 13, 0);
            return TASK_STATE_SCREEN_TRANSITION;
        }
        break;
    case POCKET_MENU_SCREEN_BUTTON_CANCEL:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        battleBag->queuedState = TASK_STATE_SETUP_MENU_SCREEN;
        ov13_0222880C(battleBag, 14, 0);
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

    ov13_02227650(battleBag);
    ov13_02227698(battleBag);
    ov13_02227E68(battleBag, battleBag->currentScreen);
    ov13_02228924(battleBag, battleBag->currentScreen);

    return TASK_STATE_POCKET_MENU_SCREEN;
}

static u8 BattleBagTask_UseItemScreen(BattleBag *battleBag)
{
    enum UseItemScreenButton useItemScreenButtonPressed = CheckTouchRectIsPressed(battleBag, useItemScreenTouchRects);

    if (useItemScreenButtonPressed == TOUCHSCREEN_INPUT_NONE) {
        useItemScreenButtonPressed = BattleSubMenuCursorTick(battleBag->cursor);

        if (useItemScreenButtonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            useItemScreenButtonPressed = USE_ITEM_SCREEN_BUTTON_CANCEL;
        }
    } else {
        DisableBattleBagCursor(battleBag);
    }

    switch (useItemScreenButtonPressed) {
    case USE_ITEM_SCREEN_BUTTON_USE:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        battleBag->context->selectedBattleBagItem = BattleBag_GetItem(battleBag, battleBag->context->pocketCurrentPagePositions[battleBag->currentBattlePocket]);
        battleBag->context->selectedBattleBagPocket = battleBag->currentBattlePocket;
        ov13_0222880C(battleBag, 15, 0);
        return TryUseItem(battleBag);
    case USE_ITEM_SCREEN_BUTTON_CANCEL:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        battleBag->queuedState = TASK_STATE_SETUP_POCKET_MENU_SCREEN;
        ov13_0222880C(battleBag, 16, 0);
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
            Pokemon *pokemon;
            Strbuf *strbuf;

            pokemon = BattleSystem_PartyPokemon(context->battleSystem, context->battler, partySlot);
            strbuf = MessageLoader_GetNewStrbuf(battleBag->messageLoader, BattleBag_Text_EmbargoBlockingItemUse);

            StringTemplate_SetNickname(battleBag->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon));
            StringTemplate_SetMoveName(battleBag->stringTemplate, 1, MOVE_EMBARGO);
            StringTemplate_Format(battleBag->stringTemplate, battleBag->strbuf, strbuf);
            Strbuf_Free(strbuf);

            DisplayBattleBagMessage(battleBag);
            battleBag->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;

            return TASK_STATE_AWAITING_TEXT_FINISH;
        }

        if (BattleSystem_UseBagItem(context->battleSystem, context->battler, partySlot, 0, context->selectedBattleBagItem) == TRUE) {
            UseBagItem(context->battleSystem, context->selectedBattleBagItem, battleBag->currentBattlePocket, context->heapID);
            return TASK_STATE_EXIT;
        } else if (itemBattleUse == 3) {
            if (!(BattleSystem_BattleType(context->battleSystem) & BATTLE_TYPE_TRAINER)) {
                UseBagItem(context->battleSystem, context->selectedBattleBagItem, battleBag->currentBattlePocket, context->heapID);
                return TASK_STATE_EXIT;
            } else {
                MessageLoader *messageLoader;
                Strbuf *strbuf;

                messageLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS, context->heapID);
                strbuf = MessageLoader_GetNewStrbuf(messageLoader, CommonStrings_Text_CantDoThatRightNow);
                StringTemplate_SetPlayerName(battleBag->stringTemplate, 0, context->trainerInfo);
                StringTemplate_Format(battleBag->stringTemplate, battleBag->strbuf, strbuf);
                Strbuf_Free(strbuf);
                MessageLoader_Free(messageLoader);
                DisplayBattleBagMessage(battleBag);
                battleBag->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;
                return TASK_STATE_AWAITING_TEXT_FINISH;
            }
        } else {
            MessageLoader_GetStrbuf(battleBag->messageLoader, BattleBag_Text_ItemHasNoUse, battleBag->strbuf);
            DisplayBattleBagMessage(battleBag);
            battleBag->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;
            return TASK_STATE_AWAITING_TEXT_FINISH;
        }
    } else if (battleBag->currentBattlePocket == ITEM_BATTLE_CATEGORY_POKE_BALLS) {
        if (context->hasTwoOpponents == TRUE) {
            MessageLoader_GetStrbuf(battleBag->messageLoader, BattleBag_Text_CantUseBallTwoPokemon, battleBag->strbuf);
            DisplayBattleBagMessage(battleBag);
            battleBag->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;
            return TASK_STATE_AWAITING_TEXT_FINISH;
        }

        if (context->opponentHidden == TRUE) {
            MessageLoader_GetStrbuf(battleBag->messageLoader, BattleBag_Text_CantUseBallPokemonHidden, battleBag->strbuf);
            DisplayBattleBagMessage(battleBag);
            battleBag->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;
            return TASK_STATE_AWAITING_TEXT_FINISH;
        }

        if (context->opponentSubstituted == TRUE) {
            MessageLoader_GetStrbuf(battleBag->messageLoader, BattleBag_Text_CantUseBallPokemonSubstituted, battleBag->strbuf);
            DisplayBattleBagMessage(battleBag);
            battleBag->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;
            return TASK_STATE_AWAITING_TEXT_FINISH;
        }

        {
            Party *party = BattleSystem_Party(context->battleSystem, context->battler);
            PCBoxes *boxes = ov16_0223E228(context->battleSystem);

            if (Party_GetCurrentCount(party) == MAX_PARTY_SIZE && PCBoxes_FirstEmptyBox(boxes) == MAX_PC_BOXES) {
                MessageLoader_GetStrbuf(battleBag->messageLoader, BattleBag_Text_CantUseBallNoRoomLeft, battleBag->strbuf);
                DisplayBattleBagMessage(battleBag);
                battleBag->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;
                return TASK_STATE_AWAITING_TEXT_FINISH;
            }
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
    if (battleBag->unk_113E == 2) {
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

    ov13_02227E08(battleBag);
    ov13_02227334(battleBag);
    CleanupMessageLoader(battleBag);
    CleanupBackground(battleBag->background);

    battleBag->context->isCursorEnabled = IsBattleSubMenuCursorVisible(battleBag->cursor);

    DeleteBattleSubMenuCursor(battleBag->cursor);
    Font_Free(FONT_SUBSCREEN);

    if (battleBag->context->selectedBattleBagItem != ITEM_NONE) {
        BagCursor *cursor;
        u8 i;

        cursor = BattleSystem_BagCursor(battleBag->context->battleSystem);

        for (i = 0; i < BATTLE_POCKET_MAX; i++) {
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
        if (ov16_0226DFD4(battleBag->unk_38) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBag->currentBattlePocket = BATTLE_POCKET_INDEX_POKE_BALLS;
            battleBag->queuedState = TASK_STATE_CATCH_TUTORIAL;
            ov13_0222880C(battleBag, 2, 0);
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
        if (ov16_0226DFD4(battleBag->unk_38) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBag->context->pocketCurrentPagePositions[battleBag->currentBattlePocket] = 0;
            battleBag->queuedState = TASK_STATE_CATCH_TUTORIAL;
            ov13_0222880C(battleBag, 6, 0);
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
        if (ov16_0226DFD4(battleBag->unk_38) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBag->context->selectedBattleBagItem = BattleBag_GetItem(battleBag, battleBag->context->pocketCurrentPagePositions[battleBag->currentBattlePocket]);
            battleBag->context->selectedBattleBagPocket = battleBag->currentBattlePocket;
            ov13_0222880C(battleBag, 15, 0);
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

    Bg_ClearTilesRange(BG_LAYER_SUB_1, 32, 0, battleBag->context->heapID);
    Bg_ClearTilesRange(BG_LAYER_SUB_0, 32, 0, battleBag->context->heapID);
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

static void LoadBackgroundData(BattleBag *battleBag)
{
    NARC *narc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__B_BAG_GRA, battleBag->context->heapID);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 2, battleBag->background, BG_LAYER_SUB_2, 0, 0, 0, battleBag->context->heapID);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 0, battleBag->background, BG_LAYER_SUB_2, 0, 0, 0, battleBag->context->heapID);

    NNSG2dScreenData *screenData;

    void *buffer = NARC_AllocAndReadWholeMember(narc, 1, battleBag->context->heapID);
    NNS_G2dGetUnpackedScreenData(buffer, &screenData);
    ov13_02228128(battleBag, (u16 *)screenData->rawData);
    Heap_FreeToHeap(buffer);

    NARC_dtor(narc);
    PaletteData_LoadBufferFromFileStart(battleBag->palette, NARC_INDEX_BATTLE__GRAPHIC__B_BAG_GRA, 3, battleBag->context->heapID, PLTTBUF_SUB_BG, 0x20 * 12, 0);
    PaletteData_LoadBufferFromFileStart(battleBag->palette, NARC_INDEX_GRAPHIC__PL_FONT, 7, battleBag->context->heapID, PLTTBUF_SUB_BG, 0x20, 15 * 16);

    int optionsFrame = ov16_0223EDE0(battleBag->context->battleSystem);

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__PL_WINFRAME, GetMessageBoxTilesNARCMember(optionsFrame), battleBag->background, BG_LAYER_SUB_0, 1024 - (18 + 12), 0, 0, battleBag->context->heapID);
    PaletteData_LoadBufferFromFileStart(battleBag->palette, NARC_INDEX_GRAPHIC__PL_WINFRAME, GetMessageBoxPaletteNARCMember(optionsFrame), battleBag->context->heapID, PLTTBUF_SUB_BG, 0x20, 14 * 16);
}

static void InitializeMessageLoader(BattleBag *battleBagTask)
{
    battleBagTask->messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_BAG, battleBagTask->context->heapID);
    battleBagTask->unk_0C = sub_0200C440(15, 14, 0, battleBagTask->context->heapID);
    battleBagTask->stringTemplate = StringTemplate_Default(battleBagTask->context->heapID);
    battleBagTask->strbuf = Strbuf_Init(512, battleBagTask->context->heapID);
}

static void CleanupMessageLoader(BattleBag *battleBag)
{
    MessageLoader_Free(battleBag->messageLoader);
    sub_0200C560(battleBag->unk_0C);
    StringTemplate_Free(battleBag->stringTemplate);
    Strbuf_Free(battleBag->strbuf);
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

    ov13_02227324(battleBag);
    ov13_022272AC(battleBag, screen);
    ov13_02227350(battleBag, screen);
    ov13_02228924(battleBag, screen);
    SetupBattleBagCursor(battleBag, screen);
    ov13_022280F0(battleBag, screen);

    battleBag->currentScreen = screen;

    ov13_02227E68(battleBag, battleBag->currentScreen);
}

static BOOL CheckTouchRectIsPressed(BattleBag *battleBag, const TouchScreenRect *rect)
{
    BOOL isPressed = TouchScreen_CheckRectanglePressed(rect);
    return isPressed;
}

int BattleBagTask_GetSelectedPartySlot(BattleBag *battleBag)
{
    int slot = BattleContext_Get(battleBag->context->battleSystem, BattleSystem_Context(battleBag->context->battleSystem), BATTLECTX_SELECTED_PARTY_SLOT, battleBag->context->battler);
    return slot;
}

static void UseBagItem(BattleSystem *battleSys, u16 item, u16 category, u32 heapID)
{
    Bag_TryRemoveItem(BattleSystem_Bag(battleSys), item, 1, heapID);
    Bag_SetLastBattleItemUsed(BattleSystem_BagCursor(battleSys), item, category);
}
