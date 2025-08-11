#ifndef POKEPLATINUM_OV5_SCRIPT_MESSAGE_H
#define POKEPLATINUM_OV5_SCRIPT_MESSAGE_H

#include "field_script_context.h"
#include "message.h"
#include "string_template.h"

typedef struct ScriptMessageOptions {
    u8 renderDelay;
    u8 autoScroll;
    u8 fontID;
} ScriptMessageOptions;

void ScriptMessageOptions_Init(ScriptMessageOptions *msgOptions, ScriptContext *ctx);
void ScriptMessage_Show(ScriptContext *ctx, const MessageLoader *msgLoader, u16 messageID, u8 canSkipDelay, ScriptMessageOptions *msgOptions);
void ScriptMessage_ShowInstant(ScriptContext *ctx, const MessageLoader *msgLoader, int messageID);
void ScriptMessage_ShowSentence(ScriptContext *ctx, u16 sentenceType, u16 sentenceID, u16 word1, s16 word2, u8 canSkipDelay);
void ScriptMessage_ShowTemplate(ScriptContext *ctx, StringTemplate *template, u8 bufferEntryID, u8 canSkipDelay);

#endif // POKEPLATINUM_OV5_SCRIPT_MESSAGE_H
