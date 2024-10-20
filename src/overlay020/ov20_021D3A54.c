#include "overlay020/ov20_021D3A54.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_020998EC_decl.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay020/ov20_021D0D80.h"
#include "overlay020/ov20_021D2098.h"
#include "overlay020/ov20_021D4E38.h"
#include "overlay020/ov20_021D5044.h"
#include "overlay020/struct_ov20_021D16E8_decl.h"
#include "overlay020/struct_ov20_021D2128_decl.h"
#include "overlay020/struct_ov20_021D4E8C.h"
#include "overlay020/struct_ov20_021D4FF0.h"

#include "cell_actor.h"
#include "enums.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "strbuf.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02006E3C.h"
#include "unk_02018340.h"
#include "unk_020998EC.h"

typedef struct UnkStruct_ov20_021D3E0C_t {
    UnkStruct_ov20_021D2128 *unk_00;
    const UnkStruct_ov20_021D16E8 *unk_04;
    const UnkStruct_020998EC *unk_08;
    BGL *unk_0C;
    u32 unk_10;
    u32 unk_14;
    SysTask *unk_18;
    UnkStruct_ov20_021D4FF0 unk_1C;
    UnkStruct_ov20_021D4E8C unk_3C;
    CellActor *unk_5C;
} UnkStruct_ov20_021D3E0C;

static u32 ov20_021D3B74(UnkStruct_ov20_021D3E0C *param0, BGL *param1, u32 param2);
static u32 ov20_021D3C78(UnkStruct_ov20_021D3E0C *param0, BGL *param1, u32 param2);
static u32 ov20_021D3D44(UnkStruct_ov20_021D3E0C *param0, BGL *param1, u32 param2);
static void ov20_021D3E0C(UnkStruct_ov20_021D3E0C *param0);

UnkStruct_ov20_021D3E0C *ov20_021D3A54(UnkStruct_ov20_021D2128 *param0, const UnkStruct_ov20_021D16E8 *param1, const UnkStruct_020998EC *param2)
{
    UnkStruct_ov20_021D3E0C *v0 = Heap_AllocFromHeap(35, sizeof(UnkStruct_ov20_021D3E0C));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_0C = ov20_021D2E04(param0);
    v0->unk_10 = 0;
    v0->unk_18 = NULL;
    v0->unk_5C = NULL;

    return v0;
}

void ov20_021D3A80(UnkStruct_ov20_021D3E0C *param0)
{
    if (param0->unk_5C) {
        CellActor_Delete(param0->unk_5C);
    }

    Heap_FreeToHeap(param0);
}

void ov20_021D3A98(UnkStruct_ov20_021D3E0C *param0, NARC *param1)
{
    BGL *v0;
    u32 v1;

    v0 = ov20_021D2E04(param0->unk_00);

    sub_0200710C(param1, 2, v0, 1, 0, 0, 1, 35);

    v1 = sub_020070E8(param1, 3, v0, 1, 0, 0, 1, 35);
    v1 /= 0x20;
    v1 = ov20_021D3B74(param0, v0, v1);
    v1 = ov20_021D3C78(param0, v0, v1);

    ov20_021D3D44(param0, v0, v1);
    sub_02019184(v0, 1, 0, -4);
    sub_02019184(v0, 1, 3, 2);
    ov20_021D3E0C(param0);

    G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG1, -10);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_ALL, 1);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_ALL ^ GX_WND_PLANEMASK_BG1, 1);
    G2_SetWnd0Position(0, 0, 255, 160);
    GX_SetVisibleWnd(GX_WNDMASK_W0);

    sub_02019448(v0, 1);
}

static u32 ov20_021D3B74(UnkStruct_ov20_021D3E0C *param0, BGL *param1, u32 param2)
{
    int v0, v1, v2;
    Window v3;
    MessageLoader *v4;
    Strbuf *v5;
    u32 v6, v7;

    v4 = MessageLoader_Init(1, 26, 436, 35);

    v1 = 1;
    v2 = 9;

    for (v0 = 0; v0 < 12; v0++) {
        if ((v0 != 0) && (v0 % 3 == 0)) {
            v1 = 1;
            v2 += (2 + 1);
        }

        if (sub_02099CA0(param0->unk_08, v0)) {
            v5 = MessageLoader_GetNewStrbuf(v4, 0 + v0);
            v6 = TEXT_COLOR(1, 2, 15);
        } else {
            v5 = MessageLoader_GetNewStrbuf(v4, 12);
            v6 = TEXT_COLOR(3, 4, 15);
        }

        GF_ASSERT(param2 < (1024 - 18));

        BGL_AddWindow(param1, &v3, 1, v1, v2, 9, 2, 11, param2);
        BGL_FillWindow(&v3, 15);

        v7 = ((9 * 8) - Font_CalcStrbufWidth(FONT_SYSTEM, v5, 0)) / 2;

        Text_AddPrinterWithParamsAndColor(&v3, FONT_SYSTEM, v5, v7, 0, TEXT_SPEED_NO_TRANSFER, v6, NULL);
        sub_0201A9F4(&v3);
        sub_0201ACCC(&v3);
        Strbuf_Free(v5);
        BGL_DeleteWindow(&v3);

        param2 += 18;
        v1 += (9 + 1);
    }

    MessageLoader_Free(v4);

    return param2;
}

static u32 ov20_021D3C78(UnkStruct_ov20_021D3E0C *param0, BGL *param1, u32 param2)
{
    Window v0;
    Strbuf *v1;
    u32 v2, v3, v4, v5, v6;

    GF_ASSERT(param2 < (1024 - 200));

    BGL_AddWindow(param1, &v0, 1, 34, 10, 25, 8, 11, param2);
    param2 += 200;

    v1 = Strbuf_Init(4, 35);

    BGL_FillWindow(&v0, 15);

    v3 = ov20_021D5044();

    for (v4 = 0; v4 < v3; v4++) {
        ov20_021D5048(v4, v1);
        ov20_021D506C(v4, &v5, &v6);

        if (sub_02099CDC(param0->unk_08, v4)) {
            v2 = TEXT_COLOR(1, 2, 15);
        } else {
            v2 = TEXT_COLOR(3, 4, 15);
        }

        Text_AddPrinterWithParamsAndColor(&v0, FONT_SYSTEM, v1, v5 + 3, v6, TEXT_SPEED_NO_TRANSFER, v2, NULL);
    }

    sub_0201ACCC(&v0);
    sub_0201A9F4(&v0);

    Strbuf_Free(v1);
    BGL_DeleteWindow(&v0);

    return param2;
}

static u32 ov20_021D3D44(UnkStruct_ov20_021D3E0C *param0, BGL *param1, u32 param2)
{
    static const struct {
        u16 unk_00;
        u16 unk_02;
    } v0[] = {
        { 12, 21 },
        { 44, 21 },
    };
    Window v1;
    MessageLoader *v2;
    Strbuf *v3;
    int v4, v5;

    v2 = MessageLoader_Init(1, 26, 436, 35);
    v3 = MessageLoader_GetNewStrbuf(v2, 13);
    v5 = ((8 * 8) - Font_CalcStrbufWidth(FONT_SYSTEM, v3, 0)) / 2;

    for (v4 = 0; v4 < NELEMS(v0); v4++) {
        GF_ASSERT(param2 < (1024 - 16));

        BGL_AddWindow(param1, &v1, 1, v0[v4].unk_00, v0[v4].unk_02, 8, 2, 11, param2);
        BGL_FillWindow(&v1, 15);
        Text_AddPrinterWithParamsAndColor(&v1, FONT_SYSTEM, v3, v5, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
        sub_0201A9F4(&v1);
        sub_0201ACCC(&v1);
        BGL_DeleteWindow(&v1);

        param2 += 16;
    }

    Strbuf_Free(v3);
    MessageLoader_Free(v2);

    return param2;
}

static void ov20_021D3E0C(UnkStruct_ov20_021D3E0C *param0)
{
    CellActorResourceData v0;

    ov20_021D2E0C(param0->unk_00, &v0, 0, 1);
    param0->unk_5C = ov20_021D2E50(param0->unk_00, &v0, 48, 54, 2, NNS_G2D_VRAM_TYPE_2DMAIN);
    CellActor_SetAnim(param0->unk_5C, 4);
    CellActor_SetDrawFlag(param0->unk_5C, 0);
}

void ov20_021D3E48(UnkStruct_ov20_021D3E0C *param0, BOOL param1)
{
    CellActor_SetDrawFlag(param0->unk_5C, param1);

    if (param1) {
        if (ov20_021D1F94(param0->unk_04) == 0) {
            CellActor_SetAnim(param0->unk_5C, 4);
        } else {
            CellActor_SetAnim(param0->unk_5C, 6);
        }
    }
}

void ov20_021D3E74(UnkStruct_ov20_021D3E0C *param0, u32 param1)
{
    VecFx32 v0;
    u32 v1;
    u32 v2;

    v1 = ov20_021D1F94(param0->unk_04);
    v0.z = 0;

    if (param1 == 0xfe) {
        v0.x = 132;
        v0.y = 150;
        v2 = 16;
    } else {
        if (v1 == 0) {
            v0.x = 48 + 80 * (param1 % 3);
            v0.y = 54 + 24 * (param1 / 3);
            v2 = 4;
        } else {
            u32 v3, v4;

            ov20_021D506C(param1, &v3, &v4);
            v0.x = 26 + v3;
            v0.y = 62 + v4;
            v2 = 6;
        }
    }

    v0.x *= FX32_ONE;
    v0.y *= FX32_ONE;

    CellActor_SetPosition(param0->unk_5C, &v0);
    CellActor_SetAnim(param0->unk_5C, v2);
}

void ov20_021D3EF8(UnkStruct_ov20_021D3E0C *param0)
{
    param0->unk_14 = 0;
    ov20_021D4FB0(&(param0->unk_1C), GX_BLEND_PLANEMASK_BG1, -10, 0, 16);
}

BOOL ov20_021D3F10(UnkStruct_ov20_021D3E0C *param0)
{
    switch (param0->unk_14) {
    case 0:
        if (ov20_021D4FF0(&param0->unk_1C)) {
            ov20_021D4E38(&(param0->unk_3C), param0->unk_0C, 1, 1, 24, 6);
            param0->unk_14++;
        }
        break;
    case 1:
        return ov20_021D4E8C(&(param0->unk_3C));
    }

    return 0;
}

void ov20_021D3F60(UnkStruct_ov20_021D3E0C *param0)
{
    param0->unk_14 = 0;
    ov20_021D4E38(&(param0->unk_3C), param0->unk_0C, 1, 1, -24, 6);
}

BOOL ov20_021D3F84(UnkStruct_ov20_021D3E0C *param0)
{
    switch (param0->unk_14) {
    case 0:
        if (ov20_021D4E8C(&(param0->unk_3C))) {
            ov20_021D4FB0(&(param0->unk_1C), GX_BLEND_PLANEMASK_BG1, 0, -10, 16);
            param0->unk_14++;
        }
        break;
    case 1:
        return ov20_021D4FF0(&param0->unk_1C);
    }

    return 0;
}

void ov20_021D3FD0(UnkStruct_ov20_021D3E0C *param0)
{
    sub_02019184(param0->unk_0C, 1, 3, 2);
}

void ov20_021D3FE0(UnkStruct_ov20_021D3E0C *param0)
{
    ov20_021D4FB0(&(param0->unk_1C), GX_BLEND_PLANEMASK_BG1, 0, -10, 16);
}

BOOL ov20_021D3FF8(UnkStruct_ov20_021D3E0C *param0)
{
    return ov20_021D4FF0(&(param0->unk_1C));
}

void ov20_021D4004(UnkStruct_ov20_021D3E0C *param0)
{
    ov20_021D4F1C(&param0->unk_1C, GX_BLEND_PLANEMASK_BG1, GX_BLEND_ALL, 124, 0, (6 * 2));
}

BOOL ov20_021D4020(UnkStruct_ov20_021D3E0C *param0)
{
    if (ov20_021D4F4C(&param0->unk_1C)) {
        sub_02019120(1, 0);
        return 1;
    }

    return 0;
}

void ov20_021D403C(UnkStruct_ov20_021D3E0C *param0)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_ALL, 0, 16);
    sub_02019120(1, 1);
    ov20_021D4F1C(&param0->unk_1C, GX_BLEND_PLANEMASK_BG1, GX_BLEND_ALL, 0, 124, (6 * 2));
}

BOOL ov20_021D4078(UnkStruct_ov20_021D3E0C *param0)
{
    return ov20_021D4F4C(&param0->unk_1C);
}

void ov20_021D4084(UnkStruct_ov20_021D3E0C *param0)
{
    int v0;

    if (ov20_021D1F94(param0->unk_04) == 0) {
        v0 = -4;
    } else {
        v0 = 252;
    }

    sub_02019184(param0->unk_0C, 1, 0, v0);
}

void ov20_021D40A8(UnkStruct_ov20_021D3E0C *param0)
{
    int v0;

    if (ov20_021D1F94(param0->unk_04) == 0) {
        v0 = (-4 - 252);
    } else {
        v0 = (252 - -4);
    }

    ov20_021D4E38(&(param0->unk_3C), param0->unk_0C, 1, 0, v0, 16);
}

BOOL ov20_021D40DC(UnkStruct_ov20_021D3E0C *param0)
{
    return ov20_021D4E8C(&(param0->unk_3C));
}
