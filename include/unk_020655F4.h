#ifndef POKEPLATINUM_UNK_020655F4_H
#define POKEPLATINUM_UNK_020655F4_H

#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/map_object_anim_cmd.h"

#include "sys_task_manager.h"

BOOL LocalMapObj_IsAnimationSet(const MapObject *mapObj);
void LocalMapObj_SetAnimationCode(MapObject *mapObj, int movementAction);
void sub_02065668(MapObject *mapObj, int movementAction);
BOOL LocalMapObj_CheckAnimationFinished(const MapObject *mapObj);
BOOL sub_020656AC(MapObject *mapObj);
void sub_020656DC(MapObject *mapObj);
SysTask *MapObject_StartAnimation(MapObject *mapObj, const MapObjectAnimCmd *animCmd);
BOOL MapObject_HasAnimationEnded(SysTask *task);
void MapObject_FinishAnimation(SysTask *task);
int MovementAction_TurnActionTowardsDir(int targetDir, int movementAction);
int MovementAction_GetDirFromAction(int movementAction);
void MapObject_DoMovementAction(MapObject *mapObj);
BOOL sub_020658DC(MapObject *mapObj);

#endif // POKEPLATINUM_UNK_020655F4_H
