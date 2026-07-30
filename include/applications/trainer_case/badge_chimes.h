#ifndef POKEPLATINUM_APPLICATIONS_TRAINER_CASE_BADGE_CHIMES_H
#define POKEPLATINUM_APPLICATIONS_TRAINER_CASE_BADGE_CHIMES_H

#include "applications/trainer_case/defs.h"

void TrainerCaseApp_InitBadgeChimeState(BadgeChimeState *badgeChimeState);
void TrainerCase_PlayBadgeChime(BadgeChimeState *badgeChimeState, enum Badge badgeID, u8 polishLevel);

#endif // POKEPLATINUM_APPLICATIONS_TRAINER_CASE_BADGE_CHIMES_H
