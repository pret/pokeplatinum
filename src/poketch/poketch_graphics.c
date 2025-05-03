#include "poketch/poketch_graphics.h"

#include <nitro.h>
#include <string.h>

#include "poketch/poketch_animation.h"
#include "poketch/poketch_system.h"
#include "poketch/poketch_task.h"
#include "poketch/struct_ov25_02254560_1.h"
#include "poketch/struct_ov25_02254560_decl.h"
#include "poketch/struct_ov25_022555E8_decl.h"
#include "poketch/struct_ov25_02255810.h"
#include "poketch/struct_ov25_022558C4_decl.h"
#include "poketch/struct_ov25_02255958.h"

#include "bg_window.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "palette.h"
#include "poketch.h"
#include "sound_playback.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#define POKETCH_PALETTE_NARC_IDX 0

#define NUM_PALETTES                        16
#define NUM_PALETTES_PER_PALETTE_COLOUR_SET 2
#define NUM_PALETTE_COLOUR_SETS             (NUM_PALETTES / NUM_PALETTES_PER_PALETTE_COLOUR_SET)
#define SLOTS_PER_PALETTE_COLOUR_SET        (SLOTS_PER_PALETTE * NUM_PALETTES_PER_PALETTE_COLOUR_SET)
#define BACKLIGHT_PALETTE_SLOT_OFFSET       (SLOTS_PER_PALETTE)

#define OV25_NUM_TASK_SLOTS 8

#define POKETCH_EMPTY_TASK 0xFFFFFFFF

#define UP_BTN   0
#define DOWN_BTN 1

#define BTN_TILEMAP_WIDTH  4
#define BTN_TILEMAP_HEIGHT 8

typedef struct {
    BOOL animationLoaded;
    Ov25_540_AnimationManager *animMan;
    ov25_SpriteData spriteData;
    Ov25_540_AnimatedSpriteData *animatedDigits[2];
} ov25_560_AppCounterAnimationData;

struct Ov25_560_TaskData_t {
    const Ov25_560_ConstTaskData *constTaskData;
    u32 taskList[2 + OV25_NUM_TASK_SLOTS];
    u16 tilemapUpBtnPressed[32];
    u16 tilemapUpBtnHalfPressed[32];
    u16 tilemapUpBtn[32];
    u16 tilemapDownBtnPressed[32];
    u16 tilemapDownBtnHalfPressed[32];
    u16 tilemapDownBtn[32];
    NNSG2dOamManagerInstance unused;
    NNSG2dOamManagerInstance *oamMan;
    Ov25_540_AnimationManager *animMan;
    SysTask *task;
    ov25_560_AppCounterAnimationData appCounterAnim;
    BgConfig *bgConfig;
    PoketchSystem *poketchSys;
    u16 poketchPalettes[NUM_PALETTE_COLOUR_SETS * SLOTS_PER_PALETTE_COLOUR_SET];
    u16 palette[16];
};

typedef struct {
    u16 iterationTracker;
    u16 heightCounter;
} Ov25_560_ExtraTaskData;

static void ov25_560_TaskCallback(SysTask *task, void *data);
static void Poketch_InitPaletteData(Ov25_560_TaskData *taskData);
static void ov25_560_GeneratePoketchButtonSprite(u16 *dst, u32 param1, int param2, int param3);
static void ov25_560_EndTask(PoketchTaskManager *taskMan);
static void ov25_560_SetupBackgroundTask(SysTask *task, void *taskMan);
static void ov25_560_screenRevealAnimationTask(SysTask *task, void *taskMan);
static void ov25_560_screenConcealAnimationTask(SysTask *task, void *taskMan);
static void ov25_560_UnusedTask_1(SysTask *task, void *taskMan);
static void ov25_560_UnusedTask_2(SysTask *task, void *taskMan);
static void ov25_560_LoadBtnTilemap(void *taskMan, u16 *src, int btnLocation);
static void ov25_560_UpBtnHalfPressed_Task(SysTask *task, void *taskMan);
static void ov25_560_DownBtnHalfPressed_Task(SysTask *task, void *taskMan);
static void ov25_560_UpBtnPressed_Task(SysTask *task, void *taskMan);
static void ov25_560_DownBtnPressed_Task(SysTask *task, void *taskMan);
static void ov25_560_UpBtnReleased_Task(SysTask *task, void *taskMan);
static void ov25_560_DownBtnReleased_Task(SysTask *task, void *taskMan);
static void ov25_560_LoadAppCounterTask(SysTask *task, void *taskMan);
static void ov25_560_UpdateAppCounterDigitsTask(SysTask *task, void *taskMan);
static void ov25_560_UnloadAppCounterAnimTask(SysTask *task, void *taskMan);
static void ov25_560_SetupAppCounterData(ov25_560_AppCounterAnimationData *appCounterAnim, Ov25_540_AnimationManager *animMan);
static void ov25_560_LoadAppCounter(Ov25_560_TaskData *taskData, ov25_560_AppCounterAnimationData *appCounterAnim);
static void ov25_560_LoadAppCounterPalette(Ov25_560_TaskData *taskData, u32 offset);
static void ov25_560_SetAppCounterDigits(ov25_560_AppCounterAnimationData *appCounterAnim, const Ov25_560_ConstTaskData *constTaskData);
static void ov25_560_UnloadAppCounterAnim(ov25_560_AppCounterAnimationData *appCounterAnim);
static void ov25_560_UnusedTask_3(SysTask *task, void *taskMan);
static void ov25_560_UnusedTask_4(SysTask *task, void *taskMan);
static void ov25_560_FreeTilemapBufferTask(SysTask *task, void *taskMan);
struct PoketchSystem *FieldSystem_GetPoketchSystem(void);
SysTask *SysTask_ExecuteAfterVBlank(SysTaskFunc callback, void *param, u32 priority);

BOOL ov25_560_Main(Ov25_560_TaskData **taskDataPtr, const Ov25_560_ConstTaskData *constTaskData, NNSG2dOamManagerInstance *oamMan, PoketchSystem *poketchSys)
{
    *taskDataPtr = Heap_AllocFromHeap(HEAP_ID_POKETCH_MAIN, sizeof(Ov25_560_TaskData));

    if (*taskDataPtr != NULL) {
        Ov25_560_TaskData *newTaskData = *taskDataPtr;

        newTaskData->oamMan = oamMan;
        NNS_G2dResetOamManagerBuffer(newTaskData->oamMan);
        newTaskData->animMan = ov25_540_SetupAnimationManager(newTaskData->oamMan, HEAP_ID_POKETCH_MAIN);

        if (newTaskData->animMan == NULL) {
            Heap_FreeToHeap(*taskDataPtr);
            *taskDataPtr = NULL;
            return FALSE;
        }

        newTaskData->constTaskData = constTaskData;
        newTaskData->bgConfig = BgConfig_New(HEAP_ID_POKETCH_MAIN);
        newTaskData->poketchSys = poketchSys;

        Poketch_InitPaletteData(newTaskData);
        ov25_560_SetupAppCounterData(&newTaskData->appCounterAnim, newTaskData->animMan);
        PoketchTask_InitActiveTaskList((*taskDataPtr)->taskList, OV25_NUM_TASK_SLOTS);

        ov25_560_GeneratePoketchButtonSprite((*taskDataPtr)->tilemapUpBtnPressed, 64 + 8, 4, 6);
        ov25_560_GeneratePoketchButtonSprite((*taskDataPtr)->tilemapUpBtnHalfPressed, 64 + 12, 4, 6);
        ov25_560_GeneratePoketchButtonSprite((*taskDataPtr)->tilemapUpBtn, 64 + 16, 4, 6);

        ov25_560_GeneratePoketchButtonSprite((*taskDataPtr)->tilemapDownBtnPressed, 64 + 20, 2, 4);
        ov25_560_GeneratePoketchButtonSprite((*taskDataPtr)->tilemapDownBtnHalfPressed, 64 + 24, 2, 4);
        ov25_560_GeneratePoketchButtonSprite((*taskDataPtr)->tilemapDownBtn, 64 + 28, 2, 4);

        newTaskData->task = SysTask_ExecuteAfterVBlank(ov25_560_TaskCallback, newTaskData, 0);

        return 1;
    }

    return 0;
}

static void ov25_560_TaskCallback(SysTask *task, void *data)
{
    Ov25_560_TaskData *taskData = data;
    ov25_540_UpdateAnimations(taskData->animMan);
}

Ov25_540_AnimationManager *Poketch_GetAnimationManager(void)
{
    Ov25_560_TaskData *taskData = PoketchSystem_GetTaskData();
    return taskData->animMan;
}

BgConfig *Poketch_GetBgConfig(void)
{
    Ov25_560_TaskData *taskData = PoketchSystem_GetTaskData();
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
    Ov25_560_TaskData *taskData = PoketchSystem_GetTaskData();
    Poketch *poketch = PoketchSystem_GetPoketchData(taskData->poketchSys);
    u32 screenColour = Poketch_CurrentScreenColor(poketch);

    GXS_LoadBGPltt(&taskData->poketchPalettes[screenColour * SLOTS_PER_PALETTE_COLOUR_SET], PLTT_OFFSET(bgOffset), PALETTE_SIZE_BYTES);
    GXS_LoadOBJPltt(&taskData->poketchPalettes[screenColour * SLOTS_PER_PALETTE_COLOUR_SET], objOffset, PALETTE_SIZE_BYTES);
}

void Poketch_LoadActiveBacklightPalette(u32, u32)
{
    Ov25_560_TaskData *taskData = PoketchSystem_GetTaskData();
    Poketch *poketch = PoketchSystem_GetPoketchData(taskData->poketchSys);
    u32 screenColour = Poketch_CurrentScreenColor(poketch);

    GXS_LoadBGPltt(&taskData->poketchPalettes[screenColour * SLOTS_PER_PALETTE_COLOUR_SET + BACKLIGHT_PALETTE_SLOT_OFFSET], 0, PALETTE_SIZE_BYTES);
    GXS_LoadOBJPltt(&taskData->poketchPalettes[screenColour * SLOTS_PER_PALETTE_COLOUR_SET + BACKLIGHT_PALETTE_SLOT_OFFSET], 0, PALETTE_SIZE_BYTES);
}

void Poketch_CopyActivePalette(u16 *dest)
{
    Ov25_560_TaskData *taskData = PoketchSystem_GetTaskData();
    Poketch *poketch = PoketchSystem_GetPoketchData(taskData->poketchSys);
    u32 screenColour = Poketch_CurrentScreenColor(poketch);

    MI_CpuCopy16(&taskData->poketchPalettes[screenColour * SLOTS_PER_PALETTE_COLOUR_SET], dest, PALETTE_SIZE_BYTES);
}

void ov25_560_Close(Ov25_560_TaskData *taskData)
{
    if (taskData) {
        ov25_560_UnloadAppCounterAnim(&(taskData->appCounterAnim));

        if (taskData->animMan) {
            ov25_540_FreeAnimationManager(taskData->animMan);
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

static void ov25_560_GeneratePoketchButtonSprite(u16 *dst, u32 param1, int param2, int param3)
{
    int x, y, pixleIdx;
    int v3;

    pixleIdx = 0;
    v3 = 0;

    for (y = 0; y < BTN_TILEMAP_HEIGHT; y++) {
        for (x = 0; x < BTN_TILEMAP_WIDTH; x++) {
            dst[pixleIdx] = (15 << 12) | (param1 + v3 + x);
            pixleIdx++;
        }

        if ((y >= param2) && (y < param3)) {
            (void)0;
        } else {
            v3 += 32;
        }
    }
}

static const PoketchTask poketchTasks[] = {
    { 0, ov25_560_SetupBackgroundTask, 0x0 },
    { 1, ov25_560_screenRevealAnimationTask, sizeof(Ov25_560_ExtraTaskData) },
    { 2, ov25_560_screenRevealAnimationTask, sizeof(Ov25_560_ExtraTaskData) },
    { 3, ov25_560_UnusedTask_1, sizeof(Ov25_560_ExtraTaskData) },
    { 4, ov25_560_screenConcealAnimationTask, sizeof(Ov25_560_ExtraTaskData) },
    { 5, ov25_560_UnusedTask_2, sizeof(Ov25_560_ExtraTaskData) },
    { 6, ov25_560_UpBtnHalfPressed_Task, 0x0 }, // * UP - Released - During app change
    { 8, ov25_560_UpBtnPressed_Task, 0x0 }, // * UP - Pressed
    { 7, ov25_560_UpBtnReleased_Task, 0x0 }, // * UP - Released
    { 9, ov25_560_DownBtnHalfPressed_Task, 0x0 }, // * DOWN - Released - During app change
    { 11, ov25_560_DownBtnPressed_Task, 0x0 }, // * DOWN - Pressed
    { 10, ov25_560_DownBtnReleased_Task, 0x0 }, // * DOWN - Released
    { 12, ov25_560_LoadAppCounterTask, 0x0 },
    { 13, ov25_560_UpdateAppCounterDigitsTask, 0x0 },
    { 14, ov25_560_UnloadAppCounterAnimTask, 0x0 },
    { 15, ov25_560_UnusedTask_3, 0x0 },
    { 16, ov25_560_UnusedTask_4, 0x0 },
    { 17, ov25_560_FreeTilemapBufferTask, 0x0 },
    { POKETCH_EMPTY_TASK, NULL, 0x0 }
};

void ov25_560_StartTask(Ov25_560_TaskData *taskData, u32 taskId)
{
    PoketchTask_Start(poketchTasks, taskId, taskData, taskData->constTaskData, taskData->taskList, 2, HEAP_ID_POKETCH_MAIN);
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

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, 14, taskData->bgConfig, 4, 64, 0, TRUE, HEAP_ID_POKETCH_MAIN);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, 15, taskData->bgConfig, 4, 0, 0, TRUE, HEAP_ID_POKETCH_MAIN);
    Graphics_LoadPaletteWithSrcOffset(NARC_INDEX_GRAPHIC__POKETCH, 13, PAL_LOAD_SUB_BG, PLTT_OFFSET(PoketchSystem_GetBorderColor(taskData->poketchSys)), PLTT_OFFSET(15), PALETTE_SIZE_BYTES, HEAP_ID_POKETCH_MAIN);

    Bg_FillTilemapRect(taskData->bgConfig, 5, 64 + 164, 0, 0, 32, 24, 15);
    Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, 5);

    GXS_SetVisiblePlane(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_OBJ);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);

    ov25_560_EndTask(taskMan);
}

static void ov25_560_screenRevealAnimationTask(SysTask *task, void *taskMan)
{
    Ov25_560_ExtraTaskData *extraTaskData = PoketchTask_GetExtraData(taskMan);
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);
    u32 state = PoketchTask_GetState(taskMan);

    switch (state) {
    case 0:
        extraTaskData->iterationTracker = 0;
        extraTaskData->heightCounter = 0;
        PoketchTask_IncrementState(taskMan);
    case 1:
        if (++(extraTaskData->iterationTracker) > 0) {
            u32 height, heightRemainder, y;

            extraTaskData->iterationTracker = 0;
            extraTaskData->heightCounter += 12;

            if (extraTaskData->heightCounter > 40) {
                extraTaskData->heightCounter = 40;
            }

            height = extraTaskData->heightCounter / 4;
            heightRemainder = extraTaskData->heightCounter % 4;
            y = 12 - height;

            Bg_FillTilemapRect(taskData->bgConfig, 5, 64, 2, y, 24, height * 2, 15);

            if (heightRemainder) {
                Bg_FillTilemapRect(taskData->bgConfig, 5, 64 + 164 + heightRemainder, 2, y - 1, 24, 1, 15);
                Bg_FillTilemapRect(taskData->bgConfig, 5, 64 + 164 - heightRemainder, 2, y + height * 2, 24, 1, 15);
            }

            Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, 5);

            if (extraTaskData->heightCounter == 40) {
                PoketchTask_IncrementState(taskMan);
            }
        }
        break;
    case 2:
        ov25_560_EndTask(taskMan);
    }
}

static void ov25_560_screenConcealAnimationTask(SysTask *task, void *taskMan)
{
    Ov25_560_ExtraTaskData *extraTaskData = PoketchTask_GetExtraData(taskMan);
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);
    u32 state = PoketchTask_GetState(taskMan);

    switch (state) {
    case 0:
        extraTaskData->iterationTracker = 0;
        extraTaskData->heightCounter = 0;
        PoketchTask_IncrementState(taskMan);
    case 1:
        if (++(extraTaskData->iterationTracker) > 0) {
            u32 height, heightRemainder, y;

            extraTaskData->iterationTracker = 0;
            extraTaskData->heightCounter += 8;

            if (extraTaskData->heightCounter > 40) {
                extraTaskData->heightCounter = 40;
            }

            height = extraTaskData->heightCounter / 4;
            heightRemainder = extraTaskData->heightCounter % 4;
            y = 22 - height;

            Bg_FillTilemapRect(taskData->bgConfig, 5, 64 + 164, 2, 2, 24, height, 15);
            Bg_FillTilemapRect(taskData->bgConfig, 5, 64 + 164, 2, y, 24, height, 15);

            if (heightRemainder) {
                heightRemainder--;

                Bg_FillTilemapRect(taskData->bgConfig, 5, 64 + 167 - heightRemainder, 2, 0, 24, 1, 15);
                Bg_FillTilemapRect(taskData->bgConfig, 5, 64 + 161 + heightRemainder, 2, y - 1, 24, 1, 15);
            }

            Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, 5);

            if (extraTaskData->heightCounter == 40) {
                PoketchTask_IncrementState(taskMan);
            }
        }
        break;
    case 2:
        ov25_560_EndTask(taskMan);
    }
}

static void ov25_560_UnusedTask_1(SysTask *task, void *taskMan)
{
    Ov25_560_ExtraTaskData *extraTaskData = PoketchTask_GetExtraData(taskMan);
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);
    u32 state = PoketchTask_GetState(taskMan);

    if (state < 4) {
        Bg_FillTilemapRect(taskData->bgConfig, 5, 64 + 164 - state - 1, 2, 2, 24, 20, 15);
        Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, 5);
        PoketchTask_IncrementState(taskMan);
    } else {
        ov25_560_EndTask(taskMan);
    }
}

static void ov25_560_UnusedTask_2(SysTask *task, void *taskMan)
{
    Ov25_560_ExtraTaskData *extraTaskData = PoketchTask_GetExtraData(taskMan);
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);
    u32 state = PoketchTask_GetState(taskMan);

    if (state < 4) {
        Bg_FillTilemapRect(taskData->bgConfig, 5, 64 + 167 - state, 2, 2, 24, 20, 15);
        Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, 5);
        PoketchTask_IncrementState(taskMan);
    } else {
        ov25_560_EndTask(taskMan);
    }
}

static void ov25_560_LoadBtnTilemap(void *taskMan, u16 *src, int btnLocation)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);
    int x, y;

    if (btnLocation == UP_BTN) {
        x = 28;
        y = 4;
    } else {
        x = 28;
        y = 12;
    }

    Bg_LoadToTilemapRect(taskData->bgConfig, 4, src, x, y, BTN_TILEMAP_WIDTH, BTN_TILEMAP_HEIGHT);
    Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, 4);

    ov25_560_EndTask(taskMan);
}

static void ov25_560_UpBtnHalfPressed_Task(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    ov25_560_LoadBtnTilemap(taskMan, taskData->tilemapUpBtnHalfPressed, UP_BTN);
    Sound_PlayEffect(SEQ_SE_DP_DENSI04);
}

static void ov25_560_DownBtnHalfPressed_Task(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    ov25_560_LoadBtnTilemap(taskMan, taskData->tilemapDownBtnHalfPressed, DOWN_BTN);
    Sound_PlayEffect(SEQ_SE_DP_DENSI04);
}

static void ov25_560_UpBtnPressed_Task(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    ov25_560_LoadBtnTilemap(taskMan, taskData->tilemapUpBtnPressed, UP_BTN);
}

static void ov25_560_DownBtnPressed_Task(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    ov25_560_LoadBtnTilemap(taskMan, taskData->tilemapDownBtnPressed, DOWN_BTN);
}

static void ov25_560_UpBtnReleased_Task(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    ov25_560_LoadBtnTilemap(taskMan, taskData->tilemapUpBtn, UP_BTN);
    Sound_PlayEffect(SEQ_SE_DP_DENSI01);
}

static void ov25_560_DownBtnReleased_Task(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    ov25_560_LoadBtnTilemap(taskMan, taskData->tilemapDownBtn, DOWN_BTN);
    Sound_PlayEffect(SEQ_SE_DP_DENSI01);
}

static void ov25_560_LoadAppCounterTask(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    ov25_560_LoadAppCounter(taskData, &taskData->appCounterAnim);
    ov25_560_SetAppCounterDigits(&taskData->appCounterAnim, taskData->constTaskData);
    ov25_560_EndTask(taskMan);
}

static void ov25_560_UpdateAppCounterDigitsTask(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    ov25_560_SetAppCounterDigits(&taskData->appCounterAnim, taskData->constTaskData);
    ov25_560_EndTask(taskMan);
}

static void ov25_560_UnloadAppCounterAnimTask(SysTask *task, void *taskMan)
{
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    ov25_560_UnloadAppCounterAnim(&taskData->appCounterAnim);
    ov25_560_EndTask(taskMan);
}

static void ov25_560_SetupAppCounterData(ov25_560_AppCounterAnimationData *appCounterAnim, Ov25_540_AnimationManager *animMan)
{
    appCounterAnim->animationLoaded = FALSE;
    appCounterAnim->animMan = animMan;
}

static void ov25_560_LoadAppCounter(Ov25_560_TaskData *taskData, ov25_560_AppCounterAnimationData *appCounterAnim)
{
    if (ov25_540_LoadSpriteFromNARC(&appCounterAnim->spriteData, NARC_INDEX_GRAPHIC__POKETCH, 3, 4, HEAP_ID_POKETCH_MAIN)) {
        static const ov25_AnimationData animData = {
            { (176 << FX32_SHIFT), (40 << FX32_SHIFT) },
            0,
            0,
            0,
            0,
            0
        };

        Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, 2, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_MAIN);
        Graphics_LoadPalette(NARC_INDEX_GRAPHIC__POKETCH, 0, PAL_LOAD_SUB_OBJ, 0, 0x60, HEAP_ID_POKETCH_MAIN);

        ov25_560_LoadAppCounterPalette(taskData, 15);

        appCounterAnim->animatedDigits[0] = ov25_540_SetupNewAnimatedSprite(appCounterAnim->animMan, &animData, &appCounterAnim->spriteData);

        if (appCounterAnim->animatedDigits[0] == NULL) {
            return;
        }

        appCounterAnim->animatedDigits[1] = ov25_540_SetupNewAnimatedSprite(appCounterAnim->animMan, &animData, &appCounterAnim->spriteData);

        if (appCounterAnim->animatedDigits[1] == NULL) {
            ov25_540_RemoveAnimatedSprite(appCounterAnim->animMan, appCounterAnim->animatedDigits[0]);
            return;
        }

        ov25_540_TranslateSprite(appCounterAnim->animatedDigits[1], 16 * FX32_ONE, 0);
        ov25_540_SetCParam(appCounterAnim->animatedDigits[0], 15);
        ov25_540_SetCParam(appCounterAnim->animatedDigits[1], 15);

        appCounterAnim->animationLoaded = TRUE;
    }
}

static void ov25_560_LoadAppCounterPalette(Ov25_560_TaskData *taskData, u32 offset)
{
    Poketch *poketch = PoketchSystem_GetPoketchData(taskData->poketchSys);
    u32 screenColour = Poketch_CurrentScreenColor(poketch);

    Poketch_CopyActivePalette(taskData->palette);

    {
        u16 paletteTmp = taskData->palette[1];
        taskData->palette[1] = (taskData->palette[4]);
        taskData->palette[4] = paletteTmp;
    }

    {
        u16 paletteTmp = (taskData->palette[8]);
        taskData->palette[8] = taskData->palette[15];
        taskData->palette[15] = paletteTmp;
    }

    DC_FlushRange(taskData->palette, sizeof(taskData->palette));
    GXS_LoadOBJPltt(taskData->palette, PLTT_OFFSET(offset), sizeof(taskData->palette));
}

static void ov25_560_SetAppCounterDigits(ov25_560_AppCounterAnimationData *appCounterAnim, const Ov25_560_ConstTaskData *constTaskData)
{
    if (appCounterAnim->animationLoaded) {
        u32 tensDigit, onesDigit;

        CP_SetDiv32_32((constTaskData->lastAppID + 1), 10);

        tensDigit = CP_GetDivResult32();
        onesDigit = CP_GetDivRemainder32();

        ov25_540_UpdateAnimationIdx(appCounterAnim->animatedDigits[0], tensDigit);
        ov25_540_UpdateAnimationIdx(appCounterAnim->animatedDigits[1], onesDigit);
    }
}

static void ov25_560_UnloadAppCounterAnim(ov25_560_AppCounterAnimationData *appCounterAnim)
{
    if (appCounterAnim->animationLoaded) {
        ov25_540_RemoveAnimatedSprite(appCounterAnim->animMan, appCounterAnim->animatedDigits[0]);
        ov25_540_RemoveAnimatedSprite(appCounterAnim->animMan, appCounterAnim->animatedDigits[1]);
        ov25_540_FreeSpriteData(&appCounterAnim->spriteData);

        appCounterAnim->animationLoaded = FALSE;
    }
}

static void ov25_560_UnusedTask_3(SysTask *task, void *taskMan)
{
    u32 state;
    Ov25_560_TaskData *taskData = PoketchTask_GetTaskData(taskMan);
    Ov25_560_ExtraTaskData *extraTaskData = PoketchTask_GetExtraData(taskMan);
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

static void ov25_560_UnusedTask_4(SysTask *task, void *taskMan)
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
