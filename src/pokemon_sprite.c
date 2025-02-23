#include "pokemon_sprite.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/struct_02008900.h"

#include "heap.h"
#include "inlines.h"
#include "narc.h"
#include "palette.h"
#include "pokemon_sprite.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
} UnkStruct_020E4E62;

static const UnkStruct_020E4E62 Unk_020E4E62[] = {
    { 0x1B, 0xF },
    { 0x1C, 0xF },
    { 0x1D, 0xF },
    { 0x1E, 0xF },
    { 0x1A, 0x10 },
    { 0x1B, 0x10 },
    { 0x1C, 0x10 },
    { 0x1D, 0x10 },
    { 0x1E, 0x10 },
    { 0x1F, 0x10 },
    { 0x19, 0x11 },
    { 0x1A, 0x11 },
    { 0x1B, 0x11 },
    { 0x1C, 0x11 },
    { 0x1D, 0x11 },
    { 0x1E, 0x11 },
    { 0x1F, 0x11 },
    { 0x20, 0x11 },
    { 0x19, 0x12 },
    { 0x1A, 0x12 },
    { 0x1B, 0x12 },
    { 0x1C, 0x12 },
    { 0x1D, 0x12 },
    { 0x1E, 0x12 },
    { 0x1F, 0x12 },
    { 0x20, 0x12 },
    { 0x19, 0x13 },
    { 0x1A, 0x13 },
    { 0x1B, 0x13 },
    { 0x1C, 0x13 },
    { 0x1D, 0x13 },
    { 0x1E, 0x13 },
    { 0x1F, 0x13 },
    { 0x20, 0x13 },
    { 0x19, 0x14 },
    { 0x1A, 0x14 },
    { 0x1B, 0x14 },
    { 0x1C, 0x14 },
    { 0x1D, 0x14 },
    { 0x1E, 0x14 },
    { 0x1F, 0x14 },
    { 0x20, 0x14 },
    { 0x1A, 0x15 },
    { 0x1B, 0x15 },
    { 0x1C, 0x15 },
    { 0x1D, 0x15 },
    { 0x1E, 0x15 },
    { 0x1F, 0x15 },
    { 0x1B, 0x16 },
    { 0x1C, 0x16 },
    { 0x1D, 0x16 },
    { 0x1E, 0x16 },
    { 0xff, 0xff }
};

static const UnkStruct_020E4E62 Unk_020E4DF8[] = {
    { 0x33, 0x11 },
    { 0x34, 0x11 },
    { 0x35, 0x11 },
    { 0x36, 0x11 },
    { 0x32, 0x12 },
    { 0x33, 0x12 },
    { 0x34, 0x12 },
    { 0x35, 0x12 },
    { 0x36, 0x12 },
    { 0x37, 0x12 },
    { 0x31, 0x13 },
    { 0x32, 0x13 },
    { 0x33, 0x13 },
    { 0x34, 0x13 },
    { 0x35, 0x13 },
    { 0x36, 0x13 },
    { 0x37, 0x13 },
    { 0x38, 0x13 },
    { 0x31, 0x14 },
    { 0x32, 0x14 },
    { 0x33, 0x14 },
    { 0x34, 0x14 },
    { 0x35, 0x14 },
    { 0x36, 0x14 },
    { 0x37, 0x14 },
    { 0x38, 0x14 },
    { 0x31, 0x15 },
    { 0x32, 0x15 },
    { 0x33, 0x15 },
    { 0x34, 0x15 },
    { 0x35, 0x15 },
    { 0x36, 0x15 },
    { 0x37, 0x15 },
    { 0x38, 0x15 },
    { 0x31, 0x16 },
    { 0x32, 0x16 },
    { 0x33, 0x16 },
    { 0x34, 0x16 },
    { 0x35, 0x16 },
    { 0x36, 0x16 },
    { 0x37, 0x16 },
    { 0x38, 0x16 },
    { 0x32, 0x17 },
    { 0x33, 0x17 },
    { 0x34, 0x17 },
    { 0x35, 0x17 },
    { 0x36, 0x17 },
    { 0x37, 0x17 },
    { 0x33, 0x18 },
    { 0x34, 0x18 },
    { 0x35, 0x18 },
    { 0x36, 0x18 },
    { 0xff, 0xff }
};

static const UnkStruct_020E4E62 Unk_020E4D90[] = {
    { 0x1E, 0x21 },
    { 0x1F, 0x21 },
    { 0x20, 0x21 },
    { 0x1D, 0x22 },
    { 0x1E, 0x22 },
    { 0x1F, 0x22 },
    { 0x20, 0x22 },
    { 0x21, 0x22 },
    { 0x1C, 0x23 },
    { 0x1D, 0x23 },
    { 0x1E, 0x23 },
    { 0x1F, 0x23 },
    { 0x20, 0x23 },
    { 0x21, 0x23 },
    { 0x22, 0x23 },
    { 0x1C, 0x24 },
    { 0x1D, 0x24 },
    { 0x1E, 0x24 },
    { 0x1F, 0x24 },
    { 0x20, 0x24 },
    { 0x21, 0x24 },
    { 0x22, 0x24 },
    { 0x1C, 0x25 },
    { 0x1D, 0x25 },
    { 0x1E, 0x25 },
    { 0x1F, 0x25 },
    { 0x20, 0x25 },
    { 0x21, 0x25 },
    { 0x22, 0x25 },
    { 0x1C, 0x26 },
    { 0x1D, 0x26 },
    { 0x1E, 0x26 },
    { 0x1F, 0x26 },
    { 0x20, 0x26 },
    { 0x21, 0x26 },
    { 0x22, 0x26 },
    { 0x1C, 0x27 },
    { 0x1D, 0x27 },
    { 0x1E, 0x27 },
    { 0x1F, 0x27 },
    { 0x20, 0x27 },
    { 0x21, 0x27 },
    { 0x22, 0x27 },
    { 0x1D, 0x28 },
    { 0x1E, 0x28 },
    { 0x1F, 0x28 },
    { 0x20, 0x28 },
    { 0x21, 0x28 },
    { 0x1E, 0x29 },
    { 0x1F, 0x29 },
    { 0x20, 0x29 },
    { 0xff, 0xff }
};

static const UnkStruct_020E4E62 Unk_020E4F4C[] = {
    { 0x2B, 0x21 },
    { 0x2C, 0x21 },
    { 0x2D, 0x21 },
    { 0x29, 0x22 },
    { 0x2A, 0x22 },
    { 0x2B, 0x22 },
    { 0x2C, 0x22 },
    { 0x2D, 0x22 },
    { 0x2E, 0x22 },
    { 0x2F, 0x22 },
    { 0x28, 0x23 },
    { 0x29, 0x23 },
    { 0x2A, 0x23 },
    { 0x2B, 0x23 },
    { 0x2C, 0x23 },
    { 0x2D, 0x23 },
    { 0x2E, 0x23 },
    { 0x2F, 0x23 },
    { 0x30, 0x23 },
    { 0x28, 0x24 },
    { 0x29, 0x24 },
    { 0x2A, 0x24 },
    { 0x2B, 0x24 },
    { 0x2C, 0x24 },
    { 0x2D, 0x24 },
    { 0x2E, 0x24 },
    { 0x2F, 0x24 },
    { 0x30, 0x24 },
    { 0x28, 0x25 },
    { 0x29, 0x25 },
    { 0x2A, 0x25 },
    { 0x2B, 0x25 },
    { 0x2C, 0x25 },
    { 0x2D, 0x25 },
    { 0x2E, 0x25 },
    { 0x2F, 0x25 },
    { 0x30, 0x25 },
    { 0x28, 0x26 },
    { 0x29, 0x26 },
    { 0x2A, 0x26 },
    { 0x2B, 0x26 },
    { 0x2C, 0x26 },
    { 0x2D, 0x26 },
    { 0x2E, 0x26 },
    { 0x2F, 0x26 },
    { 0x30, 0x26 },
    { 0x28, 0x27 },
    { 0x29, 0x27 },
    { 0x2A, 0x27 },
    { 0x2B, 0x27 },
    { 0x2C, 0x27 },
    { 0x2D, 0x27 },
    { 0x2E, 0x27 },
    { 0x2F, 0x27 },
    { 0x30, 0x27 },
    { 0x28, 0x28 },
    { 0x29, 0x28 },
    { 0x2A, 0x28 },
    { 0x2B, 0x28 },
    { 0x2C, 0x28 },
    { 0x2D, 0x28 },
    { 0x2E, 0x28 },
    { 0x2F, 0x28 },
    { 0x30, 0x28 },
    { 0x29, 0x29 },
    { 0x2A, 0x29 },
    { 0x2B, 0x29 },
    { 0x2C, 0x29 },
    { 0x2D, 0x29 },
    { 0x2E, 0x29 },
    { 0x2F, 0x29 },
    { 0x2B, 0x2A },
    { 0x2C, 0x2A },
    { 0x2D, 0x2A },
    { 0xff, 0xff }
};

static const UnkStruct_020E4E62 *Unk_021007A4[] = {
    (UnkStruct_020E4E62 *)&Unk_020E4E62,
    (UnkStruct_020E4E62 *)&Unk_020E4DF8,
    (UnkStruct_020E4E62 *)&Unk_020E4D90,
    (UnkStruct_020E4E62 *)&Unk_020E4F4C
};

void sub_02007768(PokemonSpriteManager *param0);
void sub_02007B6C(PokemonSpriteManager *param0);
PokemonSprite *sub_02007C34(PokemonSpriteManager *param0, PokemonSpriteTemplate *param1, int param2, int param3, int param4, int param5, SpriteAnimationFrame *param6, PokemonSpriteCallback *param7);
PokemonSprite *sub_02007C7C(PokemonSpriteManager *param0, PokemonSpriteTemplate *param1, int param2, int param3, int param4, int param5, int param6, SpriteAnimationFrame *param7, PokemonSpriteCallback *param8);
void sub_02007DC8(PokemonSprite *param0);
void sub_02007DD4(PokemonSpriteManager *param0);
void sub_02007B98(PokemonSprite *param0, int param1);
void sub_02007C10(PokemonSprite *param0, SpriteAnimationFrame *param1);
BOOL sub_02007C24(PokemonSprite *param0);
void sub_02007DEC(PokemonSprite *param0, int param1, int param2);
int sub_020080C0(PokemonSprite *param0, int param1);
void sub_02008274(PokemonSprite *param0, int param1, int param2);
void sub_020086D4(PokemonSprite *param0, int param1, int param2, int param3, int param4);
void sub_020086FC(PokemonSprite *param0, int param1, int param2, int param3, int param4);
void sub_0200872C(PokemonSpriteManager *param0, int param1, int param2, int param3, int param4);
void sub_02008780(PokemonSprite *param0);
BOOL sub_020087B4(PokemonSprite *param0);
void sub_020087C8(PokemonSprite *param0, int param1);
void sub_020089A0(PokemonSprite *param0);
void sub_020089B0(PokemonSprite *param0);
void sub_02008A0C(PokemonSprite *param0);
void sub_02008A78(PokemonSpriteManager *param0, u32 param1, u32 param2);
void sub_02008A84(PokemonSpriteManager *param0, u32 param1, u32 param2);
PokemonSpriteTemplate *sub_02008A90(PokemonSprite *param0);
void sub_02008A94(PokemonSpriteManager *param0);
void sub_02008B2C(PokemonSpriteManager *param0, int param1);
BOOL sub_02008B38(PokemonSprite *param0);
void sub_02008B54(PokemonSpriteManager *param0, u32 param1);
void sub_02008B60(PokemonSpriteManager *param0, u32 param1);
void sub_020091D8(u8 *param0, u32 param1, BOOL param2);
void sub_02009348(u8 *param0);
static void sub_02008B78(PokemonSpriteManager *param0);
static void sub_02008FC8(PokemonSpriteManager *param0);
static void sub_020088D8(PokemonSprite *param0);
static u8 sub_020091AC(u8 param0);
static void sub_020091C0(PokemonSprite *param0, u8 *param1);

void *sub_0200762C(int heapID)
{
    PokemonSpriteManager *v0;
    int v1, v2, v3, v4;
    NNSG2dCharacterData *v5;
    u8 *v6;
    void *v7;

    v0 = Heap_AllocFromHeap(heapID, sizeof(PokemonSpriteManager));

    v0->heapID = heapID;
    v0->dummy330 = 0;
    v0->charBaseAddr = 0;
    v0->charSize = (32 * 32 * 0x20);
    v0->plttBaseAddr = 0;
    v0->plttSize = (0x20 * 4);
    v0->charRawData = Heap_AllocFromHeap(heapID, (32 * 32 * 0x20));
    v0->plttRawData = Heap_AllocFromHeap(heapID, (0x20 * 6));

    MI_CpuClearFast(v0->plttRawData, sizeof(0x20 * 6));
    v0->plttRawDataUnfaded = Heap_AllocFromHeap(heapID, (0x20 * 6));
    MI_CpuClearFast(v0->plttRawDataUnfaded, sizeof(0x20 * 6));

    for (v1 = 0; v1 < 4; v1++) {
        MI_CpuClearFast(&v0->sprites[v1], sizeof(PokemonSprite));
    }

    NNS_G2dSetupSoftwareSpriteCamera();

    v0->needG3Identity = FALSE;

    v7 = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE, 251, v0->heapID);
    NNS_G2dGetUnpackedCharacterData(v7, &v5);

    v0->charData.pixelFmt = v5->pixelFmt;
    v0->charData.mapingType = v5->mapingType;
    v0->charData.characterFmt = v5->characterFmt;
    v6 = v5->pRawData;

    sub_02009348(v6);
    MI_CpuFill8(&v0->charRawData[0], v6[0], (32 * 32 * 0x20));

    for (v4 = 0; v4 < 80; v4++) {
        for (v3 = 0; v3 < 160 / 4; v3++) {
            v0->charRawData[v4 * 0x80 + v3 + 0x5050] = v6[v4 * 0x50 + v3];
        }
    }

    Heap_FreeToHeap(v7);

    v0->needLoadImage = TRUE;
    v0->needLoadPltt = TRUE;

    return v0;
}

static const int Unk_020E4ECC[4][2][4] = {
    {
        { 0x0, 0x0, 0x50, 0x50 },
        { 0x50, 0x0, 0xA0, 0x50 },
    },
    {
        { 0x0, 0x50, 0x50, 0xA0 },
        { 0x50, 0x50, 0xA0, 0xA0 },
    },
    {
        { 0x0, 0xA0, 0x50, 0xF0 },
        { 0x50, 0xA0, 0xA0, 0xF0 },
    },
    {
        { 0xA0, 0x0, 0xF0, 0x50 },
        { 0xA0, 0x50, 0xF0, 0xA0 },
    },
};

static const int Unk_020E4D50[4][4] = {
    { 0xA0, 0xA0, 0xE0, 0xB0 },
    { 0xA0, 0xA0, 0xE0, 0xB0 },
    { 0xA0, 0xB0, 0xE0, 0xC0 },
    { 0xA0, 0xC0, 0xE0, 0xD0 }
};

void sub_02007768(PokemonSpriteManager *param0)
{
    int v0;
    int v1, v2;
    int v3, v4, v5, v6;

    sub_02008B78(param0);
    sub_02008FC8(param0);

    NNS_G3dGeFlushBuffer();

    G3_PushMtx();
    G3_TexImageParam(param0->imageProxy.attr.fmt, GX_TEXGEN_TEXCOORD, param0->imageProxy.attr.sizeS, param0->imageProxy.attr.sizeT, GX_TEXREPEAT_NONE, GX_TEXFLIP_NONE, param0->imageProxy.attr.plttUse, param0->charBaseAddr);

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->sprites[v0].active && param0->sprites[v0].transforms.hasVanished == FALSE && param0->sprites[v0].transforms.dontDraw == FALSE) {
            if (param0->sprites[v0].callback != NULL) {
                param0->sprites[v0].callback(&param0->sprites[v0], &param0->sprites[v0].transforms);
            }

            NNS_G3dGeFlushBuffer();

            if (param0->needG3Identity != TRUE) {
                G3_Identity();
            }

            sub_020088D8(&param0->sprites[v0]);

            G3_TexPlttBase((u32)(param0->plttBaseAddr + 32 * v0), param0->imageProxy.attr.fmt);
            G3_Translate((param0->sprites[v0].transforms.xCenter + param0->sprites[v0].transforms.xPivot) << FX32_SHIFT, (param0->sprites[v0].transforms.yCenter + param0->sprites[v0].transforms.yPivot) << FX32_SHIFT, param0->sprites[v0].transforms.zCenter << FX32_SHIFT);
            G3_RotX(FX_SinIdx(param0->sprites[v0].transforms.rotationX), FX_CosIdx(param0->sprites[v0].transforms.rotationX));
            G3_RotY(FX_SinIdx(param0->sprites[v0].transforms.rotationY), FX_CosIdx(param0->sprites[v0].transforms.rotationY));
            G3_RotZ(FX_SinIdx(param0->sprites[v0].transforms.rotationZ), FX_CosIdx(param0->sprites[v0].transforms.rotationZ));
            G3_Translate(-((param0->sprites[v0].transforms.xCenter + param0->sprites[v0].transforms.xPivot) << FX32_SHIFT), -((param0->sprites[v0].transforms.yCenter + param0->sprites[v0].transforms.yPivot) << FX32_SHIFT), -(param0->sprites[v0].transforms.zCenter << FX32_SHIFT));
            G3_MaterialColorDiffAmb(GX_RGB(param0->sprites[v0].transforms.diffuseR, param0->sprites[v0].transforms.diffuseG, param0->sprites[v0].transforms.diffuseB), GX_RGB(param0->sprites[v0].transforms.ambientR, param0->sprites[v0].transforms.ambientG, param0->sprites[v0].transforms.ambientB), 1);
            G3_MaterialColorSpecEmi(GX_RGB(16, 16, 16), GX_RGB(0, 0, 0), 0);
            G3_PolygonAttr(GX_LIGHTMASK_NONE, GX_POLYGONMODE_MODULATE, GX_CULL_NONE, param0->sprites[v0].polygonID, param0->sprites[v0].transforms.alpha, 0);

            if (param0->sprites[v0].transforms.visible) {
                v3 = Unk_020E4ECC[v0][param0->sprites[v0].currSpriteFrame][0] + param0->sprites[v0].transforms.xOffset2;
                v5 = Unk_020E4ECC[v0][param0->sprites[v0].currSpriteFrame][0] + param0->sprites[v0].transforms.xOffset2 + param0->sprites[v0].transforms.width;
                v4 = Unk_020E4ECC[v0][param0->sprites[v0].currSpriteFrame][1] + param0->sprites[v0].transforms.yOffset2;
                v6 = Unk_020E4ECC[v0][param0->sprites[v0].currSpriteFrame][1] + param0->sprites[v0].transforms.yOffset2 + param0->sprites[v0].transforms.height;
                NNS_G2dDrawSpriteFast(param0->sprites[v0].transforms.xCenter - 80 / 2 + param0->sprites[v0].transforms.xOffset2 + param0->sprites[v0].transforms.xOffset, param0->sprites[v0].transforms.yCenter - 80 / 2 + param0->sprites[v0].transforms.yOffset2 + param0->sprites[v0].transforms.yOffset - param0->sprites[v0].shadow.height, param0->sprites[v0].transforms.zCenter + param0->sprites[v0].transforms.zOffset, param0->sprites[v0].transforms.width, param0->sprites[v0].transforms.height, v3, v4, v5, v6);
            } else {
                v1 = (80 * param0->sprites[v0].transforms.affineWidth) >> 8;
                v2 = (80 * param0->sprites[v0].transforms.affineHeight) >> 8;
                v3 = Unk_020E4ECC[v0][param0->sprites[v0].currSpriteFrame][0];
                v5 = Unk_020E4ECC[v0][param0->sprites[v0].currSpriteFrame][2];
                v4 = Unk_020E4ECC[v0][param0->sprites[v0].currSpriteFrame][1];
                v6 = Unk_020E4ECC[v0][param0->sprites[v0].currSpriteFrame][3];
                NNS_G2dDrawSpriteFast(param0->sprites[v0].transforms.xCenter - v1 / 2 + param0->sprites[v0].transforms.xOffset, param0->sprites[v0].transforms.yCenter - v2 / 2 + param0->sprites[v0].transforms.yOffset - param0->sprites[v0].shadow.height, param0->sprites[v0].transforms.zCenter + param0->sprites[v0].transforms.zOffset, v1, v2, v3, v4, v5, v6);
            }

            if (param0->sprites[v0].shadow.plttSlot && param0->sprites[v0].shadow.size && param0->sprites[v0].transforms.visible == FALSE && (param0->flags & 0x1) == 0) {
                if (param0->needG3Identity != TRUE) {
                    G3_Identity();
                }

                G3_TexPlttBase((u32)(param0->plttBaseAddr + 32 * (3 + param0->sprites[v0].shadow.plttSlot)), param0->imageProxy.attr.fmt);

                if (param0->sprites[v0].shadow.isAffine) {
                    v1 = (64 * param0->sprites[v0].transforms.affineWidth) >> 8;
                    v2 = (16 * param0->sprites[v0].transforms.affineHeight) >> 8;
                } else {
                    v1 = 64;
                    v2 = 16;
                }

                if (param0->sprites[v0].shadow.shouldAdjustX) {
                    param0->sprites[v0].shadow.x = param0->sprites[v0].transforms.xCenter + param0->sprites[v0].transforms.xOffset + param0->sprites[v0].shadow.xOffset;
                }

                if (param0->sprites[v0].shadow.shouldAdjustY) {
                    param0->sprites[v0].shadow.y = param0->sprites[v0].transforms.yCenter + param0->sprites[v0].transforms.yOffset + param0->sprites[v0].shadow.yOffset;
                }

                v3 = Unk_020E4D50[param0->sprites[v0].shadow.size][0];
                v4 = Unk_020E4D50[param0->sprites[v0].shadow.size][1];
                v5 = Unk_020E4D50[param0->sprites[v0].shadow.size][2];
                v6 = Unk_020E4D50[param0->sprites[v0].shadow.size][3];

                NNS_G2dDrawSpriteFast(param0->sprites[v0].shadow.x - v1 / 2, param0->sprites[v0].shadow.y - v2 / 2, -1000, v1, v2, v3, v4, v5, v6);
            }
        }
    }

    G3_PopMtx(1);
}

void sub_02007B6C(PokemonSpriteManager *param0)
{
    Heap_FreeToHeap(param0->charRawData);
    Heap_FreeToHeap(param0->plttRawData);
    Heap_FreeToHeap(param0->plttRawDataUnfaded);
    Heap_FreeToHeap(param0);
}

void sub_02007B98(PokemonSprite *param0, int param1)
{
    int v0;

    param0->currAnimFrame = 0;

    for (v0 = 0; v0 < 10; v0++) {
        param0->animLoopTimers[v0] = 0;
    }

    if (param0->animFrames[param0->currAnimFrame].spriteFrame == -1) {
        param0->currSpriteFrame = 0;
    } else {
        param0->animActive = TRUE;
        param0->currSpriteFrame = param0->animFrames[param0->currAnimFrame].spriteFrame;
        param0->animFrameDelay = param0->animFrames[param0->currAnimFrame].frameDelay;
        param0->transforms.xOffset = param0->animFrames[param0->currAnimFrame].xOffset;
    }
}

void sub_02007C10(PokemonSprite *param0, SpriteAnimationFrame *param1)
{
    MI_CpuCopy8(param1, &param0->animFrames, sizeof(SpriteAnimationFrame) * 10);
}

BOOL sub_02007C24(PokemonSprite *param0)
{
    return param0->animActive != FALSE;
}

PokemonSprite *sub_02007C34(PokemonSpriteManager *param0, PokemonSpriteTemplate *param1, int param2, int param3, int param4, int param5, SpriteAnimationFrame *param6, PokemonSpriteCallback *param7)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->sprites[v0].active == FALSE) {
            break;
        }
    }

    GF_ASSERT(v0 != 4);

    return sub_02007C7C(param0, param1, param2, param3, param4, param5, v0, param6, param7);
}

PokemonSprite *sub_02007C7C(PokemonSpriteManager *param0, PokemonSpriteTemplate *param1, int param2, int param3, int param4, int param5, int param6, SpriteAnimationFrame *param7, PokemonSpriteCallback *param8)
{
    GF_ASSERT(param0->sprites[param6].active == FALSE);

    MI_CpuClearFast(&param0->sprites[param6], sizeof(PokemonSprite));

    param0->sprites[param6].active = TRUE;
    param0->sprites[param6].needReloadChar = TRUE;
    param0->sprites[param6].needReloadPltt = TRUE;
    param0->sprites[param6].polygonID = param5;
    param0->sprites[param6].template = *param1;
    param0->sprites[param6].templateBackup = *param1;
    param0->sprites[param6].transforms.xCenter = param2;
    param0->sprites[param6].transforms.yCenter = param3;
    param0->sprites[param6].transforms.zCenter = param4;
    param0->sprites[param6].transforms.affineWidth = 256;
    param0->sprites[param6].transforms.affineHeight = 256;
    param0->sprites[param6].transforms.alpha = 31;
    param0->sprites[param6].transforms.diffuseR = 31;
    param0->sprites[param6].transforms.diffuseG = 31;
    param0->sprites[param6].transforms.diffuseB = 31;
    param0->sprites[param6].transforms.ambientR = 16;
    param0->sprites[param6].transforms.ambientG = 16;
    param0->sprites[param6].transforms.ambientB = 16;
    param0->sprites[param6].callback = param8;
    param0->sprites[param6].shadow.x = param2;
    param0->sprites[param6].shadow.y = param3;
    param0->sprites[param6].shadow.shouldAdjustX = TRUE;
    param0->sprites[param6].shadow.shouldAdjustY = TRUE;
    param0->sprites[param6].shadow.isAffine = TRUE;

    if (param7 != NULL) {
        MI_CpuCopy8(param7, &param0->sprites[param6].animFrames, sizeof(SpriteAnimationFrame) * 10);
    }

    return &param0->sprites[param6];
}

void sub_02007DC8(PokemonSprite *param0)
{
    param0->active = FALSE;
}

void sub_02007DD4(PokemonSpriteManager *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_02007DC8(&param0->sprites[v0]);
    }
}

void sub_02007DEC(PokemonSprite *param0, int param1, int param2)
{
    switch (param1) {
    case 0:
        param0->transforms.xCenter = param2;
        break;
    case 1:
        param0->transforms.yCenter = param2;
        break;
    case 2:
        param0->transforms.zCenter = param2;
        break;
    case 3:
        param0->transforms.xOffset = param2;
        break;
    case 4:
        param0->transforms.yOffset = param2;
        break;
    case 5:
        param0->transforms.zOffset = param2;
        break;
    case 6:
        param0->transforms.hasVanished = param2;
        break;
    case 7:
        param0->transforms.rotationX = param2;
        break;
    case 8:
        param0->transforms.rotationY = param2;
        break;
    case 9:
        param0->transforms.rotationZ = param2;
        break;
    case 10:
        param0->transforms.xPivot = param2;
        break;
    case 11:
        param0->transforms.yPivot = param2;
        break;
    case 12:
        param0->transforms.affineWidth = param2;
        break;
    case 13:
        param0->transforms.affineHeight = param2;
        break;
    case 14:
        param0->transforms.visible = param2;
        break;
    case 15:
        param0->transforms.xOffset2 = param2;
        break;
    case 16:
        param0->transforms.yOffset2 = param2;
        break;
    case 17:
        param0->transforms.width = param2;
        break;
    case 18:
        param0->transforms.height = param2;
        break;
    case 19:
        param0->shadow.x = param2;
        break;
    case 20:
        param0->shadow.y = param2;
        break;
    case 21:
        param0->shadow.xOffset = param2;
        break;
    case 22:
        param0->shadow.yOffset = param2;
        break;
    case 23:
        param0->transforms.alpha = param2;
        break;
    case 24:
        param0->transforms.diffuseR = param2;
        break;
    case 25:
        param0->transforms.diffuseG = param2;
        break;
    case 26:
        param0->transforms.diffuseB = param2;
        break;
    case 27:
        param0->transforms.ambientR = param2;
        break;
    case 28:
        param0->transforms.ambientG = param2;
        break;
    case 29:
        param0->transforms.ambientB = param2;
        break;
    case 30:
        param0->transforms.fadeActive = param2;
        param0->needReloadPltt = TRUE;
        break;
    case 31:
        param0->transforms.fadeTargetColor = param2;
        param0->needReloadPltt = TRUE;
        break;
    case 32:
        param0->transforms.fadeCurrent = param2;
        param0->needReloadPltt = TRUE;
        break;
    case 33:
        param0->transforms.fadeEnd = param2;
        param0->needReloadPltt = TRUE;
        break;
    case 34:
        param0->transforms.fadeDelayCounter = param2;
        break;
    case 35:
        param0->transforms.flipH = param2;
        param0->needReloadChar = TRUE;
        break;
    case 36:
        param0->transforms.flipV = param2;
        param0->needReloadChar = TRUE;
        break;
    case 37:
        param0->transforms.dontDraw = param2;
        break;
    case 38:
        param0->currSpriteFrame = param2;
        break;
    case 40:
        param0->transforms.mosaicIntensity = param2;
        param0->needReloadChar = TRUE;
        break;
    case 41:
        param0->shadow.height = param2;
        break;
    case 42:
        param0->shadow.plttSlot = param2;
        param0->needReloadPltt = TRUE;
        break;
    case 43:
        param0->shadow.shouldAdjustX = param2;
        break;
    case 44:
        param0->shadow.shouldAdjustY = param2;
        break;
    case 45:
        param0->shadow.isAffine = param2;
        break;
    case 46:
        param0->shadow.size = param2;
        break;
    }
}

int sub_020080C0(PokemonSprite *param0, int param1)
{
    switch (param1) {
    case 0:
        return param0->transforms.xCenter;
    case 1:
        return param0->transforms.yCenter;
    case 2:
        return param0->transforms.zCenter;
    case 3:
        return param0->transforms.xOffset;
    case 4:
        return param0->transforms.yOffset;
    case 5:
        return param0->transforms.zOffset;
    case 6:
        return param0->transforms.hasVanished;
    case 7:
        return param0->transforms.rotationX;
    case 8:
        return param0->transforms.rotationY;
    case 9:
        return param0->transforms.rotationZ;
    case 10:
        return param0->transforms.xPivot;
    case 11:
        return param0->transforms.yPivot;
    case 12:
        return param0->transforms.affineWidth;
    case 13:
        return param0->transforms.affineHeight;
    case 14:
        return param0->transforms.visible;
    case 15:
        return param0->transforms.xOffset2;
    case 16:
        return param0->transforms.yOffset2;
    case 17:
        return param0->transforms.width;
    case 18:
        return param0->transforms.height;
    case 19:
        return param0->shadow.x;
    case 20:
        return param0->shadow.y;
    case 21:
        return param0->shadow.xOffset;
    case 22:
        return param0->shadow.yOffset;
    case 23:
        return param0->transforms.alpha;
    case 24:
        return param0->transforms.diffuseR;
    case 25:
        return param0->transforms.diffuseG;
    case 26:
        return param0->transforms.diffuseB;
    case 27:
        return param0->transforms.ambientR;
    case 28:
        return param0->transforms.ambientG;
    case 29:
        return param0->transforms.ambientB;
    case 30:
        return param0->transforms.fadeActive;
    case 31:
        return param0->transforms.fadeTargetColor;
    case 32:
        return param0->transforms.fadeCurrent;
    case 33:
        return param0->transforms.fadeEnd;
    case 34:
        return param0->transforms.fadeDelayCounter;
    case 35:
        return param0->transforms.flipH;
    case 36:
        return param0->transforms.flipV;
    case 37:
        return param0->transforms.dontDraw;
    case 38:
        return param0->currSpriteFrame;
    case 40:
        return param0->transforms.mosaicIntensity;
    case 41:
        return param0->shadow.height;
    case 42:
        return param0->shadow.plttSlot;
    case 43:
        return param0->shadow.shouldAdjustX;
    case 44:
        return param0->shadow.shouldAdjustY;
    case 45:
        return param0->shadow.isAffine;
        break;
    case 46:
        return param0->shadow.size;
        break;
    }

    GF_ASSERT(FALSE);
    return 0;
}

void sub_02008274(PokemonSprite *param0, int param1, int param2)
{
    switch (param1) {
    case 0:
        param0->transforms.xCenter += param2;
        break;
    case 1:
        param0->transforms.yCenter += param2;
        break;
    case 2:
        param0->transforms.zCenter += param2;
        break;
    case 3:
        param0->transforms.xOffset += param2;
        break;
    case 4:
        param0->transforms.yOffset += param2;
        break;
    case 5:
        param0->transforms.zOffset += param2;
        break;
    case 6:
        param0->transforms.hasVanished += param2;
        break;
    case 7:
        param0->transforms.rotationX += param2;
        break;
    case 8:
        param0->transforms.rotationY += param2;
        break;
    case 9:
        param0->transforms.rotationZ += param2;
        break;
    case 10:
        param0->transforms.xPivot += param2;
        break;
    case 11:
        param0->transforms.yPivot += param2;
        break;
    case 12:
        param0->transforms.affineWidth += param2;
        break;
    case 13:
        param0->transforms.affineHeight += param2;
        break;
    case 14:
        param0->transforms.visible += param2;
        break;
    case 15:
        param0->transforms.xOffset2 += param2;
        break;
    case 16:
        param0->transforms.yOffset2 += param2;
        break;
    case 17:
        param0->transforms.width += param2;
        break;
    case 18:
        param0->transforms.height += param2;
        break;
    case 19:
        param0->shadow.x += param2;
        break;
    case 20:
        param0->shadow.y += param2;
        break;
    case 21:
        param0->shadow.xOffset += param2;
        break;
    case 22:
        param0->shadow.yOffset += param2;
        break;
    case 23:
        param0->transforms.alpha += param2;
        break;
    case 24:
        param0->transforms.diffuseR += param2;
        break;
    case 25:
        param0->transforms.diffuseG += param2;
        break;
    case 26:
        param0->transforms.diffuseB += param2;
        break;
    case 27:
        param0->transforms.ambientR += param2;
        break;
    case 28:
        param0->transforms.ambientG += param2;
        break;
    case 29:
        param0->transforms.ambientB += param2;
        break;
    case 30:
        param0->transforms.fadeActive += param2;
        param0->needReloadPltt = TRUE;
        break;
    case 31:
        param0->transforms.fadeTargetColor += param2;
        param0->needReloadPltt = TRUE;
        break;
    case 32:
        param0->transforms.fadeCurrent += param2;
        param0->needReloadPltt = TRUE;
        break;
    case 33:
        param0->transforms.fadeEnd += param2;
        param0->needReloadPltt = TRUE;
        break;
    case 34:
        param0->transforms.fadeDelayCounter += param2;
        break;
    case 35:
        param0->transforms.flipH += param2;
        param0->needReloadChar = TRUE;
        break;
    case 36:
        param0->transforms.flipV += param2;
        param0->needReloadChar = TRUE;
        break;
    case 37:
        param0->transforms.dontDraw += param2;
        break;
    case 38:
        param0->currSpriteFrame += param2;
        break;
    case 40:
        param0->transforms.mosaicIntensity += param2;
        param0->needReloadChar = TRUE;
        break;
    case 41:
        param0->shadow.height += param2;
        break;
    case 42:
        param0->shadow.plttSlot += param2;
        param0->needReloadPltt = TRUE;
        break;
    case 43:
        param0->shadow.shouldAdjustX += param2;
        break;
    case 44:
        param0->shadow.shouldAdjustY += param2;
        break;
    case 45:
        param0->shadow.isAffine += param2;
        break;
    case 46:
        param0->shadow.size += param2;
        break;
    }
}

void sub_020086D4(PokemonSprite *param0, int param1, int param2, int param3, int param4)
{
    param0->transforms.visible = TRUE;
    param0->transforms.xOffset2 = param1;
    param0->transforms.yOffset2 = param2;
    param0->transforms.width = param3;
    param0->transforms.height = param4;
}

void sub_020086FC(PokemonSprite *param0, int param1, int param2, int param3, int param4)
{
    param0->transforms.fadeActive = TRUE;
    param0->transforms.fadeCurrent = param1;
    param0->transforms.fadeEnd = param2;
    param0->transforms.fadeDelayCounter = 0;
    param0->transforms.fadeDelayLength = param3;
    param0->transforms.fadeTargetColor = param4;
}

void sub_0200872C(PokemonSpriteManager *param0, int param1, int param2, int param3, int param4)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->sprites[v0].active) {
            param0->sprites[v0].transforms.fadeActive = TRUE;
            param0->sprites[v0].transforms.fadeCurrent = param1;
            param0->sprites[v0].transforms.fadeEnd = param2;
            param0->sprites[v0].transforms.fadeDelayCounter = 0;
            param0->sprites[v0].transforms.fadeDelayLength = param3;
            param0->sprites[v0].transforms.fadeTargetColor = param4;
        }
    }
}

void sub_02008780(PokemonSprite *param0)
{
    param0->transforms.fadeActive = FALSE;
    param0->transforms.fadeCurrent = 0;
    param0->transforms.fadeEnd = 0;
    param0->transforms.fadeDelayCounter = 0;
    param0->transforms.fadeDelayLength = 0;
    param0->transforms.fadeTargetColor = 0;
    param0->needReloadPltt = TRUE;
}

BOOL sub_020087B4(PokemonSprite *param0)
{
    return param0->transforms.fadeActive == TRUE;
}

void sub_020087C8(PokemonSprite *param0, int param1)
{
    param0->transforms.yOffset = ((80 / 2) - param1) - ((((80 / 2) - param1) * param0->transforms.affineHeight) >> 8);
}

static inline void inline_02008900(u8 *param0, u8 *param1, u8 *param2, u8 *param3, u8 *param4, const SpriteAnimationFrame *param5)
{
    if (*param0) {
        if ((*param3) == 0) {
            (*param2)++;

            while (param5[*param2].spriteFrame < -1) {
                param4[*param2]++;

                if ((param5[*param2].frameDelay == param4[*param2]) || (param5[*param2].frameDelay == 0)) {
                    param4[*param2] = 0;
                    *param2++;
                } else {
                    *param2 = param5[*param2].spriteFrame * -1 - 2;
                }
            }

            if ((param5[*param2].spriteFrame == -1) || ((*param2) >= 10)) {
                (*param1) = 0;
                (*param0) = 0;
                return;
            }

            (*param1) = param5[*param2].spriteFrame;
            (*param3) = param5[*param2].frameDelay;
        } else {
            (*param3)--;
        }
    }
}

static void sub_020087DC(PokemonSprite *param0)
{
    if (param0->animActive) {
        if (param0->animFrameDelay == 0) {
            param0->currAnimFrame++;

            while (param0->animFrames[param0->currAnimFrame].spriteFrame < -1) {
                param0->animLoopTimers[param0->currAnimFrame]++;

                if ((param0->animFrames[param0->currAnimFrame].frameDelay == param0->animLoopTimers[param0->currAnimFrame]) || (param0->animFrames[param0->currAnimFrame].frameDelay == 0)) {
                    param0->animLoopTimers[param0->currAnimFrame] = 0;
                    param0->currAnimFrame++;
                } else {
                    param0->currAnimFrame = (param0->animFrames[param0->currAnimFrame].spriteFrame * -1) - 2;
                }
            }

            if (((param0->currAnimFrame) >= 10) || (param0->animFrames[param0->currAnimFrame].spriteFrame == -1)) {
                param0->currSpriteFrame = 0;
                param0->animActive = FALSE;
                param0->transforms.xOffset = 0;

                return;
            }

            param0->currSpriteFrame = param0->animFrames[param0->currAnimFrame].spriteFrame;
            param0->animFrameDelay = param0->animFrames[param0->currAnimFrame].frameDelay;
            param0->transforms.xOffset = param0->animFrames[param0->currAnimFrame].xOffset;
        } else {
            param0->animFrameDelay--;
        }
    }
}

static void sub_020088D8(PokemonSprite *param0)
{
    sub_020087DC(param0);
}

void sub_020088E0(UnkStruct_02008900 *param0, const SpriteAnimationFrame *param1)
{
    int v0;

    param0->unk_00 = 1;
    param0->unk_02 = 0;
    param0->unk_01 = param1[0].spriteFrame;
    param0->unk_03 = param1[0].frameDelay;
    param0->unk_10 = param1;

    for (v0 = 0; v0 < 10; v0++) {
        param0->unk_04[v0] = 0;
    }
}

int sub_02008900(UnkStruct_02008900 *param0)
{
    if (param0->unk_00) {
        inline_02008900(&param0->unk_00, &param0->unk_01, &param0->unk_02, &param0->unk_03, param0->unk_04, param0->unk_10);
        return param0->unk_01;
    }

    return -1;
}

void sub_020089A0(PokemonSprite *param0)
{
    param0->needReloadChar = TRUE;
    param0->needReloadPltt = TRUE;
}

void sub_020089B0(PokemonSprite *param0)
{
    param0->templateBackup = param0->template;
    param0->shadowBackup = param0->shadow;
}

void sub_02008A0C(PokemonSprite *param0)
{
    param0->template = param0->templateBackup;
    param0->shadow = param0->shadowBackup;
    param0->needReloadChar = TRUE;
    param0->needReloadPltt = TRUE;
}

void sub_02008A78(PokemonSpriteManager *param0, u32 param1, u32 param2)
{
    param0->charBaseAddr = param1;
    param0->charSize = param2;
}

void sub_02008A84(PokemonSpriteManager *param0, u32 param1, u32 param2)
{
    param0->plttBaseAddr = param1;
    param0->plttSize = param2;
}

PokemonSpriteTemplate *sub_02008A90(PokemonSprite *param0)
{
    return &param0->template;
}

void sub_02008A94(PokemonSpriteManager *param0)
{
    if (param0->needLoadImage) {
        param0->needLoadImage = FALSE;

        NNS_G2dInitImageProxy(&param0->imageProxy);

        param0->charData.H = 32;
        param0->charData.W = 32;
        param0->charData.szByte = param0->charSize;
        param0->charData.pRawData = param0->charRawData;

        NNS_G2dLoadImage2DMapping(&param0->charData, param0->charBaseAddr, NNS_G2D_VRAM_TYPE_3DMAIN, &param0->imageProxy);
    }

    if (param0->needLoadPltt) {
        param0->needLoadPltt = FALSE;

        NNS_G2dInitImagePaletteProxy(&param0->paletteProxy);

        param0->plttData.szByte = param0->plttSize;
        param0->plttData.pRawData = param0->plttRawData;

        NNS_G2dLoadPalette(&param0->plttData, param0->plttBaseAddr, NNS_G2D_VRAM_TYPE_3DMAIN, &param0->paletteProxy);
    }
}

void sub_02008B2C(PokemonSpriteManager *param0, int param1)
{
    param0->needG3Identity = param1;
}

BOOL sub_02008B38(PokemonSprite *param0)
{
    GF_ASSERT(param0 != NULL);
    return param0->active != FALSE;
}

void sub_02008B54(PokemonSpriteManager *param0, u32 param1)
{
    param0->flags |= param1;
}

void sub_02008B60(PokemonSpriteManager *param0, u32 param1)
{
    param0->flags &= (param1 ^ 0xffffffff);
}

static void sub_02008B78(PokemonSpriteManager *param0)
{
    NNSG2dCharacterData *v0;
    int v1, v2, v3;
    u8 *v4;
    void *v5;
    u8 v6 = 0;

    for (v1 = 0; v1 < 4; v1++) {
        if (param0->sprites[v1].active && param0->sprites[v1].needReloadChar) {
            param0->sprites[v1].needReloadChar = FALSE;

            v6 = 1;
            v5 = NARC_AllocAndReadWholeMemberByIndexPair(param0->sprites[v1].template.archive, param0->sprites[v1].template.character, param0->heapID);

            NNS_G2dGetUnpackedCharacterData(v5, &v0);

            param0->charData.pixelFmt = v0->pixelFmt;
            param0->charData.mapingType = v0->mapingType;
            param0->charData.characterFmt = v0->characterFmt;

            v4 = v0->pRawData;

            sub_020093A0(v4, param0->sprites[v1].template.archive);
            sub_020091C0(&param0->sprites[v1], v4);

            if (v1 == 3) {
                for (v3 = 0; v3 < 80; v3++) {
                    for (v2 = 0; v2 < 160 / 2; v2++) {
                        if (v2 < 160 / 4) {
                            if ((param0->sprites[v1].transforms.flipH) && (param0->sprites[v1].transforms.flipV)) {
                                param0->charRawData[v3 * 0x80 + v2 + 0x50] = sub_020091AC(v4[((80 - 1) - v3) * 0x50 + ((160 / 4 - 1) - v2)]);
                            } else if (param0->sprites[v1].transforms.flipH) {
                                param0->charRawData[v3 * 0x80 + v2 + 0x50] = sub_020091AC(v4[v3 * 0x50 + ((160 / 4 - 1) - v2)]);
                            } else if (param0->sprites[v1].transforms.flipV) {
                                param0->charRawData[v3 * 0x80 + v2 + 0x50] = v4[((80 - 1) - v3) * 0x50 + v2];
                            } else if (param0->sprites[v1].transforms.mosaicIntensity) {
                                if (v3 % (param0->sprites[v1].transforms.mosaicIntensity * 2)) {
                                    param0->charRawData[v3 * 0x80 + v2 + 0x50] = param0->charRawData[(v3 - 1) * 0x80 + v2 + 0x50];
                                } else {
                                    if (v2 % (param0->sprites[v1].transforms.mosaicIntensity)) {
                                        param0->charRawData[v3 * 0x80 + v2 + 0x50] = param0->charRawData[v3 * 0x80 + (v2 - 1) + 0x50];
                                    } else {
                                        param0->charRawData[v3 * 0x80 + v2 + 0x50] = ((v4[v3 * 0x50 + v2] & 0xf) | (v4[v3 * 0x50 + v2] & 0xf) << 4);
                                    }
                                }
                            } else {
                                param0->charRawData[v3 * 0x80 + v2 + 0x50] = v4[v3 * 0x50 + v2];
                            }
                        } else {
                            if ((param0->sprites[v1].transforms.flipH) && (param0->sprites[v1].transforms.flipV)) {
                                param0->charRawData[v3 * 0x80 + v2 + 0x2828] = sub_020091AC(v4[((80 - 1) - v3) * 0x50 + ((160 / 2 - 1) - (v2 - 160 / 4))]);
                            } else if (param0->sprites[v1].transforms.flipH) {
                                param0->charRawData[v3 * 0x80 + v2 + 0x2828] = sub_020091AC(v4[v3 * 0x50 + ((160 / 2 - 1) - (v2 - 160 / 4))]);
                            } else if (param0->sprites[v1].transforms.flipV) {
                                param0->charRawData[v3 * 0x80 + v2 + 0x2828] = v4[((80 - 1) - v3) * 0x50 + v2];
                            } else if (param0->sprites[v1].transforms.mosaicIntensity) {
                                if (v3 % (param0->sprites[v1].transforms.mosaicIntensity * 2)) {
                                    param0->charRawData[v3 * 0x80 + v2 + 0x2828] = param0->charRawData[(v3 - 1) * 0x80 + v2 + 0x2828];
                                } else {
                                    if (v2 % (param0->sprites[v1].transforms.mosaicIntensity)) {
                                        param0->charRawData[v3 * 0x80 + v2 + 0x2828] = param0->charRawData[v3 * 0x80 + (v2 - 1) + 0x2828];
                                    } else {
                                        param0->charRawData[v3 * 0x80 + v2 + 0x2828] = ((v4[v3 * 0x50 + v2] & 0xf) | (v4[v3 * 0x50 + v2] & 0xf) << 4);
                                    }
                                }
                            } else {
                                param0->charRawData[v3 * 0x80 + v2 + 0x2828] = v4[v3 * 0x50 + v2];
                            }
                        }
                    }
                }
            } else {
                for (v3 = 0; v3 < 80; v3++) {
                    for (v2 = 0; v2 < 160 / 2; v2++) {
                        if ((param0->sprites[v1].transforms.flipH) && (param0->sprites[v1].transforms.flipV)) {
                            if (v2 < 160 / 4) {
                                param0->charRawData[v3 * 0x80 + v2 + v1 * 0x2800] = sub_020091AC(v4[((80 - 1) - v3) * 0x50 + ((160 / 4 - 1) - v2)]);
                            } else {
                                param0->charRawData[v3 * 0x80 + v2 + v1 * 0x2800] = sub_020091AC(v4[((80 - 1) - v3) * 0x50 + ((160 / 2 - 1) - (v2 - 160 / 4))]);
                            }
                        } else if (param0->sprites[v1].transforms.flipH) {
                            if (v2 < 160 / 4) {
                                param0->charRawData[v3 * 0x80 + v2 + v1 * 0x2800] = sub_020091AC(v4[v3 * 0x50 + ((160 / 4 - 1) - v2)]);
                            } else {
                                param0->charRawData[v3 * 0x80 + v2 + v1 * 0x2800] = sub_020091AC(v4[v3 * 0x50 + ((160 / 2 - 1) - (v2 - 160 / 4))]);
                            }
                        } else if (param0->sprites[v1].transforms.flipV) {
                            param0->charRawData[v3 * 0x80 + v2 + v1 * 0x2800] = v4[((80 - 1) - v3) * 0x50 + v2];
                        } else if (param0->sprites[v1].transforms.mosaicIntensity) {
                            if (v3 % (param0->sprites[v1].transforms.mosaicIntensity * 2)) {
                                param0->charRawData[v3 * 0x80 + v2 + v1 * 0x2800] = param0->charRawData[(v3 - 1) * 0x80 + v2 + v1 * 0x2800];
                            } else {
                                if (v2 % (param0->sprites[v1].transforms.mosaicIntensity)) {
                                    param0->charRawData[v3 * 0x80 + v2 + v1 * 0x2800] = param0->charRawData[v3 * 0x80 + (v2 - 1) + v1 * 0x2800];
                                } else {
                                    param0->charRawData[v3 * 0x80 + v2 + v1 * 0x2800] = ((v4[v3 * 0x50 + v2] & 0xf) | (v4[v3 * 0x50 + v2] & 0xf) << 4);
                                }
                            }
                        } else {
                            param0->charRawData[v3 * 0x80 + v2 + v1 * 0x2800] = v4[v3 * 0x50 + v2];
                        }
                    }
                }
            }

            Heap_FreeToHeap(v5);
        }
    }

    param0->needLoadImage = v6;
}

static void sub_02008FC8(PokemonSpriteManager *param0)
{
    NNSG2dPaletteData *v0;
    int v1, v2, v3;
    u16 *v4;
    void *v5;
    u8 v6 = 0;

    for (v1 = 0; v1 < 4; v1++) {
        if (param0->sprites[v1].active && param0->sprites[v1].needReloadPltt) {
            param0->sprites[v1].needReloadPltt = FALSE;

            v6 = 1;
            v5 = NARC_AllocAndReadWholeMemberByIndexPair(param0->sprites[v1].template.archive, param0->sprites[v1].template.palette, param0->heapID);

            NNS_G2dGetUnpackedPaletteData(v5, &v0);

            param0->plttData.fmt = v0->fmt;
            v4 = v0->pRawData;

            for (v2 = 0; v2 < 0x10; v2++) {
                param0->plttRawData[v2 + 0x10 * v1] = v4[v2];
                param0->plttRawDataUnfaded[v2 + 0x10 * v1] = v4[v2];
            }

            Heap_FreeToHeap(v5);

            if (param0->sprites[v1].shadow.plttSlot) {
                v5 = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE, 252, param0->heapID);
                NNS_G2dGetUnpackedPaletteData(v5, &v0);
                v4 = v0->pRawData;

                for (v2 = 0; v2 < 0x10; v2++) {
                    param0->plttRawData[v2 + 0x10 * (3 + param0->sprites[v1].shadow.plttSlot)] = v4[v2];
                    param0->plttRawDataUnfaded[v2 + 0x10 * (3 + param0->sprites[v1].shadow.plttSlot)] = v4[v2];
                }

                Heap_FreeToHeap(v5);
            }
        }

        if ((param0->sprites[v1].active) && (param0->sprites[v1].transforms.fadeActive)) {
            if (param0->sprites[v1].transforms.fadeDelayCounter == 0) {
                v6 = 1;
                param0->sprites[v1].transforms.fadeDelayCounter = param0->sprites[v1].transforms.fadeDelayLength;

                BlendPalette((void *)&param0->plttRawDataUnfaded[0x10 * v1], (void *)&param0->plttRawData[0x10 * v1], 16, param0->sprites[v1].transforms.fadeCurrent, param0->sprites[v1].transforms.fadeTargetColor);

                if (param0->sprites[v1].shadow.plttSlot) {
                    BlendPalette((void *)&param0->plttRawDataUnfaded[0x10 * (3 + param0->sprites[v1].shadow.plttSlot)], (void *)&param0->plttRawData[0x10 * (3 + param0->sprites[v1].shadow.plttSlot)], 16, param0->sprites[v1].transforms.fadeCurrent, param0->sprites[v1].transforms.fadeTargetColor);
                }

                if (param0->sprites[v1].transforms.fadeCurrent == param0->sprites[v1].transforms.fadeEnd) {
                    param0->sprites[v1].transforms.fadeActive = FALSE;
                } else if (param0->sprites[v1].transforms.fadeCurrent > param0->sprites[v1].transforms.fadeEnd) {
                    param0->sprites[v1].transforms.fadeCurrent--;
                } else {
                    param0->sprites[v1].transforms.fadeCurrent++;
                }
            } else {
                param0->sprites[v1].transforms.fadeDelayCounter--;
            }
        }
    }

    param0->needLoadPltt = v6;
}

static u8 sub_020091AC(u8 param0)
{
    u8 v0 = (param0 & 0xf0) >> 4;
    v0 |= (param0 & 0xf) << 4;

    return v0;
}

static void sub_020091C0(PokemonSprite *param0, u8 *param1)
{
    if (param0->template.spindaSpots == 0) {
        return;
    }

    sub_020091D8(param1, param0->template.personality, 1);
}

void sub_020091D8(u8 *param0, u32 param1, BOOL param2)
{
    const UnkStruct_020E4E62 *v0;
    int v1;
    u8 v2, v3, v4;
    int v5;
    u32 v6 = param1;

    for (v1 = 0; v1 < 4; v1++) {
        v0 = Unk_021007A4[v1];
        v4 = 0;

        while (v0[v4].unk_00 != 0xff) {
            v2 = v0[v4].unk_00 + ((param1 & 0xf) - 8);
            v3 = v0[v4].unk_01 + (((param1 & 0xf0) >> 4) - 8);
            v5 = v2 / 2 + v3 * 80;

            if (v2 & 1) {
                if (((param0[v5] & 0xf0) >= 0x10) && ((param0[v5] & 0xf0) <= 0x30)) {
                    param0[v5] += 0x50;
                }
            } else {
                if (((param0[v5] & 0xf) >= 0x1) && ((param0[v5] & 0xf) <= 0x3)) {
                    param0[v5] += 0x5;
                }
            }

            v4++;
        }

        param1 = param1 >> 8;
    }

    param1 = v6;

    if (param2) {
        for (v1 = 0; v1 < 4; v1++) {
            v0 = Unk_021007A4[v1];
            v4 = 0;

            while (v0[v4].unk_00 != 0xff) {
                v2 = (v0[v4].unk_00 - 14) + ((param1 & 0xf) - 8) + 80;
                v3 = v0[v4].unk_01 + (((param1 & 0xf0) >> 4) - 8);
                v5 = v2 / 2 + v3 * 80;

                if (v2 & 1) {
                    if (((param0[v5] & 0xf0) >= 0x10) && ((param0[v5] & 0xf0) <= 0x30)) {
                        param0[v5] += 0x50;
                    }
                } else {
                    if (((param0[v5] & 0xf) >= 0x1) && ((param0[v5] & 0xf) <= 0x3)) {
                        param0[v5] += 0x5;
                    }
                }

                v4++;
            }

            param1 = param1 >> 8;
        }
    }
}

static u16 sub_02009328(u32 *param0)
{
    param0[0] = param0[0] * 1103515245L + 24691;
    return (u16)(param0[0] / 65536L);
}

void sub_02009348(u8 *param0)
{
    int v0;
    u16 *v1;
    u32 v2;

    v1 = (u16 *)param0;
    v2 = v1[0];

    for (v0 = 0; v0 < (20 * 10 * 0x20) / 2; v0++) {
        v1[v0] ^= v2;
        sub_02009328(&v2);
    }
}

void sub_02009370(u8 *param0)
{
    int v0;
    u16 *v1;
    u32 v2;

    v1 = (u16 *)param0;
    v2 = v1[(20 * 10 * 0x20) / 2 - 1];

    for (v0 = (20 * 10 * 0x20) / 2 - 1; v0 > -1; v0--) {
        v1[v0] ^= v2;
        sub_02009328(&v2);
    }
}

void sub_020093A0(u8 *param0, int param1)
{
    if ((param1 == 165) || (param1 == 166)) {
        sub_02009370(param0);
    } else {
        sub_02009348(param0);
    }
}
