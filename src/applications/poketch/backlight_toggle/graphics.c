#include "applications/poketch/backlight_toggle/graphics.h"

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

static void SetupSprites(BacklightToggleGraphics *graphics, const BacklightData *backlight);
static void UnloadSprites(BacklightToggleGraphics *graphics);
static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawBackground(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);
static void Task_UpdateSwitch(SysTask *task, void *taskMan);

BOOL PoketchBacklightToggleGraphics_New(BacklightToggleGraphics **dest, const BacklightData *backlight, BgConfig *bgConfig)
{
    BacklightToggleGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(BacklightToggleGraphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTasks, BACKLIGHT_TOGGLE_TASK_SLOTS);
        graphics->backlight = backlight;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->animMan = PoketchGraphics_GetAnimationManager();

        SetupSprites(graphics, backlight);
        *dest = graphics;

        return TRUE;
    }

    return FALSE;
}

void PoketchBacklightToggleGraphics_Free(BacklightToggleGraphics *graphics)
{
    if (graphics != NULL) {
        Heap_Free(graphics);
    }
}

static void SetupSprites(BacklightToggleGraphics *graphics, const BacklightData *backlight)
{
    static const PoketchAnimation_AnimationData animData = {
        .translation = { FX32_CONST(112), FX32_CONST(104) },
        .animIdx = 0,
        .flip = NNS_G2D_RENDERERFLIP_NONE,
        .oamPriority = 2,
        .priority = 0,
        .hasAffineTransform = FALSE,
    };

    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, backlight_toggle_NCGR_lz, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    PoketchAnimation_LoadSpriteFromNARC(&graphics->sprite, NARC_INDEX_GRAPHIC__POKETCH, backlight_toggle_cell_NCER_lz, backlight_toggle_anim_NANR_lz, HEAP_ID_POKETCH_APP);

    graphics->animation = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData, &graphics->sprite);

    if (!backlight->isOn) {
        PoketchAnimation_UpdateAnimationIdx(graphics->animation, 1);
    }
}

static void UnloadSprites(BacklightToggleGraphics *graphics)
{
    PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->animation);
    PoketchAnimation_FreeSpriteData(&graphics->sprite);
}

static const PoketchTask sBacklightToggleGraphicsTasks[] = {
    { BACKLIGHT_TOGGLE_GRAPHICS_INIT, Task_DrawBackground, 0 },
    { BACKLIGHT_TOGGLE_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { BACKLIGHT_TOGGLE_GRAPHICS_UPDATE_SWITCH, Task_UpdateSwitch, 0 },
    { 0 }
};

void PoketchBacklightToggleGraphics_StartTask(BacklightToggleGraphics *graphics, enum BacklightToggleGraphicsTask taskID)
{
    PoketchTask_Start(sBacklightToggleGraphicsTasks, taskID, graphics, graphics->backlight, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchBacklighToggleGraphics_TaskIsNotActive(BacklightToggleGraphics *graphics, enum BacklightToggleGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchBacklightToggle_NoActiveTasks(BacklightToggleGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    BacklightToggleGraphics *graphics = PoketchTask_GetTaskData(taskMan);

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
    BacklightToggleGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, backlight_toggle_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, backlight_toggle_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    GXSDispCnt dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2);

    EndTask(taskMan);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    BacklightToggleGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    UnloadSprites(graphics);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_UpdateSwitch(SysTask *task, void *taskMan)
{
    BacklightToggleGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const BacklightData *backlight = PoketchTask_GetConstTaskData(taskMan);

    PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);

    if (backlight->isOn) {
        PoketchAnimation_UpdateAnimationIdx(graphics->animation, 0);
        PM_SetBackLight(PM_LCD_BOTTOM, PM_BACKLIGHT_ON);
    } else {
        PoketchAnimation_UpdateAnimationIdx(graphics->animation, 1);
        PM_SetBackLight(PM_LCD_BOTTOM, PM_BACKLIGHT_OFF);
    }

    EndTask(taskMan);
}
