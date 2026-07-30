#ifndef POKEPLATINUM_APPLICATIONS_TRAINER_CASE_SPRITES_H
#define POKEPLATINUM_APPLICATIONS_TRAINER_CASE_SPRITES_H

#include "applications/trainer_case/defs.h"

#include "narc.h"

#define TRAINER_CASE_TWO_SPARKLES_SPRITES_INDEX            MAX_BADGES
#define TRAINER_CASE_FOUR_SPARKLES_SPRITES_INDEX           (MAX_BADGES * 2)
#define TRAINER_CASE_BADGE_CASE_BUTTON_EFFECT_SPRITE_INDEX (MAX_BADGES * 3)

void TrainerCaseApp_InitSpriteData(TrainerCaseSpriteData *spriteData, NARC *narc);
void TrainerCase_DrawBadgeCaseSprites(TrainerCaseSpriteData *spriteData, u8 *badgesObtained);
void TrainerCase_FreeSprites(TrainerCaseSpriteData *spriteData);
void TrainerCase_DrawBadgeDirt(TrainerCaseSpriteData *spriteData, u8 badgeID, u8 dirtLevel);

#endif // POKEPLATINUM_APPLICATIONS_TRAINER_CASE_SPRITES_H
