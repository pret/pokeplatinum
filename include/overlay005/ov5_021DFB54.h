#ifndef POKEPLATINUM_OV5_021DFB54_H
#define POKEPLATINUM_OV5_021DFB54_H

#include "struct_decls/sys_task.h"
#include "field/field_system_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_0205E884_decl.h"

void ov5_021DFB54(PlayerAvatar * param0, u32 param1);
void PlayerAvatar_RequestChangeState(PlayerAvatar * param0);
int ov5_021DFDE0(FieldSystem * param0, PlayerAvatar * param1, int param2, int param3);
void ov5_021E00EC(TaskManager * param0, int param1, int param2);
int ov5_021E0118(PlayerAvatar * param0, u32 param1, u32 param2);
void ov5_021E0734(TaskManager * param0, int param1, int param2);
int ov5_021E0760(u32 param0, int param1);
void ov5_021E097C(FieldSystem * param0, int param1);
void ov5_021E0998(TaskManager * param0, int param1, int param2);
void ov5_021E0DD4(TaskManager * param0);
void ov5_021E0E94(PlayerAvatar * param0);
void ov5_021E0EEC(PlayerAvatar * param0);
SysTask * ov5_021E1000(FieldSystem * param0);
void ov5_021E100C(SysTask * param0);
SysTask * ov5_021E1014(FieldSystem * param0);
void ov5_021E1020(SysTask * param0);

#endif // POKEPLATINUM_OV5_021DFB54_H
