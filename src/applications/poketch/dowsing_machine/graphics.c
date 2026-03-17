#include "applications/poketch/dowsing_machine/graphics.h"

#include <nitro.h>

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task_manager.h"

#include "res/graphics/poketch/poketch.naix"

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawBackground(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);
static void Task_StartRadarPing(SysTask *task, void *taskMan);
static void Task_ShowRadarPing(SysTask *task, void *taskMan);
static void Task_ShowRadarPingRepeat(SysTask *task, void *taskMan);
static void Task_ShowNearbyItems(SysTask *task, void *taskMan);

static BOOL SetupSprites(DowsingMachineGraphics *graphics);
static void SetItemSpritePositions(DowsingMachineGraphics *graphics, const DowsingMachineData *dowsingData);
static void HideAllSprites(DowsingMachineGraphics *graphics);
static void ShowNearbyItems(DowsingMachineGraphics *graphics, const DowsingMachineData *dowsingData);
static BOOL CheckItemAnimationComplete(DowsingMachineGraphics *graphics);

BOOL PoketchDowsingMachineGraphics_New(DowsingMachineGraphics **dest, const DowsingMachineData *dowsingData, BgConfig *bgConfig)
{
    DowsingMachineGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(DowsingMachineGraphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTasks, DOWSING_MACHINE_TASK_SLOTS);

        graphics->dowsingData = dowsingData;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->allowAnimations = FALSE;
        graphics->animMan = PoketchGraphics_GetAnimationManager();
        graphics->radarSprite = NULL;

        for (int i = 0; i < MAX_DOWSING_ITEMS; i++) {
            graphics->itemSprites[i] = NULL;
        }

        *dest = graphics;
        return TRUE;
    }

    return FALSE;
}

static BOOL SetupSprites(DowsingMachineGraphics *graphics)
{
    static const PoketchAnimation_AnimationData radarAnimData = {
        .translation = { 0 },
        .animIdx = 0,
        .flip = NNS_G2D_RENDERERFLIP_NONE,
        .oamPriority = 2,
        .priority = 0,
        .hasAffineTransform = TRUE,
    };
    static const PoketchAnimation_AnimationData itemAnimData = {
        .translation = { 0 },
        .animIdx = 1,
        .flip = NNS_G2D_RENDERERFLIP_NONE,
        .oamPriority = 2,
        .priority = 1,
        .hasAffineTransform = FALSE,
    };

    if (PoketchAnimation_LoadSpriteFromNARC(&graphics->animData, NARC_INDEX_GRAPHIC__POKETCH, dowsing_machine_cell_NCER_lz, dowsing_machine_anim_NANR_lz, HEAP_ID_POKETCH_APP)) {

        Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, dowsing_machine_NCGR_lz, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
        graphics->radarSprite = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &radarAnimData, &graphics->animData);
        PoketchAnimation_HideSprite(graphics->radarSprite, TRUE);

        for (int i = 0; i < MAX_DOWSING_ITEMS; i++) {
            graphics->itemSprites[i] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &itemAnimData, &graphics->animData);
            PoketchAnimation_HideSprite(graphics->itemSprites[i], TRUE);
        }

        return TRUE;
    }

    return FALSE;
}

void PoketchDowsingMachineGraphics_Free(DowsingMachineGraphics *graphics)
{
    if (graphics != NULL) {
        for (int i = 0; i < MAX_DOWSING_ITEMS; i++) {
            if (graphics->itemSprites[i]) {
                PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->itemSprites[i]);
            }
        }

        if (graphics->radarSprite) {
            PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->radarSprite);
        }

        PoketchAnimation_FreeSpriteData(&graphics->animData);
        Heap_Free(graphics);
    }
}

static const PoketchTask sDowsingMachineTasks[] = {
    { DOWSING_MACHINE_GRAPHICS_INIT, Task_DrawBackground, 0 },
    { DOWSING_MACHINE_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { DOWSING_MACHINE_GRAPHICS_START_PING, Task_StartRadarPing, sizeof(u32) },
    { 0 }
};

void PoketchDowsingMachineGraphics_StartTask(DowsingMachineGraphics *graphics, enum DowsingMachineGraphicsTask taskID)
{
    PoketchTask_Start(sDowsingMachineTasks, taskID, graphics, graphics->dowsingData, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchDowsingMachineGraphics_TaskIsNotActive(DowsingMachineGraphics *graphics, enum DowsingMachineGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchDowsingMachineGraphics_NoActiveTasks(DowsingMachineGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    DowsingMachineGraphics *graphics = PoketchTask_GetTaskData(taskMan);
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
    DowsingMachineGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, dowsing_machine_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, dowsing_machine_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);

    PoketchGraphics_CopyActivePalette(graphics->palette);

    graphics->palette[1] = graphics->palette[8];
    DC_FlushRange(graphics->palette, sizeof(graphics->palette));
    GXS_LoadOBJPltt(graphics->palette, 13 * PALETTE_SIZE_BYTES, PALETTE_SIZE_BYTES);

    graphics->palette[1] = graphics->palette[15];
    DC_FlushRange(graphics->palette, sizeof(graphics->palette));
    GXS_LoadOBJPltt(graphics->palette, 14 * PALETTE_SIZE_BYTES, PALETTE_SIZE_BYTES);

    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2);

    SetupSprites(graphics);
    EndTask(taskMan);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    DowsingMachineGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_StartRadarPing(SysTask *task, void *taskMan)
{
    static const SysTaskFunc sPingFuncs[] = {
        Task_ShowRadarPing,
        Task_ShowRadarPingRepeat,
        Task_ShowNearbyItems
    };
    DowsingMachineGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const DowsingMachineData *dowsingData = PoketchTask_GetConstTaskData(taskMan);
    u32 *dowsingResult = PoketchTask_GetExtraData(taskMan);

    if (PoketchTask_GetState(taskMan) == 0) {
        graphics->allowAnimations = TRUE;
        *dowsingResult = dowsingData->dowsingResult;
    }

    sPingFuncs[*dowsingResult](task, taskMan);
}

static void Task_ShowRadarPing(SysTask *task, void *taskMan)
{
    DowsingMachineGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const DowsingMachineData *dowsingData = PoketchTask_GetConstTaskData(taskMan);

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        PoketchAnimation_SetSpritePosition(graphics->radarSprite, dowsingData->touchX << FX32_SHIFT, dowsingData->touchY << FX32_SHIFT);
        PoketchAnimation_HideSprite(graphics->radarSprite, FALSE);
        PoketchAnimation_UpdateAnimationIdx(graphics->radarSprite, 0);
        PoketchTask_IncrementState(taskMan);
        break;
    case 1:
        if (graphics->allowAnimations == FALSE) {
            HideAllSprites(graphics);
            EndTask(taskMan);
            break;
        }

        if (PoketchAnimation_AnimationInactive(graphics->radarSprite)) {
            HideAllSprites(graphics);
            EndTask(taskMan);
        }
        break;
    }
}

static void Task_ShowRadarPingRepeat(SysTask *task, void *taskMan)
{
    DowsingMachineGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const DowsingMachineData *dowsingData = PoketchTask_GetConstTaskData(taskMan);

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        PoketchAnimation_SetSpritePosition(graphics->radarSprite, dowsingData->touchX << FX32_SHIFT, dowsingData->touchY << FX32_SHIFT);
        PoketchAnimation_UpdateAnimationIdx(graphics->radarSprite, 0);
        PoketchAnimation_HideSprite(graphics->radarSprite, FALSE);
        PoketchTask_IncrementState(taskMan);
        break;
    case 1:
        if (graphics->allowAnimations == FALSE) {
            HideAllSprites(graphics);
            EndTask(taskMan);
            break;
        }

        if (PoketchAnimation_AnimationInactive(graphics->radarSprite)) {
            PoketchAnimation_UpdateAnimationIdx(graphics->radarSprite, 0);
        }
        break;
    }
}

static void Task_ShowNearbyItems(SysTask *task, void *taskMan)
{
    DowsingMachineGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const DowsingMachineData *dowsingData = PoketchTask_GetConstTaskData(taskMan);

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        SetItemSpritePositions(graphics, dowsingData);
        PoketchAnimation_SetSpritePosition(graphics->radarSprite, dowsingData->touchX << FX32_SHIFT, dowsingData->touchY << FX32_SHIFT);
        PoketchAnimation_UpdateAnimationIdx(graphics->radarSprite, 0);
        PoketchAnimation_HideSprite(graphics->radarSprite, FALSE);
        PoketchTask_IncrementState(taskMan);
        break;
    case 1:
        if (graphics->allowAnimations == FALSE) {
            HideAllSprites(graphics);
            EndTask(taskMan);
            return;
        }

        if (PoketchAnimation_AnimationInactive(graphics->radarSprite)) {
            ShowNearbyItems(graphics, dowsingData);
            PoketchTask_IncrementState(taskMan);
        }
        break;
    case 2:
        if (graphics->allowAnimations == FALSE) {
            HideAllSprites(graphics);
            EndTask(taskMan);
            return;
        }

        if (CheckItemAnimationComplete(graphics)) {
            PoketchAnimation_UpdateAnimationIdx(graphics->radarSprite, 0);
            PoketchTask_SetState(taskMan, 1);
        }
        break;
    }
}

static void SetItemSpritePositions(DowsingMachineGraphics *graphics, const DowsingMachineData *dowsingData)
{
    for (u32 i = 0; i < dowsingData->itemCount; i++) {
        PoketchAnimation_SetSpritePosition(graphics->itemSprites[i], dowsingData->itemPositions[i].x << FX32_SHIFT, dowsingData->itemPositions[i].y << FX32_SHIFT);
    }
}

static void ShowNearbyItems(DowsingMachineGraphics *graphics, const DowsingMachineData *dowsingData)
{
    for (u32 i = 0; i < dowsingData->itemCount; i++) {
        u32 range = 1 + dowsingData->itemPositions[i].range;

        if (range >= 3) {
            range = 3;
        }

        PoketchAnimation_HideSprite(graphics->itemSprites[i], FALSE);
        PoketchAnimation_UpdateAnimationIdx(graphics->itemSprites[i], range);
    }
}

static BOOL CheckItemAnimationComplete(DowsingMachineGraphics *graphics)
{
    return PoketchAnimation_AnimationInactive(graphics->itemSprites[0]);
}

static void HideAllSprites(DowsingMachineGraphics *graphics)
{
    PoketchAnimation_HideSprite(graphics->radarSprite, TRUE);

    for (int i = 0; i < MAX_DOWSING_ITEMS; i++) {
        PoketchAnimation_HideSprite(graphics->itemSprites[i], TRUE);
    }
}

void PoketchDowsingMachineGraphics_StopAllAnimations(DowsingMachineGraphics *graphics)
{
    HideAllSprites(graphics);
    graphics->allowAnimations = FALSE;
}
