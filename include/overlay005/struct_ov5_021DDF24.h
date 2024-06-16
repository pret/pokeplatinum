#ifndef POKEPLATINUM_STRUCT_OV5_021DDF24_H
#define POKEPLATINUM_STRUCT_OV5_021DDF24_H

#include "overlay005/linear_interpolation_task_s32.h"

typedef struct BrightnessFadeTask {
    LinearInterpolationTaskS32 interpolationTask;
    int screen;
} BrightnessFadeTask;

#endif // POKEPLATINUM_STRUCT_OV5_021DDF24_H
