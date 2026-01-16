#ifndef POKEPLATINUM_FISHING_H
#define POKEPLATINUM_FISHING_H

#include "field/field_system_decl.h"
#include "overlay006/wild_encounters.h"

#include "field_task.h"
#include "sys_task_manager.h"

void *FishingContext_Init(FieldSystem *fieldSystem, enum HeapID heapID, enum EncounterFishingRodType rodType);
BOOL FieldTask_Fishing(FieldTask *param0);
SysTask *StartFishingTask(FieldSystem *fieldSystem, enum EncounterFishingRodType rodType, BOOL isFishEncountered);
void FishingSysTask_Free(SysTask *param0);

#endif // POKEPLATINUM_FISHING_H
