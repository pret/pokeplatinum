#include "overlay005/script_message.h"

#include "struct_defs/sentence.h"

#include "field/field_system.h"

#include "bg_window.h"
#include "field_message.h"
#include "field_script_context.h"
#include "font.h"
#include "game_options.h"
#include "message.h"
#include "save_player.h"
#include "script_manager.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_02014A84.h"

typedef struct ScriptMessage {
    Strbuf *msgBuf;
    Strbuf *tempBuf;
    StringTemplate *template;
    Window *window;
    u8 *isOpen;
    u8 *messageID;
} ScriptMessage;

static u8 GetTextFrameDelay(ScriptContext *ctx);
static void InitScriptMessage(FieldSystem *fieldSystem, ScriptMessage *msgData);
static void Init_ScriptMessageTemplate(FieldSystem *fieldSystem, StringTemplate *template, ScriptMessage *msgData);
static void OpenMessageBox(FieldSystem *fieldSystem, ScriptMessage *msgData);
static void LoadAndFormatMessage(ScriptMessage *msgData, const MessageLoader *msgLoader, u32 bufferEntryID);
static void GetStrBufFromSentence(ScriptMessage *msgData, u16 sentenceType, u16 sentenceID, u16 word1, u16 word2);
static void PrintFieldMessage(ScriptMessage *msgData, int fontID, int renderDelay, int canSkipDelay, BOOL autoScroll);
static void PrintTextMessage(ScriptMessage *msgData, int fontID);

void ScriptMessageOptions_Init(ScriptMessageOptions *msgOptions, ScriptContext *ctx) {
    msgOptions->renderDelay = GetTextFrameDelay(ctx);
    msgOptions->autoScroll = FALSE;
    msgOptions->fontID = FONT_MESSAGE;
}

void ScriptMessage_Show(ScriptContext *ctx, const MessageLoader *msgLoader, u16 messageID, u8 canSkipDelay, ScriptMessageOptions *msgOptions) {
    ScriptMessage msgData;
    u8 renderDelay;
    u8 autoScroll;
    u8 fontID;

    InitScriptMessage(ctx->fieldSystem, &msgData);
    OpenMessageBox(ctx->fieldSystem, &msgData);
    LoadAndFormatMessage(&msgData, msgLoader, messageID);

    if (msgOptions == NULL) {
        renderDelay = GetTextFrameDelay(ctx);
        autoScroll = FALSE;
        fontID = FONT_MESSAGE;
    } else {
        renderDelay = msgOptions->renderDelay;
        autoScroll = msgOptions->autoScroll;
        fontID = msgOptions->fontID;
    }

    PrintFieldMessage(&msgData, fontID, renderDelay, canSkipDelay, autoScroll);
}

void ScriptMessage_ShowInstant(ScriptContext *ctx, const MessageLoader *msgLoader, int messageID) {
    ScriptMessage msgData;

    InitScriptMessage(ctx->fieldSystem, &msgData);
    OpenMessageBox(ctx->fieldSystem, &msgData);
    LoadAndFormatMessage(&msgData, msgLoader, messageID);
    PrintTextMessage(&msgData, FONT_MESSAGE);
}

void ScriptMessage_ShowSentence(ScriptContext *ctx, u16 sentenceType, u16 sentenceID, u16 word1, s16 word2, u8 canSkipDelay) {
    ScriptMessage msgData;
    Sentence unused;

    InitScriptMessage(ctx->fieldSystem, &msgData);
    OpenMessageBox(ctx->fieldSystem, &msgData);
    GetStrBufFromSentence(&msgData, sentenceType, sentenceID, word1, word2);

    if (canSkipDelay != 0xFF) {
        PrintFieldMessage(&msgData, FONT_MESSAGE, GetTextFrameDelay(ctx), canSkipDelay, FALSE);
    } else {
        PrintTextMessage(&msgData, FONT_MESSAGE);
    }
}

void ScriptMessage_ShowTemplate(ScriptContext *fieldSystem, StringTemplate *template, u8 bufferEntryID, u8 canSkipDelay) {
    ScriptMessage msgData;

    Init_ScriptMessageTemplate(fieldSystem->fieldSystem, template, &msgData);
    OpenMessageBox(fieldSystem->fieldSystem, &msgData);
    LoadAndFormatMessage(&msgData, fieldSystem->loader, bufferEntryID);
    PrintFieldMessage(&msgData, FONT_MESSAGE, GetTextFrameDelay(fieldSystem), canSkipDelay, FALSE);
}

static u8 GetTextFrameDelay(ScriptContext *ctx) {
    return Options_TextFrameDelay(SaveData_GetOptions(ctx->fieldSystem->saveData));
}

static void InitScriptMessage(FieldSystem *fieldSystem, ScriptMessage *msgData) {
    msgData->msgBuf = *(Strbuf **)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_BUF);
    msgData->tempBuf = *(Strbuf **)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TEMPORARY_BUF);
    msgData->template = *(StringTemplate **)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    msgData->window = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_WINDOW);
    msgData->isOpen = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_IS_MSG_BOX_OPEN);
    msgData->messageID = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_ID);
}

static void Init_ScriptMessageTemplate(FieldSystem *fieldSystem, StringTemplate *template, ScriptMessage *msgData) {
    msgData->msgBuf = *(Strbuf **)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_BUF);
    msgData->tempBuf = *(Strbuf **)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TEMPORARY_BUF);
    msgData->template = template;
    msgData->window = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_WINDOW);
    msgData->isOpen = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_IS_MSG_BOX_OPEN);
    msgData->messageID = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_ID);
}

static void OpenMessageBox(FieldSystem *fieldSystem, ScriptMessage *msgData) {
    if (*(msgData->isOpen) == FALSE) {
        FieldMessage_AddWindow(fieldSystem->bgConfig, msgData->window, BG_LAYER_MAIN_3);
        FieldMessage_DrawWindow(msgData->window, SaveData_GetOptions(fieldSystem->saveData));
        *(msgData->isOpen) = TRUE;
    }

    Window_FillTilemap(msgData->window, 15);
}

static void LoadAndFormatMessage(ScriptMessage *msgData, const MessageLoader *msgLoader, u32 bufferEntryID) {
    MessageLoader_GetStrbuf(msgLoader, bufferEntryID, msgData->tempBuf);
    StringTemplate_Format(msgData->template, msgData->msgBuf, msgData->tempBuf);
}

static void GetStrBufFromSentence(ScriptMessage *msgData, u16 sentenceType, u16 sentenceID, u16 word1, u16 word2) {
    Sentence sentence;
    Strbuf *strBuf;

    sub_02014A84(&sentence);
    sub_02014CE0(&sentence, sentenceType, sentenceID);
    sub_02014CF8(&sentence, 0, word1);
    sub_02014CF8(&sentence, 1, word2);

    strBuf = sub_02014B34(&sentence, HEAP_ID_FIELD_TASK);

    Strbuf_Copy(msgData->msgBuf, strBuf);
    Strbuf_Free(strBuf);
}

static void PrintFieldMessage(ScriptMessage *msgData, int fontID, int renderDelay, int canSkipDelay, BOOL autoScroll) {
    *(msgData->messageID) = FieldMessage_PrintWithParams(msgData->window, msgData->msgBuf, fontID, renderDelay, canSkipDelay, autoScroll);
}

static void PrintTextMessage(ScriptMessage *msgData, int fontID) {
    *(msgData->messageID) = Text_AddPrinterWithParams(msgData->window, fontID, msgData->msgBuf, 0, 0, TEXT_SPEED_INSTANT, NULL);
}
