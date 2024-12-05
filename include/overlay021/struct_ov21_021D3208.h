#ifndef POKEPLATINUM_STRUCT_OV21_021D3208_H
#define POKEPLATINUM_STRUCT_OV21_021D3208_H

#include "struct_decls/pokedexdata_decl.h"

#include "trainer_info.h"

typedef struct {
    const Pokedex *dexData;
    const TrainerInfo *unk_04;
    int timeOfDay;
    BOOL fullmoonIslandVisible;
    BOOL newmoonIslandVisible;
    BOOL springPathVisible;
    BOOL seabreakPathVisible;
    u32 unk_1C;
    u32 unk_20;
} UnkStruct_ov21_021D3208;

#endif // POKEPLATINUM_STRUCT_OV21_021D3208_H
