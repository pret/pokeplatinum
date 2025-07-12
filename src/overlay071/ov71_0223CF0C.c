#include "overlay071/ov71_0223CF0C.h"

#include <nitro.h>
#include <string.h>

#include "overlay071/struct_ov71_0223D238.h"

#include "char_transfer.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "pltt_transfer.h"
#include "render_oam.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"

typedef struct {
    int unk_00;
    int unk_04;
} UnkStruct_ov71_0223D73C;

static const u8 Unk_ov71_0223D6C8[4] = {
    0x1,
    0x2,
    0x1,
    0x1
};

static const UnkStruct_ov71_0223D73C Unk_ov71_0223D73C[] = {
    { 0x18, 0x28 },
    { 0x50, 0x28 },
    { 0x88, 0x28 },
    { 0xC0, 0x28 },
    { 0x18, 0x48 },
    { 0x50, 0x48 },
    { 0x88, 0x48 },
    { 0xC0, 0x48 }
};

static const UnkStruct_ov71_0223D73C Unk_ov71_0223D6FC[] = {
    { 0x18, 0x28 },
    { 0x50, 0x28 },
    { 0x88, 0x28 },
    { 0xC0, 0x28 },
    { 0x18, 0x60 },
    { 0x50, 0x60 },
    { 0x88, 0x60 },
    { 0xC0, 0x60 }
};

static void ov71_0223D2F4(void);

void ov71_0223CF0C(UnkStruct_ov71_0223D238 *param0, NARC *param1)
{
    int v0;

    ov71_0223D2F4();
    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, 25);

    param0->unk_00 = SpriteList_InitRendering((8 + 8 + 8 + 1), &param0->unk_04, HEAP_ID_TRAINER_CARD_SCREEN);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_190[v0] = SpriteResourceCollection_New(Unk_ov71_0223D6C8[v0], v0, HEAP_ID_TRAINER_CARD_SCREEN);
    }

    param0->unk_1A0[0][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_190[0], param1, 33, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_TRAINER_CARD_SCREEN);
    param0->unk_1A0[0][1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_190[1], param1, 14, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 9, HEAP_ID_TRAINER_CARD_SCREEN);
    param0->unk_1A0[0][2] = SpriteResourceCollection_AddFrom(param0->unk_190[2], param1, 44, 0, 1, 2, HEAP_ID_TRAINER_CARD_SCREEN);
    param0->unk_1A0[0][3] = SpriteResourceCollection_AddFrom(param0->unk_190[3], param1, 46, 0, 1, 3, HEAP_ID_TRAINER_CARD_SCREEN);

    SpriteTransfer_RequestChar(param0->unk_1A0[0][0]);
    SpriteTransfer_RequestPlttWholeRange(param0->unk_1A0[0][1]);

    {
        u8 v1;
        const int v2[8] = {
            16, 17, 18, 19, 20, 21, 22, 23
        };

        for (v1 = 0; v1 < 8; v1++) {
            param0->unk_224[v1] = NARC_AllocAndReadWholeMember(param1, v2[v1], 25);

            if (param0->unk_224[v1] != NULL) {
                if (NNS_G2dGetUnpackedPaletteData(param0->unk_224[v1], &param0->unk_244[v1]) == 0) {
                    Heap_Free(param0->unk_244[v1]);
                    GF_ASSERT(0);
                }
            } else {
                GF_ASSERT(0);
            }
        }
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

void ov71_0223D070(UnkStruct_ov71_0223D238 *param0, const u8 *param1)
{
    int v0;
    SpriteResourcesHeader v1;

    SpriteResourcesHeader_Init(&v1, 1, 1, 1, 1, 0xffffffff, 0xffffffff, 0, 1, param0->unk_190[0], param0->unk_190[1], param0->unk_190[2], param0->unk_190[3], NULL, NULL);

    {
        u8 v2;
        AffineSpriteListTemplate v3;

        v3.list = param0->unk_00;
        v3.resourceData = &v1;
        v3.position.x = 0;
        v3.position.y = 0;
        v3.position.z = 0;
        v3.affineScale.x = FX32_ONE;
        v3.affineScale.y = FX32_ONE;
        v3.affineScale.z = FX32_ONE;
        v3.affineZRotation = 0;
        v3.priority = 2;
        v3.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v3.heapID = HEAP_ID_TRAINER_CARD_SCREEN;

        for (v0 = 0; v0 < 8; v0++) {
            v3.position.x = FX32_ONE * Unk_ov71_0223D73C[v0].unk_00;
            v3.position.y = FX32_ONE * Unk_ov71_0223D73C[v0].unk_04;
            param0->unk_1C0[v0] = SpriteList_AddAffine(&v3);
            Sprite_SetAnimateFlag(param0->unk_1C0[v0], 0);
            Sprite_SetAnim(param0->unk_1C0[v0], v0);

            if (!param1[v0]) {
                Sprite_SetDrawFlag(param0->unk_1C0[v0], FALSE);
            }
        }

        {
            v2 = 8;

            for (v0 = 0; v0 < 8; v0++) {
                v3.position.x = FX32_ONE * Unk_ov71_0223D6FC[v0].unk_00;
                v3.position.y = FX32_ONE * Unk_ov71_0223D6FC[v0].unk_04;
                v3.priority = 1;
                param0->unk_1C0[v2 + v0] = SpriteList_AddAffine(&v3);
                Sprite_SetAnimateFlag(param0->unk_1C0[v2 + v0], 1);
                Sprite_SetAnim(param0->unk_1C0[v2 + v0], 8);
                Sprite_SetDrawFlag(param0->unk_1C0[v2 + v0], FALSE);
            }

            v2 += 8;

            for (v0 = 0; v0 < 8; v0++) {
                v3.position.x = FX32_ONE * Unk_ov71_0223D6FC[v0].unk_00;
                v3.position.y = FX32_ONE * Unk_ov71_0223D6FC[v0].unk_04;
                v3.priority = 1;
                param0->unk_1C0[v2 + v0] = SpriteList_AddAffine(&v3);
                Sprite_SetAnimateFlag(param0->unk_1C0[v2 + v0], 1);
                Sprite_SetAnim(param0->unk_1C0[v2 + v0], 9);
                Sprite_SetDrawFlag(param0->unk_1C0[v2 + v0], FALSE);
            }
        }
        v2 += 8;

        {
            v1.priority = 0;
            v3.position.x = FX32_ONE * (12 * 8);
            v3.position.y = FX32_ONE * (17 * 8);
            v3.priority = 0;
            param0->unk_1C0[v2] = SpriteList_AddAffine(&v3);
            Sprite_SetAnimateFlag(param0->unk_1C0[v2], 0);
            Sprite_SetAnim(param0->unk_1C0[v2], 10);
            Sprite_SetDrawFlag(param0->unk_1C0[v2], FALSE);
        }
    }
}

void ov71_0223D238(UnkStruct_ov71_0223D238 *param0)
{
    u8 v0;

    for (v0 = 0; v0 < 8; v0++) {
        Heap_Free(param0->unk_224[v0]);
    }

    SpriteTransfer_ResetCharTransfer(param0->unk_1A0[0][0]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_1A0[0][1]);

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_190[v0]);
    }

    SpriteList_Delete(param0->unk_00);
    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();
}

void ov71_0223D298(UnkStruct_ov71_0223D238 *param0, const u8 param1, const u8 param2)
{
    NNSG2dImagePaletteProxy *v0;
    u32 v1;
    u32 v2;
    u8 *v3;

    GF_ASSERT(param1 < 8);
    GF_ASSERT(param2 <= 3);

    v0 = Sprite_GetPaletteProxy(param0->unk_1C0[param1]);
    v1 = NNS_G2dGetImagePaletteLocation(v0, NNS_G2D_VRAM_TYPE_2DMAIN);
    v1 += param1 * (16 * 2);
    v3 = param0->unk_244[param1]->pRawData;

    DC_FlushRange(&v3[param2 * 16 * 2], 16 * 2);
    GX_LoadOBJPltt(&v3[param2 * 16 * 2], v1, 16 * 2);
}

static void ov71_0223D2F4(void)
{
    {
        CharTransferTemplate v0 = {
            1, 2048, 0, HEAP_ID_25
        };

        CharTransfer_Init(&v0);
    }

    PlttTransfer_Init(2, HEAP_ID_TRAINER_CARD_SCREEN);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}
