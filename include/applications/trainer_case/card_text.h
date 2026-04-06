#ifndef POKEPLATINUM_APPLICATIONS_TRAINER_CASE_CARD_TEXT_H
#define POKEPLATINUM_APPLICATIONS_TRAINER_CASE_CARD_TEXT_H

#include "bg_window.h"
#include "string_gf.h"
#include "trainer_case.h"

void TrainerCard_AddWindows(BgConfig *bgConfig, Window windows[]);
void TrainerCard_RemoveWindows(Window windows[]);
void TrainerCard_DrawFrontText(Window windows[], const TrainerCase *trainerCase);
void TrainerCard_DrawBackText(Window windows[], const TrainerCase *trainerCase);
void TrainerCard_ClearWindows(Window windows[], u8 start, u8 end);
void TrainerCard_DrawUpdatedTime(Window windows[], const TrainerCase *trainerCase, String *unused);
void TrainerCard_BlinkPlaytimeColon(Window *window, BOOL showColon, String *string);

#endif // POKEPLATINUM_APPLICATIONS_TRAINER_CASE_CARD_TEXT_H
