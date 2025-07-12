#ifndef POKEPLATINUM_UNK_0207AE68_H
#define POKEPLATINUM_UNK_0207AE68_H

#include "struct_decls/pokedexdata_decl.h"
#include "struct_defs/evolution_data.h"

#include "bag.h"
#include "game_options.h"
#include "game_records.h"
#include "party.h"
#include "pokemon.h"
#include "poketch.h"

EvolutionData *Evolution_Begin(Party *param0, Pokemon *param1, int param2, Options *options, int param4, Pokedex *param5, Bag *param6, GameRecords *records, Poketch *poketch, int param9, int param10, int heapID);
BOOL Evolution_IsComplete(EvolutionData *param0);
void sub_0207B0E0(EvolutionData *param0);

#endif // POKEPLATINUM_UNK_0207AE68_H
