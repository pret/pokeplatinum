#include "applications/poketch/color_changer/graphics.h"

#include "nitro/fx/fx.h"
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

static void SetupSprites(ColorChangerGraphics *graphics, const ColorChangerData *colorData);
static void UnloadSprites(ColorChangerGraphics *graphics);
static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawBackground(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);
static void Task_UpdateColor(SysTask *task, void *taskMan);

BOOL PoketchColorChangerGraphics_New(ColorChangerGraphics **dest, const ColorChangerData *colorData, BgConfig *bgConfig)
{
    ColorChangerGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(ColorChangerGraphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTasks, COLOR_CHANGER_TASK_SLOTS);
        graphics->colorData = colorData;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->animMan = PoketchGraphics_GetAnimationManager();
        SetupSprites(graphics, colorData);
        *dest = graphics;

        return TRUE;
    }

    return FALSE;
}

static void SetupSprites(ColorChangerGraphics *graphics, const ColorChangerData *colorData)
{
    static const PoketchAnimation_AnimationData animData = {
        .translation = { FX32_CONST(COLOR_SLIDER_LEFT_X), FX32_CONST(COLOR_SLIDER_Y) },
        .animIdx = 0,
        .flip = NNS_G2D_RENDERERFLIP_NONE,
        .oamPriority = 2,
        .priority = 0,
        .hasAffineTransform = FALSE
    };

    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, color_changer_NCGR_lz, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    PoketchAnimation_LoadSpriteFromNARC(&graphics->spriteData, NARC_INDEX_GRAPHIC__POKETCH, color_changer_cell_NCER_lz, color_changer_anim_NANR_lz, HEAP_ID_POKETCH_APP);
    graphics->sprite = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData, &graphics->spriteData);
    PoketchAnimation_SetSpritePosition(graphics->sprite, (COLOR_SLIDER_LEFT_X + (COLOR_SLIDER_WIDTH * colorData->color)) << FX32_SHIFT, FX32_CONST(COLOR_SLIDER_Y));
}

static void UnloadSprites(ColorChangerGraphics *graphics)
{
    if (graphics->sprite) {
        PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->sprite);
    }

    PoketchAnimation_FreeSpriteData(&graphics->spriteData);
}

void PoketchColorChangerGraphics_Free(ColorChangerGraphics *graphics)
{
    if (graphics != NULL) {
        UnloadSprites(graphics);
        Heap_Free(graphics);
    }
}

static const PoketchTask sColorChangerTasks[] = {
    { COLOR_CHANGER_GRAPHICS_INIT, Task_DrawBackground, 0 },
    { COLOR_CHANGER_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { COLOR_CHANGER_GRAPHICS_UPDATE_COLOR, Task_UpdateColor, 0 },
    { 0 }
};

void PoketchColorChangerGraphics_StartTask(ColorChangerGraphics *graphics, enum ColorChangerGraphicsTask taskID)
{
    PoketchTask_Start(sColorChangerTasks, taskID, graphics, graphics->colorData, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchColorChanger_TaskIsNotActive(ColorChangerGraphics *graphics, enum ColorChangerGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchColorChangerGraphics_NoActiveTasks(ColorChangerGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    ColorChangerGraphics *graphics = PoketchTask_GetTaskData(taskMan);
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
    ColorChangerGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const ColorChangerData *colorData = PoketchTask_GetConstTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, color_changer_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, color_changer_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    GXSDispCnt dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2);

    EndTask(taskMan);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    ColorChangerGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_UpdateColor(SysTask *task, void *taskMan)
{
    ColorChangerGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const ColorChangerData *colorData = PoketchTask_GetConstTaskData(taskMan);

    PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
    PoketchGraphics_LoadActivePalette(0, 0);
    PoketchAnimation_SetSpritePosition(graphics->sprite, (COLOR_SLIDER_LEFT_X + (COLOR_SLIDER_WIDTH * colorData->color)) << FX32_SHIFT, FX32_CONST(COLOR_SLIDER_Y));
    EndTask(taskMan);
}
