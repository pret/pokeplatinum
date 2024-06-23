#ifndef POKEPLATINUM_FIELD_MAP_CHANGE_H
#define POKEPLATINUM_FIELD_MAP_CHANGE_H

#include "struct_decls/struct_020508D4_decl.h"
#include "struct_defs/struct_02049FA8.h"

#include "field/field_system_decl.h"
#include "functypes/funcptr_02050904.h"

void sub_020531A0(FieldSystem *fieldSystem);
void FieldMapChange_UpdateGameData(FieldSystem *fieldSystem, BOOL param1);
void FieldMapChange_UpdateGameDataDistortionWorld(FieldSystem *fieldSystem, BOOL param1);
void sub_02053494(FieldSystem *fieldSystem);
void FieldSystem_SetLoadNewGameSpawnTask(FieldSystem *fieldSystem);
void FieldSystem_SetLoadSavedGameMapTask(FieldSystem *fieldSystem);
void FieldSystem_StartLoadMapFromErrorTask(FieldSystem *fieldSystem);
void FieldSystem_StartChangeMapTask(TaskManager *param0, const Location *param1);
void sub_020539A0(TaskManager *param0, const Location *param1);
void sub_020539E8(TaskManager *param0, int param1, int param2, int param3, int param4, int param5);
void sub_02053A80(TaskManager *param0, int param1, int param2, int param3, int param4, int param5);
void sub_02053AB4(FieldSystem *fieldSystem, int param1, int param2, int param3, int param4, int param5);
void sub_02053AFC(TaskManager *param0, int param1, int param2, int param3, int param4, int param5);
void sub_02053CD4(TaskManager *param0, const Location *param1, u32 param2);
void sub_02053F58(FieldSystem *fieldSystem, int param1, int param2);
void *sub_02053FAC(FieldSystem *fieldSystem);
void sub_02054064(FieldSystem *fieldSystem);
BOOL sub_02054084(TaskManager *param0);
BOOL sub_0205430C(TaskManager *param0);
FieldTask sub_02054428(const FieldSystem *fieldSystem);
void sub_020544F0(TaskManager *param0, const Location *param1);
void sub_020545EC(FieldSystem *fieldSystem);
void sub_02054708(TaskManager *param0);
void sub_02054800(TaskManager *param0, int param1, int param2, int param3, int param4, int param5);
void sub_02054864(TaskManager *param0);

#endif // POKEPLATINUM_FIELD_MAP_CHANGE_H
