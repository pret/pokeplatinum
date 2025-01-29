#include "unk_02012744.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020127E8.h"

#include "bg_window.h"
#include "cell_actor.h"
#include "graphics.h"
#include "heap.h"
#include "unk_0201E86C.h"

typedef struct {
    CellActor *unk_00;
    int unk_04;
    int unk_08;
} UnkStruct_02012CE0_sub1;

typedef struct FontOAM {
    UnkStruct_02012CE0_sub1 *unk_00;
    int unk_04;
    const CellActor *unk_08;
    int unk_0C;
    int unk_10;
} FontOAM;

typedef struct UnkStruct_02012744_t {
    void *unk_00[12];
    NNSG2dCellDataBank *unk_30[12];
    FontOAM *unk_60;
    int unk_64;
} UnkStruct_02012744;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
} UnkStruct_02012DE4;

typedef struct {
    UnkStruct_02012DE4 unk_00;
    UnkStruct_02012DE4 unk_10;
    u8 unk_20;
} UnkStruct_02012D34;

typedef struct UnkStruct_02013034_t {
    int unk_00;
    int unk_04;
    int unk_08;
    struct UnkStruct_02013034_t *unk_0C;
    struct UnkStruct_02013034_t *unk_10;
} UnkStruct_02013034;

typedef struct UnkStruct_02012B20_t {
    UnkStruct_02013034 unk_00;
    int unk_14;
} UnkStruct_02012B20;

static void sub_02012CD0(FontOAM *param0);
static FontOAM *sub_02012CE0(const UnkStruct_02012744 *param0);
static int sub_02012D08(int param0, int param1);
static BOOL sub_02012D34(UnkStruct_02012D34 *param0, UnkStruct_02013034 *param1, int param2);
static int sub_02012DE4(int param0, int param1, int param2, UnkStruct_02013034 *param3);
static void sub_02012E6C(const Window *param0, const UnkStruct_02013034 *param1, NNSG2dImageProxy *param2, int param3, int param4, int param5);
static int sub_02012EE0(const Window *param0, const UnkStruct_02013034 *param1, NNSG2dImageProxy *param2, int param3, int param4, int param5, int param6, int param7);
static int sub_02013034(const UnkStruct_02013034 *param0, int param1);
static void sub_02013088(const FontOAMInitData *param0, const UnkStruct_02013034 *param1, const NNSG2dImageProxy *param2, FontOAM *param3);
static CellActor *sub_02013100(const FontOAMInitData *param0, const UnkStruct_02013034 *param1, const NNSG2dImageProxy *param2);
static void sub_020130DC(FontOAM *param0);
static UnkStruct_02013034 *sub_02013188(int param0);
static void sub_020131A4(UnkStruct_02013034 *param0);
static void sub_020131B8(UnkStruct_02013034 *param0);
static void sub_020131D0(UnkStruct_02013034 *param0, UnkStruct_02013034 *param1);
static void sub_02012F98(const Window *param0, char *param1, const UnkStruct_02013034 *param2, int param3, int param4);
static int sub_02012FF0(const Window *param0, const UnkStruct_02013034 *param1, char *param2, int param3, int param4, int param5, int param6);

static const u8 Unk_020E52E4[12][2] = {
    { 0x8, 0x8 },
    { 0x8, 0x4 },
    { 0x4, 0x8 },
    { 0x4, 0x4 },
    { 0x4, 0x2 },
    { 0x4, 0x1 },
    { 0x2, 0x4 },
    { 0x2, 0x2 },
    { 0x2, 0x1 },
    { 0x1, 0x4 },
    { 0x1, 0x2 },
    { 0x1, 0x1 }
};

UnkStruct_02012744 *sub_02012744(int param0, int param1)
{
    UnkStruct_02012744 *v0;
    int v1;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_02012744));
    GF_ASSERT(v0);

    for (v1 = 0; v1 < 12; v1++) {
        v0->unk_00[v1] = Graphics_GetCellBank(
            35, v1, 0, &v0->unk_30[v1], param1);

        GF_ASSERT(v0->unk_00[v1]);
    }

    v0->unk_60 = Heap_AllocFromHeap(param1, sizeof(FontOAM) * param0);
    GF_ASSERT(v0->unk_60);

    v0->unk_64 = param0;
    memset(v0->unk_60, 0, sizeof(FontOAM) * param0);

    return v0;
}

void sub_020127BC(UnkStruct_02012744 *param0)
{
    int v0;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < 12; v0++) {
        Heap_FreeToHeap(param0->unk_00[v0]);
    }

    Heap_FreeToHeap(param0->unk_60);
    Heap_FreeToHeap(param0);
}

FontOAM *sub_020127E8(const FontOAMInitData *param0)
{
    FontOAM *v0;
    UnkStruct_02013034 v1;
    int v2;
    NNSG2dImageProxy *v3;

    GF_ASSERT(param0);

    v0 = sub_02012CE0(param0->unk_00);
    GF_ASSERT(v0);

    v0->unk_08 = param0->unk_10;
    v0->unk_0C = param0->unk_18;
    v0->unk_10 = param0->unk_1C;

    v1.unk_0C = &v1;
    v1.unk_10 = &v1;

    v2 = sub_02012DE4(param0->unk_04->width, param0->unk_04->height, param0->unk_2C, &v1);
    v3 = Heap_AllocFromHeapAtEnd(param0->unk_2C, sizeof(NNSG2dImageProxy) * v2);

    v0->unk_00 = Heap_AllocFromHeap(param0->unk_2C, sizeof(UnkStruct_02012CE0_sub1) * v2);
    v0->unk_04 = v2;

    sub_02012E6C(param0->unk_04, &v1, v3, param0->unk_14, param0->unk_28, param0->unk_2C);
    sub_02013088(param0, &v1, v3, v0);
    Heap_FreeToHeap(v3);
    sub_020131B8(&v1);

    return v0;
}

void sub_02012870(FontOAM *param0)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_00);

    sub_020130DC(param0);
    Heap_FreeToHeap(param0->unk_00);
    sub_02012CD0(param0);
}

int sub_02012898(const Window *param0, int param1, int param2)
{
    UnkStruct_02013034 v0;
    int v1;

    v0.unk_0C = &v0;
    v0.unk_10 = &v0;

    sub_02012DE4(param0->width, param0->height, param2, &v0);
    v1 = sub_02013034(&v0, param1);
    sub_020131B8(&v0);

    return v1;
}

void sub_020128C4(FontOAM *param0, int param1, int param2)
{
    int v0;
    VecFx32 v1;
    const VecFx32 *v2;

    GF_ASSERT(param0);

    param0->unk_0C = param1;
    param0->unk_10 = param2;

    param1 *= FX32_ONE;
    param2 *= FX32_ONE;

    if (param0->unk_08) {
        v2 = CellActor_GetPosition(param0->unk_08);

        param1 += v2->x;
        param2 += v2->y;
    }

    v1.z = 0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        v1.x = param1 + (param0->unk_00[v0].unk_04 << FX32_SHIFT);
        v1.y = param2 + (param0->unk_00[v0].unk_08 << FX32_SHIFT);

        CellActor_SetPosition(param0->unk_00[v0].unk_00, &v1);
    }
}

void sub_02012938(FontOAM *param0)
{
    int v0;
    VecFx32 v1;
    const VecFx32 *v2;
    fx32 v3, v4;

    GF_ASSERT(param0);

    if (param0->unk_08) {
        v3 = param0->unk_0C << FX32_SHIFT;
        v4 = param0->unk_10 << FX32_SHIFT;
        v2 = CellActor_GetPosition(param0->unk_08);

        v3 += v2->x;
        v4 += v2->y;

        v1.z = 0;

        for (v0 = 0; v0 < param0->unk_04; v0++) {
            v1.x = v3 + (param0->unk_00[v0].unk_04 << FX32_SHIFT);
            v1.y = v4 + (param0->unk_00[v0].unk_08 << FX32_SHIFT);

            CellActor_SetPosition(param0->unk_00[v0].unk_00, &v1);
        }
    }
}

void sub_020129A4(const FontOAM *param0, int *param1, int *param2)
{
    GF_ASSERT(param0);
    GF_ASSERT(param1);
    GF_ASSERT(param2);

    *param1 = param0->unk_0C;
    *param2 = param0->unk_10;
}

void FontOAM_SetDrawFlag(FontOAM *param0, BOOL param1)
{
    int v0;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        CellActor_SetDrawFlag(param0->unk_00[v0].unk_00, param1);
    }
}

void sub_02012A00(FontOAM *param0, u8 param1)
{
    int v0;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        CellActor_SetExplicitPriority(param0->unk_00[v0].unk_00, param1);
    }
}

void sub_02012A30(FontOAM *param0, u32 param1)
{
    int v0;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        CellActor_SetPriority(param0->unk_00[v0].unk_00, param1);
    }
}

void sub_02012A60(FontOAM *param0, u32 param1)
{
    int v0;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        CellActor_SetExplicitPalette(param0->unk_00[v0].unk_00, param1);
    }
}

void sub_02012A90(FontOAM *param0, u32 param1)
{
    int v0;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        CellActor_SetExplicitPaletteOffset(param0->unk_00[v0].unk_00, param1);
    }
}

void sub_02012AC0(FontOAM *param0, u32 param1)
{
    int v0;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        CellActor_SetExplicitPaletteOffsetAutoAdjust(param0->unk_00[v0].unk_00, param1);
    }
}

void sub_02012AF0(FontOAM *param0, GXOamMode param1)
{
    int v0;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        CellActor_SetExplicitOAMMode(param0->unk_00[v0].unk_00, param1);
    }
}

UnkStruct_02012B20 *sub_02012B20(const Window *param0, int param1)
{
    UnkStruct_02012B20 *v0;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_02012B20));

    v0->unk_00.unk_0C = &v0->unk_00;
    v0->unk_00.unk_10 = &v0->unk_00;
    v0->unk_14 = sub_02012DE4(param0->width, param0->height, param1, &v0->unk_00);

    return v0;
}

void sub_02012B48(UnkStruct_02012B20 *param0)
{
    sub_020131B8(&param0->unk_00);
    Heap_FreeToHeap(param0);
}

int sub_02012B58(const UnkStruct_02012B20 *param0, int param1)
{
    return sub_02013034(&param0->unk_00, param1);
}

FontOAM *sub_02012B60(const FontOAMInitData *param0, const UnkStruct_02012B20 *param1)
{
    FontOAM *v0;
    NNSG2dImageProxy *v1;

    GF_ASSERT(param0);
    v0 = sub_02012CE0(param0->unk_00);

    GF_ASSERT(v0);

    v0->unk_08 = param0->unk_10;
    v0->unk_0C = param0->unk_18;
    v0->unk_10 = param0->unk_1C;

    v1 = Heap_AllocFromHeapAtEnd(param0->unk_2C, sizeof(NNSG2dImageProxy) * param1->unk_14);

    v0->unk_00 = Heap_AllocFromHeap(param0->unk_2C, sizeof(UnkStruct_02012CE0_sub1) * param1->unk_14);
    v0->unk_04 = param1->unk_14;

    sub_02012E6C(param0->unk_04, &param1->unk_00, v1, param0->unk_14, param0->unk_28, param0->unk_2C);
    sub_02013088(param0, &param1->unk_00, v1, v0);
    Heap_FreeToHeap(v1);

    return v0;
}

void sub_02012BD8(FontOAM *param0)
{
    sub_02012870(param0);
}

void sub_02012BE0(FontOAM *param0, const UnkStruct_02012B20 *param1, const Window *param2, int param3)
{
    int v0;
    char *v1;
    NNSG2dImageProxy *v2;
    CellActor *v3 = param0->unk_00[0].unk_00;
    int v4;

    v4 = CellActor_GetVRamType(v3);
    v0 = sub_02012B58(param1, v4);
    v1 = (char *)Heap_AllocFromHeapAtEnd(param3, v0);

    memset(v1, 0, v0);

    sub_02012F98(param2, v1, &param1->unk_00, v4, param3);
    DC_FlushRange(v1, v0);

    v2 = SpriteActor_ImageProxy(v3);

    if (v4 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        GX_LoadOBJ(v1, NNS_G2dGetImageLocation(v2, NNS_G2D_VRAM_TYPE_2DMAIN), v0);
    } else {
        GXS_LoadOBJ(v1, NNS_G2dGetImageLocation(v2, NNS_G2D_VRAM_TYPE_2DSUB), v0);
    }

    Heap_FreeToHeap(v1);
}

void sub_02012C60(const Window *param0, int param1, int param2, int param3, int param4, char *param5)
{
    int v0;
    int v1;
    int v2;

    GF_ASSERT(param0->width >= (param1 + param3));
    GF_ASSERT(param0->height >= (param2 + param4));

    for (v0 = 0; v0 < param2; v0++) {
        v1 = v0 * param1;
        v1 *= 32;
        v2 = ((v0 + param4) * param0->width);
        v2 += param3;
        v2 *= 32;

        memcpy(param5 + v1, (char *)(param0->pixels) + v2, 32 * param1);
    }
}

static void sub_02012CD0(FontOAM *param0)
{
    memset(param0, 0, sizeof(FontOAM));
}

static FontOAM *sub_02012CE0(const UnkStruct_02012744 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_64; v0++) {
        if (param0->unk_60[v0].unk_00 == NULL) {
            return param0->unk_60 + v0;
        }
    }

    return NULL;
}

static int sub_02012D08(int param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 12; v0++) {
        if ((Unk_020E52E4[v0][0] <= param0) && (Unk_020E52E4[v0][1] <= param1)) {
            return v0;
        }
    }

    return 12;
}

static BOOL sub_02012D34(UnkStruct_02012D34 *param0, UnkStruct_02013034 *param1, int param2)
{
    UnkStruct_02013034 *v0;
    int v1;
    int v2;

    v0 = sub_02013188(param2);
    sub_020131D0(v0, param1->unk_10);

    v0->unk_08 = sub_02012D08(param0->unk_00.unk_08, param0->unk_00.unk_0C);
    v0->unk_00 = param0->unk_00.unk_04;
    v0->unk_04 = param0->unk_00.unk_00;

    v2 = param0->unk_00.unk_08 - Unk_020E52E4[v0->unk_08][0];
    v1 = param0->unk_00.unk_0C - Unk_020E52E4[v0->unk_08][1];

    if (v2 > 0) {
        param0->unk_10.unk_0C = param0->unk_00.unk_0C;
        param0->unk_10.unk_08 = v2;
        param0->unk_10.unk_00 = param0->unk_00.unk_00;
        param0->unk_10.unk_04 = param0->unk_00.unk_04 + Unk_020E52E4[v0->unk_08][0];

        GF_ASSERT(param0->unk_20 != 1);
        param0->unk_20 = 1;
    }

    if (v1 > 0) {
        param0->unk_00.unk_00 = param0->unk_00.unk_00 + Unk_020E52E4[v0->unk_08][1];
        param0->unk_00.unk_0C = v1;
    } else {
        if (param0->unk_20 == 1) {
            param0->unk_00 = param0->unk_10;
            param0->unk_20 = 0;
        } else {
            return 1;
        }
    }

    return 0;
}

static int sub_02012DE4(int param0, int param1, int param2, UnkStruct_02013034 *param3)
{
    UnkStruct_02012DE4 v0;
    UnkStruct_02012D34 v1;
    int v2;
    int v3;

    GF_ASSERT(param0);
    GF_ASSERT(param1);

    v3 = 0;

    v1.unk_00.unk_00 = 0;
    v1.unk_00.unk_04 = 0;
    v1.unk_00.unk_08 = param0;
    v1.unk_00.unk_0C = param1;
    v1.unk_20 = 0;

    v0.unk_04 = 0;
    v0.unk_08 = param0;

    while (v1.unk_00.unk_0C != 0) {
        v2 = sub_02012D08(v1.unk_00.unk_08, v1.unk_00.unk_0C);

        v0.unk_00 = v1.unk_00.unk_00 + Unk_020E52E4[v2][1];
        v0.unk_0C = v1.unk_00.unk_0C - Unk_020E52E4[v2][1];
        v1.unk_00.unk_0C = Unk_020E52E4[v2][1];

        do {
            v3++;
        } while (sub_02012D34(&v1, param3, param2) == 0);

        v1.unk_00 = v0;
    }

    return v3;
}

static void sub_02012E6C(const Window *param0, const UnkStruct_02013034 *param1, NNSG2dImageProxy *param2, int param3, int param4, int param5)
{
    UnkStruct_02013034 *v0;
    int v1;
    int v2;
    GXOBJVRamModeChar v3;

    if (param4 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        v3 = GX_GetOBJVRamModeChar();
    } else {
        v3 = GXS_GetOBJVRamModeChar();
    }

    v2 = sub_0201F6F4(v3);
    v1 = 0;
    v0 = param1->unk_0C;

    while (v0 != param1) {
        NNS_G2dInitImageProxy(param2 + v1);
        param3 = sub_02012EE0(param0, v0, param2 + v1, v2, v3, param3, param4, param5);
        v0 = v0->unk_0C;
        v1++;
    }
}

static int sub_02012EE0(const Window *param0, const UnkStruct_02013034 *param1, NNSG2dImageProxy *param2, int param3, int param4, int param5, int param6, int param7)
{
    char *v0;
    int v1;
    int v2, v3;

    v2 = Unk_020E52E4[param1->unk_08][0];
    v3 = Unk_020E52E4[param1->unk_08][1];
    v1 = v2;
    v1 *= v3;

    if (v1 < param3) {
        v1 = param3;
    }

    v1 *= 32;
    v0 = Heap_AllocFromHeapAtEnd(param7, v1);

    sub_02012C60(param0, v2, v3, param1->unk_00, param1->unk_04, v0);
    DC_FlushRange(v0, v1);

    if (param6 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        GX_LoadOBJ(v0, param5, v1);
        param2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN] = param5;
        param2->attr.mappingType = GX_GetOBJVRamModeChar();
    } else {
        GXS_LoadOBJ(v0, param5, v1);
        param2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DSUB] = param5;
        param2->attr.mappingType = GXS_GetOBJVRamModeChar();
    }

    param2->attr.sizeS = NNS_G2D_1D_MAPPING_CHAR_SIZE;
    param2->attr.sizeT = NNS_G2D_1D_MAPPING_CHAR_SIZE;
    param2->attr.fmt = GX_TEXFMT_PLTT16;
    param2->attr.bExtendedPlt = 0;
    param2->attr.plttUse = GX_TEXPLTTCOLOR0_TRNS;
    param2->attr.mappingType = param4;

    Heap_FreeToHeap(v0);

    return param5 + v1;
}

static void sub_02012F98(const Window *param0, char *param1, const UnkStruct_02013034 *param2, int param3, int param4)
{
    UnkStruct_02013034 *v0;
    int v1;
    int v2;
    int v3;
    GXOBJVRamModeChar v4;

    if (param3 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        v4 = GX_GetOBJVRamModeChar();
    } else {
        v4 = GXS_GetOBJVRamModeChar();
    }

    v2 = sub_0201F6F4(v4);
    v3 = 0;
    v0 = param2->unk_0C;

    while (v0 != param2) {
        v3 = sub_02012FF0(param0, v0, param1, v3, v2, v4, param4);
        v0 = v0->unk_0C;
    }
}

static int sub_02012FF0(const Window *param0, const UnkStruct_02013034 *param1, char *param2, int param3, int param4, int param5, int param6)
{
    int v0;
    int v1, v2;

    v1 = Unk_020E52E4[param1->unk_08][0];
    v2 = Unk_020E52E4[param1->unk_08][1];
    v0 = v1;
    v0 *= v2;

    if (v0 < param4) {
        v0 = param4;
    }

    v0 *= 32;
    sub_02012C60(param0, v1, v2, param1->unk_00, param1->unk_04, &param2[param3]);

    return param3 + v0;
}

static int sub_02013034(const UnkStruct_02013034 *param0, int param1)
{
    UnkStruct_02013034 *v0;
    int v1;
    GXOBJVRamModeChar v2;
    int v3;
    int v4;
    int v5, v6;

    if (param1 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        v2 = GX_GetOBJVRamModeChar();
    } else {
        v2 = GXS_GetOBJVRamModeChar();
    }

    v1 = sub_0201F6F4(v2);
    v3 = 0;
    v0 = param0->unk_0C;

    while (v0 != param0) {
        v5 = Unk_020E52E4[v0->unk_08][0];
        v6 = Unk_020E52E4[v0->unk_08][1];
        v4 = v5 * v6;

        if (v4 < v1) {
            v4 = v1;
        }

        v3 += v4 * 32;
        v0 = v0->unk_0C;
    }

    return v3;
}

static void sub_02013088(const FontOAMInitData *param0, const UnkStruct_02013034 *param1, const NNSG2dImageProxy *param2, FontOAM *param3)
{
    UnkStruct_02013034 *v0;
    int v1;

    v1 = 0;
    v0 = param1->unk_0C;

    while (v0 != param1) {
        param3->unk_00[v1].unk_00 = sub_02013100(param0, v0, param2 + v1);
        GF_ASSERT(param3->unk_00[v1].unk_00);

        param3->unk_00[v1].unk_04 = v0->unk_00 * 8;
        param3->unk_00[v1].unk_08 = v0->unk_04 * 8;

        v0 = v0->unk_0C;
        v1++;
    }
}

static void sub_020130DC(FontOAM *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        CellActor_Delete(param0->unk_00[v0].unk_00);
    }
}

static CellActor *sub_02013100(const FontOAMInitData *param0, const UnkStruct_02013034 *param1, const NNSG2dImageProxy *param2)
{
    CellActorInitParams v0;
    CellActorResourceData v1;

    v1.imageProxy = param2;
    v1.charData = NULL;
    v1.paletteProxy = param0->unk_0C;
    v1.cellBank = param0->unk_00->unk_30[param1->unk_08];
    v1.cellAnimBank = NULL;
    v1.multiCellBank = NULL;
    v1.multiCellAnimBank = NULL;
    v1.isVRamTransfer = 0;
    v1.priority = param0->unk_20;

    v0.collection = param0->unk_08;
    v0.resourceData = &v1;
    v0.priority = param0->unk_24;
    v0.vramType = param0->unk_28;
    v0.heapID = param0->unk_2C;
    v0.position.x = 0;
    v0.position.y = 0;
    v0.position.z = 0;

    if (param0->unk_10) {
        const VecFx32 *v2;

        v2 = CellActor_GetPosition(param0->unk_10);
        v0.position = *v2;
    }

    v0.position.x += (param0->unk_18 << FX32_SHIFT) + ((param1->unk_00 * 8) << FX32_SHIFT);
    v0.position.y += (param0->unk_1C << FX32_SHIFT) + ((param1->unk_04 * 8) << FX32_SHIFT);

    return CellActorCollection_Add(&v0);
}

static UnkStruct_02013034 *sub_02013188(int param0)
{
    UnkStruct_02013034 *v0;

    v0 = Heap_AllocFromHeapAtEnd(param0, sizeof(UnkStruct_02013034));
    GF_ASSERT(v0);

    v0->unk_0C = NULL;
    v0->unk_10 = NULL;

    return v0;
}

static void sub_020131A4(UnkStruct_02013034 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void sub_020131B8(UnkStruct_02013034 *param0)
{
    UnkStruct_02013034 *v0;
    UnkStruct_02013034 *v1;

    v0 = param0->unk_0C;

    while (v0 != param0) {
        v1 = v0->unk_0C;
        sub_020131A4(v0);
        v0 = v1;
    }
}

static void sub_020131D0(UnkStruct_02013034 *param0, UnkStruct_02013034 *param1)
{
    param0->unk_0C = param1->unk_0C;
    param0->unk_10 = param1;
    param1->unk_0C->unk_10 = param0;
    param1->unk_0C = param0;
}

void sub_020131E0(FontOAM *param0, const CellActor *param1)
{
    param0->unk_08 = param1;
    sub_02012938(param0);
}
