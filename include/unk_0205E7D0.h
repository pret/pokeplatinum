#ifndef POKEPLATINUM_UNK_0205E7D0_H
#define POKEPLATINUM_UNK_0205E7D0_H

#include "field/field_system_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_defs/struct_0205EC34.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include <nitro/fx/fx.h>

PlayerAvatar * sub_0205E7D0(const UnkStruct_02061830 * param0, int param1, int param2, int param3, int param4, int param5, int param6, UnkStruct_0205EC34 * param7);
PlayerAvatar * sub_0205E820(const UnkStruct_02061830 * param0, UnkStruct_0205EC34 * param1, int param2);
void sub_0205E884(PlayerAvatar * param0, int param1);
void sub_0205E8E0(PlayerAvatar * param0);
void sub_0205E8E8(PlayerAvatar * param0);
LocalMapObject * sub_0205EA24(const UnkStruct_02061830 * param0);
int Player_Dir(PlayerAvatar * const param0);
void Player_SetDir(PlayerAvatar * param0, int param1);
int sub_0205EA94(PlayerAvatar * const param0);
int sub_0205EAA0(PlayerAvatar * const param0);
int Player_XPos(PlayerAvatar * const param0);
int Player_ZPos(PlayerAvatar * const param0);
int sub_0205EAD4(PlayerAvatar * const param0);
int sub_0205EAE0(PlayerAvatar * const param0);
void sub_0205EAEC(PlayerAvatar * const param0, VecFx32 * param1);
const VecFx32 * sub_0205EAFC(PlayerAvatar * const param0);
void sub_0205EB08(PlayerAvatar * param0, int param1);
int sub_0205EB0C(const PlayerAvatar * param0);
void sub_0205EB10(PlayerAvatar * param0, int param1);
int sub_0205EB14(const PlayerAvatar * param0);
void sub_0205EB18(PlayerAvatar * param0, int param1);
void sub_0205EB38(PlayerAvatar * param0, LocalMapObject * param1);
LocalMapObject * Player_LocalMapObject(PlayerAvatar * param0);
const LocalMapObject * sub_0205EB54(const PlayerAvatar * param0);
void sub_0205EB58(PlayerAvatar * param0, int param1);
int sub_0205EB74(PlayerAvatar * param0);
void sub_0205EB84(PlayerAvatar * param0, u32 param1);
void sub_0205EB8C(PlayerAvatar * param0, u32 param1);
u32 sub_0205EB90(PlayerAvatar * param0);
void sub_0205EB94(PlayerAvatar * param0, int param1);
int sub_0205EB98(PlayerAvatar * param0);
int sub_0205EBB8(PlayerAvatar * param0);
void sub_0205EBBC(PlayerAvatar * param0, int param1);
void sub_0205EBC0(PlayerAvatar * param0);
int sub_0205EBCC(PlayerAvatar * param0, int param1, int param2);
void sub_0205EBDC(PlayerAvatar * param0, int param1);
int sub_0205EBE0(PlayerAvatar * param0);
void sub_0205EBE4(PlayerAvatar * param0, int param1);
int sub_0205EBE8(PlayerAvatar * param0);
void sub_0205EBEC(PlayerAvatar * param0, int param1, int param2);
void sub_0205EC00(PlayerAvatar * param0, UnkStruct_ov101_021D5D90 * param1);
UnkStruct_ov101_021D5D90 * sub_0205EC04(PlayerAvatar * param0);
UnkStruct_0205EC34 * sub_0205EC0C(PlayerAvatar * param0);
void sub_0205EC10(PlayerAvatar * param0, u32 param1);
u32 sub_0205EC14(PlayerAvatar * param0);
void sub_0205EC18(PlayerAvatar * param0, int param1);
int sub_0205EC1C(PlayerAvatar * param0);
void sub_0205EC20(PlayerAvatar * param0, u32 param1, int param2);
void sub_0205EC34(UnkStruct_0205EC34 * param0);
int sub_0205EC40(UnkStruct_0205EC34 * param0);
void sub_0205EC54(UnkStruct_0205EC34 * param0, int param1);
int sub_0205EC64(UnkStruct_0205EC34 * param0);
void sub_0205EC70(UnkStruct_0205EC34 * param0, int param1);
void sub_0205EC78(PlayerAvatar * param0, int param1);
int sub_0205EC88(PlayerAvatar * param0);
u32 sub_0205EC94(UnkStruct_0205EC34 * param0);
void sub_0205ECA0(UnkStruct_0205EC34 * param0, u32 param1);
void sub_0205ECA8(PlayerAvatar * param0, u32 param1);
void sub_0205ECB8(PlayerAvatar * param0, const VecFx32 * param1, int param2);
void sub_0205ECE0(PlayerAvatar * param0, int param1, int param2, int param3);
void sub_0205ED0C(PlayerAvatar * param0, fx32 param1);
void sub_0205ED2C(PlayerAvatar * param0, int param1);
void sub_0205ED48(PlayerAvatar * param0, int param1);
int sub_0205ED6C(int param0, int param1);
u32 sub_0205EED8(int param0);
PlayerAvatar * sub_0205EF3C(FieldSystem * param0);
void sub_0205EF40(PlayerAvatar * param0, int param1);
int sub_0205EF58(PlayerAvatar * param0);
void sub_0205EF6C(PlayerAvatar * param0, int param1);
int sub_0205EF84(PlayerAvatar * param0);
void sub_0205EF98(PlayerAvatar * param0, int param1);
int sub_0205EFB0(PlayerAvatar * param0);
void sub_0205EFC4(PlayerAvatar * param0, int param1);
int sub_0205EFDC(PlayerAvatar * param0);
void sub_0205EFF0(PlayerAvatar * param0, int param1);
int sub_0205F008(PlayerAvatar * param0);
void sub_0205F01C(PlayerAvatar * param0, int param1);
int sub_0205F034(PlayerAvatar * param0);
void sub_0205F048(PlayerAvatar * param0);
void sub_0205F054(PlayerAvatar * param0);
int sub_0205F060(PlayerAvatar * param0);
void sub_0205F074(PlayerAvatar * param0, int param1);
int sub_0205F08C(PlayerAvatar * param0);
void sub_0205F098(PlayerAvatar * param0, int param1);
int sub_0205F108(PlayerAvatar * const param0);
BOOL sub_0205F158(PlayerAvatar * const param0);
BOOL sub_0205F16C(PlayerAvatar * const param0);

#endif // POKEPLATINUM_UNK_0205E7D0_H
