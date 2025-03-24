#include "overlay025/ov25_02254560.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay025/poketch_system.h"
#include "overlay025/struct_ov25_02254560_1.h"
#include "overlay025/struct_ov25_02254560_decl.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"

#include "bg_window.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "palette.h"
#include "poketch.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02005474.h"

#define POKETCH_PALETTE_NARC_IDX 0

#define NUM_PALETTES                        16
#define NUM_PALETTES_PER_PALETTE_COLOUR_SET 2
#define NUM_PALETTE_COLOUR_SETS             (NUM_PALETTES / NUM_PALETTES_PER_PALETTE_COLOUR_SET)
#define SLOTS_PER_PALETTE_COLOUR_SET        (SLOTS_PER_PALETTE * NUM_PALETTES_PER_PALETTE_COLOUR_SET)
#define BACKLIGHT_PALETTE_SLOT_OFFSET       (SLOTS_PER_PALETTE)

#define OV25_NUM_TASK_SLOTS 8

typedef struct {
    BOOL elemLoaded;
    Ov25_540_GraphicManager *unk_04;
    UnkStruct_ov25_02255958 unk_08;
    ov25_540_GraphicObject *unk_1C[2]; // anlimation elements
} UnkStruct_ov25_02254DD8;

struct Ov25_560_TaskData_t {
    const Ov25_560_TaskData_1 *taskData;
    u32 taskList[2 + OV25_NUM_TASK_SLOTS];
    u16 unk_2C[32];
    u16 unk_6C[32];
    u16 unk_AC[32];
    u16 unk_EC[32];
    u16 unk_12C[32];
    u16 unk_16C[32];
    NNSG2dOamManagerInstance unused;
    NNSG2dOamManagerInstance *oamMngr;
    Ov25_540_GraphicManager *unk_1CC;
    SysTask *task;
    UnkStruct_ov25_02254DD8 unk_1D4;
    BgConfig *bgConfig;
    PoketchSystem *poketchSys;
    u16 poketchPalettes[NUM_PALETTE_COLOUR_SETS * SLOTS_PER_PALETTE_COLOUR_SET];
    u16 palette[16];
};

typedef struct {
    u16 unk_00;
    u16 unk_02;
} Ov25_560_ExtraTaskData;

static void ov25_TaskCallback(SysTask *param0, void *param1);
static void Poketch_InitPaletteData(Ov25_560_TaskData *param0);
static void ov25_02254798(u16 *param0, u32 param1, int param2, int param3);
static void ov25_560_EndTask(PoketchTaskManager *param0);
static void ov25_560_SetupBackgroundTask(SysTask *param0, void *param1);
static void ov25_02254944(SysTask *param0, void *param1);
static void ov25_02254A5C(SysTask *param0, void *param1);
static void ov25_02254B8C(SysTask *param0, void *param1);
static void ov25_02254BF0(SysTask *param0, void *param1);
static void ov25_560_LoadTilemap(void *param0, u16 *param1, int param2);
static void ov25_02254CA8(SysTask *param0, void *param1);
static void ov25_02254CCC(SysTask *param0, void *param1);
static void ov25_02254CF4(SysTask *param0, void *param1);
static void ov25_02254D0C(SysTask *param0, void *param1);
static void ov25_02254D24(SysTask *param0, void *param1);
static void ov25_02254D48(SysTask *param0, void *param1);
static void ov25_560_LoadAndInitAnimationTask(SysTask *param0, void *param1);
static void ov25_560_InitAnimationTask(SysTask *param0, void *param1);
static void ov25_560_UnloadAnimElementsTask(SysTask *param0, void *param1);
static void ov25_02254DD8(UnkStruct_ov25_02254DD8 *param0, Ov25_540_GraphicManager *param1);
static void ov25_560_LoadAnimElements(Ov25_560_TaskData *param0, UnkStruct_ov25_02254DD8 *param1);
static void ov25_560_LoadTaskPalette(Ov25_560_TaskData *param0, u32 param1);
static void ov25_560_InitAnimations(UnkStruct_ov25_02254DD8 *param0, const Ov25_560_TaskData_1 *param1);
static void ov25_560_UnloadAnimElements(UnkStruct_ov25_02254DD8 *param0);
static void ov25_02254F68(SysTask *param0, void *param1);
static void ov25_560_LoadTilemapBufferTask(SysTask *param0, void *param1);
static void ov25_560_FreeTilemapBufferTask(SysTask *param0, void *param1);
struct PoketchSystem *FieldSystem_GetPoketchSystem(void);
SysTask *SysTask_ExecuteAfterVBlank(SysTaskFunc param0, void *param1, u32 param2);

BOOL ov25_02254560(Ov25_560_TaskData **taskDataPtr, const Ov25_560_TaskData_1 *param1, NNSG2dOamManagerInstance *oamMngr, PoketchSystem *poketchSys)
{
    *taskDataPtr = Heap_AllocFromHeap(HEAP_ID_POKETCH_MAIN, sizeof(Ov25_560_TaskData));

    if (*taskDataPtr != NULL) {
        Ov25_560_TaskData *newTaskData = *taskDataPtr;

        newTaskData->oamMngr = oamMngr;
        NNS_G2dResetOamManagerBuffer(newTaskData->oamMngr);
        newTaskData->unk_1CC = ov25_SetupDataStructure(newTaskData->oamMngr, HEAP_ID_POKETCH_MAIN);

        if (newTaskData->unk_1CC == NULL) {
            Heap_FreeToHeap(*taskDataPtr);
            *taskDataPtr = NULL;
            return FALSE;
        }

        newTaskData->taskData = param1;
        newTaskData->bgConfig = BgConfig_New(HEAP_ID_POKETCH_MAIN);
        newTaskData->poketchSys = poketchSys;

        Poketch_InitPaletteData(newTaskData);
        ov25_02254DD8(&newTaskData->unk_1D4, newTaskData->unk_1CC);
        PoketchTask_InitActiveTaskList((*taskDataPtr)->taskList, OV25_NUM_TASK_SLOTS);

        ov25_02254798((*taskDataPtr)->unk_2C, 64 + 8, 4, 6);
        ov25_02254798((*taskDataPtr)->unk_6C, 64 + 12, 4, 6);
        ov25_02254798((*taskDataPtr)->unk_AC, 64 + 16, 4, 6);

        ov25_02254798((*taskDataPtr)->unk_EC, 64 + 20, 2, 4);
        ov25_02254798((*taskDataPtr)->unk_12C, 64 + 24, 2, 4);
        ov25_02254798((*taskDataPtr)->unk_16C, 64 + 28, 2, 4);

        newTaskData->task = SysTask_ExecuteAfterVBlank(ov25_TaskCallback, newTaskData, 0);

        return 1;
    }

    return 0;
}

static void ov25_TaskCallback(SysTask *task, void *data)
{
    Ov25_560_TaskData *taskData = data;
    ov25_MainFunc(taskData->unk_1CC);
}

Ov25_540_GraphicManager *ov25_02254664(void)
{
    Ov25_560_TaskData *taskData = PoketchSystem_Get_ov25_560_struct();
    return taskData->unk_1CC;
}

BgConfig *Poketch_GetBgConfig(void)
{
    Ov25_560_TaskData *taskData = PoketchSystem_Get_ov25_560_struct();
    return taskData->bgConfig;
}

static void Poketch_InitPaletteData(Ov25_560_TaskData *taskData)
{
    NNSG2dPaletteData *paletteData;

    void *poketchPalettes = Graphics_GetPlttData(NARC_INDEX_GRAPHIC__POKETCH, POKETCH_PALETTE_NARC_IDX, &paletteData, HEAP_ID_POKETCH_MAIN);

    if (poketchPalettes) {
        MI_CpuCopy32(paletteData->pRawData, taskData->poketchPalettes, NUM_PALETTES * PALETTE_SIZE_BYTES);
        DC_FlushRange(taskData->poketchPalettes, NUM_PALETTES * PALETTE_SIZE_BYTES);
        Heap_FreeToHeap(poketchPalettes);
    }
}

void Poketch_LoadActivePalette(u32 bgOffset, u32 objOffset)
{
    Ov25_560_TaskData *taskData = PoketchSystem_Get_ov25_560_struct();
    Poketch *poketch = PoketchSystem_GetPoketchData(taskData->poketchSys);
    u32 screenColour = Poketch_CurrentScreenColor(poketch);

    GXS_LoadBGPltt(&taskData->poketchPalettes[screenColour * SLOTS_PER_PALETTE_COLOUR_SET], PLTT_OFFSET(bgOffset), PALETTE_SIZE_BYTES);
    GXS_LoadOBJPltt(&taskData->poketchPalettes[screenColour * SLOTS_PER_PALETTE_COLOUR_SET], objOffset, PALETTE_SIZE_BYTES);
}

void Poketch_LoadActiveBacklightPalette(u32 unused_1, u32 unused_2)
{
    Ov25_560_TaskData *taskData = PoketchSystem_Get_ov25_560_struct();
    Poketch *poketch = PoketchSystem_GetPoketchData(taskData->poketchSys);
    u32 screenColour = Poketch_CurrentScreenColor(poketch);

    GXS_LoadBGPltt(&taskData->poketchPalettes[screenColour * SLOTS_PER_PALETTE_COLOUR_SET + BACKLIGHT_PALETTE_SLOT_OFFSET], 0, PALETTE_SIZE_BYTES);
    GXS_LoadOBJPltt(&taskData->poketchPalettes[screenColour * SLOTS_PER_PALETTE_COLOUR_SET + BACKLIGHT_PALETTE_SLOT_OFFSET], 0, PALETTE_SIZE_BYTES);
}

void Poketch_CopyActivePalette(u16 *dest)
{
    Ov25_560_TaskData *taskData = PoketchSystem_Get_ov25_560_struct();
    Poketch *poketch = PoketchSystem_GetPoketchData(taskData->poketchSys);
    u32 screenColour = Poketch_CurrentScreenColor(poketch);

    MI_CpuCopy16(&taskData->poketchPalettes[screenColour * SLOTS_PER_PALETTE_COLOUR_SET], dest, PALETTE_SIZE_BYTES);
}

void ov25_560_Close(Ov25_560_TaskData *taskData)
{
    if (taskData) {
        ov25_560_UnloadAnimElements(&(taskData->unk_1D4));

        if (taskData->unk_1CC) {
            ov25_FreeOV25(taskData->unk_1CC);
        }

        if (taskData->bgConfig) {
            Heap_FreeToHeap(taskData->bgConfig);
        }

        if (taskData->task) {
            SysTask_Done(taskData->task);
        }

        Heap_FreeToHeap(taskData);
    }
}

static void ov25_02254798(u16 *param0, u32 param1, int param2, int param3)
{
    int x, y, v2;
    int v3;

    v2 = 0;
    v3 = 0;

    for (y = 0; y < 8; y++) {
        for (x = 0; x < 4; x++) {
            param0[v2] = (15 << 12) | (param1 + v3 + x);
            v2++;
        }

        if ((y >= param2) && (y < param3)) {
            (void)0;
        } else {
            v3 += 32;
        }
    }
}

static const PoketchTask poketchTasks[] = {
    { 0x0, ov25_560_SetupBackgroundTask, 0x0 },
    { 0x1, ov25_02254944, sizeof(Ov25_560_ExtraTaskData) },
    { 0x2, ov25_02254944, sizeof(Ov25_560_ExtraTaskData) },
    { 0x3, ov25_02254B8C, sizeof(Ov25_560_ExtraTaskData) },
    { 0x4, ov25_02254A5C, sizeof(Ov25_560_ExtraTaskData) },
    { 0x5, ov25_02254BF0, sizeof(Ov25_560_ExtraTaskData) },
    { 0x6, ov25_02254CA8, 0x0 },
    { 0x8, ov25_02254CF4, 0x0 },
    { 0x7, ov25_02254D24, 0x0 },
    { 0x9, ov25_02254CCC, 0x0 },
    { 0xB, ov25_02254D0C, 0x0 },
    { 0xA, ov25_02254D48, 0x0 },
    { 0xC, ov25_560_LoadAndInitAnimationTask, 0x0 },
    { 0xD, ov25_560_InitAnimationTask, 0x0 },
    { 0xE, ov25_560_UnloadAnimElementsTask, 0x0 },
    { 0xF, ov25_02254F68, 0x0 },
    { 0x10, ov25_560_LoadTilemapBufferTask, 0x0 },
    { 0x11, ov25_560_FreeTilemapBufferTask, 0x0 },
    { 0xffffffff, NULL, 0x0 }
};

void ov25_560_StartTask(Ov25_560_TaskData *taskData, u32 taskId)
{
    PoketchTask_Start(poketchTasks, taskId, taskData, taskData->taskData, taskData->taskList, 2, HEAP_ID_POKETCH_MAIN);
}

BOOL ov25_560_TaskIsNotActive(Ov25_560_TaskData *taskData, u32 taskId)
{
    return PoketchTask_TaskIsNotActive(taskData->taskList, taskId);
}

BOOL ov25_560_NoActiveTasks(Ov25_560_TaskData *taskData)
{
    return PoketchTask_NoActiveTasks(taskData->taskList);
}

static void ov25_560_EndTask(PoketchTaskManager *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);
    PoketchTask_EndTask(taskData->taskList, taskMan);
}

static void ov25_560_SetupBackgroundTask(SysTask *task, void *taskMan)
{
    static const BgTemplate bgTemplateLayer4 = {
        0,
        0,
        0x824,
        0,
        1,
        GX_BG_COLORMODE_16,
        (GX_BG_SCRBASE_0x6000),
        (GX_BG_CHARBASE_0x04000),
        GX_BG_EXTPLTT_01,
        0,
        0,
        0,
        0
    };
    static const BgTemplate bgTemplateLayer5 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        (GX_BG_SCRBASE_0x6800),
        (GX_BG_CHARBASE_0x04000),
        GX_BG_EXTPLTT_01,
        1,
        0,
        0,
        0
    };
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    GXS_SetGraphicsMode(GX_BGMODE_0);
    GX_SetBankForSubBG(GX_VRAM_SUB_BG_32_H);
    GX_SetBankForSubOBJ(GX_VRAM_SUB_OBJ_16_I);
    GXS_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);

    GXLayers_DisableEngineBLayers();
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    Bg_InitFromTemplate(taskData->bgConfig, 4, &bgTemplateLayer4, 0);
    Bg_InitFromTemplate(taskData->bgConfig, 5, &bgTemplateLayer5, 0);

    Graphics_LoadTilesToBgLayer(12, 14, taskData->bgConfig, 4, 64, 0, 1, HEAP_ID_POKETCH_MAIN);
    Graphics_LoadTilemapToBgLayer(12, 15, taskData->bgConfig, 4, 0, 0, 1, HEAP_ID_POKETCH_MAIN);
    Graphics_LoadPaletteWithSrcOffset(12, 13, 4, PLTT_OFFSET(PoketchSystem_GetBorderColor(taskData->poketchSys)), PLTT_OFFSET(15), PALETTE_SIZE_BYTES, HEAP_ID_POKETCH_MAIN);

    Bg_FillTilemapRect(taskData->bgConfig, 5, 64 + 164, 0, 0, 32, 24, 15);
    Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, 5);

    GXS_SetVisiblePlane(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_OBJ);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);

    ov25_560_EndTask(taskMan);
}

static void ov25_02254944(SysTask *task, void *taskMan)
{
    Ov25_560_ExtraTaskData *extraTaskData;
    Ov25_560_TaskData *taskData;
    u32 state;

    extraTaskData = PoketchTask_GetExtraData(taskMan);
    taskData = PoketchTask_GetTaskData(taskMan);
    state = PoketchTask_GetState(taskMan);

    switch (state) {
    case 0:
        extraTaskData->unk_00 = 0;
        extraTaskData->unk_02 = 0;
        PoketchTask_IncrementState(taskMan);
    case 1:
        if (++(extraTaskData->unk_00) > 0) {
            u32 v3, v4, v5;

            extraTaskData->unk_00 = 0;
            extraTaskData->unk_02 += 12;

            if (extraTaskData->unk_02 > 40) {
                extraTaskData->unk_02 = 40;
            }

            v3 = extraTaskData->unk_02 / 4;
            v4 = extraTaskData->unk_02 % 4;
            v5 = 2 + (20 / 2) - v3;

            Bg_FillTilemapRect(taskData->bgConfig, 5, 64, 2, v5, 24, v3 * 2, 15);

            if (v4) {
                Bg_FillTilemapRect(taskData->bgConfig, 5, 64 + 164 + v4, 2, v5 - 1, 24, 1, 15);
                Bg_FillTilemapRect(taskData->bgConfig, 5, 64 + 164 - v4, 2, v5 + v3 * 2, 24, 1, 15);
            }

            Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, 5);

            if (extraTaskData->unk_02 == 40) {
                PoketchTask_IncrementState(taskMan);
            }
        }
        break;
    case 2:
        ov25_560_EndTask(taskMan);
    }
}

static void ov25_02254A5C(SysTask *task, void *taskMan)
{
    Ov25_560_ExtraTaskData *extraTaskData;
    Ov25_560_TaskData *taskData;
    u32 state;

    extraTaskData = PoketchTask_GetExtraData(taskMan);
    taskData = PoketchTask_GetTaskData(taskMan);
    state = PoketchTask_GetState(taskMan);

    switch (state) {
    case 0:
        extraTaskData->unk_00 = 0;
        extraTaskData->unk_02 = 0;
        PoketchTask_IncrementState(taskMan);
    case 1:
        if (++(extraTaskData->unk_00) > 0) {
            u32 v3, v4, v5;

            extraTaskData->unk_00 = 0;
            extraTaskData->unk_02 += 8;

            if (extraTaskData->unk_02 > 40) {
                extraTaskData->unk_02 = 40;
            }

            v3 = extraTaskData->unk_02 / 4;
            v4 = extraTaskData->unk_02 % 4;
            v5 = 2 + 20 - v3;

            Bg_FillTilemapRect(taskData->bgConfig, 5, 64 + 164, 2, 2, 24, v3, 15);
            Bg_FillTilemapRect(taskData->bgConfig, 5, 64 + 164, 2, v5, 24, v3, 15);

            if (v4) {
                v4--;

                Bg_FillTilemapRect(taskData->bgConfig, 5, 64 + 167 - v4, 2, 0, 24, 1, 15);
                Bg_FillTilemapRect(taskData->bgConfig, 5, 64 + 161 + v4, 2, v5 - 1, 24, 1, 15);
            }

            Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, 5);

            if (extraTaskData->unk_02 == 40) {
                PoketchTask_IncrementState(taskMan);
            }
        }
        break;
    case 2:
        ov25_560_EndTask(taskMan);
    }
}

static void ov25_02254B8C(SysTask *task, void *taskMan)
{
    Ov25_560_ExtraTaskData *extraTaskData;
    Ov25_560_TaskData *taskData;
    u32 state;

    extraTaskData = PoketchTask_GetExtraData(taskMan);
    taskData = PoketchTask_GetTaskData(taskMan);
    state = PoketchTask_GetState(taskMan);

    if (state < 4) {
        Bg_FillTilemapRect(taskData->bgConfig, 5, 64 + 164 - state - 1, 2, 2, 24, 20, 15);
        Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, 5);
        PoketchTask_IncrementState(taskMan);
    } else {
        ov25_560_EndTask(taskMan);
    }
}

static void ov25_02254BF0(SysTask *task, void *taskMan)
{
    Ov25_560_ExtraTaskData *extraTaskData;
    Ov25_560_TaskData *taskData;
    u32 state;

    extraTaskData = PoketchTask_GetExtraData(taskMan);
    taskData = PoketchTask_GetTaskData(taskMan);
    state = PoketchTask_GetState(taskMan);

    if (state < 4) {
        Bg_FillTilemapRect(taskData->bgConfig, 5, 64 + 167 - state, 2, 2, 24, 20, 15);
        Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, 5);
        PoketchTask_IncrementState(taskMan);
    } else {
        ov25_560_EndTask(taskMan);
    }
}

static void ov25_560_LoadTilemap(void *taskMan, u16 *src, int position)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);
    int x, y;

    if (position == 0) {
        x = 28;
        y = 4;
    } else {
        x = 28;
        y = 12;
    }

    Bg_LoadToTilemapRect(taskData->bgConfig, 4, src, x, y, 4, 8);
    Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, 4);

    ov25_560_EndTask(taskMan);
}

static void ov25_02254CA8(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    ov25_560_LoadTilemap(taskMan, taskData->unk_6C, 0);
    Sound_PlayEffect(1649);
}

static void ov25_02254CCC(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    ov25_560_LoadTilemap(taskMan, taskData->unk_12C, 1);
    Sound_PlayEffect(1649);
}

static void ov25_02254CF4(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);
    ov25_560_LoadTilemap(taskMan, taskData->unk_2C, 0);
}

static void ov25_02254D0C(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);
    ov25_560_LoadTilemap(taskMan, taskData->unk_EC, 1);
}

static void ov25_02254D24(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    ov25_560_LoadTilemap(taskMan, taskData->unk_AC, 0);
    Sound_PlayEffect(1647);
}

static void ov25_02254D48(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    ov25_560_LoadTilemap(taskMan, taskData->unk_16C, 1);
    Sound_PlayEffect(1647);
}

static void ov25_560_LoadAndInitAnimationTask(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    ov25_560_LoadAnimElements(taskData, &taskData->unk_1D4);
    ov25_560_InitAnimations(&taskData->unk_1D4, taskData->taskData);
    ov25_560_EndTask(taskMan);
}

static void ov25_560_InitAnimationTask(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    ov25_560_InitAnimations(&taskData->unk_1D4, taskData->taskData);
    ov25_560_EndTask(taskMan);
}

static void ov25_560_UnloadAnimElementsTask(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    ov25_560_UnloadAnimElements(&taskData->unk_1D4);
    ov25_560_EndTask(taskMan);
}

static void ov25_02254DD8(UnkStruct_ov25_02254DD8 *param0, Ov25_540_GraphicManager *param1)
{
    param0->elemLoaded = FALSE;
    param0->unk_04 = param1;
}

static void ov25_560_LoadAnimElements(Ov25_560_TaskData *taskData, UnkStruct_ov25_02254DD8 *param1)
{
    if (ov25_LoadNARCMembers(&param1->unk_08, 12, 3, 4, HEAP_ID_POKETCH_MAIN)) {
        static const UnkStruct_ov25_02255810 v0 = {
            { (176 << FX32_SHIFT), (40 << FX32_SHIFT) },
            0,
            0,
            0,
            0,
            0
        };

        Graphics_LoadObjectTiles(12, 2, 1, 0, 0, 1, HEAP_ID_POKETCH_MAIN);
        Graphics_LoadPalette(12, 0, 5, 0, 0x60, HEAP_ID_POKETCH_MAIN);

        ov25_560_LoadTaskPalette(taskData, 15);

        param1->unk_1C[0] = ov25_SetupNewElem(param1->unk_04, &v0, &param1->unk_08);

        if (param1->unk_1C[0] == NULL) {
            return;
        }

        param1->unk_1C[1] = ov25_SetupNewElem(param1->unk_04, &v0, &param1->unk_08);

        if (param1->unk_1C[1] == NULL) {
            ov25_RemoveElem(param1->unk_04, param1->unk_1C[0]);
            return;
        }

        ov25_addTranslation(param1->unk_1C[1], 16 * FX32_ONE, 0);
        ov25_Set_cParam(param1->unk_1C[0], 15);
        ov25_Set_cParam(param1->unk_1C[1], 15);

        param1->elemLoaded = TRUE;
    }
}

static void ov25_560_LoadTaskPalette(Ov25_560_TaskData *taskData, u32 offset)
{
    Poketch *poketch = PoketchSystem_GetPoketchData(taskData->poketchSys);
    u32 screenColour = Poketch_CurrentScreenColor(poketch); // Unused

    Poketch_CopyActivePalette(taskData->palette);

    {
        u16 paletteSlot = taskData->palette[1];
        taskData->palette[1] = (taskData->palette[4]);
        taskData->palette[4] = paletteSlot;
    }

    {
        u16 paletteSlot = (taskData->palette[8]);
        taskData->palette[8] = taskData->palette[15];
        taskData->palette[15] = paletteSlot;
    }

    DC_FlushRange(taskData->palette, sizeof(taskData->palette));
    GXS_LoadOBJPltt(taskData->palette, PLTT_OFFSET(offset), sizeof(taskData->palette));
}

static void ov25_560_InitAnimations(UnkStruct_ov25_02254DD8 *param0, const Ov25_560_TaskData_1 *taskData)
{
    if (param0->elemLoaded) {
        u32 animIDX_0, animIDX_1;

        CP_SetDiv32_32((taskData->unk_00 + 1), 10);

        animIDX_0 = CP_GetDivResult32();
        animIDX_1 = CP_GetDivRemainder32();

        ov25_InitAnimation(param0->unk_1C[0], animIDX_0);
        ov25_InitAnimation(param0->unk_1C[1], animIDX_1);
    }
}

static void ov25_560_UnloadAnimElements(UnkStruct_ov25_02254DD8 *param0)
{
    if (param0->elemLoaded) {
        ov25_RemoveElem(param0->unk_04, param0->unk_1C[0]);
        ov25_RemoveElem(param0->unk_04, param0->unk_1C[1]);
        ov25_FreeNARCMembers(&param0->unk_08);

        param0->elemLoaded = FALSE;
    }
}

// Loading bar?
static void ov25_02254F68(SysTask *task, void *taskMan)
{
    u32 state;
    Ov25_560_ExtraTaskData *extraTaskData;
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    extraTaskData = PoketchTask_GetExtraData(taskMan); // Unused
    state = PoketchTask_GetState(taskMan);

    switch (state) {
    case 0:
        G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 0x1a, 0x6);
        Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, 4);
    case 1:
    case 2:
    case 3:
        Bg_FillTilemapRect(taskData->bgConfig, 5, 64 + 167 - state, 2, 2, 24, 20, 15);
        Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, 5);

        if (state == 3) {
            ov25_560_EndTask(taskMan);
        } else {
            PoketchTask_IncrementState(taskMan);
        }
        break;
    }
}

static void ov25_560_LoadTilemapBufferTask(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    Bg_FillTilemapRect(taskData->bgConfig, 5, 64, 2, 2, 24, 20, 15);
    Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, 4);
    Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, 5);

    G2S_SetBlendAlpha(0, 0, 0x1f, 0x0);
    ov25_560_EndTask(taskMan);
}

static void ov25_560_FreeTilemapBufferTask(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    Bg_FreeTilemapBuffer(taskData->bgConfig, 4);
    Bg_FreeTilemapBuffer(taskData->bgConfig, 5);

    ov25_560_EndTask(taskMan);
}
