#ifndef POKEPLATINUM_POKEMON_SUMMARY_SCREEN_WINDOW_H
#define POKEPLATINUM_POKEMON_SUMMARY_SCREEN_WINDOW_H

#include "applications/pokemon_summary_screen/main.h"

void sub_0208FCF8(PokemonSummaryScreen *param0);
void PokemonSummaryScreen_AddExtraWindows(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_RemoveExtraWindows(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_RemoveWindows(PokemonSummaryScreen *summaryScreen);
void sub_0208FEA4(PokemonSummaryScreen *param0);
void sub_0208FF3C(PokemonSummaryScreen *param0);
void sub_0208FFE0(PokemonSummaryScreen *param0);
void PokemonSummaryScreen_ClearAndPrintButtonPrompt(PokemonSummaryScreen *summaryScreen, u32 entryID);
void sub_020904C4(PokemonSummaryScreen *param0);
void PokemonSummaryScreen_PrintRibbonIndexAndMax(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_PrintRibbonNameAndDesc(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_PrintBattleMoveInfo(PokemonSummaryScreen *summaryScreen, u32 move);
void PokemonSummaryScreen_ClearBattleInfoWindows(PokemonSummaryScreen *summaryScreen);
void ShowMoveInfoOrCancel(PokemonSummaryScreen *summaryScreen);
void HideMoveCancelText(PokemonSummaryScreen *summaryScreen);
void sub_02091474(PokemonSummaryScreen *param0);
void PokemonSummaryScreen_PrintHMMovesCantBeForgotten(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_PrintContestMoveInfo(PokemonSummaryScreen *summaryScreen, u32 move);
void PokemonSummaryScreen_ClearContestInfoWindows(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_PrintPoffinFeedMsg(PokemonSummaryScreen *summaryScreen, enum PSSPoffinFeedMsg msg);

#endif // POKEPLATINUM_POKEMON_SUMMARY_SCREEN_WINDOW_H
