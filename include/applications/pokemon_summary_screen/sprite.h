#ifndef POKEPLATINUM_POKEMON_SUMMARY_SCREEN_SPRITE_H
#define POKEPLATINUM_POKEMON_SUMMARY_SCREEN_SPRITE_H

#include "applications/pokemon_summary_screen/main.h"

#include "bg_window.h"

void sub_0208EA44(PokemonSummaryScreen *param0);
void sub_0208EAF4(PokemonSummaryScreen *param0);
void sub_0208EB14(PokemonSummaryScreen *param0);
void sub_0208EB64(PokemonSummaryScreen *param0);
void PokemonSummaryScreen_UpdatePageTabSprites(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_SetPageArrowsPos(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_UpdatePageArrows(PokemonSummaryScreen *summaryScreen, BOOL showArrows);
void sub_0208EE3C(PokemonSummaryScreen *param0);
void sub_0208EE9C(PokemonSummaryScreen *param0);
void PokemonSummaryScreen_UpdateTypeIcons(PokemonSummaryScreen *summaryScreen);
void sub_0208F16C(PokemonSummaryScreen *param0);
void PokemonSummaryScreen_SwapMoveTypeIcons(PokemonSummaryScreen *param0, u8 moveIndex1, u8 moveIndex2);
void PokemonSummaryScreen_UpdateMoveCategoryIcon(PokemonSummaryScreen *summaryScreen, u32 move);
void PokemonSummaryScreen_UpdateMoveSelectorPos(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_SetMoveSelector2Pos(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_InitSheenSprites(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_DrawSheenSprites(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_UpdateMiscMonDataSprites(PokemonSummaryScreen *summaryScreen);
void sub_0208F600(PokemonSummaryScreen *param0);
void sub_0208F684(PokemonSummaryScreen *param0);
void sub_0208F6A4(PokemonSummaryScreen *param0);
void PokemonSummaryScreen_UpdateAButtonSprite(PokemonSummaryScreen *summaryScreen, Window *window);
void sub_0208F71C(PokemonSummaryScreen *param0);
void PokemonSummaryScreen_ShowMonIcon(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_DrawContestStatDots(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_HideContestStatDots(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_UpdateRibbonSprites(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_UpdateShownRibbonRows(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_UpdateRibbonCursorPos(PokemonSummaryScreen *summaryScreen);
void sub_0208FB30(PokemonSummaryScreen *param0);
void sub_0208FB54(PokemonSummaryScreen *param0, u8 param1);
void sub_0208FCD4(PokemonSummaryScreen *param0);

#endif // POKEPLATINUM_POKEMON_SUMMARY_SCREEN_SPRITE_H
