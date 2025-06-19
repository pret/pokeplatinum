#include "overlay097/ov97_02232054.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02099F80.h"

#include "overlay097/mystery_gift_app.h"
#include "savedata/save_table.h"

#include "bg_window.h"
#include "gx_layers.h"
#include "mystery_gift.h"
#include "savedata.h"

void ov97_02232054(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_B,
        GX_VRAM_TEXPLTT_01_FG
    };

    GXLayers_SetBanks(&v0);
}

void ov97_02232074(BgConfig *param0)
{
    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        SetAllGraphicsModes(&v0);
    }

    {
        BgTemplate v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 0, &v1, 0);
        Bg_ClearTilemap(param0, 0);
    }

    {
        BgTemplate v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 1, &v2, 0);
        Bg_ClearTilemap(param0, 1);
    }

    {
        BgTemplate v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_23,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 2, &v3, 0);
        Bg_ClearTilemap(param0, 2);
    }

    {
        BgTemplate v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_23,
            3,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 3, &v4, 0);
        Bg_ClearTilemap(param0, 3);
    }
}

int ov97_02232148(SaveData *saveData, MysteryGiftEventData *param1)
{
    u32 v0;
    MysteryGift *v1 = SaveData_GetMysteryGift(saveData);

    v0 = param1->header.validGames;

    if ((v0 == 0xFFFFFFFF) && (param1->header.id == 0xFFFF)) {
        MysteryGift_Init(v1);
        SaveData_SaveBlock(saveData, 0);

        OS_ResetSystem(0);
    }

    if ((param1->header.id >= 100) && (param1->header.id <= 152)) {
        v0 |= (1 << 12) + (1 << 7) + (1 << 8);
    }

    if (v0 == 0) {
        v0 = ~0;
    }

    if ((v0 & (1 << GAME_VERSION)) == 0) {
        return 1;
    }

    if ((param1->header.unique == 1) && (MysteryGift_GetWcIDReceived(v1, param1->header.id) == 1)) {
        return 2;
    }

    if ((param1->header.hasWonderCard == 1) && (MysteryGift_CheckFreeWcSlotExists(v1) == 0)) {
        return 4;
    }

    if (MysteryGift_CheckFreePgtSlotExists(v1) == 0) {
        return 3;
    }

    if (param1->header.fromSharing == 1) {
        return 5;
    }

    return 0;
}
