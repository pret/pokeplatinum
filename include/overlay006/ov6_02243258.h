#ifndef POKEPLATINUM_OV6_02243258_H
#define POKEPLATINUM_OV6_02243258_H

#include "field/field_system_decl.h"

#include "pokemon.h"
#include "sys_task_manager.h"

SysTask *SysTask_CutIn_New(FieldSystem *fieldSystem, BOOL isNotFly, Pokemon *shownPokemon, int playerGender);
int CheckCutInFinished(SysTask *cutInTask);
void SysTask_CutIn_Done(SysTask *cutInTask);
SysTask *FieldTask_InitFlyLandingTask(FieldSystem *fieldSystem, int playerGender);
int FlyLanding_IsAnimFinished(SysTask *param0);
void FlyLanding_SetTaskDone(SysTask *param0);

#endif // POKEPLATINUM_OV6_02243258_H
