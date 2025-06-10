#include "applications/poketch/move_tester/graphics.h"

#include "nitro/fx/fx.h"
#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/narc.h"
#include "constants/screen.h"
#include "generated/pokemon_types.h"
#include "generated/sdat.h"

#include "poketch/poketch_animation.h"
#include "poketch/poketch_graphics.h"
#include "poketch/poketch_system.h"
#include "poketch/poketch_task.h"

#include "bg_window.h"
#include "font.h"
#include "graphics.h"
#include "heap.h"
#include "message.h"
#include "palette.h"
#include "strbuf.h"
#include "sys_task_manager.h"
#include "text.h"

static const PoketchAnimation_AnimationData sPoketchMoveTester_AnimDataButtons[6] = {
    {
        .translation = { FX32_CONST(28), FX32_CONST(128) },
        .animIdx = 0,
        .flip = 0,
        .oamPriority = 2,
        .priority = 0,
        .hasAffineTransform = 0,
    },
    {
        .translation = { FX32_CONST(116), FX32_CONST(128) },
        .animIdx = 2,
        .flip = 0,
        .oamPriority = 2,
        .priority = 0,
        .hasAffineTransform = 0,
    },
    {
        .translation = { FX32_CONST(108), FX32_CONST(40) },
        .animIdx = 0,
        .flip = 0,
        .oamPriority = 2,
        .priority = 0,
        .hasAffineTransform = 0,
    },
    {
        .translation = { FX32_CONST(196), FX32_CONST(40) },
        .animIdx = 2,
        .flip = 0,
        .oamPriority = 2,
        .priority = 0,
        .hasAffineTransform = 0,
    },
    {
        .translation = { FX32_CONST(108), FX32_CONST(72) },
        .animIdx = 0,
        .flip = 0,
        .oamPriority = 2,
        .priority = 0,
        .hasAffineTransform = 0,
    },
    {
        .translation = { FX32_CONST(196), FX32_CONST(72) },
        .animIdx = 2,
        .flip = 0,
        .oamPriority = 2,
        .priority = 0,
        .hasAffineTransform = 0,
    }
};

static const PoketchAnimation_AnimationData sPoketchMoveTester_AnimDataExclamation = {
    .translation = { FX32_CONST(44), FX32_CONST(48) },
    .animIdx = 5,
    .flip = 0,
    .oamPriority = 2,
    .priority = 0,
    .hasAffineTransform = 0,
};

static void SetupSprites(PoketchMoveTesterGraphics *graphics);
static void UnloadSprites(PoketchMoveTesterGraphics *graphics);
static void EndPoketchTask(PoketchTaskManager *taskMan);
static void Task_DrawAppScreen(SysTask *task, void *param1);
static void AddWindows(PoketchMoveTesterGraphics *graphics, const MoveTesterData *moveTesterData, u32 baseTile);
static void RemoveWindows(PoketchMoveTesterGraphics *graphics);
static void Task_FreeWindowsAndBG(SysTask *task, void *taskMan);
static void Task_ButtonPressed(SysTask *task, void *taskMan);
static void Task_ButtonReleased(SysTask *task, void *taskMan);
static void Task_UpdateGraphics(SysTask *task, void *taskMan);
static void UpdateGraphics(PoketchMoveTesterGraphics *graphics, const MoveTesterData *moveTesterData);
static void AddTypeText(PoketchMoveTesterGraphics *graphics, Window *window, enum PokemonType type);
static void AddEffectivenessText(PoketchMoveTesterGraphics *graphics, Window *window, u32 exclamCount);
static void DisplayExclamation(PoketchMoveTesterGraphics *graphics, u32 exclamCount);

BOOL PoketchMoveTesterGraphics_New(PoketchMoveTesterGraphics **graphics, const MoveTesterData *moveTesterData, BgConfig *bgConfig)
{
    PoketchMoveTesterGraphics *moveTesterGraphics = (PoketchMoveTesterGraphics *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(PoketchMoveTesterGraphics));

    if (moveTesterGraphics != NULL) {
        PoketchTask_InitActiveTaskList(moveTesterGraphics->activeTasks, 8);
        moveTesterGraphics->moveTesterData = moveTesterData;
        moveTesterGraphics->bgConfig = PoketchGraphics_GetBgConfig();
        moveTesterGraphics->animMan = PoketchGraphics_GetAnimationManager();
        moveTesterGraphics->msgLoaderTypes = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEMON_TYPE_NAMES, HEAP_ID_POKETCH_APP);
        moveTesterGraphics->msgLoaderEffectiveness = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0456, HEAP_ID_POKETCH_APP);
        moveTesterGraphics->strBuf = Strbuf_Init(128, HEAP_ID_POKETCH_APP); // Possibly TRAINER_NAME_LEN + 1
        SetupSprites(moveTesterGraphics);
        *graphics = moveTesterGraphics;

        return TRUE;
    }

    return FALSE;
}

static void SetupSprites(PoketchMoveTesterGraphics *graphics)
{
    int index;

    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, 64, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    PoketchAnimation_LoadSpriteFromNARC(&graphics->spriteData, NARC_INDEX_GRAPHIC__POKETCH, 62, 63, HEAP_ID_POKETCH_APP);

    for (index = 0; index < 6; index++) {
        graphics->animSpriteData[index] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &sPoketchMoveTester_AnimDataButtons[index], &graphics->spriteData);
    }

    for (index = 0; index < 5; index++) {
        graphics->exclamSprites[index] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &sPoketchMoveTester_AnimDataExclamation, &graphics->spriteData);
        PoketchAnimation_SetSpritePosition(graphics->exclamSprites[index], ((44 + 8 * index) << FX32_SHIFT), FX32_CONST(48));
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
        Strbuf_Free(graphics->strBuf);
        MessageLoader_Free(graphics->msgLoaderTypes);
        MessageLoader_Free(graphics->msgLoaderEffectiveness);
        UnloadSprites(graphics);
        Heap_FreeToHeap(graphics);
    }
}

static const PoketchTask sMoveTesterTasks[] = {
    { TASK_DRAW_APP_SCREEN, Task_DrawAppScreen, 0x0 },
    { TASK_FREE_WINDOWS_AND_BG, Task_FreeWindowsAndBG, 0x0 },
    { TASK_BUTTON_PRESSED, Task_ButtonPressed, 0x0 },
    { TASK_BUTTON_RELEASED, Task_ButtonReleased, 0x0 },
    { TASK_UPDATE_GRAPHICS, Task_UpdateGraphics, 0x0 },
    { 0 }
};

void PoketchMoveTesterGraphics_StartTask(PoketchMoveTesterGraphics *graphics, enum MoveTesterGraphicsTasks taskID)
{
    PoketchTask_Start(sMoveTesterTasks, taskID, graphics, graphics->moveTesterData, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchMoveTesterGraphics_CheckTaskActive(PoketchMoveTesterGraphics *graphics, enum MoveTesterGraphicsTasks taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchMoveTesterGraphics_NoActiveTasks(PoketchMoveTesterGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndPoketchTask(PoketchTaskManager *taskMan)
{
    PoketchMoveTesterGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    PoketchTask_EndTask(graphics->activeTasks, taskMan);
}

static void Task_DrawAppScreen(SysTask *task, void *taskMan)
{
    static const BgTemplate sMoveTesterBgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = 1,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x7000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .dummy = 0,
        .mosaic = FALSE
    };
    GXSDispCnt dispCnt;
    PoketchMoveTesterGraphics *graphics;
    const MoveTesterData *moveTesterData;
    void *unused;
    NNSG2dPaletteData *paletteData;
    u32 tileSize;

    graphics = PoketchTask_GetTaskData(taskMan);
    moveTesterData = PoketchTask_GetConstTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &sMoveTesterBgTemplate, 0);

    tileSize = Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, 61, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, 1, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, 60, graphics->bgConfig, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);
    PoketchGraphics_LoadActivePalette(0, 0);

    tileSize /= 0x20;
    AddWindows(graphics, moveTesterData, tileSize);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2);

    EndPoketchTask(taskMan);
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

    Window_PutToTilemap(&(graphics->windowAttackType));
    Window_PutToTilemap(&(graphics->windowDefenderType1));
    Window_PutToTilemap(&(graphics->windowDefenderType2));
    Window_PutToTilemap(&(graphics->windowExclamations));

    UpdateGraphics(graphics, moveTesterData);
}

static void RemoveWindows(PoketchMoveTesterGraphics *graphics)
{
    Window_Remove(&(graphics->windowAttackType));
    Window_Remove(&(graphics->windowDefenderType1));
    Window_Remove(&(graphics->windowDefenderType2));
    Window_Remove(&(graphics->windowExclamations));
}

static void Task_FreeWindowsAndBG(SysTask *task, void *taskMan)
{
    PoketchMoveTesterGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    RemoveWindows(graphics);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    EndPoketchTask(taskMan);
}

static void Task_ButtonPressed(SysTask *task, void *taskMan)
{
    PoketchMoveTesterGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const MoveTesterData *moveTesterData = PoketchTask_GetConstTaskData(taskMan);
    u32 animIdx = (moveTesterData->lastButtonPressed & 1) ? 3 : 1;

    PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[moveTesterData->lastButtonPressed], animIdx);
    PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
    EndPoketchTask(taskMan);
}

static void Task_ButtonReleased(SysTask *task, void *taskMan)
{
    PoketchMoveTesterGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const MoveTesterData *moveTesterData = PoketchTask_GetConstTaskData(taskMan);
    u32 animIdx = (moveTesterData->lastButtonPressed & 1) ? 2 : 0;

    PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[moveTesterData->lastButtonPressed], animIdx);
    EndPoketchTask(taskMan);
}

static void Task_UpdateGraphics(SysTask *task, void *taskMan)
{
    PoketchMoveTesterGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const MoveTesterData *moveTesterData = PoketchTask_GetConstTaskData(taskMan);

    UpdateGraphics(graphics, moveTesterData);
    EndPoketchTask(taskMan);
}

static void UpdateGraphics(PoketchMoveTesterGraphics *graphics, const MoveTesterData *moveTesterData)
{
    AddTypeText(graphics, &(graphics->windowAttackType), moveTesterData->attackType);
    AddTypeText(graphics, &(graphics->windowDefenderType1), moveTesterData->defenderType1);
    AddTypeText(graphics, &(graphics->windowDefenderType2), moveTesterData->defenderType2);
    AddEffectivenessText(graphics, &(graphics->windowExclamations), moveTesterData->exclamCount);
    DisplayExclamation(graphics, moveTesterData->exclamCount);
}

static void AddTypeText(PoketchMoveTesterGraphics *graphics, Window *window, enum PokemonType type)
{
    u32 stringWidth;

    Window_FillTilemap(window, 4);

    if (type == MOVE_TESTER_NONE_SELECTED) {
        MessageLoader_GetStrbuf(graphics->msgLoaderEffectiveness, 6, graphics->strBuf); // "None"
    } else {
        MessageLoader_GetStrbuf(graphics->msgLoaderTypes, type, graphics->strBuf);
    }

    stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, graphics->strBuf, 0);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, graphics->strBuf, ((6 * 8) - stringWidth) / 2, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
    Window_LoadTiles(window);
}

static void AddEffectivenessText(PoketchMoveTesterGraphics *graphics, Window *window, u32 exclamCount)
{
    Window_FillTilemap(window, 4);
    MessageLoader_GetStrbuf(graphics->msgLoaderEffectiveness, exclamCount, graphics->strBuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, graphics->strBuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
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
