#include "applications/poketch/unavailable/graphics.h"

#include "constants/heap.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "narc.h"

#include "res/graphics/poketch/poketch.naix"

void PoketchUnavailableScreen_Init(BgConfig *bgConfig)
{
    static const BgTemplate template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x6000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_POKETCH_APP, HEAP_SIZE_PRE_POKETCH_SUBSCREEN);

    GXS_SetGraphicsMode(GX_BGMODE_0);
    GX_SetBankForSubBG(GX_VRAM_SUB_BG_32_H);
    GX_SetBankForSubOBJ(GX_VRAM_SUB_OBJ_16_I);
    GXS_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &template, BG_TYPE_STATIC);

    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__POKETCH, HEAP_ID_POKETCH_APP);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, unavailable_bg_tiles_NCGR_lz, bgConfig, BG_LAYER_SUB_0, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, unavailable_NSCR_lz, bgConfig, BG_LAYER_SUB_0, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadPaletteFromOpenNARC(narc, unavailable_bg_tiles_NCLR, PAL_LOAD_SUB_BG, 0, 0x20, HEAP_ID_POKETCH_APP);
    NARC_dtor(narc);

    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisiblePlane(GX_PLANEMASK_BG0);
}

void PoketchUnavailableScreen_Exit(BgConfig *bgConfig)
{
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Heap_Destroy(HEAP_ID_POKETCH_APP);
}

BOOL PoketchUnavailableScreen_IsDone(BgConfig *bgConfig)
{
    return TRUE;
}
