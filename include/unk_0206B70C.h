#ifndef POKEPLATINUM_UNK_0206B70C_H
#define POKEPLATINUM_UNK_0206B70C_H

#include "struct_defs/struct_0203D8AC.h"

#include "field/field_system_decl.h"

#include "overworld_map_history.h"

#define NUM_FLY_LOCATIONS       20
#define TOWN_MAP_HISTORY_LENGTH (OVERWORLD_MAP_HISTORY_LENGTH - 1) // Skip the last entry

void TownMapContext_Init(FieldSystem *fieldSystem, TownMapContext *townMapCtx, int townMapMode);

#endif // POKEPLATINUM_UNK_0206B70C_H
