#ifndef POKEPLATINUM_STRUCT_OV5_021DDF24_H
#define POKEPLATINUM_STRUCT_OV5_021DDF24_H

#include "constants/graphics.h"

#include "overlay005/linear_interpolation_task_s32.h"

typedef struct BrightnessFadeTask {
    LinearInterpolationTaskS32 interpolationTask;
    enum DSScreen screen;
} BrightnessFadeTask;

#endif // POKEPLATINUM_STRUCT_OV5_021DDF24_H
