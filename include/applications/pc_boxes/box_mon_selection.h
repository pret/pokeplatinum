#ifndef POKEPLATINUM_STRUCT_BOX_MON_SELECTION_H
#define POKEPLATINUM_STRUCT_BOX_MON_SELECTION_H

#include "pc_boxes.h"
#include "pokemon.h"

typedef struct BoxMonSelection {
    BoxPokemon *boxMon;
    u8 selectionStartCol;
    u8 selectionStartRow;
    u8 selectionEndCol;
    u8 selectionEndRow;
    u8 selectedMonCount;
    u8 origSelectionTopLeftPos;
    u8 unused;
    u8 cursorMonIsPartyMon;
    s8 selectedMonsOrigBoxPos[MAX_MONS_PER_BOX];
    u8 padding_2A[2];
} BoxMonSelection;

#endif // POKEPLATINUM_BOX_MON_SELECTION_H
