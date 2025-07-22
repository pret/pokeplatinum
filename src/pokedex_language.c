#include "pokedex_language.h"

#include <nitro.h>
#include <string.h>

#include "global/pm_version.h"

static const u8 languageArray[NUM_LANGUAGES] = {
    JAPANESE,
    ENGLISH,
    FRENCH,
    GERMAN,
    ITALIAN,
    SPANISH
};

int PokedexLanguage_LanguageToIndex(int language) {
    int languageIndex;

    for (languageIndex = 0; languageIndex < NUM_LANGUAGES; languageIndex++) {
        if (language == languageArray[languageIndex]) {
            break;
        }
    }

    return languageIndex;
}

int PokedexLanguage_IndexToLanguage(int languageIndex) {
    GF_ASSERT(languageIndex < NUM_LANGUAGES);
    return languageArray[languageIndex];
}
