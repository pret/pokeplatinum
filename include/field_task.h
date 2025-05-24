#ifndef POKEPLATINUM_FIELD_TASK_H
#define POKEPLATINUM_FIELD_TASK_H

#include "field/field_system_decl.h"

#include "overlay_manager.h"

typedef struct FieldTask FieldTask;

typedef BOOL (*FieldTaskFunc)(FieldTask *); // Return TRUE on completion; return FALSE while still running.

struct FieldTask {
    FieldTask *prev;
    FieldTaskFunc func;
    int state;
    void *env;
    int dummy10;
    void *dummy14;
    FieldSystem *fieldSys;
    int *dummy1C;
};

FieldTask *FieldSystem_CreateTask(FieldSystem *fieldSys, FieldTaskFunc taskFunc, void *taskEnv);
void FieldTask_InitJump(FieldTask *task, FieldTaskFunc taskFunc, void *taskEnv);
FieldTask *FieldTask_InitCall(FieldTask *task, FieldTaskFunc taskFunc, void *taskEnv);
BOOL FieldTask_Run(FieldSystem *fieldSys);
BOOL FieldSystem_IsRunningTask(FieldSystem *fieldSys);
BOOL FieldSystem_IsRunningApplication(FieldSystem *fieldSys);
void FieldSystem_StartFieldMap(FieldSystem *fieldSys);
BOOL FieldSystem_IsRunningFieldMap(FieldSystem *fieldSys);
void FieldTask_RunApplication(FieldTask *task, const ApplicationManagerTemplate *overlayTemplate, void *overlayArgs);
FieldSystem *FieldTask_GetFieldSystem(FieldTask *task);
void *FieldTask_GetEnv(FieldTask *task);
int *FieldTask_GetState(FieldTask *task);
u32 FieldTask_GetDummy1CVal(FieldTask *task);

#endif // POKEPLATINUM_FIELD_TASK_H
