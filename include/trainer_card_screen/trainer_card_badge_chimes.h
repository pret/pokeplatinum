#ifndef POKEPLATINUM_TRAINERCARD_BADGE_CHIMES_H
#define POKEPLATINUM_TRAINERCARD_BADGE_CHIMES_H

#include "trainer_card_screen/struct_trainer_card_badge_chime_state.h"

void TrainerCard_InitBadgeChimeState(TrainerCardBadgeChimeState *badgeChimeState);
void TrainerCard_PlayBadgeChime(TrainerCardBadgeChimeState *badgeChimeState, int badgeID, u8 polishLevel);

#endif // POKEPLATINUM_TRAINERCARD_BADGE_CHIMES_H
