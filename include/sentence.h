#ifndef POKEPLATINUM_SENTENCE_H
#define POKEPLATINUM_SENTENCE_H

#include "constants/heap.h"

#include "string_gf.h"

#define MAX_SENTENCE_WORD_SLOTS 2

#define FRONTIER_SENTENCE_TYPE_NO_1 3

typedef struct Sentence {
    u16 type;
    u16 id;
    u16 words[MAX_SENTENCE_WORD_SLOTS];
} Sentence;

enum SentenceType {
    SENTENCE_TYPE_NONE = 0xFFFF,
    SENTENCE_TYPE_PRE_BATTLE = 0,
    SENTENCE_TYPE_WIN,
    SENTENCE_TYPE_LOSS,
    SENTENCE_TYPE_GENERAL,
    SENTENCE_TYPE_UNION_ROOM,
    SENTENCE_TYPE_COUNT,
};

void Sentence_Init(Sentence *sentence);
void Sentence_InitWithType(Sentence *sentence, u32 type);
void Sentence_InitWithEnteredUnionRoom(Sentence *sentence);
void Sentence_SetDefaultFrontierFields(Sentence *sentence, int type);
String *Sentence_ToString(const Sentence *sentence, enum HeapID heapID);
String *Sentence_GetTemplateString(const Sentence *sentence, enum HeapID heapID);
BOOL Sentence_IsValid(const Sentence *sentence);
BOOL Sentence_IsComplete(const Sentence *sentence);
u16 Sentence_GetWord(const Sentence *sentence, int slot);
u32 Sentence_GetType(const Sentence *sentence);
u32 Sentence_GetID(const Sentence *sentence);
BOOL Sentence_Compare(const Sentence *sentence1, const Sentence *sentence2);
void Sentence_Copy(Sentence *dest, const Sentence *src);
u32 Sentence_GetBankEntryCountForType(u32 type);
void Sentence_SetTypeAndID(Sentence *sentence, u32 type, u32 id);
void Sentence_SetWord(Sentence *sentence, u32 index, u16 word);
void Sentence_ClearUnusedWords(Sentence *sentence);

#endif // POKEPLATINUM_SENTENCE_H
