#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02018340_decl.h"

#include "constdata/const_020F2DBC.h"

#include "struct_defs/struct_020279FC.h"
#include "struct_defs/struct_02089438.h"
#include "struct_defs/struct_02089688.h"
#include "struct_defs/struct_0208BE5C.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02002F38.h"
#include "unk_020067E8.h"
#include "narc.h"
#include "unk_0200C6E4.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "gx_layers.h"
#include "strbuf.h"
#include "unk_02023FCC.h"
#include "unk_020393C8.h"
#include "unk_020890F4.h"
#include "unk_02089604.h"
#include "unk_0208A3F4.h"

static void sub_0208945C(UnkStruct_02018340 * param0);
static void sub_020895CC(void * param0);
static int sub_020890F4(UnkStruct_020067E8 * param0, int * param1);
static int sub_0208924C(UnkStruct_020067E8 * param0, int * param1);
static int sub_0208927C(UnkStruct_020067E8 * param0, int * param1);

const UnkStruct_0208BE5C Unk_020F2DBC = {
    sub_020890F4,
    sub_0208924C,
    sub_0208927C,
    0xffffffff,
};

static int sub_020890F4 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_02089688 * v0;

    Heap_Create(3, 101, 0x40000);

    v0 = sub_0200681C(param0, sizeof(UnkStruct_02089688), 101);
    memset(v0, 0, sizeof(UnkStruct_02089688));
    v0->unk_38C = *(( UnkStruct_02089438 * )sub_02006840(param0));

    sub_02017798(NULL, NULL);
    sub_020177A4();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    v0->unk_2C0.unk_00 = NARC_ctor(159, 101);
    v0->unk_2C0.unk_0C = sub_02018340(101);
    v0->unk_2C0.unk_10 = sub_02002F38(101);

    sub_02003858(v0->unk_2C0.unk_10, 1);
    sub_02002F70(v0->unk_2C0.unk_10, 0, 0x200, 101);
    sub_02002F70(v0->unk_2C0.unk_10, 1, 0x200, 101);
    sub_02002F70(v0->unk_2C0.unk_10, 2, 0x200, 101);
    sub_02002F70(v0->unk_2C0.unk_10, 3, 0x200, 101);
    sub_0208945C(v0->unk_2C0.unk_0C);
    sub_0208A3F4(v0);
    sub_02089688(v0);

    {
        sub_0201E3D8();
        sub_0201E450(4);
        sub_0208A0B8(v0);
    }

    if (v0->unk_38C.unk_30 != 0) {
        sub_02039734();
        sub_020397C8(1, 101);
    }

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2, 15, 7);
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 7, 8);

    sub_02017798(sub_020895CC, v0);

    return 1;
}

static int sub_0208924C (UnkStruct_020067E8 * param0, int * param1)
{
    BOOL v0;
    UnkStruct_02089688 * v1;

    v1 = sub_0200682C(param0);
    v0 = sub_02089BEC(v1);

    if (v1->unk_38C.unk_30 != 0) {
        sub_020397B0(WM_LINK_LEVEL_3 - DWC_GetLinkLevel());
    }

    return v0 ? 1 : 0;
}

static int sub_0208927C (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_02089688 * v0;

    v0 = sub_0200682C(param0);

    if (v0->unk_38C.unk_30 != 0) {
        sub_02039794();
    }

    sub_0208A6CC(v0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
    sub_02019044(v0->unk_2C0.unk_0C, 1);
    sub_02019044(v0->unk_2C0.unk_0C, 2);
    sub_02019044(v0->unk_2C0.unk_0C, 3);
    sub_02019044(v0->unk_2C0.unk_0C, 4);
    sub_02019044(v0->unk_2C0.unk_0C, 5);
    sub_02019044(v0->unk_2C0.unk_0C, 6);
    sub_02019044(v0->unk_2C0.unk_0C, 7);
    Heap_FreeToHeap(v0->unk_2C0.unk_0C);
    sub_02002FA0(v0->unk_2C0.unk_10, 0);
    sub_02002FA0(v0->unk_2C0.unk_10, 1);
    sub_02002FA0(v0->unk_2C0.unk_10, 2);
    sub_02002FA0(v0->unk_2C0.unk_10, 3);
    sub_02002F54(v0->unk_2C0.unk_10);
    NARC_dtor(v0->unk_2C0.unk_00);

    {
        u32 v1;
        v1 = sub_0201E530();
    }

    sub_0200D0B0(v0->unk_2C0.unk_04, v0->unk_2C0.unk_08);
    sub_0200C8D4(v0->unk_2C0.unk_04);
    sub_02024034(v0->unk_2C0.unk_14);
    sub_02006830(param0);
    Heap_Destroy(101);

    return 1;
}

UnkStruct_02089438 * sub_020893B4 (int param0, int param1, int param2[], UnkStruct_020279FC * param3, u32 param4, u32 param5)
{
    int v0;
    UnkStruct_02089438 * v1 = NULL;

    v1 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_02089438));

    v1->unk_00 = param1;
    v1->unk_1C = Strbuf_Init(param1 + 1, param0);
    v1->unk_20 = param3;

    for (v0 = 0; v0 < 4; v0++) {
        v1->unk_04[v0] = param2[v0];
    }

    v1->unk_04[v0] = param2[v0 - 1];
    v1->unk_2C = param4;
    v1->unk_30 = param5;

    return v1;
}

UnkStruct_02089438 * sub_02089400 (int param0, int param1, int param2[], UnkStruct_020279FC * param3, u32 param4, u32 param5)
{
    UnkStruct_02089438 * v0 = sub_020893B4(param0, param1, param2, param3, param4, param5);

    v0->unk_24 = 0;
    v0->unk_28 = 0;
    return v0;
}

UnkStruct_02089438 * sub_0208941C (int param0, int param1, int param2[], UnkStruct_020279FC * param3, u32 param4, u32 param5, u32 param6, u32 param7)
{
    UnkStruct_02089438 * v0 = sub_020893B4(param0, param1, param2, param3, param4, param5);

    v0->unk_24 = param6;
    v0->unk_28 = param7;
    return v0;
}

void sub_02089438 (UnkStruct_02089438 * param0)
{
    GF_ASSERT(param0->unk_1C != NULL);
    GF_ASSERT(param0 != NULL);

    Strbuf_Free(param0->unk_1C);
    Heap_FreeToHeap(param0);
}

static void sub_0208945C (UnkStruct_02018340 * param0)
{
    GXLayers_DisableEngineALayers();

    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_128_A,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_32_H,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_64_E,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_01_BC,
            GX_VRAM_TEXPLTT_01_FG
        };

        GXLayers_SetBanks(&v0);

        MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);
    }

    {
        UnkStruct_ov97_0222DB78 v1[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0000,
                GX_BG_CHARBASE_0x04000,
                GX_BG_EXTPLTT_01,
                0x1,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x1000,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x1000,
                GX_BG_CHARBASE_0x0c000,
                GX_BG_EXTPLTT_01,
                0x2,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x1800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x3000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                0x3,
                0,
                0,
                0
            },
        };

        sub_020183C4(param0, 1, &v1[0], 0);
        sub_020183C4(param0, 2, &v1[1], 0);
        sub_020183C4(param0, 3, &v1[2], 0);
        sub_02019EBC(param0, 1);
        sub_02019EBC(param0, 2);
        sub_02019EBC(param0, 3);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v2[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x6800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                0x0,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x7000,
                GX_BG_CHARBASE_0x04000,
                GX_BG_EXTPLTT_01,
                0x1,
                0,
                0,
                0
            },
            {
                0
            },
            {
                0
            },
        };

        sub_020183C4(param0, 4, &v2[0], 0);
        sub_020183C4(param0, 5, &v2[1], 0);
        sub_020183C4(param0, 6, &v2[2], 0);
        sub_020183C4(param0, 7, &v2[3], 0);
        sub_02019EBC(param0, 4);
        sub_02019EBC(param0, 5);
        sub_02019EBC(param0, 6);
        sub_02019EBC(param0, 7);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
    }

    Unk_021BF67C.unk_65 = 1;

    GXLayers_SwapDisplay();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void sub_020895CC (void * param0)
{
    UnkStruct_02089688 * v0 = param0;

    sub_0201DCAC();
    sub_0200C800();
    sub_02003694(v0->unk_2C0.unk_10);
    sub_0201C2B8(v0->unk_2C0.unk_0C);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}
