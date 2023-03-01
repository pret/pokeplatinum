#include <nitro.h>
#include <string.h>

#include "enums.h"

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "string/strbuf.h"
#include "struct_decls/struct_020998EC_decl.h"
#include "overlay020/struct_ov20_021D16E8_decl.h"
#include "overlay020/struct_ov20_021D2128_decl.h"

#include "struct_defs/struct_0205AA50.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay020/struct_ov20_021D4E8C.h"
#include "overlay020/struct_ov20_021D4FF0.h"

#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_020218BC.h"
#include "string/strbuf.h"
#include "overlay020/ov20_021D0D80.h"
#include "overlay020/ov20_021D2098.h"
#include "overlay020/ov20_021D40E8.h"
#include "overlay020/ov20_021D4E38.h"

typedef struct UnkStruct_ov20_021D4210_t {
    UnkStruct_ov20_021D2128 * unk_00;
    const UnkStruct_ov20_021D16E8 * unk_04;
    const UnkStruct_020998EC * unk_08;
    UnkStruct_02018340 * unk_0C;
    UnkStruct_0205AA50 unk_10;
    UnkStruct_0205AA50 unk_20;
    UnkStruct_02022550 * unk_30;
    UnkStruct_02022550 * unk_34;
    UnkStruct_02022550 * unk_38;
    Strbuf * unk_3C;
    UnkStruct_ov20_021D4FF0 unk_40;
    UnkStruct_ov20_021D4E8C unk_60;
    u32 unk_80;
    GXWndPlane unk_84;
    int unk_88;
    int unk_8C;
    int unk_90;
} UnkStruct_ov20_021D4210;

static void ov20_021D4210(UnkStruct_ov20_021D4210 * param0);
static void ov20_021D45AC(UnkStruct_ov20_021D4210 * param0, int param1);
static void ov20_021D4638(UnkStruct_ov20_021D4210 * param0);
static void ov20_021D4658(UnkStruct_ov20_021D4210 * param0, u32 param1, u32 param2);

UnkStruct_ov20_021D4210 * ov20_021D40E8 (UnkStruct_ov20_021D2128 * param0, const UnkStruct_ov20_021D16E8 * param1, const UnkStruct_020998EC * param2)
{
    UnkStruct_ov20_021D4210 * v0 = Heap_AllocFromHeap(35, sizeof(UnkStruct_ov20_021D4210));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_0C = ov20_021D2E04(param0);
    v0->unk_3C = PLString_Init(32, 35);

    sub_0201A7E8(v0->unk_0C, &v0->unk_10, 2, 4, 0, 26, 32, 12, 1);
    sub_0201A7E8(v0->unk_0C, &v0->unk_20, 2, 0, 0, 12, 4, 12, 1);

    v0->unk_30 = NULL;
    v0->unk_34 = NULL;
    v0->unk_38 = NULL;

    return v0;
}

void ov20_021D4164 (UnkStruct_ov20_021D4210 * param0)
{
    if (param0->unk_30) {
        sub_02021BD4(param0->unk_30);
    }

    if (param0->unk_34) {
        sub_02021BD4(param0->unk_34);
    }

    if (param0->unk_38) {
        sub_02021BD4(param0->unk_38);
    }

    if (param0->unk_3C) {
        PLString_Free(param0->unk_3C);
    }

    sub_0201A8FC(&(param0->unk_20));
    sub_0201A8FC(&(param0->unk_10));
    Heap_FreeToHeap(param0);
}

void ov20_021D41A8 (UnkStruct_ov20_021D4210 * param0)
{
    UnkStruct_02018340 * v0;
    u32 v1;

    v0 = ov20_021D2E04(param0->unk_00);

    sub_02019690(2, 0x20, 0 * 0x20, 35);
    sub_02019CB8(v0, 2, 0, 0, 0, 32, 32, 12);

    sub_0201ADA4(&param0->unk_10, 0);
    sub_0201A9F4(&param0->unk_10);
    sub_0201ACCC(&param0->unk_10);
    sub_02019448(v0, 2);

    ov20_021D4210(param0);

    sub_02019120(2, 0);
}

static void ov20_021D4210 (UnkStruct_ov20_021D4210 * param0)
{
    UnkStruct_ov19_021DA864 v0;

    ov20_021D2E0C(param0->unk_00, &v0, 0, 2);
    param0->unk_30 = ov20_021D2E50(param0->unk_00, &v0, 72, 56, 3, NNS_G2D_VRAM_TYPE_2DMAIN);

    sub_02021D6C(param0->unk_30, 8);
    sub_02021CAC(param0->unk_30, 0);

    param0->unk_34 = ov20_021D2E50(param0->unk_00, &v0, 240, 64, 4, NNS_G2D_VRAM_TYPE_2DMAIN);
    sub_02021D6C(param0->unk_34, 11);
    sub_02021CAC(param0->unk_34, 0);

    param0->unk_38 = ov20_021D2E50(param0->unk_00, &v0, 240, 144, 4, NNS_G2D_VRAM_TYPE_2DMAIN);
    sub_02021D6C(param0->unk_38, 10);
    sub_02021CAC(param0->unk_38, 0);
}

void ov20_021D4294 (UnkStruct_ov20_021D4210 * param0)
{
    u32 v0, v1, v2;

    sub_0201ADA4(&param0->unk_10, 0);
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

    sub_0201ACCC(&param0->unk_10);
}

void ov20_021D42E4 (UnkStruct_ov20_021D4210 * param0)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_ALL, 0, 16);
    sub_02019120(2, 1);
    G2_SetWnd1InsidePlane(GX_WND_PLANEMASK_ALL, 1);

    param0->unk_84 = G2_GetWndOutsidePlane();
    param0->unk_88 = GX_GetVisibleWnd();

    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_ALL ^ GX_WND_PLANEMASK_BG2, 1);
    G2_SetWnd1Position(0, 46, 255, 176);
    GX_SetVisibleWnd(GX_WNDMASK_W1);

    param0->unk_80 = 0;
    ov20_021D4F1C(&param0->unk_40, GX_BLEND_PLANEMASK_BG2, GX_BLEND_ALL, 0, 124, (6 * 2));
}

BOOL ov20_021D4390 (UnkStruct_ov20_021D4210 * param0)
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

void ov20_021D43B4 (UnkStruct_ov20_021D4210 * param0)
{
    param0->unk_80 = 0;
    ov20_021D4F1C(&param0->unk_40, GX_BLEND_PLANEMASK_BG2, GX_BLEND_ALL, 124, 0, (6 * 2));
}

BOOL ov20_021D43D8 (UnkStruct_ov20_021D4210 * param0)
{
    switch (param0->unk_80) {
    case 0:
        if (ov20_021D4F4C(&param0->unk_40)) {
            sub_02019120(2, 0);
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

void ov20_021D4440 (UnkStruct_ov20_021D4210 * param0, BOOL param1)
{
    sub_02021CAC(param0->unk_30, param1);

    if (param1) {
        sub_02021CAC(param0->unk_34, ov20_021D204C(param0->unk_04));
        sub_02021CAC(param0->unk_38, ov20_021D2060(param0->unk_04));
    } else {
        sub_02021CAC(param0->unk_34, 0);
        sub_02021CAC(param0->unk_38, 0);
    }
}

void ov20_021D4480 (UnkStruct_ov20_021D4210 * param0, u32 param1)
{
    VecFx32 v0;
    u32 v1, v2;

    v1 = param1 & 1;
    v2 = param1 / 2;

    v0.x = (72 + 112 * v1) * FX32_ONE;
    v0.y = (56 + 24 * v2) * FX32_ONE;
    v0.z = 0;

    sub_02021C50(param0->unk_30, &v0);
    sub_02021D6C(param0->unk_30, 8);
}

void ov20_021D44BC (UnkStruct_ov20_021D4210 * param0, int param1)
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

    sub_0201ACCC(&param0->unk_10);
    ov20_021D4E38(&(param0->unk_60), param0->unk_0C, 2, 1, param1 * 24, v6);
}

BOOL ov20_021D4578 (UnkStruct_ov20_021D4210 * param0)
{
    if (ov20_021D4E8C(&param0->unk_60)) {
        sub_02021CAC(param0->unk_34, ov20_021D204C(param0->unk_04));
        sub_02021CAC(param0->unk_38, ov20_021D2060(param0->unk_04));
        return 1;
    }

    return 0;
}

static void ov20_021D45AC (UnkStruct_ov20_021D4210 * param0, int param1)
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
        sub_0201AE78(&param0->unk_10, 0, 0, v0, 26 * 8, (v1 - v0));
    } else {
        sub_0201AE78(&param0->unk_10, 0, 0, v0, 26 * 8, 256 - v0);
        sub_0201AE78(&param0->unk_10, 0, 0, 0, 26 * 8, v1);
    }
}

static void ov20_021D4638 (UnkStruct_ov20_021D4210 * param0)
{
    param0->unk_8C = 48;
    param0->unk_90 = 0;

    sub_02019184(param0->unk_0C, 2, 3, 0);
}

static void ov20_021D4658 (UnkStruct_ov20_021D4210 * param0, u32 param1, u32 param2)
{
    ov20_021D2008(param0->unk_04, param1, param0->unk_3C);

    if (param2 <= 240) {
        sub_0201D78C(&param0->unk_10, 0, param0->unk_3C, 0 + (param1 & 1) * 112, param2, 0xff, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)), NULL);
    } else {
        u32 v0 = 256 - param2;

        sub_0201ADA4(&param0->unk_20, 0);
        sub_0201D78C(&param0->unk_20, 0, param0->unk_3C, 0, 0, 0xff, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)), NULL);
        sub_0201ADDC(&param0->unk_10, param0->unk_20.unk_0C, 0, 0, 12 * 8, 2 * 8, 0 + (param1 & 1) * 112, param2, 12 * 8, v0);
        sub_0201ADDC(&param0->unk_10, param0->unk_20.unk_0C, 0, v0, 12 * 8, 2 * 8, 0 + (param1 & 1) * 112, 0, 12 * 8, (2 * 8) - v0);
    }
}
