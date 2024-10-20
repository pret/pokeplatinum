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

typedef struct {
    BgConfig *unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
    u8 unk_09;
    u16 unk_0A_0 : 15;
    u16 unk_0A_15 : 1;
    void *unk_0C;
} Window;

typedef struct {
    GXDispMode unk_00;
    GXBGMode unk_04;
    GXBGMode unk_08;
    GXBG0As unk_0C;
} UnkStruct_ov84_0223BA5C;

BgConfig *sub_02018340(u32 param0);
u32 sub_02018364(BgConfig *param0);
void sub_02018368(const UnkStruct_ov84_0223BA5C *param0);
void sub_020183A0(const UnkStruct_ov84_0223BA5C *param0, u8 param1);
void sub_020183C4(BgConfig *param0, u8 param1, const BgTemplate *param2, u8 param3);
void sub_02018898(BgConfig *param0, u8 param1, u8 param2, u8 param3);
void sub_02019044(BgConfig *param0, u8 param1);
void BGL_SetPriority(u8 param0, u8 param1);
void sub_02019120(u8 param0, u8 param1);
void sub_02019184(BgConfig *param0, u8 param1, u8 param2, int param3);
int sub_020192EC(BgConfig *param0, u32 param1);
int sub_020192F8(BgConfig *param0, u32 param1);
void sub_02019348(BgConfig *param0, u8 param1, const MtxFx22 *param2, int param3, int param4);
void sub_02019410(const void *param0, void *param1, u32 param2);
void sub_02019448(BgConfig *param0, u8 param1);
void sub_02019460(BgConfig *param0, u8 param1, const void *param2, u32 param3, u32 param4);
void sub_02019574(BgConfig *param0, u8 param1, const void *param2, u32 param3);
void sub_0201958C(BgConfig *param0, u8 param1, const void *param2, u32 param3, u32 param4);
void sub_02019690(u8 param0, u32 param1, u32 param2, u32 param3);
void sub_020196C0(BgConfig *param0, u32 param1, u32 param2, u32 param3, u32 param4);
void sub_0201972C(u8 param0, void *param1, u16 param2, u16 param3);
void sub_0201975C(u8 param0, u16 param1);
void sub_020198C0(BgConfig *param0, u8 param1, const void *param2, u8 param3, u8 param4, u8 param5, u8 param6);
void sub_020198E8(BgConfig *param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, const void *param6, u8 param7, u8 param8, u8 param9, u8 param10);
void sub_02019964(BgConfig *param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, const void *param6, u8 param7, u8 param8, u8 param9, u8 param10);
void sub_02019CB8(BgConfig *param0, u8 param1, u16 param2, u8 param3, u8 param4, u8 param5, u8 param6, u8 param7);
void sub_02019E2C(BgConfig *param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, u8 param6);
void sub_02019EBC(BgConfig *param0, u8 param1);
void sub_02019EE0(BgConfig *param0, u8 param1, u16 param2);
void sub_02019F04(BgConfig *param0, u8 param1, u16 param2);
void *sub_02019F28(u8 param0);
void sub_02019F80(const u8 *param0, u32 param1, u8 *param2, u8 param3);
void *sub_02019FC0(const u8 *param0, u32 param1, u8 param2, u32 param3);
void *sub_02019FE4(BgConfig *param0, u8 param1);
int sub_02019FF0(BgConfig *param0, u8 param1);
u16 sub_02019FFC(BgConfig *param0, u8 param1);
u8 sub_0201A008(BgConfig *param0, u8 param1);
void sub_0201A1E4(const Bitmap *param0, const Bitmap *param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6, u16 param7, u16 param8);
void sub_0201A424(const Bitmap *param0, const Bitmap *param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6, u16 param7, u16 param8);
void sub_0201A60C(const Bitmap *param0, u16 param1, u16 param2, u16 param3, u16 param4, u8 param5);
void sub_0201A6D0(const Bitmap *param0, u16 param1, u16 param2, u16 param3, u16 param4, u8 param5);
Window *sub_0201A778(u32 param0, u8 param1);
void Window_Init(Window *param0);
u8 BGL_WindowAdded(Window *param0);
void BGL_AddWindow(BgConfig *param0, Window *param1, u8 param2, u8 param3, u8 param4, u8 param5, u8 param6, u8 param7, u16 param8);
void BGL_AddFramelessWindow(BgConfig *param0, Window *param1, u8 param2, u8 param3, u16 param4, u8 param5);
void sub_0201A8D4(BgConfig *param0, Window *param1, const WindowTemplate *param2);
void BGL_DeleteWindow(Window *param0);
void sub_0201A928(Window *param0, u8 param1);
void sub_0201A954(Window *param0);
void sub_0201A9A4(Window *param0);
void sub_0201A9F4(Window *param0);
void sub_0201AA10(Window *param0, u32 param1, u32 param2);
void sub_0201AA3C(Window *param0);
void sub_0201ACCC(Window *param0);
void sub_0201ACF4(Window *param0);
void sub_0201AD10(Window *param0);
void BGL_FillWindow(Window *param0, u8 param1);
void sub_0201ADDC(Window *param0, void *param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6, u16 param7, u16 param8, u16 param9);
void sub_0201AE08(Window *param0, void *param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6, u16 param7, u16 param8, u16 param9, u16 param10);
void BGL_WindowColor(Window *param0, u8 param1, u16 param2, u16 param3, u16 param4, u16 param5);
void sub_0201AED0(Window *param0, const u8 *param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6);
void sub_0201C04C(Window *param0, u8 param1, u8 param2, u8 param3);
BgConfig *sub_0201C28C(Window *param0);
u8 sub_0201C290(Window *param0);
u8 sub_0201C294(Window *param0);
u8 sub_0201C298(Window *param0);
u8 sub_0201C29C(Window *param0);
u8 sub_0201C2A0(Window *param0);
u16 sub_0201C2A4(Window *param0);
void sub_0201C2AC(Window *param0, u8 param1);
void sub_0201C2B0(Window *param0, u8 param1);
void sub_0201C2B4(Window *param0, u8 param1);
void sub_0201C2B8(BgConfig *param0);
void sub_0201C3C0(BgConfig *param0, u8 param1);
void sub_0201C63C(BgConfig *param0, u8 param1, u8 param2, int param3);
void sub_0201C660(BgConfig *param0, u8 param1, u8 param2, u16 param3);
void sub_0201C6A8(BgConfig *param0, u8 param1, u8 param2, fx32 param3);
void sub_0201C718(BgConfig *param0, u8 param1, u8 param2, int param3);
u8 sub_0201C784(BgConfig *param0, u8 param1, u16 param2, u16 param3, u16 *param4);

#endif // POKEPLATINUM_BG_WINDOW_H
