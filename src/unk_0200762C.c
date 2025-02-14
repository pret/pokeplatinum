#include "unk_0200762C.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/archived_sprite.h"
#include "struct_defs/pokemon_sprite.h"
#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/struct_02007768.h"
#include "struct_defs/struct_02008900.h"

#include "heap.h"
#include "inlines.h"
#include "narc.h"
#include "palette.h"

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

void *sub_0200762C(int param0);
void sub_02007768(UnkStruct_02007768 *param0);
void sub_02007B6C(UnkStruct_02007768 *param0);
PokemonSprite *sub_02007C34(UnkStruct_02007768 *param0, ArchivedSprite *param1, int param2, int param3, int param4, int param5, SpriteAnimationFrame *param6, UnkFuncPtr_02007C34 *param7);
PokemonSprite *sub_02007C7C(UnkStruct_02007768 *param0, ArchivedSprite *param1, int param2, int param3, int param4, int param5, int param6, SpriteAnimationFrame *param7, UnkFuncPtr_02007C34 *param8);
void sub_02007DC8(PokemonSprite *param0);
void sub_02007DD4(UnkStruct_02007768 *param0);
void sub_02007B98(PokemonSprite *param0, int param1);
void sub_02007C10(PokemonSprite *param0, SpriteAnimationFrame *param1);
BOOL sub_02007C24(PokemonSprite *param0);
void sub_02007DEC(PokemonSprite *param0, int param1, int param2);
int sub_020080C0(PokemonSprite *param0, int param1);
void sub_02008274(PokemonSprite *param0, int param1, int param2);
void sub_020086D4(PokemonSprite *param0, int param1, int param2, int param3, int param4);
void sub_020086FC(PokemonSprite *param0, int param1, int param2, int param3, int param4);
void sub_0200872C(UnkStruct_02007768 *param0, int param1, int param2, int param3, int param4);
void sub_02008780(PokemonSprite *param0);
BOOL sub_020087B4(PokemonSprite *param0);
void sub_020087C8(PokemonSprite *param0, int param1);
void sub_020089A0(PokemonSprite *param0);
void sub_020089B0(PokemonSprite *param0);
void sub_02008A0C(PokemonSprite *param0);
void sub_02008A78(UnkStruct_02007768 *param0, u32 param1, u32 param2);
void sub_02008A84(UnkStruct_02007768 *param0, u32 param1, u32 param2);
ArchivedSprite *sub_02008A90(PokemonSprite *param0);
void sub_02008A94(UnkStruct_02007768 *param0);
void sub_02008B2C(UnkStruct_02007768 *param0, int param1);
BOOL sub_02008B38(PokemonSprite *param0);
void sub_02008B54(UnkStruct_02007768 *param0, u32 param1);
void sub_02008B60(UnkStruct_02007768 *param0, u32 param1);
void sub_020091D8(u8 *param0, u32 param1, BOOL param2);
void sub_02009348(u8 *param0);
static void sub_02008B78(UnkStruct_02007768 *param0);
static void sub_02008FC8(UnkStruct_02007768 *param0);
static void sub_020088D8(PokemonSprite *param0);
static u8 sub_020091AC(u8 param0);
static void sub_020091C0(PokemonSprite *param0, u8 *param1);

void *sub_0200762C(int param0)
{
    UnkStruct_02007768 *v0;
    int v1, v2, v3, v4;
    NNSG2dCharacterData *v5;
    u8 *v6;
    void *v7;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_02007768));

    v0->unk_2E8 = param0;
    v0->unk_330 = 0;
    v0->unk_2EC = 0;
    v0->unk_2F0 = (32 * 32 * 0x20);
    v0->unk_2F4 = 0;
    v0->unk_2F8 = (0x20 * 4);
    v0->unk_2FC = Heap_AllocFromHeap(param0, (32 * 32 * 0x20));
    v0->unk_300 = Heap_AllocFromHeap(param0, (0x20 * 6));

    MI_CpuClearFast(v0->unk_300, sizeof(0x20 * 6));
    v0->unk_304 = Heap_AllocFromHeap(param0, (0x20 * 6));
    MI_CpuClearFast(v0->unk_304, sizeof(0x20 * 6));

    for (v1 = 0; v1 < 4; v1++) {
        MI_CpuClearFast(&v0->unk_00[v1], sizeof(PokemonSprite));
    }

    NNS_G2dSetupSoftwareSpriteCamera();

    v0->unk_333 = 0;

    v7 = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE, 251, v0->unk_2E8);
    NNS_G2dGetUnpackedCharacterData(v7, &v5);

    v0->unk_308.pixelFmt = v5->pixelFmt;
    v0->unk_308.mapingType = v5->mapingType;
    v0->unk_308.characterFmt = v5->characterFmt;
    v6 = v5->pRawData;

    sub_02009348(v6);
    MI_CpuFill8(&v0->unk_2FC[0], v6[0], (32 * 32 * 0x20));

    for (v4 = 0; v4 < 80; v4++) {
        for (v3 = 0; v3 < 160 / 4; v3++) {
            v0->unk_2FC[v4 * 0x80 + v3 + 0x5050] = v6[v4 * 0x50 + v3];
        }
    }

    Heap_FreeToHeap(v7);

    v0->unk_331 = 1;
    v0->unk_332 = 1;

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

void sub_02007768(UnkStruct_02007768 *param0)
{
    int v0;
    int v1, v2;
    int v3, v4, v5, v6;

    sub_02008B78(param0);
    sub_02008FC8(param0);

    NNS_G3dGeFlushBuffer();

    G3_PushMtx();
    G3_TexImageParam(param0->unk_2B0.attr.fmt, GX_TEXGEN_TEXCOORD, param0->unk_2B0.attr.sizeS, param0->unk_2B0.attr.sizeT, GX_TEXREPEAT_NONE, GX_TEXFLIP_NONE, param0->unk_2B0.attr.plttUse, param0->unk_2EC);

    for (v0 = 0; v0 < 4; v0++) {
        if ((param0->unk_00[v0].unk_00_0) && (param0->unk_00[v0].unk_24.unk_30_0 == 0) && (param0->unk_00[v0].unk_24.unk_30_11 == 0)) {
            if (param0->unk_00[v0].unk_68 != NULL) {
                param0->unk_00[v0].unk_68(&param0->unk_00[v0], &param0->unk_00[v0].unk_24);
            }

            NNS_G3dGeFlushBuffer();

            if (param0->unk_333 != 1) {
                G3_Identity();
            }

            sub_020088D8(&param0->unk_00[v0]);

            G3_TexPlttBase((u32)(param0->unk_2F4 + 32 * v0), param0->unk_2B0.attr.fmt);
            G3_Translate((param0->unk_00[v0].unk_24.unk_00 + param0->unk_00[v0].unk_24.unk_1C) << FX32_SHIFT, (param0->unk_00[v0].unk_24.unk_02 + param0->unk_00[v0].unk_24.unk_1E) << FX32_SHIFT, param0->unk_00[v0].unk_24.unk_04 << FX32_SHIFT);
            G3_RotX(FX_SinIdx(param0->unk_00[v0].unk_24.unk_14), FX_CosIdx(param0->unk_00[v0].unk_24.unk_14));
            G3_RotY(FX_SinIdx(param0->unk_00[v0].unk_24.unk_16), FX_CosIdx(param0->unk_00[v0].unk_24.unk_16));
            G3_RotZ(FX_SinIdx(param0->unk_00[v0].unk_24.unk_18), FX_CosIdx(param0->unk_00[v0].unk_24.unk_18));
            G3_Translate(-((param0->unk_00[v0].unk_24.unk_00 + param0->unk_00[v0].unk_24.unk_1C) << FX32_SHIFT), -((param0->unk_00[v0].unk_24.unk_02 + param0->unk_00[v0].unk_24.unk_1E) << FX32_SHIFT), -(param0->unk_00[v0].unk_24.unk_04 << FX32_SHIFT));
            G3_MaterialColorDiffAmb(GX_RGB(param0->unk_00[v0].unk_24.unk_2C_0, param0->unk_00[v0].unk_24.unk_2C_5, param0->unk_00[v0].unk_24.unk_2C_10), GX_RGB(param0->unk_00[v0].unk_24.unk_2C_15, param0->unk_00[v0].unk_24.unk_2C_20, param0->unk_00[v0].unk_24.unk_2C_25), 1);
            G3_MaterialColorSpecEmi(GX_RGB(16, 16, 16), GX_RGB(0, 0, 0), 0);
            G3_PolygonAttr(GX_LIGHTMASK_NONE, GX_POLYGONMODE_MODULATE, GX_CULL_NONE, param0->unk_00[v0].unk_00_1, param0->unk_00[v0].unk_24.unk_30_2, 0);

            if (param0->unk_00[v0].unk_24.unk_30_1) {
                v3 = Unk_020E4ECC[v0][param0->unk_00[v0].unk_5B][0] + param0->unk_00[v0].unk_24.unk_20;
                v5 = Unk_020E4ECC[v0][param0->unk_00[v0].unk_5B][0] + param0->unk_00[v0].unk_24.unk_20 + param0->unk_00[v0].unk_24.unk_22;
                v4 = Unk_020E4ECC[v0][param0->unk_00[v0].unk_5B][1] + param0->unk_00[v0].unk_24.unk_21;
                v6 = Unk_020E4ECC[v0][param0->unk_00[v0].unk_5B][1] + param0->unk_00[v0].unk_24.unk_21 + param0->unk_00[v0].unk_24.unk_23;
                NNS_G2dDrawSpriteFast(param0->unk_00[v0].unk_24.unk_00 - 80 / 2 + param0->unk_00[v0].unk_24.unk_20 + param0->unk_00[v0].unk_24.unk_08, param0->unk_00[v0].unk_24.unk_02 - 80 / 2 + param0->unk_00[v0].unk_24.unk_21 + param0->unk_00[v0].unk_24.unk_0A - param0->unk_00[v0].unk_6C.unk_02, param0->unk_00[v0].unk_24.unk_04 + param0->unk_00[v0].unk_24.unk_0C, param0->unk_00[v0].unk_24.unk_22, param0->unk_00[v0].unk_24.unk_23, v3, v4, v5, v6);
            } else {
                v1 = (80 * param0->unk_00[v0].unk_24.unk_10) >> 8;
                v2 = (80 * param0->unk_00[v0].unk_24.unk_12) >> 8;
                v3 = Unk_020E4ECC[v0][param0->unk_00[v0].unk_5B][0];
                v5 = Unk_020E4ECC[v0][param0->unk_00[v0].unk_5B][2];
                v4 = Unk_020E4ECC[v0][param0->unk_00[v0].unk_5B][1];
                v6 = Unk_020E4ECC[v0][param0->unk_00[v0].unk_5B][3];
                NNS_G2dDrawSpriteFast(param0->unk_00[v0].unk_24.unk_00 - v1 / 2 + param0->unk_00[v0].unk_24.unk_08, param0->unk_00[v0].unk_24.unk_02 - v2 / 2 + param0->unk_00[v0].unk_24.unk_0A - param0->unk_00[v0].unk_6C.unk_02, param0->unk_00[v0].unk_24.unk_04 + param0->unk_00[v0].unk_24.unk_0C, v1, v2, v3, v4, v5, v6);
            }

            if ((param0->unk_00[v0].unk_6C.unk_00_0) && (param0->unk_00[v0].unk_6C.unk_00_5) && (param0->unk_00[v0].unk_24.unk_30_1 == 0) && ((param0->unk_334 & 0x1) == 0)) {
                if (param0->unk_333 != 1) {
                    G3_Identity();
                }

                G3_TexPlttBase((u32)(param0->unk_2F4 + 32 * (3 + param0->unk_00[v0].unk_6C.unk_00_0)), param0->unk_2B0.attr.fmt);

                if (param0->unk_00[v0].unk_6C.unk_00_4) {
                    v1 = (64 * param0->unk_00[v0].unk_24.unk_10) >> 8;
                    v2 = (16 * param0->unk_00[v0].unk_24.unk_12) >> 8;
                } else {
                    v1 = 64;
                    v2 = 16;
                }

                if (param0->unk_00[v0].unk_6C.unk_00_2) {
                    param0->unk_00[v0].unk_6C.unk_04 = param0->unk_00[v0].unk_24.unk_00 + param0->unk_00[v0].unk_24.unk_08 + param0->unk_00[v0].unk_6C.unk_08;
                }

                if (param0->unk_00[v0].unk_6C.unk_00_3) {
                    param0->unk_00[v0].unk_6C.unk_06 = param0->unk_00[v0].unk_24.unk_02 + param0->unk_00[v0].unk_24.unk_0A + param0->unk_00[v0].unk_6C.unk_0A;
                }

                v3 = Unk_020E4D50[param0->unk_00[v0].unk_6C.unk_00_5][0];
                v4 = Unk_020E4D50[param0->unk_00[v0].unk_6C.unk_00_5][1];
                v5 = Unk_020E4D50[param0->unk_00[v0].unk_6C.unk_00_5][2];
                v6 = Unk_020E4D50[param0->unk_00[v0].unk_6C.unk_00_5][3];

                NNS_G2dDrawSpriteFast(param0->unk_00[v0].unk_6C.unk_04 - v1 / 2, param0->unk_00[v0].unk_6C.unk_06 - v2 / 2, -1000, v1, v2, v3, v4, v5, v6);
            }
        }
    }

    G3_PopMtx(1);
}

void sub_02007B6C(UnkStruct_02007768 *param0)
{
    Heap_FreeToHeap(param0->unk_2FC);
    Heap_FreeToHeap(param0->unk_300);
    Heap_FreeToHeap(param0->unk_304);
    Heap_FreeToHeap(param0);
}

void sub_02007B98(PokemonSprite *param0, int param1)
{
    int v0;

    param0->unk_59 = 0;

    for (v0 = 0; v0 < 10; v0++) {
        param0->unk_5C[v0] = 0;
    }

    if (param0->unk_84[param0->unk_59].spriteFrame == -1) {
        param0->unk_5B = 0;
    } else {
        param0->unk_58 = 1;
        param0->unk_5B = param0->unk_84[param0->unk_59].spriteFrame;
        param0->unk_5A = param0->unk_84[param0->unk_59].frameDelay;
        param0->unk_24.unk_08 = param0->unk_84[param0->unk_59].xOffset;
    }
}

void sub_02007C10(PokemonSprite *param0, SpriteAnimationFrame *param1)
{
    MI_CpuCopy8(param1, &param0->unk_84, sizeof(SpriteAnimationFrame) * 10);
}

BOOL sub_02007C24(PokemonSprite *param0)
{
    return param0->unk_58 != 0;
}

PokemonSprite *sub_02007C34(UnkStruct_02007768 *param0, ArchivedSprite *param1, int param2, int param3, int param4, int param5, SpriteAnimationFrame *param6, UnkFuncPtr_02007C34 *param7)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_00[v0].unk_00_0 == 0) {
            break;
        }
    }

    GF_ASSERT(v0 != 4);

    return sub_02007C7C(param0, param1, param2, param3, param4, param5, v0, param6, param7);
}

PokemonSprite *sub_02007C7C(UnkStruct_02007768 *param0, ArchivedSprite *param1, int param2, int param3, int param4, int param5, int param6, SpriteAnimationFrame *param7, UnkFuncPtr_02007C34 *param8)
{
    GF_ASSERT(param0->unk_00[param6].unk_00_0 == 0);

    MI_CpuClearFast(&param0->unk_00[param6], sizeof(PokemonSprite));

    param0->unk_00[param6].unk_00_0 = 1;
    param0->unk_00[param6].unk_00_7 = 1;
    param0->unk_00[param6].unk_00_8 = 1;
    param0->unk_00[param6].unk_00_1 = param5;
    param0->unk_00[param6].unk_04 = *param1;
    param0->unk_00[param6].unk_14 = *param1;
    param0->unk_00[param6].unk_24.unk_00 = param2;
    param0->unk_00[param6].unk_24.unk_02 = param3;
    param0->unk_00[param6].unk_24.unk_04 = param4;
    param0->unk_00[param6].unk_24.unk_10 = 0x100;
    param0->unk_00[param6].unk_24.unk_12 = 0x100;
    param0->unk_00[param6].unk_24.unk_30_2 = 31;
    param0->unk_00[param6].unk_24.unk_2C_0 = 31;
    param0->unk_00[param6].unk_24.unk_2C_5 = 31;
    param0->unk_00[param6].unk_24.unk_2C_10 = 31;
    param0->unk_00[param6].unk_24.unk_2C_15 = 16;
    param0->unk_00[param6].unk_24.unk_2C_20 = 16;
    param0->unk_00[param6].unk_24.unk_2C_25 = 16;
    param0->unk_00[param6].unk_68 = param8;
    param0->unk_00[param6].unk_6C.unk_04 = param2;
    param0->unk_00[param6].unk_6C.unk_06 = param3;
    param0->unk_00[param6].unk_6C.unk_00_2 = 1;
    param0->unk_00[param6].unk_6C.unk_00_3 = 1;
    param0->unk_00[param6].unk_6C.unk_00_4 = 1;

    if (param7 != NULL) {
        MI_CpuCopy8(param7, &param0->unk_00[param6].unk_84, sizeof(SpriteAnimationFrame) * 10);
    }

    return &param0->unk_00[param6];
}

void sub_02007DC8(PokemonSprite *param0)
{
    param0->unk_00_0 = 0;
}

void sub_02007DD4(UnkStruct_02007768 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_02007DC8(&param0->unk_00[v0]);
    }
}

void sub_02007DEC(PokemonSprite *param0, int param1, int param2)
{
    switch (param1) {
    case 0:
        param0->unk_24.unk_00 = param2;
        break;
    case 1:
        param0->unk_24.unk_02 = param2;
        break;
    case 2:
        param0->unk_24.unk_04 = param2;
        break;
    case 3:
        param0->unk_24.unk_08 = param2;
        break;
    case 4:
        param0->unk_24.unk_0A = param2;
        break;
    case 5:
        param0->unk_24.unk_0C = param2;
        break;
    case 6:
        param0->unk_24.unk_30_0 = param2;
        break;
    case 7:
        param0->unk_24.unk_14 = param2;
        break;
    case 8:
        param0->unk_24.unk_16 = param2;
        break;
    case 9:
        param0->unk_24.unk_18 = param2;
        break;
    case 10:
        param0->unk_24.unk_1C = param2;
        break;
    case 11:
        param0->unk_24.unk_1E = param2;
        break;
    case 12:
        param0->unk_24.unk_10 = param2;
        break;
    case 13:
        param0->unk_24.unk_12 = param2;
        break;
    case 14:
        param0->unk_24.unk_30_1 = param2;
        break;
    case 15:
        param0->unk_24.unk_20 = param2;
        break;
    case 16:
        param0->unk_24.unk_21 = param2;
        break;
    case 17:
        param0->unk_24.unk_22 = param2;
        break;
    case 18:
        param0->unk_24.unk_23 = param2;
        break;
    case 19:
        param0->unk_6C.unk_04 = param2;
        break;
    case 20:
        param0->unk_6C.unk_06 = param2;
        break;
    case 21:
        param0->unk_6C.unk_08 = param2;
        break;
    case 22:
        param0->unk_6C.unk_0A = param2;
        break;
    case 23:
        param0->unk_24.unk_30_2 = param2;
        break;
    case 24:
        param0->unk_24.unk_2C_0 = param2;
        break;
    case 25:
        param0->unk_24.unk_2C_5 = param2;
        break;
    case 26:
        param0->unk_24.unk_2C_10 = param2;
        break;
    case 27:
        param0->unk_24.unk_2C_15 = param2;
        break;
    case 28:
        param0->unk_24.unk_2C_20 = param2;
        break;
    case 29:
        param0->unk_24.unk_2C_25 = param2;
        break;
    case 30:
        param0->unk_24.unk_30_12 = param2;
        param0->unk_00_8 = 1;
        break;
    case 31:
        param0->unk_24.unk_28 = param2;
        param0->unk_00_8 = 1;
        break;
    case 32:
        param0->unk_24.unk_24 = param2;
        param0->unk_00_8 = 1;
        break;
    case 33:
        param0->unk_24.unk_25 = param2;
        param0->unk_00_8 = 1;
        break;
    case 34:
        param0->unk_24.unk_26 = param2;
        break;
    case 35:
        param0->unk_24.unk_30_9 = param2;
        param0->unk_00_7 = 1;
        break;
    case 36:
        param0->unk_24.unk_30_10 = param2;
        param0->unk_00_7 = 1;
        break;
    case 37:
        param0->unk_24.unk_30_11 = param2;
        break;
    case 38:
        param0->unk_5B = param2;
        break;
    case 40:
        param0->unk_24.unk_30_13 = param2;
        param0->unk_00_7 = 1;
        break;
    case 41:
        param0->unk_6C.unk_02 = param2;
        break;
    case 42:
        param0->unk_6C.unk_00_0 = param2;
        param0->unk_00_8 = 1;
        break;
    case 43:
        param0->unk_6C.unk_00_2 = param2;
        break;
    case 44:
        param0->unk_6C.unk_00_3 = param2;
        break;
    case 45:
        param0->unk_6C.unk_00_4 = param2;
        break;
    case 46:
        param0->unk_6C.unk_00_5 = param2;
        break;
    }
}

int sub_020080C0(PokemonSprite *param0, int param1)
{
    switch (param1) {
    case 0:
        return param0->unk_24.unk_00;
    case 1:
        return param0->unk_24.unk_02;
    case 2:
        return param0->unk_24.unk_04;
    case 3:
        return param0->unk_24.unk_08;
    case 4:
        return param0->unk_24.unk_0A;
    case 5:
        return param0->unk_24.unk_0C;
    case 6:
        return param0->unk_24.unk_30_0;
    case 7:
        return param0->unk_24.unk_14;
    case 8:
        return param0->unk_24.unk_16;
    case 9:
        return param0->unk_24.unk_18;
    case 10:
        return param0->unk_24.unk_1C;
    case 11:
        return param0->unk_24.unk_1E;
    case 12:
        return param0->unk_24.unk_10;
    case 13:
        return param0->unk_24.unk_12;
    case 14:
        return param0->unk_24.unk_30_1;
    case 15:
        return param0->unk_24.unk_20;
    case 16:
        return param0->unk_24.unk_21;
    case 17:
        return param0->unk_24.unk_22;
    case 18:
        return param0->unk_24.unk_23;
    case 19:
        return param0->unk_6C.unk_04;
    case 20:
        return param0->unk_6C.unk_06;
    case 21:
        return param0->unk_6C.unk_08;
    case 22:
        return param0->unk_6C.unk_0A;
    case 23:
        return param0->unk_24.unk_30_2;
    case 24:
        return param0->unk_24.unk_2C_0;
    case 25:
        return param0->unk_24.unk_2C_5;
    case 26:
        return param0->unk_24.unk_2C_10;
    case 27:
        return param0->unk_24.unk_2C_15;
    case 28:
        return param0->unk_24.unk_2C_20;
    case 29:
        return param0->unk_24.unk_2C_25;
    case 30:
        return param0->unk_24.unk_30_12;
    case 31:
        return param0->unk_24.unk_28;
    case 32:
        return param0->unk_24.unk_24;
    case 33:
        return param0->unk_24.unk_25;
    case 34:
        return param0->unk_24.unk_26;
    case 35:
        return param0->unk_24.unk_30_9;
    case 36:
        return param0->unk_24.unk_30_10;
    case 37:
        return param0->unk_24.unk_30_11;
    case 38:
        return param0->unk_5B;
    case 40:
        return param0->unk_24.unk_30_13;
    case 41:
        return param0->unk_6C.unk_02;
    case 42:
        return param0->unk_6C.unk_00_0;
    case 43:
        return param0->unk_6C.unk_00_2;
    case 44:
        return param0->unk_6C.unk_00_3;
    case 45:
        return param0->unk_6C.unk_00_4;
        break;
    case 46:
        return param0->unk_6C.unk_00_5;
        break;
    }

    GF_ASSERT(FALSE);
    return 0;
}

void sub_02008274(PokemonSprite *param0, int param1, int param2)
{
    switch (param1) {
    case 0:
        param0->unk_24.unk_00 += param2;
        break;
    case 1:
        param0->unk_24.unk_02 += param2;
        break;
    case 2:
        param0->unk_24.unk_04 += param2;
        break;
    case 3:
        param0->unk_24.unk_08 += param2;
        break;
    case 4:
        param0->unk_24.unk_0A += param2;
        break;
    case 5:
        param0->unk_24.unk_0C += param2;
        break;
    case 6:
        param0->unk_24.unk_30_0 += param2;
        break;
    case 7:
        param0->unk_24.unk_14 += param2;
        break;
    case 8:
        param0->unk_24.unk_16 += param2;
        break;
    case 9:
        param0->unk_24.unk_18 += param2;
        break;
    case 10:
        param0->unk_24.unk_1C += param2;
        break;
    case 11:
        param0->unk_24.unk_1E += param2;
        break;
    case 12:
        param0->unk_24.unk_10 += param2;
        break;
    case 13:
        param0->unk_24.unk_12 += param2;
        break;
    case 14:
        param0->unk_24.unk_30_1 += param2;
        break;
    case 15:
        param0->unk_24.unk_20 += param2;
        break;
    case 16:
        param0->unk_24.unk_21 += param2;
        break;
    case 17:
        param0->unk_24.unk_22 += param2;
        break;
    case 18:
        param0->unk_24.unk_23 += param2;
        break;
    case 19:
        param0->unk_6C.unk_04 += param2;
        break;
    case 20:
        param0->unk_6C.unk_06 += param2;
        break;
    case 21:
        param0->unk_6C.unk_08 += param2;
        break;
    case 22:
        param0->unk_6C.unk_0A += param2;
        break;
    case 23:
        param0->unk_24.unk_30_2 += param2;
        break;
    case 24:
        param0->unk_24.unk_2C_0 += param2;
        break;
    case 25:
        param0->unk_24.unk_2C_5 += param2;
        break;
    case 26:
        param0->unk_24.unk_2C_10 += param2;
        break;
    case 27:
        param0->unk_24.unk_2C_15 += param2;
        break;
    case 28:
        param0->unk_24.unk_2C_20 += param2;
        break;
    case 29:
        param0->unk_24.unk_2C_25 += param2;
        break;
    case 30:
        param0->unk_24.unk_30_12 += param2;
        param0->unk_00_8 = 1;
        break;
    case 31:
        param0->unk_24.unk_28 += param2;
        param0->unk_00_8 = 1;
        break;
    case 32:
        param0->unk_24.unk_24 += param2;
        param0->unk_00_8 = 1;
        break;
    case 33:
        param0->unk_24.unk_25 += param2;
        param0->unk_00_8 = 1;
        break;
    case 34:
        param0->unk_24.unk_26 += param2;
        break;
    case 35:
        param0->unk_24.unk_30_9 += param2;
        param0->unk_00_7 = 1;
        break;
    case 36:
        param0->unk_24.unk_30_10 += param2;
        param0->unk_00_7 = 1;
        break;
    case 37:
        param0->unk_24.unk_30_11 += param2;
        break;
    case 38:
        param0->unk_5B += param2;
        break;
    case 40:
        param0->unk_24.unk_30_13 += param2;
        param0->unk_00_7 = 1;
        break;
    case 41:
        param0->unk_6C.unk_02 += param2;
        break;
    case 42:
        param0->unk_6C.unk_00_0 += param2;
        param0->unk_00_8 = 1;
        break;
    case 43:
        param0->unk_6C.unk_00_2 += param2;
        break;
    case 44:
        param0->unk_6C.unk_00_3 += param2;
        break;
    case 45:
        param0->unk_6C.unk_00_4 += param2;
        break;
    case 46:
        param0->unk_6C.unk_00_5 += param2;
        break;
    }
}

void sub_020086D4(PokemonSprite *param0, int param1, int param2, int param3, int param4)
{
    param0->unk_24.unk_30_1 = 1;
    param0->unk_24.unk_20 = param1;
    param0->unk_24.unk_21 = param2;
    param0->unk_24.unk_22 = param3;
    param0->unk_24.unk_23 = param4;
}

void sub_020086FC(PokemonSprite *param0, int param1, int param2, int param3, int param4)
{
    param0->unk_24.unk_30_12 = 1;
    param0->unk_24.unk_24 = param1;
    param0->unk_24.unk_25 = param2;
    param0->unk_24.unk_26 = 0;
    param0->unk_24.unk_27 = param3;
    param0->unk_24.unk_28 = param4;
}

void sub_0200872C(UnkStruct_02007768 *param0, int param1, int param2, int param3, int param4)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_00[v0].unk_00_0) {
            param0->unk_00[v0].unk_24.unk_30_12 = 1;
            param0->unk_00[v0].unk_24.unk_24 = param1;
            param0->unk_00[v0].unk_24.unk_25 = param2;
            param0->unk_00[v0].unk_24.unk_26 = 0;
            param0->unk_00[v0].unk_24.unk_27 = param3;
            param0->unk_00[v0].unk_24.unk_28 = param4;
        }
    }
}

void sub_02008780(PokemonSprite *param0)
{
    param0->unk_24.unk_30_12 = 0;
    param0->unk_24.unk_24 = 0;
    param0->unk_24.unk_25 = 0;
    param0->unk_24.unk_26 = 0;
    param0->unk_24.unk_27 = 0;
    param0->unk_24.unk_28 = 0;
    param0->unk_00_8 = 1;
}

BOOL sub_020087B4(PokemonSprite *param0)
{
    return param0->unk_24.unk_30_12 == 1;
}

void sub_020087C8(PokemonSprite *param0, int param1)
{
    param0->unk_24.unk_0A = ((80 / 2) - param1) - ((((80 / 2) - param1) * param0->unk_24.unk_12) >> 8);
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
    if (param0->unk_58) {
        if (param0->unk_5A == 0) {
            param0->unk_59++;

            while (param0->unk_84[param0->unk_59].spriteFrame < -1) {
                param0->unk_5C[param0->unk_59]++;

                if ((param0->unk_84[param0->unk_59].frameDelay == param0->unk_5C[param0->unk_59]) || (param0->unk_84[param0->unk_59].frameDelay == 0)) {
                    param0->unk_5C[param0->unk_59] = 0;
                    param0->unk_59++;
                } else {
                    param0->unk_59 = (param0->unk_84[param0->unk_59].spriteFrame * -1) - 2;
                }
            }

            if (((param0->unk_59) >= 10) || (param0->unk_84[param0->unk_59].spriteFrame == -1)) {
                param0->unk_5B = 0;
                param0->unk_58 = 0;
                param0->unk_24.unk_08 = 0;

                return;
            }

            param0->unk_5B = param0->unk_84[param0->unk_59].spriteFrame;
            param0->unk_5A = param0->unk_84[param0->unk_59].frameDelay;
            param0->unk_24.unk_08 = param0->unk_84[param0->unk_59].xOffset;
        } else {
            param0->unk_5A--;
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
    param0->unk_00_7 = 1;
    param0->unk_00_8 = 1;
}

void sub_020089B0(PokemonSprite *param0)
{
    param0->unk_14 = param0->unk_04;
    param0->unk_78 = param0->unk_6C;
}

void sub_02008A0C(PokemonSprite *param0)
{
    param0->unk_04 = param0->unk_14;
    param0->unk_6C = param0->unk_78;
    param0->unk_00_7 = 1;
    param0->unk_00_8 = 1;
}

void sub_02008A78(UnkStruct_02007768 *param0, u32 param1, u32 param2)
{
    param0->unk_2EC = param1;
    param0->unk_2F0 = param2;
}

void sub_02008A84(UnkStruct_02007768 *param0, u32 param1, u32 param2)
{
    param0->unk_2F4 = param1;
    param0->unk_2F8 = param2;
}

ArchivedSprite *sub_02008A90(PokemonSprite *param0)
{
    return &param0->unk_04;
}

void sub_02008A94(UnkStruct_02007768 *param0)
{
    if (param0->unk_331) {
        param0->unk_331 = 0;

        NNS_G2dInitImageProxy(&param0->unk_2B0);

        param0->unk_308.H = 32;
        param0->unk_308.W = 32;
        param0->unk_308.szByte = param0->unk_2F0;
        param0->unk_308.pRawData = param0->unk_2FC;

        NNS_G2dLoadImage2DMapping(&param0->unk_308, param0->unk_2EC, NNS_G2D_VRAM_TYPE_3DMAIN, &param0->unk_2B0);
    }

    if (param0->unk_332) {
        param0->unk_332 = 0;

        NNS_G2dInitImagePaletteProxy(&param0->unk_2D4);

        param0->unk_320.szByte = param0->unk_2F8;
        param0->unk_320.pRawData = param0->unk_300;

        NNS_G2dLoadPalette(&param0->unk_320, param0->unk_2F4, NNS_G2D_VRAM_TYPE_3DMAIN, &param0->unk_2D4);
    }
}

void sub_02008B2C(UnkStruct_02007768 *param0, int param1)
{
    param0->unk_333 = param1;
}

BOOL sub_02008B38(PokemonSprite *param0)
{
    GF_ASSERT(param0 != NULL);
    return param0->unk_00_0 != 0;
}

void sub_02008B54(UnkStruct_02007768 *param0, u32 param1)
{
    param0->unk_334 |= param1;
}

void sub_02008B60(UnkStruct_02007768 *param0, u32 param1)
{
    param0->unk_334 &= (param1 ^ 0xffffffff);
}

static void sub_02008B78(UnkStruct_02007768 *param0)
{
    NNSG2dCharacterData *v0;
    int v1, v2, v3;
    u8 *v4;
    void *v5;
    u8 v6;

    v6 = 0;

    for (v1 = 0; v1 < 4; v1++) {
        if ((param0->unk_00[v1].unk_00_0) && (param0->unk_00[v1].unk_00_7)) {
            param0->unk_00[v1].unk_00_7 = 0;

            v6 = 1;
            v5 = NARC_AllocAndReadWholeMemberByIndexPair(param0->unk_00[v1].unk_04.archive, param0->unk_00[v1].unk_04.character, param0->unk_2E8);

            NNS_G2dGetUnpackedCharacterData(v5, &v0);

            param0->unk_308.pixelFmt = v0->pixelFmt;
            param0->unk_308.mapingType = v0->mapingType;
            param0->unk_308.characterFmt = v0->characterFmt;

            v4 = v0->pRawData;

            sub_020093A0(v4, param0->unk_00[v1].unk_04.archive);
            sub_020091C0(&param0->unk_00[v1], v4);

            if (v1 == 3) {
                for (v3 = 0; v3 < 80; v3++) {
                    for (v2 = 0; v2 < 160 / 2; v2++) {
                        if (v2 < 160 / 4) {
                            if ((param0->unk_00[v1].unk_24.unk_30_9) && (param0->unk_00[v1].unk_24.unk_30_10)) {
                                param0->unk_2FC[v3 * 0x80 + v2 + 0x50] = sub_020091AC(v4[((80 - 1) - v3) * 0x50 + ((160 / 4 - 1) - v2)]);
                            } else if (param0->unk_00[v1].unk_24.unk_30_9) {
                                param0->unk_2FC[v3 * 0x80 + v2 + 0x50] = sub_020091AC(v4[v3 * 0x50 + ((160 / 4 - 1) - v2)]);
                            } else if (param0->unk_00[v1].unk_24.unk_30_10) {
                                param0->unk_2FC[v3 * 0x80 + v2 + 0x50] = v4[((80 - 1) - v3) * 0x50 + v2];
                            } else if (param0->unk_00[v1].unk_24.unk_30_13) {
                                if (v3 % (param0->unk_00[v1].unk_24.unk_30_13 * 2)) {
                                    param0->unk_2FC[v3 * 0x80 + v2 + 0x50] = param0->unk_2FC[(v3 - 1) * 0x80 + v2 + 0x50];
                                } else {
                                    if (v2 % (param0->unk_00[v1].unk_24.unk_30_13)) {
                                        param0->unk_2FC[v3 * 0x80 + v2 + 0x50] = param0->unk_2FC[v3 * 0x80 + (v2 - 1) + 0x50];
                                    } else {
                                        param0->unk_2FC[v3 * 0x80 + v2 + 0x50] = ((v4[v3 * 0x50 + v2] & 0xf) | (v4[v3 * 0x50 + v2] & 0xf) << 4);
                                    }
                                }
                            } else {
                                param0->unk_2FC[v3 * 0x80 + v2 + 0x50] = v4[v3 * 0x50 + v2];
                            }
                        } else {
                            if ((param0->unk_00[v1].unk_24.unk_30_9) && (param0->unk_00[v1].unk_24.unk_30_10)) {
                                param0->unk_2FC[v3 * 0x80 + v2 + 0x2828] = sub_020091AC(v4[((80 - 1) - v3) * 0x50 + ((160 / 2 - 1) - (v2 - 160 / 4))]);
                            } else if (param0->unk_00[v1].unk_24.unk_30_9) {
                                param0->unk_2FC[v3 * 0x80 + v2 + 0x2828] = sub_020091AC(v4[v3 * 0x50 + ((160 / 2 - 1) - (v2 - 160 / 4))]);
                            } else if (param0->unk_00[v1].unk_24.unk_30_10) {
                                param0->unk_2FC[v3 * 0x80 + v2 + 0x2828] = v4[((80 - 1) - v3) * 0x50 + v2];
                            } else if (param0->unk_00[v1].unk_24.unk_30_13) {
                                if (v3 % (param0->unk_00[v1].unk_24.unk_30_13 * 2)) {
                                    param0->unk_2FC[v3 * 0x80 + v2 + 0x2828] = param0->unk_2FC[(v3 - 1) * 0x80 + v2 + 0x2828];
                                } else {
                                    if (v2 % (param0->unk_00[v1].unk_24.unk_30_13)) {
                                        param0->unk_2FC[v3 * 0x80 + v2 + 0x2828] = param0->unk_2FC[v3 * 0x80 + (v2 - 1) + 0x2828];
                                    } else {
                                        param0->unk_2FC[v3 * 0x80 + v2 + 0x2828] = ((v4[v3 * 0x50 + v2] & 0xf) | (v4[v3 * 0x50 + v2] & 0xf) << 4);
                                    }
                                }
                            } else {
                                param0->unk_2FC[v3 * 0x80 + v2 + 0x2828] = v4[v3 * 0x50 + v2];
                            }
                        }
                    }
                }
            } else {
                for (v3 = 0; v3 < 80; v3++) {
                    for (v2 = 0; v2 < 160 / 2; v2++) {
                        if ((param0->unk_00[v1].unk_24.unk_30_9) && (param0->unk_00[v1].unk_24.unk_30_10)) {
                            if (v2 < 160 / 4) {
                                param0->unk_2FC[v3 * 0x80 + v2 + v1 * 0x2800] = sub_020091AC(v4[((80 - 1) - v3) * 0x50 + ((160 / 4 - 1) - v2)]);
                            } else {
                                param0->unk_2FC[v3 * 0x80 + v2 + v1 * 0x2800] = sub_020091AC(v4[((80 - 1) - v3) * 0x50 + ((160 / 2 - 1) - (v2 - 160 / 4))]);
                            }
                        } else if (param0->unk_00[v1].unk_24.unk_30_9) {
                            if (v2 < 160 / 4) {
                                param0->unk_2FC[v3 * 0x80 + v2 + v1 * 0x2800] = sub_020091AC(v4[v3 * 0x50 + ((160 / 4 - 1) - v2)]);
                            } else {
                                param0->unk_2FC[v3 * 0x80 + v2 + v1 * 0x2800] = sub_020091AC(v4[v3 * 0x50 + ((160 / 2 - 1) - (v2 - 160 / 4))]);
                            }
                        } else if (param0->unk_00[v1].unk_24.unk_30_10) {
                            param0->unk_2FC[v3 * 0x80 + v2 + v1 * 0x2800] = v4[((80 - 1) - v3) * 0x50 + v2];
                        } else if (param0->unk_00[v1].unk_24.unk_30_13) {
                            if (v3 % (param0->unk_00[v1].unk_24.unk_30_13 * 2)) {
                                param0->unk_2FC[v3 * 0x80 + v2 + v1 * 0x2800] = param0->unk_2FC[(v3 - 1) * 0x80 + v2 + v1 * 0x2800];
                            } else {
                                if (v2 % (param0->unk_00[v1].unk_24.unk_30_13)) {
                                    param0->unk_2FC[v3 * 0x80 + v2 + v1 * 0x2800] = param0->unk_2FC[v3 * 0x80 + (v2 - 1) + v1 * 0x2800];
                                } else {
                                    param0->unk_2FC[v3 * 0x80 + v2 + v1 * 0x2800] = ((v4[v3 * 0x50 + v2] & 0xf) | (v4[v3 * 0x50 + v2] & 0xf) << 4);
                                }
                            }
                        } else {
                            param0->unk_2FC[v3 * 0x80 + v2 + v1 * 0x2800] = v4[v3 * 0x50 + v2];
                        }
                    }
                }
            }

            Heap_FreeToHeap(v5);
        }
    }

    param0->unk_331 = v6;
}

static void sub_02008FC8(UnkStruct_02007768 *param0)
{
    NNSG2dPaletteData *v0;
    int v1, v2, v3;
    u16 *v4;
    void *v5;
    u8 v6;

    v6 = 0;

    for (v1 = 0; v1 < 4; v1++) {
        if ((param0->unk_00[v1].unk_00_0) && (param0->unk_00[v1].unk_00_8)) {
            param0->unk_00[v1].unk_00_8 = 0;

            v6 = 1;
            v5 = NARC_AllocAndReadWholeMemberByIndexPair(param0->unk_00[v1].unk_04.archive, param0->unk_00[v1].unk_04.palette, param0->unk_2E8);

            NNS_G2dGetUnpackedPaletteData(v5, &v0);

            param0->unk_320.fmt = v0->fmt;
            v4 = v0->pRawData;

            for (v2 = 0; v2 < 0x10; v2++) {
                param0->unk_300[v2 + 0x10 * v1] = v4[v2];
                param0->unk_304[v2 + 0x10 * v1] = v4[v2];
            }

            Heap_FreeToHeap(v5);

            if (param0->unk_00[v1].unk_6C.unk_00_0) {
                v5 = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE, 252, param0->unk_2E8);
                NNS_G2dGetUnpackedPaletteData(v5, &v0);
                v4 = v0->pRawData;

                for (v2 = 0; v2 < 0x10; v2++) {
                    param0->unk_300[v2 + 0x10 * (3 + param0->unk_00[v1].unk_6C.unk_00_0)] = v4[v2];
                    param0->unk_304[v2 + 0x10 * (3 + param0->unk_00[v1].unk_6C.unk_00_0)] = v4[v2];
                }

                Heap_FreeToHeap(v5);
            }
        }

        if ((param0->unk_00[v1].unk_00_0) && (param0->unk_00[v1].unk_24.unk_30_12)) {
            if (param0->unk_00[v1].unk_24.unk_26 == 0) {
                v6 = 1;
                param0->unk_00[v1].unk_24.unk_26 = param0->unk_00[v1].unk_24.unk_27;

                BlendPalette((void *)&param0->unk_304[0x10 * v1], (void *)&param0->unk_300[0x10 * v1], 16, param0->unk_00[v1].unk_24.unk_24, param0->unk_00[v1].unk_24.unk_28);

                if (param0->unk_00[v1].unk_6C.unk_00_0) {
                    BlendPalette((void *)&param0->unk_304[0x10 * (3 + param0->unk_00[v1].unk_6C.unk_00_0)], (void *)&param0->unk_300[0x10 * (3 + param0->unk_00[v1].unk_6C.unk_00_0)], 16, param0->unk_00[v1].unk_24.unk_24, param0->unk_00[v1].unk_24.unk_28);
                }

                if (param0->unk_00[v1].unk_24.unk_24 == param0->unk_00[v1].unk_24.unk_25) {
                    param0->unk_00[v1].unk_24.unk_30_12 = 0;
                } else if (param0->unk_00[v1].unk_24.unk_24 > param0->unk_00[v1].unk_24.unk_25) {
                    param0->unk_00[v1].unk_24.unk_24--;
                } else {
                    param0->unk_00[v1].unk_24.unk_24++;
                }
            } else {
                param0->unk_00[v1].unk_24.unk_26--;
            }
        }
    }

    param0->unk_332 = v6;
}

static u8 sub_020091AC(u8 param0)
{
    u8 v0;

    v0 = (param0 & 0xf0) >> 4;
    v0 |= (param0 & 0xf) << 4;

    return v0;
}

static void sub_020091C0(PokemonSprite *param0, u8 *param1)
{
    if (param0->unk_04.spindaSpots == 0) {
        return;
    }

    sub_020091D8(param1, param0->unk_04.personality, 1);
}

void sub_020091D8(u8 *param0, u32 param1, BOOL param2)
{
    const UnkStruct_020E4E62 *v0;
    int v1;
    u8 v2, v3, v4;
    int v5;
    u32 v6;

    v6 = param1;

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
