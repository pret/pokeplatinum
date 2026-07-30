#include "pokedex_language.h"

#include <nitro.h>

#include "constants/versions.h"

static const u8 languageArray[NUM_LANGUAGES] = {
    LANGUAGE_JAPANESE,
    LANGUAGE_ENGLISH,
    LANGUAGE_FRENCH,
    LANGUAGE_GERMAN,
    LANGUAGE_ITALIAN,
    LANGUAGE_SPANISH
};

int PokedexLanguage_LanguageToIndex(int language)
{
    int languageIndex;

    for (languageIndex = 0; languageIndex < NUM_LANGUAGES; languageIndex++) {
        if (language == languageArray[languageIndex]) {
            break;
        }
    }

    return languageIndex;
}

int PokedexLanguage_IndexToLanguage(int languageIndex)
{
    GF_ASSERT(languageIndex < NUM_LANGUAGES);
    return languageArray[languageIndex];
}
