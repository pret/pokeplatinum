#ifndef POKEPLATINUM_STRUCT_OV21_021D0D80_H
#define POKEPLATINUM_STRUCT_OV21_021D0D80_H

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_0209ACBC_decl.h"

#include "trainer_info.h"

typedef struct {
    const Pokedex *unk_00;
    const TrainerInfo *unk_04;
    int timeOfDay;
    BOOL fullmoonIslandVisible;
    BOOL newmoonIslandVisible;
    BOOL springPathVisible;
    BOOL seabreakPathVisible;
    UnkStruct_0209ACBC *unk_1C;
} UnkStruct_ov21_021D0D80;

#endif // POKEPLATINUM_STRUCT_OV21_021D0D80_H
