#ifndef POKEPLATINUM_TRAINER_ENCOUNTER_H
#define POKEPLATINUM_TRAINER_ENCOUNTER_H

#include "struct_decls/map_object.h"

#include "field/field_system_decl.h"

#include "player_avatar.h"
#include "sys_task_manager.h"

BOOL FieldSystem_CheckForTrainersWantingBattle(FieldSystem *fieldSystem, BOOL hasTwoAliveMons);
int MapObject_GetDistanceToPlayer(const MapObject *mapObj, PlayerAvatar *playerAvatar, int direction, int range);
int MapObject_GetTrainerID(MapObject *mapObj);
BOOL FieldSystem_IsTrainerDefeated(FieldSystem *fieldSystem, MapObject *mapObj);
SysTask *TrainerEncounter_StartApproachingTrainerTask(FieldSystem *fieldSystem, MapObject *mapObj, PlayerAvatar *playerAvatar, int direction, int sightRange, int unused, int approachType, int approachNum);
BOOL TrainerEncounter_IsApproachingTrainerTaskDone(SysTask *task);
void TrainerEncounter_FreeApproachingTrainerTask(SysTask *task);

#endif // POKEPLATINUM_TRAINER_ENCOUNTER_H
