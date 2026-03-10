#ifndef POKEPLATINUM_HM_CUT_IN_H
#define POKEPLATINUM_HM_CUT_IN_H

#include "field/field_system_decl.h"

#include "pokemon.h"
#include "sys_task_manager.h"

SysTask *HMCutIn_StartTask(FieldSystem *fieldSystem, BOOL isNotFly, Pokemon *shownPokemon, int playerGender);
int HMCutIn_IsFinished(SysTask *cutInTask);
void HMCutIn_EndTask(SysTask *cutInTask);
SysTask *FieldTask_FlyLanding_InitTask(FieldSystem *fieldSystem, int playerGender);
int FlyLanding_IsAnimFinished(SysTask *sysTask);
void FlyLanding_SetTaskDone(SysTask *sysTask);

#endif // POKEPLATINUM_HM_CUT_IN_H
