#include "overlay005/ov5_021F0EB0.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"

#include "camera.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct {
    u32 heapID;
    int unk_04;
    int unk_08;
    int unk_0C;
    fx32 unk_10;
    fx32 unk_14;
    fx32 unk_18;
    u32 unk_1C;
    fx32 unk_20;
    u32 unk_24;
    fx32 unk_28;
    FieldSystem *fieldSystem;
    Camera *camera;
} UnkStruct_ov5_021F0FB8;

static void ov5_021F0F2C(SysTask *param0, void *param1);
static void ov5_021F0FB8(UnkStruct_ov5_021F0FB8 *param0);
static void ov5_021F0FC8(UnkStruct_ov5_021F0FB8 *param0);
static void ov5_021F0FE0(UnkStruct_ov5_021F0FB8 *param0);
static int ov5_021F0FF8(UnkStruct_ov5_021F0FB8 *param0);

static void (*const Unk_ov5_0220020C[4])(UnkStruct_ov5_021F0FB8 *);

SysTask *ov5_021F0EB0(FieldSystem *fieldSystem, u32 heapID)
{
    SysTask *v0;
    UnkStruct_ov5_021F0FB8 *v1 = Heap_AllocFromHeapAtEnd(heapID, (sizeof(UnkStruct_ov5_021F0FB8)));

    memset(v1, 0, (sizeof(UnkStruct_ov5_021F0FB8)));

    v1->heapID = heapID;
    v1->unk_0C = 0;
    v1->fieldSystem = fieldSystem;
    v1->camera = fieldSystem->camera;
    v1->unk_10 = Camera_GetDistance(v1->camera);
    v1->unk_20 = v1->unk_10;

    v0 = SysTask_Start(ov5_021F0F2C, v1, 0xffff);
    return v0;
}

BOOL ov5_021F0EF0(SysTask *param0)
{
    UnkStruct_ov5_021F0FB8 *v0 = SysTask_GetParam(param0);
    return v0->unk_08;
}

void ov5_021F0EFC(SysTask *param0)
{
    UnkStruct_ov5_021F0FB8 *v0 = SysTask_GetParam(param0);

    Heap_FreeToHeap(v0);
    SysTask_Done(param0);
}

void ov5_021F0F10(SysTask *param0, int param1, fx32 param2, u32 param3)
{
    UnkStruct_ov5_021F0FB8 *v0 = SysTask_GetParam(param0);

    v0->unk_04 = 0;
    v0->unk_08 = 0;
    v0->unk_0C = param1;
    v0->unk_14 = param2;
    v0->unk_1C = param3;
    v0->unk_24 = 0;
}

static void ov5_021F0F2C(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021F0FB8 *v0 = param1;
    Unk_ov5_0220020C[v0->unk_0C](v0);
}

static void ov5_021F0F40(UnkStruct_ov5_021F0FB8 *param0)
{
    param0->unk_08 = 1;
}

static void ov5_021F0F48(UnkStruct_ov5_021F0FB8 *param0)
{
    switch (param0->unk_04) {
    case 0:
        ov5_021F0FC8(param0);
        param0->unk_04++;
    case 1:
        if (ov5_021F0FF8(param0) == 1) {
            param0->unk_04++;
            param0->unk_08 = 1;
        }

        ov5_021F0FB8(param0);
    }
}

static void ov5_021F0F80(UnkStruct_ov5_021F0FB8 *param0)
{
    switch (param0->unk_04) {
    case 0:
        ov5_021F0FE0(param0);
        param0->unk_04++;
    case 1:
        if (ov5_021F0FF8(param0) == 1) {
            param0->unk_04++;
            param0->unk_08 = 1;
        }

        ov5_021F0FB8(param0);
    }
}

static void ov5_021F0FB8(UnkStruct_ov5_021F0FB8 *param0)
{
    Camera_SetDistance(param0->unk_20, param0->camera);
}

static void ov5_021F0FC8(UnkStruct_ov5_021F0FB8 *param0)
{
    fx32 v0 = param0->unk_1C;

    param0->unk_28 = param0->unk_14 / v0;
    param0->unk_18 = param0->unk_20 + param0->unk_14;
}

static void ov5_021F0FE0(UnkStruct_ov5_021F0FB8 *param0)
{
    fx32 v0 = param0->unk_1C;
    fx32 v1 = param0->unk_10 - param0->unk_20;

    param0->unk_28 = v1 / v0;
    param0->unk_18 = param0->unk_10;
}

static int ov5_021F0FF8(UnkStruct_ov5_021F0FB8 *param0)
{
    param0->unk_20 += param0->unk_28;
    param0->unk_24++;

    if (param0->unk_24 >= param0->unk_1C) {
        param0->unk_24 = param0->unk_1C;
        param0->unk_20 = param0->unk_18;
        return 1;
    }

    return 0;
}

static void (*const Unk_ov5_0220020C[4])(UnkStruct_ov5_021F0FB8 *) = {
    ov5_021F0F40,
    ov5_021F0F48,
    ov5_021F0F80,
};
