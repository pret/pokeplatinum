#ifndef POKEPLATINUM_TRAINER_SEE_H
#define POKEPLATINUM_TRAINER_SEE_H

#include "struct_decls/map_object.h"

#include "field/field_system_decl.h"

#include "player_avatar.h"
#include "sys_task_manager.h"

BOOL FieldSystem_CheckForTrainersWantingBattle(FieldSystem *fieldSystem, BOOL hasTwoAliveMons);
int MapObject_GetDistanceToPlayer(const MapObject *mapObj, PlayerAvatar *playerAvatar, int direction, int range);
int MapObject_GetTrainerID(MapObject *mapObj);
BOOL FieldSystem_IsTrainerDefated(FieldSystem *fieldSystem, MapObject *mapObj);
SysTask *sub_02067FB8(FieldSystem *fieldSystem, MapObject *param1, PlayerAvatar *playerAvatar, int param3, int param4, int param5, int param6, int param7);
int sub_02067FD4(SysTask *param0);
void sub_02067FE8(SysTask *param0);

#endif // POKEPLATINUM_TRAINER_SEE_H
