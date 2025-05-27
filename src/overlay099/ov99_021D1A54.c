#include "overlay099/ov99_021D1A54.h"

#include <nitro.h>
#include <string.h>

#include "constants/screen.h"

#include "overlay099/ov99_021D0D80.h"
#include "overlay099/ov99_021D2C08.h"
#include "overlay099/ov99_021D2E28.h"
#include "overlay099/ov99_021D340C.h"
#include "overlay099/ov99_021D3A40.h"
#include "overlay099/ov99_021D3C18.h"
#include "overlay099/ov99_021D3DE0.h"
#include "overlay099/ov99_021D3E78.h"
#include "overlay099/ov99_021D4134.h"
#include "overlay099/struct_ov99_021D2CB0.h"
#include "overlay099/struct_ov99_021D2CB0_sub2.h"
#include "overlay099/struct_ov99_021D3A40.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "easy3d_object.h"
#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "palette.h"
#include "screen_fade.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "system.h"
#include "text.h"

typedef void (*UnkFuncPtr_ov99_021D4A04)(UnkStruct_ov99_021D2CB0 *);
typedef BOOL (*UnkFuncPtr_ov99_021D4A04_1)(UnkStruct_ov99_021D2CB0 *, UnkStruct_ov99_021D3A40 *);

typedef struct {
    UnkFuncPtr_ov99_021D4A04 unk_00;
    UnkFuncPtr_ov99_021D4A04 unk_04;
    UnkFuncPtr_ov99_021D4A04 unk_08;
    UnkFuncPtr_ov99_021D4A04 unk_0C;
    UnkFuncPtr_ov99_021D4A04 unk_10;
    UnkFuncPtr_ov99_021D4A04 unk_14;
    UnkFuncPtr_ov99_021D4A04 unk_18;
    UnkFuncPtr_ov99_021D4A04 unk_1C;
    UnkFuncPtr_ov99_021D4A04 unk_20;
    UnkFuncPtr_ov99_021D4A04 unk_24;
    UnkFuncPtr_ov99_021D4A04 unk_28;
    UnkFuncPtr_ov99_021D4A04 unk_2C;
    UnkFuncPtr_ov99_021D4A04_1 unk_30;
} UnkStruct_ov99_021D4A04;

static void ov99_021D1A54(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1B98(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1BC4(UnkStruct_ov99_021D2CB0 *param0, ManagedSprite **param1, ManagedSprite **param2);
static void ov99_021D1C9C(UnkStruct_ov99_021D2CB0 *param0, ManagedSprite *param1, ManagedSprite *param2);
static void ov99_021D1D68(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1E6C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1E90(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1E98(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1EA0(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1EB4(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1EC8(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1F44(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1F70(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1FB8(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1FD8(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D20F8(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D211C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D214C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2158(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D215C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2160(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2164(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2168(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D216C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2170(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2174(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2178(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D217C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2180(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D22AC(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D22D0(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D22D8(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D22E0(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D22F4(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2308(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2384(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D23B0(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D23F0(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2410(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D24CC(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D24F0(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2640(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2664(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D26E4(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2714(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D275C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2780(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D27FC(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2828(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D288C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D28AC(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A14(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A38(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A70(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A84(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A88(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A8C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A90(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A94(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A98(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A9C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2AA0(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2AA4(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2AA8(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2AAC(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2BBC(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2BE0(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2BE4(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2BE8(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2BEC(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2BF0(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2BF4(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2BF8(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2BFC(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2C00(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2C04(UnkStruct_ov99_021D2CB0 *param0);

static const UnkStruct_ov99_021D4A04 Unk_ov99_021D4A04[] = {
    {
        ov99_021D1D68,
        ov99_021D1FD8,
        ov99_021D1E90,
        ov99_021D1EC8,
        ov99_021D1EA0,
        ov99_021D1F70,
        ov99_021D1E6C,
        ov99_021D20F8,
        ov99_021D1E98,
        ov99_021D1F44,
        ov99_021D1EB4,
        ov99_021D1FB8,
        ov99_021D2C08,
    },
    {
        ov99_021D211C,
        ov99_021D2178,
        ov99_021D2158,
        ov99_021D2168,
        ov99_021D2160,
        ov99_021D2170,
        ov99_021D214C,
        ov99_021D217C,
        ov99_021D215C,
        ov99_021D216C,
        ov99_021D2164,
        ov99_021D2174,
        ov99_021D3A40,
    },
    {
        ov99_021D2180,
        ov99_021D2410,
        ov99_021D22D0,
        ov99_021D2308,
        ov99_021D22E0,
        ov99_021D23B0,
        ov99_021D22AC,
        ov99_021D24CC,
        ov99_021D22D8,
        ov99_021D2384,
        ov99_021D22F4,
        ov99_021D23F0,
        ov99_021D2E28,
    },
    {
        ov99_021D211C,
        ov99_021D2178,
        ov99_021D2158,
        ov99_021D2168,
        ov99_021D2160,
        ov99_021D2170,
        ov99_021D214C,
        ov99_021D217C,
        ov99_021D215C,
        ov99_021D216C,
        ov99_021D2164,
        ov99_021D2174,
        ov99_021D3B2C,
    },
    {
        ov99_021D24F0,
        ov99_021D28AC,
        ov99_021D2664,
        ov99_021D2780,
        ov99_021D2714,
        ov99_021D2828,
        ov99_021D2640,
        ov99_021D2A14,
        ov99_021D26E4,
        ov99_021D27FC,
        ov99_021D275C,
        ov99_021D288C,
        ov99_021D340C,
    },
    {
        ov99_021D2A38,
        ov99_021D2AA4,
        ov99_021D2A84,
        ov99_021D2A94,
        ov99_021D2A8C,
        ov99_021D2A9C,
        ov99_021D2A70,
        ov99_021D2AA8,
        ov99_021D2A88,
        ov99_021D2A98,
        ov99_021D2A90,
        ov99_021D2AA0,
        ov99_021D3C18,
    },
    {
        ov99_021D2AAC,
        ov99_021D2C00,
        ov99_021D2BE0,
        ov99_021D2BF0,
        ov99_021D2BE8,
        ov99_021D2BF8,
        ov99_021D2BBC,
        ov99_021D2C04,
        ov99_021D2BE4,
        ov99_021D2BF4,
        ov99_021D2BEC,
        ov99_021D2BFC,
        ov99_021D3DE0,
    },
};

static const SpriteTemplate Unk_ov99_021D499C = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x96,
    0x1,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2713, 0x2713, 0x2713, 0x2713, 0xffffffff, 0xffffffff },
    0x2,
    0x0
};

static const SpriteTemplate Unk_ov99_021D4968 = {
    0x0,
    0x0,
    0x0,
    0x1,
    0x96,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2714, 0x2714, 0x2714, 0x2714, 0xffffffff, 0xffffffff },
    0x2,
    0x0
};

static const SpriteTemplate Unk_ov99_021D4934 = {
    0x0,
    0x0,
    0x0,
    0x2,
    0x96,
    0x2,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2715, 0x2715, 0x2715, 0x2715, 0xffffffff, 0xffffffff },
    0x2,
    0x0
};

static const SpriteTemplate Unk_ov99_021D49D0 = {
    0x0,
    0x0,
    0x0,
    0x3,
    0xC8,
    0x3,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x2712, 0x2712, 0x2712, 0x2712, 0xffffffff, 0xffffffff },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov99_021D48CC = {
    0x0,
    0x0,
    0x0,
    0x3,
    0xC8,
    0x3,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2715, 0x2715, 0x2715, 0x2715, 0xffffffff, 0xffffffff },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov99_021D4900 = {
    0xC0,
    0xA0,
    0x0,
    0x0,
    0x33,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x2711, 0x2711, 0x2711, 0x2711, 0xffffffff, 0xffffffff },
    0x1,
    0x1
};

static void ov99_021D1A54(UnkStruct_ov99_021D2CB0 *param0)
{
    u8 v0;

    if (param0->unk_00->unk_00 == 0) {
        v0 = SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_0C, PLTTBUF_MAIN_OBJ, param0->unk_18, param0->unk_1C, param0->unk_10F8, 31, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 10001);
        SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 28, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 10001);
        SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 29, FALSE, 10001);
        SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 30, FALSE, 10001);
    } else {
        v0 = SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_0C, PLTTBUF_MAIN_OBJ, param0->unk_18, param0->unk_1C, param0->unk_10F8, 36, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 10001);
        SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 33, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 10001);
        SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 34, FALSE, 10001);
        SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 35, FALSE, 10001);
    }

    switch (param0->unk_1101) {
    case 0:
        PaletteData_Blend(param0->unk_0C, 2, v0 * 16, 16, 4, GX_RGB(28, 12, 6));
        break;
    case 2:
        break;
    case 4:
        PaletteData_Blend(param0->unk_0C, 2, v0 * 16, 16, 4, GX_RGB(11, 11, 16));
        break;
    }
}

static void ov99_021D1B98(UnkStruct_ov99_021D2CB0 *param0)
{
    SpriteManager_UnloadCharObjById(param0->unk_1C, 10001);
    SpriteManager_UnloadPlttObjById(param0->unk_1C, 10001);
    SpriteManager_UnloadCellObjById(param0->unk_1C, 10001);
    SpriteManager_UnloadAnimObjById(param0->unk_1C, 10001);
}

static void ov99_021D1BC4(UnkStruct_ov99_021D2CB0 *param0, ManagedSprite **param1, ManagedSprite **param2)
{
    ManagedSprite *v0;
    ManagedSprite *v1;
    SpriteTemplate v2 = Unk_ov99_021D4900;

    MI_CpuClear8(&param0->unk_1114, sizeof(UnkStruct_ov99_021D2CB0_sub2));

    v0 = SpriteSystem_NewSprite(param0->unk_18, param0->unk_1C, &v2);

    ManagedSprite_SetAnimateFlag(v0, 1);
    Sprite_TickFrame(v0->sprite);

    *param1 = v0;
    v2.priority = 60;
    v1 = SpriteSystem_NewSprite(param0->unk_18, param0->unk_1C, &v2);

    ManagedSprite_SetAnim(v1, 2);
    ManagedSprite_SetAnimateFlag(v1, 1);
    Sprite_TickFrame(v1->sprite);

    *param2 = v1;

    {
        void *v3;
        NNSG2dCharacterData *v4;
        u32 v5;

        GF_ASSERT(param0->unk_10F4 == NULL);

        if (param0->unk_00->unk_00 == 0) {
            v5 = 27;
        } else {
            v5 = 32;
        }

        param0->unk_10F4 = Heap_AllocFromHeap(HEAP_ID_75, (0x20 * 8));
        v3 = Graphics_GetCharDataFromOpenNARC(param0->unk_10F8, v5, 0, &v4, HEAP_ID_75);

        MI_CpuCopy32(v4->pRawData, param0->unk_10F4, (0x20 * 8));
        Heap_FreeToHeap(v3);
        DC_FlushRange(param0->unk_10F4, (0x20 * 8));
    }
}

static void ov99_021D1C9C(UnkStruct_ov99_021D2CB0 *param0, ManagedSprite *param1, ManagedSprite *param2)
{
    Sprite_DeleteAndFreeResources(param1);
    Sprite_DeleteAndFreeResources(param2);

    if (param0->unk_10F4 != NULL) {
        Heap_FreeToHeap(param0->unk_10F4);
        param0->unk_10F4 = NULL;
    }
}

void ov99_021D1CC8(UnkStruct_ov99_021D2CB0 *param0, int param1)
{
    const UnkStruct_ov99_021D4A04 *v0 = &Unk_ov99_021D4A04[param1];

    v0->unk_00(param0);
    v0->unk_04(param0);
    v0->unk_08(param0);
    v0->unk_0C(param0);
    v0->unk_10(param0);
    v0->unk_14(param0);
}

void ov99_021D1CFC(UnkStruct_ov99_021D2CB0 *param0, int param1)
{
    const UnkStruct_ov99_021D4A04 *v0 = &Unk_ov99_021D4A04[param1];

    v0->unk_18(param0);
    v0->unk_1C(param0);
    v0->unk_20(param0);
    v0->unk_24(param0);
    v0->unk_28(param0);
    v0->unk_2C(param0);
}

BOOL ov99_021D1D30(UnkStruct_ov99_021D2CB0 *param0, int param1)
{
    BOOL v0 = Unk_ov99_021D4A04[param1].unk_30(param0, &param0->unk_FA4);

    if (v0 == 1) {
        MI_CpuClear8(&param0->unk_FA4, sizeof(UnkStruct_ov99_021D3A40));
    }

    return v0;
}

static void ov99_021D1D68(UnkStruct_ov99_021D2CB0 *param0)
{
    BgConfig *v0 = param0->unk_08;

    PaletteData_LoadBufferFromFileStart(param0->unk_0C, 127, 18, 75, 0, 0, 0);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_10F8, 9, param0->unk_08, 2, 0, 0, 0, HEAP_ID_75);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_10F8, 3, param0->unk_08, 2, 0, 0, 0, HEAP_ID_75);

    PaletteData_LoadBufferFromFileStart(param0->unk_0C, 127, 21, 75, 1, 0, 0);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_10F8, 12, param0->unk_08, 7, 0, 0, 0, HEAP_ID_75);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_10F8, 6, param0->unk_08, 7, 0, 0, 0, HEAP_ID_75);

    Bg_SetOffset(v0, 2, 0, 0);
    Bg_SetOffset(v0, 2, 3, 0);
    Bg_SetOffset(v0, 7, 0, 0);
    Bg_SetOffset(v0, 7, 3, 0);

    Bg_ToggleLayer(2, 1);
    Bg_ToggleLayer(7, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

    Bg_ScheduleTilemapTransfer(param0->unk_08, 2);
    Bg_ScheduleTilemapTransfer(param0->unk_08, 7);
}

static void ov99_021D1E6C(UnkStruct_ov99_021D2CB0 *param0)
{
    Bg_ToggleLayer(2, 0);
    Bg_ToggleLayer(7, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
}

static void ov99_021D1E90(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1A54(param0);
}

static void ov99_021D1E98(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1B98(param0);
}

static void ov99_021D1EA0(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1BC4(param0, &param0->unk_10E0[0], &param0->unk_10E0[1]);
}

static void ov99_021D1EB4(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1C9C(param0, param0->unk_10E0[0], param0->unk_10E0[1]);
}

static void ov99_021D1EC8(UnkStruct_ov99_021D2CB0 *param0)
{
    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_0C, PLTTBUF_SUB_OBJ, param0->unk_18, param0->unk_1C, param0->unk_10F8, 15, FALSE, 10, NNS_G2D_VRAM_TYPE_2DSUB, 10003);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 0, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 10003);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 1, FALSE, 10003);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 2, FALSE, 10003);
}

static void ov99_021D1F44(UnkStruct_ov99_021D2CB0 *param0)
{
    SpriteManager_UnloadCharObjById(param0->unk_1C, 10003);
    SpriteManager_UnloadPlttObjById(param0->unk_1C, 10003);
    SpriteManager_UnloadCellObjById(param0->unk_1C, 10003);
    SpriteManager_UnloadAnimObjById(param0->unk_1C, 10003);
}

static void ov99_021D1F70(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    for (v0 = 2; v0 <= 4; v0++) {
        param0->unk_10E0[v0] = SpriteSystem_NewSprite(param0->unk_18, param0->unk_1C, &Unk_ov99_021D499C);

        ManagedSprite_SetAffineOverwriteMode(param0->unk_10E0[v0], AFFINE_OVERWRITE_MODE_DOUBLE);
        ManagedSprite_SetAnimateFlag(param0->unk_10E0[v0], TRUE);
        Sprite_TickFrame(param0->unk_10E0[v0]->sprite);
    }
}

static void ov99_021D1FB8(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    for (v0 = 2; v0 <= 4; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_10E0[v0]);
    }
}

static void ov99_021D1FD8(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    Easy3DModel_LoadFrom(&param0->unk_2C[0], param0->unk_10F8, 80, HEAP_ID_75);

    NNS_G3dMdlUseGlbDiff(param0->unk_2C[0].model);
    NNS_G3dMdlUseGlbAmb(param0->unk_2C[0].model);
    NNS_G3dMdlUseGlbSpec(param0->unk_2C[0].model);
    NNS_G3dMdlUseGlbEmi(param0->unk_2C[0].model);

    Easy3DModel_LoadFrom(&param0->unk_2C[1], param0->unk_10F8, 81, HEAP_ID_75);

    NNS_G3dMdlUseGlbDiff(param0->unk_2C[1].model);
    NNS_G3dMdlUseGlbAmb(param0->unk_2C[1].model);
    NNS_G3dMdlUseGlbSpec(param0->unk_2C[1].model);
    NNS_G3dMdlUseGlbEmi(param0->unk_2C[1].model);

    for (v0 = 0; v0 < 16; v0++) {
        Easy3DObject_Init(&param0->unk_6C[0][v0], &param0->unk_2C[0]);
        Easy3DObject_SetPosition(&param0->unk_6C[0][v0], 0, 0, 0);
        Easy3DObject_SetScale(&param0->unk_6C[0][v0], FX32_ONE, FX32_ONE, FX32_ONE);
        Easy3DObject_SetVisibility(&param0->unk_6C[0][v0], 1);
    }

    for (v0 = 0; v0 < 16; v0++) {
        Easy3DObject_Init(&param0->unk_6C[1][v0], &param0->unk_2C[1]);
        Easy3DObject_SetPosition(&param0->unk_6C[1][v0], 0, 0, 0);
        Easy3DObject_SetScale(&param0->unk_6C[1][v0], FX32_ONE, FX32_ONE, FX32_ONE);
        Easy3DObject_SetVisibility(&param0->unk_6C[1][v0], 1);
    }

    param0->unk_1104 = 2;

    ov99_021D4134(param0, 0);
    ov99_021D4170(param0);

    param0->unk_1103 = 1;
}

static void ov99_021D20F8(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        Easy3DModel_Release(&param0->unk_2C[v0]);
    }

    param0->unk_1103 = 0;
}

static void ov99_021D211C(UnkStruct_ov99_021D2CB0 *param0)
{
    BgConfig *v0 = param0->unk_08;

    ov99_021D439C(param0, param0->unk_1105, 3, 0);
    param0->unk_1105++;

    Bg_ToggleLayer(3, 1);
    Bg_ScheduleTilemapTransfer(param0->unk_08, 2);
}

static void ov99_021D214C(UnkStruct_ov99_021D2CB0 *param0)
{
    Bg_ToggleLayer(3, 0);
}

static void ov99_021D2158(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D215C(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2160(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2164(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2168(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D216C(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2170(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2174(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2178(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D217C(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2180(UnkStruct_ov99_021D2CB0 *param0)
{
    BgConfig *v0 = param0->unk_08;

    PaletteData_LoadBufferFromFileStart(param0->unk_0C, 127, 19, 75, 0, 0, 0);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_10F8, 10, param0->unk_08, 2, 0, 0, 0, HEAP_ID_75);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_10F8, 4, param0->unk_08, 2, 0, 0, 0, HEAP_ID_75);

    PaletteData_LoadBufferFromFileStart(param0->unk_0C, 127, 22, 75, 1, 0, 0);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_10F8, 13, param0->unk_08, 7, 0, 0, 0, HEAP_ID_75);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_10F8, 7, param0->unk_08, 7, 0, 0, 0, HEAP_ID_75);

    {
        NNSG2dPaletteData *v1;
        void *v2;

        v2 = Graphics_GetPlttDataFromOpenNARC(param0->unk_10F8, 16, &v1, HEAP_ID_75);
        MI_CpuCopy16(v1->pRawData, param0->unk_FA4.unk_08_val2.unk_08, 0x20 * 4);
        Heap_FreeToHeap(v2);
    }

    Bg_SetOffset(v0, 2, 0, 0);
    Bg_SetOffset(v0, 2, 3, 0);
    Bg_SetOffset(v0, 7, 0, 0);
    Bg_SetOffset(v0, 7, 3, 0);

    Bg_ToggleLayer(2, 1);
    Bg_ToggleLayer(7, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

    Bg_ScheduleTilemapTransfer(param0->unk_08, 2);
    Bg_ScheduleTilemapTransfer(param0->unk_08, 7);
}

static void ov99_021D22AC(UnkStruct_ov99_021D2CB0 *param0)
{
    Bg_ToggleLayer(2, 0);
    Bg_ToggleLayer(7, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
}

static void ov99_021D22D0(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1A54(param0);
}

static void ov99_021D22D8(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1B98(param0);
}

static void ov99_021D22E0(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1BC4(param0, &param0->unk_10E0[0], &param0->unk_10E0[1]);
}

static void ov99_021D22F4(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1C9C(param0, param0->unk_10E0[0], param0->unk_10E0[1]);
}

static void ov99_021D2308(UnkStruct_ov99_021D2CB0 *param0)
{
    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_0C, PLTTBUF_SUB_OBJ, param0->unk_18, param0->unk_1C, param0->unk_10F8, 15, FALSE, 10, NNS_G2D_VRAM_TYPE_2DSUB, 10004);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 0, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 10004);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 1, FALSE, 10004);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 2, FALSE, 10004);
}

static void ov99_021D2384(UnkStruct_ov99_021D2CB0 *param0)
{
    SpriteManager_UnloadCharObjById(param0->unk_1C, 10004);
    SpriteManager_UnloadPlttObjById(param0->unk_1C, 10004);
    SpriteManager_UnloadCellObjById(param0->unk_1C, 10004);
    SpriteManager_UnloadAnimObjById(param0->unk_1C, 10004);
}

static void ov99_021D23B0(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    for (v0 = 2; v0 <= 3; v0++) {
        param0->unk_10E0[v0] = SpriteSystem_NewSprite(param0->unk_18, param0->unk_1C, &Unk_ov99_021D4968);
        ManagedSprite_SetAnimateFlag(param0->unk_10E0[v0], 1);
        Sprite_TickFrame(param0->unk_10E0[v0]->sprite);
    }
}

static void ov99_021D23F0(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    for (v0 = 2; v0 <= 3; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_10E0[v0]);
    }
}

static void ov99_021D2410(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    Easy3DModel_LoadFrom(&param0->unk_2C[0], param0->unk_10F8, 78, HEAP_ID_75);

    NNS_G3dMdlUseGlbDiff(param0->unk_2C[0].model);
    NNS_G3dMdlUseGlbAmb(param0->unk_2C[0].model);
    NNS_G3dMdlUseGlbSpec(param0->unk_2C[0].model);
    NNS_G3dMdlUseGlbEmi(param0->unk_2C[0].model);

    for (v0 = 0; v0 < 16; v0++) {
        Easy3DObject_Init(&param0->unk_6C[0][v0], &param0->unk_2C[0]);
        Easy3DObject_SetPosition(&param0->unk_6C[0][v0], 0, 0, 0);
        Easy3DObject_SetScale(&param0->unk_6C[0][v0], FX32_ONE, FX32_ONE, FX32_ONE);
        Easy3DObject_SetVisibility(&param0->unk_6C[0][v0], 1);
    }

    for (v0 = 0; v0 < 16; v0++) {
        Easy3DObject_SetVisibility(&param0->unk_6C[1][v0], 0);
    }

    param0->unk_1104 = 1;

    ov99_021D4134(param0, 1);
    ov99_021D4170(param0);

    param0->unk_1103 = 1;
}

static void ov99_021D24CC(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        Easy3DModel_Release(&param0->unk_2C[v0]);
    }

    param0->unk_1103 = 0;
}

static void ov99_021D24F0(UnkStruct_ov99_021D2CB0 *param0)
{
    BgConfig *v0 = param0->unk_08;

    PaletteData_LoadBufferFromFileStart(param0->unk_0C, 127, 20, 75, 0, 0, 0);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_10F8, 11, param0->unk_08, 2, 0, 0, 0, HEAP_ID_75);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_10F8, 5, param0->unk_08, 2, 0, 0, 0, HEAP_ID_75);

    PaletteData_LoadBufferFromFileStart(param0->unk_0C, 127, 23, 75, 1, 0, 0);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_10F8, 14, param0->unk_08, 7, 0, 0, 0, HEAP_ID_75);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_10F8, 8, param0->unk_08, 7, 0, 0, 0, HEAP_ID_75);

    {
        NNSG2dPaletteData *v1;
        void *v2;

        v2 = Graphics_GetPlttDataFromOpenNARC(param0->unk_10F8, 17, &v1, HEAP_ID_75);
        MI_CpuCopy16(v1->pRawData, param0->unk_FA4.unk_08_val3.unk_08, 0x20 * 8);
        Heap_FreeToHeap(v2);

        PaletteData_LoadBuffer(param0->unk_0C, param0->unk_FA4.unk_08_val3.unk_08, 0, 16 * 1, 0x20);
        PaletteData_LoadBuffer(param0->unk_0C, param0->unk_FA4.unk_08_val3.unk_08, 1, 16 * 1, 0x20);
    }

    Bg_SetOffset(v0, 2, 0, 0);
    Bg_SetOffset(v0, 2, 3, 0);
    Bg_SetOffset(v0, 7, 0, 0);
    Bg_SetOffset(v0, 7, 3, 0);

    Bg_ToggleLayer(2, 1);
    Bg_ToggleLayer(7, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

    Bg_ScheduleTilemapTransfer(param0->unk_08, 2);
    Bg_ScheduleTilemapTransfer(param0->unk_08, 7);
}

static void ov99_021D2640(UnkStruct_ov99_021D2CB0 *param0)
{
    Bg_ToggleLayer(2, 0);
    Bg_ToggleLayer(7, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
}

static void ov99_021D2664(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1A54(param0);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_0C, PLTTBUF_MAIN_OBJ, param0->unk_18, param0->unk_1C, param0->unk_10F8, 15, FALSE, 4, NNS_G2D_VRAM_TYPE_2DMAIN, 10002);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 0, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 10002);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 1, FALSE, 10002);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 2, FALSE, 10002);
}

static void ov99_021D26E4(UnkStruct_ov99_021D2CB0 *param0)
{
    SpriteManager_UnloadCharObjById(param0->unk_1C, 10002);
    SpriteManager_UnloadPlttObjById(param0->unk_1C, 10002);
    SpriteManager_UnloadCellObjById(param0->unk_1C, 10002);
    SpriteManager_UnloadAnimObjById(param0->unk_1C, 10002);

    ov99_021D1B98(param0);
}

static void ov99_021D2714(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1BC4(param0, &param0->unk_10E0[0], &param0->unk_10E0[1]);

    param0->unk_10E0[3] = SpriteSystem_NewSprite(param0->unk_18, param0->unk_1C, &Unk_ov99_021D49D0);

    ManagedSprite_SetAnimateFlag(param0->unk_10E0[3], 1);
    ManagedSprite_SetDrawFlag(param0->unk_10E0[3], 0);
    Sprite_TickFrame(param0->unk_10E0[3]->sprite);
}

static void ov99_021D275C(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1C9C(param0, param0->unk_10E0[0], param0->unk_10E0[1]);
    Sprite_DeleteAndFreeResources(param0->unk_10E0[3]);
}

static void ov99_021D2780(UnkStruct_ov99_021D2CB0 *param0)
{
    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_0C, PLTTBUF_SUB_OBJ, param0->unk_18, param0->unk_1C, param0->unk_10F8, 15, FALSE, 10, NNS_G2D_VRAM_TYPE_2DSUB, 10005);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 0, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 10005);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 1, FALSE, 10005);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 2, FALSE, 10005);
}

static void ov99_021D27FC(UnkStruct_ov99_021D2CB0 *param0)
{
    SpriteManager_UnloadCharObjById(param0->unk_1C, 10005);
    SpriteManager_UnloadPlttObjById(param0->unk_1C, 10005);
    SpriteManager_UnloadCellObjById(param0->unk_1C, 10005);
    SpriteManager_UnloadAnimObjById(param0->unk_1C, 10005);
}

static void ov99_021D2828(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    for (v0 = 2; v0 <= 2; v0++) {
        param0->unk_10E0[v0] = SpriteSystem_NewSprite(param0->unk_18, param0->unk_1C, &Unk_ov99_021D4934);
        ManagedSprite_SetAnimateFlag(param0->unk_10E0[v0], 1);
        Sprite_TickFrame(param0->unk_10E0[v0]->sprite);
    }

    param0->unk_10E0[4] = SpriteSystem_NewSprite(param0->unk_18, param0->unk_1C, &Unk_ov99_021D48CC);

    ManagedSprite_SetAnimateFlag(param0->unk_10E0[4], 1);
    ManagedSprite_SetDrawFlag(param0->unk_10E0[4], 0);
    Sprite_TickFrame(param0->unk_10E0[4]->sprite);
}

static void ov99_021D288C(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    for (v0 = 2; v0 <= 2; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_10E0[v0]);
    }

    Sprite_DeleteAndFreeResources(param0->unk_10E0[4]);
}

static void ov99_021D28AC(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    Easy3DModel_LoadFrom(&param0->unk_2C[0], param0->unk_10F8, 82, HEAP_ID_75);

    NNS_G3dMdlUseGlbDiff(param0->unk_2C[0].model);
    NNS_G3dMdlUseGlbAmb(param0->unk_2C[0].model);
    NNS_G3dMdlUseGlbSpec(param0->unk_2C[0].model);
    NNS_G3dMdlUseGlbEmi(param0->unk_2C[0].model);

    Easy3DModel_LoadFrom(&param0->unk_2C[1], param0->unk_10F8, 83, HEAP_ID_75);

    NNS_G3dMdlUseGlbDiff(param0->unk_2C[1].model);
    NNS_G3dMdlUseGlbAmb(param0->unk_2C[1].model);
    NNS_G3dMdlUseGlbSpec(param0->unk_2C[1].model);
    NNS_G3dMdlUseGlbEmi(param0->unk_2C[1].model);

    Easy3DModel_LoadFrom(&param0->unk_2C[2], param0->unk_10F8, 84, HEAP_ID_75);

    NNS_G3dMdlUseGlbDiff(param0->unk_2C[2].model);
    NNS_G3dMdlUseGlbAmb(param0->unk_2C[2].model);
    NNS_G3dMdlUseGlbSpec(param0->unk_2C[2].model);
    NNS_G3dMdlUseGlbEmi(param0->unk_2C[2].model);

    Easy3DModel_LoadFrom(&param0->unk_2C[3], param0->unk_10F8, 79, HEAP_ID_75);

    for (v0 = 0; v0 < 16; v0++) {
        Easy3DObject_Init(&param0->unk_6C[0][v0], &param0->unk_2C[0]);

        Easy3DObject_SetPosition(&param0->unk_6C[0][v0], 0, 0, 0);
        Easy3DObject_SetScale(&param0->unk_6C[0][v0], FX32_ONE, FX32_ONE, FX32_ONE);
        Easy3DObject_SetVisibility(&param0->unk_6C[0][v0], 1);
    }

    for (v0 = 0; v0 < 16; v0++) {
        Easy3DObject_Init(&param0->unk_6C[1][v0], &param0->unk_2C[2]);

        Easy3DObject_SetPosition(&param0->unk_6C[1][v0], 0, 0, 0);
        Easy3DObject_SetScale(&param0->unk_6C[1][v0], FX32_ONE, FX32_ONE, FX32_ONE);
        Easy3DObject_SetVisibility(&param0->unk_6C[1][v0], 1);
    }

    param0->unk_1104 = 2;

    ov99_021D4134(param0, 2);
    ov99_021D4170(param0);

    param0->unk_1103 = 1;
}

static void ov99_021D2A14(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        Easy3DModel_Release(&param0->unk_2C[v0]);
    }

    param0->unk_1103 = 0;
}

static void ov99_021D2A38(UnkStruct_ov99_021D2CB0 *param0)
{
    BgConfig *v0 = param0->unk_08;

    ov99_021D12F0(param0);

    param0->unk_1105 = 0;
    ov99_021D439C(param0, param0->unk_1105, 2, 1);
    param0->unk_1105++;

    Bg_ToggleLayer(2, 1);
    Bg_ScheduleTilemapTransfer(param0->unk_08, 2);
}

static void ov99_021D2A70(UnkStruct_ov99_021D2CB0 *param0)
{
    Bg_ToggleLayer(2, 0);
    Bg_ToggleLayer(3, 0);
}

static void ov99_021D2A84(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2A88(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2A8C(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2A90(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2A94(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2A98(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2A9C(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2AA0(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2AA4(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2AA8(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2AAC(UnkStruct_ov99_021D2CB0 *param0)
{
    BgConfig *v0 = param0->unk_08;

    gSystem.whichScreenIs3D = DS_SCREEN_MAIN;

    GXLayers_SwapDisplay();
    PaletteData_FillBufferRange(param0->unk_0C, 0, 2, 0x0, 0, 1);

    {
        Strbuf *v1;
        int v2;

        param0->unk_24 = Window_New(HEAP_ID_75, 1);

        Window_Add(v0, param0->unk_24, 7, 0, 0, 32, 32, 15, 0);
        Window_FillTilemap(param0->unk_24, 15);
        Window_PutToTilemap(param0->unk_24);

        v1 = MessageLoader_GetNewStrbuf(param0->unk_20, ov99_021D4130());
        v2 = (256 - Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0)) / 2;

        Text_AddPrinterWithParamsColorAndSpacing(param0->unk_24, FONT_SYSTEM, v1, v2, 80, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), 3, 0, NULL);
        Window_LoadTiles(param0->unk_24);
        Strbuf_Free(v1);
    }

    Bg_SetOffset(v0, 7, 0, 0);
    Bg_SetOffset(v0, 7, 3, 0);
    Bg_ToggleLayer(7, 1);

    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);

    SetScreenMasterBrightness(DS_SCREEN_MAIN, BRIGHTNESS_BLACK);
    SetScreenMasterBrightness(DS_SCREEN_SUB, BRIGHTNESS_BLACK);
    BrightnessController_SetScreenBrightness(0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
    Bg_ScheduleTilemapTransfer(param0->unk_08, 7);
}

static void ov99_021D2BBC(UnkStruct_ov99_021D2CB0 *param0)
{
    Bg_ToggleLayer(7, 0);

    if (param0->unk_24 != NULL) {
        Window_Remove(param0->unk_24);
        Heap_FreeToHeap(param0->unk_24);
        param0->unk_24 = NULL;
    }
}

static void ov99_021D2BE0(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2BE4(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2BE8(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2BEC(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2BF0(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2BF4(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2BF8(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2BFC(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2C00(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2C04(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}
