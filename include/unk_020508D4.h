#ifndef POKEPLATINUM_UNK_020508D4_H
#define POKEPLATINUM_UNK_020508D4_H

#include "struct_decls/struct_020508D4_decl.h"

#include "field/field_system_decl.h"
#include "functypes/funcptr_02050904.h"

#include "overlay_manager.h"

TaskManager *FieldTask_Set(FieldSystem *fieldSystem, FieldTask param1, void *param2);
void FieldTask_Change(TaskManager *param0, FieldTask param1, void *param2);
TaskManager *FieldTask_Start(TaskManager *param0, FieldTask param1, void *param2);
BOOL sub_02050958(FieldSystem *fieldSystem);
BOOL sub_020509A4(FieldSystem *fieldSystem);
BOOL sub_020509B4(FieldSystem *fieldSystem);
void sub_020509D4(FieldSystem *fieldSystem);
BOOL sub_020509DC(FieldSystem *fieldSystem);
void sub_02050A38(TaskManager *param0, const OverlayManagerTemplate *param1, void *param2);
FieldSystem *TaskManager_FieldSystem(TaskManager *param0);
void *TaskManager_Environment(TaskManager *param0);
int *FieldTask_GetState(TaskManager *param0);
u32 sub_02050A6C(TaskManager *param0);

#endif // POKEPLATINUM_UNK_020508D4_H
