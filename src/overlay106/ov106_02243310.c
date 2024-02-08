#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "pokemon.h"

#include "overlay019/struct_ov19_021DA864.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay106/struct_ov106_02243310.h"
#include "overlay115/struct_ov115_02261520.h"

#include "narc.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "pokemon_icon.h"
#include "overlay106/ov106_02243310.h"

void ov106_02243310(UnkStruct_ov106_02243310 * param0, Pokemon * param1);
GraphicElementData * ov106_022434BC(UnkStruct_ov106_02243310 * param0, u32 param1, u32 param2, u32 param3, u8 param4);
void ov106_02243570(UnkStruct_ov106_02243310 * param0);
static void ov106_022435C8(void);

static const u8 Unk_ov106_0224384C[4] = {
    0x2,
    0x2,
    0x2,
    0x2
};

void ov106_02243310 (UnkStruct_ov106_02243310 * param0, Pokemon * param1)
{
    int v0;
    NARC * v1;

    ov106_022435C8();
    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 128, 0, 32, 0, 128, 0, 32, 98);

    param0->unk_00 = sub_020095C4(2, &param0->unk_04, 98);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_190[v0] = sub_02009714(Unk_ov106_0224384C[v0], v0, 98);
    }

    param0->unk_1A0[0][0] = sub_0200985C(param0->unk_190[0], 151, 12, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 98);
    param0->unk_1A0[0][1] = sub_020098B8(param0->unk_190[1], 151, 38, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1, 98);
    param0->unk_1A0[0][2] = sub_02009918(param0->unk_190[2], 151, 14, 1, 0, 2, 98);

    param0->unk_1A0[0][3] = sub_02009918(param0->unk_190[3], 151, 13, 1, 0, 3, 98);
    v1 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, 98);

    param0->unk_1A0[1][0] = sub_02009A4C(param0->unk_190[0], v1, Pokemon_IconSpriteIndex(param1), 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 98);
    param0->unk_1A0[1][1] = sub_020098B8(param0->unk_190[1], 19, PokeIconPalettesFileIndex(), 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 3, 98);
    param0->unk_1A0[1][2] = sub_02009BC4(param0->unk_190[2], v1, PokeIcon32KCellsFileIndex(), 0, 1, 2, 98);
    param0->unk_1A0[1][3] = sub_02009BC4(param0->unk_190[3], v1, PokeIcon32KAnimationFileIndex(), 0, 1, 3, 98);

    for (v0 = 0; v0 < 2; v0++) {
        sub_0200A328(param0->unk_1A0[v0][0]);
        sub_0200A5C8(param0->unk_1A0[v0][1]);
    }

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    NARC_dtor(v1);

    return;
}

GraphicElementData * ov106_022434BC (UnkStruct_ov106_02243310 * param0, u32 param1, u32 param2, u32 param3, u8 param4)
{
    int v0;
    UnkStruct_ov19_021DA864 v1;
    GraphicElementData * v2;

    sub_020093B4(&v1, param1, param1, param1, param1, 0xffffffff, 0xffffffff, 0, 1, param0->unk_190[0], param0->unk_190[1], param0->unk_190[2], param0->unk_190[3], NULL, NULL);

    {
        UnkStruct_ov115_02261520 v3;

        v3.unk_00 = param0->unk_00;
        v3.unk_04 = &v1;

        v3.unk_08.x = 0;
        v3.unk_08.y = 0;
        v3.unk_08.z = 0;
        v3.unk_14.x = FX32_ONE;
        v3.unk_14.y = FX32_ONE;
        v3.unk_14.z = FX32_ONE;
        v3.unk_20 = 0;
        v3.unk_24 = param3;

        if (param4 == 0) {
            v3.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
        } else {
            v3.unk_28 = NNS_G2D_VRAM_TYPE_2DSUB;
        }

        v3.unk_2C = 98;

        if (param4 == 1) {
            v3.unk_08.y += (192 << FX32_SHIFT);
        }

        v2 = sub_02021AA0(&v3);

        sub_02021CC8(v2, 1);
        sub_02021CE4(v2, FX32_ONE);
        SpriteActor_SetSpriteAnimActive(v2, param2);
    }

    return v2;
}

void ov106_02243570 (UnkStruct_ov106_02243310 * param0)
{
    u8 v0;

    for (v0 = 0; v0 < 2; v0++) {
        sub_0200A4E4(param0->unk_1A0[v0][0]);
        sub_0200A6DC(param0->unk_1A0[v0][1]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        sub_02009754(param0->unk_190[v0]);
    }

    sub_02021964(param0->unk_00);
    sub_0200A878();
    sub_0201E958();
    sub_0201F8B4();

    return;
}

static void ov106_022435C8 (void)
{
    {
        UnkStruct_ov22_022559F8 v0 = {
            3, 2048, 2048, 98
        };

        sub_0201E88C(&v0, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K);
    }

    sub_0201F834((1 + 3), 98);
    sub_0201E994();
    sub_0201F8E4();

    return;
}
