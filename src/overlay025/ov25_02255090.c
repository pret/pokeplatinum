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
#define POKETCH_TASK_LIST_EMPTY     0xFFFFFFFF

#define RGB_TO_GREYSCALE(r, g, b) ((((r) * 299) + ((g) * 587) + ((b) * 114)) / 1000)

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

            size = sizeof(PoketchTaskManager) + appTasks[i].extraDataSize;
            poketchTaskMan = Heap_AllocFromHeap(heapId, size);

            if (poketchTaskMan != NULL) {
                if (appTasks[i].extraDataSize != 0) {
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

// TODO: doc
void ov25_02255258(u16 *tileBuffer, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6)
{
    param6 <<= FX32_SHIFT;
    tileBuffer += ((param3 * param2) + param1);
    tileBuffer[0] = param6 | param4;
    tileBuffer[1] = param6 | (param4 + 1);
    tileBuffer[param3] = param6 | (param4 + param5);
    tileBuffer[param3 + 1] = param6 | (param4 + param5 + 1);
}

// TODO: doc
void ov25_MapToActivePaletteFromLuminance(u16 *rawData, u32 size)
{
    u16 *activePalette = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, PALETTE_SIZE_BYTES);

    if (activePalette) {
        static const u8 paletteEntries[] = {
            1, 8, 15, 4
        };
        u32 activeByte, redData, blueData, greenData, luminance;

        Poketch_CopyActivePalette(activePalette);

        for (activeByte = 0; activeByte < size; activeByte++) {
            redData = (rawData[activeByte] & GX_RGB_R_MASK) >> GX_RGB_R_SHIFT;
            blueData = (rawData[activeByte] & GX_RGB_G_MASK) >> GX_RGB_G_SHIFT;
            greenData = (rawData[activeByte] & GX_RGB_B_MASK) >> GX_RGB_B_SHIFT;
            luminance = RGB_TO_GREYSCALE(redData, blueData, greenData);
            luminance >>= 3;

            if (luminance > 3) {
                luminance = 3;
            }

            rawData[activeByte] = activePalette[paletteEntries[luminance]];
        }

        Heap_FreeToHeap(activePalette);
    }
}

void ov25_FillPaletteFromActivePaletteSlot(u32 slot, u32 offset)
{
    u16 *activePalette = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, PALETTE_SIZE_BYTES);

    if (activePalette) {
        u16 *newPalette = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, PALETTE_SIZE_BYTES);

        Poketch_CopyActivePalette(activePalette);

        if (newPalette) {
            int paletteSlot;

            for (paletteSlot = 0; paletteSlot < SLOTS_PER_PALETTE; paletteSlot++) {
                newPalette[paletteSlot] = activePalette[slot];
            }

            DC_FlushRange(newPalette, PALETTE_SIZE_BYTES);
            GXS_LoadOBJPltt(newPalette, PLTT_OFFSET(offset), PALETTE_SIZE_BYTES);
            Heap_FreeToHeap(newPalette);
        }

        Heap_FreeToHeap(activePalette);
    }
}

// TODO: check comtents of ncgr files in NARC
void ov25_02255360(u32 offset)
{
    void *nclrBuffer;
    NNSG2dPaletteData *palette;

    nclrBuffer = Graphics_GetPlttData(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), &palette, HEAP_ID_POKETCH_APP);

    if (nclrBuffer) {
        ov25_MapToActivePaletteFromLuminance(palette->pRawData, 4 * 0x10);
        DC_FlushRange(palette->pRawData, 4 * PALETTE_SIZE_BYTES);
        GXS_LoadOBJPltt(palette->pRawData, PLTT_OFFSET(offset), 4 * PALETTE_SIZE_BYTES);
        Heap_FreeToHeap(nclrBuffer);
    }
}

// TODO: check comtents of ncgr files in NARC
// Load pokemon icon obj
void ov25_022553A0(u32 offset, const u32 *memberIdxList, u32 numIcons, BOOL isLarge)
{
    static const u16 iconSize[2] = { 512, 1024 };
    static const u16 readSize[2] = { 640, 1152 };
    u8 *ncgrFile = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, readSize[isLarge]);

    if (ncgrFile) {
        NARC *iconNARC = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_POKETCH_APP);

        if (iconNARC) {
            NNSG2dCharacterData *charData;
            u32 iconIdx;

            for (iconIdx = 0; iconIdx < numIcons; iconIdx++) {
                NARC_ReadFromMember(iconNARC, memberIdxList[iconIdx], 0, readSize[isLarge], ncgrFile);
                NNS_G2dGetUnpackedCharacterData(ncgrFile, &charData);
                DC_FlushRange(charData->pRawData, iconSize[isLarge]);
                GXS_LoadOBJ(charData->pRawData, (offset * 0x20) + (iconSize[isLarge] * iconIdx), iconSize[isLarge]);
            }

            NARC_dtor(iconNARC);
        }

        Heap_FreeToHeap(ncgrFile);
    }
}

// NOTE: Only ever used bu unused poketch apps 38, 51, 55
void ov25_02255440(BgConfig *bgConfig, u32 digit, u32 bgLayer)
{
    u16 bgSrc[4];
    u32 tensDigit;

    {
        u32 v2 = ((1 / 4) * 16) + ((1 & 3) * 2);
        (bgSrc)[0] = v2;
        (bgSrc)[1] = v2 + 1;
        (bgSrc)[2] = v2 + 8;
        (bgSrc)[3] = v2 + 9;
    }

    //                                     dstX, dstY, dstWidth, dstHeight
    Bg_LoadToTilemapRect(bgConfig, bgLayer, bgSrc, 9 + 0, 11, 2, 2);

    {
        u32 v2 = ((2 / 4) * 16) + ((2 & 3) * 2);
        (bgSrc)[0] = v2;
        (bgSrc)[1] = v2 + 1;
        (bgSrc)[2] = v2 + 8;
        (bgSrc)[3] = v2 + 9;
    }

    Bg_LoadToTilemapRect(bgConfig, bgLayer, bgSrc, 9 + 2, 11, 2, 2);

    {
        u32 v2 = ((3 / 4) * 16) + ((3 & 3) * 2);
        (bgSrc)[0] = v2;
        (bgSrc)[1] = v2 + 1;
        (bgSrc)[2] = v2 + 8;
        (bgSrc)[3] = v2 + 9;
    }

    Bg_LoadToTilemapRect(bgConfig, bgLayer, bgSrc, 9 + 4, 11, 2, 2);

    tensDigit = digit / 10;
    digit -= (tensDigit * 10);
    tensDigit += 4;
    digit += 4;

    {
        u32 v2 = (((tensDigit) / 4) * 16) + (((tensDigit) & 3) * 2);
        (bgSrc)[0] = v2;
        (bgSrc)[1] = v2 + 1;
        (bgSrc)[2] = v2 + 8;
        (bgSrc)[3] = v2 + 9;
    }

    Bg_LoadToTilemapRect(bgConfig, bgLayer, bgSrc, 9 + 6, 11, 2, 2);

    {
        u32 v2 = (((digit) / 4) * 16) + (((digit) & 3) * 2);
        (bgSrc)[0] = v2;
        (bgSrc)[1] = v2 + 1;
        (bgSrc)[2] = v2 + 8;
        (bgSrc)[3] = v2 + 9;
    }

    Bg_LoadToTilemapRect(bgConfig, bgLayer, bgSrc, 9 + 8, 11, 2, 2);
}
