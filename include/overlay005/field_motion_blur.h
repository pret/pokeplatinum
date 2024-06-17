#ifndef POKEPLATINUM_OV5_021E22B0_H
#define POKEPLATINUM_OV5_021E22B0_H

#include "overlay005/motion_blur.h"

typedef struct FieldMotionBlur {
    MotionBlur * unk_00;
} FieldMotionBlur;

FieldMotionBlur *FieldMotionBlur_Start(int coeffA, int coeffB);
void FieldMotionBlur_Stop(FieldMotionBlur **fieldMotionBlur);

#endif // POKEPLATINUM_OV5_021E22B0_H
