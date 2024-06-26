#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "pokemon.h"

#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_0207F248.h"
#include "struct_defs/struct_020831B4.h"
#include "overlay007/struct_ov7_0224F2EC.h"
#include "overlay007/struct_ov7_0224F358.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200C6E4.h"
#include "heap.h"
#include "unk_0201DBEC.h"
#include "unk_0201E010.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "party.h"
#include "item.h"
#include "unk_0207E0B8.h"
#include "unk_02082C2C.h"
#include "unk_0208C098.h"

void sub_02082C2C (GameWindowLayout * param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    sub_0201DBEC(32, 12);

    param0->unk_5A8 = sub_0200C6E4(12);
    param0->unk_5AC = sub_0200C704(param0->unk_5A8);

    {
        UnkStruct_ov104_0224133C v0 = {
            0, 128, 0, 32, 0, 128, 0, 32,
        };
        UnkStruct_ov104_022412F4 v1 = {
            29 + 6, 1024, 1024, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K
        };

        sub_0200C73C(param0->unk_5A8, &v0, &v1, 32);
        sub_0200C7C0(param0->unk_5A8, param0->unk_5AC, 29 + 6);
    }

    {
        UnkStruct_0200C738 * v2 = sub_0200C738(param0->unk_5A8);
        sub_0200964C(v2, 0, (256 * FX32_ONE));
    }

    {
        UnkStruct_ov7_0224F2EC v3 = {
            "data/plist_chr.resdat",
            "data/plist_pal.resdat",
            "data/plist_cell.resdat",
            "data/plist_canm.resdat",
            NULL,
            NULL,
            "data/plist_h.cldat"
        };

        sub_0200C8F0(param0->unk_5A8, param0->unk_5AC, &v3);
    }
}

void sub_02082CEC (GameWindowLayout * param0, u8 param1, u16 param2, u16 param3, NARC * param4)
{
    Pokemon * v0;
    UnkStruct_ov7_0224F358 v1;
    u32 v2;

    v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param1);

    param0->unk_704[param1].unk_16 = param2;
    param0->unk_704[param1].unk_18 = param3;

    sub_0200D9B4(param0->unk_5A8, param0->unk_5AC, param4, Pokemon_IconSpriteIndex(v0), 0, 4 + param1);

    v2 = Pokemon_GetValue(v0, MON_DATA_IS_EGG, NULL);

    v1.unk_00 = 4 + param1;
    v1.unk_04 = param2;
    v1.unk_06 = param3;
    v1.unk_08 = 0;
    v1.unk_0A = 0;
    v1.unk_0C = 0;
    v1.unk_10 = PokeIconPaletteIndex(param0->unk_704[param1].unk_04, param0->unk_704[param1].unk_11, v2) + 3;
    v1.unk_14 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.unk_18 = 0;
    v1.unk_1C = 0;
    v1.unk_20 = 0;
    v1.unk_24 = 0;

    param0->unk_704[param1].unk_24 = sub_0200CA08(param0->unk_5A8, param0->unk_5AC, &v1);
}

void sub_02082DA8 (GameWindowLayout * param0, u8 param1)
{
    Pokemon * v0;
    NARC * v1;
    int v2, v3;
    u32 v4;
    void * v5;
    NNSG2dCharacterData * v6;
    BOOL v7;

    v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param1);
    v2 = Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL);
    v3 = Pokemon_GetValue(v0, MON_DATA_FORM, NULL);
    v1 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, 12);
    v4 = NNS_G2dGetImageLocation(SpriteActor_ImageProxy(param0->unk_704[param1].unk_24), NNS_G2D_VRAM_TYPE_2DMAIN);
    v5 = sub_0200723C(v1, Pokemon_IconSpriteIndex(v0), 0, 12, 1);
    v7 = NNS_G2dGetUnpackedCharacterData(v5, &v6);

    if (v7) {
        DC_FlushRange(v6->pRawData, v6->szByte);
        GX_LoadOBJ(v6->pRawData, v4, v6->szByte);
    }

    Heap_FreeToHeap(v5);
    sub_0200D414(param0->unk_704[param1].unk_24, PokeIconPaletteIndex(v2, v3, 0) + 3);
    NARC_dtor(v1);
}

static const UnkStruct_ov7_0224F358 Unk_020F20C0[] = {
    {0x1, 0x40, 0x18, 0x0, 0x1, 0x3, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x1, 0x40, 0x48, 0x0, 0x2, 0x2, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x2, 0xE8, 0xA8, 0x0, 0x2, 0x1, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x2, 0xE8, 0xB8, 0x0, 0x2, 0x1, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x3, 0x24, 0x2C, 0x0, 0x0, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x3, 0xA4, 0x34, 0x0, 0x0, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x3, 0x24, 0x5C, 0x0, 0x0, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x3, 0xA4, 0x64, 0x0, 0x0, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x3, 0x24, 0x8C, 0x0, 0x0, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x3, 0xA4, 0x94, 0x0, 0x0, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xA, 0xA4, 0x94, 0x0, 0x0, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xA, 0xA4, 0x94, 0x0, 0x0, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xA, 0xA4, 0x94, 0x0, 0x0, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xA, 0xA4, 0x94, 0x0, 0x0, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xA, 0xA4, 0x94, 0x0, 0x0, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xA, 0xA4, 0x94, 0x0, 0x0, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xA, 0xA4, 0x94, 0x0, 0x2, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xA, 0xA4, 0x94, 0x0, 0x2, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xA, 0xA4, 0x94, 0x0, 0x2, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xA, 0xA4, 0x94, 0x0, 0x2, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xA, 0xA4, 0x94, 0x0, 0x2, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xA, 0xA4, 0x94, 0x0, 0x2, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xB, 0xA4, 0x94, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DSUB, 0x0, 0x0, 0x0, 0x0}
};

void sub_02082E58 (GameWindowLayout * param0)
{
    u32 v0;

    param0->unk_5B0[6] = sub_0200CA08(param0->unk_5A8, param0->unk_5AC, &Unk_020F20C0[0]);
    param0->unk_5B0[7] = sub_0200CA08(param0->unk_5A8, param0->unk_5AC, &Unk_020F20C0[1]);
    param0->unk_5B0[8] = sub_0200CA08(param0->unk_5A8, param0->unk_5AC, &Unk_020F20C0[2]);
    param0->unk_5B0[9] = sub_0200CA08(param0->unk_5A8, param0->unk_5AC, &Unk_020F20C0[3]);
    param0->unk_5B0[28] = sub_0200CA08(param0->unk_5A8, param0->unk_5AC, &Unk_020F20C0[22]);

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_5B0[10 + v0] = sub_0200CA08(param0->unk_5A8, param0->unk_5AC, &Unk_020F20C0[4 + v0]);
        param0->unk_704[v0].unk_1A = Unk_020F20C0[4 + v0].unk_04;
        param0->unk_704[v0].unk_1C = Unk_020F20C0[4 + v0].unk_06;
        GraphicElementData_SetDrawFlag(param0->unk_5B0[10 + v0], 0);
        param0->unk_5B0[16 + v0] = sub_0200CA08(param0->unk_5A8, param0->unk_5AC, &Unk_020F20C0[10 + v0]);
        param0->unk_5B0[22 + v0] = sub_0200CA08(param0->unk_5A8, param0->unk_5AC, &Unk_020F20C0[16 + v0]);
    }

    GraphicElementData_SetDrawFlag(param0->unk_5B0[7], 0);
    GraphicElementData_SetDrawFlag(param0->unk_5B0[28], 0);
}

void sub_02082FAC (GameWindowLayout * param0, u8 param1, u16 param2, u16 param3)
{
    UnkStruct_ov7_0224F358 v0;

    v0.unk_00 = 0;
    v0.unk_04 = param2;
    v0.unk_06 = param3;
    v0.unk_08 = 0;
    v0.unk_0A = 0;
    v0.unk_0C = 1;
    v0.unk_10 = 0;
    v0.unk_14 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.unk_18 = 0;
    v0.unk_1C = 0;
    v0.unk_20 = 0;
    v0.unk_24 = 0;

    param0->unk_5B0[0 + param1] = sub_0200CA08(param0->unk_5A8, param0->unk_5AC, &v0);
}

void sub_02082FF4 (GameWindowLayout * param0)
{
    sub_0200C8B0(param0->unk_5A8, param0->unk_5AC);
    sub_0200C8D4(param0->unk_5A8);
}

void sub_02083014 (GameWindowLayout * param0, u8 param1, u8 param2)
{
    GraphicElementData ** v0 = &param0->unk_5B0[10 + param1];

    if (param2 == 7) {
        GraphicElementData_SetDrawFlag(*v0, 0);
        return;
    }

    SpriteActor_SetSpriteAnimActive(*v0, param2);
    GraphicElementData_SetDrawFlag(*v0, 1);
}

void sub_02083040 (GameWindowLayout * param0, u8 param1, u16 param2)
{
    GraphicElementData ** v0 = &param0->unk_5B0[16 + param1];

    if (param2 == 0) {
        GraphicElementData_SetDrawFlag(*v0, 0);
        return;
    }

    if (Item_IsMail(param2) == 1) {
        SpriteActor_SetSpriteAnimActive(*v0, 1);
    } else {
        SpriteActor_SetSpriteAnimActive(*v0, 0);
    }

    GraphicElementData_SetDrawFlag(*v0, 1);
}

void sub_02083080 (GameWindowLayout * param0, u8 param1)
{
    GraphicElementData ** v0 = &param0->unk_5B0[16 + param1];

    SpriteActor_SetSpriteAnimActive(*v0, 1);
    GraphicElementData_SetDrawFlag(*v0, 1);
}

void sub_020830A0 (GameWindowLayout * param0, u8 param1, s16 param2, s16 param3)
{
    GraphicElementData ** v0 = &param0->unk_5B0[16 + param1];

    param0->unk_704[param1].unk_1E = param2 + 8;
    param0->unk_704[param1].unk_20 = param3 + 8;

    SpriteActor_SetPositionXY(*v0, param0->unk_704[param1].unk_1E, param0->unk_704[param1].unk_20);
}

void sub_020830D4 (GameWindowLayout * param0, u8 param1)
{
    SpriteActor_SetPositionXY(param0->unk_5B0[22 + param1], param0->unk_704[param1].unk_1E + 8, param0->unk_704[param1].unk_20);
}

void sub_02083104 (GameWindowLayout * param0, u8 param1)
{
    GraphicElementData ** v0 = &param0->unk_5B0[22 + param1];

    if (param0->unk_704[param1].unk_12 == 0) {
        GraphicElementData_SetDrawFlag(*v0, 0);
        return;
    }

    GraphicElementData_SetDrawFlag(*v0, 1);
}

static void sub_02083138 (GraphicElementData * param0, u8 param1)
{
    if (sub_02021E24(param0) == param1) {
        return;
    }

    SpriteActor_SetAnimFrame(param0, 0);
    SpriteActor_SetSpriteAnimActive(param0, param1);
}

static u8 sub_02083158 (StrBufWrapper * param0)
{
    if (param0->unk_06 == 0) {
        return 0;
    }

    if ((param0->unk_0E_0 != 7) && (param0->unk_0E_0 != 0) && (param0->unk_0E_0 != 6)) {
        return 5;
    }

    switch (HealthBar_Color(param0->unk_06, param0->unk_08, 48)) {
    case 4:
        return 1;
    case 3:
        return 2;
    case 2:
        return 3;
    case 1:
        return 4;
    }

    return 0;
}

void sub_020831B4 (GameWindowLayout * param0)
{
    StrBufWrapper * v0;
    u16 v1;
    u16 v2;

    for (v1 = 0; v1 < 6; v1++) {
        v0 = &param0->unk_704[v1];

        if (v0->unk_29 == 0) {
            continue;
        }

        if ((param0->unk_7F8.unk_304 == 1) && ((param0->unk_7F8.unk_300[0] == v1) || (param0->unk_7F8.unk_300[1] == v1))) {
            v2 = 0;
        } else {
            v2 = sub_02083158(v0);
        }

        sub_02083138(v0->unk_24, v2);
        GraphicElementData_UpdateAnim(v0->unk_24, FX32_ONE);

        if ((param0->unk_B11 == v1) && (v2 != 0) && (v2 != 5)) {
            if (sub_02021E74(v0->unk_24) == 0) {
                SpriteActor_SetPositionXY(v0->unk_24, v0->unk_16, v0->unk_18 - 3);
            } else {
                SpriteActor_SetPositionXY(v0->unk_24, v0->unk_16, v0->unk_18 + 1);
            }

            continue;
        }

        SpriteActor_SetPositionXY(v0->unk_24, v0->unk_16, v0->unk_18);
    }
}

void sub_0208327C (GameWindowLayout * param0, u8 param1, u8 param2)
{
    u8 v0, v1;

    sub_0201E010(&param0->unk_7F4[param1], &v0, &v1);
    SpriteActor_SetSpriteAnimActive(param0->unk_5B0[6], sub_020805D0(param0->unk_5A4->unk_21, param1));
    GraphicElementData_SetDrawFlag(param0->unk_5B0[6], 1);
    SpriteActor_SetPositionXY(param0->unk_5B0[6], v0, v1);
    sub_0200D414(param0->unk_5B0[6], param2);
}

void sub_020832E4 (GameWindowLayout * param0, s16 param1, s16 param2)
{
    VecFx32 v0;

    v0.x = param1 * FX32_ONE;
    v0.y = param2 * FX32_ONE;
    v0.y += (256 * FX32_ONE);
    v0.z = 0;

    GraphicElementData_SetPosition(param0->unk_5B0[28], &v0);
    GraphicElementData_SetDrawFlag(param0->unk_5B0[28], 1);
    SpriteActor_SetAnimFrame(param0->unk_5B0[28], 0);
    SpriteActor_SetSpriteAnimActive(param0->unk_5B0[28], 0);
}

void sub_02083334 (GameWindowLayout * param0)
{
    if (GraphicElementData_GetDrawFlag(param0->unk_5B0[28]) == 1) {
        GraphicElementData_UpdateAnim(param0->unk_5B0[28], FX32_ONE);

        if (sub_02021E74(param0->unk_5B0[28]) == 2) {
            GraphicElementData_SetDrawFlag(param0->unk_5B0[28], 0);
        }
    }
}
