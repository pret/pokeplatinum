#ifndef POKEPLATINUM_TRAINER_SEE_H
#define POKEPLATINUM_TRAINER_SEE_H

#include "struct_decls/map_object.h"

#include "field/field_system_decl.h"

#include "player_avatar.h"
#include "sys_task_manager.h"

BOOL FieldSystem_CheckForTrainersWantingBattle(FieldSystem *fieldSystem, BOOL hasTwoAliveMons);
int MapObject_GetDistanceToPlayer(const MapObject *mapObj, PlayerAvatar *playerAvatar, int direction, int range);
int MapObject_GetTrainerID(MapObject *mapObj);
BOOL FieldSystem_IsTrainerDefeated(FieldSystem *fieldSystem, MapObject *mapObj);
SysTask *TrainerSee_StartApproachingTrainerTask(FieldSystem *fieldSystem, MapObject *mapObj, PlayerAvatar *playerAvatar, int direction, int sightRange, int unused, int approachType, int approachNum);
BOOL TrainerSee_IsApproachingTrainerTaskDone(SysTask *task);
void TrainerSee_FreeApproachingTrainerTask(SysTask *task);

#endif // POKEPLATINUM_TRAINER_SEE_H
