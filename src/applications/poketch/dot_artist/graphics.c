#include "applications/poketch/dot_artist/graphics.h"

#include <nitro.h>

#include "constants/graphics.h"

#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "heap.h"
#include "sys_task_manager.h"

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawBackground(SysTask *task, void *taskMan);
static void Task_UpdateCanvas(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);

static void GenerateDotTiles(BgConfig *bgConfig);
static void UpdateTilemap(BgConfig *bgConfig, const DotArt *dotArt);

BOOL PoketchDotArtistGraphics_New(DotArtistGraphics **dest, const DotArt *dotArt, BgConfig *bgConfig)
{
    DotArtistGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(DotArtistGraphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTasks, DOT_ARTIST_TASK_SLOTS);

        graphics->dotArt = dotArt;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();

        if (graphics->bgConfig != NULL) {
            *dest = graphics;
            return TRUE;
        }
    }

    return FALSE;
}

void PoketchDotArtistGraphics_Free(DotArtistGraphics *graphics)
{
    if (graphics != NULL) {
        Heap_Free(graphics);
    }
}

static const PoketchTask sDotArtistGraphicsTasks[] = {
    { DOT_ARTIST_GRAPHICS_INIT, Task_DrawBackground, 0 },
    { DOT_ARTIST_GRAPHICS_UPDATE, Task_UpdateCanvas, 0 },
    { DOT_ARTIST_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { 0 }
};

void PoketchDotArtistGraphics_StartTask(DotArtistGraphics *graphics, enum DotArtistGraphicsTask taskID)
{
    PoketchTask_Start(sDotArtistGraphicsTasks, taskID, graphics, graphics->dotArt, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchDotArtistGraphics_TaskIsNotActive(DotArtistGraphics *graphics, enum DotArtistGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchDotArtistGraphics_NoActiveTasks(DotArtistGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    DotArtistGraphics *graphics = PoketchTask_GetTaskData(taskMan);
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
    DotArtistGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);

    GenerateDotTiles(graphics->bgConfig);
    UpdateTilemap(graphics->bgConfig, graphics->dotArt);
    PoketchGraphics_LoadActivePalette(0, 0);

    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2);
    EndTask(taskMan);
}

static void GenerateDotTiles(BgConfig *bgConfig)
{
    u8 *tiles = Heap_Alloc(HEAP_ID_POKETCH_APP, TILE_SIZE_4BPP * PALETTE_SIZE);

    if (tiles) {
        u32 tileFillValue;

        for (int i = 0; i < PALETTE_SIZE; i++) {
            tileFillValue = (i << 28) | (i << 24) | (i << 20) | (i << 16) | (i << 12) | (i << 8) | (i << 4) | i;
            MI_CpuFillFast(tiles + i * TILE_SIZE_4BPP, tileFillValue, TILE_SIZE_4BPP);
        }

        Bg_LoadTiles(bgConfig, BG_LAYER_SUB_2, tiles, TILE_SIZE_4BPP * PALETTE_SIZE, 0);
        Heap_Free(tiles);
    }
}

static void Task_UpdateCanvas(SysTask *task, void *taskMan)
{
    DotArtistGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    UpdateTilemap(graphics->bgConfig, graphics->dotArt);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    DotArtistGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void UpdateTilemap(BgConfig *bgConfig, const DotArt *dotArt)
{
    static const u8 tileAssignments[] = {
        4, 15, 8, 1
    };
    int x, y;

    u16 *tilemapBuffer = Bg_GetTilemapBuffer(bgConfig, BG_LAYER_SUB_2);
    tilemapBuffer += ((POKETCH_SCREEN_TILE_OFFSET_Y * POKETCH_WIDTH_TILES) + POKETCH_SCREEN_TILE_OFFSET_X);

    for (y = 0; y < CANVAS_HEIGHT; y++) {
        for (x = 0; x < CANVAS_WIDTH; x++) {
            tilemapBuffer[x] = tileAssignments[dotArt->dots[y][x] - 1];
        }

        tilemapBuffer += POKETCH_WIDTH_TILES;
    }
}
