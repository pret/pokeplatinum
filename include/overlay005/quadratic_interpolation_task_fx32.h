#ifndef POKEPLATINUM_STRUCT_QUADRATIC_INTERPOLATION_TASK_FX32_H
#define POKEPLATINUM_STRUCT_QUADRATIC_INTERPOLATION_TASK_FX32_H

typedef struct QuadraticInterpolationTaskFX32 {
    fx32 currentValue;
    fx32 startValue;
    fx32 initialRate;
    fx32 quadraticCoeff;
    int currentStep;
    int numSteps;
} QuadraticInterpolationTaskFX32;

#endif // POKEPLATINUM_STRUCT_QUADRATIC_INTERPOLATION_TASK_FX32_H
