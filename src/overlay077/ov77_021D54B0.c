#include "overlay077/ov77_021D54B0.h"

#include <nitro.h>
#include <string.h>

#include "overlay077/ov77_021D6670.h"
#include "overlay077/struct_ov77_021D6734_decl.h"

#include "cell_actor.h"
#include "cell_transfer.h"
#include "char_transfer.h"
#include "gx_layers.h"
#include "pltt_transfer.h"
#include "render_oam.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "system.h"
#include "vram_transfer.h"

SDK_COMPILER_ASSERT(((3 + 1 + 1 + 2 + 4) + 6) == 17);

void include_data_ov77_021D79B8(void);

typedef struct UnkStruct_ov77_021D5564_t {
    CellActorCollection *unk_00;
    G2dRenderer unk_04;
    SpriteResourceCollection *unk_190[4];
    SpriteResource *unk_1A0[11][4];
    CellActor *unk_250[17];
    CellActorResourceData unk_294[3];
    NNSG2dCellTransferState *unk_300;
} UnkStruct_ov77_021D5564;

static const u8 Unk_ov77_021D7914[4] = {
    0xB,
    0xB,
    0xB,
    0xB
};

static int Unk_ov77_021D79B8[17] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x4,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8
};

static u16 dummy[16] = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0
};

static fx32 Unk_ov77_021D79AC[3] = {
    (FX32_ONE / 2) * 12,
    (FX32_ONE / 2) * 11,
    (FX32_ONE / 2) * 10
};

static fx32 Unk_ov77_021D79A0[1] = {
    (FX32_ONE / 2) * 10
};

static fx32 Unk_ov77_021D79A4[2] = {
    (FX32_ONE / 2) * 8,
    (FX32_ONE / 2) * 11
};

static void ov77_021D54B0()
{
    const int v0 = 76;

    {
        CharTransferTemplate v1 = {
            11, 0x8000, 0x4000, v0
        };

        CharTransfer_Init(&v1);
    }

    PlttTransfer_Init(11, v0);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
    VramTransfer_New((3 * 2), v0);
}

static void ov77_021D54E8(const int param0, UnkStruct_ov77_021D5564 *param1, const int param2, CellActorInitParamsEx *param3, CellActorResourceData *param4, int param5, int param6)
{
    SpriteResourcesHeader_Init(param4, param0, param0, param0, param0, 0xffffffff, 0xffffffff, param5, param2, param1->unk_190[0], param1->unk_190[1], param1->unk_190[2], param1->unk_190[3], NULL, NULL);

    {
        param3->collection = param1->unk_00;
        param3->resourceData = param4;
        param3->position.x = 0;
        param3->position.y = 0;
        param3->position.z = 0;
        param3->affineScale.x = FX32_ONE;
        param3->affineScale.y = FX32_ONE;
        param3->affineScale.z = FX32_ONE;
        param3->affineZRotation = 0;
        param3->priority = 1;
        param3->vramType = param6;
        param3->heapID = 76;
    }
}

const int ov77_021D555C(void)
{
    return sizeof(UnkStruct_ov77_021D5564);
}

void ov77_021D5564(UnkStruct_ov77_021D5564 *param0)
{
    int v0;
    const int v1 = 76;

    GX_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);
    GXS_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);

    ov77_021D54B0();
    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, v1);

    param0->unk_00 = SpriteList_InitRendering(((3 + 1 + 1 + 2 + 4) + 6 + 16), &param0->unk_04, v1);
    param0->unk_300 = CellTransfer_New(3, v1);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_190[v0] = SpriteResourceCollection_New(Unk_ov77_021D7914[v0], v0, v1);
    }

    param0->unk_1A0[0][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 128, 46, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, v1);
    param0->unk_1A0[1][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 128, 46, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, v1);
    param0->unk_1A0[2][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 128, 50, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, v1);
    param0->unk_1A0[3][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 128, 87, 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, v1);
    param0->unk_1A0[4][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 128, 22, 0, 4, NNS_G2D_VRAM_TYPE_2DMAIN, v1);
    param0->unk_1A0[5][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 128, 23, 0, 5, NNS_G2D_VRAM_TYPE_2DSUB, v1);
    param0->unk_1A0[6][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 128, 91, 0, 6, NNS_G2D_VRAM_TYPE_2DMAIN, v1);
    param0->unk_1A0[7][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 128, 83, 0, 7, NNS_G2D_VRAM_TYPE_2DMAIN, v1);
    param0->unk_1A0[8][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 128, 83, 0, 8, NNS_G2D_VRAM_TYPE_2DSUB, v1);
    param0->unk_1A0[9][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 128, 54, 0, 9, NNS_G2D_VRAM_TYPE_2DMAIN, v1);
    param0->unk_1A0[10][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 128, 54, 0, 10, NNS_G2D_VRAM_TYPE_2DSUB, v1);
    param0->unk_1A0[0][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 128, 49, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1, v1);
    param0->unk_1A0[1][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 128, 49, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 1, v1);
    param0->unk_1A0[2][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 128, 53, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 1, v1);
    param0->unk_1A0[3][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 128, 90, 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 1, v1);
    param0->unk_1A0[4][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 128, 20, 0, 4, NNS_G2D_VRAM_TYPE_2DMAIN, 1, v1);
    param0->unk_1A0[5][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 128, 21, 0, 5, NNS_G2D_VRAM_TYPE_2DSUB, 1, v1);
    param0->unk_1A0[6][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 128, 94, 0, 6, NNS_G2D_VRAM_TYPE_2DMAIN, 1, v1);
    param0->unk_1A0[7][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 128, 86, 0, 7, NNS_G2D_VRAM_TYPE_2DMAIN, 1, v1);
    param0->unk_1A0[8][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 128, 86, 0, 8, NNS_G2D_VRAM_TYPE_2DSUB, 1, v1);
    param0->unk_1A0[9][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 128, 57, 0, 9, NNS_G2D_VRAM_TYPE_2DMAIN, 3, v1);
    param0->unk_1A0[10][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 128, 57, 0, 10, NNS_G2D_VRAM_TYPE_2DSUB, 3, v1);
    param0->unk_1A0[0][2] = SpriteResourceCollection_Add(param0->unk_190[2], 128, 48, 0, 0, 2, v1);
    param0->unk_1A0[1][2] = SpriteResourceCollection_Add(param0->unk_190[2], 128, 48, 0, 1, 2, v1);
    param0->unk_1A0[2][2] = SpriteResourceCollection_Add(param0->unk_190[2], 128, 51, 0, 2, 2, v1);
    param0->unk_1A0[3][2] = SpriteResourceCollection_Add(param0->unk_190[2], 128, 89, 0, 3, 2, v1);
    param0->unk_1A0[4][2] = SpriteResourceCollection_Add(param0->unk_190[2], 128, 24, 0, 4, 2, v1);
    param0->unk_1A0[6][2] = SpriteResourceCollection_Add(param0->unk_190[2], 128, 93, 0, 6, 2, v1);
    param0->unk_1A0[7][2] = SpriteResourceCollection_Add(param0->unk_190[2], 128, 85, 0, 7, 2, v1);
    param0->unk_1A0[8][2] = SpriteResourceCollection_Add(param0->unk_190[2], 128, 85, 0, 8, 2, v1);
    param0->unk_1A0[9][2] = SpriteResourceCollection_Add(param0->unk_190[2], 128, 55, 0, 9, 2, v1);
    param0->unk_1A0[10][2] = SpriteResourceCollection_Add(param0->unk_190[2], 128, 55, 0, 10, 2, v1);
    param0->unk_1A0[5][2] = SpriteResourceCollection_Add(param0->unk_190[2], 128, 25, 0, 5, 2, v1);
    param0->unk_1A0[0][3] = SpriteResourceCollection_Add(param0->unk_190[3], 128, 47, 0, 0, 3, v1);
    param0->unk_1A0[1][3] = SpriteResourceCollection_Add(param0->unk_190[3], 128, 47, 0, 1, 3, v1);
    param0->unk_1A0[2][3] = SpriteResourceCollection_Add(param0->unk_190[3], 128, 52, 0, 2, 3, v1);
    param0->unk_1A0[3][3] = SpriteResourceCollection_Add(param0->unk_190[3], 128, 88, 0, 3, 3, v1);
    param0->unk_1A0[4][3] = SpriteResourceCollection_Add(param0->unk_190[3], 128, 26, 0, 4, 3, v1);
    param0->unk_1A0[5][3] = SpriteResourceCollection_Add(param0->unk_190[3], 128, 27, 0, 5, 3, v1);
    param0->unk_1A0[6][3] = SpriteResourceCollection_Add(param0->unk_190[3], 128, 92, 0, 6, 3, v1);
    param0->unk_1A0[7][3] = SpriteResourceCollection_Add(param0->unk_190[3], 128, 84, 0, 7, 3, v1);
    param0->unk_1A0[8][3] = SpriteResourceCollection_Add(param0->unk_190[3], 128, 84, 0, 8, 3, v1);
    param0->unk_1A0[9][3] = SpriteResourceCollection_Add(param0->unk_190[3], 128, 56, 0, 9, 3, v1);
    param0->unk_1A0[10][3] = SpriteResourceCollection_Add(param0->unk_190[3], 128, 56, 0, 10, 3, v1);

    for (v0 = 0; v0 < 11; v0++) {
        SpriteTransfer_RequestCharAtEnd(param0->unk_1A0[v0][0]);
        SpriteTransfer_RequestPlttFreeSpace(param0->unk_1A0[v0][1]);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

void ov77_021D5BAC(UnkStruct_ov77_021D5564 *param0)
{
    u8 v0;

    for (v0 = 0; v0 < 11; v0++) {
        SpriteTransfer_ResetCharTransfer(param0->unk_1A0[v0][0]);
        SpriteTransfer_ResetPlttTransfer(param0->unk_1A0[v0][1]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_190[v0]);
    }

    CellActorCollection_Delete(param0->unk_00);

    for (v0 = 0; v0 < 3; v0++) {
        SpriteResourcesHeader_Clear(&param0->unk_294[v0]);
    }

    if (param0->unk_300 != NULL) {
        CellTransfer_Free(param0->unk_300);
        param0->unk_300 = NULL;
    }

    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();
    VramTransfer_Free();
}

void ov77_021D5C3C(UnkStruct_ov77_021D5564 *param0)
{
    int v0;
    CellActorResourceData v1;
    CellActorInitParamsEx v2;
    const int v3[6] = {
        4,
        5,
        6,
        7,
        8,
        9,
    };
    const int v4[6] = {
        (256 + 8),
        (256 + 32),
        (256 + 32),
        (256 + 32),
        (256 + 32),
        (256 + 32)
    };
    const int v5[6] = {
        (16 * 8),
        (14 * 8),
        (18 * 8),
        (20 * 8),
        (18 * 8),
        (22 * 8)
    };

    {
        ov77_021D54E8(0, param0, 0, &v2, &param0->unk_294[0], 1, NNS_G2D_VRAM_TYPE_2DMAIN);

        v2.position.x = FX32_ONE * (128 - 48);
        v2.position.y = FX32_ONE * (14 * 8);
        param0->unk_250[0] = CellActorCollection_AddEx(&v2);

        CellActor_SetAnimateFlag(param0->unk_250[0], 0);
        CellActor_SetDrawFlag(param0->unk_250[0], 0);

        ov77_021D54E8(1, param0, 0, &v2, &param0->unk_294[2], 1, NNS_G2D_VRAM_TYPE_2DSUB);

        v2.position.x = FX32_ONE * (128 - 48);
        v2.position.y = FX32_ONE * (14 * 8) + (192 << FX32_SHIFT);
        param0->unk_250[1] = CellActorCollection_AddEx(&v2);

        CellActor_SetAnimateFlag(param0->unk_250[1], 0);
        CellActor_SetDrawFlag(param0->unk_250[1], 0);

        ov77_021D54E8(2, param0, 0, &v2, &param0->unk_294[1], 1, NNS_G2D_VRAM_TYPE_2DMAIN);

        v2.position.x = FX32_ONE * (128 + 48);
        v2.position.y = FX32_ONE * (14 * 8);
        param0->unk_250[2] = CellActorCollection_AddEx(&v2);

        CellActor_SetAnimateFlag(param0->unk_250[2], 0);
        CellActor_SetDrawFlag(param0->unk_250[2], 0);

        ov77_021D54E8(3, param0, 0, &v2, &v1, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

        v2.position.x = FX32_ONE * -64;
        v2.position.y = FX32_ONE * (14 * 8);
        param0->unk_250[3] = CellActorCollection_AddEx(&v2);

        CellActor_SetAnimateFlag(param0->unk_250[3], 1);
        CellActor_SetDrawFlag(param0->unk_250[3], 0);

        ov77_021D54E8(6, param0, 0, &v2, &v1, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

        v2.position.x = FX32_ONE * (256 + 64);
        v2.position.y = FX32_ONE * (14 * 8);
        param0->unk_250[10] = CellActorCollection_AddEx(&v2);

        CellActor_SetAnimateFlag(param0->unk_250[10], 1);
        CellActor_SetDrawFlag(param0->unk_250[10], 0);

        ov77_021D54E8(7, param0, 1, &v2, &v1, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

        v2.position.x = FX32_ONE * 128;
        v2.position.y = FX32_ONE * (12 * 8);
        param0->unk_250[11] = CellActorCollection_AddEx(&v2);

        CellActor_SetAnimateFlag(param0->unk_250[11], 1);
        CellActor_SetDrawFlag(param0->unk_250[11], 0);
        CellActor_SetAffineOverwriteMode(param0->unk_250[11], 1);

        ov77_021D54E8(8, param0, 1, &v2, &v1, 0, NNS_G2D_VRAM_TYPE_2DSUB);

        v2.position.x = FX32_ONE * 128;
        v2.position.y = FX32_ONE * (12 * 8) + (192 << FX32_SHIFT);
        param0->unk_250[12] = CellActorCollection_AddEx(&v2);

        CellActor_SetAnimateFlag(param0->unk_250[12], 1);
        CellActor_SetDrawFlag(param0->unk_250[12], 0);
        CellActor_SetAffineOverwriteMode(param0->unk_250[12], 1);

        ov77_021D54E8(9, param0, 3, &v2, &v1, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

        v2.position.x = FX32_ONE * 128;
        v2.position.y = FX32_ONE * (0xd * 8);
        param0->unk_250[13] = CellActorCollection_AddEx(&v2);

        CellActor_SetAnimateFlag(param0->unk_250[13], 1);
        CellActor_SetDrawFlag(param0->unk_250[13], 0);

        param0->unk_250[14] = CellActorCollection_AddEx(&v2);

        CellActor_SetAnimateFlag(param0->unk_250[14], 1);
        CellActor_SetDrawFlag(param0->unk_250[14], 0);

        ov77_021D54E8(10, param0, 3, &v2, &v1, 0, NNS_G2D_VRAM_TYPE_2DSUB);

        v2.position.x = FX32_ONE * 128;
        v2.position.y = FX32_ONE * (0xd * 8) + (192 << FX32_SHIFT);
        param0->unk_250[15] = CellActorCollection_AddEx(&v2);

        CellActor_SetAnimateFlag(param0->unk_250[15], 1);
        CellActor_SetDrawFlag(param0->unk_250[15], 0);

        param0->unk_250[16] = CellActorCollection_AddEx(&v2);

        CellActor_SetAnimateFlag(param0->unk_250[16], 1);
        CellActor_SetDrawFlag(param0->unk_250[16], 0);

        for (v0 = 0; v0 < 6; v0++) {
            ov77_021D54E8(4, param0, 0, &v2, &v1, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

            v2.position.x = FX32_ONE * v4[v0];
            v2.position.y = FX32_ONE * v5[v0];
            param0->unk_250[v3[v0]] = CellActorCollection_AddEx(&v2);

            CellActor_SetAnimateFlag(param0->unk_250[v3[v0]], 1);
            CellActor_SetDrawFlag(param0->unk_250[v3[v0]], 0);
        }
    }
}

void ov77_021D5FB4(UnkStruct_ov77_021D5564 *param0, UnkStruct_ov77_021D6734 *param1)
{
    int v0;
    CellActorResourceData v1;
    CellActorInitParamsEx v2;
    CellActor **v3;

    {
        ov77_021D54E8(5, param0, 0, &v2, &v1, 0, NNS_G2D_VRAM_TYPE_2DSUB);

        for (v0 = 0; v0 < 16; v0++) {
            v3 = ov77_021D6794(param1, v0);
            (*v3) = CellActorCollection_AddEx(&v2);
            CellActor_SetAnimateFlag(*v3, 0);
            CellActor_SetDrawFlag(*v3, 0);
        }
    }
}

void ov77_021D6000(UnkStruct_ov77_021D5564 *param0, UnkStruct_ov77_021D6734 *param1)
{
    int v0;
    CellActor **v1;

    for (v0 = 0; v0 < 16; v0++) {
        v1 = ov77_021D6794(param1, v0);
        CellActor_SetDrawFlag(*v1, 0);
    }
}

void ov77_021D6020(UnkStruct_ov77_021D5564 *param0)
{
    CellActorCollection_Update(param0->unk_00);

    if (param0->unk_300 != NULL) {
        CellTransfer_Update();
    }
}

void ov77_021D603C(UnkStruct_ov77_021D5564 *param0, const u8 param1, const u8 param2)
{
    CellActor_SetDrawFlag(param0->unk_250[param1], param2);
}

void ov77_021D6050(UnkStruct_ov77_021D5564 *param0, const u8 param1)
{
    CellActor_SetAnimateFlag(param0->unk_250[0], param1);
    CellActor_SetAnimateFlag(param0->unk_250[2], param1);
    CellActor_SetAnimateFlag(param0->unk_250[1], param1);
}

void ov77_021D607C(UnkStruct_ov77_021D5564 *param0)
{
    VecFx32 v0;

    v0 = *CellActor_GetPosition(param0->unk_250[1]);
    v0.x -= 0x200;

    CellActor_SetPosition(param0->unk_250[1], &v0);

    v0 = *CellActor_GetPosition(param0->unk_250[2]);
    v0.x += 0x200;

    CellActor_SetPosition(param0->unk_250[2], &v0);
}

BOOL ov77_021D60E0(UnkStruct_ov77_021D5564 *param0, int param1)
{
    VecFx32 v0;

    if (param1 < ((47 * 30 - 15) + 15)) {
        return 0;
    }

    if (param1 == ((47 * 30 - 15) + 15)) {
        ov77_021D603C(param0, 3, 1);
    }

    if (param1 < (53 * 30 - 15)) {
        v0 = *CellActor_GetPosition(param0->unk_250[3]);
        v0.x += (FX32_ONE * 18);

        if (v0.x >= (FX32_ONE * (128 + 48))) {
            v0.x = (FX32_ONE * (128 + 48));
            CellActor_SetPosition(param0->unk_250[3], &v0);
            return 1;
        }

        CellActor_SetPosition(param0->unk_250[3], &v0);
        return 0;
    } else {
        v0 = *CellActor_GetPosition(param0->unk_250[3]);
        v0.x += (FX32_ONE * 18);

        if (v0.x >= (256 + 64) * FX32_ONE) {
            v0.x = (256 + 64) * FX32_ONE;
            CellActor_SetPosition(param0->unk_250[3], &v0);
            ov77_021D603C(param0, 3, 0);
            return 1;
        }

        CellActor_SetPosition(param0->unk_250[3], &v0);
        return 0;
    }
}

BOOL ov77_021D61B8(UnkStruct_ov77_021D5564 *param0, int param1)
{
    VecFx32 v0;

    if (param1 < (((47 * 30 - 15) + 15) + 3 * 30)) {
        return 0;
    }

    if (param1 == (((47 * 30 - 15) + 15) + 3 * 30)) {
        ov77_021D603C(param0, 10, 1);
    }

    if (param1 < (53 * 30 - 15)) {
        v0 = *CellActor_GetPosition(param0->unk_250[10]);
        v0.x += (-(FX32_ONE * 18));

        if (v0.x <= (FX32_ONE * (128 - 48))) {
            v0.x = (FX32_ONE * (128 - 48));
            CellActor_SetPosition(param0->unk_250[10], &v0);
            return 1;
        }

        CellActor_SetPosition(param0->unk_250[10], &v0);
        return 0;
    } else {
        v0 = *CellActor_GetPosition(param0->unk_250[10]);
        v0.x += (-(FX32_ONE * 18));

        if (v0.x <= -64 * FX32_ONE) {
            v0.x = -64 * FX32_ONE;
            CellActor_SetPosition(param0->unk_250[10], &v0);
            ov77_021D603C(param0, 10, 0);
            return 1;
        }

        CellActor_SetPosition(param0->unk_250[10], &v0);
        return 0;
    }
}

void ov77_021D6290(UnkStruct_ov77_021D5564 *param0, fx32 param1)
{
    const VecFx32 *v0;
    VecFx32 v1;
    int v2, v3;

    if (gSystem.unk_65 == 0) {
        v2 = 13;
        v3 = 15;
    } else {
        v2 = 15;
        v3 = 13;
    }

    v0 = CellActor_GetPosition(param0->unk_250[v2]);
    v1 = *v0;
    v1.x += param1;

    if (v1.x >= (128 + 256) * FX32_ONE) {
        v1.x -= 256 * FX32_ONE;
    }

    CellActor_SetPosition(param0->unk_250[v2], &v1);
    v1.x -= 256 * FX32_ONE;
    CellActor_SetPosition(param0->unk_250[v2 + 1], &v1);

    v0 = CellActor_GetPosition(param0->unk_250[v3]);
    v1 = *v0;
    v1.x -= param1;

    if (v1.x <= (128 - 256) * FX32_ONE) {
        v1.x += 256 * FX32_ONE;
    }

    CellActor_SetPosition(param0->unk_250[v3], &v1);
    v1.x += 256 * FX32_ONE;
    CellActor_SetPosition(param0->unk_250[v3 + 1], &v1);
}

void ov77_021D636C(UnkStruct_ov77_021D5564 *param0, int param1)
{
    const VecFx32 *v0;
    VecFx32 v1;

    if (param1 == 0) {
        if (gSystem.unk_65 == 0) {
            CellActor_SetExplicitPaletteOffsetAutoAdjust(param0->unk_250[13], 0);
            CellActor_SetExplicitPaletteOffsetAutoAdjust(param0->unk_250[14], 0);
            CellActor_SetExplicitPaletteOffsetAutoAdjust(param0->unk_250[15], 1);
            CellActor_SetExplicitPaletteOffsetAutoAdjust(param0->unk_250[16], 1);
        } else {
            CellActor_SetExplicitPaletteOffsetAutoAdjust(param0->unk_250[13], 1);
            CellActor_SetExplicitPaletteOffsetAutoAdjust(param0->unk_250[14], 1);
            CellActor_SetExplicitPaletteOffsetAutoAdjust(param0->unk_250[15], 0);
            CellActor_SetExplicitPaletteOffsetAutoAdjust(param0->unk_250[16], 0);
        }
    } else {
        CellActor_SetExplicitPaletteOffsetAutoAdjust(param0->unk_250[13], 2);
        CellActor_SetExplicitPaletteOffsetAutoAdjust(param0->unk_250[14], 2);
        CellActor_SetExplicitPaletteOffsetAutoAdjust(param0->unk_250[15], 2);
        CellActor_SetExplicitPaletteOffsetAutoAdjust(param0->unk_250[16], 2);
    }

    v0 = CellActor_GetPosition(param0->unk_250[13]);
    v1 = *v0;
    v1.x = 128 * FX32_ONE;

    CellActor_SetPosition(param0->unk_250[13], &v1);

    v0 = CellActor_GetPosition(param0->unk_250[15]);
    v1 = *v0;
    v1.x = 128 * FX32_ONE;

    CellActor_SetPosition(param0->unk_250[15], &v1);
}

void ov77_021D6470(UnkStruct_ov77_021D5564 *param0, int param1)
{
    u16 v0;
    const VecFx32 *v1;
    VecFx32 v2;
    s32 v3;

    v3 = param1 - (65 * 30 - 15 - 15 - 45 - 15);

    if (v3 < 0) {
        v3 = 0;
    } else {
        (void)0;
    }

    v0 = CellActor_GetAffineZRotation(param0->unk_250[11]);
    CellActor_SetAffineZRotation(param0->unk_250[11], v0 + 0x1c00 + v3);

    v0 = CellActor_GetAffineZRotation(param0->unk_250[12]);
    CellActor_SetAffineZRotation(param0->unk_250[12], v0 - 0x1c00 - v3);

    if (param1 >= (65 * 30 - 15 - 15 - 45 - 15)) {
        v1 = CellActor_GetPosition(param0->unk_250[11]);
        v2 = *v1;
        v2.x += 0x1000;

        CellActor_SetPosition(param0->unk_250[11], &v2);

        v1 = CellActor_GetPosition(param0->unk_250[12]);
        v2 = *v1;
        v2.x -= 0x1000;

        CellActor_SetPosition(param0->unk_250[12], &v2);
    }
}

void include_data_ov77_021D79B8(void)
{
    dummy[0];
    Unk_ov77_021D79B8[0];
}

void ov77_021D6530(UnkStruct_ov77_021D5564 *param0, const int param1)
{
    u8 v0;
    VecFx32 v1;
    const int v2[3] = {
        4,
        5,
        6,
    };
    const int v3[1] = {
        7,
    };
    const int v4[] = {
        8,
        9,
    };

    if (param1 >= (1460 - 15)) {
        for (v0 = 0; v0 < 3; v0++) {
            v1 = *CellActor_GetPosition(param0->unk_250[v2[v0]]);
            v1.x -= Unk_ov77_021D79AC[v0];
            v1.y -= (FX32_ONE * 4);
            CellActor_SetPosition(param0->unk_250[v2[v0]], &v1);
        }
    }

    if (param1 >= (1490 - 15 + 15)) {
        for (v0 = 0; v0 < 1; v0++) {
            v1 = *CellActor_GetPosition(param0->unk_250[v3[v0]]);
            v1.x -= Unk_ov77_021D79A0[v0];
            v1.y -= (FX32_ONE * 3);
            CellActor_SetPosition(param0->unk_250[v3[v0]], &v1);
        }
    }

    if (param1 >= (1510 - 15 + 15)) {
        for (v0 = 0; v0 < 2; v0++) {
            v1 = *CellActor_GetPosition(param0->unk_250[v4[v0]]);
            v1.x -= Unk_ov77_021D79A4[v0];
            v1.y -= (FX32_ONE * 3);
            CellActor_SetPosition(param0->unk_250[v4[v0]], &v1);
        }
    }
}
