#ifndef POKEPLATINUM_STRUCT_SEAL_CASE_H
#define POKEPLATINUM_STRUCT_SEAL_CASE_H

#include "constants/ball_capsule.h"

typedef struct BallSeal {
    u8 type;
    u8 x;
    u8 y;
} BallSeal;

typedef struct BallCapsule {
    BallSeal seals[SEALS_PER_CAPSULE];
} BallCapsule;

typedef struct SealCounts {
    u8 count[SEAL_ID_MAX - 1];
} SealCounts;

typedef struct SealCase {
    BallCapsule capsules[TOTAL_CAPSULES];
    SealCounts seals;
} SealCase;

#endif // POKEPLATINUM_STRUCT_SEAL_CASE_H
