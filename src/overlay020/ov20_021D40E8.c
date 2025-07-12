#include "overlay020/ov20_021D40E8.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020998EC_decl.h"

#include "overlay020/ov20_021D0D80.h"
#include "overlay020/ov20_021D2098.h"
#include "overlay020/ov20_021D4E38.h"
#include "overlay020/struct_ov20_021D16E8_decl.h"
#include "overlay020/struct_ov20_021D2128_decl.h"
#include "overlay020/struct_ov20_021D4E8C.h"
#include "overlay020/struct_ov20_021D4FF0.h"

#include "bg_window.h"
#include "enums.h"
#include "heap.h"
#include "sprite.h"
#include "strbuf.h"
#include "text.h"

typedef struct UnkStruct_ov20_021D4210_t {
    UnkStruct_ov20_021D2128 *unk_00;
    const UnkStruct_ov20_021D16E8 *unk_04;
    const UnkStruct_020998EC *unk_08;
    BgConfig *unk_0C;
    Window unk_10;
    Window unk_20;
    Sprite *unk_30;
    Sprite *unk_34;
    Sprite *unk_38;
    Strbuf *unk_3C;
    UnkStruct_ov20_021D4FF0 unk_40;
    UnkStruct_ov20_021D4E8C unk_60;
    u32 unk_80;
    GXWndPlane unk_84;
    int unk_88;
    int unk_8C;
    int unk_90;
} UnkStruct_ov20_021D4210;

static void ov20_021D4210(UnkStruct_ov20_021D4210 *param0);
static void ov20_021D45AC(UnkStruct_ov20_021D4210 *param0, int param1);
static void ov20_021D4638(UnkStruct_ov20_021D4210 *param0);
static void ov20_021D4658(UnkStruct_ov20_021D4210 *param0, u32 param1, u32 param2);

UnkStruct_ov20_021D4210 *ov20_021D40E8(UnkStruct_ov20_021D2128 *param0, const UnkStruct_ov20_021D16E8 *param1, const UnkStruct_020998EC *param2)
{
    UnkStruct_ov20_021D4210 *v0 = Heap_AllocFromHeap(HEAP_ID_35, sizeof(UnkStruct_ov20_021D4210));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_0C = ov20_021D2E04(param0);
    v0->unk_3C = Strbuf_Init(32, HEAP_ID_35);

    Window_Add(v0->unk_0C, &v0->unk_10, 2, 4, 0, 26, 32, 12, 1);
    Window_Add(v0->unk_0C, &v0->unk_20, 2, 0, 0, 12, 4, 12, 1);

    v0->unk_30 = NULL;
    v0->unk_34 = NULL;
    v0->unk_38 = NULL;

    return v0;
}

void ov20_021D4164(UnkStruct_ov20_021D4210 *param0)
{
    if (param0->unk_30) {
        Sprite_Delete(param0->unk_30);
    }

    if (param0->unk_34) {
        Sprite_Delete(param0->unk_34);
    }

    if (param0->unk_38) {
        Sprite_Delete(param0->unk_38);
    }

    if (param0->unk_3C) {
        Strbuf_Free(param0->unk_3C);
    }

    Window_Remove(&(param0->unk_20));
    Window_Remove(&(param0->unk_10));
    Heap_Free(param0);
}

void ov20_021D41A8(UnkStruct_ov20_021D4210 *param0)
{
    BgConfig *v0;
    u32 v1;

    v0 = ov20_021D2E04(param0->unk_00);

    Bg_ClearTilesRange(BG_LAYER_MAIN_2, 0x20, 0 * 0x20, HEAP_ID_35);
    Bg_FillTilemapRect(v0, 2, 0, 0, 0, 32, 32, 12);

    Window_FillTilemap(&param0->unk_10, 0);
    Window_PutToTilemap(&param0->unk_10);
    Window_LoadTiles(&param0->unk_10);
    Bg_CopyTilemapBufferToVRAM(v0, 2);

    ov20_021D4210(param0);

    Bg_ToggleLayer(BG_LAYER_MAIN_2, 0);
}

static void ov20_021D4210(UnkStruct_ov20_021D4210 *param0)
{
    SpriteResourcesHeader v0;

    ov20_021D2E0C(param0->unk_00, &v0, 0, 2);
    param0->unk_30 = ov20_021D2E50(param0->unk_00, &v0, 72, 56, 3, NNS_G2D_VRAM_TYPE_2DMAIN);

    Sprite_SetAnim(param0->unk_30, 8);
    Sprite_SetDrawFlag(param0->unk_30, FALSE);

    param0->unk_34 = ov20_021D2E50(param0->unk_00, &v0, 240, 64, 4, NNS_G2D_VRAM_TYPE_2DMAIN);
    Sprite_SetAnim(param0->unk_34, 11);
    Sprite_SetDrawFlag(param0->unk_34, FALSE);

    param0->unk_38 = ov20_021D2E50(param0->unk_00, &v0, 240, 144, 4, NNS_G2D_VRAM_TYPE_2DMAIN);
    Sprite_SetAnim(param0->unk_38, 10);
    Sprite_SetDrawFlag(param0->unk_38, FALSE);
}

void ov20_021D4294(UnkStruct_ov20_021D4210 *param0)
{
    u32 v0, v1, v2;

    Window_FillTilemap(&param0->unk_10, 0);
    ov20_021D4638(param0);

    v0 = ov20_021D1FE4(param0->unk_04);

    if (v0 > 10) {
        v0 = 10;
    }

    v1 = param0->unk_8C;

    for (v2 = 0; v2 < v0; v2++) {
        ov20_021D4658(param0, v2, v1);

        if (v2 & 1) {
            v1 += 24;
        }
    }

    Window_LoadTiles(&param0->unk_10);
}

void ov20_021D42E4(UnkStruct_ov20_021D4210 *param0)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_ALL, 0, 16);
    Bg_ToggleLayer(BG_LAYER_MAIN_2, 1);
    G2_SetWnd1InsidePlane(GX_WND_PLANEMASK_ALL, 1);

    param0->unk_84 = G2_GetWndOutsidePlane();
    param0->unk_88 = GX_GetVisibleWnd();

    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_ALL ^ GX_WND_PLANEMASK_BG2, 1);
    G2_SetWnd1Position(0, 46, 255, 176);
    GX_SetVisibleWnd(GX_WNDMASK_W1);

    param0->unk_80 = 0;
    ov20_021D4F1C(&param0->unk_40, GX_BLEND_PLANEMASK_BG2, GX_BLEND_ALL, 0, 124, (6 * 2));
}

BOOL ov20_021D4390(UnkStruct_ov20_021D4210 *param0)
{
    switch (param0->unk_80) {
    case 0:
        if (ov20_021D4F4C(&param0->unk_40)) {
            return 1;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

void ov20_021D43B4(UnkStruct_ov20_021D4210 *param0)
{
    param0->unk_80 = 0;
    ov20_021D4F1C(&param0->unk_40, GX_BLEND_PLANEMASK_BG2, GX_BLEND_ALL, 124, 0, (6 * 2));
}

BOOL ov20_021D43D8(UnkStruct_ov20_021D4210 *param0)
{
    switch (param0->unk_80) {
    case 0:
        if (ov20_021D4F4C(&param0->unk_40)) {
            Bg_ToggleLayer(BG_LAYER_MAIN_2, 0);
            G2_SetWndOutsidePlane(param0->unk_84.planeMask, param0->unk_84.effect);
            GX_SetVisibleWnd(param0->unk_88);
            return 1;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

void ov20_021D4440(UnkStruct_ov20_021D4210 *param0, BOOL param1)
{
    Sprite_SetDrawFlag(param0->unk_30, param1);

    if (param1) {
        Sprite_SetDrawFlag(param0->unk_34, ov20_021D204C(param0->unk_04));
        Sprite_SetDrawFlag(param0->unk_38, ov20_021D2060(param0->unk_04));
    } else {
        Sprite_SetDrawFlag(param0->unk_34, FALSE);
        Sprite_SetDrawFlag(param0->unk_38, FALSE);
    }
}

void ov20_021D4480(UnkStruct_ov20_021D4210 *param0, u32 param1)
{
    VecFx32 v0;
    u32 v1 = param1 & 1;
    u32 v2 = param1 / 2;

    v0.x = (72 + 112 * v1) * FX32_ONE;
    v0.y = (56 + 24 * v2) * FX32_ONE;
    v0.z = 0;

    Sprite_SetPosition(param0->unk_30, &v0);
    Sprite_SetAnim(param0->unk_30, 8);
}

void ov20_021D44BC(UnkStruct_ov20_021D4210 *param0, int param1)
{
    int v0, v1, v2, v3, v4, v5, v6;

    ov20_021D45AC(param0, param1);

    v1 = param0->unk_90 + (param1 * 2);
    v0 = (param0->unk_8C + (param1 * 24)) & 255;

    if (param1 < 0) {
        v3 = v0;
        v4 = v1;
        v5 = -(param1 * 2);
        v6 = -(4 * param1);
    } else {
        v3 = (param0->unk_8C + 120) & 255;
        v4 = param0->unk_90 + 10;
        v5 = param1 * 2;

        if ((v5 + v4) > ov20_021D1FE4(param0->unk_04)) {
            v5--;
        }

        v6 = 4 * param1;
    }

    for (v2 = 0; v2 < v5; v2++) {
        ov20_021D4658(param0, v4 + v2, v3);

        if (v2 & 1) {
            v3 = (v3 + 24) & 255;
        }
    }

    param0->unk_8C = v0;
    param0->unk_90 = v1;

    Window_LoadTiles(&param0->unk_10);
    ov20_021D4E38(&(param0->unk_60), param0->unk_0C, 2, 1, param1 * 24, v6);
}

BOOL ov20_021D4578(UnkStruct_ov20_021D4210 *param0)
{
    if (ov20_021D4E8C(&param0->unk_60)) {
        Sprite_SetDrawFlag(param0->unk_34, ov20_021D204C(param0->unk_04));
        Sprite_SetDrawFlag(param0->unk_38, ov20_021D2060(param0->unk_04));
        return 1;
    }

    return 0;
}

static void ov20_021D45AC(UnkStruct_ov20_021D4210 *param0, int param1)
{
    int v0, v1;

    if (param1 > 0) {
        v0 = (param0->unk_8C + 120) & 0xff;
        v1 = (v0 + (param1 * 24)) & 0xff;
    } else {
        v1 = param0->unk_8C;
        v0 = (v1 + (param1 * 24)) & 0xff;
    }

    if (v0 < v1) {
        Window_FillRectWithColor(&param0->unk_10, 0, 0, v0, 26 * 8, (v1 - v0));
    } else {
        Window_FillRectWithColor(&param0->unk_10, 0, 0, v0, 26 * 8, 256 - v0);
        Window_FillRectWithColor(&param0->unk_10, 0, 0, 0, 26 * 8, v1);
    }
}

static void ov20_021D4638(UnkStruct_ov20_021D4210 *param0)
{
    param0->unk_8C = 48;
    param0->unk_90 = 0;

    Bg_SetOffset(param0->unk_0C, BG_LAYER_MAIN_2, 3, 0);
}

static void ov20_021D4658(UnkStruct_ov20_021D4210 *param0, u32 param1, u32 param2)
{
    ov20_021D2008(param0->unk_04, param1, param0->unk_3C);

    if (param2 <= 240) {
        Text_AddPrinterWithParamsAndColor(&param0->unk_10, FONT_SYSTEM, param0->unk_3C, 0 + (param1 & 1) * 112, param2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    } else {
        u32 v0 = 256 - param2;

        Window_FillTilemap(&param0->unk_20, 0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_20, FONT_SYSTEM, param0->unk_3C, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Window_BlitBitmapRect(&param0->unk_10, param0->unk_20.pixels, 0, 0, 12 * 8, 2 * 8, 0 + (param1 & 1) * 112, param2, 12 * 8, v0);
        Window_BlitBitmapRect(&param0->unk_10, param0->unk_20.pixels, 0, v0, 12 * 8, 2 * 8, 0 + (param1 & 1) * 112, 0, 12 * 8, (2 * 8) - v0);
    }
}
