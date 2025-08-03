#ifndef POKEPLATINUM_STRUCT_02090800_H
#define POKEPLATINUM_STRUCT_02090800_H

#include "struct_defs/struct_02090800_sub1.h"

#include "message.h"
#include "pokemon.h"
#include "string_template.h"

// Each string in the notepad and which line it starts on.
typedef struct MemoNotepad {
    int natureLine;
    Strbuf *nature;
    int dateLocationMetLine;
    Strbuf *dateLocationMet;
    int characteristicLine;
    Strbuf *characteristic;
    int flavorPreferenceLine;
    Strbuf *flavorPreference;
    int eggWatchLine;
    Strbuf *eggWatch;
} MemoNotepad;

typedef struct {
    int heapID;
    MessageLoader *msgData;
    StringTemplate *msgFmt;
    Pokemon *mon;
    BOOL isMine;
    MemoNotepad notepad;
} PokemonInfoDisplayStruct;

#endif // POKEPLATINUM_STRUCT_02090800_H
