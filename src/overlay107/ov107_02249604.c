#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"

#include "overlay019/struct_ov19_021DA864.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay107/struct_ov107_02249954.h"
#include "overlay115/struct_ov115_02261520.h"

#include "narc.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "pokemon_icon.h"
#include "party.h"
#include "item.h"
#include "unk_0207E0B8.h"
#include "overlay107/ov107_02249604.h"

void ov107_02249604(UnkStruct_ov107_02249954 * param0, Party * param1, u8 param2);
GraphicElementData * ov107_022498A4(UnkStruct_ov107_02249954 * param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, int param6, u8 param7);
void ov107_02249954(UnkStruct_ov107_02249954 * param0);
void ov107_022499BC(UnkStruct_ov107_02249954 * param0, u16 param1);
void ov107_022499FC(UnkStruct_ov107_02249954 * param0, u16 param1);
static void ov107_02249A3C(void);
static void ov107_02249A70(UnkStruct_ov107_02249954 * param0);

static const u8 Unk_ov107_0224A204[4] = {
    0x7,
    0x7,
    0x7,
    0x7
};

void ov107_02249604 (UnkStruct_ov107_02249954 * param0, Party * param1, u8 param2)
{
    int v0;
    NARC * v1;
    Pokemon * v2;

    sub_0201DBEC(32, 100);
    ov107_02249A3C();

    NNS_G2dInitOamManagerModule();

    sub_0200A784(0, 128, 0, 32, 0, 128, 0, 32, 100);
    param0->unk_00 = sub_020095C4(40, &param0->unk_04, 100);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_190[v0] = sub_02009714(Unk_ov107_0224A204[v0], v0, 100);
    }

    param0->unk_1A0[0][0] = sub_0200985C(param0->unk_190[0], 151, 15, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 100);
    param0->unk_1A0[0][1] = sub_020098B8(param0->unk_190[1], 151, 39, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 4, 100);
    param0->unk_1A0[0][2] = sub_02009918(param0->unk_190[2], 151, 17, 1, 0, 2, 100);
    param0->unk_1A0[0][3] = sub_02009918(param0->unk_190[3], 151, 16, 1, 0, 3, 100);

    v1 = NARC_ctor(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, 100);

    param0->unk_1A0[1][0] = sub_02009A4C(param0->unk_190[0], v1, Item_FileID(0, 1), 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 100);
    param0->unk_1A0[1][1] = sub_020098B8(param0->unk_190[1], 16, Item_FileID(0, 2), 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 3, 100);
    param0->unk_1A0[1][2] = sub_02009BC4(param0->unk_190[2], v1, Item_IconNCERFile(), 0, 1, 2, 100);
    param0->unk_1A0[1][3] = sub_02009BC4(param0->unk_190[3], v1, Item_IconNANRFile(), 0, 1, 3, 100);

    NARC_dtor(v1);
    ov107_02249A70(param0);

    v1 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, 100);

    param0->unk_1A0[3][1] = sub_020098B8(param0->unk_190[1], 19, PokeIconPalettesFileIndex(), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 3, 100);
    param0->unk_1A0[3][2] = sub_02009BC4(param0->unk_190[2], v1, PokeIcon32KCellsFileIndex(), 0, 3, 2, 100);
    param0->unk_1A0[3][3] = sub_02009BC4(param0->unk_190[3], v1, PokeIcon32KAnimationFileIndex(), 0, 3, 3, 100);

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

        param0->unk_1A0[3 + v0][0] = sub_02009A4C(param0->unk_190[0], v1, Pokemon_IconSpriteIndex(v2), 0, 3 + v0, NNS_G2D_VRAM_TYPE_2DMAIN, 100);
    }

    NARC_dtor(v1);

    for (v0 = 0; v0 < 7; v0++) {
        sub_0200A328(param0->unk_1A0[v0][0]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        sub_0200A5C8(param0->unk_1A0[v0][1]);
    }

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

    return;
}

GraphicElementData * ov107_022498A4 (UnkStruct_ov107_02249954 * param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, int param6, u8 param7)
{
    int v0;
    CellActorResourceData v1;
    GraphicElementData * v2;

    sub_020093B4(&v1, param1, param2, param3, param3, 0xffffffff, 0xffffffff, 0, param6, param0->unk_190[0], param0->unk_190[1], param0->unk_190[2], param0->unk_190[3], NULL, NULL);

    {
        CellActorInitParamsEx v3;

        v3.manager = param0->unk_00;
        v3.unk_04 = &v1;
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

        v3.unk_2C = 100;

        if (param7 == 1) {
            v3.position.y += (192 << FX32_SHIFT);
        }

        v2 = GraphicElementManager_AddElement(&v3);

        sub_02021CC8(v2, 1);
        sub_02021CE4(v2, FX32_ONE);
        SpriteActor_SetSpriteAnimActive(v2, param4);
    }

    return v2;
}

void ov107_02249954 (UnkStruct_ov107_02249954 * param0)
{
    u8 v0;

    for (v0 = 0; v0 < 7; v0++) {
        sub_0200A4E4(param0->unk_1A0[v0][0]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        sub_0200A6DC(param0->unk_1A0[v0][1]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        sub_02009754(param0->unk_190[v0]);
    }

    GraphicElementManager_Delete(param0->unk_00);
    sub_0200A878();
    sub_0201E958();
    sub_0201F8B4();

    return;
}

void ov107_022499BC (UnkStruct_ov107_02249954 * param0, u16 param1)
{
    UnkStruct_02009DC8 * v0;

    v0 = sub_02009DC8(param0->unk_190[0], 1);

    sub_02009968(param0->unk_190[0], v0, 16, Item_FileID(param1, 1), 0, 100);
    sub_0200A4C0(v0);

    return;
}

void ov107_022499FC (UnkStruct_ov107_02249954 * param0, u16 param1)
{
    UnkStruct_02009DC8 * v0;

    v0 = sub_02009DC8(param0->unk_190[1], 1);

    sub_020099D4(param0->unk_190[1], v0, 16, Item_FileID(param1, 2), 0, 100);
    sub_0200A6B8(v0);

    return;
}

static void ov107_02249A3C (void)
{
    {
        UnkStruct_ov22_022559F8 v0 = {
            32, 1024, 1024, 100
        };

        sub_0201E88C(&v0, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K);
    }

    sub_0201F834((4 + 1 + 3), 100);
    sub_0201E994();
    sub_0201F8E4();

    return;
}

static void ov107_02249A70 (UnkStruct_ov107_02249954 * param0)
{
    NARC * v0;
    u32 v1;

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PLIST_GRA, 100);

    param0->unk_1A0[2][0] = sub_02009A4C(param0->unk_190[0], v0, sub_02081930(), 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 100);
    param0->unk_1A0[2][1] = sub_020098B8(param0->unk_190[1], 20, sub_02081934(), 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 3, 100);
    param0->unk_1A0[2][2] = sub_02009BC4(param0->unk_190[2], v0, sub_02081938(), 0, 2, 2, 100);
    param0->unk_1A0[2][3] = sub_02009BC4(param0->unk_190[3], v0, sub_0208193C(), 0, 2, 3, 100);

    NARC_dtor(v0);
    return;
}
