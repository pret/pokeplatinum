#ifndef POKEPLATINUM_STRUCT_TOWN_MAP_CITY_HOLDER_H
#define POKEPLATINUM_STRUCT_TOWN_MAP_CITY_HOLDER_H

#include "overlay080/struct_town_map_city.h"

typedef struct TownMapCityHolder {
    u16 count;
    u8 unk_02;
    u8 unk_03;
    TownMapCity * unk_04;
    TownMapCity * cities;
} TownMapCityHolder;

#endif // POKEPLATINUM_STRUCT_TOWN_MAP_CITY_HOLDER_H
