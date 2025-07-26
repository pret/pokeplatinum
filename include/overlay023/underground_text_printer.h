#ifndef POKEPLATINUM_UNDERGROUND_TEXT_PRINTER_H
#define POKEPLATINUM_UNDERGROUND_TEXT_PRINTER_H

#include "bg_window.h"
#include "list_menu.h"
#include "message.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "trainer_info.h"

typedef void (*UndergroundTextPrinterCallback)(int);

typedef struct UndergroundTextPrinter {
    Strbuf *mainStrbuf;
    Strbuf *formatStrbuf;
    Window window;
    BgConfig *bgConfig;
    UndergroundTextPrinterCallback callback;
    SysTask *sysTask;
    MessageLoader *msgLoader;
    StringTemplate *template;
    int bankID;
    int printerID;
    int heapID;
    int renderDelay;
    int callbackParam;
    u16 windowBaseTile;
    u16 messageBoxTile;
    BOOL messageBoxActive : 1;
    BOOL formattingNeeded : 1;
    BOOL dummy : 1;
} UndergroundTextPrinter;

const ListMenuTemplate *UndergroundTextPrinter_GetListMenuTemplate(void);
UndergroundTextPrinter *UndergroundTextPrinter_New(int bankID, int heapID, BgConfig *bgConfig, int renderDelay, int strbufSize);
void UndergroundTextPrinter_Free(UndergroundTextPrinter *textPrinter);
void UndergroundTextPrinter_ChangeMessageLoaderBank(UndergroundTextPrinter *textPrinter, int bankID, enum MessageLoaderType loaderType);
void UndergroundTextPrinter_SetBackground(UndergroundTextPrinter *textPrinter, BgConfig *bgConfig, u16 messageBoxBaseTile, u16 windowBaseTile);
MessageLoader *UndergroundTextPrinter_GetMessageLoader(UndergroundTextPrinter *textPrinter);
int UndergroundTextPrinter_PrintText(UndergroundTextPrinter *textPrinter, int entryID, BOOL sysTaskManaged, UndergroundTextPrinterCallback callback);
int UndergroundTextPrinter_PrintTextInstant(UndergroundTextPrinter *textPrinter, int entryID, BOOL sysTaskManaged, UndergroundTextPrinterCallback callback);
int UndergroundTextPrinter_PrintTextWithCallbackParam(UndergroundTextPrinter *textPrinter, int entryID, BOOL sysTaskManaged, UndergroundTextPrinterCallback callback, int callbackParam);
void UndergroundTextPrinter_SetDummyField(UndergroundTextPrinter *textPrinter);
void UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundTextPrinter *textPrinter);
void UndergroundTextPrinter_SetPlayerNameIndex1(UndergroundTextPrinter *textPrinter, TrainerInfo *trainerInfo);
void UndergroundTextPrinter_SetPlayerNameIndex0(UndergroundTextPrinter *textPrinter, TrainerInfo *trainerInfo);
void UndergroundTextPrinter_SetUndergroundItemNameWithArticle(UndergroundTextPrinter *textPrinter, int item);
void UndergroundTextPrinter_SetUndergroundTrapName(UndergroundTextPrinter *textPrinter, int trap);
void UndergroundTextPrinter_SetUndergroundQuestion(UndergroundTextPrinter *textPrinter, int question);
void UndergroundTextPrinter_SetUndergroundAnswer(UndergroundTextPrinter *textPrinter, int answer);
void UndergroundTextPrinter_SetUndergroundAnswerWithIndex(UndergroundTextPrinter *textPrinter, int idx, int answer);
void UndergroundTextPrinter_SetUndergroundGoodsName(UndergroundTextPrinter *textPrinter, int idx);
void UndergroundTextPrinter_SetSingleDigitNumber(UndergroundTextPrinter *textPrinter, int idx, int num);
void UndergroundTextPrinter_SetTwoDigitNumber(UndergroundTextPrinter *textPrinter, int num);
void UndergroundTextPrinter_SetTwoDigitNumberWithIndex(UndergroundTextPrinter *textPrinter, int idx, int num);
void UndergroundTextPrinter_SetNumber(UndergroundTextPrinter *textPrinter, int num);
void UndergroundTextPrinter_SetUndergroundItemName(UndergroundTextPrinter *textPrinter, int idx, int item);
void UndergroundTextPrinter_SetUndergroundTrapNameWithIndex(UndergroundTextPrinter *textPrinter, int idx, int trap);
void UndergroundTextPrinter_SetUndergroundGoodsNameWithIndex(UndergroundTextPrinter *textPrinter, int idx, int goods);
void UndergroundTextPrinter_SetUndergroundItemNameWithArticleWithIndex(UndergroundTextPrinter *textPrinter, int idx, int item);
void UndergroundTextPrinter_SetUndergroundTrapNameWithArticle(UndergroundTextPrinter *textPrinter, int idx, int trap);
void UndergroundTextPrinter_CapitalizeArgAtIndex(UndergroundTextPrinter *textPrinter, int idx);
void UndergroundTextPrinter_RemovePrinter(UndergroundTextPrinter *textPrinter);
BOOL UndergroundTextPrinter_IsPrinterActive(UndergroundTextPrinter *textPrinter);
void UndergroundTextPrinter_ClearPrinterID(UndergroundTextPrinter *textPrinter);

#endif // POKEPLATINUM_UNDERGROUND_TEXT_PRINTER_H
