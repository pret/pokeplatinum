#include "applications/poketch/stopwatch/graphics.h"

#include <nitro.h>

#include "generated/sdat.h"

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#include "res/graphics/poketch/poketch.naix"

#define BUTTON_WIDTH_TILES  5
#define BUTTON_HEIGHT_TILES 11

// Sprite Data Indices
#define HOURS_TENS_DIGIT      0
#define HOURS_ONES_DIGIT      1
#define MINUTES_TENS_DIGIT    2
#define MINUTES_ONES_DIGIT    3
#define SECONDS_TENS_DIGIT    4
#define SECONDS_ONES_DIGIT    5
#define SUBSECONDS_TENS_DIGIT 6
#define SUBSECONDS_ONES_DIGIT 7
#define BUTTON_SPRITES        8

// Index of tile group in poketch.narc/00021.NCGR.lz
enum ButtonTileGroup {
    BUTTON_UNPRESSED = 0,
    BUTTON_PRESSED,
    BUTTON_BLINKING_BRIGHT,
    BUTTON_BLINKING_NORMAL,
    BUTTON_BLINKING_DARK,
    BUTTON_EXPLODING_PRESSED,
    BUTTON_EXPLODING_UNPRESSED,
};

typedef struct ButtonBlinkManager {
    u16 frameCount;
    u8 blinkState;
    u8 buttonTileGroup;
} ButtonBlinkManager;

static void SetupSprites(PoketchStopwatchGraphics *graphics, const TimerState *timerState);
static void UnloadSprites(PoketchStopwatchGraphics *graphics);
static void UpdateTimerDigits(PoketchStopwatchGraphics *graphics);
static BOOL LoadObjectTiles(PoketchStopwatchGraphics *graphics);

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawAppScreen(SysTask *task, void *taskMan);
static void Task_UpdateTimer(SysTask *task, void *graphics);
static void Task_UpdateGraphics(SysTask *task, void *taskMan);
static void Task_HandleInactiveTimerGraphics(SysTask *task, void *taskMan);
static void Task_HandleTimerTransition(SysTask *task, void *taskMan);
static void Task_HandleActiveTimer(SysTask *task, void *taskMan);
static void Task_HandleBeginButtonBlinking(SysTask *task, void *taskMan);
static void Task_HandleSpeedUpButtonBlinking(SysTask *task, void *taskMan);
static void Task_BeginExplosion(SysTask *task, void *taskMan);
static void Task_PostResetBlinkingAnimation(SysTask *task, void *taskMan);
static void Task_FreeGraphics(SysTask *task, void *taskMan);

static BOOL UpdateBlinkState(ButtonBlinkManager *blinkManager, u32 framesPerBlinkState);
static void UpdateButtonTiles(BgConfig *bgConfig, enum ButtonTileGroup buttonTileGroup);
struct PoketchSystem *FieldSystem_GetPoketchSystem(void);

BOOL PoketchStopwatchGraphics_New(PoketchStopwatchGraphics **dest, const TimerState *timerState, BgConfig *bgConfig)
{
    PoketchStopwatchGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchStopwatchGraphics));

    if (graphics != NULL) {
        graphics->timerState = timerState;
        graphics->animMan = PoketchGraphics_GetAnimationManager();
        graphics->bgConfig = BgConfig_New(HEAP_ID_POKETCH_APP);

        if (graphics->bgConfig == NULL) {
            return FALSE;
        }

        if (PoketchAnimation_LoadSpriteFromNARC(&graphics->voltorbSprites, NARC_INDEX_GRAPHIC__POKETCH, stopwatch_cell_NCER_lz, stopwatch_anim_NANR_lz, HEAP_ID_POKETCH_APP)) {
            if (PoketchAnimation_LoadSpriteFromNARC(&graphics->digitSprites, NARC_INDEX_GRAPHIC__POKETCH, digits_cell_NCER_lz, digits_anim_NANR_lz, HEAP_ID_POKETCH_APP)) {
                PoketchTask_InitActiveTaskList(graphics->activeTasks, STOPWATCH_TASK_SLOTS);
                graphics->timerUpdateTask = NULL;
                *dest = graphics;
                return TRUE;
            } else {
                PoketchAnimation_FreeSpriteData(&graphics->voltorbSprites);
            }
        }
    }

    return FALSE;
}

void PoketchStopwatchGraphics_Free(PoketchStopwatchGraphics *graphics)
{
    if (graphics) {
        if (graphics->bgConfig) {
            Heap_Free(graphics->bgConfig);
        }

        Heap_Free(graphics);
    }
}

static void Task_UpdateTimer(SysTask *task, void *graphics)
{
    UpdateTimerDigits(graphics);
}

static void UpdateTimerDigits(PoketchStopwatchGraphics *graphics)
{
    u32 tens_digit, ones_digit;

    CP_SetDiv32_32(graphics->timerState->hours, 10);

    tens_digit = CP_GetDivResult32();
    ones_digit = CP_GetDivRemainder32();

    PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[HOURS_TENS_DIGIT], tens_digit);
    PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[HOURS_ONES_DIGIT], ones_digit);

    CP_SetDiv32_32(graphics->timerState->minutes, 10);

    tens_digit = CP_GetDivResult32();
    ones_digit = CP_GetDivRemainder32();

    PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[MINUTES_TENS_DIGIT], tens_digit);
    PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[MINUTES_ONES_DIGIT], ones_digit);

    CP_SetDiv32_32(graphics->timerState->seconds, 10);

    tens_digit = CP_GetDivResult32();
    ones_digit = CP_GetDivRemainder32();

    PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[SECONDS_TENS_DIGIT], tens_digit);
    PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[SECONDS_ONES_DIGIT], ones_digit);

    CP_SetDiv32_32(graphics->timerState->subseconds, 10);

    tens_digit = CP_GetDivResult32();
    ones_digit = CP_GetDivRemainder32();

    PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[SUBSECONDS_TENS_DIGIT], tens_digit);
    PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[SUBSECONDS_ONES_DIGIT], ones_digit);
}

static const PoketchTask sStopwatchTasks[] = {
    { STOPWATCH_GRAPHICS_INIT, Task_DrawAppScreen, 0 },
    { STOPWATCH_GRAPHICS_UPDATE, Task_UpdateGraphics, sizeof(ButtonBlinkManager) },
    { STOPWATCH_GRAPHICS_FREE, Task_FreeGraphics, 0 },
    { 0 }
};

void PoketchStopwatchGraphics_StartTask(PoketchStopwatchGraphics *graphics, enum StopwatchGraphicsTask taskID)
{
    PoketchTask_Start(sStopwatchTasks, taskID, graphics, graphics->timerState, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchStopwatchGraphics_TaskIsNotActive(PoketchStopwatchGraphics *graphics, enum StopwatchGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchStopwatchGraphics_NoActiveTasks(PoketchStopwatchGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    PoketchStopwatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    PoketchTask_EndTask(graphics->activeTasks, taskMan);
}

static void Task_DrawAppScreen(SysTask *task, void *taskMan)
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
    PoketchStopwatchGraphics *bgGraphics = PoketchTask_GetTaskData(taskMan);

    Bg_InitFromTemplate(bgGraphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, stopwatch_bg_tiles_NCGR_lz, bgGraphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, stopwatch_NSCR_lz, bgGraphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);
    Bg_CopyTilemapBufferToVRAM(bgGraphics->bgConfig, BG_LAYER_SUB_2);

    PoketchStopwatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const TimerState *timerState = PoketchTask_GetConstTaskData(taskMan);

    LoadObjectTiles(graphics);
    SetupSprites(graphics, timerState);

    bgGraphics->timerUpdateTask = SysTask_Start(Task_UpdateTimer, bgGraphics, 3);

    UpdateTimerDigits(graphics);

    if (timerState->isActive) {
        PoketchStopwatchGraphics_StartTask(graphics, STOPWATCH_GRAPHICS_UPDATE);
    }

    dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ);

    EndTask(taskMan);
}

static BOOL LoadObjectTiles(PoketchStopwatchGraphics *graphics)
{
    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, digits_NCGR_lz, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, stopwatch_NCGR_lz, DS_SCREEN_SUB, POKETCH_DIGITS_NCGR_NUM_TILES * TILE_SIZE_4BPP, 0, TRUE, HEAP_ID_POKETCH_APP);

    return TRUE;
}

static void SetupSprites(PoketchStopwatchGraphics *graphics, const TimerState *timerState)
{
    static const PoketchAnimation_AnimationData animData[] = {
        {
            .translation = { FX32_CONST(32), FX32_CONST(40) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(32 + 16), FX32_CONST(40) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(80), FX32_CONST(40) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(80 + 16), FX32_CONST(40) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(128), FX32_CONST(40) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(128 + 16), FX32_CONST(40) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(176), FX32_CONST(40) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(176 + 16), FX32_CONST(40) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(112), FX32_CONST(96) },
            .animIdx = 10,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 2,
            .hasAffineTransform = FALSE,
        },
    };
    u32 i;

    for (i = 0; i <= BUTTON_SPRITES - 1; i++) {
        graphics->animSpriteData[i] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData[i], &graphics->digitSprites);
    }

    graphics->animSpriteData[BUTTON_SPRITES] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData[i], &graphics->voltorbSprites);

    if (timerState->isActive == FALSE) {
        PoketchAnimation_HideSprite(graphics->animSpriteData[BUTTON_SPRITES], TRUE);
    }
}

static void Task_UpdateGraphics(SysTask *task, void *taskMan)
{
    static void (*const buttonGraphicTasks[])(SysTask *, void *) = {
        Task_HandleInactiveTimerGraphics,
        Task_HandleTimerTransition,
        Task_HandleActiveTimer,
        Task_HandleBeginButtonBlinking,
        Task_HandleSpeedUpButtonBlinking,
        Task_BeginExplosion,
        Task_PostResetBlinkingAnimation
    };

    const TimerState *timerState = PoketchTask_GetConstTaskData(taskMan);

    SysTask_SetCallback(task, buttonGraphicTasks[timerState->buttonSequence]);
    buttonGraphicTasks[timerState->buttonSequence](task, taskMan);
}

static void Task_HandleInactiveTimerGraphics(SysTask *task, void *taskMan)
{
    PoketchStopwatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const TimerState *timerState = PoketchTask_GetConstTaskData(taskMan);

    PoketchAnimation_HideSprite(graphics->animSpriteData[BUTTON_SPRITES], TRUE);
    UpdateButtonTiles(graphics->bgConfig, BUTTON_UNPRESSED);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_HandleTimerTransition(SysTask *task, void *taskMan)
{
    PoketchStopwatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    PoketchAnimation_HideSprite(graphics->animSpriteData[BUTTON_SPRITES], FALSE);
    PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[BUTTON_SPRITES], 11);
    UpdateButtonTiles(graphics->bgConfig, BUTTON_PRESSED);

    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_010);
    EndTask(taskMan);
}

static void Task_HandleActiveTimer(SysTask *task, void *taskMan)
{
    const TimerState *timerState = PoketchTask_GetConstTaskData(taskMan);
    PoketchStopwatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    if (timerState->buttonSequence != 2) {
        EndTask(taskMan);
        return;
    }

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[BUTTON_SPRITES], 12);
        UpdateButtonTiles(graphics->bgConfig, BUTTON_UNPRESSED);
        Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
        PoketchTask_IncrementState(taskMan);
        break;
    case 1:
        break;
    }
}

static void Task_HandleBeginButtonBlinking(SysTask *task, void *taskMan)
{
    const TimerState *timerState = PoketchTask_GetConstTaskData(taskMan);
    PoketchStopwatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    ButtonBlinkManager *blinkManager = PoketchTask_GetExtraData(taskMan);

    if (timerState->buttonSequence != 3) {
        EndTask(taskMan);
        return;
    }

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        blinkManager->frameCount = 6;
        blinkManager->buttonTileGroup = BUTTON_BLINKING_BRIGHT;
        blinkManager->blinkState = 0;

        PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[BUTTON_SPRITES], 13);
        PoketchTask_IncrementState(taskMan);
    case 1:
        if (UpdateBlinkState(blinkManager, 6)) {
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_010);
            UpdateButtonTiles(graphics->bgConfig, blinkManager->buttonTileGroup);
            Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
        }
        break;
    }
}

static void Task_HandleSpeedUpButtonBlinking(SysTask *task, void *taskMan)
{
    const TimerState *timerState = PoketchTask_GetConstTaskData(taskMan);
    PoketchStopwatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    ButtonBlinkManager *blinkManager = PoketchTask_GetExtraData(taskMan);

    if (timerState->buttonSequence != 4) {
        EndTask(taskMan);
        return;
    }

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        blinkManager->frameCount = 3;
        blinkManager->buttonTileGroup = BUTTON_BLINKING_BRIGHT;
        blinkManager->blinkState = 0;

        PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[BUTTON_SPRITES], 14);
        PoketchTask_IncrementState(taskMan);
    case 1:
        if (UpdateBlinkState(blinkManager, 3)) {
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_010);
            UpdateButtonTiles(graphics->bgConfig, blinkManager->buttonTileGroup);
            Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
        }
        break;
    }
}

static void Task_BeginExplosion(SysTask *task, void *taskMan)
{
    const TimerState *timerState = PoketchTask_GetConstTaskData(taskMan);
    PoketchStopwatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    ButtonBlinkManager *blinkManager = PoketchTask_GetExtraData(taskMan);

    if (timerState->buttonSequence != 5) {
        EndTask(taskMan);
        return;
    }

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        blinkManager->frameCount = 0;
        blinkManager->blinkState = 0;
        PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[BUTTON_SPRITES], 15);
        UpdateButtonTiles(graphics->bgConfig, BUTTON_EXPLODING_PRESSED);
        Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
        PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_006);
        PoketchTask_IncrementState(taskMan);
    case 1:
        if (++(blinkManager->frameCount) > 2) {
            blinkManager->frameCount = 0;
            blinkManager->blinkState ^= 1;
            blinkManager->buttonTileGroup = BUTTON_EXPLODING_PRESSED + blinkManager->blinkState;
            UpdateButtonTiles(graphics->bgConfig, blinkManager->buttonTileGroup);
            Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
        }
        break;
    }
}

static void Task_PostResetBlinkingAnimation(SysTask *task, void *taskMan)
{
    const TimerState *timerState = PoketchTask_GetConstTaskData(taskMan);
    PoketchStopwatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    ButtonBlinkManager *blinkManager = PoketchTask_GetExtraData(taskMan);

    if (timerState->buttonSequence != 6) {
        EndTask(taskMan);
        return;
    }

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[BUTTON_SPRITES], 16);
        UpdateButtonTiles(graphics->bgConfig, BUTTON_EXPLODING_UNPRESSED);
        Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
        PoketchTask_IncrementState(taskMan);
        blinkManager->frameCount = 0;
    case 1:
        if (++blinkManager->frameCount > 80) {
            EndTask(taskMan);
        }
        break;
    }
}

static BOOL UpdateBlinkState(ButtonBlinkManager *blinkManager, u32 framesPerBlinkState)
{
    static const u8 blinkingButtonTileGroups[] = {
        BUTTON_BLINKING_BRIGHT,
        BUTTON_BLINKING_NORMAL,
        BUTTON_BLINKING_DARK,
    };

    if (++blinkManager->frameCount > framesPerBlinkState) {
        blinkManager->frameCount = 0;

        if (++blinkManager->blinkState >= NELEMS(blinkingButtonTileGroups)) {
            blinkManager->blinkState = 0;
        }

        blinkManager->buttonTileGroup = blinkingButtonTileGroups[blinkManager->blinkState];
        return TRUE;
    }

    return FALSE;
}

static void UpdateButtonTiles(BgConfig *bgConfig, enum ButtonTileGroup buttonTileGroup)
{
    u16 *tilemapBuffer;
    u32 x, y;
    u16 buttonStartTile;

    tilemapBuffer = Bg_GetTilemapBuffer(bgConfig, BG_LAYER_SUB_2);
    tilemapBuffer += (9 * 32) + 9;
    // There's two columns of filler in the Button tile graphics file
    buttonStartTile = (buttonTileGroup * BUTTON_WIDTH_TILES) + 2;

    for (y = 0; y < BUTTON_HEIGHT_TILES; y++) {
        for (x = 0; x < BUTTON_WIDTH_TILES; x++) {
            tilemapBuffer[x] = buttonStartTile + x;
            tilemapBuffer[BUTTON_WIDTH_TILES * 2 - 1 - x] = ((buttonStartTile + x) | GX_SCRFMT_TEXT_HF_MASK);
        }

        tilemapBuffer += 32;
        buttonStartTile += (BUTTON_WIDTH_TILES * 7) + 2;
    }
}

static void Task_FreeGraphics(SysTask *task, void *taskMan)
{
    PoketchStopwatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    u32 taskState = PoketchTask_GetState(taskMan);

    switch (taskState) {
    case 0:
        UnloadSprites(graphics);
        PoketchTask_IncrementState(taskMan);
    case 1:
        PoketchAnimation_FreeSpriteData(&(graphics->voltorbSprites));
        PoketchAnimation_FreeSpriteData(&(graphics->digitSprites));
        Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
        SysTask_Done(graphics->timerUpdateTask);
        graphics->timerUpdateTask = NULL;
        EndTask(taskMan);
        break;
    }
}

static void UnloadSprites(PoketchStopwatchGraphics *graphics)
{
    for (u32 i = 0; i < 9; i++) {
        PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->animSpriteData[i]);
    }
}
