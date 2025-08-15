#include "applications/poketch/poketch_task.h"

#include <nitro.h>
#include <string.h>

#include "applications/poketch/poketch_graphics.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "narc.h"
#include "palette.h"
#include "pokemon_icon.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#define RGB_TO_GREYSCALE(r, g, b) ((((r) * 299) + ((g) * 587) + ((b) * 114)) / 1000)

#define PLACE_DIGIT(__value, __offset)                                            \
    {                                                                             \
        u32 v2 = (((__value) / 4) * 16) + (((__value) & 3) * 2);                  \
        (bgSrc)[0] = v2;                                                          \
        (bgSrc)[1] = v2 + 1;                                                      \
        (bgSrc)[2] = v2 + 8;                                                      \
        (bgSrc)[3] = v2 + 9;                                                      \
        Bg_LoadToTilemapRect(bgConfig, bgLayer, bgSrc, 9 + (__offset), 11, 2, 2); \
    }

static BOOL AddTaskToActiveList(u32 *activeList, u32 taskId);
static void RemoveTaskFromActiveList(u32 *activeList, u32 taskId);

void PoketchTask_InitActiveTaskList(u32 *activeList, u32 numTaskSlots)
{
    activeList[NUM_SLOTS_IDX] = numTaskSlots;
    activeList[VALIDATOR_IDX] = POKETCH_TASK_LIST_VALIDATOR;

    for (u32 slot = 0; slot < numTaskSlots; slot++) {
        activeList[BASE_IDX + slot] = POKETCH_EMPTY_TASK;
    }
}

static BOOL AddTaskToActiveList(u32 *activeList, u32 taskId)
{
    GF_ASSERT(activeList[VALIDATOR_IDX] == POKETCH_TASK_LIST_VALIDATOR);

    for (u32 slot = 0; slot < activeList[NUM_SLOTS_IDX]; slot++) {
        if (activeList[BASE_IDX + slot] == POKETCH_EMPTY_TASK) {
            activeList[BASE_IDX + slot] = taskId;
            return TRUE;
        }
    }

    return FALSE;
}

static void RemoveTaskFromActiveList(u32 *activeList, u32 taskId)
{
    GF_ASSERT(activeList[VALIDATOR_IDX] == POKETCH_TASK_LIST_VALIDATOR);

    for (u32 slot = 0; slot < activeList[NUM_SLOTS_IDX]; slot++) {
        if (activeList[BASE_IDX + slot] == taskId) {
            activeList[BASE_IDX + slot] = POKETCH_EMPTY_TASK;
            return;
        }
    }

    GF_ASSERT(FALSE);
}

BOOL PoketchTask_TaskIsNotActive(u32 *activeList, u32 taskId)
{
    for (u32 slot = 0; slot < activeList[NUM_SLOTS_IDX]; slot++) {
        if (activeList[BASE_IDX + slot] == taskId) {
            return FALSE;
        }
    }

    return TRUE;
}

BOOL PoketchTask_NoActiveTasks(u32 *activeList)
{
    for (u32 slot = 0; slot < activeList[NUM_SLOTS_IDX]; slot++) {
        if (activeList[BASE_IDX + slot] != POKETCH_EMPTY_TASK) {
            return FALSE;
        }
    }

    return TRUE;
}

void PoketchTask_Start(const PoketchTask *appTasks, u32 taskId, void *taskData, const void *constTaskData, u32 *activeTasks, u32 taskPriority, u32 heapID)
{
    for (u32 slot = 0; appTasks[slot].taskId != POKETCH_EMPTY_TASK; slot++) {
        if (appTasks[slot].taskId == taskId) {
            u32 size = sizeof(PoketchTaskManager) + appTasks[slot].extraDataSize;
            PoketchTaskManager *poketchTaskMan = Heap_Alloc(heapID, size);

            if (poketchTaskMan != NULL) {
                if (appTasks[slot].extraDataSize != 0) {
                    poketchTaskMan->extraData = ((u8 *)poketchTaskMan) + sizeof(PoketchTaskManager);
                } else {
                    poketchTaskMan->extraData = NULL;
                }

                if (AddTaskToActiveList(activeTasks, taskId)) {
                    poketchTaskMan->taskData = taskData;
                    poketchTaskMan->poketchTaskState = 0;
                    poketchTaskMan->taskId = taskId;
                    poketchTaskMan->constTaskData = constTaskData;
                    poketchTaskMan->task = SysTask_Start(appTasks[slot].taskFunc, poketchTaskMan, taskPriority);

                    if (poketchTaskMan->task) {
                        appTasks[slot].taskFunc(poketchTaskMan->task, poketchTaskMan);
                    }
                } else {
                    Heap_Free(poketchTaskMan);
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
    Heap_Free(taskData);
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

// Used by OV28
void ov25_02255258(u16 *tileBuffer, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6)
{
    param6 <<= FX32_SHIFT;
    tileBuffer += ((param3 * param2) + param1);
    tileBuffer[0] = param6 | param4;
    tileBuffer[1] = param6 | (param4 + 1);
    tileBuffer[param3] = param6 | (param4 + param5);
    tileBuffer[param3 + 1] = param6 | (param4 + param5 + 1);
}

void PoketchTask_MapToActivePaletteFromLuminance(u16 *rawData, u32 numPaletteEntries)
{
    u16 *activePalette = Heap_Alloc(HEAP_ID_POKETCH_APP, PALETTE_SIZE_BYTES);

    if (activePalette) {
        static const u8 paletteEntries[] = {
            PLTT_1, PLTT_8, PLTT_15, PLTT_4
        };
        u32 activePaletteEntrie, redData, blueData, greenData, luminance;

        PoketchGraphics_CopyActivePalette(activePalette);

        for (activePaletteEntrie = 0; activePaletteEntrie < numPaletteEntries; activePaletteEntrie++) {
            redData = (rawData[activePaletteEntrie] & GX_RGB_R_MASK) >> GX_RGB_R_SHIFT;
            blueData = (rawData[activePaletteEntrie] & GX_RGB_G_MASK) >> GX_RGB_G_SHIFT;
            greenData = (rawData[activePaletteEntrie] & GX_RGB_B_MASK) >> GX_RGB_B_SHIFT;
            luminance = RGB_TO_GREYSCALE(redData, blueData, greenData);
            luminance >>= 3;

            if (luminance > 3) {
                luminance = 3;
            }

            rawData[activePaletteEntrie] = activePalette[paletteEntries[luminance]];
        }

        Heap_Free(activePalette);
    }
}

void PoketchTask_FillPaletteFromActivePaletteSlot(u32 slot, u32 offset)
{
    u16 *activePalette = Heap_Alloc(HEAP_ID_POKETCH_APP, PALETTE_SIZE_BYTES);

    if (activePalette) {
        u16 *newPalette = Heap_Alloc(HEAP_ID_POKETCH_APP, PALETTE_SIZE_BYTES);

        PoketchGraphics_CopyActivePalette(activePalette);

        if (newPalette) {
            int paletteSlot;

            for (paletteSlot = 0; paletteSlot < SLOTS_PER_PALETTE; paletteSlot++) {
                newPalette[paletteSlot] = activePalette[slot];
            }

            DC_FlushRange(newPalette, PALETTE_SIZE_BYTES);
            GXS_LoadOBJPltt(newPalette, PLTT_OFFSET(offset), PALETTE_SIZE_BYTES);
            Heap_Free(newPalette);
        }

        Heap_Free(activePalette);
    }
}

void PoketchTask_LoadPokemonIconLuminancePalette(u32 offset)
{
    void *nclrBuffer;
    NNSG2dPaletteData *palette;

    nclrBuffer = Graphics_GetPlttData(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), &palette, HEAP_ID_POKETCH_APP);

    if (nclrBuffer) {
        PoketchTask_MapToActivePaletteFromLuminance(palette->pRawData, 4 * SLOTS_PER_PALETTE);
        DC_FlushRange(palette->pRawData, 4 * PALETTE_SIZE_BYTES);
        GXS_LoadOBJPltt(palette->pRawData, PLTT_OFFSET(offset), 4 * PALETTE_SIZE_BYTES);
        Heap_Free(nclrBuffer);
    }
}

void PoketchTask_LoadPokemonIcons(u32 offset, const u32 *iconIdxList, u32 numIcons, BOOL isLarge)
{
    static const u16 iconSize[2] = { 512, 1024 };
    static const u16 readSize[2] = { 640, 1152 };
    u8 *ncgrFile = Heap_Alloc(HEAP_ID_POKETCH_APP, readSize[isLarge]);

    if (ncgrFile) {
        NARC *iconNARC = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_POKETCH_APP);

        if (iconNARC) {
            NNSG2dCharacterData *charData;

            for (u32 activeIcon = 0; activeIcon < numIcons; activeIcon++) {
                NARC_ReadFromMember(iconNARC, iconIdxList[activeIcon], 0, readSize[isLarge], ncgrFile);
                NNS_G2dGetUnpackedCharacterData(ncgrFile, &charData);
                DC_FlushRange(charData->pRawData, iconSize[isLarge]);
                GXS_LoadOBJ(charData->pRawData, (offset * 0x20) + (iconSize[isLarge] * activeIcon), iconSize[isLarge]);
            }

            NARC_dtor(iconNARC);
        }

        Heap_Free(ncgrFile);
    }
}

// Only ever used by unused poketch apps OV38, OV51, OV55
void ov25_02255440(BgConfig *bgConfig, u32 digit, u32 bgLayer)
{
    u16 bgSrc[4];
    u32 tensDigit;

    PLACE_DIGIT(1, 0);
    PLACE_DIGIT(2, 2);
    PLACE_DIGIT(3, 4);

    tensDigit = digit / 10;
    digit -= (tensDigit * 10);
    tensDigit += 4;
    digit += 4;

    PLACE_DIGIT(tensDigit, 6);
    PLACE_DIGIT(digit, 8);
}
