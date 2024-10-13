#ifndef POKEPLATINUM_STRUCT_OV21_021D3320_H
#define POKEPLATINUM_STRUCT_OV21_021D3320_H

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_02098700_decl.h"

#include "overlay021/struct_ov21_021D3A60.h"

#include "strbuf.h"

typedef struct {
    const PokedexData *dexData;
    pokedexCompletionStruct pokedexCompletion;
    int isNationalDex;
    BOOL nationalDexUnlocked;
    int numEncountered;
    int numCaught;
    int unk_1740;
    int timeOfDay;
    HeightWeightData *HWData;
    u32 TrainerGameCode;
    u32 TrainerGender;
    Strbuf *trainerName;
    int unk_1758;
    u16 unk_175C;
    u16 unk_175E;
    BOOL pokedexSFlag_1;
    BOOL pokedexSFlag_2;
    BOOL pokedexSFlag_3;
    BOOL pokedexSFlag_4;
} pokedexStruct;

#endif // POKEPLATINUM_STRUCT_OV21_021D3320_H
