#include "field_transition.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "field/field_system.h"
#include "overlay005/encounter_effect.h"
#include "overlay005/ov5_021DD6FC.h"

#include "field_system.h"
#include "field_task.h"
#include "heap.h"
#include "unk_020041CC.h"
#include "unk_0200F174.h"

typedef struct EncounterEffectTaskData {
    int taskState;
    BOOL done;
    int encEffectID;
    int battleBGM;
} EncounterEffectTaskData;

static BOOL FieldTask_RunEncounterEffect(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    EncounterEffectTaskData *data = FieldTask_GetEnv(task);

    switch (data->taskState) {
    case 0:
        EncounterEffect_Start(data->encEffectID, fieldSystem, &data->done);
        sub_02004550(5, data->battleBGM, 1);
        data->taskState++;
        break;

    case 1:
        if (data->done == TRUE) {
            Heap_FreeToHeap(data);
            return TRUE;
        }
        break;
    }

    return FALSE;
}

void FieldTransition_StartEncounterEffect(FieldTask *task, int encEffectID, int battleBGM)
{
    EncounterEffectTaskData *data = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELDMAP, sizeof(EncounterEffectTaskData));

    data->taskState = 0;
    data->done = FALSE;
    data->encEffectID = encEffectID;
    data->battleBGM = battleBGM;

    FieldTask_InitCall(task, FieldTask_RunEncounterEffect, data);
}

static BOOL FieldTask_WaitUntilMapFinished(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    if (!FieldSystem_HasParentProcess(fieldSystem)) {
        return TRUE;
    }

    return FALSE;
}

void FieldTransition_FinishMap(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    if (!FieldSystem_HasParentProcess(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    FieldSystem_FlagNotRunningFieldMap(fieldSystem);
    FieldTask_InitCall(task, FieldTask_WaitUntilMapFinished, NULL);
}

static BOOL FieldTask_WaitUntilMapStarted(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    if (FieldSystem_IsRunningFieldMap(fieldSystem)) {
        return TRUE;
    }

    return FALSE;
}

void FieldTransition_StartMap(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    if (FieldSystem_HasParentProcess(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    FieldSystem_StartFieldMap(fieldSystem);
    FieldTask_InitCall(task, FieldTask_WaitUntilMapStarted, NULL);
}

static BOOL FieldTask_WaitUntilScreenTransitionDone(FieldTask *task)
{
    if (IsScreenTransitionDone()) {
        return TRUE;
    }

    return FALSE;
}

void FieldTransition_FadeOut(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    if (!FieldSystem_HasParentProcess(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    StartScreenTransition(0, 0, 0, 0x0, 6, 1, 4);
    FieldTask_InitCall(task, FieldTask_WaitUntilScreenTransitionDone, NULL);
}

void FieldTransition_FadeIn(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    if (!FieldSystem_HasParentProcess(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    StartScreenTransition(0, 1, 1, 0x0, 6, 1, 4);
    FieldTask_InitCall(task, FieldTask_WaitUntilScreenTransitionDone, NULL);
}

static BOOL FieldTask_FadeOutAndFinishMap(FieldTask *task)
{
    int *state = FieldTask_GetState(task);

    switch (*state) {
    case 0:
        FieldTransition_FadeOut(task);
        (*state)++;
        break;

    case 1:
        FieldTransition_FinishMap(task);
        (*state)++;
        break;

    case 2:
        return TRUE;
    }

    return FALSE;
}

void FieldTransition_FadeOutAndFinishMap(FieldTask *task)
{
    FieldTask_InitCall(task, FieldTask_FadeOutAndFinishMap, NULL);
}

static BOOL FieldTask_StartMapAndFadeIn(FieldTask *task)
{
    int *state = FieldTask_GetState(task);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);

    switch (*state) {
    case 0:
        FieldTransition_StartMap(task);
        (*state)++;
        break;

    case 1:
        FieldSystem_RequestLocationName(fieldSystem);
        FieldTransition_FadeIn(task);
        (*state)++;
        break;

    case 2:
        return TRUE;
    }

    return FALSE;
}

void FieldTransition_StartMapAndFadeIn(FieldTask *task)
{
    FieldTask_InitCall(task, FieldTask_StartMapAndFadeIn, NULL);
}
