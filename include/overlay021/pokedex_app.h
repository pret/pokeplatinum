#ifndef POKEPLATINUM_POKEDEX_APP_H
#define POKEPLATINUM_POKEDEX_APP_H

#include "overlay021/pokedex_graphic_data.h"
#include "overlay021/pokedex_sort_data.h"
#include "overlay021/struct_ov21_021D3FE0_decl.h"
#include "overlay021/struct_ov21_021D423C_decl.h"
#include "overlay021/struct_ov21_021D4660.h"
#include "overlay021/struct_ov21_021E68F4.h"

#include "pokedex_memory.h"

typedef struct PokedexApp {
    BOOL unk_00;
    int heapID;
    PokedexMemory *pokedexMemory;
    PokedexSortData sortData;
    PokedexGraphicData graphicData;
    int unk_1A60;
    int unk_1A64;
    int unk_1A68;
    int unk_1A6C;
    UnkStruct_ov21_021D423C *unk_1A70;
    UnkStruct_ov21_021D423C *unk_1A74;
    UnkStruct_ov21_021D423C *unk_1A78;
    UnkStruct_ov21_021D423C *unk_1A7C;
    UnkStruct_ov21_021D4660 unk_1A80;
    UnkStruct_ov21_021E68F4 unk_1A94[10];
    UnkStruct_ov21_021E68F4 unk_1C24[8];
    UnkStruct_ov21_021D3FE0 *unk_1D64;
    UnkStruct_ov21_021D3FE0 *unk_1D68;
    UnkStruct_ov21_021D3FE0 *unk_1D6C;
    UnkStruct_ov21_021D3FE0 *unk_1D70;
} PokedexApp;

#endif // POKEPLATINUM_POKEDEX_APP_H
