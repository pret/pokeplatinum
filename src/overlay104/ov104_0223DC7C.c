#include <nitro.h>
#include <string.h>

#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/sprite_manager_allocation.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_0205AA50.h"

#include "cell_actor.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02002F38.h"
#include "unk_0200679C.h"
#include "unk_02006E3C.h"
#include "unk_0200A9DC.h"
#include "unk_0200C6E4.h"
#include "unk_0200F174.h"
#include "unk_02012744.h"
#include "unk_02018340.h"
#include "unk_0201E86C.h"

typedef struct {
    Window unk_00;
    u16 unk_10;
    u16 unk_12;
} UnkStruct_ov104_0223E29C;

typedef struct {
    FontOAM *unk_00;
    SpriteManagerAllocation unk_04;
    u16 unk_10;
} UnkStruct_ov104_0223E3B8;

typedef struct {
    s32 unk_00;
    s32 unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    u8 unk_10;
    u8 unk_11;
} UnkStruct_ov104_0223E6F0;

typedef struct {
    int unk_00;
    int unk_04;
} UnkStruct_ov104_0223E804;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    void *unk_0C;
    BGL *unk_10;
    SpriteRenderer *unk_14;
    SpriteGfxHandler *unk_18;
    PaletteData *unk_1C;
    u16 *unk_20;
    NARC *unk_24;
    s16 unk_28;
    s16 unk_2A;
    u8 unk_2C;
    UnkStruct_02012744 *unk_30;
    SysTask *unk_34;
    int unk_38;
    int unk_3C;
    u16 unk_40[128];
    SysTask *unk_140;
    UnkStruct_ov104_0223E6F0 unk_144;
    UnkStruct_ov104_0223E804 unk_158;
    int unk_160;
    u32 unk_164;
} UnkStruct_ov104_0223DD30;

typedef struct {
    fx32 currentValue;
    fx32 startValue;
    fx32 delta;
    int currentStep;
    int numSteps;
} LinearInterpolationTaskFX32;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    CellActorData *unk_04[4];
    LinearInterpolationTaskFX32 unk_14[4];
} UnkStruct_ov104_0223E48C;

typedef struct {
    LinearInterpolationTaskFX32 unk_00;
    UnkStruct_ov104_0223E48C unk_14;
    s32 unk_78;
    UnkStruct_ov104_0223E3B8 unk_7C;
    CellActorData *unk_90;
} UnkStruct_ov104_0223DDE4;

typedef struct {
    u32 unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
} UnkStruct_ov104_0224191C;

void ov104_0223DC7C(int param0, BGL *param1, SpriteRenderer *param2, SpriteGfxHandler *param3, PaletteData *param4, u16 *param5, s16 param6, s16 param7);
static void ov104_0223DD30(UnkStruct_ov104_0223DD30 *param0, SysTask *param1);
static void ov104_0223DD5C(SysTask *param0, void *param1);
static void ov104_0223DDB4(SysTask *param0, void *param1);
static BOOL ov104_0223DDE4(UnkStruct_ov104_0223DD30 *param0, u32 param1, const UnkStruct_ov104_0224191C *param2);
static void ov104_0223E29C(UnkStruct_ov104_0223DD30 *param0, UnkStruct_ov104_0223E3B8 *param1, const Strbuf *param2, enum Font param3, TextColor param4, int param5, int param6, int param7, int param8, int param9, UnkStruct_ov104_0223E29C *param10);
static void ov104_0223E3B8(UnkStruct_ov104_0223E3B8 *param0);
static void ov104_0223E3FC(UnkStruct_ov104_0223DD30 *param0, UnkStruct_ov104_0223E48C *param1, fx32 param2, fx32 param3, u32 param4);
static void ov104_0223E48C(UnkStruct_ov104_0223E48C *param0);
static BOOL ov104_0223E4A4(UnkStruct_ov104_0223E48C *param0);
static void ov104_0223E534(LinearInterpolationTaskFX32 *param0, fx32 param1, fx32 param2, int param3);
static BOOL ov104_0223E544(LinearInterpolationTaskFX32 *param0);
static VecFx32 ov104_0223E58C(fx32 param0, fx32 param1, fx32 param2);
static void ov104_0223E5A8(UnkStruct_ov104_0223DD30 *param0, const UnkStruct_ov104_0224191C *param1);
static void ov104_0223E6BC(SysTask *param0, void *param1);
static void ov104_0223E6F0(UnkStruct_ov104_0223DD30 *param0, int param1);
static void ov104_0223E740(SysTask *param0, void *param1);
static void ov104_0223E7A4(SysTask *param0, void *param1);
static BOOL ov104_0223E804(UnkStruct_ov104_0223DD30 *param0, UnkStruct_ov104_0223DDE4 *param1, UnkStruct_ov104_0223E804 *param2);
static void ov104_0223E3CC(const Strbuf *param0, int param1, int *param2, int *param3);

static const UnkStruct_ov104_0224191C Unk_ov104_0224191C[] = {
    { 0x33A, 0x7D, 0x7E, 0x7F, 0x80, 0x8F, 0x8E, 0x8D, 0x0 },
    { 0x387, 0x71, 0x72, 0x73, 0x74, 0x86, 0x85, 0x84, 0x0 },
    { 0x387, 0x71, 0x72, 0x73, 0x74, 0x86, 0x85, 0x84, 0x0 },
    { 0x389, 0x6D, 0x6E, 0x6F, 0x70, 0x83, 0x82, 0x81, 0x0 },
    { 0x386, 0x79, 0x7A, 0x7B, 0x7C, 0x8C, 0x8B, 0x8A, 0x0 },
    { 0x388, 0x75, 0x76, 0x77, 0x78, 0x89, 0x88, 0x87, 0x0 }
};

static const SpriteTemplate Unk_ov104_022418B4 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0xC,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x7DA, 0x7D2, 0x7D2, 0x7D2, 0xffffffff, 0xffffffff },
    0x0,
    0x0
};

static const SpriteTemplate Unk_ov104_022418E8 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0xA,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x7DB, 0x7D3, 0x7D3, 0x7D3, 0xffffffff, 0xffffffff },
    0x0,
    0x0
};

void ov104_0223DC7C(int param0, BGL *param1, SpriteRenderer *param2, SpriteGfxHandler *param3, PaletteData *param4, u16 *param5, s16 param6, s16 param7)
{
    SysTask *v0;
    UnkStruct_ov104_0223DD30 *v1;

    v0 = SysTask_StartAndAllocateParam(ov104_0223DDB4, sizeof(UnkStruct_ov104_0223DD30), 1000, 94);
    v1 = SysTask_GetParam(v0);

    v1->unk_10 = param1;
    v1->unk_14 = param2;
    v1->unk_18 = param3;
    v1->unk_1C = param4;
    v1->unk_20 = param5;
    v1->unk_28 = param6;
    v1->unk_2A = param7;
    v1->unk_24 = NARC_ctor(NARC_INDEX_GRAPHIC__FIELD_ENCOUNTEFFECT, 94);

    if (v1->unk_20 != NULL) {
        *(v1->unk_20) = 0;
    }

    v1->unk_2C = param0 - 1;

    MI_CpuClear32(sub_02019F28(1), 0x8000);

    sub_0201C63C(param1, 1, 0, 0);
    sub_0201C63C(param1, 1, 3, 0);

    ov104_0223E5A8(v1, &Unk_ov104_0224191C[v1->unk_2C]);

    v1->unk_34 = SysTask_ExecuteAfterVBlank(ov104_0223DD5C, v1, 1);
}

static void ov104_0223DD30(UnkStruct_ov104_0223DD30 *param0, SysTask *param1)
{
    SysTask_Done(param0->unk_140);
    SysTask_Done(param0->unk_34);
    NARC_dtor(param0->unk_24);
    Heap_FreeToHeapExplicit(94, param0->unk_0C);
    SysTask_FinishAndFreeParam(param1);
}

static void ov104_0223DD5C(SysTask *param0, void *param1)
{
    UnkStruct_ov104_0223DD30 *v0 = param1;

    G2_SetWnd0Position(v0->unk_144.unk_0A, v0->unk_144.unk_0B, v0->unk_144.unk_0C, v0->unk_144.unk_0D);
    G2_SetWnd1Position(v0->unk_144.unk_0E, v0->unk_144.unk_0F, v0->unk_144.unk_10, v0->unk_144.unk_11);
}

static void ov104_0223DDB4(SysTask *param0, void *param1)
{
    UnkStruct_ov104_0223DD30 *v0 = param1;
    BOOL v1;

    v1 = ov104_0223DDE4(v0, 94, &Unk_ov104_0224191C[v0->unk_2C]);

    if (v1 == 1) {
        ov104_0223DD30(v0, param0);
    }
}

static BOOL ov104_0223DDE4(UnkStruct_ov104_0223DD30 *param0, u32 param1, const UnkStruct_ov104_0224191C *param2)
{
    UnkStruct_ov104_0223DDE4 *v0 = param0->unk_0C;
    BOOL v1;
    const VecFx32 *v2;
    VecFx32 v3;
    VecFx32 v4;
    int v5;
    int v6, v7 = 0;
    Strbuf *v8;

    switch (param0->unk_00) {
    case 0:
        param0->unk_0C = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov104_0223DDE4));
        memset(param0->unk_0C, 0, sizeof(UnkStruct_ov104_0223DDE4));

        v0 = param0->unk_0C;
        v7 = SpriteRenderer_LoadPalette(param0->unk_1C, 2, param0->unk_14, param0->unk_18, param0->unk_24, 11, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 2004);

        param0->unk_164 |= 1 << v7;
        param0->unk_30 = sub_02012744(4, 94);

        {
            MessageLoader *v9;
            Strbuf *v10;

            v9 = MessageLoader_Init(1, 26, 618, param1);
            v10 = MessageLoader_GetNewStrbuf(v9, param2->unk_00);

            ov104_0223E29C(param0, &v0->unk_7C, v10, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), 0, 2004, 208 + -92 + param0->unk_28, 11 * 8 + param0->unk_2A, 0, NULL);

            sub_020129D0(v0->unk_7C.unk_00, 0);
            Strbuf_Free(v10);
            MessageLoader_Free(v9);
        }

        {
            param0->unk_160 = SpriteRenderer_LoadPalette(param0->unk_1C, 2, param0->unk_14, param0->unk_18, param0->unk_24, param2->unk_04, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 2002);
            param0->unk_164 |= 1 << param0->unk_160;

            SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_14, param0->unk_18, param0->unk_24, param2->unk_05, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 2010);
            SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_14, param0->unk_18, param0->unk_24, param2->unk_06, 0, 2002);
            SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_14, param0->unk_18, param0->unk_24, param2->unk_07, 0, 2002);
            sub_020039B0(param0->unk_1C, 2, param0->unk_160 * 16, 16, 14, (GX_RGB(0, 0, 0)));

            v7 = SpriteRenderer_LoadPalette(param0->unk_1C, 2, param0->unk_14, param0->unk_18, param0->unk_24, 51, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 2003);
            param0->unk_164 |= 1 << v7;

            SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_14, param0->unk_18, param0->unk_24, 144, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 2011);
            SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_14, param0->unk_18, param0->unk_24, 145, 0, 2003);
            SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_14, param0->unk_18, param0->unk_24, 146, 0, 2003);
        }

        v0->unk_90 = SpriteActor_LoadResources(param0->unk_14, param0->unk_18, &Unk_ov104_022418B4);

        SpriteActor_EnableObject(v0->unk_90, 0);
        SpriteActor_UpdateObject(v0->unk_90->unk_00);
        ov104_0223E3FC(param0, &v0->unk_14, (FX32_CONST(72)) + FX32_CONST(param0->unk_28), (FX32_CONST(82)) + FX32_CONST(param0->unk_2A), param1);
        param0->unk_00++;
        break;
    case 1:
        sub_0200F174(0, 0, 0, 0x7fff, 3, 1, param1);
        param0->unk_00++;
        break;
    case 2:
        if (ScreenWipe_Done()) {
            param0->unk_00++;
        }
        break;
    case 3:
        sub_0200F174(3, 1, 1, 0x7fff, 3, 1, param1);
        param0->unk_00++;
        break;
    case 4:
        if (ScreenWipe_Done()) {
            param0->unk_00++;
        }
        break;
    case 5:
        ov104_0223E6F0(param0, 0);
        param0->unk_00++;
        break;
    case 6:
        if (param0->unk_144.unk_08 == 1) {
            param0->unk_00++;
            v0->unk_78 = 10;
        }
        break;
    case 7:
        v0->unk_78--;

        if (v0->unk_78 >= 0) {
            break;
        }

        v1 = ov104_0223E4A4(&v0->unk_14);

        if (v1 == 1) {
            param0->unk_00++;
        }
        break;
    case 8:
        param0->unk_00++;
        break;
    case 9:
        v1 = ov104_0223E804(param0, v0, &param0->unk_158);

        if (v1 == 1) {
            param0->unk_00++;
        }
        break;
    case 10:
        v0->unk_78 = 10;
        param0->unk_00++;
        break;
    case 11:
        v0->unk_78--;

        if (v0->unk_78 >= 0) {
            break;
        }

        sub_0200F174(3, 0, 0, 0x7fff, 3, 1, param1);
        param0->unk_00++;
        break;
    case 12:
        if (ScreenWipe_Done()) {
            sub_02003A2C(param0->unk_1C, 2, param0->unk_164 ^ 0x3fff, 14, 0x0);
            sub_020039B0(param0->unk_1C, 2, param0->unk_160 * 16, 16, 0, (GX_RGB(0, 0, 0)));
            sub_0200AB4C(-14, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD, 1);
            sub_020129D0(v0->unk_7C.unk_00, 1);
            param0->unk_00++;
        }
        break;
    case 13:
        sub_0200F174(3, 1, 1, 0x7fff, 3, 1, param1);
        param0->unk_00++;
        break;
    case 14:
        if (ScreenWipe_Done()) {
            v0->unk_78 = 26;
            param0->unk_00++;
        }
        break;
    case 15:
        v0->unk_78--;

        if (v0->unk_78 < 0) {
            param0->unk_00++;
        }
        break;
    case 16:
        sub_0200F174(3, 0, 0, 0x7fff, 15, 1, 94);
        param0->unk_00++;
        break;
    case 17:
        if (ScreenWipe_Done()) {
            param0->unk_00++;
        }
        break;
    case 18:
        sub_0200F344(1, 0x7fff);

        if (param0->unk_20 != NULL) {
            *(param0->unk_20) = 1;
        }

        ov104_0223E3B8(&v0->unk_7C);

        sub_020127BC(param0->unk_30);
        sub_0200D0F4(v0->unk_90);

        ov104_0223E48C(&v0->unk_14);
        return 1;
    }

    return 0;
}

static void ov104_0223E29C(UnkStruct_ov104_0223DD30 *param0, UnkStruct_ov104_0223E3B8 *param1, const Strbuf *param2, enum Font param3, TextColor param4, int param5, int param6, int param7, int param8, int param9, UnkStruct_ov104_0223E29C *param10)
{
    UnkStruct_020127E8 v0;
    Window v1;
    SpriteManagerAllocation v2;
    int v3;
    FontOAM *v4;
    BGL *v5;
    SpriteGfxHandler *v6;
    int v7, v8;

    GF_ASSERT(param1->unk_00 == NULL);

    v5 = param0->unk_10;
    v6 = param0->unk_18;

    if (param10 == NULL) {
        ov104_0223E3CC(param2, param3, &v7, &v8);
    } else {
        v7 = param10->unk_12;
        v8 = param10->unk_10;
    }

    if (param10 == NULL) {
        Window_Init(&v1);
        BGL_AddFramelessWindow(v5, &v1, v8, 16 / 8, 0, 0);
        Text_AddPrinterWithParamsColorAndSpacing(&v1, param3, param2, 0, 0, TEXT_SPEED_NO_TRANSFER, param4, 0, 0, NULL);
    } else {
        v1 = param10->unk_00;
    }

    v3 = sub_02012898(&v1, NNS_G2D_VRAM_TYPE_2DMAIN, 94);
    sub_0201ED94(v3, 1, NNS_G2D_VRAM_TYPE_2DMAIN, &v2);

    if (param9 == 1) {
        param7 -= v7 / 2;
    }

    param8 -= 8;

    v0.unk_00 = param0->unk_30;
    v0.unk_04 = &v1;
    v0.unk_08 = sub_0200D9B0(v6);
    v0.unk_0C = sub_0200D04C(v6, param6);
    v0.unk_10 = NULL;
    v0.unk_14 = v2.unk_04;
    v0.unk_18 = param7;
    v0.unk_1C = param8;
    v0.unk_20 = 0;
    v0.unk_24 = 11;
    v0.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.unk_2C = 94;

    v4 = sub_020127E8(&v0);

    sub_02012AC0(v4, param5);
    sub_020128C4(v4, param7, param8);

    if (param10 == NULL) {
        BGL_DeleteWindow(&v1);
    }

    param1->unk_00 = v4;
    param1->unk_04 = v2;
    param1->unk_10 = v7;
}

static void ov104_0223E3B8(UnkStruct_ov104_0223E3B8 *param0)
{
    sub_02012870(param0->unk_00);
    sub_0201EE28(&param0->unk_04);
}

static void ov104_0223E3CC(const Strbuf *param0, int param1, int *param2, int *param3)
{
    int v0, v1;

    v0 = Font_CalcStrbufWidth(param1, param0, 0);
    v1 = v0 / 8;

    if (FX_ModS32(v0, 8) != 0) {
        v1++;
    }

    *param2 = v0;
    *param3 = v1;
}

static void ov104_0223E3FC(UnkStruct_ov104_0223DD30 *param0, UnkStruct_ov104_0223E48C *param1, fx32 param2, fx32 param3, u32 param4)
{
    int v0;
    SpriteTemplate v1 = Unk_ov104_022418E8;

    v1.x = param2 >> FX32_SHIFT;
    v1.y = param3 >> FX32_SHIFT;

    param1->unk_00 = 0;
    param1->unk_02 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        param1->unk_04[v0] = SpriteActor_LoadResources(param0->unk_14, param0->unk_18, &v1);
        SpriteActor_EnableObject(param1->unk_04[v0], 0);

        if (v0 != 3) {
            CellActor_SetAffineOverwriteMode(param1->unk_04[v0]->unk_00, 2);
            CellActor_SetAnim(param1->unk_04[v0]->unk_00, 1);
            ov104_0223E534(&param1->unk_14[v0], FX32_CONST(2), FX32_CONST(1), 6);
        } else {
            ov104_0223E534(&param1->unk_14[v0], FX32_CONST(1), FX32_CONST(1), 6);
        }
    }
}

static void ov104_0223E48C(UnkStruct_ov104_0223E48C *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_0200D0F4(param0->unk_04[v0]);
    }
}

static BOOL ov104_0223E4A4(UnkStruct_ov104_0223E48C *param0)
{
    int v0;
    BOOL v1;
    BOOL v2 = 1;
    VecFx32 v3;

    if (param0->unk_02 < 4) {
        v2 = 0;
        param0->unk_00--;

        if (param0->unk_00 <= 0) {
            param0->unk_00 = 3;
            param0->unk_02++;
        }
    }

    for (v0 = 0; v0 < param0->unk_02; v0++) {
        v1 = ov104_0223E544(&param0->unk_14[v0]);
        v3 = ov104_0223E58C(param0->unk_14[v0].currentValue, param0->unk_14[v0].currentValue, param0->unk_14[v0].currentValue);

        CellActor_SetAffineScale(param0->unk_04[v0]->unk_00, &v3);
        CellActor_SetDrawFlag(param0->unk_04[v0]->unk_00, 1);

        if (v1 == 0) {
            v2 = 0;
        }
    }

    return v2;
}

static void ov104_0223E534(LinearInterpolationTaskFX32 *param0, fx32 param1, fx32 param2, int param3)
{
    param0->currentValue = param1;
    param0->startValue = param1;
    param0->delta = param2 - param1;
    param0->numSteps = param3;
    param0->currentStep = 0;
}

static BOOL ov104_0223E544(LinearInterpolationTaskFX32 *param0)
{
    fx32 v0;

    v0 = FX_Mul(param0->delta, param0->currentStep << FX32_SHIFT);
    v0 = FX_Div(v0, param0->numSteps << FX32_SHIFT);

    param0->currentValue = v0 + param0->startValue;

    if ((param0->currentStep + 1) <= param0->numSteps) {
        param0->currentStep++;
        return 0;
    }

    param0->currentStep = param0->numSteps;
    return 1;
}

static VecFx32 ov104_0223E58C(fx32 param0, fx32 param1, fx32 param2)
{
    VecFx32 v0;

    v0.x = param0;
    v0.y = param1;
    v0.z = param2;

    return v0;
}

static void ov104_0223E5A8(UnkStruct_ov104_0223DD30 *param0, const UnkStruct_ov104_0224191C *param1)
{
    GX_SetVisibleWnd(GX_WNDMASK_W0 | GX_WNDMASK_W1);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWnd1InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWndOutsidePlane((GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ) ^ GX_WND_PLANEMASK_BG1, 1);
    G2_SetWnd0Position(0, 0, 0, 0);
    G2_SetWnd1Position(0, 0, 0, 0);

    PaletteSys_LoadPalette(param0->unk_1C, 112, param1->unk_08, 94, 0, 0x20, 12 * 16);
    sub_020070E8(param0->unk_24, param1->unk_09, param0->unk_10, 1, 0, 0, 0, 94);
    sub_0200710C(param0->unk_24, param1->unk_0A, param0->unk_10, 1, 0, 0, 0, 94);
    sub_02019E2C(param0->unk_10, 1, 0, 0, 32, 32, 12);
    sub_0201C3C0(param0->unk_10, 1);

    {
        void *v0;
        NNSG2dPaletteData *v1;

        v0 = sub_02006F88(112, param1->unk_08, &v1, 94);

        MI_CpuCopy16(v1->pRawData, param0->unk_40, 8 * 32);
        Heap_FreeToHeap(v0);
    }

    param0->unk_140 = SysTask_Start(ov104_0223E6BC, param0, 1100);
}

static void ov104_0223E6BC(SysTask *param0, void *param1)
{
    UnkStruct_ov104_0223DD30 *v0 = param1;

    v0->unk_38++;

    if (v0->unk_38 < 0) {
        return;
    }

    v0->unk_38 = 0;
    v0->unk_3C++;

    if (v0->unk_3C >= 8) {
        v0->unk_3C = 0;
    }

    sub_02002FBC(v0->unk_1C, &v0->unk_40[v0->unk_3C * 16], 0, 12 * 16, 0x20);
}

static void ov104_0223E6F0(UnkStruct_ov104_0223DD30 *param0, int param1)
{
    UnkStruct_ov104_0223E6F0 *v0;

    v0 = &param0->unk_144;
    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_0223E6F0));

    if (param1 == 0) {
        v0->unk_00 = (10 * 8) << 8;
        v0->unk_04 = (10 * 8) << 8;

        SysTask_Start(ov104_0223E740, v0, 1000);
    } else {
        v0->unk_00 = ((10 * 8) - (8 * 8 + 4) / 2) << 8;
        v0->unk_04 = ((10 * 8) + (8 * 8 + 4) / 2) << 8;

        SysTask_Start(ov104_0223E7A4, v0, 1000);
    }
}

static void ov104_0223E740(SysTask *param0, void *param1)
{
    UnkStruct_ov104_0223E6F0 *v0 = param1;

    switch (v0->unk_09) {
    case 0:
        v0->unk_00 -= 0x800;
        v0->unk_04 += 0x800;

        if (v0->unk_00 <= ((10 * 8) << 8) - (((8 * 8 + 4) / 2) << 8)) {
            v0->unk_00 = ((10 * 8) - (8 * 8 + 4) / 2) << 8;
            v0->unk_04 = ((10 * 8) + (8 * 8 + 4) / 2) << 8;
            v0->unk_09++;
        }

        v0->unk_0A = 0;
        v0->unk_0B = v0->unk_00 >> 8;
        v0->unk_0C = 255;
        v0->unk_0D = v0->unk_04 >> 8;
        v0->unk_0E = 1;
        v0->unk_0F = v0->unk_00 >> 8;
        v0->unk_10 = 0;
        v0->unk_11 = v0->unk_04 >> 8;
        break;
    default:
        v0->unk_08 = 1;
        SysTask_Done(param0);
        return;
    }
}

static void ov104_0223E7A4(SysTask *param0, void *param1)
{
    UnkStruct_ov104_0223E6F0 *v0 = param1;

    switch (v0->unk_09) {
    case 0:
        v0->unk_00 += 0x800;
        v0->unk_04 -= 0x800;

        if (v0->unk_00 >= ((10 * 8) << 8)) {
            v0->unk_00 = (10 * 8) << 8;
            v0->unk_04 = (10 * 8) << 8;
            v0->unk_09++;
        }

        v0->unk_0A = 0;
        v0->unk_0B = v0->unk_00 >> 8;
        v0->unk_0C = 255;
        v0->unk_0D = v0->unk_04 >> 8;
        v0->unk_0E = 1;
        v0->unk_0F = v0->unk_00 >> 8;
        v0->unk_10 = 0;
        v0->unk_11 = v0->unk_04 >> 8;
        break;
    default:
        v0->unk_08 = 1;
        SysTask_Done(param0);
        return;
    }
}

static BOOL ov104_0223E804(UnkStruct_ov104_0223DD30 *param0, UnkStruct_ov104_0223DDE4 *param1, UnkStruct_ov104_0223E804 *param2)
{
    int v0 = 0;

    switch (param2->unk_04) {
    case 0:
        sub_0200D500(param1->unk_90, 256 + param0->unk_28, 80 + param0->unk_2A, (512 * FX32_ONE));
        SpriteActor_EnableObject(param1->unk_90, 1);
        param2->unk_00 = 256 << 8;
        param2->unk_04++;
        break;
    case 1:
        param2->unk_00 -= 3840;

        if (param2->unk_00 <= (208 << 8)) {
            param2->unk_00 = 208 << 8;
            param2->unk_04++;
        }

        sub_0200D500(param1->unk_90, param2->unk_00 >> 8, 80 + param0->unk_2A, (512 * FX32_ONE));
        break;
    default:
        return 1;
    }

    return 0;
}
