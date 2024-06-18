#ifndef POKEPLATINUM_STRUCT_LINEAR_INTERPOLATION_TASK_FX32_H
#define POKEPLATINUM_STRUCT_LINEAR_INTERPOLATION_TASK_FX32_H

typedef struct LinearInterpolationTaskFX32 {
    fx32 currentValue;
    fx32 startValue;
    fx32 delta;
    int currentStep;
    int numSteps;
} LinearInterpolationTaskFX32;

#endif // POKEPLATINUM_STRUCT_LINEAR_INTERPOLATION_TASK_FX32_H
