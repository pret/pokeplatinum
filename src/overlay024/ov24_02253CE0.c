#include "overlay024/ov24_02253CE0.h"

#include "constants/heap.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "narc.h"

void ov24_02253CE0(BgConfig *param0)
{
    static const BgTemplate v0 = {
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

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_POKETCH_APP, 0x18000);

    GXS_SetGraphicsMode(GX_BGMODE_0);
#ifdef SDK_ARM9
    GX_SetBankForSubBG(GX_VRAM_SUB_BG_32_H);
    GX_SetBankForSubOBJ(GX_VRAM_SUB_OBJ_16_I);
#endif // SDK_ARM9
    GXS_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);

    Bg_InitFromTemplate(param0, 4, &v0, 0);

    {
        NARC *v1;

        v1 = NARC_ctor(NARC_INDEX_GRAPHIC__POKETCH, 8);

        Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 10, param0, 4, 0, 0, 1, 8);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 11, param0, 4, 0, 0, 1, 8);
        Graphics_LoadPaletteFromOpenNARC(v1, 12, 4, 0, 0x20, 8);
        NARC_dtor(v1);
    }

    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisiblePlane(GX_PLANEMASK_BG0);
}

void ov24_02253DA4(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, 4);
    Heap_Destroy(8);
}

BOOL ov24_02253DB4(BgConfig *param0)
{
    return 1;
}
