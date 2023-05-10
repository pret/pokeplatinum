#ifndef POKEPLATINUM_OV104_0223BCBC_H
#define POKEPLATINUM_OV104_0223BCBC_H

#include "struct_defs/pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "overlay006/struct_ov6_02240D5C.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_0223BFFC.h"

void ov104_0223BD28(u8 param0, int param1, u16 param2[], u8 param3);
u8 ov104_0223BD70(u8 param0, BOOL param1);
u8 ov104_0223BDA4(u8 param0, BOOL param1);
UnkStruct_ov6_02240D5C * ov104_0223BDD8(UnkStruct_ov104_0223BFFC * param0, UnkStruct_ov104_02230BE4 * param1);
u8 ov104_0223BFFC(UnkStruct_ov104_0223BFFC * param0);
BOOL ov104_0223C000(u8 param0);
void ov104_0223C010(UnkStruct_ov104_0223BFFC * param0, Pokemon * param1);
void ov104_0223C034(UnkStruct_ov104_0223BFFC * param0, Party * param1, Pokemon * param2);
void ov104_0223C04C(UnkStruct_ov104_0223BFFC * param0);
u16 ov104_0223C0BC(UnkStruct_ov104_0223BFFC * param0, u8 param1);
u16 ov104_0223C124(UnkStruct_ov104_0223BFFC * param0);
u8 ov104_0223C148(u8 param0);

#endif // POKEPLATINUM_OV104_0223BCBC_H
