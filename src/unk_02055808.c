#include "unk_02055808.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020508D4_decl.h"

#include "field/field_system.h"
#include "overlay005/ov5_021DD6FC.h"

#include "field_system.h"
#include "unk_0200F174.h"
#include "unk_020508D4.h"

static BOOL sub_02055808(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);

    if (!sub_0203CD4C(fieldSystem)) {
        return 1;
    }

    return 0;
}

void FieldTask_FinishFieldMap(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);

    if (!sub_0203CD4C(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    sub_0203CD44(fieldSystem);
    FieldTask_Start(param0, sub_02055808, NULL);
}

static BOOL sub_02055850(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);

    if (sub_020509DC(fieldSystem)) {
        return 1;
    }

    return 0;
}

void FieldTask_StartFieldMap(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);

    if (sub_0203CD4C(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    sub_020509D4(fieldSystem);
    FieldTask_Start(param0, sub_02055850, NULL);
}

static BOOL sub_02055898(TaskManager *param0)
{
    if (ScreenWipe_Done()) {
        return 1;
    }

    return 0;
}

void sub_020558AC(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);

    if (!sub_0203CD4C(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    {
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 4);
        FieldTask_Start(param0, sub_02055898, NULL);
    }
}

void sub_020558F0(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);

    if (!sub_0203CD4C(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    {
        sub_0200F174(0, 1, 1, 0x0, 6, 1, 4);
        FieldTask_Start(param0, sub_02055898, NULL);
    }
}

static BOOL sub_02055934(TaskManager *param0)
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

void FieldTask_FinishFadeOut(TaskManager *param0)
{
    FieldTask_Start(param0, sub_02055934, NULL);
}

static BOOL sub_02055984(TaskManager *param0)
{
    int *v0 = FieldTask_GetState(param0);
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);

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

void FieldTask_StartFadeIn(TaskManager *param0)
{
    FieldTask_Start(param0, sub_02055984, NULL);
}
