#ifndef POKEPLATINUM_HM_CUT_IN_H
#define POKEPLATINUM_HM_CUT_IN_H

#include "field/field_system_decl.h"

#include "pokemon.h"
#include "sys_task_manager.h"

SysTask *SysTask_HMCutIn_New(FieldSystem *fieldSystem, BOOL isNotFly, Pokemon *shownPokemon, int playerGender);
int CheckHMCutInFinished(SysTask *cutInTask);
void SysTask_HMCutIn_SetTaskDone(SysTask *cutInTask);
SysTask *FieldTask_FlyLanding_InitTask(FieldSystem *fieldSystem, int playerGender);
int FlyLanding_IsAnimFinished(SysTask *sysTask);
void FlyLanding_SetTaskDone(SysTask *sysTask);

#endif // POKEPLATINUM_HM_CUT_IN_H
