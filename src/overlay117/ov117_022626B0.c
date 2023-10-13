#include <nitro.h>
#include <string.h>

#include "core_sys.h"
#include "inlines.h"

#include "struct_decls/struct_02006C24_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "overlay104/struct_ov104_0223F9E0.h"
#include "overlay117/struct_ov117_02261280.h"
#include "overlay117/struct_ov117_02264E84.h"

#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "narc.h"
#include "unk_0200C6E4.h"
#include "heap.h"
#include "unk_0201C970.h"
#include "overlay117/ov117_02260668.h"
#include "overlay117/ov117_022626B0.h"
#include "overlay117/ov117_02263AF0.h"

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
} UnkStruct_ov117_022626B0_sub1_sub1;

typedef struct {
    UnkStruct_ov117_022626B0_sub1_sub1 unk_00;
    UnkStruct_ov117_022626B0_sub1_sub1 unk_08;
    UnkStruct_ov117_022626B0_sub1_sub1 unk_10;
    UnkStruct_ov117_022626B0_sub1_sub1 unk_18;
} UnkStruct_ov117_022626B0_sub1;

typedef struct {
    UnkStruct_ov117_022626B0_sub1_sub1 unk_00;
    UnkStruct_ov117_022626B0_sub1_sub1 unk_08;
    UnkStruct_ov117_022626B0_sub1_sub1 unk_10;
    UnkStruct_ov117_022626B0_sub1_sub1 unk_18;
} UnkStruct_ov117_022626B0_sub2;

typedef struct UnkStruct_ov117_022626B0_t {
    NNSG3dResFileHeader * unk_00;
    NNSG3dResTex * unk_04;
    u16 unk_08;
    UnkStruct_ov117_022626B0_sub1 unk_0C[8];
    UnkStruct_ov117_022626B0_sub2 unk_10C[8];
    int unk_20C;
    int unk_210;
    int unk_214;
    int unk_218;
    int unk_21C;
    int unk_220;
    int unk_224;
    int unk_228;
    int unk_22C;
    fx32 unk_230;
    CellActorData * unk_234;
    int unk_238;
    int unk_23C;
    int unk_240;
    int unk_244;
    fx32 unk_248;
    u16 * unk_24C;
    u16 * unk_250;
    u32 unk_254;
    u32 unk_258;
    s32 unk_25C;
    fx32 unk_260;
    fx32 unk_264;
    s16 unk_268;
    s16 unk_26A;
    s16 unk_26C;
    int unk_270;
    u8 unk_274;
    u8 unk_275;
    u8 unk_276;
} UnkStruct_ov117_022626B0;

static void ov117_02262B98(UnkStruct_ov117_022626B0 * param0);
static void ov117_02262E0C(UnkStruct_ov117_022626B0 * param0);
static void ov117_02262E5C(UnkStruct_ov117_022626B0 * param0);
static void ov117_02262EAC(UnkStruct_ov117_022626B0 * param0);
static void ov117_02262A70(UnkStruct_ov117_022626B0 * param0);
static BOOL ov117_02263270(UnkStruct_ov117_022626B0 * param0);
static int ov117_0226334C(UnkStruct_ov117_022626B0 * param0);
static int ov117_02263448(UnkStruct_ov117_022626B0 * param0, int param1, fx32 param2);
static int ov117_022637AC(UnkStruct_ov117_022626B0 * param0, int param1);
static int ov117_022637E4(UnkStruct_ov117_022626B0 * param0, fx32 param1, fx32 param2, fx32 param3, fx32 * param4, fx32 * param5);
static fx32 ov117_0226384C(UnkStruct_ov117_022626B0 * param0);
static int ov117_022638AC(UnkStruct_ov117_022626B0 * param0);
static void ov117_02263168(fx32 param0, fx32 param1, fx16 * param2, fx16 * param3);
static void ov117_02262A38(UnkStruct_ov117_022626B0 * param0);
static int ov117_0226296C(UnkStruct_ov117_022626B0 * param0, int param1);
static void ov117_02262998(UnkStruct_ov117_022626B0 * param0, int param1);
static void ov117_02262C3C(UnkStruct_ov117_022626B0 * param0);
static void ov117_02262C60(UnkStruct_ov117_022626B0 * param0, int param1);
static BOOL ov117_02262CB8(UnkStruct_ov117_022626B0 * param0, int param1);
static void ov117_02262CE8(UnkStruct_ov117_022626B0 * param0);
static void ov117_02262CFC(UnkStruct_ov117_022626B0 * param0);
static void ov117_022629E0(UnkStruct_ov117_02261280 * param0, UnkStruct_ov117_022626B0 * param1, int param2, int param3);
void ov117_02262D4C(BOOL param0, BOOL param1);
void ov117_02262D98();
static void ov117_022638D8(UnkStruct_ov117_02261280 * param0);
static void ov117_022639BC(UnkStruct_ov117_02261280 * param0);
static CellActorData * ov117_02263A00(UnkStruct_ov117_02261280 * param0);
static void ov117_02263A6C(UnkStruct_ov117_022626B0 * param0, CellActorData * param1);
static void ov117_02263AE4(CellActorData * param0);

static const fx16 Unk_ov117_02266B12[3 * 6] = {
    0x0,
    0x0,
    FX16_ONE - 1,
    0x0,
    FX16_ONE - 1,
    0x0,
    FX16_ONE - 1,
    0x0,
    0x0,
    0x0,
    0x0,
    -FX16_ONE + 1,
    0x0,
    -FX16_ONE + 1,
    0x0,
    -FX16_ONE + 1,
    0x0,
    0x0
};

static const UnkStruct_ov104_0223F9E0 Unk_ov117_02266B38 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0xE,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0x2713, 0x2715, 0x2713, 0x2713, 0xFFFFFFFF, 0xFFFFFFFF},
    0x1,
    0x0
};

static const struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} Unk_ov117_02266B05[] = {
    {0x40, 0xC0, 0x10, 0xA8},
    {0x28, 0xD8, 0x0, 0xA8},
    {0x54, 0xAC, 0x8, 0xA8}
};

extern const s32 Unk_ov117_02266FD8[];

inline void inline_ov117_02262EAC (int param0)
{
    NNS_G3dGeNormal(Unk_ov117_02266B12[param0 * 3], Unk_ov117_02266B12[param0 * 3 + 1], Unk_ov117_02266B12[param0 * 3 + 2]);
}

UnkStruct_ov117_022626B0 * ov117_022626B0 (UnkStruct_ov117_02261280 * param0)
{
    UnkStruct_ov117_022626B0 * v0;

    v0 = Heap_AllocFromHeap(110, sizeof(UnkStruct_ov117_022626B0));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov117_022626B0));
    v0->unk_270 = param0->unk_00->unk_34;

    ov117_02262B98(v0);
    ov117_02262E0C(v0);
    ov117_02262E5C(v0);

    switch (param0->unk_00->unk_34) {
    case 2:
        v0->unk_260 = ((6 * 16 * FX32_ONE) - 2 * 16 * FX32_ONE);
        v0->unk_264 = ((6 * 16 * FX32_ONE) + 1 * 16 * FX32_ONE / 2);
        break;
    case 1:
        v0->unk_260 = ((6 * 16 * FX32_ONE) + 3 * 16 * FX32_ONE);
        v0->unk_264 = ((6 * 16 * FX32_ONE) + 1 * 16 * FX32_ONE);
        break;
    default:
        v0->unk_260 = (6 * 16 * FX32_ONE);
        v0->unk_264 = (6 * 16 * FX32_ONE);
        break;
    }

    v0->unk_21C = 128;
    v0->unk_220 = 40;

    ov117_022638D8(param0);
    v0->unk_234 = ov117_02263A00(param0);
    ov117_02263A6C(v0, v0->unk_234);

    v0->unk_248 = 0x2000;

    return v0;
}

void ov117_02262760 (UnkStruct_ov117_02261280 * param0, UnkStruct_ov117_022626B0 * param1)
{
    ov117_02263AE4(param1->unk_234);
    ov117_022639BC(param0);

    Heap_FreeToHeap(param1->unk_00);
    Heap_FreeToHeap(param1->unk_24C);
    Heap_FreeToHeap(param1->unk_250);
    Heap_FreeToHeap(param1);
}

void ov117_02262798 (UnkStruct_ov117_02261280 * param0, UnkStruct_ov117_022626B0 * param1)
{
    param1->unk_244 = 0;

    if (param0->unk_20 == 2) {
        param1->unk_20C = param0->unk_174C.unk_0C;
        param1->unk_210 = param0->unk_174C.unk_10;
        param1->unk_214 = param0->unk_174C.unk_14;
        param1->unk_218 = param0->unk_174C.unk_18;
    } else if ((param0->unk_2FB8 == 0) || (param0->unk_2FBC == 1)) {
        param1->unk_20C = 0;
        param1->unk_210 = 0;
        param1->unk_214 = 0;
        param1->unk_218 = 0;
    } else {
        param1->unk_20C = gCoreSys.unk_5C;
        param1->unk_210 = gCoreSys.unk_5E;
        param1->unk_214 = gCoreSys.unk_62;
        param1->unk_218 = gCoreSys.touchInput;
    }

    ov117_02263270(param1);

    if (param1->unk_214 == 0) {
        ov117_02262A38(param1);
        if ((param1->unk_0C[0].unk_10.unk_04 == 0) && (param1->unk_0C[0].unk_10.unk_04 == 0)) {
            param1->unk_274 = 0;
        }
    }

    ov117_0226334C(param1);
    ov117_02262A70(param1);
    ov117_02263A6C(param1, param1->unk_234);

    if (param1->unk_268 > 0) {
        param1->unk_268 += 8;

        if (param1->unk_268 > 30) {
            param1->unk_268 = 30;
        }

        ov117_02262CFC(param1);
    }

    if ((param0->unk_2FBC == 0) && (param0->unk_2FB8 == 1)) {
        if (param1->unk_244 > 0) {
            UnkStruct_ov117_02264E84 v0;
            int v1 = 0, v2 = 0;
            s32 v3;

            if (param1->unk_25C < 800) {
                v1 = ov117_02262CB8(param1, param1->unk_244);

                if (v1 == 1) {
                    param1->unk_268 = 8;
                    param1->unk_275 = 0;
                    sub_02005748(1398);
                }
            } else {
                ov117_02262CE8(param1);
                param1->unk_268 = 0;
                v2 = 1;
            }

            v3 = ov117_0226296C(param1, param1->unk_244);

            if (v2 == 1) {
                v3 += v3 * 25 / 100;
            }

            ov117_02264E14(param0, param0->unk_2FC8, v3, &v0);
            ov117_02264E3C(param0, &v0);
            ov117_02263DC4(param0, &v0);
            ov117_02262998(param1, param1->unk_244);
            ov117_022629E0(param0, param1, param1->unk_244, v2);
            param1->unk_244 = 0;
        }
    }
}

void ov117_02262950 (UnkStruct_ov117_02261280 * param0, UnkStruct_ov117_022626B0 * param1)
{
    if (param1->unk_276 == 1) {
        param1->unk_276 = 0;
        ov117_02262C3C(param1);
    }
}

static int ov117_0226296C (UnkStruct_ov117_022626B0 * param0, int param1)
{
    int v0;

    if (param1 >= 98) {
        v0 = 1200;
    } else {
        v0 = param1 * 10;
    }

    v0 = v0 * Unk_ov117_02266FD8[param0->unk_270] / 100;
    return v0;
}

static void ov117_02262998 (UnkStruct_ov117_022626B0 * param0, int param1)
{
    if (param0->unk_244 >= 98) {
        param0->unk_248 += 0x1000;
    } else if (param0->unk_244 >= 98) {
        param0->unk_248 += 0x1000;
    } else {
        param0->unk_248 = 0x2000;
    }

    if (param0->unk_248 > 0x11000) {
        param0->unk_248 = 0x11000;
    }
}

static void ov117_022629E0 (UnkStruct_ov117_02261280 * param0, UnkStruct_ov117_022626B0 * param1, int param2, int param3)
{
    if ((param3 == 1) && (param1->unk_244 >= 98)) {
        ov117_02261600(param0, 0);
        sub_02005748(1402);
    } else if (param1->unk_244 >= 98) {
        (void)0;
    } else {
        if (param1->unk_0C[0].unk_00.unk_04 < param1->unk_0C[0].unk_10.unk_04) {
            ov117_02261600(param0, 2);
            sub_02005748(1400);
        } else if (param1->unk_0C[0].unk_00.unk_04 > param1->unk_0C[0].unk_10.unk_04) {
            ov117_02261600(param0, 1);
            sub_02005748(1400);
        }
    }
}

static void ov117_02262A38 (UnkStruct_ov117_022626B0 * param0)
{
    if (param0->unk_238 == 0) {
        return;
    }

    param0->unk_238 = 0;
    param0->unk_23C = -1;

    {
        int v0;

        v0 = ov117_022638AC(param0);
        param0->unk_244 = param0->unk_240 - v0;

        if (param0->unk_244 < 25) {
            param0->unk_244 = 0;
        }
    }
}

static void ov117_02262A70 (UnkStruct_ov117_022626B0 * param0)
{
    u32 v0, v1;

    NNS_G3dGeLightVector(GX_LIGHTID_0, FX16_SQRT1_3, -FX16_SQRT1_3, -FX16_SQRT1_3);
    NNS_G3dGeLightColor(GX_LIGHTID_0, GX_RGB(31, 31, 31));
    NNS_G3dGePushMtx();

    {
        fx16 v2 = FX_SinIdx(param0->unk_08);
        fx16 v3 = FX_CosIdx(param0->unk_08);

        NNS_G3dGeTranslate(0, (9 + 10) * FX32_ONE, -5 * FX32_ONE);
        NNS_G3dGeScale(param0->unk_260 + param0->unk_260 * (param0->unk_268 + param0->unk_26C) / 100, param0->unk_264 + param0->unk_264 * param0->unk_26A / 100, (FX32_ONE));
    }

    {
        NNS_G3dGeMtxMode(GX_MTXMODE_TEXTURE);
        NNS_G3dGeIdentity();
        NNS_G3dGeMtxMode(GX_MTXMODE_POSITION_VECTOR);
    }

    ov117_02262D4C(1, 1);
    ov117_02262D98();

    v0 = NNS_GfdGetTexKeyAddr(param0->unk_04->texInfo.vramKey);
    v1 = NNS_GfdGetPlttKeyAddr(param0->unk_04->plttInfo.vramKey);

    NNS_G3dGeTexImageParam(GX_TEXFMT_PLTT256, GX_TEXGEN_TEXCOORD, GX_TEXSIZE_S128, GX_TEXSIZE_T128, GX_TEXREPEAT_NONE, GX_TEXFLIP_NONE, GX_TEXPLTTCOLOR0_TRNS, v0);
    NNS_G3dGeTexPlttBase(v1, GX_TEXFMT_PLTT256);
    NNS_G3dGePolygonAttr(GX_LIGHTMASK_0, GX_POLYGONMODE_MODULATE, GX_CULL_NONE, 0, 31, GX_POLYGON_ATTR_MISC_NONE);

    ov117_02262EAC(param0);

    NNS_G3dGePopMtx(1);
    NNS_G3dGeFlushBuffer();
}

static void ov117_02262B98 (UnkStruct_ov117_022626B0 * param0)
{
    param0->unk_00 = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_APPLICATION__BALLOON__GRAPHIC__BALLOON_GRA, 29, 110);
    param0->unk_04 = NNS_G3dGetTex(param0->unk_00);

    sub_0201CBCC(param0->unk_04);

    {
        u32 v0;
        void * v1;
        u32 v2;

        v0 = (u32)param0->unk_04->plttInfo.sizePltt << 3;
        v1 = (u8 *)param0->unk_04 + param0->unk_04->plttInfo.ofsPlttData;
        v2 = (param0->unk_04->plttInfo.vramKey & 0xffff) << 3;

        GF_ASSERT(param0->unk_24C == NULL);

        param0->unk_24C = Heap_AllocFromHeap(110, v0);
        param0->unk_250 = Heap_AllocFromHeap(110, v0);

        MI_CpuCopy8(v1, param0->unk_24C, v0);
        MI_CpuCopy8(v1, param0->unk_250, v0);

        DC_FlushRange(param0->unk_250, v0);

        param0->unk_258 = v2;
        param0->unk_254 = v0;
    }

    {
        u8 * v3;
        u32 v4;

        GF_ASSERT(param0->unk_04->texInfo.ofsTex != 0);

        v3 = (u8 *)param0->unk_04 + param0->unk_04->texInfo.ofsTex;
        v4 = (u32)(v3 - (u8 *)param0->unk_00);

        Heap_ReallocFromHeap(param0->unk_00, v4);
    }
}

static void ov117_02262C3C (UnkStruct_ov117_022626B0 * param0)
{
    GX_BeginLoadTexPltt();
    GX_LoadTexPltt(param0->unk_250, param0->unk_258, param0->unk_254);
    GX_EndLoadTexPltt();
}

static void ov117_02262C60 (UnkStruct_ov117_022626B0 * param0, int param1)
{
    int v0;

    v0 = (12 << 8) * param1 / 800;
    v0 = (v0 + 0x80) >> 8;

    if (v0 > 16) {
        v0 = 16;
    }

    sub_0200393C(param0->unk_24C, param0->unk_250, param0->unk_254 / 2, v0, 0x1f);
    DC_FlushRange(param0->unk_250, param0->unk_254);

    param0->unk_276 = 1;
}

static BOOL ov117_02262CB8 (UnkStruct_ov117_022626B0 * param0, int param1)
{
    BOOL v0 = 0;

    param0->unk_25C += param1;

    if (param0->unk_25C >= 800) {
        param0->unk_25C = 800;
        v0 = 1;
    }

    ov117_02262C60(param0, param0->unk_25C);

    return v0;
}

static void ov117_02262CE8 (UnkStruct_ov117_022626B0 * param0)
{
    param0->unk_25C = 0;
    ov117_02262C60(param0, param0->unk_25C);
}

static void ov117_02262CFC (UnkStruct_ov117_022626B0 * param0)
{
    if (param0->unk_268 == 0) {
        return;
    }

    param0->unk_275++;

    if (param0->unk_275 == 4) {
        ov117_02262C60(param0, param0->unk_25C / 2);
    } else if (param0->unk_275 == 4 * 2) {
        ov117_02262C60(param0, param0->unk_25C);
        param0->unk_275 = 0;
    }
}

static const GXRgb DEMO_DIFFUSE_COL = GX_RGB(23, 23, 23);
static const GXRgb DEMO_AMBIENT_COL = GX_RGB(8, 8, 8);
static const GXRgb DEMO_SPECULAR_COL = GX_RGB(31, 31, 31);
static const GXRgb DEMO_EMISSION_COL = GX_RGB(0, 0, 0);
static const u32 LIGHTING_L_DOT_S_SHIFT = 8;

void ov117_02262D4C (BOOL param0, BOOL param1)
{
    NNS_G3dGeMaterialColorDiffAmb(DEMO_DIFFUSE_COL, DEMO_AMBIENT_COL, param0);
    NNS_G3dGeMaterialColorSpecEmi(DEMO_SPECULAR_COL, DEMO_EMISSION_COL, param1);
}

#include <nitro/code32.h>
void ov117_02262D98 ()
{
    u8 i;
    u32 v0[32];
    u8 * v1 = (u8 *)&v0[0];
    const u8 v2 = 32 * sizeof(u32);

    for (i = 0; i < v2 - 1; i++) {
        v1[i] = (u8)(((s64)(i * 2 + 1) * (i * 2 + 1) * (i * 2 + 1) * (i * 2 + 1)) >> (LIGHTING_L_DOT_S_SHIFT * (4 - 1)));
    }

    v1[v2 - 1] = 0xFF;

    NNS_G3dGeShininess(&v0[0]);
}

#include <nitro/codereset.h>
static void ov117_02262E0C (UnkStruct_ov117_022626B0 * param0)
{
    int v0;
    fx32 v1;
    fx32 v2;

    v2 = ((-(128 * FX32_ONE)) - 0) / 8;

    for (v0 = 0; v0 < 8; v0++) {
        v1 = 0 + v0 * v2;

        param0->unk_0C[v0].unk_00.unk_00 = 0;
        param0->unk_0C[v0].unk_00.unk_04 = v1;
        param0->unk_0C[v0].unk_08.unk_00 = 0;
        param0->unk_0C[v0].unk_08.unk_04 = v1 + v2;
        param0->unk_0C[v0].unk_10.unk_00 = ((128 * FX32_ONE));
        param0->unk_0C[v0].unk_10.unk_04 = v1;
        param0->unk_0C[v0].unk_18.unk_00 = ((128 * FX32_ONE));
        param0->unk_0C[v0].unk_18.unk_04 = v1 + v2;
    }
}

static void ov117_02262E5C (UnkStruct_ov117_022626B0 * param0)
{
    int v0;
    fx32 v1;
    fx32 v2;

    v2 = 128 * FX32_ONE / 8;

    for (v0 = 0; v0 < 8; v0++) {
        v1 = v0 * v2;

        param0->unk_10C[v0].unk_00.unk_00 = 0;
        param0->unk_10C[v0].unk_00.unk_04 = v1;
        param0->unk_10C[v0].unk_08.unk_00 = 0;
        param0->unk_10C[v0].unk_08.unk_04 = v1 + v2;
        param0->unk_10C[v0].unk_10.unk_00 = 128 * FX32_ONE;
        param0->unk_10C[v0].unk_10.unk_04 = v1;
        param0->unk_10C[v0].unk_18.unk_00 = 128 * FX32_ONE;
        param0->unk_10C[v0].unk_18.unk_04 = v1 + v2;
    }
}

static void ov117_02262EAC (UnkStruct_ov117_022626B0 * param0)
{
    int v0;
    fx64 v1, v2;
    fx16 v3, v4;

    for (v0 = 0; v0 < 8; v0++) {
        NNS_G3dGeBegin(GX_BEGIN_QUADS);

        ov117_02263168(param0->unk_0C[v0].unk_00.unk_00, param0->unk_0C[v0].unk_00.unk_04, &v3, &v4);
        NNS_G3dGeTexCoord(param0->unk_10C[v0].unk_00.unk_00, param0->unk_10C[v0].unk_00.unk_04);
        inline_ov117_02262EAC(0);
        NNS_G3dGeVtx(v3, v4, 0);

        ov117_02263168(param0->unk_0C[v0].unk_08.unk_00, param0->unk_0C[v0].unk_08.unk_04, &v3, &v4);
        NNS_G3dGeTexCoord(param0->unk_10C[v0].unk_08.unk_00, param0->unk_10C[v0].unk_08.unk_04);
        inline_ov117_02262EAC(0);
        NNS_G3dGeVtx(v3, v4, 0);

        ov117_02263168(param0->unk_0C[v0].unk_18.unk_00, param0->unk_0C[v0].unk_18.unk_04, &v3, &v4);
        NNS_G3dGeTexCoord(param0->unk_10C[v0].unk_18.unk_00, param0->unk_10C[v0].unk_18.unk_04);
        inline_ov117_02262EAC(0);
        NNS_G3dGeVtx(v3, v4, 0);

        ov117_02263168(param0->unk_0C[v0].unk_10.unk_00, param0->unk_0C[v0].unk_10.unk_04, &v3, &v4);
        NNS_G3dGeTexCoord(param0->unk_10C[v0].unk_10.unk_00, param0->unk_10C[v0].unk_10.unk_04);
        inline_ov117_02262EAC(0);
        NNS_G3dGeVtx(v3, v4, 0);

        NNS_G3dGeEnd();
    }
}

static void ov117_02263168 (fx32 param0, fx32 param1, fx16 * param2, fx16 * param3)
{
    fx32 v0, v1;

    v0 = (FX16_ONE)*(fx64)param0 / (128 * FX32_ONE);
    v1 = (FX16_ONE)*(fx64)param1 / (128 * FX32_ONE);

    GF_ASSERT(v0 <= FX16_MAX);
    GF_ASSERT(v0 >= FX16_MIN);
    GF_ASSERT(v1 <= FX16_MAX);
    GF_ASSERT(v1 >= FX16_MIN);

    v0 -= ((FX16_ONE) / 2);
    v1 += ((FX16_ONE) / 2);

    GF_ASSERT(v0 <= FX16_MAX);
    GF_ASSERT(v0 >= FX16_MIN);
    GF_ASSERT(v1 <= FX16_MAX);
    GF_ASSERT(v1 >= FX16_MIN);

    *param2 = v0;
    *param3 = v1;
}

static BOOL ov117_02263270 (UnkStruct_ov117_022626B0 * param0)
{
    int v0;

    if ((param0->unk_238 == 1) || (param0->unk_218 == 0)) {
        return 0;
    }

    v0 = (param0->unk_230 >> FX32_SHIFT) + Unk_ov117_02266B05[param0->unk_270].unk_02;

    if ((param0->unk_20C < Unk_ov117_02266B05[param0->unk_270].unk_00) || (param0->unk_20C > Unk_ov117_02266B05[param0->unk_270].unk_01) || (param0->unk_210 < v0) || (param0->unk_210 > Unk_ov117_02266B05[param0->unk_270].unk_03)) {
        return 0;
    }

    param0->unk_238 = 1;
    param0->unk_224 = param0->unk_20C;
    param0->unk_228 = param0->unk_210;
    param0->unk_22C = param0->unk_210 - v0;
    param0->unk_230 = -(param0->unk_0C[0].unk_10.unk_04 + (param0->unk_0C[0].unk_00.unk_04 - param0->unk_0C[0].unk_10.unk_04) / 2);
    param0->unk_240 = ov117_022638AC(param0);

    return 1;
}

static int ov117_0226334C (UnkStruct_ov117_022626B0 * param0)
{
    int v0 = 0;
    fx32 v1;
    int v2;
    int v3;

    if (param0->unk_238 == 1) {
        if (param0->unk_210 < param0->unk_23C) {
            param0->unk_274 = 0;
            return 0;
        } else if (param0->unk_210 == param0->unk_23C) {
            param0->unk_274 = 0;
            return 1;
        }

        if ((param0->unk_23C != -1) && (param0->unk_210 > param0->unk_23C) && (sub_020057D4(1399) == 0)) {
            sub_02005748(1399);
            param0->unk_274 = 1;
        }

        v3 = param0->unk_210 - param0->unk_22C;
        v1 = (v3 << FX32_SHIFT) - (param0->unk_230 + (Unk_ov117_02266B05[param0->unk_270].unk_02 << FX32_SHIFT));
        param0->unk_23C = param0->unk_210;
    } else {
        v0 = 1;
        v1 = -param0->unk_248;
    }

    v2 = ov117_02263448(param0, v0, v1);

    switch (v2) {
    case 0:
    default:
        break;
    case 1:
    case 2:
        ov117_02262A38(param0);
        break;
    }

    param0->unk_230 = -(param0->unk_0C[0].unk_10.unk_04 + (param0->unk_0C[0].unk_00.unk_04 - param0->unk_0C[0].unk_10.unk_04) / 2);
    return 1;
}

static int ov117_02263448 (UnkStruct_ov117_022626B0 * param0, int param1, fx32 param2)
{
    fx32 v0, v1, v2, v3, v4, v5, v6;
    fx32 v7, v8;
    fx32 v9, v10;
    u16 v11, v12;
    int v13 = 0;

    if ((param1 == 0) && (param2 < 0)) {
        (void)0;
    }

    v0 = param0->unk_210 << FX32_SHIFT;
    v3 = -param0->unk_0C[0].unk_00.unk_04;
    v4 = -param0->unk_0C[0].unk_10.unk_04;
    v7 = v4 + (v3 - v4) / 2;

    switch (ov117_022637AC(param0, param1)) {
    case 0:
        v5 = v3 + param2;
        v6 = v4 + param2;
        break;
    case 1:
        v13 = ov117_022637E4(param0, param2, v3, v4, &v5, &v6);
        break;
    case 2:
        v13 = ov117_022637E4(param0, param2, v4, v3, &v6, &v5);
        break;
    }

    v8 = v6 + (v5 - v6) / 2;

    if ((v7 == v8) && (v3 == v5) && (v4 == v6)) {
        return 0;
    }

    if (v8 < 0) {
        v8 = 0;
    }

    if (v5 < 0) {
        v5 = 0;
    }

    if (v6 < 0) {
        v6 = 0;
    }

    if (v8 > (((128 * FX32_ONE) / 8 * (8 - 1)) - 12 * FX32_ONE)) {
        v8 = (((128 * FX32_ONE) / 8 * (8 - 1)) - 12 * FX32_ONE);
        v13 = 1;
    }

    if (v5 > (((128 * FX32_ONE) / 8 * (8 - 1)) - 12 * FX32_ONE)) {
        v5 = (((128 * FX32_ONE) / 8 * (8 - 1)) - 12 * FX32_ONE);
        v13 = 1;
    }

    if (v6 > (((128 * FX32_ONE) / 8 * (8 - 1)) - 12 * FX32_ONE)) {
        v6 = (((128 * FX32_ONE) / 8 * (8 - 1)) - 12 * FX32_ONE);
        v13 = 1;
    }

    {
        fx32 v14, v15;
        int v16;

        v16 = 64;

        switch (ov117_022637AC(param0, param1)) {
        case 0:
        default:
            if (v5 < v6) {
                v14 = v16 * FX32_ONE;
            } else if (v5 > v6) {
                v14 = -v16 * FX32_ONE;
            } else {
                v14 = 0;
            }

            v14 = v16 * FX32_ONE;
            v15 = v6 - v8;
            v11 = FX_Atan2Idx(v15, v14);
            v12 = v11 + 0x8000;
            break;
        case 2:
            v14 = v16 * FX32_ONE;
            v15 = (v6 - v8);
            v11 = FX_Atan2Idx(v15, v14);
            v12 = v11 + 0x8000;
            break;
        case 1:
            v14 = -v16 * FX32_ONE;
            v15 = v5 - v8;
            v12 = FX_Atan2Idx(v15, v14);
            v11 = v12 + 0x8000;
            break;
        }
    }

    {
        fx32 v17 = ((128 * FX32_ONE) / 2) / FX32_ONE;

        param0->unk_0C[0].unk_00.unk_00 = v17 * FX_CosIdx(v12) + ((128 * FX32_ONE) / 2);
        param0->unk_0C[0].unk_00.unk_04 = -(v17 * FX_SinIdx(v12) + v8);
        param0->unk_0C[0].unk_10.unk_00 = v17 * FX_CosIdx(v11) + ((128 * FX32_ONE) / 2);
        param0->unk_0C[0].unk_10.unk_04 = -(v17 * FX_SinIdx(v11) + v8);

        {
            int v18;
            fx32 v19;
            s32 v20;

            v19 = (((128 * FX32_ONE) / 8 * (8 - 1)) - v8) / (8 - 1);

            if (v11 > 0x8000) {
                v20 = -(0x10000 - v11) / (8 - 1);
            } else {
                v20 = v11 / (8 - 1);
            }

            for (v18 = 1; v18 < (8 - 1); v18++) {
                param0->unk_0C[v18].unk_00.unk_00 = v17 * FX_CosIdx(v12 - v20 * v18) + ((128 * FX32_ONE) / 2);
                param0->unk_0C[v18].unk_00.unk_04 = -(v17 * FX_SinIdx(v12 - v20 * v18) + v8 + v19 * v18);
                param0->unk_0C[v18].unk_10.unk_00 = v17 * FX_CosIdx(v11 - v20 * v18) + ((128 * FX32_ONE) / 2);
                param0->unk_0C[v18].unk_10.unk_04 = -(v17 * FX_SinIdx(v11 - v20 * v18) + v8 + v19 * v18);
                param0->unk_0C[v18 - 1].unk_08.unk_00 = param0->unk_0C[v18].unk_00.unk_00;
                param0->unk_0C[v18 - 1].unk_08.unk_04 = param0->unk_0C[v18].unk_00.unk_04;
                param0->unk_0C[v18 - 1].unk_18.unk_00 = param0->unk_0C[v18].unk_10.unk_00;
                param0->unk_0C[v18 - 1].unk_18.unk_04 = param0->unk_0C[v18].unk_10.unk_04;
            }
        }
    }
    if (v13 == 1) {
        return 2;
    }

    return 0;
}

static int ov117_022637AC (UnkStruct_ov117_022626B0 * param0, int param1)
{
    if (param1 == 1) {
        return 0;
    }
    if (param0->unk_224 < param0->unk_21C - 16) {
        return 1;
    }
    if (param0->unk_224 > param0->unk_21C + 16) {
        return 2;
    }

    return 0;
}

static int ov117_022637E4 (UnkStruct_ov117_022626B0 * param0, fx32 param1, fx32 param2, fx32 param3, fx32 * param4, fx32 * param5)
{
    int v0 = 0;

    *param4 = param2;
    *param5 = param3;

    if (param2 + param1 > (((128 * FX32_ONE) / 8 * (8 - 1)) - 12 * FX32_ONE)) {
        param1 -= (param2 + param1) - (((128 * FX32_ONE) / 8 * (8 - 1)) - 12 * FX32_ONE);
        v0 = 1;
    }

    *param4 = param2 + param1;

    if (param3 <= param2) {
        *param5 = param3 - (param1 * 25 / 100);
    } else {
        *param5 = param3;
    }

    return v0;
}

static fx32 ov117_0226384C (UnkStruct_ov117_022626B0 * param0)
{
    fx32 v0, v1, v2;
    fx32 v3, v4, v5;
    fx32 v6;
    int v7 = (8 - 1) - 1;

    v3 = param0->unk_0C[0].unk_10.unk_04 + (param0->unk_0C[0].unk_00.unk_04 - param0->unk_0C[0].unk_10.unk_04) / 2;
    v2 = -(param0->unk_0C[v7].unk_08.unk_04 - v3);
    v4 = param0->unk_0C[0].unk_10.unk_00 - param0->unk_0C[0].unk_00.unk_00;
    v5 = param0->unk_0C[v7].unk_18.unk_00 - param0->unk_0C[v7].unk_08.unk_00;
    v6 = FX_Mul(v4 + v5, v2) / 2;

    return v6;
}

static int ov117_022638AC (UnkStruct_ov117_022626B0 * param0)
{
    fx32 v0;
    int v1;

    v0 = ov117_0226384C(param0);
    v1 = 100 * (fx64)v0 / (((((((128 * FX32_ONE)) - 0) + (((128 * FX32_ONE)) - 0)) * (fx64)((((128 * FX32_ONE) / 8 * (8 - 1)) - 12 * FX32_ONE))) >> FX32_SHIFT) / 2);

    return v1;
}

static void ov117_022638D8 (UnkStruct_ov117_02261280 * param0)
{
    NARC * v0;

    v0 = NARC_ctor(NARC_INDEX_APPLICATION__BALLOON__GRAPHIC__BALLOON_GRA, 110);

    sub_0200CDC4(param0->unk_8C, 2, param0->unk_24, param0->unk_28, v0, 58, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 10005);
    sub_0200CC3C(param0->unk_24, param0->unk_28, v0, 55, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 10003);
    sub_0200CE24(param0->unk_24, param0->unk_28, v0, 57, 0, 10003);
    sub_0200CE54(param0->unk_24, param0->unk_28, v0, 56, 0, 10003);
    NARC_dtor(v0);
}

static void ov117_022639BC (UnkStruct_ov117_02261280 * param0)
{
    sub_0200D070(param0->unk_28, 10003);
    sub_0200D090(param0->unk_28, 10003);
    sub_0200D0A0(param0->unk_28, 10003);
    sub_0200D080(param0->unk_28, 10005);
}

static CellActorData * ov117_02263A00 (UnkStruct_ov117_02261280 * param0)
{
    CellActorData * v0;
    UnkStruct_ov104_0223F9E0 v1;

    v1 = Unk_ov117_02266B38;
    v0 = sub_0200CE6C(param0->unk_24, param0->unk_28, &v1);

    sub_0200D3F4(v0, 0);
    sub_0200D324(v0->unk_00);

    return v0;
}

static void ov117_02263A6C (UnkStruct_ov117_022626B0 * param0, CellActorData * param1)
{
    int v0;

    if (param0->unk_238 == 0) {
        v0 = 0;
    } else {
        v0 = ov117_022637AC(param0, 0) + 1;
    }

    sub_0200D500(param1, param0->unk_21C, (param0->unk_230 >> FX32_SHIFT) + Unk_ov117_02266B05[param0->unk_270].unk_02, ((192 + 160) << FX32_SHIFT));
    sub_0200D364(param1, v0);
    sub_0200D324(param1->unk_00);
}

static void ov117_02263AE4 (CellActorData * param0)
{
    sub_0200D0F4(param0);
}
