#include "overlay005/ov5_021DD42C.h"

#include "nitro/types.h"
#include <nitro.h>
#include <string.h>

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

typedef struct {
    Strbuf *msgBuf;
    Strbuf *tempBuf;
    StringTemplate *template;
    Window *window;
    u8 *isOpen;
    u8 *messageID;
} MessageData;

static u8 GetTextFrameDelay(ScriptContext *ctx);
static void Init(FieldSystem *fieldSystem, MessageData *msgData);
static void Init_Template(FieldSystem *fieldSystem, StringTemplate *template, MessageData *msgData);
static void OpenMessage(FieldSystem *fieldSystem, MessageData *msgData);
static void LoadFromBuffer(MessageData *msgData, const MessageLoader *msgLoader, u32 bufferEntryID);
static void GetStrBufFromSentence(MessageData *msgData, u16 sentenceType, u16 sentenceID, u16 word1, u16 word2);
static void PrintFieldMessage(MessageData *msgData, int fontID, int renderDelay, int canSkipDelay, BOOL autoScroll);
static void PrintTextMessage(MessageData *msgData, int fontID);

void MessageOptions_Init(MessageOptions *msgOptions, ScriptContext *ctx)
{
    msgOptions->renderDelay = GetTextFrameDelay(ctx);
    msgOptions->autoScroll = FALSE;
    msgOptions->fontID = FONT_MESSAGE;
}

void Message_Show(ScriptContext *ctx, const MessageLoader *msgLoader, u16 messageID, u8 canSkipDelay, MessageOptions *msgOptions)
{
    MessageData msgData;
    u8 renderDelay;
    u8 autoScroll;
    u8 fontID;

    Init(ctx->fieldSystem, &msgData);
    OpenMessage(ctx->fieldSystem, &msgData);
    LoadFromBuffer(&msgData, msgLoader, messageID);

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

void Message_ShowInstant(ScriptContext *ctx, const MessageLoader *msgLoader, int messageID)
{
    MessageData msgData;

    Init(ctx->fieldSystem, &msgData);
    OpenMessage(ctx->fieldSystem, &msgData);
    LoadFromBuffer(&msgData, msgLoader, messageID);
    PrintTextMessage(&msgData, FONT_MESSAGE);
}

void Message_ShowSentence(ScriptContext *ctx, u16 sentenceType, u16 sentenceID, u16 word1, s16 word2, u8 canSkipDelay)
{
    MessageData msgData;
    Sentence unused;

    Init(ctx->fieldSystem, &msgData);
    OpenMessage(ctx->fieldSystem, &msgData);
    GetStrBufFromSentence(&msgData, sentenceType, sentenceID, word1, word2);

    if (canSkipDelay != 0xFF) {
        PrintFieldMessage(&msgData, FONT_MESSAGE, GetTextFrameDelay(ctx), canSkipDelay, FALSE);
    } else {
        PrintTextMessage(&msgData, FONT_MESSAGE);
    }
}

void Message_ShowTemplate(ScriptContext *fieldSystem, StringTemplate *template, u8 bufferEntryID, u8 canSkipDelay)
{
    MessageData msgData;

    Init_Template(fieldSystem->fieldSystem, template, &msgData);
    OpenMessage(fieldSystem->fieldSystem, &msgData);
    LoadFromBuffer(&msgData, fieldSystem->loader, bufferEntryID);
    PrintFieldMessage(&msgData, FONT_MESSAGE, GetTextFrameDelay(fieldSystem), canSkipDelay, FALSE);
}

static u8 GetTextFrameDelay(ScriptContext *ctx)
{
    return Options_TextFrameDelay(SaveData_GetOptions(ctx->fieldSystem->saveData));
}

static void Init(FieldSystem *fieldSystem, MessageData *msgData)
{
    msgData->msgBuf = *(Strbuf **)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_BUF);
    msgData->tempBuf = *(Strbuf **)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TEMPORARY_BUF);
    msgData->template = *(StringTemplate **)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    msgData->window = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_WINDOW);
    msgData->isOpen = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_IS_MSG_BOX_OPEN);
    msgData->messageID = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_ID);
}

static void Init_Template(FieldSystem *fieldSystem, StringTemplate *template, MessageData *msgData)
{
    msgData->msgBuf = *(Strbuf **)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_BUF);
    msgData->tempBuf = *(Strbuf **)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TEMPORARY_BUF);
    msgData->template = template;
    msgData->window = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_WINDOW);
    msgData->isOpen = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_IS_MSG_BOX_OPEN);
    msgData->messageID = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_ID);
}

static void OpenMessage(FieldSystem *fieldSystem, MessageData *msgData)
{
    if (*(msgData->isOpen) == FALSE) {
        FieldMessage_AddWindow(fieldSystem->bgConfig, msgData->window, BG_LAYER_MAIN_3);
        FieldMessage_DrawWindow(msgData->window, SaveData_GetOptions(fieldSystem->saveData));
        *(msgData->isOpen) = TRUE;
    }

    Window_FillTilemap(msgData->window, 15);
}

static void LoadFromBuffer(MessageData *msgData, const MessageLoader *msgLoader, u32 bufferEntryID)
{
    MessageLoader_GetStrbuf(msgLoader, bufferEntryID, msgData->tempBuf);
    StringTemplate_Format(msgData->template, msgData->msgBuf, msgData->tempBuf);
}

static void GetStrBufFromSentence(MessageData *msgData, u16 sentenceType, u16 sentenceID, u16 word1, u16 word2)
{
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

static void PrintFieldMessage(MessageData *msgData, int fontID, int renderDelay, int canSkipDelay, BOOL autoScroll)
{
    *(msgData->messageID) = FieldMessage_PrintWithParams(msgData->window, msgData->msgBuf, fontID, renderDelay, canSkipDelay, autoScroll);
}

static void PrintTextMessage(MessageData *msgData, int fontID)
{
    *(msgData->messageID) = Text_AddPrinterWithParams(msgData->window, fontID, msgData->msgBuf, 0, 0, TEXT_SPEED_INSTANT, NULL);
}
