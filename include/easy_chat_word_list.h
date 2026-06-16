#ifndef POKEPLATINUM_EASY_CHAT_WORD_LIST_H
#define POKEPLATINUM_EASY_CHAT_WORD_LIST_H

#include "applications/easy_chat/defs.h"

#include "easy_chat_args.h"
#include "easy_chat_words.h"
#include "string_gf.h"

#define ADDED_WORD_BITS_SIZE ((EASY_CHAT_WORD_COUNT >> 3) + 1)

typedef struct WordList {
    const EasyChatArgs *easyChatArgs;
    EasyChatWordLoader *wordLoader;
    u32 groupWordCounts[EASY_CHAT_GROUP_COUNT];
    u32 groupStartIndices[EASY_CHAT_GROUP_COUNT];
    u16 wordsByGroup[EASY_CHAT_WORD_COUNT];
    u32 letterWordCounts[ABC_MODE_CHAR_COUNT];
    u32 letterStartIndices[ABC_MODE_CHAR_COUNT];
    u16 wordsByLetter[EASY_CHAT_WORD_COUNT];
    u8 addedWordBits[ADDED_WORD_BITS_SIZE];
} WordList;

WordList *EasyChatWordList_New(enum HeapID heapID, const EasyChatArgs *easyChatArgs);
void EasyChatWordList_Free(WordList *wordList);
u32 EasyChatWordList_GetGroupWordCount(const WordList *wordList, u32 group);
void EasyChatWordList_GetStringByGroupIndex(const WordList *wordList, u32 group, u32 index, String *out);
u16 EasyChatWordList_GetWordByGroupIndex(const WordList *wordList, u32 group, u32 index);
u32 EasyChatWordList_GetLetterWordCount(const WordList *wordList, u32 letter);
void EasyChatWordList_GetStringByLetterIndex(const WordList *wordList, u32 letter, u32 index, String *out);
u16 EasyChatWordList_GetWordByLetterIndex(const WordList *wordList, u32 letter, u32 index);

#endif // POKEPLATINUM_EASY_CHAT_WORD_LIST_H
