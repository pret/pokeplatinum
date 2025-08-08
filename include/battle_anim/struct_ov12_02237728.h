#ifndef POKEPLATINUM_STRUCT_OV12_02237728_H
#define POKEPLATINUM_STRUCT_OV12_02237728_H

#include "struct_decls/battle_system.h"

#include "palette.h"
#include "sprite_system.h"

typedef struct BallThrow {
    int type;
    int heapID;
    int mode;
    int target;
    int ballID;
    int bgPrio;
    int surface;
    SpriteSystem *cellActorSys;
    PaletteData *paletteSys;
    BattleSystem *battleSys;
} BallThrow;

#endif // POKEPLATINUM_STRUCT_OV12_02237728_H
