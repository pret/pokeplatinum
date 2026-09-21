#ifndef POKEPLATINUM_STRUCT_OV100_021D4104_H
#define POKEPLATINUM_STRUCT_OV100_021D4104_H

#include "sprite_system.h"
#include "sys_task_manager.h"

typedef struct LightBall {
    ManagedSprite *sprite;
    ManagedSprite *targetSprite;
    int index;
    int state;
    s16 unused_10;
    s16 unused_12;
    s16 depth;
    s16 unused_16;
    s16 unused_18;
    int orbitAngle;
    int driftAngle;
    int jitterIntensity;
    int stateParams[4]; // 0/1 = LightBall_Jitter's radius factors, 2 = LightBall_Wander's target point index, 3 = unused
    int unused_38;
    BOOL followTarget;
    SysTask *task;
} LightBall;

#endif // POKEPLATINUM_STRUCT_OV100_021D4104_H
