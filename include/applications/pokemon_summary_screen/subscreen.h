#ifndef POKEPLATINUM_POKEMON_SUMMARY_SCREEN_SUBSCREEN_H
#define POKEPLATINUM_POKEMON_SUMMARY_SCREEN_SUBSCREEN_H

#include "applications/pokemon_summary_screen/main.h"

void PokemonSummaryScreen_SetSubscreenType(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_UpdateSubscreenButtonGfx(PokemonSummaryScreen *summaryScreen);
u8 PokemonSummaryScreen_CheckSubscreenButtonPress(PokemonSummaryScreen *summaryScreen);
u8 PokemonSummaryScreen_DrawSubscreenButtonAnim(PokemonSummaryScreen *summaryScreen);
void sub_02092368(PokemonSummaryScreen *summaryScreen, s16 *param1, s16 *param2);
u8 PokemonSummaryScreen_GetSubscreenButtonPage(PokemonSummaryScreen *summaryScreen, u8 button);

#endif // POKEPLATINUM_POKEMON_SUMMARY_SCREEN_SUBSCREEN_H
