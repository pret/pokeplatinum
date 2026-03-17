#include "applications/poketch/counter/graphics.h"

#include <nitro.h>

#include "generated/sdat.h"

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task_manager.h"

#include "res/graphics/poketch/poketch.naix"

static void SetupSprites(CounterGraphics *graphics, const CounterData *counterData);
static void UnloadSprites(CounterGraphics *graphics);

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawBackground(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);
static void Task_UpdateButtonSprite(SysTask *task, void *taskMan);
static void Task_UpdateValue(SysTask *task, void *taskMan);

static void UpdateDigitSprites(CounterGraphics *graphics, const CounterData *counterData);

BOOL PoketchCounterGraphics_New(CounterGraphics **dest, const CounterData *counterData, BgConfig *bgConfig)
{
    CounterGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(CounterGraphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTasks, COUNTER_TASK_SLOTS);
        graphics->counterData = counterData;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->animMan = PoketchGraphics_GetAnimationManager();

        SetupSprites(graphics, counterData);

        *dest = graphics;

        return TRUE;
    }

    return FALSE;
}

void PoketchCounterGraphics_Free(CounterGraphics *graphics)
{
    if (graphics != NULL) {
        UnloadSprites(graphics);
        Heap_Free(graphics);
    }
}

static void SetupSprites(CounterGraphics *graphics, const CounterData *counterData)
{
    static const PoketchAnimation_AnimationData sButtonAnimData = {
        .translation = { FX32_CONST(114), FX32_CONST(128) },
        .animIdx = 0,
        .flip = NNS_G2D_RENDERERFLIP_NONE,
        .oamPriority = 2,
        .priority = 0,
        .hasAffineTransform = FALSE,
    };
    static const PoketchAnimation_AnimationData sDigitsAnimData = {
        .translation = { 0 },
        .animIdx = 0,
        .flip = NNS_G2D_RENDERERFLIP_NONE,
        .oamPriority = 2,
        .priority = 0,
        .hasAffineTransform = FALSE,
    };

    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, digits_NCGR_lz, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, counter_NCGR_lz, DS_SCREEN_SUB, POKETCH_DIGITS_NCGR_NUM_TILES * TILE_SIZE_4BPP, 0, TRUE, HEAP_ID_POKETCH_APP);

    PoketchAnimation_LoadSpriteFromNARC(&graphics->buttonSprites, NARC_INDEX_GRAPHIC__POKETCH, counter_cell_NCER_lz, counter_anim_NANR_lz, HEAP_ID_POKETCH_APP);
    PoketchAnimation_LoadSpriteFromNARC(&graphics->digitSprites, NARC_INDEX_GRAPHIC__POKETCH, digits_cell_NCER_lz, digits_anim_NANR_lz, HEAP_ID_POKETCH_APP);

    graphics->buttonAnimation = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &sButtonAnimData, &graphics->buttonSprites);

    PoketchAnimation_SetSpriteCharNo(graphics->buttonAnimation, POKETCH_DIGITS_NCGR_NUM_TILES);

    for (int i = 0; i < NUM_DIGITS; i++) {
        graphics->digitsAnimation[i] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &sDigitsAnimData, &graphics->digitSprites);
        PoketchAnimation_SetSpritePosition(graphics->digitsAnimation[i], FX32_CONST(88) + (FX32_CONST(16) * i), FX32_CONST(64));
    }

    UpdateDigitSprites(graphics, counterData);
}

static void UnloadSprites(CounterGraphics *graphics)
{
    PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->buttonAnimation);

    for (int i = 0; i < NUM_DIGITS; i++) {
        PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->digitsAnimation[i]);
    }

    PoketchAnimation_FreeSpriteData(&graphics->buttonSprites);
    PoketchAnimation_FreeSpriteData(&graphics->digitSprites);
}

static const PoketchTask sCounterGraphicsTasks[] = {
    { COUNTER_GRAPHICS_INIT, Task_DrawBackground, 0 },
    { COUNTER_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { COUNTER_GRAPHICS_UPDATE_BUTTON, Task_UpdateButtonSprite, 0 },
    { COUNTER_GRAPHICS_UPDATE_VALUE, Task_UpdateValue, 0 },
    { 0 }
};

void PoketchCounterGraphics_StartTask(CounterGraphics *graphics, enum CounterGraphicsTask taskID)
{
    PoketchTask_Start(sCounterGraphicsTasks, taskID, graphics, graphics->counterData, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchCounterGraphics_TaskIsNotActive(CounterGraphics *graphics, enum CounterGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchCounterGraphics_NoActiveTasks(CounterGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    CounterGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    PoketchTask_EndTask(graphics->activeTasks, taskMan);
}

static void Task_DrawBackground(SysTask *task, void *taskMan)
{
    static const BgTemplate bgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
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
    GXSDispCnt dispCnt;
    CounterGraphics *graphics;

    graphics = PoketchTask_GetTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, counter_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, counter_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2);

    EndTask(taskMan);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    CounterGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_UpdateButtonSprite(SysTask *task, void *taskMan)
{
    CounterGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    switch (graphics->counterData->buttonPosition) {
    case COUNTER_BUTTON_PRESSED:
        PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_010);
        PoketchAnimation_UpdateAnimationIdx(graphics->buttonAnimation, 1);
        break;
    case COUNTER_BUTTON_UNPRESSED:
        PoketchAnimation_UpdateAnimationIdx(graphics->buttonAnimation, 0);
        break;
    }

    EndTask(taskMan);
}

static void Task_UpdateValue(SysTask *task, void *taskMan)
{
    CounterGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const CounterData *counterData = PoketchTask_GetConstTaskData(taskMan);

    UpdateDigitSprites(graphics, counterData);
    EndTask(taskMan);
}

static void UpdateDigitSprites(CounterGraphics *graphics, const CounterData *counterData)
{
    int i;
    u32 counterValue = counterData->value;
    u32 divisor = 1000;

    for (i = 0; i < NUM_DIGITS; i++) {
        CP_SetDiv32_32(counterValue, divisor);
        counterValue = CP_GetDivResult32();
        PoketchAnimation_UpdateAnimationIdx(graphics->digitsAnimation[i], counterValue);
        counterValue = CP_GetDivRemainder32();
        divisor /= 10;
    }
}
