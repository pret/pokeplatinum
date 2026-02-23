#include "applications/poketch/move_tester/graphics.h"

#include "nitro/fx/fx.h"
#include <nitro.h>

#include "constants/graphics.h"
#include "constants/heap.h"
#include "constants/narc.h"
#include "generated/pokemon_types.h"
#include "generated/sdat.h"

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "font.h"
#include "graphics.h"
#include "heap.h"
#include "message.h"
#include "palette.h"
#include "string_gf.h"
#include "sys_task_manager.h"
#include "text.h"

#include "res/graphics/poketch/poketch.naix"
#include "res/text/bank/poketch_move_tester.h"

static const PoketchAnimation_AnimationData sPoketchMoveTester_AnimDataButtons[] = {
    {
        .translation = { FX32_CONST(28), FX32_CONST(128) },
        .animIdx = 0,
        .flip = NNS_G2D_RENDERERFLIP_NONE,
        .oamPriority = 2,
        .priority = 0,
        .hasAffineTransform = 0,
    },
    {
        .translation = { FX32_CONST(116), FX32_CONST(128) },
        .animIdx = 2,
        .flip = NNS_G2D_RENDERERFLIP_NONE,
        .oamPriority = 2,
        .priority = 0,
        .hasAffineTransform = 0,
    },
    {
        .translation = { FX32_CONST(108), FX32_CONST(40) },
        .animIdx = 0,
        .flip = NNS_G2D_RENDERERFLIP_NONE,
        .oamPriority = 2,
        .priority = 0,
        .hasAffineTransform = 0,
    },
    {
        .translation = { FX32_CONST(196), FX32_CONST(40) },
        .animIdx = 2,
        .flip = NNS_G2D_RENDERERFLIP_NONE,
        .oamPriority = 2,
        .priority = 0,
        .hasAffineTransform = 0,
    },
    {
        .translation = { FX32_CONST(108), FX32_CONST(72) },
        .animIdx = 0,
        .flip = NNS_G2D_RENDERERFLIP_NONE,
        .oamPriority = 2,
        .priority = 0,
        .hasAffineTransform = 0,
    },
    {
        .translation = { FX32_CONST(196), FX32_CONST(72) },
        .animIdx = 2,
        .flip = NNS_G2D_RENDERERFLIP_NONE,
        .oamPriority = 2,
        .priority = 0,
        .hasAffineTransform = 0,
    }
};

static const PoketchAnimation_AnimationData sPoketchMoveTester_AnimDataExclamation = {
    .translation = { FX32_CONST(44), FX32_CONST(48) },
    .animIdx = 5,
    .flip = NNS_G2D_RENDERERFLIP_NONE,
    .oamPriority = 2,
    .priority = 0,
    .hasAffineTransform = 0,
};

static const BgTemplate sMoveTesterBgTemplate = {
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

static void SetupSprites(PoketchMoveTesterGraphics *graphics);
static void UnloadSprites(PoketchMoveTesterGraphics *graphics);
static void AddWindows(PoketchMoveTesterGraphics *graphics, const MoveTesterData *moveTesterData, u32 baseTile);
static void RemoveWindows(PoketchMoveTesterGraphics *graphics);

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawAppScreen(SysTask *task, void *taskMan);
static void Task_FreeWindowsAndBG(SysTask *task, void *taskMan);
static void Task_ButtonPressed(SysTask *task, void *taskMan);
static void Task_ButtonReleased(SysTask *task, void *taskMan);
static void Task_UpdateGraphics(SysTask *task, void *taskMan);

static void UpdateGraphics(PoketchMoveTesterGraphics *graphics, const MoveTesterData *moveTesterData);
static void AddTypeText(PoketchMoveTesterGraphics *graphics, Window *window, enum PokemonType type);
static void AddEffectivenessText(PoketchMoveTesterGraphics *graphics, Window *window, u32 exclamCount);
static void DisplayExclamation(PoketchMoveTesterGraphics *graphics, u32 exclamCount);

BOOL PoketchMoveTesterGraphics_New(PoketchMoveTesterGraphics **dest, const MoveTesterData *moveTesterData, BgConfig *bgConfig)
{
    PoketchMoveTesterGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchMoveTesterGraphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTasks, MOVE_TESTER_TASK_SLOTS);
        graphics->moveTesterData = moveTesterData;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->animMan = PoketchGraphics_GetAnimationManager();
        graphics->msgLoaderTypes = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEMON_TYPE_NAMES, HEAP_ID_POKETCH_APP);
        graphics->msgLoaderEffectiveness = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKETCH_MOVE_TESTER, HEAP_ID_POKETCH_APP);
        graphics->string = String_Init(128, HEAP_ID_POKETCH_APP); // Possibly TRAINER_NAME_LEN + 1
        SetupSprites(graphics);
        *dest = graphics;

        return TRUE;
    }

    return FALSE;
}

static void SetupSprites(PoketchMoveTesterGraphics *graphics)
{
    int index;

    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, move_tester_NCGR_lz, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    PoketchAnimation_LoadSpriteFromNARC(&graphics->spriteData, NARC_INDEX_GRAPHIC__POKETCH, move_tester_cell_NCER_lz, move_tester_anim_NANR_lz, HEAP_ID_POKETCH_APP);

    for (index = 0; index < 6; index++) {
        graphics->animSpriteData[index] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &sPoketchMoveTester_AnimDataButtons[index], &graphics->spriteData);
    }

    for (index = 0; index < 5; index++) {
        graphics->exclamSprites[index] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &sPoketchMoveTester_AnimDataExclamation, &graphics->spriteData);
        PoketchAnimation_SetSpritePosition(graphics->exclamSprites[index], (44 + 8 * index) << FX32_SHIFT, FX32_CONST(48));
    }
}

static void UnloadSprites(PoketchMoveTesterGraphics *graphics)
{
    int index;

    for (index = 0; index < 6; index++) {
        if (graphics->animSpriteData[index]) {
            PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->animSpriteData[index]);
        }
    }

    for (index = 0; index < 5; index++) {
        if (graphics->exclamSprites[index]) {
            PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->exclamSprites[index]);
        }
    }

    PoketchAnimation_FreeSpriteData(&graphics->spriteData);
}

void PoketchMoveTesterGraphics_Free(PoketchMoveTesterGraphics *graphics)
{
    if (graphics != NULL) {
        String_Free(graphics->string);
        MessageLoader_Free(graphics->msgLoaderTypes);
        MessageLoader_Free(graphics->msgLoaderEffectiveness);
        UnloadSprites(graphics);
        Heap_Free(graphics);
    }
}

static const PoketchTask sMoveTesterTasks[] = {
    { MOVE_TESTER_GRAPHICS_INIT, Task_DrawAppScreen, 0 },
    { MOVE_TESTER_GRAPHICS_FREE, Task_FreeWindowsAndBG, 0 },
    { MOVE_TESTER_GRAPHICS_BUTTON_PRESSED, Task_ButtonPressed, 0 },
    { MOVE_TESTER_GRAPHICS_BUTTON_RELEASED, Task_ButtonReleased, 0 },
    { MOVE_TESTER_GRAPHICS_UPDATE, Task_UpdateGraphics, 0 },
    { 0 }
};

void PoketchMoveTesterGraphics_StartTask(PoketchMoveTesterGraphics *graphics, enum MoveTesterGraphicsTask taskID)
{
    PoketchTask_Start(sMoveTesterTasks, taskID, graphics, graphics->moveTesterData, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchMoveTesterGraphics_TaskIsNotActive(PoketchMoveTesterGraphics *graphics, enum MoveTesterGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchMoveTesterGraphics_NoActiveTasks(PoketchMoveTesterGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    PoketchMoveTesterGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    PoketchTask_EndTask(graphics->activeTasks, taskMan);
}

static void Task_DrawAppScreen(SysTask *task, void *taskMan)
{
    GXSDispCnt dispCnt;
    PoketchMoveTesterGraphics *graphics;
    const MoveTesterData *moveTesterData;
    void *unused;
    NNSG2dPaletteData *paletteData;
    u32 tileSize;

    graphics = PoketchTask_GetTaskData(taskMan);
    moveTesterData = PoketchTask_GetConstTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &sMoveTesterBgTemplate, BG_TYPE_STATIC);

    tileSize = Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, move_tester_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, move_tester_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    PoketchGraphics_LoadActivePalette(0, 0);

    tileSize /= 0x20;
    AddWindows(graphics, moveTesterData, tileSize);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2);

    EndTask(taskMan);
}

static void AddWindows(PoketchMoveTesterGraphics *graphics, const MoveTesterData *moveTesterData, u32 baseTile)
{
    Window_Add(graphics->bgConfig, &(graphics->windowAttackType), BG_LAYER_SUB_2, 6, 15, 6, 2, PLTT_0, baseTile);
    baseTile += 12;

    Window_Add(graphics->bgConfig, &(graphics->windowDefenderType1), BG_LAYER_SUB_2, 16, 4, 6, 2, PLTT_0, baseTile);
    baseTile += 12;

    Window_Add(graphics->bgConfig, &(graphics->windowDefenderType2), BG_LAYER_SUB_2, 16, 8, 6, 2, PLTT_0, baseTile);
    baseTile += 12;

    Window_Add(graphics->bgConfig, &(graphics->windowExclamations), BG_LAYER_SUB_2, 3, 19, 22, 2, PLTT_0, baseTile);

    Window_PutToTilemap(&graphics->windowAttackType);
    Window_PutToTilemap(&graphics->windowDefenderType1);
    Window_PutToTilemap(&graphics->windowDefenderType2);
    Window_PutToTilemap(&graphics->windowExclamations);

    UpdateGraphics(graphics, moveTesterData);
}

static void RemoveWindows(PoketchMoveTesterGraphics *graphics)
{
    Window_Remove(&graphics->windowAttackType);
    Window_Remove(&graphics->windowDefenderType1);
    Window_Remove(&graphics->windowDefenderType2);
    Window_Remove(&graphics->windowExclamations);
}

static void Task_FreeWindowsAndBG(SysTask *task, void *taskMan)
{
    PoketchMoveTesterGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    RemoveWindows(graphics);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_ButtonPressed(SysTask *task, void *taskMan)
{
    PoketchMoveTesterGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const MoveTesterData *moveTesterData = PoketchTask_GetConstTaskData(taskMan);
    u32 animIdx = (moveTesterData->lastButtonPressed & 1) ? 3 : 1;

    PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[moveTesterData->lastButtonPressed], animIdx);
    PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
    EndTask(taskMan);
}

static void Task_ButtonReleased(SysTask *task, void *taskMan)
{
    PoketchMoveTesterGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const MoveTesterData *moveTesterData = PoketchTask_GetConstTaskData(taskMan);
    u32 animIdx = (moveTesterData->lastButtonPressed & 1) ? 2 : 0;

    PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[moveTesterData->lastButtonPressed], animIdx);
    EndTask(taskMan);
}

static void Task_UpdateGraphics(SysTask *task, void *taskMan)
{
    PoketchMoveTesterGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const MoveTesterData *moveTesterData = PoketchTask_GetConstTaskData(taskMan);

    UpdateGraphics(graphics, moveTesterData);
    EndTask(taskMan);
}

static void UpdateGraphics(PoketchMoveTesterGraphics *graphics, const MoveTesterData *moveTesterData)
{
    AddTypeText(graphics, &graphics->windowAttackType, moveTesterData->attackType);
    AddTypeText(graphics, &graphics->windowDefenderType1, moveTesterData->defenderType1);
    AddTypeText(graphics, &graphics->windowDefenderType2, moveTesterData->defenderType2);
    AddEffectivenessText(graphics, &graphics->windowExclamations, moveTesterData->exclamCount);
    DisplayExclamation(graphics, moveTesterData->exclamCount);
}

static void AddTypeText(PoketchMoveTesterGraphics *graphics, Window *window, enum PokemonType type)
{
    u32 stringWidth;

    Window_FillTilemap(window, 4);

    if (type == MOVE_TESTER_NONE_SELECTED) {
        MessageLoader_GetString(graphics->msgLoaderEffectiveness, MoveTester_Text_None, graphics->string);
    } else {
        MessageLoader_GetString(graphics->msgLoaderTypes, type, graphics->string);
    }

    stringWidth = Font_CalcStringWidth(FONT_SYSTEM, graphics->string, 0);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, graphics->string, ((6 * 8) - stringWidth) / 2, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
    Window_LoadTiles(window);
}

static void AddEffectivenessText(PoketchMoveTesterGraphics *graphics, Window *window, u32 exclamCount)
{
    Window_FillTilemap(window, 4);
    MessageLoader_GetString(graphics->msgLoaderEffectiveness, exclamCount, graphics->string);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, graphics->string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
    Window_LoadTiles(window);
}

static void DisplayExclamation(PoketchMoveTesterGraphics *graphics, u32 exclamCount)
{
    u32 index;

    for (index = 0; index < exclamCount; index++) {
        PoketchAnimation_UpdateAnimationIdx(graphics->exclamSprites[index], 4);
    }

    for (; index < 5; index++) {
        PoketchAnimation_UpdateAnimationIdx(graphics->exclamSprites[index], 5);
    }
}
