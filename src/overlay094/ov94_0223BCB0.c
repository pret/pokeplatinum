#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "inlines.h"

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02022550_decl.h"

#include "struct_defs/struct_0203E0FC.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay094/struct_ov94_0223FD4C.h"
#include "overlay115/struct_ov115_02261520.h"

#include "unk_02001AF4.h"
#include "unk_020041CC.h"
#include "overlay_manager.h"
#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "message.h"
#include "string_template.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "trainer_info.h"
#include "game_options.h"
#include "unk_02033200.h"
#include "unk_020797C8.h"
#include "pokemon_icon.h"
#include "unk_02099550.h"
#include "overlay094/ov94_0223B140.h"
#include "overlay094/ov94_0223BCB0.h"
#include "overlay094/ov94_0223C610.h"
#include "overlay094/ov94_0223D0C4.h"
#include "overlay094/ov94_0223DC04.h"
#include "overlay094/ov94_0223E46C.h"
#include "overlay094/ov94_0223FB48.h"
#include "overlay094/ov94_022414B8.h"
#include "overlay094/ov94_02242AD0.h"
#include "overlay094/ov94_02243EF8.h"
#include "overlay094/ov94_022443E0.h"
#include "overlay094/ov94_022444C8.h"
#include "overlay094/ov94_02244950.h"

static void ov94_0223BFE4(void * param0);
static void ov94_0223C01C(void);
static void ov94_0223C03C(UnkStruct_ov94_0223FD4C * param0, OverlayManager * param1);
static void ov94_0223C0A0(UnkStruct_ov94_0223FD4C * param0);
static void ov94_0223C0A4(void);
static void ov94_0223C0D4(UnkStruct_ov94_0223FD4C * param0);
static void ov94_0223C32C(UnkStruct_ov94_0223FD4C * param0);
static void ov94_0223C490(DWCAllocType param0, void * param1, u32 param2);
static void * ov94_0223C468(DWCAllocType param0, u32 param1, int param2);
static void ov94_0223C4E0(UnkStruct_ov94_0223FD4C * param0);
static void ov94_0223C508(UnkStruct_ov94_0223FD4C * param0);
static void ov94_0223C578(UnkStruct_ov94_0223FD4C * param0);
static void ov94_0223C598(UnkStruct_ov94_0223FD4C * param0);

static NNSFndHeapHandle Unk_ov94_02246C04;

static int (* Unk_ov94_0224674C[][3])(UnkStruct_ov94_0223FD4C *, int) = {
    {ov94_02244950, ov94_022449FC, ov94_02244A2C},
    {ov94_0223C610, ov94_0223C6D4, ov94_0223C6F4},
    {ov94_0223D0C4, ov94_0223D19C, ov94_0223D1B0},
    {ov94_0223DC04, ov94_0223DCE4, ov94_0223DCF8},
    {ov94_0223E46C, ov94_0223E560, ov94_0223E574},
    {ov94_0223FB48, ov94_0223FBBC, ov94_0223FBDC},
    {ov94_022414B8, ov94_02241548, ov94_02241568},
    {ov94_02242AD0, ov94_02242B14, ov94_02242B34},
    {ov94_022443E0, ov94_02244490, ov94_022444BC},
    {ov94_022444C8, ov94_02244678, ov94_0224484C},
};

UnkStruct_ov94_0223FD4C * Unk_ov94_02246C08;

int ov94_0223BCB0 (OverlayManager * param0, int * param1)
{
    UnkStruct_ov94_0223FD4C * v0;

    switch (*param1) {
    case 0:
        SetMainCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        Heap_Create(3, 62, 0x70000);

        v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov94_0223FD4C), 62);
        memset(v0, 0, sizeof(UnkStruct_ov94_0223FD4C));
        v0->unk_04 = sub_02018340(62);
        Unk_ov94_02246C08 = v0;

        {
            UnkStruct_ov84_0223BA5C v1 = {
                GX_DISPMODE_GRAPHICS,
                GX_BGMODE_0,
                GX_BGMODE_0,
                GX_BG0_AS_2D,
            };

            sub_02018368(&v1);
        }

        v0->unk_B8C = StringTemplate_New(11, 64, 62);
        v0->unk_B90 = MessageLoader_Init(0, 26, 671, 62);
        v0->unk_B98 = MessageLoader_Init(0, 26, 674, 62);
        v0->unk_B9C = MessageLoader_Init(0, 26, 695, 62);
        v0->unk_B94 = MessageLoader_Init(0, 26, 412, 62);
        v0->unk_BA0 = MessageLoader_Init(0, 26, 694, 62);

        SetAutorepeat(4, 8);

        ov94_0223C03C(v0, param0);
        ov94_0223C4E0(v0);

        sub_02004550(11, 1175, 1);

        v0->unk_4C = Heap_AllocFromHeap(62, 0x20000 + 32);
        v0->unk_50 = NNS_FndCreateExpHeap((void *)(((u32)v0->unk_4C + 31) / 32 * 32), 0x20000);
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

int ov94_0223BE2C (OverlayManager * param0, int * param1)
{
    UnkStruct_ov94_0223FD4C * v0 = OverlayManager_Data(param0);

    DWC_UpdateConnection();
    ov94_0223B15C();

    switch (*param1) {
    case 0:
        if (sub_020334A4()) {
            Unk_ov94_02246C04 = v0->unk_50;
            DWC_SetMemFunc(ov94_0223C468, ov94_0223C490);
            *param1 = 1;
        }
        break;
    case 1:
        *param1 = (*Unk_ov94_0224674C[v0->unk_14][0])(v0, *param1);

        if (v0->unk_104) {
            ov94_0223C508(v0);
        }
        break;
    case 2:
        if (ScreenWipe_Done()) {
            *param1 = 3;
        }
        break;
    case 3:
        *param1 = (*Unk_ov94_0224674C[v0->unk_14][1])(v0, *param1);
        break;
    case 4:
        if (ScreenWipe_Done()) {
            if (v0->unk_104) {
                ov94_0223C4E0(v0);
                ov94_02243EF8(v0, TrainerInfo_Gender(v0->unk_00->unk_1C));
                ov94_02244234(v0, v0->unk_118, 0);
                ov94_0223D068(v0);
                v0->unk_104 = 0;
            }
            *param1 = (*Unk_ov94_0224674C[v0->unk_14][2])(v0, *param1);
        }
        break;
    case 5:
        return 1;
        break;
    }

    ov94_0223C578(v0);
    ov94_0223C598(v0);

    if (v0->unk_BE4 != NULL) {
        GraphicElementManager_Update(v0->unk_BE4);
    }

    return 0;
}

int ov94_0223BF54 (OverlayManager * param0, int * param1)
{
    UnkStruct_ov94_0223FD4C * v0 = OverlayManager_Data(param0);
    int v1;

    Heap_FreeToHeap(v0->unk_4C);
    sub_020995C4();
    sub_02099560();

    ov94_0223C508(v0);

    MessageLoader_Free(v0->unk_B94);
    MessageLoader_Free(v0->unk_B9C);
    MessageLoader_Free(v0->unk_B98);
    MessageLoader_Free(v0->unk_B90);
    MessageLoader_Free(v0->unk_BA0);
    StringTemplate_Free(v0->unk_B8C);

    ov94_0223C0A0(v0);

    sub_020334CC();
    Heap_FreeToHeap(v0->unk_04);
    Heap_FreeToHeap(v0->unk_00);
    OverlayManager_FreeData(param0);
    SetMainCallback(NULL, NULL);
    Heap_Destroy(62);

    return 1;
}

static void ov94_0223BFE4 (void * param0)
{
    UnkStruct_ov94_0223FD4C * v0 = param0;

    if (v0->unk_1118) {
        v0->unk_1118(param0);
        v0->unk_1118 = NULL;
    }

    sub_0201DCAC();
    sub_0200A858();

    inline_ov61_0222C1FC(&v0->unk_11B4);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov94_0223C01C (void)
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

static void ov94_0223C03C (UnkStruct_ov94_0223FD4C * param0, OverlayManager * param1)
{
    param0->unk_00 = (UnkStruct_0203E0FC *)OverlayManager_Args(param1);
    param0->unk_14 = 0;

    ov94_0223C4C0(param0, 0, 0);

    param0->unk_10C = 0;
    param0->unk_B7A.unk_00 = 0;
    param0->unk_B7A.unk_02 = 2 + 1;
    param0->unk_B7A.unk_03 = 0;
    param0->unk_B7A.unk_04 = 0;
    param0->unk_B80.unk_00 = 0;
    param0->unk_10F0 = 0;
    param0->unk_110 = 18;
    param0->unk_110C = 0;
    param0->unk_110E = 0;
    param0->unk_10F2 = 0;
    param0->unk_10DC = NULL;
    param0->unk_11B0 = 0;
}

static void ov94_0223C0A0 (UnkStruct_ov94_0223FD4C * param0)
{
    return;
}

static void ov94_0223C0A4 (void)
{
    {
        UnkStruct_ov22_022559F8 v0 = {
            20, 2048, 2048, 62
        };

        sub_0201E86C(&v0);
    }

    sub_0201F834(20, 62);
    sub_0201E994();
    sub_0201F8E4();
}

static void ov94_0223C0D4 (UnkStruct_ov94_0223FD4C * param0)
{
    int v0;
    NARC * v1;

    v1 = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTRADE, 62);

    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 126, 0, 32, 0, 126, 0, 32, 62);

    param0->unk_BE4 = sub_020095C4(72 + 6, &param0->unk_BE8, 62);

    sub_0200964C(&param0->unk_BE8, 0, (256 * FX32_ONE));

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_D74[v0] = sub_02009714(3, v0, 62);
    }

    param0->unk_D84[0][0] = sub_02009A4C(param0->unk_D74[0], v1, 18, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 62);
    param0->unk_D84[0][1] = sub_02009B04(param0->unk_D74[1], v1, 9, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 3, 62);
    param0->unk_D84[0][2] = sub_02009BC4(param0->unk_D74[2], v1, 19, 1, 0, 2, 62);
    param0->unk_D84[0][3] = sub_02009BC4(param0->unk_D74[3], v1, 20, 1, 0, 3, 62);
    param0->unk_D84[1][0] = sub_02009A4C(param0->unk_D74[0], v1, 32, 1, 1, NNS_G2D_VRAM_TYPE_2DSUB, 62);
    param0->unk_D84[1][1] = sub_02009B04(param0->unk_D74[1], v1, 8, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 9, 62);
    param0->unk_D84[1][2] = sub_02009BC4(param0->unk_D74[2], v1, 33, 1, 1, 2, 62);
    param0->unk_D84[1][3] = sub_02009BC4(param0->unk_D74[3], v1, 34, 1, 1, 3, 62);

    sub_0200A328(param0->unk_D84[0][0]);
    sub_0200A328(param0->unk_D84[1][0]);
    sub_0200A5C8(param0->unk_D84[0][1]);
    sub_0200A5C8(param0->unk_D84[1][1]);

    {
        void * v2;
        NNSG2dPaletteData * v3;
        int v4, v5, v6, v7;
        u16 * v8;

        v2 = sub_02006F88(19, PokeIconPalettesFileIndex(), &v3, 62);

        DC_FlushRange(v3->pRawData, (3 * 16) * 2);
        GX_LoadOBJPltt(v3->pRawData, 3 * 0x20, (3 * 16) * 2);

        v8 = (u16 *)v3->pRawData;

        for (v4 = 0; v4 < (3 * 16); v4++) {
            v5 = v8[v4] >> 10 & 0x1f;
            v6 = (v8[v4] >> 5) & 0x1f;
            v7 = v8[v4] & 0x1f;
            v5 /= 2; v6 /= 2; v7 /= 2;
            v8[v4] = (v5 << 10) | (v6 << 5) | v7;
        }

        DC_FlushRange(v3->pRawData, (3 * 16) * 2);
        GX_LoadOBJPltt(v3->pRawData, (3 + 3) * 0x20, (3 * 16) * 2);

        Heap_FreeToHeap(v2);
    }

    NARC_dtor(v1);
}

void ov94_0223C300 (CellActorInitParamsEx * param0, UnkStruct_ov94_0223FD4C * param1, CellActorResourceData * param2, int param3)
{
    param0->manager = param1->unk_BE4;
    param0->resourceData = param2;
    param0->position.z = 0;
    param0->affineScale.x = FX32_ONE;
    param0->affineScale.y = FX32_ONE;
    param0->affineScale.z = FX32_ONE;
    param0->affineZRotation = 0;
    param0->priority = 1;
    param0->vramType = param3;
    param0->heapID = 62;
}

static void ov94_0223C32C (UnkStruct_ov94_0223FD4C * param0)
{
    int v0;

    sub_020093B4(&param0->unk_DB4, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 0, param0->unk_D74[0], param0->unk_D74[1], param0->unk_D74[2], param0->unk_D74[3], NULL, NULL);
    sub_020093B4(&param0->unk_DD8, 1, 1, 1, 1, 0xffffffff, 0xffffffff, 0, 0, param0->unk_D74[0], param0->unk_D74[1], param0->unk_D74[2], param0->unk_D74[3], NULL, NULL);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static const UnkStruct_ov61_0222C884 Unk_ov94_022459F8 = {
    0x0,
    0x17,
    0xD,
    0x7,
    0x4,
    0xD,
    0x0
};

UIControlData * ov94_0223C3C0 (BGL * param0, int param1, int param2)
{
    UnkStruct_ov61_0222C884 v0;

    v0 = Unk_ov94_022459F8;
    v0.unk_02 = param1;
    v0.unk_06 = param2;

    return sub_02002100(param0, &v0, (1 + (18 + 12)), 11, 62);
}

void ov94_0223C3F4 (UnkStruct_ov94_0223FD4C * param0, int param1, int param2)
{
    param0->unk_2C = param1;
    param0->unk_30 = param2;
}

void ov94_0223C3FC (GraphicElementData * param0, int param1, int param2)
{
    VecFx32 v0;

    v0.x = FX32_CONST(param1);
    v0.y = FX32_CONST(param2);
    v0.z = 0;

    GraphicElementData_SetPosition(param0, &v0);
}

static void * ov94_0223C468 (DWCAllocType param0, u32 param1, int param2)
{
#pragma unused( param0 )
    void * v0;
    OSIntrMode v1;

    v1 = OS_DisableInterrupts();
    v0 = NNS_FndAllocFromExpHeapEx(Unk_ov94_02246C04, param1, param2);

    OS_RestoreInterrupts(v1);

    if (v0 == NULL) {
        (void)0;
    }

    return v0;
}

static void ov94_0223C490 (DWCAllocType param0, void * param1, u32 param2)
{
#pragma unused( param0, param2 )
    OSIntrMode v0;

    if (!param1) {
        return;
    }

    v0 = OS_DisableInterrupts();

    NNS_FndFreeToExpHeap(Unk_ov94_02246C04, param1);
    OS_RestoreInterrupts(v0);
}

int ov94_0223C4B4 (void)
{
    return WM_LINK_LEVEL_3 - DWC_GetLinkLevel();
}

void ov94_0223C4C0 (UnkStruct_ov94_0223FD4C * param0, int param1, int param2)
{
    param0->unk_18 = param1;
    param0->unk_24 = param2;
}

void ov94_0223C4C8 (UnkStruct_ov94_0223FD4C * param0)
{
    param0->unk_20 = param0->unk_14;
    param0->unk_14 = param0->unk_18;
}

int ov94_0223C4D4 (UnkStruct_ov94_0223FD4C * param0)
{
    return Options_TextFrameDelay(param0->unk_00->unk_24);
}

static void ov94_0223C4E0 (UnkStruct_ov94_0223FD4C * param0)
{
    ov94_0223C01C();
    ov94_0223C0A4();
    ov94_0223C0D4(param0);
    ov94_0223C32C(param0);

    SetMainCallback(ov94_0223BFE4, param0);
}

static void ov94_0223C508 (UnkStruct_ov94_0223FD4C * param0)
{
    int v0;

    ov94_022443B8(param0);

    sub_0200A4E4(param0->unk_D84[0][0]);
    sub_0200A4E4(param0->unk_D84[1][0]);
    sub_0200A6DC(param0->unk_D84[0][1]);
    sub_0200A6DC(param0->unk_D84[1][1]);

    for (v0 = 0; v0 < 4; v0++) {
        sub_02009754(param0->unk_D74[v0]);
    }

    GraphicElementManager_Delete(param0->unk_BE4);
    param0->unk_BE4 = NULL;

    sub_0200A878();
    sub_0201E958();
    sub_0201F8B4();
}

static void ov94_0223C578 (UnkStruct_ov94_0223FD4C * param0)
{
    if (param0->unk_3A) {
        param0->unk_3A--;
    }
}

void ov94_0223C584 (UnkStruct_ov94_0223FD4C * param0)
{
    param0->unk_110E = 1;
    param0->unk_110C = 0;
}

static void ov94_0223C598 (UnkStruct_ov94_0223FD4C * param0)
{
    if (param0->unk_110E) {
        param0->unk_110C += sub_02079B54(param0->unk_00->unk_0C, param0->unk_110E - 1);
        param0->unk_110E++;

        if (param0->unk_110E == 19) {
            param0->unk_110E = 0;
        }
    }
}

void ov94_0223C5D8 (UnkStruct_ov94_0223FD4C * param0)
{
    param0->unk_10DC = sub_0200E7FC(&param0->unk_F5C, 1);
}

void ov94_0223C5F4 (UnkStruct_ov94_0223FD4C * param0)
{
    if (param0->unk_10DC != NULL) {
        DeleteWaitDial(param0->unk_10DC);
        param0->unk_10DC = NULL;
    }
}
