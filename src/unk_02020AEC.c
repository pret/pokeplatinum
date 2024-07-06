#include "unk_02020AEC.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0201DD00_decl.h"
#include "struct_decls/struct_0201DDF4_decl.h"
#include "struct_defs/struct_0202144C.h"
#include "struct_defs/struct_020217F4.h"
#include "struct_defs/struct_02024184.h"

#include "functypes/funcptr_02021444.h"
#include "overlay005/struct_ov5_021DF7F8.h"
#include "overlay005/struct_ov5_021DF84C.h"
#include "overlay005/struct_ov5_021EDDAC.h"

#include "easy3d.h"
#include "heap.h"
#include "unk_0201DD00.h"
#include "unk_0202414C.h"

typedef struct UnkStruct_020216E0_t {
    VecFx32 unk_00;
    VecFx32 unk_0C;
    const MtxFx33 *unk_18;
    void *unk_1C;
    UnkFuncPtr_02021444 unk_20;
    u8 unk_24;
    void *unk_28;
    const UnkStruct_020217F4 *unk_2C;
    NNSG3dRenderObj unk_30;
    NNSG3dResMdlSet *unk_84;
    NNSG3dResMdl *unk_88;
    NNSG3dResTex *unk_8C;
    const NNSG3dResTex *unk_90;
    NNSGfdTexKey unk_94;
    NNSGfdTexKey unk_98;
    NNSGfdPlttKey unk_9C;
    UnkStruct_02024184 unk_A0;
    UnkStruct_0201DDF4 *unk_B0;
    u8 unk_B4;
    u16 unk_B6;
    fx32 unk_B8;
    struct UnkStruct_020216E0_t *unk_BC;
    struct UnkStruct_020216E0_t *unk_C0;
} UnkStruct_020216E0;

typedef struct UnkStruct_02020C44_t {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    UnkStruct_020216E0 *unk_04;
    int unk_08;
    UnkStruct_020216E0 unk_0C;
    UnkStruct_020216E0 **unk_CC;
    int unk_D0;
    NNSFndAllocator *unk_D4;
    UnkStruct_0201DD00 *unk_D8;
} UnkStruct_02020C44;

static UnkStruct_02020C44 *sub_02020D74(void);
static void sub_02020AEC(UnkStruct_02020C44 *param0);
static void sub_02020DA8(UnkStruct_02020C44 *param0);
static void sub_0202144C(UnkStruct_020216E0 *param0);
static void sub_0202149C(NNSG3dResMdl *param0, const NNSG3dResTex *param1, u8 param2);
static void sub_02021524(NNSG3dResMat *param0, const NNSG3dResDictTexToMatIdxData *param1, u32 param2);
static void sub_020215A0(NNSG3dResMdl *param0, const NNSG3dResTex *param1, u8 param2);
static void sub_0202162C(NNSG3dResMat *param0, const NNSG3dResDictPlttToMatIdxData *param1, u32 param2);
static void sub_020216A8(UnkStruct_02020C44 *param0);
static UnkStruct_020216E0 *sub_020216E0(UnkStruct_02020C44 *param0);
static BOOL sub_0202170C(UnkStruct_02020C44 *param0, UnkStruct_020216E0 *param1);
static void sub_02021744(UnkStruct_020216E0 *param0, UnkStruct_020216E0 *param1);
static void sub_02021768(UnkStruct_020216E0 *param0);
static void sub_0202185C(UnkStruct_020216E0 *param0);
static void sub_0202187C(UnkStruct_020216E0 *param0);
static void *sub_0202189C(const UnkStruct_ov5_021DF84C *param0, int param1);
static const UnkStruct_020217F4 *sub_020218B4(const UnkStruct_020217F4 *param0, int param1);
static NNSG3dResMdlSet *sub_02021788(const UnkStruct_ov5_021DF84C *param0, NNSG3dResMdl **param1, NNSG3dResTex **param2);
static NNSG3dResTex *sub_020217D4(const UnkStruct_ov5_021DF84C *param0);
static void sub_020217E0(UnkStruct_020216E0 *param0, const UnkStruct_ov5_021DF84C *param1);
static void sub_02020E28(UnkStruct_020216E0 *param0, const UnkStruct_ov5_021DF84C *param1);
static void sub_02020E78(UnkStruct_020216E0 *param0, const UnkStruct_ov5_021DF84C *param1);
static fx32 sub_020217F4(const UnkStruct_020216E0 *param0, int param1);
static int sub_02021804(UnkStruct_020216E0 *param0, fx32 param1);
static int sub_02021824(const UnkStruct_020217F4 *param0, fx32 *param1, fx32 param2);
static void sub_02020EF8(const NNSG3dResTex *param0, NNSG3dTexKey *param1, NNSG3dTexKey *param2, NNSG3dPlttKey *param3);
static void sub_02020F90(NNSG3dResTex *param0, NNSG3dTexKey *param1, NNSG3dTexKey *param2, NNSG3dPlttKey *param3);
static void sub_02020FA4(NNSG3dResTex *param0, NNSG3dResMdlSet *param1, NNSG3dTexKey *param2, NNSG3dTexKey *param3, NNSG3dPlttKey *param4);
static void sub_02020FC8(NNSG3dTexKey *param0, NNSG3dTexKey *param1, NNSG3dPlttKey *param2);
static BOOL sub_02020FFC(const NNSG3dResTex *param0, const NNSG3dResTex *param1);
static void sub_0202105C(UnkStruct_02020C44 *param0, UnkStruct_020216E0 *param1);
static void sub_02021078(UnkStruct_020216E0 *param0, const UnkStruct_ov5_021DF84C *param1);
static void sub_020210F4(const UnkStruct_02020C44 *param0, UnkStruct_020216E0 *param1, const UnkStruct_ov5_021DF84C *param2);
static void sub_02021148(UnkStruct_020216E0 *param0, const UnkStruct_ov5_021DF84C *param1);
static void sub_0202117C(UnkStruct_020216E0 *param0, const UnkStruct_ov5_021DF84C *param1);

static UnkStruct_02020C44 *Unk_021C0774 = NULL;
static int Unk_021C0778 = 0;

static void sub_02020AEC(UnkStruct_02020C44 *param0)
{
    param0->unk_00 = 0;
    param0->unk_01 = 0;
    param0->unk_04 = NULL;
    param0->unk_08 = 0;
    param0->unk_CC = NULL;
    param0->unk_D0 = 0;
    param0->unk_D4 = NULL;
    param0->unk_D8 = NULL;
    param0->unk_03 = 0;
}

void sub_02020B14(UnkStruct_020216E0 *param0)
{
    u8 v0 = 0;

    param0->unk_28 = NULL;
    param0->unk_2C = NULL;
    param0->unk_84 = NULL;
    param0->unk_88 = NULL;
    param0->unk_8C = NULL;
    param0->unk_90 = NULL;

    memset(&param0->unk_A0, 0, sizeof(UnkStruct_02024184));

    param0->unk_94 = (NNS_GFD_ALLOC_ERROR_TEXKEY);
    param0->unk_98 = (NNS_GFD_ALLOC_ERROR_TEXKEY);
    param0->unk_9C = (NNS_GFD_ALLOC_ERROR_PLTTKEY);
    param0->unk_B0 = NULL;

    VEC_Set(&(param0->unk_00), 0, 0, 0);
    VEC_Set(&(param0->unk_0C), FX32_ONE, FX32_ONE, FX32_ONE);

    param0->unk_18 = NULL;
    param0->unk_B6 = 0;
    param0->unk_B4 = 0;
    param0->unk_BC = NULL;
    param0->unk_C0 = NULL;
    param0->unk_24 = 0;
    param0->unk_20 = NULL;
}

void sub_02020B90(int param0, int param1)
{
    int v0;

    GF_ASSERT(Unk_021C0774 == NULL);

    Unk_021C0774 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_02020C44) * param0);
    Unk_021C0778 = param0;

    for (v0 = 0; v0 < param0; v0++) {
        sub_02020AEC(&Unk_021C0774[v0]);
    }
}

void sub_02020BD0(void)
{
    int v0;

    for (v0 = 0; v0 < Unk_021C0778; v0++) {
        sub_02020CCC(Unk_021C0774 + v0);
    }

    Heap_FreeToHeap(Unk_021C0774);

    Unk_021C0774 = NULL;
    Unk_021C0778 = 0;
}

void sub_02020C08(void)
{
    int v0;

    for (v0 = 0; v0 < Unk_021C0778; v0++) {
        if (Unk_021C0774[v0].unk_01 == 1) {
            sub_02020DA8(&Unk_021C0774[v0]);
        }

        if (Unk_021C0774[v0].unk_03 == 1) {
            Unk_021C0774[v0].unk_03 = 2;
        }
    }
}

UnkStruct_02020C44 *sub_02020C44(const UnkStruct_ov5_021EDDAC *param0)
{
    UnkStruct_02020C44 *v0;

    v0 = sub_02020D74();

    if (v0 == NULL) {
        GF_ASSERT(0);
        return NULL;
    }

    v0->unk_00 = 1;
    v0->unk_01 = 1;
    v0->unk_04 = Heap_AllocFromHeap(param0->unk_04, sizeof(UnkStruct_020216E0) * param0->unk_00);
    v0->unk_08 = param0->unk_00;

    sub_02020B14(&v0->unk_0C);

    v0->unk_0C.unk_BC = &v0->unk_0C;
    v0->unk_0C.unk_C0 = &v0->unk_0C;
    v0->unk_CC = Heap_AllocFromHeap(param0->unk_04, sizeof(UnkStruct_020216E0 *) * param0->unk_00);

    sub_020216A8(v0);
    v0->unk_D4 = Heap_AllocFromHeap(param0->unk_04, sizeof(NNSFndAllocator));

    Heap_FndInitAllocatorForExpHeap(v0->unk_D4, param0->unk_04, 4);
    v0->unk_D8 = sub_0201DD00(param0->unk_00, param0->unk_04);

    return v0;
}

BOOL sub_02020CCC(UnkStruct_02020C44 *param0)
{
    if (param0 == NULL) {
        GF_ASSERT(0);
        return 0;
    }

    if (param0->unk_00 != 0) {
        sub_02020D14(param0);
        Heap_FreeToHeap(param0->unk_04);
        Heap_FreeToHeap(param0->unk_CC);
        Heap_FreeToHeap(param0->unk_D4);
        sub_0201DD3C(param0->unk_D8);
        sub_02020AEC(param0);
    }

    return 1;
}

BOOL sub_02020D14(UnkStruct_02020C44 *param0)
{
    UnkStruct_020216E0 *v0;
    UnkStruct_020216E0 *v1;

    if (param0 == NULL) {
        GF_ASSERT(param0);
        return 0;
    }

    if (param0->unk_00 != 0) {
        v0 = param0->unk_0C.unk_BC;

        while (v0 != &param0->unk_0C) {
            v1 = v0->unk_BC;
            sub_020211FC(v0);
            v0 = v1;
        }
    }

    return 1;
}

BOOL sub_02020D50(UnkStruct_02020C44 *param0)
{
    GF_ASSERT(param0);

    if (param0->unk_03 == 0) {
        return 0;
    }

    return 1;
}

void sub_02020D68(UnkStruct_02020C44 *param0)
{
    if (param0->unk_03 == 2) {
        param0->unk_03 = 0;
    }
}

static UnkStruct_02020C44 *sub_02020D74(void)
{
    int v0;

    for (v0 = 0; v0 < Unk_021C0778; v0++) {
        if (Unk_021C0774[v0].unk_00 == 0) {
            return &Unk_021C0774[v0];
        }
    }

    return NULL;
}

static void sub_02020DA8(UnkStruct_02020C44 *param0)
{
    UnkStruct_020216E0 *v0;
    VecFx32 v1;
    MtxFx33 v2;
    const MtxFx33 *v3;

    GF_ASSERT(param0);
    MTX_Identity33(&v2);

    v0 = param0->unk_0C.unk_BC;

    while (v0 != &param0->unk_0C) {
        if (v0->unk_24 == 1) {
            if (v0->unk_20 != NULL) {
                v0->unk_20(v0, v0->unk_1C);
            }

            sub_0202185C(v0);

            if (v0->unk_B4 == 3) {
                sub_0202144C(v0);
            } else {
                if (v0->unk_B4 == 2) {
                    sub_02021414(v0);
                }
            }

            v3 = v0->unk_18;

            if (v3 == NULL) {
                v3 = &v2;
            }

            Easy3D_DrawRenderObj(&v0->unk_30, &v0->unk_00, v3, &v0->unk_0C);
            sub_0202187C(v0);
        }

        v0 = v0->unk_BC;
    }
}

static void sub_02020E28(UnkStruct_020216E0 *param0, const UnkStruct_ov5_021DF84C *param1)
{
    UnkStruct_02020C44 *v0;

    v0 = (UnkStruct_02020C44 *)param0->unk_28;

    sub_0202105C(v0, param0);
    sub_02021078(param0, param1);
    sub_020210F4(v0, param0, param1);

    if (param0->unk_B4 == 1) {
        sub_02021744(&v0->unk_0C, param0);
    }

    param0->unk_B4 = 2;
    param0->unk_2C = param1->unk_08;
    param0->unk_B6 = 0;
    param0->unk_B8 = 0;
}

static void sub_02020E78(UnkStruct_020216E0 *param0, const UnkStruct_ov5_021DF84C *param1)
{
    UnkStruct_02020C44 *v0 = param0->unk_28;

    sub_0202105C(v0, param0);

    if (param0->unk_B4 == 2) {
        sub_02020FC8(&param0->unk_94, &param0->unk_98, &param0->unk_9C);
    }

    param0->unk_94 = param1->unk_1C;
    param0->unk_98 = param1->unk_20;
    param0->unk_9C = param1->unk_24;

    sub_02021148(param0, param1);
    sub_0202117C(param0, param1);

    if (param0->unk_B4 == 1) {
        sub_02021744(&v0->unk_0C, param0);
    }

    param0->unk_B4 = 3;
    param0->unk_2C = param1->unk_08;
    param0->unk_B6 = 0;
    param0->unk_B8 = 0;
}

static void sub_02020EF8(const NNSG3dResTex *param0, NNSG3dTexKey *param1, NNSG3dTexKey *param2, NNSG3dPlttKey *param3)
{
    u32 v0, v1, v2;

    v0 = NNS_G3dTexGetRequiredSize(param0);
    v1 = NNS_G3dTex4x4GetRequiredSize(param0);
    v2 = NNS_G3dPlttGetRequiredSize(param0);

    if (v0 > 0) {
        *param1 = NNS_GfdAllocTexVram(v0, 0, 0);
        GF_ASSERT(*param1 != (NNS_GFD_ALLOC_ERROR_TEXKEY));
    } else {
        *param1 = 0;
    }

    if (v1 > 0) {
        *param2 = NNS_GfdAllocTexVram(v1, 1, 0);
        GF_ASSERT(*param2 != (NNS_GFD_ALLOC_ERROR_TEXKEY));
    } else {
        *param2 = 0;
    }

    if (v2 > 0) {
        *param3 = NNS_GfdAllocPlttVram(v2, param0->tex4x4Info.flag & NNS_G3D_RESPLTT_USEPLTT4, 0);
        GF_ASSERT(*param3 != (NNS_GFD_ALLOC_ERROR_PLTTKEY));
    } else {
        *param3 = 0;
    }
}

static void sub_02020F90(NNSG3dResTex *param0, NNSG3dTexKey *param1, NNSG3dTexKey *param2, NNSG3dPlttKey *param3)
{
    NNS_G3dTexReleaseTexKey(param0, param1, param2);
    *param3 = NNS_G3dPlttReleasePlttKey(param0);
}

static void sub_02020FA4(NNSG3dResTex *param0, NNSG3dResMdlSet *param1, NNSG3dTexKey *param2, NNSG3dTexKey *param3, NNSG3dPlttKey *param4)
{
    NNS_G3dTexSetTexKey(param0, *param2, *param3);
    NNS_G3dPlttSetPlttKey(param0, *param4);
    NNS_G3dBindMdlSet(param1, param0);
}

static void sub_02020FC8(NNSG3dTexKey *param0, NNSG3dTexKey *param1, NNSG3dPlttKey *param2)
{
    if (*param0 != (NNS_GFD_ALLOC_ERROR_TEXKEY)) {
        NNS_GfdFreeTexVram(*param0);
    }

    if (*param1 != (NNS_GFD_ALLOC_ERROR_TEXKEY)) {
        NNS_GfdFreeTexVram(*param1);
    }

    if (*param2 != (NNS_GFD_ALLOC_ERROR_PLTTKEY)) {
        NNS_GfdFreePlttVram(*param2);
    }
}

static BOOL sub_02020FFC(const NNSG3dResTex *param0, const NNSG3dResTex *param1)
{
    u32 v0, v1, v2;
    u32 v3, v4, v5;
    BOOL v6;

    if ((param0 == NULL) || (param1 == NULL)) {
        return 0;
    }

    v0 = NNS_G3dTexGetRequiredSize(param0);
    v1 = NNS_G3dTex4x4GetRequiredSize(param0);
    v2 = NNS_G3dPlttGetRequiredSize(param0);
    v3 = NNS_G3dTexGetRequiredSize(param1);
    v4 = NNS_G3dTex4x4GetRequiredSize(param1);
    v5 = NNS_G3dPlttGetRequiredSize(param1);

    if ((v0 != v3) || (v1 != v4) || (v2 != v5)) {
        v6 = 0;
    } else {
        v6 = 1;
    }

    return v6;
}

static void sub_0202105C(UnkStruct_02020C44 *param0, UnkStruct_020216E0 *param1)
{
    if (param1->unk_B0) {
        sub_0201DDAC(param1->unk_B0);
        param1->unk_B0 = NULL;
    }
}

static void sub_02021078(UnkStruct_020216E0 *param0, const UnkStruct_ov5_021DF84C *param1)
{
    NNSG3dResTex *v0;
    int v1;

    v0 = param0->unk_8C;
    param0->unk_84 = sub_02021788(param1, &param0->unk_88, &param0->unk_8C);

    NNS_G3dRenderObjInit(&param0->unk_30, param0->unk_88);

    if (param0->unk_B4 != 3) {
        v1 = sub_02020FFC(v0, param0->unk_8C);
    } else {
        v1 = 0;
    }

    if (v1 == 0) {
        if (param0->unk_B4 == 2) {
            sub_02020FC8(&(param0->unk_94), &(param0->unk_98), &(param0->unk_9C));
        }

        sub_02020EF8(param0->unk_8C, &(param0->unk_94), &(param0->unk_98), &(param0->unk_9C));
    }
}

static void sub_020210F4(const UnkStruct_02020C44 *param0, UnkStruct_020216E0 *param1, const UnkStruct_ov5_021DF84C *param2)
{
    param1->unk_90 = sub_020217D4(param2);
    param1->unk_A0 = param2->unk_0C;
    param1->unk_B0 = sub_0201DD54(param0->unk_D8, &param1->unk_A0, param1->unk_90, param1->unk_94, param1->unk_9C, param1->unk_B8);
}

static void sub_02021148(UnkStruct_020216E0 *param0, const UnkStruct_ov5_021DF84C *param1)
{
    param0->unk_84 = sub_02021788(param1, &param0->unk_88, &param0->unk_8C);
    NNS_G3dRenderObjInit(&param0->unk_30, param0->unk_88);
    param0->unk_90 = sub_020217D4(param1);
}

static void sub_0202117C(UnkStruct_020216E0 *param0, const UnkStruct_ov5_021DF84C *param1)
{
    param0->unk_A0 = param1->unk_0C;
    param0->unk_B0 = NULL;
}

UnkStruct_020216E0 *sub_0202119C(const UnkStruct_ov5_021DF7F8 *param0)
{
    UnkStruct_020216E0 *v0;
    UnkStruct_02020C44 *v1;

    if (param0->unk_00 == NULL) {
        return NULL;
    }

    v1 = param0->unk_00;
    v0 = sub_020216E0(v1);

    if (v0 == NULL) {
        return NULL;
    }

    v0->unk_28 = v1;
    v0->unk_00 = param0->unk_08;
    v0->unk_0C = param0->unk_14;
    v0->unk_B6 = 0;
    v0->unk_24 = 1;
    v0->unk_B4 = 1;

    sub_020217E0(v0, param0->unk_04);

    return v0;
}

BOOL sub_020211FC(UnkStruct_020216E0 *param0)
{
    UnkStruct_02020C44 *v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_B4 != 1);

    v0 = (UnkStruct_02020C44 *)param0->unk_28;

    if (param0->unk_B4 == 0) {
        return 0;
    }

    sub_02021768(param0);

    if (param0->unk_B4 == 2) {
        sub_02020FC8(&(param0->unk_94), &(param0->unk_98), &(param0->unk_9C));
    }

    sub_0202105C(v0, param0);
    sub_0202170C(v0, param0);

    v0->unk_03 = 1;

    return 1;
}

void sub_0202125C(UnkStruct_ov5_021DF84C *param0, void *param1, const NNSG3dResTex *param2, const UnkStruct_020217F4 *param3, const UnkStruct_02024184 *param4, NNSGfdTexKey param5, NNSGfdTexKey param6, NNSGfdPlttKey param7)
{
    param0->unk_00 = param1;
    param0->unk_04 = param2;
    param0->unk_08 = param3;
    param0->unk_0C = *param4;
    param0->unk_1C = param5;
    param0->unk_20 = param6;
    param0->unk_24 = param7;
}

void sub_02021284(UnkStruct_ov5_021DF84C *param0, void *param1, const NNSG3dResTex *param2, const UnkStruct_020217F4 *param3, const UnkStruct_02024184 *param4)
{
    param0->unk_00 = param1;
    param0->unk_04 = param2;
    param0->unk_08 = param3;
    param0->unk_0C = *param4;
    param0->unk_1C = (NNS_GFD_ALLOC_ERROR_TEXKEY);
    param0->unk_20 = (NNS_GFD_ALLOC_ERROR_TEXKEY);
    param0->unk_24 = (NNS_GFD_ALLOC_ERROR_PLTTKEY);
}

void sub_020212A8(UnkStruct_020216E0 *param0, const VecFx32 *param1)
{
    GF_ASSERT(param0);
    param0->unk_00 = *param1;
}

const VecFx32 *sub_020212C0(const UnkStruct_020216E0 *param0)
{
    GF_ASSERT(param0);
    return &param0->unk_00;
}

void sub_020212D0(UnkStruct_020216E0 *param0, const VecFx32 *param1)
{
    GF_ASSERT(param0);
    param0->unk_0C = *param1;
}

const VecFx32 *sub_020212EC(const UnkStruct_020216E0 *param0)
{
    GF_ASSERT(param0);
    return &param0->unk_0C;
}

void sub_020212FC(UnkStruct_020216E0 *param0, const MtxFx33 *param1)
{
    GF_ASSERT(param0);
    param0->unk_18 = param1;
}

const MtxFx33 *sub_02021310(const UnkStruct_020216E0 *param0)
{
    GF_ASSERT(param0);
    return param0->unk_18;
}

void sub_02021320(UnkStruct_020216E0 *param0, u8 param1)
{
    GF_ASSERT(param0);
    param0->unk_24 = param1;
}

u8 sub_02021334(const UnkStruct_020216E0 *param0)
{
    GF_ASSERT(param0);
    return param0->unk_24;
}

void sub_02021344(UnkStruct_020216E0 *param0, int param1)
{
    GF_ASSERT(param0);
    param0->unk_B6 = param1;
}

int sub_02021358(const UnkStruct_020216E0 *param0)
{
    GF_ASSERT(param0);
    return param0->unk_B6;
}

int sub_02021368(UnkStruct_020216E0 *param0, fx32 param1)
{
    GF_ASSERT(param0);

    return sub_02021804(param0, param1);
}

void sub_02021380(UnkStruct_020216E0 *param0, fx32 param1)
{
    GF_ASSERT(param0);
    param0->unk_B8 = param1;
}

fx32 sub_02021394(const UnkStruct_020216E0 *param0)
{
    GF_ASSERT(param0);
    return param0->unk_B8;
}

void sub_020213A4(UnkStruct_020216E0 *param0, fx32 param1)
{
    GF_ASSERT(param0);

    param0->unk_B8 = sub_020217F4(param0, param0->unk_B6);
    param0->unk_B8 += param1;
}

fx32 sub_020213D4(const UnkStruct_020216E0 *param0)
{
    GF_ASSERT(param0);
    return param0->unk_B8 - sub_020217F4(param0, param0->unk_B6);
}

NNSG3dResMdl *sub_020213F4(const UnkStruct_020216E0 *param0)
{
    GF_ASSERT(param0);
    return param0->unk_88;
}

int sub_02021404(const UnkStruct_020216E0 *param0)
{
    GF_ASSERT(param0);
    return param0->unk_B4;
}

void sub_02021414(UnkStruct_020216E0 *param0)
{
    if (param0->unk_B4 == 2) {
        sub_0201DDD8(param0->unk_B0, param0->unk_B8);
    }
}

NNSG3dResMdl *sub_02021430(UnkStruct_020216E0 *param0)
{
    return param0->unk_88;
}

NNSG3dResTex *sub_02021438(UnkStruct_020216E0 *param0)
{
    return param0->unk_8C;
}

NNSG3dRenderObj *sub_02021440(UnkStruct_020216E0 *param0)
{
    return &param0->unk_30;
}

void sub_02021444(UnkStruct_020216E0 *param0, UnkFuncPtr_02021444 param1, void *param2)
{
    param0->unk_1C = param2;
    param0->unk_20 = param1;
}

static void sub_0202144C(UnkStruct_020216E0 *param0)
{
    UnkStruct_0202144C v0;

    v0 = sub_0202414C(&param0->unk_A0, param0->unk_B8 >> FX32_SHIFT);

    sub_0202149C(param0->unk_88, param0->unk_90, v0.unk_00);
    sub_020215A0(param0->unk_88, param0->unk_90, v0.unk_01);
}

static void sub_0202149C(NNSG3dResMdl *param0, const NNSG3dResTex *param1, u8 param2)
{
    NNSG3dResMat *v0;
    const NNSG3dResDict *v1;
    const NNSG3dResDictTexToMatIdxData *v2;
    const NNSG3dResDictTexData *v3;
    u32 v4;
    int v5;

    v0 = NNS_G3dGetMat(param0);
    v1 = (NNSG3dResDict *)((u8 *)v0 + v0->ofsDictTexToMatList);
    v3 = NNS_G3dGetTexDataByIdx(param1, param2);
    v4 = (v3->texImageParam & NNS_G3D_TEXIMAGE_PARAM_TEX_ADDR_MASK);

    for (v5 = 0; v5 < v1->numEntry; ++v5) {
        v2 = (NNSG3dResDictTexToMatIdxData *)NNS_G3dGetResDataByIdx(v1, v5);

        if (v2->flag & 1) {
            sub_02021524(v0, v2, v4);
        }
    }
}

static void sub_02021524(NNSG3dResMat *param0, const NNSG3dResDictTexToMatIdxData *param1, u32 param2)
{
    u8 *v0;
    int v1;
    NNSG3dResMatData *v2;

    v0 = (u8 *)param0 + param1->offset;

    for (v1 = 0; v1 < param1->numIdx; v1++) {
        v2 = NNS_G3dGetMatDataByIdx(param0, *(v0 + v1));
        GF_ASSERT(((v2->texImageParam & NNS_G3D_TEXIMAGE_PARAM_TEX_ADDR_MASK) + param2) <= NNS_G3D_TEXIMAGE_PARAM_TEX_ADDR_MASK);
        v2->texImageParam += param2;
    }
}

static void sub_020215A0(NNSG3dResMdl *param0, const NNSG3dResTex *param1, u8 param2)
{
    NNSG3dResMat *v0;
    const NNSG3dResDict *v1;
    const NNSG3dResDictPlttToMatIdxData *v2;
    const NNSG3dResDictPlttData *v3;
    u32 v4;
    u32 v5;

    v0 = NNS_G3dGetMat(param0);
    v1 = (NNSG3dResDict *)((u8 *)v0 + v0->ofsDictPlttToMatList);
    v3 = NNS_G3dGetPlttDataByIdx(param1, param2);
    v4 = v3->offset;

    if (!(v3->flag & 1)) {
        v4 >>= 1;
    }

    for (v5 = 0; v5 < v1->numEntry; ++v5) {
        v2 = (NNSG3dResDictPlttToMatIdxData *)NNS_G3dGetResDataByIdx(v1, v5);

        if (v2->flag & 1) {
            sub_0202162C(v0, v2, v4);
        }
    }
}

static void sub_0202162C(NNSG3dResMat *param0, const NNSG3dResDictPlttToMatIdxData *param1, u32 param2)
{
    u8 *v0;
    u32 v1;

    v0 = (u8 *)param0 + param1->offset;

    for (v1 = 0; v1 < param1->numIdx; v1++) {
        NNSG3dResMatData *v2 = NNS_G3dGetMatDataByIdx(param0, *(v0 + v1));

        GF_ASSERT(((v2->texPlttBase & 0x1fff) + param2) <= 0x1fff);
        v2->texPlttBase += param2;
    }
}

static void sub_020216A8(UnkStruct_02020C44 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_08; v0++) {
        sub_02020B14(&param0->unk_04[v0]);
        param0->unk_CC[v0] = param0->unk_04 + v0;
    }

    param0->unk_D0 = 0;
}

static UnkStruct_020216E0 *sub_020216E0(UnkStruct_02020C44 *param0)
{
    UnkStruct_020216E0 *v0;

    if (param0->unk_D0 >= param0->unk_08) {
        return NULL;
    }

    v0 = param0->unk_CC[param0->unk_D0];
    param0->unk_D0++;

    return v0;
}

static BOOL sub_0202170C(UnkStruct_02020C44 *param0, UnkStruct_020216E0 *param1)
{
    if (param0->unk_D0 <= 0) {
        return 0;
    }

    sub_02020B14(param1);

    param0->unk_D0--;
    param0->unk_CC[param0->unk_D0] = param1;

    return 1;
}

static void sub_02021744(UnkStruct_020216E0 *param0, UnkStruct_020216E0 *param1)
{
    param1->unk_C0 = param0->unk_C0;
    param0->unk_C0->unk_BC = param1;
    param1->unk_BC = param0;
    param0->unk_C0 = param1;
}

static void sub_02021768(UnkStruct_020216E0 *param0)
{
    param0->unk_C0->unk_BC = param0->unk_BC;
    param0->unk_BC->unk_C0 = param0->unk_C0;
}

static NNSG3dResMdlSet *sub_02021788(const UnkStruct_ov5_021DF84C *param0, NNSG3dResMdl **param1, NNSG3dResTex **param2)
{
    void *v0;
    NNSG3dResMdlSet *v1;

    v0 = sub_0202189C(param0, 0);
    v1 = NNS_G3dGetMdlSet(v0);

    *param1 = NNS_G3dGetMdlByIdx(v1, 0);

    if (param2) {
        *param2 = NNS_G3dGetTex(v0);
    }

    return v1;
}

static NNSG3dResTex *sub_020217D4(const UnkStruct_ov5_021DF84C *param0)
{
    NNSG3dResTex *v0;

    v0 = (NNSG3dResTex *)sub_0202189C(param0, 1);
    return v0;
}

static void sub_020217E0(UnkStruct_020216E0 *param0, const UnkStruct_ov5_021DF84C *param1)
{
    if (param1->unk_1C == (NNS_GFD_ALLOC_ERROR_TEXKEY)) {
        sub_02020E28(param0, param1);
    } else {
        sub_02020E78(param0, param1);
    }
}

static fx32 sub_020217F4(const UnkStruct_020216E0 *param0, int param1)
{
    const UnkStruct_020217F4 *v0;

    v0 = sub_020218B4(param0->unk_2C, param1);
    return v0->unk_00 << FX32_SHIFT;
}

static int sub_02021804(UnkStruct_020216E0 *param0, fx32 param1)
{
    const UnkStruct_020217F4 *v0;

    v0 = sub_020218B4(param0->unk_2C, param0->unk_B6);
    return sub_02021824(v0, &param0->unk_B8, param1);
}

static int sub_02021824(const UnkStruct_020217F4 *param0, fx32 *param1, fx32 param2)
{
    int v0 = 0;

    if (((param0->unk_00 * FX32_ONE) > *param1) || ((param0->unk_04 * FX32_ONE) < *param1)) {
        *param1 = (param0->unk_00 * FX32_ONE);
    } else {
        if ((param0->unk_04 * FX32_ONE) < *param1 + param2) {
            if (param0->unk_08 == 0) {
                *param1 = (param0->unk_00 * FX32_ONE);
            } else {
                v0 = 1;
                *param1 = (param0->unk_04 * FX32_ONE);
            }
        } else {
            *param1 += param2;
        }
    }

    return v0;
}

static void sub_0202185C(UnkStruct_020216E0 *param0)
{
    sub_02020FA4(param0->unk_8C, param0->unk_84, &param0->unk_94, &param0->unk_98, &param0->unk_9C);
}

static void sub_0202187C(UnkStruct_020216E0 *param0)
{
    NNSG3dTexKey v0;
    NNSG3dTexKey v1;
    NNSG3dPlttKey v2;

    NNS_G3dReleaseMdlSet(param0->unk_84);
    sub_02020F90(param0->unk_8C, &v1, &v0, &v2);
}

static void *sub_0202189C(const UnkStruct_ov5_021DF84C *param0, int param1)
{
    void *v0;

    switch (param1) {
    case 0:
        v0 = param0->unk_00;
        break;
    case 1:
        v0 = (void *)param0->unk_04;
        break;
    default:
        v0 = NULL;
        break;
    }

    return v0;
}

static const UnkStruct_020217F4 *sub_020218B4(const UnkStruct_020217F4 *param0, int param1)
{
    return param0 + param1;
}
