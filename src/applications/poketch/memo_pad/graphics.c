#include "applications/poketch/memo_pad/graphics.h"

#include <nitro.h>

#include "constants/graphics.h"
#include "generated/sdat.h"

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "poketch_memory.h"
#include "sys_task_manager.h"

#include "res/graphics/poketch/poketch.naix"

#define WINDOW_WIDTH_TILES  20
#define WINDOW_HEIGHT_TILES 19

#define ERASER_UNPRESSED 0
#define ERASER_PRESSED   1
#define PENCIL_UNPRESSED 2
#define PENCIL_PRESSED   3

static BOOL SetupWindow(MemoPadGraphics *graphics);

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawAppBackground(SysTask *task, void *taskMan);
static void Task_ChangeActiveDrawingTool(SysTask *task, void *taskMan);
static void Task_PrintWindow(SysTask *task, void *taskMan);
static void Task_UpdateMemoContent(SysTask *task, void *taskMan);
static void Task_PrintWindow2(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);

static void SetupSprites(MemoPadGraphics *graphics);
static void UnloadSprites(MemoPadGraphics *graphics);

BOOL MemoPadGraphics_New(MemoPadGraphics **dest, const MemoPadData *padState, BgConfig *bgConfig)
{
    MemoPadGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(MemoPadGraphics));

    if (graphics != NULL) {
        GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_MAIN));
        PoketchTask_InitActiveTaskList(graphics->activeTasks, MEMO_PAD_TASK_SLOTS);

        GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_MAIN));
        graphics->padData = padState;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->animMan = PoketchGraphics_GetAnimationManager();

        GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_MAIN));
        *dest = graphics;
        return TRUE;
    }

    return FALSE;
}

static BOOL SetupWindow(MemoPadGraphics *graphics)
{
    static const WindowTemplate windowTemplate = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 2,
        .width = WINDOW_WIDTH_TILES,
        .height = WINDOW_HEIGHT_TILES,
        .palette = 0,
        .baseTile = 12,
    };

    graphics->window = Window_New(HEAP_ID_POKETCH_APP, 1);

    if (graphics->window) {
        Window_AddFromTemplate(graphics->bgConfig, graphics->window, &windowTemplate);

        if (PoketchMemory_ReadFast(graphics->padData->appID, graphics->window->pixels, WINDOW_WIDTH_TILES * WINDOW_HEIGHT_TILES * TILE_SIZE_4BPP) == FALSE) {
            Window_FillTilemap(graphics->window, 0x4);
        }

        return TRUE;
    }

    return FALSE;
}

void MemoPadGraphics_Free(MemoPadGraphics *graphics)
{
    if (graphics != NULL) {
        GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_MAIN));

        if (graphics->window) {
            PoketchMemory_WriteFast(graphics->padData->appID, graphics->window->pixels, WINDOW_WIDTH_TILES * WINDOW_HEIGHT_TILES * TILE_SIZE_4BPP);
            Window_Remove(graphics->window);
            Heap_Free(graphics->window);
        }

        Heap_Free(graphics);
    }
}

static const PoketchTask memoPadTasks[] = {
    { MEMO_PAD_GRAPHICS_INIT, Task_DrawAppBackground, 0 },
    { MEMO_PAD_GRAPHICS_CHANGE_TOOL, Task_ChangeActiveDrawingTool, 0 },
    { MEMO_PAD_GRAPHICS_PRINT_WINDOW, Task_PrintWindow, 0 },
    { MEMO_PAD_GRAPHICS_UPDATE_CONTENT, Task_UpdateMemoContent, 0 },
    { MEMO_PAD_GRAPHICS_PRINT_WINDOW_2, Task_PrintWindow2, 0 },
    { MEMO_PAD_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { 0 }
};

void PoketchMemoPadGraphics_StartTask(MemoPadGraphics *graphics, enum MemoPadGraphicsTask taskID)
{
    PoketchTask_Start(memoPadTasks, taskID, graphics, graphics->padData, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchMemoPadGraphics_TaskIsNotActive(MemoPadGraphics *graphics, enum MemoPadGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchMemoPadGraphics_NoActiveTasks(MemoPadGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    MemoPadGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    PoketchTask_EndTask(graphics->activeTasks, taskMan);
}

static void Task_DrawAppBackground(SysTask *task, void *taskMan)
{
    static const BgTemplate mainBgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0,
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
    static const BgTemplate windowBgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x7800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    GXSDispCnt dispCnt;
    MemoPadGraphics *graphics;

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));

    graphics = PoketchTask_GetTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &mainBgTemplate, BG_TYPE_STATIC);
    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_3, &windowBgTemplate, BG_TYPE_STATIC);

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, memo_pad_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, memo_pad_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    PoketchGraphics_LoadActivePalette(0, 0);

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));

    SetupWindow(graphics);
    Window_CopyToVRAM(graphics->window);

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));

    SetupSprites(graphics);

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));

    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_3);

    dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ);
    EndTask(taskMan);

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));
}

static void Task_ChangeActiveDrawingTool(SysTask *task, void *taskMan)
{
    MemoPadGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    if (graphics->padData->pencilActive == TRUE) {
        PoketchAnimation_UpdateAnimationIdx(graphics->sprites[0], ERASER_UNPRESSED);
        PoketchAnimation_UpdateAnimationIdx(graphics->sprites[1], PENCIL_PRESSED);
    } else {
        PoketchAnimation_UpdateAnimationIdx(graphics->sprites[0], ERASER_PRESSED);
        PoketchAnimation_UpdateAnimationIdx(graphics->sprites[1], PENCIL_UNPRESSED);
    }

    PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
    EndTask(taskMan);
}

static void Task_PrintWindow(SysTask *task, void *taskMan)
{
    MemoPadGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    Window_LoadTiles(graphics->window);
    EndTask(taskMan);
}

static void RedrawWindowRegion(u8 *pixelsAddr, int x, int y, int width, int height)
{
    int startTile, tileX, tileY, tileWidth, tileHeight;

    width--;
    height--;

    tileX = x / TILE_WIDTH_PIXELS;
    tileWidth = ((x + width) / TILE_WIDTH_PIXELS) - tileX + 1;

    tileY = y / TILE_HEIGHT_PIXELS;
    tileHeight = ((y + height) / TILE_HEIGHT_PIXELS) - tileY + 1;

    startTile = (tileY * WINDOW_WIDTH_TILES) + tileX;

    while (tileHeight--) {
        DC_FlushRange(pixelsAddr + (startTile * TILE_SIZE_4BPP), tileWidth * TILE_SIZE_4BPP);
        GXS_LoadBG3Char(pixelsAddr + (startTile * TILE_SIZE_4BPP), (12 + startTile) * TILE_SIZE_4BPP, tileWidth * TILE_SIZE_4BPP);
        startTile += WINDOW_WIDTH_TILES;
    }
}

static void Task_UpdateMemoContent(SysTask *task, void *taskMan)
{
    s32 x, y;
    MemoPadGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    if (graphics->padData->pencilActive == FALSE) {
        int width, height;

        width = height = ERASER_SIZE * 2;
        x = (graphics->padData->x * 2) - ERASER_SIZE;
        y = (graphics->padData->y * 2) - ERASER_SIZE;

        if (x < 0) {
            width += x;
            x = 0;
        }

        if (y < 0) {
            height += y;
            y = 0;
        }

        Window_FillRectWithColor(graphics->window, 0x4, x, y, width, height);
        RedrawWindowRegion(graphics->window->pixels, x, y, width, height);
    } else {
        x = graphics->padData->x * 2;
        y = graphics->padData->y * 2;

        Window_FillRectWithColor(graphics->window, 0x1, x, y, 2, 2);
        RedrawWindowRegion(graphics->window->pixels, x, y, 2, 2);
    }

    EndTask(taskMan);
}

static void Task_PrintWindow2(SysTask *task, void *taskMan)
{
    MemoPadGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    Window_LoadTiles(graphics->window);
    EndTask(taskMan);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    MemoPadGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    UnloadSprites(graphics);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_3);
    EndTask(taskMan);
}

static void SetupSprites(MemoPadGraphics *graphics)
{
    static const PoketchAnimation_AnimationData animationData[] = {
        {
            .translation = { FX32_CONST(192), FX32_CONST(56) },
            .animIdx = ERASER_UNPRESSED,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(192), FX32_CONST(136) },
            .animIdx = PENCIL_PRESSED,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
    };

    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, memo_pad_NCGR_lz, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    if (PoketchAnimation_LoadSpriteFromNARC(&graphics->animData, NARC_INDEX_GRAPHIC__POKETCH, memo_pad_cell_NCER_lz, memo_pad_anim_NANR_lz, HEAP_ID_POKETCH_APP)) {

        for (int i = 0; i < NUM_SPRITES; i++) {
            graphics->sprites[i] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animationData[i], &graphics->animData);
        }
    }
}

static void UnloadSprites(MemoPadGraphics *graphics)
{
    for (u32 i = 0; i < NUM_SPRITES; i++) {
        PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->sprites[i]);
    }

    PoketchAnimation_FreeSpriteData(&graphics->animData);
}
