#include "overlay013/battle_bag_task.h"

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

enum BattleBagTaskState {
    BATTLE_BAG_TASK_STATE_INITIALIZE = 0,
    BATTLE_BAG_TASK_STATE_MENU_SCREEN,
    BATTLE_BAG_TASK_STATE_POCKET_MENU_SCREEN,
    BATTLE_BAG_TASK_STATE_USE_ITEM_SCREEN,
    BATTLE_BAG_TASK_STATE_SETUP_MENU_SCREEN,
    BATTLE_BAG_TASK_STATE_SETUP_POCKET_MENU_SCREEN,
    BATTLE_BAG_TASK_STATE_SETUP_USE_ITEM_SCREEN,
    BATTLE_BAG_TASK_STATE_CHANGE_POCKET_PAGE,
    BATTLE_BAG_TASK_STATE_CLEAR_ERROR_MESSAGE,
    BATTLE_BAG_TASK_AWAITING_TEXT_FINISH,
    BATTLE_BAG_TASK_STATE_AWAITING_INPUT,
    BATTLE_BAG_TASK_STATE_SCREEN_TRANSITION,
    BATTLE_BAG_TASK_STATE_CATCH_TUTORIAL,
    BATTLE_BAG_TASK_STATE_EXIT,
    BATTLE_BAG_TASK_STATE_FINISH_TASK,
};

enum BattleBagCatchTutorialState {
    BATTLE_BAG_CATCH_TUTORIAL_STATE_MENU_SCREEN = 0,
    BATTLE_BAG_CATCH_TUTORIAL_STATE_SETUP_POCKET_MENU_SCREEN,
    BATTLE_BAG_CATCH_TUTORIAL_STATE_POCKET_MENU_SCREEN,
    BATTLE_BAG_CATCH_TUTORIAL_STATE_SETUP_USE_ITEM_SCREEN,
    BATTLE_BAG_CATCH_TUTORIAL_STATE_USE_ITEM_SCREEN,
};

enum BattleBagMenuScreenButton {
    BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_HP_POCKET = 0,
    BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_STATUS_POCKET,
    BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_POKE_BALLS_POCKET,
    BATTLE_BAG_MENU_SCREEN_BUTTON_BATTLE_ITEMS_POCKET,
    BATTLE_BAG_MENU_SCREEN_BUTTON_LAST_USED_ITEM,
    BATTLE_BAG_MENU_SCREEN_BUTTON_CANCEL,
};

enum BattleBagPocketMenuScreenButton {
    BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_1 = 0,
    BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_2,
    BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_3,
    BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_4,
    BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_5,
    BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_6,
    BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_PREV_PAGE,
    BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_NEXT_PAGE,
    BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_CANCEL,
};

enum BattleBagUseItemScreenButton {
    BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_USE = 0,
    BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_CANCEL,
};

enum BattleBagTextId {
    BATTLE_BAG_TEXT_ID_ITEM_HAS_NO_USE = 34,
    BATTLE_BAG_TEXT_ID_CANT_USE_POKE_BALL_TWO_POKEMON = 44,
    BATTLE_BAG_TEXT_ID_CANT_USE_POKE_BALL_NO_ROOM_LEFT,
    BATTLE_BAG_TEXT_ID_EMBARGO_BLOCKING_ITEM_USE,
    BATTLE_BAG_TEXT_ID_CANT_USE_POKE_BALL_POKEMON_HIDDEN,
    BATTLE_BAG_TEXT_ID_CANT_USE_POKE_BALL_POKEMON_SUBSTITUTED,
};

#define TEXT_ID_ROWANS_WARNING 36

#define POCKET_NEXT_PAGE 1
#define POCKET_PREV_PAGE -1

static void BattleBagTask_Tick(SysTask *task, void *taskParam);
static enum BattleBagTaskState BattleBagTask_Initialize(BattleBagTask *battleBagTask);
static enum BattleBagTaskState BattleBagTask_MenuScreen(BattleBagTask *battleBagTask);
static enum BattleBagTaskState BattleBagTask_PocketMenuScreen(BattleBagTask *battleBagTask);
static enum BattleBagTaskState BattleBagTask_UseItemScreen(BattleBagTask *battleBagTask);
static enum BattleBagTaskState BattleBagTask_SetupMenuScreen(BattleBagTask *battleBagTask);
static enum BattleBagTaskState BattleBagTask_SetupPocketMenuScreen(BattleBagTask *battleBagTask);
static enum BattleBagTaskState BattleBagTask_SetupUseItemScreen(BattleBagTask *battleBagTask);
static enum BattleBagTaskState BattleBagTask_ChangePocketPage(BattleBagTask *battleBagTask);
static enum BattleBagTaskState BattleBagTask_ClearErrorMessage(BattleBagTask *battleBagTask);
static enum BattleBagTaskState BattleBagTask_AwaitingTextFinish(BattleBagTask *battleBagTask);
static enum BattleBagTaskState BattleBagTask_AwaitingInput(BattleBagTask *battleBagTask);
static enum BattleBagTaskState BattleBagTask_ScreenTransition(BattleBagTask *battleBagTask);
static enum BattleBagTaskState BattleBagTask_CatchTutorial(BattleBagTask *battleBagTask);
static enum BattleBagTaskState BattleBagTask_Exit(BattleBagTask *battleBagTask);
static BOOL BattleBagTask_FinishTask(SysTask *task, BattleBagTask *battleBagTask);
static void InitializeBackground(BattleBagTask *battleBagTask);
static void CleanupBackground(BgConfig *background);
static void LoadBackgroundData(BattleBagTask *battleBagTask);
static void InitializeMessageLoader(BattleBagTask *battleBagTask);
static void CleanupMessageLoader(BattleBagTask *battleBagTask);
static enum BattleBagTaskState TryUseItem(BattleBagTask *battleBagTask);
static void SetupBackgroundScroll(BattleBagTask *battleBagTask, enum BattleBagScreen screen);
static void ChangeBattleBagScreen(BattleBagTask *battleBagTask, u8 screen);
static BOOL CheckTouchRectIsPressed(BattleBagTask *battleBagTask, const TouchScreenRect *rect);
static void UseBagItem(BattleSystem *battleSys, u16 item, u16 category, u32 heapID);

static const TouchScreenRect menuScreenTouchRects[] = {
    { 0x8, 0x4F, 0x0, 0x7F },
    { 0x50, 0x97, 0x0, 0x7F },
    { 0x8, 0x4F, 0x80, 0xFF },
    { 0x50, 0x97, 0x80, 0xFF },
    { 0x98, 0xBF, 0x0, 0xCF },
    { 0x98, 0xBF, 0xD8, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect pocketMenuScreenTouchRects[] = {
    { 0x8, 0x37, 0x0, 0x7F },
    { 0x8, 0x37, 0x80, 0xFF },
    { 0x38, 0x67, 0x0, 0x7F },
    { 0x38, 0x67, 0x80, 0xFF },
    { 0x68, 0x97, 0x0, 0x7F },
    { 0x68, 0x97, 0x80, 0xFF },
    { 0x98, 0xBF, 0x0, 0x27 },
    { 0x98, 0xBF, 0x28, 0x4F },
    { 0x98, 0xBF, 0xD8, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect useItemScreenTouchRects[] = {
    { 0x98, 0xBF, 0x0, 0xCF },
    { 0x98, 0xBF, 0xD8, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

void BattleBagTask_Start(BattleBagBattleInfo *battleInfo)
{
    BattleBagTask *battleBagTask = SysTask_GetParam(SysTask_StartAndAllocateParam(BattleBagTask_Tick, sizeof(BattleBagTask), 100, battleInfo->heapID));
    memset(battleBagTask, 0, sizeof(BattleBagTask));

    battleBagTask->battleInfo = battleInfo;
    battleBagTask->background = BattleSystem_BGL(battleInfo->battleSystem);
    battleBagTask->palette = BattleSystem_PaletteSys(battleInfo->battleSystem);
    battleBagTask->currentState = BATTLE_BAG_TASK_STATE_INITIALIZE;

    {
        BagCursor *cursor;
        u8 i;

        cursor = BattleSystem_BagCursor(battleInfo->battleSystem);

        for (i = 0; i < BATTLE_POCKET_MAX; i++) {
            BagCursor_GetBattleCategoryPosition(cursor, i, &battleBagTask->battleInfo->pocketCurrentPagePositions[i], &battleBagTask->battleInfo->pocketCurrentPages[i]);
        }

        battleBagTask->battleInfo->lastUsedItem = BagCursor_GetLastUsedBattleItem(cursor);
        battleBagTask->battleInfo->lastUsedItemPocket = BagCursor_GetLastUsedBattleItemCategory(cursor);
    }

    IsLastUsedBattleBagItemUsable(battleBagTask);

    if (BattleSystem_BattleType(battleBagTask->battleInfo->battleSystem) & BATTLE_TYPE_CATCH_TUTORIAL) {
        battleBagTask->battleInfo->isInCatchTutorial = TRUE;
    }
}

static void BattleBagTask_Tick(SysTask *task, void *taskParam)
{
    BattleBagTask *battleBagTask = (BattleBagTask *)taskParam;

    switch (battleBagTask->currentState) {
    case BATTLE_BAG_TASK_STATE_INITIALIZE:
        battleBagTask->currentState = BattleBagTask_Initialize(battleBagTask);
        break;
    case BATTLE_BAG_TASK_STATE_MENU_SCREEN:
        battleBagTask->currentState = BattleBagTask_MenuScreen(battleBagTask);
        break;
    case BATTLE_BAG_TASK_STATE_POCKET_MENU_SCREEN:
        battleBagTask->currentState = BattleBagTask_PocketMenuScreen(battleBagTask);
        break;
    case BATTLE_BAG_TASK_STATE_USE_ITEM_SCREEN:
        battleBagTask->currentState = BattleBagTask_UseItemScreen(battleBagTask);
        break;
    case BATTLE_BAG_TASK_STATE_SETUP_MENU_SCREEN:
        battleBagTask->currentState = BattleBagTask_SetupMenuScreen(battleBagTask);
        break;
    case BATTLE_BAG_TASK_STATE_SETUP_POCKET_MENU_SCREEN:
        battleBagTask->currentState = BattleBagTask_SetupPocketMenuScreen(battleBagTask);
        break;
    case BATTLE_BAG_TASK_STATE_SETUP_USE_ITEM_SCREEN:
        battleBagTask->currentState = BattleBagTask_SetupUseItemScreen(battleBagTask);
        break;
    case BATTLE_BAG_TASK_STATE_CHANGE_POCKET_PAGE:
        battleBagTask->currentState = BattleBagTask_ChangePocketPage(battleBagTask);
        break;
    case BATTLE_BAG_TASK_STATE_CLEAR_ERROR_MESSAGE:
        battleBagTask->currentState = BattleBagTask_ClearErrorMessage(battleBagTask);
        break;
    case BATTLE_BAG_TASK_AWAITING_TEXT_FINISH:
        battleBagTask->currentState = BattleBagTask_AwaitingTextFinish(battleBagTask);
        break;
    case BATTLE_BAG_TASK_STATE_AWAITING_INPUT:
        battleBagTask->currentState = BattleBagTask_AwaitingInput(battleBagTask);
        break;
    case BATTLE_BAG_TASK_STATE_SCREEN_TRANSITION:
        battleBagTask->currentState = BattleBagTask_ScreenTransition(battleBagTask);
        break;
    case BATTLE_BAG_TASK_STATE_CATCH_TUTORIAL:
        battleBagTask->currentState = BattleBagTask_CatchTutorial(battleBagTask);
        break;
    case BATTLE_BAG_TASK_STATE_EXIT:
        battleBagTask->currentState = BattleBagTask_Exit(battleBagTask);
        break;
    case BATTLE_BAG_TASK_STATE_FINISH_TASK:
        if (BattleBagTask_FinishTask(task, battleBagTask) == TRUE) {
            return;
        }
    }

    ov13_02228848(battleBagTask);
    SpriteSystem_DrawSprites(battleBagTask->spriteManager);
}

static enum BattleBagTaskState BattleBagTask_Initialize(BattleBagTask *battleBagTask)
{
    G2S_BlendNone();

    battleBagTask->cursor = MakeBattleSubMenuCursor(battleBagTask->battleInfo->heapID);

    InitializeBackground(battleBagTask);
    LoadBackgroundData(battleBagTask);
    InitializeMessageLoader(battleBagTask);
    Font_InitManager(FONT_SUBSCREEN, battleBagTask->battleInfo->heapID);

    battleBagTask->currentBattlePocket = (u8)BagCursor_GetBattleCurrentCategory(BattleSystem_BagCursor(battleBagTask->battleInfo->battleSystem));

    InitializeBattleBag(battleBagTask);
    ov13_02228924(battleBagTask, battleBagTask->currentScreen);
    ov13_02227288(battleBagTask);
    ov13_02227350(battleBagTask, battleBagTask->currentScreen);
    ov13_02227BDC(battleBagTask);
    ov13_02227E68(battleBagTask, battleBagTask->currentScreen);

    if (battleBagTask->battleInfo->isCursorEnabled != FALSE) {
        SetBattleSubMenuCursorVisibility(battleBagTask->cursor, TRUE);
    }

    SetupBattleBagCursor(battleBagTask, battleBagTask->currentScreen);
    ov13_022280F0(battleBagTask, battleBagTask->currentScreen);
    PaletteData_StartFade(battleBagTask->palette, (0x2 | 0x8), 0xffff, -8, 16, 0, 0);

    if (battleBagTask->battleInfo->isInCatchTutorial == TRUE) {
        return BATTLE_BAG_TASK_STATE_CATCH_TUTORIAL;
    }

    return BATTLE_BAG_TASK_STATE_MENU_SCREEN;
}

static enum BattleBagTaskState BattleBagTask_MenuScreen(BattleBagTask *battleBagTask)
{
    if (PaletteData_GetSelectedBuffersMask(battleBagTask->palette) != 0) {
        return BATTLE_BAG_TASK_STATE_MENU_SCREEN;
    }

    {
        enum BattleBagMenuScreenButton menuButtonPressed = CheckTouchRectIsPressed(battleBagTask, menuScreenTouchRects);

        if (menuButtonPressed == TOUCHSCREEN_INPUT_NONE) {
            menuButtonPressed = BattleSubMenuCursorTick(battleBagTask->cursor);

            if (menuButtonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
                menuButtonPressed = BATTLE_BAG_MENU_SCREEN_BUTTON_CANCEL;
            }
        } else {
            DisableBattleBagCursor(battleBagTask);
        }

        switch (menuButtonPressed) {
        case BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_HP_POCKET:
        case BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_STATUS_POCKET:
        case BATTLE_BAG_MENU_SCREEN_BUTTON_RECOVER_POKE_BALLS_POCKET:
        case BATTLE_BAG_MENU_SCREEN_BUTTON_BATTLE_ITEMS_POCKET:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBagTask->currentBattlePocket = menuButtonPressed;
            battleBagTask->queuedState = BATTLE_BAG_TASK_STATE_SETUP_POCKET_MENU_SCREEN;
            ov13_0222880C(battleBagTask, menuButtonPressed, 0);
            return BATTLE_BAG_TASK_STATE_SCREEN_TRANSITION;
        case BATTLE_BAG_MENU_SCREEN_BUTTON_LAST_USED_ITEM:
            if (battleBagTask->battleInfo->lastUsedItem != ITEM_NONE) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                battleBagTask->currentBattlePocket = battleBagTask->battleInfo->lastUsedItemPocket;
                battleBagTask->queuedState = BATTLE_BAG_TASK_STATE_SETUP_USE_ITEM_SCREEN;
                SetBattlePocketPositionToLastUsedItem(battleBagTask);
                ov13_0222880C(battleBagTask, 4, 0);
                return BATTLE_BAG_TASK_STATE_SCREEN_TRANSITION;
            }
            break;
        case BATTLE_BAG_MENU_SCREEN_BUTTON_CANCEL:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBagTask->battleInfo->selectedBattleBagItem = ITEM_NONE;
            battleBagTask->battleInfo->selectedBattleBagPocket = BATTLE_POCKET_INDEX_NONE;
            ov13_0222880C(battleBagTask, 5, 0);
            return BATTLE_BAG_TASK_STATE_EXIT;
        }
    }

    return BATTLE_BAG_TASK_STATE_MENU_SCREEN;
}

static enum BattleBagTaskState BattleBagTask_PocketMenuScreen(BattleBagTask *battleBagTask)
{
    enum BattleBagPocketMenuScreenButton pocketMenuScreenButtonPressed = CheckTouchRectIsPressed(battleBagTask, pocketMenuScreenTouchRects);

    if (pocketMenuScreenButtonPressed == TOUCHSCREEN_INPUT_NONE) {
        pocketMenuScreenButtonPressed = BattleSubMenuCursorTick(battleBagTask->cursor);

        if (pocketMenuScreenButtonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            pocketMenuScreenButtonPressed = BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_CANCEL;
        }
    } else {
        DisableBattleBagCursor(battleBagTask);
    }

    switch (pocketMenuScreenButtonPressed) {
    case BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_1:
    case BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_2:
    case BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_3:
    case BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_4:
    case BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_5:
    case BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_ITEM_6:
        if (GetBattleBagItem(battleBagTask, pocketMenuScreenButtonPressed) != ITEM_NONE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBagTask->battleInfo->pocketCurrentPagePositions[battleBagTask->currentBattlePocket] = pocketMenuScreenButtonPressed;
            battleBagTask->queuedState = BATTLE_BAG_TASK_STATE_SETUP_USE_ITEM_SCREEN;
            ov13_0222880C(battleBagTask, 6 + pocketMenuScreenButtonPressed, 0);
            return BATTLE_BAG_TASK_STATE_SCREEN_TRANSITION;
        }
        break;
    case BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_PREV_PAGE:
        if (battleBagTask->numBattlePocketPages[battleBagTask->currentBattlePocket] != 0) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBagTask->queuedState = BATTLE_BAG_TASK_STATE_CHANGE_POCKET_PAGE;
            battleBagTask->queuedBattlePocketPageChange = POCKET_PREV_PAGE;
            ov13_0222880C(battleBagTask, 12, 0);
            return BATTLE_BAG_TASK_STATE_SCREEN_TRANSITION;
        }
        break;
    case BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_NEXT_PAGE:
        if (battleBagTask->numBattlePocketPages[battleBagTask->currentBattlePocket] != 0) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBagTask->queuedState = BATTLE_BAG_TASK_STATE_CHANGE_POCKET_PAGE;
            battleBagTask->queuedBattlePocketPageChange = POCKET_NEXT_PAGE;
            ov13_0222880C(battleBagTask, 13, 0);
            return BATTLE_BAG_TASK_STATE_SCREEN_TRANSITION;
        }
        break;
    case BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_CANCEL:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        battleBagTask->queuedState = BATTLE_BAG_TASK_STATE_SETUP_MENU_SCREEN;
        ov13_0222880C(battleBagTask, 14, 0);
        return BATTLE_BAG_TASK_STATE_SCREEN_TRANSITION;
    }

    return BATTLE_BAG_TASK_STATE_POCKET_MENU_SCREEN;
}

static enum BattleBagTaskState BattleBagTask_ChangePocketPage(BattleBagTask *battleBagTask)
{
    s8 currentPage = battleBagTask->battleInfo->pocketCurrentPages[battleBagTask->currentBattlePocket];

    battleBagTask->battleInfo->pocketCurrentPagePositions[battleBagTask->currentBattlePocket] = 0;
    currentPage += battleBagTask->queuedBattlePocketPageChange;

    if (currentPage > battleBagTask->numBattlePocketPages[battleBagTask->currentBattlePocket]) {
        battleBagTask->battleInfo->pocketCurrentPages[battleBagTask->currentBattlePocket] = 0;
    } else if (currentPage < 0) {
        battleBagTask->battleInfo->pocketCurrentPages[battleBagTask->currentBattlePocket] = battleBagTask->numBattlePocketPages[battleBagTask->currentBattlePocket];
    } else {
        battleBagTask->battleInfo->pocketCurrentPages[battleBagTask->currentBattlePocket] = currentPage;
    }

    ov13_02227650(battleBagTask);
    ov13_02227698(battleBagTask);
    ov13_02227E68(battleBagTask, battleBagTask->currentScreen);
    ov13_02228924(battleBagTask, battleBagTask->currentScreen);

    return BATTLE_BAG_TASK_STATE_POCKET_MENU_SCREEN;
}

static enum BattleBagTaskState BattleBagTask_UseItemScreen(BattleBagTask *battleBagTask)
{
    enum BattleBagUseItemScreenButton useItemScreenButtonPressed = CheckTouchRectIsPressed(battleBagTask, useItemScreenTouchRects);

    if (useItemScreenButtonPressed == TOUCHSCREEN_INPUT_NONE) {
        useItemScreenButtonPressed = BattleSubMenuCursorTick(battleBagTask->cursor);

        if (useItemScreenButtonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            useItemScreenButtonPressed = BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_CANCEL;
        }
    } else {
        DisableBattleBagCursor(battleBagTask);
    }

    switch (useItemScreenButtonPressed) {
    case BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_USE:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        battleBagTask->battleInfo->selectedBattleBagItem = GetBattleBagItem(battleBagTask, battleBagTask->battleInfo->pocketCurrentPagePositions[battleBagTask->currentBattlePocket]);
        battleBagTask->battleInfo->selectedBattleBagPocket = battleBagTask->currentBattlePocket;
        ov13_0222880C(battleBagTask, 15, 0);
        return TryUseItem(battleBagTask);
    case BATTLE_BAG_USE_ITEM_SCREEN_BUTTON_CANCEL:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        battleBagTask->queuedState = BATTLE_BAG_TASK_STATE_SETUP_POCKET_MENU_SCREEN;
        ov13_0222880C(battleBagTask, 16, 0);
        return BATTLE_BAG_TASK_STATE_SCREEN_TRANSITION;
    }

    return BATTLE_BAG_TASK_STATE_USE_ITEM_SCREEN;
}

static enum BattleBagTaskState TryUseItem(BattleBagTask *battleBagTask)
{
    BattleBagBattleInfo *battleInfo = battleBagTask->battleInfo;

    if (battleBagTask->currentBattlePocket == ITEM_BATTLE_CATEGORY_BATTLE_ITEMS) {
        int partySlot = GetSelectedPartySlot(battleBagTask);
        u32 itemBattleUse = Item_LoadParam(battleInfo->selectedBattleBagItem, ITEM_PARAM_BATTLE_USE_FUNC, battleInfo->heapID);

        if (battleInfo->embargoRemainingTurns != 0 && battleInfo->selectedBattleBagItem != ITEM_GUARD_SPEC && itemBattleUse != 3) {
            Pokemon *pokemon;
            Strbuf *strbuf;

            pokemon = BattleSystem_PartyPokemon(battleInfo->battleSystem, battleInfo->battler, partySlot);
            strbuf = MessageLoader_GetNewStrbuf(battleBagTask->messageLoader, BATTLE_BAG_TEXT_ID_EMBARGO_BLOCKING_ITEM_USE);

            StringTemplate_SetNickname(battleBagTask->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon));
            StringTemplate_SetMoveName(battleBagTask->stringTemplate, 1, MOVE_EMBARGO);
            StringTemplate_Format(battleBagTask->stringTemplate, battleBagTask->strbuf, strbuf);
            Strbuf_Free(strbuf);

            DisplayBattleBagMessage(battleBagTask);
            battleBagTask->queuedState = BATTLE_BAG_TASK_STATE_CLEAR_ERROR_MESSAGE;

            return BATTLE_BAG_TASK_AWAITING_TEXT_FINISH;
        }

        if (BattleSystem_UseBagItem(battleInfo->battleSystem, battleInfo->battler, partySlot, 0, battleInfo->selectedBattleBagItem) == TRUE) {
            UseBagItem(battleInfo->battleSystem, battleInfo->selectedBattleBagItem, battleBagTask->currentBattlePocket, battleInfo->heapID);
            return BATTLE_BAG_TASK_STATE_EXIT;
        } else if (itemBattleUse == 3) {
            if (!(BattleSystem_BattleType(battleInfo->battleSystem) & BATTLE_TYPE_TRAINER)) {
                UseBagItem(battleInfo->battleSystem, battleInfo->selectedBattleBagItem, battleBagTask->currentBattlePocket, battleInfo->heapID);
                return BATTLE_BAG_TASK_STATE_EXIT;
            } else {
                MessageLoader *messageLoader;
                Strbuf *strbuf;

                messageLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS, battleInfo->heapID);
                strbuf = MessageLoader_GetNewStrbuf(messageLoader, TEXT_ID_ROWANS_WARNING);
                StringTemplate_SetPlayerName(battleBagTask->stringTemplate, 0, battleInfo->trainerInfo);
                StringTemplate_Format(battleBagTask->stringTemplate, battleBagTask->strbuf, strbuf);
                Strbuf_Free(strbuf);
                MessageLoader_Free(messageLoader);
                DisplayBattleBagMessage(battleBagTask);
                battleBagTask->queuedState = BATTLE_BAG_TASK_STATE_CLEAR_ERROR_MESSAGE;
                return BATTLE_BAG_TASK_AWAITING_TEXT_FINISH;
            }
        } else {
            MessageLoader_GetStrbuf(battleBagTask->messageLoader, BATTLE_BAG_TEXT_ID_ITEM_HAS_NO_USE, battleBagTask->strbuf);
            DisplayBattleBagMessage(battleBagTask);
            battleBagTask->queuedState = BATTLE_BAG_TASK_STATE_CLEAR_ERROR_MESSAGE;
            return BATTLE_BAG_TASK_AWAITING_TEXT_FINISH;
        }
    } else if (battleBagTask->currentBattlePocket == ITEM_BATTLE_CATEGORY_POKE_BALLS) {
        if (battleInfo->hasTwoOpponents == TRUE) {
            MessageLoader_GetStrbuf(battleBagTask->messageLoader, BATTLE_BAG_TEXT_ID_CANT_USE_POKE_BALL_TWO_POKEMON, battleBagTask->strbuf);
            DisplayBattleBagMessage(battleBagTask);
            battleBagTask->queuedState = BATTLE_BAG_TASK_STATE_CLEAR_ERROR_MESSAGE;
            return BATTLE_BAG_TASK_AWAITING_TEXT_FINISH;
        }

        if (battleInfo->opponentHidden == TRUE) {
            MessageLoader_GetStrbuf(battleBagTask->messageLoader, BATTLE_BAG_TEXT_ID_CANT_USE_POKE_BALL_POKEMON_HIDDEN, battleBagTask->strbuf);
            DisplayBattleBagMessage(battleBagTask);
            battleBagTask->queuedState = BATTLE_BAG_TASK_STATE_CLEAR_ERROR_MESSAGE;
            return BATTLE_BAG_TASK_AWAITING_TEXT_FINISH;
        }

        if (battleInfo->opponentSubstituted == TRUE) {
            MessageLoader_GetStrbuf(battleBagTask->messageLoader, BATTLE_BAG_TEXT_ID_CANT_USE_POKE_BALL_POKEMON_SUBSTITUTED, battleBagTask->strbuf);
            DisplayBattleBagMessage(battleBagTask);
            battleBagTask->queuedState = BATTLE_BAG_TASK_STATE_CLEAR_ERROR_MESSAGE;
            return BATTLE_BAG_TASK_AWAITING_TEXT_FINISH;
        }

        {
            Party *party = BattleSystem_Party(battleInfo->battleSystem, battleInfo->battler);
            PCBoxes *boxes = ov16_0223E228(battleInfo->battleSystem);

            if (Party_GetCurrentCount(party) == MAX_PARTY_SIZE && PCBoxes_FirstEmptyBox(boxes) == MAX_PC_BOXES) {
                MessageLoader_GetStrbuf(battleBagTask->messageLoader, BATTLE_BAG_TEXT_ID_CANT_USE_POKE_BALL_NO_ROOM_LEFT, battleBagTask->strbuf);
                DisplayBattleBagMessage(battleBagTask);
                battleBagTask->queuedState = BATTLE_BAG_TASK_STATE_CLEAR_ERROR_MESSAGE;
                return BATTLE_BAG_TASK_AWAITING_TEXT_FINISH;
            }
        }
    }

    return BATTLE_BAG_TASK_STATE_EXIT;
}

static enum BattleBagTaskState BattleBagTask_SetupMenuScreen(BattleBagTask *battleBagTask)
{
    ChangeBattleBagScreen(battleBagTask, BATTLE_BAG_SCREEN_MENU);
    return BATTLE_BAG_TASK_STATE_MENU_SCREEN;
}

static enum BattleBagTaskState BattleBagTask_SetupPocketMenuScreen(BattleBagTask *battleBagTask)
{
    ChangeBattleBagScreen(battleBagTask, BATTLE_BAG_SCREEN_POCKET_MENU);
    return BATTLE_BAG_TASK_STATE_POCKET_MENU_SCREEN;
}

static enum BattleBagTaskState BattleBagTask_SetupUseItemScreen(BattleBagTask *battleBagTask)
{
    ChangeBattleBagScreen(battleBagTask, BATTLE_BAG_SCREEN_USE_ITEM);
    return BATTLE_BAG_TASK_STATE_USE_ITEM_SCREEN;
}

static enum BattleBagTaskState BattleBagTask_ClearErrorMessage(BattleBagTask *battleBagTask)
{
    Window_EraseMessageBox(&battleBagTask->messageBoxWindow, FALSE);
    return BATTLE_BAG_TASK_STATE_USE_ITEM_SCREEN;
}

static enum BattleBagTaskState BattleBagTask_AwaitingTextFinish(BattleBagTask *battleBagTask)
{
    if (Text_IsPrinterActive(battleBagTask->textPrinterID) == FALSE) {
        return BATTLE_BAG_TASK_STATE_AWAITING_INPUT;
    }

    return BATTLE_BAG_TASK_AWAITING_TEXT_FINISH;
}

static enum BattleBagTaskState BattleBagTask_AwaitingInput(BattleBagTask *battleBagTask)
{
    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) || TouchScreen_Tapped() == TRUE) {
        return battleBagTask->queuedState;
    }

    return BATTLE_BAG_TASK_STATE_AWAITING_INPUT;
}

static enum BattleBagTaskState BattleBagTask_ScreenTransition(BattleBagTask *battleBagTask)
{
    if (battleBagTask->unk_113E == 2) {
        return battleBagTask->queuedState;
    }

    return BATTLE_BAG_TASK_STATE_SCREEN_TRANSITION;
}

static enum BattleBagTaskState BattleBagTask_Exit(BattleBagTask *battleBagTask)
{
    PaletteData_StartFade(battleBagTask->palette, (0x2 | 0x8), 0xffff, -8, 0, 16, 0);
    return BATTLE_BAG_TASK_STATE_FINISH_TASK;
}

static BOOL BattleBagTask_FinishTask(SysTask *task, BattleBagTask *battleBagTask)
{
    if (PaletteData_GetSelectedBuffersMask(battleBagTask->palette) != 0) {
        return FALSE;
    }

    ov13_02227E08(battleBagTask);
    ov13_02227334(battleBagTask);
    CleanupMessageLoader(battleBagTask);
    CleanupBackground(battleBagTask->background);

    battleBagTask->battleInfo->isCursorEnabled = IsBattleSubMenuCursorVisible(battleBagTask->cursor);

    DeleteBattleSubMenuCursor(battleBagTask->cursor);
    Font_Free(FONT_SUBSCREEN);

    if (battleBagTask->battleInfo->selectedBattleBagItem != ITEM_NONE) {
        BagCursor *cursor;
        u8 i;

        cursor = BattleSystem_BagCursor(battleBagTask->battleInfo->battleSystem);

        for (i = 0; i < BATTLE_POCKET_MAX; i++) {
            BagCursor_SetBattleCategoryPosition(cursor, i, battleBagTask->battleInfo->pocketCurrentPagePositions[i], battleBagTask->battleInfo->pocketCurrentPages[i]);
        }

        BagCursor_SetBattleCurrentCategory(cursor, battleBagTask->currentBattlePocket);
    }

    battleBagTask->battleInfo->battleBagExited = TRUE;
    SysTask_FinishAndFreeParam(task);

    return TRUE;
}

static enum BattleBagTaskState BattleBagTask_CatchTutorial(BattleBagTask *battleBagTask)
{
    if (PaletteData_GetSelectedBuffersMask(battleBagTask->palette) != 0) {
        return BATTLE_BAG_TASK_STATE_CATCH_TUTORIAL;
    }

    switch (battleBagTask->catchTutorialState) {
    case BATTLE_BAG_CATCH_TUTORIAL_STATE_MENU_SCREEN:
        if (ov16_0226DFD4(battleBagTask->unk_38) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBagTask->currentBattlePocket = BATTLE_POCKET_INDEX_POKE_BALLS;
            battleBagTask->queuedState = BATTLE_BAG_TASK_STATE_CATCH_TUTORIAL;
            ov13_0222880C(battleBagTask, 2, 0);
            battleBagTask->catchTutorialTickCount = 0;
            battleBagTask->catchTutorialState++;
            return BATTLE_BAG_TASK_STATE_SCREEN_TRANSITION;
        } else {
            battleBagTask->catchTutorialTickCount++;
        }
        break;
    case BATTLE_BAG_CATCH_TUTORIAL_STATE_SETUP_POCKET_MENU_SCREEN:
        BattleBagTask_SetupPocketMenuScreen(battleBagTask);
        battleBagTask->catchTutorialState++;
        break;
    case BATTLE_BAG_CATCH_TUTORIAL_STATE_POCKET_MENU_SCREEN:
        if (ov16_0226DFD4(battleBagTask->unk_38) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBagTask->battleInfo->pocketCurrentPagePositions[battleBagTask->currentBattlePocket] = 0;
            battleBagTask->queuedState = BATTLE_BAG_TASK_STATE_CATCH_TUTORIAL;
            ov13_0222880C(battleBagTask, 6, 0);
            battleBagTask->catchTutorialTickCount = 0;
            battleBagTask->catchTutorialState++;
            return BATTLE_BAG_TASK_STATE_SCREEN_TRANSITION;
        } else {
            battleBagTask->catchTutorialTickCount++;
        }
        break;
    case BATTLE_BAG_CATCH_TUTORIAL_STATE_SETUP_USE_ITEM_SCREEN:
        BattleBagTask_SetupUseItemScreen(battleBagTask);
        battleBagTask->catchTutorialState++;
        break;
    case BATTLE_BAG_CATCH_TUTORIAL_STATE_USE_ITEM_SCREEN:
        if (ov16_0226DFD4(battleBagTask->unk_38) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            battleBagTask->battleInfo->selectedBattleBagItem = GetBattleBagItem(battleBagTask, battleBagTask->battleInfo->pocketCurrentPagePositions[battleBagTask->currentBattlePocket]);
            battleBagTask->battleInfo->selectedBattleBagPocket = battleBagTask->currentBattlePocket;
            ov13_0222880C(battleBagTask, 15, 0);
            return TryUseItem(battleBagTask);
        } else {
            battleBagTask->catchTutorialTickCount++;
        }
        break;
    }

    return BATTLE_BAG_TASK_STATE_CATCH_TUTORIAL;
}

static void InitializeBackground(BattleBagTask *battleBagTask)
{
    {
        GraphicsModes graphicsMode = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D,
        };

        SetScreenGraphicsModes(&graphicsMode, DS_SCREEN_SUB);
    }

    {
        BgTemplate background = {
            0,
            0,
            0x2000,
            0,
            BG_SCREEN_SIZE_512x512,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xd000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_23,
            3,
            0,
            0,
            FALSE
        };

        Bg_InitFromTemplate(battleBagTask->background, BG_LAYER_SUB_2, &background, BG_TYPE_STATIC);
    }

    {
        BgTemplate background = {
            0,
            0,
            0x800,
            0,
            BG_SCREEN_SIZE_256x256,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            FALSE
        };

        Bg_InitFromTemplate(battleBagTask->background, BG_LAYER_SUB_1, &background, BG_TYPE_STATIC);
        Bg_ClearTilemap(battleBagTask->background, BG_LAYER_SUB_1);
    }

    {
        BgTemplate background = {
            0,
            0,
            0x800,
            0,
            BG_SCREEN_SIZE_256x256,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(battleBagTask->background, BG_LAYER_SUB_0, &background, BG_TYPE_STATIC);
        Bg_ClearTilemap(battleBagTask->background, BG_LAYER_SUB_0);
    }

    Bg_ClearTilesRange(BG_LAYER_SUB_1, 32, 0, battleBagTask->battleInfo->heapID);
    Bg_ClearTilesRange(BG_LAYER_SUB_0, 32, 0, battleBagTask->battleInfo->heapID);
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

static void LoadBackgroundData(BattleBagTask *battleBagTask)
{
    NARC *narc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__B_BAG_GRA, battleBagTask->battleInfo->heapID);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 2, battleBagTask->background, BG_LAYER_SUB_2, 0, 0, 0, battleBagTask->battleInfo->heapID);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 0, battleBagTask->background, BG_LAYER_SUB_2, 0, 0, 0, battleBagTask->battleInfo->heapID);

    {
        NNSG2dScreenData *screenData;
        void *buffer;

        buffer = NARC_AllocAndReadWholeMember(narc, 1, battleBagTask->battleInfo->heapID);
        NNS_G2dGetUnpackedScreenData(buffer, &screenData);
        ov13_02228128(battleBagTask, (u16 *)screenData->rawData);
        Heap_FreeToHeap(buffer);
    }

    NARC_dtor(narc);
    PaletteData_LoadBufferFromFileStart(battleBagTask->palette, NARC_INDEX_BATTLE__GRAPHIC__B_BAG_GRA, 3, battleBagTask->battleInfo->heapID, PLTTBUF_SUB_BG, 0x20 * 12, 0);
    PaletteData_LoadBufferFromFileStart(battleBagTask->palette, NARC_INDEX_GRAPHIC__PL_FONT, 7, battleBagTask->battleInfo->heapID, PLTTBUF_SUB_BG, 0x20, 15 * 16);

    {
        int optionsFrame = ov16_0223EDE0(battleBagTask->battleInfo->battleSystem);

        Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__PL_WINFRAME, GetMessageBoxTilesNARCMember(optionsFrame), battleBagTask->background, BG_LAYER_SUB_0, 1024 - (18 + 12), 0, 0, battleBagTask->battleInfo->heapID);
        PaletteData_LoadBufferFromFileStart(battleBagTask->palette, NARC_INDEX_GRAPHIC__PL_WINFRAME, GetMessageBoxPaletteNARCMember(optionsFrame), battleBagTask->battleInfo->heapID, PLTTBUF_SUB_BG, 0x20, 14 * 16);
    }
}

static void InitializeMessageLoader(BattleBagTask *battleBagTask)
{
    battleBagTask->messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0002, battleBagTask->battleInfo->heapID);
    battleBagTask->unk_0C = sub_0200C440(15, 14, 0, battleBagTask->battleInfo->heapID);
    battleBagTask->stringTemplate = StringTemplate_Default(battleBagTask->battleInfo->heapID);
    battleBagTask->strbuf = Strbuf_Init(512, battleBagTask->battleInfo->heapID);
}

static void CleanupMessageLoader(BattleBagTask *battleBagTask)
{
    MessageLoader_Free(battleBagTask->messageLoader);
    sub_0200C560(battleBagTask->unk_0C);
    StringTemplate_Free(battleBagTask->stringTemplate);
    Strbuf_Free(battleBagTask->strbuf);
}

static void SetupBackgroundScroll(BattleBagTask *battleBagTask, enum BattleBagScreen screen)
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

static void SetupBackgroundTilemap(BattleBagTask *battleBagTask, enum BattleBagScreen screen)
{
    if (screen != BATTLE_BAG_SCREEN_USE_ITEM) {
        return;
    }

    Bg_ChangeTilemapRectPalette(battleBagTask->background, BG_LAYER_SUB_2, 2, 35, 28, 4, 8 + battleBagTask->currentBattlePocket);
    Bg_ChangeTilemapRectPalette(battleBagTask->background, BG_LAYER_SUB_2, 2, 40, 28, 8, 8 + battleBagTask->currentBattlePocket);
}

static void ChangeBattleBagScreen(BattleBagTask *battleBagTask, u8 screen)
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

static BOOL CheckTouchRectIsPressed(BattleBagTask *battleBagTask, const TouchScreenRect *rect)
{
    BOOL isPressed = TouchScreen_CheckRectanglePressed(rect);
    return isPressed;
}

int GetSelectedPartySlot(BattleBagTask *battleBagTask)
{
    int slot = BattleContext_Get(battleBagTask->battleInfo->battleSystem, BattleSystem_Context(battleBagTask->battleInfo->battleSystem), BATTLECTX_SELECTED_PARTY_SLOT, battleBagTask->battleInfo->battler);
    return slot;
}

static void UseBagItem(BattleSystem *battleSys, u16 item, u16 category, u32 heapID)
{
    Bag_TryRemoveItem(BattleSystem_Bag(battleSys), item, 1, heapID);
    Bag_SetLastBattleItemUsed(BattleSystem_BagCursor(battleSys), item, category);
}
