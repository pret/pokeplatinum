#include "overlay005/ov5_021D37AC.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"

#include "heap.h"
#include "narc.h"
#include "unk_02005474.h"

typedef struct {
    BOOL unk_00;
    NNSG3dRenderObj *unk_04;
    UnkStruct_ov5_021D3CE4 *unk_08;
    int unk_0C;
} UnkStruct_ov5_021D37AC;

typedef struct UnkStruct_ov5_021D3CE4_t {
    NNSG3dAnmObj *unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    BOOL unk_10;
    void *unk_14;
    int unk_18;
    int unk_1C;
    BOOL unk_20;
    int unk_24;
} UnkStruct_ov5_021D3CE4;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    int unk_04[4];
} UnkStruct_ov5_021D3A50;

typedef struct UnkStruct_ov5_021D3CAC_t {
    NNSFndAllocator unk_00;
    UnkStruct_ov5_021D3CE4 unk_10[16];
    UnkStruct_ov5_021D37AC unk_290[2];
    NARC *unk_2B0;
    NARC *unk_2B4;
} UnkStruct_ov5_021D3CAC;

typedef struct {
    UnkStruct_ov5_021D3CE4 *unk_00[4];
    int unk_10;
} UnkStruct_ov5_021D3FD0_sub1;

typedef struct UnkStruct_ov5_021D3FD0_t {
    UnkStruct_ov5_021D3FD0_sub1 unk_00;
    NNSG3dRenderObj *unk_14[6];
    UnkStruct_ov5_021D3CE4 *unk_2C;
    int unk_30;
    u8 unk_34;
} UnkStruct_ov5_021D3FD0;

typedef struct UnkStruct_ov5_021D41B4_t {
    UnkStruct_ov5_021D3FD0 unk_00[16];
} UnkStruct_ov5_021D41B4;

static BOOL ov5_021D37AC(UnkStruct_ov5_021D37AC *param0, NNSG3dRenderObj *param1, UnkStruct_ov5_021D3CE4 *param2, const u8 param3)
{
    int v0;

    GF_ASSERT(param2->unk_18 != -1);

    for (v0 = 0; v0 < 2; v0++) {
        if (param0[v0].unk_00) {
            if ((param0[v0].unk_0C == param3) && (param0[v0].unk_04 == param1)) {
                return 0;
            }
        }
    }

    for (v0 = 0; v0 < 2; v0++) {
        if (!param0[v0].unk_00) {
            param0[v0].unk_00 = 1;
            param0[v0].unk_0C = param3;
            param0[v0].unk_08 = param2;
            param0[v0].unk_04 = param1;
            break;
        }
    }

    return 1;
}

static void *ov5_021D380C(NARC *param0, const u32 param1, NNSG3dResMdl *param2, NNSG3dAnmObj **param3, NNSG3dResTex *param4, NNSFndAllocator *param5)
{
    void *v0;
    void *v1 = NULL;

    GF_ASSERT(param1 != 0xffffffff);
    v1 = NARC_AllocAndReadWholeMember(param0, param1, 4);
    GF_ASSERT(v1 != NULL);

    {
        v0 = NNS_G3dGetAnmByIdx(v1, 0);
        GF_ASSERT(v0 != NULL);

        *param3 = NNS_G3dAllocAnmObj(param5, v0, param2);
        GF_ASSERT(param3 != NULL);

        NNS_G3dAnmObjInit(*param3, v0, param2, param4);
        return v1;
    }
}

static const BOOL ov5_021D3868(NNSG3dRenderObj *param0, NNSG3dAnmObj *param1)
{
    if (param1 == NULL) {
        return 0;
    }

    if (param0 == NULL) {
        return 0;
    }

    NNS_G3dRenderObjRemoveAnmObj(param0, param1);
    return 1;
}

static void ov5_021D3884(UnkStruct_ov5_021D37AC *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        if (param0[v0].unk_00) {
            if (ov5_021D3F70(param0[v0].unk_08)) {
                ov5_021D3868(param0[v0].unk_04, param0[v0].unk_08->unk_00);
                param0[v0].unk_00 = 0;
                param0[v0].unk_0C = 0;
                param0[v0].unk_08 = NULL;
                param0[v0].unk_04 = NULL;
            }
        }
    }
}

UnkStruct_ov5_021D3CAC *ov5_021D38B8(void)
{
    int v0;
    UnkStruct_ov5_021D3CAC *v1;

    v1 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021D3CAC));

    for (v0 = 0; v0 < 16; v0++) {
        v1->unk_10[v0].unk_04 = 0;
        v1->unk_10[v0].unk_10 = 0;
        v1->unk_10[v0].unk_00 = NULL;
        v1->unk_10[v0].unk_08 = 0;
        v1->unk_10[v0].unk_0C = 0;
        v1->unk_10[v0].unk_14 = NULL;
        v1->unk_10[v0].unk_18 = -1;
        v1->unk_10[v0].unk_1C = 0;
        v1->unk_10[v0].unk_20 = 0;
        v1->unk_10[v0].unk_24 = 0;
    }

    for (v0 = 0; v0 < 2; v0++) {
        v1->unk_290[v0].unk_00 = 0;
        v1->unk_290[v0].unk_04 = NULL;
        v1->unk_290[v0].unk_08 = NULL;
        v1->unk_290[v0].unk_0C = 0;
    }

    Heap_FndInitAllocatorForExpHeap(&v1->unk_00, 4, 4);

    v1->unk_2B0 = NARC_ctor(NARC_INDEX_ARC__BM_ANIME, 4);
    v1->unk_2B4 = NARC_ctor(NARC_INDEX_ARC__BM_ANIME_LIST, 4);

    return v1;
}

static NNSG3dAnmObj *ov5_021D3938(UnkStruct_ov5_021D3CE4 *param0)
{
    if (param0 == NULL) {
        return NULL;
    }

    return param0->unk_00;
}

static BOOL ov5_021D3944(const u8 param0)
{
    if ((param0 & 0x1) == 0x1) {
        return 1;
    } else {
        return 0;
    }
}

static BOOL ov5_021D3954(const u8 param0)
{
    if (((param0 >> 1) & 0x1) == 0x1) {
        return 1;
    } else {
        return 0;
    }
}

static int ov5_021D3964(const UnkStruct_ov5_021D3CE4 *param0)
{
    GF_ASSERT(param0->unk_04 == 1);
    return param0->unk_1C;
}

UnkStruct_ov5_021D3CE4 *ov5_021D3978(const int param0, const int param1, const int param2, const int param3, const BOOL param4, const BOOL param5, const BOOL param6, NNSG3dResMdl *param7, NNSG3dResTex *param8, UnkStruct_ov5_021D3CAC *param9)
{
    UnkStruct_ov5_021D3CE4 *v0;
    int v1;
    int v2;
    UnkStruct_ov5_021D3A50 v3;

    NARC_ReadWholeMember(param9->unk_2B4, param0, &v3);
    GF_ASSERT(param1 < 4);

    v2 = v3.unk_04[param1];

    if (v2 == 0xffffffff) {
        return NULL;
    }

    if (ov5_021D3944(v3.unk_01) != param6) {
        return NULL;
    }

    for (v1 = 0; v1 < 16; v1++) {
        if ((param3 != 0) && (param9->unk_10[v1].unk_24 == param3)) {
            GF_ASSERT(0);
        }
    }

    for (v1 = 0; v1 < 16; v1++) {
        if (param9->unk_10[v1].unk_04 == 0) {
            param9->unk_10[v1].unk_04 = 1;
            param9->unk_10[v1].unk_10 = param5;
            param9->unk_10[v1].unk_00 = NULL;
            param9->unk_10[v1].unk_08 = 0;
            param9->unk_10[v1].unk_0C = v2;
            param9->unk_10[v1].unk_20 = param4;
            param9->unk_10[v1].unk_24 = param3;
            param9->unk_10[v1].unk_14 = ov5_021D380C(param9->unk_2B0, v2, param7, &param9->unk_10[v1].unk_00, param8, &param9->unk_00);
            param9->unk_10[v1].unk_18 = param2;
            param9->unk_10[v1].unk_1C = 1;

            v0 = &(param9->unk_10[v1]);

            ov5_021D3E7C(&param9->unk_10[v1]);
            return v0;
        }
    }

    GF_ASSERT(FALSE);
    return NULL;
}

void ov5_021D3A50(const int param0, NNSG3dResMdl *param1, NNSG3dResTex *param2, UnkStruct_ov5_021D3CAC *param3)
{
    int v0;
    int v1;
    int v2;
    UnkStruct_ov5_021D3A50 v3;

    NARC_ReadWholeMember(param3->unk_2B4, param0, &v3);

    if (!v3.unk_00) {
        return;
    }

    for (v1 = 0; v1 < 4; v1++) {
        v0 = v3.unk_04[v1];

        if (v0 == 0xffffffff) {
            return;
        }

        if (ov5_021D3944(v3.unk_01) != 0) {
            return;
        }

        for (v2 = 0; v2 < 16; v2++) {
            if (param3->unk_10[v2].unk_04 == 0) {
                param3->unk_10[v2].unk_04 = 1;
                param3->unk_10[v2].unk_10 = 0;
                param3->unk_10[v2].unk_00 = NULL;
                param3->unk_10[v2].unk_08 = 0;
                param3->unk_10[v2].unk_0C = v0;
                param3->unk_10[v2].unk_20 = 0;
                param3->unk_10[v2].unk_24 = 0;
                param3->unk_10[v2].unk_14 = ov5_021D380C(param3->unk_2B0, v0, param1, &param3->unk_10[v2].unk_00, param2, &param3->unk_00);
                param3->unk_10[v2].unk_18 = -1;
                param3->unk_10[v2].unk_1C = 1;

                ov5_021D3E7C(&param3->unk_10[v2]);

                if (v3.unk_02) {
                    param3->unk_10[v2].unk_10 = 1;
                    param3->unk_10[v2].unk_18 = 1;
                }
                break;
            }
        }

        GF_ASSERT(v2 != 16);
    }
}

BOOL ov5_021D3B24(const int param0, const int param1, const BOOL param2, NNSG3dRenderObj *param3, UnkStruct_ov5_021D3CAC *param4)
{
    int v0;
    int v1;
    UnkStruct_ov5_021D3A50 v2;
    BOOL v3;

    if (param4 == NULL) {
        GF_ASSERT(0);
        return 0;
    }

    if (param0 >= ov5_021D3F84(param4)) {
        return 0;
    }

    NARC_ReadWholeMember(param4->unk_2B4, param0, &v2);
    GF_ASSERT(param1 < 4);

    v1 = v2.unk_04[param1];

    if (v1 == 0xffffffff) {
        return 0;
    }

    if (ov5_021D3954(v2.unk_01) != param2) {
        return 0;
    }

    for (v0 = 0; v0 < 16; v0++) {
        if (v1 == param4->unk_10[v0].unk_0C) {
            if (v2.unk_02) {
                v3 = ov5_021D37AC(param4->unk_290, param3, &param4->unk_10[v0], v1);
            } else {
                v3 = 1;
            }

            if (v3) {
                NNS_G3dRenderObjAddAnmObj(param3, param4->unk_10[v0].unk_00);
            }

            return 1;
        }
    }

    return 0;
}

BOOL ov5_021D3BE4(const int param0, NNSG3dRenderObj *param1, UnkStruct_ov5_021D3CAC *param2)
{
    int v0;
    int v1;
    int v2;
    UnkStruct_ov5_021D3A50 v3;
    BOOL v4;
    BOOL v5;

    v4 = 0;

    if (param2 == NULL) {
        GF_ASSERT(FALSE);
    }

    if (param0 >= ov5_021D3F84(param2)) {
        return 0;
    }

    NARC_ReadWholeMember(param2->unk_2B4, param0, &v3);

    if (ov5_021D3954(v3.unk_01) != 0) {
        return 0;
    }

    for (v0 = 0; v0 < 4; v0++) {
        v2 = v3.unk_04[v0];

        if (v2 == 0xffffffff) {
            return v4;
        }

        for (v1 = 0; v1 < 16; v1++) {
            if (v2 == param2->unk_10[v1].unk_0C) {
                if (v3.unk_02) {
                    v5 = ov5_021D37AC(param2->unk_290, param1, &param2->unk_10[v1], v2);
                } else {
                    v5 = 1;
                }

                if (v5) {
                    NNS_G3dRenderObjAddAnmObj(param1, param2->unk_10[v1].unk_00);
                    v4 = 1;
                }
                break;
            }
        }
    }

    return v4;
}

void ov5_021D3CAC(UnkStruct_ov5_021D3CAC *param0)
{
    int v0;

    if (param0 == NULL) {
        return;
    }

    for (v0 = 0; v0 < 16; v0++) {
        if (param0->unk_10[v0].unk_04 != 0) {
            if (param0->unk_10[v0].unk_04 == 1) {
                NNS_G3dFreeAnmObj(&param0->unk_00, param0->unk_10[v0].unk_00);
                param0->unk_10[v0].unk_00 = NULL;
                Heap_FreeToHeap(param0->unk_10[v0].unk_14);
            }

            param0->unk_10[v0].unk_04 = 0;
            param0->unk_10[v0].unk_24 = 0;
        }
    }
}

void ov5_021D3CE4(UnkStruct_ov5_021D3CE4 *param0, UnkStruct_ov5_021D3CAC *param1)
{
    if (param1 == NULL) {
        return;
    }

    GF_ASSERT(param0 != NULL);

    if (param0->unk_04 != 0) {
        if (param0->unk_04 == 1) {
            NNS_G3dFreeAnmObj(&param1->unk_00, param0->unk_00);
            param0->unk_00 = NULL;
            Heap_FreeToHeap(param0->unk_14);
        }

        param0->unk_04 = 0;
        param0->unk_24 = 0;
    }
}

void ov5_021D3D18(UnkStruct_ov5_021D3CAC *param0, NNSG3dRenderObj *param1, const int param2, const int param3)
{
    u8 v0;
    int v1;
    UnkStruct_ov5_021D3A50 v2;

    NARC_ReadWholeMember(param0->unk_2B4, param2, &v2);

    GF_ASSERT(param3 < 4);
    v1 = v2.unk_04[param3];
    GF_ASSERT(v1 != 0xffffffff);

    for (v0 = 0; v0 < 16; v0++) {
        if (param0->unk_10[v0].unk_04 == 1) {
            if (param0->unk_10[v0].unk_0C == v1) {
                ov5_021D3868(param1, param0->unk_10[v0].unk_00);
                return;
            }
        }
    }
}

void ov5_021D3D7C(UnkStruct_ov5_021D3CAC *param0)
{
    if (param0 == NULL) {
        return;
    }

    NARC_dtor(param0->unk_2B0);
    NARC_dtor(param0->unk_2B4);
    Heap_FreeToHeap(param0);

    param0 = NULL;
}

UnkStruct_ov5_021D3CE4 *ov5_021D3DA0(const int param0, UnkStruct_ov5_021D3CAC *param1)
{
    UnkStruct_ov5_021D3CE4 *v0;
    int v1;

    GF_ASSERT(param0 != 0);
    v0 = NULL;

    for (v1 = 0; v1 < 16; v1++) {
        if (param1->unk_10[v1].unk_24 == param0) {
            v0 = &(param1->unk_10[v1]);
            GF_ASSERT(v0->unk_04 != 0);
            break;
        }
    }

    GF_ASSERT(v0 != NULL);
    return v0;
}

UnkStruct_ov5_021D3CE4 *ov5_021D3DE4(const int param0, const int param1, UnkStruct_ov5_021D3CAC *param2)
{
    UnkStruct_ov5_021D3CE4 *v0;
    int v1;
    int v2;
    UnkStruct_ov5_021D3A50 v3;

    NARC_ReadWholeMember(param2->unk_2B4, param0, &v3);

    GF_ASSERT(param1 < 4);

    v1 = v3.unk_04[param1];
    v0 = NULL;

    for (v2 = 0; v2 < 16; v2++) {
        if (param2->unk_10[v2].unk_0C == v1) {
            v0 = &(param2->unk_10[v2]);
            GF_ASSERT(v0->unk_04 != 0);
            break;
        }
    }

    GF_ASSERT(v0 != NULL);
    return v0;
}

void ov5_021D3E40(UnkStruct_ov5_021D3CE4 *param0, const BOOL param1)
{
    param0->unk_10 = param1;
}

void ov5_021D3E44(UnkStruct_ov5_021D3CE4 *param0)
{
    param0->unk_1C = 1;
}

BOOL ov5_021D3E4C(UnkStruct_ov5_021D3CE4 *param0)
{
    BOOL v0;

    if (!param0->unk_20) {
        if (param0->unk_00->frame >= NNS_G3dAnmObjGetNumFrame(param0->unk_00) - (FX32_ONE)) {
            v0 = 1;
        } else {
            v0 = 0;
        }
    } else {
        if (param0->unk_00->frame == 0) {
            v0 = 1;
        } else {
            v0 = 0;
        }
    }

    return v0;
}

void ov5_021D3E7C(UnkStruct_ov5_021D3CE4 *param0)
{
    if (!param0->unk_20) {
        param0->unk_00->frame = 0;
    } else {
        param0->unk_00->frame = NNS_G3dAnmObjGetNumFrame(param0->unk_00) - (FX32_ONE);
    }
}

void ov5_021D3E9C(UnkStruct_ov5_021D3CE4 *param0)
{
    if (!param0->unk_20) {
        param0->unk_00->frame = NNS_G3dAnmObjGetNumFrame(param0->unk_00) - (FX32_ONE);
    } else {
        param0->unk_00->frame = 0;
    }
}

void ov5_021D3EBC(UnkStruct_ov5_021D3CE4 *param0)
{
    if (!param0->unk_20) {
        param0->unk_00->frame += (FX32_ONE);

        if (param0->unk_00->frame == NNS_G3dAnmObjGetNumFrame(param0->unk_00)) {
            param0->unk_00->frame = 0;
        }
    } else {
        if (param0->unk_00->frame <= 0) {
            param0->unk_00->frame = NNS_G3dAnmObjGetNumFrame(param0->unk_00) - (FX32_ONE);
        } else {
            param0->unk_00->frame -= (FX32_ONE);
        }
    }
}

void ov5_021D3F04(UnkStruct_ov5_021D3CE4 *param0, const BOOL param1)
{
    param0->unk_20 = param1;
}

void ov5_021D3F08(UnkStruct_ov5_021D3CE4 *param0, const int param1)
{
    param0->unk_18 = param1;
}

void ov5_021D3F0C(UnkStruct_ov5_021D3CE4 *param0, const int param1)
{
    param0->unk_24 = param1;
}

void ov5_021D3F10(UnkStruct_ov5_021D3CAC *param0)
{
    int v0;
    UnkStruct_ov5_021D3CE4 *v1;

    if (param0 == NULL) {
        return;
    }

    for (v0 = 0; v0 < 16; v0++) {
        v1 = &(param0->unk_10[v0]);

        if (v1->unk_04 == 1) {
            if ((v1->unk_10 == 1) || (v1->unk_1C == 0)) {
                continue;
            }

            ov5_021D3EBC(v1);

            if (v1->unk_18 != -1) {
                if (ov5_021D3E4C(v1)) {
                    if (v1->unk_08 + 1 >= v1->unk_18) {
                        v1->unk_1C = 0;
                    } else {
                        v1->unk_08++;
                    }
                }
            }
        }
    }

    ov5_021D3884(param0->unk_290);
}

BOOL ov5_021D3F70(const UnkStruct_ov5_021D3CE4 *param0)
{
    int v0;

    v0 = ov5_021D3964(param0);

    if (v0 == 0) {
        return 1;
    } else {
        return 0;
    }
}

u16 ov5_021D3F84(UnkStruct_ov5_021D3CAC *param0)
{
    return NARC_GetFileCount(param0->unk_2B4);
}

const u8 ov5_021D3F94(UnkStruct_ov5_021D3CAC *param0, const int param1)
{
    u8 v0;
    UnkStruct_ov5_021D3A50 v1;

    NARC_ReadWholeMember(param0->unk_2B4, param1, &v1);

    if (!v1.unk_00) {
        return 0;
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v1.unk_04[v0] == 0xffffffff) {
            break;
        }
    }

    return v0;
}

static UnkStruct_ov5_021D3FD0 *ov5_021D3FD0(UnkStruct_ov5_021D41B4 *param0, const u8 param1)
{
    u8 v0;
    u8 v1;
    UnkStruct_ov5_021D3FD0 *v2;

    v2 = NULL;
    GF_ASSERT(param1 != 0);
    v1 = 16;

    for (v0 = 0; v0 < 16; v0++) {
        if ((v1 == 16) && ((param0->unk_00[v0].unk_34) == 0)) {
            v1 = v0;
        }
    }

    if (v1 != 16) {
        param0->unk_00[v1].unk_34 = param1;
    } else {
        GF_ASSERT(0);
        return NULL;
    }

    return &(param0->unk_00[v1]);
}

static void ov5_021D4020(UnkStruct_ov5_021D3FD0 *param0)
{
    u8 v0;

    param0->unk_34 = 0;
    param0->unk_30 = 0;
    param0->unk_2C = NULL;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_14[v0] = NULL;
    }
}

static UnkStruct_ov5_021D3FD0 *ov5_021D4040(UnkStruct_ov5_021D41B4 *param0, const int param1)
{
    int v0;
    UnkStruct_ov5_021D3FD0 *v1;

    v1 = NULL;

    for (v0 = 0; v0 < 16; v0++) {
        if (param0->unk_00[v0].unk_34 == param1) {
            v1 = &(param0->unk_00[v0]);
            break;
        }
    }

    return v1;
}

static void ov5_021D4068(NNSG3dRenderObj *param0, const int param1, UnkStruct_ov5_021D3FD0 *param2)
{
    GF_ASSERT(param1 <= 4);

    if (param0 != NULL) {
        param2->unk_14[0] = param0;
    }

    param2->unk_00.unk_10 = param1;
}

static void ov5_021D4084(UnkStruct_ov5_021D3FD0 *param0, const int param1, UnkStruct_ov5_021D3CE4 *param2)
{
    GF_ASSERT(param1 < param0->unk_00.unk_10);
    param0->unk_00.unk_00[param1] = param2;
}

static UnkStruct_ov5_021D3CE4 *ov5_021D409C(UnkStruct_ov5_021D3FD0 *param0, const int param1)
{
    u8 v0;
    UnkStruct_ov5_021D3CE4 *v1;
    NNSG3dAnmObj *v2;
    NNSG3dAnmObj *v3;

    GF_ASSERT(param1 < param0->unk_00.unk_10);

    v1 = param0->unk_00.unk_00[param1];
    v2 = ov5_021D3938(v1);
    v3 = ov5_021D3938(param0->unk_2C);

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_14[v0] != NULL) {
            ov5_021D3868(param0->unk_14[v0], v3);

            NNS_G3dRenderObjAddAnmObj(param0->unk_14[v0], v2);
        }
    }

    param0->unk_2C = v1;
    return v1;
}

static void ov5_021D40F0(const int param0, NNSG3dResMdl *param1, NNSG3dResTex *param2, const int param3, const int param4, const BOOL param5, UnkStruct_ov5_021D3CAC *param6, UnkStruct_ov5_021D3FD0 *param7)
{
    UnkStruct_ov5_021D3CE4 *v0;
    int v1;

    for (v1 = 0; v1 < param3; v1++) {
        v0 = ov5_021D3978(param0, v1, param4, 0, param5, 1, 1, param1, param2, param6);
        GF_ASSERT(v0 != NULL);
        ov5_021D4084(param7, v1, v0);
    }
}

static void ov5_021D414C(UnkStruct_ov5_021D3CAC *param0, UnkStruct_ov5_021D3FD0 *param1)
{
    int v0;
    NNSG3dAnmObj *v1;

    v1 = ov5_021D3938(param1->unk_2C);

    for (v0 = 0; v0 < 6; v0++) {
        if (param1->unk_14[v0] != NULL) {
            ov5_021D3868(param1->unk_14[v0], v1);
        }
    }

    for (v0 = 0; v0 < param1->unk_00.unk_10; v0++) {
        {
            UnkStruct_ov5_021D3CE4 *v2;

            v2 = param1->unk_00.unk_00[v0];
            ov5_021D3CE4(v2, param0);
        }

        param1->unk_00.unk_00[v0] = NULL;
    }
}

UnkStruct_ov5_021D41B4 *ov5_021D4194(void)
{
    int v0;
    int v1;
    UnkStruct_ov5_021D41B4 *v2;

    v1 = sizeof(UnkStruct_ov5_021D41B4);
    v2 = Heap_AllocFromHeap(4, v1);

    MI_CpuClearFast(v2, v1);

    return v2;
}

void ov5_021D41B4(UnkStruct_ov5_021D41B4 **param0)
{
    if ((*param0) == NULL) {
        return;
    }

    Heap_FreeToHeap(*param0);
    (*param0) = NULL;
}

void ov5_021D41C8(UnkStruct_ov5_021D3CAC *param0, UnkStruct_ov5_021D41B4 *const param1, const int param2, const int param3, NNSG3dRenderObj *param4, NNSG3dResMdl *param5, NNSG3dResTex *param6, const int param7, const u8 param8, const BOOL param9)
{
    int v0;
    u8 v1;
    UnkStruct_ov5_021D3FD0 *v2 = NULL;

    v2 = ov5_021D3FD0(param1, param2);

    if (!v2) {
        GF_ASSERT(0);
        return;
    }

    ov5_021D4068(param4, param7, v2);

    v1 = param8;
    GF_ASSERT(v1 != 0);

    if (v1 == 0) {
        v1 = 1;
    }

    ov5_021D40F0(param3, param5, param6, param7, v1, param9, param0, v2);
    v2->unk_30 = param3;
}

void ov5_021D4220(UnkStruct_ov5_021D41B4 *const param0, const int param1, const u8 param2, NNSG3dRenderObj *param3)
{
    UnkStruct_ov5_021D3FD0 *v0;

    GF_ASSERT(param2 < 6);
    v0 = ov5_021D4040(param0, param1);

    GF_ASSERT(v0->unk_14[param2] == NULL);
    v0->unk_14[param2] = param3;
}

void ov5_021D4250(UnkStruct_ov5_021D41B4 *const param0, const int param1, const int param2)
{
    UnkStruct_ov5_021D3FD0 *v0;
    UnkStruct_ov5_021D3CE4 *v1;

    GF_ASSERT(param1 != 0);

    v0 = ov5_021D4040(param0, param1);
    v1 = ov5_021D409C(v0, param2);

    ov5_021D3E40(v1, 0);
}

void ov5_021D4278(UnkStruct_ov5_021D41B4 *const param0, const int param1, const int param2, const int param3)
{
    UnkStruct_ov5_021D3FD0 *v0;
    UnkStruct_ov5_021D3CE4 *v1;

    GF_ASSERT(param1 != 0);

    v0 = ov5_021D4040(param0, param1);
    v1 = ov5_021D409C(v0, param2);

    if (param3 != 0) {
        Sound_PlayEffect(param3);
    }

    ov5_021D3E40(v1, 0);
}

void ov5_021D42B0(UnkStruct_ov5_021D3CAC *param0, UnkStruct_ov5_021D41B4 *param1, const int param2)
{
    UnkStruct_ov5_021D3FD0 *v0;

    GF_ASSERT(param2 != 0);
    v0 = ov5_021D4040(param1, param2);

    ov5_021D414C(param0, v0);
    ov5_021D4020(v0);
}

UnkStruct_ov5_021D3CE4 *ov5_021D42D8(UnkStruct_ov5_021D41B4 *const param0, const int param1)
{
    UnkStruct_ov5_021D3FD0 *v0;
    UnkStruct_ov5_021D3CE4 *v1;

    GF_ASSERT(param1 != 0);

    v0 = ov5_021D4040(param0, param1);
    v1 = v0->unk_2C;

    return v1;
}

const BOOL ov5_021D42F0(UnkStruct_ov5_021D41B4 *const param0, const int param1)
{
    UnkStruct_ov5_021D3CE4 *v0;

    v0 = ov5_021D42D8(param0, param1);
    GF_ASSERT(v0 != NULL);

    if (ov5_021D3F70(v0)) {
        return 1;
    } else {
        return 0;
    }
}

const int ov5_021D4310(UnkStruct_ov5_021D41B4 *const param0, const int param1)
{
    UnkStruct_ov5_021D3FD0 *v0;

    v0 = ov5_021D4040(param0, param1);
    return v0->unk_30;
}
