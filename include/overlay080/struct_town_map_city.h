#ifndef POKEPLATINUM_STRUCT_TOWN_MAP_CITY_H
#define POKEPLATINUM_STRUCT_TOWN_MAP_CITY_H

#include "struct_decls/struct_02022550_decl.h"
#include "overlay080/struct_town_map_block.h"

typedef struct TownMapCity {
    TownMapBlock block;
    int visited;
    UnkStruct_02022550 * unk_18;
} TownMapCity;

#endif // POKEPLATINUM_STRUCT_TOWN_MAP_CITY_H
