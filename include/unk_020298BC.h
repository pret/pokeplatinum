#ifndef POKEPLATINUM_UNK_020298BC_H
#define POKEPLATINUM_UNK_020298BC_H

#include "strbuf.h"
#include "struct_defs/struct_020298D8.h"
#include "struct_decls/struct_02029C68_decl.h"
#include "struct_decls/struct_02029C88_decl.h"
#include "struct_decls/struct_02029D04_decl.h"
#include "struct_decls/struct_0202A138_decl.h"
#include "struct_decls/struct_0202A150_decl.h"
#include "struct_decls/struct_0202A750_decl.h"
#include "pokemon.h"
#include "unk_020244AC.h"
#include "overlay022/struct_ov22_02255040.h"
#include "overlay061/struct_ov61_0222AE80.h"

void ImageClip_Init(UnkStruct_0202A750 * param0);
int ImageClip_SaveSize(void);
int sub_02029C60(void);
int sub_02029C64(void);
UnkStruct_02029C68 * sub_02029C68(u32 param0);
UnkStruct_02029C88 * sub_02029C88(u32 param0);
UnkStruct_02029C68 * sub_02029CA8(UnkStruct_0202A750 * param0, int param1);
UnkStruct_02029C88 * sub_02029CD0(UnkStruct_0202A750 * param0, int param1);
UnkStruct_02029D04 * sub_02029D04(UnkStruct_0202A750 * param0);
BOOL sub_02029D10(const UnkStruct_0202A750 * param0, int param1);
BOOL sub_02029D2C(const UnkStruct_0202A750 * param0, int param1);
BOOL sub_02029D50(const UnkStruct_02029D04 * param0, u32 param1, u32 param2);
BOOL sub_02029D80(const UnkStruct_02029D04 * param0, u32 param1);
u32 sub_02029D94(const UnkStruct_02029D04 * param0, u32 param1);
u32 sub_02029DD4(const UnkStruct_02029D04 * param0, u32 param1);
u32 sub_02029DF0(const UnkStruct_02029D04 * param0);
u32 sub_02029E0C(const UnkStruct_02029D04 * param0);
void sub_02029E2C(UnkStruct_02029D04 * param0, u32 param1, u32 param2);
void sub_02029EA0(UnkStruct_02029D04 * param0, u32 param1, u32 param2);
void sub_02029EFC(UnkStruct_02029D04 * param0, u32 param1);
BOOL sub_02029F34(const UnkStruct_02029C68 * param0);
void sub_02029F5C(UnkStruct_02029C68 * param0);
void sub_02029F84(UnkStruct_02029C68 * param0);
void sub_02029FAC(UnkStruct_02029C68 * param0, Pokemon * param1, UnkStruct_020298D8 * param2);
void sub_02029FD0(UnkStruct_02029C68 * param0, const UnkStruct_ov22_02255040 * param1, int param2);
void sub_0202A084(UnkStruct_02029C68 * param0, u8 param1);
void sub_0202A0A0(UnkStruct_02029C68 * param0, u16 param1);
void sub_0202A0CC(UnkStruct_02029C68 * param0, const UnkStruct_02029C68 * param1);
void sub_0202A0EC(UnkStruct_02029C68 * param0, const Strbuf *param1, int param2);
BOOL sub_0202A110(const UnkStruct_02029C68 * param0, int param1);
const UnkStruct_0202A138 * sub_0202A138(const UnkStruct_02029C68 * param0);
const UnkStruct_0202A150 * sub_0202A150(const UnkStruct_02029C68 * param0, int param1);
u16 sub_0202A184(const UnkStruct_02029C68 * param0);
void sub_0202A1A0(const UnkStruct_02029C68 * param0, Strbuf *param1);
u32 sub_0202A1C0(const UnkStruct_02029C68 * param0);
u8 sub_0202A1DC(const UnkStruct_02029C68 * param0);
u16 sub_0202A1F4(const UnkStruct_02029C68 * param0);
u8 sub_0202A200(const UnkStruct_02029C68 * param0);
BOOL sub_0202A218(const UnkStruct_02029C88 * param0);
void sub_0202A240(UnkStruct_02029C88 * param0);
void sub_0202A25C(UnkStruct_02029C88 * param0);
void sub_0202A284(UnkStruct_02029C88 * param0, Pokemon * param1, UnkStruct_020298D8 * param2);
void sub_0202A2A8(UnkStruct_02029C88 * param0, const UnkStruct_ov22_02255040 * param1, int param2);
void sub_0202A35C(UnkStruct_02029C88 * param0, u8 param1);
void sub_0202A378(UnkStruct_02029C88 * param0, u32 param1);
void sub_0202A390(UnkStruct_02029C88 * param0, const UnkStruct_02029C88 * param1);
void sub_0202A3B0(UnkStruct_02029C88 * param0, Pokemon * param1, s8 param2);
void sub_0202A3EC(UnkStruct_02029C88 * param0, u32 param1, u8 param2, u8 param3, u8 param4, s8 param5);
BOOL sub_0202A488(const UnkStruct_02029C88 * param0, int param1);
void sub_0202A4B4(UnkStruct_02029C88 * param0, const Strbuf *param1, int param2);
const UnkStruct_0202A138 * sub_0202A4D8(const UnkStruct_02029C88 * param0);
const UnkStruct_0202A150 * sub_0202A4F0(const UnkStruct_02029C88 * param0, int param1);
void sub_0202A524(const UnkStruct_02029C88 * param0, Strbuf *param1);
u32 sub_0202A544(const UnkStruct_02029C88 * param0);
void sub_0202A560(const UnkStruct_02029C88 * param0, Pokemon * param1);
u8 sub_0202A580(const UnkStruct_02029C88 * param0, int param1);
u8 sub_0202A5B8(const UnkStruct_02029C88 * param0);
u32 sub_0202A5D0(const UnkStruct_02029C88 * param0);
u16 sub_0202A5E8(const UnkStruct_0202A138 * param0);
void sub_0202A5EC(const UnkStruct_0202A138 * param0, Strbuf *param1);
u32 sub_0202A5FC(const UnkStruct_0202A138 * param0);
s8 sub_0202A604(const UnkStruct_0202A138 * param0);
u8 sub_0202A60C(const UnkStruct_0202A138 * param0);
u8 sub_0202A614(const UnkStruct_0202A138 * param0);
void sub_0202A61C(const UnkStruct_0202A138 * param0, Pokemon * param1);
u8 sub_0202A624(const UnkStruct_0202A150 * param0);
u8 sub_0202A628(const UnkStruct_0202A150 * param0);
u8 sub_0202A62C(const UnkStruct_0202A150 * param0);
s8 sub_0202A630(const UnkStruct_0202A150 * param0);
void sub_0202A6A8(u8 param0, int param1, UnkStruct_0202A750 * param2, const void ** param3);
UnkStruct_0202A750 * sub_0202A750(SaveData * param0);
void sub_0202A75C(const UnkStruct_02029C68 * param0, UnkStruct_ov61_0222AE80 * param1);
void sub_0202A824(const UnkStruct_ov61_0222AE80 * param0, UnkStruct_02029C68 * param1);

#endif // POKEPLATINUM_UNK_020298BC_H
