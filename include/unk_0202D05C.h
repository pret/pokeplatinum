#ifndef POKEPLATINUM_UNK_0202D05C_H
#define POKEPLATINUM_UNK_0202D05C_H

#include "struct_defs/struct_02014A84.h"
#include "struct_decls/struct_0202D060_decl.h"
#include "struct_decls/struct_0202D080_decl.h"
#include "struct_defs/struct_0202D314.h"
#include "struct_decls/struct_0202D750_decl.h"
#include "struct_decls/struct_0202D764_decl.h"
#include "struct_defs/struct_02049A68.h"
#include "struct_decls/struct_021C0794_decl.h"
#include "overlay090/struct_ov90_021D1750.h"
#include "overlay096/struct_ov96_0223B450_sub1.h"
#include "overlay096/struct_ov96_0223B450_sub2.h"
#include "overlay104/struct_ov104_0223A348.h"
#include "overlay104/struct_ov104_0223A348_sub2.h"

#include <nitro/rtc.h>

int sub_0202D05C(void);
void sub_0202D060(UnkStruct_0202D060 * param0);
void sub_0202D06C(UnkStruct_0202D750 * param0);
void sub_0202D080(UnkStruct_0202D080 * param0);
void sub_0202D0AC(UnkStruct_0202D764 * param0);
u32 sub_0202D0BC(UnkStruct_0202D060 * param0, int param1, void * param2);
void sub_0202D140(UnkStruct_0202D060 * param0, int param1, const void * param2);
void sub_0202D1E8(UnkStruct_0202D060 * param0, u8 param1, u16 param2, u16 param3);
BOOL sub_0202D214(UnkStruct_0202D060 * param0);
void sub_0202D21C(UnkStruct_0202D060 * param0, BOOL param1);
u16 sub_0202D230(UnkStruct_0202D750 * param0, u16 param1, int param2);
u8 sub_0202D288(UnkStruct_0202D750 * param0, int param1);
u8 sub_0202D2C0(UnkStruct_0202D750 * param0, int param1);
void sub_0202D2F0(UnkStruct_0202D750 * param0, int param1, UnkStruct_ov104_0223A348_sub2 * param2);
void sub_0202D314(UnkStruct_0202D750 * param0, int param1, UnkStruct_0202D314 * param2);
u16 sub_0202D334(UnkStruct_0202D750 * param0, UnkStruct_0202D060 * param1);
u16 sub_0202D39C(UnkStruct_0202D750 * param0);
u8  sub_0202D3A0(UnkStruct_0202D750 * param0);
u16 sub_0202D3B4(UnkStruct_0202D750 * param0, u16 param1, int param2);
u16 sub_0202D3FC(UnkStruct_0202D750 * param0, u16 param1, u16 param2);
BOOL sub_0202D414(UnkStruct_0202D750 * param0, u16 param1, int param2);
void sub_0202D470(UnkStruct_0202D750 * param0, u32 param1);
u32 sub_0202D474(UnkStruct_0202D750 * param0);
void sub_0202D478(SaveData * param0, int param1, UnkStruct_02014A84 * param2);
UnkStruct_02014A84 * sub_0202D498(SaveData * param0, int param1);
void sub_0202D4B0(UnkStruct_0202D764 * param0, u8 param1, u8 param2, RTCDate * param3);
void sub_0202D514(UnkStruct_0202D764 * param0);
BOOL sub_0202D558(UnkStruct_0202D764 * param0, u8 param1, u8 param2, RTCDate * param3);
BOOL sub_0202D5E8(UnkStruct_0202D764 * param0);
BOOL sub_0202D5F0(UnkStruct_0202D764 * param0);
void sub_0202D5F8(UnkStruct_0202D764 * param0, UnkStruct_ov96_0223B450_sub1 * param1, u8 param2, u8 param3);
void sub_0202D628(UnkStruct_0202D764 * param0, UnkStruct_02049A68 * param1);
void sub_0202D63C(UnkStruct_0202D764 * param0, UnkStruct_ov104_0223A348 * param1, const u8 param2);
void sub_0202D6DC(UnkStruct_0202D764 * param0, UnkStruct_ov96_0223B450_sub2 * param1, u8 param2, u8 param3);
void sub_0202D708(UnkStruct_0202D764 * param0, UnkStruct_02049A68 * param1);
UnkStruct_ov90_021D1750 * sub_0202D71C(UnkStruct_0202D764 *, int);
UnkStruct_0202D060 * sub_0202D740(SaveData * param0);
UnkStruct_0202D750 * sub_0202D750(SaveData * param0);
UnkStruct_0202D764 * sub_0202D764(SaveData * param0);

#endif // POKEPLATINUM_UNK_0202D05C_H
