#include "overlay111/ov111_021D2F80.h"

#include <nitro.h>
#include <string.h>

#include "overlay111/struct_ov111_021D2F80.h"

#include "cell_actor.h"
#include "char_transfer.h"
#include "gx_layers.h"
#include "narc.h"
#include "pltt_transfer.h"
#include "render_oam.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "vram_transfer.h"

void ov111_021D2F80(UnkStruct_ov111_021D2F80 *param0);
CellActor *ov111_021D3280(UnkStruct_ov111_021D2F80 *param0, u32 param1, u32 param2, u32 param3, u32 param4, u8 param5);
void ov111_021D3320(UnkStruct_ov111_021D2F80 *param0);
void ov111_021D33B0(UnkStruct_ov111_021D2F80 *param0, int param1);
static void ov111_021D3378(void);
static void ov111_021D30D8(UnkStruct_ov111_021D2F80 *param0, int param1, int param2, int param3);
static void ov111_021D304C(UnkStruct_ov111_021D2F80 *param0, int param1);
static void ov111_021D3168(UnkStruct_ov111_021D2F80 *param0, int param1);
static void ov111_021D31F4(UnkStruct_ov111_021D2F80 *param0, int param1);

static const u8 Unk_ov111_021D3820[4] = {
    0x5,
    0x5,
    0x5,
    0x5
};

void ov111_021D2F80(UnkStruct_ov111_021D2F80 *param0)
{
    int v0;
    NARC *v1;

    VramTransfer_New(32, 115);
    ov111_021D3378();

    NNS_G2dInitOamManagerModule();

    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, 115);
    param0->unk_00 = SpriteList_InitRendering(40, &param0->unk_04, 115);
    SetSubScreenViewRect(&param0->unk_04, 0, (512 * FX32_ONE));

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_190[v0] = SpriteResourceCollection_New(Unk_ov111_021D3820[v0], v0, 115);
    }

    ov111_021D304C(param0, NNS_G2D_VRAM_TYPE_2DMAIN);
    ov111_021D30D8(param0, 1, 1, NNS_G2D_VRAM_TYPE_2DMAIN);
    ov111_021D3168(param0, NNS_G2D_VRAM_TYPE_2DMAIN);
    ov111_021D31F4(param0, NNS_G2D_VRAM_TYPE_2DMAIN);
    ov111_021D30D8(param0, 0, 0, NNS_G2D_VRAM_TYPE_2DSUB);

    for (v0 = 0; v0 < 5; v0++) {
        SpriteTransfer_RequestChar(param0->unk_1A0[v0][0]);
        SpriteTransfer_RequestPlttWholeRange(param0->unk_1A0[v0][1]);
    }

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

    return;
}

static void ov111_021D304C(UnkStruct_ov111_021D2F80 *param0, int param1)
{
    param0->unk_1A0[2][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 184, 12, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 115);
    param0->unk_1A0[2][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 184, 13, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 4, 115);
    param0->unk_1A0[2][2] = SpriteResourceCollection_Add(param0->unk_190[2], 184, 11, 0, 2, 2, 115);
    param0->unk_1A0[2][3] = SpriteResourceCollection_Add(param0->unk_190[3], 184, 10, 0, 2, 3, 115);

    return;
}

static void ov111_021D30D8(UnkStruct_ov111_021D2F80 *param0, int param1, int param2, int param3)
{
    param0->unk_1A0[param1][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 184, 32, 0, param2, param3, 115);
    param0->unk_1A0[param1][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 184, 33, 0, param2, param3, 5, 115);
    param0->unk_1A0[param1][2] = SpriteResourceCollection_Add(param0->unk_190[2], 184, 31, 0, param2, 2, 115);
    param0->unk_1A0[param1][3] = SpriteResourceCollection_Add(param0->unk_190[3], 184, 30, 0, param2, 3, 115);

    return;
}

static void ov111_021D3168(UnkStruct_ov111_021D2F80 *param0, int param1)
{
    param0->unk_1A0[3][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 184, 16, 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 115);
    param0->unk_1A0[3][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 184, 17, 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 4, 115);
    param0->unk_1A0[3][2] = SpriteResourceCollection_Add(param0->unk_190[2], 184, 15, 0, 3, 2, 115);
    param0->unk_1A0[3][3] = SpriteResourceCollection_Add(param0->unk_190[3], 184, 14, 0, 3, 3, 115);

    return;
}

static void ov111_021D31F4(UnkStruct_ov111_021D2F80 *param0, int param1)
{
    param0->unk_1A0[4][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 184, 20, 0, 4, NNS_G2D_VRAM_TYPE_2DMAIN, 115);
    param0->unk_1A0[4][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 184, 21, 0, 4, NNS_G2D_VRAM_TYPE_2DMAIN, 1, 115);
    param0->unk_1A0[4][2] = SpriteResourceCollection_Add(param0->unk_190[2], 184, 19, 0, 4, 2, 115);
    param0->unk_1A0[4][3] = SpriteResourceCollection_Add(param0->unk_190[3], 184, 18, 0, 4, 3, 115);

    return;
}

CellActor *ov111_021D3280(UnkStruct_ov111_021D2F80 *param0, u32 param1, u32 param2, u32 param3, u32 param4, u8 param5)
{
    int v0;
    CellActorResourceData v1;
    CellActor *v2;

    SpriteResourcesHeader_Init(&v1, param1, param1, param1, param1, 0xffffffff, 0xffffffff, 0, param3, param0->unk_190[0], param0->unk_190[1], param0->unk_190[2], param0->unk_190[3], NULL, NULL);

    {
        CellActorInitParamsEx v3;

        v3.collection = param0->unk_00;
        v3.resourceData = &v1;
        v3.position.x = 0;
        v3.position.y = 0;
        v3.position.z = 0;
        v3.affineScale.x = FX32_ONE;
        v3.affineScale.y = FX32_ONE;
        v3.affineScale.z = FX32_ONE;
        v3.affineZRotation = 0;
        v3.priority = param4;
        v3.heapID = 115;

        if (param5 == 0) {
            v3.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        } else {
            v3.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
        }

        v2 = CellActorCollection_AddEx(&v3);

        CellActor_SetAnimateFlag(v2, 0);
        CellActor_SetAnimSpeed(v2, FX32_ONE);
        CellActor_SetAnim(v2, param2);
    }

    return v2;
}

void ov111_021D3320(UnkStruct_ov111_021D2F80 *param0)
{
    u8 v0;

    for (v0 = 0; v0 < 5; v0++) {
        SpriteTransfer_ResetCharTransfer(param0->unk_1A0[v0][0]);
        SpriteTransfer_ResetPlttTransfer(param0->unk_1A0[v0][1]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_190[v0]);
    }

    CellActorCollection_Delete(param0->unk_00);
    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();

    return;
}

static void ov111_021D3378(void)
{
    {
        CharTransferTemplate v0 = {
            5, 3000, 5120, 115
        };

        CharTransfer_InitWithVramModes(&v0, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_128K);
    }

    PlttTransfer_Init(14, 115);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();

    return;
}

static u8 Unk_ov111_021D3940[8] = {
    0x16,
    0x17,
    0x18,
    0x19,
    0x1A,
    0x1B,
    0x1C,
    0x1D
};

void ov111_021D33B0(UnkStruct_ov111_021D2F80 *param0, int param1)
{
    SpriteResource *v0;

    if (param1 >= 8) {
        GF_ASSERT(0);
    }

    v0 = SpriteResourceCollection_Find(param0->unk_190[1], 3);

    SpriteResourceCollection_ModifyPalette(param0->unk_190[1], v0, 184, Unk_ov111_021D3940[param1], 0, 115);
    SpriteTransfer_ReplacePlttData(v0);

    return;
}
