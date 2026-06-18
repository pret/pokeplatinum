#include "easy_chat_words.h"

#include <nitro.h>

#include "constants/versions.h"
#include "generated/abilities.h"
#include "generated/moves.h"
#include "generated/pokemon_types.h"
#include "generated/text_banks.h"

#include "graphics.h"
#include "heap.h"
#include "math_util.h"
#include "message.h"
#include "savedata.h"
#include "string_gf.h"

#include "res/text/bank/ability_names_uppercase.h"
#include "res/text/bank/feelings.h"
#include "res/text/bank/greetings.h"
#include "res/text/bank/lifestyle_words.h"
#include "res/text/bank/move_names_uppercase.h"
#include "res/text/bank/people_words.h"
#include "res/text/bank/pokemon_type_names.h"
#include "res/text/bank/species_name.h"
#include "res/text/bank/tough_words.h"
#include "res/text/bank/trainer_words.h"
#include "res/text/bank/union_words.h"

static const u16 sTextBankEntryCounts[] = {
    TEXT_BANK_SPECIES_NAME_ENTRY_COUNT,
    TEXT_BANK_MOVE_NAMES_UPPERCASE_ENTRY_COUNT,
    TEXT_BANK_POKEMON_TYPE_NAMES_ENTRY_COUNT,
    TEXT_BANK_ABILITY_NAMES_UPPERCASE_ENTRY_COUNT,
    TEXT_BANK_TRAINER_WORDS_ENTRY_COUNT,
    TEXT_BANK_PEOPLE_WORDS_ENTRY_COUNT,
    TEXT_BANK_GREETINGS_ENTRY_COUNT,
    TEXT_BANK_LIFESTYLE_WORDS_ENTRY_COUNT,
    TEXT_BANK_FEELINGS_ENTRY_COUNT,
    TEXT_BANK_TOUGH_WORDS_ENTRY_COUNT,
    TEXT_BANK_UNION_WORDS_ENTRY_COUNT
};

static const u16 sTextBanks[] = {
    TEXT_BANK_SPECIES_NAME,
    TEXT_BANK_MOVE_NAMES_UPPERCASE,
    TEXT_BANK_POKEMON_TYPE_NAMES,
    TEXT_BANK_ABILITY_NAMES_UPPERCASE,
    TEXT_BANK_TRAINER_WORDS,
    TEXT_BANK_PEOPLE_WORDS,
    TEXT_BANK_GREETINGS,
    TEXT_BANK_LIFESTYLE_WORDS,
    TEXT_BANK_FEELINGS,
    TEXT_BANK_TOUGH_WORDS,
    TEXT_BANK_UNION_WORDS
};

static const u16 sDummy[] = {
    ABILITY_WORD(ABILITY_ANTICIPATION),
    FEELINGS_WORD(Feelings_Text_Anticipation)
};

static const u16 sDummy2[] = {
    GREETING_WORD(Greetings_Text_Hey),
    GREETING_WORD(Greetings_Text_Hey_Unused)
};

static const u16 sDummy3[] = {
    GREETING_WORD(Greetings_Text_Huh_Unused),
    GREETING_WORD(Greetings_Text_Huh)
};

static const u16 sDummy4[] = {
    PEOPLE_WORD(PeopleWords_Text_I_Unused),
    PEOPLE_WORD(PeopleWords_Text_I_Unused2),
    PEOPLE_WORD(PeopleWords_Text_I_Unused3),
    PEOPLE_WORD(PeopleWords_Text_I)
};

static const u16 sDummy5[] = {
    PEOPLE_WORD(PeopleWords_Text_Kids),
    PEOPLE_WORD(PeopleWords_Text_Kids_Unused)
};

static const u16 sDummy6[] = {
    GREETING_WORD(Greetings_Text_NoWay),
    FEELINGS_WORD(Feelings_Text_NoWay)
};

static const u16 sDummy7[] = {
    GREETING_WORD(Greetings_Text_OK),
    GREETING_WORD(Greetings_Text_OK_Unused)
};

static const u16 sDummy8[] = {
    MOVE_WORD(MOVE_PSYCHIC),
    TYPE_WORD(TYPE_PSYCHIC)
};

static const u16 sDummy9[] = {
    ABILITY_WORD(ABILITY_SIMPLE),
    FEELINGS_WORD(Feelings_Text_Simple)
};

static const u16 sDummy10[] = {
    GREETING_WORD(Greetings_Text_Welcome_Unused),
    GREETING_WORD(Greetings_Text_Welcome)
};

static const u16 sDummy11[] = {
    GREETING_WORD(Greetings_Text_Wow),
    GREETING_WORD(Greetings_Text_Wow_Unused)
};

static const u16 sDummy12[] = {
    PEOPLE_WORD(PeopleWords_Text_You),
    PEOPLE_WORD(PeopleWords_Text_You_Unused)
};

static const struct {
    const u16 *dummy;
    int length;
} sDummy13[] = {
    { sDummy, 2 },
    { sDummy2, 2 },
    { sDummy3, 2 },
    { sDummy4, 4 },
    { sDummy5, 2 },
    { sDummy6, 2 },
    { sDummy7, 2 },
    { sDummy8, 2 },
    { sDummy9, 2 },
    { sDummy10, 2 },
    { sDummy11, 2 },
    { sDummy12, 2 }
};

// function gets optimized out but is necessary to match due to the data inside it
void Dummy_020E5538(void)
{
    sDummy13[0];
}

EasyChatWordLoader *EasyChatWordLoader_New(enum HeapID heapID)
{
    EasyChatWordLoader *wordLoader = Heap_Alloc(heapID, sizeof(EasyChatWordLoader));

    for (int i = 0; i < EASY_CHAT_WORD_TEXT_BANK_COUNT; i++) {
        wordLoader->heapID = heapID;
        wordLoader->loaders[i] = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, sTextBanks[i], heapID);
    }

    return wordLoader;
}

void EasyChatWordLoader_Free(EasyChatWordLoader *wordLoader)
{
    for (int i = 0; i < EASY_CHAT_WORD_TEXT_BANK_COUNT; i++) {
        MessageLoader_Free(wordLoader->loaders[i]);
    }

    Heap_Free(wordLoader);
}

void EasyChatWordLoader_GetString(EasyChatWordLoader *wordLoader, u16 word, String *out)
{
    u32 loaderIndex, bankEntry;

    EasyChatWord_GetLoaderIndexAndEntry(word, &loaderIndex, &bankEntry);
    MessageLoader_GetString(wordLoader->loaders[loaderIndex], bankEntry, out);
}

void EasyChatWord_ToString(u16 word, String *out)
{
    if (word != WORD_NONE) {
        u32 bankID, bankEntry;

        EasyChatWord_GetLoaderIndexAndEntry(word, &bankID, &bankEntry);
        bankID = sTextBanks[bankID];
        MessageBank_GetStringFromNARC(NARC_INDEX_MSGDATA__PL_MSG, bankID, bankEntry, 0, out);
    } else {
        String_Clear(out);
    }
}

u16 EasyChatWord_FromBankAndEntry(u32 bankID, u32 bankEntry)
{
    for (u32 i = 0; i < EASY_CHAT_WORD_TEXT_BANK_COUNT; i++) {
        if (sTextBanks[i] == bankID) {
            u16 total, j;

            for (j = 0, total = 0; j < i; j++) {
                total += sTextBankEntryCounts[j];
            }

            return total + bankEntry;
        }
    }

    return WORD_NONE;
}

BOOL EasyChatWord_GetLoaderIndexAndEntry(u16 word, u32 *outLoaderIndex, u32 *outBankEntry)
{
    u32 i, total;

    u32 clampedWord = word & 0xFFF; // why?
    total = 0;

    for (i = 0; i < EASY_CHAT_WORD_TEXT_BANK_COUNT; i++) {
        total += sTextBankEntryCounts[i];

        if (clampedWord < total) {
            *outLoaderIndex = i;
            *outBankEntry = clampedWord - (total - sTextBankEntryCounts[i]);
            return TRUE;
        }
    }

    return FALSE;
}

u32 UnlockedEasyChatWords_SaveSize(void)
{
    return sizeof(UnlockedEasyChatWords);
}

void UnlockedEasyChatWords_Init(UnlockedEasyChatWords *unlockedWords)
{
    static const struct {
        u8 language;
        u8 bankEntry;
    } greetingMapping[] = {
        { LANGUAGE_JAPANESE, Greetings_Text_Konnichiwa },
        { LANGUAGE_ENGLISH, Greetings_Text_Hello },
        { LANGUAGE_FRENCH, Greetings_Text_Bonjour },
        { LANGUAGE_ITALIAN, Greetings_Text_Ciao },
        { LANGUAGE_GERMAN, Greetings_Text_Hallo },
        { LANGUAGE_SPANISH, Greetings_Text_Hola }
    };

    unlockedWords->unlockedGreetingBits = 0;
    unlockedWords->unlockedToughWordBits = 0;

    for (int i = 0; i < NELEMS(greetingMapping); i++) {
        if (GAME_LANGUAGE == greetingMapping[i].language) {
            EasyChatWords_UnlockGreeting(unlockedWords, greetingMapping[i].bankEntry);
            break;
        }
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_UNLOCKED_EASY_CHAT_WORDS);
}

UnlockedEasyChatWords *SaveData_GetUnlockedEasyChatWords(SaveData *saveData)
{
    SaveData_Checksum(SAVE_TABLE_ENTRY_UNLOCKED_EASY_CHAT_WORDS);
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_UNLOCKED_EASY_CHAT_WORDS);
}

BOOL EasyChatWords_IsToughWordUnlocked(const UnlockedEasyChatWords *unlockedWords, u32 bankEntry)
{
    return (unlockedWords->unlockedToughWordBits >> bankEntry) & 1;
}

u32 EasyChatWords_TryUnlockRandomToughWord(UnlockedEasyChatWords *unlockedWords)
{
    u32 i, lockedCount;

    for (i = 0, lockedCount = 0; i < TEXT_BANK_TOUGH_WORDS_ENTRY_COUNT; i++) {
        if (((unlockedWords->unlockedToughWordBits >> i) & 1) == 0) {
            lockedCount++;
        }
    }

    if (lockedCount) {
        int counter = LCRNG_Next() % lockedCount;

        for (i = 0; i < TEXT_BANK_TOUGH_WORDS_ENTRY_COUNT; i++) {
            if (((unlockedWords->unlockedToughWordBits >> i) & 1) == 0) {
                if (counter == 0) {
                    unlockedWords->unlockedToughWordBits |= (1 << i);

                    SaveData_SetChecksum(SAVE_TABLE_ENTRY_UNLOCKED_EASY_CHAT_WORDS);

                    return i;
                } else {
                    counter--;
                }
            }
        }
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_UNLOCKED_EASY_CHAT_WORDS);

    return TEXT_BANK_TOUGH_WORDS_ENTRY_COUNT;
}

BOOL EasyChatWords_AreAllToughWordsUnlocked(UnlockedEasyChatWords *unlockedWords)
{
    for (u32 i = 0; i < TEXT_BANK_TOUGH_WORDS_ENTRY_COUNT; i++) {
        if (((unlockedWords->unlockedToughWordBits >> i) & 1) == 0) {
            return FALSE;
        }
    }

    return TRUE;
}

u16 EasyChatWords_GetToughWordFromBankEntry(u32 bankEntry)
{
    int i;
    u16 wordID = 0;

    for (i = 0; i < EASY_CHAT_WORD_TEXT_BANK_TOUGH_WORDS; i++) {
        wordID += sTextBankEntryCounts[i];
    }

    return wordID + bankEntry;
}

BOOL EasyChatWords_IsGreetingUnlocked(const UnlockedEasyChatWords *unlockedWords, int bankEntry)
{
    return (unlockedWords->unlockedGreetingBits >> bankEntry) & 1;
}

void EasyChatWords_UnlockGreeting(UnlockedEasyChatWords *unlockedWords, int bankEntry)
{
    unlockedWords->unlockedGreetingBits |= (1 << bankEntry);

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_UNLOCKED_EASY_CHAT_WORDS);
}

UnkStruct_02014FB0 *sub_02014FB0(enum HeapID heapID)
{
    UnkStruct_02014FB0 *v0;
    u32 fileSize;

    v0 = Heap_Alloc(heapID, sizeof(UnkStruct_02014FB0));
    memset(v0, 0, sizeof(UnkStruct_02014FB0));

    v0->unk_04 = LoadMemberFromNARC_OutFileSize(NARC_INDEX_RESOURCE__ENG__PMS_AIKOTOBA__PMS_AIKOTOBA, 0, FALSE, heapID, FALSE, &fileSize);
    v0->unk_00 = fileSize / sizeof(u32);

    return v0;
}

void sub_02014FF0(UnkStruct_02014FB0 *param0)
{
    Heap_Free(param0->unk_04);
    Heap_Free(param0);
}

u32 sub_02015004(const UnkStruct_02014FB0 *param0)
{
    return param0->unk_00;
}

u16 sub_02015008(const UnkStruct_02014FB0 *param0, u32 param1)
{
    GF_ASSERT(param0);

    if (param0->unk_00 <= param1) {
        return 0xffff;
    }

    return param0->unk_04[param1];
}

s16 sub_02015030(const UnkStruct_02014FB0 *param0, u16 param1)
{
    int v0;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_04[v0] == param1) {
            return v0;
        }
    }

    return -1;
}
