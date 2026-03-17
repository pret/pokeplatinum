#include "render_window.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"
#include "generated/signpost_types.h"

#include "overlay005/sprite_resource_manager.h"

#include "bg_window.h"
#include "character_sprite.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "palette.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "render_text.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_system.h"
#include "sprite_transfer.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_0200679C.h"

#include "res/graphics/signposts/field_board.naix"
#include "res/graphics/windows/pl_winframe.naix"

#define SIGNPOST_BORDER_LEFT_SIZE  1
#define SIGNPOST_BORDER_RIGHT_SIZE 2
#define SIGNPOST_BORDER_Y_SIZE     1
#define SIGNPOST_WIDTH_TILES       (SIGNPOST_CONTENT_WIDTH_TILES + SIGNPOST_BORDER_LEFT_SIZE + SIGNPOST_BORDER_RIGHT_SIZE)
#define SIGNPOST_HEIGHT_TILES      (SIGNPOST_CONTENT_HEIGHT_TILES + SIGNPOST_BORDER_Y_SIZE + SIGNPOST_BORDER_Y_SIZE)
#define SIGNPOST_WIDTH_SIZE        (SIGNPOST_WIDTH_TILES * 2)
#define SIGNPOST_HEIGHT_SIZE       (SIGNPOST_HEIGHT_TILES * 2)
#define SIGNPOST_SIZE              (SIGNPOST_WIDTH_SIZE + SIGNPOST_HEIGHT_SIZE)

#define WAIT_DIAL_FRAME_WIDTH_TILES  2
#define WAIT_DIAL_FRAME_HEIGHT_TILES 2
#define WAIT_DIAL_TILES_PER_FRAME    (WAIT_DIAL_FRAME_WIDTH_TILES * WAIT_DIAL_FRAME_HEIGHT_TILES)
#define WAIT_DIAL_FRAME_SIZE         (TILE_SIZE_4BPP * WAIT_DIAL_TILES_PER_FRAME)
#define WAIT_DIAL_FRAME_OFFSET(i)    (WAIT_DIAL_FRAME_SIZE * i)
#define WAIT_DIAL_FRAME_COUNT        8
#define WAIT_DIAL_WHOLE_SIZE         (WAIT_DIAL_FRAME_SIZE * WAIT_DIAL_FRAME_COUNT)

#define POKEMON_PREVIEW_RESOURCE_ID 89301

enum WaitDialDrawMode {
    DIAL_DRAW_MODE_LOAD_ONLY = 0,
    DIAL_DRAW_MODE_LOAD_AND_DRAW,
    DIAL_DRAW_MODE_CLEAR,
};

enum WaitDialDeleteMode {
    DIAL_DELETE_MODE_NONE = 0,
    DIAL_DELETE_MODE_CLEAR,
    DIAL_DELETE_MODE_DESTROY,
};

struct WaitDial {
    Window *window;
    u8 pixels[WAIT_DIAL_WHOLE_SIZE];
    u8 messageBoxPixels[WAIT_DIAL_FRAME_SIZE];
    u16 messageBoxTile;
    u8 counter;
    u8 curFrame : 7;
    u8 : 1;
    u8 deleteMode : 2;
    u8 : 6;
};

typedef struct PokemonPreview {
    SpriteResourceManager spriteManager;
    ManagedSprite *managedSprite;
    BgConfig *bgConfig;
    u8 bgLayer;
    u8 x;
    u8 y;
    u8 state;
} PokemonPreview;

static void DrawStandardWindowFrame(BgConfig *bgConfig, u8 bgLayer, u8 x, u8 y, u8 width, u8 height, u8 palette, u16 tile);
static void DrawMessageBoxFrame(BgConfig *bgConfig, u8 bgLayer, u8 x, u8 y, u8 width, u8 height, u8 palette, u16 tile);
static void BlitRectToBitmap(void *srcPixels, u16 srcX, u16 srcY, u16 srcWidth, u16 srcHeight, void *destPixels, u16 destWidth, u16 destHeight, u16 destX, u16 destY, u16 blitWidth, u16 blitHeight);
static void DrawMessageBoxScrollCursor(Window *window, u16 baseTile);
static void LoadSignpostContentTiles(BgConfig *bgConfig, u8 bgLayer, u16 offset, u8 param3, u16 narcMemberIdx, u32 heapID);
static void DrawSignpostTiles(Window *window, u16 tile, u8 palette);
static void DrawWaitDial(WaitDial *dial, u32 drawMode);
static void SysTask_TickWaitDial(SysTask *task, void *data);
static void SysTask_CleanupWaitDial(SysTask *task, void *data);
static void SysTask_HandlePokemonPreview(SysTask *task, void *data);
static PokemonPreview *CreatePokemonPreviewTask(BgConfig *bgConfig, u8 bgLayer, u8 x, u8 y, u32 heapID);
static void sub_0200ED50(PokemonPreview *preview, u32 heapID);
static void LoadPokemonPreviewResources(PokemonPreview *preview);
static void CreatePokemonPreviewSprite(PokemonPreview *preview, u8 x, u8 y);
static void LoadAndDrawPokemonPreviewSprite(SpriteResourceManager *param0, u16 species, u8 gender);
static void LoadAndDrawPokemonPreviewSpriteFromStruct(SpriteResourceManager *param0, Pokemon *mon);
static void DrawPokemonPreviewSprite(SpriteResourceManager *param0, PokemonSpriteTemplate *spriteTemplate);
static void DrawPokemonPreviewWindow(PokemonPreview *preview, u8 palette, u16 tile);
static void ErasePokemonPreviewWindow(PokemonPreview *preview);

static const SpriteTemplate sPokemonPreviewSpriteTemplate = {
    .x = 0,
    .y = 0,
    .z = 0,
    .animIdx = 0,
    .priority = 0,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        POKEMON_PREVIEW_RESOURCE_ID,
        POKEMON_PREVIEW_RESOURCE_ID,
        POKEMON_PREVIEW_RESOURCE_ID,
        POKEMON_PREVIEW_RESOURCE_ID,
        NULL,
        NULL,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

void LoadStandardWindowTiles(BgConfig *bgConfig, u8 bgLayer, u16 offset, u8 standardWindowType, u32 heapID)
{
    if (standardWindowType == STANDARD_WINDOW_SYSTEM) {
        Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__PL_WINFRAME,
            standard_system_NCGR,
            bgConfig,
            bgLayer,
            offset,
            0,
            FALSE,
            heapID);
    } else {
        Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__PL_WINFRAME,
            standard_field_NCGR,
            bgConfig,
            bgLayer,
            offset,
            0,
            FALSE,
            heapID);
    }
}

u32 GetStandardWindowPaletteNARCMember()
{
    return standard_system_NCLR;
}

void LoadStandardWindowGraphics(BgConfig *bgConfig, u8 bgLayer, u16 tileOffset, u8 palOffset, u8 standardWindowType, u32 heapID)
{
    u32 narcMemberIdx;
    if (standardWindowType == STANDARD_WINDOW_SYSTEM) {
        narcMemberIdx = standard_system_NCGR;
    } else {
        narcMemberIdx = standard_field_NCGR;
    }

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__PL_WINFRAME,
        narcMemberIdx,
        bgConfig,
        bgLayer,
        tileOffset,
        0,
        FALSE,
        heapID);

    if (standardWindowType == STANDARD_WINDOW_UNDERGROUND) {
        narcMemberIdx = standard_underground_NCLR;
    } else {
        narcMemberIdx = standard_system_NCLR;
    }

    if (bgLayer < BG_LAYER_SUB_0) {
        Graphics_LoadPalette(NARC_INDEX_GRAPHIC__PL_WINFRAME,
            narcMemberIdx,
            PAL_LOAD_MAIN_BG,
            palOffset * PALETTE_SIZE_BYTES,
            PALETTE_SIZE_BYTES,
            heapID);
    } else {
        Graphics_LoadPalette(NARC_INDEX_GRAPHIC__PL_WINFRAME,
            narcMemberIdx,
            PAL_LOAD_SUB_BG,
            palOffset * PALETTE_SIZE_BYTES,
            PALETTE_SIZE_BYTES,
            heapID);
    }
}

static void DrawStandardWindowFrame(BgConfig *bgConfig, u8 bgLayer, u8 x, u8 y, u8 width, u8 height, u8 palette, u16 tile)
{
    // clang-format off
    Bg_FillTilemapRect(bgConfig, bgLayer, tile,     x - 1,     y - 1,      1,     1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 1, x,         y - 1,      width, 1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 2, x + width, y - 1,      1,     1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 3, x - 1,     y,          1,     height, palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 5, x + width, y,          1,     height, palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 6, x - 1,     y + height, 1,     1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 7, x,         y + height, width, 1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 8, x + width, y + height, 1,     1,      palette);
    // clang-format on
}

void Window_DrawStandardFrame(Window *window, u8 skipTransfer, u16 tile, u8 palette)
{
    DrawStandardWindowFrame(window->bgConfig,
        Window_GetBgLayer(window),
        Window_GetXPos(window),
        Window_GetYPos(window),
        Window_GetWidth(window),
        Window_GetHeight(window),
        palette,
        tile);

    if (skipTransfer == FALSE) {
        Window_CopyToVRAM(window);
    }
}

void Window_EraseStandardFrame(Window *window, u8 skipTransfer)
{
    Bg_FillTilemapRect(window->bgConfig,
        Window_GetBgLayer(window),
        0,
        Window_GetXPos(window) - 1,
        Window_GetYPos(window) - 1,
        Window_GetWidth(window) + 2,
        Window_GetHeight(window) + 2,
        0);

    if (skipTransfer == FALSE) {
        Window_ClearAndCopyToVRAM(window);
    }
}

u32 GetMessageBoxTilesNARCMember(u32 messageBoxFrame)
{
    return message_box_00_NCGR + messageBoxFrame;
}

u32 GetMessageBoxPaletteNARCMember(u32 messageBoxFrame)
{
    return message_box_00_NCLR + messageBoxFrame;
}

void LoadMessageBoxGraphics(BgConfig *bgConfig, u8 bgLayer, u16 tileOffset, u8 palOffset, u8 messageBoxFrame, u32 heapID)
{
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__PL_WINFRAME,
        GetMessageBoxTilesNARCMember(messageBoxFrame),
        bgConfig,
        bgLayer,
        tileOffset,
        0,
        FALSE,
        heapID);

    if (bgLayer < BG_LAYER_SUB_0) {
        Graphics_LoadPalette(NARC_INDEX_GRAPHIC__PL_WINFRAME,
            GetMessageBoxPaletteNARCMember(messageBoxFrame),
            PAL_LOAD_MAIN_BG,
            palOffset * PALETTE_SIZE_BYTES,
            PALETTE_SIZE_BYTES,
            heapID);
    } else {
        Graphics_LoadPalette(NARC_INDEX_GRAPHIC__PL_WINFRAME,
            GetMessageBoxPaletteNARCMember(messageBoxFrame),
            PAL_LOAD_SUB_BG,
            palOffset * PALETTE_SIZE_BYTES,
            PALETTE_SIZE_BYTES,
            heapID);
    }
}

static void DrawMessageBoxFrame(BgConfig *bgConfig, u8 bgLayer, u8 x, u8 y, u8 width, u8 height, u8 palette, u16 tile)
{
    // clang-format off
    Bg_FillTilemapRect(bgConfig, bgLayer, tile,      x - 2,         y - 1,      1,     1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 1,  x - 1,         y - 1,      1,     1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 2,  x,             y - 1,      width, 1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 3,  x + width,     y - 1,      1,     1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 4,  x + width + 1, y - 1,      1,     1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 5,  x + width + 2, y - 1,      1,     1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 6,  x - 2,         y,          1,     height, palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 7,  x - 1,         y,          1,     height, palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 9,  x + width,     y,          1,     height, palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 10, x + width + 1, y,          1,     height, palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 11, x + width + 2, y,          1,     height, palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 12, x - 2,         y + height, 1,     1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 13, x - 1,         y + height, 1,     1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 14, x,             y + height, width, 1,    palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 15, x + width,     y + height, 1,     1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 16, x + width + 1, y + height, 1,     1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 17, x + width + 2, y + height, 1,     1,      palette);
    // clang-format on
}

void Window_DrawMessageBox(Window *window, u32 tile, u32 palette)
{
    DrawMessageBoxFrame(window->bgConfig,
        Window_GetBgLayer(window),
        Window_GetXPos(window),
        Window_GetYPos(window),
        Window_GetWidth(window),
        Window_GetHeight(window),
        palette,
        tile);
}

void Window_DrawMessageBoxWithScrollCursor(Window *window, u8 skipTransfer, u16 tile, u8 palette)
{
    Window_DrawMessageBox(window, tile, palette);

    if (skipTransfer == FALSE) {
        Window_CopyToVRAM(window);
    }

    DrawMessageBoxScrollCursor(window, tile);
}

void Window_EraseMessageBox(Window *window, u8 skipTransfer)
{
    Bg_FillTilemapRect(window->bgConfig,
        Window_GetBgLayer(window),
        0,
        Window_GetXPos(window) - 2,
        Window_GetYPos(window) - 1,
        Window_GetWidth(window) + 5,
        Window_GetHeight(window) + 2,
        0);

    if (skipTransfer == FALSE) {
        Window_ClearAndCopyToVRAM(window);
    }
}

static void BlitRectToBitmap(void *srcPixels, u16 srcX, u16 srcY, u16 srcWidth, u16 srcHeight, void *destPixels, u16 destWidth, u16 destHeight, u16 destX, u16 destY, u16 blitWidth, u16 blitHeight)
{
    Bitmap src, dest;

    src.pixels = (u8 *)srcPixels;
    src.width = srcWidth;
    src.height = srcHeight;

    dest.pixels = (u8 *)destPixels;
    dest.width = destWidth;
    dest.height = destHeight;

    Bitmap_BlitRect4bpp(&src, &dest, srcX, srcY, destX, destY, blitWidth, blitHeight, 0);
}

#define SCROLL_CURSOR_TILES_PER_FRAME 4
#define SCROLL_CURSOR_FRAME_COUNT     3
#define SCROLL_CURSOR_TILE_OFFSET(i)  (TILE_SIZE_4BPP * (i))
#define SCROLL_CURSOR_FRAME_SIZE      (SCROLL_CURSOR_TILE_OFFSET(SCROLL_CURSOR_TILES_PER_FRAME))
#define SCROLL_CURSOR_GRAPHICS_SIZE   (SCROLL_CURSOR_FRAME_SIZE * SCROLL_CURSOR_FRAME_COUNT)

static void DrawMessageBoxScrollCursor(Window *window, u16 baseTile)
{
    // must forward-declare these to match
    u8 *cursorTiles;
    void *cursorCharPtr;

    u32 heapID = BgConfig_GetHeapID(window->bgConfig);
    u8 bgLayer = Window_GetBgLayer(window);
    u8 *cursorBlit = Heap_Alloc(heapID, SCROLL_CURSOR_GRAPHICS_SIZE);
    u8 *bgGfx = Bg_GetCharPtr(bgLayer);

    NNSG2dCharacterData *cursorCharData;
    cursorCharPtr = Graphics_GetCharData(NARC_INDEX_GRAPHIC__PL_WINFRAME,
        scroll_cursor_NCGR,
        FALSE,
        &cursorCharData,
        heapID);
    cursorTiles = cursorCharData->pRawData;

    // Copy the window frame tiles into the blit window as a background
    for (u8 i = 0; i < SCROLL_CURSOR_FRAME_COUNT; i++) {
        u32 frameOffset = i * SCROLL_CURSOR_FRAME_SIZE;

        memcpy(&cursorBlit[frameOffset + SCROLL_CURSOR_TILE_OFFSET(0)], &bgGfx[(baseTile + 10) * TILE_SIZE_4BPP], TILE_SIZE_4BPP);
        memcpy(&cursorBlit[frameOffset + SCROLL_CURSOR_TILE_OFFSET(1)], &bgGfx[(baseTile + 11) * TILE_SIZE_4BPP], TILE_SIZE_4BPP);
        memcpy(&cursorBlit[frameOffset + SCROLL_CURSOR_TILE_OFFSET(2)], &bgGfx[(baseTile + 10) * TILE_SIZE_4BPP], TILE_SIZE_4BPP);
        memcpy(&cursorBlit[frameOffset + SCROLL_CURSOR_TILE_OFFSET(3)], &bgGfx[(baseTile + 11) * TILE_SIZE_4BPP], TILE_SIZE_4BPP);
    }

    BlitRectToBitmap(cursorTiles,
        4,
        0,
        12,
        16 * 3,
        cursorBlit,
        12,
        16 * 3,
        1,
        0,
        12,
        16 * 3);

    Bg_LoadTiles(window->bgConfig, bgLayer, cursorBlit, SCROLL_CURSOR_GRAPHICS_SIZE, baseTile + 18);
    TextPrinter_SetScrollArrowBaseTile(baseTile);
    Heap_Free(cursorCharPtr);
    Heap_Free(cursorBlit);
}

void ReplaceTransparentTiles(BgConfig *bgConfig, u8 bgLayer, u16 bgBaseTile, u8 withTile, u8 messageBoxFrame, u32 heapID)
{
    void *tiles;
    NNSG2dCharacterData *chars;
    u8 *src;
    u32 i;
    u8 srcTop, srcBot;

    tiles = Graphics_GetCharData(NARC_INDEX_GRAPHIC__PL_WINFRAME,
        GetMessageBoxTilesNARCMember(messageBoxFrame),
        FALSE,
        &chars,
        heapID);
    src = Heap_Alloc(heapID, TILE_SIZE_4BPP * 18);
    memcpy(src, chars->pRawData, TILE_SIZE_4BPP * 18);

    for (i = 0; i < TILE_SIZE_4BPP * 18; i++) {
        srcTop = src[i] >> 4;
        srcBot = src[i] & 0xF;

        if (srcTop == 0) {
            srcTop = withTile;
        }

        if (srcBot == 0) {
            srcBot = withTile;
        }

        src[i] = (srcTop << 4) | srcBot;
    }

    Bg_LoadTiles(bgConfig, bgLayer, src, TILE_SIZE_4BPP * 18, bgBaseTile);
    Heap_Free(tiles);
    Heap_Free(src);
}

void LoadSignpostContentGraphics(BgConfig *bgConfig, u8 bgLayer, u16 baseTile, u8 palette, u8 signpostType, u16 signpostNARCMemberIdx, u32 heapID)
{
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__FIELD_BOARD,
        signpost_frame_NCGR,
        bgConfig,
        bgLayer,
        baseTile,
        SIGNPOST_SIZE * TILE_SIZE_4BPP,
        FALSE,
        heapID);

    void *signpostNclr = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_GRAPHIC__FIELD_BOARD, signpost_NCLR, heapID);

    NNSG2dPaletteData *paletteData;
    NNS_G2dGetUnpackedPaletteData(signpostNclr, &paletteData);
    u16 *paletteBuf = paletteData->pRawData;

    Bg_LoadPalette(bgLayer,
        paletteBuf + (signpostType * PALETTE_SIZE),
        PALETTE_SIZE_BYTES,
        palette * PALETTE_SIZE_BYTES);
    Heap_FreeExplicit(heapID, signpostNclr);

    if (signpostType == SIGNPOST_TYPE_MAP || signpostType == SIGNPOST_TYPE_ARROW) {
        LoadSignpostContentTiles(bgConfig,
            bgLayer,
            baseTile + SIGNPOST_SIZE,
            signpostType,
            signpostNARCMemberIdx,
            heapID);
    }
}

static void LoadSignpostContentTiles(BgConfig *bgConfig, u8 bgLayer, u16 offset, u8 signpostType, u16 narcMemberIdx, u32 heapID)
{
    if (signpostType == SIGNPOST_TYPE_MAP) {
        narcMemberIdx += city_map_empty_NCGR;
    } else {
        narcMemberIdx += route_map_00_NCGR;
    }

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__FIELD_BOARD,
        narcMemberIdx,
        bgConfig,
        bgLayer,
        offset,
        24 * TILE_SIZE_4BPP,
        FALSE,
        heapID);
}

static void DrawSignpostFrame(BgConfig *bgConfig, u8 bgLayer, u8 x, u8 y, u8 width, u8 height, u8 palette, u16 tile)
{
    // clang-format off
    Bg_FillTilemapRect(bgConfig, bgLayer, tile,      x - 9,         y - 1,      1,         1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 1,  x - 8,         y - 1,      1,         1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 2,  x - 7,         y - 1,      width + 7, 1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 3,  x + width,     y - 1,      1,         1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 4,  x + width + 1, y - 1,      1,         1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 5,  x + width + 2, y - 1,      1,         1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 6,  x - 9,         y,          1,         height, palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 7,  x - 8,         y,          1,         height, palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 8,  x - 1,         y,          1,         height, palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 9,  x + width,     y,          1,         height, palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 10, x + width + 1, y,          1,         height, palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 11, x + width + 2, y,          1,         height, palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 12, x - 9,         y + height, 1,         1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 13, x - 8,         y + height, 1,         1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 14, x - 7,         y + height, width + 7, 1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 15, x + width,     y + height, 1,         1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 16, x + width + 1, y + height, 1,         1,      palette);
    Bg_FillTilemapRect(bgConfig, bgLayer, tile + 17, x + width + 2, y + height, 1,         1,      palette);
    // clang-format on
}

static void DrawSignpostTiles(Window *window, u16 tile, u8 palette)
{
    u16 dy, dx; // must forward-declare to match

    u8 bgLayer = Window_GetBgLayer(window);
    u16 x = Window_GetXPos(window) - 7;
    u16 y = Window_GetYPos(window);

    for (dy = 0; dy < SIGNPOST_CONTENT_HEIGHT_TILES; dy++) {
        for (dx = 0; dx < SIGNPOST_CONTENT_WIDTH_TILES; dx++) {
            Bg_FillTilemapRect(window->bgConfig, bgLayer, tile + dy * SIGNPOST_CONTENT_WIDTH_TILES + dx, x + dx, y + dy, 1, 1, palette);
        }
    }
}

void Window_DrawSignpost(Window *window, u8 skipTransfer, u16 baseTile, u8 palette, u8 signpostType)
{
    u8 bgLayer = Window_GetBgLayer(window);

    if (signpostType == SIGNPOST_TYPE_MAP || signpostType == SIGNPOST_TYPE_ARROW) {
        DrawSignpostFrame(window->bgConfig,
            bgLayer,
            Window_GetXPos(window),
            Window_GetYPos(window),
            Window_GetWidth(window),
            Window_GetHeight(window),
            palette,
            baseTile);
        DrawSignpostTiles(window, baseTile + SIGNPOST_SIZE, palette);
    } else {
        DrawMessageBoxFrame(window->bgConfig,
            bgLayer,
            Window_GetXPos(window),
            Window_GetYPos(window),
            Window_GetWidth(window),
            Window_GetHeight(window),
            palette,
            baseTile);
    }

    if (skipTransfer == FALSE) {
        Window_CopyToVRAM(window);
    }

    DrawMessageBoxScrollCursor(window, baseTile);
}

void Window_EraseSignpost(Window *window, u8 signpostType, u8 skipTransfer)
{
    u8 bgLayer = Window_GetBgLayer(window);

    if (signpostType == SIGNPOST_TYPE_MAP || signpostType == SIGNPOST_TYPE_ARROW) {
        Bg_FillTilemapRect(window->bgConfig,
            bgLayer,
            0,
            Window_GetXPos(window) - 9,
            Window_GetYPos(window) - 1,
            Window_GetWidth(window) + 11,
            Window_GetHeight(window) + 2,
            0);
    } else {
        Bg_FillTilemapRect(window->bgConfig,
            bgLayer,
            0,
            Window_GetXPos(window) - 2,
            Window_GetYPos(window) - 1,
            Window_GetWidth(window) + 5,
            Window_GetHeight(window) + 2,
            0);
    }

    if (skipTransfer == FALSE) {
        Window_ClearAndCopyToVRAM(window);
    }
}

void *Window_AddWaitDial(Window *window, u32 baseTile)
{
    WaitDial *dial;
    u32 heapID;
    u8 *bgCharPtr;
    u8 *dialTiles;
    u8 *tmp;
    void *dialTilesRaw;
    u8 bgLayer;
    u8 i;
    NNSG2dCharacterData *dialCharData;

    heapID = BgConfig_GetHeapID(window->bgConfig);
    bgLayer = Window_GetBgLayer(window);
    bgCharPtr = Bg_GetCharPtr(bgLayer);
    dial = Heap_Alloc(heapID, sizeof(WaitDial));

    memcpy(dial->messageBoxPixels, &bgCharPtr[(baseTile + 18) * TILE_SIZE_4BPP], WAIT_DIAL_FRAME_SIZE);

    tmp = Heap_Alloc(heapID, WAIT_DIAL_FRAME_SIZE);

    memcpy(&tmp[TILE_SIZE_4BPP * 0], &bgCharPtr[(baseTile + 10) * TILE_SIZE_4BPP], TILE_SIZE_4BPP);
    memcpy(&tmp[TILE_SIZE_4BPP * 1], &bgCharPtr[(baseTile + 11) * TILE_SIZE_4BPP], TILE_SIZE_4BPP);
    memcpy(&tmp[TILE_SIZE_4BPP * 2], &bgCharPtr[(baseTile + 10) * TILE_SIZE_4BPP], TILE_SIZE_4BPP);
    memcpy(&tmp[TILE_SIZE_4BPP * 3], &bgCharPtr[(baseTile + 11) * TILE_SIZE_4BPP], TILE_SIZE_4BPP);

    for (i = 0; i < WAIT_DIAL_FRAME_COUNT; i++) {
        memcpy(dial->pixels + WAIT_DIAL_FRAME_OFFSET(i), tmp, WAIT_DIAL_FRAME_SIZE);
    }

    Heap_Free(tmp);

    dialTilesRaw = Graphics_GetCharData(NARC_INDEX_GRAPHIC__PL_WINFRAME,
        wait_dial_NCGR,
        FALSE,
        &dialCharData,
        heapID);
    dialTiles = dialCharData->pRawData;

    BlitRectToBitmap(dialTiles,
        0,
        0,
        WAIT_DIAL_FRAME_WIDTH_TILES * 8,
        (WAIT_DIAL_FRAME_HEIGHT_TILES * 8) * WAIT_DIAL_FRAME_COUNT,
        dial->pixels,
        WAIT_DIAL_FRAME_WIDTH_TILES * 8,
        (WAIT_DIAL_FRAME_HEIGHT_TILES * 8) * WAIT_DIAL_FRAME_COUNT,
        0,
        0,
        WAIT_DIAL_FRAME_WIDTH_TILES * 8,
        (WAIT_DIAL_FRAME_HEIGHT_TILES * 8) * WAIT_DIAL_FRAME_COUNT);
    Heap_Free(dialTilesRaw);

    dial->window = window;
    dial->messageBoxTile = baseTile;
    dial->counter = 0;
    dial->curFrame = 0;
    dial->deleteMode = 0;

    SysTask_ExecuteOnVBlank(SysTask_TickWaitDial, dial, 0);
    DrawWaitDial(dial, DIAL_DRAW_MODE_LOAD_AND_DRAW);

    return dial;
}

static void DrawWaitDial(WaitDial *dial, u32 drawMode)
{
    u8 bgLayer = Window_GetBgLayer(dial->window);
    u8 x = Window_GetXPos(dial->window);
    u8 y = Window_GetYPos(dial->window);
    u8 width = Window_GetWidth(dial->window);

    if (drawMode == DIAL_DRAW_MODE_CLEAR) {
        Bg_LoadTiles(dial->window->bgConfig, bgLayer, dial->messageBoxPixels, WAIT_DIAL_FRAME_SIZE, dial->messageBoxTile + 18);
        Bg_FillTilemapRect(dial->window->bgConfig, bgLayer, dial->messageBoxTile + 10, x + width + 1, y + 2, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
        Bg_FillTilemapRect(dial->window->bgConfig, bgLayer, dial->messageBoxTile + 11, x + width + 2, y + 2, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
        Bg_FillTilemapRect(dial->window->bgConfig, bgLayer, dial->messageBoxTile + 10, x + width + 1, y + 3, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
        Bg_FillTilemapRect(dial->window->bgConfig, bgLayer, dial->messageBoxTile + 11, x + width + 2, y + 3, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
        Bg_CopyTilemapBufferToVRAM(dial->window->bgConfig, bgLayer);

        return;
    }

    Bg_LoadTiles(dial->window->bgConfig, bgLayer, &dial->pixels[WAIT_DIAL_FRAME_SIZE * dial->curFrame], WAIT_DIAL_FRAME_SIZE, dial->messageBoxTile + 18);

    if (drawMode == DIAL_DRAW_MODE_LOAD_ONLY) {
        return;
    }

    Bg_FillTilemapRect(dial->window->bgConfig, bgLayer, dial->messageBoxTile + 18, x + width + 1, y + 2, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
    Bg_FillTilemapRect(dial->window->bgConfig, bgLayer, dial->messageBoxTile + 19, x + width + 2, y + 2, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
    Bg_FillTilemapRect(dial->window->bgConfig, bgLayer, dial->messageBoxTile + 20, x + width + 1, y + 3, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
    Bg_FillTilemapRect(dial->window->bgConfig, bgLayer, dial->messageBoxTile + 21, x + width + 2, y + 3, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
    Bg_CopyTilemapBufferToVRAM(dial->window->bgConfig, bgLayer);
}

static void SysTask_TickWaitDial(SysTask *task, void *data)
{
    WaitDial *dial = data;

    if (dial->deleteMode != DIAL_DELETE_MODE_NONE) {
        if (dial->deleteMode == DIAL_DELETE_MODE_CLEAR) {
            DrawWaitDial(dial, DIAL_DRAW_MODE_CLEAR);
        }

        SysTask_Done(task);
        return;
    }

    dial->counter++;

    if (dial->counter == 16) {
        dial->counter = 0;
        dial->curFrame = (dial->curFrame + 1) & 7;
        DrawWaitDial(dial, DIAL_DRAW_MODE_LOAD_ONLY);
    }
}

static void SysTask_CleanupWaitDial(SysTask *task, void *data)
{
    Heap_Free(data);
    SysTask_Done(task);
}

void DestroyWaitDial(void *taskData)
{
    WaitDial *dial = taskData;

    SysTask_ExecuteAfterVBlank(SysTask_CleanupWaitDial, dial, 0);
    dial->deleteMode = DIAL_DELETE_MODE_CLEAR;
}

void DestroyWaitDialTaskOnly(void *taskData)
{
    WaitDial *dial = taskData;

    SysTask_ExecuteAfterVBlank(SysTask_CleanupWaitDial, dial, 0);
    dial->deleteMode = DIAL_DELETE_MODE_DESTROY;
}

u8 *DrawPokemonPreview(BgConfig *bgConfig, u8 bgLayer, u8 x, u8 y, u8 palette, u16 baseTile, u16 species, u8 gender, enum HeapID heapID)
{
    PokemonPreview *preview = CreatePokemonPreviewTask(bgConfig, bgLayer, x, y, heapID);

    sub_0200ED50(preview, heapID);
    LoadPokemonPreviewResources(preview);
    CreatePokemonPreviewSprite(preview, x, y);
    LoadAndDrawPokemonPreviewSprite(&preview->spriteManager, species, gender);
    DrawPokemonPreviewWindow(preview, palette, baseTile);
    Bg_CopyTilemapBufferToVRAM(bgConfig, bgLayer);

    return &preview->state;
}

u8 *DrawPokemonPreviewFromStruct(BgConfig *bgConfig, u8 bgLayer, u8 x, u8 y, u8 palette, u16 baseTile, Pokemon *mon, enum HeapID heapID)
{
    PokemonPreview *preview = CreatePokemonPreviewTask(bgConfig, bgLayer, x, y, heapID);

    sub_0200ED50(preview, heapID);
    LoadPokemonPreviewResources(preview);
    CreatePokemonPreviewSprite(preview, x, y);
    LoadAndDrawPokemonPreviewSpriteFromStruct(&preview->spriteManager, mon);
    DrawPokemonPreviewWindow(preview, palette, baseTile);
    Bg_CopyTilemapBufferToVRAM(bgConfig, bgLayer);

    return &preview->state;
}

static void SysTask_HandlePokemonPreview(SysTask *task, void *data)
{
    PokemonPreview *preview = data;

    switch (preview->state) {
    case 1:
        ErasePokemonPreviewWindow(preview);
        Sprite_DeleteAndFreeResources(preview->managedSprite);
        SpriteResourceManager_Cleanup(&preview->spriteManager);
        SysTask_FinishAndFreeParam(task);
        return;

    case 2:
        preview->state = 3;
        Sprite_SetAnim(preview->managedSprite->sprite, 1);
        break;

    case 3:
        if (Sprite_GetAnimFrame(preview->managedSprite->sprite) == 6) {
            preview->state = 0;
        }
        break;
    }

    Sprite_UpdateAnim(preview->managedSprite->sprite, FX32_ONE);
    SpriteList_Update(preview->spriteManager.spriteList);
}

static PokemonPreview *CreatePokemonPreviewTask(BgConfig *bgConfig, u8 bgLayer, u8 x, u8 y, u32 heapID)
{
    PokemonPreview *preview = SysTask_GetParam(SysTask_StartAndAllocateParam(SysTask_HandlePokemonPreview, sizeof(PokemonPreview), 0, heapID));

    preview->state = 0;
    preview->bgConfig = bgConfig;
    preview->bgLayer = bgLayer;
    preview->x = x;
    preview->y = y;

    return preview;
}

static void sub_0200ED50(PokemonPreview *preview, u32 heapID)
{
    SpriteResourceCapacities v0 = { 1, 1, 1, 1, 0, 0 };
    SpriteResourceManager_SetCapacities(&preview->spriteManager, &v0, 1, heapID);
}

static void LoadPokemonPreviewResources(PokemonPreview *preview)
{
    SpriteResourceManager_AddPalette(&preview->spriteManager,
        NARC_INDEX_GRAPHIC__PL_WINFRAME,
        pokemon_preview_NCLR,
        FALSE,
        1,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        POKEMON_PREVIEW_RESOURCE_ID);
    SpriteResourceManager_AddCell(&preview->spriteManager,
        NARC_INDEX_GRAPHIC__PL_WINFRAME,
        pokemon_preview_cell_NCER,
        FALSE,
        POKEMON_PREVIEW_RESOURCE_ID);
    SpriteResourceManager_AddAnimation(&preview->spriteManager,
        NARC_INDEX_GRAPHIC__PL_WINFRAME,
        pokemon_preview_anim_NANR,
        FALSE,
        POKEMON_PREVIEW_RESOURCE_ID);
    SpriteResourceManager_AddTiles(&preview->spriteManager,
        NARC_INDEX_GRAPHIC__PL_WINFRAME,
        pokemon_preview_NCGR,
        FALSE,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        POKEMON_PREVIEW_RESOURCE_ID);
}

static void CreatePokemonPreviewSprite(PokemonPreview *preview, u8 x, u8 y)
{
    SpriteTemplate template = sPokemonPreviewSpriteTemplate;
    template.x = (x + 5) * 8;
    template.y = (y + 5) * 8;

    preview->managedSprite = SpriteResourceManager_CreateManagedSprite(&preview->spriteManager, &template);

    SpriteList_Update(preview->spriteManager.spriteList);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void LoadAndDrawPokemonPreviewSprite(SpriteResourceManager *param0, u16 species, u8 gender)
{
    void *buf = PokemonSpriteManager_New(param0->heapID);

    PokemonSpriteTemplate sprite;
    BuildPokemonSpriteTemplate(&sprite, species, gender, FACE_FRONT, FALSE, NULL, NULL);
    DrawPokemonPreviewSprite(param0, &sprite);
    PokemonSpriteManager_Free(buf);
}

static void LoadAndDrawPokemonPreviewSpriteFromStruct(SpriteResourceManager *param0, Pokemon *mon)
{
    void *buf = PokemonSpriteManager_New(param0->heapID);

    PokemonSpriteTemplate sprite;
    Pokemon_BuildSpriteTemplate(&sprite, mon, FACE_FRONT);
    DrawPokemonPreviewSprite(param0, &sprite);
    PokemonSpriteManager_Free(buf);
}

#define POKEMON_SPRITE_FRAME_WIDTH_TILES  10
#define POKEMON_SPRITE_FRAME_HEIGHT_TILES 10
#define POKEMON_SPRITE_FRAME_SIZE_TILES   (POKEMON_SPRITE_FRAME_WIDTH_TILES * POKEMON_SPRITE_FRAME_HEIGHT_TILES)
#define POKEMON_SPRITE_FRAME_SIZE_BYTES   (TILE_SIZE_4BPP * POKEMON_SPRITE_FRAME_SIZE_TILES)
#define POKEMON_SPRITE_WHOLE_SIZE_BYTES   (POKEMON_SPRITE_FRAME_SIZE_BYTES * 2)

static void DrawPokemonPreviewSprite(SpriteResourceManager *param0, PokemonSpriteTemplate *spriteTemplate)
{
    u8 *buf;
    u32 offset;
    SpriteResource *charResource, *plttResource;
    NNSG2dImageProxy *imageProxy;
    const NNSG2dImagePaletteProxy *paletteProxy;

    buf = Heap_Alloc(param0->heapID, POKEMON_SPRITE_WHOLE_SIZE_BYTES);

    // frame 0
    TileRegion frame0Region = FRAME_0_REGION;
    CharacterSprite_LoadSpriteRegion(spriteTemplate->narcID, spriteTemplate->character, param0->heapID, &frame0Region, buf);

    // frame 1
    TileRegion frame1Region = FRAME_1_REGION;
    CharacterSprite_LoadSpriteRegion(spriteTemplate->narcID, spriteTemplate->character, param0->heapID, &frame1Region, buf + POKEMON_SPRITE_FRAME_SIZE_BYTES);

    charResource = SpriteResourceCollection_Find(param0->resourceCollections[SPRITE_RESOURCE_CHAR], POKEMON_PREVIEW_RESOURCE_ID);
    imageProxy = SpriteTransfer_GetImageProxy(charResource);
    offset = NNS_G2dGetImageLocation(imageProxy, NNS_G2D_VRAM_TYPE_2DMAIN);

    DC_FlushRange(buf, POKEMON_SPRITE_WHOLE_SIZE_BYTES);
    GX_LoadOBJ(buf, offset, POKEMON_SPRITE_WHOLE_SIZE_BYTES);

    Heap_Free(buf);

    buf = CharacterSprite_LoadPalette(spriteTemplate->narcID, spriteTemplate->palette, param0->heapID);
    plttResource = SpriteResourceCollection_Find(param0->resourceCollections[SPRITE_RESOURCE_PLTT], POKEMON_PREVIEW_RESOURCE_ID);
    paletteProxy = SpriteTransfer_GetPaletteProxy(plttResource, imageProxy);
    offset = NNS_G2dGetImagePaletteLocation(paletteProxy, NNS_G2D_VRAM_TYPE_2DMAIN);

    DC_FlushRange(buf, 32);
    GX_LoadOBJPltt(buf, offset, 32);

    Heap_Free(buf);
}

static void DrawPokemonPreviewWindow(PokemonPreview *preview, u8 palette, u16 tile)
{
    Bg_FillTilemapRect(preview->bgConfig,
        preview->bgLayer,
        tile,
        preview->x - 1,
        preview->y - 1,
        1,
        1,
        palette);
    Bg_FillTilemapRect(preview->bgConfig,
        preview->bgLayer,
        tile + 1,
        preview->x,
        preview->y - 1,
        POKEMON_SPRITE_FRAME_WIDTH_TILES,
        1,
        palette);
    Bg_FillTilemapRect(preview->bgConfig,
        preview->bgLayer,
        tile + 2,
        preview->x + POKEMON_SPRITE_FRAME_WIDTH_TILES,
        preview->y - 1,
        1,
        1,
        palette);
    Bg_FillTilemapRect(preview->bgConfig,
        preview->bgLayer,
        tile + 4,
        preview->x,
        preview->y,
        POKEMON_SPRITE_FRAME_WIDTH_TILES,
        POKEMON_SPRITE_FRAME_HEIGHT_TILES,
        palette);
    Bg_FillTilemapRect(preview->bgConfig,
        preview->bgLayer,
        tile + 3,
        preview->x - 1,
        preview->y,
        1,
        POKEMON_SPRITE_FRAME_HEIGHT_TILES,
        palette);
    Bg_FillTilemapRect(preview->bgConfig,
        preview->bgLayer,
        tile + 5,
        preview->x + POKEMON_SPRITE_FRAME_WIDTH_TILES,
        preview->y,
        1,
        POKEMON_SPRITE_FRAME_HEIGHT_TILES,
        palette);
    Bg_FillTilemapRect(preview->bgConfig,
        preview->bgLayer,
        tile + 6,
        preview->x - 1,
        preview->y + POKEMON_SPRITE_FRAME_HEIGHT_TILES,
        1,
        1,
        palette);
    Bg_FillTilemapRect(preview->bgConfig,
        preview->bgLayer,
        tile + 7,
        preview->x,
        preview->y + POKEMON_SPRITE_FRAME_HEIGHT_TILES,
        POKEMON_SPRITE_FRAME_WIDTH_TILES,
        1,
        palette);
    Bg_FillTilemapRect(preview->bgConfig,
        preview->bgLayer,
        tile + 8,
        preview->x + POKEMON_SPRITE_FRAME_WIDTH_TILES,
        preview->y + POKEMON_SPRITE_FRAME_HEIGHT_TILES,
        1,
        1,
        palette);

    Bg_ScheduleTilemapTransfer(preview->bgConfig, preview->bgLayer);
}

static void ErasePokemonPreviewWindow(PokemonPreview *preview)
{
    Bg_FillTilemapRect(preview->bgConfig,
        preview->bgLayer,
        0,
        preview->x - 1,
        preview->y - 1,
        POKEMON_SPRITE_FRAME_WIDTH_TILES + 2,
        POKEMON_SPRITE_FRAME_HEIGHT_TILES + 2,
        0);
    Bg_ScheduleTilemapTransfer(preview->bgConfig, preview->bgLayer);
}
