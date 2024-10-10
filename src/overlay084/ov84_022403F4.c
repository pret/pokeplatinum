#include "overlay084/ov84_022403F4.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_0207CB08.h"

#include "overlay084/struct_ov84_0223B5A0.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "cell_actor.h"
#include "gx_layers.h"
#include "item.h"
#include "move_table.h"
#include "unk_0200C6E4.h"
#include "unk_0201DBEC.h"
#include "unk_0207C908.h"

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

void ov84_022403F4(UnkStruct_ov84_0223B5A0 *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    sub_0201DBEC(32, 6);
    ov84_02240424(param0);
    ov84_022404C0(param0);
    ov84_02240950(param0);
}

static void ov84_02240424(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov104_02241308 v0 = { 10, 6, 9, 9, 0, 0 };

    param0->unk_D8 = sub_0200C6E4(6);
    param0->unk_DC = sub_0200C704(param0->unk_D8);
    {
        UnkStruct_ov104_0224133C v1 = {
            0,
            128,
            0,
            32,
            0,
            128,
            0,
            32,
        };

        UnkStruct_ov104_022412F4 v2 = {
            12,
            1024 * 128,
            1024 * 16,
            GX_OBJVRAMMODE_CHAR_1D_32K,
            GX_OBJVRAMMODE_CHAR_1D_32K
        };

        sub_0200C73C(param0->unk_D8, &v1, &v2, 32);
    }

    sub_0200C7C0(param0->unk_D8, param0->unk_DC, 12);
    sub_0200CB30(param0->unk_D8, param0->unk_DC, &v0);
}

static void ov84_022404C0(UnkStruct_ov84_0223B5A0 *param0)
{
    u32 v0, v1;

    if (param0->unk_425 == 0) {
        v0 = 2;
        v1 = 3;
    } else {
        v0 = 6;
        v1 = 7;
    }

    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, v0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 49401);
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 25, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 49402);
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 28, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 49403);
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 31, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 49404);
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 10, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 49405);
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 36, 0, NNS_G2D_VRAM_TYPE_2DSUB, 49406);
    sub_0200CBDC(param0->unk_D8, param0->unk_DC, 62, 4, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 49408);
    sub_0200CBDC(param0->unk_D8, param0->unk_DC, 16, Item_FileID(0, 1), 0, NNS_G2D_VRAM_TYPE_2DMAIN, 49407);
    sub_0207C948(param0->unk_D8, param0->unk_DC, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 49409);
    sub_0207CAC4(param0->unk_D8, param0->unk_DC, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 49410);
    sub_0200CD0C(param0->unk_D8, param0->unk_DC, param0->unk_D4, v1, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 49401);
    sub_0200CD0C(param0->unk_D8, param0->unk_DC, param0->unk_D4, 20, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 49402);
    sub_0200CC9C(param0->unk_D8, param0->unk_DC, 16, Item_FileID(0, 2), 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 49404);
    sub_0200CC9C(param0->unk_D8, param0->unk_DC, 62, 10, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 49405);
    sub_0207C97C(param0->unk_D8, param0->unk_DC, NNS_G2D_VRAM_TYPE_2DMAIN, 49406);
    sub_0200CD0C(param0->unk_D8, param0->unk_DC, param0->unk_D4, 37, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 49403);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 1, 0, 49401);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 24, 0, 49402);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 27, 0, 49403);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 30, 0, 49404);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 9, 0, 49405);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 35, 0, 49406);
    sub_0200CE0C(param0->unk_D8, param0->unk_DC, 16, Item_IconNCERFile(), 0, 49407);
    sub_0200CE0C(param0->unk_D8, param0->unk_DC, 62, 5, 0, 49408);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 0, 0, 49401);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 23, 0, 49402);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 26, 0, 49403);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 29, 0, 49404);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 8, 0, 49405);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_D8, param0->unk_DC, param0->unk_D4, 34, 0, 49406);
    sub_0200CE3C(param0->unk_D8, param0->unk_DC, 16, Item_IconNANRFile(), 0, 49407);
    sub_0200CE3C(param0->unk_D8, param0->unk_DC, 62, 6, 0, 49408);
    sub_0207C9EC(param0->unk_D8, param0->unk_DC, 49409, 49409);
}

static void ov84_02240950(UnkStruct_ov84_0223B5A0 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 12; v0++) {
        param0->unk_E0[v0] = SpriteActor_LoadResources(param0->unk_D8, param0->unk_DC, &Unk_ov84_022411B0[v0]);
    }

    SpriteActor_EnableObject(param0->unk_E0[5], 0);
    SpriteActor_EnableObject(param0->unk_E0[6], 0);
    SpriteActor_EnableObject(param0->unk_E0[10], 0);
    SpriteActor_EnableObject(param0->unk_E0[11], 0);

    if ((param0->unk_C4->unk_65 == 4) || (param0->unk_C4->unk_65 == 5)) {
        SpriteActor_EnableObject(param0->unk_E0[1], 0);
    }

    if (param0->unk_424 == 1) {
        SpriteActor_EnableObject(param0->unk_E0[2], 0);
        SpriteActor_EnableObject(param0->unk_E0[3], 0);
    }

    ov84_02240D3C(param0, 0);

    sub_0200D364(param0->unk_E0[0], param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08);
    SpriteActor_SetSpritePositionXY(param0->unk_E0[1], ov84_02240C30(param0, param0->unk_C4->unk_64), 97);
    SpriteActor_SetSpritePositionXY(param0->unk_E0[4], 177, 24 + (param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_04 - 1) * 16);

    {
        VecFx32 v1 = { FX32_ONE, FX32_ONE, FX32_ONE };
        CellActor_SetAffineScaleEx(param0->unk_E0[0]->unk_00, &v1, 2);
    }
}

void ov84_02240A88(UnkStruct_ov84_0223B5A0 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 12; v0++) {
        sub_0200D0F4(param0->unk_E0[v0]);
    }

    sub_0200D0B0(param0->unk_D8, param0->unk_DC);
    sub_0200C8D4(param0->unk_D8);
}

void ov84_02240ABC(UnkStruct_ov84_0223B5A0 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 12; v0++) {
        sub_0200D330(param0->unk_E0[v0]);
    }
}

void ov84_02240AD8(UnkStruct_ov84_0223B5A0 *param0, u16 param1)
{
    sub_0200D948(param0->unk_D8, param0->unk_DC, 16, Item_FileID(param1, 1), 0, 49407);
    sub_0200D97C(param0->unk_D8, param0->unk_DC, 16, Item_FileID(param1, 2), 0, 49404);
}

void ov84_02240B34(UnkStruct_ov84_0223B5A0 *param0, u8 param1)
{
    sub_0200D41C(param0->unk_E0[4], param1);
    sub_0200D41C(param0->unk_E0[1], param1);
}

u8 ov84_02240B50(UnkStruct_ov84_0223B5A0 *param0)
{
    if (param0->unk_454.unk_00 == 0) {
        return 1;
    }

    return 0;
}

void ov84_02240B68(UnkStruct_ov84_0223B5A0 *param0)
{
    param0->unk_454.unk_03 = 0;
    param0->unk_454.unk_00 = 1;

    ov84_02240C48(param0);
}

void ov84_02240B80(UnkStruct_ov84_0223B5A0 *param0)
{
    switch (param0->unk_454.unk_00) {
    case 0:
        break;
    case 1:
        ov84_02240B98(param0);
        break;
    }
}

static void ov84_02240B98(UnkStruct_ov84_0223B5A0 *param0)
{
    VecFx32 v0;

    v0 = *(CellActor_GetPosition(param0->unk_E0[1]->unk_00));

    if (param0->unk_454.unk_01 == 0) {
        v0.x -= param0->unk_454.unk_04[param0->unk_454.unk_03];
    } else {
        v0.x += param0->unk_454.unk_04[param0->unk_454.unk_03];
    }

    CellActor_SetPosition(param0->unk_E0[1]->unk_00, &v0);
    param0->unk_454.unk_03++;

    if (param0->unk_454.unk_03 == 8) {
        v0.x = ov84_02240C30(param0, param0->unk_478) * FX32_ONE;
        CellActor_SetPosition(param0->unk_E0[1]->unk_00, &v0);
        param0->unk_454.unk_00 = 0;
    }
}

static u8 ov84_02240C30(UnkStruct_ov84_0223B5A0 *param0, u8 param1)
{
    return 0 * 8 + param0->unk_427 + param0->unk_428 * param1 + 6;
}

static void ov84_02240C48(UnkStruct_ov84_0223B5A0 *param0)
{
    VecFx32 v0;
    fx32 v1;

    v0 = *(CellActor_GetPosition(param0->unk_E0[1]->unk_00));
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

void ov84_02240CF0(UnkStruct_ov84_0223B5A0 *param0, u8 param1)
{
    if (param1 == 0) {
        SpriteActor_SetSpritePositionXY(param0->unk_E0[8], 220, 156);
        SpriteActor_SetSpritePositionXY(param0->unk_E0[9], 220, 180);
    } else {
        SpriteActor_SetSpritePositionXY(param0->unk_E0[8], 162, 108);
        SpriteActor_SetSpritePositionXY(param0->unk_E0[9], 162, 132);
    }

    ov84_02240D3C(param0, 1);
}

void ov84_02240D3C(UnkStruct_ov84_0223B5A0 *param0, u8 param1)
{
    SpriteActor_EnableObject(param0->unk_E0[8], param1);
    SpriteActor_EnableObject(param0->unk_E0[9], param1);
}

void ov84_02240D5C(UnkStruct_ov84_0223B5A0 *param0, u16 param1, u8 param2)
{
    u16 v0;
    u16 v1;
    u16 v2;

    SpriteActor_EnableObject(param0->unk_E0[10], param2);
    SpriteActor_EnableObject(param0->unk_E0[11], param2);

    if (param2 == 0) {
        return;
    }

    v0 = Item_MoveForTMHM(param1);
    v1 = MoveTable_LoadParam(v0, MOVEATTRIBUTE_TYPE);
    v2 = MoveTable_LoadParam(v0, MOVEATTRIBUTE_CLASS);

    sub_0200D948(param0->unk_D8, param0->unk_DC, Battle_Obj_GetNARCIndex(), Battle_Obj_TypeIndexToIconNARCMember(v1), 1, 49409);
    sub_0200D41C(param0->unk_E0[10], Battle_Obj_TypeIndexToPaletteIndex(v1) + 6);
    sub_0200D948(param0->unk_D8, param0->unk_DC, Battle_Obj_GetMoveTypeNARCIndex(), Battle_Obj_MoveTypeIndexToIconNARCMember(v2), 1, 49410);
    sub_0200D41C(param0->unk_E0[11], Battle_Obj_MoveTypeIndexToPaletteIndex(v2) + 6);
}

void ov84_02240E24(UnkStruct_ov84_0223B5A0 *param0, s16 param1, s16 param2)
{
    SpriteActor_EnableObject(param0->unk_E0[6], 1);
    SpriteActor_SetSpritePositionXY(param0->unk_E0[6], param1, param2);
    sub_0200D3CC(param0->unk_E0[6], 0);
    sub_0200D364(param0->unk_E0[6], 0);
}

void ov84_02240E5C(UnkStruct_ov84_0223B5A0 *param0)
{
    if (sub_0200D408(param0->unk_E0[6]) == 1) {
        sub_0200D34C(param0->unk_E0[6], FX32_ONE);

        if (sub_0200D3E0(param0->unk_E0[6]) == 2) {
            SpriteActor_EnableObject(param0->unk_E0[6], 0);
        }
    }
}
