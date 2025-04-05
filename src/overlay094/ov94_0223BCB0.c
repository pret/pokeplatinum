#include "overlay094/ov94_0223BCB0.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "struct_defs/struct_0203E0FC.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay094/ov94_0223B140.h"
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
#include "overlay094/struct_ov94_0223FD4C.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "pc_boxes.h"
#include "pltt_transfer.h"
#include "pokemon_icon.h"
#include "render_oam.h"
#include "render_window.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "string_template.h"
#include "system.h"
#include "trainer_info.h"
#include "unk_020041CC.h"
#include "unk_0200F174.h"
#include "unk_02033200.h"
#include "unk_02099550.h"
#include "vram_transfer.h"

static void ov94_0223BFE4(void *param0);
static void ov94_0223C01C(void);
static void ov94_0223C03C(UnkStruct_ov94_0223FD4C *param0, OverlayManager *param1);
static void ov94_0223C0A0(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223C0A4(void);
static void ov94_0223C0D4(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223C32C(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223C490(DWCAllocType param0, void *param1, u32 param2);
static void *ov94_0223C468(DWCAllocType param0, u32 param1, int param2);
static void ov94_0223C4E0(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223C508(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223C578(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223C598(UnkStruct_ov94_0223FD4C *param0);

static NNSFndHeapHandle Unk_ov94_02246C04;

static int (*Unk_ov94_0224674C[][3])(UnkStruct_ov94_0223FD4C *, int) = {
    { ov94_02244950, ov94_022449FC, ov94_02244A2C },
    { ov94_0223C610, ov94_0223C6D4, ov94_0223C6F4 },
    { ov94_0223D0C4, ov94_0223D19C, ov94_0223D1B0 },
    { ov94_0223DC04, ov94_0223DCE4, ov94_0223DCF8 },
    { ov94_0223E46C, ov94_0223E560, ov94_0223E574 },
    { ov94_0223FB48, ov94_0223FBBC, ov94_0223FBDC },
    { ov94_022414B8, ov94_02241548, ov94_02241568 },
    { ov94_02242AD0, ov94_02242B14, ov94_02242B34 },
    { ov94_022443E0, ov94_02244490, ov94_022444BC },
    { ov94_022444C8, ov94_02244678, ov94_0224484C },
};

UnkStruct_ov94_0223FD4C *Unk_ov94_02246C08;

int ov94_0223BCB0(OverlayManager *param0, int *param1)
{
    UnkStruct_ov94_0223FD4C *v0;

    switch (*param1) {
    case 0:
        SetVBlankCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_62, 0x70000);

        v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov94_0223FD4C), HEAP_ID_62);
        memset(v0, 0, sizeof(UnkStruct_ov94_0223FD4C));
        v0->unk_04 = BgConfig_New(HEAP_ID_62);
        Unk_ov94_02246C08 = v0;

        {
            GraphicsModes v1 = {
                GX_DISPMODE_GRAPHICS,
                GX_BGMODE_0,
                GX_BGMODE_0,
                GX_BG0_AS_2D,
            };

            SetAllGraphicsModes(&v1);
        }

        v0->unk_B8C = StringTemplate_New(11, 64, HEAP_ID_62);
        v0->unk_B90 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0671, HEAP_ID_62);
        v0->unk_B98 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0674, HEAP_ID_62);
        v0->unk_B9C = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0695, HEAP_ID_62);
        v0->unk_B94 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_62);
        v0->unk_BA0 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COUNTRY_NAMES, HEAP_ID_62);

        SetAutorepeat(4, 8);

        ov94_0223C03C(v0, param0);
        ov94_0223C4E0(v0);

        sub_02004550(11, 1175, 1);

        v0->unk_4C = Heap_AllocFromHeap(HEAP_ID_62, 0x20000 + 32);
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

int ov94_0223BE2C(OverlayManager *param0, int *param1)
{
    UnkStruct_ov94_0223FD4C *v0 = OverlayManager_Data(param0);

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
        if (IsScreenTransitionDone()) {
            *param1 = 3;
        }
        break;
    case 3:
        *param1 = (*Unk_ov94_0224674C[v0->unk_14][1])(v0, *param1);
        break;
    case 4:
        if (IsScreenTransitionDone()) {
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
        SpriteList_Update(v0->unk_BE4);
    }

    return 0;
}

int ov94_0223BF54(OverlayManager *param0, int *param1)
{
    UnkStruct_ov94_0223FD4C *v0 = OverlayManager_Data(param0);
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
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_62);

    return 1;
}

static void ov94_0223BFE4(void *param0)
{
    UnkStruct_ov94_0223FD4C *v0 = param0;

    if (v0->unk_1118) {
        v0->unk_1118(param0);
        v0->unk_1118 = NULL;
    }

    VramTransfer_Process();
    RenderOam_Transfer();

    inline_ov61_0222C1FC(&v0->unk_11B4);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov94_0223C01C(void)
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

static void ov94_0223C03C(UnkStruct_ov94_0223FD4C *param0, OverlayManager *param1)
{
    param0->unk_00 = (UnkStruct_0203E0FC *)OverlayManager_Args(param1);
    param0->unk_14 = 0;

    ov94_0223C4C0(param0, 0, 0);

    param0->unk_10C = 0;
    param0->unk_B7A.species = SPECIES_NONE;
    param0->unk_B7A.gender = 2 + 1;
    param0->unk_B7A.level = 0;
    param0->unk_B7A.level2 = 0;
    param0->unk_B80.species = SPECIES_NONE;
    param0->unk_10F0 = 0;
    param0->unk_110 = 18;
    param0->unk_110C = 0;
    param0->unk_110E = 0;
    param0->unk_10F2 = 0;
    param0->unk_10DC = NULL;
    param0->unk_11B0 = 0;
}

static void ov94_0223C0A0(UnkStruct_ov94_0223FD4C *param0)
{
    return;
}

static void ov94_0223C0A4(void)
{
    {
        CharTransferTemplate v0 = {
            20, 2048, 2048, 62
        };

        CharTransfer_Init(&v0);
    }

    PlttTransfer_Init(20, HEAP_ID_62);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

static void ov94_0223C0D4(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;
    NARC *v1 = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTRADE, HEAP_ID_62);

    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 126, 0, 32, 0, 126, 0, 32, 62);

    param0->unk_BE4 = SpriteList_InitRendering(72 + 6, &param0->unk_BE8, HEAP_ID_62);

    SetSubScreenViewRect(&param0->unk_BE8, 0, (256 * FX32_ONE));

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_D74[v0] = SpriteResourceCollection_New(3, v0, HEAP_ID_62);
    }

    param0->unk_D84[0][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_D74[0], v1, 18, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_62);
    param0->unk_D84[0][1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_D74[1], v1, 9, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 3, HEAP_ID_62);
    param0->unk_D84[0][2] = SpriteResourceCollection_AddFrom(param0->unk_D74[2], v1, 19, 1, 0, 2, HEAP_ID_62);
    param0->unk_D84[0][3] = SpriteResourceCollection_AddFrom(param0->unk_D74[3], v1, 20, 1, 0, 3, HEAP_ID_62);
    param0->unk_D84[1][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_D74[0], v1, 32, 1, 1, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_62);
    param0->unk_D84[1][1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_D74[1], v1, 8, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 9, HEAP_ID_62);
    param0->unk_D84[1][2] = SpriteResourceCollection_AddFrom(param0->unk_D74[2], v1, 33, 1, 1, 2, HEAP_ID_62);
    param0->unk_D84[1][3] = SpriteResourceCollection_AddFrom(param0->unk_D74[3], v1, 34, 1, 1, 3, HEAP_ID_62);

    SpriteTransfer_RequestChar(param0->unk_D84[0][0]);
    SpriteTransfer_RequestChar(param0->unk_D84[1][0]);
    SpriteTransfer_RequestPlttWholeRange(param0->unk_D84[0][1]);
    SpriteTransfer_RequestPlttWholeRange(param0->unk_D84[1][1]);

    {
        void *v2;
        NNSG2dPaletteData *v3;
        int v4, v5, v6, v7;
        u16 *v8;

        v2 = Graphics_GetPlttData(19, PokeIconPalettesFileIndex(), &v3, HEAP_ID_62);

        DC_FlushRange(v3->pRawData, (3 * 16) * 2);
        GX_LoadOBJPltt(v3->pRawData, 3 * 0x20, (3 * 16) * 2);

        v8 = (u16 *)v3->pRawData;

        for (v4 = 0; v4 < (3 * 16); v4++) {
            v5 = v8[v4] >> 10 & 0x1f;
            v6 = (v8[v4] >> 5) & 0x1f;
            v7 = v8[v4] & 0x1f;
            v5 /= 2;
            v6 /= 2;
            v7 /= 2;
            v8[v4] = (v5 << 10) | (v6 << 5) | v7;
        }

        DC_FlushRange(v3->pRawData, (3 * 16) * 2);
        GX_LoadOBJPltt(v3->pRawData, (3 + 3) * 0x20, (3 * 16) * 2);

        Heap_FreeToHeap(v2);
    }

    NARC_dtor(v1);
}

void ov94_0223C300(AffineSpriteListTemplate *param0, UnkStruct_ov94_0223FD4C *param1, SpriteResourcesHeader *param2, int param3)
{
    param0->list = param1->unk_BE4;
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

static void ov94_0223C32C(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;

    SpriteResourcesHeader_Init(&param0->unk_DB4, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 0, param0->unk_D74[0], param0->unk_D74[1], param0->unk_D74[2], param0->unk_D74[3], NULL, NULL);
    SpriteResourcesHeader_Init(&param0->unk_DD8, 1, 1, 1, 1, 0xffffffff, 0xffffffff, 0, 0, param0->unk_D74[0], param0->unk_D74[1], param0->unk_D74[2], param0->unk_D74[3], NULL, NULL);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static const WindowTemplate Unk_ov94_022459F8 = {
    0x0,
    0x17,
    0xD,
    0x7,
    0x4,
    0xD,
    0x0
};

Menu *ov94_0223C3C0(BgConfig *param0, int param1, int param2)
{
    WindowTemplate v0;

    v0 = Unk_ov94_022459F8;
    v0.tilemapTop = param1;
    v0.baseTile = param2;

    return Menu_MakeYesNoChoice(param0, &v0, (1 + (18 + 12)), 11, 62);
}

void ov94_0223C3F4(UnkStruct_ov94_0223FD4C *param0, int param1, int param2)
{
    param0->unk_2C = param1;
    param0->unk_30 = param2;
}

void ov94_0223C3FC(Sprite *param0, int param1, int param2)
{
    VecFx32 v0;

    v0.x = FX32_CONST(param1);
    v0.y = FX32_CONST(param2);
    v0.z = 0;

    Sprite_SetPosition(param0, &v0);
}

static void *ov94_0223C468(DWCAllocType param0, u32 param1, int param2)
{
#pragma unused(param0)
    void *v0;
    OSIntrMode v1;

    v1 = OS_DisableInterrupts();
    v0 = NNS_FndAllocFromExpHeapEx(Unk_ov94_02246C04, param1, param2);

    OS_RestoreInterrupts(v1);

    if (v0 == NULL) {
        (void)0;
    }

    return v0;
}

static void ov94_0223C490(DWCAllocType param0, void *param1, u32 param2)
{
#pragma unused(param0, param2)
    OSIntrMode v0;

    if (!param1) {
        return;
    }

    v0 = OS_DisableInterrupts();

    NNS_FndFreeToExpHeap(Unk_ov94_02246C04, param1);
    OS_RestoreInterrupts(v0);
}

int ov94_0223C4B4(void)
{
    return WM_LINK_LEVEL_3 - DWC_GetLinkLevel();
}

void ov94_0223C4C0(UnkStruct_ov94_0223FD4C *param0, int param1, int param2)
{
    param0->unk_18 = param1;
    param0->unk_24 = param2;
}

void ov94_0223C4C8(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_20 = param0->unk_14;
    param0->unk_14 = param0->unk_18;
}

int ov94_0223C4D4(UnkStruct_ov94_0223FD4C *param0)
{
    return Options_TextFrameDelay(param0->unk_00->unk_24);
}

static void ov94_0223C4E0(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223C01C();
    ov94_0223C0A4();
    ov94_0223C0D4(param0);
    ov94_0223C32C(param0);

    SetVBlankCallback(ov94_0223BFE4, param0);
}

static void ov94_0223C508(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;

    ov94_022443B8(param0);

    SpriteTransfer_ResetCharTransfer(param0->unk_D84[0][0]);
    SpriteTransfer_ResetCharTransfer(param0->unk_D84[1][0]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_D84[0][1]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_D84[1][1]);

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_D74[v0]);
    }

    SpriteList_Delete(param0->unk_BE4);
    param0->unk_BE4 = NULL;

    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();
}

static void ov94_0223C578(UnkStruct_ov94_0223FD4C *param0)
{
    if (param0->unk_3A) {
        param0->unk_3A--;
    }
}

void ov94_0223C584(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_110E = 1;
    param0->unk_110C = 0;
}

static void ov94_0223C598(UnkStruct_ov94_0223FD4C *param0)
{
    if (param0->unk_110E) {
        param0->unk_110C += PCBoxes_CountMonsInBox(param0->unk_00->unk_0C, param0->unk_110E - 1);
        param0->unk_110E++;

        if (param0->unk_110E == 19) {
            param0->unk_110E = 0;
        }
    }
}

void ov94_0223C5D8(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10DC = Window_AddWaitDial(&param0->unk_F5C, 1);
}

void ov94_0223C5F4(UnkStruct_ov94_0223FD4C *param0)
{
    if (param0->unk_10DC != NULL) {
        DestroyWaitDial(param0->unk_10DC);
        param0->unk_10DC = NULL;
    }
}
