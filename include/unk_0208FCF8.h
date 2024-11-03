#ifndef POKEPLATINUM_UNK_0208FCF8_H
#define POKEPLATINUM_UNK_0208FCF8_H

#include "pokemon_summary_app.h"

void sub_0208FCF8(PokemonSummaryScreen *param0);
void sub_0208FD40(PokemonSummaryScreen *param0);
void sub_0208FE34(PokemonSummaryScreen *param0);
void sub_0208FE88(PokemonSummaryScreen *param0);
void sub_0208FEA4(PokemonSummaryScreen *param0);
void sub_0208FF3C(PokemonSummaryScreen *param0);
void sub_0208FFE0(PokemonSummaryScreen *param0);
void PokemonSummaryScreen_ClearWindowAndPrintText(PokemonSummaryScreen *summaryScreen, u32 entryID);
void sub_020904C4(PokemonSummaryScreen *param0);
void sub_02090F84(PokemonSummaryScreen *param0);
void sub_020910E4(PokemonSummaryScreen *param0);
void PokemonSummaryScreen_PrintBattleMoveInfo(PokemonSummaryScreen *summaryScreen, u32 move);
void PokemonSummaryScreen_ClearBattleInfoWindows(PokemonSummaryScreen *summaryScreen);
void ShowMoveInfoOrCancel(PokemonSummaryScreen *summaryScreen);
void HideMoveCancelText(PokemonSummaryScreen *summaryScreen);
void sub_02091474(PokemonSummaryScreen *param0);
void PokemonSummaryScreen_PrintHMMovesCantBeForgotten(PokemonSummaryScreen *summaryScreen);
void PokemonSummaryScreen_PrintContestMoveInfo(PokemonSummaryScreen *summaryScreen, u32 move);
void PokemonSummaryScreen_ClearContestInfoWindows(PokemonSummaryScreen *summaryScreen);
void sub_02091610(PokemonSummaryScreen *param0, u8 param1);

#endif // POKEPLATINUM_UNK_0208FCF8_H
