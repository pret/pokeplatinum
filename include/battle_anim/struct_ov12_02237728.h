#ifndef POKEPLATINUM_STRUCT_OV12_02237728_H
#define POKEPLATINUM_STRUCT_OV12_02237728_H

#include "struct_decls/battle_system.h"

#include "palette.h"
#include "sprite_system.h"

enum BallThrowMode {
    BALL_THROW_MODE_SEND_OUT = 0,
    BALL_THROW_MODE_SEND_OUT_QUICK = 1,
    BALL_THROW_MODE_THROW = 3,
    BALL_THROW_MODE_TRAINER_SEND_OUT = 4,
    BALL_THROW_MODE_RECALL = 5,
};

typedef struct BallThrow {
    int type;
    enum HeapID heapID;
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
