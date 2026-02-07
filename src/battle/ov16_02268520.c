#include "battle/ov16_02268520.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/battle_system.h"

#include "battle/battle_system.h"
#include "battle/struct_ov16_02268520.h"

#include "narc.h"
#include "palette.h"
#include "sprite_system.h"

static const SpriteTemplate Unk_ov16_022700CC[] = {
    {
        0x150,
        0x88,
        0x0,
        0x0,
        0x3E8,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0x4E2D, 0x4E29, 0x4E25, 0x4E25, 0xFFFFFFFF, 0xFFFFFFFF },
        0x3,
        0x0,
    },
    {
        0xFFFFFFFFFFFFFFB0,
        0x58,
        0x0,
        0x0,
        0x3E8,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0x4E2E, 0x4E29, 0x4E26, 0x4E26, 0xFFFFFFFF, 0xFFFFFFFF },
        0x3,
        0x0,
    },
};

__attribute__((aligned(4))) static const u16 Unk_ov16_0227009C[] = {
    0x87,
    0x91,
    0x7F,
    0x97,
    0x8B,
    0x95,
    0x8D,
    0x85,
    0x89,
    0x8F,
    0x93,
    0x97,
    0x99,
    0x9B,
    0x9D,
    0x9F,
    0xA1,
    0xA3,
    0xA5,
    0xA7,
    0xA9,
    0xAB,
    0xAD,
    0xAF
};

__attribute__((aligned(4))) static const u16 Unk_ov16_0227006C[] = {
    0x88,
    0x92,
    0x82,
    0x98,
    0x8C,
    0x96,
    0x8E,
    0x86,
    0x8A,
    0x90,
    0x94,
    0x94,
    0x9A,
    0x9C,
    0x9E,
    0xA0,
    0xA2,
    0xA4,
    0xA6,
    0xA8,
    0xAA,
    0xAC,
    0xAE,
    0xB0
};

__attribute__((aligned(4))) static const u16 Unk_ov16_02270134[][3] = {
    0x7,
    0x8,
    0x9,
    0x16,
    0x17,
    0x18,
    0x1,
    0x2,
    0x3,
    0x1F,
    0x20,
    0x21,
    0xD,
    0xE,
    0xF,
    0x1C,
    0x1D,
    0x1E,
    0x10,
    0x11,
    0x12,
    0x4,
    0x5,
    0x6,
    0xA,
    0xB,
    0xC,
    0x13,
    0x14,
    0x15,
    0x19,
    0x1A,
    0x1B,
    0x19,
    0x1A,
    0x1B,
    0x22,
    0x23,
    0x24,
    0x25,
    0x26,
    0x27,
    0x28,
    0x29,
    0x2A,
    0x2B,
    0x2C,
    0x2D,
    0x2E,
    0x2F,
    0x30,
    0x31,
    0x32,
    0x33,
    0x34,
    0x35,
    0x36,
    0x37,
    0x38,
    0x39,
    0x3A,
    0x3B,
    0x3C,
    0x3D,
    0x3E,
    0x3F,
    0x40,
    0x41,
    0x42,
    0x43,
    0x44,
    0x45
};

void ov16_02268520(UnkStruct_ov16_02268520 *param0)
{
    SpriteSystem *v0;
    SpriteManager *v1;
    const SpriteTemplate *v2;
    int v3, v4, v5, v6, v7, v8;
    int v9;
    NARC *v10 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);
    v0 = BattleSystem_GetSpriteSystem(param0->unk_04);
    v1 = BattleSystem_GetSpriteManager(param0->unk_04);
    v9 = BattleSystem_GetBackgroundTimeOffset(param0->unk_04);
    v2 = &Unk_ov16_022700CC[param0->unk_08];

    if (param0->unk_08 == 0) {
        v3 = Unk_ov16_0227009C[param0->unk_09];
        v4 = 20013;
        v5 = 128;
        v6 = 20005;
        v7 = 129;
        v8 = 20005;
    } else {
        v3 = Unk_ov16_0227006C[param0->unk_09];
        v4 = 20014;
        v5 = 131;
        v6 = 20006;
        v7 = 132;
        v8 = 20006;
    }

    SpriteSystem_LoadCharResObjFromOpenNarc(v0, v1, v10, v3, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, v4);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(BattleSystem_GetPaletteData(param0->unk_04), PLTTBUF_MAIN_OBJ, v0, v1, v10, Unk_ov16_02270134[param0->unk_09][v9], FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 20009);
    PaletteData_LoadBufferFromFileStart(BattleSystem_GetPaletteData(param0->unk_04), NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, Unk_ov16_02270134[param0->unk_09][v9], 5, PLTTBUF_MAIN_BG, 0x20, 0x7 * 0x10);
    SpriteSystem_LoadCellResObjFromOpenNarc(v0, v1, v10, v5, TRUE, v6);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v0, v1, v10, v7, TRUE, v8);
    NARC_dtor(v10);
}

void ov16_0226862C(UnkStruct_ov16_02268520 *param0)
{
    SpriteSystem *v0;
    SpriteManager *v1;
    const SpriteTemplate *v2;

    v0 = BattleSystem_GetSpriteSystem(param0->unk_04);
    v1 = BattleSystem_GetSpriteManager(param0->unk_04);
    v2 = &Unk_ov16_022700CC[param0->unk_08];

    param0->unk_00 = SpriteSystem_NewSprite(v0, v1, v2);
    Sprite_TickFrame(param0->unk_00->sprite);
}

void ov16_02268660(UnkStruct_ov16_02268520 *param0)
{
    if (param0->unk_00 == NULL) {
        return;
    }

    Sprite_DeleteAndFreeResources(param0->unk_00);
    param0->unk_00 = NULL;
}

void ov16_02268674(UnkStruct_ov16_02268520 *param0)
{
    SpriteManager *v0;
    int v1, v2, v3;

    v0 = BattleSystem_GetSpriteManager(param0->unk_04);

    if (param0->unk_08 == 0) {
        v1 = 20013;
        v2 = 20005;
        v3 = 20005;
    } else {
        v1 = 20014;
        v2 = 20006;
        v3 = 20006;
    }

    SpriteManager_UnloadCharObjById(v0, v1);
    SpriteManager_UnloadPlttObjById(v0, 20009);
    SpriteManager_UnloadCellObjById(v0, v2);
    SpriteManager_UnloadAnimObjById(v0, v3);
}

void ov16_022686BC(UnkStruct_ov16_02268520 *param0, int param1)
{
    if (param0->unk_00 == NULL) {
        return;
    }

    ManagedSprite_SetDrawFlag(param0->unk_00, param1);
}

void ov16_022686CC(UnkStruct_ov16_02268520 *param0, BattleSystem *battleSys, u16 param2, int param3)
{
    MI_CpuClearFast(param0, sizeof(UnkStruct_ov16_02268520));

    param0->unk_04 = battleSys;
    param0->unk_08 = param2;
    param0->unk_09 = param3;

    if (param3 >= 24) {
        GF_ASSERT(0);
        param0->unk_09 = 0;
    }

    ov16_02268520(param0);
    ov16_0226862C(param0);
}

void ov16_02268700(UnkStruct_ov16_02268520 *param0)
{
    ov16_02268660(param0);
    ov16_02268674(param0);
    MI_CpuClearFast(param0, sizeof(UnkStruct_ov16_02268520));
}
