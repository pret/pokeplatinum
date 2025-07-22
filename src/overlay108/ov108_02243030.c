#include "overlay108/ov108_02243030.h"

#include <nitro.h>
#include <string.h>

#include "overlay108/struct_ov108_02243030.h"

#include "char_transfer.h"
#include "gx_layers.h"
#include "narc.h"
#include "party.h"
#include "pltt_transfer.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "render_oam.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "unk_0207E0B8.h"
#include "vram_transfer.h"

static const u8 Unk_ov108_02243760[4] = {
    11,
    11,
    11,
    11,
};

void ov108_02243030(UnkStruct_ov108_02243030 *param0, Party *param1, Party *param2, u8 param3);
Sprite *ov108_022430F0(UnkStruct_ov108_02243030 *param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, int param6, u8 param7);
void ov108_02243194(UnkStruct_ov108_02243030 *param0);
static void ov108_022431FC(void);
static void ov108_02243230(UnkStruct_ov108_02243030 *param0);
static void ov108_022432B4(UnkStruct_ov108_02243030 *param0);
static void ov108_02243360(UnkStruct_ov108_02243030 *param0, Party *param1, Party *param2, u8 param3);
static void ov108_02243490(UnkStruct_ov108_02243030 *param0);

void ov108_02243030(UnkStruct_ov108_02243030 *param0, Party *param1, Party *param2, u8 param3) {
    int v0;

    VramTransfer_New(32, HEAP_ID_103);
    ov108_022431FC();

    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, 103);

    param0->unk_00 = SpriteList_InitRendering(((4 * 4) + 1 + 8 + 8 + 1), &param0->unk_04, HEAP_ID_103);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_190[v0] = SpriteResourceCollection_New(Unk_ov108_02243760[v0], v0, HEAP_ID_103);
    }

    ov108_02243490(param0);
    ov108_02243230(param0);
    ov108_022432B4(param0);
    ov108_02243360(param0, param1, param2, param3);

    for (v0 = 0; v0 < 11; v0++) {
        SpriteTransfer_RequestChar(param0->unk_1A0[v0][0]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        SpriteTransfer_RequestPlttWholeRange(param0->unk_1A0[v0][1]);
    }

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

    return;
}

Sprite *ov108_022430F0(UnkStruct_ov108_02243030 *param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, int param6, u8 param7) {
    int v0;
    SpriteResourcesHeader v1;
    Sprite *v2;

    SpriteResourcesHeader_Init(&v1, param1, param2, param3, param3, 0xffffffff, 0xffffffff, 0, param6, param0->unk_190[0], param0->unk_190[1], param0->unk_190[2], param0->unk_190[3], NULL, NULL);

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
        v3.priority = param5;
        v3.heapID = HEAP_ID_103;

        if (param7 == 0) {
            v3.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        } else {
            v3.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
            v3.position.y += (192 << FX32_SHIFT);
        }

        v2 = SpriteList_AddAffine(&v3);

        Sprite_SetAnimateFlag(v2, 1);
        Sprite_SetAnimSpeed(v2, FX32_ONE);
        Sprite_SetAnim(v2, param4);
    }

    return v2;
}

void ov108_02243194(UnkStruct_ov108_02243030 *param0) {
    u8 v0;

    for (v0 = 0; v0 < 11; v0++) {
        SpriteTransfer_ResetCharTransfer(param0->unk_1A0[v0][0]);
    }

    for (v0 = 0; v0 < 4; v0++) {
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

static void ov108_022431FC(void) {
    {
        CharTransferTemplate v0 = {
            32, 1024, 1024, 103
        };

        CharTransfer_InitWithVramModes(&v0, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K);
    }

    PlttTransfer_Init((8 + 2 + 1 + 3), HEAP_ID_103);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();

    return;
}

static void ov108_02243230(UnkStruct_ov108_02243030 *param0) {
    param0->unk_1A0[1][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 151, 18, 1, 1, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_103);
    param0->unk_1A0[1][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 151, 40, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 8, HEAP_ID_103);
    param0->unk_1A0[1][2] = SpriteResourceCollection_Add(param0->unk_190[2], 151, 20, 1, 1, 2, HEAP_ID_103);
    param0->unk_1A0[1][3] = SpriteResourceCollection_Add(param0->unk_190[3], 151, 19, 1, 1, 3, HEAP_ID_103);

    return;
}

static void ov108_022432B4(UnkStruct_ov108_02243030 *param0) {
    NARC *v0;
    u32 v1;

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PLIST_GRA, HEAP_ID_103);

    param0->unk_1A0[2][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_190[0], v0, sub_02081930(), 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_103);
    param0->unk_1A0[2][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 20, sub_02081934(), 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 3, HEAP_ID_103);
    param0->unk_1A0[2][2] = SpriteResourceCollection_AddFrom(param0->unk_190[2], v0, sub_02081938(), 0, 2, 2, HEAP_ID_103);
    param0->unk_1A0[2][3] = SpriteResourceCollection_AddFrom(param0->unk_190[3], v0, sub_0208193C(), 0, 2, 3, HEAP_ID_103);

    NARC_dtor(v0);
    return;
}

static void ov108_02243360(UnkStruct_ov108_02243030 *param0, Party *param1, Party *param2, u8 param3) {
    Pokemon *v0;
    Pokemon *v1;
    NARC *v2;
    u32 v3;

    v2 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_103);

    param0->unk_1A0[3][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 19, PokeIconPalettesFileIndex(), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 3, HEAP_ID_103);
    param0->unk_1A0[3][2] = SpriteResourceCollection_AddFrom(param0->unk_190[2], v2, PokeIcon32KCellsFileIndex(), 0, 3, 2, HEAP_ID_103);
    param0->unk_1A0[3][3] = SpriteResourceCollection_AddFrom(param0->unk_190[3], v2, PokeIcon32KAnimationFileIndex(), 0, 3, 3, HEAP_ID_103);

    for (v3 = 0; v3 < (2 * 2); v3++) {
        if (v3 == 3) {
            if (param3 == 0) {
                v0 = Party_GetPokemonBySlotIndex(param1, 0);
                v1 = Party_GetPokemonBySlotIndex(param2, 0);
            } else {
                v0 = Party_GetPokemonBySlotIndex(param1, v3);
                v1 = Party_GetPokemonBySlotIndex(param2, v3);
            }
        } else {
            v0 = Party_GetPokemonBySlotIndex(param1, v3);
            v1 = Party_GetPokemonBySlotIndex(param2, v3);
        }

        param0->unk_1A0[3 + v3][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_190[0], v2, Pokemon_IconSpriteIndex(v0), 0, 3 + v3, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_103);
        param0->unk_1A0[7 + v3][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_190[0], v2, Pokemon_IconSpriteIndex(v1), 0, 7 + v3, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_103);
    }

    NARC_dtor(v2);
    return;
}

static void ov108_02243490(UnkStruct_ov108_02243030 *param0) {
    param0->unk_1A0[0][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 151, 21, 1, 0, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_103);
    param0->unk_1A0[0][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 151, 41, 0, 0, NNS_G2D_VRAM_TYPE_2DSUB, 2, HEAP_ID_103);
    param0->unk_1A0[0][2] = SpriteResourceCollection_Add(param0->unk_190[2], 151, 23, 1, 0, 2, HEAP_ID_103);
    param0->unk_1A0[0][3] = SpriteResourceCollection_Add(param0->unk_190[3], 151, 22, 1, 0, 3, HEAP_ID_103);

    return;
}
