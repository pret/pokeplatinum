#include "overlay023/underground_player_talk.h"

#include <nitro.h>
#include <string.h>

#include "constants/field_base_tiles.h"
#include "generated/trainer_score_events.h"

#include "field/field_system.h"
#include "overlay023/underground_manager.h"
#include "overlay023/underground_menu.h"
#include "overlay023/underground_records.h"
#include "overlay023/underground_text_printer.h"

#include "bg_window.h"
#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_system.h"
#include "game_records.h"
#include "goods.h"
#include "heap.h"
#include "list_menu.h"
#include "math_util.h"
#include "menu.h"
#include "message.h"
#include "render_window.h"
#include "sound_playback.h"
#include "string_list.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "system_vars.h"
#include "trainer_info.h"
#include "unk_0202854C.h"
#include "vars_flags.h"

#include "res/text/bank/underground_answers.h"
#include "res/text/bank/underground_common.h"
#include "res/text/bank/underground_questions.h"

#define MALE_DIALOGUE_START   UndergroundCommon_Text_YouWantedToAskSomething_Male
#define FEMALE_DIALOGUE_START UndergroundCommon_Text_YouWantedToAskSomething_Female

#define MAX_QUESTION (UndergroundQuestions_Text_HolidayActivity + 1)

#define NUM_QUESTION_OPTIONS 4

#define ANSWERS_PER_QUESTION 4

#define ANSWER_INDEX_CANCEL 51

enum TalkMenuState {
    TALK_MENU_STATE_INIT = 1,
    TALK_MENU_STATE_MAIN,
    TALK_MENU_STATE_COMM_ERROR,
    TALK_MENU_STATE_EXIT,
    TALK_MENU_STATE_CASE_EXCHANGE_OFFERED,
    TALK_MENU_STATE_CASE_EXCHANGE_DECLINED,
    TALK_MENU_STATE_EXIT_AFTER_TEXT,
    TALK_MENU_STATE_LINK_EXITED,
    TALK_MENU_STATE_START_CASE_EXCHANGE,
    TALK_MENU_STATE_VIEW_LINK_CASE,
    TALK_MENU_STATE_END_CASE_EXCHANGE,
    TALK_MENU_STATE_NOTIFY_LINK_CASE_EXCHANGE_ENDED,
    TALK_MENU_STATE_WAIT_FOR_LINK_CASE_EXCHANGE_END,
    TALK_MENU_STATE_DO_SOMETHING_ELSE_PROMPT,
    TALK_MENU_STATE_DO_SOMETHING_ELSE_PROMPT_AFTER_TEXT,
    TALK_MENU_STATE_OPEN_GIFT_MENU,
    TALK_MENU_STATE_SELECT_GIFT,
    TALK_MENU_STATE_GIFT_SELECTED,
    TALK_MENU_STATE_OPEN_CONFIRM_GIFT_MENU,
    TALK_MENU_STATE_CONFIRM_GIFT,
    TALK_MENU_STATE_GIFT_OFFERED,
    TALK_MENU_STATE_GIFT_ACCEPTED,
    TALK_MENU_STATE_LINK_BAG_FULL,
    TALK_MENU_STATE_GIFT_REJECTED,
    TALK_MENU_STATE_GIFT_ACCEPTED_FRAME_DELAY,
    TALK_MENU_STATE_WAIT_FOR_LINK_CONFIRM,
    TALK_MENU_STATE_START_QUESTIONS,
    TALK_MENU_STATE_INIT_QUESTIONS_MENU,
    TALK_MENU_STATE_SELECT_QUESTION,
    TALK_MENU_STATE_PRINT_SELECTED_QUESTION,
    TALK_MENU_STATE_WAIT_FOR_LINK_ANSWER,
    TALK_MENU_STATE_LINK_ANSWERED,
    TALK_MENU_STATE_WAIT_FOR_LINK_TEXT,
    TALK_MENU_STATE_INIT_ANSWERS_MENU,
    TALK_MENU_STATE_SELECT_ANSWER,
    TALK_MENU_STATE_ANSWER_SELECTED,
    TALK_MENU_STATE_WAIT_FOR_CONFIRM,
    TALK_MENU_STATE_WAIT_FOR_LINK_RECEIVE_ANSWER,
    TALK_MENU_STATE_WAIT_FOR_LINK_END_QUESTIONS,
    TALK_MENU_STATE_REQUEST_RETURN_TO_MAIN,
    TALK_MENU_STATE_WAIT_FOR_LINK_RETURN_TO_MAIN,
};

enum ResponseMenuState {
    RESPONSE_MENU_STATE_MAIN = 2,
    RESPONSE_MENU_STATE_EXIT = 4,
    RESPONSE_MENU_STATE_PRINT_EXCHANGE_CASE_PROMPT,
    RESPONSE_MENU_STATE_OPEN_CONFIRM_EXCHANGE_MENU,
    RESPONSE_MENU_STATE_CONFIRM_EXCHANGE,
    RESPONSE_MENU_STATE_PRINT_EXIT_TEXT,
    RESPONSE_MENU_STATE_EXIT_AFTER_TEXT,
    RESPONSE_MENU_STATE_START_CASE_EXCHANGE,
    RESPONSE_MENU_STATE_VIEW_LINK_CASE,
    RESPONSE_MENU_STATE_END_CASE_EXCHANGE,
    RESPONSE_MENU_STATE_NOTIFY_LINK_CASE_EXCHANGE_ENDED,
    RESPONSE_MENU_STATE_WAIT_FOR_LINK_CASE_EXCHANGE_END,
    RESPONSE_MENU_STATE_RETURN_TO_MAIN,
    RESPONSE_MENU_STATE_REFUSE_TO_ANSWER,
    RESPONSE_MENU_STATE_RECEIVE_GIFT_OFFER,
    RESPONSE_MENU_STATE_GIFT_OFFERED,
    RESPONSE_MENU_STATE_GIFT_ACCEPTED,
    RESPONSE_MENU_STATE_GIFT_ACCEPTED_FRAME_DELAY,
    RESPONSE_MENU_STATE_END_GIFT,
    RESPONSE_MENU_STATE_START_QUESTIONS,
    RESPONSE_MENU_STATE_WAIT_FOR_LINK_QUESTION,
    RESPONSE_MENU_STATE_INIT_ANSWERS_MENU,
    RESPONSE_MENU_STATE_SELECT_ANSWER,
    RESPONSE_MENU_STATE_WAIT_FOR_LINK_ANSWER,
    RESPONSE_MENU_STATE_LINK_ANSWERED,
    RESPONSE_MENU_STATE_PRINT_I_SEE,
    RESPONSE_MENU_STATE_WAIT_FOR_PRINT,
    RESPONSE_MENU_STATE_WAIT_FOR_LINK_END_QUESTIONS,
    RESPONSE_MENU_STATE_WAIT_FOR_PRINT_2,
    RESPONSE_MENU_STATE_WAIT_FOR_LINK_RETURN_TO_MAIN,
};

enum StateRequest {
    TALK_RETURN_TO_MAIN_AFTER_CASE_EXCHANGE = 13,
    RESPONSE_RETURN_TO_MAIN_AFTER_CASE_EXCHANGE,
    TALK_RETURN_TO_MAIN_AFTER_GIFT,
    TALK_ANSWER_RECEIVED = 37,
    TALK_RETURN_TO_MAIN_AFTER_REJECTED_QUESTION = 42,
    END_QUESTIONS = 100,
    RETURN_TO_MAIN_AFTER_QUESTIONS,
};

enum TalkMessageType {
    MESSAGE_TYPE_QUESTION = 0,
    MESSAGE_TYPE_RESPONSE_ANSWER,
    MESSAGE_TYPE_TALK_ANSWER,
};

typedef struct TalkStateChangeRequest {
    u8 targetNetID;
    u8 newState;
} TalkStateChangeRequest;

typedef struct TalkMessage {
    u8 index;
    u8 recipientNetID;
    u8 type;
} TalkMessage;

typedef struct Gift {
    u8 recipientNetID;
    u8 dummy;
    u8 goodID;
} Gift;

typedef struct TalkMenu {
    SysTask *sysTask;
    UndergroundMenu *giftMenu;
    FieldSystem *fieldSystem;
    Window window;
    StringList *menuOptions;
    ListMenu *listMenu;
    Menu *menu;
    Gift sentGift;
    ExitCallback exitCallback;
    u16 linkNetID;
    u8 questionIndex;
    u8 linkAnswerIndex;
    u8 unused[3];
    u8 state;
    u8 linkRequestedState;
    u16 cursorPos;
} TalkMenu;

typedef void (*SelectedOptionCallback)(TalkMenu *menu);

typedef struct ResponseMenu {
    SysTask *sysTask;
    FieldSystem *fieldSystem;
    Window window;
    StringList *menuOptions;
    ListMenu *listMenu;
    Menu *menu;
    Gift receivedGift;
    ExitCallback exitCallback;
    u16 linkNetID;
    u8 linkQuestionIndex;
    u8 answerIndex;
    u8 linkAnswerIndex;
    u8 unused[3];
    u8 state;
    u8 linkRequestedState;
    u16 cursorPos;
} ResponseMenu;

static void UndergroundTalk_Main(SysTask *sysTask, void *data);
static void UndergroundTalk_CloseTalkMenu(SysTask *sysTask, TalkMenu *menu);
static void UndergroundTalk_OfferExchangeTrainerCases(TalkMenu *menu);
static void UndergroundTalk_StartAskingQuestions(TalkMenu *menu);
static void UndergroundTalk_OpenGiveGiftMenu(TalkMenu *menu);
static void UndergroundTalk_CancelTalk(TalkMenu *menu);
static void UndergroundTalkResponse_CloseTalkMenu(SysTask *sysTask, ResponseMenu *menu);
static void UndergroundTalk_UpdateCursorPos(TalkMenu *menu);

static TalkMenu *sCurrentTalkMenu = NULL;
static ResponseMenu *sCurrentResponseMenu = NULL;

static const struct {
    u32 bankEntry;
    u32 callback;
} sTalkOptions[] = {
    { UndergroundCommon_Text_Greet, (u32)UndergroundTalk_OfferExchangeTrainerCases },
    { UndergroundCommon_Text_Question, (u32)UndergroundTalk_StartAskingQuestions },
    { UndergroundCommon_Text_GiveGoods, (u32)UndergroundTalk_OpenGiveGiftMenu },
    { UndergroundCommon_Text_Exit, (u32)UndergroundTalk_CancelTalk }
};

static const ListMenuTemplate sListMenuTemplate = {
    .choices = NULL,
    .cursorCallback = NULL,
    .printCallback = NULL,
    .window = NULL,
    .count = NELEMS(sTalkOptions),
    .maxDisplay = NELEMS(sTalkOptions),
    .headerXOffset = 0,
    .textXOffset = 8,
    .cursorXOffset = 0,
    .yOffset = 0,
    .textColorFg = 1,
    .textColorBg = 15,
    .textColorShadow = 2,
    .letterSpacing = 0,
    .lineSpacing = 16,
    .pagerMode = PAGER_MODE_LEFT_RIGHT_PAD,
    .fontID = FONT_SYSTEM,
    .cursorType = 0,
    .parent = NULL,
};

static const WindowTemplate sYesNoWindowTemplate = {
    .bgLayer = BG_LAYER_MAIN_3,
    .tilemapLeft = 25,
    .tilemapTop = 13,
    .width = 6,
    .height = 4,
    .palette = 13,
    .baseTile = 543,
};

static void UndergroundTalkResponse_RequestLinkTalkStateUpdate(ResponseMenu *menu, int newState)
{
    TalkStateChangeRequest req = {
        .targetNetID = menu->linkNetID,
        .newState = newState
    };

    CommSys_SendDataFixedSize(74, &req);
}

static void UndergroundTalk_RequestLinkTalkStateUpdate(TalkMenu *menu, int newState)
{
    TalkStateChangeRequest req = {
        .targetNetID = menu->linkNetID,
        .newState = newState
    };

    CommSys_SendDataFixedSize(73, &req);
}

static void UndergroundTalk_PrintMessage(TalkMenu *menu, int bankEntry)
{
    if (bankEntry >= MALE_DIALOGUE_START) {
        TrainerInfo *trainerInfo = CommInfo_TrainerInfo(menu->linkNetID);

        if (TrainerInfo_Gender(trainerInfo) == GENDER_FEMALE) {
            bankEntry = bankEntry - MALE_DIALOGUE_START + FEMALE_DIALOGUE_START;
        }
    }

    UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), bankEntry, FALSE, NULL);
}

static void UndergroundTalkResponse_PrintMessage(ResponseMenu *menu, int bankEntry)
{
    if (bankEntry >= MALE_DIALOGUE_START) {
        TrainerInfo *trainerInfo = CommInfo_TrainerInfo(menu->linkNetID);

        if (TrainerInfo_Gender(trainerInfo) == GENDER_FEMALE) {
            bankEntry = bankEntry - MALE_DIALOGUE_START + FEMALE_DIALOGUE_START;
        }
    }

    UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), bankEntry, FALSE, NULL);
}

void UndergroundTalk_Start(int linkNetID, ExitCallback exitCallback, FieldSystem *fieldSystem)
{
    TalkMenu *menu = Heap_Alloc(HEAP_ID_UNDERGROUND, sizeof(TalkMenu));
    MI_CpuFill8(menu, 0, sizeof(TalkMenu));

    sCurrentTalkMenu = menu;

    menu->fieldSystem = fieldSystem;
    menu->exitCallback = exitCallback;
    menu->linkNetID = linkNetID;
    menu->state = TALK_MENU_STATE_INIT;
    menu->linkRequestedState = 0;
    menu->sentGift.dummy = 0;
    menu->sentGift.goodID = 0;
    menu->sentGift.recipientNetID = menu->linkNetID;

    Sound_PlayEffect(SEQ_SE_CONFIRM);
    UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_HeyThere);

    menu->sysTask = SysTask_Start(UndergroundTalk_Main, menu, 10000);
}

static void UndergroundTalk_InitTalkMenu(TalkMenu *menu)
{
    menu->menuOptions = StringList_New(NELEMS(sTalkOptions), HEAP_ID_FIELD1);

    Window_Add(menu->fieldSystem->bgConfig, &menu->window, BG_LAYER_MAIN_3, 1, 1, 10, NELEMS(sTalkOptions) * 2, 13, BASE_TILE_MESSAGE_WINDOW - 10 * NELEMS(sTalkOptions) * 2);
    Window_DrawStandardFrame(&menu->window, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 11);

    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_COMMON, HEAP_ID_FIELD1);

    for (int i = 0; i < NELEMS(sTalkOptions); i++) {
        StringList_AddFromMessageBank(menu->menuOptions, loader, sTalkOptions[i].bankEntry, sTalkOptions[i].callback);
    }

    MessageLoader_Free(loader);

    ListMenuTemplate template;
    MI_CpuCopy8(UndergroundTextPrinter_GetListMenuTemplate(), &template, sizeof(ListMenuTemplate));

    template.choices = menu->menuOptions;
    template.window = &menu->window;
    template.count = NELEMS(sTalkOptions);
    template.maxDisplay = NELEMS(sTalkOptions);

    menu->cursorPos = 0;
    menu->listMenu = ListMenu_New(&template, 0, 0, HEAP_ID_FIELD1);

    Window_CopyToVRAM(&menu->window);
    CommPlayerMan_PauseFieldSystem();
}

static void UndergroundTalk_Exit(SysTask *sysTask, TalkMenu *menu)
{
    if (menu->menu) {
        Menu_DestroyForExit(menu->menu, HEAP_ID_FIELD1);
        menu->menu = NULL;
    }

    if (menu->giftMenu) {
        UndergroundMenu_Exit(menu->giftMenu, LIST_CANCEL);
        UndergroundMan_ClearCurrentSysTaskInfo();
    }

    UndergroundTalk_CloseTalkMenu(sysTask, menu);

    if (menu->exitCallback) {
        menu->exitCallback(0);
    }

    Heap_Free(menu);
    CommPlayerMan_ResumeFieldSystem();
    SysTask_Done(sysTask);

    sCurrentTalkMenu = NULL;
}

static void UndergroundTalk_InitQuestionsMenu(TalkMenu *menu)
{
    menu->menuOptions = StringList_New(NUM_QUESTION_OPTIONS, HEAP_ID_FIELD1);

    Window_Add(menu->fieldSystem->bgConfig, &menu->window, BG_LAYER_MAIN_3, 1, 1, 16, NUM_QUESTION_OPTIONS * 2, 13, BASE_TILE_MESSAGE_WINDOW - 16 * NUM_QUESTION_OPTIONS * 2);
    Window_DrawStandardFrame(&menu->window, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 11);

    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_QUESTIONS, HEAP_ID_FIELD1);

    u8 questions[NUM_QUESTION_OPTIONS];
    for (int i = 0; i < NUM_QUESTION_OPTIONS; i++) {
        u32 questionIndex = MTRNG_Next() % MAX_QUESTION;

        int j;
        for (j = 0; j < i; j++) {
            if (questions[j] == questionIndex) {
                break;
            }
        }

        if (j == i) {
            questions[i] = questionIndex;
            StringList_AddFromMessageBank(menu->menuOptions, loader, questionIndex, questionIndex);
        } else {
            i--;
        }
    }

    MessageLoader_Free(loader);

    ListMenuTemplate template = sListMenuTemplate;
    template.choices = menu->menuOptions;
    template.window = &menu->window;

    menu->cursorPos = 0;
    menu->listMenu = ListMenu_New(&template, 0, 0, HEAP_ID_FIELD1);

    Window_CopyToVRAM(&menu->window);
}

static BOOL UndergroundTalk_HandleQuestionsMenu(SysTask *sysTask, void *data)
{
    TalkMenu *menu = data;

    u32 input = ListMenu_ProcessInput(menu->listMenu);
    UndergroundTalk_UpdateCursorPos(menu);

    if (CommSys_CheckError()) {
        menu->state = TALK_MENU_STATE_COMM_ERROR;
        UndergroundTalk_CloseTalkMenu(sysTask, menu);
        return TRUE;
    }

    switch (input) {
    case LIST_CANCEL:
    case LIST_NOTHING_CHOSEN:
        return FALSE;
        break;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        TalkMessage message;

        message.index = input;
        message.recipientNetID = menu->linkNetID;
        message.type = MESSAGE_TYPE_QUESTION;

        CommSys_SendDataFixedSize(79, &message);

        menu->questionIndex = input;
        menu->state = TALK_MENU_STATE_PRINT_SELECTED_QUESTION;

        UndergroundTalk_CloseTalkMenu(sysTask, menu);
        break;
    }

    return TRUE;
}

static void UndergroundTalk_InitAnswersMenu(TalkMenu *menu)
{
    menu->menuOptions = StringList_New(ANSWERS_PER_QUESTION, HEAP_ID_FIELD1);

    Window_Add(menu->fieldSystem->bgConfig, &menu->window, BG_LAYER_MAIN_3, 1, 1, 16, ANSWERS_PER_QUESTION * 2, 13, BASE_TILE_MESSAGE_WINDOW - 16 * ANSWERS_PER_QUESTION * 2);
    Window_DrawStandardFrame(&menu->window, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 11);

    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_ANSWERS, HEAP_ID_FIELD1);

    for (int i = 0; i < ANSWERS_PER_QUESTION; i++) {
        u32 answerIndex = menu->questionIndex * ANSWERS_PER_QUESTION + i;

        StringList_AddFromMessageBank(menu->menuOptions, loader, answerIndex, i);
    }

    MessageLoader_Free(loader);

    ListMenuTemplate template = sListMenuTemplate;
    template.choices = menu->menuOptions;
    template.window = &menu->window;

    menu->cursorPos = 0;
    menu->listMenu = ListMenu_New(&template, 0, 0, HEAP_ID_FIELD1);

    Window_CopyToVRAM(&menu->window);
}

static BOOL UndergroundTalk_HandleAnswersMenu(SysTask *sysTask, void *data)
{
    TalkMenu *menu = data;

    u32 input = ListMenu_ProcessInput(menu->listMenu);
    UndergroundTalk_UpdateCursorPos(menu);

    if (CommSys_CheckError()) {
        UndergroundTalk_CloseTalkMenu(sysTask, menu);
        menu->state = TALK_MENU_STATE_COMM_ERROR;
        return TRUE;
    }

    switch (input) {
    case LIST_NOTHING_CHOSEN:
    case LIST_CANCEL:
        return FALSE;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        UndergroundTalk_CloseTalkMenu(sysTask, menu);
        TalkMessage message;
        message.index = menu->questionIndex * ANSWERS_PER_QUESTION + input;
        message.recipientNetID = menu->linkNetID;
        message.type = MESSAGE_TYPE_TALK_ANSWER;
        CommSys_SendDataFixedSize(79, &message);
        UndergroundTextPrinter_SetUndergroundAnswer(UndergroundMan_GetCommonTextPrinter(), message.index);
        UndergroundTextPrinter_SetUndergroundAnswerWithIndex(UndergroundMan_GetCommonTextPrinter(), 6, menu->linkAnswerIndex);

        if (menu->linkAnswerIndex == message.index) {
            UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_ResponseSameAnswer_Male);
        } else {
            UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_ResponseAnswer_Male);
        }

        menu->state = TALK_MENU_STATE_ANSWER_SELECTED;
        UndergroundTalk_RequestLinkTalkStateUpdate(menu, RESPONSE_MENU_STATE_LINK_ANSWERED);
        break;
    }

    return TRUE;
}

static void UndergroundTalk_RemoveGiftedGood(TalkMenu *menu)
{
    UndergroundTextPrinter_SetPlayerNameIndex0(UndergroundMan_GetCommonTextPrinter(), CommInfo_TrainerInfo(menu->linkNetID));
    UndergroundTextPrinter_SetUndergroundGoodsName(UndergroundMan_GetCommonTextPrinter(), menu->sentGift.goodID);
    UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_GiftWasGiven, FALSE, NULL);

    UndergroundRecord_IncrementGiftsGiven(SaveData_GetUndergroundRecord(FieldSystem_GetSaveData(menu->fieldSystem)));
    UndergroundMenu_RemoveSelectedGoodBag(menu->sentGift.goodID);
    Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);
}

static void UndergroundTalk_PrintGiftConfirmPrompt(TalkMenu *unused, int goodID)
{
    UndergroundTextPrinter_SetUndergroundGoodsName(UndergroundMan_GetCommonTextPrinter(), goodID);
    UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_YouWantToGiveMeGiftPrompt, FALSE, NULL);
}

static void UndergroundTalk_HandleGiftConfirmMenu(SysTask *unused, TalkMenu *menu)
{
    u32 input = Menu_ProcessInputAndHandleExit(menu->menu, HEAP_ID_FIELD1);

    if (input == MENU_NOTHING_CHOSEN) {
        return;
    }

    if (input == 0) {
        menu->sentGift.recipientNetID = menu->linkNetID;
        CommSys_SendDataFixedSize(77, &menu->sentGift);
        menu->state = TALK_MENU_STATE_GIFT_OFFERED;
    } else {
        UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_NextTimeWillBeFine);
        menu->state = TALK_MENU_STATE_DO_SOMETHING_ELSE_PROMPT_AFTER_TEXT;
    }

    menu->menu = NULL;
}

static BOOL UndergroundTalk_HandleTalkMenu(SysTask *sysTask, void *data)
{
    TalkMenu *menu = data;
    u32 input = ListMenu_ProcessInput(menu->listMenu);
    UndergroundTalk_UpdateCursorPos(menu);

    if (CommSys_CheckError()) {
        input = LIST_CANCEL;
    }

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        return FALSE;
    case LIST_CANCEL:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        UndergroundTalk_CancelTalk(menu);
        UndergroundTalk_CloseTalkMenu(sysTask, menu);
        break;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        SelectedOptionCallback callback = (SelectedOptionCallback)input;
        callback(menu);

        UndergroundTalk_CloseTalkMenu(sysTask, menu);
        break;
    }

    return TRUE;
}

static void UndergroundTalk_CloseTalkMenu(SysTask *unused, TalkMenu *menu)
{
    if (menu->menuOptions) {
        Window_EraseStandardFrame(&menu->window, TRUE);
        ListMenu_Free(menu->listMenu, NULL, NULL);
        Window_ClearAndCopyToVRAM(&menu->window);
        Window_Remove(&menu->window);
        StringList_Free(menu->menuOptions);
        menu->menuOptions = NULL;
    }
}

static void UndergroundTalk_OfferExchangeTrainerCases(TalkMenu *menu)
{
    UndergroundTalk_RequestLinkTalkStateUpdate(menu, RESPONSE_MENU_STATE_PRINT_EXCHANGE_CASE_PROMPT);
    UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_IllShowTrainerCaseAsWell);

    menu->state = TALK_MENU_STATE_CASE_EXCHANGE_OFFERED;
}

static void UndergroundTalk_StartAskingQuestions(TalkMenu *menu)
{
    UndergroundTalk_RequestLinkTalkStateUpdate(menu, RESPONSE_MENU_STATE_START_QUESTIONS);
    menu->state = TALK_MENU_STATE_START_QUESTIONS;
}

static void UndergroundTalk_OpenGiveGiftMenu(TalkMenu *menu)
{
    menu->state = TALK_MENU_STATE_OPEN_GIFT_MENU;
}

static void UndergroundTalk_GiftSelectedCallback(int goodID)
{
    sCurrentTalkMenu->sentGift.goodID = goodID;
    sCurrentTalkMenu->state = TALK_MENU_STATE_GIFT_SELECTED;
}

static void UndergroundTalk_ExitCaseExchangeCallback(void *data)
{
    TalkMenu *menu = data;
    menu->state = TALK_MENU_STATE_END_CASE_EXCHANGE;
}

static void UndergroundTalk_Main(SysTask *sysTask, void *data)
{
    TalkMenu *menu = data;

    if (menu->state != TALK_MENU_STATE_SELECT_GIFT) {
        if (!CommSys_IsPlayerConnected(menu->linkNetID)) {
            menu->giftMenu = NULL;
            UndergroundRecords_ForceExitTrainerCase();
            menu->state = TALK_MENU_STATE_EXIT;
        }
    }

    switch (menu->state) {
    case TALK_MENU_STATE_INIT:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            UndergroundTalk_InitTalkMenu(menu);
            menu->state++;
        }
        break;
    case TALK_MENU_STATE_MAIN:
        UndergroundTalk_HandleTalkMenu(sysTask, menu);
        break;
    case TALK_MENU_STATE_COMM_ERROR:
    case TALK_MENU_STATE_EXIT:
        UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
        UndergroundTalk_Exit(sysTask, menu);
        break;
    case TALK_MENU_STATE_CASE_EXCHANGE_OFFERED:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            if (menu->linkRequestedState == TALK_MENU_STATE_START_CASE_EXCHANGE) {
                menu->state = TALK_MENU_STATE_START_CASE_EXCHANGE;
                UndergroundRecords_SendRecord(menu->linkNetID);
            }

            if (menu->linkRequestedState == TALK_MENU_STATE_CASE_EXCHANGE_DECLINED) {
                menu->state = TALK_MENU_STATE_CASE_EXCHANGE_DECLINED;
            }
        }
        break;
    case TALK_MENU_STATE_LINK_EXITED:
        UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_OkSeeYou);
        menu->state = TALK_MENU_STATE_EXIT_AFTER_TEXT;
        break;
    case TALK_MENU_STATE_CASE_EXCHANGE_DECLINED:
        UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_CantFindMyTrainerCase);
        menu->state = TALK_MENU_STATE_EXIT_AFTER_TEXT;
        break;
    case TALK_MENU_STATE_EXIT_AFTER_TEXT:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            if (JOY_NEW(PAD_BUTTON_A)) {
                menu->state = TALK_MENU_STATE_EXIT;
            }
        }
        break;
    case TALK_MENU_STATE_START_CASE_EXCHANGE:
        if (UndergroundRecords_IsLinkRecordReceived()) {
            UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
            UndergroundRecords_ShowTrainerCase(menu->fieldSystem->bgConfig, CommInfo_TrainerInfo(menu->linkNetID), UndergroundTalk_ExitCaseExchangeCallback, menu, FALSE);
            menu->state = TALK_MENU_STATE_VIEW_LINK_CASE;
        }
        break;
    case TALK_MENU_STATE_VIEW_LINK_CASE:
        break;
    case TALK_MENU_STATE_END_CASE_EXCHANGE:
        GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(menu->fieldSystem->saveData), TRAINER_SCORE_EVENT_UNDERGROUND_GREET_PLAYER);
        UndergroundRecords_ClearLinkRecordReceived();
        UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_DontBeAStranger);
        menu->state = TALK_MENU_STATE_NOTIFY_LINK_CASE_EXCHANGE_ENDED;
        break;
    case TALK_MENU_STATE_NOTIFY_LINK_CASE_EXCHANGE_ENDED:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            UndergroundTalk_RequestLinkTalkStateUpdate(menu, RESPONSE_RETURN_TO_MAIN_AFTER_CASE_EXCHANGE);
            menu->state = TALK_MENU_STATE_WAIT_FOR_LINK_CASE_EXCHANGE_END;
        }
        break;
    case TALK_MENU_STATE_WAIT_FOR_LINK_CASE_EXCHANGE_END:
        if (menu->linkRequestedState == TALK_RETURN_TO_MAIN_AFTER_CASE_EXCHANGE) {
            menu->state = TALK_MENU_STATE_DO_SOMETHING_ELSE_PROMPT;
        }
        break;
    case TALK_MENU_STATE_DO_SOMETHING_ELSE_PROMPT:
        UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_DoSomethingElsePrompt);
        menu->state = TALK_MENU_STATE_INIT;
        break;
    case TALK_MENU_STATE_DO_SOMETHING_ELSE_PROMPT_AFTER_TEXT:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            if (JOY_NEW(PAD_BUTTON_A)) {
                menu->state = TALK_MENU_STATE_DO_SOMETHING_ELSE_PROMPT;
            }
        }
        break;
    case TALK_MENU_STATE_OPEN_GIFT_MENU:
        menu->giftMenu = UndergroundMenu_StartGiftMenu(UndergroundTalk_GiftSelectedCallback, menu->fieldSystem);
        menu->state = TALK_MENU_STATE_SELECT_GIFT;
        break;
    case TALK_MENU_STATE_SELECT_GIFT:
        break;
    case TALK_MENU_STATE_GIFT_SELECTED:
        menu->giftMenu = NULL;

        if (sCurrentTalkMenu->sentGift.goodID == 0) {
            UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_NextTimeWillBeFine);
            menu->state = TALK_MENU_STATE_DO_SOMETHING_ELSE_PROMPT_AFTER_TEXT;
        } else if (sub_02032FC0(menu->linkNetID)) {
            UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_IllPass);
            menu->state = TALK_MENU_STATE_DO_SOMETHING_ELSE_PROMPT_AFTER_TEXT;
        } else if (!sub_02028810(menu->fieldSystem->saveData)) {
            UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_IllPass);
            menu->state = TALK_MENU_STATE_DO_SOMETHING_ELSE_PROMPT_AFTER_TEXT;
        } else if (Good_IsUngiftable(sCurrentTalkMenu->sentGift.goodID)) {
            UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_CantAcceptImportant);
            menu->state = TALK_MENU_STATE_DO_SOMETHING_ELSE_PROMPT_AFTER_TEXT;
        } else {
            UndergroundTalk_PrintGiftConfirmPrompt(menu, sCurrentTalkMenu->sentGift.goodID);
            menu->state = TALK_MENU_STATE_OPEN_CONFIRM_GIFT_MENU;
        }
        break;
    case TALK_MENU_STATE_OPEN_CONFIRM_GIFT_MENU:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            menu->menu = Menu_MakeYesNoChoice(menu->fieldSystem->bgConfig, &sYesNoWindowTemplate, BASE_TILE_STANDARD_WINDOW_FRAME, 11, HEAP_ID_FIELD1);
            menu->state = TALK_MENU_STATE_CONFIRM_GIFT;

            if (menu->linkRequestedState != TALK_MENU_STATE_LINK_EXITED) {
                menu->linkRequestedState = TALK_MENU_STATE_INIT;
            }
        }
        break;
    case TALK_MENU_STATE_CONFIRM_GIFT:
        UndergroundTalk_HandleGiftConfirmMenu(sysTask, menu);
        break;
    case TALK_MENU_STATE_GIFT_OFFERED:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            if (menu->linkRequestedState == TALK_MENU_STATE_GIFT_ACCEPTED) {
                menu->state = TALK_MENU_STATE_GIFT_ACCEPTED;
            }

            if (menu->linkRequestedState == TALK_MENU_STATE_GIFT_REJECTED) {
                menu->state = TALK_MENU_STATE_GIFT_REJECTED;
            }

            if (menu->linkRequestedState == TALK_MENU_STATE_LINK_BAG_FULL) {
                menu->state = TALK_MENU_STATE_LINK_BAG_FULL;
            }
        }
        break;
    case TALK_MENU_STATE_LINK_BAG_FULL:
        UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_LinkDoesntHaveRoom);
        menu->state = TALK_MENU_STATE_WAIT_FOR_LINK_CONFIRM;
        break;
    case TALK_MENU_STATE_GIFT_REJECTED:
        UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_ICantTakeThatFromYou);
        menu->state = TALK_MENU_STATE_WAIT_FOR_LINK_CONFIRM;
        break;
    case TALK_MENU_STATE_GIFT_ACCEPTED:
        UndergroundTalk_RemoveGiftedGood(menu);
        VarsFlags *varsFlags = SaveData_GetVarsFlags(menu->fieldSystem->saveData);
        SystemVars_SetUndergroundItemsGivenAway(varsFlags, SystemVars_GetUndergroundItemsGivenAway(varsFlags) + 1);

        GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(menu->fieldSystem->saveData), TRAINER_SCORE_EVENT_UNDERGROUND_GIVE_PLAYER_GOODS);
        menu->state = TALK_MENU_STATE_GIFT_ACCEPTED_FRAME_DELAY;
        break;
    case TALK_MENU_STATE_GIFT_ACCEPTED_FRAME_DELAY:
        menu->state = TALK_MENU_STATE_WAIT_FOR_LINK_CONFIRM;
        break;
    case TALK_MENU_STATE_WAIT_FOR_LINK_CONFIRM:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            if (menu->linkRequestedState == TALK_RETURN_TO_MAIN_AFTER_GIFT) {
                menu->state = TALK_MENU_STATE_DO_SOMETHING_ELSE_PROMPT;
            }
        }
        break;
    case TALK_MENU_STATE_START_QUESTIONS:
        UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_YouWantedToAskSomething_Male);
        menu->state = TALK_MENU_STATE_INIT_QUESTIONS_MENU;
        break;
    case TALK_MENU_STATE_INIT_QUESTIONS_MENU:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            UndergroundTalk_InitQuestionsMenu(menu);
            menu->state = TALK_MENU_STATE_SELECT_QUESTION;
        }
        break;
    case TALK_MENU_STATE_SELECT_QUESTION:
        UndergroundTalk_HandleQuestionsMenu(sysTask, menu);
        break;
    case TALK_MENU_STATE_PRINT_SELECTED_QUESTION:
        UndergroundTextPrinter_SetUndergroundQuestion(UndergroundMan_GetCommonTextPrinter(), menu->questionIndex);
        UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_LetMeThink_Male);
        menu->state = TALK_MENU_STATE_WAIT_FOR_LINK_ANSWER;
        break;
    case TALK_MENU_STATE_WAIT_FOR_LINK_ANSWER:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            if (menu->linkRequestedState == TALK_MENU_STATE_LINK_ANSWERED) {
                menu->state = TALK_MENU_STATE_LINK_ANSWERED;
            }
        }
        break;
    case TALK_MENU_STATE_LINK_ANSWERED:
        if (menu->linkAnswerIndex == ANSWER_INDEX_CANCEL) {
            UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_ICantDecide_Male);
            menu->linkRequestedState = 0;
            menu->state = TALK_MENU_STATE_WAIT_FOR_LINK_TEXT;
        } else {
            UndergroundTextPrinter_SetUndergroundAnswer(UndergroundMan_GetCommonTextPrinter(), menu->linkAnswerIndex);
            UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_IHaveAnswerWhatsYours_Male);
            menu->state = TALK_MENU_STATE_INIT_ANSWERS_MENU;
        }
        break;
    case TALK_MENU_STATE_WAIT_FOR_LINK_TEXT:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            if (menu->linkRequestedState == TALK_RETURN_TO_MAIN_AFTER_REJECTED_QUESTION) {
                menu->linkRequestedState = 0;
                menu->state = TALK_MENU_STATE_DO_SOMETHING_ELSE_PROMPT;
            }
        }
        break;
    case TALK_MENU_STATE_INIT_ANSWERS_MENU:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            UndergroundTalk_InitAnswersMenu(menu);
            menu->state = TALK_MENU_STATE_SELECT_ANSWER;
        }
        break;
    case TALK_MENU_STATE_SELECT_ANSWER:
        UndergroundTalk_HandleAnswersMenu(sysTask, menu);
        break;
    case TALK_MENU_STATE_ANSWER_SELECTED:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(menu->fieldSystem->saveData), TRAINER_SCORE_EVENT_UNDERGROUND_ASK_PLAYER_QUESTION);
            UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_ISee_Male);
            menu->state = TALK_MENU_STATE_WAIT_FOR_CONFIRM;
        }
        break;
    case TALK_MENU_STATE_WAIT_FOR_CONFIRM:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            if (JOY_NEW(PAD_BUTTON_A)) {
                menu->state = TALK_MENU_STATE_WAIT_FOR_LINK_RECEIVE_ANSWER;
            }
        }
        break;
    case TALK_MENU_STATE_WAIT_FOR_LINK_RECEIVE_ANSWER:
        if (menu->linkRequestedState == TALK_ANSWER_RECEIVED) {
            UndergroundTalk_RequestLinkTalkStateUpdate(menu, END_QUESTIONS);
            menu->state = TALK_MENU_STATE_WAIT_FOR_LINK_END_QUESTIONS;
        }
        break;
    case TALK_MENU_STATE_WAIT_FOR_LINK_END_QUESTIONS:
        if (menu->linkRequestedState == END_QUESTIONS) {
            UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_ThanksForAnswering_Male);
            menu->state = TALK_MENU_STATE_REQUEST_RETURN_TO_MAIN;
        }
        break;
    case TALK_MENU_STATE_REQUEST_RETURN_TO_MAIN:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            UndergroundTalk_RequestLinkTalkStateUpdate(menu, RETURN_TO_MAIN_AFTER_QUESTIONS);
            menu->state = TALK_MENU_STATE_WAIT_FOR_LINK_RETURN_TO_MAIN;
        }
        break;
    case TALK_MENU_STATE_WAIT_FOR_LINK_RETURN_TO_MAIN:
        if (menu->linkRequestedState == RETURN_TO_MAIN_AFTER_QUESTIONS) {
            menu->state = TALK_MENU_STATE_DO_SOMETHING_ELSE_PROMPT;
        }
        break;
    }

    if (menu->linkRequestedState == TALK_MENU_STATE_LINK_EXITED) {
        if (menu->state == TALK_MENU_STATE_EXIT || menu->state == TALK_MENU_STATE_EXIT_AFTER_TEXT) {
            return;
        }

        if (menu->menu) {
            Menu_DestroyForExit(menu->menu, HEAP_ID_FIELD1);
            menu->menu = NULL;
        }

        if (menu->giftMenu) {
            UndergroundMenu_Exit(menu->giftMenu, LIST_CANCEL);
            UndergroundMan_ClearCurrentSysTaskInfo();
            UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetItemNameTextPrinter());
            menu->giftMenu = NULL;
        }

        UndergroundTalk_CloseTalkMenu(sysTask, menu);

        menu->state = TALK_MENU_STATE_LINK_EXITED;
        menu->linkRequestedState = 0;
    }
}

static void UndergroundTalk_CancelTalk(TalkMenu *menu)
{
    UndergroundTalk_PrintMessage(menu, UndergroundCommon_Text_OkSeeYou);
    UndergroundTalk_RequestLinkTalkStateUpdate(menu, RESPONSE_MENU_STATE_PRINT_EXIT_TEXT);

    menu->state = TALK_MENU_STATE_EXIT_AFTER_TEXT;
}

static void UndergroundTalkResponse_HandleConfirmTrainerCaseMenu(SysTask *unused, ResponseMenu *menu)
{
    u32 input = Menu_ProcessInputAndHandleExit(menu->menu, HEAP_ID_FIELD1);

    if (input == MENU_NOTHING_CHOSEN) {
        return;
    }

    if (input == 0) {
        UndergroundTalkResponse_RequestLinkTalkStateUpdate(menu, TALK_MENU_STATE_START_CASE_EXCHANGE);
        UndergroundRecords_SendRecord(menu->linkNetID);
        menu->state = RESPONSE_MENU_STATE_START_CASE_EXCHANGE;
    } else {
        UndergroundTalkResponse_RequestLinkTalkStateUpdate(menu, TALK_MENU_STATE_CASE_EXCHANGE_DECLINED);
        menu->state = RESPONSE_MENU_STATE_PRINT_EXIT_TEXT;
    }

    menu->menu = NULL;
}

static void UndergroundTalkResponse_HandleAcceptGiftMenu(SysTask *unused, ResponseMenu *menu)
{
    u32 input = Menu_ProcessInputAndHandleExit(menu->menu, HEAP_ID_FIELD1);

    if (input == MENU_NOTHING_CHOSEN) {
        return;
    }

    if (input == 0) {
        if (UndergroundInventory_TryAddGoodBag(menu->receivedGift.goodID)) {
            UndergroundRecord_IncrementGiftsReceived(SaveData_GetUndergroundRecord(FieldSystem_GetSaveData(menu->fieldSystem)));
            Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);
            UndergroundTalkResponse_RequestLinkTalkStateUpdate(menu, TALK_MENU_STATE_GIFT_ACCEPTED);

            menu->state = RESPONSE_MENU_STATE_GIFT_ACCEPTED;
        } else {
            UndergroundTalkResponse_RequestLinkTalkStateUpdate(menu, TALK_MENU_STATE_LINK_BAG_FULL);
            UndergroundTalkResponse_PrintMessage(menu, UndergroundCommon_Text_TooBadBagIsFull2);

            menu->state = RESPONSE_MENU_STATE_END_GIFT;
        }
    } else {
        UndergroundTalkResponse_RequestLinkTalkStateUpdate(menu, TALK_MENU_STATE_GIFT_REJECTED);
        UndergroundTalkResponse_PrintMessage(menu, UndergroundCommon_Text_DoYouHaveOneAlready);

        menu->state = RESPONSE_MENU_STATE_END_GIFT;
    }

    menu->menu = NULL;
}

static void UndergroundTalkResponse_Exit(SysTask *sysTask, ResponseMenu *menu)
{
    if (menu->menu) {
        Menu_DestroyForExit(menu->menu, HEAP_ID_FIELD1);
        menu->menu = NULL;
    }

    if (menu->exitCallback) {
        menu->exitCallback(0);
    }

    UndergroundTalkResponse_CloseTalkMenu(sysTask, menu);

    Heap_Free(menu);
    CommPlayerMan_ResumeFieldSystem();
    SysTask_Done(sysTask);

    sCurrentResponseMenu = NULL;
}

static void UndergroundTalkResponse_CloseTalkMenu(SysTask *unused, ResponseMenu *menu)
{
    if (menu->menuOptions) {
        Window_EraseStandardFrame(&menu->window, TRUE);
        ListMenu_Free(menu->listMenu, NULL, NULL);
        Window_ClearAndCopyToVRAM(&menu->window);
        Window_Remove(&menu->window);
        StringList_Free(menu->menuOptions);
        menu->menuOptions = NULL;
    }
}

static void UndergroundTalkResponse_PrintTextWithLinkName(ResponseMenu *menu, int linkNetID, int bankEntry)
{
    UndergroundTextPrinter_SetPlayerNameIndex0(UndergroundMan_GetCommonTextPrinter(), CommInfo_TrainerInfo(linkNetID));
    UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), bankEntry, FALSE, NULL);
}

static void UndergroundTalkResponse_PrintReceivedGift(ResponseMenu *menu)
{
    UndergroundTextPrinter_SetPlayerNameIndex0(UndergroundMan_GetCommonTextPrinter(), CommInfo_TrainerInfo(menu->linkNetID));
    UndergroundTextPrinter_SetUndergroundGoodsName(UndergroundMan_GetCommonTextPrinter(), menu->receivedGift.goodID);
    UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_YouReceivedGift, FALSE, NULL);
}

static void UndergroundTalkResponse_InitAnswersMenu(ResponseMenu *menu)
{
    const int optionCount = ANSWERS_PER_QUESTION + 1;

    menu->menuOptions = StringList_New(optionCount, HEAP_ID_FIELD1);

    Window_Add(menu->fieldSystem->bgConfig, &menu->window, BG_LAYER_MAIN_3, 1, 1, 16, optionCount * 2, 13, BASE_TILE_MESSAGE_WINDOW - 16 * optionCount * 2);
    Window_DrawStandardFrame(&menu->window, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 11);

    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_ANSWERS, HEAP_ID_FIELD1);

    for (int i = 0; i < ANSWERS_PER_QUESTION; i++) {
        u32 answerIndex = menu->linkQuestionIndex * ANSWERS_PER_QUESTION + i;

        StringList_AddFromMessageBank(menu->menuOptions, loader, answerIndex, i);
    }

    StringList_AddFromMessageBank(menu->menuOptions, loader, UndergroundAnswers_Text_DontKnow, ANSWER_INDEX_CANCEL);
    MessageLoader_Free(loader);

    ListMenuTemplate template = sListMenuTemplate;
    template.choices = menu->menuOptions;
    template.window = &menu->window;
    template.count = optionCount;
    template.maxDisplay = optionCount;

    menu->cursorPos = 0;
    menu->listMenu = ListMenu_New(&template, 0, 0, HEAP_ID_FIELD1);

    Window_CopyToVRAM(&menu->window);
}

static BOOL UndergroundTalkResponse_HandleAnswersMenu(SysTask *sysTask, void *data)
{
    ResponseMenu *menu = data;

    u32 input = ListMenu_ProcessInput(menu->listMenu);
    u16 prevPos = menu->cursorPos;

    ListMenu_CalcTrueCursorPos(menu->listMenu, &menu->cursorPos);

    if (prevPos != menu->cursorPos) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    if (CommSys_CheckError()) {
        input = LIST_CANCEL;
    }

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        return FALSE;
    case LIST_CANCEL:
        input = ANSWER_INDEX_CANCEL;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        UndergroundTalkResponse_CloseTalkMenu(sysTask, menu);

        if (input != ANSWER_INDEX_CANCEL) {
            menu->answerIndex = menu->linkQuestionIndex * ANSWERS_PER_QUESTION + input;
            menu->state = RESPONSE_MENU_STATE_WAIT_FOR_LINK_ANSWER;

            UndergroundTextPrinter_SetUndergroundAnswer(UndergroundMan_GetCommonTextPrinter(), menu->answerIndex);
            UndergroundTalkResponse_PrintMessage(menu, UndergroundCommon_Text_YouveDecidedLetMeThink_Male);
        } else {
            menu->answerIndex = ANSWER_INDEX_CANCEL;
            menu->state = RESPONSE_MENU_STATE_REFUSE_TO_ANSWER;
            menu->linkRequestedState = 0;

            UndergroundTalkResponse_PrintMessage(menu, UndergroundCommon_Text_YouDontHaveToAnswer_Male);
        }

        TalkMessage message;
        message.index = menu->answerIndex;
        message.recipientNetID = menu->linkNetID;
        message.type = MESSAGE_TYPE_RESPONSE_ANSWER;

        CommSys_SendDataFixedSize(79, &message);
        UndergroundTalkResponse_RequestLinkTalkStateUpdate(menu, TALK_MENU_STATE_LINK_ANSWERED);
        break;
    }

    return TRUE;
}

static void UndergroundTalkResponse_ExitCaseExchangeCallback(void *data)
{
    ResponseMenu *menu = data;
    menu->state = RESPONSE_MENU_STATE_END_CASE_EXCHANGE;
}

static void UndergroundTalkResponse_Main(SysTask *sysTask, void *data)
{
    ResponseMenu *menu = data;

    if (!CommSys_IsPlayerConnected(menu->linkNetID)) {
        UndergroundRecords_ForceExitTrainerCase();
        menu->state = TALK_MENU_STATE_EXIT;
    }

    switch (menu->state) {
    case RESPONSE_MENU_STATE_EXIT:
        UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
        UndergroundTalkResponse_Exit(sysTask, menu);
        break;
    case RESPONSE_MENU_STATE_MAIN:
        menu->linkQuestionIndex = MAX_QUESTION;

        if (JOY_NEW(PAD_BUTTON_B)) {
            UndergroundTalkResponse_RequestLinkTalkStateUpdate(menu, TALK_MENU_STATE_LINK_EXITED);
            menu->state = RESPONSE_MENU_STATE_PRINT_EXIT_TEXT;
        } else if (menu->linkRequestedState == RESPONSE_MENU_STATE_PRINT_EXCHANGE_CASE_PROMPT) {
            menu->state = RESPONSE_MENU_STATE_PRINT_EXCHANGE_CASE_PROMPT;
        } else if (menu->linkRequestedState == RESPONSE_MENU_STATE_START_QUESTIONS) {
            menu->state = RESPONSE_MENU_STATE_START_QUESTIONS;
        }
        break;
    case RESPONSE_MENU_STATE_PRINT_EXCHANGE_CASE_PROMPT:
        UndergroundTalkResponse_PrintMessage(menu, UndergroundCommon_Text_ExchangeTrainerCasePrompt);
        menu->state = RESPONSE_MENU_STATE_OPEN_CONFIRM_EXCHANGE_MENU;
        break;
    case RESPONSE_MENU_STATE_OPEN_CONFIRM_EXCHANGE_MENU:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            menu->state = RESPONSE_MENU_STATE_CONFIRM_EXCHANGE;
            menu->menu = Menu_MakeYesNoChoice(menu->fieldSystem->bgConfig, &sYesNoWindowTemplate, BASE_TILE_STANDARD_WINDOW_FRAME, 11, HEAP_ID_FIELD1);
        }
        break;
    case RESPONSE_MENU_STATE_CONFIRM_EXCHANGE:
        UndergroundTalkResponse_HandleConfirmTrainerCaseMenu(sysTask, menu);
        break;
    case RESPONSE_MENU_STATE_PRINT_EXIT_TEXT:
        UndergroundTalkResponse_PrintMessage(menu, UndergroundCommon_Text_OkSeeYou);
        menu->state = RESPONSE_MENU_STATE_EXIT_AFTER_TEXT;
        break;
    case RESPONSE_MENU_STATE_EXIT_AFTER_TEXT:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            if (JOY_NEW(PAD_BUTTON_A)) {
                menu->state = RESPONSE_MENU_STATE_EXIT;
            }
        }
        break;
    case RESPONSE_MENU_STATE_START_CASE_EXCHANGE:
        if (UndergroundRecords_IsLinkRecordReceived()) {
            UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
            UndergroundRecords_ShowTrainerCase(menu->fieldSystem->bgConfig, CommInfo_TrainerInfo(menu->linkNetID), UndergroundTalkResponse_ExitCaseExchangeCallback, menu, FALSE);
            menu->state = RESPONSE_MENU_STATE_VIEW_LINK_CASE;
        }
        break;
    case RESPONSE_MENU_STATE_VIEW_LINK_CASE:
        break;
    case RESPONSE_MENU_STATE_END_CASE_EXCHANGE:
        UndergroundRecords_ClearLinkRecordReceived();
        UndergroundTalkResponse_PrintTextWithLinkName(menu, menu->linkNetID, UndergroundCommon_Text_GladToHaveMetYou);
        menu->state = RESPONSE_MENU_STATE_NOTIFY_LINK_CASE_EXCHANGE_ENDED;
        break;
    case RESPONSE_MENU_STATE_NOTIFY_LINK_CASE_EXCHANGE_ENDED:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            UndergroundTalkResponse_RequestLinkTalkStateUpdate(menu, TALK_RETURN_TO_MAIN_AFTER_CASE_EXCHANGE);
            menu->state = RESPONSE_MENU_STATE_WAIT_FOR_LINK_CASE_EXCHANGE_END;
        }
        break;
    case RESPONSE_MENU_STATE_WAIT_FOR_LINK_CASE_EXCHANGE_END:
        if (menu->linkRequestedState == RESPONSE_RETURN_TO_MAIN_AFTER_CASE_EXCHANGE) {
            menu->state = RESPONSE_MENU_STATE_RETURN_TO_MAIN;
        }
        break;
    case RESPONSE_MENU_STATE_RETURN_TO_MAIN:
        UndergroundTalkResponse_PrintMessage(menu, UndergroundCommon_Text_So);
        menu->state = RESPONSE_MENU_STATE_MAIN;
        break;
    case RESPONSE_MENU_STATE_REFUSE_TO_ANSWER:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            menu->state = RESPONSE_MENU_STATE_RETURN_TO_MAIN;
            UndergroundTalkResponse_RequestLinkTalkStateUpdate(menu, TALK_RETURN_TO_MAIN_AFTER_REJECTED_QUESTION);
        }
        break;
    case RESPONSE_MENU_STATE_RECEIVE_GIFT_OFFER:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            menu->state = RESPONSE_MENU_STATE_GIFT_OFFERED;
            menu->menu = Menu_MakeYesNoChoice(menu->fieldSystem->bgConfig, &sYesNoWindowTemplate, BASE_TILE_STANDARD_WINDOW_FRAME, 11, HEAP_ID_FIELD1);
        }
        break;
    case RESPONSE_MENU_STATE_GIFT_OFFERED:
        UndergroundTalkResponse_HandleAcceptGiftMenu(sysTask, menu);
        break;
    case RESPONSE_MENU_STATE_GIFT_ACCEPTED:
        UndergroundTalkResponse_PrintReceivedGift(menu);
        menu->state = RESPONSE_MENU_STATE_GIFT_ACCEPTED_FRAME_DELAY;
        break;
    case RESPONSE_MENU_STATE_GIFT_ACCEPTED_FRAME_DELAY:
        menu->state = RESPONSE_MENU_STATE_END_GIFT;
        break;
    case RESPONSE_MENU_STATE_END_GIFT:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            if (JOY_NEW(PAD_BUTTON_A)) {
                UndergroundTalkResponse_RequestLinkTalkStateUpdate(menu, TALK_RETURN_TO_MAIN_AFTER_GIFT);
                menu->state = RESPONSE_MENU_STATE_RETURN_TO_MAIN;
            }
        }
        break;
    case RESPONSE_MENU_STATE_START_QUESTIONS:
        UndergroundTalkResponse_PrintMessage(menu, UndergroundCommon_Text_MayIAskQuestion_Male);
        menu->state++;
        break;
    case RESPONSE_MENU_STATE_WAIT_FOR_LINK_QUESTION:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            if (menu->linkQuestionIndex != MAX_QUESTION) {
                UndergroundTextPrinter_SetUndergroundQuestion(UndergroundMan_GetCommonTextPrinter(), menu->linkQuestionIndex);
                UndergroundTalkResponse_PrintMessage(menu, UndergroundCommon_Text_WhatsYourChoice_Male);
                menu->state = RESPONSE_MENU_STATE_INIT_ANSWERS_MENU;
            }
        }
        break;
    case RESPONSE_MENU_STATE_INIT_ANSWERS_MENU:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            UndergroundTalkResponse_InitAnswersMenu(menu);
            menu->state = RESPONSE_MENU_STATE_SELECT_ANSWER;
        }
        break;
    case RESPONSE_MENU_STATE_SELECT_ANSWER:
        UndergroundTalkResponse_HandleAnswersMenu(sysTask, menu);
        break;
    case RESPONSE_MENU_STATE_WAIT_FOR_LINK_ANSWER:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            if (menu->linkRequestedState == RESPONSE_MENU_STATE_LINK_ANSWERED) {
                UndergroundTalkResponse_RequestLinkTalkStateUpdate(menu, TALK_ANSWER_RECEIVED);
                menu->state = RESPONSE_MENU_STATE_LINK_ANSWERED;
            }
        }
        break;
    case RESPONSE_MENU_STATE_LINK_ANSWERED:
        UndergroundTextPrinter_SetUndergroundAnswer(UndergroundMan_GetCommonTextPrinter(), menu->linkAnswerIndex);
        UndergroundTextPrinter_SetUndergroundAnswerWithIndex(UndergroundMan_GetCommonTextPrinter(), 6, menu->answerIndex);

        if (menu->answerIndex == menu->linkAnswerIndex) {
            UndergroundTalkResponse_PrintMessage(menu, UndergroundCommon_Text_SameAnswer_Male);
        } else {
            UndergroundTalkResponse_PrintMessage(menu, UndergroundCommon_Text_Answer_Male);
        }

        menu->state = RESPONSE_MENU_STATE_PRINT_I_SEE;
        break;
    case RESPONSE_MENU_STATE_PRINT_I_SEE:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            UndergroundTalkResponse_PrintMessage(menu, UndergroundCommon_Text_ISee2_Male);
            menu->state = RESPONSE_MENU_STATE_WAIT_FOR_PRINT;
        }
        break;
    case RESPONSE_MENU_STATE_WAIT_FOR_PRINT:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            menu->state = RESPONSE_MENU_STATE_WAIT_FOR_LINK_END_QUESTIONS;
        }
        break;
    case RESPONSE_MENU_STATE_WAIT_FOR_LINK_END_QUESTIONS:
        if (menu->linkRequestedState == END_QUESTIONS) {
            UndergroundTalkResponse_RequestLinkTalkStateUpdate(menu, END_QUESTIONS);
            UndergroundTalkResponse_PrintMessage(menu, UndergroundCommon_Text_ThanksForAnswering_Male);
            menu->state = RESPONSE_MENU_STATE_WAIT_FOR_PRINT_2;
        }
        break;
    case RESPONSE_MENU_STATE_WAIT_FOR_PRINT_2:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            menu->state = RESPONSE_MENU_STATE_WAIT_FOR_LINK_RETURN_TO_MAIN;
        }
        break;
    case RESPONSE_MENU_STATE_WAIT_FOR_LINK_RETURN_TO_MAIN:
        if (menu->linkRequestedState == RETURN_TO_MAIN_AFTER_QUESTIONS) {
            UndergroundTalkResponse_RequestLinkTalkStateUpdate(menu, RETURN_TO_MAIN_AFTER_QUESTIONS);
            menu->state = RESPONSE_MENU_STATE_RETURN_TO_MAIN;
        }
        break;
    }

    if (menu->linkRequestedState == RESPONSE_MENU_STATE_PRINT_EXIT_TEXT) {
        if (menu->state == RESPONSE_MENU_STATE_EXIT || menu->state == RESPONSE_MENU_STATE_EXIT_AFTER_TEXT) {
            return;
        }

        if (menu->menu) {
            Menu_DestroyForExit(menu->menu, HEAP_ID_FIELD1);
            menu->menu = NULL;
        }

        UndergroundTalkResponse_CloseTalkMenu(sysTask, menu);

        menu->state = RESPONSE_MENU_STATE_PRINT_EXIT_TEXT;
        menu->linkRequestedState = 0;
    }
}

void UndergroundTalkResponse_Start(int unused, int linkNetID, FieldSystem *fieldSystem)
{
    if (sCurrentResponseMenu) {
        GF_ASSERT(FALSE);
        return;
    }

    ResponseMenu *menu = Heap_Alloc(HEAP_ID_UNDERGROUND, sizeof(ResponseMenu));
    MI_CpuFill8(menu, 0, sizeof(ResponseMenu));

    sCurrentResponseMenu = menu;

    menu->fieldSystem = fieldSystem;
    menu->linkNetID = linkNetID;
    menu->state = RESPONSE_MENU_STATE_MAIN;
    menu->linkRequestedState = 0;
    menu->linkQuestionIndex = MAX_QUESTION;

    UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_Hello, FALSE, NULL);
    CommPlayerMan_ForceDir();

    menu->sysTask = SysTask_Start(UndergroundTalkResponse_Main, menu, 10000);
}

void UndergroundTalk_RequestLinkTalkStateUpdateServer(int unused0, int unused1, void *data, void *unused3)
{
    CommSys_SendDataFixedSizeServer(75, data);
}

void UndergroundTalkResponse_RequestLinkTalkStateUpdateServer(int unused0, int unused1, void *data, void *unused3)
{
    CommSys_SendDataFixedSizeServer(76, data);
}

void UndergroundTalkResponse_HandleLinkTalkStateUpdateServer(int unused0, int size, void *data, void *unused3)
{
    TalkStateChangeRequest *req = data;

    if (req->targetNetID == CommSys_CurNetId() && sCurrentResponseMenu) {
        GF_ASSERT(size == sizeof(TalkStateChangeRequest));
        sCurrentResponseMenu->linkRequestedState = req->newState;
    }
}

void UndergroundTalk_HandleLinkTalkStateUpdateServer(int unused0, int size, void *data, void *unused3)
{
    TalkStateChangeRequest *req = data;

    if (req->targetNetID == CommSys_CurNetId() && sCurrentTalkMenu) {
        GF_ASSERT(size == sizeof(TalkStateChangeRequest));
        GF_ASSERT(sCurrentTalkMenu != NULL);

        sCurrentTalkMenu->linkRequestedState = req->newState;
    }
}

int CommPacketSizeOf_TalkStateChangeRequest(void)
{
    return sizeof(TalkStateChangeRequest);
}

void UndergroundTalk_SendGiftServer(int unused0, int unused1, void *data, void *unused3)
{
    CommSys_SendDataFixedSizeServer(78, data);
}

void UndergroundTalkResponse_ReceiveGiftOffer(int unused0, int unused1, void *data, void *unused3)
{
    ResponseMenu *menu = sCurrentResponseMenu;
    Gift *gift = data;

    if (CommSys_CurNetId() != gift->recipientNetID) {
        return;
    }

    GF_ASSERT(sCurrentResponseMenu != NULL);

    if (menu->state != RESPONSE_MENU_STATE_MAIN) {
        UndergroundTalkResponse_RequestLinkTalkStateUpdate(menu, TALK_MENU_STATE_LINK_EXITED);
        menu->state = RESPONSE_MENU_STATE_PRINT_EXIT_TEXT;
        return;
    }

    menu->receivedGift.recipientNetID = gift->recipientNetID;
    menu->receivedGift.dummy = gift->dummy;
    menu->receivedGift.goodID = gift->goodID;
    menu->state = RESPONSE_MENU_STATE_RECEIVE_GIFT_OFFER;

    UndergroundTextPrinter_SetUndergroundGoodsName(UndergroundMan_GetCommonTextPrinter(), gift->goodID);
    UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_YouCanHaveThisGift, FALSE, NULL);
}

int CommPacketSizeOf_Gift(void)
{
    return sizeof(Gift);
}

void UndergroundTalk_SendTalkMessageServer(int unused0, int unused1, void *data, void *unused3)
{
    CommSys_SendDataFixedSizeServer(80, data);
}

void UndergroundTalk_ReceiveTalkMessage(int unused0, int unused1, void *data, void *unused3)
{
    ResponseMenu *responseMenu = sCurrentResponseMenu;
    TalkMenu *talkMenu = sCurrentTalkMenu;
    TalkMessage *message = data;

    if (message->recipientNetID == CommSys_CurNetId()) {
        switch (message->type) {
        case MESSAGE_TYPE_QUESTION:
            responseMenu->linkQuestionIndex = message->index;
            break;
        case MESSAGE_TYPE_RESPONSE_ANSWER:
            talkMenu->linkAnswerIndex = message->index;
            break;
        case MESSAGE_TYPE_TALK_ANSWER:
            responseMenu->linkAnswerIndex = message->index;
            break;
        }
    }
}

int CommPacketSizeOf_TalkMessage(void)
{
    return sizeof(TalkMessage);
}

void UndergroundTalk_ExitConversation(void)
{
    if (sCurrentTalkMenu) {
        UndergroundTalk_Exit(sCurrentTalkMenu->sysTask, sCurrentTalkMenu);
    }

    if (sCurrentResponseMenu) {
        UndergroundTalkResponse_Exit(sCurrentResponseMenu->sysTask, sCurrentResponseMenu);
    }
}

static void UndergroundTalk_UpdateCursorPos(TalkMenu *menu)
{
    u16 prevPos = menu->cursorPos;
    ListMenu_CalcTrueCursorPos(menu->listMenu, &menu->cursorPos);

    if (prevPos != menu->cursorPos) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }
}
