#include "applications/poketch/alarm_clock/graphics.h"

#include <nitro.h>

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sound_playback.h"
#include "sys_task_manager.h"

#include "res/graphics/poketch/poketch.naix"

#define SPRITE_ALARM_SET_BUTTON   0
#define SPRITE_EAR_LEFT           1
#define SPRITE_EAR_RIGHT          2
#define SPRITE_EYE_LEFT           3
#define SPRITE_EYE_RIGHT          4
#define SPRITE_HOUR_UP_BUTTON     5
#define SPRITE_HOUR_DOWN_BUTTON   6
#define SPRITE_MINUTE_UP_BUTTON   7
#define SPRITE_MINUTE_DOWN_BUTTON 8
#define SPRITE_HOUR_TENS_DIGIT    9
#define SPRITE_HOUR_ONES_DIGIT    10
#define SPRITE_MINUTE_TENS_DIGIT  11
#define SPRITE_MINUTE_ONES_DIGIT  12

static void SetupSprites(AlarmClockGraphics *graphics, const AlarmClockData *clockData);
static void UnloadSprites(AlarmClockGraphics *graphics);
static void UpdateDigits(AlarmClockGraphics *graphics, u32 hour, u32 minute);

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawBackground(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);
static void Task_ShowCurrentTime(SysTask *task, void *taskMan);
static void Task_EnterEditMode(SysTask *task, void *taskMan);
static void Task_UpdateDigits(SysTask *task, void *taskMan);
static void Task_SoundAlarm(SysTask *task, void *taskMan);

BOOL PoketchAlarmClockGraphics_New(AlarmClockGraphics **dest, const AlarmClockData *clockData, BgConfig *bgConfig)
{
    AlarmClockGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(AlarmClockGraphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTasks, ALARM_CLOCK_TASK_SLOTS);
        graphics->clockData = clockData;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->animMan = PoketchGraphics_GetAnimationManager();
        SetupSprites(graphics, clockData);
        *dest = graphics;
        return TRUE;
    }

    return FALSE;
}

void PoketchAlarmClockGraphics_Free(AlarmClockGraphics *graphics)
{
    if (graphics != NULL) {
        UnloadSprites(graphics);
        Heap_Free(graphics);
    }
}

static void SetupSprites(AlarmClockGraphics *graphics, const AlarmClockData *clockData)
{
    static const PoketchAnimation_AnimationData animationData[] = {
        {
            .translation = { FX32_CONST(192), FX32_CONST(104) },
            .animIdx = 3,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(48), FX32_CONST(48) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(144), FX32_CONST(48) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_H,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(56), FX32_CONST(80) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(136), FX32_CONST(80) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_H,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(72), FX32_CONST(120) },
            .animIdx = 6,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(72), FX32_CONST(164) },
            .animIdx = 6,
            .flip = NNS_G2D_RENDERERFLIP_V,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(120), FX32_CONST(120) },
            .animIdx = 6,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(120), FX32_CONST(164) },
            .animIdx = 6,
            .flip = NNS_G2D_RENDERERFLIP_V,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(64), FX32_CONST(144) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(80), FX32_CONST(144) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(112), FX32_CONST(144) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(128), FX32_CONST(144) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
    };

    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, digits_NCGR_lz, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, alarm_clock_NCGR_lz, DS_SCREEN_SUB, POKETCH_DIGITS_NCGR_NUM_TILES * TILE_SIZE_4BPP, 0, TRUE, HEAP_ID_POKETCH_APP);

    PoketchAnimation_LoadSpriteFromNARC(&graphics->alarmSprites, NARC_INDEX_GRAPHIC__POKETCH, alarm_clock_cell_NCER_lz, alarm_clock_anim_NANR_lz, HEAP_ID_POKETCH_APP);
    PoketchAnimation_LoadSpriteFromNARC(&graphics->digitSprites, NARC_INDEX_GRAPHIC__POKETCH, digits_cell_NCER_lz, digits_anim_NANR_lz, HEAP_ID_POKETCH_APP);

    for (int i = 0; i < NUM_SPRITES; i++) {
        if (i >= SPRITE_HOUR_TENS_DIGIT && i <= SPRITE_MINUTE_ONES_DIGIT) {
            graphics->sprites[i] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animationData[i], &graphics->digitSprites);
        } else {
            graphics->sprites[i] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animationData[i], &graphics->alarmSprites);
            PoketchAnimation_SetSpriteCharNo(graphics->sprites[i], POKETCH_DIGITS_NCGR_NUM_TILES);
        }
    }

    if (clockData->alarmSet) {
        PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_ALARM_SET_BUTTON], 3);
        PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_EYE_LEFT], 5);
        PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_EYE_RIGHT], 5);
        PoketchAnimation_HideSprite(graphics->sprites[SPRITE_HOUR_UP_BUTTON], TRUE);
        PoketchAnimation_HideSprite(graphics->sprites[SPRITE_HOUR_DOWN_BUTTON], TRUE);
        PoketchAnimation_HideSprite(graphics->sprites[SPRITE_MINUTE_UP_BUTTON], TRUE);
        PoketchAnimation_HideSprite(graphics->sprites[SPRITE_MINUTE_DOWN_BUTTON], TRUE);
        UpdateDigits(graphics, clockData->currentHour, clockData->currentMinute);
    } else {
        PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_ALARM_SET_BUTTON], 2);
        PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_EYE_LEFT], 5);
        PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_EYE_RIGHT], 4);
        UpdateDigits(graphics, clockData->alarmHour, clockData->alarmMinute);
    }
}

static void UnloadSprites(AlarmClockGraphics *graphics)
{
    for (int i = 0; i < NUM_SPRITES; i++) {
        if (graphics->sprites[i]) {
            PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->sprites[i]);
        }
    }

    PoketchAnimation_FreeSpriteData(&graphics->alarmSprites);
    PoketchAnimation_FreeSpriteData(&graphics->digitSprites);
}

static void UpdateDigits(AlarmClockGraphics *graphics, u32 hour, u32 minute)
{
    CP_SetDiv32_32(hour, 10);

    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_HOUR_TENS_DIGIT], CP_GetDivResult32());
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_HOUR_ONES_DIGIT], CP_GetDivRemainder32());

    CP_SetDiv32_32(minute, 10);

    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_MINUTE_TENS_DIGIT], CP_GetDivResult32());
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_MINUTE_ONES_DIGIT], CP_GetDivRemainder32());
}

static const PoketchTask sAlarmClockTasks[] = {
    { ALARM_CLOCK_GRAPHICS_INIT, Task_DrawBackground, 0 },
    { ALARM_CLOCK_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { ALARM_CLOCK_GRAPHICS_SHOW_CURRENT_TIME, Task_ShowCurrentTime, 0 },
    { ALARM_CLOCK_GRAPHICS_ENTER_EDIT_MODE, Task_EnterEditMode, 0 },
    { ALARM_CLOCK_GRAPHICS_UPDATE_DIGITS, Task_UpdateDigits, 0 },
    { ALARM_CLOCK_GRAPHICS_SOUND_ALARM, Task_SoundAlarm, 0 },
    { 0 }
};

void PoketchAlarmClockGraphics_StartTask(AlarmClockGraphics *graphics, enum AlarmClockGraphicsTask taskID)
{
    PoketchTask_Start(sAlarmClockTasks, taskID, graphics, graphics->clockData, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchAlarmClockGraphics_TaskIsNotActive(AlarmClockGraphics *graphics, enum AlarmClockGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchAlarmClockGraphics_NoActiveTasks(AlarmClockGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    AlarmClockGraphics *graphics = PoketchTask_GetTaskData(taskMan);
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
    AlarmClockGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, alarm_clock_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, alarm_clock_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    GXSDispCnt dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2);

    EndTask(taskMan);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    AlarmClockGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        StopSoundingAlarm(graphics);
        PoketchTask_IncrementState(taskMan);
        break;
    case 1:
        if (PoketchAlarmClockGraphics_TaskIsNotActive(graphics, ALARM_CLOCK_GRAPHICS_SOUND_ALARM)) {
            Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
            EndTask(taskMan);
        }
        break;
    }
}

static void Task_ShowCurrentTime(SysTask *task, void *taskMan)
{
    AlarmClockGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const AlarmClockData *clockData = PoketchTask_GetConstTaskData(taskMan);

    PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);

    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_ALARM_SET_BUTTON], 3);
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_EYE_LEFT], 5);
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_EYE_RIGHT], 5);
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_EAR_LEFT], 0);
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_EAR_RIGHT], 0);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_HOUR_UP_BUTTON], TRUE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_HOUR_DOWN_BUTTON], TRUE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_MINUTE_UP_BUTTON], TRUE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_MINUTE_DOWN_BUTTON], TRUE);
    UpdateDigits(graphics, clockData->currentHour, clockData->currentMinute);

    EndTask(taskMan);
}

static void Task_EnterEditMode(SysTask *task, void *taskMan)
{
    AlarmClockGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const AlarmClockData *clockData = PoketchTask_GetConstTaskData(taskMan);

    PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);

    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_ALARM_SET_BUTTON], 2);
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_EYE_LEFT], 5);
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_EYE_RIGHT], 4);
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_EAR_LEFT], 0);
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_EAR_RIGHT], 0);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_HOUR_UP_BUTTON], FALSE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_HOUR_DOWN_BUTTON], FALSE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_MINUTE_UP_BUTTON], FALSE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_MINUTE_DOWN_BUTTON], FALSE);
    UpdateDigits(graphics, clockData->alarmHour, clockData->alarmMinute);

    EndTask(taskMan);
}

static void Task_UpdateDigits(SysTask *task, void *taskMan)
{
    AlarmClockGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const AlarmClockData *clockData = PoketchTask_GetConstTaskData(taskMan);

    if (clockData->alarmSet) {
        UpdateDigits(graphics, clockData->currentHour, clockData->currentMinute);
    } else {
        UpdateDigits(graphics, clockData->alarmHour, clockData->alarmMinute);
    }

    EndTask(taskMan);
}

static void Task_SoundAlarm(SysTask *task, void *taskMan)
{
    AlarmClockGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const AlarmClockData *clockData = PoketchTask_GetConstTaskData(taskMan);

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        graphics->stopAlarm = FALSE;
        PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_EYE_LEFT], 4);
        PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_EYE_RIGHT], 4);
        PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_EAR_LEFT], 1);
        PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_EAR_RIGHT], 1);
        PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
        PoketchSystem_PlayCry(SPECIES_LOUDRED, 0);
        graphics->digitBlinkTimer = 0;
        graphics->showDigits = FALSE;
        PoketchTask_IncrementState(taskMan);
        break;
    case 1:
        if (graphics->stopAlarm) {
            PoketchAnimation_HideSprite(graphics->sprites[SPRITE_HOUR_TENS_DIGIT], FALSE);
            PoketchAnimation_HideSprite(graphics->sprites[SPRITE_HOUR_ONES_DIGIT], FALSE);
            PoketchAnimation_HideSprite(graphics->sprites[SPRITE_MINUTE_TENS_DIGIT], FALSE);
            PoketchAnimation_HideSprite(graphics->sprites[SPRITE_MINUTE_ONES_DIGIT], FALSE);
            EndTask(taskMan);
            return;
        }

        if (!Sound_IsPokemonCryPlaying()) {
            PoketchSystem_PlayCry(SPECIES_LOUDRED, 0);
        }

        if (++graphics->digitBlinkTimer >= 15) {
            graphics->digitBlinkTimer = 0;
            graphics->showDigits ^= 1;

            PoketchAnimation_HideSprite(graphics->sprites[SPRITE_HOUR_TENS_DIGIT], graphics->showDigits);
            PoketchAnimation_HideSprite(graphics->sprites[SPRITE_HOUR_ONES_DIGIT], graphics->showDigits);
            PoketchAnimation_HideSprite(graphics->sprites[SPRITE_MINUTE_TENS_DIGIT], graphics->showDigits);
            PoketchAnimation_HideSprite(graphics->sprites[SPRITE_MINUTE_ONES_DIGIT], graphics->showDigits);
        }
        break;
    }
}

void StopSoundingAlarm(AlarmClockGraphics *graphics)
{
    graphics->stopAlarm = TRUE;
}
