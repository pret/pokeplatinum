#ifndef POKEPLATINUM_UNK_0204AEE8_H
#define POKEPLATINUM_UNK_0204AEE8_H

#include "struct_defs/struct_0204AFC4.h"
#include "struct_defs/struct_0204B404.h"

#include "field/field_system_decl.h"
#include "overlay104/struct_ov104_0223A348.h"

#include "savedata.h"
#include "string_template.h"

StringTemplate *sub_0204AEE8(SaveData *param0, u16 param1, u16 param2, u8 param3, u8 *param4);
u16 sub_0204AF9C(u8 param0);
u16 sub_0204AFC4(FieldSystem *fieldSystem, const u16 *param1);
u16 sub_0204B020(FieldSystem *fieldSystem, const u16 *param1);
u16 sub_0204B044(FieldSystem *fieldSystem, const u16 *param1);
void sub_0204B060(UnkStruct_0204AFC4 *param0, SaveData *param1);
void sub_0204B0BC(UnkStruct_0204AFC4 *param0);
void sub_0204B0D4(UnkStruct_0204AFC4 *param0, u16 param1);
u16 sub_0204B0F0(UnkStruct_0204AFC4 *param0, u8 param1, u8 param2, int param3);
BOOL sub_0204B3B8(UnkStruct_0204AFC4 *param0, UnkStruct_ov104_0223A348 *param1, u16 param2, int param3, u16 *param4, u16 *param5, UnkStruct_0204B404 *param6, int param7);
void sub_0204B404(UnkStruct_0204AFC4 *param0, UnkStruct_ov104_0223A348 *param1, u16 param2, BOOL param3, const UnkStruct_0204B404 *param4, int heapID);

#endif // POKEPLATINUM_UNK_0204AEE8_H
