#ifndef POKEPLATINUM_STRUCT_BOX_MON_SELECTION_H
#define POKEPLATINUM_STRUCT_BOX_MON_SELECTION_H

#include "pokemon.h"

typedef struct {
    BoxPokemon *boxMon;
    u8 selectionStartCol;
    u8 selectionStartRow;
    u8 selectionEndCol;
    u8 selectionEndRow;
    u8 selectedMonCount;
    u8 origSelectionTopLeftPos;
    u8 unused;
    u8 cursorMonIsPartyMon;
    s8 selectedMonsOrigBoxPos[30];
    u8 padding_2A[2];
} BoxMonSelection;

#endif // POKEPLATINUM_BOX_MON_SELECTION_H
