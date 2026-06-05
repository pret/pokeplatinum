#ifndef POKEPLATINUM_WORDS_H
#define POKEPLATINUM_WORDS_H

#include "message.h"
#include "savedata.h"
#include "string_gf.h"

#define WORD_NONE 0xFFFF

enum WordTextBank {
    WORD_TEXT_BANK_SPECIES_NAME = 0,
    WORD_TEXT_BANK_MOVE_NAMES_UPPERCASE,
    WORD_TEXT_BANK_POKEMON_TYPE_NAMES,
    WORD_TEXT_BANK_ABILITY_NAMES_UPPERCASE,
    WORD_TEXT_BANK_TRAINER_WORDS,
    WORD_TEXT_BANK_PEOPLE_WORDS,
    WORD_TEXT_BANK_GREETINGS,
    WORD_TEXT_BANK_LIFESTYLE_WORDS,
    WORD_TEXT_BANK_FEELINGS,
    WORD_TEXT_BANK_TOUGH_WORDS,
    WORD_TEXT_BANK_UNION_WORDS,
    WORD_TEXT_BANK_COUNT,
};

typedef struct UnlockedWords {
    u32 unlockedGreetingBits;
    u32 unlockedToughWordBits;
} UnlockedWords;

typedef struct WordLoader {
    enum HeapID heapID;
    MessageLoader *loaders[WORD_TEXT_BANK_COUNT];
} WordLoader;

typedef struct UnkStruct_02014FB0 {
    u32 unk_00;
    u32 *unk_04;
} UnkStruct_02014FB0;

WordLoader *WordLoader_New(enum HeapID heapID);
void WordLoader_Free(WordLoader *wordLoader);
void WordLoader_GetString(WordLoader *wordLoader, u16 word, String *out);
void Word_ToString(u16 word, String *out);
u16 Word_FromBankAndEntry(u32 bankID, u32 bankEntry);
BOOL Word_GetLoaderIndexAndEntry(u16 word, u32 *outLoaderIndex, u32 *outBankEntry);
u32 UnlockedWords_SaveSize(void);
void UnlockedWords_Init(UnlockedWords *unlockedWords);
UnlockedWords *SaveData_GetUnlockedWords(SaveData *saveData);
BOOL Words_IsToughWordUnlocked(const UnlockedWords *unlockedWords, u32 bankEntry);
u32 Words_TryUnlockRandomToughWord(UnlockedWords *unlockedWords);
BOOL Words_AreAllToughWordsUnlocked(UnlockedWords *unlockedWords);
u16 Words_GetToughWordFromBankEntry(u32 bankEntry);
BOOL Words_IsGreetingUnlocked(const UnlockedWords *unlockedWords, int bankEntry);
void Words_UnlockGreeting(UnlockedWords *unlockedWords, int bankEntry);
UnkStruct_02014FB0 *sub_02014FB0(enum HeapID heapID);
void sub_02014FF0(UnkStruct_02014FB0 *param0);
u32 sub_02015004(const UnkStruct_02014FB0 *param0);
u16 sub_02015008(const UnkStruct_02014FB0 *param0, u32 param1);
s16 sub_02015030(const UnkStruct_02014FB0 *param0, u16 param1);

#endif // POKEPLATINUM_WORDS_H
