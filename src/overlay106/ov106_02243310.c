#include "overlay106/ov106_02243310.h"

#include <nitro.h>
#include <string.h>

#include "overlay106/struct_ov106_02243310.h"

#include "cell_actor.h"
#include "char_transfer.h"
#include "gx_layers.h"
#include "narc.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "sprite_resource.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0201F834.h"

void ov106_02243310(UnkStruct_ov106_02243310 *param0, Pokemon *param1);
CellActor *ov106_022434BC(UnkStruct_ov106_02243310 *param0, u32 param1, u32 param2, u32 param3, u8 param4);
void ov106_02243570(UnkStruct_ov106_02243310 *param0);
static void ov106_022435C8(void);

static const u8 Unk_ov106_0224384C[4] = {
    0x2,
    0x2,
    0x2,
    0x2
};

void ov106_02243310(UnkStruct_ov106_02243310 *param0, Pokemon *param1)
{
    int v0;
    NARC *v1;

    ov106_022435C8();
    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 128, 0, 32, 0, 128, 0, 32, 98);

    param0->unk_00 = sub_020095C4(2, &param0->unk_04, 98);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_190[v0] = SpriteResourceCollection_New(Unk_ov106_0224384C[v0], v0, 98);
    }

    param0->unk_1A0[0][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 151, 12, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 98);
    param0->unk_1A0[0][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 151, 38, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1, 98);
    param0->unk_1A0[0][2] = SpriteResourceCollection_Add(param0->unk_190[2], 151, 14, 1, 0, 2, 98);

    param0->unk_1A0[0][3] = SpriteResourceCollection_Add(param0->unk_190[3], 151, 13, 1, 0, 3, 98);
    v1 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, 98);

    param0->unk_1A0[1][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_190[0], v1, Pokemon_IconSpriteIndex(param1), 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 98);
    param0->unk_1A0[1][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 19, PokeIconPalettesFileIndex(), 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 3, 98);
    param0->unk_1A0[1][2] = SpriteResourceCollection_AddFrom(param0->unk_190[2], v1, PokeIcon32KCellsFileIndex(), 0, 1, 2, 98);
    param0->unk_1A0[1][3] = SpriteResourceCollection_AddFrom(param0->unk_190[3], v1, PokeIcon32KAnimationFileIndex(), 0, 1, 3, 98);

    for (v0 = 0; v0 < 2; v0++) {
        sub_0200A328(param0->unk_1A0[v0][0]);
        sub_0200A5C8(param0->unk_1A0[v0][1]);
    }

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    NARC_dtor(v1);

    return;
}

CellActor *ov106_022434BC(UnkStruct_ov106_02243310 *param0, u32 param1, u32 param2, u32 param3, u8 param4)
{
    int v0;
    CellActorResourceData v1;
    CellActor *v2;

    sub_020093B4(&v1, param1, param1, param1, param1, 0xffffffff, 0xffffffff, 0, 1, param0->unk_190[0], param0->unk_190[1], param0->unk_190[2], param0->unk_190[3], NULL, NULL);

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
        v3.priority = param3;

        if (param4 == 0) {
            v3.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        } else {
            v3.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
        }

        v3.heapID = 98;

        if (param4 == 1) {
            v3.position.y += (192 << FX32_SHIFT);
        }

        v2 = CellActorCollection_AddEx(&v3);

        CellActor_SetAnimateFlag(v2, 1);
        CellActor_SetAnimSpeed(v2, FX32_ONE);
        CellActor_SetAnim(v2, param2);
    }

    return v2;
}

void ov106_02243570(UnkStruct_ov106_02243310 *param0)
{
    u8 v0;

    for (v0 = 0; v0 < 2; v0++) {
        sub_0200A4E4(param0->unk_1A0[v0][0]);
        sub_0200A6DC(param0->unk_1A0[v0][1]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_190[v0]);
    }

    CellActorCollection_Delete(param0->unk_00);
    sub_0200A878();
    CharTransfer_Free();
    sub_0201F8B4();

    return;
}

static void ov106_022435C8(void)
{
    {
        CharTransferTemplate v0 = {
            3, 2048, 2048, 98
        };

        CharTransfer_InitWithVramModes(&v0, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K);
    }

    sub_0201F834((1 + 3), 98);
    CharTransfer_ClearBuffers();
    sub_0201F8E4();

    return;
}
