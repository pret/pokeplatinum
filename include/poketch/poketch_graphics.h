#ifndef POKEPLATINUM_OV25_02254560_H
#define POKEPLATINUM_OV25_02254560_H

#include <nnsys.h>

#include "poketch/poketch_structs.h"
#include "poketch/poketch_system.h"

#include "bg_window.h"

BOOL ov25_560_Main(Ov25_560_TaskData **taskDataPtr, const Ov25_560_ConstTaskData *constTaskData, NNSG2dOamManagerInstance *oamMan, PoketchSystem *poketchSys);
Ov25_540_AnimationManager *Poketch_GetAnimationManager(void);
BgConfig *Poketch_GetBgConfig(void);
void Poketch_LoadActivePalette(u32 bgOffset, u32 objOffset);
void Poketch_LoadActiveBacklightPalette(u32, u32);
void Poketch_CopyActivePalette(u16 *dest);
void ov25_560_Close(Ov25_560_TaskData *taskData);
void ov25_560_StartTask(Ov25_560_TaskData *taskData, u32 taskId);
BOOL ov25_560_TaskIsNotActive(Ov25_560_TaskData *taskData, u32 taskId);
BOOL ov25_560_NoActiveTasks(Ov25_560_TaskData *taskData);

#endif // POKEPLATINUM_OV25_02254560_H
