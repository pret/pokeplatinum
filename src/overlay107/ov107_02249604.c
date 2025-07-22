#include "overlay107/ov107_02249604.h"

#include <nitro.h>
#include <string.h>

#include "overlay107/struct_ov107_02249954.h"

#include "char_transfer.h"
#include "gx_layers.h"
#include "item.h"
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

void ov107_02249604(UnkStruct_ov107_02249954 *param0, Party *param1, u8 param2);
Sprite *ov107_022498A4(UnkStruct_ov107_02249954 *param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, int param6, u8 param7);
void ov107_02249954(UnkStruct_ov107_02249954 *param0);
void ov107_022499BC(UnkStruct_ov107_02249954 *param0, u16 param1);
void ov107_022499FC(UnkStruct_ov107_02249954 *param0, u16 param1);
static void ov107_02249A3C(void);
static void ov107_02249A70(UnkStruct_ov107_02249954 *param0);

static const u8 Unk_ov107_0224A204[4] = {
    0x7,
    0x7,
    0x7,
    0x7
};

void ov107_02249604(UnkStruct_ov107_02249954 *param0, Party *param1, u8 param2) {
    int v0;
    NARC *v1;
    Pokemon *v2;

    VramTransfer_New(32, HEAP_ID_100);
    ov107_02249A3C();

    NNS_G2dInitOamManagerModule();

    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, 100);
    param0->unk_00 = SpriteList_InitRendering(40, &param0->unk_04, HEAP_ID_100);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_190[v0] = SpriteResourceCollection_New(Unk_ov107_0224A204[v0], v0, HEAP_ID_100);
    }

    param0->unk_1A0[0][0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 151, 15, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_100);
    param0->unk_1A0[0][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 151, 39, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 4, HEAP_ID_100);
    param0->unk_1A0[0][2] = SpriteResourceCollection_Add(param0->unk_190[2], 151, 17, 1, 0, 2, HEAP_ID_100);
    param0->unk_1A0[0][3] = SpriteResourceCollection_Add(param0->unk_190[3], 151, 16, 1, 0, 3, HEAP_ID_100);

    v1 = NARC_ctor(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, HEAP_ID_100);

    param0->unk_1A0[1][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_190[0], v1, Item_FileID(0, 1), 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_100);
    param0->unk_1A0[1][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 16, Item_FileID(0, 2), 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 3, HEAP_ID_100);
    param0->unk_1A0[1][2] = SpriteResourceCollection_AddFrom(param0->unk_190[2], v1, Item_IconNCERFile(), 0, 1, 2, HEAP_ID_100);
    param0->unk_1A0[1][3] = SpriteResourceCollection_AddFrom(param0->unk_190[3], v1, Item_IconNANRFile(), 0, 1, 3, HEAP_ID_100);

    NARC_dtor(v1);
    ov107_02249A70(param0);

    v1 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_100);

    param0->unk_1A0[3][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 19, PokeIconPalettesFileIndex(), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 3, HEAP_ID_100);
    param0->unk_1A0[3][2] = SpriteResourceCollection_AddFrom(param0->unk_190[2], v1, PokeIcon32KCellsFileIndex(), 0, 3, 2, HEAP_ID_100);
    param0->unk_1A0[3][3] = SpriteResourceCollection_AddFrom(param0->unk_190[3], v1, PokeIcon32KAnimationFileIndex(), 0, 3, 3, HEAP_ID_100);

    for (v0 = 0; v0 < 4; v0++) {
        if (v0 == 3) {
            if (param2 == 0) {
                v2 = Party_GetPokemonBySlotIndex(param1, 0);
            } else {
                v2 = Party_GetPokemonBySlotIndex(param1, v0);
            }
        } else {
            v2 = Party_GetPokemonBySlotIndex(param1, v0);
        }

        param0->unk_1A0[3 + v0][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_190[0], v1, Pokemon_IconSpriteIndex(v2), 0, 3 + v0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_100);
    }

    NARC_dtor(v1);

    for (v0 = 0; v0 < 7; v0++) {
        SpriteTransfer_RequestChar(param0->unk_1A0[v0][0]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        SpriteTransfer_RequestPlttWholeRange(param0->unk_1A0[v0][1]);
    }

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

    return;
}

Sprite *ov107_022498A4(UnkStruct_ov107_02249954 *param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, int param6, u8 param7) {
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

        if (param7 == 0) {
            v3.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        } else {
            v3.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
        }

        v3.heapID = HEAP_ID_100;

        if (param7 == 1) {
            v3.position.y += (192 << FX32_SHIFT);
        }

        v2 = SpriteList_AddAffine(&v3);

        Sprite_SetAnimateFlag(v2, 1);
        Sprite_SetAnimSpeed(v2, FX32_ONE);
        Sprite_SetAnim(v2, param4);
    }

    return v2;
}

void ov107_02249954(UnkStruct_ov107_02249954 *param0) {
    u8 v0;

    for (v0 = 0; v0 < 7; v0++) {
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

void ov107_022499BC(UnkStruct_ov107_02249954 *param0, u16 param1) {
    SpriteResource *v0 = SpriteResourceCollection_Find(param0->unk_190[0], 1);

    SpriteResourceCollection_ModifyTiles(param0->unk_190[0], v0, 16, Item_FileID(param1, 1), 0, HEAP_ID_100);
    SpriteTransfer_RetransferCharData(v0);

    return;
}

void ov107_022499FC(UnkStruct_ov107_02249954 *param0, u16 param1) {
    SpriteResource *v0 = SpriteResourceCollection_Find(param0->unk_190[1], 1);

    SpriteResourceCollection_ModifyPalette(param0->unk_190[1], v0, 16, Item_FileID(param1, 2), 0, HEAP_ID_100);
    SpriteTransfer_ReplacePlttData(v0);

    return;
}

static void ov107_02249A3C(void) {
    {
        CharTransferTemplate v0 = {
            32, 1024, 1024, 100
        };

        CharTransfer_InitWithVramModes(&v0, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K);
    }

    PlttTransfer_Init((4 + 1 + 3), HEAP_ID_100);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();

    return;
}

static void ov107_02249A70(UnkStruct_ov107_02249954 *param0) {
    NARC *v0;
    u32 v1;

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PLIST_GRA, HEAP_ID_100);

    param0->unk_1A0[2][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_190[0], v0, sub_02081930(), 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_100);
    param0->unk_1A0[2][1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 20, sub_02081934(), 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 3, HEAP_ID_100);
    param0->unk_1A0[2][2] = SpriteResourceCollection_AddFrom(param0->unk_190[2], v0, sub_02081938(), 0, 2, 2, HEAP_ID_100);
    param0->unk_1A0[2][3] = SpriteResourceCollection_AddFrom(param0->unk_190[3], v0, sub_0208193C(), 0, 2, 3, HEAP_ID_100);

    NARC_dtor(v0);
    return;
}
