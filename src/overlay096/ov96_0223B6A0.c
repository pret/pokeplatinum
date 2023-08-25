#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "inlines.h"

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "overlay096/struct_ov96_0223BF40_decl.h"

#include "struct_defs/struct_0206BC70.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay096/struct_ov96_0223BF40_t.h"
#include "overlay115/struct_ov115_02261520.h"

#include "unk_02001AF4.h"
#include "unk_020041CC.h"
#include "unk_020067E8.h"
#include "narc.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "unk_02033200.h"
#include "unk_020393C8.h"
#include "unk_02099550.h"
#include "overlay096/ov96_0223B140.h"
#include "overlay096/ov96_0223B6A0.h"
#include "overlay096/ov96_0223BCE0.h"

static void ov96_0223B940(void * param0);
static void ov96_0223B960(void);
static void ov96_0223B980(UnkStruct_ov96_0223BF40 * param0, UnkStruct_020067E8 * param1);
static void ov96_0223B99C(UnkStruct_ov96_0223BF40 * param0);
static void ov96_0223B9A0(void);
static void ov96_0223B9D0(UnkStruct_ov96_0223BF40 * param0);
static void ov96_0223BB0C(UnkStruct_ov96_0223BF40 * param0);
static void ov96_0223BC2C(DWCAllocType param0, void * param1, u32 param2);
static void * ov96_0223BC04(DWCAllocType param0, u32 param1, int param2);
static void ov96_0223BC64(UnkStruct_ov96_0223BF40 * param0);
static void ov96_0223BC8C(UnkStruct_ov96_0223BF40 * param0);

static NNSFndHeapHandle Unk_ov96_0223DEF0;

static int (* Unk_ov96_0223DCD4[][3])(UnkStruct_ov96_0223BF40 *, int) = {
    {ov96_0223BCE0, ov96_0223BDBC, ov96_0223BDEC}
};

UnkStruct_ov96_0223BF40 * Unk_ov96_0223DEEC;

int ov96_0223B6A0 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov96_0223BF40 * v0;

    switch (*param1) {
    case 0:
        sub_02017798(NULL, NULL);
        sub_020177A4();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        Heap_Create(3, 68, 0x50000);

        v0 = sub_0200681C(param0, sizeof(UnkStruct_ov96_0223BF40), 68);
        memset(v0, 0, sizeof(UnkStruct_ov96_0223BF40));
        v0->unk_04 = sub_02018340(68);
        Unk_ov96_0223DEEC = v0;

        {
            UnkStruct_ov84_0223BA5C v1 = {
                GX_DISPMODE_GRAPHICS, GX_BGMODE_0, GX_BGMODE_0, GX_BG0_AS_2D,
            };

            sub_02018368(&v1);
        }

        v0->unk_BCC = sub_0200B368(11, 32, 68);
        v0->unk_BD0 = sub_0200B144(0, 26, 670, 68);
        v0->unk_BD4 = sub_0200B144(0, 26, 674, 68);
        v0->unk_BD8 = sub_0200B144(0, 26, 695, 68);

        sub_02017DD4(4, 8);
        ov96_0223B980(v0, param0);
        ov96_0223BC64(v0);
        sub_02004550(52, 0, 0);

        v0->unk_24 = Heap_AllocFromHeap(68, 0x20000 + 32);
        v0->unk_28 = NNS_FndCreateExpHeap((void *)(((u32)v0->unk_24 + 31) / 32 * 32), 0x20000);

        sub_02004550(11, 1175, 1);

        *param1 = 1;
        break;
    case 1:
        sub_02099550();
        sub_020995B4();
        sub_02033478();
        (*param1) = 0;
        return 1;
        break;
    }

    return 0;
}

int ov96_0223B7F8 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov96_0223BF40 * v0 = sub_0200682C(param0);
    int v1;

    DWC_UpdateConnection();
    ov96_0223B15C();
    DWC_UpdateConnection();

    switch (*param1) {
    case 0:
        if (sub_020334A4()) {
            Unk_ov96_0223DEF0 = v0->unk_28;
            DWC_SetMemFunc(ov96_0223BC04, ov96_0223BC2C);
            *param1 = 1;
        }
        break;
    case 1:
        *param1 = (*Unk_ov96_0223DCD4[v0->unk_10][0])(v0, *param1);
        break;
    case 2:
        if (sub_0200F2AC()) {
            *param1 = 3;
        }
        break;
    case 3:
        *param1 = (*Unk_ov96_0223DCD4[v0->unk_10][1])(v0, *param1);
        break;
    case 4:
        if (sub_0200F2AC()) {
            *param1 = (*Unk_ov96_0223DCD4[v0->unk_10][2])(v0, *param1);
        }
        break;
    case 5:
        return 1;
        break;
    }

    if (v0->unk_BF4 != NULL) {
        sub_020219F8(v0->unk_BF4);
    }

    return 0;
}

int ov96_0223B8CC (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov96_0223BF40 * v0 = sub_0200682C(param0);
    int v1;

    Heap_FreeToHeap(v0->unk_24);
    sub_020995C4();
    sub_02099560();

    ov96_0223BC8C(v0);

    sub_0200B190(v0->unk_BD8);
    sub_0200B190(v0->unk_BD4);
    sub_0200B190(v0->unk_BD0);
    sub_0200B3F0(v0->unk_BCC);

    ov96_0223B99C(v0);

    sub_020334CC();
    Heap_FreeToHeap(v0->unk_04);
    sub_02006830(param0);
    sub_02017798(NULL, NULL);
    Heap_Destroy(68);

    return 1;
}

static void ov96_0223B940 (void * param0)
{
    UnkStruct_ov96_0223BF40 * v0 = param0;

    sub_0201DCAC();
    sub_0200A858();

    inline_ov61_0222C1FC(&v0->unk_FF8);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov96_0223B960 (void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
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

static void ov96_0223B980 (UnkStruct_ov96_0223BF40 * param0, UnkStruct_020067E8 * param1)
{
    param0->unk_00 = (UnkStruct_0206BC70 *)sub_02006840(param1);
    param0->unk_10 = 0;

    ov96_0223BC5C(param0, 0, 0);
}

static void ov96_0223B99C (UnkStruct_ov96_0223BF40 * param0)
{
    return;
}

static void ov96_0223B9A0 (void)
{
    {
        UnkStruct_ov22_022559F8 v0 = {
            20, 2048, 2048, 68
        };

        sub_0201E86C(&v0);
    }

    sub_0201F834(20, 68);
    sub_0201E994();
    sub_0201F8E4();
}

static void ov96_0223B9D0 (UnkStruct_ov96_0223BF40 * param0)
{
    int v0;
    NARC * v1;

    v1 = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTRADE, 68);

    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 126, 0, 32, 0, 126, 0, 32, 68);

    param0->unk_BF4 = sub_020095C4(10, &param0->unk_BF8, 68);

    sub_0200964C(&param0->unk_BF8, 0, (256 * FX32_ONE));

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_D84[v0] = sub_02009714(2, v0, 68);
    }

    param0->unk_D94[0][0] = sub_02009A4C(param0->unk_D84[0], v1, 35, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 68);
    param0->unk_D94[0][1] = sub_02009B04(param0->unk_D84[1], v1, 9, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 3, 68);
    param0->unk_D94[0][2] = sub_02009BC4(param0->unk_D84[2], v1, 36, 1, 0, 2, 68);
    param0->unk_D94[0][3] = sub_02009BC4(param0->unk_D84[3], v1, 37, 1, 0, 3, 68);

    sub_0200A328(param0->unk_D94[0][0]);
    sub_0200A5C8(param0->unk_D94[0][1]);
    NARC_dtor(v1);
}

static const u16 Unk_ov96_0223DA80[][2] = {
    {0xE0, 0x6F},
    {0xE0, 0x81}
};

void ov96_0223BAE0 (UnkStruct_ov115_02261520 * param0, UnkStruct_ov96_0223BF40 * param1, UnkStruct_ov19_021DA864 * param2, int param3)
{
    param0->unk_00 = param1->unk_BF4;
    param0->unk_04 = param2;
    param0->unk_08.z = 0;
    param0->unk_14.x = FX32_ONE;
    param0->unk_14.y = FX32_ONE;
    param0->unk_14.z = FX32_ONE;
    param0->unk_20 = 0;
    param0->unk_24 = 1;
    param0->unk_28 = param3;
    param0->unk_2C = 68;
}

static void ov96_0223BB0C (UnkStruct_ov96_0223BF40 * param0)
{
    int v0;

    sub_020093B4(&param0->unk_DC4, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 0, param0->unk_D84[0], param0->unk_D84[1], param0->unk_D84[2], param0->unk_D84[3], NULL, NULL);

    {
        UnkStruct_ov115_02261520 v1;

        ov96_0223BAE0(&v1, param0, &param0->unk_DC4, NNS_G2D_VRAM_TYPE_2DMAIN);

        for (v0 = 0; v0 < 2; v0++) {
            v1.unk_08.x = FX32_ONE * Unk_ov96_0223DA80[v0][0];
            v1.unk_08.y = FX32_ONE * Unk_ov96_0223DA80[v0][1];
            param0->unk_E30[v0] = sub_02021AA0(&v1);
            sub_02021CC8(param0->unk_E30[v0], 1);
            sub_02021D6C(param0->unk_E30[v0], v0);
            sub_02021CAC(param0->unk_E30[v0], 0);
        }
    }
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    sub_02039734();
}

static const UnkStruct_ov61_0222C884 Unk_ov96_0223DA78 = {
    0x0,
    0x17,
    0xD,
    0x7,
    0x4,
    0xD,
    0x0
};

UnkStruct_02001AF4 * ov96_0223BBC8 (UnkStruct_02018340 * param0, int param1, int param2)
{
    UnkStruct_ov61_0222C884 v0;

    v0 = Unk_ov96_0223DA78;
    v0.unk_02 = param1;
    v0.unk_06 = param2;

    return sub_02002100(param0, &v0, (1 + (18 + 12)), 11, 68);
}

void ov96_0223BBFC (UnkStruct_ov96_0223BF40 * param0, int param1, int param2)
{
    param0->unk_1C = param1;
    param0->unk_20 = param2;
}

static void * ov96_0223BC04 (DWCAllocType param0, u32 param1, int param2)
{
#pragma unused( param0 )
    void * v0;
    OSIntrMode v1;

    v1 = OS_DisableInterrupts();
    v0 = NNS_FndAllocFromExpHeapEx(Unk_ov96_0223DEF0, param1, param2);

    OS_RestoreInterrupts(v1);

    if (v0 == NULL) {
        (void)0;
    }

    return v0;
}

static void ov96_0223BC2C (DWCAllocType param0, void * param1, u32 param2)
{
#pragma unused( param0, param2 )
    OSIntrMode v0;

    if (!param1) {
        return;
    }

    v0 = OS_DisableInterrupts();

    NNS_FndFreeToExpHeap(Unk_ov96_0223DEF0, param1);
    OS_RestoreInterrupts(v0);
}

int ov96_0223BC50 (void)
{
    return WM_LINK_LEVEL_3 - DWC_GetLinkLevel();
}

void ov96_0223BC5C (UnkStruct_ov96_0223BF40 * param0, int param1, int param2)
{
    param0->unk_14 = param1;
    param0->unk_18 = param2;
}

static void ov96_0223BC64 (UnkStruct_ov96_0223BF40 * param0)
{
    ov96_0223B960();
    ov96_0223B9A0();
    ov96_0223B9D0(param0);
    ov96_0223BB0C(param0);

    sub_02017798(ov96_0223B940, param0);
}

static void ov96_0223BC8C (UnkStruct_ov96_0223BF40 * param0)
{
    int v0;

    sub_0200A4E4(param0->unk_D94[0][0]);
    sub_0200A6DC(param0->unk_D94[0][1]);

    for (v0 = 0; v0 < 4; v0++) {
        sub_02009754(param0->unk_D84[v0]);
    }

    sub_02021964(param0->unk_BF4);

    param0->unk_BF4 = NULL;

    sub_0200A878();
    sub_0201E958();
    sub_0201F8B4();
}
