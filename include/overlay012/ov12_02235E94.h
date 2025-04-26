#ifndef POKEPLATINUM_OV12_02235E94_H
#define POKEPLATINUM_OV12_02235E94_H

#include "overlay012/struct_ball_rotation_decl.h"
#include "overlay012/struct_ov12_02235FE0_decl.h"
#include "overlay012/struct_ov12_02236030.h"
#include "overlay012/struct_ov12_02236648_decl.h"
#include "overlay012/struct_ov12_02236690.h"
#include "overlay012/struct_ov12_02237728.h"
#include "spl.h"

UnkStruct_ov12_02235FE0 *ov12_02235FE0(int heapID);
UnkStruct_ov12_02235FE0 *ov12_02236004(int heapID, const UnkStruct_ov12_02236030 *param1);
void ov12_02236030(UnkStruct_ov12_02235FE0 *param0, const UnkStruct_ov12_02236030 *param1);
void ov12_02236320(UnkStruct_ov12_02235FE0 *param0);
BOOL ov12_02236374(UnkStruct_ov12_02235FE0 *param0);
void ov12_02236384(UnkStruct_ov12_02235FE0 *param0, SPLEmitterCallback param1);
void ov12_022363B4(UnkStruct_ov12_02235FE0 *param0);
BOOL ov12_022363C4(UnkStruct_ov12_02235FE0 *param0);
void ov12_02236428(UnkStruct_ov12_02235FE0 *param0);
UnkStruct_ov12_02236648 *ov12_02236690(UnkStruct_ov12_02236690 *param0);
void ov12_022366F0(UnkStruct_ov12_02236648 *param0);
BOOL ov12_02236764(UnkStruct_ov12_02236648 *param0);
void ov12_02236780(UnkStruct_ov12_02236648 *param0);
void ov12_022368C8(BallRotation *param0, int param1);
BOOL ov12_022368D0(BallRotation *param0, int param1);
BallRotation *ov12_02237728(BallThrow *param0);
BOOL ov12_022377F8(BallRotation *param0);
BOOL ov12_02237810(BallRotation *param0);
void ov12_02237828(BallRotation *param0, int param1);
BOOL ov12_0223782C(BallRotation *param0, int param1);
void ov12_0223783C(BallRotation *param0);
void ov12_0223786C(BallRotation *param0, int param1);
int ov12_02237890(BallRotation *param0);
void ov12_02237E0C(BallRotation *param0, int param1);
void ov12_02237E18(BallRotation *param0, s16 param1, s16 param2);
void ov12_02237E24(BallRotation *param0, u16 param1);
void ov12_02237E30(BallRotation *param0, BOOL param1);
void ov12_02237E34(BallRotation *param0, int param1);
void ov12_02237E40(BallRotation *param0, int param1);
void ov12_02237E4C(BallRotation *param0, int param1);

#endif // POKEPLATINUM_OV12_02235E94_H
