#ifndef POKEPLATINUM_OV5_021F08CC_H
#define POKEPLATINUM_OV5_021F08CC_H

#include "field/field_system_decl.h"
#include "overlay006/wild_encounters.h"

#include "field_task.h"
#include "sys_task_manager.h"

void *FishingEncounterInfo_Init(FieldSystem *fieldSystem, u32 heapID, enum ENCOUNTER_FISHING_ROD_TYPE rodType);
BOOL ov5_021F08F8(FieldTask *param0);
SysTask *StartFishingTask(FieldSystem *fieldSystem, enum ENCOUNTER_FISHING_ROD_TYPE rodType, BOOL isFishEncountered);
void FishingSysTask_Free(SysTask *param0);

#endif // POKEPLATINUM_OV5_021F08CC_H
