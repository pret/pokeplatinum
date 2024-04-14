#ifndef POKEPLATINUM_UNK_020508D4_H
#define POKEPLATINUM_UNK_020508D4_H

#include "field/field_system_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "functypes/funcptr_02050904.h"
#include "overlay_manager.h"

TaskManager * sub_02050904(FieldSystem * param0, UnkFuncPtr_02050904 param1, void * param2);
void sub_02050924(TaskManager * param0, UnkFuncPtr_02050904 param1, void * param2);
TaskManager * sub_02050944(TaskManager * param0, UnkFuncPtr_02050904 param1, void * param2);
BOOL sub_02050958(FieldSystem * param0);
BOOL sub_020509A4(FieldSystem * param0);
BOOL sub_020509B4(FieldSystem * param0);
void sub_020509D4(FieldSystem * param0);
BOOL sub_020509DC(FieldSystem * param0);
void sub_02050A38(TaskManager * param0, const OverlayManagerTemplate * param1, void * param2);
FieldSystem * TaskManager_FieldSystem(TaskManager * param0);
void * TaskManager_Environment(TaskManager * param0);
int * sub_02050A68(TaskManager * param0);
u32 sub_02050A6C(TaskManager * param0);

#endif // POKEPLATINUM_UNK_020508D4_H
