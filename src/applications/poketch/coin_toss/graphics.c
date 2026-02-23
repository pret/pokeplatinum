#include "applications/poketch/coin_toss/graphics.h"

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

#define ANIM_INDEX_SPINNING 0
#define ANIM_INDEX_HEADS    1
#define ANIM_INDEX_TAILS    2

static fx32 sInitalSpeed = 0;
static fx32 sAcceleration = 0;

static void SetupSprites(CoinTossGraphics *graphics);
static void UnloadSprites(CoinTossGraphics *graphics);

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawBackground(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);
static void Task_TossCoin(SysTask *task, void *taskMan);

BOOL PoketchCoinTossGraphics_New(CoinTossGraphics **dest, const CoinTossResult *coin, BgConfig *bgConfig)
{
    CoinTossGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(CoinTossGraphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTasks, COIN_TOSS_TASK_SLOTS);
        graphics->coin = coin;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->animMan = PoketchGraphics_GetAnimationManager();

        SetupSprites(graphics);

        sInitalSpeed = FX32_CONST(-10.5f);
        sAcceleration = FX32_CONST(0.6875f);
        *dest = graphics;
        return TRUE;
    }

    return FALSE;
}

static void SetupSprites(CoinTossGraphics *graphics)
{
    static const PoketchAnimation_AnimationData animationData = {
        .translation = { FX32_CONST(COIN_REST_POSITION_X), FX32_CONST(COIN_REST_POSITION_Y) },
        .animIdx = ANIM_INDEX_HEADS,
        .flip = NNS_G2D_RENDERERFLIP_NONE,
        .oamPriority = 2,
        .priority = 0,
        .hasAffineTransform = FALSE,
    };

    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, coin_toss_NCGR_lz, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    PoketchAnimation_LoadSpriteFromNARC(&graphics->animData, NARC_INDEX_GRAPHIC__POKETCH, coin_toss_cell_NCER_lz, coin_toss_anim_NANR_lz, HEAP_ID_POKETCH_APP);

    graphics->sprite = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animationData, &graphics->animData);

    if (!graphics->coin->isHeads) {
        PoketchAnimation_UpdateAnimationIdx(graphics->sprite, ANIM_INDEX_TAILS);
    }
}

static void UnloadSprites(CoinTossGraphics *graphics)
{
    PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->sprite);
    PoketchAnimation_FreeSpriteData(&graphics->animData);
}

void PoketchCoinTossGraphics_Free(CoinTossGraphics *graphics)
{
    if (graphics != NULL) {
        UnloadSprites(graphics);
        Heap_Free(graphics);
    }
}

static const PoketchTask sCoinTossTasks[] = {
    { COIN_TOSS_GRAPHICS_INIT, Task_DrawBackground, 0 },
    { COIN_TOSS_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { COIN_TOSS_GRAPHICS_TOSS_COIN, Task_TossCoin, 0 },
    { 0 }
};

void PoketchCoinTossGraphics_StartTask(CoinTossGraphics *graphics, enum CoinTossGraphicsTask taskID)
{
    PoketchTask_Start(sCoinTossTasks, taskID, graphics, graphics->coin, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchCoinTossGraphics_TaskIsNotActive(CoinTossGraphics *graphics, enum CoinTossGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchCoinTossGraphics_NoActiveTasks(CoinTossGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    CoinTossGraphics *graphics = PoketchTask_GetTaskData(taskMan);
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
    CoinTossGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, coin_toss_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, coin_toss_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    GXSDispCnt dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2);

    EndTask(taskMan);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    CoinTossGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        graphics->killCoinTask = TRUE;
        PoketchTask_IncrementState(taskMan);
    case 1:
        if (PoketchCoinTossGraphics_TaskIsNotActive(graphics, COIN_TOSS_GRAPHICS_TOSS_COIN)) {
            Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
            EndTask(taskMan);
        }
        break;
    }
}

static void Task_TossCoin(SysTask *task, void *taskMan)
{
    CoinTossGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const CoinTossResult *coin = PoketchTask_GetConstTaskData(taskMan);

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        PoketchSystem_PlaySoundEffect(SEQ_SE_DP_DENSI09);
        PoketchAnimation_UpdateAnimationIdx(graphics->sprite, ANIM_INDEX_SPINNING);
        graphics->coinY = FX32_CONST(COIN_REST_POSITION_Y);
        graphics->coinSpeed = sInitalSpeed;
        graphics->killCoinTask = FALSE;
        PoketchTask_IncrementState(taskMan);
    case 1:
        if (graphics->killCoinTask) {
            EndTask(taskMan);
            return;
        }

        graphics->coinY += graphics->coinSpeed;
        graphics->coinSpeed += sAcceleration;

        if (graphics->coinSpeed > 0 && graphics->coinY >= FX32_CONST(COIN_REST_POSITION_Y)) {
            graphics->coinSpeed = -((graphics->coinSpeed * 56) / 100);

            if (graphics->coinSpeed < FX32_CONST(-2)) {
                PoketchSystem_PlaySoundEffect(SEQ_SE_DP_DENSI10);
                graphics->coinY = FX32_CONST(COIN_REST_POSITION_Y);
            } else {
                PoketchSystem_PlaySoundEffect(SEQ_SE_DP_DENSI10);
                PoketchAnimation_UpdateAnimationIdx(graphics->sprite, coin->isHeads ? ANIM_INDEX_HEADS : ANIM_INDEX_TAILS);
                graphics->coinY = FX32_CONST(COIN_REST_POSITION_Y);
                PoketchTask_IncrementState(taskMan);
            }
        }

        PoketchAnimation_SetSpritePosition(graphics->sprite, FX32_CONST(COIN_REST_POSITION_X), graphics->coinY);
        break;
    case 2:
        EndTask(taskMan);
    }
}
