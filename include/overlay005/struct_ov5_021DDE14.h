#ifndef POKEPLATINUM_STRUCT_OV5_021DDE14_H
#define POKEPLATINUM_STRUCT_OV5_021DDE14_H

typedef struct {
    fx32 currentValue;
    fx32 startValue;
    fx32 initialRate;
    fx32 quadraticCoeff;
    int currentStep;
    int numSteps;
} QuadraticInterpolationTaskFX32;

#endif // POKEPLATINUM_STRUCT_OV5_021DDE14_H
