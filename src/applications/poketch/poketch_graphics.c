#include "applications/poketch/poketch_graphics.h"

#include <nitro.h>
#include <string.h>

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "palette.h"
#include "poketch.h"
#include "sound_playback.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#include "res/graphics/poketch/poketch.naix"

/*
The poketch palette file contains 16 pallets of 16 colors each.
These are grouped into 8 themes, with each theme containing 2 palettes.
*/
#define NUM_PALETTES                   16
#define NUM_PALETTES_PER_POKETCH_THEME 2
#define NUM_POKETCH_THEMES             (NUM_PALETTES / NUM_PALETTES_PER_POKETCH_THEME)
#define SLOTS_PER_POKETCH_THEME        (SLOTS_PER_PALETTE * NUM_PALETTES_PER_POKETCH_THEME)
#define BACKLIGHT_PALETTE_SLOT_OFFSET  (SLOTS_PER_PALETTE)

#define NUM_TASK_SLOTS 8

#define BUTTON_TILEMAP_WIDTH  4
#define BUTTON_TILEMAP_HEIGHT 8
#define BUTTON_TILEMAP_SIZE   (BUTTON_TILEMAP_WIDTH * BUTTON_TILEMAP_HEIGHT)

#define TENS_DIGIT_IDX 0
#define ONES_DIGIT_IDX 1

#define GENERATE_UP_BUTTON_SPRITE(__dst, __value)   PoketchGraphics_GeneratePoketchButtonSprite((__dst), 64 + (__value), 4, 6)
#define GENERATE_DOWN_BUTTON_SPRITE(__dst, __value) PoketchGraphics_GeneratePoketchButtonSprite((__dst), 64 + (__value), 2, 4)

typedef struct PoketchGraphics_AppCounterAnimationData {
    BOOL animationLoaded;
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_SpriteData spriteData;
    PoketchAnimation_AnimatedSpriteData *animatedDigits[2];
} PoketchGraphics_AppCounterAnimationData;

struct PoketchGraphics_TaskData {
    const PoketchGraphics_ConstTaskData *constTaskData;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + NUM_TASK_SLOTS];
    u16 tilemapUpBtnPressed[BUTTON_TILEMAP_SIZE];
    u16 tilemapUpBtnHalfPressed[BUTTON_TILEMAP_SIZE];
    u16 tilemapUpBtn[BUTTON_TILEMAP_SIZE];
    u16 tilemapDownBtnPressed[BUTTON_TILEMAP_SIZE];
    u16 tilemapDownBtnHalfPressed[BUTTON_TILEMAP_SIZE];
    u16 tilemapDownBtn[BUTTON_TILEMAP_SIZE];
    NNSG2dOamManagerInstance unused;
    NNSG2dOamManagerInstance *oamMan;
    PoketchAnimation_AnimationManager *animMan;
    SysTask *task;
    PoketchGraphics_AppCounterAnimationData appCounterAnim;
    BgConfig *bgConfig;
    PoketchSystem *poketchSys;
    u16 poketchPalettes[NUM_POKETCH_THEMES * SLOTS_PER_POKETCH_THEME];
    u16 palette[SLOTS_PER_PALETTE];
};

typedef struct PoketchGraphics_ExtraTaskData {
    u16 iterationTracker;
    u16 heightCounter;
} PoketchGraphics_ExtraTaskData;

static void PoketchGraphics_TaskCallback(SysTask *task, void *data);
static void PoketchGraphics_InitPaletteData(PoketchGraphics_TaskData *taskData);
static void PoketchGraphics_GeneratePoketchButtonSprite(u16 *dst, u32 param1, int param2, int param3);
static void PoketchGraphics_EndTask(PoketchTaskManager *taskMan);
static void PoketchGraphics_SetupBackgroundTask(SysTask *task, void *taskMan);
static void PoketchGraphics_screenRevealAnimationTask(SysTask *task, void *taskMan);
static void PoketchGraphics_screenConcealAnimationTask(SysTask *task, void *taskMan);
static void PoketchGraphics_UnusedTask_1(SysTask *task, void *taskMan);
static void PoketchGraphics_UnusedTask_2(SysTask *task, void *taskMan);
static void PoketchGraphics_LoadBtnTilemap(void *taskMan, u16 *src, enum ButtonDir btnLocation);
static void PoketchGraphics_UpBtnHalfPressed_Task(SysTask *task, void *taskMan);
static void PoketchGraphics_DownBtnHalfPressed_Task(SysTask *task, void *taskMan);
static void PoketchGraphics_UpBtnPressed_Task(SysTask *task, void *taskMan);
static void PoketchGraphics_DownBtnPressed_Task(SysTask *task, void *taskMan);
static void PoketchGraphics_UpBtnReleased_Task(SysTask *task, void *taskMan);
static void PoketchGraphics_DownBtnReleased_Task(SysTask *task, void *taskMan);
static void PoketchGraphics_LoadAppCounterTask(SysTask *task, void *taskMan);
static void PoketchGraphics_UpdateAppCounterDigitsTask(SysTask *task, void *taskMan);
static void PoketchGraphics_UnloadAppCounterAnimTask(SysTask *task, void *taskMan);
static void PoketchGraphics_SetupAppCounterData(PoketchGraphics_AppCounterAnimationData *appCounterAnim, PoketchAnimation_AnimationManager *animMan);
static void PoketchGraphics_LoadAppCounter(PoketchGraphics_TaskData *taskData, PoketchGraphics_AppCounterAnimationData *appCounterAnim);
static void PoketchGraphics_LoadAppCounterPalette(PoketchGraphics_TaskData *taskData, u32 offset);
static void PoketchGraphics_SetAppCounterDigits(PoketchGraphics_AppCounterAnimationData *appCounterAnim, const PoketchGraphics_ConstTaskData *constTaskData);
static void PoketchGraphics_UnloadAppCounterAnim(PoketchGraphics_AppCounterAnimationData *appCounterAnim);
static void PoketchGraphics_UnusedTask_3(SysTask *task, void *taskMan);
static void PoketchGraphics_UnusedTask_4(SysTask *task, void *taskMan);
static void PoketchGraphics_FreeTilemapBufferTask(SysTask *task, void *taskMan);

BOOL PoketchGraphics_Main(PoketchGraphics_TaskData **taskDataPtr, const PoketchGraphics_ConstTaskData *constTaskData, NNSG2dOamManagerInstance *oamMan, PoketchSystem *poketchSys)
{
    *taskDataPtr = Heap_Alloc(HEAP_ID_POKETCH_MAIN, sizeof(PoketchGraphics_TaskData));

    if (*taskDataPtr != NULL) {
        PoketchGraphics_TaskData *newTaskData = *taskDataPtr;

        newTaskData->oamMan = oamMan;
        NNS_G2dResetOamManagerBuffer(newTaskData->oamMan);
        newTaskData->animMan = PoketchAnimation_SetupAnimationManager(newTaskData->oamMan, HEAP_ID_POKETCH_MAIN);

        if (newTaskData->animMan == NULL) {
            Heap_Free(*taskDataPtr);
            *taskDataPtr = NULL;
            return FALSE;
        }

        newTaskData->constTaskData = constTaskData;
        newTaskData->bgConfig = BgConfig_New(HEAP_ID_POKETCH_MAIN);
        newTaskData->poketchSys = poketchSys;

        PoketchGraphics_InitPaletteData(newTaskData);
        PoketchGraphics_SetupAppCounterData(&newTaskData->appCounterAnim, newTaskData->animMan);
        PoketchTask_InitActiveTaskList((*taskDataPtr)->activeTasks, NUM_TASK_SLOTS);

        GENERATE_UP_BUTTON_SPRITE((*taskDataPtr)->tilemapUpBtnPressed, 8);
        GENERATE_UP_BUTTON_SPRITE((*taskDataPtr)->tilemapUpBtnHalfPressed, 12);
        GENERATE_UP_BUTTON_SPRITE((*taskDataPtr)->tilemapUpBtn, 16);

        GENERATE_DOWN_BUTTON_SPRITE((*taskDataPtr)->tilemapDownBtnPressed, 20);
        GENERATE_DOWN_BUTTON_SPRITE((*taskDataPtr)->tilemapDownBtnHalfPressed, 24);
        GENERATE_DOWN_BUTTON_SPRITE((*taskDataPtr)->tilemapDownBtn, 28);

        newTaskData->task = SysTask_ExecuteAfterVBlank(PoketchGraphics_TaskCallback, newTaskData, 0);

        return TRUE;
    }

    return FALSE;
}

static void PoketchGraphics_TaskCallback(SysTask *task, void *data)
{
    PoketchGraphics_TaskData *taskData = data;
    PoketchAnimation_UpdateAnimations(taskData->animMan);
}

PoketchAnimation_AnimationManager *PoketchGraphics_GetAnimationManager(void)
{
    PoketchGraphics_TaskData *taskData = PoketchSystem_GetTaskData();
    return taskData->animMan;
}

BgConfig *PoketchGraphics_GetBgConfig(void)
{
    PoketchGraphics_TaskData *taskData = PoketchSystem_GetTaskData();
    return taskData->bgConfig;
}

static void PoketchGraphics_InitPaletteData(PoketchGraphics_TaskData *taskData)
{
    NNSG2dPaletteData *paletteData;

    void *poketchPalettes = Graphics_GetPlttData(NARC_INDEX_GRAPHIC__POKETCH, generic_bg_tiles_NCLR, &paletteData, HEAP_ID_POKETCH_MAIN);

    if (poketchPalettes) {
        MI_CpuCopy32(paletteData->pRawData, taskData->poketchPalettes, NUM_PALETTES * PALETTE_SIZE_BYTES);
        DC_FlushRange(taskData->poketchPalettes, NUM_PALETTES * PALETTE_SIZE_BYTES);
        Heap_Free(poketchPalettes);
    }
}

void PoketchGraphics_LoadActivePalette(u32 bgOffset, u32 objOffset)
{
    PoketchGraphics_TaskData *taskData = PoketchSystem_GetTaskData();
    Poketch *poketch = PoketchSystem_GetPoketchData(taskData->poketchSys);
    u32 screenColour = Poketch_CurrentScreenColor(poketch);

    GXS_LoadBGPltt(&taskData->poketchPalettes[screenColour * SLOTS_PER_POKETCH_THEME], PLTT_OFFSET(bgOffset), PALETTE_SIZE_BYTES);
    GXS_LoadOBJPltt(&taskData->poketchPalettes[screenColour * SLOTS_PER_POKETCH_THEME], objOffset, PALETTE_SIZE_BYTES);
}

void PoketchGraphics_LoadActiveBacklightPalette(u32, u32)
{
    PoketchGraphics_TaskData *taskData = PoketchSystem_GetTaskData();
    Poketch *poketch = PoketchSystem_GetPoketchData(taskData->poketchSys);
    u32 screenColour = Poketch_CurrentScreenColor(poketch);

    GXS_LoadBGPltt(&taskData->poketchPalettes[screenColour * SLOTS_PER_POKETCH_THEME + BACKLIGHT_PALETTE_SLOT_OFFSET], 0, PALETTE_SIZE_BYTES);
    GXS_LoadOBJPltt(&taskData->poketchPalettes[screenColour * SLOTS_PER_POKETCH_THEME + BACKLIGHT_PALETTE_SLOT_OFFSET], 0, PALETTE_SIZE_BYTES);
}

void PoketchGraphics_CopyActivePalette(u16 *dest)
{
    PoketchGraphics_TaskData *taskData = PoketchSystem_GetTaskData();
    Poketch *poketch = PoketchSystem_GetPoketchData(taskData->poketchSys);
    u32 screenColour = Poketch_CurrentScreenColor(poketch);

    MI_CpuCopy16(&taskData->poketchPalettes[screenColour * SLOTS_PER_POKETCH_THEME], dest, PALETTE_SIZE_BYTES);
}

void PoketchGraphics_Close(PoketchGraphics_TaskData *taskData)
{
    if (taskData) {
        PoketchGraphics_UnloadAppCounterAnim(&(taskData->appCounterAnim));

        if (taskData->animMan) {
            PoketchAnimation_FreeAnimationManager(taskData->animMan);
        }

        if (taskData->bgConfig) {
            Heap_Free(taskData->bgConfig);
        }

        if (taskData->task) {
            SysTask_Done(taskData->task);
        }

        Heap_Free(taskData);
    }
}

static void PoketchGraphics_GeneratePoketchButtonSprite(u16 *dst, u32 param1, int param2, int param3)
{
    int x, y, pixleIdx;
    int v3;

    pixleIdx = 0;
    v3 = 0;

    for (y = 0; y < BUTTON_TILEMAP_HEIGHT; y++) {
        for (x = 0; x < BUTTON_TILEMAP_WIDTH; x++) {
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

// clang-format off
static const PoketchTask poketchTasks[] = {
    { TASK_SETUP_BACKGROUND,   PoketchGraphics_SetupBackgroundTask,        NULL },
    { TASK_REVEAL_SCREEN_1,    PoketchGraphics_screenRevealAnimationTask,  sizeof(PoketchGraphics_ExtraTaskData) },
    { TASK_REVEAL_SCREEN_2,    PoketchGraphics_screenRevealAnimationTask,  sizeof(PoketchGraphics_ExtraTaskData) },
    { TASK_UNUSED_1,           PoketchGraphics_UnusedTask_1,               sizeof(PoketchGraphics_ExtraTaskData) },
    { TASK_CONCEAL_SCREEN,     PoketchGraphics_screenConcealAnimationTask, sizeof(PoketchGraphics_ExtraTaskData) },
    { TASK_UNUSED_2,           PoketchGraphics_UnusedTask_2,               sizeof(PoketchGraphics_ExtraTaskData) },
    { TASK_UP_HALF_PRESSED,    PoketchGraphics_UpBtnHalfPressed_Task,      NULL },
    { TASK_UP_PRESSED,         PoketchGraphics_UpBtnPressed_Task,          NULL },
    { TASK_UP_RELEASED,        PoketchGraphics_UpBtnReleased_Task,         NULL },
    { TASK_DOWN_HALF_PRESSED,  PoketchGraphics_DownBtnHalfPressed_Task,    NULL },
    { TASK_DOWN_PRESSED,       PoketchGraphics_DownBtnPressed_Task,        NULL },
    { TASK_DOWN_RELEASED,      PoketchGraphics_DownBtnReleased_Task,       NULL },
    { TASK_LOAD_APP_COUNTER,   PoketchGraphics_LoadAppCounterTask,         NULL },
    { TASK_UPDATE_APP_COUNTER, PoketchGraphics_UpdateAppCounterDigitsTask, NULL },
    { TASK_UNLOAD_APP_COUNTER, PoketchGraphics_UnloadAppCounterAnimTask,   NULL },
    { TASK_UNUSED_3,           PoketchGraphics_UnusedTask_3,               NULL },
    { TASK_UNUSED_4,           PoketchGraphics_UnusedTask_4,               NULL },
    { TASK_FREE_TILEMAP,       PoketchGraphics_FreeTilemapBufferTask,      NULL },
    { POKETCH_EMPTY_TASK,      NULL,                                       NULL }
};
// clang-format on

void PoketchGraphics_StartTask(PoketchGraphics_TaskData *taskData, u32 taskId)
{
    PoketchTask_Start(poketchTasks, taskId, taskData, taskData->constTaskData, taskData->activeTasks, 2, HEAP_ID_POKETCH_MAIN);
}

BOOL PoketchGraphics_TaskIsNotActive(PoketchGraphics_TaskData *taskData, u32 taskId)
{
    return PoketchTask_TaskIsNotActive(taskData->activeTasks, taskId);
}

BOOL PoketchGraphics_NoActiveTasks(PoketchGraphics_TaskData *taskData)
{
    return PoketchTask_NoActiveTasks(taskData->activeTasks);
}

static void PoketchGraphics_EndTask(PoketchTaskManager *taskMan)
{
    PoketchGraphics_TaskData *taskData = PoketchTask_GetTaskData(taskMan);
    PoketchTask_EndTask(taskData->activeTasks, taskMan);
}

static void PoketchGraphics_SetupBackgroundTask(SysTask *task, void *taskMan)
{
    static const BgTemplate bgTemplateLayer4 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x824,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = (GX_BG_SCRBASE_0x6000),
        .charBase = (GX_BG_CHARBASE_0x04000),
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE
    };

    static const BgTemplate bgTemplateLayer5 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = (GX_BG_SCRBASE_0x6800),
        .charBase = (GX_BG_CHARBASE_0x04000),
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE
    };

    PoketchGraphics_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    GXS_SetGraphicsMode(GX_BGMODE_0);
    GX_SetBankForSubBG(GX_VRAM_SUB_BG_32_H);
    GX_SetBankForSubOBJ(GX_VRAM_SUB_OBJ_16_I);
    GXS_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);

    GXLayers_DisableEngineBLayers();
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    Bg_InitFromTemplate(taskData->bgConfig, BG_LAYER_SUB_0, &bgTemplateLayer4, BG_TYPE_STATIC);
    Bg_InitFromTemplate(taskData->bgConfig, BG_LAYER_SUB_1, &bgTemplateLayer5, BG_TYPE_STATIC);

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, poketch_border_NCGR_lz, taskData->bgConfig, BG_LAYER_SUB_0, 64, 0, TRUE, HEAP_ID_POKETCH_MAIN);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, poketch_border_NSCR_lz, taskData->bgConfig, BG_LAYER_SUB_0, 0, 0, TRUE, HEAP_ID_POKETCH_MAIN);
    Graphics_LoadPaletteWithSrcOffset(NARC_INDEX_GRAPHIC__POKETCH, poketch_border_NCLR, PAL_LOAD_SUB_BG, PLTT_OFFSET(PoketchSystem_GetBorderColor(taskData->poketchSys)), PLTT_OFFSET(15), PALETTE_SIZE_BYTES, HEAP_ID_POKETCH_MAIN);

    Bg_FillTilemapRect(taskData->bgConfig, BG_LAYER_SUB_1, 64 + 164, 0, 0, 32, 24, PLTT_15);
    Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, BG_LAYER_SUB_1);

    GXS_SetVisiblePlane(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_OBJ);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);

    PoketchGraphics_EndTask(taskMan);
}

static void PoketchGraphics_screenRevealAnimationTask(SysTask *task, void *taskMan)
{
    PoketchGraphics_ExtraTaskData *extraTaskData = PoketchTask_GetExtraData(taskMan);
    PoketchGraphics_TaskData *taskData = PoketchTask_GetTaskData(taskMan);
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

            Bg_FillTilemapRect(taskData->bgConfig, BG_LAYER_SUB_1, 64, 2, y, 24, height * 2, PLTT_15);

            if (heightRemainder) {
                Bg_FillTilemapRect(taskData->bgConfig, BG_LAYER_SUB_1, 64 + 164 + heightRemainder, 2, y - 1, 24, 1, PLTT_15);
                Bg_FillTilemapRect(taskData->bgConfig, BG_LAYER_SUB_1, 64 + 164 - heightRemainder, 2, y + height * 2, 24, 1, PLTT_15);
            }

            Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, BG_LAYER_SUB_1);

            if (extraTaskData->heightCounter == 40) {
                PoketchTask_IncrementState(taskMan);
            }
        }
        break;
    case 2:
        PoketchGraphics_EndTask(taskMan);
    }
}

static void PoketchGraphics_screenConcealAnimationTask(SysTask *task, void *taskMan)
{
    PoketchGraphics_ExtraTaskData *extraTaskData = PoketchTask_GetExtraData(taskMan);
    PoketchGraphics_TaskData *taskData = PoketchTask_GetTaskData(taskMan);
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

            Bg_FillTilemapRect(taskData->bgConfig, BG_LAYER_SUB_1, 64 + 164, 2, 2, 24, height, PLTT_15);
            Bg_FillTilemapRect(taskData->bgConfig, BG_LAYER_SUB_1, 64 + 164, 2, y, 24, height, PLTT_15);

            if (heightRemainder) {
                heightRemainder--;

                Bg_FillTilemapRect(taskData->bgConfig, BG_LAYER_SUB_1, 64 + 167 - heightRemainder, 2, 0, 24, 1, PLTT_15);
                Bg_FillTilemapRect(taskData->bgConfig, BG_LAYER_SUB_1, 64 + 161 + heightRemainder, 2, y - 1, 24, 1, PLTT_15);
            }

            Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, BG_LAYER_SUB_1);

            if (extraTaskData->heightCounter == 40) {
                PoketchTask_IncrementState(taskMan);
            }
        }
        break;
    case 2:
        PoketchGraphics_EndTask(taskMan);
    }
}

static void PoketchGraphics_UnusedTask_1(SysTask *task, void *taskMan)
{
    PoketchGraphics_ExtraTaskData *extraTaskData = PoketchTask_GetExtraData(taskMan);
    PoketchGraphics_TaskData *taskData = PoketchTask_GetTaskData(taskMan);
    u32 state = PoketchTask_GetState(taskMan);

    if (state < 4) {
        Bg_FillTilemapRect(taskData->bgConfig, BG_LAYER_SUB_1, 64 + 164 - state - 1, 2, 2, 24, 20, PLTT_15);
        Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, BG_LAYER_SUB_1);
        PoketchTask_IncrementState(taskMan);
    } else {
        PoketchGraphics_EndTask(taskMan);
    }
}

static void PoketchGraphics_UnusedTask_2(SysTask *task, void *taskMan)
{
    PoketchGraphics_ExtraTaskData *extraTaskData = PoketchTask_GetExtraData(taskMan);
    PoketchGraphics_TaskData *taskData = PoketchTask_GetTaskData(taskMan);
    u32 state = PoketchTask_GetState(taskMan);

    if (state < 4) {
        Bg_FillTilemapRect(taskData->bgConfig, BG_LAYER_SUB_1, 64 + 167 - state, 2, 2, 24, 20, PLTT_15);
        Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, BG_LAYER_SUB_1);
        PoketchTask_IncrementState(taskMan);
    } else {
        PoketchGraphics_EndTask(taskMan);
    }
}

static void PoketchGraphics_LoadBtnTilemap(void *taskMan, u16 *src, enum ButtonDir btnLocation)
{
    PoketchGraphics_TaskData *taskData = PoketchTask_GetTaskData(taskMan);
    int x, y;

    if (btnLocation == BUTTON_UP) {
        x = 28;
        y = 4;
    } else {
        x = 28;
        y = 12;
    }

    Bg_LoadToTilemapRect(taskData->bgConfig, BG_LAYER_SUB_0, src, x, y, BUTTON_TILEMAP_WIDTH, BUTTON_TILEMAP_HEIGHT);
    Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, BG_LAYER_SUB_0);

    PoketchGraphics_EndTask(taskMan);
}

static void PoketchGraphics_UpBtnHalfPressed_Task(SysTask *task, void *taskMan)
{
    PoketchGraphics_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    PoketchGraphics_LoadBtnTilemap(taskMan, taskData->tilemapUpBtnHalfPressed, BUTTON_UP);
    Sound_PlayEffect(SEQ_SE_DP_DENSI04);
}

static void PoketchGraphics_DownBtnHalfPressed_Task(SysTask *task, void *taskMan)
{
    PoketchGraphics_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    PoketchGraphics_LoadBtnTilemap(taskMan, taskData->tilemapDownBtnHalfPressed, BUTTON_DOWN);
    Sound_PlayEffect(SEQ_SE_DP_DENSI04);
}

static void PoketchGraphics_UpBtnPressed_Task(SysTask *task, void *taskMan)
{
    PoketchGraphics_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    PoketchGraphics_LoadBtnTilemap(taskMan, taskData->tilemapUpBtnPressed, BUTTON_UP);
}

static void PoketchGraphics_DownBtnPressed_Task(SysTask *task, void *taskMan)
{
    PoketchGraphics_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    PoketchGraphics_LoadBtnTilemap(taskMan, taskData->tilemapDownBtnPressed, BUTTON_DOWN);
}

static void PoketchGraphics_UpBtnReleased_Task(SysTask *task, void *taskMan)
{
    PoketchGraphics_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    PoketchGraphics_LoadBtnTilemap(taskMan, taskData->tilemapUpBtn, BUTTON_UP);
    Sound_PlayEffect(SEQ_SE_DP_DENSI01);
}

static void PoketchGraphics_DownBtnReleased_Task(SysTask *task, void *taskMan)
{
    PoketchGraphics_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    PoketchGraphics_LoadBtnTilemap(taskMan, taskData->tilemapDownBtn, BUTTON_DOWN);
    Sound_PlayEffect(SEQ_SE_DP_DENSI01);
}

static void PoketchGraphics_LoadAppCounterTask(SysTask *task, void *taskMan)
{
    PoketchGraphics_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    PoketchGraphics_LoadAppCounter(taskData, &taskData->appCounterAnim);
    PoketchGraphics_SetAppCounterDigits(&taskData->appCounterAnim, taskData->constTaskData);
    PoketchGraphics_EndTask(taskMan);
}

static void PoketchGraphics_UpdateAppCounterDigitsTask(SysTask *task, void *taskMan)
{
    PoketchGraphics_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    PoketchGraphics_SetAppCounterDigits(&taskData->appCounterAnim, taskData->constTaskData);
    PoketchGraphics_EndTask(taskMan);
}

static void PoketchGraphics_UnloadAppCounterAnimTask(SysTask *task, void *taskMan)
{
    PoketchGraphics_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    PoketchGraphics_UnloadAppCounterAnim(&taskData->appCounterAnim);
    PoketchGraphics_EndTask(taskMan);
}

static void PoketchGraphics_SetupAppCounterData(PoketchGraphics_AppCounterAnimationData *appCounterAnim, PoketchAnimation_AnimationManager *animMan)
{
    appCounterAnim->animationLoaded = FALSE;
    appCounterAnim->animMan = animMan;
}

static void PoketchGraphics_LoadAppCounter(PoketchGraphics_TaskData *taskData, PoketchGraphics_AppCounterAnimationData *appCounterAnim)
{
    if (PoketchAnimation_LoadSpriteFromNARC(&appCounterAnim->spriteData, NARC_INDEX_GRAPHIC__POKETCH, digits_cell_NCER_lz, digits_anim_NANR_lz, HEAP_ID_POKETCH_MAIN)) {
        static const PoketchAnimation_AnimationData animData = {
            .translation = { (176 << FX32_SHIFT), (40 << FX32_SHIFT) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 0,
            .priority = 0,
            .hasAffineTransform = FALSE
        };

        Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, digits_NCGR_lz, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_MAIN);
        Graphics_LoadPalette(NARC_INDEX_GRAPHIC__POKETCH, generic_bg_tiles_NCLR, PAL_LOAD_SUB_OBJ, 0, 0x60, HEAP_ID_POKETCH_MAIN);

        PoketchGraphics_LoadAppCounterPalette(taskData, 15);

        appCounterAnim->animatedDigits[TENS_DIGIT_IDX] = PoketchAnimation_SetupNewAnimatedSprite(appCounterAnim->animMan, &animData, &appCounterAnim->spriteData);

        if (appCounterAnim->animatedDigits[TENS_DIGIT_IDX] == NULL) {
            return;
        }

        appCounterAnim->animatedDigits[ONES_DIGIT_IDX] = PoketchAnimation_SetupNewAnimatedSprite(appCounterAnim->animMan, &animData, &appCounterAnim->spriteData);

        if (appCounterAnim->animatedDigits[ONES_DIGIT_IDX] == NULL) {
            PoketchAnimation_RemoveAnimatedSprite(appCounterAnim->animMan, appCounterAnim->animatedDigits[TENS_DIGIT_IDX]);
            return;
        }

        PoketchAnimation_TranslateSprite(appCounterAnim->animatedDigits[ONES_DIGIT_IDX], 16 * FX32_ONE, 0);
        PoketchAnimation_SetCParam(appCounterAnim->animatedDigits[TENS_DIGIT_IDX], 15);
        PoketchAnimation_SetCParam(appCounterAnim->animatedDigits[ONES_DIGIT_IDX], 15);

        appCounterAnim->animationLoaded = TRUE;
    }
}

static void PoketchGraphics_LoadAppCounterPalette(PoketchGraphics_TaskData *taskData, u32 offset)
{
    Poketch *poketch = PoketchSystem_GetPoketchData(taskData->poketchSys);
    u32 screenColour = Poketch_CurrentScreenColor(poketch);

    PoketchGraphics_CopyActivePalette(taskData->palette);

    {
        u16 paletteTmp = taskData->palette[PLTT_1];
        taskData->palette[PLTT_1] = (taskData->palette[PLTT_4]);
        taskData->palette[PLTT_4] = paletteTmp;
    }

    {
        u16 paletteTmp = (taskData->palette[PLTT_8]);
        taskData->palette[PLTT_8] = taskData->palette[PLTT_15];
        taskData->palette[PLTT_15] = paletteTmp;
    }

    DC_FlushRange(taskData->palette, sizeof(taskData->palette));
    GXS_LoadOBJPltt(taskData->palette, PLTT_OFFSET(offset), sizeof(taskData->palette));
}

static void PoketchGraphics_SetAppCounterDigits(PoketchGraphics_AppCounterAnimationData *appCounterAnim, const PoketchGraphics_ConstTaskData *constTaskData)
{
    if (appCounterAnim->animationLoaded) {
        u32 tensDigit, onesDigit;

        CP_SetDiv32_32(constTaskData->lastAppID + 1, 10);

        tensDigit = CP_GetDivResult32();
        onesDigit = CP_GetDivRemainder32();

        PoketchAnimation_UpdateAnimationIdx(appCounterAnim->animatedDigits[TENS_DIGIT_IDX], tensDigit);
        PoketchAnimation_UpdateAnimationIdx(appCounterAnim->animatedDigits[ONES_DIGIT_IDX], onesDigit);
    }
}

static void PoketchGraphics_UnloadAppCounterAnim(PoketchGraphics_AppCounterAnimationData *appCounterAnim)
{
    if (appCounterAnim->animationLoaded) {
        PoketchAnimation_RemoveAnimatedSprite(appCounterAnim->animMan, appCounterAnim->animatedDigits[TENS_DIGIT_IDX]);
        PoketchAnimation_RemoveAnimatedSprite(appCounterAnim->animMan, appCounterAnim->animatedDigits[ONES_DIGIT_IDX]);
        PoketchAnimation_FreeSpriteData(&appCounterAnim->spriteData);

        appCounterAnim->animationLoaded = FALSE;
    }
}

static void PoketchGraphics_UnusedTask_3(SysTask *task, void *taskMan)
{
    u32 state;
    PoketchGraphics_TaskData *taskData = PoketchTask_GetTaskData(taskMan);
    PoketchGraphics_ExtraTaskData *extraTaskData = PoketchTask_GetExtraData(taskMan);
    state = PoketchTask_GetState(taskMan);

    switch (state) {
    case 0:
        G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 0x1a, 0x6);
        Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, BG_LAYER_SUB_0);
    case 1:
    case 2:
    case 3:
        Bg_FillTilemapRect(taskData->bgConfig, BG_LAYER_SUB_1, 64 + 167 - state, 2, 2, 24, 20, PLTT_15);
        Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, BG_LAYER_SUB_1);

        if (state == 3) {
            PoketchGraphics_EndTask(taskMan);
        } else {
            PoketchTask_IncrementState(taskMan);
        }
        break;
    }
}

static void PoketchGraphics_UnusedTask_4(SysTask *task, void *taskMan)
{
    PoketchGraphics_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    Bg_FillTilemapRect(taskData->bgConfig, BG_LAYER_SUB_1, 64, 2, 2, 24, 20, PLTT_15);
    Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, BG_LAYER_SUB_0);
    Bg_CopyTilemapBufferToVRAM(taskData->bgConfig, BG_LAYER_SUB_1);

    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_NONE, 0x1f, 0x0);
    PoketchGraphics_EndTask(taskMan);
}

static void PoketchGraphics_FreeTilemapBufferTask(SysTask *task, void *taskMan)
{
    PoketchGraphics_TaskData *taskData = PoketchTask_GetTaskData(taskMan);

    Bg_FreeTilemapBuffer(taskData->bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(taskData->bgConfig, BG_LAYER_SUB_1);

    PoketchGraphics_EndTask(taskMan);
}
