#ifndef POKEPLATINUM_OV5_021E22B0_H
#define POKEPLATINUM_OV5_021E22B0_H

#include "overlay005/struct_ov5_021E20E8_decl.h"

typedef struct FieldMotionBlur {
    UnkStruct_ov5_021E20E8 * unk_00;
} FieldMotionBlur;

FieldMotionBlur *FieldMotionBlur_Start(int coeffA, int coeffB);
void FieldMotionBlur_Stop(FieldMotionBlur **fieldMotionBlur);

#endif // POKEPLATINUM_OV5_021E22B0_H
