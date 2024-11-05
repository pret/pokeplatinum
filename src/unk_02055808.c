#include "unk_02055808.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/ov5_021DD6FC.h"

#include "field_system.h"
#include "field_task.h"
#include "unk_0200F174.h"

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
