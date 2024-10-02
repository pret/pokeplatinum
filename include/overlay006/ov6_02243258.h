#ifndef POKEPLATINUM_OV6_02243258_H
#define POKEPLATINUM_OV6_02243258_H

#include "field/field_system_decl.h"

#include "pokemon.h"
#include "sys_task_manager.h"

SysTask *ov6_02243F88(FieldSystem *fieldSystem, u32 param1, Pokemon *param2, int param3);
int ov6_02243FBC(SysTask *param0);
void ov6_02243FC8(SysTask *param0);
SysTask *FieldTask_InitFlyLandingTask(FieldSystem *fieldSystem, int param1);
int ov6_02245CF0(SysTask *param0);
void ov6_02245CFC(SysTask *param0);

#endif // POKEPLATINUM_OV6_02243258_H
