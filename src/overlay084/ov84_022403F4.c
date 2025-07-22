#include "overlay084/ov84_022403F4.h"

#include <nitro.h>
#include <string.h>

#include "generated/pokemon_types.h"

#include "struct_defs/struct_0207CB08.h"

#include "overlay084/struct_ov84_0223B5A0.h"

#include "gx_layers.h"
#include "item.h"
#include "move_table.h"
#include "sprite.h"
#include "sprite_system.h"
#include "type_icon.h"
#include "vram_transfer.h"

static void ov84_02240424(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_022404C0(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_02240950(UnkStruct_ov84_0223B5A0 *param0);
static void ov84_02240C48(UnkStruct_ov84_0223B5A0 *param0);
static u8 ov84_02240C30(UnkStruct_ov84_0223B5A0 *param0, u8 param1);
static void ov84_02240B98(UnkStruct_ov84_0223B5A0 *param0);

static const SpriteTemplate Unk_ov84_022411B0[] = {
    {
        0x30,
        0x32,
        0x0,
        0x0,
        0x1,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xC0F9, 0xC0F9, 0xC0F9, 0xC0F9, 0x0, 0x0 },
        0x1,
        0x0,
    },
    {
        0xD,
        0x61,
        0x0,
        0x0,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xC0FA, 0xC0FA, 0xC0FA, 0xC0FA, 0x0, 0x0 },
        0x0,
        0x0,
    },
    {
        0x2,
        0x60,
        0x0,
        0x1,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xC0FD, 0xC0FA, 0xC0FD, 0xC0FD, 0x0, 0x0 },
        0x0,
        0x0,
    },
    {
        0x62,
        0x60,
        0x0,
        0x0,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xC0FD, 0xC0FA, 0xC0FD, 0xC0FD, 0x0, 0x0 },
        0x0,
        0x0,
    },
    {
        0xB1,
        0x18,
        0x0,
        0x0,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xC0FB, 0xC0FA, 0xC0FB, 0xC0FB, 0x0, 0x0 },
        0x1,
        0x0,
    },
    {
        0xB1,
        0xE,
        0x0,
        0x0,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xC0FC, 0xC0FA, 0xC0FC, 0xC0FC, 0x0, 0x0 },
        0x1,
        0x0,
    },
    {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DSUB,
        { 0xC0FE, 0xC0FB, 0xC0FE, 0xC0FE, 0x0, 0x0 },
        0x0,
        0x0,
    },
    {
        0x16,
        0xAC,
        0x0,
        0x0,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xC0FF, 0xC0FC, 0xC0FF, 0xC0FF, 0x0, 0x0 },
        0x1,
        0x0,
    },
    {
        0xDC,
        0x9C,
        0x0,
        0x0,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xC100, 0xC0FD, 0xC100, 0xC100, 0x0, 0x0 },
        0x0,
        0x0,
    },
    {
        0xDC,
        0xB4,
        0x0,
        0x1,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xC100, 0xC0FD, 0xC100, 0xC100, 0x0, 0x0 },
        0x0,
        0x0,
    },
    {
        0x40,
        0x98,
        0x0,
        0x0,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xC101, 0xC0FE, 0xC101, 0xC101, 0x0, 0x0 },
        0x0,
        0x0,
    },
    {
        0xA8,
        0x98,
        0x0,
        0x0,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xC102, 0xC0FE, 0xC101, 0xC101, 0x0, 0x0 },
        0x0,
        0x0,
    },
};

void ov84_022403F4(UnkStruct_ov84_0223B5A0 *param0) {
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    VramTransfer_New(32, HEAP_ID_6);
    ov84_02240424(param0);
    ov84_022404C0(param0);
    ov84_02240950(param0);
}

static void ov84_02240424(UnkStruct_ov84_0223B5A0 *param0) {
    SpriteResourceCapacities v0 = { 10, 6, 9, 9, 0, 0 };

    param0->unk_D8 = SpriteSystem_Alloc(6);
    param0->unk_DC = SpriteManager_New(param0->unk_D8);
    {
        RenderOamTemplate v1 = {
            0,
            128,
            0,
            32,
            0,
            128,
            0,
            32,
        };

        CharTransferTemplateWithModes v2 = {
            12,
            1024 * 128,
            1024 * 16,
            GX_OBJVRAMMODE_CHAR_1D_32K,
            GX_OBJVRAMMODE_CHAR_1D_32K
        };

        SpriteSystem_Init(param0->unk_D8, &v1, &v2, 32);
    }

    SpriteSystem_InitSprites(param0->unk_D8, param0->unk_DC, 12);
    SpriteSystem_InitManagerWithCapacities(param0->unk_D8, param0->unk_DC, &v0);
}

static void ov84_022404C0(UnkStruct_ov84_0223B5A0 *param0) {
    u32 v0, v1;

    if (param0->unk_425 == 0) {
        v0 = 2;
        v1 = 3;
    } else {
        v0 = 6;
        v1 = 7;
    }

    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, v0, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49401);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 25, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49402);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 28, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49403);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 31, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49404);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 10, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49405);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 36, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 49406);
    SpriteSystem_LoadCharResObj(param0->unk_D8, param0->unk_DC, 62, 4, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49408);
    SpriteSystem_LoadCharResObj(param0->unk_D8, param0->unk_DC, 16, Item_FileID(0, 1), FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49407);
    TypeIcon_LoadChar(param0->unk_D8, param0->unk_DC, NNS_G2D_VRAM_TYPE_2DMAIN, TYPE_NORMAL, 49409);
    CategoryIcon_LoadChar(param0->unk_D8, param0->unk_DC, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 49410);
    SpriteSystem_LoadPlttResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, v1, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 49401);
    SpriteSystem_LoadPlttResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 20, FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 49402);
    SpriteSystem_LoadPlttResObj(param0->unk_D8, param0->unk_DC, 16, Item_FileID(0, 2), 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 49404);
    SpriteSystem_LoadPlttResObj(param0->unk_D8, param0->unk_DC, 62, 10, FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 49405);
    TypeIcon_LoadPlttSrc(param0->unk_D8, param0->unk_DC, NNS_G2D_VRAM_TYPE_2DMAIN, 49406);
    SpriteSystem_LoadPlttResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 37, FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, 49403);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 1, FALSE, 49401);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 24, FALSE, 49402);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 27, FALSE, 49403);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 30, FALSE, 49404);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 9, FALSE, 49405);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 35, FALSE, 49406);
    SpriteSystem_LoadCellResObj(param0->unk_D8, param0->unk_DC, 16, Item_IconNCERFile(), FALSE, 49407);
    SpriteSystem_LoadCellResObj(param0->unk_D8, param0->unk_DC, 62, 5, FALSE, 49408);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 0, FALSE, 49401);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 23, FALSE, 49402);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 26, FALSE, 49403);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 29, FALSE, 49404);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 8, FALSE, 49405);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 34, FALSE, 49406);
    SpriteSystem_LoadAnimResObj(param0->unk_D8, param0->unk_DC, 16, Item_IconNANRFile(), FALSE, 49407);
    SpriteSystem_LoadAnimResObj(param0->unk_D8, param0->unk_DC, 62, 6, FALSE, 49408);
    TypeIcon_LoadAnim(param0->unk_D8, param0->unk_DC, 49409, 49409);
}

static void ov84_02240950(UnkStruct_ov84_0223B5A0 *param0) {
    u32 v0;

    for (v0 = 0; v0 < 12; v0++) {
        param0->unk_E0[v0] = SpriteSystem_NewSprite(param0->unk_D8, param0->unk_DC, &Unk_ov84_022411B0[v0]);
    }

    ManagedSprite_SetDrawFlag(param0->unk_E0[5], 0);
    ManagedSprite_SetDrawFlag(param0->unk_E0[6], 0);
    ManagedSprite_SetDrawFlag(param0->unk_E0[10], 0);
    ManagedSprite_SetDrawFlag(param0->unk_E0[11], 0);

    if ((param0->unk_C4->unk_65 == 4) || (param0->unk_C4->unk_65 == 5)) {
        ManagedSprite_SetDrawFlag(param0->unk_E0[1], 0);
    }

    if (param0->unk_424 == 1) {
        ManagedSprite_SetDrawFlag(param0->unk_E0[2], 0);
        ManagedSprite_SetDrawFlag(param0->unk_E0[3], 0);
    }

    ov84_02240D3C(param0, 0);

    ManagedSprite_SetAnim(param0->unk_E0[0], param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08);
    ManagedSprite_SetPositionXY(param0->unk_E0[1], ov84_02240C30(param0, param0->unk_C4->unk_64), 97);
    ManagedSprite_SetPositionXY(param0->unk_E0[4], 177, 24 + (param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_04 - 1) * 16);

    {
        VecFx32 v1 = { FX32_ONE, FX32_ONE, FX32_ONE };
        Sprite_SetAffineScaleEx(param0->unk_E0[0]->sprite, &v1, 2);
    }
}

void ov84_02240A88(UnkStruct_ov84_0223B5A0 *param0) {
    u32 v0;

    for (v0 = 0; v0 < 12; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_E0[v0]);
    }

    SpriteSystem_FreeResourcesAndManager(param0->unk_D8, param0->unk_DC);
    SpriteSystem_Free(param0->unk_D8);
}

void ov84_02240ABC(UnkStruct_ov84_0223B5A0 *param0) {
    u32 v0;

    for (v0 = 0; v0 < 12; v0++) {
        ManagedSprite_TickFrame(param0->unk_E0[v0]);
    }
}

void ov84_02240AD8(UnkStruct_ov84_0223B5A0 *param0, u16 param1) {
    SpriteSystem_ReplaceCharResObj(param0->unk_D8, param0->unk_DC, 16, Item_FileID(param1, 1), 0, 49407);
    SpriteSystem_ReplacePlttResObj(param0->unk_D8, param0->unk_DC, 16, Item_FileID(param1, 2), 0, 49404);
}

void ov84_02240B34(UnkStruct_ov84_0223B5A0 *param0, u8 param1) {
    ManagedSprite_SetExplicitPalette(param0->unk_E0[4], param1);
    ManagedSprite_SetExplicitPalette(param0->unk_E0[1], param1);
}

u8 ov84_02240B50(UnkStruct_ov84_0223B5A0 *param0) {
    if (param0->unk_454.unk_00 == 0) {
        return 1;
    }

    return 0;
}

void ov84_02240B68(UnkStruct_ov84_0223B5A0 *param0) {
    param0->unk_454.unk_03 = 0;
    param0->unk_454.unk_00 = 1;

    ov84_02240C48(param0);
}

void ov84_02240B80(UnkStruct_ov84_0223B5A0 *param0) {
    switch (param0->unk_454.unk_00) {
    case 0:
        break;
    case 1:
        ov84_02240B98(param0);
        break;
    }
}

static void ov84_02240B98(UnkStruct_ov84_0223B5A0 *param0) {
    VecFx32 v0;

    v0 = *(Sprite_GetPosition(param0->unk_E0[1]->sprite));

    if (param0->unk_454.unk_01 == 0) {
        v0.x -= param0->unk_454.unk_04[param0->unk_454.unk_03];
    } else {
        v0.x += param0->unk_454.unk_04[param0->unk_454.unk_03];
    }

    Sprite_SetPosition(param0->unk_E0[1]->sprite, &v0);
    param0->unk_454.unk_03++;

    if (param0->unk_454.unk_03 == 8) {
        v0.x = ov84_02240C30(param0, param0->unk_478) * FX32_ONE;
        Sprite_SetPosition(param0->unk_E0[1]->sprite, &v0);
        param0->unk_454.unk_00 = 0;
    }
}

static u8 ov84_02240C30(UnkStruct_ov84_0223B5A0 *param0, u8 param1) {
    return 0 * 8 + param0->unk_427 + param0->unk_428 * param1 + 6;
}

static void ov84_02240C48(UnkStruct_ov84_0223B5A0 *param0) {
    VecFx32 v0;
    fx32 v1;

    v0 = *(Sprite_GetPosition(param0->unk_E0[1]->sprite));
    v1 = ov84_02240C30(param0, param0->unk_478) * FX32_ONE;

    if (v1 < v0.x) {
        v1 = (v0.x - v1) / 100;
        param0->unk_454.unk_01 = 0;
    } else {
        v1 = (v1 - v0.x) / 100;
        param0->unk_454.unk_01 = 1;
    }

    param0->unk_454.unk_04[0] = 0;
    param0->unk_454.unk_04[1] = v1 * 40;
    param0->unk_454.unk_04[2] = v1 * 25;
    param0->unk_454.unk_04[3] = v1 * 15;
    param0->unk_454.unk_04[4] = v1 * 10;
    param0->unk_454.unk_04[5] = v1 * 7;
    param0->unk_454.unk_04[6] = v1 * 3;
    param0->unk_454.unk_04[7] = 0;
}

void ov84_02240CF0(UnkStruct_ov84_0223B5A0 *param0, u8 param1) {
    if (param1 == 0) {
        ManagedSprite_SetPositionXY(param0->unk_E0[8], 220, 156);
        ManagedSprite_SetPositionXY(param0->unk_E0[9], 220, 180);
    } else {
        ManagedSprite_SetPositionXY(param0->unk_E0[8], 162, 108);
        ManagedSprite_SetPositionXY(param0->unk_E0[9], 162, 132);
    }

    ov84_02240D3C(param0, 1);
}

void ov84_02240D3C(UnkStruct_ov84_0223B5A0 *param0, u8 param1) {
    ManagedSprite_SetDrawFlag(param0->unk_E0[8], param1);
    ManagedSprite_SetDrawFlag(param0->unk_E0[9], param1);
}

void ov84_02240D5C(UnkStruct_ov84_0223B5A0 *param0, u16 param1, u8 param2) {
    u16 v0;
    u16 v1;
    u16 v2;

    ManagedSprite_SetDrawFlag(param0->unk_E0[10], param2);
    ManagedSprite_SetDrawFlag(param0->unk_E0[11], param2);

    if (param2 == 0) {
        return;
    }

    v0 = Item_MoveForTMHM(param1);
    v1 = MoveTable_LoadParam(v0, MOVEATTRIBUTE_TYPE);
    v2 = MoveTable_LoadParam(v0, MOVEATTRIBUTE_CLASS);

    SpriteSystem_ReplaceCharResObj(param0->unk_D8, param0->unk_DC, TypeIcon_GetNARC(), TypeIcon_GetChar(v1), 1, 49409);
    ManagedSprite_SetExplicitPalette(param0->unk_E0[10], TypeIcon_GetPltt(v1) + 6);
    SpriteSystem_ReplaceCharResObj(param0->unk_D8, param0->unk_DC, CategoryIcon_GetNARC(), CategoryIcon_GetChar(v2), 1, 49410);
    ManagedSprite_SetExplicitPalette(param0->unk_E0[11], CategoryIcon_GetPltt(v2) + 6);
}

void ov84_02240E24(UnkStruct_ov84_0223B5A0 *param0, s16 param1, s16 param2) {
    ManagedSprite_SetDrawFlag(param0->unk_E0[6], 1);
    ManagedSprite_SetPositionXY(param0->unk_E0[6], param1, param2);
    ManagedSprite_SetAnimationFrame(param0->unk_E0[6], 0);
    ManagedSprite_SetAnim(param0->unk_E0[6], 0);
}

void ov84_02240E5C(UnkStruct_ov84_0223B5A0 *param0) {
    if (ManagedSprite_GetDrawFlag(param0->unk_E0[6]) == 1) {
        ManagedSprite_TickNFrames(param0->unk_E0[6], FX32_ONE);

        if (ManagedSprite_GetAnimationFrame(param0->unk_E0[6]) == 2) {
            ManagedSprite_SetDrawFlag(param0->unk_E0[6], 0);
        }
    }
}
