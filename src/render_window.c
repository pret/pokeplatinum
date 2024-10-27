#include "render_window.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"

#include "struct_defs/archived_sprite.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_02013610.h"

#include "overlay005/ov5_021D2F14.h"
#include "overlay005/struct_ov5_021D30A8.h"
#include "overlay104/struct_ov104_02241308.h"

#include "bg_window.h"
#include "cell_actor.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "pokemon.h"
#include "render_text.h"
#include "sprite_resource.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_0200679C.h"
#include "unk_0200762C.h"
#include "unk_0200A328.h"
#include "unk_0200C6E4.h"
#include "unk_020131EC.h"

#define WAIT_DIAL_TILES_PER_FRAME 4
#define WAIT_DIAL_FRAME_SIZE      (TILE_SIZE_4BPP * WAIT_DIAL_TILES_PER_FRAME)
#define WAIT_DIAL_FRAME_COUNT     8
#define WAIT_DIAL_WHOLE_SIZE      (WAIT_DIAL_FRAME_SIZE * WAIT_DIAL_FRAME_COUNT)

#define POKEMON_PREVIEW_RESOURCE_ID 89301

typedef struct WaitDial {
    Window *window;
    u8 pixels[WAIT_DIAL_WHOLE_SIZE];
    u8 messageBoxPixels[WAIT_DIAL_FRAME_SIZE];
    u16 messageBoxTile;
    u8 counter;
    u8 curFrame : 7;
    u8 : 1;
    u8 deleteMode : 2;
    u8 : 6;
} WaitDial;

typedef struct PokemonPreview {
    UnkStruct_ov5_021D30A8 unk_00;
    CellActorData *cellActorData;
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
static void sub_0200ED50(PokemonPreview *param0, u32 sprite);
static void LoadPokemonPreviewResources(PokemonPreview *preview);
static void CreatePokemonPreviewSprite(PokemonPreview *preview, u8 x, u8 y);
static void LoadAndDrawPokemonPreviewSprite(UnkStruct_ov5_021D30A8 *param0, u16 species, u8 gender);
static void LoadAndDrawPokemonPreviewSpriteFromStruct(UnkStruct_ov5_021D30A8 *param0, Pokemon *mon);
static void DrawPokemonPreviewSprite(UnkStruct_ov5_021D30A8 *param0, ArchivedSprite *sprite);
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
    .transferToVRAM = FALSE,
};

void LoadStandardWindowTiles(BgConfig *param0, u8 sprite, u16 param2, u8 param3, u32 param4)
{
    if (param3 == 0) {
        Graphics_LoadTilesToBgLayer(38, 0, param0, sprite, param2, 0, 0, param4);
    } else {
        Graphics_LoadTilesToBgLayer(38, 1, param0, sprite, param2, 0, 0, param4);
    }
}

u32 GetStandardWindowPaletteNARCMember(void)
{
    return 24;
}

void LoadStandardWindowGraphics(BgConfig *param0, u8 sprite, u16 param2, u8 param3, u8 param4, u32 param5)
{
    u32 v0;

    if (param4 == 0) {
        v0 = 0;
    } else {
        v0 = 1;
    }

    Graphics_LoadTilesToBgLayer(38, v0, param0, sprite, param2, 0, 0, param5);

    if (param4 == 2) {
        v0 = 45;
    } else {
        v0 = 24;
    }

    if (sprite < 4) {
        Graphics_LoadPalette(38, v0, 0, param3 * 0x20, 0x20, param5);
    } else {
        Graphics_LoadPalette(38, v0, 4, param3 * 0x20, 0x20, param5);
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

void Window_DrawStandardFrame(Window *param0, u8 sprite, u16 param2, u8 param3)
{
    u8 v0 = Window_GetBgLayer(param0);

    DrawStandardWindowFrame(param0->bgConfig, v0, Window_GetXPos(param0), Window_GetYPos(param0), Window_GetWidth(param0), Window_GetHeight(param0), param3, param2);

    if (sprite == 0) {
        Window_CopyToVRAM(param0);
    }
}

void Window_EraseStandardFrame(Window *param0, u8 sprite)
{
    u8 v0 = Window_GetBgLayer(param0);

    Bg_FillTilemapRect(param0->bgConfig, v0, 0, Window_GetXPos(param0) - 1, Window_GetYPos(param0) - 1, Window_GetWidth(param0) + 2, Window_GetHeight(param0) + 2, 0);

    if (sprite == 0) {
        Window_ClearAndCopyToVRAM(param0);
    }
}

u32 GetMessageBoxTilesNARCMember(u32 param0)
{
    return 2 + param0;
}

u32 GetMessageBoxPaletteNARCMember(u32 param0)
{
    return 25 + param0;
}

void LoadMessageBoxGraphics(BgConfig *param0, u8 sprite, u16 param2, u8 param3, u8 param4, u32 param5)
{
    Graphics_LoadTilesToBgLayer(38, GetMessageBoxTilesNARCMember(param4), param0, sprite, param2, 0, 0, param5);

    if (sprite < 4) {
        Graphics_LoadPalette(38, GetMessageBoxPaletteNARCMember(param4), 0, param3 * 0x20, 0x20, param5);
    } else {
        Graphics_LoadPalette(38, GetMessageBoxPaletteNARCMember(param4), 4, param3 * 0x20, 0x20, param5);
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

void Window_DrawMessageBox(Window *param0, u32 sprite, u32 param2)
{
    DrawMessageBoxFrame(param0->bgConfig, Window_GetBgLayer(param0), Window_GetXPos(param0), Window_GetYPos(param0), Window_GetWidth(param0), Window_GetHeight(param0), param2, sprite);
}

void Window_DrawMessageBoxWithScrollCursor(Window *param0, u8 sprite, u16 param2, u8 param3)
{
    Window_DrawMessageBox(param0, param2, param3);

    if (sprite == 0) {
        Window_CopyToVRAM(param0);
    }

    DrawMessageBoxScrollCursor(param0, param2);
}

void Window_EraseMessageBox(Window *param0, u8 sprite)
{
    u8 v0 = Window_GetBgLayer(param0);

    Bg_FillTilemapRect(param0->bgConfig, v0, 0, Window_GetXPos(param0) - 2, Window_GetYPos(param0) - 1, Window_GetWidth(param0) + 5, Window_GetHeight(param0) + 2, 0);

    if (sprite == 0) {
        Window_ClearAndCopyToVRAM(param0);
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
    u8 *cursorBlit = Heap_AllocFromHeap(heapID, SCROLL_CURSOR_GRAPHICS_SIZE);
    u8 *bgGfx = Bg_GetCharPtr(bgLayer);

    NNSG2dCharacterData *cursorCharData;
    cursorCharPtr = Graphics_GetCharData(NARC_INDEX_GRAPHIC__PL_WINFRAME, 22, FALSE, &cursorCharData, heapID);
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
    Heap_FreeToHeap(cursorCharPtr);
    Heap_FreeToHeap(cursorBlit);
}

void ReplaceTransparentTiles(BgConfig *param0, u8 sprite, u16 param2, u8 param3, u8 param4, u32 param5)
{
    void *v0;
    NNSG2dCharacterData *v1;
    u8 *v2;
    u32 v3;
    u8 v4, v5;

    v0 = Graphics_GetCharData(38, GetMessageBoxTilesNARCMember(param4), 0, &v1, param5);
    v2 = Heap_AllocFromHeap(param5, 0x20 * 18);

    memcpy(v2, v1->pRawData, 0x20 * 18);

    for (v3 = 0; v3 < 0x20 * 18; v3++) {
        v4 = v2[v3] >> 4;
        v5 = v2[v3] & 0xf;

        if (v4 == 0) {
            v4 = param3;
        }

        if (v5 == 0) {
            v5 = param3;
        }

        v2[v3] = (v4 << 4) | v5;
    }

    Bg_LoadTiles(param0, sprite, v2, 0x20 * 18, param2);
    Heap_FreeToHeap(v0);
    Heap_FreeToHeap(v2);
}

void LoadSignpostContentGraphics(BgConfig *param0, u8 sprite, u16 param2, u8 param3, u8 param4, u16 param5, u32 param6)
{
    Graphics_LoadTilesToBgLayer(
        36, 0, param0, sprite, param2, (18 + 12) * 0x20, 0, param6);

    {
        NNSG2dPaletteData *v0;
        void *v1;
        u16 *v2;

        v1 = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_GRAPHIC__FIELD_BOARD, 1, param6);
        NNS_G2dGetUnpackedPaletteData(v1, &v0);
        v2 = (u16 *)v0->pRawData;

        Bg_LoadPalette(sprite, (void *)&v2[param4 * 16], 0x20, param3 * 0x20);
        Heap_FreeToHeapExplicit(param6, v1);
    }

    if ((param4 == 0) || (param4 == 1)) {
        LoadSignpostContentTiles(param0, sprite, param2 + (18 + 12), param4, param5, param6);
    }
}

static void LoadSignpostContentTiles(BgConfig *bgConfig, u8 bgLayer, u16 offset, u8 signpostType, u16 narcMemberIdx, u32 heapID)
{
    if (signpostType == 0) {
        narcMemberIdx += 33;
    } else {
        narcMemberIdx += 2;
    }

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__FIELD_BOARD, narcMemberIdx, bgConfig, bgLayer, offset, 24 * TILE_SIZE_4BPP, FALSE, heapID);
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

#define SIGNPOST_WIDTH_TILES  6
#define SIGNPOST_HEIGHT_TILES 4

static void DrawSignpostTiles(Window *window, u16 tile, u8 palette)
{
    u16 dy, dx; // must forward-declare to match

    u8 bgLayer = Window_GetBgLayer(window);
    u16 x = Window_GetXPos(window) - 7;
    u16 y = Window_GetYPos(window);

    for (dy = 0; dy < SIGNPOST_HEIGHT_TILES; dy++) {
        for (dx = 0; dx < SIGNPOST_WIDTH_TILES; dx++) {
            Bg_FillTilemapRect(window->bgConfig, bgLayer, tile + dy * SIGNPOST_WIDTH_TILES + dx, x + dx, y + dy, 1, 1, palette);
        }
    }
}

void Window_DrawSignpost(Window *param0, u8 sprite, u16 param2, u8 param3, u8 param4)
{
    u8 v0 = Window_GetBgLayer(param0);

    if ((param4 == 0) || (param4 == 1)) {
        DrawSignpostFrame(param0->bgConfig, v0, Window_GetXPos(param0), Window_GetYPos(param0), Window_GetWidth(param0), Window_GetHeight(param0), param3, param2);
        DrawSignpostTiles(param0, param2 + (18 + 12), param3);
    } else {
        DrawMessageBoxFrame(param0->bgConfig, v0, Window_GetXPos(param0), Window_GetYPos(param0), Window_GetWidth(param0), Window_GetHeight(param0), param3, param2);
    }

    if (sprite == 0) {
        Window_CopyToVRAM(param0);
    }

    DrawMessageBoxScrollCursor(param0, param2);
}

void Window_EraseSignpost(Window *param0, u8 sprite, u8 param2)
{
    u8 v0 = Window_GetBgLayer(param0);

    if ((sprite == 0) || (sprite == 1)) {
        Bg_FillTilemapRect(param0->bgConfig, v0, 0, Window_GetXPos(param0) - 9, Window_GetYPos(param0) - 1, Window_GetWidth(param0) + 11, Window_GetHeight(param0) + 2, 0);
    } else {
        Bg_FillTilemapRect(param0->bgConfig, v0, 0, Window_GetXPos(param0) - 2, Window_GetYPos(param0) - 1, Window_GetWidth(param0) + 5, Window_GetHeight(param0) + 2, 0);
    }

    if (param2 == 0) {
        Window_ClearAndCopyToVRAM(param0);
    }
}

void *Window_AddWaitDial(Window *param0, u32 sprite)
{
    WaitDial *v0;
    u32 v1;
    u8 *v2;
    u8 *v3;
    u8 *v4;
    void *v5;
    u8 v6;
    u8 v7;

    v1 = BgConfig_GetHeapID(param0->bgConfig);
    v6 = Window_GetBgLayer(param0);
    v2 = Bg_GetCharPtr(v6);
    v0 = Heap_AllocFromHeap(v1, sizeof(WaitDial));

    memcpy(v0->messageBoxPixels, &v2[(sprite + 18) * 0x20], 0x20 * 4);

    v4 = (u8 *)Heap_AllocFromHeap(v1, 0x20 * 4);

    memcpy(&v4[0x20 * 0], &v2[(sprite + 10) * 0x20], 0x20);
    memcpy(&v4[0x20 * 1], &v2[(sprite + 11) * 0x20], 0x20);
    memcpy(&v4[0x20 * 2], &v2[(sprite + 10) * 0x20], 0x20);
    memcpy(&v4[0x20 * 3], &v2[(sprite + 11) * 0x20], 0x20);

    for (v7 = 0; v7 < 8; v7++) {
        memcpy(&v0->pixels[0x20 * 4 * v7], v4, 0x20 * 4);
    }

    Heap_FreeToHeap(v4);

    {
        NNSG2dCharacterData *v8;

        v5 = Graphics_GetCharData(38, 23, 0, &v8, v1);
        v3 = (u8 *)v8->pRawData;
    }

    BlitRectToBitmap(v3, 0, 0, 16, 16 * 8, v0->pixels, 16, 16 * 8, 0, 0, 16, 16 * 8);
    Heap_FreeToHeap(v5);

    v0->window = param0;
    v0->messageBoxTile = (u16)sprite;
    v0->counter = 0;
    v0->curFrame = 0;
    v0->deleteMode = 0;

    SysTask_ExecuteOnVBlank(SysTask_TickWaitDial, v0, 0);
    DrawWaitDial(v0, 1);

    return v0;
}

static void DrawWaitDial(WaitDial *dial, u32 drawMode)
{
    u8 bgLayer = Window_GetBgLayer(dial->window);
    u8 x = Window_GetXPos(dial->window);
    u8 y = Window_GetYPos(dial->window);
    u8 width = Window_GetWidth(dial->window);

    if (drawMode == 2) {
        Bg_LoadTiles(dial->window->bgConfig, bgLayer, dial->messageBoxPixels, WAIT_DIAL_FRAME_SIZE, dial->messageBoxTile + 18);
        Bg_FillTilemapRect(dial->window->bgConfig, bgLayer, dial->messageBoxTile + 10, x + width + 1, y + 2, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
        Bg_FillTilemapRect(dial->window->bgConfig, bgLayer, dial->messageBoxTile + 11, x + width + 2, y + 2, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
        Bg_FillTilemapRect(dial->window->bgConfig, bgLayer, dial->messageBoxTile + 10, x + width + 1, y + 3, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
        Bg_FillTilemapRect(dial->window->bgConfig, bgLayer, dial->messageBoxTile + 11, x + width + 2, y + 3, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
        Bg_CopyTilemapBufferToVRAM(dial->window->bgConfig, bgLayer);

        return;
    }

    Bg_LoadTiles(dial->window->bgConfig, bgLayer, &dial->pixels[WAIT_DIAL_FRAME_SIZE * dial->curFrame], WAIT_DIAL_FRAME_SIZE, dial->messageBoxTile + 18);

    if (drawMode == 0) {
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

    if (dial->deleteMode != 0) {
        if (dial->deleteMode == 1) {
            DrawWaitDial(dial, 2);
        }

        SysTask_Done(task);
        return;
    }

    dial->counter++;

    if (dial->counter == 16) {
        dial->counter = 0;
        dial->curFrame = (dial->curFrame + 1) & 7;
        DrawWaitDial(dial, 0);
    }
}

static void SysTask_CleanupWaitDial(SysTask *task, void *data)
{
    Heap_FreeToHeap(data);
    SysTask_Done(task);
}

void DestroyWaitDial(void *param0)
{
    WaitDial *v0 = param0;

    SysTask_ExecuteAfterVBlank(SysTask_CleanupWaitDial, v0, 0);
    v0->deleteMode = 1;
}

void DestroyWaitDialAndTask(void *param0)
{
    WaitDial *v0 = param0;

    SysTask_ExecuteAfterVBlank(SysTask_CleanupWaitDial, v0, 0);
    v0->deleteMode = 2;
}

u8 *DrawPokemonPreview(BgConfig *param0, u8 sprite, u8 param2, u8 param3, u8 param4, u16 param5, u16 param6, u8 param7, int param8)
{
    PokemonPreview *v0 = CreatePokemonPreviewTask(param0, sprite, param2, param3, param8);

    sub_0200ED50(v0, param8);
    LoadPokemonPreviewResources(v0);
    CreatePokemonPreviewSprite(v0, param2, param3);
    LoadAndDrawPokemonPreviewSprite(&v0->unk_00, param6, param7);
    DrawPokemonPreviewWindow(v0, param4, param5);
    Bg_CopyTilemapBufferToVRAM(param0, sprite);

    return &v0->state;
}

u8 *DrawPokemonPreviewFromStruct(BgConfig *param0, u8 sprite, u8 param2, u8 param3, u8 param4, u16 param5, Pokemon *param6, int param7)
{
    PokemonPreview *v0 = CreatePokemonPreviewTask(param0, sprite, param2, param3, param7);

    sub_0200ED50(v0, param7);
    LoadPokemonPreviewResources(v0);
    CreatePokemonPreviewSprite(v0, param2, param3);
    LoadAndDrawPokemonPreviewSpriteFromStruct(&v0->unk_00, param6);
    DrawPokemonPreviewWindow(v0, param4, param5);
    Bg_CopyTilemapBufferToVRAM(param0, sprite);

    return &v0->state;
}

static void SysTask_HandlePokemonPreview(SysTask *task, void *data)
{
    PokemonPreview *preview = data;

    switch (preview->state) {
    case 1:
        ErasePokemonPreviewWindow(preview);
        sub_0200D0F4(preview->cellActorData);
        ov5_021D375C(&preview->unk_00);
        SysTask_FinishAndFreeParam(task);
        return;

    case 2:
        preview->state = 3;
        CellActor_SetAnim(preview->cellActorData->unk_00, 1);
        break;

    case 3:
        if (CellActor_GetAnimFrame(preview->cellActorData->unk_00) == 6) {
            preview->state = 0;
        }
        break;
    }

    CellActor_UpdateAnim(preview->cellActorData->unk_00, FX32_ONE);
    CellActorCollection_Update(preview->unk_00.unk_00);
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

static void sub_0200ED50(PokemonPreview *param0, u32 param1)
{
    UnkStruct_ov104_02241308 v0 = { 1, 1, 1, 1, 0, 0 };
    ov5_021D3190(&param0->unk_00, &v0, 1, param1);
}

static void LoadPokemonPreviewResources(PokemonPreview *preview)
{
    ov5_021D3270(&preview->unk_00, NARC_INDEX_GRAPHIC__PL_WINFRAME, 49, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, POKEMON_PREVIEW_RESOURCE_ID);
    ov5_021D3360(&preview->unk_00, NARC_INDEX_GRAPHIC__PL_WINFRAME, 47, FALSE, POKEMON_PREVIEW_RESOURCE_ID);
    ov5_021D3388(&preview->unk_00, NARC_INDEX_GRAPHIC__PL_WINFRAME, 46, FALSE, POKEMON_PREVIEW_RESOURCE_ID);
    ov5_021D33B0(&preview->unk_00, NARC_INDEX_GRAPHIC__PL_WINFRAME, 48, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, POKEMON_PREVIEW_RESOURCE_ID);
}

static void CreatePokemonPreviewSprite(PokemonPreview *preview, u8 x, u8 y)
{
    SpriteTemplate template = sPokemonPreviewSpriteTemplate;
    template.x = (x + 5) * 8;
    template.y = (y + 5) * 8;

    preview->cellActorData = ov5_021D3584(&preview->unk_00, &template);

    CellActorCollection_Update(preview->unk_00.unk_00);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void LoadAndDrawPokemonPreviewSprite(UnkStruct_ov5_021D30A8 *param0, u16 species, u8 gender)
{
    void *buf = sub_0200762C(param0->unk_1C6);

    ArchivedSprite sprite;
    BuildArchivedPokemonSprite(&sprite, species, gender, FACE_FRONT, FALSE, NULL, NULL);
    DrawPokemonPreviewSprite(param0, &sprite);
    sub_02007B6C(buf);
}

static void LoadAndDrawPokemonPreviewSpriteFromStruct(UnkStruct_ov5_021D30A8 *param0, Pokemon *mon)
{
    void *buf = sub_0200762C(param0->unk_1C6);

    ArchivedSprite sprite;
    Pokemon_BuildArchivedSprite(&sprite, mon, FACE_FRONT);
    DrawPokemonPreviewSprite(param0, &sprite);
    sub_02007B6C(buf);
}

#define POKEMON_SPRITE_FRAME_WIDTH_TILES  10
#define POKEMON_SPRITE_FRAME_HEIGHT_TILES 10
#define POKEMON_SPRITE_FRAME_SIZE_TILES   (POKEMON_SPRITE_FRAME_WIDTH_TILES * POKEMON_SPRITE_FRAME_HEIGHT_TILES)
#define POKEMON_SPRITE_FRAME_SIZE_BYTES   (TILE_SIZE_4BPP * POKEMON_SPRITE_FRAME_SIZE_TILES)
#define POKEMON_SPRITE_WHOLE_SIZE_BYTES   (POKEMON_SPRITE_FRAME_SIZE_BYTES * 2)

static void DrawPokemonPreviewSprite(UnkStruct_ov5_021D30A8 *param0, ArchivedSprite *sprite)
{
    u8 *buf;
    u32 offset;
    SpriteResource *charResource, *plttResource;
    NNSG2dImageProxy *imageProxy;
    const NNSG2dImagePaletteProxy *paletteProxy;

    buf = Heap_AllocFromHeap(param0->unk_1C6, POKEMON_SPRITE_WHOLE_SIZE_BYTES);

    // frame 0
    UnkStruct_02013610 v6 = { 0, 0, 10, 10 };
    sub_020135F0(sprite->archive, sprite->character, param0->unk_1C6, &v6, buf);

    // frame 1
    UnkStruct_02013610 v7 = { 10, 0, 10, 10 };
    sub_020135F0(sprite->archive, sprite->character, param0->unk_1C6, &v7, buf + POKEMON_SPRITE_FRAME_SIZE_BYTES);

    charResource = SpriteResourceCollection_Find(param0->unk_194[SPRITE_RESOURCE_TILES], POKEMON_PREVIEW_RESOURCE_ID);
    imageProxy = sub_0200A534(charResource);
    offset = NNS_G2dGetImageLocation(imageProxy, NNS_G2D_VRAM_TYPE_2DMAIN);

    DC_FlushRange(buf, POKEMON_SPRITE_WHOLE_SIZE_BYTES);
    GX_LoadOBJ(buf, offset, POKEMON_SPRITE_WHOLE_SIZE_BYTES);

    Heap_FreeToHeap(buf);

    buf = sub_02013660(sprite->archive, sprite->palette, param0->unk_1C6);
    plttResource = SpriteResourceCollection_Find(param0->unk_194[SPRITE_RESOURCE_PALETTE], POKEMON_PREVIEW_RESOURCE_ID);
    paletteProxy = sub_0200A72C(plttResource, imageProxy);
    offset = NNS_G2dGetImagePaletteLocation(paletteProxy, NNS_G2D_VRAM_TYPE_2DMAIN);

    DC_FlushRange(buf, 32);
    GX_LoadOBJPltt(buf, offset, 32);

    Heap_FreeToHeap(buf);
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
