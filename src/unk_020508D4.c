#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "functypes/funcptr_02050904.h"
#include "overlay005/struct_ov5_021D219C.h"

#include "heap.h"
#include "unk_0203CC84.h"
#include "unk_020508D4.h"

typedef struct UnkStruct_020508D4_t {
    TaskManager * unk_00;
    UnkFuncPtr_02050904 unk_04;
    int unk_08;
    void * unk_0C;
    int unk_10;
    void * unk_14;
    FieldSystem * unk_18;
    UnkStruct_ov5_021D219C * unk_1C;
} TaskManager;

typedef struct {
    int unk_00;
    const OverlayManagerTemplate * unk_04;
    void * unk_08;
} UnkStruct_020509F0;

static TaskManager * sub_020508D4 (FieldSystem * param0, UnkFuncPtr_02050904 param1, void * param2)
{
    TaskManager * v0;

    v0 = Heap_AllocFromHeapAtEnd(32, sizeof(TaskManager));
    v0->unk_00 = NULL;
    v0->unk_04 = param1;
    v0->unk_08 = 0;
    v0->unk_0C = param2;
    v0->unk_10 = 0;
    v0->unk_14 = NULL;
    v0->unk_18 = param0;
    v0->unk_1C = Heap_AllocFromHeapAtEnd(32, sizeof(UnkStruct_ov5_021D219C));

    return v0;
}

TaskManager * sub_02050904 (FieldSystem * param0, UnkFuncPtr_02050904 param1, void * param2)
{
    TaskManager * v0;

    GF_ASSERT(param0->unk_10 == NULL);

    v0 = sub_020508D4(param0, param1, param2);
    param0->unk_10 = v0;

    return v0;
}

void sub_02050924 (TaskManager * param0, UnkFuncPtr_02050904 param1, void * param2)
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

TaskManager * sub_02050944 (TaskManager * param0, UnkFuncPtr_02050904 param1, void * param2)
{
    TaskManager * v0;

    v0 = sub_020508D4(param0->unk_18, param1, param2);
    v0->unk_00 = param0;

    param0->unk_18->unk_10 = v0;

    return v0;
}

BOOL sub_02050958 (FieldSystem * param0)
{
    if (param0->unk_10 == NULL) {
        return 0;
    }

    while (param0->unk_10->unk_04(param0->unk_10) == 1) {
        TaskManager * v0;

        v0 = param0->unk_10->unk_00;

        if (param0->unk_10->unk_14) {
            Heap_FreeToHeap(param0->unk_10->unk_14);
        }

        Heap_FreeToHeap(param0->unk_10->unk_1C);
        Heap_FreeToHeap(param0->unk_10);

        param0->unk_10 = v0;

        if (v0 == NULL) {
            return 1;
        }
    }

    return 0;
}

BOOL sub_020509A4 (FieldSystem * param0)
{
    return param0->unk_10 != NULL;
}

BOOL sub_020509B4 (FieldSystem * param0)
{
    if (sub_0203CD4C(param0) || sub_0203CD74(param0)) {
        return 1;
    } else {
        return 0;
    }
}

void sub_020509D4 (FieldSystem * param0)
{
    sub_0203CD00(param0);
}

BOOL sub_020509DC (FieldSystem * param0)
{
    if (sub_0203CD5C(param0)) {
        return 1;
    } else {
        return 0;
    }
}

static BOOL sub_020509F0 (TaskManager * param0)
{
    FieldSystem * v0 = TaskMan_FieldSystem(param0);
    UnkStruct_020509F0 * v1 = TaskManager_Environment(param0);

    switch (v1->unk_00) {
    case 0:
        sub_0203CD84(v0, v1->unk_04, v1->unk_08);
        v1->unk_00++;
        break;
    case 1:
        if (sub_020509B4(v0)) {
            break;
        }

        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_02050A38 (TaskManager * param0, const OverlayManagerTemplate * param1, void * param2)
{
    UnkStruct_020509F0 * v0 = Heap_AllocFromHeapAtEnd(32, sizeof(UnkStruct_020509F0));

    v0->unk_00 = 0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    sub_02050944(param0, sub_020509F0, v0);
}

FieldSystem * TaskMan_FieldSystem (TaskManager * param0)
{
    return param0->unk_18;
}

void * TaskManager_Environment (TaskManager * param0)
{
    return param0->unk_0C;
}

int * sub_02050A68 (TaskManager * param0)
{
    return &param0->unk_08;
}

u32 sub_02050A6C (TaskManager * param0)
{
    return param0->unk_1C->unk_00;
}
