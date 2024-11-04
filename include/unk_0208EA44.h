#ifndef POKEPLATINUM_UNK_0208EA44_H
#define POKEPLATINUM_UNK_0208EA44_H

#include "applications/pokemon_summary_screen/main.h"

#include "bg_window.h"

void sub_0208EA44(PokemonSummaryScreen *param0);
void sub_0208EAF4(PokemonSummaryScreen *param0);
void sub_0208EB14(PokemonSummaryScreen *param0);
void sub_0208EB64(PokemonSummaryScreen *param0);
void sub_0208ECF4(PokemonSummaryScreen *param0);
void sub_0208EDC4(PokemonSummaryScreen *param0);
void PokemonSummaryScreen_UpdatePageArrows(PokemonSummaryScreen *summaryScreen, BOOL showArrows);
void sub_0208EE3C(PokemonSummaryScreen *param0);
void sub_0208EE9C(PokemonSummaryScreen *param0);
void sub_0208EF58(PokemonSummaryScreen *param0);
void sub_0208F16C(PokemonSummaryScreen *param0);
void sub_0208F22C(PokemonSummaryScreen *param0, u8 param1, u8 param2);
void PokemonSummaryScreen_UpdateMoveCategoryIcon(PokemonSummaryScreen *summaryScreen, u32 move);
void PokemonSummaryScreen_UpdateMoveSelectorPos(PokemonSummaryScreen *summaryScreen);
void sub_0208F310(PokemonSummaryScreen *param0);
void sub_0208F34C(PokemonSummaryScreen *param0);
void PokemonSummaryScreen_DrawSheenSprites(PokemonSummaryScreen *summaryScreen);
void sub_0208F574(PokemonSummaryScreen *param0);
void sub_0208F600(PokemonSummaryScreen *param0);
void sub_0208F684(PokemonSummaryScreen *param0);
void sub_0208F6A4(PokemonSummaryScreen *param0);
void PokemonSummaryScreen_UpdateAButtonSprite(PokemonSummaryScreen *summaryScreen, Window *window);
void sub_0208F71C(PokemonSummaryScreen *param0);
void PokemonSummaryScreen_ShowMonIcon(PokemonSummaryScreen *summaryScreen);
void DrawContestStatDots(PokemonSummaryScreen *summaryScreen);
void HideContestStatDots(PokemonSummaryScreen *summaryScreen);
void sub_0208FA04(PokemonSummaryScreen *param0);
void PokemonSummaryScreen_UpdateShownRibbonRows(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_UpdateRibbonCursorPos(PokemonSummaryScreen *summaryScreen);
void sub_0208FB30(PokemonSummaryScreen *param0);
void sub_0208FB54(PokemonSummaryScreen *param0, u8 param1);
void sub_0208FCD4(PokemonSummaryScreen *param0);

#endif // POKEPLATINUM_UNK_0208EA44_H
