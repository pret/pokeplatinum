#ifndef POKEPLATINUM_POKEMON_STORAGE_SESSION_H
#define POKEPLATINUM_POKEMON_STORAGE_SESSION_H

#include "overlay019/box_settings.h"

#include "savedata.h"

typedef struct PokemonStorageSession {
    SaveData *saveData;
    enum BoxMode boxMode;
    BOOL recordBoxUseInJournal;
} PokemonStorageSession;

#endif // POKEPLATINUM_POKEMON_STORAGE_SESSION_H
