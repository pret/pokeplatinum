#ifndef POKEPLATINUM_UNK_020655F4_H
#define POKEPLATINUM_UNK_020655F4_H

#include "struct_decls/sys_task.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay005/struct_ov5_021F8E3C.h"

int LocalMapObj_IsAnimationSet(const MapObject * param0);
void LocalMapObj_SetAnimationCode(MapObject * param0, int param1);
void sub_02065668(MapObject * param0, int param1);
int LocalMapObj_CheckAnimationFinished(const MapObject * param0);
int sub_020656AC(MapObject * param0);
void sub_020656DC(MapObject * param0);
SysTask * MapObject_StartAnimation(MapObject * param0, const UnkStruct_ov5_021F8E3C * param1);
int MapObject_HasAnimationEnded(SysTask * param0);
void MapObject_FinishAnimation(SysTask * param0);
int sub_02065838(int param0, int param1);
int sub_0206587C(int param0);
void sub_020658B4(MapObject * param0);
int sub_020658DC(MapObject * param0);

#endif // POKEPLATINUM_UNK_020655F4_H
