#ifndef POKEPLATINUM_STRUCT_POKEDEXSTATUS_H
#define POKEPLATINUM_STRUCT_POKEDEXSTATUS_H

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_02098700_decl.h"

#include "overlay021/struct_ov21_021D3A60.h"

#include "strbuf.h"

typedef struct {
    const PokedexData *dexData;
    pokedexCompletionStruct pokedexCompletion;
    int isNationalDex;
    BOOL isNationalDexUnlocked;
    int numEncountered;
    int numCaught;
    int unk_1740;
    int timeOfDay;
    HeightWeightData *HWData;
    u32 trainerGameCode;
    u32 trainerGender;
    Strbuf *trainerName;
    int unk_1758;
    u16 unk_175C;
    u16 unk_175E;
    BOOL pokedexSFlag_1; // VarsFlags->vars[54]
    BOOL pokedexSFlag_2; // VarsFlags->vars[55]
    BOOL pokedexSFlag_3; // VarsFlags->vars[56]
    BOOL pokedexSFlag_4; // VarsFlags->vars[57]
} pokedexStatus;

#endif // POKEPLATINUM_STRUCT_POKEDEXSTATUS_H
