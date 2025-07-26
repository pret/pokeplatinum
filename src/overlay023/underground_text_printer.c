#include "overlay023/underground_text_printer.h"

#include <nitro.h>
#include <string.h>

#include "bg_window.h"
#include "heap.h"
#include "list_menu.h"
#include "message.h"
#include "render_window.h"
#include "strbuf.h"
#include "sys_task.h"
#include "system.h"
#include "text.h"
#include "trainer_info.h"

enum EraseMessageBoxType {
    CLEAR_MESSAGE_BOX,
    CLEAR_WINDOW,
    CLEAR_WINDOW_SCHEDULE
};

static void UndergroundTextPrinter_EraseMessageBox(UndergroundTextPrinter *textPrinter, enum EraseMessageBoxType type);

static const ListMenuTemplate sListMenuTemplate = {
    .choices = NULL,
    .cursorCallback = NULL,
    .printCallback = NULL,
    .window = NULL,
    .count = 0,
    .maxDisplay = 0,
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
    .parent = NULL
};

const ListMenuTemplate *UndergroundTextPrinter_GetListMenuTemplate(void)
{
    return &sListMenuTemplate;
}

UndergroundTextPrinter *UndergroundTextPrinter_New(int bankID, int heapID, BgConfig *bgConfig, int renderDelay, int strbufSize)
{
    int size = strbufSize;
    UndergroundTextPrinter *textPrinter = Heap_AllocFromHeap(heapID, sizeof(UndergroundTextPrinter));

    MI_CpuClear8(textPrinter, sizeof(UndergroundTextPrinter));

    if (size == 0) {
        size = 230;
    }

    textPrinter->mainStrbuf = Strbuf_Init(size, heapID);
    textPrinter->formatStrbuf = Strbuf_Init(size, heapID);
    textPrinter->template = StringTemplate_Default(heapID);
    textPrinter->bankID = bankID;
    textPrinter->msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, bankID, heapID);
    textPrinter->heapID = heapID;
    textPrinter->bgConfig = bgConfig;

    Window_Init(&textPrinter->window);

    textPrinter->messageBoxActive = FALSE;
    textPrinter->formattingNeeded = FALSE;
    textPrinter->sysTask = NULL;
    textPrinter->renderDelay = renderDelay;
    textPrinter->windowBaseTile = (((1024 - (18 + 12)) - 73) - (27 * 4));
    textPrinter->messageBoxTile = (1024 - (18 + 12));

    return textPrinter;
}

void UndergroundTextPrinter_Free(UndergroundTextPrinter *textPrinter)
{
    Strbuf_Free(textPrinter->mainStrbuf);
    Strbuf_Free(textPrinter->formatStrbuf);
    StringTemplate_Free(textPrinter->template);
    MessageLoader_Free(textPrinter->msgLoader);
    Heap_Free(textPrinter);
}

void UndergroundTextPrinter_ChangeMessageLoaderBank(UndergroundTextPrinter *textPrinter, int bankID, enum MessageLoaderType loaderType)
{
    if (textPrinter->bankID != bankID) {
        textPrinter->bankID = bankID;
        MessageLoader_Free(textPrinter->msgLoader);

        textPrinter->msgLoader = MessageLoader_Init(loaderType, NARC_INDEX_MSGDATA__PL_MSG, bankID, textPrinter->heapID);
        GF_ASSERT(textPrinter->msgLoader != NULL);
    }
}

void UndergroundTextPrinter_SetBackground(UndergroundTextPrinter *textPrinter, BgConfig *bgConfig, u16 messageBoxTile, u16 windowBaseTile)
{
    textPrinter->bgConfig = bgConfig;
    textPrinter->messageBoxTile = messageBoxTile;
    textPrinter->windowBaseTile = windowBaseTile;
}

MessageLoader *UndergroundTextPrinter_GetMessageLoader(UndergroundTextPrinter *textPrinter)
{
    return textPrinter->msgLoader;
}

static void UndergroundTextPrinter_SysTaskEraseMessageBoxOnAPress(SysTask *sysTask, void *printer)
{
    UndergroundTextPrinter *textPrinter = printer;

    if (textPrinter->printerID < MAX_TEXT_PRINTERS) {
        if (Text_IsPrinterActive(textPrinter->printerID) != FALSE) {
            return;
        }
    }

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        UndergroundTextPrinter_EraseMessageBoxWindow(textPrinter);
    }
}

static Strbuf *UndergroundTextPrinter_GetStrbuf(UndergroundTextPrinter *textPrinter)
{
    Strbuf *strbuf = textPrinter->mainStrbuf;

    if (textPrinter->formattingNeeded) {
        StringTemplate_Format(textPrinter->template, textPrinter->formatStrbuf, textPrinter->mainStrbuf);
        strbuf = textPrinter->formatStrbuf;
        textPrinter->formattingNeeded = FALSE;
    }

    return strbuf;
}

static int UndergroundTextPrinter_AddPrinter(UndergroundTextPrinter *textPrinter, BOOL sysTaskManaged, UndergroundTextPrinterCallback callback, int callbackParam)
{
    UndergroundTextPrinter_EraseMessageBox(textPrinter, CLEAR_MESSAGE_BOX);
    ov23_022421EC();

    if (!Window_IsInUse(&textPrinter->window)) {
        Window_Add(textPrinter->bgConfig, &textPrinter->window, BG_LAYER_MAIN_3, 2, 19, 27, 4, 12, textPrinter->windowBaseTile);
    }

    Window_FillTilemap(&textPrinter->window, 15);
    Window_DrawMessageBoxWithScrollCursor(&textPrinter->window, TRUE, textPrinter->messageBoxTile, 10);

    if (sysTaskManaged) {
        textPrinter->sysTask = SysTask_Start(UndergroundTextPrinter_SysTaskEraseMessageBoxOnAPress, textPrinter, 100);
    }

    textPrinter->messageBoxActive = TRUE;
    textPrinter->dummy = FALSE;

    Strbuf *strbuf = UndergroundTextPrinter_GetStrbuf(textPrinter);

    textPrinter->printerID = Text_AddPrinterWithParams(&textPrinter->window, FONT_MESSAGE, strbuf, 0, 0, textPrinter->renderDelay, NULL);
    textPrinter->callback = callback;
    textPrinter->callbackParam = callbackParam;

    return textPrinter->printerID;
}

int UndergroundTextPrinter_PrintText(UndergroundTextPrinter *textPrinter, int entryID, BOOL sysTaskManaged, UndergroundTextPrinterCallback callback)
{
    MessageLoader_GetStrbuf(textPrinter->msgLoader, entryID, textPrinter->mainStrbuf);
    return UndergroundTextPrinter_AddPrinter(textPrinter, sysTaskManaged, callback, 0);
}

int UndergroundTextPrinter_PrintTextInstant(UndergroundTextPrinter *textPrinter, int entryID, BOOL sysTaskManaged, UndergroundTextPrinterCallback callback)
{
    int renderDelayBackup = textPrinter->renderDelay;
    textPrinter->renderDelay = TEXT_SPEED_INSTANT;

    int printerID = UndergroundTextPrinter_PrintText(textPrinter, entryID, sysTaskManaged, callback);
    textPrinter->printerID = MAX_TEXT_PRINTERS;
    textPrinter->renderDelay = renderDelayBackup;

    return printerID;
}

int UndergroundTextPrinter_PrintTextWithCallbackParam(UndergroundTextPrinter *textPrinter, int entryID, BOOL sysTaskManaged, UndergroundTextPrinterCallback callback, int callbackParam)
{
    MessageLoader_GetStrbuf(textPrinter->msgLoader, entryID, textPrinter->mainStrbuf);
    return UndergroundTextPrinter_AddPrinter(textPrinter, sysTaskManaged, callback, callbackParam);
}

void UndergroundTextPrinter_SetDummyField(UndergroundTextPrinter *textPrinter)
{
    textPrinter->dummy = TRUE;
}

static void UndergroundTextPrinter_EraseMessageBox(UndergroundTextPrinter *textPrinter, enum EraseMessageBoxType type)
{
    if (textPrinter->messageBoxActive) {
        textPrinter->messageBoxActive = FALSE;

        if (textPrinter->printerID < MAX_TEXT_PRINTERS && Text_IsPrinterActive(textPrinter->printerID)) {
            Text_RemovePrinter(textPrinter->printerID);
        }

        switch (type) {
        case CLEAR_MESSAGE_BOX:
            Window_EraseMessageBox(&textPrinter->window, TRUE);
            break;
        case CLEAR_WINDOW:
            Window_EraseMessageBox(&textPrinter->window, TRUE);
            Window_ClearAndCopyToVRAM(&textPrinter->window);
            Window_Remove(&textPrinter->window);
            break;
        case CLEAR_WINDOW_SCHEDULE:
            Window_EraseMessageBox(&textPrinter->window, TRUE);
            Window_ClearAndScheduleCopyToVRAM(&textPrinter->window);
            Window_Remove(&textPrinter->window);
            break;
        }

        textPrinter->printerID = MAX_TEXT_PRINTERS;

        if (textPrinter->sysTask != NULL) {
            SysTask_Done(textPrinter->sysTask);
            textPrinter->sysTask = NULL;
        }

        if (textPrinter->callback) {
            textPrinter->callback(textPrinter->callbackParam);
        }
    }
}

void UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundTextPrinter *textPrinter)
{
    UndergroundTextPrinter_EraseMessageBox(textPrinter, CLEAR_WINDOW_SCHEDULE);
}

void UndergroundTextPrinter_SetPlayerNameIndex1(UndergroundTextPrinter *textPrinter, TrainerInfo *trainerInfo)
{
    StringTemplate_SetPlayerName(textPrinter->template, 1, trainerInfo);
    textPrinter->formattingNeeded = TRUE;
}

void UndergroundTextPrinter_SetPlayerNameIndex0(UndergroundTextPrinter *textPrinter, TrainerInfo *trainerInfo)
{
    StringTemplate_SetPlayerName(textPrinter->template, 0, trainerInfo);
    textPrinter->formattingNeeded = TRUE;
}

void UndergroundTextPrinter_SetUndergroundItemNameWithArticle(UndergroundTextPrinter *textPrinter, int item)
{
    StringTemplate_SetUndergroundItemNameWithArticle(textPrinter->template, 2, item);
    textPrinter->formattingNeeded = TRUE;
}

void UndergroundTextPrinter_SetUndergroundTrapName(UndergroundTextPrinter *textPrinter, int trap)
{
    StringTemplate_SetUndergroundTrapName(textPrinter->template, 3, trap);
    textPrinter->formattingNeeded = TRUE;
}

void UndergroundTextPrinter_SetUndergroundQuestion(UndergroundTextPrinter *textPrinter, int question)
{
    StringTemplate_SetUndergroundQuestion(textPrinter->template, 5, question);
    textPrinter->formattingNeeded = TRUE;
}

void UndergroundTextPrinter_SetUndergroundAnswer(UndergroundTextPrinter *textPrinter, int answer)
{
    StringTemplate_SetUndergroundAnswer(textPrinter->template, 5, answer);
    textPrinter->formattingNeeded = TRUE;
}

void UndergroundTextPrinter_SetUndergroundAnswerWithIndex(UndergroundTextPrinter *textPrinter, int idx, int answer)
{
    StringTemplate_SetUndergroundAnswer(textPrinter->template, idx, answer);
    textPrinter->formattingNeeded = TRUE;
}

void UndergroundTextPrinter_SetUndergroundGoodsName(UndergroundTextPrinter *textPrinter, int goods)
{
    StringTemplate_SetUndergroundGoodsName(textPrinter->template, 2, goods);
    textPrinter->formattingNeeded = TRUE;
}

void UndergroundTextPrinter_SetSingleDigitNumber(UndergroundTextPrinter *textPrinter, int idx, int num)
{
    StringTemplate_SetNumber(textPrinter->template, idx, num, 1, PADDING_MODE_NONE, CHARSET_MODE_EN);
    textPrinter->formattingNeeded = TRUE;
}

void UndergroundTextPrinter_SetTwoDigitNumber(UndergroundTextPrinter *textPrinter, int num)
{
    StringTemplate_SetNumber(textPrinter->template, 6, num, 2, PADDING_MODE_NONE, CHARSET_MODE_EN);
    textPrinter->formattingNeeded = TRUE;
}

void UndergroundTextPrinter_SetTwoDigitNumberWithIndex(UndergroundTextPrinter *textPrinter, int idx, int num)
{
    StringTemplate_SetNumber(textPrinter->template, idx, num, 2, PADDING_MODE_NONE, CHARSET_MODE_EN);
    textPrinter->formattingNeeded = TRUE;
}

void UndergroundTextPrinter_SetNumber(UndergroundTextPrinter *textPrinter, int num)
{
    StringTemplate_SetNumber(textPrinter->template, 6, num, 6, PADDING_MODE_NONE, CHARSET_MODE_EN);
    textPrinter->formattingNeeded = TRUE;
}

void UndergroundTextPrinter_SetUndergroundItemName(UndergroundTextPrinter *textPrinter, int idx, int item)
{
    StringTemplate_SetUndergroundItemName(textPrinter->template, idx, item);
    textPrinter->formattingNeeded = TRUE;
}

void UndergroundTextPrinter_SetUndergroundTrapNameWithIndex(UndergroundTextPrinter *textPrinter, int idx, int trap)
{
    StringTemplate_SetUndergroundTrapName(textPrinter->template, idx, trap);
    textPrinter->formattingNeeded = TRUE;
}

void UndergroundTextPrinter_SetUndergroundGoodsNameWithIndex(UndergroundTextPrinter *textPrinter, int idx, int goods)
{
    StringTemplate_SetUndergroundGoodsName(textPrinter->template, idx, goods);
    textPrinter->formattingNeeded = TRUE;
}

void UndergroundTextPrinter_SetUndergroundItemNameWithArticleWithIndex(UndergroundTextPrinter *textPrinter, int idx, int item)
{
    StringTemplate_SetUndergroundItemNameWithArticle(textPrinter->template, idx, item);
    textPrinter->formattingNeeded = TRUE;
}

void UndergroundTextPrinter_SetUndergroundTrapNameWithArticle(UndergroundTextPrinter *textPrinter, int idx, int trap)
{
    StringTemplate_SetUndergroundTrapNameWithArticle(textPrinter->template, idx, trap);
    textPrinter->formattingNeeded = TRUE;
}

void UndergroundTextPrinter_CapitalizeArgAtIndex(UndergroundTextPrinter *textPrinter, int idx)
{
    StringTemplate_CapitalizeArgAtIndex(textPrinter->template, idx);
}

void UndergroundTextPrinter_RemovePrinter(UndergroundTextPrinter *textPrinter)
{
    if (textPrinter->printerID < MAX_TEXT_PRINTERS) {
        if (Text_IsPrinterActive(textPrinter->printerID)) {
            Text_RemovePrinter(textPrinter->printerID);
            textPrinter->printerID = MAX_TEXT_PRINTERS;
        }
    }
}

BOOL UndergroundTextPrinter_IsPrinterActive(UndergroundTextPrinter *textPrinter)
{
    if (textPrinter->printerID == MAX_TEXT_PRINTERS) {
        return FALSE;
    }

    return Text_IsPrinterActive(textPrinter->printerID);
}

void UndergroundTextPrinter_ClearPrinterID(UndergroundTextPrinter *textPrinter)
{
    if (textPrinter->printerID < MAX_TEXT_PRINTERS && !Text_IsPrinterActive(textPrinter->printerID)) {
        textPrinter->printerID = MAX_TEXT_PRINTERS;
    }
}
