#include "bg_window.h"

#include <nitro.h>
#include <string.h>

#include "constants/screen.h"

#include "gx_layers.h"
#include "heap.h"
#include "math_util.h"

static u8 ConvertToGxBgScreenSize(u8 bgScreenSize, u8 bgType);
static void GetBgScreenTileDimensions(u8 bgScreenSize, u8 *outXTiles, u8 *outYTiles);
static void UpdateBgOffsetWithVal(Background *bg, enum BgOffsetUpdateOp op, int val);
static void ResetBgAffineTransforms(BgConfig *bgConfig, u8 bgLayer);
static void CopyOrDecompressData(const void *src, void *dest, u32 size);
static void LoadBgVRAMScr(u8 bgLayer, void *src, u32 offset, u32 size);
static void LoadBgVRAMChar(u8 bgLayer, void *src, u32 offset, u32 size);
static u16 CalcTilemapIndexFromCoords(u8 x, u8 y, u8 bgScreenSize);
static void CopyToBgTilemapRectText(Background *bg, u8 destX, u8 destY, u8 destWidth, u8 destHeight, u16 *src, u8 srcX, u8 srcY, u8 srcWidth, u8 srcHeight, u8 mode);
static void CopyToBgTilemapRectAffine(Background *bg, u8 destX, u8 destY, u8 destWidth, u8 destHeight, u8 *src, u8 srcX, u8 srcY, u8 srcWidth, u8 srcHeight, u8 mode);
static void FillBgTilemapRectText(Background *bg, u16 fillVal, u8 x, u8 y, u8 width, u8 height, u8 palette);
static void FillBgTilemapRectAffine(Background *bg, u8 fillVal, u8 x, u8 y, u8 width, u8 height);
static void Copy4bppTo8bpp(const u8 *src, u32 size, u8 *dest, u8 palette);
static void *Convert4bppTo8bpp(const u8 *src, u32 size, u8 palette, u32 heapID);
static void CopyWindowToVramText(Window *window);
static void ScheduleCopyWindowToVramText(Window *window);
static void CopyWindowToVramAffine(Window *window);
static void ScheduleCopyWindowToVramAffine(Window *window);
static void ClearAndCopyWindowToVramText(Window *window);
static void ClearAndScheduleCopyWindowToVramText(Window *window);
static void ClearAndCopyWindowToVramAffine(Window *window);
static void ClearAndScheduleCopyWindowToVramAffine(Window *window);
static void ScrollWindow4bpp(Window *window, u8 direction, u8 distance, u8 fillVal);
static void ScrollWindow8bpp(Window *window, u8 direction, u8 distance, u8 fillVal);
static void ApplyFlipFlagsToTile(BgConfig *bgConfig, u8 flags, u8 *tile);
static void PutWindowToTilemapText(Window *window);
static void PutWindowToTilemapAffine(Window *window);
static void ClearWindowTilemapText(Window *window);
static void ClearWindowTilemapAffine(Window *window);
static void UpdateBgRotationWithVal(Background *bg, enum BgAffineUpdateOp op, u16 val);
static void UpdateBgAffineScaleWithVal(Background *bg, enum BgAffineUpdateOp op, fx32 val);
static void UpdateBgAffineRotationCenterWithVal(Background *bg, enum BgAffineUpdateOp op, int val);
static void RunScheduledScrolls(BgConfig *bgConfig);
static void RunScheduledTilemapTransfers(BgConfig *bgConfig);

BgConfig *BgConfig_New(u32 heapID)
{
    BgConfig *bgConfig = Heap_AllocFromHeap(heapID, sizeof(BgConfig));

    memset(bgConfig, 0, sizeof(BgConfig));

    bgConfig->heapID = heapID;
    bgConfig->scrollScheduled = 0;
    bgConfig->bufferTransferScheduled = 0;

    return bgConfig;
}

u32 BgConfig_GetHeapID(BgConfig *bgConfig)
{
    return bgConfig->heapID;
}

void SetAllGraphicsModes(const GraphicsModes *graphicsModes)
{
    GX_SetGraphicsMode(graphicsModes->displayMode, graphicsModes->mainBgMode, graphicsModes->bg0As2DOr3D);
    GXS_SetGraphicsMode(graphicsModes->subBgMode);

    GX_SetBGScrOffset(GX_BGSCROFFSET_0x00000);
    GX_SetBGCharOffset(GX_BGCHAROFFSET_0x00000);

    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();
}

void SetScreenGraphicsModes(const GraphicsModes *graphicsModes, u8 screen)
{
    if (screen == DS_SCREEN_MAIN) {
        GX_SetGraphicsMode(graphicsModes->displayMode, graphicsModes->mainBgMode, graphicsModes->bg0As2DOr3D);
        GXLayers_DisableEngineALayers();
    } else {
        GXS_SetGraphicsMode(graphicsModes->subBgMode);
        GXLayers_DisableEngineBLayers();
    }
}

void Bg_InitFromTemplate(BgConfig *bgConfig, u8 bgLayer, const BgTemplate *bgTemplate, u8 bgType)
{
    u8 screenSize = ConvertToGxBgScreenSize(bgTemplate->screenSize, bgType);

    switch (bgLayer) {
    case BG_LAYER_MAIN_0:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);
        G2_SetBG0Control(screenSize, bgTemplate->colorMode, bgTemplate->screenBase, bgTemplate->charBase, bgTemplate->bgExtPltt);
        G2_SetBG0Priority(bgTemplate->priority);
        G2_BG0Mosaic(bgTemplate->mosaic);
        break;

    case BG_LAYER_MAIN_1:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);
        G2_SetBG1Control(screenSize, bgTemplate->colorMode, bgTemplate->screenBase, bgTemplate->charBase, bgTemplate->bgExtPltt);
        G2_SetBG1Priority(bgTemplate->priority);
        G2_BG1Mosaic(bgTemplate->mosaic);
        break;

    case BG_LAYER_MAIN_2:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, TRUE);

        switch (bgType) {
        default:
        case BG_TYPE_STATIC:
            G2_SetBG2ControlText(screenSize, bgTemplate->colorMode, bgTemplate->screenBase, bgTemplate->charBase);
            break;
        case BG_TYPE_AFFINE:
            G2_SetBG2ControlAffine(screenSize, bgTemplate->areaOver, bgTemplate->screenBase, bgTemplate->charBase);
            break;
        case BG_TYPE_STATIC_WITH_AFFINE:
            G2_SetBG2Control256x16Pltt(screenSize, bgTemplate->areaOver, bgTemplate->screenBase, bgTemplate->charBase);
            break;
        }

        G2_SetBG2Priority(bgTemplate->priority);
        G2_BG2Mosaic(bgTemplate->mosaic);
        break;

    case BG_LAYER_MAIN_3:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, TRUE);

        switch (bgType) {
        default:
        case BG_TYPE_STATIC:
            G2_SetBG3ControlText(screenSize, bgTemplate->colorMode, bgTemplate->screenBase, bgTemplate->charBase);
            break;
        case BG_TYPE_AFFINE:
            G2_SetBG3ControlAffine(screenSize, bgTemplate->areaOver, bgTemplate->screenBase, bgTemplate->charBase);
            break;
        case BG_TYPE_STATIC_WITH_AFFINE:
            G2_SetBG3Control256x16Pltt(screenSize, bgTemplate->areaOver, bgTemplate->screenBase, bgTemplate->charBase);
            break;
        }

        G2_SetBG3Priority(bgTemplate->priority);
        G2_BG3Mosaic(bgTemplate->mosaic);
        break;

    case BG_LAYER_SUB_0:
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
        G2S_SetBG0Control(screenSize, bgTemplate->colorMode, bgTemplate->screenBase, bgTemplate->charBase, bgTemplate->bgExtPltt);
        G2S_SetBG0Priority(bgTemplate->priority);
        G2S_BG0Mosaic(bgTemplate->mosaic);
        break;

    case BG_LAYER_SUB_1:
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
        G2S_SetBG1Control(screenSize, bgTemplate->colorMode, bgTemplate->screenBase, bgTemplate->charBase, bgTemplate->bgExtPltt);
        G2S_SetBG1Priority(bgTemplate->priority);
        G2S_BG1Mosaic(bgTemplate->mosaic);
        break;

    case BG_LAYER_SUB_2:
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);

        switch (bgType) {
        default:
        case BG_TYPE_STATIC:
            G2S_SetBG2ControlText(screenSize, bgTemplate->colorMode, bgTemplate->screenBase, bgTemplate->charBase);
            break;
        case BG_TYPE_AFFINE:
            G2S_SetBG2ControlAffine(screenSize, bgTemplate->areaOver, bgTemplate->screenBase, bgTemplate->charBase);
            break;
        case BG_TYPE_STATIC_WITH_AFFINE:
            G2S_SetBG2Control256x16Pltt(screenSize, bgTemplate->areaOver, bgTemplate->screenBase, bgTemplate->charBase);
            break;
        }

        G2S_SetBG2Priority(bgTemplate->priority);
        G2S_BG2Mosaic(bgTemplate->mosaic);
        break;

    case BG_LAYER_SUB_3:
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);

        switch (bgType) {
        default:
        case BG_TYPE_STATIC:
            G2S_SetBG3ControlText(screenSize, bgTemplate->colorMode, bgTemplate->screenBase, bgTemplate->charBase);
            break;
        case BG_TYPE_AFFINE:
            G2S_SetBG3ControlAffine(screenSize, bgTemplate->areaOver, bgTemplate->screenBase, bgTemplate->charBase);
            break;
        case BG_TYPE_STATIC_WITH_AFFINE:
            G2S_SetBG3Control256x16Pltt(screenSize, bgTemplate->areaOver, bgTemplate->screenBase, bgTemplate->charBase);
            break;
        }

        G2S_SetBG3Priority(bgTemplate->priority);
        G2S_BG3Mosaic(bgTemplate->mosaic);
        break;
    }

    bgConfig->bgs[bgLayer].rotation = 0;
    bgConfig->bgs[bgLayer].xScale = FX32_ONE;
    bgConfig->bgs[bgLayer].yScale = FX32_ONE;
    bgConfig->bgs[bgLayer].xCenter = 0;
    bgConfig->bgs[bgLayer].yCenter = 0;

    if (bgTemplate->bufferSize) {
        bgConfig->bgs[bgLayer].tilemapBuffer = Heap_AllocFromHeap(bgConfig->heapID, bgTemplate->bufferSize);

        MI_CpuClear16(bgConfig->bgs[bgLayer].tilemapBuffer, bgTemplate->bufferSize);

        bgConfig->bgs[bgLayer].bufferSize = bgTemplate->bufferSize;
        bgConfig->bgs[bgLayer].baseTile = bgTemplate->baseTile;
    } else {
        bgConfig->bgs[bgLayer].tilemapBuffer = NULL;
        bgConfig->bgs[bgLayer].bufferSize = 0;
        bgConfig->bgs[bgLayer].baseTile = 0;
    }

    bgConfig->bgs[bgLayer].screenSize = bgTemplate->screenSize;
    bgConfig->bgs[bgLayer].type = bgType;
    bgConfig->bgs[bgLayer].colorMode = bgTemplate->colorMode;

    if (bgType == BG_TYPE_STATIC && bgTemplate->colorMode == GX_BG_COLORMODE_16) {
        bgConfig->bgs[bgLayer].tileSize = TILE_SIZE_4BPP;
    } else {
        bgConfig->bgs[bgLayer].tileSize = TILE_SIZE_8BPP;
    }

    Bg_SetOffset(bgConfig, bgLayer, 0, bgTemplate->x);
    Bg_SetOffset(bgConfig, bgLayer, 3, bgTemplate->y);
}

void Bg_SetControlParam(BgConfig *bgConfig, u8 bgLayer, enum BgControlParam bgControlParam, u8 val)
{
    if (bgControlParam == BG_CONTROL_PARAM_COLOR_MODE) {
        bgConfig->bgs[bgLayer].colorMode = val;
    }

    switch (bgLayer) {
    case BG_LAYER_MAIN_0: {
        GXBg01Control bgControl = G2_GetBG0Control();

        if (bgControlParam == BG_CONTROL_PARAM_SCREEN_BASE) {
            bgControl.screenBase = val;
        } else if (bgControlParam == BG_CONTROL_PARAM_CHAR_BASE) {
            bgControl.charBase = val;
        }

        G2_SetBG0Control(bgControl.screenSize, bgConfig->bgs[bgLayer].colorMode, bgControl.screenBase, bgControl.charBase, bgControl.bgExtPltt);
    } break;

    case BG_LAYER_MAIN_1: {
        GXBg01Control bgControl = G2_GetBG1Control();

        if (bgControlParam == BG_CONTROL_PARAM_SCREEN_BASE) {
            bgControl.screenBase = val;
        } else if (bgControlParam == BG_CONTROL_PARAM_CHAR_BASE) {
            bgControl.charBase = val;
        }

        G2_SetBG1Control(bgControl.screenSize, bgConfig->bgs[bgLayer].colorMode, bgControl.screenBase, bgControl.charBase, bgControl.bgExtPltt);
    } break;

    case BG_LAYER_MAIN_2:
        switch (bgConfig->bgs[bgLayer].type) {
        default:
        case BG_TYPE_STATIC: {
            GXBg23ControlText bgControl = G2_GetBG2ControlText();

            if (bgControlParam == BG_CONTROL_PARAM_SCREEN_BASE) {
                bgControl.screenBase = val;
            } else if (bgControlParam == BG_CONTROL_PARAM_CHAR_BASE) {
                bgControl.charBase = val;
            }

            G2_SetBG2ControlText(bgControl.screenSize, bgConfig->bgs[bgLayer].colorMode, bgControl.screenBase, bgControl.charBase);
        } break;
        case BG_TYPE_AFFINE: {
            GXBg23ControlAffine bgControl = G2_GetBG2ControlAffine();

            if (bgControlParam == BG_CONTROL_PARAM_SCREEN_BASE) {
                bgControl.screenBase = val;
            } else if (bgControlParam == BG_CONTROL_PARAM_CHAR_BASE) {
                bgControl.charBase = val;
            }

            G2_SetBG2ControlAffine(bgControl.screenSize, bgControl.areaOver, bgControl.screenBase, bgControl.charBase);
        } break;
        case BG_TYPE_STATIC_WITH_AFFINE: {
            GXBg23Control256x16Pltt bgControl = G2_GetBG2Control256x16Pltt();

            if (bgControlParam == BG_CONTROL_PARAM_SCREEN_BASE) {
                bgControl.screenBase = val;
            } else if (bgControlParam == BG_CONTROL_PARAM_CHAR_BASE) {
                bgControl.charBase = val;
            }

            G2_SetBG2Control256x16Pltt(bgControl.screenSize, bgControl.areaOver, bgControl.screenBase, bgControl.charBase);
        } break;
        }

        break;

    case BG_LAYER_MAIN_3:
        switch (bgConfig->bgs[bgLayer].type) {
        default:
        case BG_TYPE_STATIC: {
            GXBg23ControlText bgControl = G2_GetBG3ControlText();

            if (bgControlParam == BG_CONTROL_PARAM_SCREEN_BASE) {
                bgControl.screenBase = val;
            } else if (bgControlParam == BG_CONTROL_PARAM_CHAR_BASE) {
                bgControl.charBase = val;
            }

            G2_SetBG3ControlText(bgControl.screenSize, bgConfig->bgs[bgLayer].colorMode, bgControl.screenBase, bgControl.charBase);
        } break;
        case BG_TYPE_AFFINE: {
            GXBg23ControlAffine bgControl = G2_GetBG3ControlAffine();

            if (bgControlParam == BG_CONTROL_PARAM_SCREEN_BASE) {
                bgControl.screenBase = val;
            } else if (bgControlParam == BG_CONTROL_PARAM_CHAR_BASE) {
                bgControl.charBase = val;
            }

            G2_SetBG3ControlAffine(bgControl.screenSize, bgControl.areaOver, bgControl.screenBase, bgControl.charBase);
        } break;
        case BG_TYPE_STATIC_WITH_AFFINE: {
            GXBg23Control256x16Pltt bgControl = G2_GetBG3Control256x16Pltt();

            if (bgControlParam == BG_CONTROL_PARAM_SCREEN_BASE) {
                bgControl.screenBase = val;
            } else if (bgControlParam == BG_CONTROL_PARAM_CHAR_BASE) {
                bgControl.charBase = val;
            }

            G2_SetBG3Control256x16Pltt(bgControl.screenSize, bgControl.areaOver, bgControl.screenBase, bgControl.charBase);
        } break;
        }

        break;

    case BG_LAYER_SUB_0: {
        GXBg01Control bgControl = G2S_GetBG0Control();

        if (bgControlParam == BG_CONTROL_PARAM_SCREEN_BASE) {
            bgControl.screenBase = val;
        } else if (bgControlParam == BG_CONTROL_PARAM_CHAR_BASE) {
            bgControl.charBase = val;
        }

        G2S_SetBG0Control(bgControl.screenSize, bgConfig->bgs[bgLayer].colorMode, bgControl.screenBase, bgControl.charBase, bgControl.bgExtPltt);
    } break;

    case BG_LAYER_SUB_1: {
        GXBg01Control bgControl = G2S_GetBG1Control();

        if (bgControlParam == BG_CONTROL_PARAM_SCREEN_BASE) {
            bgControl.screenBase = val;
        } else if (bgControlParam == BG_CONTROL_PARAM_CHAR_BASE) {
            bgControl.charBase = val;
        }

        G2S_SetBG1Control(bgControl.screenSize, bgConfig->bgs[bgLayer].colorMode, bgControl.screenBase, bgControl.charBase, bgControl.bgExtPltt);
    } break;

    case BG_LAYER_SUB_2:
        switch (bgConfig->bgs[bgLayer].type) {
        default:
        case BG_TYPE_STATIC: {
            GXBg23ControlText bgControl = G2S_GetBG2ControlText();

            if (bgControlParam == BG_CONTROL_PARAM_SCREEN_BASE) {
                bgControl.screenBase = val;
            } else if (bgControlParam == BG_CONTROL_PARAM_CHAR_BASE) {
                bgControl.charBase = val;
            }

            G2S_SetBG2ControlText(bgControl.screenSize, bgConfig->bgs[bgLayer].colorMode, bgControl.screenBase, bgControl.charBase);
        } break;
        case BG_TYPE_AFFINE: {
            GXBg23ControlAffine bgControl = G2S_GetBG2ControlAffine();

            if (bgControlParam == BG_CONTROL_PARAM_SCREEN_BASE) {
                bgControl.screenBase = val;
            } else if (bgControlParam == BG_CONTROL_PARAM_CHAR_BASE) {
                bgControl.charBase = val;
            }

            G2S_SetBG2ControlAffine(bgControl.screenSize, bgControl.areaOver, bgControl.screenBase, bgControl.charBase);
        } break;
        case BG_TYPE_STATIC_WITH_AFFINE: {
            GXBg23Control256x16Pltt bgControl = G2S_GetBG2Control256x16Pltt();

            if (bgControlParam == BG_CONTROL_PARAM_SCREEN_BASE) {
                bgControl.screenBase = val;
            } else if (bgControlParam == BG_CONTROL_PARAM_CHAR_BASE) {
                bgControl.charBase = val;
            }

            G2S_SetBG2Control256x16Pltt(bgControl.screenSize, bgControl.areaOver, bgControl.screenBase, bgControl.charBase);
        } break;
        }

        break;

    case BG_LAYER_SUB_3:
        switch (bgConfig->bgs[bgLayer].type) {
        default:
        case BG_TYPE_STATIC: {
            GXBg23ControlText bgControl = G2S_GetBG3ControlText();

            if (bgControlParam == BG_CONTROL_PARAM_SCREEN_BASE) {
                bgControl.screenBase = val;
            } else if (bgControlParam == BG_CONTROL_PARAM_CHAR_BASE) {
                bgControl.charBase = val;
            }

            G2S_SetBG3ControlText(bgControl.screenSize, bgConfig->bgs[bgLayer].colorMode, bgControl.screenBase, bgControl.charBase);
        } break;
        case BG_TYPE_AFFINE: {
            GXBg23ControlAffine bgControl = G2S_GetBG3ControlAffine();

            if (bgControlParam == BG_CONTROL_PARAM_SCREEN_BASE) {
                bgControl.screenBase = val;
            } else if (bgControlParam == BG_CONTROL_PARAM_CHAR_BASE) {
                bgControl.charBase = val;
            }

            G2S_SetBG3ControlAffine(bgControl.screenSize, bgControl.areaOver, bgControl.screenBase, bgControl.charBase);
        } break;
        case BG_TYPE_STATIC_WITH_AFFINE: {
            GXBg23Control256x16Pltt bgControl = G2S_GetBG3Control256x16Pltt();

            if (bgControlParam == BG_CONTROL_PARAM_SCREEN_BASE) {
                bgControl.screenBase = val;
            } else if (bgControlParam == BG_CONTROL_PARAM_CHAR_BASE) {
                bgControl.charBase = val;
            }

            G2S_SetBG3Control256x16Pltt(bgControl.screenSize, bgControl.areaOver, bgControl.screenBase, bgControl.charBase);
        } break;
        }
        break;
    }
}

static u8 ConvertToGxBgScreenSize(u8 bgScreenSize, u8 bgType)
{
    switch (bgType) {
    case BG_TYPE_STATIC:
        if (bgScreenSize == BG_SCREEN_SIZE_256x256) {
            return GX_BG_SCRSIZE_TEXT_256x256;
        }

        if (bgScreenSize == BG_SCREEN_SIZE_256x512) {
            return GX_BG_SCRSIZE_TEXT_256x512;
        }

        if (bgScreenSize == BG_SCREEN_SIZE_512x256) {
            return GX_BG_SCRSIZE_TEXT_512x256;
        }

        if (bgScreenSize == BG_SCREEN_SIZE_512x512) {
            return GX_BG_SCRSIZE_TEXT_512x512;
        }
        break;

    case BG_TYPE_AFFINE:
        if (bgScreenSize == BG_SCREEN_SIZE_128x128) {
            return GX_BG_SCRSIZE_AFFINE_128x128;
        }

        if (bgScreenSize == BG_SCREEN_SIZE_256x256) {
            return GX_BG_SCRSIZE_AFFINE_256x256;
        }

        if (bgScreenSize == BG_SCREEN_SIZE_512x512) {
            return GX_BG_SCRSIZE_AFFINE_512x512;
        }

        if (bgScreenSize == BG_SCREEN_SIZE_1024x1024) {
            return GX_BG_SCRSIZE_AFFINE_1024x1024;
        }
        break;

    case BG_TYPE_STATIC_WITH_AFFINE:
        if (bgScreenSize == BG_SCREEN_SIZE_128x128) {
            return GX_BG_SCRSIZE_256x16PLTT_128x128;
        }

        if (bgScreenSize == BG_SCREEN_SIZE_256x256) {
            return GX_BG_SCRSIZE_256x16PLTT_256x256;
        }

        if (bgScreenSize == BG_SCREEN_SIZE_512x512) {
            return GX_BG_SCRSIZE_256x16PLTT_512x512;
        }

        if (bgScreenSize == BG_SCREEN_SIZE_1024x1024) {
            return GX_BG_SCRSIZE_256x16PLTT_1024x1024;
        }
        break;
    }

    return BG_SCREEN_SIZE_128x128;
}

static void GetBgScreenTileDimensions(u8 bgScreenSize, u8 *outXTiles, u8 *outYTiles)
{
    switch (bgScreenSize) {
    case BG_SCREEN_SIZE_128x128:
        *outXTiles = 16;
        *outYTiles = 16;
        return;

    case BG_SCREEN_SIZE_256x256:
        *outXTiles = 32;
        *outYTiles = 32;
        return;

    case BG_SCREEN_SIZE_256x512:
        *outXTiles = 32;
        *outYTiles = 64;
        return;

    case BG_SCREEN_SIZE_512x256:
        *outXTiles = 64;
        *outYTiles = 32;
        return;

    case BG_SCREEN_SIZE_512x512:
        *outXTiles = 64;
        *outYTiles = 64;
        return;

    case BG_SCREEN_SIZE_1024x1024:
        *outXTiles = 128;
        *outYTiles = 128;
        return;
    }
}

void Bg_FreeTilemapBuffer(BgConfig *bgConfig, u8 bgLayer)
{
    if (bgConfig->bgs[bgLayer].tilemapBuffer == NULL) {
        return;
    }

    Heap_FreeToHeap(bgConfig->bgs[bgLayer].tilemapBuffer);
    bgConfig->bgs[bgLayer].tilemapBuffer = NULL;
}

void Bg_SetPriority(u8 bgLayer, u8 priority)
{
    switch (bgLayer) {
    case BG_LAYER_MAIN_0:
        G2_SetBG0Priority(priority);
        break;

    case BG_LAYER_MAIN_1:
        G2_SetBG1Priority(priority);
        break;

    case BG_LAYER_MAIN_2:
        G2_SetBG2Priority(priority);
        break;

    case BG_LAYER_MAIN_3:
        G2_SetBG3Priority(priority);
        break;

    case BG_LAYER_SUB_0:
        G2S_SetBG0Priority(priority);
        break;

    case BG_LAYER_SUB_1:
        G2S_SetBG1Priority(priority);
        break;

    case BG_LAYER_SUB_2:
        G2S_SetBG2Priority(priority);
        break;

    case BG_LAYER_SUB_3:
        G2S_SetBG3Priority(priority);
        break;
    }
}

void Bg_ToggleLayer(u8 bgLayer, u8 enable)
{
    switch (bgLayer) {
    case BG_LAYER_MAIN_0:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, enable);
        break;

    case BG_LAYER_MAIN_1:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, enable);
        break;

    case BG_LAYER_MAIN_2:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, enable);
        break;

    case BG_LAYER_MAIN_3:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, enable);
        break;

    case BG_LAYER_SUB_0:
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, enable);
        break;

    case BG_LAYER_SUB_1:
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, enable);
        break;

    case BG_LAYER_SUB_2:
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, enable);
        break;

    case BG_LAYER_SUB_3:
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, enable);
        break;
    }
}

void Bg_SetOffset(BgConfig *bgConfig, u8 bgLayer, u8 bgUpdateOffsetOp, int val)
{
    UpdateBgOffsetWithVal(&bgConfig->bgs[bgLayer], bgUpdateOffsetOp, val);

    int hOffset = bgConfig->bgs[bgLayer].xOffset;
    int vOffset = bgConfig->bgs[bgLayer].yOffset;

    switch (bgLayer) {
    case BG_LAYER_MAIN_0:
        G2_SetBG0Offset(hOffset, vOffset);
        return;

    case BG_LAYER_MAIN_1:
        G2_SetBG1Offset(hOffset, vOffset);
        return;

    case BG_LAYER_MAIN_2:
        if (bgConfig->bgs[BG_LAYER_MAIN_2].type == BG_TYPE_STATIC) {
            G2_SetBG2Offset(hOffset, vOffset);
        } else {
            ResetBgAffineTransforms(bgConfig, BG_LAYER_MAIN_2);
        }
        return;

    case BG_LAYER_MAIN_3:
        if (bgConfig->bgs[BG_LAYER_MAIN_3].type == BG_TYPE_STATIC) {
            G2_SetBG3Offset(hOffset, vOffset);
        } else {
            ResetBgAffineTransforms(bgConfig, BG_LAYER_MAIN_3);
        }
        return;

    case BG_LAYER_SUB_0:
        G2S_SetBG0Offset(hOffset, vOffset);
        return;

    case BG_LAYER_SUB_1:
        G2S_SetBG1Offset(hOffset, vOffset);
        return;

    case BG_LAYER_SUB_2:
        if (bgConfig->bgs[BG_LAYER_SUB_2].type == BG_TYPE_STATIC) {
            G2S_SetBG2Offset(hOffset, vOffset);
        } else {
            ResetBgAffineTransforms(bgConfig, BG_LAYER_SUB_2);
        }
        return;

    case BG_LAYER_SUB_3:
        if (bgConfig->bgs[BG_LAYER_SUB_3].type == BG_TYPE_STATIC) {
            G2S_SetBG3Offset(hOffset, vOffset);
        } else {
            ResetBgAffineTransforms(bgConfig, BG_LAYER_SUB_3);
        }
        return;
    }
}

int Bg_GetXOffset(BgConfig *bgConfig, enum BgLayer bgLayer)
{
    return bgConfig->bgs[bgLayer].xOffset;
}

int Bg_GetYOffset(BgConfig *bgConfig, enum BgLayer bgLayer)
{
    return bgConfig->bgs[bgLayer].yOffset;
}

static void UpdateBgOffsetWithVal(Background *bg, enum BgOffsetUpdateOp op, int val)
{
    switch (op) {
    case BG_OFFSET_UPDATE_SET_X:
        bg->xOffset = val;
        break;

    case BG_OFFSET_UPDATE_ADD_X:
        bg->xOffset += val;
        break;

    case BG_OFFSET_UPDATE_SUB_X:
        bg->xOffset -= val;
        break;

    case BG_OFFSET_UPDATE_SET_Y:
        bg->yOffset = val;
        break;

    case BG_OFFSET_UPDATE_ADD_Y:
        bg->yOffset += val;
        break;

    case BG_OFFSET_UPDATE_SUB_Y:
        bg->yOffset -= val;
        break;
    }
}

void Bg_SetAffineParams(BgConfig *bgConfig, u8 bgLayer, const MtxFx22 *mtx, int centerX, int centerY)
{
    switch (bgLayer) {
    case BG_LAYER_MAIN_2:
        G2_SetBG2Affine(mtx, centerX, centerY, bgConfig->bgs[bgLayer].xOffset, bgConfig->bgs[bgLayer].yOffset);
        return;

    case BG_LAYER_MAIN_3:
        G2_SetBG3Affine(mtx, centerX, centerY, bgConfig->bgs[bgLayer].xOffset, bgConfig->bgs[bgLayer].yOffset);
        return;

    case BG_LAYER_SUB_2:
        G2S_SetBG2Affine(mtx, centerX, centerY, bgConfig->bgs[bgLayer].xOffset, bgConfig->bgs[bgLayer].yOffset);
        return;

    case BG_LAYER_SUB_3:
        G2S_SetBG3Affine(mtx, centerX, centerY, bgConfig->bgs[bgLayer].xOffset, bgConfig->bgs[bgLayer].yOffset);
        return;
    }
}

static void ResetBgAffineTransforms(BgConfig *bgConfig, u8 bgLayer)
{
    MtxFx22 mtx;
    CreateAffineTransformationMatrix(&mtx, 0, FX32_ONE, FX32_ONE, AFFINE_MODE_NORMAL);
    Bg_SetAffineParams(bgConfig, bgLayer, &mtx, 0, 0);
}

static void CopyOrDecompressData(const void *src, void *dest, u32 size)
{
    if (size == 0) {
        MI_UncompressLZ8(src, dest);
        return;
    }

    if ((((u32)src % 4) == 0) && (((u32)dest % 4) == 0) && (((u16)size % 4) == 0)) {
        MI_CpuCopy32(src, dest, size);
        return;
    }

    MI_CpuCopy16(src, dest, size);
}

void Bg_CopyTilemapBufferToVRAM(BgConfig *bgConfig, u8 bgLayer)
{
    Bg_CopyTilemapBufferRangeToVRAM(bgConfig,
        bgLayer,
        bgConfig->bgs[bgLayer].tilemapBuffer,
        bgConfig->bgs[bgLayer].bufferSize,
        bgConfig->bgs[bgLayer].baseTile);
}

void Bg_CopyTilemapBufferRangeToVRAM(BgConfig *bgConfig, u8 bgLayer, void *src, u32 size, u32 offset)
{
    if (size == 0) {
        void *buf = bgConfig->bgs[bgLayer].tilemapBuffer;
        if (buf != NULL) {
            CopyOrDecompressData(src, buf, size);
            LoadBgVRAMScr(bgLayer,
                buf,
                bgConfig->bgs[bgLayer].baseTile * 2,
                bgConfig->bgs[bgLayer].bufferSize);

            return;
        }

        u32 decompressedSize = MI_GetUncompressedSize(src);
        void *tmp = Heap_AllocFromHeapAtEnd(bgConfig->heapID, decompressedSize);

        CopyOrDecompressData(src, tmp, size);
        LoadBgVRAMScr(bgLayer, tmp, offset * 2, decompressedSize);
        Heap_FreeToHeap(tmp);

        return;
    }

    LoadBgVRAMScr(bgLayer, src, offset * 2, size);
}

static void LoadBgVRAMScr(u8 bgLayer, void *src, u32 offset, u32 size)
{
    DC_FlushRange(src, size);

    switch (bgLayer) {
    case BG_LAYER_MAIN_0:
        GX_LoadBG0Scr(src, offset, size);
        return;

    case BG_LAYER_MAIN_1:
        GX_LoadBG1Scr(src, offset, size);
        return;

    case BG_LAYER_MAIN_2:
        GX_LoadBG2Scr(src, offset, size);
        return;

    case BG_LAYER_MAIN_3:
        GX_LoadBG3Scr(src, offset, size);
        return;

    case BG_LAYER_SUB_0:
        GXS_LoadBG0Scr(src, offset, size);
        return;

    case BG_LAYER_SUB_1:
        GXS_LoadBG1Scr(src, offset, size);
        return;

    case BG_LAYER_SUB_2:
        GXS_LoadBG2Scr(src, offset, size);
        return;

    case BG_LAYER_SUB_3:
        GXS_LoadBG3Scr(src, offset, size);
        return;
    }
}

void Bg_LoadTilemapBuffer(BgConfig *bgConfig, u8 bgLayer, void *src, u32 size)
{
    CopyOrDecompressData(src, bgConfig->bgs[bgLayer].tilemapBuffer, size);
}

void Bg_LoadTiles(BgConfig *bgConfig, u8 bgLayer, void *src, u32 size, u32 tileStart)
{
    if (bgConfig->bgs[bgLayer].colorMode == GX_BG_COLORMODE_16) {
        Bg_LoadTilesToVRAM(bgConfig, bgLayer, src, size, tileStart * TILE_SIZE_4BPP);
    } else {
        Bg_LoadTilesToVRAM(bgConfig, bgLayer, src, size, tileStart * TILE_SIZE_8BPP);
    }
}

void Bg_LoadTilesToVRAM(BgConfig *bgConfig, u8 bgLayer, void *src, u32 size, u32 offset)
{
    if (size == 0) {
        u32 decompressedSize = MI_GetUncompressedSize(src);
        void *tmp = Heap_AllocFromHeapAtEnd(bgConfig->heapID, decompressedSize);

        CopyOrDecompressData(src, tmp, size);
        LoadBgVRAMChar(bgLayer, tmp, offset, decompressedSize);
        Heap_FreeToHeap(tmp);

        return;
    }

    LoadBgVRAMChar(bgLayer, (void *)src, offset, size);
}

static void LoadBgVRAMChar(u8 bgLayer, void *src, u32 offset, u32 size)
{
    DC_FlushRange(src, size);

    switch (bgLayer) {
    case BG_LAYER_MAIN_0:
        GX_LoadBG0Char(src, offset, size);
        return;

    case BG_LAYER_MAIN_1:
        GX_LoadBG1Char(src, offset, size);
        return;

    case BG_LAYER_MAIN_2:
        GX_LoadBG2Char(src, offset, size);
        return;

    case BG_LAYER_MAIN_3:
        GX_LoadBG3Char(src, offset, size);
        return;

    case BG_LAYER_SUB_0:
        GXS_LoadBG0Char(src, offset, size);
        return;

    case BG_LAYER_SUB_1:
        GXS_LoadBG1Char(src, offset, size);
        return;

    case BG_LAYER_SUB_2:
        GXS_LoadBG2Char(src, offset, size);
        return;

    case BG_LAYER_SUB_3:
        GXS_LoadBG3Char(src, offset, size);
        return;
    }
}

void Bg_ClearTilesRange(u8 bgLayer, u32 size, u32 offset, u32 heapID)
{
    u32 *buf = (u32 *)Heap_AllocFromHeapAtEnd(heapID, size);

    memset(buf, 0, size);

    LoadBgVRAMChar(bgLayer, buf, offset, size);
    Heap_FreeToHeapExplicit(heapID, buf);
}

void Bg_FillTilesRange(BgConfig *bgConfig, u32 bgLayer, u32 fillVal, u32 numTiles, u32 offset)
{
    u32 *buf;
    u32 size = numTiles * bgConfig->bgs[bgLayer].tileSize;
    buf = Heap_AllocFromHeapAtEnd(bgConfig->heapID, size);

    if (bgConfig->bgs[bgLayer].tileSize == TILE_SIZE_4BPP) {
        fillVal = (fillVal << 12) | (fillVal << 8) | (fillVal << 4) | fillVal;
        fillVal |= (fillVal << 16);
    } else {
        fillVal = (fillVal << 24) | (fillVal << 16) | (fillVal << 8) | fillVal;
    }

    MI_CpuFillFast(buf, fillVal, size);
    LoadBgVRAMChar(bgLayer, buf, offset * bgConfig->bgs[bgLayer].tileSize, size);
    Heap_FreeToHeap(buf);
}

void Bg_LoadPalette(u8 bgLayer, void *src, u16 size, u16 offset)
{
    DC_FlushRange(src, size);

    if (bgLayer < BG_LAYER_SUB_0) {
        GX_LoadBGPltt(src, offset, size);
    } else {
        GXS_LoadBGPltt(src, offset, size);
    }
}

void Bg_MaskPalette(u8 bgLayer, u16 mask)
{
    Bg_LoadPalette(bgLayer, &mask, sizeof(u16), 0);
}

static u16 CalcTilemapIndexFromCoords(u8 x, u8 y, u8 bgScreenSize)
{
    u16 ret;

    switch (bgScreenSize) {
    case BG_SCREEN_SIZE_128x128:
        ret = y * 16 + x;
        break;

    case BG_SCREEN_SIZE_256x256:
    case BG_SCREEN_SIZE_256x512:
        ret = y * 32 + x;
        break;

    case BG_SCREEN_SIZE_512x256:
        ret = ((x >> 5) * 32 + y) * 32 + (x & 0x1F);
        break;

    case BG_SCREEN_SIZE_512x512:
        ret = (x >> 5) + (y >> 5) * 2;
        ret *= 1024;
        ret += (y & 0x1F) * 32 + (x & 0x1F);
        break;

    case BG_SCREEN_SIZE_1024x1024:
        ret = 0;
    }

    return ret;
}

static u16 CalcTilemapIndexFromCoordsWidthHeight(u8 x, u8 y, u8 width, u8 height)
{
    u8 coordType = 0;
    u16 tilemapIndex = 0;
    s16 adjustedWidth = width - 32;
    s16 adjustedHeight = height - 32;

    if (x / 32) {
        coordType += 1;
    }

    if (y / 32) {
        coordType += 2;
    }

    switch (coordType) {
    case 0:
        if (adjustedWidth >= 0) {
            tilemapIndex += y * 32 + x;
        } else {
            tilemapIndex += y * width + x;
        }
        break;

    case 1:
        if (adjustedHeight >= 0) {
            tilemapIndex += 1024;
        } else {
            tilemapIndex += 32 * height;
        }

        tilemapIndex += y * adjustedWidth + (x & 0x1F);
        break;

    case 2:
        tilemapIndex += width * 32;

        if (adjustedWidth >= 0) {
            tilemapIndex += (y & 0x1F) * 32 + x;
        } else {
            tilemapIndex += (y & 0x1F) * width + x;
        }
        break;

    case 3:
        tilemapIndex += width * 32 + adjustedHeight * 32;
        tilemapIndex += (y & 0x1F) * adjustedWidth + (x & 0x1F);
        break;
    }

    return tilemapIndex;
}

void Bg_LoadToTilemapRect(BgConfig *bgConfig, u8 bgLayer, const void *src, u8 destX, u8 destY, u8 destWidth, u8 destHeight)
{
    Bg_CopyToTilemapRect(bgConfig, bgLayer, destX, destY, destWidth, destHeight, src, 0, 0, destWidth, destHeight);
}

void Bg_CopyToTilemapRect(BgConfig *bgConfig, u8 bgLayer, u8 destX, u8 destY, u8 destWidth, u8 destHeight, const void *src, u8 srcX, u8 srcY, u8 srcWidth, u8 srcHeight)
{
    if (bgConfig->bgs[bgLayer].type != BG_TYPE_AFFINE) {
        CopyToBgTilemapRectText(&bgConfig->bgs[bgLayer], destX, destY, destWidth, destHeight, (u16 *)src, srcX, srcY, srcWidth, srcHeight, TILEMAP_COPY_SRC_FLAT);
    } else {
        CopyToBgTilemapRectAffine(&bgConfig->bgs[bgLayer], destX, destY, destWidth, destHeight, (u8 *)src, srcX, srcY, srcWidth, srcHeight, TILEMAP_COPY_SRC_FLAT);
    }
}

void Bg_CopyRectToTilemapRect(BgConfig *bgConfig, u8 bgLayer, u8 destX, u8 destY, u8 destWidth, u8 destHeight, const void *src, u8 srcX, u8 srcY, u8 srcWidth, u8 srcHeight)
{
    if (bgConfig->bgs[bgLayer].type != BG_TYPE_AFFINE) {
        CopyToBgTilemapRectText(&bgConfig->bgs[bgLayer], destX, destY, destWidth, destHeight, (u16 *)src, srcX, srcY, srcWidth, srcHeight, TILEMAP_COPY_SRC_RECT);
    } else {
        CopyToBgTilemapRectAffine(&bgConfig->bgs[bgLayer], destX, destY, destWidth, destHeight, (u8 *)src, srcX, srcY, srcWidth, srcHeight, TILEMAP_COPY_SRC_RECT);
    }
}

static void CopyToBgTilemapRectText(Background *bg, u8 destX, u8 destY, u8 destWidth, u8 destHeight, u16 *src, u8 srcX, u8 srcY, u8 srcWidth, u8 srcHeight, u8 mode)
{
    u16 *dest = bg->tilemapBuffer;
    if (dest == NULL) {
        return;
    }

    u8 widthTiles, heightTiles;
    GetBgScreenTileDimensions(bg->screenSize, &widthTiles, &heightTiles);

    u8 i, j;
    if (mode == TILEMAP_COPY_SRC_FLAT) {
        for (i = 0; i < destHeight; i++) {
            if (destY + i >= heightTiles || srcY + i >= srcHeight) {
                break;
            }

            for (j = 0; j < destWidth; j++) {
                if (destX + j >= widthTiles || srcX + j >= srcWidth) {
                    break;
                }

                dest[CalcTilemapIndexFromCoords(destX + j, destY + i, bg->screenSize)] = src[(srcY + i) * srcWidth + srcX + j];
            }
        }
    } else {
        for (i = 0; i < destHeight; i++) {
            if (destY + i >= heightTiles || srcY + i >= srcHeight) {
                break;
            }

            for (j = 0; j < destWidth; j++) {
                if (destX + j >= widthTiles || srcX + j >= srcWidth) {
                    break;
                }

                dest[CalcTilemapIndexFromCoords(destX + j, destY + i, bg->screenSize)] = src[CalcTilemapIndexFromCoordsWidthHeight(srcX + j, srcY + i, srcWidth, srcHeight)];
            }
        }
    }
}

static void CopyToBgTilemapRectAffine(Background *bg, u8 destX, u8 destY, u8 destWidth, u8 destHeight, u8 *src, u8 srcX, u8 srcY, u8 srcWidth, u8 srcHeight, u8 mode)
{
    u8 *dest = bg->tilemapBuffer;
    if (dest == NULL) {
        return;
    }

    u8 widthTiles, heightTiles;
    GetBgScreenTileDimensions(bg->screenSize, &widthTiles, &heightTiles);

    u8 i, j;
    if (mode == TILEMAP_COPY_SRC_FLAT) {
        for (i = 0; i < destHeight; i++) {
            if (destY + i >= heightTiles || srcY + i >= srcHeight) {
                break;
            }

            for (j = 0; j < destWidth; j++) {
                if (destX + j >= widthTiles || srcX + j >= srcWidth) {
                    break;
                }

                dest[CalcTilemapIndexFromCoords(destX + j, destY + i, bg->screenSize)] = src[(srcY + i) * srcWidth + srcX + j];
            }
        }
    } else {
        for (i = 0; i < destHeight; i++) {
            if (destY + i >= heightTiles || srcY + i >= srcHeight) {
                break;
            }

            for (j = 0; j < destWidth; j++) {
                if (destX + j >= widthTiles || srcX + j >= srcWidth) {
                    break;
                }

                dest[CalcTilemapIndexFromCoords(destX + j, destY + i, bg->screenSize)] = src[CalcTilemapIndexFromCoordsWidthHeight(srcX + j, srcY + i, srcWidth, srcHeight)];
            }
        }
    }
}

void Bg_FillTilemapRect(BgConfig *bgConfig, u8 bgLayer, u16 fillVal, u8 x, u8 y, u8 width, u8 height, u8 palette)
{
    if (bgConfig->bgs[bgLayer].type != BG_TYPE_AFFINE) {
        FillBgTilemapRectText(&bgConfig->bgs[bgLayer], fillVal, x, y, width, height, palette);
    } else {
        FillBgTilemapRectAffine(&bgConfig->bgs[bgLayer], fillVal, x, y, width, height);
    }
}

static void FillBgTilemapRectText(Background *bg, u16 fillVal, u8 x, u8 y, u8 width, u8 height, u8 palette)
{
    u16 *dest = bg->tilemapBuffer;
    if (dest == NULL) {
        return;
    }

    u8 widthTiles, heightTiles;
    GetBgScreenTileDimensions(bg->screenSize, &widthTiles, &heightTiles);

    u8 i, j;
    for (i = y; i < y + height; i++) {
        if (i >= heightTiles) {
            break;
        }

        for (j = x; j < x + width; j++) {
            if (j >= widthTiles) {
                break;
            }

            u16 idx = CalcTilemapIndexFromCoords(j, i, bg->screenSize);
            if (palette == TILEMAP_FILL_VAL_INCLUDES_PALETTE) {
                dest[idx] = fillVal;
            } else if (palette == TILEMAP_FILL_VAL_KEEP_PALETTE) {
                dest[idx] = (dest[idx] & 0xF000) + fillVal;
            } else {
                dest[idx] = (palette << 12) + fillVal;
            }
        }
    }
}

static void FillBgTilemapRectAffine(Background *bg, u8 fillVal, u8 x, u8 y, u8 width, u8 height)
{
    u8 *dest = bg->tilemapBuffer;
    if (dest == NULL) {
        return;
    }

    u8 widthTiles, heightTiles;
    GetBgScreenTileDimensions(bg->screenSize, &widthTiles, &heightTiles);

    u8 i, j;
    for (i = y; i < y + height; i++) {
        if (i >= heightTiles) {
            break;
        }

        for (j = x; j < x + width; j++) {
            if (j >= widthTiles) {
                break;
            }

            dest[CalcTilemapIndexFromCoords(j, i, bg->screenSize)] = fillVal;
        }
    }
}

void Bg_ChangeTilemapRectPalette(BgConfig *bgConfig, u8 bgLayer, u8 x, u8 y, u8 width, u8 height, u8 palette)
{
    u16 *dest = bgConfig->bgs[bgLayer].tilemapBuffer;
    if (dest == NULL) {
        return;
    }

    u8 widthTiles, heightTiles;
    GetBgScreenTileDimensions(bgConfig->bgs[bgLayer].screenSize, &widthTiles, &heightTiles);

    u8 i, j;
    for (i = y; i < y + height; i++) {
        if (i >= heightTiles) {
            break;
        }

        for (j = x; j < x + width; j++) {
            if (j >= widthTiles) {
                break;
            }

            u16 idx = CalcTilemapIndexFromCoords(j, i, bgConfig->bgs[bgLayer].screenSize);
            dest[idx] = (dest[idx] & 0xFFF) | (palette << 12);
        }
    }
}

void Bg_ClearTilemap(BgConfig *bgConfig, u8 bgLayer)
{
    if (bgConfig->bgs[bgLayer].tilemapBuffer == NULL) {
        return;
    }

    MI_CpuClear16(bgConfig->bgs[bgLayer].tilemapBuffer, bgConfig->bgs[bgLayer].bufferSize);
    Bg_CopyTilemapBufferToVRAM(bgConfig, bgLayer);
}

void Bg_FillTilemap(BgConfig *bgConfig, u8 bgLayer, u16 fillVal)
{
    if (bgConfig->bgs[bgLayer].tilemapBuffer == NULL) {
        return;
    }

    MI_CpuFill16(bgConfig->bgs[bgLayer].tilemapBuffer, fillVal, bgConfig->bgs[bgLayer].bufferSize);
    Bg_CopyTilemapBufferToVRAM(bgConfig, bgLayer);
}

void Bg_ScheduleFillTilemap(BgConfig *bgConfig, u8 bgLayer, u16 fillVal)
{
    if (bgConfig->bgs[bgLayer].tilemapBuffer == NULL) {
        return;
    }

    MI_CpuFill16(bgConfig->bgs[bgLayer].tilemapBuffer, fillVal, bgConfig->bgs[bgLayer].bufferSize);
    Bg_ScheduleTilemapTransfer(bgConfig, bgLayer);
}

void *Bg_GetCharPtr(u8 bgLayer)
{
    switch (bgLayer) {
    case BG_LAYER_MAIN_0:
        return G2_GetBG0CharPtr();

    case BG_LAYER_MAIN_1:
        return G2_GetBG1CharPtr();

    case BG_LAYER_MAIN_2:
        return G2_GetBG2CharPtr();

    case BG_LAYER_MAIN_3:
        return G2_GetBG3CharPtr();

    case BG_LAYER_SUB_0:
        return G2S_GetBG0CharPtr();

    case BG_LAYER_SUB_1:
        return G2S_GetBG1CharPtr();

    case BG_LAYER_SUB_2:
        return G2S_GetBG2CharPtr();

    case BG_LAYER_SUB_3:
        return G2S_GetBG3CharPtr();
    }

    return NULL;
}

static void Copy4bppTo8bpp(const u8 *src, u32 size, u8 *dest, u8 palette)
{
    palette <<= 4;

    for (u32 i = 0; i < size; i++) {
        dest[i * 2] = src[i] & 0xf;
        if (dest[i * 2] != 0) {
            dest[i * 2] += palette;
        }

        dest[i * 2 + 1] = (src[i] >> 4) & 0xf;
        if (dest[i * 2 + 1] != 0) {
            dest[i * 2 + 1] += palette;
        }
    }
}

static void *Convert4bppTo8bpp(const u8 *src, u32 size, u8 palette, u32 heapID)
{
    void *dest = Heap_AllocFromHeap(heapID, size * 2);
    Copy4bppTo8bpp(src, size, dest, palette);

    return dest;
}

void *Bg_GetTilemapBuffer(BgConfig *bgConfig, u8 bgLayer)
{
    return bgConfig->bgs[bgLayer].tilemapBuffer;
}

int Bg_GetXOffset2(BgConfig *bgConfig, u8 bgLayer)
{
    return bgConfig->bgs[bgLayer].xOffset;
}

u16 Bg_GetRotation(BgConfig *bgConfig, u8 bgLayer)
{
    return bgConfig->bgs[bgLayer].rotation;
}

u8 Bg_GetPriority(BgConfig *bgConfig, u8 bgLayer)
{
    switch (bgLayer) {
    case BG_LAYER_MAIN_0: {
        GXBg01Control control = G2_GetBG0Control();
        return control.priority;
    }

    case BG_LAYER_MAIN_1: {
        GXBg01Control control = G2_GetBG1Control();
        return control.priority;
    }

    case BG_LAYER_MAIN_2:
        switch (bgConfig->bgs[bgLayer].type) {
        default:
        case BG_TYPE_STATIC: {
            GXBg23ControlText control = G2_GetBG2ControlText();
            return control.priority;
        }
        case BG_TYPE_AFFINE: {
            GXBg23ControlAffine control = G2_GetBG2ControlAffine();
            return control.priority;
        }
        case BG_TYPE_STATIC_WITH_AFFINE: {
            GXBg23Control256x16Pltt control = G2_GetBG2Control256x16Pltt();
            return control.priority;
        }
        }

    case BG_LAYER_MAIN_3:
        switch (bgConfig->bgs[bgLayer].type) {
        default:
        case BG_TYPE_STATIC: {
            GXBg23ControlText control = G2_GetBG3ControlText();
            return control.priority;
        }
        case BG_TYPE_AFFINE: {
            GXBg23ControlAffine control = G2_GetBG3ControlAffine();
            return control.priority;
        }
        case BG_TYPE_STATIC_WITH_AFFINE: {
            GXBg23Control256x16Pltt control = G2_GetBG3Control256x16Pltt();
            return control.priority;
        }
        }

    case BG_LAYER_SUB_0: {
        GXBg01Control control = G2S_GetBG0Control();
        return control.priority;
    }

    case BG_LAYER_SUB_1: {
        GXBg01Control control = G2S_GetBG1Control();
        return control.priority;
    }

    case BG_LAYER_SUB_2:
        switch (bgConfig->bgs[bgLayer].type) {
        default:
        case BG_TYPE_STATIC: {
            GXBg23ControlText control = G2S_GetBG2ControlText();
            return control.priority;
        }
        case BG_TYPE_AFFINE: {
            GXBg23ControlAffine control = G2S_GetBG2ControlAffine();
            return control.priority;
        }
        case BG_TYPE_STATIC_WITH_AFFINE: {
            GXBg23Control256x16Pltt control = G2S_GetBG2Control256x16Pltt();
            return control.priority;
        }
        }

    case BG_LAYER_SUB_3:
        switch (bgConfig->bgs[bgLayer].type) {
        default:
        case BG_TYPE_STATIC: {
            GXBg23ControlText control = G2S_GetBG3ControlText();
            return control.priority;
        }
        case BG_TYPE_AFFINE: {
            GXBg23ControlAffine control = G2S_GetBG3ControlAffine();
            return control.priority;
        }
        case BG_TYPE_STATIC_WITH_AFFINE: {
            GXBg23Control256x16Pltt control = G2S_GetBG3Control256x16Pltt();
            return control.priority;
        }
        }
    }

    return 0;
}

#define CalcPixelAddressFromBlit4bpp(ptr, x, y, width) ((u8 *)((ptr) + (((x) >> 1) & 3) + (((x) << 2) & 0x3FE0) + ((((y) << 2) & 0x3FE0) * (width)) + (((u32)(((y) << 2) & 0x1C)))))
#define CalcPixelAddressFromBlit8bpp(ptr, x, y, width) ((u8 *)((ptr) + ((x) & 7) + (((x) << 3) & 0x7FC0) + ((((y) << 3) & 0x7FC0) * (width)) + (((u32)(((y) << 3) & 0x38)))))
#define ConvertPixelsToTiles(x)                        (((x) + ((x) & 7)) >> 3)

void Bitmap_BlitRect4bpp(const Bitmap *src, const Bitmap *dest, u16 srcX, u16 srcY, u16 destX, u16 destY, u16 width, u16 height, u16 transparent)
{
    int loopSrcX, loopDestX, loopSrcY, loopDestY, toOrr, shift, xEnd, yEnd, multiplierSrcY, multiplierDestY;
    u8 *srcPixels, *destPixels;

    if (dest->width - destX < width) {
        xEnd = dest->width - destX + srcX;
    } else {
        xEnd = width + srcX;
    }

    if (dest->height - destY < height) {
        yEnd = dest->height - destY + srcY;
    } else {
        yEnd = height + srcY;
    }

    multiplierSrcY = ConvertPixelsToTiles(src->width);
    multiplierDestY = ConvertPixelsToTiles(dest->width);

    if (transparent == 0xFFFF) {
        for (loopSrcY = srcY, loopDestY = destY; loopSrcY < yEnd; loopSrcY++, loopDestY++) {
            for (loopSrcX = srcX, loopDestX = destX; loopSrcX < xEnd; loopSrcX++, loopDestX++) {
                srcPixels = CalcPixelAddressFromBlit4bpp(src->pixels, loopSrcX, loopSrcY, multiplierSrcY);
                destPixels = CalcPixelAddressFromBlit4bpp(dest->pixels, loopDestX, loopDestY, multiplierDestY);

                toOrr = (*srcPixels >> ((loopSrcX & 1) * 4)) & 0xF;
                shift = (loopDestX & 1) * 4;
                *destPixels = ((toOrr << shift) | (*destPixels & (0xF0 >> shift)));
            }
        }
    } else {
        for (loopSrcY = srcY, loopDestY = destY; loopSrcY < yEnd; loopSrcY++, loopDestY++) {
            for (loopSrcX = srcX, loopDestX = destX; loopSrcX < xEnd; loopSrcX++, loopDestX++) {
                srcPixels = CalcPixelAddressFromBlit4bpp(src->pixels, loopSrcX, loopSrcY, multiplierSrcY);
                destPixels = CalcPixelAddressFromBlit4bpp(dest->pixels, loopDestX, loopDestY, multiplierDestY);

                toOrr = (*srcPixels >> ((loopSrcX & 1) * 4)) & 0xF;
                if (toOrr != transparent) {
                    shift = (loopDestX & 1) * 4;
                    *destPixels = ((toOrr << shift) | (*destPixels & (0xF0 >> shift)));
                }
            }
        }
    }
}

void Bitmap_BlitRect8bpp(const Bitmap *src, const Bitmap *dest, u16 srcX, u16 srcY, u16 destX, u16 destY, u16 width, u16 height, u16 transparent)
{
    int loopSrcX, loopDestX, loopSrcY, loopDestY, xEnd, yEnd, multiplierSrcY, multiplierDestY;
    u8 *srcPixels, *destPixels;

    if (dest->width - destX < width) {
        xEnd = dest->width - destX + srcX;
    } else {
        xEnd = width + srcX;
    }

    if (dest->height - destY < height) {
        yEnd = dest->height - destY + srcY;
    } else {
        yEnd = height + srcY;
    }

    multiplierSrcY = ConvertPixelsToTiles(src->width);
    multiplierDestY = ConvertPixelsToTiles(dest->width);

    if (transparent == 0xffff) {
        for (loopSrcY = srcY, loopDestY = destY; loopSrcY < yEnd; loopSrcY++, loopDestY++) {
            for (loopSrcX = srcX, loopDestX = destX; loopSrcX < xEnd; loopSrcX++, loopDestX++) {
                srcPixels = CalcPixelAddressFromBlit8bpp(src->pixels, loopSrcX, loopSrcY, multiplierSrcY);
                destPixels = CalcPixelAddressFromBlit8bpp(dest->pixels, loopDestX, loopDestY, multiplierDestY);
                *destPixels = *srcPixels;
            }
        }
    } else {
        for (loopSrcY = srcY, loopDestY = destY; loopSrcY < yEnd; loopSrcY++, loopDestY++) {
            for (loopSrcX = srcX, loopDestX = destX; loopSrcX < xEnd; loopSrcX++, loopDestX++) {
                srcPixels = CalcPixelAddressFromBlit8bpp(src->pixels, loopSrcX, loopSrcY, multiplierSrcY);
                destPixels = CalcPixelAddressFromBlit8bpp(dest->pixels, loopDestX, loopDestY, multiplierDestY);

                if (*srcPixels != transparent) {
                    *destPixels = *srcPixels;
                }
            }
        }
    }
}

void Bitmap_FillRect4bpp(const Bitmap *bitmap, u16 x, u16 y, u16 width, u16 height, u8 fillVal)
{
    int xEnd = x + width;
    if (xEnd > bitmap->width) {
        xEnd = bitmap->width;
    }

    int yEnd = y + height;
    if (yEnd > bitmap->height) {
        yEnd = bitmap->height;
    }

    int blitWidth = ConvertPixelsToTiles(bitmap->width);

    for (int i = y; i < yEnd; i++) {
        for (int j = x; j < xEnd; j++) {
            u8 *pixels = CalcPixelAddressFromBlit4bpp(bitmap->pixels, j, i, blitWidth);

            if (j & 1) {
                *pixels &= 0xF;
                *pixels |= (fillVal << 4);
            } else {
                *pixels &= 0xF0;
                *pixels |= fillVal;
            }
        }
    }
}

void Bitmap_FillRect8bpp(const Bitmap *bitmap, u16 x, u16 y, u16 width, u16 height, u8 fillVal)
{
    int xEnd = x + width;
    if (xEnd > bitmap->width) {
        xEnd = bitmap->width;
    }

    int yEnd = y + height;
    if (yEnd > bitmap->height) {
        yEnd = bitmap->height;
    }

    int blitWidth = ConvertPixelsToTiles(bitmap->width);

    for (int i = y; i < yEnd; i++) {
        for (int j = x; j < xEnd; j++) {
            u8 *pixels = CalcPixelAddressFromBlit8bpp(bitmap->pixels, j, i, blitWidth);
            *pixels = fillVal;
        }
    }
}

Window *Window_New(u32 heapID, u8 winCount)
{
    Window *windows = (Window *)Heap_AllocFromHeap(heapID, sizeof(Window) * winCount);

    for (u16 i = 0; i < winCount; i++) {
        Window_Init(&windows[i]);
    }

    return windows;
}

void Window_Init(Window *window)
{
    window->bgConfig = NULL;
    window->bgLayer = 0xFF;
    window->tilemapLeft = 0;
    window->tilemapTop = 0;
    window->width = 0;
    window->height = 0;
    window->palette = 0;
    window->baseTile = 0;
    window->pixels = NULL;
    window->colorMode = BG_COLOR_MODE_4BPP;
}

u8 Window_IsInUse(Window *window)
{
    if (window->bgConfig == NULL || window->bgLayer == 0xFF || window->pixels == NULL) {
        return FALSE;
    }

    return TRUE;
}

void Window_Add(BgConfig *bgConfig, Window *window, u8 bgLayer, u8 tilemapLeft, u8 tilemapTop, u8 width, u8 height, u8 palette, u16 baseTile)
{
    if (bgConfig->bgs[bgLayer].tilemapBuffer == NULL) {
        return;
    }

    u32 size = width * height * bgConfig->bgs[bgLayer].tileSize;
    void *pixels = Heap_AllocFromHeap(bgConfig->heapID, size);

    if (pixels == NULL) {
        return;
    }

    window->bgConfig = bgConfig;
    window->bgLayer = bgLayer;
    window->tilemapLeft = tilemapLeft;
    window->tilemapTop = tilemapTop;
    window->width = width;
    window->height = height;
    window->palette = palette;
    window->baseTile = baseTile;
    window->pixels = pixels;
    window->colorMode = (bgConfig->bgs[bgLayer].colorMode == GX_BG_COLORMODE_16) ? BG_COLOR_MODE_4BPP : BG_COLOR_MODE_8BPP;
}

void Window_AddToTopLeftCorner(BgConfig *bgConfig, Window *window, u8 width, u8 height, u16 baseTile, u8 fillVal)
{
    u32 size = width * height * TILE_SIZE_4BPP;
    void *pixels = Heap_AllocFromHeap(bgConfig->heapID, size);

    fillVal |= fillVal << 4;
    memset(pixels, fillVal, size);

    if (pixels == NULL) {
        return;
    }

    window->bgConfig = bgConfig;
    window->width = width;
    window->height = height;
    window->baseTile = baseTile;
    window->pixels = pixels;
    window->colorMode = BG_COLOR_MODE_4BPP;
}

void Window_AddFromTemplate(BgConfig *bgConfig, Window *window, const WindowTemplate *template)
{
    Window_Add(bgConfig,
        window,
        template->bgLayer,
        template->tilemapLeft,
        template->tilemapTop,
        template->width,
        template->height,
        template->palette,
        template->baseTile);
}

void Window_Remove(Window *window)
{
    Heap_FreeToHeap(window->pixels);

    window->bgConfig = NULL;
    window->bgLayer = 0xFF;
    window->tilemapLeft = 0;
    window->tilemapTop = 0;
    window->width = 0;
    window->height = 0;
    window->palette = 0;
    window->baseTile = 0;
    window->pixels = NULL;
}

void Windows_Delete(Window *window, u8 winCount)
{
    for (u16 i = 0; i < winCount; i++) {
        if (window[i].pixels != NULL) {
            Heap_FreeToHeap(window[i].pixels);
        }
    }

    Heap_FreeToHeap(window);
}

typedef void (*WindowFunc)(Window *);

static const WindowFunc sCopyWindowToVramFuncs[] = {
    [BG_TYPE_STATIC] = CopyWindowToVramText,
    [BG_TYPE_AFFINE] = CopyWindowToVramAffine,
    [BG_TYPE_STATIC_WITH_AFFINE] = CopyWindowToVramText,
};

static const WindowFunc sScheduleCopyWindowToVramFuncs[] = {
    [BG_TYPE_STATIC] = ScheduleCopyWindowToVramText,
    [BG_TYPE_AFFINE] = ScheduleCopyWindowToVramAffine,
    [BG_TYPE_STATIC_WITH_AFFINE] = ScheduleCopyWindowToVramText,
};

static const WindowFunc sClearAndCopyWindowToVramFuncs[] = {
    [BG_TYPE_STATIC] = ClearAndCopyWindowToVramText,
    [BG_TYPE_AFFINE] = ClearAndCopyWindowToVramAffine,
    [BG_TYPE_STATIC_WITH_AFFINE] = ClearAndCopyWindowToVramText,
};

static const WindowFunc sClearAndScheduleCopyWindowToVramFuncs[] = {
    [BG_TYPE_STATIC] = ClearAndScheduleCopyWindowToVramText,
    [BG_TYPE_AFFINE] = ClearAndScheduleCopyWindowToVramAffine,
    [BG_TYPE_STATIC_WITH_AFFINE] = ClearAndScheduleCopyWindowToVramText,
};

static const WindowFunc sPutWindowToTilemapFuncs[] = {
    [BG_TYPE_STATIC] = PutWindowToTilemapText,
    [BG_TYPE_AFFINE] = PutWindowToTilemapAffine,
    [BG_TYPE_STATIC_WITH_AFFINE] = PutWindowToTilemapText,
};

static const WindowFunc sClearWindowTilemapFuncs[] = {
    [BG_TYPE_STATIC] = ClearWindowTilemapText,
    [BG_TYPE_AFFINE] = ClearWindowTilemapAffine,
    [BG_TYPE_STATIC_WITH_AFFINE] = ClearWindowTilemapText,
};

static const u8 sScreenSizeToTilemapWidth[] = {
    [BG_SCREEN_SIZE_128x128] = 0x10,
    [BG_SCREEN_SIZE_256x256] = 0x20,
    [BG_SCREEN_SIZE_256x512] = 0x20,
    [BG_SCREEN_SIZE_512x256] = 0x20,
    [BG_SCREEN_SIZE_512x512] = 0x20,
    [BG_SCREEN_SIZE_1024x1024] = 0x20,
};

void Window_CopyToVRAM(Window *window)
{
    GF_ASSERT(window != NULL);
    GF_ASSERT(window->bgConfig != NULL);
    GF_ASSERT(window->bgLayer < BG_LAYER_MAX);
    GF_ASSERT(window->bgConfig->bgs[window->bgLayer].type < NELEMS(sCopyWindowToVramFuncs));

    sCopyWindowToVramFuncs[window->bgConfig->bgs[window->bgLayer].type](window);
}

void Window_ScheduleCopyToVRAM(Window *window)
{
    GF_ASSERT(window != NULL);
    GF_ASSERT(window->bgConfig != NULL);
    GF_ASSERT(window->bgLayer < BG_LAYER_MAX);
    GF_ASSERT(window->bgConfig->bgs[window->bgLayer].type < NELEMS(sScheduleCopyWindowToVramFuncs));

    sScheduleCopyWindowToVramFuncs[window->bgConfig->bgs[window->bgLayer].type](window);
}

void Window_PutToTilemap(Window *window)
{
    sPutWindowToTilemapFuncs[window->bgConfig->bgs[window->bgLayer].type](window);
}

void Window_PutRectToTilemap(Window *window, u32 width, u32 height)
{
    u32 oldWidth = window->width;
    u32 oldHeight = window->height;

    window->width = width;
    window->height = height;

    sPutWindowToTilemapFuncs[window->bgConfig->bgs[window->bgLayer].type](window);

    window->width = oldWidth;
    window->height = oldHeight;
}

void Window_ClearTilemap(Window *window)
{
    sClearWindowTilemapFuncs[window->bgConfig->bgs[window->bgLayer].type](window);
}

static void PutWindowToTilemapText(Window *window)
{
    u32 x, y, tilemapRight, tilemapBottom, tile, idx, tilemapWidth;
    u16 *tilemap = window->bgConfig->bgs[window->bgLayer].tilemapBuffer;

    if (tilemap == NULL) {
        return;
    }

    tilemapWidth = 32; // required to match
    tile = window->baseTile;
    tilemapRight = window->tilemapLeft + window->width;
    tilemapBottom = window->tilemapTop + window->height;

    for (y = window->tilemapTop; y < tilemapBottom; y++) {
        for (x = window->tilemapLeft; x < tilemapRight; x++) {
            idx = ((y & 0x20) * 32) + ((x & 0x20) * 32) + ((y & 0x1F) * tilemapWidth) + (x & 0x1F);
            tilemap[idx] = tile | (window->palette << 12);
            tile++;
        }
    }
}

static void PutWindowToTilemapAffine(Window *window)
{
    if (window->bgConfig->bgs[window->bgLayer].tilemapBuffer == NULL) {
        return;
    }

    int x, y, tile, tilemapWidth;
    u8 *tilemap;

    tilemapWidth = sScreenSizeToTilemapWidth[window->bgConfig->bgs[window->bgLayer].screenSize];
    tilemap = (u8 *)(window->bgConfig->bgs[window->bgLayer].tilemapBuffer) + window->tilemapTop * tilemapWidth + window->tilemapLeft;
    tile = window->baseTile;

    for (y = 0; y < window->height; y++) {
        for (x = 0; x < window->width; x++) {
            tilemap[x] = tile++;
        }

        tilemap += tilemapWidth;
    }
}

static void ClearWindowTilemapText(Window *window)
{
    if (window->bgConfig->bgs[window->bgLayer].tilemapBuffer == NULL) {
        return;
    }

    u32 x, y, tilemapBottom, idx;
    u32 tilemapWidth = sScreenSizeToTilemapWidth[window->bgConfig->bgs[window->bgLayer].screenSize];
    u16 *tilemap = window->bgConfig->bgs[window->bgLayer].tilemapBuffer;
    u32 tilemapRight = window->tilemapLeft + window->width;

    tilemapBottom = window->tilemapTop + window->height; // required this way to match

    for (y = window->tilemapTop; y < tilemapBottom; y++) {
        for (x = window->tilemapLeft; x < tilemapRight; x++) {
            idx = ((y & 0x20) * 32) + ((x & 0x20) * 32) + ((y & 0x1F) * tilemapWidth) + (x & 0x1F);
            tilemap[idx] = 0;
        }
    }
}

static void ClearWindowTilemapAffine(Window *window)
{
    if (window->bgConfig->bgs[window->bgLayer].tilemapBuffer == NULL) {
        return;
    }

    int x, y, tilemapWidth = sScreenSizeToTilemapWidth[window->bgConfig->bgs[window->bgLayer].screenSize];
    u8 *tilemap = (u8 *)(window->bgConfig->bgs[window->bgLayer].tilemapBuffer) + window->tilemapTop * tilemapWidth + window->tilemapLeft;

    for (y = 0; y < window->height; y++) {
        for (x = 0; x < window->width; x++) {
            tilemap[x] = 0;
        }

        tilemap += tilemapWidth;
    }
}

static void CopyWindowToVramText(Window *window)
{
    PutWindowToTilemapText(window);
    Window_LoadTiles(window);
    Bg_CopyTilemapBufferRangeToVRAM(window->bgConfig,
        window->bgLayer,
        window->bgConfig->bgs[window->bgLayer].tilemapBuffer,
        window->bgConfig->bgs[window->bgLayer].bufferSize,
        window->bgConfig->bgs[window->bgLayer].baseTile);
}

static void ScheduleCopyWindowToVramText(Window *window)
{
    PutWindowToTilemapText(window);
    Bg_ScheduleTilemapTransfer(window->bgConfig, window->bgLayer);
    Window_LoadTiles(window);
}

static void CopyWindowToVramAffine(Window *window)
{
    PutWindowToTilemapAffine(window);

    Bg_CopyTilemapBufferRangeToVRAM(window->bgConfig,
        window->bgLayer,
        window->bgConfig->bgs[window->bgLayer].tilemapBuffer,
        window->bgConfig->bgs[window->bgLayer].bufferSize,
        window->bgConfig->bgs[window->bgLayer].baseTile);
    Bg_LoadTiles(window->bgConfig,
        window->bgLayer,
        window->pixels,
        window->width * window->height * 0x40,
        window->baseTile);
}

static void ScheduleCopyWindowToVramAffine(Window *window)
{
    PutWindowToTilemapAffine(window);

    Bg_ScheduleTilemapTransfer(window->bgConfig, window->bgLayer);
    Bg_LoadTiles(window->bgConfig,
        window->bgLayer,
        window->pixels,
        window->width * window->height * 0x40,
        window->baseTile);
}

void Window_LoadTiles(Window *window)
{
    u32 size = window->width * window->height * window->bgConfig->bgs[window->bgLayer].tileSize;
    Bg_LoadTiles(window->bgConfig, window->bgLayer, window->pixels, size, window->baseTile);
}

void Window_ClearAndCopyToVRAM(Window *window)
{
    sClearAndCopyWindowToVramFuncs[window->bgConfig->bgs[window->bgLayer].type](window);
}

void Window_ClearAndScheduleCopyToVRAM(Window *window)
{
    sClearAndScheduleCopyWindowToVramFuncs[window->bgConfig->bgs[window->bgLayer].type](window);
}

static void ClearAndCopyWindowToVramText(Window *window)
{
    ClearWindowTilemapText(window);
    Bg_CopyTilemapBufferRangeToVRAM(window->bgConfig,
        window->bgLayer,
        window->bgConfig->bgs[window->bgLayer].tilemapBuffer,
        window->bgConfig->bgs[window->bgLayer].bufferSize,
        window->bgConfig->bgs[window->bgLayer].baseTile);
}

static void ClearAndScheduleCopyWindowToVramText(Window *window)
{
    ClearWindowTilemapText(window);
    Bg_ScheduleTilemapTransfer(window->bgConfig, window->bgLayer);
}

static void ClearAndCopyWindowToVramAffine(Window *window)
{
    ClearWindowTilemapAffine(window);
    Bg_CopyTilemapBufferRangeToVRAM(window->bgConfig,
        window->bgLayer,
        window->bgConfig->bgs[window->bgLayer].tilemapBuffer,
        window->bgConfig->bgs[window->bgLayer].bufferSize,
        window->bgConfig->bgs[window->bgLayer].baseTile);
}

static void ClearAndScheduleCopyWindowToVramAffine(Window *window)
{
    ClearWindowTilemapAffine(window);
    Bg_ScheduleTilemapTransfer(window->bgConfig, window->bgLayer);
}

void Window_FillTilemap(Window *window, u8 val)
{
    if (window->bgConfig->bgs[window->bgLayer].tileSize == TILE_SIZE_4BPP) {
        val = (val << 4) | val;
    }

    u32 fill = (val << 24) | (val << 16) | (val << 8) | val;
    u32 size = window->bgConfig->bgs[window->bgLayer].tileSize * window->width * window->height;

    MI_CpuFillFast(window->pixels, fill, size);
}

void Window_BlitBitmapRect(Window *window, void *src, u16 srcX, u16 srcY, u16 srcWidth, u16 srcHeight, u16 destX, u16 destY, u16 destWidth, u16 destHeight)
{
    Window_BlitBitmapRectWithTransparency(window, src, srcX, srcY, srcWidth, srcHeight, destX, destY, destWidth, destHeight, 0);
}

void Window_BlitBitmapRectWithTransparency(Window *window, void *src, u16 srcX, u16 srcY, u16 srcWidth, u16 srcHeight, u16 destX, u16 destY, u16 destWidth, u16 destHeight, u16 transparent)
{
    Bitmap bmpSrc, bmpDest;

    bmpSrc.pixels = src;
    bmpSrc.width = srcWidth;
    bmpSrc.height = srcHeight;

    bmpDest.pixels = window->pixels;
    bmpDest.width = window->width * 8;
    bmpDest.height = window->height * 8;

    if (window->bgConfig->bgs[window->bgLayer].colorMode == GX_BG_COLORMODE_16) {
        Bitmap_BlitRect4bpp(&bmpSrc, &bmpDest, srcX, srcY, destX, destY, destWidth, destHeight, transparent);
    } else {
        Bitmap_BlitRect8bpp(&bmpSrc, &bmpDest, srcX, srcY, destX, destY, destWidth, destHeight, transparent);
    }
}

void Window_FillRectWithColor(Window *window, u8 color, u16 x, u16 y, u16 width, u16 height)
{
    Bitmap bmp;

    bmp.pixels = window->pixels;
    bmp.width = window->width * 8;
    bmp.height = window->height * 8;

    if (window->bgConfig->bgs[window->bgLayer].colorMode == GX_BG_COLORMODE_16) {
        Bitmap_FillRect4bpp((const Bitmap *)&bmp, x, y, width, height, color);
    } else {
        Bitmap_FillRect8bpp((const Bitmap *)&bmp, x, y, width, height, color);
    }
}

#define CopyGlyph4bpp(glyphPixels, srcX, srcY, srcWidth, srcHeight, windowPixels, destX, destY, destWidth, table) \
    {                                                                                                             \
        int srcJ, destJ, srcI, destI, bits;                                                                       \
        u8 toOrr;                                                                                                 \
        u8 tableFlag;                                                                                             \
        u8 tableBit;                                                                                              \
        u8 *dest;                                                                                                 \
        const u8 *src;                                                                                            \
        u32 pixelData;                                                                                            \
                                                                                                                  \
        src = glyphPixels + (srcY / 8 * 64) + (srcX / 8 * 32);                                                    \
        if (srcY == 0) {                                                                                          \
            destI = destY + srcY;                                                                                 \
            tableBit = table & 0xFF;                                                                              \
        } else {                                                                                                  \
            destI = destY + srcY;                                                                                 \
            for (srcI = 0; srcI < 8; srcI++) {                                                                    \
                if (((table >> srcI) & 1) != 0) {                                                                 \
                    destI++;                                                                                      \
                }                                                                                                 \
            }                                                                                                     \
            tableBit = table >> 8;                                                                                \
        }                                                                                                         \
        for (srcI = 0; srcI < srcHeight; srcI++) {                                                                \
            pixelData = *(u32 *)src;                                                                              \
            tableFlag = (tableBit >> srcI) & 1;                                                                   \
            for (srcJ = 0, destJ = destX + srcX; srcJ < srcWidth; srcJ++, destJ++) {                              \
                dest = CalcPixelAddressFromBlit4bpp(windowPixels, destJ, destI, destWidth);                       \
                toOrr = (pixelData >> (srcJ * 4)) & 0xF;                                                          \
                if (toOrr != 0) {                                                                                 \
                    bits = (destJ & 1) * 4;                                                                       \
                    toOrr = (toOrr << bits) | (*dest & (0xF0 >> bits));                                           \
                    *dest = toOrr;                                                                                \
                    if (tableFlag) {                                                                              \
                        dest = CalcPixelAddressFromBlit4bpp(windowPixels, destJ, destI + 1, destWidth);           \
                        *dest = toOrr;                                                                            \
                    }                                                                                             \
                }                                                                                                 \
            }                                                                                                     \
            if (tableFlag) {                                                                                      \
                destI += 2;                                                                                       \
            } else {                                                                                              \
                destI += 1;                                                                                       \
            }                                                                                                     \
            src += 4;                                                                                             \
        }                                                                                                         \
    }

#define CopyGlyph8bpp(glyphPixels, srcX, srcY, srcWidth, srcHeight, windowPixels, destX, destY, destWidth, table) \
    {                                                                                                             \
        int srcJ, destJ, srcI, destI;                                                                             \
        u8 toOrr;                                                                                                 \
        u8 tableFlag;                                                                                             \
        u8 tableBit;                                                                                              \
        u8 *dest;                                                                                                 \
        const u8 *src;                                                                                            \
        u8 *pixelData;                                                                                            \
                                                                                                                  \
        src = glyphPixels + (srcY / 8 * 128) + (srcX / 8 * 64);                                                   \
        if (srcY == 0) {                                                                                          \
            destI = destY + srcY;                                                                                 \
            tableBit = table & 0xFF;                                                                              \
        } else {                                                                                                  \
            destI = destY + srcY;                                                                                 \
            for (srcI = 0; srcI < 8; srcI++) {                                                                    \
                if (((table >> srcI) & 1) != 0) {                                                                 \
                    destI++;                                                                                      \
                }                                                                                                 \
            }                                                                                                     \
            tableBit = table >> 8;                                                                                \
        }                                                                                                         \
        for (srcI = 0; srcI < srcHeight; srcI++) {                                                                \
            pixelData = (u8 *)src;                                                                                \
            tableFlag = (tableBit >> srcI) & 1;                                                                   \
            for (srcJ = 0, destJ = destX + srcX; srcJ < srcWidth; srcJ++, destJ++) {                              \
                dest = CalcPixelAddressFromBlit8bpp(windowPixels, destJ, destI, destWidth);                       \
                toOrr = pixelData[srcJ];                                                                          \
                if (toOrr != 0) {                                                                                 \
                    *dest = toOrr;                                                                                \
                    if (tableFlag) {                                                                              \
                        dest = CalcPixelAddressFromBlit8bpp(windowPixels, destJ, destI + 1, destWidth);           \
                        *dest = toOrr;                                                                            \
                    }                                                                                             \
                }                                                                                                 \
            }                                                                                                     \
            if (tableFlag) {                                                                                      \
                destI += 2;                                                                                       \
            } else {                                                                                              \
                destI += 1;                                                                                       \
            }                                                                                                     \
            src += 8;                                                                                             \
        }                                                                                                         \
    }

void Window_CopyGlyph(Window *window, const u8 *glyphPixels, u16 srcWidth, u16 srcHeight, u16 destX, u16 destY, u16 table)
{
    u8 *windowPixels = window->pixels;
    u16 destWidth = window->width * 8, destHeight = window->height * 8;
    int srcRight, srcBottom;
    u8 glyphSizeParam;

    if (destWidth - destX < srcWidth) {
        srcRight = destWidth - destX;
    } else {
        srcRight = srcWidth;
    }
    if (destHeight - destY < srcHeight) {
        srcBottom = destHeight - destY;
    } else {
        srcBottom = srcHeight;
    }

    glyphSizeParam = 0;
    if (srcRight > 8) {
        glyphSizeParam |= 1;
    }
    if (srcBottom > 8) {
        glyphSizeParam |= 2;
    }

    if (window->colorMode == BG_COLOR_MODE_4BPP) {
        switch (glyphSizeParam) {
        case 0: // 1x1
            CopyGlyph4bpp(glyphPixels, 0, 0, srcRight, srcBottom, windowPixels, destX, destY, ConvertPixelsToTiles(destWidth), table);
            return;

        case 1: // 2x1
            CopyGlyph4bpp(glyphPixels, 0, 0, 8, srcBottom, windowPixels, destX, destY, ConvertPixelsToTiles(destWidth), table);
            CopyGlyph4bpp(glyphPixels, 8, 0, srcRight - 8, srcBottom, windowPixels, destX, destY, ConvertPixelsToTiles(destWidth), table);
            return;

        case 2: // 1x2
            CopyGlyph4bpp(glyphPixels, 0, 0, srcRight, 8, windowPixels, destX, destY, ConvertPixelsToTiles(destWidth), table);
            CopyGlyph4bpp(glyphPixels, 0, 8, srcRight, srcBottom - 8, windowPixels, destX, destY, ConvertPixelsToTiles(destWidth), table);
            return;

        case 3: // 2x2
            CopyGlyph4bpp(glyphPixels, 0, 0, 8, 8, windowPixels, destX, destY, ConvertPixelsToTiles(destWidth), table);
            CopyGlyph4bpp(glyphPixels, 8, 0, srcRight - 8, 8, windowPixels, destX, destY, ConvertPixelsToTiles(destWidth), table);
            CopyGlyph4bpp(glyphPixels, 0, 8, 8, srcBottom - 8, windowPixels, destX, destY, ConvertPixelsToTiles(destWidth), table);
            CopyGlyph4bpp(glyphPixels, 8, 8, srcRight - 8, srcBottom - 8, windowPixels, destX, destY, ConvertPixelsToTiles(destWidth), table);
            return;
        }
    } else {
        u8 *convertedSrc = Convert4bppTo8bpp(glyphPixels, srcWidth * 4 * srcHeight * 8, window->palette, window->bgConfig->heapID);
        switch (glyphSizeParam) {
        case 0: // 1x1
            CopyGlyph8bpp(convertedSrc, 0, 0, srcRight, srcBottom, windowPixels, destX, destY, ConvertPixelsToTiles(destWidth), table);
            break;

        case 1: // 2x1
            CopyGlyph8bpp(convertedSrc, 0, 0, 8, srcBottom, windowPixels, destX, destY, ConvertPixelsToTiles(destWidth), table);
            CopyGlyph8bpp(convertedSrc, 8, 0, srcRight - 8, srcBottom, windowPixels, destX, destY, ConvertPixelsToTiles(destWidth), table);
            break;

        case 2: // 1x2
            CopyGlyph8bpp(convertedSrc, 0, 0, srcRight, 8, windowPixels, destX, destY, ConvertPixelsToTiles(destWidth), table);
            CopyGlyph8bpp(convertedSrc, 0, 8, srcRight, srcBottom - 8, windowPixels, destX, destY, ConvertPixelsToTiles(destWidth), table);
            break;

        case 3: // 2x2
            CopyGlyph8bpp(convertedSrc, 0, 0, 8, 8, windowPixels, destX, destY, ConvertPixelsToTiles(destWidth), table);
            CopyGlyph8bpp(convertedSrc, 8, 0, srcRight - 8, 8, windowPixels, destX, destY, ConvertPixelsToTiles(destWidth), table);
            CopyGlyph8bpp(convertedSrc, 0, 8, 8, srcBottom - 8, windowPixels, destX, destY, ConvertPixelsToTiles(destWidth), table);
            CopyGlyph8bpp(convertedSrc, 8, 8, srcRight - 8, srcBottom - 8, windowPixels, destX, destY, ConvertPixelsToTiles(destWidth), table);
            break;
        }
        Heap_FreeToHeap(convertedSrc);
    }
}

void Window_Scroll(Window *window, u8 direction, u8 distance, u8 fillVal)
{
    if (window->bgConfig->bgs[window->bgLayer].colorMode == GX_BG_COLORMODE_16) {
        ScrollWindow4bpp(window, direction, distance, fillVal);
    } else {
        ScrollWindow8bpp(window, direction, distance, fillVal);
    }
}

static void ScrollWindow4bpp(Window *window, u8 direction, u8 distance, u8 fillVal)
{
    u8 *pixels = window->pixels;
    int y0, y1, y2;
    int fill = (fillVal << 24) | (fillVal << 16) | (fillVal << 8) | (fillVal << 0);
    int size = window->height * window->width * TILE_SIZE_4BPP;
    u32 width = window->width;
    int i, j;

    switch (direction) {
    case SCROLL_DIRECTION_UP:
        for (i = 0; i < size; i += TILE_SIZE_4BPP) {
            y0 = distance;

            for (j = 0; j < 8; j++) {
                y1 = i + (j << 2);
                y2 = i + (((width * (y0 & ~7)) | (y0 & 7)) << 2);

                if (y2 < size) {
                    *(u32 *)(pixels + y1) = *(u32 *)(pixels + y2);
                } else {
                    *(u32 *)(pixels + y1) = fill;
                }

                y0++;
            }
        }
        break;

    case SCROLL_DIRECTION_DOWN:
        pixels += size - 4;
        for (i = 0; i < size; i += TILE_SIZE_4BPP) {
            y0 = distance;

            for (j = 0; j < 8; j++) {
                y1 = i + (j << 2);
                y2 = i + (((width * (y0 & ~7)) | (y0 & 7)) << 2);

                if (y2 < size) {
                    *(u32 *)(pixels - y1) = *(u32 *)(pixels - y2);
                } else {
                    *(u32 *)(pixels - y1) = fill;
                }

                y0++;
            }
        }
        break;

    case SCROLL_DIRECTION_LEFT:
        break;

    case SCROLL_DIRECTION_RIGHT:
        break;
    }
}

static void ScrollWindow8bpp(Window *window, u8 direction, u8 distance, u8 fillVal)
{
    u8 *pixels = window->pixels;
    int y0, y1, y2;
    int fill = (fillVal << 24) | (fillVal << 16) | (fillVal << 8) | fillVal;
    int size = window->height * window->width * TILE_SIZE_8BPP;
    u32 width = window->width;
    int i, j;

    switch (direction) {
    case SCROLL_DIRECTION_UP:
        for (i = 0; i < size; i += TILE_SIZE_8BPP) {
            y0 = distance;

            for (j = 0; j < 8; j++) {
                y1 = i + (j << 3);
                y2 = i + (((width * (y0 & ~7)) | (y0 & 7)) << 3);

                if (y2 < size) {
                    *(u32 *)(pixels + y1) = *(u32 *)(pixels + y2);
                } else {
                    *(u32 *)(pixels + y1) = fill;
                }

                y1 += 4;
                y2 += 4;

                if (y2 < size + 4) {
                    *(u32 *)(pixels + y1) = *(u32 *)(pixels + y2);
                } else {
                    *(u32 *)(pixels + y1) = fill;
                }

                y0++;
            }
        }
        break;

    case SCROLL_DIRECTION_DOWN:
        pixels += (size - 8);
        for (i = 0; i < size; i += TILE_SIZE_8BPP) {
            y0 = distance;

            for (j = 0; j < 8; j++) {
                y1 = i + (j << 3);
                y2 = i + (((width * (y0 & ~7)) | (y0 & 7)) << 3);

                if (y2 < size) {
                    *(u32 *)(pixels - y1) = *(u32 *)(pixels - y2);
                } else {
                    *(u32 *)(pixels - y1) = fill;
                }

                y1 -= 4;
                y2 -= 4;

                if (y2 < size - 4) {
                    *(u32 *)(pixels - y1) = *(u32 *)(pixels - y2);
                } else {
                    *(u32 *)(pixels - y1) = fill;
                }

                y0++;
            }
        }
        break;

    case SCROLL_DIRECTION_LEFT:
        break;

    case SCROLL_DIRECTION_RIGHT:
        break;
    }
}

BgConfig *Window_GetBgConfig(Window *window)
{
    return window->bgConfig;
}

u8 Window_GetBgLayer(Window *window)
{
    return window->bgLayer;
}

u8 Window_GetWidth(Window *window)
{
    return window->width;
}

u8 Window_GetHeight(Window *window)
{
    return window->height;
}

u8 Window_GetXPos(Window *window)
{
    return window->tilemapLeft;
}

u8 Window_GetYPos(Window *window)
{
    return window->tilemapTop;
}

u16 Window_GetBaseTile(Window *window)
{
    return window->baseTile;
}

void Window_SetXPos(Window *window, u8 x)
{
    window->tilemapLeft = x;
}

void Window_SetYPos(Window *window, u8 y)
{
    window->tilemapTop = y;
}

void Window_SetPalette(Window *window, u8 palette)
{
    window->palette = palette;
}

void Bg_RunScheduledUpdates(BgConfig *bgConfig)
{
    RunScheduledScrolls(bgConfig);
    RunScheduledTilemapTransfers(bgConfig);

    bgConfig->scrollScheduled = FALSE;
    bgConfig->bufferTransferScheduled = FALSE;
}

static void RunScheduledTilemapTransfers(BgConfig *bgConfig)
{
    if ((bgConfig->bufferTransferScheduled & (1 << BG_LAYER_MAIN_0)) != 0) {
        LoadBgVRAMScr(BG_LAYER_MAIN_0, bgConfig->bgs[BG_LAYER_MAIN_0].tilemapBuffer, bgConfig->bgs[BG_LAYER_MAIN_0].baseTile * 0x2, bgConfig->bgs[BG_LAYER_MAIN_0].bufferSize);
    }

    if ((bgConfig->bufferTransferScheduled & (1 << BG_LAYER_MAIN_1)) != 0) {
        LoadBgVRAMScr(BG_LAYER_MAIN_1, bgConfig->bgs[BG_LAYER_MAIN_1].tilemapBuffer, bgConfig->bgs[BG_LAYER_MAIN_1].baseTile * 0x2, bgConfig->bgs[BG_LAYER_MAIN_1].bufferSize);
    }

    if ((bgConfig->bufferTransferScheduled & (1 << BG_LAYER_MAIN_2)) != 0) {
        LoadBgVRAMScr(BG_LAYER_MAIN_2, bgConfig->bgs[BG_LAYER_MAIN_2].tilemapBuffer, bgConfig->bgs[BG_LAYER_MAIN_2].baseTile * 0x2, bgConfig->bgs[BG_LAYER_MAIN_2].bufferSize);
    }

    if ((bgConfig->bufferTransferScheduled & (1 << BG_LAYER_MAIN_3)) != 0) {
        LoadBgVRAMScr(BG_LAYER_MAIN_3, bgConfig->bgs[BG_LAYER_MAIN_3].tilemapBuffer, bgConfig->bgs[BG_LAYER_MAIN_3].baseTile * 0x2, bgConfig->bgs[BG_LAYER_MAIN_3].bufferSize);
    }

    if ((bgConfig->bufferTransferScheduled & (1 << BG_LAYER_SUB_0)) != 0) {
        LoadBgVRAMScr(BG_LAYER_SUB_0, bgConfig->bgs[BG_LAYER_SUB_0].tilemapBuffer, bgConfig->bgs[BG_LAYER_SUB_0].baseTile * 0x2, bgConfig->bgs[BG_LAYER_SUB_0].bufferSize);
    }

    if ((bgConfig->bufferTransferScheduled & (1 << BG_LAYER_SUB_1)) != 0) {
        LoadBgVRAMScr(BG_LAYER_SUB_1, bgConfig->bgs[BG_LAYER_SUB_1].tilemapBuffer, bgConfig->bgs[BG_LAYER_SUB_1].baseTile * 0x2, bgConfig->bgs[BG_LAYER_SUB_1].bufferSize);
    }

    if ((bgConfig->bufferTransferScheduled & (1 << BG_LAYER_SUB_2)) != 0) {
        LoadBgVRAMScr(BG_LAYER_SUB_2, bgConfig->bgs[BG_LAYER_SUB_2].tilemapBuffer, bgConfig->bgs[BG_LAYER_SUB_2].baseTile * 0x2, bgConfig->bgs[BG_LAYER_SUB_2].bufferSize);
    }

    if ((bgConfig->bufferTransferScheduled & (1 << BG_LAYER_SUB_3)) != 0) {
        LoadBgVRAMScr(BG_LAYER_SUB_3, bgConfig->bgs[BG_LAYER_SUB_3].tilemapBuffer, bgConfig->bgs[BG_LAYER_SUB_3].baseTile * 0x2, bgConfig->bgs[BG_LAYER_SUB_3].bufferSize);
    }
}

void Bg_ScheduleTilemapTransfer(BgConfig *bgConfig, u8 bgLayer)
{
    bgConfig->bufferTransferScheduled |= (1 << bgLayer);
}

static void RunScheduledScrolls(BgConfig *bgConfig)
{
    if ((bgConfig->scrollScheduled & (1 << BG_LAYER_MAIN_0)) != 0) {
        G2_SetBG0Offset(bgConfig->bgs[BG_LAYER_MAIN_0].xOffset, bgConfig->bgs[BG_LAYER_MAIN_0].yOffset);
    }

    if ((bgConfig->scrollScheduled & (1 << BG_LAYER_MAIN_1)) != 0) {
        G2_SetBG1Offset(bgConfig->bgs[BG_LAYER_MAIN_1].xOffset, bgConfig->bgs[BG_LAYER_MAIN_1].yOffset);
    }

    if ((bgConfig->scrollScheduled & (1 << BG_LAYER_MAIN_2)) != 0) {
        if (bgConfig->bgs[BG_LAYER_MAIN_2].type == BG_TYPE_STATIC) {
            G2_SetBG2Offset(bgConfig->bgs[BG_LAYER_MAIN_2].xOffset, bgConfig->bgs[BG_LAYER_MAIN_2].yOffset);
        } else {
            MtxFx22 mtx;
            CreateAffineTransformationMatrix(&mtx, bgConfig->bgs[BG_LAYER_MAIN_2].rotation, bgConfig->bgs[BG_LAYER_MAIN_2].xScale, bgConfig->bgs[BG_LAYER_MAIN_2].yScale, AFFINE_MODE_MAX_360);
            G2_SetBG2Affine(&mtx, bgConfig->bgs[BG_LAYER_MAIN_2].xCenter, bgConfig->bgs[BG_LAYER_MAIN_2].yCenter, bgConfig->bgs[BG_LAYER_MAIN_2].xOffset, bgConfig->bgs[BG_LAYER_MAIN_2].yOffset);
        }
    }

    if ((bgConfig->scrollScheduled & (1 << BG_LAYER_MAIN_3)) != 0) {
        if (bgConfig->bgs[BG_LAYER_MAIN_3].type == BG_TYPE_STATIC) {
            G2_SetBG3Offset(bgConfig->bgs[BG_LAYER_MAIN_3].xOffset, bgConfig->bgs[BG_LAYER_MAIN_3].yOffset);
        } else {
            MtxFx22 mtx;
            CreateAffineTransformationMatrix(&mtx, bgConfig->bgs[BG_LAYER_MAIN_3].rotation, bgConfig->bgs[BG_LAYER_MAIN_3].xScale, bgConfig->bgs[BG_LAYER_MAIN_3].yScale, AFFINE_MODE_MAX_360);
            G2_SetBG3Affine(&mtx, bgConfig->bgs[BG_LAYER_MAIN_3].xCenter, bgConfig->bgs[BG_LAYER_MAIN_3].yCenter, bgConfig->bgs[BG_LAYER_MAIN_3].xOffset, bgConfig->bgs[BG_LAYER_MAIN_3].yOffset);
        }
    }

    if ((bgConfig->scrollScheduled & (1 << BG_LAYER_SUB_0)) != 0) {
        G2S_SetBG0Offset(bgConfig->bgs[BG_LAYER_SUB_0].xOffset, bgConfig->bgs[BG_LAYER_SUB_0].yOffset);
    }

    if ((bgConfig->scrollScheduled & (1 << BG_LAYER_SUB_1)) != 0) {
        G2S_SetBG1Offset(bgConfig->bgs[BG_LAYER_SUB_1].xOffset, bgConfig->bgs[BG_LAYER_SUB_1].yOffset);
    }

    if ((bgConfig->scrollScheduled & (1 << BG_LAYER_SUB_2)) != 0) {
        if (bgConfig->bgs[BG_LAYER_SUB_2].type == BG_TYPE_STATIC) {
            G2S_SetBG2Offset(bgConfig->bgs[BG_LAYER_SUB_2].xOffset, bgConfig->bgs[BG_LAYER_SUB_2].yOffset);
        } else {
            MtxFx22 mtx;
            CreateAffineTransformationMatrix(&mtx, bgConfig->bgs[BG_LAYER_SUB_2].rotation, bgConfig->bgs[BG_LAYER_SUB_2].xScale, bgConfig->bgs[BG_LAYER_SUB_2].yScale, AFFINE_MODE_MAX_360);
            G2S_SetBG2Affine(&mtx, bgConfig->bgs[BG_LAYER_SUB_2].xCenter, bgConfig->bgs[BG_LAYER_SUB_2].yCenter, bgConfig->bgs[BG_LAYER_SUB_2].xOffset, bgConfig->bgs[BG_LAYER_SUB_2].yOffset);
        }
    }

    if ((bgConfig->scrollScheduled & (1 << BG_LAYER_SUB_3)) != 0) {
        if (bgConfig->bgs[BG_LAYER_SUB_3].type == BG_TYPE_STATIC) {
            G2S_SetBG3Offset(bgConfig->bgs[BG_LAYER_SUB_3].xOffset, bgConfig->bgs[BG_LAYER_SUB_3].yOffset);
        } else {
            MtxFx22 mtx;
            CreateAffineTransformationMatrix(&mtx, bgConfig->bgs[BG_LAYER_SUB_3].rotation, bgConfig->bgs[BG_LAYER_SUB_3].xScale, bgConfig->bgs[BG_LAYER_SUB_3].yScale, AFFINE_MODE_MAX_360);
            G2S_SetBG3Affine(&mtx, bgConfig->bgs[BG_LAYER_SUB_3].xCenter, bgConfig->bgs[BG_LAYER_SUB_3].yCenter, bgConfig->bgs[BG_LAYER_SUB_3].xOffset, bgConfig->bgs[BG_LAYER_SUB_3].yOffset);
        }
    }
}

void Bg_ScheduleScroll(BgConfig *bgConfig, u8 bgLayer, u8 bgUpdateOffsetOp, int val)
{
    UpdateBgOffsetWithVal(&bgConfig->bgs[bgLayer], bgUpdateOffsetOp, val);
    bgConfig->scrollScheduled |= (1 << bgLayer);
}

void Bg_ScheduleAffineRotation(BgConfig *bgConfig, u8 bgLayer, u8 bgAffineUpdateOp, u16 val)
{
    UpdateBgRotationWithVal(&bgConfig->bgs[bgLayer], bgAffineUpdateOp, val);
    bgConfig->scrollScheduled |= (1 << bgLayer);
}

static void UpdateBgRotationWithVal(Background *bg, enum BgAffineUpdateOp op, u16 val)
{
    switch (op) {
    case BG_AFFINE_UPDATE_SET_ROTATION:
        bg->rotation = val;
        break;

    case BG_AFFINE_UPDATE_ADD_ROTATION:
        bg->rotation += val;
        break;

    case BG_AFFINE_UPDATE_SUB_ROTATION:
        bg->rotation -= val;
        break;

    default:
        break;
    }
}

void Bg_ScheduleAffineScale(BgConfig *bgConfig, u8 bgLayer, u8 bgAffineUpdateOp, fx32 val)
{
    UpdateBgAffineScaleWithVal(&bgConfig->bgs[bgLayer], bgAffineUpdateOp, val);
    bgConfig->scrollScheduled |= (1 << bgLayer);
}

static void UpdateBgAffineScaleWithVal(Background *bg, enum BgAffineUpdateOp op, fx32 val)
{
    switch (op) {
    case BG_AFFINE_UPDATE_SET_X_SCALE:
        bg->xScale = val;
        break;

    case BG_AFFINE_UPDATE_ADD_X_SCALE:
        bg->xScale += val;
        break;

    case BG_AFFINE_UPDATE_SUB_X_SCALE:
        bg->xScale -= val;
        break;

    case BG_AFFINE_UPDATE_SET_Y_SCALE:
        bg->yScale = val;
        break;

    case BG_AFFINE_UPDATE_ADD_Y_SCALE:
        bg->yScale += val;
        break;

    case BG_AFFINE_UPDATE_SUB_Y_SCALE:
        bg->yScale -= val;
        break;

    default:
        break;
    }
}

void Bg_ScheduleAffineRotationCenter(BgConfig *bgConfig, u8 bgLayer, u8 bgAffineUpdateOp, int val)
{
    UpdateBgAffineRotationCenterWithVal(&bgConfig->bgs[bgLayer], bgAffineUpdateOp, val);
    bgConfig->scrollScheduled |= (1 << bgLayer);
}

static void UpdateBgAffineRotationCenterWithVal(Background *bg, enum BgAffineUpdateOp op, int val)
{
    switch (op) {
    case BG_AFFINE_UPDATE_SET_X_CENTER:
        bg->xCenter = val;
        break;

    case BG_AFFINE_UPDATE_ADD_X_CENTER:
        bg->xCenter += val;
        break;

    case BG_AFFINE_UPDATE_SUB_X_CENTER:
        bg->xCenter -= val;
        break;

    case BG_AFFINE_UPDATE_SET_Y_CENTER:
        bg->yCenter = val;
        break;

    case BG_AFFINE_UPDATE_ADD_Y_CENTER:
        bg->yCenter += val;
        break;

    case BG_AFFINE_UPDATE_SUB_Y_CENTER:
        bg->yCenter -= val;
        break;

    default:
        break;
    }
}

u8 Bg_DoesPixelAtXYMatchVal(BgConfig *bgConfig, u8 bgLayer, u16 x, u16 y, u16 *src)
{
    u8 *charPtr;
    u16 tilemapIndex;
    u8 xPixelOffset, yPixelOffset;
    u8 pixelVal;
    u8 i;

    if (bgConfig->bgs[bgLayer].tilemapBuffer == NULL) {
        return FALSE;
    }

    tilemapIndex = CalcTilemapIndexFromCoords(x / 8, y / 8, bgConfig->bgs[bgLayer].screenSize);
    charPtr = Bg_GetCharPtr(bgLayer);
    xPixelOffset = x & 7;
    yPixelOffset = y & 7;

    if (bgConfig->bgs[bgLayer].colorMode == GX_BG_COLORMODE_16) {
        u16 *tilemapBuffer = bgConfig->bgs[bgLayer].tilemapBuffer;
        u8 *tile = Heap_AllocFromHeapAtEnd(bgConfig->heapID, 64);

        charPtr += (tilemapBuffer[tilemapIndex] & 0x3FF) * TILE_SIZE_4BPP;

        for (i = 0; i < TILE_SIZE_4BPP; i++) {
            tile[i * 2] = charPtr[i] & 0xF;
            tile[i * 2 + 1] = charPtr[i] >> 4;
        }

        ApplyFlipFlagsToTile(bgConfig, (tilemapBuffer[tilemapIndex] >> 10) & 3, tile);
        pixelVal = tile[xPixelOffset + yPixelOffset * 8];
        Heap_FreeToHeap(tile);

        if ((*src & (1 << pixelVal)) != 0) {
            return TRUE;
        }
    } else {
        if (bgConfig->bgs[bgLayer].type != BG_TYPE_AFFINE) {
            u16 *tilemapBuffer = bgConfig->bgs[bgLayer].tilemapBuffer;
            u8 *tile = Heap_AllocFromHeapAtEnd(bgConfig->heapID, 64);

            memcpy(tile, &charPtr[(tilemapBuffer[tilemapIndex] & 0x3FF) * TILE_SIZE_8BPP], 64);
            ApplyFlipFlagsToTile(bgConfig, (tilemapBuffer[tilemapIndex] >> 10) & 3, tile);

            pixelVal = tile[xPixelOffset + yPixelOffset * 8];
            Heap_FreeToHeap(tile);
        } else {
            u8 *tilemapBuffer = bgConfig->bgs[bgLayer].tilemapBuffer;
            pixelVal = charPtr[tilemapBuffer[tilemapIndex] * TILE_SIZE_8BPP + xPixelOffset + yPixelOffset * 8];
        }

        // BUG: Infinite loop
        while (TRUE) {
            if (*src == 0xFFFF) {
                break;
            }

            if (pixelVal == (u8)*src) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

static void ApplyFlipFlagsToTile(BgConfig *bgConfig, u8 flags, u8 *tile)
{
    if (flags == 0) {
        return;
    }

    u8 *buf = Heap_AllocFromHeapAtEnd(bgConfig->heapID, 64);

    if (flags & 1) {
        for (u8 i = 0; i < 8; i++) {
            for (u8 j = 0; j < 8; j++) {
                buf[i * 8 + j] = tile[i * 8 + (7 - j)];
            }
        }

        memcpy(tile, buf, 64);
    }

    if (flags & 2) {
        for (u8 i = 0; i < 8; i++) {
            memcpy(&buf[i * 8], &tile[(7 - i) * 8], 8);
        }

        memcpy(tile, buf, 64);
    }

    Heap_FreeToHeap(buf);
}
