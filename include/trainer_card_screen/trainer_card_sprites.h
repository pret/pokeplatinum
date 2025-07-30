#ifndef POKEPLATINUM_TRAINERCARD_SPRITES_H
#define POKEPLATINUM_TRAINERCARD_SPRITES_H

#include "trainer_card_screen/trainer_card_screen_defs.h"

#include "narc.h"

#define TRAINER_CARD_TWO_SPARKLES_SPRITES_INDEX            8
#define TRAINER_CARD_FOUR_SPARKLES_SPRITES_INDEX           16
#define TRAINER_CARD_BADGE_CASE_BUTTON_EFFECT_SPRITE_INDEX 24

void TrainerCard_InitSpriteData(TrainerCardSpriteData *spriteData, NARC *narc);
void TrainerCard_DrawBadgeCaseSprites(TrainerCardSpriteData *spriteData, u8 *badgesObtained);
void TrainerCard_FreeSprites(TrainerCardSpriteData *spriteData);
void TrainerCard_DrawBadgeDirt(TrainerCardSpriteData *spriteData, u8 badgeID, u8 dirtLevel);

#endif // POKEPLATINUM_TRAINERCARD_SPRITES_H
