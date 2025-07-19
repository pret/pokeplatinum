#ifndef POKEPLATINUM_TRAINERCARD_DISPLAY_TEXT_H
#define POKEPLATINUM_TRAINERCARD_DISPLAY_TEXT_H

#include "bg_window.h"
#include "strbuf.h"
#include "trainer_card.h"

void TrainerCard_AddWindows(BgConfig *bgConfig, Window *windows);
void TrainerCard_RemoveWindows(Window *windows);
void TrainerCard_DrawFrontText(Window *windows, const TrainerCard *trainerCard);
void TrainerCard_DrawBackText(Window *windows, const TrainerCard *trainerCard);
void TrainerCard_ClearWindows(Window *windows, const u8 start, const u8 end);
void TrainerCard_DrawUpdatedTime(Window *windows, const TrainerCard *trainerCard, Strbuf *unused);
void TrainerCard_BlinkPlaytimeColon(Window *window, const BOOL showColon, Strbuf *strbuf);

#endif // POKEPLATINUM_TRAINERCARD_DISPLAY_TEXT_H
