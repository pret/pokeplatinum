#ifndef POKEPLATINUM_MOVE_DISPLAY_INFO
#define POKEPLATINUM_MOVE_DISPLAY_INFO

#include "constants/moves.h"

typedef struct MoveDisplayInfo {
    u16 move[LEARNED_MOVES_MAX];
    u16 curPP[LEARNED_MOVES_MAX];
    u16 maxPP[LEARNED_MOVES_MAX];
} MoveDisplayInfo;

#endif // POKEPLATINUM_MOVE_DISPLAY_INFO
