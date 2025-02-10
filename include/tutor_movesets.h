#ifndef POKEPLATINUM_TUTOR_MOVESETS_H
#define POKEPLATINUM_TUTOR_MOVESETS_H

#include "generated/moves.h"
#include "generated/tutor_locations.h"

typedef struct TeachableMove {
    u16 moveID;
    u8 redCost;
    u8 blueCost;
    u8 yellowCost;
    u8 greenCost;
    enum TutorLocation location;
} TeachableMove;

#include "res/pokemon/tutorable_moves.h"

#define MOVESET_MASK_SIZE (s32)((NELEMS(sTeachableMoves) + 7) / 8)

// Each of the bits in this array correspond to a move in sTeachableMoves
// Therefore the size is dependent on how many teachable moves exist

typedef struct MovesetMask {
    u8 maskData[MOVESET_MASK_SIZE];
} MovesetMask;

#endif // POKEPLATINUM_TUTOR_MOVESETS_H
