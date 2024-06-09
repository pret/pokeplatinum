#ifndef POKEPLATINUM_STRUCT_OV5_021DDDBC_H
#define POKEPLATINUM_STRUCT_OV5_021DDDBC_H

typedef struct {
    fx32 currentValue;
    fx32 startValue;
    fx32 delta;
    int currentStep;
    int numSteps;
} LinearInterpolationTaskFX32;

#endif // POKEPLATINUM_STRUCT_OV5_021DDDBC_H
