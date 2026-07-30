#include "yes_no_touch_menu.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/narc.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sound_playback.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"

#include "res/graphics/yes_no_touch_menu/yes_no_touch_menu.naix"

// this file uses these instead of 0 and 1 for some reason
#define SCREEN_MAIN 0
#define SCREEN_SUB  4

#define BUTTON_STATE_INIT 8

#define BUTTON_WIDTH  6
#define BUTTON_HEIGHT 4

typedef struct YesNoButtonTemplate {
    BgConfig *bgConfig;
    enum BgLayer bgLayer;
    enum NarcID narcID;
    u32 screenDataNarcIndices[BUTTON_FRAME_COUNT];
    u32 baseTile;
    u32 palette;
    const fx32 *frameThresholds;
    u32 frameCount;
    u8 tilemapLeft;
    u8 tilemapTop;
} YesNoButtonTemplate;

typedef struct LoadCharContext {
    BgConfig *bgConfig;
    NNSG2dCharacterData *charData;
    void *ncgrBuffer;
    enum BgLayer bgLayer;
    int baseTile;
} LoadCharContext;

typedef struct LoadPlttContext {
    NNSG2dPaletteData *paletteData;
    void *nclrBuffer;
    int screen;
    int offset;
    int size;
} LoadPlttContext;

static void YesNoTouchMenu_Init(YesNoTouchMenu *menu, enum HeapID heapID);
static void YesNoTouchMenu_LoadChar(YesNoTouchMenu *menu, const YesNoTouchMenuParams *params);
static void YesNoTouchMenu_LoadPltt(YesNoTouchMenu *menu, const YesNoTouchMenuParams *params);
static void YesNoTouchMenu_InitButtons(YesNoTouchMenu *menu, const YesNoTouchMenuParams *params);
static void YesNoTouchMenu_InitButtonHitTable(YesNoTouchMenu *menu, const YesNoTouchMenuParams *params);
static void YesNoTouchMenu_ButtonPressedCallback(u32 buttonIndex, enum TouchScreenButtonState buttonState, void *data);
static void YesNoTouchMenu_InitButtonSprite(YesNoButtonSprite *sprite, const YesNoButtonTemplate *template, enum HeapID heapID);
static BOOL YesNoTouchMenu_AnimateButton(YesNoButtonSprite *sprite);
static void YesNoTouchMenu_ClearButton(YesNoButtonSprite *sprite);
static void YesNoTouchMenu_DrawCurrentButtonAnimFrame(YesNoButtonSprite *sprite);
static void YesNoTouchMenu_InitButtonAnimation(YesNoButtonAnimData *animData, const fx32 *frameThresholds, u32 frameCount);
static void YesNoTouchMenu_ProgressButtonAnimation(YesNoButtonAnimData *animData, fx32 progress);
static u32 YesNoTouchMenu_GetButtonAnimFrame(const YesNoButtonAnimData *animData);
static void YesNoTouchMenu_QueueLoadCharTask(enum NarcID narcID, u32 narcMemberIdx, BgConfig *bgConfig, enum BgLayer bgLayer, u32 baseTile, enum HeapID heapID);
static void YesNoTouchMenu_QueueLoadPlttTask(enum NarcID narcID, u32 narcMemberIdx, int screen, u32 offset, u32 size, enum HeapID heapID);
static void YesNoTouchMenu_LoadCharTask(SysTask *sysTask, void *data);
static void YesNoTouchMenu_LoadPlttTask(SysTask *sysTask, void *data);
static void YesNoTouchMenu_DrawButton(BgConfig *bgConfig, enum BgLayer bgLayer, const NNSG2dScreenData *screenData, int tilemapLeft, int tilemapTop);
static void YesNoTouchMenu_WriteTilesToScreenData(const NNSG2dScreenData *screenData, int baseTile);
static void YesNoTouchMenu_ApplyPaletteToTiles(const NNSG2dScreenData *screenData, int palette);

YesNoTouchMenu *YesNoTouchMenu_New(enum HeapID heapID)
{
    YesNoTouchMenu *menu = Heap_Alloc(heapID, sizeof(YesNoTouchMenu));
    YesNoTouchMenu_Init(menu, heapID);

    return menu;
}

void YesNoTouchMenu_Free(YesNoTouchMenu *menu)
{
    if (menu->paramsApplied == TRUE) {
        YesNoTouchMenu_Reset(menu);
    }

    Heap_Free(menu);
}

void YesNoTouchMenu_InitWithParams(YesNoTouchMenu *menu, const YesNoTouchMenuParams *params)
{
    menu->bgConfig = params->bgConfig;
    menu->bgLayer = params->bgLayer;
    menu->tilemapLeft = params->tilemapLeft;
    menu->tilemapTop = params->tilemapTop;

    YesNoTouchMenu_LoadChar(menu, params);
    YesNoTouchMenu_LoadPltt(menu, params);
    YesNoTouchMenu_InitButtons(menu, params);
    YesNoTouchMenu_InitButtonHitTable(menu, params);

    menu->paramsApplied = TRUE;
    menu->buttonState = BUTTON_STATE_INIT;
}

u32 YesNoTouchMenu_ProcessInputInstant(YesNoTouchMenu *menu)
{
    menu->buttonState = BUTTON_STATE_INIT;

    u32 input = YesNoTouchMenu_ProcessInput(menu);

    if (input == YES_NO_TOUCH_MENU_NOTHING_CHOSEN && menu->buttonState == TOUCH_BUTTON_PRESSED) {
        return menu->pressedButton == BUTTON_YES ? YES_NO_TOUCH_MENU_YES_INSTANT : YES_NO_TOUCH_MENU_NO_INSTANT;
    }

    return input;
}

u32 YesNoTouchMenu_ProcessInput(YesNoTouchMenu *menu)
{
    GF_ASSERT(menu->paramsApplied == TRUE);

    if (menu->pressedButton == BUTTON_NONE) {
        TouchScreenActions_HandleAction(menu->buttonAction);
    }

    BOOL pressAnimDone = FALSE;

    if (menu->pressedButton != BUTTON_NONE) {
        pressAnimDone = YesNoTouchMenu_AnimateButton(&menu->buttonSprites[menu->pressedButton]);
    }

    if (pressAnimDone == TRUE) {
        return menu->pressedButton == BUTTON_YES ? YES_NO_TOUCH_MENU_YES : YES_NO_TOUCH_MENU_NO;
    }

    return YES_NO_TOUCH_MENU_NOTHING_CHOSEN;
}

void YesNoTouchMenu_Reset(YesNoTouchMenu *menu)
{
    TouchScreenActions_Free(menu->buttonAction);

    for (int i = 0; i < BUTTON_COUNT; i++) {
        YesNoTouchMenu_ClearButton(&menu->buttonSprites[i]);
    }

    YesNoTouchMenu_Init(menu, menu->heapID);
}

static void YesNoTouchMenu_Init(YesNoTouchMenu *menu, enum HeapID heapID)
{
    memset(menu, 0, sizeof(YesNoTouchMenu));

    menu->paramsApplied = FALSE;
    menu->heapID = heapID;
    menu->pressedButton = BUTTON_NONE;
    menu->buttonState = BUTTON_STATE_INIT;
}

static void YesNoTouchMenu_LoadChar(YesNoTouchMenu *menu, const YesNoTouchMenuParams *params)
{
    YesNoTouchMenu_QueueLoadCharTask(NARC_INDEX_GRAPHIC__TOUCH_SUBWINDOW, yes_no_button_tiles_NCGR_lz, menu->bgConfig, menu->bgLayer, params->baseTile, menu->heapID);
}

static void YesNoTouchMenu_LoadPltt(YesNoTouchMenu *menu, const YesNoTouchMenuParams *params)
{
    u32 screen = menu->bgLayer < BG_LAYER_SUB_0 ? SCREEN_MAIN : SCREEN_SUB;

    YesNoTouchMenu_QueueLoadPlttTask(NARC_INDEX_GRAPHIC__TOUCH_SUBWINDOW, yes_no_button_tiles_NCLR, screen, PLTT_OFFSET(params->palette), BUTTON_COUNT * PALETTE_SIZE_BYTES, menu->heapID);
}

static void YesNoTouchMenu_InitButtons(YesNoTouchMenu *menu, const YesNoTouchMenuParams *params)
{
    int i;

    for (i = 0; i < BUTTON_FRAME_COUNT; i++) {
        menu->frameThresholds[i] = FX32_ONE * (i + 1);
    }

    YesNoButtonTemplate template;
    template.bgConfig = menu->bgConfig;
    template.bgLayer = menu->bgLayer;
    template.narcID = NARC_INDEX_GRAPHIC__TOUCH_SUBWINDOW;
    template.baseTile = params->baseTile;
    template.palette = params->palette;
    template.frameThresholds = menu->frameThresholds;
    template.frameCount = BUTTON_FRAME_COUNT;
    template.tilemapLeft = menu->tilemapLeft;

    for (i = 0; i < BUTTON_COUNT; i++) {
        for (int j = 0; j < BUTTON_FRAME_COUNT; j++) {
            template.screenDataNarcIndices[j] = yes_button_NSCR_lz + (BUTTON_COUNT * j) + i;
        }

        template.tilemapTop = (BUTTON_HEIGHT + 1) * i + menu->tilemapTop;
        template.palette += i;

        YesNoTouchMenu_InitButtonSprite(&menu->buttonSprites[i], &template, menu->heapID);
    }
}

static void YesNoTouchMenu_InitButtonHitTable(YesNoTouchMenu *menu, const YesNoTouchMenuParams *unused)
{
    for (int i = 0; i < BUTTON_COUNT; i++) {
        menu->hitTable[i].rect.top = menu->tilemapTop * TILE_HEIGHT_PIXELS + i * (BUTTON_HEIGHT + 1) * TILE_HEIGHT_PIXELS;
        menu->hitTable[i].rect.bottom = menu->tilemapTop * TILE_HEIGHT_PIXELS + i * (BUTTON_HEIGHT + 1) * TILE_HEIGHT_PIXELS + BUTTON_HEIGHT * TILE_HEIGHT_PIXELS;
        menu->hitTable[i].rect.left = menu->tilemapLeft * TILE_WIDTH_PIXELS;
        menu->hitTable[i].rect.right = menu->tilemapLeft * TILE_WIDTH_PIXELS + BUTTON_WIDTH * TILE_WIDTH_PIXELS;
    }

    menu->buttonAction = TouchScreenActions_RegisterHandler(menu->hitTable, BUTTON_COUNT, YesNoTouchMenu_ButtonPressedCallback, menu, menu->heapID);
}

static void YesNoTouchMenu_ButtonPressedCallback(u32 buttonIndex, enum TouchScreenButtonState buttonState, void *data)
{
    YesNoTouchMenu *menu = data;

    menu->buttonState = buttonState;

    if (buttonState == TOUCH_BUTTON_PRESSED) {
        menu->pressedButton = buttonIndex;

        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
    }
}

static void YesNoTouchMenu_InitButtonSprite(YesNoButtonSprite *sprite, const YesNoButtonTemplate *template, enum HeapID heapID)
{
    YesNoTouchMenu_InitButtonAnimation(&sprite->animData, template->frameThresholds, template->frameCount);

    sprite->bgConfig = template->bgConfig;
    sprite->bgLayer = template->bgLayer;
    sprite->tilemapLeft = template->tilemapLeft;
    sprite->tilemapTop = template->tilemapTop;

    for (int i = 0; i < BUTTON_FRAME_COUNT; i++) {
        sprite->nscrBuffers[i] = Graphics_GetScrnData(template->narcID, template->screenDataNarcIndices[i], TRUE, &sprite->screenData[i], heapID);

        YesNoTouchMenu_WriteTilesToScreenData(sprite->screenData[i], template->baseTile);
        YesNoTouchMenu_ApplyPaletteToTiles(sprite->screenData[i], template->palette);
    }

    YesNoTouchMenu_DrawCurrentButtonAnimFrame(sprite);
    sprite->animFrame = 0;
}

// returns true when animation reaches final frame
static BOOL YesNoTouchMenu_AnimateButton(YesNoButtonSprite *sprite)
{
    u32 currentFrame = YesNoTouchMenu_GetButtonAnimFrame(&sprite->animData);

    if (sprite->animFrame != currentFrame) {
        YesNoTouchMenu_DrawCurrentButtonAnimFrame(sprite);
        sprite->animFrame = currentFrame;
    }

    if (currentFrame == sprite->animData.frameCount - 1) {
        return TRUE;
    }

    YesNoTouchMenu_ProgressButtonAnimation(&sprite->animData, FX32_HALF);

    return FALSE;
}

static void YesNoTouchMenu_ClearButton(YesNoButtonSprite *sprite)
{
    Bg_FillTilemapRect(sprite->bgConfig, sprite->bgLayer, 0, sprite->tilemapLeft, sprite->tilemapTop, sprite->screenData[0]->screenWidth / TILE_WIDTH_PIXELS, sprite->screenData[0]->screenHeight / TILE_HEIGHT_PIXELS, 0);
    Bg_ScheduleTilemapTransfer(sprite->bgConfig, sprite->bgLayer);

    for (int i = 0; i < BUTTON_FRAME_COUNT; i++) {
        Heap_Free(sprite->nscrBuffers[i]);
    }

    memset(sprite, 0, sizeof(YesNoButtonSprite));
}

static void YesNoTouchMenu_DrawCurrentButtonAnimFrame(YesNoButtonSprite *sprite)
{
    u32 currentFrame = YesNoTouchMenu_GetButtonAnimFrame(&sprite->animData);
    YesNoTouchMenu_DrawButton(sprite->bgConfig, sprite->bgLayer, sprite->screenData[currentFrame], sprite->tilemapLeft, sprite->tilemapTop);
}

static void YesNoTouchMenu_InitButtonAnimation(YesNoButtonAnimData *animData, const fx32 *frameThresholds, u32 frameCount)
{
    animData->frameThresholds = frameThresholds;
    animData->frameCount = frameCount;
    animData->frameProgress = 0;
}

static void YesNoTouchMenu_ProgressButtonAnimation(YesNoButtonAnimData *animData, fx32 progress)
{
    animData->frameProgress += progress;
}

static u32 YesNoTouchMenu_GetButtonAnimFrame(const YesNoButtonAnimData *animData)
{
    for (int i = 0; i < animData->frameCount; i++) {
        if (animData->frameThresholds[i] >= animData->frameProgress) {
            return i;
        }
    }

    return animData->frameCount - 1;
}

static void YesNoTouchMenu_QueueLoadCharTask(enum NarcID narcID, u32 narcMemberIdx, BgConfig *bgConfig, enum BgLayer bgLayer, u32 baseTile, enum HeapID heapID)
{
    LoadCharContext *ctx = Heap_Alloc(heapID, sizeof(LoadCharContext));
    memset(ctx, 0, sizeof(LoadCharContext));

    ctx->ncgrBuffer = Graphics_GetCharData(narcID, narcMemberIdx, TRUE, &ctx->charData, heapID);
    ctx->bgConfig = bgConfig;
    ctx->bgLayer = bgLayer;
    ctx->baseTile = baseTile;

    SysTask_ExecuteAfterVBlank(YesNoTouchMenu_LoadCharTask, ctx, 128);
}

static void YesNoTouchMenu_QueueLoadPlttTask(enum NarcID narcID, u32 narcMemberIdx, int screen, u32 offset, u32 size, enum HeapID heapID)
{
    LoadPlttContext *ctx = Heap_Alloc(heapID, sizeof(LoadPlttContext));
    memset(ctx, 0, sizeof(LoadPlttContext));

    ctx->nclrBuffer = Graphics_GetPlttData(narcID, narcMemberIdx, &ctx->paletteData, heapID);
    ctx->screen = screen;
    ctx->offset = offset;
    ctx->size = size;

    SysTask_ExecuteAfterVBlank(YesNoTouchMenu_LoadPlttTask, ctx, 128);
}

static void YesNoTouchMenu_LoadCharTask(SysTask *sysTask, void *data)
{
    LoadCharContext *ctx = data;

    DC_FlushRange(ctx->charData->pRawData, ctx->charData->szByte);

    Bg_LoadTiles(ctx->bgConfig, ctx->bgLayer, ctx->charData->pRawData, ctx->charData->szByte, ctx->baseTile);
    SysTask_Done(sysTask);
    Heap_Free(ctx->ncgrBuffer);
    Heap_Free(ctx);
}

static void YesNoTouchMenu_LoadPlttTask(SysTask *sysTask, void *data)
{
    LoadPlttContext *ctx = data;

    DC_FlushRange(ctx->paletteData->pRawData, ctx->size);

    if (ctx->screen == SCREEN_MAIN) {
        GX_LoadBGPltt(ctx->paletteData->pRawData, ctx->offset, ctx->size);
    } else if (ctx->screen == SCREEN_SUB) {
        GXS_LoadBGPltt(ctx->paletteData->pRawData, ctx->offset, ctx->size);
    }

    SysTask_Done(sysTask);
    Heap_Free(ctx->nclrBuffer);
    Heap_Free(ctx);
}

static void YesNoTouchMenu_DrawButton(BgConfig *bgConfig, enum BgLayer bgLayer, const NNSG2dScreenData *screenData, int tilemapLeft, int tilemapTop)
{
    Bg_CopyToTilemapRect(bgConfig, bgLayer, tilemapLeft, tilemapTop, screenData->screenWidth / TILE_WIDTH_PIXELS, screenData->screenHeight / TILE_HEIGHT_PIXELS, screenData->rawData, 0, 0, screenData->screenWidth / TILE_WIDTH_PIXELS, screenData->screenHeight / TILE_HEIGHT_PIXELS);
    Bg_ScheduleTilemapTransfer(bgConfig, bgLayer);
}

static void YesNoTouchMenu_WriteTilesToScreenData(const NNSG2dScreenData *screenData, int baseTile)
{
    int i;
    int size = screenData->szByte / sizeof(u16);

    u16 *tilemap = (u16 *)screenData->rawData;

    for (i = 0; i < size; i++) {
        tilemap[i] += baseTile;
    }
}

static void YesNoTouchMenu_ApplyPaletteToTiles(const NNSG2dScreenData *screenData, int palette)
{
    int i;
    int size = screenData->szByte / sizeof(u16);

    u16 *tilemap = (u16 *)screenData->rawData;

    for (i = 0; i < size; i++) {
        tilemap[i] &= 0xFFF;
        tilemap[i] |= TILEMAP_PALETTE_SHIFT(palette);
    }
}
