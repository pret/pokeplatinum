#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02020C44_decl.h"
#include "struct_decls/struct_020216E0_decl.h"
#include "overlay063/struct_ov63_0222BEC0_decl.h"

#include "struct_defs/struct_020170F4.h"
#include "struct_defs/struct_02017294.h"
#include "struct_defs/struct_0201CFEC.h"
#include "struct_defs/struct_020217F4.h"
#include "struct_defs/struct_02024184.h"
#include "overlay005/struct_ov5_021DF7F8.h"
#include "overlay005/struct_ov5_021DF84C.h"
#include "overlay005/struct_ov5_021EDDAC.h"
#include "overlay063/struct_ov63_0222CC3C.h"

#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_020170BC.h"
#include "heap.h"
#include "unk_0201C970.h"
#include "unk_0201CED8.h"
#include "unk_02020AEC.h"
#include "resource_collection.h"
#include "unk_0202414C.h"
#include "overlay063/ov63_0222BE18.h"
#include "overlay066/ov66_02231428.h"
#include "overlay066/ov66_022343A8.h"
#include "overlay070/ov70_0225C700.h"

typedef struct {
    u16 unk_00;
    u16 unk_02_0 : 15;
    u16 unk_02_15 : 1;
} UnkStruct_ov66_02258B38;

typedef struct {
    UnkStruct_020170F4 unk_00;
    u32 unk_10;
} UnkStruct_ov66_02234958;

typedef struct UnkStruct_ov66_02234798_t {
    u8 unk_00_0 : 4;
    u8 unk_00_4 : 2;
    u8 unk_00_6 : 2;
    u8 unk_01_0 : 1;
    u8 unk_01_1 : 7;
    u8 unk_02;
    u8 unk_03;
    const UnkStruct_ov63_0222BEC0 * unk_04;
    UnkStruct_020216E0 * unk_08;
    UnkStruct_02017294 unk_0C;
    u8 unk_84;
    u8 unk_85;
    u16 unk_86;
    fx32 unk_88;
    int unk_8C;
} UnkStruct_ov66_02234798;

typedef struct UnkStruct_ov66_02234548_t {
    ResourceCollection * unk_00;
    ResourceCollection * unk_04;
    TextureResourceManager * unk_08;
    UnkStruct_02020C44 * unk_0C;
    UnkStruct_ov66_02234798 * unk_10;
    u32 unk_14;
    UnkStruct_ov66_02234958 unk_18;
    int unk_2C;
} UnkStruct_ov66_02234548;

static const UnkStruct_ov66_02258B38 * ov66_022348B0(u32 param0);
static u32 ov66_022348D8(BOOL param0, u32 param1);
static fx32 ov66_022348E4(u16 param0, u16 param1, u32 param2);
static void ov66_022348FC(UnkStruct_ov66_02234958 * param0, NARC * param1, u32 param2, u32 param3);
static void ov66_02234958(UnkStruct_ov66_02234958 * param0);
static void ov66_02234960(UnkStruct_ov66_02234958 * param0, u32 param1);
static u32 ov66_0223496C(const UnkStruct_ov66_02234958 * param0);
static void ov66_02234970(UnkStruct_ov66_02234958 * param0, UnkStruct_02017294 * param1);
static UnkStruct_ov66_02234798 * ov66_02234980(UnkStruct_ov66_02234548 * param0);
static BOOL ov66_022349B8(const UnkStruct_ov66_02234798 * param0);
static void ov66_022349C8(UnkStruct_ov66_02234798 * param0);
static void ov66_022349D4(UnkStruct_ov66_02234798 * param0);
static void ov66_022349E0(UnkStruct_ov66_02234798 * param0);
static void ov66_02234A78(UnkStruct_ov66_02234798 * param0);
static void ov66_02234AA0(UnkStruct_ov66_02234798 * param0);
static void ov66_02234B10(UnkStruct_ov66_02234798 * param0);
static void ov66_02234B54(UnkStruct_ov66_02234798 * param0);
static void ov66_02234BC4(UnkStruct_ov66_02234798 * param0);
static void ov66_02234BEC(UnkStruct_ov66_02234798 * param0);
static void ov66_02234C34(UnkStruct_ov66_02234798 * param0);
static void ov66_02234C70(UnkStruct_ov66_02234798 * param0);
static BOOL ov66_02234CD8(u32 param0);
static void ov66_02234D08(UnkStruct_ov66_02234798 * param0);
static void ov66_02234D3C(UnkStruct_ov66_02234798 * param0);
static void ov66_02234D78(UnkStruct_020216E0 * param0, void * param1);
static BOOL ov66_02234D8C(UnkStruct_020216E0 * param0);

static const u8 Unk_ov66_02258B24[4] = {
    0x1,
    0x2,
    0x0,
    0x3
};

static const u16 Unk_ov66_02258B28[2] = {
    0x1BD,
    0x1BE
};

static const UnkStruct_020217F4 Unk_ov66_02258B88[] = {
    {0x0, 0xF, 0x0},
    {0x10, 0x1F, 0x0},
    {0x20, 0x2F, 0x0},
    {0x30, 0x3F, 0x0},
    {0x40, 0x4F, 0x0},
    {0x50, 0x5F, 0x0},
    {0x60, 0x6F, 0x0},
    {0x70, 0x7F, 0x0},
    {0x0, 0x0, 0x2}
};

static const UnkStruct_ov66_02258B38 Unk_ov66_02258B38[20] = {
    {0x0, 0x5A, 0x1},
    {0x61, 0x5B, 0x1},
    {0x3, 0x2, 0x0},
    {0x5, 0x4, 0x0},
    {0xB, 0xA, 0x0},
    {0x1F, 0x1D, 0x0},
    {0x32, 0x30, 0x0},
    {0x33, 0x31, 0x0},
    {0x3E, 0x3C, 0x0},
    {0x46, 0x44, 0x0},
    {0x6, 0x5, 0x0},
    {0x7, 0x6, 0x0},
    {0xD, 0xC, 0x0},
    {0xE, 0xD, 0x0},
    {0x23, 0x21, 0x0},
    {0x25, 0x23, 0x0},
    {0x2A, 0x28, 0x0},
    {0x3F, 0x3D, 0x0},
    {0xEB, 0x18E, 0x0},
    {0xEA, 0x18D, 0x0}
};

UnkStruct_ov66_02234548 * ov66_022343A8 (u32 param0, u32 param1, u32 param2, u32 param3)
{
    UnkStruct_ov66_02234548 * v0;

    v0 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_ov66_02234548));
    memset(v0, 0, sizeof(UnkStruct_ov66_02234548));

    {
        int v1;

        v0->unk_10 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_ov66_02234798) * param0);
        v0->unk_14 = param0;

        for (v1 = 0; v1 < v0->unk_14; v1++) {
            ov66_022349C8(&v0->unk_10[v1]);
        }
    }

    v0->unk_00 = ResourceCollection_New(1, param2);
    v0->unk_04 = ResourceCollection_New(2, param2);
    v0->unk_08 = TextureResourceManager_New(20, param2);

    {
        UnkStruct_ov5_021EDDAC v2;

        sub_02020B90(1, param2);

        v2.unk_00 = param0;
        v2.unk_04 = param2;
        v0->unk_0C = sub_02020C44(&v2);
    }

    {
        NARC * v3;
        NARC * v4;
        void * v5;
        int v6;

        v3 = NARC_ctor(NARC_INDEX_DATA__MMODEL__MMODEL, param2);
        v4 = NARC_ctor(NARC_INDEX_GRAPHIC__WIFI_LOBBY_OTHER, param2);

        {
            v5 = sub_0200723C(v4, 127, 0, param3, 0);
            ResourceCollection_AddResource(v0->unk_00, v5, 127);
            ov66_02231668(v5);

            {
                NNSG3dResMdlSet * v7;
                NNSG3dResMdl * v8;

                v7 = NNS_G3dGetMdlSet(v5);
                v8 = NNS_G3dGetMdlByIdx(v7, 0);
                v0->unk_2C = NNS_G3dMdlGetMdlLightEnableFlag(v8, 0);
            }
        }

        {
            for (v6 = 0; v6 < 2; v6++) {
                v5 = sub_0200723C(v3, Unk_ov66_02258B28[v6], 0, param3, 0);
                ResourceCollection_AddResource(v0->unk_04, v5, Unk_ov66_02258B28[v6]);
            }
        }

        {
            TextureResource * v9;
            int v10;
            BOOL v11;

            if (param1 == 0) {
                v10 = 1;
            } else {
                v10 = 0;
            }

            for (v6 = 0; v6 < 20; v6++) {
                if (v10 == v6) {
                    continue;
                }

                if (Unk_ov66_02258B38[v6].unk_02_15 == 0) {
                    v11 = 1;
                } else {
                    v11 = 0;
                }

                v5 = sub_0200723C(v3, Unk_ov66_02258B38[v6].unk_02_0, 0, param3, 0);
                v9 = TextureResourceManager_AddTexture(v0->unk_08, v5, Unk_ov66_02258B38[v6].unk_02_0, v11, param3);

                if (v11 == 1) {
                    TextureResource_AllocVRam(v9);
                    TextureResource_UploadToVRam(v9);
                    TextureResource_DiscardTextureData(v9);
                }
            }
        }

        ov66_022348FC(&v0->unk_18, v4, 128, param3);

        NARC_dtor(v3);
        NARC_dtor(v4);
    }
    return v0;
}

void ov66_02234548 (UnkStruct_ov66_02234548 * param0)
{
    {
        ov66_02234958(&param0->unk_18);
        TextureResourceManager_Clear(param0->unk_08);
        ResourceCollection_Clear(param0->unk_00);
        ResourceCollection_Clear(param0->unk_04);
    }

    {
        sub_02020CCC(param0->unk_0C);
        sub_02020BD0();
    }

    TextureResourceManager_Delete(param0->unk_08);
    ResourceCollection_Delete(param0->unk_00);
    ResourceCollection_Delete(param0->unk_04);
    Heap_FreeToHeap(param0->unk_10);
    Heap_FreeToHeap(param0);
}

void ov66_02234590 (UnkStruct_ov66_02234548 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_14; v0++) {
        ov66_022349E0(&param0->unk_10[v0]);
        ov66_02234BC4(&param0->unk_10[v0]);
        ov66_02234D08(&param0->unk_10[v0]);
    }
}

void ov66_022345C4 (UnkStruct_ov66_02234548 * param0)
{
    int v0;

    sub_02020C08();

    if (ov66_0223496C(&param0->unk_18) > 0) {
        for (v0 = 0; v0 < param0->unk_14; v0++) {
            if (ov66_022349B8(&param0->unk_10[v0]) == 1) {
                ov66_022349D4(&param0->unk_10[v0]);
            }
        }
    }
}

void ov66_02234604 (UnkStruct_ov66_02234548 * param0)
{
    sub_02020D68(param0->unk_0C);
}

void ov66_02234610 (UnkStruct_ov66_02234548 * param0, u32 param1)
{
    ov66_02234960(&param0->unk_18, param1);
}

UnkStruct_ov66_02234798 * ov66_0223461C (UnkStruct_ov66_02234548 * param0, const UnkStruct_ov63_0222BEC0 * param1)
{
    UnkStruct_ov66_02234798 * v0;

    v0 = ov66_02234980(param0);
    v0->unk_04 = param1;

    {
        const UnkStruct_ov66_02258B38 * v1;
        UnkStruct_ov5_021DF84C v2;
        UnkStruct_ov5_021DF7F8 v3;
        Resource * v4;
        TextureResource * v5;
        u32 v6;
        void * v7;
        const NNSG3dResTex * v8;
        UnkStruct_02024184 v9;
        NNSGfdTexKey v10;
        NNSGfdTexKey v11;
        NNSGfdPlttKey v12;
        VecFx32 v13 = {0, 0, 0};
        VecFx32 v14 = {FX32_ONE, FX32_ONE, FX32_ONE};

        v6 = ov63_0222BF90(param1, 7);
        v1 = ov66_022348B0(v6);

        {
            v4 = ResourceCollection_FindResource(param0->unk_00, 127);
            v7 = Resource_GetData(v4);
        }

        {
            v5 = TextureResourceManager_FindTextureResource(param0->unk_08, v1->unk_02_0);
            v8 = TextureResource_GetUnderlyingResource(v5);
        }

        {
            u32 v15;
            const void * v16;

            if (v1->unk_02_15 == 1) {
                v15 = Unk_ov66_02258B28[1];
            } else {
                v15 = Unk_ov66_02258B28[0];
            }

            v4 = ResourceCollection_FindResource(param0->unk_04, v15);
            v16 = Resource_GetData(v4);

            sub_02024184(v16, &v9);
        }

        if (v1->unk_02_15 == 1) {
            sub_02021284(&v2, v7, v8, Unk_ov66_02258B88, &v9);
        } else {
            v10 = TextureResource_GetTexKey(v5);
            v11 = TextureResource_GetTex4x4Key(v5);
            v12 = TextureResource_GetPaletteKey(v5);

            sub_0202125C(&v2, v7, v8, Unk_ov66_02258B88, &v9, v10, v11, v12);
        }

        {
            UnkStruct_ov63_0222CC3C v17;

            v17 = ov63_0222C0E4(param1);
            ov70_0225C700(&v17, &v13);
            v13.z += (FX32_CONST(16));
        }

        v3.unk_00 = param0->unk_0C;
        v3.unk_04 = &v2;
        v3.unk_08 = v13;
        v3.unk_14 = v14;
        v0->unk_08 = sub_0202119C(&v3);

        sub_02021444(v0->unk_08, ov66_02234D78, v0);
        ov66_02234970(&param0->unk_18, &v0->unk_0C);
        sub_02017350(&v0->unk_0C, v13.x + 0, ((FX32_CONST(0)) + FX32_CONST(2)), v13.z + (FX32_CONST(-8)));
    }

    v0->unk_00_0 = 1;
    v0->unk_00_6 = 1;
    v0->unk_00_4 = 0;
    v0->unk_8C = param0->unk_2C;

    return v0;
}

void ov66_02234798 (UnkStruct_ov66_02234798 * param0)
{
    sub_020211FC(param0->unk_08);
    memset(param0, 0, sizeof(UnkStruct_ov66_02234798));
}

void ov66_022347B0 (UnkStruct_ov66_02234798 * param0, BOOL param1)
{
    param0->unk_00_0 = param1;
}

void ov66_022347C4 (UnkStruct_ov66_02234798 * param0, u32 param1)
{
    param0->unk_8C = param1;
}

BOOL ov66_022347CC (const UnkStruct_ov66_02234798 * param0)
{
    return param0->unk_00_4;
}

void ov66_022347D4 (UnkStruct_ov66_02234798 * param0, const UnkStruct_ov63_0222CC3C * param1)
{
    VecFx32 v0;

    ov70_0225C700(param1, &v0);
    v0.z += (FX32_CONST(16));
    ov66_022347F8(param0, &v0);
}

void ov66_022347F8 (UnkStruct_ov66_02234798 * param0, const VecFx32 * param1)
{
    sub_020212A8(param0->unk_08, param1);
    sub_02017350(&param0->unk_0C, param1->x + 0, ((FX32_CONST(0)) + FX32_CONST(2)), param1->z + (FX32_CONST(-8)));
}

void ov66_0223481C (const UnkStruct_ov66_02234798 * param0, VecFx32 * param1)
{
    const VecFx32 * v0;

    v0 = sub_020212C0(param0->unk_08);
    *param1 = *v0;
}

void ov66_02234834 (UnkStruct_ov66_02234798 * param0, int param1)
{
    u32 v0;

    v0 = ov66_022348D8(1, param1);

    sub_02021344(param0->unk_08, v0);
    sub_020213A4(param0->unk_08, 0);
}

void ov66_02234850 (UnkStruct_ov66_02234798 * param0, int param1)
{
    param0->unk_01_0 = 1;
    param0->unk_01_1 = param1;
    param0->unk_02 = 0;
    param0->unk_03 = 1;
}

void ov66_0223487C (UnkStruct_ov66_02234798 * param0)
{
    param0->unk_01_0 = 0;
}

void ov66_02234888 (UnkStruct_ov66_02234798 * param0, u8 param1)
{
    param0->unk_03 = param1;
}

void ov66_0223488C (UnkStruct_ov66_02234798 * param0, BOOL param1)
{
    param0->unk_00_6 = param1;
    ov66_02234D3C(param0);
}

BOOL ov66_022348A8 (const UnkStruct_ov66_02234798 * param0)
{
    return param0->unk_00_6;
}

static const UnkStruct_ov66_02258B38 * ov66_022348B0 (u32 param0)
{
    int v0;

    for (v0 = 0; v0 < 20; v0++) {
        if (Unk_ov66_02258B38[v0].unk_00 == param0) {
            return &Unk_ov66_02258B38[v0];
        }
    }

    GF_ASSERT(0);
    return NULL;
}

static u32 ov66_022348D8 (BOOL param0, u32 param1)
{
    if (param0) {
        return 0 + param1;
    }

    return 4 + param1;
}

static fx32 ov66_022348E4 (u16 param0, u16 param1, u32 param2)
{
    fx32 v0;

    param1++;

    v0 = (param1 * param2) / param0;
    v0 *= FX32_ONE;

    return v0;
}

static void ov66_022348FC (UnkStruct_ov66_02234958 * param0, NARC * param1, u32 param2, u32 param3)
{
    void * v0;

    ov70_0225C730(&v0, param1, param2, param3);

    param0->unk_00.unk_00 = v0;
    param0->unk_00.unk_04 = NNS_G3dGetMdlSet(param0->unk_00.unk_00);
    param0->unk_00.unk_08 = NNS_G3dGetMdlByIdx(param0->unk_00.unk_04, 0);
    param0->unk_00.unk_0C = NNS_G3dGetTex(param0->unk_00.unk_00);

    sub_0201CBB0(param0->unk_00.unk_00, param0->unk_00.unk_0C);

    NNS_G3dMdlSetMdlPolygonIDAll(param0->unk_00.unk_08, 20);
}

static void ov66_02234958 (UnkStruct_ov66_02234958 * param0)
{
    sub_02017110(&param0->unk_00);
}

static void ov66_02234960 (UnkStruct_ov66_02234958 * param0, u32 param1)
{
    param0->unk_10 = param1;
    NNS_G3dMdlSetMdlAlphaAll(param0->unk_00.unk_08, param0->unk_10);
}

static u32 ov66_0223496C (const UnkStruct_ov66_02234958 * param0)
{
    return param0->unk_10;
}

static void ov66_02234970 (UnkStruct_ov66_02234958 * param0, UnkStruct_02017294 * param1)
{
    sub_02017258(param1, &param0->unk_00);
}

static UnkStruct_ov66_02234798 * ov66_02234980 (UnkStruct_ov66_02234548 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_14; v0++) {
        if (ov66_022349B8(&param0->unk_10[v0]) == 0) {
            return &param0->unk_10[v0];
        }
    }

    GF_ASSERT(0);
    return NULL;
}

static BOOL ov66_022349B8 (const UnkStruct_ov66_02234798 * param0)
{
    if (param0->unk_04 == NULL) {
        return 0;
    }

    return 1;
}

static void ov66_022349C8 (UnkStruct_ov66_02234798 * param0)
{
    memset(param0, 0, sizeof(UnkStruct_ov66_02234798));
}

static void ov66_022349D4 (UnkStruct_ov66_02234798 * param0)
{
    sub_02017294(&param0->unk_0C);
}

static void ov66_022349E0 (UnkStruct_ov66_02234798 * param0)
{
    u32 v0;
    u32 v1;
    UnkStruct_ov63_0222CC3C v2;
    static void (* v3[12])(UnkStruct_ov66_02234798 *) = {
        ov66_02234A78,
        ov66_02234B10,
        ov66_02234AA0,
        ov66_02234B54,
        ov66_02234A78,
        ov66_02234AA0,
        ov66_02234AA0,
        ov66_02234AA0,
        ov66_02234AA0,
        ov66_02234AA0,
        ov66_02234AA0
    };

    if (param0->unk_00_0 == 0) {
        return;
    }

    v0 = ov63_0222BF90(param0->unk_04, 5);
    v1 = ov63_0222BF90(param0->unk_04, 8);

    if ((param0->unk_86 > v1) || (param0->unk_84 != v0)) {
        if (ov66_02234CD8(param0->unk_84) == 1) {
            param0->unk_85 = sub_02021358(param0->unk_08);
            param0->unk_88 = sub_020213D4(param0->unk_08);
        }

        param0->unk_84 = v0;
    }

    param0->unk_86 = v1;

    v3[v0](param0);

    v2 = ov63_0222C0FC(param0->unk_04);
    ov66_022347D4(param0, &v2);
}

static void ov66_02234A78 (UnkStruct_ov66_02234798 * param0)
{
    u32 v0;
    u32 v1;

    v0 = ov63_0222BF90(param0->unk_04, 6);
    v1 = ov66_022348D8(1, v0);

    sub_02021344(param0->unk_08, v1);
    sub_020213A4(param0->unk_08, 0);
}

static void ov66_02234AA0 (UnkStruct_ov66_02234798 * param0)
{
    u32 v0;
    u32 v1;
    fx32 v2;
    u16 v3;
    u16 v4;

    v0 = ov63_0222BF90(param0->unk_04, 6);
    v1 = ov66_022348D8(1, v0);
    v3 = ov63_0222BF90(param0->unk_04, 9);
    v4 = ov63_0222BF90(param0->unk_04, 8);
    v2 = ov66_022348E4(v3, v4, 8);

    sub_02021344(param0->unk_08, v1);

    if (param0->unk_85 == v1) {
        sub_020213A4(param0->unk_08, 0);
        sub_02021368(param0->unk_08, v2 + param0->unk_88);
    } else {
        sub_020213A4(param0->unk_08, 0);
        sub_02021368(param0->unk_08, v2);
    }
}

static void ov66_02234B10 (UnkStruct_ov66_02234798 * param0)
{
    u32 v0;
    u32 v1;
    u16 v2;

    v2 = ov63_0222BF90(param0->unk_04, 8);

    if (v2 < 4) {
        sub_020213A4(param0->unk_08, 4 * FX32_ONE);
    } else {
        v0 = ov63_0222BF90(param0->unk_04, 6);
        v1 = ov66_022348D8(1, v0);

        sub_02021344(param0->unk_08, v1);
        sub_020213A4(param0->unk_08, 0);
    }
}

static void ov66_02234B54 (UnkStruct_ov66_02234798 * param0)
{
    u32 v0;
    u32 v1;
    fx32 v2;
    u16 v3;
    u16 v4;

    v0 = ov63_0222BF90(param0->unk_04, 6);
    v1 = ov66_022348D8(0, v0);
    v3 = ov63_0222BF90(param0->unk_04, 9);
    v4 = ov63_0222BF90(param0->unk_04, 8);
    v2 = ov66_022348E4(v3, v4, 4);

    sub_02021344(param0->unk_08, v1);

    if (param0->unk_85 == v1) {
        sub_020213A4(param0->unk_08, 0);
        sub_02021368(param0->unk_08, v2 + param0->unk_88);
    } else {
        sub_020213A4(param0->unk_08, 0);
        sub_02021368(param0->unk_08, v2);
    }
}

static void ov66_02234BC4 (UnkStruct_ov66_02234798 * param0)
{
    static void (* v0[3])(UnkStruct_ov66_02234798 *) = {
        ov66_02234BEC,
        ov66_02234C34,
        ov66_02234C70
    };

    if ((param0->unk_00_0 == 0) && (param0->unk_01_0 == 1)) {
        v0[param0->unk_01_1](param0);
    }
}

static void ov66_02234BEC (UnkStruct_ov66_02234798 * param0)
{
    u32 v0;
    u32 v1;

    if ((param0->unk_02 % 4) == 0) {
        v0 = param0->unk_02 / 4;
        v1 = ov66_022348D8(1, Unk_ov66_02258B24[v0]);

        sub_02021344(param0->unk_08, v1);
        sub_020213A4(param0->unk_08, 0);
    }

    if ((param0->unk_02 + param0->unk_03) < (4 * 4)) {
        param0->unk_02 += param0->unk_03;
    } else {
        param0->unk_02 = 0;
    }
}

static void ov66_02234C34 (UnkStruct_ov66_02234798 * param0)
{
    u32 v0;
    u32 v1;

    if (param0->unk_02 == 0) {
        v0 = ov63_0222BF90(param0->unk_04, 6);
        v0 = ov63_0222BF90(param0->unk_04, 6);
        v1 = ov66_022348D8(1, v0);

        sub_02021344(param0->unk_08, v1);
        sub_020213A4(param0->unk_08, 4 * FX32_ONE);

        param0->unk_02++;
    }
}

static void ov66_02234C70 (UnkStruct_ov66_02234798 * param0)
{
    u32 v0;
    u32 v1;

    if (param0->unk_02 == 0) {
        v0 = ov63_0222BF90(param0->unk_04, 6);
        v1 = ov66_022348D8(1, v0);

        sub_02021344(param0->unk_08, v1);
        sub_020213A4(param0->unk_08, 4 * FX32_ONE);
    } else if (param0->unk_02 == 4) {
        v0 = ov63_0222BF90(param0->unk_04, 6);
        v1 = ov66_022348D8(1, v0);

        sub_02021344(param0->unk_08, v1);
        sub_020213A4(param0->unk_08, (4 * 3) * FX32_ONE);
    }

    param0->unk_02 = (param0->unk_02 + 1) % (4 * 2);
}

static BOOL ov66_02234CD8 (u32 param0)
{
    switch (param0) {
    case 2:
    case 3:
    case 5:
    case 6:
    case 10:
    case 11:
        return 1;
    default:
        break;
    }

    return 0;
}

static void ov66_02234D08 (UnkStruct_ov66_02234798 * param0)
{
    BOOL v0;

    if (ov66_022349B8(param0)) {
        v0 = ov66_02234D8C(param0->unk_08);

        if (v0 == 0) {
            param0->unk_00_4 = 1;
        } else {
            param0->unk_00_4 = 0;
        }

        ov66_02234D3C(param0);
    }
}

static void ov66_02234D3C (UnkStruct_ov66_02234798 * param0)
{
    if ((param0->unk_00_4 == 0) && (param0->unk_00_6 == 1)) {
        sub_02021320(param0->unk_08, 1);
        sub_02017348(&param0->unk_0C, 1);
    } else {
        sub_02021320(param0->unk_08, 0);
        sub_02017348(&param0->unk_0C, 0);
    }
}

static void ov66_02234D78 (UnkStruct_020216E0 * param0, void * param1)
{
    UnkStruct_ov66_02234798 * v0 = param1;
    NNSG3dResMdl * v1;

    v1 = sub_02021430(param0);
    NNS_G3dMdlSetMdlLightEnableFlagAll(v1, v0->unk_8C);
}

static BOOL ov66_02234D8C (UnkStruct_020216E0 * param0)
{
    BOOL v0;
    VecFx32 v1;
    NNSG3dResMdlInfo * v2;
    NNSG3dResMdl * v3;
    UnkStruct_0201CFEC v4;
    MtxFx33 v5;

    v3 = sub_020213F4(param0);
    v2 = NNS_G3dGetMdlInfo(v3);
    v1 = *sub_020212C0(param0);

    v4.unk_00 = v2->boxW;
    v4.unk_02 = v2->boxH;
    v4.unk_04 = v2->boxH;
    v4.unk_08 = v2->boxPosScale >> FX32_SHIFT;
    v4.unk_0C = v2->boxPosScale >> FX32_SHIFT;
    v4.unk_10 = v2->boxPosScale >> FX32_SHIFT;

    v1.x += FX_Mul(v2->boxX, v2->boxPosScale);
    v1.y += FX_Mul(v2->boxY, v2->boxPosScale);
    v1.z += FX_Mul(v2->boxZ, v2->boxPosScale);
    v1.z -= FX_Mul(v2->boxH, v2->boxPosScale);

    MTX_Identity33(&v5);
    NNS_G3dGlbSetBaseRot(&v5);
    NNS_G3dGlbSetBaseScale(sub_020212EC(param0));

    v0 = sub_0201CF7C(&v1, &v4);

    if (v0 == 0) {
        return 0;
    }

    return 1;
}
