#include "applications/poketch/link_searcher/graphics.h"

#include <nitro.h>

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
#include "string_gf.h"
#include "sys_task_manager.h"
#include "text.h"

#include "res/graphics/poketch/poketch.naix"
#include "res/text/bank/poketch_link_searcher.h"

#define SPRITE_DS           0
#define SPRITE_WIFI_BARS    1
#define SPRITE_ERROR_BUBBLE 2
#define SPRITE_CONNECTED    3

static void SetupSprites(LinkSearcherGraphics *graphics, const LinkResults *results);
static void UnloadSprites(LinkSearcherGraphics *graphics);

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawBackground(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);
static void Task_ShowIntroScreen(SysTask *task, void *taskMan);
static void Task_Searching(SysTask *task, void *taskMan);
static void Task_ShowUnusableError(SysTask *task, void *taskMan);
static void Task_ShowDontMoveError(SysTask *task, void *taskMan);
static void Task_ShowResults(SysTask *task, void *taskMan);
static void Task_Unused(SysTask *task, void *taskMan);

static void PrintIntroMessage(LinkSearcherGraphics *graphics);
static void PrintSearchingMessage(LinkSearcherGraphics *graphics);
static void PrintUnusableError(LinkSearcherGraphics *graphics);
static void PrintDontMoveError(LinkSearcherGraphics *graphics);
static void PrintSearchResults(LinkSearcherGraphics *graphics, const LinkResults *results);

BOOL PoketchLinkSearcherGraphics_New(LinkSearcherGraphics **dest, const LinkResults *results, BgConfig *bgConfig)
{
    LinkSearcherGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(LinkSearcherGraphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTasks, LINK_SEARCHER_TASK_SLOTS);
        graphics->linkResults = results;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->animMan = PoketchGraphics_GetAnimationManager();
        graphics->msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKETCH_LINK_SEARCHER, HEAP_ID_POKETCH_APP);
        graphics->string = String_Init(96, HEAP_ID_POKETCH_APP);
        SetupSprites(graphics, results);
        *dest = graphics;

        return TRUE;
    }

    return FALSE;
}

void PoketchLinkSearchGraphics_Free(LinkSearcherGraphics *graphics)
{
    if (graphics != NULL) {
        String_Free(graphics->string);
        MessageLoader_Free(graphics->msgLoader);
        UnloadSprites(graphics);
        Heap_Free(graphics);
    }
}

static void SetupSprites(LinkSearcherGraphics *graphics, const LinkResults *results)
{
    static const PoketchAnimation_AnimationData animData[] = {
        [SPRITE_DS] = {
            .translation = { FX32_CONST(112), FX32_CONST(150) },
            .animIdx = 3,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        [SPRITE_WIFI_BARS] = {
            .translation = { FX32_CONST(112), FX32_CONST(102) },
            .animIdx = 1,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        [SPRITE_ERROR_BUBBLE] = {
            .translation = { FX32_CONST(112), FX32_CONST(102) },
            .animIdx = 2,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        [SPRITE_CONNECTED] = {
            .translation = { FX32_CONST(112), FX32_CONST(150) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
    };
    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, link_searcher_NCGR_lz, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    PoketchAnimation_LoadSpriteFromNARC(&graphics->spriteData, NARC_INDEX_GRAPHIC__POKETCH, link_searcher_cell_NCER_lz, link_searcher_anim_NANR_lz, HEAP_ID_POKETCH_APP);

    for (int i = 0; i < NUM_SPRITES; i++) {
        graphics->sprites[i] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData[i], &graphics->spriteData);
    }

    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_WIFI_BARS], TRUE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_ERROR_BUBBLE], TRUE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_CONNECTED], TRUE);
}

static void UnloadSprites(LinkSearcherGraphics *graphics)
{
    for (int i = 0; i < NUM_SPRITES; i++) {
        if (graphics->sprites[i]) {
            PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->sprites[i]);
        }
    }

    PoketchAnimation_FreeSpriteData(&graphics->spriteData);
}

static const PoketchTask sLinkSearcherTasks[] = {
    { LINK_SEARCHER_GRAPHICS_INIT, Task_DrawBackground, 0 },
    { LINK_SEARCHER_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { LINK_SEARCHER_GRAPHICS_INTRO, Task_ShowIntroScreen, 0 },
    { LINK_SEARCHER_GRAPHICS_SEARCHING, Task_Searching, 0 },
    { LINK_SEARCHER_GRAPHICS_UNUSABLE, Task_ShowUnusableError, 0 },
    { LINK_SEARCHER_GRAPHICS_DONT_MOVE, Task_ShowDontMoveError, 0 },
    { LINK_SEARCHER_GRAPHICS_RESULTS, Task_ShowResults, 0 },
    { LINK_SEARCHER_GRAPHICS_UNUSED, Task_Unused, 0 },
    { 0 }
};

void PoketchLinkSearcherGraphics_StartTask(LinkSearcherGraphics *graphics, enum LinkSearcherGraphicsTask taskID)
{
    PoketchTask_Start(sLinkSearcherTasks, taskID, graphics, graphics->linkResults, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchLinkSearcherGraphics_TaskIsNotActive(LinkSearcherGraphics *graphics, enum LinkSearcherGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchLinkSearcherGraphics_NoActiveTasks(LinkSearcherGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    LinkSearcherGraphics *graphics = PoketchTask_GetTaskData(taskMan);
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
    LinkSearcherGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);

    u32 tileCount = Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, link_searcher_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    tileCount /= TILE_SIZE_4BPP;

    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, link_searcher_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    PoketchGraphics_LoadActivePalette(0, 0);

    Window_Add(graphics->bgConfig, &graphics->window, BG_LAYER_SUB_2, 2, 2, 24, 20, PLTT_0, tileCount);
    Window_PutToTilemap(&graphics->window);

    PrintIntroMessage(graphics);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    GXSDispCnt dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2);

    EndTask(taskMan);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    LinkSearcherGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Window_Remove(&graphics->window);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);

    EndTask(taskMan);
}

static void Task_ShowIntroScreen(SysTask *task, void *taskMan)
{
    LinkSearcherGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_DS], FALSE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_WIFI_BARS], TRUE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_ERROR_BUBBLE], TRUE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_CONNECTED], TRUE);

    PrintIntroMessage(graphics);
    PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
    EndTask(taskMan);
}

static void Task_Searching(SysTask *task, void *taskMan)
{
    LinkSearcherGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_DS], FALSE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_WIFI_BARS], FALSE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_ERROR_BUBBLE], TRUE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_CONNECTED], TRUE);
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_WIFI_BARS], 1);

    PrintSearchingMessage(graphics);
    PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
    EndTask(taskMan);
}

static void Task_ShowUnusableError(SysTask *task, void *taskMan)
{
    LinkSearcherGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_DS], FALSE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_WIFI_BARS], TRUE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_ERROR_BUBBLE], FALSE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_CONNECTED], TRUE);
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_ERROR_BUBBLE], 2);
    PrintUnusableError(graphics);
    PoketchSystem_PlaySoundEffect(SEQ_SE_DP_BEEP);
    EndTask(taskMan);
}

static void Task_ShowDontMoveError(SysTask *task, void *taskMan)
{
    LinkSearcherGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_DS], FALSE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_WIFI_BARS], TRUE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_ERROR_BUBBLE], FALSE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_CONNECTED], TRUE);
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_ERROR_BUBBLE], 2);
    PrintDontMoveError(graphics);
    PoketchSystem_PlaySoundEffect(SEQ_SE_DP_BEEP);
    EndTask(taskMan);
}

static void Task_ShowResults(SysTask *task, void *taskMan)
{
    LinkSearcherGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const LinkResults *results = PoketchTask_GetConstTaskData(taskMan);

    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_DS], TRUE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_WIFI_BARS], TRUE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_ERROR_BUBBLE], TRUE);
    PoketchAnimation_HideSprite(graphics->sprites[SPRITE_CONNECTED], FALSE);
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_CONNECTED], 0);

    PrintSearchResults(graphics, results);
    PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
    EndTask(taskMan);
}

static void Task_Unused(SysTask *task, void *taskMan)
{
    LinkSearcherGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const LinkResults *results = PoketchTask_GetConstTaskData(taskMan);

    PrintSearchResults(graphics, results);
    EndTask(taskMan);
}

static void PrintIntroMessage(LinkSearcherGraphics *graphics)
{
    Window_FillTilemap(&graphics->window, 4);

    MessageLoader_GetString(graphics->msgLoader, LinkSearcher_Text_Title, graphics->string);
    u32 xOffset = (192 - Font_CalcStringWidth(FONT_SYSTEM, graphics->string, 0)) / 2;
    Text_AddPrinterWithParamsAndColor(&graphics->window, FONT_SYSTEM, graphics->string, xOffset, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);

    MessageLoader_GetString(graphics->msgLoader, LinkSearcher_Text_TouchToBegin, graphics->string);
    xOffset = (192 - Font_CalcMaxLineWidth(FONT_SYSTEM, graphics->string, 0)) / 2;

    u32 yOffset = 64;
    yOffset -= String_NumLines(graphics->string) * 8;
    Text_AddPrinterWithParamsAndColor(&graphics->window, FONT_SYSTEM, graphics->string, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);

    Window_LoadTiles(&graphics->window);
}

static void PrintSearchingMessage(LinkSearcherGraphics *graphics)
{
    Window_FillTilemap(&graphics->window, 4);

    MessageLoader_GetString(graphics->msgLoader, LinkSearcher_Text_Searching, graphics->string);
    u32 xOffset = (192 - Font_CalcMaxLineWidth(FONT_SYSTEM, graphics->string, 0)) / 2;
    Text_AddPrinterWithParamsAndColor(&graphics->window, FONT_SYSTEM, graphics->string, xOffset, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);

    Window_LoadTiles(&graphics->window);
}

static void PrintUnusableError(LinkSearcherGraphics *graphics)
{
    Window_FillTilemap(&graphics->window, 4);

    MessageLoader_GetString(graphics->msgLoader, LinkSearcher_Text_Error, graphics->string);
    u32 xOffset = (192 - Font_CalcStringWidth(FONT_SYSTEM, graphics->string, 0)) / 2;
    Text_AddPrinterWithParamsAndColor(&graphics->window, FONT_SYSTEM, graphics->string, xOffset, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);

    MessageLoader_GetString(graphics->msgLoader, LinkSearcher_Text_Unusable, graphics->string);
    Text_AddPrinterWithParamsAndColor(&graphics->window, FONT_SYSTEM, graphics->string, 16, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);

    Window_LoadTiles(&graphics->window);
}

static void PrintDontMoveError(LinkSearcherGraphics *graphics)
{
    Window_FillTilemap(&graphics->window, 4);

    MessageLoader_GetString(graphics->msgLoader, LinkSearcher_Text_Error, graphics->string);
    u32 xOffset = (192 - Font_CalcStringWidth(FONT_SYSTEM, graphics->string, 0)) / 2;
    Text_AddPrinterWithParamsAndColor(&graphics->window, FONT_SYSTEM, graphics->string, xOffset, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);

    MessageLoader_GetString(graphics->msgLoader, LinkSearcher_Text_DontMove, graphics->string);
    xOffset = (192 - Font_CalcMaxLineWidth(FONT_SYSTEM, graphics->string, 0)) / 2;
    Text_AddPrinterWithParamsAndColor(&graphics->window, FONT_SYSTEM, graphics->string, xOffset, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);

    Window_LoadTiles(&graphics->window);
}

static void PrintSearchResults(LinkSearcherGraphics *graphics, const LinkResults *results)
{
    static const u8 entryIDs[] = {
        LinkSearcher_Text_UnionRoom,
        LinkSearcher_Text_Underground,
        LinkSearcher_Text_Colosseum,
        LinkSearcher_Text_OtherLinks,
    };

    Window_FillTilemap(&graphics->window, 4);
    MessageLoader_GetString(graphics->msgLoader, LinkSearcher_Text_Status, graphics->string);

    u32 xOffset = (192 - Font_CalcStringWidth(FONT_SYSTEM, graphics->string, 0)) / 2;
    Text_AddPrinterWithParamsAndColor(&graphics->window, FONT_SYSTEM, graphics->string, xOffset, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);

    for (int i = 0; i < 4; i++) {
        MessageLoader_GetString(graphics->msgLoader, entryIDs[i], graphics->string);
        Text_AddPrinterWithParamsAndColor(&graphics->window, FONT_SYSTEM, graphics->string, 8, 32 + 16 * i, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
        String_FormatInt(graphics->string, results->results[i], 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
        Text_AddPrinterWithParamsAndColor(&graphics->window, FONT_SYSTEM, graphics->string, 160, 32 + 16 * i, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
    }

    Window_LoadTiles(&graphics->window);
}
