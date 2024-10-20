#ifndef POKEPLATINUM_BG_WINDOW_H
#define POKEPLATINUM_BG_WINDOW_H

#include <nitro/fx/fx.h>
#include <nitro/gx.h>

enum BGLFrame {
    BGL_FRAME_MAIN_0 = 0,
    BGL_FRAME_MAIN_1,
    BGL_FRAME_MAIN_2,
    BGL_FRAME_MAIN_3,
    BGL_FRAME_SUB_0,
    BGL_FRAME_SUB_1,
    BGL_FRAME_SUB_2,
    BGL_FRAME_SUB_3,
};

enum BGLScreenSize {
    SCREEN_SIZE_128x128 = 0,
    SCREEN_SIZE_256x256,
    SCREEN_SIZE_256x512,
    SCREEN_SIZE_512x256,
    SCREEN_SIZE_512x512,
    SCREEN_SIZE_1024x1024,
};

typedef struct Bitmap {
    const u8 *pixels;
    u16 width;
    u16 height;
} Bitmap;

typedef struct BgTemplate {
    u32 x;
    u32 y;
    u32 bufferSize;
    u32 baseTile;
    u8 screenSize;
    u8 colorMode;
    u8 screenBase;
    u8 charBase;
    u8 bgExtPltt;
    u8 priority;
    u8 areaOver;
    u8 dummy;
    BOOL mosaic;
} BgTemplate;

typedef struct Background {
    void *tilemapBuffer;
    u32 bufferSize;
    u32 baseTile;

    int xOffset;
    int yOffset;

    u8 type;
    u8 screenSize;
    u8 colorMode;
    u8 tileSize;

    u16 rotation;

    fx32 xScale;
    fx32 yScale;
    int xCenter;
    int yCenter;
} Background;

typedef struct BgConfig {
    u32 heapID;
    u16 scrollScheduled;
    u16 bufferTransferScheduled;
    Background bgs[8];
} BgConfig;

typedef struct WindowTemplate {
    u8 bgLayer;
    u8 tilemapLeft;
    u8 tilemapTop;
    u8 width;
    u8 height;
    u8 palette;
    u16 baseTile;
} WindowTemplate;

typedef struct Window {
    BgConfig *bgConfig;
    u8 bgLayer;
    u8 tilemapLeft;
    u8 tilemapTop;
    u8 width;
    u8 height;
    u8 palette;
    u16 baseTile : 15;
    u16 colorMode : 1;
    void *pixels;
} Window;

typedef struct GraphicsModes {
    GXDispMode displayMode;
    GXBGMode mainBgMode;
    GXBGMode subBgMode;
    GXBG0As bg0As2DOr3D;
} GraphicsModes;

BgConfig *BgConfig_New(u32 param0);
u32 BgConfig_GetHeapID(BgConfig *param0);
void SetAllGraphicsModes(const GraphicsModes *param0);
void SetScreenGraphicsModes(const GraphicsModes *param0, u8 param1);
void Bg_InitFromTemplate(BgConfig *param0, u8 param1, const BgTemplate *param2, u8 param3);
void Bg_SetControlParam(BgConfig *param0, u8 param1, u8 param2, u8 param3);
void Bg_FreeTilemapBuffer(BgConfig *param0, u8 param1);
void Bg_SetPriority(u8 param0, u8 param1);
void Bg_ToggleLayer(u8 param0, u8 param1);
void Bg_SetOffset(BgConfig *param0, u8 param1, u8 param2, int param3);
int Bg_GetXOffset(BgConfig *param0, u32 param1);
int Bg_GetYOffset(BgConfig *param0, u32 param1);
void Bg_SetAffineParams(BgConfig *param0, u8 param1, const MtxFx22 *param2, int param3, int param4);
void Bg_CopyTilemapBufferToVRAM(BgConfig *param0, u8 param1);
void Bg_CopyTilemapBufferRangeToVRAM(BgConfig *param0, u8 param1, const void *param2, u32 param3, u32 param4);
void Bg_LoadTilemapBuffer(BgConfig *param0, u8 param1, const void *param2, u32 param3);
void Bg_LoadTiles(BgConfig *param0, u8 param1, const void *param2, u32 param3, u32 param4);
void Bg_ClearTilesRange(u8 param0, u32 param1, u32 param2, u32 param3);
void Bg_FillTilesRange(BgConfig *param0, u32 param1, u32 param2, u32 param3, u32 param4);
void Bg_LoadPalette(u8 param0, void *param1, u16 param2, u16 param3);
void Bg_MaskPalette(u8 param0, u16 param1);
void Bg_LoadToTilemapRect(BgConfig *param0, u8 param1, const void *param2, u8 param3, u8 param4, u8 param5, u8 param6);
void Bg_CopyToTilemapRect(BgConfig *param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, const void *param6, u8 param7, u8 param8, u8 param9, u8 param10);
void Bg_CopyRectToTilemapRect(BgConfig *param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, const void *param6, u8 param7, u8 param8, u8 param9, u8 param10);
void Bg_FillTilemapRect(BgConfig *param0, u8 param1, u16 param2, u8 param3, u8 param4, u8 param5, u8 param6, u8 param7);
void Bg_ChangeTilemapRectPalette(BgConfig *param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, u8 param6);
void Bg_ClearTilemap(BgConfig *param0, u8 param1);
void Bg_FillTilemap(BgConfig *param0, u8 param1, u16 param2);
void Bg_ScheduleFillTilemap(BgConfig *param0, u8 param1, u16 param2);
void *Bg_GetCharPtr(u8 param0);
void *Bg_GetTilemapBuffer(BgConfig *param0, u8 param1);
int Bg_GetXOffset2(BgConfig *param0, u8 param1);
u16 Bg_GetRotation(BgConfig *param0, u8 param1);
u8 Bg_GetPriority(BgConfig *param0, u8 param1);
void Bitmap_BlitRect4bpp(const Bitmap *param0, const Bitmap *param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6, u16 param7, u16 param8);
void Bitmap_BlitRect8bpp(const Bitmap *param0, const Bitmap *param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6, u16 param7, u16 param8);
void Bitmap_FillRect4bpp(const Bitmap *param0, u16 param1, u16 param2, u16 param3, u16 param4, u8 param5);
void Bitmap_FillRect8bpp(const Bitmap *param0, u16 param1, u16 param2, u16 param3, u16 param4, u8 param5);
Window *Window_New(u32 param0, u8 param1);
void Window_Init(Window *param0);
u8 Window_IsInUse(Window *param0);
void Window_Add(BgConfig *param0, Window *param1, u8 param2, u8 param3, u8 param4, u8 param5, u8 param6, u8 param7, u16 param8);
void Window_AddToTopLeftCorner(BgConfig *param0, Window *param1, u8 param2, u8 param3, u16 param4, u8 param5);
void Window_AddFromTemplate(BgConfig *param0, Window *param1, const WindowTemplate *param2);
void Window_Remove(Window *param0);
void Windows_Delete(Window *param0, u8 param1);
void Window_CopyToVRAM(Window *param0);
void Window_ScheduleCopyToVRAM(Window *param0);
void Window_PutToTilemap(Window *param0);
void Window_PutRectToTilemap(Window *param0, u32 param1, u32 param2);
void Window_ClearTilemap(Window *param0);
void Window_LoadTiles(Window *param0);
void Window_ClearAndCopyToVRAM(Window *param0);
void Window_ClearAndScheduleCopyToVRAM(Window *param0);
void Window_FillTilemap(Window *param0, u8 param1);
void Window_BlitBitmapRect(Window *param0, void *param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6, u16 param7, u16 param8, u16 param9);
void Window_BlitBitmapRectWithTransparency(Window *param0, void *param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6, u16 param7, u16 param8, u16 param9, u16 param10);
void Window_FillRectWithColor(Window *param0, u8 param1, u16 param2, u16 param3, u16 param4, u16 param5);
void Window_CopyGlyph(Window *param0, const u8 *param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6);
void Window_Scroll(Window *param0, u8 param1, u8 param2, u8 param3);
BgConfig *Window_GetBgConfig(Window *param0);
u8 Window_GetBgLayer(Window *param0);
u8 Window_GetWidth(Window *param0);
u8 Window_GetHeight(Window *param0);
u8 Window_GetXPos(Window *param0);
u8 Window_GetYPos(Window *param0);
u16 Window_GetBaseTile(Window *param0);
void Window_SetXPos(Window *param0, u8 param1);
void Window_SetYPos(Window *param0, u8 param1);
void Window_SetPalette(Window *param0, u8 param1);
void Bg_RunScheduledUpdates(BgConfig *param0);
void Bg_ScheduleTilemapTransfer(BgConfig *param0, u8 param1);
void Bg_ScheduleScroll(BgConfig *param0, u8 param1, u8 param2, int param3);
void Bg_ScheduleAffineRotation(BgConfig *param0, u8 param1, u8 param2, u16 param3);
void Bg_ScheduleAffineScale(BgConfig *param0, u8 param1, u8 param2, fx32 param3);
void Bg_ScheduleAffineRotationCenter(BgConfig *param0, u8 param1, u8 param2, int param3);
u8 Bg_DoesPixelAtXYMatchVal(BgConfig *param0, u8 param1, u16 param2, u16 param3, u16 *param4);

#endif // POKEPLATINUM_BG_WINDOW_H
