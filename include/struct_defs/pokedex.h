#ifndef POKEPLATINUM_STRUCT_POKEDEX_H
#define POKEPLATINUM_STRUCT_POKEDEX_H

#include "constants/forms.h"

#define DEX_SIZE_U32 ((int)((NATIONAL_DEX_COUNT - 1) / 32) + 1) // default 16

typedef struct Pokedex {
    u32 magic;
    u32 caughtPokemon[DEX_SIZE_U32];
    u32 seenPokemon[DEX_SIZE_U32];
    u32 recordedGenders[2][DEX_SIZE_U32];
    u32 spindaForm;
    u8 shellosFormsSeen;
    u8 gastrodonFormsSeen;
    u8 burmyFormsSeen;
    u8 wormadamFormsSeen;
    u8 unownFormsSeen[UNOWN_FORM_COUNT];
    u8 recordedLanguages[MAX_SPECIES + 1];
    u8 canDetectForms;
    u8 canDetectLanguages;
    u8 pokedexObtained;
    u8 nationalDexObtained;
    u32 rotomFormsSeen;
    u8 shayminFormsSeen;
    u8 giratinaFormsSeen;
} Pokedex;

#endif // POKEPLATINUM_STRUCT_POKEDEX_H
