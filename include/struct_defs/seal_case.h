#ifndef POKEPLATINUM_STRUCT_SEAL_CASE_H
#define POKEPLATINUM_STRUCT_SEAL_CASE_H

#include "constants/ball_capsule.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
} BallSealCoords;

typedef struct {
    BallSealCoords seals[SEALS_PER_CAPSULE];
} BallCapsule;

typedef struct {
    u8 count[SEAL_ID_MAX];
} SealsObtained;

typedef struct {
    BallCapsule capsules[TOTAL_CAPSULES];
    SealsObtained seals;
} SealCase;

#endif // POKEPLATINUM_STRUCT_SEAL_CASE_H
