#ifndef POKEPLATINUM_UNK_0205F180_H
#define POKEPLATINUM_UNK_0205F180_H

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay005/struct_ov5_021E8F60_decl.h"

void PlayerAvatar_MoveControl(PlayerAvatar * playerAvatar, const UnkStruct_ov5_021E8F60 * param1, int param2, u16 param3, u16 param4, BOOL param5);
int PlayerAvatar_CheckStartMove(PlayerAvatar * playerAvatar, int param1);
void sub_0205F490(PlayerAvatar * playerAvatar);
void sub_0205F56C(PlayerAvatar * playerAvatar);
int sub_0205F588(PlayerAvatar * playerAvatar);
void sub_0205F5E4(PlayerAvatar * playerAvatar, int param1);
u32 sub_02060B7C(PlayerAvatar * playerAvatar, MapObject * param1, int param2);
u32 sub_020611FC(PlayerAvatar * playerAvatar, MapObject * param1, int param2);
int sub_02061308(PlayerAvatar * playerAvatar, u16 param1, u16 param2);
int sub_020613AC(PlayerAvatar * playerAvatar);
int sub_020613FC(PlayerAvatar * playerAvatar, u16 param1);
int sub_0206140C(PlayerAvatar * playerAvatar);
int sub_02061434(PlayerAvatar * playerAvatar, int param1);
u32 sub_0206147C(PlayerAvatar * playerAvatar, u16 param1, u16 param2, int param3, int param4, int param5);
int sub_02061544(PlayerAvatar * playerAvatar);
void PlayerAvatar_SetAnimationCode(PlayerAvatar * playerAvatar, u32 param1, int param2);
u32 sub_0206156C(PlayerAvatar * playerAvatar, int param1);
void sub_0206157C(PlayerAvatar * playerAvatar, int param1, int * param2, int * param3);
void sub_020615AC(PlayerAvatar * playerAvatar, int * param1, int * param2);
void sub_02061674(PlayerAvatar * playerAvatar, int param1, int * param2, int * param3, int * param4);
u32 sub_020616F0(PlayerAvatar * playerAvatar, int param1);
u32 sub_02061760(PlayerAvatar * playerAvatar);
void sub_020617BC(PlayerAvatar * const playerAvatar, int * param1, int * param2, int * param3);

#endif // POKEPLATINUM_UNK_0205F180_H
