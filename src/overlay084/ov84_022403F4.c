#include "overlay084/ov84_022403F4.h"

#include <nitro.h>
#include <string.h>

#include "generated/pokemon_types.h"

#include "overlay084/ov84_0223B5A0.h"

#include "bag_context.h"
#include "gx_layers.h"
#include "item.h"
#include "move_table.h"
#include "sprite.h"
#include "sprite_system.h"
#include "type_icon.h"
#include "vram_transfer.h"

static void ov84_02240424(BagController *param0);
static void ov84_022404C0(BagController *param0);
static void ov84_02240950(BagController *param0);
static void ov84_02240C48(BagController *param0);
static u8 ov84_02240C30(BagController *param0, u8 param1);
static void ov84_02240B98(BagController *param0);

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

void ov84_022403F4(BagController *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    VramTransfer_New(32, HEAP_ID_6);
    ov84_02240424(param0);
    ov84_022404C0(param0);
    ov84_02240950(param0);
}

static void ov84_02240424(BagController *param0)
{
    SpriteResourceCapacities v0 = { 10, 6, 9, 9, 0, 0 };

    param0->spriteSystem = SpriteSystem_Alloc(6);
    param0->spriteMan = SpriteManager_New(param0->spriteSystem);
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

        SpriteSystem_Init(param0->spriteSystem, &v1, &v2, 32);
    }

    SpriteSystem_InitSprites(param0->spriteSystem, param0->spriteMan, 12);
    SpriteSystem_InitManagerWithCapacities(param0->spriteSystem, param0->spriteMan, &v0);
}

static void ov84_022404C0(BagController *param0)
{
    u32 v0, v1;

    if (param0->trainerGender == 0) {
        v0 = 2;
        v1 = 3;
    } else {
        v0 = 6;
        v1 = 7;
    }

    SpriteSystem_LoadCharResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, v0, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49401);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 25, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49402);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 28, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49403);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 31, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49404);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 10, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49405);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 36, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 49406);
    SpriteSystem_LoadCharResObj(param0->spriteSystem, param0->spriteMan, 62, 4, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49408);
    SpriteSystem_LoadCharResObj(param0->spriteSystem, param0->spriteMan, 16, Item_FileID(0, 1), FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 49407);
    TypeIcon_LoadChar(param0->spriteSystem, param0->spriteMan, NNS_G2D_VRAM_TYPE_2DMAIN, TYPE_NORMAL, 49409);
    CategoryIcon_LoadChar(param0->spriteSystem, param0->spriteMan, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 49410);
    SpriteSystem_LoadPlttResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, v1, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 49401);
    SpriteSystem_LoadPlttResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 20, FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 49402);
    SpriteSystem_LoadPlttResObj(param0->spriteSystem, param0->spriteMan, 16, Item_FileID(0, 2), 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 49404);
    SpriteSystem_LoadPlttResObj(param0->spriteSystem, param0->spriteMan, 62, 10, FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 49405);
    TypeIcon_LoadPlttSrc(param0->spriteSystem, param0->spriteMan, NNS_G2D_VRAM_TYPE_2DMAIN, 49406);
    SpriteSystem_LoadPlttResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 37, FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, 49403);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 1, FALSE, 49401);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 24, FALSE, 49402);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 27, FALSE, 49403);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 30, FALSE, 49404);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 9, FALSE, 49405);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 35, FALSE, 49406);
    SpriteSystem_LoadCellResObj(param0->spriteSystem, param0->spriteMan, 16, Item_IconNCERFile(), FALSE, 49407);
    SpriteSystem_LoadCellResObj(param0->spriteSystem, param0->spriteMan, 62, 5, FALSE, 49408);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 0, FALSE, 49401);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 23, FALSE, 49402);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 26, FALSE, 49403);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 29, FALSE, 49404);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 8, FALSE, 49405);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->spriteSystem, param0->spriteMan, param0->bagGraphicsNARC, 34, FALSE, 49406);
    SpriteSystem_LoadAnimResObj(param0->spriteSystem, param0->spriteMan, 16, Item_IconNANRFile(), FALSE, 49407);
    SpriteSystem_LoadAnimResObj(param0->spriteSystem, param0->spriteMan, 62, 6, FALSE, 49408);
    TypeIcon_LoadAnim(param0->spriteSystem, param0->spriteMan, 49409, 49409);
}

static void ov84_02240950(BagController *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 12; v0++) {
        param0->sprites[v0] = SpriteSystem_NewSprite(param0->spriteSystem, param0->spriteMan, &Unk_ov84_022411B0[v0]);
    }

    ManagedSprite_SetDrawFlag(param0->sprites[5], 0);
    ManagedSprite_SetDrawFlag(param0->sprites[6], 0);
    ManagedSprite_SetDrawFlag(param0->sprites[10], 0);
    ManagedSprite_SetDrawFlag(param0->sprites[11], 0);

    if ((param0->bagCtx->mode == 4) || (param0->bagCtx->mode == 5)) {
        ManagedSprite_SetDrawFlag(param0->sprites[1], 0);
    }

    if (param0->numPockets == 1) {
        ManagedSprite_SetDrawFlag(param0->sprites[2], 0);
        ManagedSprite_SetDrawFlag(param0->sprites[3], 0);
    }

    ov84_02240D3C(param0, 0);

    ManagedSprite_SetAnim(param0->sprites[0], param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].pocketType);
    ManagedSprite_SetPositionXY(param0->sprites[1], ov84_02240C30(param0, param0->bagCtx->currPocketIdx), 97);
    ManagedSprite_SetPositionXY(param0->sprites[4], 177, 24 + (param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].cursorPos - 1) * 16);

    {
        VecFx32 v1 = { FX32_ONE, FX32_ONE, FX32_ONE };
        Sprite_SetAffineScaleEx(param0->sprites[0]->sprite, &v1, 2);
    }
}

void ov84_02240A88(BagController *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 12; v0++) {
        Sprite_DeleteAndFreeResources(param0->sprites[v0]);
    }

    SpriteSystem_FreeResourcesAndManager(param0->spriteSystem, param0->spriteMan);
    SpriteSystem_Free(param0->spriteSystem);
}

void ov84_02240ABC(BagController *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 12; v0++) {
        ManagedSprite_TickFrame(param0->sprites[v0]);
    }
}

void ov84_02240AD8(BagController *param0, u16 param1)
{
    SpriteSystem_ReplaceCharResObj(param0->spriteSystem, param0->spriteMan, 16, Item_FileID(param1, 1), 0, 49407);
    SpriteSystem_ReplacePlttResObj(param0->spriteSystem, param0->spriteMan, 16, Item_FileID(param1, 2), 0, 49404);
}

void ov84_02240B34(BagController *param0, u8 param1)
{
    ManagedSprite_SetExplicitPalette(param0->sprites[4], param1);
    ManagedSprite_SetExplicitPalette(param0->sprites[1], param1);
}

u8 ov84_02240B50(BagController *param0)
{
    if (param0->pocketHighlight.isMoving == 0) {
        return 1;
    }

    return 0;
}

void ov84_02240B68(BagController *param0)
{
    param0->pocketHighlight.currentStep = 0;
    param0->pocketHighlight.isMoving = 1;

    ov84_02240C48(param0);
}

void ov84_02240B80(BagController *param0)
{
    switch (param0->pocketHighlight.isMoving) {
    case 0:
        break;
    case 1:
        ov84_02240B98(param0);
        break;
    }
}

static void ov84_02240B98(BagController *param0)
{
    VecFx32 v0;

    v0 = *(Sprite_GetPosition(param0->sprites[1]->sprite));

    if (param0->pocketHighlight.direction == 0) {
        v0.x -= param0->pocketHighlight.positions[param0->pocketHighlight.currentStep];
    } else {
        v0.x += param0->pocketHighlight.positions[param0->pocketHighlight.currentStep];
    }

    Sprite_SetPosition(param0->sprites[1]->sprite, &v0);
    param0->pocketHighlight.currentStep++;

    if (param0->pocketHighlight.currentStep == 8) {
        v0.x = ov84_02240C30(param0, param0->nextPocket) * FX32_ONE;
        Sprite_SetPosition(param0->sprites[1]->sprite, &v0);
        param0->pocketHighlight.isMoving = 0;
    }
}

static u8 ov84_02240C30(BagController *param0, u8 param1)
{
    return 0 * 8 + param0->pocketSelectorIconsX + param0->pocketSelectorIconsSpacing * param1 + 6;
}

static void ov84_02240C48(BagController *param0)
{
    VecFx32 v0;
    fx32 v1;

    v0 = *(Sprite_GetPosition(param0->sprites[1]->sprite));
    v1 = ov84_02240C30(param0, param0->nextPocket) * FX32_ONE;

    if (v1 < v0.x) {
        v1 = (v0.x - v1) / 100;
        param0->pocketHighlight.direction = 0;
    } else {
        v1 = (v1 - v0.x) / 100;
        param0->pocketHighlight.direction = 1;
    }

    param0->pocketHighlight.positions[0] = 0;
    param0->pocketHighlight.positions[1] = v1 * 40;
    param0->pocketHighlight.positions[2] = v1 * 25;
    param0->pocketHighlight.positions[3] = v1 * 15;
    param0->pocketHighlight.positions[4] = v1 * 10;
    param0->pocketHighlight.positions[5] = v1 * 7;
    param0->pocketHighlight.positions[6] = v1 * 3;
    param0->pocketHighlight.positions[7] = 0;
}

void ov84_02240CF0(BagController *param0, u8 param1)
{
    if (param1 == 0) {
        ManagedSprite_SetPositionXY(param0->sprites[8], 220, 156);
        ManagedSprite_SetPositionXY(param0->sprites[9], 220, 180);
    } else {
        ManagedSprite_SetPositionXY(param0->sprites[8], 162, 108);
        ManagedSprite_SetPositionXY(param0->sprites[9], 162, 132);
    }

    ov84_02240D3C(param0, 1);
}

void ov84_02240D3C(BagController *param0, u8 param1)
{
    ManagedSprite_SetDrawFlag(param0->sprites[8], param1);
    ManagedSprite_SetDrawFlag(param0->sprites[9], param1);
}

void ov84_02240D5C(BagController *param0, u16 param1, u8 param2)
{
    u16 v0;
    u16 v1;
    u16 v2;

    ManagedSprite_SetDrawFlag(param0->sprites[10], param2);
    ManagedSprite_SetDrawFlag(param0->sprites[11], param2);

    if (param2 == 0) {
        return;
    }

    v0 = Item_MoveForTMHM(param1);
    v1 = MoveTable_LoadParam(v0, MOVEATTRIBUTE_TYPE);
    v2 = MoveTable_LoadParam(v0, MOVEATTRIBUTE_CLASS);

    SpriteSystem_ReplaceCharResObj(param0->spriteSystem, param0->spriteMan, TypeIcon_GetNARC(), TypeIcon_GetChar(v1), 1, 49409);
    ManagedSprite_SetExplicitPalette(param0->sprites[10], TypeIcon_GetPltt(v1) + 6);
    SpriteSystem_ReplaceCharResObj(param0->spriteSystem, param0->spriteMan, CategoryIcon_GetNARC(), CategoryIcon_GetChar(v2), 1, 49410);
    ManagedSprite_SetExplicitPalette(param0->sprites[11], CategoryIcon_GetPltt(v2) + 6);
}

void ov84_02240E24(BagController *param0, s16 param1, s16 param2)
{
    ManagedSprite_SetDrawFlag(param0->sprites[6], 1);
    ManagedSprite_SetPositionXY(param0->sprites[6], param1, param2);
    ManagedSprite_SetAnimationFrame(param0->sprites[6], 0);
    ManagedSprite_SetAnim(param0->sprites[6], 0);
}

void ov84_02240E5C(BagController *param0)
{
    if (ManagedSprite_GetDrawFlag(param0->sprites[6]) == 1) {
        ManagedSprite_TickNFrames(param0->sprites[6], FX32_ONE);

        if (ManagedSprite_GetAnimationFrame(param0->sprites[6]) == 2) {
            ManagedSprite_SetDrawFlag(param0->sprites[6], 0);
        }
    }
}
