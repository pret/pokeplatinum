#include "applications/poketch/roulette/graphics.h"

#include <nitro.h>

#include "generated/sdat.h"

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "math_util.h"
#include "poketch_memory.h"
#include "sys_task_manager.h"

#include "res/graphics/poketch/poketch.naix"

#define WINDOW_WIDTH_TILES  20
#define WINDOW_HEIGHT_TILES 19

static void SetupSprites(RouletteGraphics *graphics, const RouletteData *rouletteData);
static void UnloadSprites(RouletteGraphics *graphics);
static void SetupWindow(RouletteGraphics *graphics, u32 baseTile);

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawBackground(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);
static void Task_Unused(SysTask *task, void *taskMan);
static void Task_UpdateDrawing(SysTask *task, void *taskMan);
static void Task_Unused2(SysTask *task, void *taskMan);
static void Task_UpdateButtonStates(SysTask *task, void *taskMan);
static void Task_ClearDrawing(SysTask *task, void *taskMan);
static void Task_RunSpinner(SysTask *task, void *taskMan);
static void Task_StopSpinner(SysTask *task, void *taskMan);

BOOL PoketchRouletteGraphics_New(RouletteGraphics **dest, const RouletteData *rouletteData, BgConfig *bgConfig)
{
    RouletteGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(RouletteGraphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTasks, ROULETTE_TASK_SLOTS);

        graphics->rouletteData = rouletteData;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->animMan = PoketchGraphics_GetAnimationManager();
        graphics->spinnerAngle = 0;

        SetupSprites(graphics, rouletteData);

        if (graphics->bgConfig != NULL) {
            *dest = graphics;
            return TRUE;
        }
    }

    return FALSE;
}

void PoketchRouletteGraphics_Free(RouletteGraphics *graphics)
{
    if (graphics != NULL) {
        UnloadSprites(graphics);
        Heap_Free(graphics);
    }
}

static void SetupSprites(RouletteGraphics *graphics, const RouletteData *rouletteData)
{
    static const PoketchAnimation_AnimationData animationData[] = {
        {
            .translation = { FX32_CONST(96), FX32_CONST(96) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(187), FX32_CONST(50) },
            .animIdx = 1,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(187), FX32_CONST(96) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(187), FX32_CONST(142) },
            .animIdx = 5,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
    };

    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, roulette_NCGR_lz, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    PoketchAnimation_LoadSpriteFromNARC(&graphics->animData, NARC_INDEX_GRAPHIC__POKETCH, roulette_cell_NCER_lz, roulette_anim_NANR_lz, HEAP_ID_POKETCH_APP);

    for (int i = 0; i < NUM_SPRITES; i++) {
        graphics->sprites[i] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animationData[i], &graphics->animData);
    }
}

static void UnloadSprites(RouletteGraphics *graphics)
{
    for (int i = 0; i < NUM_SPRITES; i++) {
        if (graphics->sprites[i]) {
            PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->sprites[i]);
        }
    }
    PoketchAnimation_FreeSpriteData(&graphics->animData);
}

static const PoketchTask sRouletteTasks[] = {
    { ROULETTE_GRAPHICS_INIT, Task_DrawBackground, 0 },
    { ROULETTE_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { ROULETTE_GRAPHICS_UNUSED, Task_Unused, 0 },
    { ROULETTE_GRAPHICS_UPDATE_DRAWING, Task_UpdateDrawing, 0 },
    { ROULETTE_GRAPHICS_UNUSED2, Task_Unused2, 0 },
    { ROULETTE_GRAPHICS_UPDATE_BUTTONS, Task_UpdateButtonStates, 0 },
    { ROULETTE_GRAPHICS_CLEAR_DRAWING, Task_ClearDrawing, 0 },
    { ROULETTE_GRAPHICS_RUN_SPINNER, Task_RunSpinner, 0 },
    { ROULETTE_GRAPHICS_STOP_SPINNER, Task_StopSpinner, 0 },
    { 0 }
};

void PoketchRouletteGraphics_StartTask(RouletteGraphics *graphics, enum RouletteGraphicsTask taskID)
{
    PoketchTask_Start(sRouletteTasks, taskID, graphics, graphics->rouletteData, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchRouletteGraphics_TaskIsNotActive(RouletteGraphics *graphics, enum RouletteGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchRouletteGraphics_NoActiveTasks(RouletteGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    RouletteGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    PoketchTask_EndTask(graphics->activeTasks, taskMan);
}

static void Task_DrawBackground(SysTask *task, void *taskMan)
{
    static const BgTemplate mainBgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x7000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    static const BgTemplate windowBgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x7800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));
    RouletteGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &mainBgTemplate, BG_TYPE_STATIC);
    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_3, &windowBgTemplate, BG_TYPE_STATIC);

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));

    u32 bgTileCount = Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, roulette_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    bgTileCount /= TILE_SIZE_4BPP;

    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, roulette_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    PoketchGraphics_LoadActivePalette(0, 0);

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));

    SetupWindow(graphics, bgTileCount);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_3);

    GXSDispCnt dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ);

    EndTask(taskMan);
    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));
}

static void SetupWindow(RouletteGraphics *graphics, u32 baseTile)
{
    WindowTemplate windowTemplate = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = POKETCH_SCREEN_TILE_OFFSET_X,
        .tilemapTop = POKETCH_SCREEN_TILE_OFFSET_Y,
        .width = WINDOW_WIDTH_TILES,
        .height = WINDOW_HEIGHT_TILES,
        .palette = 0,
        .baseTile = 0
    };

    graphics->windowBaseTile = baseTile;
    windowTemplate.baseTile = baseTile;

    Window_AddFromTemplate(graphics->bgConfig, &graphics->window, &windowTemplate);

    if (PoketchMemory_ReadFast(graphics->rouletteData->appID, graphics->window.pixels, WINDOW_WIDTH_TILES * WINDOW_HEIGHT_TILES * TILE_SIZE_4BPP) == FALSE) {
        Window_FillTilemap(&graphics->window, 4);
    }

    Window_PutToTilemap(&graphics->window);
    Window_LoadTiles(&graphics->window);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    RouletteGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        graphics->killSpinnerTask = TRUE;
        PoketchTask_IncrementState(taskMan);
        break;
    case 1:
        PoketchMemory_WriteFast(graphics->rouletteData->appID, graphics->window.pixels, WINDOW_WIDTH_TILES * WINDOW_HEIGHT_TILES * TILE_SIZE_4BPP);
        Window_Remove(&graphics->window);
        Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
        Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_3);
        EndTask(taskMan);
    }
}

static void Task_Unused(SysTask *task, void *taskMan)
{
    RouletteGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    Window_LoadTiles(&graphics->window);
    EndTask(taskMan);
}

static void Task_UpdateDrawing(SysTask *task, void *taskMan)
{
    RouletteGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    s32 x = graphics->rouletteData->x * 2;
    s32 y = graphics->rouletteData->y * 2;
    // Dividing x and y by 8 (TILE_WIDTH/HEIGHT_PIXELS) here
    s32 tileIdx = ((y >> 3) * WINDOW_WIDTH_TILES) + (x >> 3);

    Window_FillRectWithColor(&graphics->window, 1, x, y, 2, 2);
    GXS_LoadBG3Char(graphics->window.pixels + (tileIdx * TILE_SIZE_4BPP), (graphics->windowBaseTile + tileIdx) * TILE_SIZE_4BPP, TILE_SIZE_4BPP);
    EndTask(taskMan);
}

static void Task_Unused2(SysTask *task, void *taskMan)
{
    RouletteGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    Window_LoadTiles(&graphics->window);
    EndTask(taskMan);
}

static void Task_UpdateButtonStates(SysTask *task, void *taskMan)
{
    RouletteGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const RouletteData *rouletteData = PoketchTask_GetConstTaskData(taskMan);

    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[1], rouletteData->playButtonPressed ? 2 : 1);
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[2], rouletteData->stopButtonPressed ? 4 : 3);
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[3], rouletteData->clearButtonPressed ? 6 : 5);
    EndTask(taskMan);
}

static void Task_ClearDrawing(SysTask *task, void *taskMan)
{
    RouletteGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const RouletteData *rouletteData = PoketchTask_GetConstTaskData(taskMan);

    Window_FillTilemap(&graphics->window, 4);
    Window_LoadTiles(&graphics->window);
    EndTask(taskMan);
}

static void Task_RunSpinner(SysTask *task, void *taskMan)
{
    RouletteGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const RouletteData *rouletteData = PoketchTask_GetConstTaskData(taskMan);
    u32 spinnerState = PoketchTask_GetState(taskMan);

    if ((spinnerState != 0) && graphics->killSpinnerTask) {
        EndTask(taskMan);
        return;
    }

    switch (spinnerState) {
    case 0:
        graphics->spinnerAngle += 336;
        graphics->rotationSpeed = 336;
        PoketchAnimation_SetSpriteRotation(graphics->sprites[0], graphics->spinnerAngle);
        graphics->spinnerUpToSpeed = FALSE;
        graphics->stopSpinner = FALSE;
        graphics->killSpinnerTask = FALSE;
        PoketchTask_IncrementState(taskMan);
        break;
    case 1:
        graphics->spinnerAngle += graphics->rotationSpeed;
        PoketchAnimation_SetSpriteRotation(graphics->sprites[0], graphics->spinnerAngle);
        graphics->rotationSpeed += 336;

        if (graphics->rotationSpeed >= 12288) {
            graphics->rotationSpeed = 12288;
            graphics->spinnerUpToSpeed = TRUE;
            PoketchTask_IncrementState(taskMan);
        }
        break;
    case 2:
        graphics->spinnerAngle += graphics->rotationSpeed;
        PoketchAnimation_SetSpriteRotation(graphics->sprites[0], graphics->spinnerAngle);

        if (graphics->stopSpinner) {
            graphics->stopDelay = MTRNG_Next() % 8;

            if (graphics->rotationSpeed > 6656) {
                graphics->rotationSpeed = 6656;
            }

            PoketchTask_IncrementState(taskMan);
        }
        break;
    case 3:
        graphics->spinnerAngle += graphics->rotationSpeed;
        PoketchAnimation_SetSpriteRotation(graphics->sprites[0], graphics->spinnerAngle);

        if (graphics->stopDelay == 0) {
            graphics->stopDelay--;
        } else {
            PoketchTask_IncrementState(taskMan);
        }
        break;
    case 4:
        if (graphics->rotationSpeed > 80) {
            graphics->rotationSpeed -= 80;
            graphics->spinnerAngle += graphics->rotationSpeed;
            PoketchAnimation_SetSpriteRotation(graphics->sprites[0], graphics->spinnerAngle);
        } else {
            graphics->rotationSpeed = 0;
            EndTask(taskMan);
        }
        break;
    }
}

static void Task_StopSpinner(SysTask *task, void *taskMan)
{
    RouletteGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const RouletteData *rouletteData = PoketchTask_GetConstTaskData(taskMan);

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        graphics->stopSpinner = TRUE;
        PoketchTask_IncrementState(taskMan);
        break;
    case 1:
        if (PoketchRouletteGraphics_TaskIsNotActive(graphics, ROULETTE_GRAPHICS_RUN_SPINNER)) {
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_011);
            EndTask(taskMan);
        }
        break;
    }
}
