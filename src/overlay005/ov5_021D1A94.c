#include "overlay005/ov5_021D1A94.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/struct_ov5_021D1A94_decl.h"
#include "overlay005/struct_ov5_021D1BEC_decl.h"
#include "overlay006/struct_ov6_0223E6EC.h"

#include "field_system.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"

struct UnkStruct_ov5_021D1A94_t {
    FieldSystem *fieldSystem;
    int heapID;
    int unk_08;
    UnkStruct_ov5_021D1BEC *unk_0C;
    SysTaskManager *unk_10;
};

struct UnkStruct_ov5_021D1BEC_t {
    UnkStruct_ov5_021D1A94 *unk_00;
    SysTask *unk_04;
    SysTask *unk_08;
    const UnkStruct_ov6_0223E6EC *unk_0C;
    void *unk_10;
};

UnkStruct_ov5_021D1A94 *ov5_021D1A94(FieldSystem *fieldSystem, int heapID, int param2)
{
    UnkStruct_ov5_021D1A94 *v0;
    u32 v1;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov5_021D1A94));

    v0->fieldSystem = fieldSystem;
    v0->heapID = heapID;
    v0->unk_08 = param2;
    v0->unk_0C = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov5_021D1BEC) * param2);

    MI_CpuClear32(v0->unk_0C, sizeof(UnkStruct_ov5_021D1BEC) * param2);

    v1 = SysTaskManager_GetRequiredSize(param2);

    v0->unk_10 = Heap_AllocFromHeap(heapID, v1);
    v0->unk_10 = SysTaskManager_Init(param2, v0->unk_10);

    return v0;
}

void ov5_021D1AE4(UnkStruct_ov5_021D1A94 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_08; v0++) {
        ov5_021D1BEC(&param0->unk_0C[v0]);
    }

    Heap_Free(param0->unk_0C);
    Heap_Free(param0->unk_10);
    Heap_Free(param0);
}

void ov5_021D1B18(UnkStruct_ov5_021D1A94 *param0)
{
    SysTaskManager_ExecuteTasks(param0->unk_10);
}

static void ov5_021D1B24(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021D1BEC *v0 = param1;

    if (FieldSystem_IsRunningFieldMapInner(v0->unk_00->fieldSystem)) {
        if (v0->unk_0C->unk_10) {
            v0->unk_0C->unk_10(v0, v0->unk_00->fieldSystem, v0->unk_10);
        }
    }
}

static void ov5_021D1B48(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021D1BEC *v0 = param1;

    if (FieldSystem_IsRunningFieldMapInner(v0->unk_00->fieldSystem)) {
        if (v0->unk_0C->unk_14) {
            v0->unk_0C->unk_14(v0, v0->unk_00->fieldSystem, v0->unk_10);
        }
    }
}

UnkStruct_ov5_021D1BEC *ov5_021D1B6C(UnkStruct_ov5_021D1A94 *param0, const UnkStruct_ov6_0223E6EC *param1)
{
    int v0;
    UnkStruct_ov5_021D1BEC *v1;

    for (v1 = param0->unk_0C, v0 = 0; v0 < param0->unk_08; v1++, v0++) {
        if (v1->unk_04 == NULL) {
            v1->unk_04 = SysTask_Start(ov5_021D1B24, v1, param1->unk_00);
            v1->unk_08 = SysTaskManager_AddTask(param0->unk_10, ov5_021D1B48, v1, param1->unk_00);
            v1->unk_00 = param0;
            v1->unk_0C = param1;

            GF_ASSERT(v1->unk_04 != NULL);
            GF_ASSERT(v1->unk_08 != NULL);

            if (param1->unk_04 != 0) {
                v1->unk_10 = Heap_AllocFromHeap(param0->heapID, param1->unk_04);
            }

            if (param1->unk_08) {
                param1->unk_08(v1, param0->fieldSystem, v1->unk_10);
            }

            return v1;
        }
    }

    GF_ASSERT(0);
    return NULL;
}

void ov5_021D1BEC(UnkStruct_ov5_021D1BEC *param0)
{
    if (param0->unk_04 == NULL) {
        return;
    }

    if (param0->unk_0C->unk_0C) {
        param0->unk_0C->unk_0C(param0, param0->unk_00->fieldSystem, param0->unk_10);
    }

    if (param0->unk_0C->unk_04 != 0) {
        Heap_Free(param0->unk_10);
    }

    SysTask_Done(param0->unk_04);
    SysTask_Done(param0->unk_08);

    MI_CpuClear32(param0, sizeof(UnkStruct_ov5_021D1BEC));
}

void *ov5_021D1C2C(UnkStruct_ov5_021D1BEC *param0)
{
    return param0->unk_10;
}
