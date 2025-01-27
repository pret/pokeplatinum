#include "overlay021/pokedex_text.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"
#include "constants/species.h"
#include "generated/text_banks.h"

#include "error_handling.h"
#include "heap.h"
#include "inlines.h"
#include "message.h"
#include "message_util.h"
#include "pokedex_language.h"
#include "strbuf.h"

enum LangIndex {
    LI_JAPANESE,
    LI_ENGLISH,
    LI_FRENCH,
    LI_GERMAN,
    LI_ITALIAN,
    LI_SPANISH
};

static const u8 messageBankLanguageOrder[NUM_LANGUAGES] = {
    LI_ENGLISH,
    LI_FRENCH,
    LI_GERMAN,
    LI_ITALIAN,
    LI_SPANISH,
    LI_JAPANESE
};

static inline int LanguageIndex_Guarded(int languageIndex);
static inline BOOL ValidLanguage(int species, int languageIndex);
static Strbuf *LoadMessage(int bankID, int entryID, enum HeapId heapID);
static void GetLanguageIndex(int species, int language, int *dexNum, int *languageIndexUnguarded, int *languageIndex);

void PokedexText_Free(Strbuf *strbuf)
{
    Strbuf_Free(strbuf);
}

int PokedexText_ForeignLanguage(int languageIndex)
{
    return PokedexLanguage_IndexToLanguage(messageBankLanguageOrder[languageIndex + 1]);
}

Strbuf *PokedexText_NameNumber(int species, int language, enum HeapId heapID)
{
    int dexNum;
    int languageIndex_unguarded;
    int index;
    int bankID;

    GetLanguageIndex(species, language, &dexNum, &languageIndex_unguarded, &index);

    if (index == NUM_LANGUAGES) {
        return MessageUtil_SpeciesName(species, heapID);
    } else {
        const int nameNumberBanks[] = {
            TEXT_BANK_UNK_0717,
            TEXT_BANK_SPECIES_NAME_NUMBER_1,
            TEXT_BANK_UNK_0713,
            TEXT_BANK_UNK_0714,
            TEXT_BANK_SPECIES_NAME_NUMBER_2,
            TEXT_BANK_SPECIES_NAME_NUMBER_3
        };
        bankID = nameNumberBanks[index];
        index = dexNum;
    }

    return LoadMessage(bankID, index, heapID);
}

Strbuf *PokedexText_Category(int species, int language, enum HeapId heapID)
{
    int dexNum;
    int languageIndex_unguarded;
    int index;
    int bankID;

    GetLanguageIndex(species, language, &dexNum, &languageIndex_unguarded, &index);

    if (index == NUM_LANGUAGES) {
        index = species;
        bankID = TEXT_BANK_UNK_0711;
    } else {
        const int categoryBanks[] = {
            TEXT_BANK_UNK_0723,
            TEXT_BANK_SPECIES_CATEGORY,
            TEXT_BANK_UNK_0719,
            TEXT_BANK_UNK_0720,
            TEXT_BANK_UNK_0721,
            TEXT_BANK_UNK_0722
        };
        bankID = categoryBanks[index];
        index = dexNum;
    }

    return LoadMessage(bankID, index, heapID);
}

Strbuf *PokedexText_DexEntry(int species, int language, int entryOffset, enum HeapId heapID)
{
    int dexNum;
    int languageIndex_unguarded;
    int index;
    int bankID;

    GetLanguageIndex(species, language, &dexNum, &languageIndex_unguarded, &index);

    if (index == NUM_LANGUAGES) {
        GF_ASSERT(entryOffset < 1);
        index = species + entryOffset;
        bankID = TEXT_BANK_SPECIES_DEX_ENTRY;
    } else {
        const int dexEntryBanks[] = {
            TEXT_BANK_UNK_0705,
            TEXT_BANK_UNK_0700,
            TEXT_BANK_UNK_0701,
            TEXT_BANK_UNK_0702,
            TEXT_BANK_UNK_0703,
            TEXT_BANK_UNK_0704
        };
        GF_ASSERT(entryOffset < 1);
        bankID = dexEntryBanks[index];
        index = dexNum + entryOffset;
    }

    return LoadMessage(bankID, index, heapID);
}

static inline BOOL ValidLanguage(int species, int languageIndex)
{
    if ((species > NATIONAL_DEX_COUNT) && (languageIndex != NUM_LANGUAGES)) {
        return FALSE;
    }

    return TRUE;
}

static Strbuf *LoadMessage(int bankID, int entryID, enum HeapId heapID)
{
    MessageLoader *messageLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, bankID, heapID);

    if (messageLoader) {
        Strbuf *strbuf = Strbuf_Init(256, heapID);

        if (strbuf) {
            MessageLoader_GetStrbuf(messageLoader, entryID, strbuf);
        }

        MessageLoader_Free(messageLoader);
        return strbuf;
    }

    return NULL;
}

static void GetLanguageIndex(int species, int language, int *dexNum, int *languageIndexUnguarded, int *languageIndex)
{
    *languageIndexUnguarded = PokedexLanguage_LanguageToIndex(language);

    GF_ASSERT(*languageIndexUnguarded < NUM_LANGUAGES);

    *dexNum = species;
    *languageIndex = LanguageIndex_Guarded(*languageIndexUnguarded);

    GF_ASSERT(ValidLanguage(*dexNum, *languageIndex));
}

static inline int LanguageIndex_Guarded(int languageIndex)
{
    GF_ASSERT(languageIndex < NUM_LANGUAGES);
    return (languageIndex == LI_ENGLISH) ? NUM_LANGUAGES : languageIndex;
}
