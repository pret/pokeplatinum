#include "overlay022/ov22_02255094.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"

#include "struct_decls/struct_02015128_decl.h"
#include "struct_decls/struct_020151A4_decl.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay022/struct_ov22_022550D4.h"
#include "overlay022/struct_ov22_022557A0.h"
#include "overlay022/struct_ov22_02255800.h"
#include "overlay022/struct_ov22_02255CB8.h"
#include "overlay022/struct_ov22_0225A0E4.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "pltt_transfer.h"
#include "pokemon_sprite.h"
#include "render_oam.h"
#include "resource_collection.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "system.h"
#include "unk_02015064.h"
#include "unk_0202419C.h"

static void ov22_02255634(void);
static void ov22_02255654(void);
static void ov22_022556DC(void);
static void ov22_0225572C(void);
static void ov22_02255738(void);
static void ov22_02255748(UnkStruct_ov22_0225A0E4 *param0, const UnkStruct_ov22_022550D4 *param1);
static void ov22_02255784(UnkStruct_ov22_0225A0E4 *param0);
static void ov22_02255794(UnkStruct_ov22_0225A0E4 *param0);
static void ov22_02255C24(UnkStruct_ov22_0225A0E4 *param0, int heapID, int param2, int param3);
static void ov22_02255C90(UnkStruct_ov22_0225A0E4 *param0);
static void ov22_02255BF4(UnkStruct_ov22_0225A0E4 *param0, int heapID);
static void ov22_02255C14(UnkStruct_ov22_0225A0E4 *param0);
static void ov22_022559F8(UnkStruct_ov22_0225A0E4 *param0);
static void ov22_02255A98(UnkStruct_ov22_0225A0E4 *param0);
static void ov22_02255AC0(UnkStruct_ov22_0225A0E4 *param0);
static void ov22_022559B4(UnkStruct_ov22_0225A0E4 *param0);
static void ov22_022559E0(UnkStruct_ov22_0225A0E4 *param0);
static void ov22_022557A0(UnkStruct_ov22_0225A0E4 *param0, UnkStruct_ov22_022557A0 *param1, int param2);
static void ov22_02255800(UnkStruct_ov22_0225A0E4 *param0, UnkStruct_ov22_02255800 *param1, int param2);
static void ov22_02255860(UnkStruct_ov22_0225A0E4 *param0);
static void ov22_02255984(UnkStruct_ov22_0225A0E4 *param0);
static void ov22_02255CB8(UnkStruct_ov22_02255CB8 *param0, int param1, int param2, int heapID);
static void ov22_02255D0C(UnkStruct_ov22_02255CB8 *param0);
static void ov22_02255ACC(UnkStruct_ov22_0225A0E4 *param0, UnkStruct_ov22_02255CB8 *param1);
static void ov22_02255B50(UnkStruct_ov22_0225A0E4 *param0, UnkStruct_ov22_02255CB8 *param1);

void ov22_02255094(void)
{
    ov22_02255634();
    ov22_02255654();
    ov22_022556DC();

    gSystem.whichScreenIs3D = DS_SCREEN_SUB;

    GXLayers_SwapDisplay();
}

void ov22_022550B4(void)
{
    gSystem.whichScreenIs3D = DS_SCREEN_MAIN;

    GXLayers_SwapDisplay();
    ov22_02255738();
    ov22_0225572C();

    GX_ResetBankForTex();
}

void ov22_022550D4(UnkStruct_ov22_0225A0E4 *param0)
{
    UnkStruct_ov22_022550D4 v0 = {
        .unk_00 = 718,
        .unk_04 = 118,
        .unk_08 = 19,
        .heapID = HEAP_ID_14
    };

    param0->unk_5C = NARC_ctor(NARC_INDEX_GRAPHIC__IMAGECLIP, HEAP_ID_14);

    ov22_02255748(param0, &v0);
    ov22_02255C24(param0, HEAP_ID_14, 0x2800, 0x20);
    ov22_022559B4(param0);
    ov22_02255BF4(param0, HEAP_ID_13);
    ov22_022559F8(param0);

    param0->unk_40 = BgConfig_New(HEAP_ID_14);

    ov22_02255860(param0);
}

void ov22_02255134(UnkStruct_ov22_0225A0E4 *param0)
{
    ov22_02255C14(param0);
    ov22_02255784(param0);
    ov22_02255984(param0);

    Heap_FreeToHeap(param0->unk_40);

    ov22_02255C90(param0);
    ov22_02255A98(param0);
    ov22_022559E0(param0);

    NARC_dtor(param0->unk_5C);
    Heap_FreeToHeap(param0->unk_04);
    param0->unk_04 = NULL;
    Heap_FreeToHeap(param0->unk_10);
    param0->unk_10 = NULL;
}

void ov22_02255180(UnkStruct_ov22_0225A0E4 *param0)
{
    sub_020241B4();

    NNS_G2dSetupSoftwareSpriteCamera();

    if (param0->unk_1C) {
        ov22_02255794(param0);
    }

    if (param0->unk_2C) {
        PokemonSpriteManager_DrawSprites(param0->unk_20);
    }

    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    ov22_02255AC0(param0);
}

void ov22_022551B4(UnkStruct_ov22_0225A0E4 *param0, UnkStruct_ov22_02255CB8 *param1)
{
    ov22_022557A0(param0, param1->unk_00, param1->unk_04);
    ov22_02255800(param0, param1->unk_08, param1->unk_0C);
}

void ov22_022551D0(UnkStruct_ov22_0225A0E4 *param0)
{
    sub_0201517C(param0->unk_00);
    sub_020151EC(param0->unk_00);
}

Sprite *ov22_022551E4(UnkStruct_ov22_0225A0E4 *param0, int param1, int param2, int param3, int param4, int param5)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;

    SpriteResourcesHeader_Init(&v0, param1, param1, param1, param1, 0xffffffff, 0xffffffff, 0, 0, param0->unk_48[0], param0->unk_48[1], param0->unk_48[2], param0->unk_48[3], NULL, NULL);

    v1.list = param0->unk_44;
    v1.resourceData = &v0;
    v1.position.x = param2 << FX32_SHIFT;
    v1.position.y = param3 << FX32_SHIFT;
    v1.position.z = 0;
    v1.priority = param4;
    v1.vramType = param5;
    v1.heapID = HEAP_ID_14;

    return SpriteList_Add(&v1);
}

void ov22_02255248(UnkStruct_ov22_0225A0E4 *param0, NARC *param1, int param2, BOOL param3, int param4, int param5)
{
    SpriteResource *v0 = SpriteResourceCollection_AddTilesFrom(param0->unk_48[0], param1, param2, param3, param5, param4, HEAP_ID_14);
    SpriteTransfer_RequestCharAtEnd(v0);
}

void ov22_02255268(UnkStruct_ov22_0225A0E4 *param0, NARC *param1, int param2, BOOL param3, int param4, int param5, int param6)
{
    SpriteResource *v0 = SpriteResourceCollection_AddPaletteFrom(param0->unk_48[1], param1, param2, param3, param6, param4, param5, HEAP_ID_14);
    SpriteTransfer_RequestPlttFreeSpace(v0);
}

void ov22_0225528C(UnkStruct_ov22_0225A0E4 *param0, NARC *param1, int param2, BOOL param3, int param4)
{
    SpriteResourceCollection_AddFrom(param0->unk_48[2], param1, param2, param3, param4, 2, HEAP_ID_14);
}

void ov22_022552A8(UnkStruct_ov22_0225A0E4 *param0, NARC *param1, int param2, BOOL param3, int param4)
{
    SpriteResourceCollection_AddFrom(param0->unk_48[3], param1, param2, param3, param4, 3, HEAP_ID_14);
}

void ov22_022552C4(UnkStruct_ov22_0225A0E4 *param0, int param1)
{
    SpriteResource *v0 = SpriteResourceCollection_Find(param0->unk_48[0], param1);
    SpriteResourceCollection_Remove(param0->unk_48[0], v0);
}

void ov22_022552D8(UnkStruct_ov22_0225A0E4 *param0, int param1)
{
    SpriteResource *v0 = SpriteResourceCollection_Find(param0->unk_48[1], param1);
    SpriteResourceCollection_Remove(param0->unk_48[1], v0);
}

void ov22_022552EC(UnkStruct_ov22_0225A0E4 *param0, int param1)
{
    SpriteResource *v0 = SpriteResourceCollection_Find(param0->unk_48[2], param1);
    SpriteResourceCollection_Remove(param0->unk_48[2], v0);
}

void ov22_02255300(UnkStruct_ov22_0225A0E4 *param0, int param1)
{
    SpriteResource *v0 = SpriteResourceCollection_Find(param0->unk_48[3], param1);
    SpriteResourceCollection_Remove(param0->unk_48[3], v0);
}

void ov22_02255314(UnkStruct_ov22_0225A0E4 *param0, UnkStruct_ov22_02255CB8 *param1)
{
    ov22_02255CB8(param1, (100 + 18), (1 + 18), HEAP_ID_14);
    ov22_02255ACC(param0, param1);
    ov22_02255B50(param0, param1);
}

void ov22_02255338(UnkStruct_ov22_02255CB8 *param0)
{
    ov22_02255D0C(param0);
}

NNSG2dCharacterData *ov22_02255340(UnkStruct_ov22_0225A0E4 *param0, void *param1, int param2)
{
    ResourceCollection_Add(param0->unk_34, param1, param2);
    NNS_G2dGetUnpackedCharacterData(param1, &param0->unk_38[param2]);

    return param0->unk_38[param2];
}

void ov22_02255360(void)
{
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_SetBG0Priority(1);
    G2_SetBG1Priority(0);
}

void ov22_02255390(void)
{
    GX_SetVisibleWnd(GX_WNDMASK_W0);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 0);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_OBJ, 0);
    G2_SetWnd0Position((8 + 2), (16 + 2), (136 + 2) + (112 - (2 * 2)), (16 + 2) + (129 - (2 * 2)));
    G2_SetBG0Priority(0);
    G2_SetBG1Priority(1);
}

void ov22_022553F8(UnkStruct_ov22_0225A0E4 *param0)
{
    Bg_RunScheduledUpdates(param0->unk_40);
    PokemonSpriteManager_UpdateCharAndPltt(param0->unk_20);
    RenderOam_Transfer();
}

void ov22_02255410(UnkStruct_ov22_02255CB8 *param0, int heapID)
{
    ov22_02255CB8(param0, (100 + 18), (1 + 18), heapID);
}

int ov22_02255420(NNSG2dCharacterData *param0, int param1, int param2, int param3)
{
    u32 *v0;
    int v1, v2;
    int v3;
    int v4;

    v1 = param0->W;
    v2 = param0->H;
    v1 *= 8;
    v2 *= 8;

    if ((param1 < 0) || (param2 < 0) || (param1 >= v1) || (param2 >= v2)) {
        return 2;
    }

    v0 = param0->pRawData;
    v3 = (param2 * v1) + param1;
    v4 = (v3 % 8);
    v3 /= 8;

    if ((v0[v3] & (0xf << (v4 * 4))) == (param3 << (v4 * 4))) {
        return 1;
    }

    return 0;
}

void ov22_0225547C(UnkStruct_ov22_0225A0E4 *param0, const UnkStruct_ov22_022550D4 *param1, int heapID)
{
    ov22_02255748(param0, param1);
    ov22_02255C24(param0, heapID, 0x2800, 0x20);
    PokemonSpriteManager_SetExcludeIdentity(param0->unk_20, 1);
    ov22_02255BF4(param0, heapID);
}

void ov22_022554A8(UnkStruct_ov22_0225A0E4 *param0, BgConfig *param1, int param2)
{
    param0->unk_40 = param1;

    {
        BgTemplate v0 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        Bg_FreeTilemapBuffer(param0->unk_40, BG_LAYER_MAIN_2);
        Bg_InitFromTemplate(param0->unk_40, BG_LAYER_MAIN_2, &v0, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, param2);
        Bg_ClearTilemap(param0->unk_40, BG_LAYER_MAIN_2);
    }
}

void ov22_022554F8(UnkStruct_ov22_0225A0E4 *param0)
{
    ov22_02255C14(param0);
    ov22_02255784(param0);
    ov22_02255C90(param0);

    Heap_FreeToHeap(param0->unk_04);
    param0->unk_04 = NULL;

    Heap_FreeToHeap(param0->unk_10);
    param0->unk_10 = NULL;
}

void ov22_02255524(UnkStruct_ov22_0225A0E4 *param0)
{
    Bg_FreeTilemapBuffer(param0->unk_40, BG_LAYER_MAIN_2);
}

void ov22_02255530(UnkStruct_ov22_0225A0E4 *param0)
{
    PokemonSpriteManager_UpdateCharAndPltt(param0->unk_20);
}

void ov22_0225553C(UnkStruct_ov22_0225A0E4 *param0, int param1, int param2, u16 param3, const VecFx32 *param4)
{
    G3_Identity();
    G3_PushMtx();

    {
        NNS_G2dSetupSoftwareSpriteCamera();
        G3_Translate(param1 * FX32_ONE, param2 * FX32_ONE, 0);

        {
            G3_RotZ(FX_SinIdx(param3), FX_CosIdx(param3));
            G3_Scale(param4->x, param4->y, param4->z);
        }

        G3_Translate(-param1 * FX32_ONE, -param2 * FX32_ONE, 0);
        G3_PushMtx();

        {
            if (param0->unk_1C) {
                ov22_02255794(param0);
            }

            if (param0->unk_2C) {
                PokemonSpriteManager_DrawSprites(param0->unk_20);
            }
        }
        G3_PopMtx(1);
    }
    G3_PopMtx(1);
}

void ov22_022555D4(UnkStruct_ov22_0225A0E4 *param0, int param1)
{
    param0->unk_5C = NARC_ctor(NARC_INDEX_GRAPHIC__IMAGECLIP, HEAP_ID_14);
    ov22_022559F8(param0);
    param0->unk_40 = BgConfig_New(HEAP_ID_14);
    ov22_02255860(param0);
}

void ov22_022555FC(UnkStruct_ov22_0225A0E4 *param0)
{
    ov22_02255984(param0);
    Heap_FreeToHeap(param0->unk_40);
    NARC_dtor(param0->unk_5C);
    ov22_02255A98(param0);
}

void ov22_0225561C(UnkStruct_ov22_0225A0E4 *param0)
{
    Bg_RunScheduledUpdates(param0->unk_40);
    RenderOam_Transfer();
}

void ov22_0225562C(UnkStruct_ov22_0225A0E4 *param0)
{
    ov22_02255AC0(param0);
}

static void ov22_02255634(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_32_FG,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_0123_E
    };

    GXLayers_SetBanks(&v0);
}

static void ov22_02255654(void)
{
    NNS_G3dInit();
    G3X_InitMtxStack();

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);

    NNS_GfdInitFrmTexVramManager(2, 1);
    NNS_GfdInitFrmPlttVramManager(0x4000, 1);
}

static void ov22_022556DC(void)
{
    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        SetAllGraphicsModes(&v0);
    }

    GX_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);
    NNS_G2dInitOamManagerModule();

    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();
    GXLayers_EngineAToggleLayers((GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ), 1);
    GXLayers_EngineBToggleLayers((GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_OBJ), 1);
}

static void ov22_0225572C(void)
{
    NNS_GfdResetFrmTexVramState();
    NNS_GfdResetFrmPlttVramState();
}

static void ov22_02255738(void)
{
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    NNS_G2dInitOamManagerModule();
}

static void ov22_02255748(UnkStruct_ov22_0225A0E4 *param0, const UnkStruct_ov22_022550D4 *param1)
{
    param0->unk_00 = sub_02015064(param1);
    param0->unk_04 = Heap_AllocFromHeap(param1->heapID, sizeof(UnkStruct_02015128 *) * (100 + 18));
    param0->unk_08 = (100 + 18);
    param0->unk_0C = 0;
    param0->unk_10 = Heap_AllocFromHeap(param1->heapID, sizeof(UnkStruct_020151A4 *) * (1 + 18));
    param0->unk_14 = (1 + 18);
    param0->unk_18 = 0;
    param0->unk_1C = 1;
}

static void ov22_02255784(UnkStruct_ov22_0225A0E4 *param0)
{
    sub_020150A8(param0->unk_00);
    param0->unk_00 = NULL;
}

static void ov22_02255794(UnkStruct_ov22_0225A0E4 *param0)
{
    sub_020150EC(param0->unk_00);
}

static void ov22_022557A0(UnkStruct_ov22_0225A0E4 *param0, UnkStruct_ov22_022557A0 *param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < param2; v0++) {
        GF_ASSERT(param0->unk_0C < param0->unk_08);

        if (param1[v0].unk_04 != NULL) {
            param0->unk_04[param0->unk_0C] = sub_02015128(param1 + v0);
        } else {
            param0->unk_04[param0->unk_0C] = NULL;
        }

        param0->unk_0C++;
    }
}

static void ov22_02255800(UnkStruct_ov22_0225A0E4 *param0, UnkStruct_ov22_02255800 *param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < param2; v0++) {
        GF_ASSERT(param0->unk_18 < param0->unk_14);

        if (param1[v0].unk_04 != NULL) {
            param0->unk_10[param0->unk_18] = sub_020151A4(param1 + v0);
        } else {
            param0->unk_10[param0->unk_18] = NULL;
        }

        param0->unk_18++;
    }
}

static void ov22_02255860(UnkStruct_ov22_0225A0E4 *param0)
{
    {
        BgTemplate v0 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0->unk_40, BG_LAYER_MAIN_1, &v0, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_14);
        Bg_ClearTilemap(param0->unk_40, BG_LAYER_MAIN_1);
    }

    {
        BgTemplate v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0->unk_40, BG_LAYER_MAIN_2, &v1, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, HEAP_ID_14);
        Bg_ClearTilemap(param0->unk_40, BG_LAYER_MAIN_2);
    }

    {
        BgTemplate v2 = {
            0,
            -(16 + 129),
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0->unk_40, BG_LAYER_MAIN_3, &v2, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_3, 32, 0, HEAP_ID_14);
        Bg_ClearTilemap(param0->unk_40, BG_LAYER_MAIN_3);
    }

    {
        BgTemplate v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x7800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0->unk_40, BG_LAYER_SUB_0, &v3, 0);
        Bg_ClearTilesRange(4, 32, 0, HEAP_ID_14);
        Bg_ClearTilemap(param0->unk_40, BG_LAYER_SUB_0);
    }

    {
        BgTemplate v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x7000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0->unk_40, BG_LAYER_SUB_1, &v4, 0);
        Bg_ClearTilesRange(5, 32, 0, HEAP_ID_14);
        Bg_ClearTilemap(param0->unk_40, BG_LAYER_SUB_1);
    }
}

static void ov22_02255984(UnkStruct_ov22_0225A0E4 *param0)
{
    Bg_FreeTilemapBuffer(param0->unk_40, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0->unk_40, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0->unk_40, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(param0->unk_40, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(param0->unk_40, BG_LAYER_SUB_1);
}

static void ov22_022559B4(UnkStruct_ov22_0225A0E4 *param0)
{
    param0->unk_34 = ResourceCollection_New(((100 + 18) + 1), HEAP_ID_14);
    param0->unk_38 = Heap_AllocFromHeap(HEAP_ID_14, sizeof(NNSG2dCharacterData *) * ((100 + 18) + 1));
    memset(param0->unk_38, 0, sizeof(NNSG2dCharacterData *) * ((100 + 18) + 1));
    param0->unk_3C = ((100 + 18) + 1);
}

static void ov22_022559E0(UnkStruct_ov22_0225A0E4 *param0)
{
    Heap_FreeToHeap(param0->unk_38);
    ResourceCollection_Delete(param0->unk_34);
    param0->unk_3C = 0;
}

static void ov22_022559F8(UnkStruct_ov22_0225A0E4 *param0)
{
    {
        CharTransferTemplate v0 = {
            8,
            0x8000,
            0x4000,
            14
        };

        CharTransfer_InitWithVramModes(&v0, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K);
    }

    PlttTransfer_Init(5, HEAP_ID_14);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();

    NNS_G2dInitOamManagerModule();

    RenderOam_Init(0, 124, 0, 31, 0, 124, 0, 31, 14);
    param0->unk_44 = SpriteList_InitRendering(48, &param0->unk_58, HEAP_ID_14);
    SetSubScreenViewRect(&param0->unk_58, 0, (512 * FX32_ONE));

    param0->unk_48[0] = SpriteResourceCollection_New(8, 0, HEAP_ID_14);
    param0->unk_48[1] = SpriteResourceCollection_New(5, 1, HEAP_ID_14);
    param0->unk_48[2] = SpriteResourceCollection_New(48, 2, HEAP_ID_14);
    param0->unk_48[3] = SpriteResourceCollection_New(48, 3, HEAP_ID_14);
}

static void ov22_02255A98(UnkStruct_ov22_0225A0E4 *param0)
{
    SpriteList_Delete(param0->unk_44);

    {
        int v0;

        for (v0 = 0; v0 < 4; v0++) {
            SpriteResourceCollection_Delete(param0->unk_48[v0]);
        }
    }

    CharTransfer_Free();
    PlttTransfer_Free();
    RenderOam_Free();
}

static void ov22_02255AC0(UnkStruct_ov22_0225A0E4 *param0)
{
    SpriteList_Update(param0->unk_44);
}

static void ov22_02255ACC(UnkStruct_ov22_0225A0E4 *param0, UnkStruct_ov22_02255CB8 *param1)
{
    int v0;
    int v1;
    void *v2;

    for (v0 = 0; v0 < 100; v0++) {
        v2 = LoadMemberFromOpenNARC(param0->unk_5C, v0 + 1, 0, HEAP_ID_14, 1);

        GF_ASSERT(v2);

        v1 = v0;

        param1->unk_00[v1].unk_04 = ov22_02255340(param0, v2, v0);
        param1->unk_00[v1].unk_00 = param0->unk_00;
    }

    v2 = LoadMemberFromOpenNARC(param0->unk_5C, 0, 0, HEAP_ID_14, 1);

    ResourceCollection_Add(param1->unk_14, v2, 0);
    NNS_G2dGetUnpackedPaletteData(v2, &param1->unk_08[0].unk_04);

    param1->unk_08[0].unk_00 = param0->unk_00;
    param1->unk_08[0].unk_08 = 3;
}

static void ov22_02255B50(UnkStruct_ov22_0225A0E4 *param0, UnkStruct_ov22_02255CB8 *param1)
{
    int v0;
    void *v1;
    int v2;

    for (v0 = 0; v0 < 18; v0++) {
        v1 = LoadMemberFromOpenNARC(param0->unk_5C, v0 + 206, 0, HEAP_ID_14, 1);
        v2 = v0 + 100;

        param1->unk_00[v2].unk_04 = ov22_02255340(param0, v1, v2);
        param1->unk_00[v2].unk_00 = param0->unk_00;

        v2 = v0 + 1;
        v1 = LoadMemberFromOpenNARC(param0->unk_5C, (v0) * 4 + 134 + 1, 0, HEAP_ID_14, 1);

        ResourceCollection_Add(param1->unk_14, v1, v2);
        NNS_G2dGetUnpackedPaletteData(v1, &param1->unk_08[v2].unk_04);
        GF_ASSERT(param1->unk_08[v2].unk_04);

        param1->unk_08[v2].unk_00 = param0->unk_00;
        param1->unk_08[v2].unk_08 = 1;
    }
}

static void ov22_02255BF4(UnkStruct_ov22_0225A0E4 *param0, int heapID)
{
    param0->unk_30 = LoadMemberFromOpenNARC(param0->unk_5C, 235, 0, heapID, 0);
}

static void ov22_02255C14(UnkStruct_ov22_0225A0E4 *param0)
{
    Heap_FreeToHeap(param0->unk_30);
    param0->unk_30 = NULL;
}

static void ov22_02255C24(UnkStruct_ov22_0225A0E4 *param0, int heapID, int param2, int param3)
{
    param0->unk_20 = PokemonSpriteManager_New(heapID);
    param0->unk_24 = NNS_GfdAllocTexVram(param2, 0, 0);
    param0->unk_28 = NNS_GfdAllocPlttVram(param3, 0, NNS_GFD_ALLOC_FROM_LOW);

    PokemonSpriteManager_SetCharBaseAddrAndSize(param0->unk_20, NNS_GfdGetTexKeyAddr(param0->unk_24), NNS_GfdGetTexKeySize(param0->unk_24));
    PokemonSpriteManager_SetPlttBaseAddrAndSize(param0->unk_20, NNS_GfdGetPlttKeyAddr(param0->unk_28), NNS_GfdGetPlttKeySize(param0->unk_28));

    param0->unk_2C = 1;
}

static void ov22_02255C90(UnkStruct_ov22_0225A0E4 *param0)
{
    PokemonSpriteManager_Free(param0->unk_20);

    NNS_GfdFreeTexVram(param0->unk_24);
    NNS_GfdFreePlttVram(param0->unk_28);

    param0->unk_2C = 0;
}

static void ov22_02255CB8(UnkStruct_ov22_02255CB8 *param0, int param1, int param2, int heapID)
{
    param0->unk_00 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov22_022557A0) * param1);
    memset(param0->unk_00, 0, sizeof(UnkStruct_ov22_022557A0) * param1);
    param0->unk_10 = ResourceCollection_New(param1, heapID);
    param0->unk_04 = param1;

    param0->unk_08 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov22_02255800) * param2);
    memset(param0->unk_08, 0, sizeof(UnkStruct_ov22_02255800) * param2);
    param0->unk_14 = ResourceCollection_New(param2, heapID);
    param0->unk_0C = param2;
}

static void ov22_02255D0C(UnkStruct_ov22_02255CB8 *param0)
{
    if (param0->unk_10) {
        ResourceCollection_Delete(param0->unk_10);
        param0->unk_10 = NULL;
    }

    if (param0->unk_14) {
        ResourceCollection_Delete(param0->unk_14);
        param0->unk_14 = NULL;
    }

    Heap_FreeToHeap(param0->unk_00);
    param0->unk_00 = NULL;
    Heap_FreeToHeap(param0->unk_08);
    param0->unk_08 = NULL;
}
