#ifndef POKEPLATINUM_EASY_CHAT_WORDS_H
#define POKEPLATINUM_EASY_CHAT_WORDS_H

#include "message.h"
#include "savedata.h"
#include "string_gf.h"

#define WORD_NONE 0xFFFF

enum EasyChatWordTextBank {
    EASY_CHAT_WORD_TEXT_BANK_SPECIES_NAME = 0,
    EASY_CHAT_WORD_TEXT_BANK_MOVE_NAMES_UPPERCASE,
    EASY_CHAT_WORD_TEXT_BANK_POKEMON_TYPE_NAMES,
    EASY_CHAT_WORD_TEXT_BANK_ABILITY_NAMES_UPPERCASE,
    EASY_CHAT_WORD_TEXT_BANK_TRAINER_WORDS,
    EASY_CHAT_WORD_TEXT_BANK_PEOPLE_WORDS,
    EASY_CHAT_WORD_TEXT_BANK_GREETINGS,
    EASY_CHAT_WORD_TEXT_BANK_LIFESTYLE_WORDS,
    EASY_CHAT_WORD_TEXT_BANK_FEELINGS,
    EASY_CHAT_WORD_TEXT_BANK_TOUGH_WORDS,
    EASY_CHAT_WORD_TEXT_BANK_UNION_WORDS,
    EASY_CHAT_WORD_TEXT_BANK_COUNT,
};

typedef struct UnlockedEasyChatWords {
    u32 unlockedGreetingBits;
    u32 unlockedToughWordBits;
} UnlockedEasyChatWords;

typedef struct EasyChatWordLoader {
    enum HeapID heapID;
    MessageLoader *loaders[EASY_CHAT_WORD_TEXT_BANK_COUNT];
} EasyChatWordLoader;

typedef struct UnkStruct_02014FB0 {
    u32 unk_00;
    u32 *unk_04;
} UnkStruct_02014FB0;

EasyChatWordLoader *EasyChatWordLoader_New(enum HeapID heapID);
void EasyChatWordLoader_Free(EasyChatWordLoader *wordLoader);
void EasyChatWordLoader_GetString(EasyChatWordLoader *wordLoader, u16 word, String *out);
void EasyChatWord_ToString(u16 word, String *out);
u16 EasyChatWord_FromBankAndEntry(u32 bankID, u32 bankEntry);
BOOL EasyChatWord_GetLoaderIndexAndEntry(u16 word, u32 *outLoaderIndex, u32 *outBankEntry);
u32 UnlockedEasyChatWords_SaveSize(void);
void UnlockedEasyChatWords_Init(UnlockedEasyChatWords *unlockedWords);
UnlockedEasyChatWords *SaveData_GetUnlockedEasyChatWords(SaveData *saveData);
BOOL EasyChatWords_IsToughWordUnlocked(const UnlockedEasyChatWords *unlockedWords, u32 bankEntry);
u32 EasyChatWords_TryUnlockRandomToughWord(UnlockedEasyChatWords *unlockedWords);
BOOL EasyChatWords_AreAllToughWordsUnlocked(UnlockedEasyChatWords *unlockedWords);
u16 EasyChatWords_GetToughWordFromBankEntry(u32 bankEntry);
BOOL EasyChatWords_IsGreetingUnlocked(const UnlockedEasyChatWords *unlockedWords, int bankEntry);
void EasyChatWords_UnlockGreeting(UnlockedEasyChatWords *unlockedWords, int bankEntry);
UnkStruct_02014FB0 *sub_02014FB0(enum HeapID heapID);
void sub_02014FF0(UnkStruct_02014FB0 *param0);
u32 sub_02015004(const UnkStruct_02014FB0 *param0);
u16 sub_02015008(const UnkStruct_02014FB0 *param0, u32 param1);
s16 sub_02015030(const UnkStruct_02014FB0 *param0, u16 param1);

#endif // POKEPLATINUM_EASY_CHAT_WORDS_H
