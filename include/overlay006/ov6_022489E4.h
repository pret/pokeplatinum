#ifndef POKEPLATINUM_OV6_022489E4_H
#define POKEPLATINUM_OV6_022489E4_H

#include "struct_defs/struct_020954F0.h"

#include "overlay006/struct_ov6_02248BE8.h"
#include "overlay006/struct_ov6_02248DD8.h"

#include "contest.h"
#include "pokemon.h"
#include "string_gf.h"

void CommCmd_Contest_26(int param0, int param1, void *param2, void *param3);
BOOL ov6_02248A64(Contest *param0);
void CommCmd_Contest_27(int param0, int param1, void *param2, void *param3);
BOOL ov6_02248AF0(Contest *param0, int param1, const Pokemon *param2);
void CommCmd_Contest_28(int param0, int param1, void *param2, void *param3);
BOOL ov6_02248B70(Contest *param0, Pokemon **param1);
void CommCmd_Contest_29(int param0, int param1, void *param2, void *param3);
BOOL ov6_02248BE8(Contest *param0, int param1, const UnkStruct_ov6_02248BE8 *param2);
void CommCmd_Contest_30(int param0, int param1, void *param2, void *param3);
BOOL ov6_02248C68(Contest *param0, int param1, const UnkStruct_020954F0 *param2);
void CommCmd_Contest_31(int param0, int param1, void *param2, void *param3);
BOOL ov6_02248CE8(Contest *param0, int param1, const String *param2);
void CommCmd_Contest_36(int param0, int param1, void *param2, void *param3);
BOOL ov6_02248D64(Contest *param0, int param1, void *param2);
void CommCmd_Contest_37(int param0, int param1, void *param2, void *param3);
BOOL ov6_02248DD8(Contest *param0, int param1, const UnkStruct_ov6_02248DD8 *param2);

#endif // POKEPLATINUM_OV6_022489E4_H
