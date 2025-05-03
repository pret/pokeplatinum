#ifndef POKEPLATINUM_OV25_02254560_H
#define POKEPLATINUM_OV25_02254560_H

#include <nnsys.h>

#include "overlay025/poketch_system.h"
#include "overlay025/struct_ov25_02254560_1.h"
#include "overlay025/struct_ov25_02254560_decl.h"
#include "overlay025/struct_ov25_022555E8_decl.h"

#include "bg_window.h"

BOOL ov25_02254560(Ov25_560_TaskData **param0, const Ov25_560_ConstTaskData *constTaskData, NNSG2dOamManagerInstance *param2, PoketchSystem *poketchSys);
Ov25_540_AnimationManager *ov25_02254664(void);
BgConfig *Poketch_GetBgConfig(void);
void Poketch_LoadActivePalette(u32 bgOffset, u32 objOffset);
void Poketch_LoadActiveBacklightPalette(u32 unused_1, u32 unused_2);
void Poketch_CopyActivePalette(u16 *dest);
void ov25_560_Close(Ov25_560_TaskData *param0);
void ov25_560_StartTask(Ov25_560_TaskData *taskData, u32 taskId);
BOOL ov25_560_TaskIsNotActive(Ov25_560_TaskData *param0, u32 param1);
BOOL ov25_560_NoActiveTasks(Ov25_560_TaskData *param0);

#endif // POKEPLATINUM_OV25_02254560_H
