#ifndef POKEPLATINUM_OV5_021DD42C_H
#define POKEPLATINUM_OV5_021DD42C_H

#include "field_script_context.h"
#include "message.h"
#include "string_template.h"

typedef struct {
    u8 renderDelay;
    u8 autoScroll;
    u8 fontID;
} MessageOptions;

void MessageOptions_Init(MessageOptions *msgOptions, ScriptContext *ctx);
void Message_Show(ScriptContext *ctx, const MessageLoader *msgLoader, u16 messageID, u8 canSkipDelay, MessageOptions *msgOptions);
void Message_ShowInstant(ScriptContext *ctx, const MessageLoader *msgLoader, int messageID);
void Message_ShowSentence(ScriptContext *ctx, u16 sentenceType, u16 sentenceID, u16 word1, s16 word2, u8 canSkipDelay);
void Message_ShowTemplate(ScriptContext *ctx, StringTemplate *template, u8 bufferEntryID, u8 canSkipDelay);

#endif // POKEPLATINUM_OV5_021DD42C_H
