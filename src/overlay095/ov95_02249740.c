#include "enums.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_02022550_decl.h"
#include "overlay095/struct_ov95_02247628_decl.h"
#include "overlay095/struct_ov95_0224773C_decl.h"
#include "overlay095/struct_ov95_02247958_decl.h"

#include "struct_defs/struct_02099F80.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay095/struct_ov95_02247568.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay115/struct_ov115_0226527C.h"

#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200D9E8.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "unk_0202419C.h"
#include "overlay095/ov95_02246C20.h"
#include "overlay095/ov95_022476F0.h"
#include "overlay095/ov95_02249740.h"

enum {
    UnkEnum_ov95_02249A80_00 = 0x18E3,
    UnkEnum_ov95_02249F38_00 = 0x1150
};

enum {
    UnkEnum_ov95_02249C44_00 = 0x12800,
    UnkEnum_ov95_02249C44_01 = 0x18C00,
    UnkEnum_ov95_02249C44_02 = 0xD870,
    UnkEnum_ov95_02249C44_03 = 0xF550,
    UnkEnum_ov95_02249C44_04 = 0xFFF50E00,
    UnkEnum_ov95_02249C44_05 = 0xE2000,
    UnkEnum_ov95_02249C44_06 = 0x3D6C00,
    UnkEnum_ov95_02249C44_07 = 0xFFE44000,
    UnkEnum_ov95_02249C44_08 = 0x3C,
    UnkEnum_ov95_02249C44_09 = 0x2000
};

enum {
    UnkEnum_ov95_02249E04_00 = 0x800,
    UnkEnum_ov95_02249E04_01 = 0x800,
    UnkEnum_ov95_02249E04_02 = 0x200,
    UnkEnum_ov95_02249E04_03 = 0xC
};

enum {
    UnkEnum_ov95_02249B90_00 = 0x80,
    UnkEnum_ov95_02249B90_01 = 0x60
};

typedef struct {
    void * unk_00;
    SysTask * unk_04;
    UnkStruct_ov95_0224773C * unk_08;
    UnkStruct_ov95_02247958 * unk_0C;
    VecFx32 unk_10;
    VecFx32 unk_1C;
    VecFx32 unk_28;
    VecFx16 unk_34;
    fx32 unk_3C;
    fx32 unk_40;
    fx32 unk_44;
    fx32 unk_48;
    fx32 unk_4C;
    fx32 unk_50;
    fx32 unk_54;
    fx32 unk_58;
    int unk_5C;
    int unk_60;
    int unk_64;
    int unk_68;
    fx16 unk_6C;
    fx16 unk_6E;
} UnkStruct_ov95_02249C28;

typedef struct {
    UnkStruct_ov95_02247628 * unk_00;
    int unk_04;
    int unk_08;
    BOOL unk_0C;
    UnkStruct_ov95_02247568 unk_10;
    GraphicElementData * unk_20[1];
    BGL * unk_24;
    UnkStruct_ov95_0224773C * unk_28;
    UnkStruct_ov95_02247958 * unk_2C;
    SysTask * unk_30;
    UnkStruct_ov95_02249C28 unk_34;
} UnkStruct_ov95_022497D8;

static void ov95_022497D8(UnkStruct_ov95_022497D8 * param0);
static int ov95_022497F8(UnkStruct_ov95_022497D8 * param0, int * param1);
static int ov95_02249840(UnkStruct_ov95_022497D8 * param0, int * param1);
static void ov95_02249910(UnkStruct_ov95_022497D8 * param0);
static void ov95_02249A68(UnkStruct_ov95_022497D8 * param0);
static void ov95_02249A80(UnkStruct_ov95_022497D8 * param0);
static void ov95_02249B80(UnkStruct_ov95_022497D8 * param0);
static void ov95_02249B90(UnkStruct_ov95_022497D8 * param0);
static void ov95_02249C10(UnkStruct_ov95_022497D8 * param0);
static void ov95_02249C28(UnkStruct_ov95_02249C28 * param0);
static void ov95_02249C30(UnkStruct_ov95_02249C28 * param0);
static void ov95_02249C44(UnkStruct_ov95_022497D8 * param0, UnkStruct_ov95_02249C28 * param1);
static BOOL ov95_02249CF0(UnkStruct_ov95_02249C28 * param0);
static void ov95_02249D00(UnkStruct_ov95_02249C28 * param0, fx32 param1, fx32 param2, fx32 param3, int param4);
static void ov95_02249D38(UnkStruct_ov95_02249C28 * param0);
static void ov95_02249E04(SysTask * param0, void * param1);
static void ov95_02249F30(UnkStruct_ov95_022497D8 * param0);
static void ov95_02249F38(SysTask * param0, void * param1);

void * ov95_02249740 (UnkStruct_ov95_02247628 * param0)
{
    UnkStruct_ov95_022497D8 * v0 = Heap_AllocFromHeap(58, sizeof(UnkStruct_ov95_022497D8));

    if (v0) {
        int v1;

        v0->unk_00 = param0;
        v0->unk_04 = 0;
        v0->unk_24 = ov95_02247628(param0);
        v0->unk_28 = NULL;

        ov95_02249C28(&(v0->unk_34));
    }

    return v0;
}

void ov95_02249770 (void * param0)
{
    UnkStruct_ov95_022497D8 * v0 = param0;

    if (v0) {
        int v1;

        sub_02017798(NULL, NULL);

        ov95_02249A68(v0);
        ov95_02249B80(v0);
        ov95_02249C10(v0);
        ov95_02249C30(&(v0->unk_34));

        Heap_FreeToHeap(v0);
    }
}

BOOL ov95_022497A0 (void * param0, int * param1)
{
    static int(*const v0[])(UnkStruct_ov95_022497D8 *, int *) = {
        ov95_022497F8,
        ov95_02249840
    };

    UnkStruct_ov95_022497D8 * v1 = param0;

    if ((*param1) < NELEMS(v0)) {
        if (v0[*param1](v1, &(v1->unk_04))) {
            (*param1)++;
            v1->unk_04 = 0;
        }

        ov95_022497D8(v1);

        return 0;
    }

    return 1;
}

static void ov95_022497D8 (UnkStruct_ov95_022497D8 * param0)
{
    if (param0->unk_28) {
        G3X_Reset();

        ov95_02247770(param0->unk_28);
        sub_020241BC(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    }
}

static int ov95_022497F8 (UnkStruct_ov95_022497D8 * param0, int * param1)
{
    ov95_02249910(param0);
    ov95_02249A80(param0);
    ov95_02249B90(param0);

    param0->unk_0C = 0;

    sub_0200DA3C(ov95_02249F38, param0, 0);
    sub_0200F174(0, 1, 1, 0x7fff, 3, 1, 58);

    return 1;
}

static int ov95_02249840 (UnkStruct_ov95_022497D8 * param0, int * param1)
{
    switch (*param1) {
    case 0:
        param0->unk_08 = 0;
        (*param1)++;
        break;
    case 1:
        if (++(param0->unk_08) > 10) {
            Sound_PlayEffect(1708);
            ov95_02249C44(param0, &(param0->unk_34));
            ov95_022479A8(param0->unk_2C, 1);
            (*param1)++;
        }
        break;
    case 2:
        if (ov95_02249CF0(&(param0->unk_34))) {
            Sound_PlayEffect(1709);
            sub_02021D6C(param0->unk_20[0], 3);
            sub_02021CAC(param0->unk_20[0], 1);
            (*param1)++;
        }
        break;
    case 3:
        if (sub_02021FD0(param0->unk_20[0]) == 0) {
            sub_0200F174(0, 0, 0, 0x7fff, 16, 1, 58);
            (*param1)++;
        }
        break;
    case 4:
        if (ScreenWipe_Done()) {
            return 1;
        }
    }

    return 0;
}

static void ov95_02249910 (UnkStruct_ov95_022497D8 * param0)
{
    static const UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_23_G,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_32_H,
        GX_VRAM_OBJ_16_F,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_0123_E
    };
    static const UnkStruct_ov84_0223BA5C v1 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D
    };
    static const UnkStruct_ov97_0222DB78 v2 = {
        0,
        0,
        0x0,
        0,
        2,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        3,
        1,
        0,
        0
    };
    u32 v3, v4, v5, v6;

    GXLayers_SetBanks(&v0);

    GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);

    sub_02018368(&v1);
    sub_020183C4(param0->unk_24, 3, &v2, 0);
    sub_020183C4(param0->unk_24, 7, &v2, 0);

    switch (ov95_02247644(param0->unk_00)) {
    case 0:
    default:
        v3 = 15;
        v4 = 16;
        v5 = 17;
        v6 = 0x0;
        break;
    case 1:
        v3 = 15;
        v4 = 16;
        v5 = 17;
        v6 = 0x20;
        break;
    case 2:
        v3 = 15;
        v4 = 16;
        v5 = 17;
        v6 = 0x40;
        break;
    case 3:
        v3 = 24;
        v4 = 25;
        v5 = 26;
        v6 = 0x0;
        break;
    }

    sub_02006E3C(93, v4, param0->unk_24, 3, 0, 0, 1, 58);
    sub_02006E3C(93, v4, param0->unk_24, 7, 0, 0, 1, 58);

    sub_02006E60(93, v3, param0->unk_24, 3, 0, 0, 1, 58);
    sub_02006E60(93, v3, param0->unk_24, 7, 0, 0, 1, 58);

    sub_02006E9C(93, v5, 0, v6, 0, 0x20, 58);
    sub_02006E9C(93, v5, 4, v6, 0, 0x20, 58);

    sub_02019184(param0->unk_24, 3, 3, 256);
    sub_02019184(param0->unk_24, 7, 3, 0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov95_02249A68 (UnkStruct_ov95_022497D8 * param0)
{
    sub_02019044(param0->unk_24, 3);
    sub_02019044(param0->unk_24, 7);
}

static void ov95_02249A80 (UnkStruct_ov95_022497D8 * param0)
{
    static const GXRgb v0[8] = {
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4)
    };
    int v1;

    NNS_G3dInit();

    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);

    G3X_EdgeMarking(1);
    G3X_SetEdgeColorTable(v0);
    G3X_SetClearColor(GX_RGB(31, 31, 16), 0, 0x7fff, 63, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);

    NNS_GfdInitFrmTexVramManager(1, 1);
    NNS_GfdInitFrmPlttVramManager(0x4000, 1);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(0);

    param0->unk_28 = ov95_022476F0(1, 0, 0, 0);
    param0->unk_2C = ov95_022478B4(param0->unk_28, 0, 93, 27, 0, 0, 0, 0);

    {
        UnkStruct_ov115_0226527C v2;

        v2.unk_00 = UnkEnum_ov95_02249A80_00;
        v2.unk_02 = 0;
        v2.unk_04 = 0;

        ov95_02247AB0(param0->unk_28, &v2);
        ov95_02247AE0(param0->unk_28, ((22 * 0xffff) / 360) / 2);

        {
            VecFx32 v3;
            ov95_02247A90(param0->unk_28, &v3);
        }
    }
}

static void ov95_02249B80 (UnkStruct_ov95_022497D8 * param0)
{
    if (param0->unk_28) {
        ov95_0224773C(param0->unk_28);
    }
}

static void ov95_02249B90 (UnkStruct_ov95_022497D8 * param0)
{
    NNSG2dImagePaletteProxy v0;
    NNSG2dImageProxy v1;
    UnkStruct_ov19_021DA864 v2;

    ov95_02247568(&param0->unk_10, 93, 7, 8);

    NNS_G2dInitImagePaletteProxy(&v0);
    NNS_G2dInitImageProxy(&v1);

    sub_02006F00(93, 9, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 58, &v1);
    sub_02006EE0(93, 10, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 58, &v0);
    ov95_022475C4(&v2, &param0->unk_10, &v1, &v0, 0);

    param0->unk_20[0] = ov95_022475E4(param0->unk_00, &v2, UnkEnum_ov95_02249B90_00, UnkEnum_ov95_02249B90_01, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

    sub_02021CAC(param0->unk_20[0], 0);
}

static void ov95_02249C10 (UnkStruct_ov95_022497D8 * param0)
{
    int v0;

    for (v0 = 0; v0 < 1; v0++) {
        if (param0->unk_20[v0]) {
            sub_02021BD4(param0->unk_20[v0]);
        }
    }

    ov95_022475A0(&param0->unk_10);
}

static void ov95_02249C28 (UnkStruct_ov95_02249C28 * param0)
{
    param0->unk_04 = NULL;
}

static void ov95_02249C30 (UnkStruct_ov95_02249C28 * param0)
{
    if (param0->unk_04) {
        SysTask_Done(param0->unk_04);
        param0->unk_04 = NULL;
    }
}

static void ov95_02249C44 (UnkStruct_ov95_022497D8 * param0, UnkStruct_ov95_02249C28 * param1)
{
    param1->unk_00 = param0;
    param1->unk_0C = param0->unk_2C;
    param1->unk_08 = param0->unk_28;

    param1->unk_10.x = 0;
    param1->unk_10.y = UnkEnum_ov95_02249C44_04;
    param1->unk_10.z = UnkEnum_ov95_02249C44_05;
    param1->unk_6C = UnkEnum_ov95_02249C44_02;
    param1->unk_6E = UnkEnum_ov95_02249C44_03;

    param1->unk_3C = (UnkEnum_ov95_02249C44_06 - UnkEnum_ov95_02249C44_04) / UnkEnum_ov95_02249C44_08;
    param1->unk_40 = (UnkEnum_ov95_02249C44_07 - UnkEnum_ov95_02249C44_05) / UnkEnum_ov95_02249C44_08;

    param1->unk_60 = 0;
    param1->unk_64 = 0;
    param1->unk_68 = 0;

    param1->unk_34.x = UnkEnum_ov95_02249C44_09;
    param1->unk_34.y = 0xe000;
    param1->unk_34.z = 0;

    ov95_02247990(param1->unk_0C, &param1->unk_34);

    param1->unk_54 = FX32_ONE;
    param1->unk_44 = UnkEnum_ov95_02249C44_00;
    param1->unk_48 = UnkEnum_ov95_02249C44_01;
    param1->unk_5C = 0;

    ov95_02249D38(param1);
    ov95_02247968(param1->unk_0C, &(param1->unk_28));
    ov95_02247978(param1->unk_0C, &(param1->unk_34));

    param1->unk_04 = SysTask_Start(ov95_02249E04, param1, 0);
}

static BOOL ov95_02249CF0 (UnkStruct_ov95_02249C28 * param0)
{
    return param0->unk_04 == NULL;
}

static void ov95_02249D00 (UnkStruct_ov95_02249C28 * param0, fx32 param1, fx32 param2, fx32 param3, int param4)
{
    if (param4) {
        param0->unk_4C = (param1 - param0->unk_44) / param4;
        param0->unk_50 = (param2 - param0->unk_48) / param4;
        param0->unk_58 = (param3 - param0->unk_54) / param4;
        param0->unk_5C = param4;
    }
}

static void ov95_02249D38 (UnkStruct_ov95_02249C28 * param0)
{
    int v0;

    v0 = (u16)(param0->unk_6C) / (65536 / 360);

    if (v0 >= 360) {
        v0 -= 360;
    }

    param0->unk_6C += param0->unk_6E;

    if (param0->unk_5C) {
        param0->unk_44 += param0->unk_4C;
        param0->unk_48 += param0->unk_50;
        param0->unk_54 += param0->unk_58;
        ov95_022479D4(param0->unk_0C, param0->unk_54);
        param0->unk_5C--;
    }

    param0->unk_1C.x = FX_Mul(sub_0201D1D4(v0), param0->unk_44);
    param0->unk_1C.y = FX_Mul(sub_0201D15C(v0), param0->unk_48);
    param0->unk_1C.z = 0;
    param0->unk_34.x += 0x300;

    ov95_02247990(param0->unk_0C, &(param0->unk_34));
    VEC_Add(&param0->unk_1C, &param0->unk_10, &param0->unk_28);
}

static void ov95_02249E04 (SysTask * param0, void * param1)
{
    UnkStruct_ov95_02249C28 * v0 = param1;

    if (v0->unk_68 < UnkEnum_ov95_02249C44_08) {
        v0->unk_68++;
    }

    switch (v0->unk_60) {
    case 0:
        v0->unk_10.y += v0->unk_3C;
        v0->unk_10.z += v0->unk_40;

        ov95_02249D38(v0);
        ov95_02247968(v0->unk_0C, &(v0->unk_28));

        if (ov95_022479DC(v0->unk_0C)) {
            v0->unk_60++;
        }
        break;
    case 1:
        if (ov95_022479DC(v0->unk_0C) == 0) {
            ov95_02249F30(v0->unk_00);
            v0->unk_60++;
        } else {
            v0->unk_10.y += v0->unk_3C;
            v0->unk_10.z += v0->unk_40;
            ov95_02249D38(v0);
            ov95_02247968(v0->unk_0C, &(v0->unk_28));
        }
        break;
    case 2:
        v0->unk_10.y += v0->unk_3C;
        v0->unk_10.z += v0->unk_40;

        ov95_02249D38(v0);
        ov95_02247968(v0->unk_0C, &(v0->unk_28));

        if (v0->unk_68 >= UnkEnum_ov95_02249C44_08) {
            ov95_02249D00(v0, UnkEnum_ov95_02249E04_00, UnkEnum_ov95_02249E04_01, UnkEnum_ov95_02249E04_02, UnkEnum_ov95_02249E04_03);
            v0->unk_64 = 0;
            v0->unk_60++;
        }
        break;
    case 3:
        ov95_02249D38(v0);
        ov95_02247968(v0->unk_0C, &(v0->unk_28));

        if (++(v0->unk_64) >= UnkEnum_ov95_02249E04_03) {
            ov95_022479A8(v0->unk_0C, 0);
            v0->unk_64 = 0;
            v0->unk_60++;
        }
        break;
    case 4:
        if (++(v0->unk_64) > 8) {
            v0->unk_04 = NULL;
            SysTask_Done(param0);
        }
        break;
    }
}

static void ov95_02249F30 (UnkStruct_ov95_022497D8 * param0)
{
    param0->unk_0C = 1;
}

static void ov95_02249F38 (SysTask * param0, void * param1)
{
    UnkStruct_ov95_022497D8 * v0 = param1;

    if (v0->unk_0C) {
        UnkStruct_ov115_0226527C v1;

        v0->unk_0C = 0;

        v1.unk_00 = UnkEnum_ov95_02249F38_00;
        v1.unk_02 = 0;
        v1.unk_04 = 0;

        sub_02019184(v0->unk_24, 3, 3, 0);
        sub_02019184(v0->unk_24, 7, 3, 256);

        ov95_02247AC0(v0->unk_28, &v1);
        GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);

        SysTask_Done(param0);
    }
}
