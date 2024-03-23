#ifndef POKEPLATINUM_UNK_0208C324_H
#define POKEPLATINUM_UNK_0208C324_H

#include "trainer_info.h"
#include "pokemon.h"
#include "struct_defs/pokemon_summary_app.h"
#include "struct_defs/pokemon_summary.h"
#include "unk_020244AC.h"

BOOL PokemonSummary_ShowContestData(SaveData * param0);
void PokemonSummary_FlagVisiblePages(PokemonSummary * param0, const u8 * param1);
u8 PokemonSummary_PageIsVisble(PokemonSummaryApp * param0, u32 param1);
u8 PokemonSummary_CountVisiblePages(PokemonSummaryApp * param0);
void * PokemonSummary_MonData(PokemonSummaryApp * param0);
u8 PokemonSummary_RibbonAt(PokemonSummaryApp * param0, u8 param1);
void PokemonSummary_SetPlayerProfile(PokemonSummary * param0, const TrainerInfo * param1);
u32 PokemonSummary_StatusIconChar(void);
u32 PokemonSummary_StatusIconPltt(void);
u32 PokemonSummary_StatusIconCell(void);
u32 PokemonSummary_StatusIconAnim(void);
u32 PokemonSummary_StatusIconAnimIdx(Pokemon * param0);

#endif // POKEPLATINUM_UNK_0208C324_H
