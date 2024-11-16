#include "field_transition.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/encounter_effect.h"
#include "overlay005/ov5_021DD6FC.h"

#include "field_system.h"
#include "field_task.h"
#include "heap.h"
#include "unk_020041CC.h"
#include "unk_0200F174.h"

typedef struct {
    int unk_00;
    BOOL unk_04;
    int unk_08;
    int unk_0C;
} UnkStruct_0205578C;

static BOOL sub_0205578C(FieldTask *param0)
{
    FieldSystem *fieldSystem;
    UnkStruct_0205578C *v1;

    fieldSystem = FieldTask_GetFieldSystem(param0);
    v1 = FieldTask_GetEnv(param0);

    switch (v1->unk_00) {
    case 0:
        EncounterEffect_Start(v1->unk_08, fieldSystem, &v1->unk_04);
        sub_02004550(5, v1->unk_0C, 1);
        v1->unk_00++;
        break;
    case 1:
        if (v1->unk_04 == 1) {
            Heap_FreeToHeap(v1);
            return 1;
        }
        break;
    }

    return 0;
}

void sub_020557DC(FieldTask *param0, int param1, int param2)
{
    UnkStruct_0205578C *v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0205578C));

    v0->unk_00 = 0;
    v0->unk_04 = 0;
    v0->unk_08 = param1;
    v0->unk_0C = param2;

    FieldTask_InitCall(param0, sub_0205578C, v0);
}

static BOOL sub_02055808(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);

    if (!FieldSystem_HasParentProcess(fieldSystem)) {
        return 1;
    }

    return 0;
}

void FieldTask_FinishFieldMap(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);

    if (!FieldSystem_HasParentProcess(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    FieldSystem_FlagNotRunningFieldMap(fieldSystem);
    FieldTask_InitCall(param0, sub_02055808, NULL);
}

static BOOL sub_02055850(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);

    if (FieldSystem_IsRunningFieldMap(fieldSystem)) {
        return 1;
    }

    return 0;
}

void FieldTask_StartFieldMap(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);

    if (FieldSystem_HasParentProcess(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    FieldSystem_StartFieldMap(fieldSystem);
    FieldTask_InitCall(param0, sub_02055850, NULL);
}

static BOOL sub_02055898(FieldTask *param0)
{
    if (IsScreenTransitionDone()) {
        return 1;
    }

    return 0;
}

void sub_020558AC(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);

    if (!FieldSystem_HasParentProcess(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    {
        StartScreenTransition(0, 0, 0, 0x0, 6, 1, 4);
        FieldTask_InitCall(param0, sub_02055898, NULL);
    }
}

void sub_020558F0(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);

    if (!FieldSystem_HasParentProcess(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    {
        StartScreenTransition(0, 1, 1, 0x0, 6, 1, 4);
        FieldTask_InitCall(param0, sub_02055898, NULL);
    }
}

static BOOL sub_02055934(FieldTask *param0)
{
    int *v0 = FieldTask_GetState(param0);

    switch (*v0) {
    case 0:
        sub_020558AC(param0);
        (*v0)++;
        break;
    case 1:
        FieldTask_FinishFieldMap(param0);
        (*v0)++;
        break;
    case 2:
        return 1;
    }

    return 0;
}

void FieldTask_FinishFadeOut(FieldTask *param0)
{
    FieldTask_InitCall(param0, sub_02055934, NULL);
}

static BOOL sub_02055984(FieldTask *param0)
{
    int *v0 = FieldTask_GetState(param0);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);

    switch (*v0) {
    case 0:
        FieldTask_StartFieldMap(param0);
        (*v0)++;
        break;
    case 1:
        FieldSystem_RequestLocationName(fieldSystem);
        sub_020558F0(param0);
        (*v0)++;
        break;
    case 2:
        return 1;
    }

    return 0;
}

void FieldTask_StartFadeIn(FieldTask *param0)
{
    FieldTask_InitCall(param0, sub_02055984, NULL);
}
