#ifndef POKEPLATINUM_EASY_CHAT_ARGS_H
#define POKEPLATINUM_EASY_CHAT_ARGS_H

#include "applications/easy_chat/defs.h"

#include "easy_chat_sentence.h"
#include "easy_chat_words.h"
#include "pokedex.h"
#include "savedata.h"

typedef struct EasyChatArgs {
    u8 type;
    u8 instructionBankEntry;
    u8 isUnmodified;
    u8 wasUpdated;
    u8 isGameCompleted;
    u8 unk_05;
    int frame;
    const Pokedex *pokedex;
    const UnlockedEasyChatWords *unlockedWords;
    EasyChatSentence sentence;
    u16 words[MAX_EASY_CHAT_WORDS];
    u8 padding[4];
} EasyChatArgs;

EasyChatArgs *EasyChatArgs_New(u32 type, u32 param1, SaveData *saveData, enum HeapID heapID);
void EasyChatArgs_Free(EasyChatArgs *args);
void EasyChatArgs_SetOneWord(EasyChatArgs *args, u16 word);
void EasyChatArgs_SetTwoWords(EasyChatArgs *args, u16 word1, u16 word2);
void EasyChatArgs_SetSentence(EasyChatArgs *args, const EasyChatSentence *sentence);
void EasyChatArgs_FlagAsUnmodified(EasyChatArgs *args);
void sub_02097520(EasyChatArgs *args);
BOOL EasyChatArgs_IsUnmodified(const EasyChatArgs *args);
BOOL EasyChatArgs_WasUpdated(const EasyChatArgs *args);
u16 EasyChatArgs_GetOneWord(const EasyChatArgs *args);
void EasyChatArgs_CopyTwoWordsTo(const EasyChatArgs *args, u16 *dest);
void EasyChatArgs_CopySentenceTo(const EasyChatArgs *args, EasyChatSentence *dest);
u32 EasyChatArgs_GetType(const EasyChatArgs *args);
u32 EasyChatArgs_GetInstructionBankEntry(const EasyChatArgs *args);
int EasyChatArgs_GetFrame(const EasyChatArgs *args);
const Pokedex *EasyChatArgs_GetPokedex(const EasyChatArgs *args);
const UnlockedEasyChatWords *EasyChatArgs_GetUnlockedWords(const EasyChatArgs *args);
BOOL EasyChatArgs_IsGameCompleted(const EasyChatArgs *args);
BOOL sub_02097568(const EasyChatArgs *args);
void EasyChatArgs_GetContent(const EasyChatArgs *args, u16 *outWords, EasyChatSentence *outSentence);
BOOL EasyChatArgs_Compare(const EasyChatArgs *args, const u16 *words, const EasyChatSentence *sentence);
void EasyChatArgs_UpdateContent(EasyChatArgs *args, const u16 *param1, const EasyChatSentence *param2);

#endif // POKEPLATINUM_EASY_CHAT_ARGS_H
