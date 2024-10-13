#ifndef POKEPLATINUM_STRUCT_OV21_021D3208_H
#define POKEPLATINUM_STRUCT_OV21_021D3208_H

#include "struct_decls/pokedexdata_decl.h"

#include "trainer_info.h"

typedef struct {
    const PokedexData *dexData;
    const TrainerInfo *unk_04;
    int timeOfDay;
    BOOL pokedexSFlag_1;
    BOOL pokedexSFlag_2;
    BOOL pokedexSFlag_3;
    BOOL pokedexSFlag_4;
    u32 unk_1C;
    u32 unk_20;
} UnkStruct_ov21_021D3208;

#endif // POKEPLATINUM_STRUCT_OV21_021D3208_H
