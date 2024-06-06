#ifndef POKEPLATINUM_OV5_021DFB54_H
#define POKEPLATINUM_OV5_021DFB54_H

#include "struct_decls/sys_task.h"
#include "field/field_system_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_0205E884_decl.h"

void PlayerAvatar_SetRequestStateBit(PlayerAvatar * playerAvatar, u32 param1);
void PlayerAvatar_RequestChangeState(PlayerAvatar * playerAvatar);
int ov5_021DFDE0(FieldSystem * fieldSystem, PlayerAvatar * param1, int param2, int param3);
void ov5_021E00EC(TaskManager * param0, int param1, int param2);
int ov5_021E0118(PlayerAvatar * playerAvatar, u32 param1, u32 param2);
void ov5_021E0734(TaskManager * param0, int param1, int param2);
int ov5_021E0760(u32 param0, int param1);
void ov5_021E097C(FieldSystem * fieldSystem, int param1);
void ov5_021E0998(TaskManager * param0, int param1, int param2);
void ov5_021E0DD4(TaskManager * param0);
void ov5_021E0E94(PlayerAvatar * playerAvatar);
void ov5_021E0EEC(PlayerAvatar * playerAvatar);
SysTask * ov5_021E1000(FieldSystem * fieldSystem);
void ov5_021E100C(SysTask * param0);
SysTask * FieldSystem_StartVsSeekerTask(FieldSystem * fieldSystem);
void FieldSystem_EndVsSeekerTask(SysTask * param0);

#endif // POKEPLATINUM_OV5_021DFB54_H
