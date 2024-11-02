#ifndef POKEPLATINUM_FIELD_TASK_H
#define POKEPLATINUM_FIELD_TASK_H

#include "field/field_system_decl.h"

#include "overlay_manager.h"

typedef struct FieldTask FieldTask;

typedef BOOL (*FieldTaskFunc)(FieldTask *);

struct FieldTask {
    FieldTask *unk_00;
    FieldTaskFunc unk_04;
    int unk_08;
    void *unk_0C;
    int unk_10;
    void *unk_14;
    FieldSystem *fieldSystem;
    u32 *unk_1C;
};

FieldTask *FieldTask_Set(FieldSystem *fieldSystem, FieldTaskFunc param1, void *param2);
void FieldTask_Change(FieldTask *param0, FieldTaskFunc param1, void *param2);
FieldTask *FieldTask_Start(FieldTask *param0, FieldTaskFunc param1, void *param2);
BOOL sub_02050958(FieldSystem *fieldSystem);
BOOL sub_020509A4(FieldSystem *fieldSystem);
BOOL sub_020509B4(FieldSystem *fieldSystem);
void sub_020509D4(FieldSystem *fieldSystem);
BOOL sub_020509DC(FieldSystem *fieldSystem);
void sub_02050A38(FieldTask *param0, const OverlayManagerTemplate *param1, void *param2);
FieldSystem *TaskManager_FieldSystem(FieldTask *param0);
void *TaskManager_Environment(FieldTask *param0);
int *FieldTask_GetState(FieldTask *param0);
u32 sub_02050A6C(FieldTask *param0);

#endif // POKEPLATINUM_FIELD_TASK_H
