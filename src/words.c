#include "words.h"

#include <nitro.h>

#include "constants/versions.h"
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
    0x441,
    0x599
};

static const u16 sDummy2[] = {
    0x4C0,
    0x4F0
};

static const u16 sDummy3[] = {
    0x4A7,
    0x4E1
};

static const u16 sDummy4[] = {
    0x479,
    0x498,
    0x49B,
    0x49C
};

static const u16 sDummy5[] = {
    0x48F,
    0x497
};

static const u16 sDummy6[] = {
    0x4FC,
    0x596
};

static const u16 sDummy7[] = {
    0x4BB,
    0x500
};

static const u16 sDummy8[] = {
    0x24E,
    0x3D2
};

static const u16 sDummy9[] = {
    0x42C,
    0x59D
};

static const u16 sDummy10[] = {
    0x4B0,
    0x4FF
};

static const u16 sDummy11[] = {
    0x4B6,
    0x505
};

static const u16 sDummy12[] = {
    0x47A,
    0x48D
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

WordLoader *WordLoader_New(enum HeapID heapID)
{
    WordLoader *wordLoader = Heap_Alloc(heapID, sizeof(WordLoader));

    for (int i = 0; i < WORD_TEXT_BANK_COUNT; i++) {
        wordLoader->heapID = heapID;
        wordLoader->loaders[i] = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, sTextBanks[i], heapID);
    }

    return wordLoader;
}

void WordLoader_Free(WordLoader *wordLoader)
{
    for (int i = 0; i < WORD_TEXT_BANK_COUNT; i++) {
        MessageLoader_Free(wordLoader->loaders[i]);
    }

    Heap_Free(wordLoader);
}

void WordLoader_GetString(WordLoader *wordLoader, u16 word, String *out)
{
    u32 loaderIndex, bankEntry;

    Word_GetLoaderIndexAndEntry(word, &loaderIndex, &bankEntry);
    MessageLoader_GetString(wordLoader->loaders[loaderIndex], bankEntry, out);
}

void Word_ToString(u16 word, String *out)
{
    if (word != WORD_NONE) {
        u32 bankID, bankEntry;

        Word_GetLoaderIndexAndEntry(word, &bankID, &bankEntry);
        bankID = sTextBanks[bankID];
        MessageBank_GetStringFromNARC(NARC_INDEX_MSGDATA__PL_MSG, bankID, bankEntry, 0, out);
    } else {
        String_Clear(out);
    }
}

u16 Word_FromBankAndEntry(u32 bankID, u32 bankEntry)
{
    for (u32 i = 0; i < WORD_TEXT_BANK_COUNT; i++) {
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

BOOL Word_GetLoaderIndexAndEntry(u16 word, u32 *outLoaderIndex, u32 *outBankEntry)
{
    u32 i, total;

    u32 clampedWord = word & 0xFFF; // why?
    total = 0;

    for (i = 0; i < WORD_TEXT_BANK_COUNT; i++) {
        total += sTextBankEntryCounts[i];

        if (clampedWord < total) {
            *outLoaderIndex = i;
            *outBankEntry = clampedWord - (total - sTextBankEntryCounts[i]);
            return TRUE;
        }
    }

    return FALSE;
}

u32 UnlockedWords_SaveSize(void)
{
    return sizeof(UnlockedWords);
}

void UnlockedWords_Init(UnlockedWords *unlockedWords)
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
            Words_UnlockGreeting(unlockedWords, greetingMapping[i].bankEntry);
            break;
        }
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_UNLOCKED_WORDS);
}

UnlockedWords *SaveData_GetUnlockedWords(SaveData *saveData)
{
    SaveData_Checksum(SAVE_TABLE_ENTRY_UNLOCKED_WORDS);
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_UNLOCKED_WORDS);
}

BOOL Words_IsToughWordUnlocked(const UnlockedWords *unlockedWords, u32 bankEntry)
{
    return (unlockedWords->unlockedToughWordBits >> bankEntry) & 1;
}

u32 Words_TryUnlockRandomToughWord(UnlockedWords *unlockedWords)
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

                    SaveData_SetChecksum(SAVE_TABLE_ENTRY_UNLOCKED_WORDS);

                    return i;
                } else {
                    counter--;
                }
            }
        }
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_UNLOCKED_WORDS);

    return TEXT_BANK_TOUGH_WORDS_ENTRY_COUNT;
}

BOOL Words_AreAllToughWordsUnlocked(UnlockedWords *unlockedWords)
{
    for (u32 i = 0; i < TEXT_BANK_TOUGH_WORDS_ENTRY_COUNT; i++) {
        if (((unlockedWords->unlockedToughWordBits >> i) & 1) == 0) {
            return FALSE;
        }
    }

    return TRUE;
}

u16 Words_GetToughWordFromBankEntry(u32 bankEntry)
{
    int i;
    u16 wordID = 0;

    for (i = 0; i < WORD_TEXT_BANK_TOUGH_WORDS; i++) {
        wordID += sTextBankEntryCounts[i];
    }

    return wordID + bankEntry;
}

BOOL Words_IsGreetingUnlocked(const UnlockedWords *unlockedWords, int bankEntry)
{
    return (unlockedWords->unlockedGreetingBits >> bankEntry) & 1;
}

void Words_UnlockGreeting(UnlockedWords *unlockedWords, int bankEntry)
{
    unlockedWords->unlockedGreetingBits |= (1 << bankEntry);

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_UNLOCKED_WORDS);
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
