#ifndef POKEPLATINUM_EASY_CHAT_SENTENCE_H
#define POKEPLATINUM_EASY_CHAT_SENTENCE_H

#include "constants/heap.h"

#include "string_gf.h"

#define MAX_EASY_CHAT_SENTENCE_WORD_SLOTS 2

#define FRONTIER_EASY_CHAT_SENTENCE_TYPE_NO_1 3

typedef struct EasyChatSentence {
    u16 type;
    u16 id;
    u16 words[MAX_EASY_CHAT_SENTENCE_WORD_SLOTS];
} EasyChatSentence;

enum EasyChatSentenceType {
    EASY_CHAT_SENTENCE_TYPE_NONE = 0xFFFF,
    EASY_CHAT_SENTENCE_TYPE_PRE_BATTLE = 0,
    EASY_CHAT_SENTENCE_TYPE_WIN,
    EASY_CHAT_SENTENCE_TYPE_LOSS,
    EASY_CHAT_SENTENCE_TYPE_GENERAL,
    EASY_CHAT_SENTENCE_TYPE_UNION_ROOM,
    EASY_CHAT_SENTENCE_TYPE_COUNT,
};

void EasyChatSentence_Init(EasyChatSentence *sentence);
void EasyChatSentence_InitWithType(EasyChatSentence *sentence, u32 type);
void EasyChatSentence_InitWithEnteredUnionRoom(EasyChatSentence *sentence);
void EasyChatSentence_SetDefaultFrontierFields(EasyChatSentence *sentence, int type);
String *EasyChatSentence_ToString(const EasyChatSentence *sentence, enum HeapID heapID);
String *EasyChatSentence_GetTemplateString(const EasyChatSentence *sentence, enum HeapID heapID);
BOOL EasyChatSentence_IsValid(const EasyChatSentence *sentence);
BOOL EasyChatSentence_IsComplete(const EasyChatSentence *sentence);
u16 EasyChatSentence_GetWord(const EasyChatSentence *sentence, int slot);
u32 EasyChatSentence_GetType(const EasyChatSentence *sentence);
u32 EasyChatSentence_GetID(const EasyChatSentence *sentence);
BOOL EasyChatSentence_Compare(const EasyChatSentence *sentence1, const EasyChatSentence *sentence2);
void EasyChatSentence_Copy(EasyChatSentence *dest, const EasyChatSentence *src);
u32 EasyChatSentence_GetBankEntryCountForType(u32 type);
void EasyChatSentence_SetTypeAndID(EasyChatSentence *sentence, u32 type, u32 id);
void EasyChatSentence_SetWord(EasyChatSentence *sentence, u32 index, u16 word);
void EasyChatSentence_ClearUnusedWords(EasyChatSentence *sentence);

#endif // POKEPLATINUM_EASY_CHAT_SENTENCE_H
