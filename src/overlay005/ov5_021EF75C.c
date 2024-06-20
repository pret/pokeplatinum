#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "overlay005/struct_ov5_021D3CAC_decl.h"
#include "overlay005/struct_ov5_021D5778_decl.h"

#include "narc.h"
#include "heap.h"
#include "unk_0201C970.h"
#include "overlay005/ov5_021D37AC.h"
#include "overlay005/ov5_021D56BC.h"
#include "overlay005/ov5_021EF75C.h"

typedef struct {
    int unk_00;
    UnkStruct_ov5_021D3CAC * unk_04;
    u16 unk_08;
    int unk_0C;
} UnkStruct_ov5_021EF7A0;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
} UnkStruct_ov5_021EF76C_sub1;

typedef struct UnkStruct_ov5_021EF76C_t {
    int unk_00;
    NNSG3dResFileHeader * unk_04[768];
    void * unk_C04;
    void * unk_C08;
    NNSG3dResTex * unk_C0C;
    NNSG3dResTex * unk_C10;
    UnkStruct_ov5_021D5778 * unk_C14;
    UnkStruct_ov5_021EF76C_sub1 unk_C18;
    UnkStruct_ov5_021EF7A0 * unk_C20;
    u16 * unk_C24;
} UnkStruct_ov5_021EF76C;

static const GXRgb Unk_ov5_021FF588[8] = {
    GX_RGB(0, 0, 0),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4)
};

static const GXRgb Unk_ov5_021FF598[8] = {
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4)
};

static void ov5_021EF75C (void * param0, NNSG3dResTex * param1)
{
    u8 * v0;
    u32 v1;

    v0 = (u8 *)param1 + param1->texInfo.ofsTex;
    v1 = (u32)(v0 - (u8 *)param0);

    Heap_ReallocFromHeap(param0, v1);
}

UnkStruct_ov5_021EF76C * ov5_021EF76C (const int param0, UnkStruct_ov5_021D3CAC * param1)
{
    UnkStruct_ov5_021EF76C * v0;

    v0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021EF76C));

    v0->unk_C20 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov5_021EF7A0));
    v0->unk_C20->unk_00 = param0;
    v0->unk_C20->unk_04 = param1;
    v0->unk_C20->unk_0C = 0;

    return v0;
}

void ov5_021EF7A0 (UnkStruct_ov5_021EF76C * param0)
{
    NARC * v0;
    UnkStruct_ov5_021EF7A0 * v1 = param0->unk_C20;

    NARC_ReadWholeMemberByIndexPair(&param0->unk_C18, NARC_INDEX_FIELDDATA__AREADATA__AREA_DATA, v1->unk_00);

    param0->unk_C24 = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_FIELDDATA__AREADATA__AREA_BUILD_MODEL__AREA_BUILD, param0->unk_C18.unk_00, 4);
    v1->unk_08 = param0->unk_C24[0];

    GF_ASSERT(v1->unk_08 < 768);

    param0->unk_C0C = NULL;
    param0->unk_C04 = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_FIELDDATA__AREADATA__AREA_MAP_TEX__MAP_TEX_SET, param0->unk_C18.unk_02, 4);
    param0->unk_C08 = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_FIELDDATA__AREADATA__AREA_BUILD_MODEL__AREABM_TEXSET, param0->unk_C18.unk_00, 4);
    param0->unk_C0C = NNS_G3dGetTex((NNSG3dResFileHeader *)param0->unk_C04);

    if (v1->unk_08 != 0) {
        param0->unk_C10 = NNS_G3dGetTex((NNSG3dResFileHeader *)param0->unk_C08);
    } else {
        param0->unk_C10 = NULL;
    }

    {
        BOOL v2;

        v2 = Easy3D_UploadTextureToVRam(param0->unk_C0C);
        GF_ASSERT(v2);
    }

    ov5_021EF75C(param0->unk_C04, param0->unk_C0C);

    if (param0->unk_C10 != NULL) {
        BOOL v3;

        v3 = Easy3D_UploadTextureToVRam(param0->unk_C10);
        GF_ASSERT(v3);

        ov5_021EF75C(param0->unk_C08, param0->unk_C10);
    }

    {
        int v4;

        for (v4 = 0; v4 < 768; v4++) {
            param0->unk_04[v4] = NULL;
        }

        param0->unk_C14 = NULL;
    }

    v0 = NARC_ctor(NARC_INDEX_FIELDDATA__BUILD_MODEL__BUILD_MODEL, 4);

    {
        int v5;
        u16 v6;
        int v7;

        v7 = ov5_021D3F84(v1->unk_04);

        for (v5 = 0; v5 < v1->unk_08; v5++) {
            v6 = param0->unk_C24[v5 + 1];

            GF_ASSERT(param0->unk_04[v6] == NULL);
            param0->unk_04[v6] = NARC_AllocAndReadWholeMember(v0, v6, 4);

            {
                NNSG3dResMdl * v8;

                if (v6 < v7) {
                    v8 = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(param0->unk_04[v6]), 0);
                    ov5_021D3A50(v6, v8, param0->unk_C10, v1->unk_04);
                }
            }

            {
                BOOL v9;

                v9 = Easy3D_BindTextureToResource(param0->unk_04[v6], param0->unk_C10);
                GF_ASSERT(v9);
            }
        }
    }

    if (param0->unk_04[0] == NULL) {
        BOOL v10;
        NNSG3dResTex * v11;

        param0->unk_04[0] = NARC_AllocAndReadWholeMember(v0, 0, 4);

        v11 = NNS_G3dGetTex(
            (NNSG3dResFileHeader *)param0->unk_04[0]);

        if (v11 != NULL) {
            v10 = Easy3D_UploadTextureToVRam(v11);
            GF_ASSERT(v10);

            v10 = Easy3D_BindTextureToResource(param0->unk_04[0], v11);
            GF_ASSERT(v10);
        }
    }

    NARC_dtor(v0);
    G3X_EdgeMarking(1);

    if (ov5_021EFAC0(param0) == 0) {
        G3X_SetEdgeColorTable(Unk_ov5_021FF588);
    } else {
        G3X_SetEdgeColorTable(Unk_ov5_021FF598);
    }

    {
        char v12[256];

        param0->unk_C14 = ov5_021D56BC();
        sprintf(v12, "fielddata/build_model/build_model_matshp.dat");
        ov5_021D56D4(v12, param0->unk_C14);
    }

    Heap_FreeToHeap(param0->unk_C20);
    param0->unk_C20 = NULL;
}

NNSG3dResFileHeader ** ov5_021EF9E8 (const int param0, UnkStruct_ov5_021EF76C * const param1)
{
    GF_ASSERT((param1 != NULL));

    if (param1->unk_04[param0] == NULL) {
        GF_ASSERT(param1->unk_04[0] != NULL);

        return &(param1->unk_04[0]);
    }

    return &(param1->unk_04[param0]);
}

void ov5_021EFA10 (UnkStruct_ov5_021EF76C ** param0)
{
    int v0;

    if ((*param0)->unk_C14 != NULL) {
        ov5_021D5778((*param0)->unk_C14);
    }

    for (v0 = 0; v0 < 768; v0++) {
        if ((*param0)->unk_04[v0] != NULL) {
            Heap_FreeToHeap((*param0)->unk_04[v0]);
        }
    }

    Heap_FreeToHeap((*param0)->unk_C24);
    Heap_FreeToHeap((*param0)->unk_C04);

    (*param0)->unk_C04 = NULL;
    Heap_FreeToHeap((*param0)->unk_C08);

    (*param0)->unk_C08 = NULL;
    Heap_FreeToHeap((*param0));

    (*param0) = NULL;
}

NNSG3dResTex * ov5_021EFA8C (const UnkStruct_ov5_021EF76C * param0)
{
    GF_ASSERT((param0 != NULL));
    return param0->unk_C0C;
}

NNSG3dResTex * ov5_021EFAA0 (const UnkStruct_ov5_021EF76C * param0)
{
    GF_ASSERT((param0 != NULL));
    return param0->unk_C10;
}

const UnkStruct_ov5_021D5778 * ov5_021EFAB4 (const UnkStruct_ov5_021EF76C * param0)
{
    return param0->unk_C14;
}

BOOL ov5_021EFAC0 (const UnkStruct_ov5_021EF76C * param0)
{
    if ((param0->unk_C18.unk_06 == 0) || (param0->unk_C18.unk_06 == 3)) {
        return 1;
    } else {
        return 0;
    }
}

u8 ov5_021EFAD8 (const UnkStruct_ov5_021EF76C * param0)
{
    u8 v0;

    v0 = param0->unk_C18.unk_06;
    return v0;
}

int ov5_021EFAE8 (const UnkStruct_ov5_021EF76C * param0, const int param1)
{
    int v0;

    v0 = param0->unk_C24[param1];
    return v0;
}

BOOL ov5_021EFAF8 (const UnkStruct_ov5_021EF76C * param0, const int param1)
{
    if (param0->unk_04[param1] == NULL) {
        return 0;
    } else {
        return 1;
    }
}
