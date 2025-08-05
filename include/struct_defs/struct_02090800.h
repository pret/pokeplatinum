#ifndef POKEPLATINUM_STRUCT_02090800_H
#define POKEPLATINUM_STRUCT_02090800_H

#include "message.h"
#include "pokemon.h"
#include "string_template.h"

typedef struct MemoNotepadString {
    int line;
    Strbuf *string;
} MemoNotepadString;

typedef struct PokemonInfoDisplayStruct {
    enum HeapId heapID;
    MessageLoader *msgData;
    StringTemplate *msgFmt;
    Pokemon *mon;
    BOOL isMine;
    MemoNotepadString nature;
    MemoNotepadString metDateAndLocation;
    MemoNotepadString characteristic;
    MemoNotepadString flavorPreference;
    MemoNotepadString eggWatch;
} PokemonInfoDisplayStruct;

#endif // POKEPLATINUM_STRUCT_02090800_H
