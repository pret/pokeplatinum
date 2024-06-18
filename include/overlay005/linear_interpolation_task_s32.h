#ifndef POKEPLATINUM_STRUCT_LINEAR_INTERPOLATION_TASK_S32_H
#define POKEPLATINUM_STRUCT_LINEAR_INTERPOLATION_TASK_S32_H

typedef struct LinearInterpolationTaskS32 {
    int currentValue;
    int startValue;
    int delta;
    int currentStep;
    int numSteps;
} LinearInterpolationTaskS32;

#endif // POKEPLATINUM_STRUCT_LINEAR_INTERPOLATION_TASK_S32_H
