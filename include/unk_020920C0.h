#ifndef POKEPLATINUM_UNK_020920C0_H
#define POKEPLATINUM_UNK_020920C0_H

#include "applications/pokemon_summary_screen.h"

void PokemonSummaryScreen_SetSubscreenType(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_UpdateSubscreenButtonGfx(PokemonSummaryScreen *summaryScreen);
u8 sub_020921E4(PokemonSummaryScreen *summaryScreen);
u8 PokemonSummaryScreen_DrawSubscreenButtonAnim(PokemonSummaryScreen *summaryScreen);
void sub_02092368(PokemonSummaryScreen *summaryScreen, s16 *param1, s16 *param2);
u8 PokemonSummaryScreen_GetSubscreenButtonPage(PokemonSummaryScreen *summaryScreen, u8 button);

#endif // POKEPLATINUM_UNK_020920C0_H
