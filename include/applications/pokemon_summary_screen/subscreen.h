#ifndef POKEPLATINUM_POKEMON_SUMMARY_SCREEN_SUBSCREEN_H
#define POKEPLATINUM_POKEMON_SUMMARY_SCREEN_SUBSCREEN_H

#include "applications/pokemon_summary_screen/main.h"

enum SummaryButtonState {
    SUMMARY_BUTTON_STATE_INIT_ANIM = 0,
    SUMMARY_BUTTON_STATE_SETUP_PAGE,
    SUMMARY_BUTTON_STATE_RUN_ANIM,
};

void PokemonSummaryScreen_SetSubscreenType(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_UpdateSubscreenButtonGfx(PokemonSummaryScreen *summaryScreen);
u8 PokemonSummaryScreen_CheckSubscreenButtonPress(PokemonSummaryScreen *summaryScreen);
u8 PokemonSummaryScreen_DrawSubscreenButtonAnim(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_CalcSubscreenButtonTapAnimPos(PokemonSummaryScreen *summaryScreen, s16 *outX, s16 *outY);
u8 PokemonSummaryScreen_GetSubscreenButtonPage(PokemonSummaryScreen *summaryScreen, u8 button);

#endif // POKEPLATINUM_POKEMON_SUMMARY_SCREEN_SUBSCREEN_H
