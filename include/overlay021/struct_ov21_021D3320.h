#ifndef POKEPLATINUM_STRUCT_OV21_021D3320_H
#define POKEPLATINUM_STRUCT_OV21_021D3320_H

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_02098700_decl.h"

#include "overlay021/sorted_pokedex.h"

#include "strbuf.h"

typedef struct {
    const Pokedex *pokedex;
    SortedPokedex sortedPokedex;
    int isNationalDex;
    BOOL isNationalDexUnlocked;
    int numEncountered;
    int numCaught;
    BOOL unk_1740;
    int timeOfDay;
    HeightWeightData *HWData;
    u32 trainerGameCode;
    u32 trainerGender;
    Strbuf *trainerName;
    int unk_1758;
    u16 unk_175C;
    u16 unk_175E;
    BOOL fullmoonIslandVisible;
    BOOL newmoonIslandVisible;
    BOOL springPathVisible;
    BOOL seabreakPathVisible;
} UnkStruct_ov21_021D3320;

#endif // POKEPLATINUM_STRUCT_OV21_021D3320_H
