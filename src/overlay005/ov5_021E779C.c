#include "overlay005/ov5_021E779C.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "field/field_system.h"
#include "overlay005/area_data.h"
#include "overlay005/area_light.h"
#include "overlay005/bdhc.h"
#include "overlay005/funcptr_ov5_021E9630.h"
#include "overlay005/map_prop.h"
#include "overlay005/map_prop_animation.h"
#include "overlay005/model_attributes.h"
#include "overlay005/ov5_021EEAC8.h"
#include "overlay005/struct_ov5_021EEB48_decl.h"

#include "easy3d.h"
#include "heap.h"
#include "map_matrix.h"
#include "narc.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "unk_020366A0.h"

typedef struct {
    int unk_00;
    int unk_04;
} UnkStruct_ov5_021E80BC;

typedef struct {
    u16 unk_00[1024];
    NNSG3dRenderObj unk_800;
    NNSG3dResFileHeader *unk_854;
    u8 *bdhcBuffer;
    BDHC *bdhc;
    int unk_860;
    BOOL unk_864;
    MapPropManager *unk_868;
} UnkStruct_ov5_021E79A8;

typedef struct {
    UnkStruct_ov5_021E79A8 *unk_00[2];
    SysTask *unk_08;
    SysTask *unk_0C;
    UnkStruct_ov5_021E80BC unk_10;
    int unk_18[2];
    u8 unk_20[2];
    u8 unk_22;
    BOOL unk_24;
} UnkStruct_ov5_021E7814;

typedef void (*UnkFuncPtr_ov5_021FAE98)(UnkStruct_ov5_021E8F60 *, const int, const int, const int, const int, const int);
typedef void (*UnkFuncPtr_ov5_021FAE98_1)(const u8, AreaDataManager *const, const MapMatrix *, const int, const int, UnkStruct_ov5_021E8F60 *, UnkStruct_ov5_021E7814 *);

typedef struct UnkStruct_ov5_021FAE98_t {
    UnkFuncPtr_ov5_021FAE98 unk_00;
    UnkFuncPtr_ov5_021FAE98_1 unk_04;
} UnkStruct_ov5_021FAE98;

typedef struct {
    UnkStruct_ov5_021E7814 unk_00;
    BOOL unk_28;
    u8 unk_2C;
} UnkStruct_ov5_021E8F60_sub1;

typedef struct {
    UnkStruct_ov5_021E79A8 *unk_00[2];
    BOOL unk_08;
    u8 unk_0C;
    int unk_10[2];
    u8 unk_18[2];
} UnkStruct_ov5_021E8C8C;

typedef struct {
    VecFx32 unk_00;
    VecFx32 const *unk_0C;
    fx32 const *unk_10;
    fx32 const *unk_14;
    BOOL unk_18;
    u8 unk_1C;
    BOOL unk_20;
} UnkStruct_ov5_021EA174;

typedef struct UnkStruct_ov5_021E8F60_t {
    UnkStruct_ov5_021EEB48 *unk_00;
    UnkStruct_ov5_021E8F60_sub1 unk_04[2];
    UnkStruct_ov5_021E8C8C unk_5C;
    BOOL unk_74[4];
    UnkStruct_ov5_021E79A8 *unk_84[4];
    u8 unk_94;
    u8 unk_95;
    u8 unk_96;
    u32 unk_98;
    u32 unk_9C;
    u8 unk_A0;
    u8 unk_A1;
    BOOL unk_A4;
    int unk_A8;
    AreaDataManager *unk_AC;
    MapMatrix *unk_B0;
    int unk_B4;
    int unk_B8;
    int unk_BC;
    UnkStruct_ov5_021EA174 unk_C0;
    MapPropAnimationManager *unk_E4;
    UnkStruct_ov5_021FAE98 const *unk_E8;
    NARC *unk_EC;
    UnkFuncPtr_ov5_021E9630 unk_F0;
    void *unk_F4;
    int unk_F8;
    int unk_FC;
    int unk_100;
    int unk_104;
    int unk_108;
    VecFx32 unk_10C;
} UnkStruct_ov5_021E8F60;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
} UnkStruct_ov5_021E7BAC;

typedef struct {
    NARC *unk_00;
    int unk_04;
    NNSG3dRenderObj *unk_08;
    NNSG3dResFileHeader **unk_0C;
    NNSG3dResTex *unk_10;
    u8 unk_14;
    BOOL *unk_18;
    BOOL unk_1C;
    int *unk_20;
    u32 unk_24;
} UnkStruct_ov5_021E9640;

static SysTask *ov5_021E976C(NARC *param0, const int param1, NNSG3dRenderObj *param2, NNSG3dResFileHeader **param3, NNSG3dResTex *param4, BOOL *param5, int *param6);
static NNSG3dResMdl *ov5_021E97AC(NARC *param0, const int param1, NNSG3dRenderObj *param2, NNSG3dResFileHeader **param3, NNSG3dResTex *param4);
static void ov5_021E9640(SysTask *param0);
static void ov5_021E8F60(UnkStruct_ov5_021E8F60 *param0);
static void ov5_021E8E28(UnkStruct_ov5_021E8F60 *param0, const int param1, const int param2, const int param3, const int param4, const int param5);
static void ov5_021E8ECC(UnkStruct_ov5_021E8F60 *param0, const int param1, const int param2, const int param3, const int param4, const int param5);
static void ov5_021E79A8(UnkStruct_ov5_021E8F60 *param0);
static void ov5_021E7AC4(UnkStruct_ov5_021E8F60 *param0);
static void ov5_021E77E4(UnkStruct_ov5_021E8F60 *param0, const u8 param1);
static BOOL ov5_021E80D0(UnkStruct_ov5_021E8F60 *param0, const int param1, const int param2, const u8 param3, const u8 param4, const u8 param5, const u8 param6);
static void ov5_021E7BAC(NARC *param0, const int param1, UnkStruct_ov5_021E7BAC *param2);
static void ov5_021E7C00(const u8 param0, AreaDataManager *const param1, const MapMatrix *param2, const int param3, const int param4, UnkStruct_ov5_021E8F60 *param5, UnkStruct_ov5_021E7814 *param6);
static void ov5_021E7CD4(const u8 param0, AreaDataManager *const param1, const MapMatrix *param2, const int param3, const int param4, UnkStruct_ov5_021E8F60 *param5, UnkStruct_ov5_021E7814 *param6);
static void ov5_021E7E28(const int param0, const u8 param1, AreaDataManager *const param2, const MapMatrix *param3, const int param4, const int param5, const BOOL param6, const UnkStruct_ov5_021E8F60 *param7);
static void ov5_021E7F1C(const int param0, const u8 param1, AreaDataManager *const param2, const MapMatrix *param3, const int param4, const int param5, const BOOL param6, UnkStruct_ov5_021E8F60 *param7);
static void ov5_021E7FF0(const int param0, const u8 param1, AreaDataManager *const param2, const MapMatrix *param3, const int param4, const int param5, const BOOL param6, UnkStruct_ov5_021E8F60 *param7);
static void ov5_021E86A0(const int param0, const u8 param1, UnkStruct_ov5_021E8F60 *param2);
static void ov5_021E8668(const u8 param0, const u8 param1, const u8 param2, const u8 param3, UnkStruct_ov5_021E8F60 *param4);
static void ov5_021E8614(const u8 param0, UnkStruct_ov5_021E8F60 *param1);
static void ov5_021E89D0(const u8 param0, const UnkStruct_ov5_021E8F60 *param1, ModelAttributes *const param2);
static BOOL ov5_021E8C58(const u8 param0, const UnkStruct_ov5_021E8F60 *param1, u8 *param2);
static BOOL ov5_021E8C8C(UnkStruct_ov5_021E8F60 *param0);
static BOOL ov5_021E8DAC(const UnkStruct_ov5_021E8F60 *param0);
static void ov5_021E8DBC(UnkStruct_ov5_021E8F60 *param0);
static void ov5_021E8DD4(const u8 param0, UnkStruct_ov5_021E8F60 *param1);
static u8 ov5_021E8AF0(const u8 param0);
static u32 ov5_021E8B1C(const u8 param0, const int param1, const int param2, const int param3);
static u8 ov5_021E8B84(const u8 param0, const int param1);
static void ov5_021E8BC0(const u8 param0, const int param1, u8 *param2);
static void ov5_021E8558(const int param0, const int param1, const u8 param2, const u8 param3, const u8 param4, UnkStruct_ov5_021E8F60 *param5);
static int ov5_021E8ABC(const int param0, const int param1, const int param2, const int param3, const int param4);
static void ov5_021E8D50(UnkStruct_ov5_021E8F60 *param0);
static void ov5_021E8F90(const int param0, const int param1, const int param2, const int param3, UnkStruct_ov5_021E8F60 *param4);
static void ov5_021E901C(const int param0, const int param1, const MapMatrix *param2, VecFx32 *param3);
static void ov5_021E9A14(UnkStruct_ov5_021E8F60 *param0, const int param1, const int param2, const int param3, const int param4, const int param5);
static void ov5_021E9B70(const int param0, const u8 param1, const AreaDataManager *param2, const MapMatrix *param3, const int param4, const int param5, const BOOL param6, UnkStruct_ov5_021E8F60 *param7);
static void ov5_021E9C40(const u8 param0, const UnkStruct_ov5_021E8F60 *param1, const ModelAttributes *param2);

static const UnkStruct_ov5_021FAE98 Unk_ov5_021FAE98 = {
    ov5_021E8E28,
    ov5_021E7C00
};

static const UnkStruct_ov5_021FAE98 Unk_ov5_021FAE90 = {
    ov5_021E8ECC,
    ov5_021E7CD4
};

static BOOL ov5_021E779C(const int param0, const int param1, const int param2)
{
    if (param0 % param2 != param1 % param2) {
        return 0;
    } else {
        return 1;
    }
}

static BOOL ov5_021E77C0(const int param0, const int param1, const int param2)
{
    if (param0 / param2 != param1 / param2) {
        return 0;
    } else {
        return 1;
    }
}

static void ov5_021E77E4(UnkStruct_ov5_021E8F60 *param0, const u8 param1)
{
    u8 v0;
    u8 v1;

    if (param0->unk_04[param1].unk_00.unk_10.unk_00 != 0) {
        ov5_021E9640(param0->unk_04[param1].unk_00.unk_08);
    }

    if (param0->unk_04[param1].unk_00.unk_10.unk_04 != 0) {
        BDHC_KillLoad(param0->unk_04[param1].unk_00.unk_0C);
    }

    param0->unk_04[param1].unk_00.unk_24 = 1;
}

static void ov5_021E7814(UnkStruct_ov5_021E7814 *param0)
{
    if (param0->unk_10.unk_00 != 0) {
        ov5_021E9640(param0->unk_08);
    }

    if (param0->unk_10.unk_04 != 0) {
        BDHC_KillLoad(param0->unk_0C);
    }

    param0->unk_10.unk_00 = 0;
    param0->unk_10.unk_04 = 0;
}

static void ov5_021E7838(const int param0, const int param1, const int param2, const int param3, const int param4, const int param5, const int param6, const int param7, int *param8)
{
    int v0;
    u8 v1;
    int v2;
    int v3, v4;

    if (param0 == 1) {
        int v5;

        for (v5 = 0; v5 < 4; param8[v5] = -1, v5++) {
            (void)0;
        }

        if (param5 == 1) {
            if (param6 == 1) {
                param8[0] = 0;
            } else {
                param8[0] = 0;
                param8[2] = 1;
            }
        } else {
            param8[0] = 0;
            param8[1] = 1;

            if (param5 >= 2) {
                param8[2] = 2;
                param8[3] = 3;
            }
        }

        return;
    }

    GF_ASSERT(param1 >= param3);
    GF_ASSERT(param2 >= param4);

    v3 = (param1 - param3) / 32;
    v4 = (param2 - param4) / 32;
    v0 = ov5_021E8ABC(param1, param2, param3, param4, param7);
    v1 = ov5_021E935C(v0, param7);
    v2 = (v4 * param5) + v3;

    switch (v1) {
    case 0:
        param8[3] = v2;
        param8[0] = v2 - param5 - 1;
        param8[1] = v2 - param5;
        param8[2] = v2 - 1;

        if (v3 - 1 < 0) {
            param8[0] = -1;
            param8[2] = -1;
        }

        if (v4 - 1 < 0) {
            param8[1] = -1;
        }
        break;
    case 1:
        param8[2] = v2;
        param8[0] = v2 - param5;
        param8[1] = v2 - param5 + 1;
        param8[3] = v2 + 1;

        if (v3 + 1 >= param5) {
            param8[1] = -1;
            param8[3] = -1;
        }

        if (v4 - 1 < 0) {
            param8[0] = -1;
        }
        break;
    case 2:
        param8[1] = v2;
        param8[0] = v2 - 1;
        param8[2] = v2 + param5 - 1;
        param8[3] = v2 + param5;

        if (v3 - 1 < 0) {
            param8[0] = -1;
            param8[2] = -1;
        }

        if (v4 + 1 > param6) {
            param8[3] = -1;
        }
        break;
    case 3:
        param8[0] = v2;
        param8[1] = v2 + 1;
        param8[2] = v2 + param5;
        param8[3] = v2 + param5 + 1;

        if (v3 + 1 >= param5) {
            param8[1] = -1;
            param8[3] = -1;
        }

        if (v4 + 1 > param6) {
            param8[0] = -1;
        }
        break;
    default:
        GF_ASSERT(FALSE);
    }
}

static void ov5_021E79A8(UnkStruct_ov5_021E8F60 *param0)
{
    u8 v0;

    for (v0 = 0; v0 < 4; v0++) {
        UnkStruct_ov5_021E79A8 *v1 = NULL;

        v1 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(UnkStruct_ov5_021E79A8));
        param0->unk_84[v0] = v1;
        param0->unk_84[v0]->unk_864 = 0;

        ov5_021EEB84(v0, param0->unk_00, (void **)&(param0->unk_84[v0]->unk_854));
        ov5_021EEB90(v0, param0->unk_00, (void **)&(param0->unk_84[v0]->bdhcBuffer));

        if (param0->unk_FC == 0) {
            param0->unk_84[v0]->unk_868 = MapPropManager_New(HEAP_ID_FIELD);
        } else {
            param0->unk_84[v0]->unk_868 = NULL;
        }

        param0->unk_84[v0]->unk_860 = -1;
        MI_CpuFillFast(param0->unk_84[v0]->unk_00, 0xffffffff, 2 * 32 * 32);
    }
}

void ov5_021E7A54(UnkStruct_ov5_021E8F60 *param0)
{
    u8 v0;

    for (v0 = 0; v0 < 4; v0++) {
        UnkStruct_ov5_021E79A8 *v1 = NULL;

        v1 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(UnkStruct_ov5_021E79A8));

        param0->unk_84[v0] = v1;
        param0->unk_84[v0]->unk_864 = 0;

        if (param0->unk_FC == 0) {
            param0->unk_84[v0]->unk_868 = MapPropManager_New(HEAP_ID_FIELD);
        } else {
            param0->unk_84[v0]->unk_868 = NULL;
        }

        param0->unk_84[v0]->unk_860 = -1;
    }
}

static void ov5_021E7AC4(UnkStruct_ov5_021E8F60 *param0)
{
    u8 v0;

    for (v0 = 0; v0 < 4; v0++) {
        UnkStruct_ov5_021E79A8 *v1 = NULL;

        v1 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(UnkStruct_ov5_021E79A8));

        param0->unk_84[v0] = v1;
        param0->unk_84[v0]->unk_864 = 0;

        ov5_021EEB84(v0, param0->unk_00, (void **)&(param0->unk_84[v0]->unk_854));

        if (param0->unk_FC == 0) {
            param0->unk_84[v0]->unk_868 = MapPropManager_New(HEAP_ID_FIELD);
        } else {
            param0->unk_84[v0]->unk_868 = NULL;
        }

        param0->unk_84[v0]->unk_860 = -1;
    }
}

static void ov5_021E7B4C(UnkStruct_ov5_021E8F60 *param0)
{
    u8 v0;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_84[v0]->unk_864 = 0;
        ov5_021EEB84(v0, param0->unk_00, (void **)&(param0->unk_84[v0]->unk_854));

        if (param0->unk_84[v0]->unk_868 != NULL) {
            MapPropManager_Init(param0->unk_84[v0]->unk_868);
        }

        param0->unk_84[v0]->unk_860 = -1;
    }
}

static void ov5_021E7BAC(NARC *param0, const int param1, UnkStruct_ov5_021E7BAC *param2)
{
    void *v0;
    int *v1;
    int v2 = sizeof(int) * 4;

    if (param0 != NULL) {
        v0 = Heap_AllocFromHeapAtEnd(4, v2);
        NARC_ReadFromMember(param0, param1, 0, v2, v0);
    } else {
        GF_ASSERT(FALSE);
        v0 = NARC_AllocAtEndAndReadFromMemberByIndexPair(NARC_INDEX_FIELDDATA__LAND_DATA__LAND_DATA, param1, 4, 0, v2);
    }

    v1 = &((int *)(v0))[0];

    param2->unk_00 = *v1;
    v1++;

    param2->unk_0C = *v1;
    v1++;

    param2->unk_04 = *v1;
    v1++;

    param2->unk_08 = *v1;

    Heap_FreeToHeap(v0);
}

static void ov5_021E7C00(const u8 param0, AreaDataManager *const param1, const MapMatrix *param2, const int param3, const int param4, UnkStruct_ov5_021E8F60 *param5, UnkStruct_ov5_021E7814 *param6)
{
    int v0;
    u8 v1;
    int v2;
    UnkStruct_ov5_021E7BAC v3;

    v0 = param6->unk_18[param0];

    if ((v0 < 0) || (v0 >= param3 * param4)) {
        return;
    }

    v2 = MapMatrix_GetLandDataIdByIndex(v0, param2);

    if (v2 == 0xffff) {
        return;
    }

    ov5_021E7BAC(param5->unk_EC, v2, &v3);

    {
        void *v4;

        v4 = &(param6->unk_00[param0]->unk_00[0]);
        NARC_ReadFile(param5->unk_EC, v3.unk_00, v4);
    }

    if (param6->unk_00[param0]->unk_868 != NULL) {
        MapPropManager_Load(param5->unk_EC, v3.unk_0C, param1, param6->unk_00[param0]->unk_868, param5->unk_E4);
    }

    {
        param6->unk_10.unk_00++;
        param6->unk_08 = ov5_021E976C(param5->unk_EC, v3.unk_04, &param6->unk_00[param0]->unk_800, &(param6->unk_00[param0]->unk_854), AreaDataManager_GetMapTexture(param1), &(param6->unk_00[param0]->unk_864), &param6->unk_10.unk_00);
    }

    {
        param6->unk_10.unk_04++;
        param6->unk_0C = BDHC_LazyLoad(param5->unk_EC, v3.unk_08, param6->unk_00[param0]->bdhc, &param6->unk_10.unk_04, &param6->unk_00[param0]->bdhcBuffer, &param6->unk_10.unk_00);
    }
}

static void ov5_021E7CD4(const u8 param0, AreaDataManager *const param1, const MapMatrix *param2, const int param3, const int param4, UnkStruct_ov5_021E8F60 *param5, UnkStruct_ov5_021E7814 *param6)
{
    int v0;
    u8 v1;
    int v2;
    UnkStruct_ov5_021E7BAC v3;

    v0 = param6->unk_18[param0];

    if ((v0 < 0) || (v0 >= param3 * param4)) {
        return;
    }

    v2 = MapMatrix_GetLandDataIdByIndex(v0, param2);

    if (v2 == 0xffff) {
        return;
    }

    ov5_021E7BAC(param5->unk_EC, v2, &v3);

    {
        u8 v4[0x800];
        NARC_ReadFile(param5->unk_EC, 0x800, v4);
    }

    if (param6->unk_00[param0]->unk_868 != NULL) {
        MapPropManager_Load(param5->unk_EC, v3.unk_0C, param1, param6->unk_00[param0]->unk_868, param5->unk_E4);
    }

    {
        param6->unk_10.unk_00++;
        param6->unk_08 = ov5_021E976C(param5->unk_EC, v3.unk_04, &param6->unk_00[param0]->unk_800, &(param6->unk_00[param0]->unk_854), AreaDataManager_GetMapTexture(param1), &(param6->unk_00[param0]->unk_864), &param6->unk_10.unk_00);
    }
}

static void ov5_021E7D98(const u8 param0, const AreaDataManager *param1, const MapMatrix *param2, const int param3, const int param4, UnkStruct_ov5_021E8F60 *param5, UnkStruct_ov5_021E7814 *param6)
{
    int v0;
    u8 v1;
    int v2;
    UnkStruct_ov5_021E7BAC v3;

    v0 = param6->unk_18[param0];

    if ((v0 < 0) || (v0 >= param3 * param4)) {
        return;
    }

    v2 = MapMatrix_GetLandDataIdByIndex(v0, param2);

    if (v2 == 0xffff) {
        return;
    }

    ov5_021E7BAC(param5->unk_EC, v2, &v3);

    NARC_Seek(param5->unk_EC, 0x800);
    NARC_Seek(param5->unk_EC, v3.unk_0C);

    {
        param6->unk_10.unk_00++;
        param6->unk_08 = ov5_021E976C(param5->unk_EC, v3.unk_04, &param6->unk_00[param0]->unk_800, &(param6->unk_00[param0]->unk_854), AreaDataManager_GetMapTexture(param1), &(param6->unk_00[param0]->unk_864), &param6->unk_10.unk_00);
    }
}

static void ov5_021E7E28(const int param0, const u8 param1, AreaDataManager *const param2, const MapMatrix *param3, const int param4, const int param5, const BOOL param6, const UnkStruct_ov5_021E8F60 *param7)
{
    int v0;
    NNSG3dResMdl *v1;
    UnkStruct_ov5_021E7BAC v2;

    if ((param0 < 0) || (param0 >= param4 * param5)) {
        return;
    }

    v0 = MapMatrix_GetLandDataIdByIndex(param0, param3);

    if (v0 == 0xffff) {
        return;
    }

    ov5_021E7BAC(param7->unk_EC, v0, &v2);

    {
        void *v3;

        v3 = &(param7->unk_84[param1]->unk_00[0]);
        NARC_ReadFile(param7->unk_EC, v2.unk_00, v3);
    }

    if (param7->unk_84[param1]->unk_868 != NULL) {
        MapPropManager_Load(param7->unk_EC, v2.unk_0C, param2, param7->unk_84[param1]->unk_868, param7->unk_E4);
    }

    {
        v1 = ov5_021E97AC(param7->unk_EC, v2.unk_04, &param7->unk_84[param1]->unk_800, &(param7->unk_84[param1]->unk_854), AreaDataManager_GetMapTexture(param2));

        if (param6 == 1) {
            AreaLight_UseGlobalModelAttributes(v1);
        }

        param7->unk_84[param1]->unk_864 = 1;
    }

    {
        BDHC_Load(param7->unk_EC, v2.unk_08, param7->unk_84[param1]->bdhc, param7->unk_84[param1]->bdhcBuffer);
    }

    param7->unk_84[param1]->unk_860 = param0;

    if (param7->unk_F0 != NULL) {
        param7->unk_F0(param7->unk_F4, param0, param7->unk_84[param1]->unk_868);
    }
}

static void ov5_021E7F1C(const int param0, const u8 param1, AreaDataManager *const param2, const MapMatrix *param3, const int param4, const int param5, const BOOL param6, UnkStruct_ov5_021E8F60 *param7)
{
    int v0;
    UnkStruct_ov5_021E7BAC v1;
    NNSG3dResMdl *v2;

    if ((param0 < 0) || (param0 >= param4 * param5)) {
        return;
    }

    v0 = MapMatrix_GetLandDataIdByIndex(param0, param3);

    if (v0 == 0xffff) {
        return;
    }

    ov5_021E7BAC(param7->unk_EC, v0, &v1);

    {
        u8 v3[0x800];
        NARC_ReadFile(param7->unk_EC, 0x800, v3);
    }

    if (param7->unk_84[param1]->unk_868 != NULL) {
        MapPropManager_Load(param7->unk_EC, v1.unk_0C, param2, param7->unk_84[param1]->unk_868, param7->unk_E4);
    }

    {
        v2 = ov5_021E97AC(param7->unk_EC, v1.unk_04, &param7->unk_84[param1]->unk_800, &(param7->unk_84[param1]->unk_854), AreaDataManager_GetMapTexture(param2));

        if (param6 == 1) {
            AreaLight_UseGlobalModelAttributes(v2);
        }

        param7->unk_84[param1]->unk_864 = 1;
    }

    param7->unk_84[param1]->unk_860 = param0;
}

static void ov5_021E7FF0(const int param0, const u8 param1, AreaDataManager *const param2, const MapMatrix *param3, const int param4, const int param5, const BOOL param6, UnkStruct_ov5_021E8F60 *param7)
{
    int v0;
    UnkStruct_ov5_021E7BAC v1;

    if ((param0 < 0) || (param0 >= param4 * param5)) {
        return;
    }

    v0 = MapMatrix_GetLandDataIdByIndex(param0, param3);

    if (v0 == 0xffff) {
        return;
    }

    ov5_021E7BAC(param7->unk_EC, v0, &v1);

    {
        void *v2;

        v2 = &(param7->unk_84[param1]->unk_00[0]);
        NARC_ReadFile(param7->unk_EC, v1.unk_00, v2);
    }

    if (param7->unk_84[param1]->unk_868 != NULL) {
        MapPropManager_Load(param7->unk_EC, v1.unk_0C, param2, param7->unk_84[param1]->unk_868, param7->unk_E4);
    }

    NARC_Seek(param7->unk_EC, v1.unk_04);

    {
        BDHC_Load(param7->unk_EC, v1.unk_08, param7->unk_84[param1]->bdhc, param7->unk_84[param1]->bdhcBuffer);
    }

    param7->unk_84[param1]->unk_860 = param0;

    if (param7->unk_F0 != NULL) {
        param7->unk_F0(param7->unk_F4, param0, param7->unk_84[param1]->unk_868);
    }
}

static BOOL ov5_021E80BC(const UnkStruct_ov5_021E80BC *param0)
{
    if ((param0->unk_00 == 0) && (param0->unk_04 == 0)) {
        return 1;
    } else {
        return 0;
    }
}

static BOOL ov5_021E80D0(UnkStruct_ov5_021E8F60 *param0, const int param1, const int param2, const u8 param3, const u8 param4, const u8 param5, const u8 param6)
{
    GF_ASSERT(param0->unk_04[param5].unk_28 == 0);

    param0->unk_04[param5].unk_28 = 1;
    param0->unk_04[param5].unk_2C = param6;
    param0->unk_04[param5].unk_00.unk_18[0] = param1;
    param0->unk_04[param5].unk_00.unk_18[1] = param2;
    param0->unk_04[param5].unk_00.unk_20[0] = param3;
    param0->unk_04[param5].unk_00.unk_20[1] = param4;
    param0->unk_04[param5].unk_00.unk_00[0] = param0->unk_84[param3];
    param0->unk_04[param5].unk_00.unk_00[1] = param0->unk_84[param4];
    param0->unk_04[param5].unk_00.unk_22 = 0;
    param0->unk_04[param5].unk_00.unk_24 = 0;

    if (param0->unk_94 == 0) {
        param0->unk_A8 = 0;
    }

    param0->unk_84[param3]->unk_860 = param1;
    param0->unk_84[param4]->unk_860 = param2;
    param0->unk_94++;
    param0->unk_95 = (param0->unk_95 + 1) % 2;

    return 1;
}

void ov5_021E8188(FieldSystem *fieldSystem, UnkStruct_ov5_021E8F60 *param1)
{
    u8 v0;
    UnkStruct_ov5_021E7814 *v1;
    UnkStruct_ov5_021EA174 *v2;

    v1 = &param1->unk_04[param1->unk_96].unk_00;
    v2 = &param1->unk_C0;

    if ((param1->unk_F8 == 0) && (v2->unk_20 == 1)) {
        if (v2->unk_18) {
            GF_ASSERT((*v2->unk_14) <= (*v2->unk_10));

            if ((*v2->unk_10) - (*v2->unk_14) >= (FX32_ONE * 16)) {
                int v3, v4;

                ov5_021E9230(v2->unk_0C->x, v2->unk_0C->z, &v3, &v4);
                ov5_021E8F90(v3, v4, param1->unk_100, param1->unk_108, param1);

                v2->unk_00 = *v2->unk_0C;

                if (!(v2->unk_00.z % (FX32_ONE * 8) == 0)) {
                    if (Link_SetErrorState(1)) {
                        return;
                    }
                }

                GF_ASSERT(v2->unk_00.z % (FX32_ONE * 8) == 0);

                v2->unk_18 = 0;
                v2->unk_10 = NULL;
                v2->unk_14 = NULL;
            }
        } else {
            if ((v2->unk_00.x != v2->unk_0C->x) && (v2->unk_00.z != v2->unk_0C->z)) {
                GF_ASSERT(FALSE);
            } else if ((v2->unk_00.x == v2->unk_0C->x) && (v2->unk_00.z == v2->unk_0C->z)) {
                (void)0;
            } else {
                v2->unk_18 = 1;

                if (v2->unk_00.x != v2->unk_0C->x) {
                    if (v2->unk_00.x > v2->unk_0C->x) {
                        v2->unk_10 = &v2->unk_00.x;
                        v2->unk_14 = &v2->unk_0C->x;
                        v2->unk_1C = 3;
                    } else {
                        v2->unk_10 = &v2->unk_0C->x;
                        v2->unk_14 = &v2->unk_00.x;
                        v2->unk_1C = 1;
                    }

                    if (!(v2->unk_00.x % (FX32_ONE * 8) == 0)) {
                        if (Link_SetErrorState(1)) {
                            return;
                        }
                    }

                    GF_ASSERT(v2->unk_00.x % (FX32_ONE * 8) == 0);
                } else {
                    if (param1->unk_C0.unk_00.z > param1->unk_C0.unk_0C->z) {
                        v2->unk_10 = &v2->unk_00.z;
                        v2->unk_14 = &v2->unk_0C->z;
                        v2->unk_1C = 4;
                    } else {
                        v2->unk_10 = &v2->unk_0C->z;
                        v2->unk_14 = &v2->unk_00.z;
                        v2->unk_1C = 2;
                    }

                    if (!(v2->unk_00.z % (FX32_ONE * 8) == 0)) {
                        if (Link_SetErrorState(1)) {
                            return;
                        }
                    }

                    GF_ASSERT(v2->unk_00.z % (FX32_ONE * 8) == 0);
                }

                ov5_021E9190(v2->unk_1C, param1);
            }
        }
    }

    switch (param1->unk_A8) {
    case 0:
        if (param1->unk_74[v1->unk_20[v1->unk_22]] == 1) {
            (void)0;
        } else {
            param1->unk_E8->unk_04(v1->unk_22, param1->unk_AC, param1->unk_B0, param1->unk_B4, param1->unk_B8, param1, v1);
        }

        v1->unk_22++;
        param1->unk_A8 = 1;
        break;
    case 1:
        if (param1->unk_74[v1->unk_20[v1->unk_22 - 1]] == 1) {
            ov5_021E7814(v1);
            param1->unk_74[v1->unk_20[v1->unk_22 - 1]] = 0;
        }

        if ((v1->unk_22 <= 2) && (ov5_021E80BC(&v1->unk_10) == 1)) {
            if (v1->unk_22 >= 2) {
                v1->unk_24 = 1;
            } else {
                param1->unk_A8 = 0;
            }

            if (v1->unk_00[v1->unk_22 - 1]->unk_864 == 1) {
                NNSG3dResMdlSet *v5 = NNS_G3dGetMdlSet(v1->unk_00[v1->unk_22 - 1]->unk_854);
                NNSG3dResMdl *v6 = NNS_G3dGetMdlByIdx(v5, 0);

                if (AreaDataManager_IsOutdoorsLighting(param1->unk_AC) == 1) {
                    AreaLight_UseGlobalModelAttributes(v6);
                }
            }

            if ((0 <= v1->unk_00[v1->unk_22 - 1]->unk_860) && (v1->unk_00[v1->unk_22 - 1]->unk_860 < param1->unk_B4 * param1->unk_B8)) {
                if (param1->unk_F0 != NULL) {
                    param1->unk_F0(param1->unk_F4, v1->unk_00[v1->unk_22 - 1]->unk_860, v1->unk_00[v1->unk_22 - 1]->unk_868);
                }
            }
        }
        break;
    case 2:
        break;
    case 3:
        if (ov5_021E80BC(&v1->unk_10) == 1) {
            param1->unk_94 = 0;
        }
        break;
    }

    if (param1->unk_94 == 0) {
        param1->unk_96 = 0;
        param1->unk_95 = 0;
        param1->unk_A8 = 2;
        return;
    }

    if (ov5_021E8DAC(param1) == 1) {
        param1->unk_04[param1->unk_96].unk_28 = 0;

        ov5_021E8DBC(param1);

        param1->unk_94--;
        param1->unk_96 = (param1->unk_96 + 1) % 2;

        if (param1->unk_94 != 0) {
            param1->unk_A8 = 0;
        } else {
            param1->unk_96 = 0;
            param1->unk_95 = 0;
            param1->unk_A8 = 2;
        }

        if (param1->unk_5C.unk_08 == 1) {
            BOOL v7;

            param1->unk_5C.unk_08 = 0;

            ov5_021E8DD4(param1->unk_5C.unk_0C, param1);
            ov5_021E8D50(param1);
        }
    }
}

static void ov5_021E8558(const int param0, const int param1, const u8 param2, const u8 param3, const u8 param4, UnkStruct_ov5_021E8F60 *param5)
{
    int v0;
    u8 v1;
    BOOL v2;

    GF_ASSERT(param5->unk_5C.unk_08 != 1);

    if (ov5_021E8C58(param4, param5, &v1) == 1) {
        ov5_021E77E4(param5, v1);

        if (param5->unk_94 >= 2) {
            param5->unk_5C.unk_08 = 1;
            param5->unk_5C.unk_10[0] = param0;
            param5->unk_5C.unk_10[1] = param1;
            param5->unk_5C.unk_18[0] = param2;
            param5->unk_5C.unk_18[1] = param3;
            param5->unk_5C.unk_00[0] = param5->unk_84[param2];
            param5->unk_5C.unk_00[1] = param5->unk_84[param3];
            param5->unk_5C.unk_0C = param4;
            param5->unk_84[param2]->unk_860 = param0;
            param5->unk_84[param3]->unk_860 = param1;
        } else {
            v2 = ov5_021E80D0(param5, param0, param1, param2, param3, param5->unk_95, param4);

            if (v2 == 0) {
                (void)0;
            }
        }
    } else {
        v2 = ov5_021E80D0(param5, param0, param1, param2, param3, param5->unk_95, param4);

        GF_ASSERT(v2 == 1);
    }
}

static void ov5_021E8614(const u8 param0, UnkStruct_ov5_021E8F60 *param1)
{
    param1->unk_84[param0]->unk_864 = 0;
    BDHC_Reset(param1->unk_84[param0]->bdhc);

    if (param1->unk_84[param0]->unk_868 != NULL) {
        MapPropManager_Init(
            param1->unk_84[param0]->unk_868);
    }

    param1->unk_84[param0]->unk_860 = -1;
    MI_CpuFillFast(param1->unk_84[param0]->unk_00, 0xffffffff, 2 * 32 * 32);
    param1->unk_74[param0] = 1;
}

static void ov5_021E8668(const u8 param0, const u8 param1, const u8 param2, const u8 param3, UnkStruct_ov5_021E8F60 *param4)
{
    UnkStruct_ov5_021E79A8 *v0[2];

    ov5_021E8614(param0, param4);
    ov5_021E8614(param1, param4);

    v0[0] = param4->unk_84[param0];
    v0[1] = param4->unk_84[param1];

    param4->unk_84[param0] = param4->unk_84[param2];
    param4->unk_84[param1] = param4->unk_84[param3];

    param4->unk_84[param2] = v0[0];
    param4->unk_84[param3] = v0[1];
}

static void ov5_021E86A0(const int param0, const u8 param1, UnkStruct_ov5_021E8F60 *param2)
{
    u8 v0, v1;
    int v2, v3;
    int v4;
    int v5, v6;

    switch (param1) {
    case 4:
        ov5_021E8668(2, 3, 0, 1, param2);

        if (param2->unk_A1 == 2) {
            v2 = param0 - param2->unk_B4;
            v3 = param0 - param2->unk_B4 - 1;
            v5 = 1;
            v6 = 0;

            if (v2 < 0) {
                v2 = -1;
                v3 = -1;
            } else {
                if ((v3 < 0) || (!ov5_021E77C0(v2, v3, param2->unk_B4))) {
                    v3 = -1;
                }
            }
        } else if (param2->unk_A1 == 3) {
            v2 = param0 - param2->unk_B4;
            v3 = param0 - param2->unk_B4 + 1;
            v5 = 0;
            v6 = 1;

            if (v2 < 0) {
                v2 = -1;
                v3 = -1;
            } else {
                if (!ov5_021E77C0(v2, v3, param2->unk_B4)) {
                    v3 = -1;
                }
            }
        } else {
            GF_ASSERT(FALSE);
        }

        ov5_021E8558(v2, v3, v5, v6, param1, param2);
        break;
    case 3:
        ov5_021E8668(1, 3, 0, 2, param2);

        if (param2->unk_A1 == 1) {
            v2 = param0 - 1;
            v3 = param0 - param2->unk_B4 - 1;
            v5 = 2;
            v6 = 0;

            if ((v2 < 0) || (!ov5_021E77C0(v2, param0, param2->unk_B4))) {
                v2 = -1;
                v3 = -1;
            }

            if ((v3 < 0) || (!ov5_021E779C(v2, v3, param2->unk_B4))) {
                v3 = -1;
            }
        } else if (param2->unk_A1 == 3) {
            v2 = param0 - 1;
            v3 = param0 + param2->unk_B4 - 1;
            v5 = 0;
            v6 = 2;

            if ((v2 < 0) || (!ov5_021E77C0(v2, param0, param2->unk_B4))) {
                v2 = -1;
                v3 = -1;
            }

            if ((param2->unk_B4 * param2->unk_B8 <= v3) || (!ov5_021E779C(v2, v3, param2->unk_B4))) {
                v3 = -1;
            }
        } else {
            GF_ASSERT(FALSE);
        }

        ov5_021E8558(v2, v3, v5, v6, param1, param2);
        break;
    case 1:
        ov5_021E8668(0, 2, 1, 3, param2);

        if (param2->unk_A1 == 0) {
            v2 = param0 + 1;
            v3 = param0 - param2->unk_B4 + 1;
            v5 = 3;
            v6 = 1;

            if ((param2->unk_B4 * param2->unk_B8 <= v2) || (!ov5_021E77C0(v2, param0, param2->unk_B4))) {
                v2 = -1;
                v3 = -1;
            }

            if ((param2->unk_B4 * param2->unk_B8 <= v3) || (!ov5_021E779C(v2, v3, param2->unk_B4))) {
                v3 = -1;
            }
        } else if (param2->unk_A1 == 2) {
            v2 = param0 + 1;
            v3 = param0 + param2->unk_B4 + 1;
            v5 = 1;
            v6 = 3;

            if ((param2->unk_B4 * param2->unk_B8 <= v2) || (!ov5_021E77C0(v2, param0, param2->unk_B4))) {
                v2 = -1;
                v3 = -1;
            }

            if ((v3 < 0) || (!ov5_021E779C(v2, v3, param2->unk_B4))) {
                v3 = -1;
            }
        } else {
            (void)0;
        }

        ov5_021E8558(v2, v3, v5, v6, param1, param2);
        break;
    case 2:
        ov5_021E8668(0, 1, 2, 3, param2);

        if (param2->unk_A1 == 0) {
            v2 = param0 + param2->unk_B4;
            v3 = param0 + param2->unk_B4 - 1;
            v5 = 3;
            v6 = 2;

            if (param2->unk_B4 * param2->unk_B8 <= v2) {
                v2 = -1;
                v3 = -1;
            } else {
                if (!ov5_021E77C0(v2, v3, param2->unk_B4)) {
                    v3 = -1;
                }
            }
        } else if (param2->unk_A1 == 1) {
            v2 = param0 + param2->unk_B4;
            v3 = param0 + param2->unk_B4 + 1;
            v5 = 2;
            v6 = 3;

            if (param2->unk_B4 * param2->unk_B8 <= v2) {
                v2 = -1;
                v3 = -1;
            } else {
                if ((param2->unk_B4 * param2->unk_B8 <= v3) || (!ov5_021E77C0(v2, v3, param2->unk_B4))) {
                    v3 = -1;
                }
            }
        } else {
            GF_ASSERT(FALSE);
        }

        ov5_021E8558(v2, v3, v5, v6, param1, param2);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void ov5_021E89D0(const u8 param0, const UnkStruct_ov5_021E8F60 *param1, ModelAttributes *const param2)
{
    VecFx32 v0 = { 0, 0, 0 };

    ov5_021E901C(param1->unk_84[param0]->unk_860, param1->unk_B4, param1->unk_B0, &v0);

    v0.x += param1->unk_10C.x;
    v0.y += param1->unk_10C.y;
    v0.z += param1->unk_10C.z;

    if (param1->unk_84[param0]->unk_864 == 1) {
        VecFx32 v1 = { FX32_ONE, FX32_ONE, FX32_ONE };
        MtxFx33 v2 = { FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE };

        Easy3D_DrawRenderObj(&(param1->unk_84[param0]->unk_800), &v0, &v2, &v1);
    }

    if (param1->unk_84[param0]->unk_864 == 1) {
        if (param1->unk_84[param0]->unk_868 != NULL) {
            MapPropManager_Render(&v0, param1->unk_AC, AreaDataManager_IsOutdoorsLighting(param1->unk_AC), param2, param1->unk_84[param0]->unk_868);
        }
    }
}

static int ov5_021E8A98(const u32 param0, const int param1, const int param2)
{
    u32 v0, v1;
    u32 v2, v3;
    int v4;

    v0 = param0 % param2;
    v1 = param0 / param2;
    v2 = v0 / 32;
    v3 = v1 / 32;
    v4 = v2 + v3 * param1;

    return v4;
}

static int ov5_021E8ABC(const int param0, const int param1, const int param2, const int param3, const int param4)
{
    int v0;

    v0 = (param0 - param2) + ((param1 - param3) * param4);
    return v0;
}

static u32 ov5_021E8ACC(const u32 param0, const int param1, const int param2)
{
    u32 v0, v1;
    u32 v2, v3;
    u32 v4;

    v0 = param0 % param2;
    v1 = param0 / param2;
    v2 = v0 / 32;
    v3 = v1 / 32;
    v4 = v2 + v3 * param1;

    return v4;
}

static u8 ov5_021E8AF0(const u8 param0)
{
    if (param0 == 0) {
        return 3;
    } else if (param0 == 1) {
        return 2;
    } else if (param0 == 2) {
        return 1;
    } else if (param0 == 3) {
        return 0;
    } else {
        GF_ASSERT(FALSE);
    }

    return 0;
}

static u32 ov5_021E8B1C(const u8 param0, const int param1, const int param2, const int param3)
{
    u32 v0;
    u32 v1;
    int v2;

    switch (param0) {
    case 1:
        v2 = (param3 % param2) + 1;

        if (v2 >= param2) {
            return param3;
        }

        v0 = param3 + 1;
        break;
    case 2:
        v2 = param3 + param2;

        if (v2 >= param1 * 32 * param2) {
            return param3;
        }

        v0 = param3 + param2;
        break;
    case 3:
        v2 = (param3 % param2) - 1;

        if (v2 < 0) {
            return param3;
        }

        v0 = param3 - 1;
        break;
    case 4:
        v2 = param3 - param2;

        if (v2 < 0) {
            return param3;
        }

        v0 = param3 - param2;
        break;
    default:
        GF_ASSERT(FALSE);
        return 0;
    }

    return v0;
}

static u8 ov5_021E8B84(const u8 param0, const int param1)
{
    u8 v0;

    switch (param0) {
    case 4:
        v0 = param1 - 2;
        break;
    case 2:
        v0 = param1 + 2;
        break;
    case 3:
        v0 = param1 - 1;
        break;
    case 1:
        v0 = param1 + 1;
        break;
    }

    return v0;
}

static void ov5_021E8BC0(const u8 param0, const int param1, u8 *param2)
{
    u8 v0;
    u8 v1;

    v0 = ov5_021E8B84(param0, param1);

    if (param1 < v0) {
        if (v0 - param1 == 1) {
            v1 = (*param2) - 1;
        } else if (v0 - param1 == 2) {
            v1 = (*param2) - 2;
        } else {
            GF_ASSERT(FALSE);
        }
    } else if (param1 > v0) {
        if (param1 - v0 == 1) {
            v1 = (*param2) + 1;
        } else if (param1 - v0 == 2) {
            v1 = (*param2) + 2;
        } else {
            GF_ASSERT(FALSE);
        }
    } else {
        GF_ASSERT(FALSE);
    }

    (*param2) = v1;
}

static u8 ov5_021E8C24(const u8 param0)
{
    switch (param0) {
    case 4:
        return 2;
    case 2:
        return 4;
    case 1:
        return 3;
    case 3:
        return 1;
    default:
        GF_ASSERT(FALSE);
        return 0;
    }
}

static BOOL ov5_021E8C58(const u8 param0, const UnkStruct_ov5_021E8F60 *param1, u8 *param2)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        if (param1->unk_04[v0].unk_28 == 1) {
            if (ov5_021E8C24(param0) == param1->unk_04[v0].unk_2C) {
                *param2 = v0;
                return 1;
            }
        }
    }

    return 0;
}

static BOOL ov5_021E8C8C(UnkStruct_ov5_021E8F60 *param0)
{
    UnkStruct_ov5_021E8C8C *v0 = &param0->unk_5C;

    if (param0->unk_04[param0->unk_95].unk_28 != 0) {
        GF_ASSERT(FALSE);
    }

    param0->unk_04[param0->unk_95].unk_28 = 1;
    param0->unk_04[param0->unk_95].unk_2C = v0->unk_0C;

    param0->unk_04[param0->unk_95].unk_00.unk_18[0] = v0->unk_10[0];
    param0->unk_04[param0->unk_95].unk_00.unk_18[1] = v0->unk_10[1];

    param0->unk_04[param0->unk_95].unk_00.unk_20[0] = v0->unk_18[0];
    param0->unk_04[param0->unk_95].unk_00.unk_20[1] = v0->unk_18[1];

    param0->unk_04[param0->unk_95].unk_00.unk_00[0] = v0->unk_00[0];
    param0->unk_04[param0->unk_95].unk_00.unk_00[1] = v0->unk_00[1];

    param0->unk_04[param0->unk_95].unk_00.unk_22 = 0;
    param0->unk_04[param0->unk_95].unk_00.unk_24 = 0;

    return 1;
}

static void ov5_021E8D50(UnkStruct_ov5_021E8F60 *param0)
{
    int v0;
    BOOL v1;
    UnkStruct_ov5_021E8C8C *v2 = &param0->unk_5C;

    if (param0->unk_94 >= 2) {
        GF_ASSERT(FALSE);
    }

    v1 = ov5_021E8C8C(param0);

    GF_ASSERT(v1 == 1);

    v2->unk_00[0]->unk_860 = v2->unk_10[0];
    v2->unk_00[1]->unk_860 = v2->unk_10[1];

    param0->unk_94++;
    param0->unk_95 = (param0->unk_95 + 1) % 2;
}

static BOOL ov5_021E8DAC(const UnkStruct_ov5_021E8F60 *param0)
{
    return param0->unk_04[param0->unk_96].unk_00.unk_24;
}

static void ov5_021E8DBC(UnkStruct_ov5_021E8F60 *param0)
{
    u8 v0;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_74[v0] = 0;
    }
}

static void ov5_021E8DD4(const u8 param0, UnkStruct_ov5_021E8F60 *param1)
{
    switch (param0) {
    case 4:
        param1->unk_74[2] = 1;
        param1->unk_74[3] = 1;
        break;
    case 1:
        param1->unk_74[0] = 1;
        param1->unk_74[2] = 1;
        break;
    case 2:
        param1->unk_74[0] = 1;
        param1->unk_74[1] = 1;
        break;
    case 3:
        param1->unk_74[1] = 1;
        param1->unk_74[3] = 1;
        break;
    }
}

static void ov5_021E8E28(UnkStruct_ov5_021E8F60 *param0, const int param1, const int param2, const int param3, const int param4, const int param5)
{
    u8 v0;
    int v1[4];

    ov5_021E79A8(param0);
    ov5_021E7838(param0->unk_F8, param1, param2, param3, param4, param0->unk_B4, param0->unk_B8, param5, v1);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_84[v0]->bdhc = BDHC_New();

        BDHC_MarkNotLoaded(param0->unk_84[v0]->bdhc);
        ov5_021E7E28(v1[v0], v0, param0->unk_AC, param0->unk_B0, param0->unk_B4, param0->unk_B8, AreaDataManager_IsOutdoorsLighting(param0->unk_AC), param0);
    }
}

static void ov5_021E8ECC(UnkStruct_ov5_021E8F60 *param0, const int param1, const int param2, const int param3, const int param4, const int param5)
{
    u8 v0;
    int v1[4];

    ov5_021E7AC4(param0);
    ov5_021E7838(param0->unk_F8, param1, param2, param3, param4, param0->unk_B4, param0->unk_B8, param5, v1);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_84[v0]->bdhc = NULL;
        ov5_021E7F1C(v1[v0], v0, param0->unk_AC, param0->unk_B0, param0->unk_B4, param0->unk_B8, AreaDataManager_IsOutdoorsLighting(param0->unk_AC), param0);
    }
}

static void ov5_021E8F60(UnkStruct_ov5_021E8F60 *param0)
{
    int v0;

    param0->unk_96 = 0;
    param0->unk_95 = 0;
    param0->unk_94 = 0;

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_04[v0].unk_28 = 0;
        param0->unk_04[v0].unk_00.unk_24 = 1;
    }

    ov5_021E8DBC(param0);
}

static void ov5_021E8F90(const int param0, const int param1, const int param2, const int param3, UnkStruct_ov5_021E8F60 *param4)
{
    int v0 = param0, v1 = param1;

    if (param4->unk_F8 == 1) {
        if (param4->unk_B4 > 1) {
            v0 = param2 + 31;
        } else {
            v0 = param2 + 16;
        }

        if (param4->unk_B8 > 1) {
            v1 = param3 + 31;
        } else {
            v1 = param3 + 16;
        }
    }

    param4->unk_9C = ov5_021E8ABC(v0, v1, param2, param3, param4->unk_BC);
    param4->unk_A1 = ov5_021E935C(param4->unk_9C, param4->unk_BC);
    param4->unk_A0 = ov5_021E8AF0(param4->unk_A1);
    param4->unk_98 = ov5_021E8ACC(param4->unk_9C, param4->unk_B4, param4->unk_BC);
}

static void ov5_021E901C(const int param0, const int param1, const MapMatrix *param2, VecFx32 *param3)
{
    u16 v0;
    u16 v1;

    param3->x = (32 / 2) * 16 * FX32_ONE;
    param3->z = (32 / 2) * 16 * FX32_ONE;

    if (param0 == -1) {
        return;
    }

    v0 = param0 % param1;
    v1 = param0 / param1;

    {
        int v2;
        int v3;
        u16 v4;

        v3 = MapMatrix_GetWidth(param2);
        v4 = MapMatrix_GetMatrixID(param2);
        v2 = MapMatrix_GetAltitudeAtCoords(param2, v4, v0, v1, v3);
        param3->y = v2 * (16 / 2) * FX32_ONE;
    }

    param3->x += v0 * 32 * 16 * FX32_ONE;
    param3->z += v1 * 32 * 16 * FX32_ONE;
}

UnkStruct_ov5_021E8F60 *ov5_021E9084(MapMatrix *param0, AreaDataManager *param1, MapPropAnimationManager *param2, const int param3)
{
    UnkStruct_ov5_021E8F60 *v0;
    BOOL v1;

    v0 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(UnkStruct_ov5_021E8F60));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov5_021E8F60));

    if (param3 == 0) {
        v0->unk_E8 = &Unk_ov5_021FAE98;
        v1 = 1;
    } else if (param3 == 1) {
        v0->unk_E8 = &Unk_ov5_021FAE90;
        v1 = 0;
    } else {
        GF_ASSERT(FALSE);
    }

    v0->unk_00 = ov5_021EEAC8(v1);
    v0->unk_AC = param1;
    v0->unk_B0 = param0;
    v0->unk_B4 = MapMatrix_GetWidth(param0);
    v0->unk_B8 = MapMatrix_GetHeight(param0);
    v0->unk_BC = v0->unk_B4 * 32;
    v0->unk_E4 = param2;
    v0->unk_C0.unk_20 = 1;

    ov5_021E8F60(v0);

    v0->unk_A4 = 0;
    v0->unk_A8 = 2;
    v0->unk_EC = NARC_ctor(NARC_INDEX_FIELDDATA__LAND_DATA__LAND_DATA, 4);
    v0->unk_F0 = NULL;

    return v0;
}

void ov5_021E9150(UnkStruct_ov5_021E8F60 *param0, const int param1, const int param2)
{
    param0->unk_E8->unk_00(param0, param1, param2, param0->unk_100, param0->unk_108, param0->unk_BC);
    ov5_021E8F90(param1, param2, param0->unk_100, param0->unk_108, param0);
}

void ov5_021E9190(const u8 param0, UnkStruct_ov5_021E8F60 *param1)
{
    int v0;
    u32 v1;
    u8 v2;

    v1 = ov5_021E8B1C(param0, param1->unk_B8, param1->unk_BC, param1->unk_9C);
    v0 = ov5_021E8A98(v1, param1->unk_B4, param1->unk_BC);
    v2 = ov5_021E935C(v1, param1->unk_BC);

    if (param1->unk_98 != v0) {
        return;
    } else {
        if (param1->unk_A1 != v2) {
            ov5_021E86A0(v0, param0, param1);
            ov5_021E8BC0(param0, param1->unk_A1, &(param1->unk_A0));
        }
    }
}

void ov5_021E91FC(const UnkStruct_ov5_021E8F60 *param0, ModelAttributes *const param1)
{
    u8 v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_84[v0]->unk_860 != -1) {
            ov5_021E89D0(v0, param0, param1);
        }
    }
}

void ov5_021E9230(fx32 param0, fx32 param1, int *param2, int *param3)
{
    *param2 = param0 / (16 * FX32_ONE);
    *param3 = param1 / (16 * FX32_ONE);
}

void ov5_021E924C(UnkStruct_ov5_021E8F60 *param0)
{
    u8 v0;

    ClearUnusedSystemCache();

    NNS_GfdResetLnkTexVramState();
    NNS_GfdResetLnkPlttVramState();

    for (v0 = 0; v0 < 2; v0++) {
        ov5_021E7814(&param0->unk_04[v0].unk_00);
    }

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_84[v0]->unk_864 = 0;

        BDHC_Free(param0->unk_84[v0]->bdhc);

        if (param0->unk_84[v0]->unk_868 != NULL) {
            MapPropManager_Free(param0->unk_84[v0]->unk_868);
        }

        Heap_FreeToHeap(param0->unk_84[v0]);
        param0->unk_84[v0] = NULL;
    }

    param0->unk_A8 = 3;
    param0->unk_A4 = 1;
    param0->unk_C0.unk_20 = 0;
}

void ov5_021E92E4(UnkStruct_ov5_021E8F60 *param0)
{
    NARC_dtor(param0->unk_EC);
    ov5_021EEB48(param0->unk_00);
    Heap_FreeToHeap((void *)param0);
}

BOOL ov5_021E9300(const UnkStruct_ov5_021E8F60 *param0)
{
    if ((param0->unk_A4 == 1) && (param0->unk_94 == 0)) {
        return 1;
    } else {
        return 0;
    }
}

void ov5_021E931C(VecFx32 const *param0, UnkStruct_ov5_021E8F60 *param1)
{
    param1->unk_C0.unk_00 = *param0;
    param1->unk_C0.unk_0C = param0;
}

void ov5_021E9338(UnkStruct_ov5_021E8F60 *param0)
{
    param0->unk_C0.unk_0C = NULL;
}

void ov5_021E9340(const u8 param0, const UnkStruct_ov5_021E8F60 *param1, MapPropManager **param2)
{
    *param2 = param1->unk_84[param0]->unk_868;
}

u8 ov5_021E9354(const UnkStruct_ov5_021E8F60 *param0)
{
    return param0->unk_A0;
}

u8 ov5_021E935C(const u32 param0, const int param1)
{
    u8 v0;
    int v1, v2;
    int v3;

    v1 = param0 % 32;
    v3 = param0 / param1;
    v2 = v3 % 32;

    if (v1 < 32 / 2) {
        if (v2 < 32 / 2) {
            v0 = 0;
        } else {
            v0 = 2;
        }
    } else {
        if (v2 < 32 / 2) {
            v0 = 1;
        } else {
            v0 = 3;
        }
    }

    return v0;
}

u8 ov5_021E9390(const int param0, const u8 param1, const UnkStruct_ov5_021E8F60 *param2)
{
    u8 v0;

    if (param2->unk_98 == param0) {
        return param2->unk_A0;
    }

    GF_ASSERT(param0 != -1);

    switch (param2->unk_A0) {
    case 0:
        if (param0 - param2->unk_98 == param2->unk_B4) {
            v0 = param2->unk_A0 + 2;
        } else if ((param0 - param2->unk_98 == 1) && (ov5_021E77C0(param2->unk_98, param0, param2->unk_B4))) {
            v0 = param2->unk_A0 + 1;
        } else if ((param0 - param2->unk_98 == param2->unk_B4 + 1) && (!ov5_021E77C0(param2->unk_98, param0, param2->unk_B4))) {
            v0 = param2->unk_A0 + 3;
        } else {
            v0 = 4;
        }
        break;
    case 1:
        if (param0 - param2->unk_98 == param2->unk_B4) {
            v0 = param2->unk_A0 + 2;
        } else if ((param2->unk_98 - param0 == 1) && (ov5_021E77C0(param2->unk_98, param0, param2->unk_B4))) {
            v0 = param2->unk_A0 - 1;
        } else if ((param0 - param2->unk_98 == param2->unk_B4 - 1) && (!ov5_021E77C0(param2->unk_98, param0, param2->unk_B4))) {
            v0 = param2->unk_A0 + 1;
        } else {
            v0 = 4;
        }
        break;
    case 2:
        if (param2->unk_98 - param0 == param2->unk_B4) {
            v0 = param2->unk_A0 - 2;
        } else if ((param2->unk_98 - param0 == param2->unk_B4 - 1) && (!ov5_021E77C0(param2->unk_98, param0, param2->unk_B4))) {
            v0 = param2->unk_A0 - 1;
        } else if ((param0 - param2->unk_98 == 1) && (ov5_021E77C0(param2->unk_98, param0, param2->unk_B4))) {
            v0 = param2->unk_A0 + 1;
        } else {
            v0 = 4;
        }
        break;
    case 3:
        if (param2->unk_98 - param0 == param2->unk_B4) {
            v0 = param2->unk_A0 - 2;
        } else if ((param2->unk_98 - param0 == param2->unk_B4 + 1) && (!ov5_021E77C0(param2->unk_98, param0, param2->unk_B4))) {
            v0 = param2->unk_A0 - 3;
        } else if ((param2->unk_98 - param0 == 1) && (ov5_021E77C0(param2->unk_98, param0, param2->unk_B4))) {
            v0 = param2->unk_A0 - 1;
        } else {
            v0 = 4;
        }
        break;
    default:
        v0 = 4;
    }

    return v0;
}

int ov5_021E9560(const UnkStruct_ov5_021E8F60 *param0, const u8 param1)
{
    GF_ASSERT(param1 < 4);
    return param0->unk_84[param1]->unk_860;
}

BOOL ov5_021E9580(const UnkStruct_ov5_021E8F60 *param0, const int param1, const int param2, u8 *param3)
{
    int v0, v1;
    u32 v2, v3;
    u32 v4;
    u32 v5;
    u32 v6;
    u8 v7;

    v0 = param1 - param0->unk_100;
    v1 = param2 - param0->unk_108;
    v2 = v0 / 32;
    v3 = v1 / 32;
    v4 = v2 + (v3 * param0->unk_B4);

    if (!(v4 < param0->unk_B4 * param0->unk_B8)) {
        if (Link_SetErrorState(1)) {
            return 0;
        }
    }

    GF_ASSERT(v4 < param0->unk_B4 * param0->unk_B8);

    v6 = v0 + (v1 * param0->unk_BC);
    v7 = ov5_021E935C(v6, param0->unk_BC);
    v5 = ov5_021E9390(v4, v7, param0);

    if (param3 != NULL) {
        *param3 = v5;
    }

    if (v5 > 3) {
        return 0;
    } else {
        return 1;
    }
}

const BDHC *ov5_021E9610(const UnkStruct_ov5_021E8F60 *param0, const u8 param1)
{
    return param0->unk_84[param1]->bdhc;
}

u16 const *ov5_021E9624(const UnkStruct_ov5_021E8F60 *param0, const u8 param1)
{
    return param0->unk_84[param1]->unk_00;
}

void ov5_021E9630(UnkStruct_ov5_021E8F60 *param0, UnkFuncPtr_ov5_021E9630 param1, void *param2)
{
    param0->unk_F0 = param1;
    param0->unk_F4 = param2;
}

static void ov5_021E9640(SysTask *param0)
{
    UnkStruct_ov5_021E9640 *v0;

    v0 = (UnkStruct_ov5_021E9640 *)SysTask_GetParam(param0);
    v0->unk_1C = 1;
}

static void ov5_021E964C(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov5_021E9640 *v1;
    BOOL v2;
    int v3;
    void *v4;

    v1 = (UnkStruct_ov5_021E9640 *)param1;

    if (v1->unk_1C == 1) {
        v1->unk_14 = 5;
    }

    switch (v1->unk_14) {
    case 0:
        v1->unk_24 = 0;

        if (v1->unk_04 <= 0xe000) {
            v3 = v1->unk_04;
            v1->unk_14 = 2;
        } else {
            v3 = 0xe000;
            v1->unk_14 = 1;
        }

        v4 = &((u8 *)(*v1->unk_0C))[v1->unk_24];
        NARC_ReadFile(v1->unk_00, v3, v4);
        v1->unk_24 += v3;
        break;
    case 1: {
        int v5;

        v3 = v1->unk_04 - v1->unk_24;

        if (v3 > 0xe000) {
            v3 = 0xe000;
            v5 = 0;
        } else {
            v5 = 1;
        }

        v4 = &((u8 *)(*v1->unk_0C))[v1->unk_24];
        NARC_ReadFile(v1->unk_00, v3, v4);

        if (v5) {
            v1->unk_14 = 2;
        } else {
            v1->unk_24 += v3;
        }
    } break;
    case 2:
        if (v1->unk_10 != NULL) {
            if (Easy3D_IsTextureUploadedToVRAM(v1->unk_10) == 1) {
                v2 = Easy3D_BindTextureToResource(*v1->unk_0C, v1->unk_10);
            } else {
                (void)0;
            }
        }

        v1->unk_14 = 3;
        break;
    case 3: {
        NNSG3dResMdlSet *v6 = NNS_G3dGetMdlSet(*v1->unk_0C);
        NNSG3dResMdl *v7;

        GF_ASSERT(v6->dict.numEntry == 1);

        v7 = NNS_G3dGetMdlByIdx(v6, 0);
        GF_ASSERT(v7);

        NNS_G3dRenderObjInit(v1->unk_08, v7);
    }
        *v1->unk_18 = 1;
        v1->unk_14 = 5;
        break;
    case 5:
        *v1->unk_20 = 0;
        Heap_FreeToHeap((void *)(param1));
        SysTask_Done(param0);
        return;
    }
}

SysTask *ov5_021E976C(NARC *param0, const int param1, NNSG3dRenderObj *param2, NNSG3dResFileHeader **param3, NNSG3dResTex *param4, BOOL *param5, int *param6)
{
    SysTask *v0;
    UnkStruct_ov5_021E9640 *v1;

    v1 = (UnkStruct_ov5_021E9640 *)Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov5_021E9640));

    v1->unk_00 = param0;
    v1->unk_04 = param1;
    v1->unk_08 = &param2[0];
    v1->unk_0C = param3;
    v1->unk_10 = param4;
    v1->unk_14 = 0;
    v1->unk_18 = param5;
    *v1->unk_18 = 0;
    v1->unk_20 = param6;
    v1->unk_1C = 0;

    v0 = SysTask_Start(ov5_021E964C, v1, 1);
    return v0;
}

NNSG3dResMdl *ov5_021E97AC(NARC *param0, const int param1, NNSG3dRenderObj *param2, NNSG3dResFileHeader **param3, NNSG3dResTex *param4)
{
    BOOL v0;
    NNSG3dResMdl *v1;

    NARC_ReadFile(param0, param1, *(param3));

    if (param4 != NULL) {
        if (Easy3D_IsTextureUploadedToVRAM(param4) == 1) {
            v0 = Easy3D_BindTextureToResource(*param3, param4);
            GF_ASSERT(v0);
        } else {
            (void)0;
        }
    }

    {
        u8 v2;
        u16 v3;
        NNSG3dResMdlSet *v4 = NNS_G3dGetMdlSet(*param3);

        GF_ASSERT(v4->dict.numEntry == 1);
        v1 = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*param3), 0);

        GF_ASSERT(v1);
        NNS_G3dRenderObjInit(param2, v1);
    }

    return v1;
}

NARC *ov5_021E9828(UnkStruct_ov5_021E8F60 *param0)
{
    return param0->unk_EC;
}

UnkStruct_ov5_021E8F60 *ov5_021E9830(MapMatrix *param0, AreaDataManager *param1, NARC *param2)
{
    UnkStruct_ov5_021E8F60 *v0;
    BOOL v1;

    v0 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(UnkStruct_ov5_021E8F60));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov5_021E8F60));

    v0->unk_00 = ov5_021EEBC0(0);
    v0->unk_AC = param1;
    v0->unk_B0 = param0;

    if (param0 != NULL) {
        v0->unk_B4 = MapMatrix_GetWidth(param0);
        v0->unk_B8 = MapMatrix_GetHeight(param0);
        v0->unk_BC = v0->unk_B4 * 32;
    }

    v0->unk_C0.unk_20 = 0;
    ov5_021E8F60(v0);
    v0->unk_A4 = 0;
    v0->unk_A8 = 2;
    v0->unk_EC = param2;

    if (param2 == NULL) {
        v0->unk_EC = NARC_ctor(NARC_INDEX_FIELDDATA__LAND_DATA__LAND_DATA, 4);
    }

    return v0;
}

void ov5_021E98C8(UnkStruct_ov5_021E8F60 *param0, MapMatrix *param1, AreaDataManager *param2, NARC *param3)
{
    BOOL v0;

    param0->unk_AC = param2;
    param0->unk_B0 = param1;
    param0->unk_B4 = MapMatrix_GetWidth(param1);
    param0->unk_B8 = MapMatrix_GetHeight(param1);
    param0->unk_BC = param0->unk_B4 * 32;
    param0->unk_C0.unk_20 = 0;

    ov5_021E8F60(param0);

    param0->unk_A4 = 0;
    param0->unk_A8 = 2;
    param0->unk_EC = param3;

    if (param3 == NULL) {
        param0->unk_EC = NARC_ctor(NARC_INDEX_FIELDDATA__LAND_DATA__LAND_DATA, 4);
    }
}

void ov5_021E9938(UnkStruct_ov5_021E8F60 *param0)
{
    u8 v0;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_84[v0]->unk_864 = 0;

        if (param0->unk_84[v0]->unk_868 != NULL) {
            MapPropManager_Free(param0->unk_84[v0]->unk_868);
        }

        Heap_FreeToHeap(param0->unk_84[v0]);
        param0->unk_84[v0] = NULL;
    }

    param0->unk_A8 = 3;
    param0->unk_A4 = 1;
    param0->unk_C0.unk_20 = 0;
}

void ov5_021E9998(UnkStruct_ov5_021E8F60 *param0)
{
    u8 v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_84[v0]->unk_868 != NULL) {
            MapPropManager_Init(
                param0->unk_84[v0]->unk_868);
        }
    }
}

void ov5_021E99C4(UnkStruct_ov5_021E8F60 *param0)
{
    ov5_021EEB48(param0->unk_00);
    Heap_FreeToHeap((void *)param0);
}

void ov5_021E99D8(UnkStruct_ov5_021E8F60 *param0, const int param1, const int param2)
{
    ov5_021E9A14(param0, param1, param2, param0->unk_100, param0->unk_108, param0->unk_BC);
    ov5_021E8F90(param1, param2, param0->unk_100, param0->unk_108, param0);
}

static void ov5_021E9A14(UnkStruct_ov5_021E8F60 *param0, const int param1, const int param2, const int param3, const int param4, const int param5)
{
    u8 v0;
    int v1[4];

    ov5_021E7AC4(param0);
    ov5_021E7838(param0->unk_F8, param1, param2, param0->unk_100, param0->unk_108, param0->unk_B4, param0->unk_B8, param5, v1);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_84[v0]->bdhc = NULL;
        ov5_021E9B70(v1[v0], v0, param0->unk_AC, param0->unk_B0, param0->unk_B4, param0->unk_B8, AreaDataManager_IsOutdoorsLighting(param0->unk_AC), param0);
    }
}

void ov5_021E9AAC(UnkStruct_ov5_021E8F60 *param0, const int param1, const int param2, int *param3)
{
    int v0;

    ov5_021E7B4C(param0);
    ov5_021E7838(param0->unk_F8, param1, param2, param0->unk_100, param0->unk_108, param0->unk_B4, param0->unk_B8, param0->unk_BC, param3);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_84[v0]->unk_864 = 0;
    }
}

void ov5_021E9B10(UnkStruct_ov5_021E8F60 *param0, int param1, int param2)
{
    param0->unk_84[param1]->bdhc = NULL;
    ov5_021E9B70(param2, param1, param0->unk_AC, param0->unk_B0, param0->unk_B4, param0->unk_B8, AreaDataManager_IsOutdoorsLighting(param0->unk_AC), param0);
    param0->unk_84[param1]->unk_864 = 0;
}

static void ov5_021E9B70(const int param0, const u8 param1, const AreaDataManager *param2, const MapMatrix *param3, const int param4, const int param5, const BOOL param6, UnkStruct_ov5_021E8F60 *param7)
{
    int v0, v1;
    UnkStruct_ov5_021E7BAC v2;
    NNSG3dResMdl *v3;

    if ((param0 < 0) || (param0 >= param4 * param5)) {
        return;
    }

    v0 = MapMatrix_GetLandDataIdByIndex(param0, param3);
    ov5_021E7BAC(param7->unk_EC, v0, &v2);

    v1 = 0x800 + v2.unk_0C;
    NARC_Seek(param7->unk_EC, v1);

    DC_FlushRange((void *)param7->unk_84[param1]->unk_854, v2.unk_04);
    v3 = ov5_021E97AC(param7->unk_EC, v2.unk_04, &param7->unk_84[param1]->unk_800, &(param7->unk_84[param1]->unk_854), AreaDataManager_GetMapTexture(param2));

    if (param6 == 1) {
        AreaLight_UseGlobalModelAttributes(v3);
    }

    param7->unk_84[param1]->unk_864 = 1;
    param7->unk_84[param1]->unk_860 = param0;
}

void ov5_021E9C0C(const UnkStruct_ov5_021E8F60 *param0, const ModelAttributes *param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_84[v0]->unk_860 != -1) {
            ov5_021E9C40(v0, param0, param1);
        }
    }
}

static void ov5_021E9C40(const u8 param0, const UnkStruct_ov5_021E8F60 *param1, const ModelAttributes *param2)
{
    VecFx32 v0 = { 0, 0, 0 };
    VecFx32 v1 = { FX32_ONE, FX32_ONE, FX32_ONE };
    MtxFx33 v2 = { FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE };

    ov5_021E901C(param1->unk_84[param0]->unk_860, param1->unk_B4, param1->unk_B0, &v0);

    v0.x += param1->unk_10C.x;
    v0.y += param1->unk_10C.y;
    v0.z += param1->unk_10C.z;

    if (param1->unk_84[param0]->unk_864 == 1) {
        Easy3D_DrawRenderObj(&(param1->unk_84[param0]->unk_800), &v0, &v2, &v1);
    }
}

void ov5_021E9CD8(UnkStruct_ov5_021E8F60 *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        ov5_021E7814(&param0->unk_04[v0].unk_00);
    }

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_84[v0]->unk_864 = 0;
    }

    param0->unk_A8 = 3;
    param0->unk_A4 = 1;
    param0->unk_C0.unk_20 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        MI_CpuFillFast(param0->unk_84[v0]->unk_00, 0xffffffff, 2 * 32 * 32);
    }
}

void ov5_021E9D3C(MapMatrix *param0, AreaDataManager *param1, UnkStruct_ov5_021E8F60 *param2, UnkStruct_ov5_021E8F60 *param3, const int param4, const int param5)
{
    int v0;
    int v1[4];

    ov5_021EEC24(param2->unk_00, param3->unk_00);
    MapMatrix_Copy(param0, param3->unk_B0);

    for (v0 = 0; v0 < 2; v0++) {
        param3->unk_04[v0] = param2->unk_04[v0];
    }

    for (v0 = 0; v0 < 4; v0++) {
        param3->unk_74[v0] = param2->unk_74[v0];
    }

    param3->unk_94 = param2->unk_94;
    param3->unk_95 = param2->unk_95;
    param3->unk_96 = param2->unk_96;
    param3->unk_98 = param2->unk_98;
    param3->unk_9C = param2->unk_9C;
    param3->unk_A0 = param2->unk_A0;
    param3->unk_A1 = param2->unk_A1;

    for (v0 = 0; v0 < 4; v0++) {
        param3->unk_84[v0]->unk_800 = param2->unk_84[v0]->unk_800;
        param3->unk_84[v0]->unk_854 = param2->unk_84[v0]->unk_854;
        param3->unk_84[v0]->unk_864 = param2->unk_84[v0]->unk_864;
        param3->unk_84[v0]->unk_860 = param2->unk_84[v0]->unk_860;
    }

    param3->unk_AC = param1;
    param3->unk_B4 = param2->unk_B4;
    param3->unk_B8 = param2->unk_B8;
    param3->unk_BC = param2->unk_B4 * 32;
    param3->unk_C0 = param2->unk_C0;
    param3->unk_F8 = param2->unk_F8;
    param3->unk_100 = param2->unk_100;
    param3->unk_104 = param2->unk_104;
    param3->unk_108 = param2->unk_108;
    param3->unk_10C = param2->unk_10C;

    ov5_021E8F90(param4, param5, param3->unk_100, param3->unk_108, param3);

    param3->unk_A4 = 0;
    param3->unk_A8 = param2->unk_A8;

    for (v0 = 0; v0 < 4; v0++) {
        v1[v0] = param3->unk_84[v0]->unk_860;
        BDHC_MarkNotLoaded(param3->unk_84[v0]->bdhc);
    }

    for (v0 = 0; v0 < 4; v0++) {
        ov5_021E7FF0(v1[v0], v0, param3->unk_AC, param3->unk_B0, param3->unk_B4, param3->unk_B8, AreaDataManager_IsOutdoorsLighting(param3->unk_AC), param3);
    }
}

void ov5_021E9F98(UnkStruct_ov5_021E8F60 *param0, UnkStruct_ov5_021E8F60 *param1)
{
    int v0;
    int v1[4];

    ov5_021EEC24(param1->unk_00, param0->unk_00);
    MapMatrix_Copy(param1->unk_B0, param0->unk_B0);

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_04[v0] = param1->unk_04[v0];
    }

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_74[v0] = param1->unk_74[v0];
    }

    param0->unk_94 = param1->unk_94;
    param0->unk_95 = param1->unk_95;
    param0->unk_96 = param1->unk_96;
    param0->unk_98 = param1->unk_98;
    param0->unk_9C = param1->unk_9C;
    param0->unk_A0 = param1->unk_A0;
    param0->unk_A1 = param1->unk_A1;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_84[v0]->unk_800 = param1->unk_84[v0]->unk_800;
        param0->unk_84[v0]->unk_854 = param1->unk_84[v0]->unk_854;
        param0->unk_84[v0]->unk_864 = param1->unk_84[v0]->unk_864;
        param0->unk_84[v0]->unk_860 = param1->unk_84[v0]->unk_860;
    }

    param0->unk_AC = param1->unk_AC;
    param0->unk_B4 = param1->unk_B4;
    param0->unk_B8 = param1->unk_B8;
    param0->unk_BC = param1->unk_B4 * 32;
    param0->unk_C0 = param1->unk_C0;
    param0->unk_F8 = param1->unk_F8;
    param0->unk_100 = param1->unk_100;
    param0->unk_104 = param1->unk_104;
    param0->unk_108 = param1->unk_108;
    param0->unk_10C = param1->unk_10C;
    param0->unk_A4 = 0;
    param0->unk_A8 = param1->unk_A8;
}

void ov5_021EA174(FieldSystem *fieldSystem, UnkStruct_ov5_021E8F60 *param1)
{
    u8 v0;
    UnkStruct_ov5_021E7814 *v1;
    UnkStruct_ov5_021EA174 *v2;

    v1 = &param1->unk_04[param1->unk_96].unk_00;
    v2 = &param1->unk_C0;

    if ((param1->unk_F8 == 0) && (v2->unk_20 == 1)) {
        if (v2->unk_18) {
            GF_ASSERT((*v2->unk_14) <= (*v2->unk_10));

            if ((*v2->unk_10) - (*v2->unk_14) >= (FX32_ONE * 16)) {
                int v3, v4;

                ov5_021E9230(v2->unk_0C->x, v2->unk_0C->z, &v3, &v4);
                ov5_021E8F90(v3, v4, param1->unk_100, param1->unk_108, param1);

                v2->unk_00 = *v2->unk_0C;

                if (!(v2->unk_00.z % (FX32_ONE * 8) == 0)) {
                    if (Link_SetErrorState(1)) {
                        return;
                    }
                }

                GF_ASSERT(v2->unk_00.z % (FX32_ONE * 8) == 0);

                v2->unk_18 = 0;
                v2->unk_10 = NULL;
                v2->unk_14 = NULL;
            }
        } else {
            if ((v2->unk_00.x != v2->unk_0C->x) && (v2->unk_00.z != v2->unk_0C->z)) {
                GF_ASSERT(FALSE);
            } else if ((v2->unk_00.x == v2->unk_0C->x) && (v2->unk_00.z == v2->unk_0C->z)) {
                (void)0;
            } else {
                v2->unk_18 = 1;

                if (v2->unk_00.x != v2->unk_0C->x) {
                    if (v2->unk_00.x > v2->unk_0C->x) {
                        v2->unk_10 = &v2->unk_00.x;
                        v2->unk_14 = &v2->unk_0C->x;
                        v2->unk_1C = 3;
                    } else {
                        v2->unk_10 = &v2->unk_0C->x;
                        v2->unk_14 = &v2->unk_00.x;
                        v2->unk_1C = 1;
                    }

                    if (!(v2->unk_00.x % (FX32_ONE * 8) == 0)) {
                        if (Link_SetErrorState(1)) {
                            return;
                        }
                    }

                    GF_ASSERT(v2->unk_00.x % (FX32_ONE * 8) == 0);
                } else {
                    if (param1->unk_C0.unk_00.z > param1->unk_C0.unk_0C->z) {
                        v2->unk_10 = &v2->unk_00.z;
                        v2->unk_14 = &v2->unk_0C->z;
                        v2->unk_1C = 4;
                    } else {
                        v2->unk_10 = &v2->unk_0C->z;
                        v2->unk_14 = &v2->unk_00.z;
                        v2->unk_1C = 2;
                    }

                    if (!(v2->unk_00.z % (FX32_ONE * 8) == 0)) {
                        if (Link_SetErrorState(1)) {
                            return;
                        }
                    }

                    GF_ASSERT(v2->unk_00.z % (FX32_ONE * 8) == 0);
                }

                ov5_021E9190(v2->unk_1C, param1);
            }
        }
    }

    switch (param1->unk_A8) {
    case 0:
        if (param1->unk_74[v1->unk_20[v1->unk_22]] == 1) {
            (void)0;
        } else {
            ov5_021E7D98(v1->unk_22, param1->unk_AC, param1->unk_B0, param1->unk_B4, param1->unk_B8, param1, v1);
        }

        v1->unk_22++;
        param1->unk_A8 = 1;
        break;
    case 1:
        if (param1->unk_74[v1->unk_20[v1->unk_22 - 1]] == 1) {
            ov5_021E7814(v1);
            param1->unk_74[v1->unk_20[v1->unk_22 - 1]] = 0;
        }

        if ((v1->unk_22 <= 2) && (ov5_021E80BC(&v1->unk_10) == 1)) {
            if (v1->unk_22 >= 2) {
                v1->unk_24 = 1;
            } else {
                param1->unk_A8 = 0;
            }

            if (v1->unk_00[v1->unk_22 - 1]->unk_864 == 1) {
                NNSG3dResMdlSet *v5 = NNS_G3dGetMdlSet(v1->unk_00[v1->unk_22 - 1]->unk_854);
                NNSG3dResMdl *v6 = NNS_G3dGetMdlByIdx(v5, 0);

                if (AreaDataManager_IsOutdoorsLighting(param1->unk_AC) == 1) {
                    AreaLight_UseGlobalModelAttributes(v6);
                }
            }

            if (param1->unk_F0 != NULL) {
                if ((0 <= v1->unk_00[v1->unk_22 - 1]->unk_860) && (v1->unk_00[v1->unk_22 - 1]->unk_860 < param1->unk_B4 * param1->unk_B8)) {
                    param1->unk_F0(param1->unk_F4, v1->unk_00[v1->unk_22 - 1]->unk_860, v1->unk_00[v1->unk_22 - 1]->unk_868);
                }
            }
        }
        break;
    case 2:
        break;
    case 3:
        if (ov5_021E80BC(&v1->unk_10) == 1) {
            param1->unk_94 = 0;
        }
        break;
    }

    if (param1->unk_94 == 0) {
        param1->unk_96 = 0;
        param1->unk_95 = 0;
        param1->unk_A8 = 2;
        return;
    }

    if (ov5_021E8DAC(param1) == 1) {
        param1->unk_04[param1->unk_96].unk_28 = 0;
        ov5_021E8DBC(param1);
        param1->unk_94--;
        param1->unk_96 = (param1->unk_96 + 1) % 2;

        if (param1->unk_94 != 0) {
            param1->unk_A8 = 0;
        } else {
            param1->unk_96 = 0;
            param1->unk_95 = 0;
            param1->unk_A8 = 2;
        }

        if (param1->unk_5C.unk_08 == 1) {
            BOOL v7;

            param1->unk_5C.unk_08 = 0;

            ov5_021E8DD4(param1->unk_5C.unk_0C, param1);
            ov5_021E8D50(param1);
        }
    }
}

void ov5_021EA540(UnkStruct_ov5_021E8F60 *param0, MapMatrix *param1, AreaDataManager *param2)
{
    param0->unk_AC = param2;
    param0->unk_B0 = param1;
    param0->unk_B4 = MapMatrix_GetWidth(param1);
    param0->unk_B8 = MapMatrix_GetHeight(param1);
    param0->unk_BC = param0->unk_B4 * 32;

    ov5_021E8F60(param0);

    param0->unk_A4 = 0;
    param0->unk_A8 = 2;
}

void ov5_021EA58C(UnkStruct_ov5_021E8F60 *param0, const int param1, const int param2, int *param3)
{
    int v0;

    ov5_021E7838(param0->unk_F8, param1, param2, param0->unk_100, param0->unk_108, param0->unk_B4, param0->unk_B8, param0->unk_BC, param3);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_84[v0]->unk_864 = 0;
    }
}

void ov5_021EA5E0(UnkStruct_ov5_021E8F60 *param0, int param1, int param2)
{
    param0->unk_84[param1]->unk_864 = 0;
    ov5_021EEB84(param1, param0->unk_00, (void **)&(param0->unk_84[param1]->unk_854));
    ov5_021EEB90(param1, param0->unk_00, (void **)&(param0->unk_84[param1]->bdhcBuffer));
    param0->unk_84[param1]->unk_860 = -1;

    MI_CpuFillFast(param0->unk_84[param1]->unk_00, 0xffffffff, 2 * 32 * 32);

    BDHC_MarkNotLoaded(param0->unk_84[param1]->bdhc);
    ov5_021E7E28(param2, param1, param0->unk_AC, param0->unk_B0, param0->unk_B4, param0->unk_B8, AreaDataManager_IsOutdoorsLighting(param0->unk_AC), param0);
}

void ov5_021EA678(UnkStruct_ov5_021E8F60 *param0, int param1, int param2, int param3)
{
    param0->unk_100 = param1;
    param0->unk_104 = param2;
    param0->unk_108 = param3;
    param0->unk_10C.x = param1 * 16 * FX32_ONE;
    param0->unk_10C.y = param2 * 16 * FX32_ONE;
    param0->unk_10C.z = param3 * 16 * FX32_ONE;
}

void ov5_021EA6A4(UnkStruct_ov5_021E8F60 *param0, int param1)
{
    param0->unk_F8 = param1;
}

int ov5_021EA6AC(const UnkStruct_ov5_021E8F60 *param0)
{
    return param0->unk_100;
}

int ov5_021EA6B4(const UnkStruct_ov5_021E8F60 *param0)
{
    return param0->unk_108;
}

void ov5_021EA6BC(const UnkStruct_ov5_021E8F60 *param0, VecFx32 *param1)
{
    *param1 = param0->unk_10C;
}

void ov5_021EA6D0(UnkStruct_ov5_021E8F60 *param0, int param1)
{
    param0->unk_FC = param1;
}

void ov5_021EA6D8(UnkStruct_ov5_021E8F60 *param0, MapMatrix *param1)
{
    param0->unk_B0 = param1;
}

void ov5_021EA6E0(UnkStruct_ov5_021E8F60 *param0, int param1, BOOL param2)
{
    param0->unk_84[param1]->unk_864 = param2;
}

void ov5_021EA6F4(UnkStruct_ov5_021E8F60 *param0, int param1, int param2)
{
    ov5_021E8F90(param1, param2, param0->unk_100, param0->unk_108, param0);
}
