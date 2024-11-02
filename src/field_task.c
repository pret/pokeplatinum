#include "field_task.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"

#include "field_system.h"
#include "heap.h"

typedef struct {
    int unk_00;
    const OverlayManagerTemplate *unk_04;
    void *unk_08;
} UnkStruct_020509F0;

static FieldTask *sub_020508D4(FieldSystem *fieldSystem, FieldTaskFunc param1, void *param2)
{
    FieldTask *v0;

    v0 = Heap_AllocFromHeapAtEnd(32, sizeof(FieldTask));
    v0->unk_00 = NULL;
    v0->unk_04 = param1;
    v0->unk_08 = 0;
    v0->unk_0C = param2;
    v0->unk_10 = 0;
    v0->unk_14 = NULL;
    v0->fieldSystem = fieldSystem;
    v0->unk_1C = Heap_AllocFromHeapAtEnd(32, sizeof(u32));

    return v0;
}

FieldTask *FieldTask_Set(FieldSystem *fieldSystem, FieldTaskFunc param1, void *param2)
{
    FieldTask *v0;

    GF_ASSERT(fieldSystem->taskManager == NULL);

    v0 = sub_020508D4(fieldSystem, param1, param2);
    fieldSystem->taskManager = v0;

    return v0;
}

void FieldTask_Change(FieldTask *param0, FieldTaskFunc param1, void *param2)
{
    param0->unk_04 = param1;
    param0->unk_08 = 0;
    param0->unk_0C = param2;

    if ((param0->unk_14 != 0) || (param0->unk_14 != NULL)) {
        Heap_FreeToHeap(param0->unk_14);
        param0->unk_10 = 0;
        param0->unk_14 = NULL;
    }
}

FieldTask *FieldTask_Start(FieldTask *param0, FieldTaskFunc param1, void *param2)
{
    FieldTask *v0;

    v0 = sub_020508D4(param0->fieldSystem, param1, param2);
    v0->unk_00 = param0;

    param0->fieldSystem->taskManager = v0;

    return v0;
}

BOOL sub_02050958(FieldSystem *fieldSystem)
{
    if (fieldSystem->taskManager == NULL) {
        return 0;
    }

    while (fieldSystem->taskManager->unk_04(fieldSystem->taskManager) == 1) {
        FieldTask *v0;

        v0 = fieldSystem->taskManager->unk_00;

        if (fieldSystem->taskManager->unk_14) {
            Heap_FreeToHeap(fieldSystem->taskManager->unk_14);
        }

        Heap_FreeToHeap(fieldSystem->taskManager->unk_1C);
        Heap_FreeToHeap(fieldSystem->taskManager);

        fieldSystem->taskManager = v0;

        if (v0 == NULL) {
            return 1;
        }
    }

    return 0;
}

BOOL sub_020509A4(FieldSystem *fieldSystem)
{
    return fieldSystem->taskManager != NULL;
}

BOOL sub_020509B4(FieldSystem *fieldSystem)
{
    if (FieldSystem_HasParentProcess(fieldSystem) || FieldSystem_HasChildProcess(fieldSystem)) {
        return 1;
    } else {
        return 0;
    }
}

void sub_020509D4(FieldSystem *fieldSystem)
{
    FieldSystem_StartFieldMap(fieldSystem);
}

BOOL sub_020509DC(FieldSystem *fieldSystem)
{
    if (FieldSystem_IsRunningFieldMap(fieldSystem)) {
        return 1;
    } else {
        return 0;
    }
}

static BOOL sub_020509F0(FieldTask *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_020509F0 *v1 = TaskManager_Environment(param0);

    switch (v1->unk_00) {
    case 0:
        FieldSystem_StartChildProcess(fieldSystem, v1->unk_04, v1->unk_08);
        v1->unk_00++;
        break;
    case 1:
        if (sub_020509B4(fieldSystem)) {
            break;
        }

        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_02050A38(FieldTask *param0, const OverlayManagerTemplate *param1, void *param2)
{
    UnkStruct_020509F0 *v0 = Heap_AllocFromHeapAtEnd(32, sizeof(UnkStruct_020509F0));

    v0->unk_00 = 0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    FieldTask_Start(param0, sub_020509F0, v0);
}

FieldSystem *TaskManager_FieldSystem(FieldTask *param0)
{
    return param0->fieldSystem;
}

void *TaskManager_Environment(FieldTask *param0)
{
    return param0->unk_0C;
}

int *FieldTask_GetState(FieldTask *param0)
{
    return &param0->unk_08;
}

u32 sub_02050A6C(FieldTask *param0)
{
    return *param0->unk_1C;
}
