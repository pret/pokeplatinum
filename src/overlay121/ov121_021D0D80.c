#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_020203AC_decl.h"

#include "struct_defs/struct_020170F4.h"
#include "struct_defs/struct_02017248.h"
#include "struct_defs/struct_02017294.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay115/struct_ov115_0226527C.h"

#include "unk_02002328.h"
#include "unk_02005474.h"
#include "unk_020067E8.h"
#include "narc.h"
#include "unk_0200D9E8.h"
#include "unk_0200F174.h"
#include "unk_020170BC.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_0201E3D8.h"
#include "gx_layers.h"
#include "unk_02020020.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"
#include "overlay121/ov121_021D0D80.h"

typedef struct {
    UnkStruct_0207C690 * unk_00;
    UnkStruct_020203AC * unk_04;
    SysTask * unk_08;
    int unk_0C;
    int unk_10;
    UnkStruct_02017294 unk_14;
    UnkStruct_02017248 unk_8C;
    UnkStruct_02017248 unk_A0;
    UnkStruct_020170F4 unk_B4;
    u32 unk_C4;
    int unk_C8;
    int unk_CC;
    fx32 unk_D0;
    int unk_D4;
    NNSFndAllocator unk_D8;
} UnkStruct_ov121_021D0FF4;

static void ov121_021D0F68(SysTask * param0, void * param1);
static void ov121_021D0F7C(void * param0);
static void ov121_021D0F94(void);
static void ov121_021D0FF4(UnkStruct_ov121_021D0FF4 * param0);
static void ov121_021D1068(UnkStruct_ov121_021D0FF4 * param0);
static void ov121_021D1074(UnkStruct_ov121_021D0FF4 * param0);
static void ov121_021D1184(UnkStruct_ov121_021D0FF4 * param0);
static void ov121_021D11A8(UnkStruct_ov121_021D0FF4 * param0);
static UnkStruct_0207C690 * ov121_021D1270(int param0);
static void ov121_021D128C(void);
static void ov121_021D1310(UnkStruct_0207C690 * param0);
static void ov121_021D1318(UnkStruct_ov121_021D0FF4 * param0);

int ov121_021D0D80 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov121_021D0FF4 * v0;

    sub_02017798(NULL, NULL);
    sub_020177A4();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_BlendNone();
    G2S_BlendNone();

    Heap_Create(3, 30, 0x50000);

    v0 = sub_0200681C(param0, sizeof(UnkStruct_ov121_021D0FF4), 30);
    MI_CpuClear8(v0, sizeof(UnkStruct_ov121_021D0FF4));
    v0->unk_00 = ov121_021D1270(30);

    SetAutorepeat(4, 8);
    ov121_021D0F94();
    sub_0201E3D8();
    sub_0201E450(4);

    ov121_021D1074(v0);
    ov121_021D0FF4(v0);
    sub_0200F174(0, 1, 1, 0x0, 16, 1, 30);

    gCoreSys.unk_65 = 0;

    GXLayers_SwapDisplay();
    GXLayers_TurnBothDispOn();
    sub_02002AC8(1);
    sub_02002AE4(0);
    sub_02002B20(0);

    v0->unk_08 = SysTask_Start(ov121_021D0F68, v0, 60000);
    sub_02017798(ov121_021D0F7C, v0);

    return 1;
}

int ov121_021D0E7C (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov121_021D0FF4 * v0 = sub_0200682C(param0);

    switch (*param1) {
    case 0:
        if (ScreenWipe_Done() == 1) {
            (*param1)++;
        }
        break;
    case 1:
        if (v0->unk_10 == 15) {
            Sound_PlayEffect(1491);
        }

        v0->unk_10++;
        v0->unk_0C++;

        if (v0->unk_0C > 85) {
            (*param1)++;
        }
        break;
    case 2:
        sub_0200F174(0, 0, 0, 0x0, 20, 1, 30);
        (*param1)++;
        break;
    case 3:
        if (ScreenWipe_Done() == 1) {
            return 1;
        }
        break;
    }

    ov121_021D1318(v0);

    return 0;
}

int ov121_021D0F14 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov121_021D0FF4 * v0 = sub_0200682C(param0);

    SysTask_Done(v0->unk_08);

    ov121_021D1184(v0);
    ov121_021D1068(v0);
    ov121_021D1310(v0->unk_00);

    sub_02017798(NULL, NULL);
    sub_020177A4();
    sub_0201E530();
    sub_02002AC8(0);
    sub_02002AE4(0);
    sub_02002B20(0);
    sub_02006830(param0);
    Heap_Destroy(30);

    return 1;
}

static void ov121_021D0F68 (SysTask * param0, void * param1)
{
    UnkStruct_ov121_021D0FF4 * v0 = param1;

    ov121_021D11A8(v0);
    sub_020241BC(GX_SORTMODE_MANUAL, GX_BUFFERMODE_W);
}

static void ov121_021D0F7C (void * param0)
{
    UnkStruct_ov121_021D0FF4 * v0 = param0;
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov121_021D0F94 (void)
{
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

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
            GX_VRAM_TEX_01_AB,
            GX_VRAM_TEXPLTT_01_FG
        };

        GXLayers_SetBanks(&v0);

        MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);
    }
}

static void ov121_021D0FF4 (UnkStruct_ov121_021D0FF4 * param0)
{
    {
        static const UnkStruct_ov115_0226527C v0 = {
            (0x10000 - 0x1c7d),
            ((0 * 0xffff) / 360),
            ((0 * 0xffff) / 360),
        };
        VecFx32 v1 = {0, 0, 0};

        param0->unk_04 = sub_020203AC(30);

        sub_020206D0(&v1, (160 << FX32_SHIFT), &v0, (((22 * 0xffff) / 360)), 0, 0, param0->unk_04);
        sub_020206BC(0, (FX32_ONE * 300), param0->unk_04);

        {
            UnkStruct_ov115_0226527C v2 = {0, 0, 0, 0};

            v2 = sub_02020A94(param0->unk_04);
            v2.unk_00 = (0x10000 - 0x3fef);

            sub_020209D4(&v2, param0->unk_04);
        }

        sub_020203D4(param0->unk_04);
    }
}

static void ov121_021D1068 (UnkStruct_ov121_021D0FF4 * param0)
{
    sub_020203B8(param0->unk_04);
}

static void ov121_021D1074 (UnkStruct_ov121_021D0FF4 * param0)
{
    NARC * v0;

    Heap_FndInitAllocatorForExpHeap(&param0->unk_D8, 30, 4);

    v0 = NARC_ctor(NARC_INDEX_DEMO__TITLE__TITLEDEMO, 30);

    {
        sub_020170D8(&param0->unk_B4, v0, 16, 30);

        NNS_G3dMdlUseMdlAlpha(param0->unk_B4.unk_08);
        NNS_G3dMdlUseMdlPolygonID(param0->unk_B4.unk_08);

        sub_02017164(&param0->unk_8C, &param0->unk_B4, v0, 18, 30, &param0->unk_D8);
        sub_02017240(&param0->unk_8C, 0);

        sub_02017164(&param0->unk_A0, &param0->unk_B4, v0, 17, 30, &param0->unk_D8);
        sub_02017240(&param0->unk_A0, 0);
        sub_02017258(&param0->unk_14, &param0->unk_B4);

        sub_02017350(&param0->unk_14, 0, 0, 0);
        sub_0201736C(&param0->unk_14, (FX32_ONE), (FX32_ONE), (FX32_ONE));
        sub_02017348(&param0->unk_14, 1);

        sub_0201727C(&param0->unk_14, &param0->unk_8C);
        sub_0201727C(&param0->unk_14, &param0->unk_A0);
    }

    NARC_dtor(v0);

    param0->unk_C8 = ((0x10000 - 0x3fef) - (0x10000 - 0x1c7d)) / 30;
    param0->unk_CC = (0x10000 - 0x1c7d);
    param0->unk_D0 = (FX32_ONE);
    param0->unk_D4 = (60 << 8);
}

static void ov121_021D1184 (UnkStruct_ov121_021D0FF4 * param0)
{
    sub_02017110(&param0->unk_B4);
    sub_020171A0(&param0->unk_8C, &param0->unk_D8);
    sub_020171A0(&param0->unk_A0, &param0->unk_D8);
}

static void ov121_021D11A8 (UnkStruct_ov121_021D0FF4 * param0)
{
    VecFx32 v0, v1;
    MtxFx33 v2;

    v0.x = FX32_ONE;
    v0.y = FX32_ONE;
    v0.z = FX32_ONE;

    v1.x = 0;
    v1.y = 0;
    v1.z = 0;

    MTX_Identity33(&v2);

    sub_020241B4();
    sub_020203D4(param0->unk_04);
    sub_02020854(0, param0->unk_04);
    sub_020203EC();

    NNS_G3dGlbLightVector(0, 0, -FX32_ONE, 0);
    NNS_G3dGlbLightColor(0, GX_RGB(28, 28, 28));
    NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
    NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
    NNS_G3dGlbSetBaseTrans(&v1);
    NNS_G3dGlbSetBaseRot(&v2);
    NNS_G3dGlbSetBaseScale(&v0);

    sub_020171CC(&param0->unk_8C, FX32_ONE);
    sub_020171CC(&param0->unk_A0, FX32_ONE);

    NNS_G3dGePushMtx();

    {
        sub_02017294(&param0->unk_14);
    }

    NNS_G3dGePopMtx(1);
}

static UnkStruct_0207C690 * ov121_021D1270 (int param0)
{
    UnkStruct_0207C690 * v0;

    v0 = sub_02024220(param0, 0, 2, 0, 2, ov121_021D128C);
    return v0;
}

static void ov121_021D128C (void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);

    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(0);
    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_ViewPort(0, 0, 255, 191);
}

static void ov121_021D1310 (UnkStruct_0207C690 * param0)
{
    sub_020242C4(param0);
}

static void ov121_021D1318 (UnkStruct_ov121_021D0FF4 * param0)
{
    VecFx32 v0 = {0, 0, 0};
    UnkStruct_ov115_0226527C v1 = {0, 0, 0, 0};
    int v2;

    sub_0202094C(-(param0->unk_D4 >> 8), param0->unk_04);
    param0->unk_D4 -= 0x80;

    if (param0->unk_D4 < (16 << 8)) {
        param0->unk_D4 = (16 << 8);
    }

    param0->unk_C4++;
}
