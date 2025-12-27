#ifndef POKEPLATINUM_MOVE_DISPLAY_INFO
#define POKEPLATINUM_MOVE_DISPLAY_INFO

#include "constants/moves.h"

typedef struct MoveDisplayInfo {
    u16 move[MAX_MON_MOVES];
    u16 curPP[MAX_MON_MOVES];
    u16 maxPP[MAX_MON_MOVES];
} MoveDisplayInfo;

#endif // POKEPLATINUM_MOVE_DISPLAY_INFO
