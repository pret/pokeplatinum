#include <nitro.h>
#include <string.h>


#include "struct_defs/struct_0200A5C8.h"

#include "unk_02017E74.h"
#include "unk_0201DBEC.h"
#include "unk_0201F834.h"

typedef struct {
    NNSG2dPaletteData * unk_00;
    NNS_G2D_VRAM_TYPE unk_04;
    u32 unk_08;
    u32 unk_0C;
    NNSG2dImagePaletteProxy unk_10;
    u32 unk_24;
    u32 unk_28;
    u8 unk_2C;
} UnkStruct_0201FB20;

typedef struct {
    UnkStruct_0201FB20 * unk_00;
    int unk_04;
    int unk_08;
    u32 unk_0C;
    u32 unk_10;
    u32 unk_14;
    u32 unk_18;
    u32 unk_1C;
    u32 unk_20;
    u16 unk_24;
    u16 unk_26;
} UnkStruct_0201FD9C;

static void sub_0201FB20(UnkStruct_0201FB20 * param0);
static BOOL sub_0201FB3C(const UnkStruct_0200A5C8 * param0, UnkStruct_0201FB20 * param1);
static BOOL sub_0201FB94(const UnkStruct_0200A5C8 * param0, UnkStruct_0201FB20 * param1);
static BOOL sub_0201FAEC(const UnkStruct_0200A5C8 * param0, UnkStruct_0201FB20 * param1);
static void sub_0201FCD4(UnkStruct_0201FB20 * param0);
static void sub_0201FCE4(void * param0);
static void sub_0201FC8C(void);
static void sub_0201FAE4(UnkStruct_0201FB20 * param0);
static UnkStruct_0201FB20 * sub_0201FC18(int param0);
static UnkStruct_0201FB20 * sub_0201FC50(void);
static void sub_0201FD18(u16 * param0, int param1, int param2);
static void sub_0201FD3C(u16 * param0, int param1, int param2);
static int sub_0201FD5C(u16 param0, int param1);
static void sub_0201FD9C(UnkStruct_0201FD9C * param0);
static void sub_0201FDA4(UnkStruct_0201FB20 * param0);
static void sub_0201FDE0(UnkStruct_0201FB20 * param0);
static BOOL sub_0201FE1C(UnkStruct_0201FB20 * param0, u32 param1, u32 param2, u32 param3, u32 param4);
static void sub_0201FE68(UnkStruct_0201FB20 * param0, u32 * param1, u32 * param2);

static UnkStruct_0201FD9C * Unk_021C0764 = NULL;

void sub_0201F834 (int param0, int param1)
{
    int v0;

    if (Unk_021C0764 == NULL) {
        Unk_021C0764 = sub_02018144(param1, sizeof(UnkStruct_0201FD9C));
        MI_CpuClear32(Unk_021C0764, sizeof(UnkStruct_0201FD9C));

        Unk_021C0764->unk_04 = param0;
        Unk_021C0764->unk_00 = sub_02018144(param1, sizeof(UnkStruct_0201FB20) * param0);

        for (v0 = 0; v0 < param0; v0++) {
            sub_0201FB20(Unk_021C0764->unk_00 + v0);
        }
    }
}

void sub_0201F890 (u16 param0, u32 param1)
{
    if (param1 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        Unk_021C0764->unk_24 |= param0;
    } else if (param1 == NNS_G2D_VRAM_TYPE_2DSUB) {
        Unk_021C0764->unk_26 |= param0;
    }
}

void sub_0201F8B4 (void)
{
    if (Unk_021C0764 != NULL) {
        sub_0201FA18();
        sub_020181C4(Unk_021C0764->unk_00);
        sub_020181C4(Unk_021C0764);
        Unk_021C0764 = NULL;
    }
}

static void sub_0201F8E0 (void)
{
    return;
}

void sub_0201F8E4 (void)
{
    Unk_021C0764->unk_0C = 0;
    Unk_021C0764->unk_10 = 0;
    Unk_021C0764->unk_14 = 0;
    Unk_021C0764->unk_18 = 0;

    sub_0201FC8C();
    sub_0201FD9C(Unk_021C0764);
}

BOOL sub_0201F90C (const UnkStruct_0200A5C8 * param0)
{
    UnkStruct_0201FB20 * v0;

    v0 = sub_0201FC50();

    if (v0 == NULL) {
        GF_ASSERT(0 && ("テーブルが一杯で登録できません"));
        return 0;
    }

    if (sub_0201FAEC(param0, v0) == 0) {
        return 0;
    }

    if (sub_0201FB3C(param0, v0) == 0) {
        sub_0201F9F0(param0->unk_0C);
        return 0;
    }

    sub_0201FDA4(v0);

    return 1;
}

BOOL sub_0201F950 (const UnkStruct_0200A5C8 * param0)
{
    UnkStruct_0201FB20 * v0;

    v0 = sub_0201FC50();

    if (v0 == NULL) {
        GF_ASSERT(0 && ("テーブルが一杯で登録できません"));
        return 0;
    }

    if (sub_0201FAEC(param0, v0) == 0) {
        return 0;
    }

    if (sub_0201FB94(param0, v0) == 0) {
        sub_0201F9F0(param0->unk_0C);
        return 0;
    }

    return 1;
}

void sub_0201F990 (int param0, NNSG2dPaletteData * param1)
{
    UnkStruct_0201FB20 * v0;

    GF_ASSERT(param1);
    v0 = sub_0201FC18(param0);

    GF_ASSERT(v0);
    v0->unk_00 = param1;

    if (v0->unk_04 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        sub_0201DC68(NNS_GFD_DST_2D_OBJ_PLTT_MAIN, v0->unk_24, param1->pRawData, v0->unk_08 * 32);
    }

    if (v0->unk_04 & NNS_G2D_VRAM_TYPE_2DSUB) {
        sub_0201DC68(NNS_GFD_DST_2D_OBJ_PLTT_SUB, v0->unk_28, param1->pRawData, v0->unk_08 * 32);
    }
}

BOOL sub_0201F9DC (int param0)
{
    UnkStruct_0201FB20 * v0;

    v0 = sub_0201FC18(param0);

    if (v0) {
        return 1;
    }

    return 0;
}

void sub_0201F9F0 (int param0)
{
    UnkStruct_0201FB20 * v0;

    v0 = sub_0201FC18(param0);

    GF_ASSERT(v0);

    if (v0->unk_2C == 1) {
        sub_0201FDE0(v0);
        sub_0201FAE4(v0);
    }
}

void sub_0201FA18 (void)
{
    int v0;

    for (v0 = 0; v0 < Unk_021C0764->unk_04; v0++) {
        if (Unk_021C0764->unk_00[v0].unk_2C == 1) {
            sub_0201FDE0(&Unk_021C0764->unk_00[v0]);
            sub_0201FAE4(&Unk_021C0764->unk_00[v0]);
        }
    }
}

NNSG2dImagePaletteProxy * sub_0201FA58 (int param0)
{
    UnkStruct_0201FB20 * v0;

    v0 = sub_0201FC18(param0);

    if (v0 == NULL) {
        GF_ASSERT(v0);
        return NULL;
    }

    if (v0->unk_2C == 1) {
        return &v0->unk_10;
    }

    return NULL;
}

NNSG2dImagePaletteProxy * sub_0201FA80 (int param0, NNSG2dImageProxy * param1)
{
    UnkStruct_0201FB20 * v0;

    v0 = sub_0201FC18(param0);

    if (v0 == NULL) {
        GF_ASSERT(v0);
        return NULL;
    }

    if (v0->unk_2C != 1) {
        return NULL;
    }

    if (v0->unk_00->bExtendedPlt) {
        NNS_G2dSetImageExtPaletteFlag(param1, 1);
    }

    return &v0->unk_10;
}

u32 sub_0201FAB4 (const NNSG2dImagePaletteProxy * param0, u32 param1)
{
    u32 v0;
    u32 v1;

    if (param0->bExtendedPlt) {
        v0 = 32 * 16;
    } else {
        if (param0->fmt == GX_TEXFMT_PLTT256) {
            v0 = 0;
        } else {
            v0 = 32;
        }
    }

    if (v0 != 0) {
        v1 = NNS_G2dGetImagePaletteLocation(param0, param1);
        v1 /= v0;
    } else {
        v1 = 0;
    }

    return v1;
}

static void sub_0201FAE4 (UnkStruct_0201FB20 * param0)
{
    sub_0201FB20(param0);
}

static BOOL sub_0201FAEC (const UnkStruct_0200A5C8 * param0, UnkStruct_0201FB20 * param1)
{
    param1->unk_00 = param0->unk_00;

    if (sub_0201F9DC(param0->unk_0C) == 1) {
        GF_ASSERT(0);
        return 0;
    }

    param1->unk_0C = param0->unk_0C;
    param1->unk_04 = param0->unk_04;
    param1->unk_2C = 1;
    param1->unk_08 = param0->unk_08;

    return 1;
}

static void sub_0201FB20 (UnkStruct_0201FB20 * param0)
{
    memset(param0, 0, sizeof(UnkStruct_0201FB20));
    param0->unk_0C = 0xffffffff;
    NNS_G2dInitImagePaletteProxy(&param0->unk_10);
}

static BOOL sub_0201FB3C (const UnkStruct_0200A5C8 * param0, UnkStruct_0201FB20 * param1)
{
    u32 * v0;
    u32 * v1;
    BOOL v2 = 1;
    u32 v3;
    u32 v4;

    if (param1->unk_00->bExtendedPlt) {
        v0 = &Unk_021C0764->unk_14;
        v1 = &Unk_021C0764->unk_18;
        v3 = Unk_021C0764->unk_1C;
        v4 = Unk_021C0764->unk_20;
    } else {
        v0 = &Unk_021C0764->unk_0C;
        v1 = &Unk_021C0764->unk_10;
        v3 = (32 * 16);
        v4 = (32 * 16);
    }

    sub_0201FE1C(param1, *v0, *v1, v3, v4);
    sub_0201FCD4(param1);
    sub_0201FE68(param1, v0, v1);

    return v2;
}

static BOOL sub_0201FB94 (const UnkStruct_0200A5C8 * param0, UnkStruct_0201FB20 * param1)
{
    int v0, v1;

    if (param1->unk_00->bExtendedPlt) {
        GF_ASSERT(0);
    }

    if (param1->unk_04 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        v0 = sub_0201FD5C(Unk_021C0764->unk_24, param1->unk_08);

        if (v0 == 0xffffffff) {
            return 0;
        }
    }

    if (param1->unk_04 & NNS_G2D_VRAM_TYPE_2DSUB) {
        v1 = sub_0201FD5C(Unk_021C0764->unk_26, param1->unk_08);

        if (v1 == 0xffffffff) {
            return 0;
        }
    }

    if (param1->unk_04 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        param1->unk_24 = v0;
    }

    if (param1->unk_04 & NNS_G2D_VRAM_TYPE_2DSUB) {
        param1->unk_28 = v1;
    }

    param1->unk_00->szByte = param1->unk_08 * 32;

    sub_0201FCE4(param1);
    sub_0201FDA4(param1);

    return 1;
}

static UnkStruct_0201FB20 * sub_0201FC18 (int param0)
{
    int v0;

    for (v0 = 0; v0 < Unk_021C0764->unk_04; v0++) {
        if (Unk_021C0764->unk_00[v0].unk_0C == param0) {
            return Unk_021C0764->unk_00 + v0;
        }
    }

    return NULL;
}

static UnkStruct_0201FB20 * sub_0201FC50 (void)
{
    int v0;

    for (v0 = 0; v0 < Unk_021C0764->unk_04; v0++) {
        if (Unk_021C0764->unk_00[v0].unk_2C == 0) {
            return Unk_021C0764->unk_00 + v0;
        }
    }

    return NULL;
}

static void sub_0201FC8C (void)
{
    GXVRamOBJExtPltt v0;
    GXVRamSubOBJExtPltt v1;

    v0 = GX_GetBankForOBJExtPltt();

    switch (v0) {
    case GX_VRAM_OBJEXTPLTT_0_F:
    case GX_VRAM_OBJEXTPLTT_0_G:
        Unk_021C0764->unk_1C = (32 * 16 * 16);
        break;
    default:
        Unk_021C0764->unk_1C = 0;
        break;
    }

    v1 = GX_GetBankForSubOBJExtPltt();

    switch (v1) {
    case GX_VRAM_SUB_OBJEXTPLTT_0_I:
        Unk_021C0764->unk_20 = (32 * 16 * 16);
        break;
    default:
        Unk_021C0764->unk_20 = 0;
        break;
    }
}

static void sub_0201FCD4 (UnkStruct_0201FB20 * param0)
{
    param0->unk_00->szByte = param0->unk_08 * 32;
    sub_0201FCE4(param0);
}

static void sub_0201FCE4 (void * param0)
{
    UnkStruct_0201FB20 * v0 = (UnkStruct_0201FB20 *)param0;

    NNS_G2dInitImagePaletteProxy(&v0->unk_10);

    if (v0->unk_04 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        NNS_G2dLoadPalette(v0->unk_00, v0->unk_24, NNS_G2D_VRAM_TYPE_2DMAIN, &v0->unk_10);
    }

    if (v0->unk_04 & NNS_G2D_VRAM_TYPE_2DSUB) {
        NNS_G2dLoadPalette(v0->unk_00, v0->unk_28, NNS_G2D_VRAM_TYPE_2DSUB, &v0->unk_10);
    }
}

static void sub_0201FD18 (u16 * param0, int param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < param1; v0++) {
        *param0 |= 1 << (param2 + v0);
    }
}

static void sub_0201FD3C (u16 * param0, int param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < param1; v0++) {
        *param0 &= ~(1 << (param2 + v0));
    }
}

static int sub_0201FD5C (u16 param0, int param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 16; v0++) {
        v1 = 0;

        while (((param0 & (1 << (v0 + v1))) == 0) && (v1 < param1)) {
            if ((v0 + v1) >= 16) {
                break;
            }

            v1++;
        }

        if (v1 >= param1) {
            break;
        }

        v0 += v1;
    }

    if (v0 >= 16) {
        return 0xffffffff;
    }

    return v0 * 32;
}

static void sub_0201FD9C (UnkStruct_0201FD9C * param0)
{
    param0->unk_24 = 0;
    param0->unk_26 = 0;
}

static void sub_0201FDA4 (UnkStruct_0201FB20 * param0)
{
    if (param0->unk_04 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        sub_0201FD18(&Unk_021C0764->unk_24, param0->unk_08, param0->unk_24 / 32);
    }

    if (param0->unk_04 & NNS_G2D_VRAM_TYPE_2DSUB) {
        sub_0201FD18(&Unk_021C0764->unk_26, param0->unk_08, param0->unk_28 / 32);
    }
}

static void sub_0201FDE0 (UnkStruct_0201FB20 * param0)
{
    if (param0->unk_04 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        sub_0201FD3C(&Unk_021C0764->unk_24, param0->unk_08, param0->unk_24 / 32);
    }

    if (param0->unk_04 & NNS_G2D_VRAM_TYPE_2DSUB) {
        sub_0201FD3C(&Unk_021C0764->unk_26, param0->unk_08, param0->unk_28 / 32);
    }
}

static BOOL sub_0201FE1C (UnkStruct_0201FB20 * param0, u32 param1, u32 param2, u32 param3, u32 param4)
{
    BOOL v0 = 1;

    if (param0->unk_04 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        if ((param1 + (param0->unk_08 * 32) > param3)) {
            GF_ASSERT(FALSE);
            sub_0201F8E0();
            v0 = 0;
        } else {
            param0->unk_24 = param1;
        }
    }

    if (param0->unk_04 & NNS_G2D_VRAM_TYPE_2DSUB) {
        if ((param2 + (param0->unk_08 * 32) > param4)) {
            GF_ASSERT(FALSE);
            sub_0201F8E0();
            v0 = 0;
        } else {
            param0->unk_28 = param2;
        }
    }

    return v0;
}

static void sub_0201FE68 (UnkStruct_0201FB20 * param0, u32 * param1, u32 * param2)
{
    if (param0->unk_04 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        *param1 += param0->unk_08 * 32;
    }

    if (param0->unk_04 & NNS_G2D_VRAM_TYPE_2DSUB) {
        *param2 += param0->unk_08 * 32;
    }
}
