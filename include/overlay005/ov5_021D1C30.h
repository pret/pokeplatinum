#ifndef POKEPLATINUM_OV5_021D1C30_H
#define POKEPLATINUM_OV5_021D1C30_H

#include "field/field_system_decl.h"

typedef struct {
    u16 unk_00_0 : 1;
    u16 unk_00_1 : 1;
    u16 unk_00_2 : 1;
    u16 unk_00_3 : 1;
    u16 unk_00_4 : 1;
    u16 unk_00_5 : 1;
    u16 unk_00_6 : 1;
    u16 unk_00_7 : 1;
    u16 unk_00_8 : 1;
    u16 unk_00_9 : 1;
    u16 unk_00_10 : 1;
    u16 unk_00_11 : 1;
    u16 : 4;
    u8 unk_02;
    s8 unk_03;
    u16 unk_04;
    u16 unk_06;
} UnkStruct_ov5_021D1CAC;

void ov5_021D1CAC(UnkStruct_ov5_021D1CAC * param0, FieldSystem * fieldSystem, u16 param2, u16 param3);
int ov5_021D1DA4(const UnkStruct_ov5_021D1CAC * param0, FieldSystem * fieldSystem);
BOOL ov5_021D213C(UnkStruct_ov5_021D1CAC * param0, FieldSystem * fieldSystem);
BOOL ov5_021D219C(UnkStruct_ov5_021D1CAC * param0, FieldSystem * fieldSystem);
BOOL ov5_021D2298(const UnkStruct_ov5_021D1CAC * param0, FieldSystem * fieldSystem);
int ov5_021D2368(const UnkStruct_ov5_021D1CAC * param0, FieldSystem * fieldSystem);

#endif // POKEPLATINUM_OV5_021D1C30_H
