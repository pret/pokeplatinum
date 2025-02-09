#include "overlay105/ov105_02245AAC.h"

#include <nitro.h>
#include <string.h>

#include "overlay105/struct_ov105_02245AAC.h"

#include "char_transfer.h"
#include "gx_layers.h"
#include "pltt_transfer.h"
#include "render_oam.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"

void ov105_02245AAC(UnkStruct_ov105_02245AAC *param0);
Sprite *ov105_02245BA4(UnkStruct_ov105_02245AAC *param0, u32 param1, u32 param2, u32 param3, int param4, u8 param5);
void ov105_02245C50(UnkStruct_ov105_02245AAC *param0);
static void ov105_02245C98(void);

static const u8 Unk_ov105_02246444[4] = {
    0x1,
    0x1,
    0x1,
    0x1
};

void ov105_02245AAC(UnkStruct_ov105_02245AAC *param0)
{
    int v0;

    ov105_02245C98();
    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, 93);

    param0->unk_00 = SpriteList_InitRendering((6 + 2 + 1), &param0->unk_04, 93);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_190[v0] = SpriteResourceCollection_New(Unk_ov105_02246444[v0], v0, 93);
    }

    param0->unk_1A0[0][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 151, 0, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 93);
    param0->unk_1A0[0][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 151, 36, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 8, 93);
    param0->unk_1A0[0][2] = SpriteResourceCollection_Add(param0->unk_190[2], 151, 2, 1, 0, 2, 93);
    param0->unk_1A0[0][3] = SpriteResourceCollection_Add(param0->unk_190[3], 151, 1, 1, 0, 3, 93);

    for (v0 = 0; v0 < 1; v0++) {
        SpriteTransfer_RequestChar(param0->unk_1A0[v0][0]);
        SpriteTransfer_RequestPlttWholeRange(param0->unk_1A0[v0][1]);
    }

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

    return;
}

Sprite *ov105_02245BA4(UnkStruct_ov105_02245AAC *param0, u32 param1, u32 param2, u32 param3, int param4, u8 param5)
{
    int v0;
    SpriteResourcesHeader v1;
    Sprite *v2;

    SpriteResourcesHeader_Init(&v1, param1, param1, param1, param1, 0xffffffff, 0xffffffff, 0, param4, param0->unk_190[0], param0->unk_190[1], param0->unk_190[2], param0->unk_190[3], NULL, NULL);

    {
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
        v3.priority = param3;

        if (param5 == 0) {
            v3.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        } else {
            v3.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
        }

        v3.heapID = 93;

        if (param5 == 1) {
            v3.position.y += (192 << FX32_SHIFT);
        }

        v2 = SpriteList_AddEx(&v3);

        Sprite_SetAnimateFlag(v2, 1);
        Sprite_SetAnim(v2, param2);
    }

    return v2;
}

void ov105_02245C50(UnkStruct_ov105_02245AAC *param0)
{
    u8 v0;

    for (v0 = 0; v0 < 1; v0++) {
        SpriteTransfer_ResetCharTransfer(param0->unk_1A0[v0][0]);
        SpriteTransfer_ResetPlttTransfer(param0->unk_1A0[v0][1]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_190[v0]);
    }

    SpriteList_Delete(param0->unk_00);
    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();

    return;
}

static void ov105_02245C98(void)
{
    {
        CharTransferTemplate v0 = {
            32, 2048, 2048, 93
        };

        CharTransfer_InitWithVramModes(&v0, GX_OBJVRAMMODE_CHAR_1D_64K, GX_OBJVRAMMODE_CHAR_1D_64K);
    }

    PlttTransfer_Init(8, 93);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();

    return;
}
