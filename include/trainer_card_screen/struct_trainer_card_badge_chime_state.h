#ifndef POKEPLATINUM_STRUCT_TRAINERCARD_BADGE_CHIME_STATE_H
#define POKEPLATINUM_STRUCT_TRAINERCARD_BADGE_CHIME_STATE_H

#include "sound.h"

typedef struct TrainerCardBadgeChimeState {
    u8 badgeChimePlayers[NUM_SE_PLAYERS][2];
} TrainerCardBadgeChimeState;

#endif // POKEPLATINUM_STRUCT_TRAINERCARD_BADGE_CHIME_STATE_H
