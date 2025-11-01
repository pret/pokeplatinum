#include "applications/poketch/pokemon_history/graphics.h"

#include <nitro.h>

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "pokemon_icon.h"
#include "strbuf.h"
#include "sys_task_manager.h"
#include "text.h"

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawBackground(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);
static void SetupSprites(PokemonHistoryGraphics *graphics, const HistoryData *history);
static void UnloadSprites(PokemonHistoryGraphics *graphics);

BOOL PoketchPokemonHistoryGraphics_New(PokemonHistoryGraphics **dest, const HistoryData *history, BgConfig *bgConfig)
{
    PokemonHistoryGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PokemonHistoryGraphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTasks, POKEMON_HISTORY_TASK_SLOTS);
        graphics->history = history;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->animMan = PoketchGraphics_GetAnimationManager();
        *dest = graphics;

        return TRUE;
    }

    return FALSE;
}

void PoketchPokemonHistoryGraphics_Free(PokemonHistoryGraphics *graphics)
{
    if (graphics != NULL) {
        Heap_Free(graphics);
    }
}

static const PoketchTask sPokemonHistoryTasks[] = {
    { POKEMON_HISTORY_GRAPHICS_INIT, Task_DrawBackground, 0 },
    { POKEMON_HISTORY_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { 0 }
};

void PoketchPokemonHistoryGraphics_StartTask(PokemonHistoryGraphics *graphics, enum PokemonHistoryGraphicsTask taskID)
{
    PoketchTask_Start(sPokemonHistoryTasks, taskID, graphics, graphics->history, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchPokemonHistoryGraphics_TaskIsNotActive(PokemonHistoryGraphics *graphics, enum PokemonHistoryGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchPokemonHistoryGraphics_NoActiveTasks(PokemonHistoryGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    PokemonHistoryGraphics *graphics = PoketchTask_GetTaskData(taskMan);
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

    PokemonHistoryGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const HistoryData *history = PoketchTask_GetConstTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);
    Bg_FillTilesRange(graphics->bgConfig, BG_LAYER_SUB_2, 4, 1, 0);
    Bg_FillTilemapRect(graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, 0, POKETCH_WIDTH_TILES, POKETCH_HEIGHT_TILES, 0);

    PoketchGraphics_LoadActivePalette(0, 0);

    Window window;
    Window_Add(graphics->bgConfig, &window, BG_LAYER_SUB_2, 2, 2, 24, 2, 0, 1);
    Window_FillTilemap(&window, 4);
    Window_PutToTilemap(&window);

    Strbuf *strbuf = MessageBank_GetNewStrbufFromNARC(NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKETCH_POKEMON_HISTORY, 0, HEAP_ID_POKETCH_APP);

    if (strbuf) {
        Text_AddPrinterWithParamsAndColor(&window, FONT_SYSTEM, strbuf, (192 - Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0)) / 2, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
        Window_LoadTiles(&window);
        Strbuf_Free(strbuf);
    }

    Window_Remove(&window);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
    SetupSprites(graphics, history);

    GXSDispCnt dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2);

    EndTask(taskMan);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    PokemonHistoryGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    UnloadSprites(graphics);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void SetupSprites(PokemonHistoryGraphics *graphics, const HistoryData *history)
{
    static const PoketchAnimation_AnimationData animData[] = {
        {
            .translation = { FX32_CONST(48 + 40 * 0), FX32_CONST(48 + 48 * 0) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 12,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(48 + 40 * 1), FX32_CONST(48 + 48 * 0) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 11,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(48 + 40 * 2), FX32_CONST(48 + 48 * 0) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 10,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(48 + 40 * 3), FX32_CONST(48 + 48 * 0) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 9,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(48 + 40 * 0), FX32_CONST(48 + 48 * 1) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 8,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(48 + 40 * 1), FX32_CONST(48 + 48 * 1) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 7,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(48 + 40 * 2), FX32_CONST(48 + 48 * 1) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 6,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(48 + 40 * 3), FX32_CONST(48 + 48 * 1) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 5,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(48 + 40 * 0), FX32_CONST(48 + 48 * 2) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 4,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(48 + 40 * 1), FX32_CONST(48 + 48 * 2) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 3,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(48 + 40 * 2), FX32_CONST(48 + 48 * 2) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 2,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(48 + 40 * 3), FX32_CONST(48 + 48 * 2) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 1,
            .hasAffineTransform = TRUE,
        },
    };

    PoketchTask_LoadPokemonIconLuminancePalette(0);
    PoketchAnimation_LoadSpriteFromNARC(&graphics->spriteData, NARC_INDEX_GRAPHIC__POKETCH, 5, 6, HEAP_ID_POKETCH_APP);

    int i;
    for (i = 0; i < history->count; i++) {
        graphics->iconIndices[i] = PokeIconSpriteIndex(history->mons[i].species, FALSE, history->mons[i].icon);
        graphics->sprites[i] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData[i], &graphics->spriteData);

        PoketchAnimation_SetSpriteCharNo(graphics->sprites[i], i * 16);
        PoketchAnimation_SetCParam(graphics->sprites[i], PokeIconPaletteIndex(history->mons[i].species, history->mons[i].icon, FALSE));
    }

    for (; i < MAX_HISTORY_SIZE; i++) {
        graphics->sprites[i] = NULL;
    }

    PoketchTask_LoadPokemonIcons(0, graphics->iconIndices, history->count, FALSE);
}

static void UnloadSprites(PokemonHistoryGraphics *graphics)
{
    for (int i = 0; i < MAX_HISTORY_SIZE; i++) {
        if (graphics->sprites[i] != NULL) {
            PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->sprites[i]);
            graphics->sprites[i] = NULL;
        }
    }

    PoketchAnimation_FreeSpriteData(&graphics->spriteData);
}
