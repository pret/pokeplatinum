#ifndef POKEPLATINUM_OV80_021D2AF4_H
#define POKEPLATINUM_OV80_021D2AF4_H

#include "overlay080/struct_ov80_021D2AF4.h"
#include "overlay080/struct_ov80_021D2C1C.h"
#include "overlay080/struct_ov80_021D2C5C.h"
#include "overlay080/struct_ov80_021D2E10.h"

#include "sprite_system.h"

UnkStruct_ov80_021D2C1C *ov80_021D2AF4(SpriteSystem *param0, SpriteManager *param1, u8 *param2, short param3, int param4);
void ov80_021D2C1C(UnkStruct_ov80_021D2C1C *param0);
UnkStruct_ov80_021D2C5C *ov80_021D2C5C(UnkStruct_ov80_021D2C1C *param0, int param1, int param2, int param3);
int ov80_021D2CC0(UnkStruct_ov80_021D2C1C *param0, int param1, int param2, int param3);
void ov80_021D2D28(UnkStruct_ov80_021D2C1C *param0, int param1);
UnkStruct_ov80_021D2E10 *ov80_021D2D70(const char *param0, int param1);
void ov80_021D2E10(UnkStruct_ov80_021D2E10 *param0);
UnkStruct_ov80_021D2AF4 *ov80_021D2E24(UnkStruct_ov80_021D2E10 *param0, int param1, int param2, u16 param3);

#endif // POKEPLATINUM_OV80_021D2AF4_H
