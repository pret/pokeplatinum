#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"

#include "overlay019/struct_ov19_021DA864.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay108/struct_ov108_02243030.h"
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
#include "unk_0207E0B8.h"
#include "overlay108/ov108_02243030.h"

static const u8 Unk_ov108_02243760[4] = {
    11, 11, 11, 11,
};

void ov108_02243030(UnkStruct_ov108_02243030 * param0, Party * param1, Party * param2, u8 param3);
GraphicElementData * ov108_022430F0(UnkStruct_ov108_02243030 * param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, int param6, u8 param7);
void ov108_02243194(UnkStruct_ov108_02243030 * param0);
static void ov108_022431FC(void);
static void ov108_02243230(UnkStruct_ov108_02243030 * param0);
static void ov108_022432B4(UnkStruct_ov108_02243030 * param0);
static void ov108_02243360(UnkStruct_ov108_02243030 * param0, Party * param1, Party * param2, u8 param3);
static void ov108_02243490(UnkStruct_ov108_02243030 * param0);

void ov108_02243030 (UnkStruct_ov108_02243030 * param0, Party * param1, Party * param2, u8 param3)
{
    int v0;

    sub_0201DBEC(32, 103);
    ov108_022431FC();

    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 128, 0, 32, 0, 128, 0, 32, 103);

    param0->unk_00 = sub_020095C4(((4 * 4) + 1 + 8 + 8 + 1), &param0->unk_04, 103);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_190[v0] = sub_02009714(Unk_ov108_02243760[v0], v0, 103);
    }

    ov108_02243490(param0);
    ov108_02243230(param0);
    ov108_022432B4(param0);
    ov108_02243360(param0, param1, param2, param3);

    for (v0 = 0; v0 < 11; v0++) {
        sub_0200A328(param0->unk_1A0[v0][0]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        sub_0200A5C8(param0->unk_1A0[v0][1]);
    }

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

    return;
}

GraphicElementData * ov108_022430F0 (UnkStruct_ov108_02243030 * param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, int param6, u8 param7)
{
    int v0;
    CellActorResourceData v1;
    GraphicElementData * v2;

    sub_020093B4(&v1, param1, param2, param3, param3, 0xffffffff, 0xffffffff, 0, param6, param0->unk_190[0], param0->unk_190[1], param0->unk_190[2], param0->unk_190[3], NULL, NULL);

    {
        CellActorInitParamsEx v3;

        v3.manager = param0->unk_00;
        v3.resourceData = &v1;
        v3.position.x = 0;
        v3.position.y = 0;
        v3.position.z = 0;
        v3.affineScale.x = FX32_ONE;
        v3.affineScale.y = FX32_ONE;
        v3.affineScale.z = FX32_ONE;
        v3.affineZRotation = 0;
        v3.priority = param5;
        v3.heapID = 103;

        if (param7 == 0) {
            v3.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        } else {
            v3.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
            v3.position.y += (192 << FX32_SHIFT);
        }

        v2 = GraphicElementManager_AddElementEx(&v3);

        sub_02021CC8(v2, 1);
        sub_02021CE4(v2, FX32_ONE);
        SpriteActor_SetSpriteAnimActive(v2, param4);
    }

    return v2;
}

void ov108_02243194 (UnkStruct_ov108_02243030 * param0)
{
    u8 v0;

    for (v0 = 0; v0 < 11; v0++) {
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

static void ov108_022431FC (void)
{
    {
        UnkStruct_ov22_022559F8 v0 = {
            32, 1024, 1024, 103
        };

        sub_0201E88C(&v0, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K);
    }

    sub_0201F834((8 + 2 + 1 + 3), 103);
    sub_0201E994();
    sub_0201F8E4();

    return;
}

static void ov108_02243230 (UnkStruct_ov108_02243030 * param0)
{
    param0->unk_1A0[1][0] = sub_0200985C(param0->unk_190[0], 151, 18, 1, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 103);
    param0->unk_1A0[1][1] = sub_020098B8(param0->unk_190[1], 151, 40, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 8, 103);
    param0->unk_1A0[1][2] = sub_02009918(param0->unk_190[2], 151, 20, 1, 1, 2, 103);
    param0->unk_1A0[1][3] = sub_02009918(param0->unk_190[3], 151, 19, 1, 1, 3, 103);

    return;
}

static void ov108_022432B4 (UnkStruct_ov108_02243030 * param0)
{
    NARC * v0;
    u32 v1;

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PLIST_GRA, 103);

    param0->unk_1A0[2][0] = sub_02009A4C(param0->unk_190[0], v0, sub_02081930(), 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 103);
    param0->unk_1A0[2][1] = sub_020098B8(param0->unk_190[1], 20, sub_02081934(), 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 3, 103);
    param0->unk_1A0[2][2] = sub_02009BC4(param0->unk_190[2], v0, sub_02081938(), 0, 2, 2, 103);
    param0->unk_1A0[2][3] = sub_02009BC4(param0->unk_190[3], v0, sub_0208193C(), 0, 2, 3, 103);

    NARC_dtor(v0);
    return;
}

static void ov108_02243360 (UnkStruct_ov108_02243030 * param0, Party * param1, Party * param2, u8 param3)
{
    Pokemon * v0;
    Pokemon * v1;
    NARC * v2;
    u32 v3;

    v2 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, 103);

    param0->unk_1A0[3][1] = sub_020098B8(param0->unk_190[1], 19, PokeIconPalettesFileIndex(), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 3, 103);
    param0->unk_1A0[3][2] = sub_02009BC4(param0->unk_190[2], v2, PokeIcon32KCellsFileIndex(), 0, 3, 2, 103);
    param0->unk_1A0[3][3] = sub_02009BC4(param0->unk_190[3], v2, PokeIcon32KAnimationFileIndex(), 0, 3, 3, 103);

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

        param0->unk_1A0[3 + v3][0] = sub_02009A4C(param0->unk_190[0], v2, Pokemon_IconSpriteIndex(v0), 0, 3 + v3, NNS_G2D_VRAM_TYPE_2DMAIN, 103);
        param0->unk_1A0[7 + v3][0] = sub_02009A4C(param0->unk_190[0], v2, Pokemon_IconSpriteIndex(v1), 0, 7 + v3, NNS_G2D_VRAM_TYPE_2DMAIN, 103);
    }

    NARC_dtor(v2);
    return;
}

static void ov108_02243490 (UnkStruct_ov108_02243030 * param0)
{
    param0->unk_1A0[0][0] = sub_0200985C(param0->unk_190[0], 151, 21, 1, 0, NNS_G2D_VRAM_TYPE_2DSUB, 103);
    param0->unk_1A0[0][1] = sub_020098B8(param0->unk_190[1], 151, 41, 0, 0, NNS_G2D_VRAM_TYPE_2DSUB, 2, 103);
    param0->unk_1A0[0][2] = sub_02009918(param0->unk_190[2], 151, 23, 1, 0, 2, 103);
    param0->unk_1A0[0][3] = sub_02009918(param0->unk_190[3], 151, 22, 1, 0, 3, 103);

    return;
}
