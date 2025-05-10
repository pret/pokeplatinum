#include "unk_02015064.h"

#include <nitro.h>
#include <string.h>

#include "applications/pokedex/struct_ov21_021E7F40.h"
#include "overlay022/struct_ov22_022550D4.h"
#include "overlay022/struct_ov22_022557A0.h"
#include "overlay022/struct_ov22_02255800.h"

#include "heap.h"

typedef struct UnkStruct_02015128_t {
    NNSGfdTexKey unk_00;
    NNSG2dImageProxy unk_04;
} UnkStruct_02015128;

typedef struct UnkStruct_020151A4_t {
    NNSGfdPlttKey unk_00;
    NNSG2dImagePaletteProxy unk_04;
} UnkStruct_020151A4;

typedef struct UnkStruct_02015214_t {
    NNSG2dSVec2 unk_00;
    NNSG2dSVec2 unk_04;
    NNSG2dSVec2 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    int unk_14;
    int unk_18;
    BOOL unk_1C;
    BOOL unk_20;
    NNSG2dImageAttr *unk_24;
    u32 unk_28;
    u32 unk_2C;
    u32 unk_30;
    BOOL unk_34;
    BOOL unk_38;
    GXRgb unk_3C;
    u8 unk_3E;
} UnkStruct_02015214;

typedef struct UnkStruct_02015064_t {
    UnkStruct_02015214 *unk_00;
    int unk_04;
    UnkStruct_02015128 *unk_08;
    int unk_0C;
    UnkStruct_020151A4 *unk_10;
    int unk_14;
} UnkStruct_02015064;

static void sub_020152C0(UnkStruct_02015214 *param0);
static void sub_020152E0(UnkStruct_02015128 *param0);
static void sub_020152EC(UnkStruct_020151A4 *param0);
static void sub_02015468(UnkStruct_02015214 *param0);
static UnkStruct_02015214 *sub_020152F8(int param0, int heapID);
static UnkStruct_02015128 *sub_02015328(int param0, int heapID);
static UnkStruct_020151A4 *sub_02015358(int param0, int heapID);
static UnkStruct_02015214 *sub_02015388(UnkStruct_02015064 *param0);
static UnkStruct_02015128 *sub_020153B4(UnkStruct_02015064 *param0);
static UnkStruct_020151A4 *sub_020153E0(UnkStruct_02015064 *param0);
static NNSGfdTexKey sub_0201540C(NNSG2dCharacterData *param0);
static NNSGfdPlttKey sub_02015420(int param0);
static void sub_02015434(NNSG2dCharacterData *param0, NNSGfdTexKey param1, NNSG2dImageProxy *param2);
static void sub_02015444(NNSG2dPaletteData *param0, NNSGfdPlttKey param1, NNSG2dImagePaletteProxy *param2);
static void sub_020155A8(UnkStruct_02015214 *param0, const UnkStruct_ov21_021E7F40 *param1);

UnkStruct_02015064 *sub_02015064(const UnkStruct_ov22_022550D4 *param0)
{
    UnkStruct_02015064 *v0;
    int v1;

    v0 = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_02015064));
    GF_ASSERT(v0);

    v0->unk_00 = sub_020152F8(param0->unk_00, param0->heapID);
    v0->unk_04 = param0->unk_00;
    v0->unk_08 = sub_02015328(param0->unk_04, param0->heapID);
    v0->unk_0C = param0->unk_04;
    v0->unk_10 = sub_02015358(param0->unk_08, param0->heapID);
    v0->unk_14 = param0->unk_08;

    return v0;
}

void sub_020150A8(UnkStruct_02015064 *param0)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_00);
    GF_ASSERT(param0->unk_08);
    GF_ASSERT(param0->unk_10);

    Heap_FreeToHeap(param0->unk_00);
    Heap_FreeToHeap(param0->unk_08);
    Heap_FreeToHeap(param0->unk_10);
    Heap_FreeToHeap(param0);

    param0 = NULL;
}

void sub_020150EC(UnkStruct_02015064 *param0)
{
    int v0;

    G3_PushMtx();

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_00[v0].unk_20) {
            sub_02015468(param0->unk_00 + v0);
        }
    }

    G3_PopMtx(1);
}

UnkStruct_02015128 *sub_02015128(const UnkStruct_ov22_022557A0 *param0)
{
    UnkStruct_02015128 *v0 = sub_020153B4(param0->unk_00);

    GF_ASSERT(v0);
    GF_ASSERT(param0->unk_04->mapingType == GX_OBJVRAMMODE_CHAR_2D);

    v0->unk_00 = sub_0201540C(param0->unk_04);
    GF_ASSERT(v0->unk_00);

    sub_02015434(param0->unk_04, v0->unk_00, &v0->unk_04);

    return v0;
}

void sub_02015164(UnkStruct_02015128 *param0)
{
    NNS_GfdFreeTexVram(param0->unk_00);
    sub_020152E0(param0);
}

void sub_0201517C(UnkStruct_02015064 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_0C; v0++) {
        if (param0->unk_08[v0].unk_00) {
            sub_02015164(param0->unk_08 + v0);
        }
    }
}

UnkStruct_020151A4 *sub_020151A4(const UnkStruct_ov22_02255800 *param0)
{
    UnkStruct_020151A4 *v0 = sub_020153E0(param0->unk_00);
    GF_ASSERT(v0);

    v0->unk_00 = sub_02015420(param0->unk_08);
    GF_ASSERT(v0->unk_00);

    sub_02015444(param0->unk_04, v0->unk_00, &v0->unk_04);

    return v0;
}

void sub_020151D4(UnkStruct_020151A4 *param0)
{
    NNS_GfdFreePlttVram(param0->unk_00);
    sub_020152EC(param0);
}

void sub_020151EC(UnkStruct_02015064 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_14; v0++) {
        if (param0->unk_10[v0].unk_00) {
            sub_020151D4(param0->unk_10 + v0);
        }
    }
}

UnkStruct_02015214 *sub_02015214(const UnkStruct_ov21_021E7F40 *param0)
{
    UnkStruct_02015214 *v0 = sub_02015388(param0->unk_00);
    GF_ASSERT(v0);

    sub_020155A8(v0, param0);

    v0->unk_1C = 1;
    v0->unk_20 = 1;

    return v0;
}

void sub_02015238(UnkStruct_02015214 *param0)
{
    sub_020152C0(param0);
}

void sub_02015240(UnkStruct_02015214 *param0, BOOL param1)
{
    GF_ASSERT(param0);
    param0->unk_20 = param1;
}

void sub_02015254(UnkStruct_02015214 *param0, s16 param1, s16 param2)
{
    param0->unk_00.x = param1;
    param0->unk_00.y = param2;
}

NNSG2dSVec2 sub_0201525C(UnkStruct_02015214 *param0)
{
    return param0->unk_00;
}

void sub_02015268(UnkStruct_02015214 *param0, s16 param1, s16 param2)
{
    param0->unk_04.x = param1;
    param0->unk_04.y = param2;
}

void sub_02015270(UnkStruct_02015214 *param0, fx32 param1, fx32 param2)
{
    param0->unk_0C = param1;
    param0->unk_10 = param2;
}

void sub_02015278(UnkStruct_02015214 *param0, int param1, int param2)
{
    param0->unk_08.x = param1;
    param0->unk_08.y = param2;
}

NNSG2dSVec2 sub_02015280(UnkStruct_02015214 *param0)
{
    return param0->unk_08;
}

void sub_0201528C(UnkStruct_02015214 *param0, int param1)
{
    param0->unk_14 = param1;
}

int sub_02015290(UnkStruct_02015214 *param0)
{
    return param0->unk_14;
}

void sub_02015294(UnkStruct_02015214 *param0, u8 param1)
{
    param0->unk_3E = param1;
}

void sub_0201529C(UnkStruct_02015214 *param0, GXRgb param1)
{
    param0->unk_3C = param1;
}

void sub_020152A0(UnkStruct_02015214 *param0, NNSG2dImageAttr *param1)
{
    param0->unk_24 = param1;
}

void sub_020152A4(UnkStruct_02015214 *param0, u32 param1)
{
    param0->unk_28 = param1;
}

void sub_020152A8(UnkStruct_02015214 *param0, u32 param1)
{
    param0->unk_2C = param1;
}

void sub_020152AC(UnkStruct_02015214 *param0, u32 param1)
{
    param0->unk_30 = param1;
}

void sub_020152B0(UnkStruct_02015214 *param0, int param1, BOOL param2)
{
    if (param1 == 0) {
        param0->unk_34 = param2;
    } else {
        param0->unk_38 = param2;
    }
}

void sub_020152BC(UnkStruct_02015214 *param0, u16 param1)
{
    param0->unk_18 = param1;
}

static void sub_020152C0(UnkStruct_02015214 *param0)
{
    memset(param0, 0, sizeof(UnkStruct_02015214));

    param0->unk_3E = 31;
    param0->unk_3C = GX_RGB(31, 31, 31);
}

static void sub_020152E0(UnkStruct_02015128 *param0)
{
    param0->unk_00 = 0;
    NNS_G2dInitImageProxy(&param0->unk_04);
}

static void sub_020152EC(UnkStruct_020151A4 *param0)
{
    param0->unk_00 = 0;
    NNS_G2dInitImagePaletteProxy(&param0->unk_04);
}

static UnkStruct_02015214 *sub_020152F8(int param0, int heapID)
{
    UnkStruct_02015214 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_02015214) * param0);
    GF_ASSERT(v0);

    for (int i = 0; i < param0; i++) {
        sub_020152C0(v0 + i);
    }

    return v0;
}

static UnkStruct_02015128 *sub_02015328(int param0, int heapID)
{
    UnkStruct_02015128 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_02015128) * param0);
    GF_ASSERT(v0);

    for (int i = 0; i < param0; i++) {
        sub_020152E0(v0 + i);
    }

    return v0;
}

static UnkStruct_020151A4 *sub_02015358(int param0, int heapID)
{
    UnkStruct_020151A4 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_020151A4) * param0);
    GF_ASSERT(v0);

    for (int i = 0; i < param0; i++) {
        sub_020152EC(v0 + i);
    }

    return v0;
}

static UnkStruct_02015214 *sub_02015388(UnkStruct_02015064 *param0)
{
    for (int i = 0; i < param0->unk_04; i++) {
        if (param0->unk_00[i].unk_1C == 0) {
            return param0->unk_00 + i;
        }
    }

    return NULL;
}

static UnkStruct_02015128 *sub_020153B4(UnkStruct_02015064 *param0)
{
    for (int i = 0; i < param0->unk_04; i++) {
        if (param0->unk_08[i].unk_00 == 0) {
            return param0->unk_08 + i;
        }
    }

    return NULL;
}

static UnkStruct_020151A4 *sub_020153E0(UnkStruct_02015064 *param0)
{
    for (int i = 0; i < param0->unk_04; i++) {
        if (param0->unk_10[i].unk_00 == 0) {
            return param0->unk_10 + i;
        }
    }

    return NULL;
}

static NNSGfdTexKey sub_0201540C(NNSG2dCharacterData *param0)
{
    return NNS_GfdAllocTexVram(param0->szByte, 0, 0);
}

static NNSGfdPlttKey sub_02015420(int param0)
{
    return NNS_GfdAllocPlttVram(param0 * 32, 0, 0);
}

static void sub_02015434(NNSG2dCharacterData *param0, NNSGfdTexKey param1, NNSG2dImageProxy *param2)
{
    NNS_G2dLoadImage2DMapping(param0, NNS_GfdGetTexKeyAddr(param1), NNS_G2D_VRAM_TYPE_3DMAIN, param2);
}

static void sub_02015444(NNSG2dPaletteData *param0, NNSGfdPlttKey param1, NNSG2dImagePaletteProxy *param2)
{
    int v0 = param0->szByte;
    param0->szByte = NNS_GfdGetPlttKeySize(param1);

    NNS_G2dLoadPalette(param0, NNS_GfdGetPlttKeyAddr(param1), NNS_G2D_VRAM_TYPE_3DMAIN, param2);
    param0->szByte = v0;
}

static void sub_02015468(UnkStruct_02015214 *param0)
{
    NNSG2dSVec2 v0, v1;

    G3_PushMtx();
    G3_MaterialColorDiffAmb(param0->unk_3C, GX_RGB(31, 31, 31), 1);
    G3_MaterialColorSpecEmi(GX_RGB(16, 16, 16), GX_RGB(0, 0, 0), 0);
    G3_TexImageParam(param0->unk_24->fmt, GX_TEXGEN_TEXCOORD, param0->unk_24->sizeS, param0->unk_24->sizeT, GX_TEXREPEAT_NONE, GX_TEXFLIP_NONE, param0->unk_24->plttUse, param0->unk_28);
    G3_TexPlttBase((u32)(param0->unk_2C + (32 * param0->unk_30)), param0->unk_24->fmt);
    G3_PolygonAttr(GX_LIGHTMASK_NONE, GX_POLYGONMODE_MODULATE, GX_CULL_NONE, 0, param0->unk_3E, 0);

    if (param0->unk_34) {
        v0.x = param0->unk_08.x;
        v1.x = 0;
    } else {
        v1.x = param0->unk_08.x;
        v0.x = 0;
    }

    if (param0->unk_38) {
        v0.y = param0->unk_08.y;
        v1.y = 0;
    } else {
        v1.y = param0->unk_08.y;
        v0.y = 0;
    }

    G3_Translate((param0->unk_00.x + param0->unk_04.x) * FX32_ONE, (param0->unk_00.y + param0->unk_04.y) * FX32_ONE, param0->unk_14 * FX32_ONE);
    G3_RotZ(FX_SinIdx(param0->unk_18), FX_CosIdx(param0->unk_18));
    G3_Scale(param0->unk_0C, param0->unk_10, FX32_ONE);
    G3_Translate(-param0->unk_04.x * FX32_ONE, -param0->unk_04.y * FX32_ONE, 0);
    NNS_G2dDrawSpriteFast(0, 0, 0, param0->unk_08.x, param0->unk_08.y, v0.x, v0.y, v1.x, v1.y);
    G3_PopMtx(1);
}

static void sub_020155A8(UnkStruct_02015214 *param0, const UnkStruct_ov21_021E7F40 *param1)
{
    int v0;
    int v1, v2;
    fx32 v3, v4;
    fx32 v5, v6;

    v1 = 8;

    for (v0 = 0; v0 < param1->unk_04->unk_04.attr.sizeS; v0++) {
        v1 *= 2;
    }

    v2 = 8;

    for (v0 = 0; v0 < param1->unk_04->unk_04.attr.sizeT; v0++) {
        v2 *= 2;
    }

    v3 = 0;
    v4 = 0;
    v5 = v1 << FX32_SHIFT;
    v6 = v2 << FX32_SHIFT;

    sub_02015254(param0, param1->unk_0C, param1->unk_0E);
    sub_02015268(param0, v1 / 2, v2 / 2);

    param0->unk_0C = FX32_ONE;
    param0->unk_10 = FX32_ONE;

    sub_02015278(param0, v1, v2);
    sub_0201528C(param0, param1->unk_18);
    sub_02015294(param0, param1->unk_14);
    sub_020152A0(param0, &param1->unk_04->unk_04.attr);
    sub_020152A4(param0, NNS_G2dGetImageLocation(&param1->unk_04->unk_04, NNS_G2D_VRAM_TYPE_3DMAIN));
    sub_020152A8(param0, NNS_G2dGetImagePaletteLocation(&param1->unk_08->unk_04, NNS_G2D_VRAM_TYPE_3DMAIN));
    sub_020152AC(param0, param1->unk_1C);
    sub_020152B0(param0, 0, 0);
    sub_020152B0(param0, 1, 0);
    sub_020152BC(param0, param1->unk_10);
}
