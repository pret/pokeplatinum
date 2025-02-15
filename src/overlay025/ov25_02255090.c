#include "overlay025/ov25_02255090.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/ov25_02254560.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "narc.h"
#include "pokemon_icon.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#define POKETCH_TASK_LIST_VALIDATOR 0x12345678 // If activeList[1] is not this value, tasks will not be added or removed.
#define POKETCH_TASK_LIST_EMPTY 0xFFFFFFFF

static BOOL AddTaskToActiveList(u32 *activeList, u32 taskId);
static void RemoveTaskFromActiveList(u32 *activeList, u32 taskId);

void PoketchTask_InitActiveTaskList(u32 *activeList, u32 numTaskSlots)
{
    u32 i;

    activeList[0] = numTaskSlots;
    activeList[1] = POKETCH_TASK_LIST_VALIDATOR;

    for (i = 0; i < numTaskSlots; i++) {
        activeList[2 + i] = POKETCH_TASK_LIST_EMPTY;
    }
}

static BOOL AddTaskToActiveList(u32 *activeList, u32 taskId)
{
    u32 i;

    GF_ASSERT(activeList[1] == POKETCH_TASK_LIST_VALIDATOR);

    for (i = 0; i < activeList[0]; i++) {
        if (activeList[2 + i] == POKETCH_TASK_LIST_EMPTY) {
            activeList[2 + i] = taskId;
            return TRUE;
        }
    }

    return FALSE;
}

static void RemoveTaskFromActiveList(u32 *activeList, u32 taskId)
{
    GF_ASSERT(activeList[1] == POKETCH_TASK_LIST_VALIDATOR);

    for (u32 i = 0; i < activeList[0]; i++) {
        if (activeList[2 + i] == taskId) {
            activeList[2 + i] = POKETCH_TASK_LIST_EMPTY;
            return;
        }
    }

    GF_ASSERT(FALSE);
}

BOOL PoketchTask_TaskIsNotActive(u32 *activeList, u32 taskId)
{
    for (u32 i = 0; i < activeList[0]; i++) {
        if (activeList[2 + i] == taskId) {
            return FALSE;
        }
    }

    return TRUE;
}

BOOL PoketchTask_NoActiveTasks(u32 *activeList)
{
    for (u32 i = 0; i < activeList[0]; i++) {
        if (activeList[2 + i] != POKETCH_TASK_LIST_EMPTY) {
            return FALSE;
        }
    }

    return TRUE;
}

void PoketchTask_Start(const PoketchTask *appTasks, u32 taskId, void *taskData, const void *constTaskData, u32 *activeTasks, u32 taskPriority, u32 heapId)
{
    for (u32 i = 0; appTasks[i].taskId != POKETCH_TASK_LIST_EMPTY; i++) {
        if (appTasks[i].taskId == taskId) {
            PoketchTaskManager *poketchTaskMan;
            u32 size;

            size = sizeof(PoketchTaskManager) + appTasks[i].unk_08;
            poketchTaskMan = Heap_AllocFromHeap(heapId, size);

            if (poketchTaskMan != NULL) {
                if (appTasks[i].unk_08 != 0) {
                    poketchTaskMan->extraData = ((u8 *)poketchTaskMan) + sizeof(PoketchTaskManager);
                } else {
                    poketchTaskMan->extraData = NULL;
                }

                if (AddTaskToActiveList(activeTasks, taskId)) {
                    poketchTaskMan->taskData = taskData;
                    poketchTaskMan->poketchTaskState = 0;
                    poketchTaskMan->taskId = taskId;
                    poketchTaskMan->constTaskData = constTaskData;
                    poketchTaskMan->task = SysTask_Start(appTasks[i].taskFunc, poketchTaskMan, taskPriority);

                    if (poketchTaskMan->task) {
                        appTasks[i].taskFunc(poketchTaskMan->task, poketchTaskMan);
                    }
                } else {
                    Heap_FreeToHeap(poketchTaskMan);
                }

                return;
            } else {
                GF_ASSERT(FALSE);
                break;
            }
        }
    }

    GF_ASSERT(FALSE);
}

void PoketchTask_EndTask(u32 *activeList, PoketchTaskManager *taskData)
{
    RemoveTaskFromActiveList(activeList, taskData->taskId);

    SysTask_Done(taskData->task);
    Heap_FreeToHeap(taskData);
}

void *PoketchTask_GetTaskData(PoketchTaskManager *taskMan)
{
    return taskMan->taskData;
}

const void *PoketchTask_GetConstTaskData(PoketchTaskManager *taskMan)
{
    return taskMan->constTaskData;
}

void *PoketchTask_GetExtraData(PoketchTaskManager *taskMan)
{
    return taskMan->extraData;
}

u32 PoketchTask_GetState(PoketchTaskManager *taskMan)
{
    return taskMan->poketchTaskState;
}

void PoketchTask_IncrementState(PoketchTaskManager *taskMan)
{
    taskMan->poketchTaskState++;
}

void PoketchTask_SetState(PoketchTaskManager *taskMan, u32 state)
{
    taskMan->poketchTaskState = state;
}

void ov25_02255258(u16 *tileBuffer, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6)
{
    param6 <<= FX32_SHIFT;
    tileBuffer += ((param3 * param2) + param1);
    tileBuffer[0] = param6 | param4;
    tileBuffer[1] = param6 | (param4 + 1);
    tileBuffer[param3] = param6 | (param4 + param5);
    tileBuffer[param3 + 1] = param6 | (param4 + param5 + 1);
}

void ov25_02255290(u16 *param0, u32 param1)
{
    u16 *v0;

    v0 = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, 0x20);

    if (v0) {
        static const u8 v1[] = {
            1, 8, 15, 4
        };
        u32 v2, v3, v4, v5, v6;

        ov25_02254728(v0);

        for (v2 = 0; v2 < param1; v2++) {
            v3 = (param0[v2] & GX_RGB_R_MASK) >> GX_RGB_R_SHIFT;
            v4 = (param0[v2] & GX_RGB_G_MASK) >> GX_RGB_G_SHIFT;
            v5 = (param0[v2] & GX_RGB_B_MASK) >> GX_RGB_B_SHIFT;
            v6 = ((v3 * 299) + (v4 * 587) + (v5 * 114)) / 1000;
            v6 >>= 3;

            if (v6 > 3) {
                v6 = 3;
            }

            param0[v2] = v0[v1[v6]];
        }

        Heap_FreeToHeap(v0);
    }
}

void ov25_02255308(u32 param0, u32 param1)
{
    u16 *v0;

    v0 = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, 0x20);

    if (v0) {
        u16 *v1 = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, 0x20);

        ov25_02254728(v0);

        if (v1) {
            int v2;

            for (v2 = 0; v2 < 16; v2++) {
                v1[v2] = v0[param0];
            }

            DC_FlushRange(v1, 0x20);
            GXS_LoadOBJPltt(v1, param1 * 0x20, 0x20);
            Heap_FreeToHeap(v1);
        }

        Heap_FreeToHeap(v0);
    }
}

void ov25_02255360(u32 param0)
{
    void *v0;
    NNSG2dPaletteData *v1;

    v0 = Graphics_GetPlttData(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), &v1, HEAP_ID_POKETCH_APP);

    if (v0) {
        ov25_02255290(v1->pRawData, 4 * 0x10);
        DC_FlushRange(v1->pRawData, 4 * 0x20);
        GXS_LoadOBJPltt(v1->pRawData, param0 * 0x20, 4 * 0x20);
        Heap_FreeToHeap(v0);
    }
}

void ov25_022553A0(u32 param0, const u32 *param1, u32 param2, BOOL param3)
{
    static const u16 v0[2] = { 512, 1024 };
    static const u16 v1[2] = { 640, 1152 };
    u8 *v2;

    v2 = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, v1[param3]);

    if (v2) {
        NARC *v3 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, 8);

        if (v3) {
            NNSG2dCharacterData *v4;
            u32 v5;

            for (v5 = 0; v5 < param2; v5++) {
                NARC_ReadFromMember(v3, param1[v5], 0, v1[param3], v2);
                NNS_G2dGetUnpackedCharacterData(v2, &v4);
                DC_FlushRange(v4->pRawData, v0[param3]);
                GXS_LoadOBJ(v4->pRawData, (param0 * 0x20) + (v0[param3] * v5), v0[param3]);
            }

            NARC_dtor(v3);
        }

        Heap_FreeToHeap(v2);
    }
}

void ov25_02255440(BgConfig *param0, u32 param1, u32 param2)
{
    u16 v0[4];
    u32 v1;

    {
        u32 v2 = ((1 / 4) * 16) + ((1 & 3) * 2);
        (v0)[0] = v2;
        (v0)[1] = v2 + 1;
        (v0)[2] = v2 + 8;
        (v0)[3] = v2 + 9;
    }

    Bg_LoadToTilemapRect(param0, param2, v0, 9 + 0, 11, 2, 2);

    {
        u32 v2 = ((2 / 4) * 16) + ((2 & 3) * 2);
        (v0)[0] = v2;
        (v0)[1] = v2 + 1;
        (v0)[2] = v2 + 8;
        (v0)[3] = v2 + 9;
    }

    Bg_LoadToTilemapRect(param0, param2, v0, 9 + 2, 11, 2, 2);

    {
        u32 v2 = ((3 / 4) * 16) + ((3 & 3) * 2);
        (v0)[0] = v2;
        (v0)[1] = v2 + 1;
        (v0)[2] = v2 + 8;
        (v0)[3] = v2 + 9;
    }

    Bg_LoadToTilemapRect(param0, param2, v0, 9 + 4, 11, 2, 2);

    v1 = param1 / 10;
    param1 -= (v1 * 10);
    v1 += 4;
    param1 += 4;

    {
        u32 v2 = (((v1) / 4) * 16) + (((v1) & 3) * 2);
        (v0)[0] = v2;
        (v0)[1] = v2 + 1;
        (v0)[2] = v2 + 8;
        (v0)[3] = v2 + 9;
    }

    Bg_LoadToTilemapRect(param0, param2, v0, 9 + 6, 11, 2, 2);

    {
        u32 v2 = (((param1) / 4) * 16) + (((param1) & 3) * 2);
        (v0)[0] = v2;
        (v0)[1] = v2 + 1;
        (v0)[2] = v2 + 8;
        (v0)[3] = v2 + 9;
    }

    Bg_LoadToTilemapRect(param0, param2, v0, 9 + 8, 11, 2, 2);
}
