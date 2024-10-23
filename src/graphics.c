#include "graphics.h"

#include <nitro.h>
#include <string.h>

#include "bg_window.h"
#include "heap.h"
#include "narc.h"

static u32 LoadTilesToBgLayer(void *ncgrBuffer, BgConfig *bgConfig, u32 bgLayer, u32 offset, u32 size);
static void LoadTilemapToBgLayer(void *nscrBuffer, BgConfig *bgConfig, u32 bgLayer, u32 offset, u32 size);
static u32 LoadObjectTiles(void *ncgrBuffer, enum DSScreen display, u32 offset, u32 size);
static void LoadPaletteWithSrcOffset(void *nclrBuffer, enum PaletteLoadLocation paletteType, u32 srcOffset, u32 offset, u32 size);
static void LoadPartialPalette(void *nclrBuffer, NNS_G2D_VRAM_TYPE vramType, u32 baseAddr, NNSG2dImagePaletteProxy *paletteProxy);
static u32 LoadImageMapping(void *ncgrBuffer, enum ImageMappingLayout layout, u32 size, NNS_G2D_VRAM_TYPE vramType, u32 baseAddr, NNSG2dImageProxy *imageProxy);
static void LoadImageMappingAndSetVramMode(void *ncgrBuffer, enum ImageMappingLayout layout, u32 size, NNS_G2D_VRAM_TYPE vramType, u32 baseAddr, NNSG2dImageProxy *imageProxy);
static void *GetCharacterData(void *ncgrBuffer, NNSG2dCharacterData **outCharData);
static void *GetScreenData(void *nscrBuffer, NNSG2dScreenData **outScreenData);
static void *GetPaletteData(void *nclrBuffer, NNSG2dPaletteData **outPaletteData);
static void *GetCellBank(void *ncerBuffer, NNSG2dCellDataBank **outCellData);
static void *GetAnimBank(void *nanrBuffer, NNSG2dAnimBankData **outAnimBank);

u32 sub_02006E3C(u32 param0, u32 param1, BgConfig *param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7)
{
    void *v0 = sub_02006FE8(param0, param1, param6, param7, 0);
    return LoadTilesToBgLayer(v0, param2, param3, param4, param5);
}

void sub_02006E60(u32 param0, u32 param1, BgConfig *param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7)
{
    void *v0 = sub_02006FE8(param0, param1, param6, param7, 1);
    LoadTilemapToBgLayer(v0, param2, param3, param4, param5);
}

void sub_02006E84(u32 param0, u32 param1, int param2, u32 param3, u32 param4, u32 param5)
{
    sub_02006E9C(param0, param1, param2, 0, param3, param4, param5);
}

void sub_02006E9C(u32 param0, u32 param1, int param2, u32 param3, u32 param4, u32 param5, u32 param6)
{
    void *v0 = sub_02006FE8(param0, param1, 0, param6, 1);
    LoadPaletteWithSrcOffset(v0, param2, param3, param4, param5);
}

u32 sub_02006EC0(u32 param0, u32 param1, int param2, u32 param3, u32 param4, BOOL param5, u32 param6)
{
    void *v0 = sub_02006FE8(param0, param1, param5, param6, 1);
    return LoadObjectTiles(v0, param2, param3, param4);
}

void sub_02006EE0(u32 param0, u32 param1, NNS_G2D_VRAM_TYPE param2, u32 param3, u32 param4, NNSG2dImagePaletteProxy *param5)
{
    void *v0 = sub_02006FE8(param0, param1, 0, param4, 1);
    LoadPartialPalette(v0, param2, param3, param5);
}

u32 sub_02006F00(u32 param0, u32 param1, BOOL param2, int param3, u32 param4, NNS_G2D_VRAM_TYPE param5, u32 param6, u32 param7, NNSG2dImageProxy *param8)
{
    void *v0 = sub_02006FE8(param0, param1, param2, param7, 1);
    return LoadImageMapping(v0, param3, param4, param5, param6, param8);
}

void sub_02006F28(u32 param0, u32 param1, BOOL param2, int param3, u32 param4, NNS_G2D_VRAM_TYPE param5, u32 param6, u32 param7, NNSG2dImageProxy *param8)
{
    void *v0 = sub_02006FE8(param0, param1, param2, param7, 1);
    LoadImageMappingAndSetVramMode(v0, param3, param4, param5, param6, param8);
}

void *sub_02006F50(u32 param0, u32 param1, BOOL param2, NNSG2dCharacterData **param3, u32 param4)
{
    void *v0 = sub_02006FE8(param0, param1, param2, param4, 0);

    return GetCharacterData(v0, param3);
}

void *sub_02006F6C(u32 param0, u32 param1, BOOL param2, NNSG2dScreenData **param3, u32 param4)
{
    void *v0 = sub_02006FE8(param0, param1, param2, param4, 0);
    return GetScreenData(v0, param3);
}

void *sub_02006F88(u32 param0, u32 param1, NNSG2dPaletteData **param2, u32 param3)
{
    void *v0 = sub_02006FE8(param0, param1, 0, param3, 0);
    return GetPaletteData(v0, param2);
}

void *sub_02006FA0(u32 param0, u32 param1, BOOL param2, NNSG2dCellDataBank **param3, u32 param4)
{
    void *v0;

    v0 = sub_02006FE8(param0, param1, param2, param4, 0);
    return GetCellBank(v0, param3);
}

void *sub_02006FBC(u32 param0, u32 param1, BOOL param2, NNSG2dAnimBankData **param3, u32 param4)
{
    void *v0 = sub_02006FE8(param0, param1, param2, param4, 0);
    return GetAnimBank(v0, param3);
}

void *sub_02006FD8(u32 param0, u32 param1, u32 param2)
{
    return sub_02006FE8(param0, param1, 1, param2, 0);
}

void *sub_02006FE8(u32 param0, u32 param1, BOOL param2, u32 param3, int param4)
{
    void *v0;

    if (param2 || (param4 == 1)) {
        v0 = Heap_AllocFromHeapAtEnd(param3, NARC_GetMemberSizeByIndexPair(param0, param1));
    } else {
        v0 = Heap_AllocFromHeap(param3, NARC_GetMemberSizeByIndexPair(param0, param1));
    }

    if (v0 != NULL) {
        NARC_ReadWholeMemberByIndexPair(v0, param0, param1);

        if (param2) {
            void *v1;

            if (param4 == 0) {
                v1 = Heap_AllocFromHeap(param3, MI_GetUncompressedSize(v0));
            } else {
                v1 = Heap_AllocFromHeapAtEnd(param3, MI_GetUncompressedSize(v0));
            }

            if (v1) {
                MI_UncompressLZ8(v0, v1);
                Heap_FreeToHeap(v0);
            }

            v0 = v1;
        }
    }

    return v0;
}

void *sub_02007068(u32 narcIndex, u32 fileIndex, BOOL param2, u32 heapID, int param4, u32 *fileSize)
{
    void *v0;

    *fileSize = NARC_GetMemberSizeByIndexPair(narcIndex, fileIndex);

    if (param2 || (param4 == 1)) {
        v0 = Heap_AllocFromHeapAtEnd(heapID, *fileSize);
    } else {
        v0 = Heap_AllocFromHeap(heapID, *fileSize);
    }

    if (v0 != NULL) {
        NARC_ReadWholeMemberByIndexPair(v0, narcIndex, fileIndex);

        if (param2) {
            void *v1;

            *fileSize = MI_GetUncompressedSize(v0);

            if (param4 == 0) {
                v1 = Heap_AllocFromHeap(heapID, *fileSize);
            } else {
                v1 = Heap_AllocFromHeapAtEnd(heapID, *fileSize);
            }

            if (v1) {
                MI_UncompressLZ8(v0, v1);
                Heap_FreeToHeap(v0);
            }

            v0 = v1;
        }
    }

    return v0;
}

u32 sub_020070E8(NARC *param0, u32 param1, BgConfig *param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7)
{
    void *v0 = sub_0200723C(param0, param1, param6, param7, 0);
    return LoadTilesToBgLayer(v0, param2, param3, param4, param5);
}

void sub_0200710C(NARC *param0, u32 param1, BgConfig *param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7)
{
    void *v0 = sub_0200723C(param0, param1, param6, param7, 1);
    LoadTilemapToBgLayer(v0, param2, param3, param4, param5);
}

void sub_02007130(NARC *param0, u32 param1, int param2, u32 param3, u32 param4, u32 param5)
{
    sub_02007148(param0, param1, param2, 0, param3, param4, param5);
}

void sub_02007148(NARC *param0, u32 param1, int param2, u32 param3, u32 param4, u32 param5, u32 param6)
{
    void *v0 = sub_0200723C(param0, param1, 0, param6, 1);
    LoadPaletteWithSrcOffset(v0, param2, param3, param4, param5);
}

void sub_0200716C(NARC *param0, u32 param1, NNS_G2D_VRAM_TYPE param2, u32 param3, u32 param4, NNSG2dImagePaletteProxy *param5)
{
    void *v0 = sub_0200723C(param0, param1, 0, param4, 1);
    LoadPartialPalette(v0, param2, param3, param5);
}

u32 sub_0200718C(NARC *param0, u32 param1, BOOL param2, int param3, u32 param4, NNS_G2D_VRAM_TYPE param5, u32 param6, u32 param7, NNSG2dImageProxy *param8)
{
    void *v0 = sub_0200723C(param0, param1, param2, param7, 1);
    return LoadImageMapping(v0, param3, param4, param5, param6, param8);
}

void *sub_020071B4(NARC *param0, u32 param1, BOOL param2, NNSG2dCharacterData **param3, u32 param4)
{
    void *v0 = sub_0200723C(param0, param1, param2, param4, 0);
    return GetCharacterData(v0, param3);
}

void *sub_020071D0(NARC *param0, u32 param1, BOOL param2, NNSG2dScreenData **param3, u32 param4)
{
    void *v0 = sub_0200723C(param0, param1, param2, param4, 0);
    return GetScreenData(v0, param3);
}

void *sub_020071EC(NARC *param0, u32 param1, NNSG2dPaletteData **param2, u32 param3)
{
    void *v0 = sub_0200723C(param0, param1, 0, param3, 0);
    return GetPaletteData(v0, param2);
}

void *sub_02007204(NARC *param0, u32 param1, BOOL param2, NNSG2dCellDataBank **param3, u32 param4)
{
    void *v0;

    v0 = sub_0200723C(param0, param1, param2, param4, 0);
    return GetCellBank(v0, param3);
}

void *sub_02007220(NARC *param0, u32 param1, BOOL param2, NNSG2dAnimBankData **param3, u32 param4)
{
    void *v0 = sub_0200723C(param0, param1, param2, param4, 0);
    return GetAnimBank(v0, param3);
}

void *sub_0200723C(NARC *narc, u32 NarcFileIndex, BOOL param2, u32 param3, int param4)
{
    u32 v0;

    return sub_02007250(narc, NarcFileIndex, param2, param3, param4, &v0);
}

void *sub_02007250(NARC *narc, u32 NarcFileIndex, BOOL param2, u32 param3, int param4, u32 *param5)
{
    void *v0;

    *param5 = NARC_GetMemberSize(narc, NarcFileIndex);

    if (param2 || (param4 == 1)) {
        v0 = Heap_AllocFromHeapAtEnd(param3, *param5);
    } else {
        v0 = Heap_AllocFromHeap(param3, *param5);
    }

    if (v0 != NULL) {
        NARC_ReadWholeMember(narc, NarcFileIndex, v0);

        if (param2) {
            void *v1;

            *param5 = MI_GetUncompressedSize(v0);

            if (param4 == 0) {
                v1 = Heap_AllocFromHeap(param3, *param5);
            } else {
                v1 = Heap_AllocFromHeapAtEnd(param3, *param5);
            }

            if (v1) {
                MI_UncompressLZ8(v0, v1);
                Heap_FreeToHeap(v0);
            }

            v0 = v1;
        }
    }

    return v0;
}

static u32 LoadTilesToBgLayer(void *ncgrBuffer, BgConfig *bgConfig, u32 bgLayer, u32 offset, u32 size)
{
    if (ncgrBuffer != NULL) {
        NNSG2dCharacterData *tiles;

        if (NNS_G2dGetUnpackedBGCharacterData(ncgrBuffer, &tiles)) {
            if (size == 0) {
                size = tiles->szByte;
            }

            Bg_LoadTiles(bgConfig, bgLayer, tiles->pRawData, size, offset);
        }

        Heap_FreeToHeap(ncgrBuffer);
    }

    return size;
}

static void LoadTilemapToBgLayer(void *nscrBuffer, BgConfig *bgConfig, u32 bgLayer, u32 offset, u32 size)
{
    if (nscrBuffer != NULL) {
        NNSG2dScreenData *tilemap;

        if (NNS_G2dGetUnpackedScreenData(nscrBuffer, &tilemap)) {
            if (size == 0) {
                size = tilemap->szByte;
            }

            if (Bg_GetTilemapBuffer(bgConfig, bgLayer) != NULL) {
                Bg_LoadTilemapBuffer(bgConfig, bgLayer, tilemap->rawData, size);
            }

            Bg_CopyTilemapBufferRangeToVRAM(bgConfig, bgLayer, tilemap->rawData, size, offset);
        }

        Heap_FreeToHeap(nscrBuffer);
    }
}

static void (*const sDisplayObjectLoadFunc[])(const void *, u32, u32) = {
    GX_LoadOBJ,
    GXS_LoadOBJ
};

static u32 LoadObjectTiles(void *ncgrBuffer, enum DSScreen display, u32 offset, u32 size)
{

    if (ncgrBuffer != NULL) {
        NNSG2dCharacterData *v1;

        if (NNS_G2dGetUnpackedCharacterData(ncgrBuffer, &v1)) {
            if (size == 0) {
                size = v1->szByte;
            }

            DC_FlushRange(v1->pRawData, size);
            sDisplayObjectLoadFunc[display](v1->pRawData, offset, size);
        }

        Heap_FreeToHeap(ncgrBuffer);
    }

    return size;
}

static void (*const sPaletteLoadFuncs[])(const void *, u32, u32) = {
    GX_LoadBGPltt,
    GX_LoadOBJPltt,
    GX_LoadBGExtPltt,
    GX_LoadOBJExtPltt,
    GXS_LoadBGPltt,
    GXS_LoadOBJPltt,
    GXS_LoadBGExtPltt,
    GXS_LoadOBJExtPltt
};

static void LoadPaletteWithSrcOffset(void *nclrBuffer, enum PaletteLoadLocation loadLocation, u32 srcOffset, u32 offset, u32 size)
{
    if (nclrBuffer != NULL) {
        NNSG2dPaletteData *palette;

        if (NNS_G2dGetUnpackedPaletteData(nclrBuffer, &palette)) {
            palette->pRawData = (void *)((u32)palette->pRawData + srcOffset);

            if (size == 0) {
                size = palette->szByte - srcOffset;
            }

            DC_FlushRange(palette->pRawData, size);

            switch (loadLocation) {
            case PAL_LOAD_MAIN_BGEXT:
                GX_BeginLoadBGExtPltt();
                sPaletteLoadFuncs[loadLocation](palette->pRawData, offset, size);
                GX_EndLoadBGExtPltt();
                break;

            case PAL_LOAD_SUB_BGEXT:
                GXS_BeginLoadBGExtPltt();
                sPaletteLoadFuncs[loadLocation](palette->pRawData, offset, size);
                GXS_EndLoadBGExtPltt();
                break;

            case PAL_LOAD_MAIN_OBJEXT:
                GX_BeginLoadOBJExtPltt();
                sPaletteLoadFuncs[loadLocation](palette->pRawData, offset, size);
                GX_EndLoadOBJExtPltt();
                break;

            case PAL_LOAD_SUB_OBJEXT:
                GXS_BeginLoadOBJExtPltt();
                sPaletteLoadFuncs[loadLocation](palette->pRawData, offset, size);
                GXS_EndLoadOBJExtPltt();
                break;

            default:
                sPaletteLoadFuncs[loadLocation](palette->pRawData, offset, size);
                break;
            }
        }

        Heap_FreeToHeap(nclrBuffer);
    }
}

static void LoadPartialPalette(void *nclrBuffer, NNS_G2D_VRAM_TYPE vramType, u32 baseAddr, NNSG2dImagePaletteProxy *paletteProxy)
{
    if (nclrBuffer != NULL) {
        NNSG2dPaletteData *palette;
        NNSG2dPaletteCompressInfo *compPalette;
        BOOL extended = NNS_G2dGetUnpackedPaletteCompressInfo(nclrBuffer, &compPalette);

        if (NNS_G2dGetUnpackedPaletteData(nclrBuffer, &palette)) {
            if (extended) {
                NNS_G2dLoadPaletteEx(palette, compPalette, baseAddr, vramType, paletteProxy);
            } else {
                NNS_G2dLoadPalette(palette, baseAddr, vramType, paletteProxy);
            }
        }

        Heap_FreeToHeap(nclrBuffer);
    }
}

static void (*const sImageLayoutLoadFuncs[])(const NNSG2dCharacterData *, u32, NNS_G2D_VRAM_TYPE, NNSG2dImageProxy *) = {
    NNS_G2dLoadImage1DMapping,
    NNS_G2dLoadImage2DMapping
};

static u32 LoadImageMapping(void *ncgrBuffer, enum ImageMappingLayout layout, u32 size, NNS_G2D_VRAM_TYPE vramType, u32 baseAddr, NNSG2dImageProxy *imageProxy)
{
    u32 result = 0;

    if (ncgrBuffer != NULL) {
        NNSG2dCharacterData *tiles;

        if (NNS_G2dGetUnpackedCharacterData(ncgrBuffer, &tiles)) {
            if (size) {
                tiles->szByte = size;
            }

            sImageLayoutLoadFuncs[layout](tiles, baseAddr, vramType, imageProxy);
            result = tiles->szByte;
        }

        Heap_FreeToHeap(ncgrBuffer);
    }

    return result;
}

static void (*const sImageLayoutLoadFuncs2[])(const NNSG2dCharacterData *, u32, NNS_G2D_VRAM_TYPE, NNSG2dImageProxy *) = {
    NNS_G2dLoadImage1DMapping,
    NNS_G2dLoadImage2DMapping
};

static void LoadImageMappingAndSetVramMode(void *ncgrBuffer, enum ImageMappingLayout layout, u32 size, NNS_G2D_VRAM_TYPE vramType, u32 baseAddr, NNSG2dImageProxy *imageProxy)
{
    if (ncgrBuffer != NULL) {
        NNSG2dCharacterData *tiles;

        if (NNS_G2dGetUnpackedCharacterData(ncgrBuffer, &tiles)) {
            if (size) {
                tiles->szByte = size;
            }

            switch (vramType) {
            case NNS_G2D_VRAM_TYPE_2DMAIN:
                tiles->mapingType = GX_GetOBJVRamModeChar();
                break;
            case NNS_G2D_VRAM_TYPE_2DSUB:
                tiles->mapingType = GXS_GetOBJVRamModeChar();
                break;
            }

            sImageLayoutLoadFuncs2[layout](tiles, baseAddr, vramType, imageProxy);
        }

        Heap_FreeToHeap(ncgrBuffer);
    }
}

static void *GetCharacterData(void *ncgrBuffer, NNSG2dCharacterData **outCharData)
{
    if (ncgrBuffer != NULL) {
        if (NNS_G2dGetUnpackedBGCharacterData(ncgrBuffer, outCharData) == 0) {
            Heap_FreeToHeap(ncgrBuffer);
            return NULL;
        }
    }

    return ncgrBuffer;
}

static void *GetScreenData(void *nscrBuffer, NNSG2dScreenData **outScreenData)
{
    if (nscrBuffer != NULL) {
        if (NNS_G2dGetUnpackedScreenData(nscrBuffer, outScreenData) == 0) {
            Heap_FreeToHeap(nscrBuffer);
            return NULL;
        }
    }

    return nscrBuffer;
}

static void *GetPaletteData(void *nclrBuffer, NNSG2dPaletteData **outPaletteData)
{
    if (nclrBuffer != NULL) {
        if (NNS_G2dGetUnpackedPaletteData(nclrBuffer, outPaletteData) == 0) {
            Heap_FreeToHeap(nclrBuffer);
            return NULL;
        }
    }

    return nclrBuffer;
}

static void *GetCellBank(void *ncerBuffer, NNSG2dCellDataBank **outCellData)
{
    if (ncerBuffer != NULL) {
        if (NNS_G2dGetUnpackedCellBank(ncerBuffer, outCellData) == 0) {
            Heap_FreeToHeap(ncerBuffer);
            return NULL;
        }
    }

    return ncerBuffer;
}

static void *GetAnimBank(void *nanrBuffer, NNSG2dAnimBankData **outAnimBank)
{
    if (nanrBuffer != NULL) {
        if (NNS_G2dGetUnpackedAnimBank(nanrBuffer, outAnimBank) == 0) {
            Heap_FreeToHeap(nanrBuffer);
            return NULL;
        }
    }

    return nanrBuffer;
}
