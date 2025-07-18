#ifndef POKEPLATINUM_OV6_02243258_H
#define POKEPLATINUM_OV6_02243258_H

#include "field/field_system_decl.h"

#include "pokemon.h"
#include "sys_task_manager.h"

SysTask *SysTask_CutIn_New(FieldSystem *fieldSystem, u32 param1, Pokemon *shownPokemon, int playerGender);
int CheckCutInFinished(SysTask *cutInTask);
void SysTask_CutIn_Done(SysTask *cutInTask);
SysTask *FieldTask_InitFlyLandingTask(FieldSystem *fieldSystem, int param1);
int ov6_02245CF0(SysTask *param0);
void ov6_02245CFC(SysTask *param0);

#endif // POKEPLATINUM_OV6_02243258_H
