#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0200A328.h"
#include "struct_defs/struct_0201EE28.h"
#include "overlay022/struct_ov22_022559F8.h"

#include "heap.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"

typedef struct {
    NNSG2dCharacterData * unk_00;
    NNS_G2D_VRAM_TYPE unk_04;
    u8 unk_08;
    u32 unk_0C;
    NNSG2dImageProxy unk_10;
    u32 unk_34;
    u32 unk_38;
    u8 unk_3C;
    BOOL unk_40;
    u32 unk_44;
    BOOL unk_48;
    u32 unk_4C;
    u32 unk_50;
} UnkStruct_0201EED4;

typedef struct {
    UnkStruct_0201EED4 * unk_00;
    int unk_04;
    int unk_08;
    u32 unk_0C;
    u32 unk_10;
    s32 unk_14;
    s32 unk_18;
    s32 unk_1C;
    s32 unk_20;
    u32 unk_24;
    u32 unk_28;
    u32 unk_2C;
    u32 unk_30;
    u8 * unk_34;
    u8 * unk_38;
} UnkStruct_021C0760;

static void sub_0201EED4(UnkStruct_0201EED4 * param0);
static BOOL sub_0201EEF8(const UnkStruct_0200A328 * param0, UnkStruct_0201EED4 * param1);
static UnkStruct_0201EED4 * sub_0201EF1C(const NNSG2dImageProxy * param0);
static BOOL sub_0201EF68(UnkStruct_0201EED4 * param0);
static BOOL sub_0201EF98(UnkStruct_0201EED4 * param0);
static BOOL sub_0201EFCC(UnkStruct_0201EED4 * param0);
static void sub_0201F09C(UnkStruct_0201EED4 * param0, u32 param1, u32 param2);
static BOOL sub_0201F0B0(int param0, u32 * param1, u32 * param2, u32 param3, u32 * param4, u32 * param5);
static void sub_0201F15C(UnkStruct_0201EED4 * param0, u32 param1, u32 param2);
static void sub_0201F18C(int param0, u32 param1, u32 param2, u32 param3, u32 param4);
static void sub_0201F1F4(void * param0);
static void sub_0201F220(UnkStruct_0201EED4 * param0, int param1);
static void sub_0201F26C(void * param0);
static void sub_0201F298(UnkStruct_0201EED4 * param0, int param1);
static u32 sub_0201F50C(u8 * param0);
static UnkStruct_0201EED4 * sub_0201F2D0(void);
static void sub_0201F30C(void);
static void sub_0201F024(UnkStruct_0201EED4 * param0);
static void sub_0201F670(UnkStruct_0201EED4 * param0);
static UnkStruct_0201EED4 * sub_0201F03C(int param0);
static void sub_0201F47C(u32 param0, u32 param1, int param2);
static void sub_0201F4E4(u8 * param0);
static void sub_0201F524(u8 * param0);
static void sub_0201F53C(u32 param0, u32 param1, u8 * param2);
static u32 sub_0201F598(u32 param0, u8 * param1);
static void sub_0201F620(u32 param0, u32 param1, u8 * param2);
static int sub_0201F074(UnkStruct_0201EED4 * param0, int param1);
static BOOL sub_0201F76C(u32 param0, int param1, u32 * param2, u32 * param3);
static void sub_0201F7BC(u32 param0, int param1);
static void sub_0201F80C(int param0, u32 * param1, u8 * param2);
static int sub_0201F734(int param0, int param1, int param2);
static int sub_0201F754(int param0, int param1);
static int sub_0201F764(int param0, int param1);
static void sub_0201F818(u32 param0, u32 param1, u32 param2, int * param3, int * param4);

static UnkStruct_021C0760 * Unk_021C0760 = NULL;

void sub_0201E86C (const UnkStruct_ov22_022559F8 * param0)
{
    sub_0201E88C(param0, GX_GetOBJVRamModeChar(), GXS_GetOBJVRamModeChar());
}

void sub_0201E88C (const UnkStruct_ov22_022559F8 * param0, GXOBJVRamModeChar param1, GXOBJVRamModeChar param2)
{
    int v0;
    int v1;
    int v2;

    if (Unk_021C0760 == NULL) {
        Unk_021C0760 = Heap_AllocFromHeap(param0->unk_0C, sizeof(UnkStruct_021C0760));
        MI_CpuClear32(Unk_021C0760, sizeof(UnkStruct_021C0760));

        Unk_021C0760->unk_04 = param0->unk_00;
        Unk_021C0760->unk_00 = Heap_AllocFromHeap(param0->unk_0C, sizeof(UnkStruct_0201EED4) * Unk_021C0760->unk_04);

        for (v0 = 0; v0 < param0->unk_00; v0++) {
            sub_0201EED4(Unk_021C0760->unk_00 + v0);
        }

        Unk_021C0760->unk_2C = sub_0201F6F4(param1);
        Unk_021C0760->unk_30 = sub_0201F6F4(param2);

        GX_SetOBJVRamModeChar(param1);
        GXS_SetOBJVRamModeChar(param2);

        v1 = sub_0201F754(param0->unk_04, Unk_021C0760->unk_2C);
        v2 = sub_0201F754(param0->unk_08, Unk_021C0760->unk_30);

        sub_0201F47C(v1, v2, param0->unk_0C);
    }
}

void sub_0201E958 (void)
{
    if (Unk_021C0760 != NULL) {
        sub_0201F4E4(Unk_021C0760->unk_34);
        sub_0201F4E4(Unk_021C0760->unk_38);

        sub_0201EBA0();

        Heap_FreeToHeap(Unk_021C0760->unk_00);
        Heap_FreeToHeap(Unk_021C0760);

        Unk_021C0760 = NULL;
    }
}

void sub_0201E994 (void)
{
    Unk_021C0760->unk_0C = 0;
    Unk_021C0760->unk_10 = 0;

    sub_0201F524(Unk_021C0760->unk_34);
    sub_0201F524(Unk_021C0760->unk_38);

    sub_0201F30C();
}

void sub_0201E9C0 (u32 param0, u32 param1, u32 param2)
{
    int v0;
    int v1;

    if (param2 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        sub_0201F818(Unk_021C0760->unk_1C, param0, param1, &v0, &v1);

        if (v1 > 0) {
            sub_0201F18C(NNS_G2D_VRAM_TYPE_2DMAIN, v0, 0, v1, 0);
        }
    } else {
        sub_0201F818(Unk_021C0760->unk_20, param0, param1, &v0, &v1);

        if (v1 > 0) {
            sub_0201F18C(NNS_G2D_VRAM_TYPE_2DSUB, 0, v0, 0, v1);
        }
    }
}

BOOL sub_0201EA24 (const UnkStruct_0200A328 * param0)
{
    UnkStruct_0201EED4 * v0;
    u32 * v1;
    u8 v2 = 0;
    u32 v3;

    if (sub_0201EAD8(param0->unk_08) == 1) {
        GF_ASSERT(FALSE);
    }

    v0 = sub_0201F2D0();

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
        return 0;
    }

    if (sub_0201EEF8(param0, v0) == 0) {
        return 0;
    }

    if (sub_0201EF68(v0) == 0) {
        sub_0201EB50(v0->unk_0C);
        return 0;
    }

    Unk_021C0760->unk_08++;

    return 1;
}

BOOL sub_0201EA7C (const UnkStruct_0200A328 * param0)
{
    UnkStruct_0201EED4 * v0;
    u32 * v1;
    u8 v2 = 0;
    u32 v3;

    if (sub_0201EAD8(param0->unk_08) == 1) {
        GF_ASSERT(FALSE);
    }

    v0 = sub_0201F2D0();

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
        return 0;
    }

    if (sub_0201EEF8(param0, v0) == 0) {
        return 0;
    }

    v0->unk_40 = 1;

    if (sub_0201EF68(v0) == 0) {
        sub_0201EB50(v0->unk_0C);
        return 0;
    }

    Unk_021C0760->unk_08++;

    return 1;
}

BOOL sub_0201EAD8 (int param0)
{
    int v0;

    for (v0 = 0; v0 < Unk_021C0760->unk_04; v0++) {
        if (Unk_021C0760->unk_00[v0].unk_0C == param0) {
            return 1;
        }
    }

    return 0;
}

void sub_0201EB08 (int param0, NNSG2dCharacterData * param1)
{
    UnkStruct_0201EED4 * v0;

    GF_ASSERT(param1);

    v0 = sub_0201F03C(param0);
    GF_ASSERT(v0);
    v0->unk_00 = param1;

    if ((v0->unk_04 & NNS_G2D_VRAM_TYPE_2DMAIN)) {
        sub_0201DC68(NNS_GFD_DST_2D_OBJ_CHAR_MAIN, v0->unk_34, param1->pRawData, param1->szByte);
    }

    if (v0->unk_04 & NNS_G2D_VRAM_TYPE_2DSUB) {
        sub_0201DC68(NNS_GFD_DST_2D_OBJ_CHAR_SUB, v0->unk_38, param1->pRawData, param1->szByte);
    }
}

void sub_0201EB50 (int param0)
{
    UnkStruct_0201EED4 * v0;
    int v1 = 1;

    do {
        v0 = sub_0201F03C(param0);
        GF_ASSERT(v0);

        if (v0->unk_3C == 4) {
            sub_0201ED1C(&v0->unk_10);
        } else {
            v1 = 0;
        }
    } while (v1);

    if ((v0->unk_3C != 0)) {
        sub_0201F024(v0);
        Unk_021C0760->unk_08--;
    }
}

void sub_0201EBA0 (void)
{
    int v0;

    for (v0 = 0; v0 < Unk_021C0760->unk_04; v0++) {
        if (Unk_021C0760->unk_00[v0].unk_3C != 0) {
            sub_0201F024(&Unk_021C0760->unk_00[v0]);
            Unk_021C0760->unk_08--;
        }
    }
}

NNSG2dImageProxy * sub_0201EBDC (int param0)
{
    UnkStruct_0201EED4 * v0;

    v0 = sub_0201F03C(param0);
    GF_ASSERT(v0);

    if (v0->unk_3C == 0) {
        return NULL;
    }

    return &v0->unk_10;
}

NNSG2dImageProxy * sub_0201EC00 (int param0, u32 param1)
{
    u32 v0, v1;
    UnkStruct_0201EED4 * v2;
    UnkStruct_0201EED4 * v3;
    u32 v4, v5;

    v2 = sub_0201F03C(param0);
    GF_ASSERT(v2);

    if (v2->unk_3C == 0) {
        return NULL;
    }

    sub_0201F0B0(v2->unk_04, &v0, &v1, param1, &v4, &v5);

    if (v2->unk_3C == 3) {
        return NULL;
    } else {
        v2->unk_3C = 3;
        v3 = v2;
    }

    sub_0201F15C(v3, v0, v1);

    v3->unk_48 = 1;
    v3->unk_4C = v4;
    v3->unk_50 = v5;

    sub_0201F26C(v3);
    sub_0201F18C(v3->unk_04, v0, v1, v4, v5);

    return &v3->unk_10;
}

NNSG2dImageProxy * sub_0201EC84 (const NNSG2dImageProxy * param0)
{
    UnkStruct_0201EED4 * v0;
    UnkStruct_0201EED4 * v1;
    u32 v2, v3;
    u32 v4, v5;
    u32 v6;

    v0 = sub_0201EF1C(param0);
    GF_ASSERT(v0);

    v1 = sub_0201F2D0();
    GF_ASSERT(v1);

    if (v0->unk_3C != 3) {
        return NULL;
    }

    *v1 = *v0;
    v1->unk_3C = 4;

    if (v1->unk_04 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        v6 = v1->unk_4C;
    } else {
        v6 = v1->unk_50;
    }

    sub_0201F0B0(v1->unk_04, &v2, &v3, v6, &v4, &v5);
    sub_0201F15C(v1, v2, v3);

    v1->unk_48 = 1;
    v1->unk_4C = v4;
    v1->unk_50 = v5;

    sub_0201F26C((void *)v1);
    sub_0201F18C(v1->unk_04, v2, v3, v4, v5);

    return &v1->unk_10;
}

void sub_0201ED1C (const NNSG2dImageProxy * param0)
{
    int v0;

    for (v0 = 0; v0 < Unk_021C0760->unk_04; v0++) {
        if ((Unk_021C0760->unk_00[v0].unk_3C == 3) || (Unk_021C0760->unk_00[v0].unk_3C == 4)) {
            if (&Unk_021C0760->unk_00[v0].unk_10 == param0) {
                break;
            }
        }
    }

    if (v0 >= Unk_021C0760->unk_04) {
        return;
    }

    sub_0201F670(Unk_021C0760->unk_00 + v0);

    if (Unk_021C0760->unk_00[v0].unk_3C == 3) {
        Unk_021C0760->unk_00[v0].unk_3C = 2;
    } else {
        Unk_021C0760->unk_00[v0].unk_3C = 0;
        sub_0201EED4(&Unk_021C0760->unk_00[v0]);
    }
}

BOOL sub_0201ED94 (int param0, int param1, int param2, UnkStruct_0201EE28 * param3)
{
    u32 v0, v1;
    u32 v2, v3;
    BOOL v4;

    if (param1 == 0) {
        v4 = sub_0201F76C(param0, param2, &v0, &v1);

        if (v4) {
            sub_0201F7BC(param0, param2);

            param3->unk_08 = param2;
            param3->unk_00 = param0;

            if (param2 == NNS_G2D_VRAM_TYPE_2DMAIN) {
                param3->unk_04 = v0;
            } else {
                param3->unk_04 = v1;
            }

            param3->unk_0A = 0;
        }
    } else {
        v4 = sub_0201F0B0(param2, &v0, &v1, param0, &v2, &v3);

        if (v4) {
            sub_0201F18C(param2, v0, v1, v2, v3);

            param3->unk_08 = param2;

            if (param2 == NNS_G2D_VRAM_TYPE_2DMAIN) {
                param3->unk_00 = v2;
                param3->unk_04 = v0 + Unk_021C0760->unk_1C;
            } else {
                param3->unk_00 = v3;
                param3->unk_04 = v1 + Unk_021C0760->unk_20;
            }

            param3->unk_0A = 1;
        }
    }

    return v4;
}

void sub_0201EE28 (UnkStruct_0201EE28 * param0)
{
    int v0;
    int v1;

    if (param0->unk_0A == 0) {
        return;
    }

    if (param0->unk_08 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        v0 = sub_0201F754(param0->unk_00, Unk_021C0760->unk_2C);
        v1 = sub_0201F754(param0->unk_04 - Unk_021C0760->unk_1C, Unk_021C0760->unk_2C);

        sub_0201F620(v1, v0, Unk_021C0760->unk_34);
    }

    if (param0->unk_08 & NNS_G2D_VRAM_TYPE_2DSUB) {
        v0 = sub_0201F754(param0->unk_00, Unk_021C0760->unk_30);
        v1 = sub_0201F754(param0->unk_04 - Unk_021C0760->unk_20, Unk_021C0760->unk_30);

        sub_0201F620(v1, v0, Unk_021C0760->unk_38);
    }
}

void * sub_0201EE9C (void)
{
    void * v0;

    GF_ASSERT(Unk_021C0760);

    v0 = Unk_021C0760;
    Unk_021C0760 = NULL;

    return v0;
}

void sub_0201EEB8 (void * param0)
{
    GF_ASSERT(Unk_021C0760 == NULL);
    Unk_021C0760 = param0;
}

static void sub_0201EED4 (UnkStruct_0201EED4 * param0)
{
    param0->unk_00 = NULL;
    param0->unk_04 = 0;
    param0->unk_08 = 0;
    param0->unk_0C = 0xffffffff;
    param0->unk_34 = 0;
    param0->unk_38 = 0;
    param0->unk_3C = 0;
    param0->unk_40 = 0;

    NNS_G2dInitImageProxy(&param0->unk_10);
}

static BOOL sub_0201EEF8 (const UnkStruct_0200A328 * param0, UnkStruct_0201EED4 * param1)
{
    param1->unk_00 = param0->unk_00;
    param1->unk_0C = param0->unk_08;
    param1->unk_04 = param0->unk_04;
    param1->unk_08 = param1->unk_00->characterFmt >> 8;
    param1->unk_44 = param0->unk_0C;

    param1->unk_48 = 0;
    param1->unk_4C = 0;
    param1->unk_50 = 0;

    return 1;
}

static UnkStruct_0201EED4 * sub_0201EF1C (const NNSG2dImageProxy * param0)
{
    int v0;

    for (v0 = 0; v0 < Unk_021C0760->unk_04; v0++) {
        if (Unk_021C0760->unk_00[v0].unk_3C != 0) {
            if (&Unk_021C0760->unk_00[v0].unk_10 == param0) {
                break;
            }
        }
    }

    if (v0 >= Unk_021C0760->unk_04) {
        return NULL;
    }

    return Unk_021C0760->unk_00 + v0;
}

static BOOL sub_0201EF68 (UnkStruct_0201EED4 * param0)
{
    BOOL v0 = 1;

    if (param0->unk_08) {
        param0->unk_3C = 2;
    } else {
        param0->unk_3C = 1;

        if (param0->unk_44 == 0) {
            v0 = sub_0201EF98(param0);
        } else {
            v0 = sub_0201EFCC(param0);
        }
    }

    return v0;
}

static BOOL sub_0201EF98 (UnkStruct_0201EED4 * param0)
{
    BOOL v0 = 1;
    u32 v1, v2;

    v0 = sub_0201F76C(param0->unk_00->szByte, param0->unk_04, &v1, &v2);

    if (v0) {
        sub_0201F09C(param0, v1, v2);
        sub_0201F7BC(param0->unk_00->szByte, param0->unk_04);
    }

    return v0;
}

static BOOL sub_0201EFCC (UnkStruct_0201EED4 * param0)
{
    u32 v0, v1;
    u32 v2, v3;
    BOOL v4;

    v4 = sub_0201F0B0(param0->unk_04, &v0, &v1, param0->unk_00->szByte, &v2, &v3);

    if (v4 == 0) {
        return 0;
    }

    sub_0201F15C(param0, v0, v1);

    param0->unk_48 = 1;
    param0->unk_4C = v2;
    param0->unk_50 = v3;

    sub_0201F1F4(param0);
    sub_0201F18C(param0->unk_04, v0, v1, v2, v3);

    return 1;
}

static void sub_0201F024 (UnkStruct_0201EED4 * param0)
{
    if (param0->unk_48) {
        sub_0201F670(param0);
    }

    sub_0201EED4(param0);
}

static UnkStruct_0201EED4 * sub_0201F03C (int param0)
{
    int v0;

    for (v0 = 0; v0 < Unk_021C0760->unk_04; v0++) {
        if (Unk_021C0760->unk_00[v0].unk_0C == param0) {
            return &Unk_021C0760->unk_00[v0];
        }
    }

    return NULL;
}

static int sub_0201F074 (UnkStruct_0201EED4 * param0, int param1)
{
    if (param1 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        param0->unk_00->mapingType = GX_GetOBJVRamModeChar();
    } else {
        param0->unk_00->mapingType = GXS_GetOBJVRamModeChar();
    }

    return param0->unk_00->mapingType;
}

static void sub_0201F09C (UnkStruct_0201EED4 * param0, u32 param1, u32 param2)
{
    param0->unk_34 = param1;
    param0->unk_38 = param2;

    if (!param0->unk_08) {
        sub_0201F1F4((void *)param0);
    }
}

static BOOL sub_0201F0B0 (int param0, u32 * param1, u32 * param2, u32 param3, u32 * param4, u32 * param5)
{
    u32 v0;

    if (param0 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        *param4 = sub_0201F734(param3, Unk_021C0760->unk_2C, 1);
        v0 = sub_0201F754(*param4, Unk_021C0760->unk_2C);
        *param1 = sub_0201F598(v0, Unk_021C0760->unk_34);

        if (*param1 == 0xffffffff) {
            GF_ASSERT(FALSE);
            return 0;
        }

        *param1 = sub_0201F764(*param1, Unk_021C0760->unk_2C);
    }

    if (param0 & NNS_G2D_VRAM_TYPE_2DSUB) {
        *param5 = sub_0201F734(param3, Unk_021C0760->unk_30, 1);
        v0 = sub_0201F754(*param5, Unk_021C0760->unk_30);
        *param2 = sub_0201F598(v0, Unk_021C0760->unk_38);

        if (*param2 == 0xffffffff) {
            GF_ASSERT(FALSE);
            return 0;
        }

        *param2 = sub_0201F764(*param2, Unk_021C0760->unk_30);
    }

    return 1;
}

static void sub_0201F15C (UnkStruct_0201EED4 * param0, u32 param1, u32 param2)
{
    if (param0->unk_04 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        param0->unk_34 = param1 + Unk_021C0760->unk_1C;
    }

    if (param0->unk_04 & NNS_G2D_VRAM_TYPE_2DSUB) {
        param0->unk_38 = param2 + Unk_021C0760->unk_20;
    }
}

static void sub_0201F18C (int param0, u32 param1, u32 param2, u32 param3, u32 param4)
{
    int v0;
    int v1;

    if (param0 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        v0 = sub_0201F754(param3, Unk_021C0760->unk_2C);
        v1 = sub_0201F754(param1, Unk_021C0760->unk_2C);

        sub_0201F53C(v1, v0, Unk_021C0760->unk_34);
    }

    if (param0 & NNS_G2D_VRAM_TYPE_2DSUB) {
        v0 = sub_0201F754(param4, Unk_021C0760->unk_30);
        v1 = sub_0201F754(param2, Unk_021C0760->unk_30);

        sub_0201F53C(v1, v0, Unk_021C0760->unk_38);
    }
}

static void sub_0201F1F4 (void * param0)
{
    UnkStruct_0201EED4 * v0 = (UnkStruct_0201EED4 *)param0;
    int v1;

    NNS_G2dInitImageProxy(&v0->unk_10);

    if (v0->unk_04 != NNS_G2D_VRAM_TYPE_MAX) {
        sub_0201F220(v0, v0->unk_04);
    } else {
        sub_0201F220(v0, NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_0201F220(v0, NNS_G2D_VRAM_TYPE_2DSUB);
    }
}

static void sub_0201F220 (UnkStruct_0201EED4 * param0, int param1)
{
    int v0;
    int v1;
    u32 v2;

    if (param0->unk_40) {
        v0 = sub_0201F074(param0, param1);
    } else {
        v0 = param1;
    }

    if (param1 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        v1 = param0->unk_34;
        v2 = GX_GetOBJVRamModeChar();
    } else {
        v1 = param0->unk_38;
        v2 = GXS_GetOBJVRamModeChar();
    }

    if (v0 == GX_OBJVRAMMODE_CHAR_2D) {
        NNS_G2dLoadImage2DMapping(param0->unk_00, v1, param1, &param0->unk_10);
    } else {
        NNS_G2dLoadImage1DMapping(param0->unk_00, v1, param1, &param0->unk_10);
    }
}

static void sub_0201F26C (void * param0)
{
    UnkStruct_0201EED4 * v0 = (UnkStruct_0201EED4 *)param0;

    NNS_G2dInitImageProxy(&v0->unk_10);

    if (v0->unk_04 != NNS_G2D_VRAM_TYPE_MAX) {
        sub_0201F298(v0, v0->unk_04);
    } else {
        sub_0201F298(v0, NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_0201F298(v0, NNS_G2D_VRAM_TYPE_2DSUB);
    }
}

static void sub_0201F298 (UnkStruct_0201EED4 * param0, int param1)
{
    int v0;
    int v1;
    u32 v2;

    if (param0->unk_40) {
        v0 = sub_0201F074(param0, param1);
    } else {
        v0 = param1;
    }

    if (param1 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        v1 = param0->unk_34;
        v2 = GX_GetOBJVRamModeChar();
    } else {
        v1 = param0->unk_38;
        v2 = GXS_GetOBJVRamModeChar();
    }

    NNS_G2dLoadImageVramTransfer(param0->unk_00, v1, param1, &param0->unk_10);
}

static UnkStruct_0201EED4 * sub_0201F2D0 (void)
{
    int v0;

    for (v0 = 0; v0 < Unk_021C0760->unk_04; v0++) {
        if (Unk_021C0760->unk_00[v0].unk_3C == 0) {
            return &Unk_021C0760->unk_00[v0];
        }
    }

    return NULL;
}

static void sub_0201F30C (void)
{
    GXVRamOBJ v0;
    GXVRamSubOBJ v1;
    int v2;

    v0 = GX_GetBankForOBJ();

    switch (v0) {
    case GX_VRAM_OBJ_NONE:
        Unk_021C0760->unk_14 = 0;
        break;
    case GX_VRAM_OBJ_16_F:
    case GX_VRAM_OBJ_16_G:
        Unk_021C0760->unk_14 = 16 * 1024;
        break;
    case GX_VRAM_OBJ_32_FG:
        Unk_021C0760->unk_14 = 32 * 1024;
        break;
    case GX_VRAM_OBJ_64_E:
        Unk_021C0760->unk_14 = 64 * 1024;
        break;
    case GX_VRAM_OBJ_80_EF:
    case GX_VRAM_OBJ_80_EG:
        Unk_021C0760->unk_14 = 80 * 1024;
        break;
    case GX_VRAM_OBJ_96_EFG:
        Unk_021C0760->unk_14 = 96 * 1024;
        break;
    case GX_VRAM_OBJ_128_A:
    case GX_VRAM_OBJ_128_B:
        Unk_021C0760->unk_14 = 128 * 1024;
        break;
    case GX_VRAM_OBJ_256_AB:
        Unk_021C0760->unk_14 = 256 * 1024;
        break;
    default:
        Unk_021C0760->unk_14 = 0;
        break;
    }

    v1 = GX_GetBankForSubOBJ();

    switch (v1) {
    case GX_VRAM_SUB_OBJ_NONE:
        Unk_021C0760->unk_18 = 0;
        break;
    case GX_VRAM_SUB_OBJ_16_I:
        Unk_021C0760->unk_18 = 16 * 1024;
        break;
    case GX_VRAM_SUB_OBJ_128_D:
        Unk_021C0760->unk_18 = 128 * 1024;
        break;
    default:
        Unk_021C0760->unk_18 = 0;
        break;
    }

    v2 = sub_0201F764(Unk_021C0760->unk_24, Unk_021C0760->unk_2C);
    Unk_021C0760->unk_1C = Unk_021C0760->unk_14 - v2;

    v2 = sub_0201F764(Unk_021C0760->unk_28, Unk_021C0760->unk_30);
    Unk_021C0760->unk_20 = Unk_021C0760->unk_18 - v2;

    GF_ASSERT(((Unk_021C0760->unk_1C >= 0) && (Unk_021C0760->unk_20 >= 0)));
    GF_ASSERT(((Unk_021C0760->unk_1C >= 0) && (Unk_021C0760->unk_20 >= 0)));
}

void sub_0201F460 (void)
{
    sub_0201F524(Unk_021C0760->unk_34);
    sub_0201F524(Unk_021C0760->unk_38);
}

static void sub_0201F47C (u32 param0, u32 param1, int param2)
{
    Unk_021C0760->unk_24 = param0;
    Unk_021C0760->unk_28 = param1;

    if (Unk_021C0760->unk_34 != NULL) {
        Heap_FreeToHeap(Unk_021C0760->unk_34);
    }

    if (Unk_021C0760->unk_38 != NULL) {
        Heap_FreeToHeap(Unk_021C0760->unk_38);
    }

    if (Unk_021C0760->unk_24 != 0) {
        Unk_021C0760->unk_34 = Heap_AllocFromHeap(param2, sizeof(u8) * (param0 / 8));
    }

    if (Unk_021C0760->unk_28 != 0) {
        Unk_021C0760->unk_38 = Heap_AllocFromHeap(param2, sizeof(u8) * (param1 / 8));
    }

    sub_0201F460();
}

static void sub_0201F4E4 (u8 * param0)
{
    if (param0 != NULL) {
        if (param0 == Unk_021C0760->unk_34) {
            Unk_021C0760->unk_24 = 0;

            Heap_FreeToHeap(param0);
        } else {
            Unk_021C0760->unk_28 = 0;
            Heap_FreeToHeap(param0);
        }

        param0 = NULL;
    }
}

static u32 sub_0201F50C (u8 * param0)
{
    if (param0 == Unk_021C0760->unk_34) {
        return Unk_021C0760->unk_24;
    }

    return Unk_021C0760->unk_28;
}

static void sub_0201F524 (u8 * param0)
{
    int v0;
    u32 v1;

    if (param0 != NULL) {
        v1 = sub_0201F50C(param0);
        memset(param0, 0, sizeof(u8) * (v1 / 8));
    }
}

static void sub_0201F53C (u32 param0, u32 param1, u8 * param2)
{
    int v0;
    u32 v1;

    if (param2 != NULL) {
        v1 = sub_0201F50C(param2);

        for (v0 = param0; v0 < param0 + param1; v0++) {
            u32 v2;
            u8 v3, v4;

            if (v0 >= v1) {
                break;
            }

            sub_0201F80C(v0, &v2, &v3);

            GF_ASSERT((param2[v2] & (1 << v3)) == 0);

            v4 = (1 << v3);
            param2[v2] |= v4;
        }
    }
}

static u32 sub_0201F598 (u32 param0, u8 * param1)
{
    int v0, v1;
    u32 v2;

    if (param1 != NULL) {
        v2 = sub_0201F50C(param1);

        for (v0 = 0; v0 < v2; v0++) {
            u32 v3;
            u8 v4, v5;

            sub_0201F80C(v0, &v3, &v4);

            v5 = (1 << v4);
            v1 = 0;

            while (((param1[v3] & v5) == 0) && (v1 <= param0)) {
                int v6 = v0 + v1;

                sub_0201F80C(v6, &v3, &v4);
                v5 = (1 << v4);

                if (v6 >= v2) {
                    return 0xffffffff;
                }

                v1++;
            }

            if (v1 > param0) {
                return v0;
            }

            v0 += v1;
        }
    }

    return 0xffffffff;
}

static void sub_0201F620 (u32 param0, u32 param1, u8 * param2)
{
    int v0;

    if (param2 != NULL) {
        for (v0 = param0; v0 < param0 + param1; v0++) {
            u32 v1;
            u8 v2, v3;

            sub_0201F80C(v0, &v1, &v2);

            GF_ASSERT((param2[v1] & (1 << v2)));

            v3 = (1 << v2) ^ 0xff;
            param2[v1] &= v3;
        }
    }
}

static void sub_0201F670 (UnkStruct_0201EED4 * param0)
{
    u32 v0;
    u32 v1;

    if (param0->unk_04 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        v0 = sub_0201F754(NNS_G2dGetImageLocation(&param0->unk_10, NNS_G2D_VRAM_TYPE_2DMAIN) - Unk_021C0760->unk_1C, Unk_021C0760->unk_2C);
        v1 = sub_0201F754(param0->unk_4C, Unk_021C0760->unk_2C);

        sub_0201F620(v0, v1, Unk_021C0760->unk_34);
    }

    if (param0->unk_04 & NNS_G2D_VRAM_TYPE_2DSUB) {
        v0 = sub_0201F754(NNS_G2dGetImageLocation(&param0->unk_10, NNS_G2D_VRAM_TYPE_2DSUB) - Unk_021C0760->unk_20, Unk_021C0760->unk_30);
        v1 = sub_0201F754(param0->unk_50, Unk_021C0760->unk_30);

        sub_0201F620(v0, v1, Unk_021C0760->unk_38);
    }

    param0->unk_48 = 0;
}

int sub_0201F6F4 (int param0)
{
    int v0;

    switch (param0) {
    case GX_OBJVRAMMODE_CHAR_1D_32K:
        v0 = 1;
        break;
    case GX_OBJVRAMMODE_CHAR_1D_64K:
        v0 = 2;
        break;
    case GX_OBJVRAMMODE_CHAR_1D_128K:
        v0 = 4;
        break;
    case GX_OBJVRAMMODE_CHAR_1D_256K:
        v0 = 8;
        break;
    default:
        v0 = 1;
        break;
    }

    return v0;
}

static int sub_0201F734 (int param0, int param1, int param2)
{
    param1 *= 32;

    if (param0 % param1) {
        param0 -= (param0 % param1);

        if (param2 == 1) {
            param0 += param1;
        }
    }

    return param0;
}

static int sub_0201F754 (int param0, int param1)
{
    param0 /= 32;
    param0 /= param1;

    return param0;
}

static int sub_0201F764 (int param0, int param1)
{
    param0 *= param1;
    param0 *= 32;

    return param0;
}

static BOOL sub_0201F76C (u32 param0, int param1, u32 * param2, u32 * param3)
{
    BOOL v0 = 1;

    if (param1 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        if ((Unk_021C0760->unk_0C + param0) > Unk_021C0760->unk_1C) {
            GF_ASSERT(0);
            v0 = 0;
        } else {
            *param2 = Unk_021C0760->unk_0C;
        }
    }

    if (param1 & NNS_G2D_VRAM_TYPE_2DSUB) {
        if ((Unk_021C0760->unk_10 + param0) > Unk_021C0760->unk_20) {
            GF_ASSERT(0);
            v0 = 0;
        } else {
            *param3 = Unk_021C0760->unk_10;
        }
    }

    return v0;
}

static void sub_0201F7BC (u32 param0, int param1)
{
    if (param1 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        Unk_021C0760->unk_0C += param0;
        Unk_021C0760->unk_0C = sub_0201F734(Unk_021C0760->unk_0C, Unk_021C0760->unk_2C, 1);
    }

    if (param1 & NNS_G2D_VRAM_TYPE_2DSUB) {
        Unk_021C0760->unk_10 += param0;
        Unk_021C0760->unk_10 = sub_0201F734(Unk_021C0760->unk_10, Unk_021C0760->unk_30, 1);
    }
}

static void sub_0201F80C (int param0, u32 * param1, u8 * param2)
{
    *param1 = param0 >> 3;
    *param2 = param0 & 7;
}

static void sub_0201F818 (u32 param0, u32 param1, u32 param2, int * param3, int * param4)
{
    *param3 = param1 - param0;

    if (*param3 < 0) {
        *param4 = param2 + *param3;
        *param3 = 0;
    } else {
        *param4 = param2;
    }
}
