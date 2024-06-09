#ifndef POKEPLATINUM_UNK_0203A378_H
#define POKEPLATINUM_UNK_0203A378_H

#include "struct_defs/struct_0203A4AC.h"
#include "struct_defs/struct_0203A55C.h"
#include "struct_defs/struct_0203A594.h"
#include "field/field_system_decl.h"
#include "struct_decls/struct_020619DC_decl.h"
#include "overlay006/struct_ov6_02242634.h"

void sub_0203A378(FieldSystem * fieldSystem, int param1);
void sub_0203A398(FieldSystem * fieldSystem);
void FieldSystem_LoadMapData(FieldSystem * fieldSystem, int param1);
void sub_0203A418(FieldSystem * fieldSystem);
const BgEvent * sub_0203A440(const FieldSystem * fieldSystem);
int sub_0203A448(const FieldSystem * fieldSystem);
const UnkStruct_0203A55C * sub_0203A450(const FieldSystem * fieldSystem, int param1);
int sub_0203A468(const FieldSystem * fieldSystem, int param1, int param2);
int sub_0203A4A4(const FieldSystem * fieldSystem);
const UnkStruct_0203A4AC * sub_0203A4AC(const FieldSystem * fieldSystem);
u32 FieldSystem_GetNPCCount(const FieldSystem * fieldSystem);
const MapObjectHeader * sub_0203A4BC(const FieldSystem * fieldSystem);
BOOL sub_0203A4C4(FieldSystem * fieldSystem, int param1, u16 param2, u16 param3);
BOOL sub_0203A4FC(FieldSystem * fieldSystem, int param1, int param2);
BOOL sub_0203A52C(FieldSystem * fieldSystem, int param1, int param2);
BOOL sub_0203A55C(FieldSystem * fieldSystem, u16 param1, u16 param2, u16 param3);
BOOL sub_0203A574(FieldSystem * fieldSystem, u16 param1, u16 param2);
BOOL sub_0203A584(FieldSystem * fieldSystem, u16 param1, u16 param2);
BOOL sub_0203A594(FieldSystem * fieldSystem, u16 param1, u16 param2, u16 param3);
void sub_0203A614(UnkStruct_ov6_02242634 * param0, int param1);
const UnkStruct_ov6_02242634 * sub_0203A640(const FieldSystem * fieldSystem);
void * sub_0203A68C(const FieldSystem * fieldSystem);
BOOL sub_0203A6A4(const FieldSystem * fieldSystem, u16 param1, u16 param2);

#endif // POKEPLATINUM_UNK_0203A378_H
