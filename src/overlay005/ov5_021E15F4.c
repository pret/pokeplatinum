#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "overlay005/struct_ov5_021D3CAC_decl.h"
#include "overlay005/struct_ov5_021D5778_decl.h"
#include "overlay005/struct_ov5_021EF76C_decl.h"

#include "overlay005/struct_ov5_021D57B4.h"
#include "overlay005/struct_ov5_021D5894.h"

#include "filesystem.h"
#include "heap.h"
#include "unk_0201C970.h"
#include "unk_0201CED8.h"
#include "unk_0201E190.h"
#include "overlay005/ov5_021D37AC.h"
#include "overlay005/ov5_021D56BC.h"
#include "overlay005/ov5_021D5878.h"
#include "overlay005/ov5_021E15F4.h"
#include "overlay005/ov5_021EF75C.h"

static void ov5_021E1904(const int param0, UnkStruct_ov5_021EF76C * const param1, NNSG3dRenderObj * param2, NNSG3dResMdl ** param3);
static void ov5_021E1944(const NNSG3dResMdl * param0, VecFx32 * param1, MtxFx33 * param2, VecFx32 * param3, const UnkStruct_ov5_021D5778 * param4, const int param5);

typedef struct {
    int unk_00;
    VecFx32 unk_04;
    VecFx32 unk_10;
    VecFx32 unk_1C;
    int unk_28[2];
} UnkStruct_ov5_021E16CC;

typedef struct UnkStruct_ov5_021E1890_t {
    int unk_00;
    BOOL unk_04;
    BOOL unk_08;
    BOOL unk_0C;
    NNSG3dRenderObj unk_10;
    NNSG3dResMdl * unk_64;
    VecFx32 unk_68;
    VecFx32 unk_74;
    VecFx32 unk_80;
} UnkStruct_ov5_021E1890;

typedef struct UnkStruct_ov5_021E1608_t {
    UnkStruct_ov5_021E1890 unk_00[32];
} UnkStruct_ov5_021E1608;

UnkStruct_ov5_021E1608 * ov5_021E15F4 (const u8 param0)
{
    UnkStruct_ov5_021E1608 * v0;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov5_021E1608));
    ov5_021E1610(v0);

    return v0;
}

void ov5_021E1608 (UnkStruct_ov5_021E1608 * param0)
{
    FreeToHeap(param0);
    param0 = NULL;
}

void ov5_021E1610 (UnkStruct_ov5_021E1608 * param0)
{
    u8 v0;

    for (v0 = 0; v0 < 32; v0++) {
        VecFx32 v1 = {0, 0, 0};

        param0->unk_00[v0].unk_00 = 0;
        param0->unk_00[v0].unk_04 = 0;
        param0->unk_00[v0].unk_08 = 0;
        param0->unk_00[v0].unk_0C = 0;
        param0->unk_00[v0].unk_68 = v1;
        param0->unk_00[v0].unk_74 = v1;
        param0->unk_00[v0].unk_80 = v1;
        param0->unk_00[v0].unk_64 = NULL;
    }
}

void ov5_021E1674 (const int param0, UnkStruct_ov5_021E1608 * param1)
{
    GF_ASSERT(param0 < 32);

    {
        VecFx32 v0 = {0, 0, 0};

        param1->unk_00[param0].unk_00 = 0;
        param1->unk_00[param0].unk_04 = 0;
        param1->unk_00[param0].unk_08 = 0;
        param1->unk_00[param0].unk_0C = 0;
        param1->unk_00[param0].unk_68 = v0;
        param1->unk_00[param0].unk_74 = v0;
        param1->unk_00[param0].unk_80 = v0;
        param1->unk_00[param0].unk_64 = NULL;
    }
}

void ov5_021E16CC (NARC * param0, const int param1, UnkStruct_ov5_021EF76C * const param2, UnkStruct_ov5_021E1608 * param3, UnkStruct_ov5_021D3CAC * param4)
{
    UnkStruct_ov5_021E16CC * v0 = NULL;
    u32 v1;
    int v2;

    if (param1 != 0) {
        v0 = AllocFromHeapAtEnd(4, param1);
        NARC_ReadFile(param0, param1, v0);
        v1 = param1 / sizeof(UnkStruct_ov5_021E16CC);
    } else {
        v1 = 0;
    }

    for (v2 = 0; v2 < 32; v2++) {
        UnkStruct_ov5_021E1890 * v3;

        v3 = &(param3->unk_00[v2]);

        if (v2 < v1) {
            v3->unk_00 = v0[v2].unk_00;
            v3->unk_04 = 1;
            v3->unk_0C = 0;
            v3->unk_68 = v0[v2].unk_04;
            v3->unk_74 = v0[v2].unk_10;
            v3->unk_80 = v0[v2].unk_1C;

            ov5_021E1904(v3->unk_00, param2, &(v3->unk_10), &(v3->unk_64));

            if (ov5_021EFAF8(param2, v3->unk_00) == 0) {
                v3->unk_00 = 0;
            }

            {
                ov5_021D3BE4(v3->unk_00, &(v3->unk_10), param4);
            }
        } else {
            VecFx32 v4 = {0, 0, 0};

            v3->unk_00 = 0;
            v3->unk_04 = 0;
            v3->unk_0C = 0;
            v3->unk_68 = v4;
            v3->unk_74 = v4;
            v3->unk_80 = v4;
        }
    }

    if (v0 != NULL) {
        FreeToHeap(v0);
    }
}

void ov5_021E17CC (const VecFx32 * param0, const UnkStruct_ov5_021EF76C * param1, const BOOL param2, UnkStruct_ov5_021D5894 * const param3, UnkStruct_ov5_021E1608 * param4)
{
    int v0;
    VecFx32 v1;
    MtxFx33 v2 = {
        FX32_ONE,
        0,
        0,
        0,
        FX32_ONE,
        0,
        0,
        0,
        FX32_ONE
    };

    for (v0 = 0; v0 < 32; v0++) {
        UnkStruct_ov5_021E1890 * v3;

        v3 = &(param4->unk_00[v0]);

        if (v3->unk_04 != 0) {
            if (v3->unk_08) {
                continue;
            }

            v1 = v3->unk_68;

            v1.x += param0->x;
            v1.z += param0->z;

            if (sub_0201CED8(v3->unk_64, &(v1), &v2, &(v3->unk_80))) {
                const UnkStruct_ov5_021D5778 * v4;
                u16 v5;

                v4 = ov5_021EFAB4(param1);

                if (param2 == 1) {
                    ov5_021D5948(param3, v3->unk_64, (1 | 1 << 1 | 1 << 4 | 1 << 5 | 1 << 8 | 1 << 9 | 1 << 10 | 1 << 11));
                }

                ov5_021D5790(v3->unk_00, v4, &v5);

                if (v5 == 0) {
                    sub_0201CA74(&(v3->unk_10), &(v1), &v2, &(v3->unk_80));
                } else {
                    ov5_021E1944(v3->unk_64, &v1, &v2, &(v3->unk_80), v4, v3->unk_00);
                }
            }
        }
    }
}

VecFx32 * ov5_021E1890 (UnkStruct_ov5_021E1890 * param0)
{
    return &param0->unk_74;
}

VecFx32 ov5_021E1894 (const UnkStruct_ov5_021E1890 * param0)
{
    return param0->unk_68;
}

void ov5_021E18A4 (UnkStruct_ov5_021E1890 * param0, const VecFx32 * param1)
{
    param0->unk_68 = (*param1);
}

void ov5_021E18B4 (UnkStruct_ov5_021E1890 * param0, const BOOL param1)
{
    param0->unk_08 = param1;
}

int ov5_021E18B8 (const UnkStruct_ov5_021E1890 * param0)
{
    return param0->unk_00;
}

NNSG3dRenderObj * ov5_021E18BC (const UnkStruct_ov5_021E1890 * param0)
{
    return (NNSG3dRenderObj *)(&(param0->unk_10));
}

NNSG3dResMdl * ov5_021E18C0 (const UnkStruct_ov5_021E1890 * param0)
{
    return param0->unk_64;
}

UnkStruct_ov5_021E1890 * ov5_021E18C4 (UnkStruct_ov5_021E1608 * param0, const u8 param1)
{
    return &param0->unk_00[param1];
}

UnkStruct_ov5_021E1890 * ov5_021E18CC (UnkStruct_ov5_021E1608 * param0, const int param1)
{
    UnkStruct_ov5_021E1890 * v0;
    int v1;

    for (v1 = 0; v1 < 32; v1++) {
        v0 = &param0->unk_00[v1];

        if (v0->unk_00 == param1) {
            return v0;
        }
    }

    return NULL;
}

UnkStruct_ov5_021E1890 * ov5_021E18E0 (UnkStruct_ov5_021E1608 * param0, const int param1)
{
    UnkStruct_ov5_021E1890 * v0;

    GF_ASSERT(param1 < 32);
    v0 = &param0->unk_00[param1];
    GF_ASSERT(v0->unk_04);

    return v0;
}

static void ov5_021E1904 (const int param0, UnkStruct_ov5_021EF76C * const param1, NNSG3dRenderObj * param2, NNSG3dResMdl ** param3)
{
    NNSG3dResFileHeader ** v0 = ov5_021EF9E8(param0, param1);

    *param3 = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*v0), 0);
    NNS_G3dRenderObjInit(param2, *param3);
}

static void ov5_021E1944 (const NNSG3dResMdl * param0, VecFx32 * param1, MtxFx33 * param2, VecFx32 * param3, const UnkStruct_ov5_021D5778 * param4, const int param5)
{
    u8 v0;
    u16 v1;
    u16 v2;
    u8 v3;
    BOOL v4;
    UnkStruct_ov5_021D57B4 const * v5;

    NNS_G3dGlbSetBaseTrans(param1);
    NNS_G3dGlbSetBaseRot(param2);
    NNS_G3dGlbSetBaseScale(param3);
    NNS_G3dGlbFlush();

    ov5_021D579C(param5, param4, &v1, &v2);

    v5 = ov5_021D57B4(v2, param4);
    v3 = 0xff;
    v4 = 1;

    for (v0 = 0; v0 < v1; v0++) {
        if (v3 != v5[v0].unk_00) {
            v3 = v5[v0].unk_00;
            v4 = 1;
        } else {
            v4 = 0;
        }

        NNS_G3dDraw1Mat1Shp(param0, v3, v5[v0].unk_02, v4);
    }
}

u8 ov5_021E19CC (UnkStruct_ov5_021E1608 * param0, UnkStruct_ov5_021EF76C * const param1, const int param2, const VecFx32 * param3, const VecFx32 * param4, UnkStruct_ov5_021D3CAC * param5)
{
    u8 v0;
    VecFx32 v1 = {FX32_ONE, FX32_ONE, FX32_ONE};

    for (v0 = 0; v0 < 32; v0++) {
        UnkStruct_ov5_021E1890 * v2;

        v2 = &(param0->unk_00[v0]);

        if (v2->unk_04 == 0) {
            v2->unk_04 = 1;
            v2->unk_68 = (*param3);

            if (param4 != NULL) {
                v2->unk_0C = 1;
                v2->unk_74 = (*param4);
            } else {
                v2->unk_0C = 0;
            }

            v2->unk_80 = v1;
            v2->unk_00 = param2;

            ov5_021E1904(v2->unk_00, param1, &(v2->unk_10), &(v2->unk_64));
            ov5_021D3B24(v2->unk_00, 0, 0, &(v2->unk_10), param5);

            return v0;
        }
    }

    GF_ASSERT(FALSE);
    return 32;
}

void ov5_021E1A6C (UnkStruct_ov5_021E1608 * param0, UnkStruct_ov5_021EF76C * const param1)
{
    u8 v0;
    MtxFx33 v1 = {
        FX32_ONE,
        0,
        0,
        0,
        FX32_ONE,
        0,
        0,
        0,
        FX32_ONE
    };

    for (v0 = 0; v0 < 32; v0++) {
        UnkStruct_ov5_021E1890 * v2;

        v2 = &(param0->unk_00[v0]);

        if (v2->unk_04) {
            if (v2->unk_08) {
                continue;
            }

            {
                const UnkStruct_ov5_021D5778 * v3;
                u16 v4;

                v3 = ov5_021EFAB4(param1);
                ov5_021D5790(v2->unk_00, v3, &v4);

                if (v2->unk_0C) {
                    sub_0201E268(&v1, &v2->unk_74);
                }

                if (v4 == 0) {
                    sub_0201CA74(&(v2->unk_10), &(v2->unk_68), &v1, &(v2->unk_80));
                } else {
                    ov5_021E1944(v2->unk_64, &v2->unk_68, &v1, &(v2->unk_80), v3, v2->unk_00);
                }
            }
        }
    }
}
