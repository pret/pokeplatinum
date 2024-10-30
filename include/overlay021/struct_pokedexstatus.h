#ifndef POKEPLATINUM_STRUCT_POKEDEXSTATUS_H
#define POKEPLATINUM_STRUCT_POKEDEXSTATUS_H

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_02098700_decl.h"

#include "overlay021/pokedexProgress.h"

#include "strbuf.h"

typedef struct {
    const PokedexData *dexData;
    PokedexProgress pokedexCompletion;
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
    BOOL fullmoonIslandVisible;
    BOOL newmoonIslandVisible;
    BOOL springPathVisible;
    BOOL seabreakPathVisible;
} PokedexStatus;

#endif // POKEPLATINUM_STRUCT_POKEDEXSTATUS_H
