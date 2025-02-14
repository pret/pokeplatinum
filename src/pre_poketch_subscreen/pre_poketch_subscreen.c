#include "pre_poketch_subscreen/pre_poketch_subscreen.h"

#include "constants/heap.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "narc.h"

#define PRE_POKETCH_DISPLAY_HEAP_SIZE    0x18000
#define PRE_POKETCH_DISPLAY_NARC_HEAP_ID 8

#define PRE_POKETCH_DISPLAY_NARC_TILES_IDX   10
#define PRE_POKETCH_DISPLAY_NARC_TILEMAP_IDX 11
#define PRE_POKETCH_DISPLAY_NARC_PALETTE_IDX 12

void PrePoketchSubscreen_Init(BgConfig *bgConfig)
{
    static const BgTemplate template = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0x6000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0,
        0,
        0,
        0
    };

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_POKETCH_APP, PRE_POKETCH_DISPLAY_HEAP_SIZE);

    GXS_SetGraphicsMode(GX_BGMODE_0);
    GX_SetBankForSubBG(GX_VRAM_SUB_BG_32_H);
    GX_SetBankForSubOBJ(GX_VRAM_SUB_OBJ_16_I);
    GXS_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &template, BG_TYPE_STATIC);

    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__POKETCH, PRE_POKETCH_DISPLAY_NARC_HEAP_ID);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, PRE_POKETCH_DISPLAY_NARC_TILES_IDX, bgConfig, BG_LAYER_SUB_0, 0, 0, TRUE, PRE_POKETCH_DISPLAY_NARC_HEAP_ID);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, PRE_POKETCH_DISPLAY_NARC_TILEMAP_IDX, bgConfig, BG_LAYER_SUB_0, 0, 0, TRUE, PRE_POKETCH_DISPLAY_NARC_HEAP_ID);
    Graphics_LoadPaletteFromOpenNARC(narc, PRE_POKETCH_DISPLAY_NARC_PALETTE_IDX, PAL_LOAD_SUB_BG, 0, 0x20, PRE_POKETCH_DISPLAY_NARC_HEAP_ID);
    NARC_dtor(narc);

    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisiblePlane(GX_PLANEMASK_BG0);
}

void PrePoketchSubscreen_Exit(BgConfig *bgConfig)
{
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Heap_Destroy(PRE_POKETCH_DISPLAY_NARC_HEAP_ID);
}

BOOL PrePoketchSubscreen_IsDone(BgConfig *bgConfig)
{
    return TRUE;
}
