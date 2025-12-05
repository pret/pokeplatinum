#include "overlay005/ov5_021DF440.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02020C44_decl.h"
#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_020217F4.h"
#include "struct_defs/struct_02024184.h"

#include "field/field_system.h"
#include "overlay005/area_light.h"
#include "overlay005/const_ov5_021FF85C.h"
#include "overlay005/ov5_021F067C.h"
#include "overlay005/struct_ov5_021DF7F8.h"
#include "overlay005/struct_ov5_021DF84C.h"
#include "overlay005/struct_ov5_021EDDAC.h"
#include "overlay005/struct_ov5_021F06D8_decl.h"
#include "overlay005/struct_ov5_021FF85C.h"

#include "heap.h"
#include "map_object.h"
#include "narc.h"
#include "overworld_anim_manager.h"
#include "resource_collection.h"
#include "simple3d.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02020AEC.h"
#include "unk_0202414C.h"

typedef struct UnkStruct_ov5_021DF6AC_t UnkStruct_ov5_021DF6AC;
typedef struct UnkStruct_ov5_021DF8FC_t UnkStruct_ov5_021DF8FC;
typedef struct UnkStruct_ov5_021DF8C8_t UnkStruct_ov5_021DF8C8;

typedef struct UnkStruct_ov5_021DF47C_t {
    u32 heapID;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    FieldSystem *fieldSystem;
    UnkStruct_ov5_021DF6AC *unk_14;
    NARC *unk_18;
    OverworldAnimManagerList *unk_1C;
    UnkStruct_ov5_021DF8FC *unk_20;
} UnkStruct_ov5_021DF47C;

typedef struct UnkStruct_ov5_021DF6AC_t {
    u32 unk_00;
    void *unk_04;
} UnkStruct_ov5_021DF6AC;

typedef struct UnkStruct_ov5_021DF8FC_t {
    u32 heapID;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
    UnkStruct_02020C44 *unk_0C;
    UnkStruct_ov5_021F06D8 *unk_10;
    UnkStruct_ov5_021F06D8 *unk_14;
    TextureResourceManager *unk_18;
    UnkStruct_ov5_021DF8C8 *unk_1C;
    UnkStruct_ov5_021DF84C *unk_20;
} UnkStruct_ov5_021DF8FC;

typedef struct UnkStruct_ov5_021DF8C8_t {
    u32 unk_00;
    UnkStruct_ov5_021DF84C *unk_04;
};

typedef struct {
    u32 unk_00;
    u32 unk_04;
    TextureResourceManager *unk_08;
} UnkStruct_ov5_021DFA88;

static u32 ov5_021DF584(const UnkStruct_ov5_021DF47C *renderManager);
static void ov5_021DF588(UnkStruct_ov5_021DF47C *renderManager);
static void ov5_021DF59C(UnkStruct_ov5_021DF47C *renderManager);
static void ov5_021DF5E8(UnkStruct_ov5_021DF47C *renderManager);
static void ov5_021DF600(UnkStruct_ov5_021DF47C *renderManager, u32 objectID);
static void ov5_021DF628(UnkStruct_ov5_021DF47C *renderManager, UnkStruct_ov5_021DF6AC *param1);
static void ov5_021DF644(UnkStruct_ov5_021DF47C *renderManager);
static UnkStruct_ov5_021DF6AC *ov5_021DF66C(UnkStruct_ov5_021DF47C *renderManager);
static UnkStruct_ov5_021DF6AC *ov5_021DF694(UnkStruct_ov5_021DF47C *renderManager, u32 objectID);
static void ov5_021DF6AC(UnkStruct_ov5_021DF6AC *param0);
static void ov5_021DF6B8(UnkStruct_ov5_021DF6AC *param0, u32 param1, void *param2);
static int ov5_021DF6C0(const UnkStruct_ov5_021DF6AC *param0);
static const UnkStruct_ov5_021FF85C *ov5_021DF6D0(u32 param0);
static void ov5_021DF6F8(UnkStruct_ov5_021DF47C *renderManager);
static void ov5_021DF708(UnkStruct_ov5_021DF47C *renderManager);
static void ov5_021DF71C(UnkStruct_ov5_021DF47C *renderManager);
static void ov5_021DF754(UnkStruct_ov5_021DF47C *param0, u32 heapID, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8);
static void ov5_021DF7C4(UnkStruct_ov5_021DF47C *renderManager);
static void ov5_021DF8C8(UnkStruct_ov5_021DF47C *renderManager, UnkStruct_ov5_021DF8FC *graphicsManager, u32 objectCount);
static void ov5_021DF8FC(UnkStruct_ov5_021DF8FC *graphicsManager);
static UnkStruct_ov5_021DF84C *ov5_021DF9B4(UnkStruct_ov5_021DF8FC *graphicsManager, u32 objectID);
static void ov5_021DF910(UnkStruct_ov5_021DF8FC *graphicsManager, u32 objectID);
static UnkStruct_ov5_021DF84C *ov5_021DF930(UnkStruct_ov5_021DF8FC *graphicsManager, u32 objectID, void *modelData, UnkStruct_02024184 *textureData, void *textureResource, TextureResource *texture, const UnkStruct_020217F4 *effectData);
static void ov5_021DFA88(UnkStruct_ov5_021DF47C *renderManager, u32 slotID, TextureResourceManager *textureManager);
static void ov5_021DFAC0(SysTask *param0, void *param1);
static void ov5_021DFADC(SysTask *param0, void *param1);

UnkStruct_ov5_021DF47C *ov5_021DF440(FieldSystem *fieldSystem, u32 param1, u32 heapID)
{
    UnkStruct_ov5_021DF47C *v0 = Heap_Alloc(heapID, (sizeof(UnkStruct_ov5_021DF47C)));
    memset(v0, 0, (sizeof(UnkStruct_ov5_021DF47C)));

    v0->heapID = heapID;
    v0->unk_04 = param1;
    v0->fieldSystem = fieldSystem;
    v0->unk_14 = Heap_Alloc(heapID, (sizeof(UnkStruct_ov5_021DF6AC)) * param1);

    ov5_021DF5E8(v0);
    ov5_021DF588(v0);

    return v0;
}

void ov5_021DF47C(UnkStruct_ov5_021DF47C *param0, u32 param1)
{
    param0->unk_08 = param1;
    ov5_021DF6F8(param0);
}

void ov5_021DF488(UnkStruct_ov5_021DF47C *param0, u32 heapID, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8)
{
    ov5_021DF754(param0, heapID, param2, param3, param4, param5, param6, param7, param8);
}

void ov5_021DF4A8(UnkStruct_ov5_021DF47C *renderManager, u32 objectID)
{
    if (ov5_021DF694(renderManager, objectID) != NULL) {
        GF_ASSERT(FALSE);
        return;
    }

    ov5_021DF600(renderManager, objectID);
}

void ov5_021DF4C8(UnkStruct_ov5_021DF47C *renderManager, const u32 *param1)
{
    while ((*param1) != 34) {
        ov5_021DF4A8(renderManager, (*param1));
        param1++;
    }
}

int ov5_021DF4E4(UnkStruct_ov5_021DF47C *renderManager, u32 objectID)
{
    if (ov5_021DF694(renderManager, objectID) == NULL) {
        return 0;
    }

    return 1;
}

void ov5_021DF4F8(UnkStruct_ov5_021DF47C *param0)
{
    ov5_021DF71C(param0);
}

void ov5_021DF500(UnkStruct_ov5_021DF47C *param0)
{
    ov5_021DF708(param0);
    ov5_021DF644(param0);
    ov5_021DF7C4(param0);
    ov5_021DF59C(param0);
    Heap_Free(param0->unk_14);
    Heap_Free(param0);
}

void *ov5_021DF528(const UnkStruct_ov5_021DF47C *param0, u32 param1, int param2)
{
    void *v0;

    if (param2 == 0) {
        v0 = Heap_Alloc(param0->heapID, param1);
    } else {
        v0 = Heap_AllocAtEnd(param0->heapID, param1);
    }

    return v0;
}

void *ov5_021DF53C(const UnkStruct_ov5_021DF47C *param0, u32 param1, int param2, u32 param3)
{
    void *v0 = ov5_021DF528(param0, param1, param2);

    memset(v0, param3, param1);
    return v0;
}

void ov5_021DF554(void *param0)
{
    Heap_Free(param0);
}

void *ov5_021DF55C(UnkStruct_ov5_021DF47C *renderManager, u32 objectID)
{
    UnkStruct_ov5_021DF6AC *v0 = ov5_021DF694(renderManager, objectID);

    if (v0 == NULL) {
        GF_ASSERT(0);
        return NULL;
    }

    return v0->unk_04;
}

FieldSystem *ov5_021DF574(const UnkStruct_ov5_021DF47C *param0)
{
    return param0->fieldSystem;
}

UnkStruct_ov5_021DF47C *ov5_021DF578(const MapObject *mapObject)
{
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObject);
    return (UnkStruct_ov5_021DF47C *)fieldSystem->unk_40;
}

static u32 ov5_021DF584(const UnkStruct_ov5_021DF47C *param0)
{
    return param0->heapID;
}

static void ov5_021DF588(UnkStruct_ov5_021DF47C *param0)
{
    param0->unk_18 = NARC_ctor(NARC_INDEX_DATA__MMODEL__FLDEFF, ov5_021DF584(param0));
}

static void ov5_021DF59C(UnkStruct_ov5_021DF47C *param0)
{
    NARC_dtor(param0->unk_18);
}

u32 ov5_021DF5A8(UnkStruct_ov5_021DF47C *param0, u32 param1)
{
    u32 v0 = NARC_GetMemberSize(param0->unk_18, param1);
    return v0;
}

void ov5_021DF5B4(UnkStruct_ov5_021DF47C *param0, u32 param1, void *param2)
{
    NARC_ReadWholeMember(param0->unk_18, param1, param2);
}

void *ov5_021DF5C0(UnkStruct_ov5_021DF47C *param0, u32 param1, int param2)
{
    u32 v0 = NARC_GetMemberSize(param0->unk_18, param1);
    void *v1 = ov5_021DF528(param0, v0, param2);

    NARC_ReadWholeMember(param0->unk_18, param1, v1);

    return v1;
}

static void ov5_021DF5E8(UnkStruct_ov5_021DF47C *param0)
{
    u32 v0 = param0->unk_04;
    UnkStruct_ov5_021DF6AC *v1 = param0->unk_14;

    while (v0) {
        ov5_021DF6AC(v1);
        v1++;
        v0--;
    }
}

static void ov5_021DF600(UnkStruct_ov5_021DF47C *renderManager, u32 objectID)
{
    const UnkStruct_ov5_021FF85C *v0 = ov5_021DF6D0(objectID);
    void *v1 = v0->unk_04(renderManager);
    UnkStruct_ov5_021DF6AC *v2 = ov5_021DF66C(renderManager);

    ov5_021DF6B8(v2, objectID, v1);
}

static void ov5_021DF628(UnkStruct_ov5_021DF47C *param0, UnkStruct_ov5_021DF6AC *param1)
{
    const UnkStruct_ov5_021FF85C *v0 = ov5_021DF6D0(param1->unk_00);

    v0->unk_08(param1->unk_04);
    ov5_021DF6AC(param1);
}

static void ov5_021DF644(UnkStruct_ov5_021DF47C *param0)
{
    u32 v0 = param0->unk_04;
    UnkStruct_ov5_021DF6AC *v1 = param0->unk_14;

    while (v0) {
        if (ov5_021DF6C0(v1) == 0) {
            ov5_021DF628(param0, v1);
        }

        v1++;
        v0--;
    }
}

static UnkStruct_ov5_021DF6AC *ov5_021DF66C(UnkStruct_ov5_021DF47C *param0)
{
    u32 v0 = param0->unk_04;
    UnkStruct_ov5_021DF6AC *v1 = param0->unk_14;

    while (v0) {
        if (ov5_021DF6C0(v1) == 1) {
            return v1;
        }

        v1++;
        v0--;
    }

    GF_ASSERT(FALSE);
    return NULL;
}

static UnkStruct_ov5_021DF6AC *ov5_021DF694(UnkStruct_ov5_021DF47C *renderManager, u32 objectID)
{
    u32 v0 = renderManager->unk_04;
    UnkStruct_ov5_021DF6AC *v1 = renderManager->unk_14;

    while (v0) {
        if (v1->unk_00 == objectID) {
            return v1;
        }

        v1++;
        v0--;
    }

    return NULL;
}

static void ov5_021DF6AC(UnkStruct_ov5_021DF6AC *param0)
{
    param0->unk_00 = 34;
    param0->unk_04 = NULL;
}

static void ov5_021DF6B8(UnkStruct_ov5_021DF6AC *param0, u32 param1, void *param2)
{
    param0->unk_00 = param1;
    param0->unk_04 = param2;
}

static int ov5_021DF6C0(const UnkStruct_ov5_021DF6AC *param0)
{
    if (param0->unk_00 == 34) {
        return 1;
    }

    return 0;
}

static const UnkStruct_ov5_021FF85C *ov5_021DF6D0(u32 param0)
{
    const UnkStruct_ov5_021FF85C *v0 = Unk_ov5_021FF85C;

    while (v0->unk_00 != 34) {
        if (v0->unk_00 == param0) {
            return v0;
        }

        v0++;
    }

    GF_ASSERT(FALSE);
    return NULL;
}

static void ov5_021DF6F8(UnkStruct_ov5_021DF47C *param0)
{
    param0->unk_1C = OverworldAnimManagerList_New(param0->heapID, param0->unk_08);
}

static void ov5_021DF708(UnkStruct_ov5_021DF47C *param0)
{
    if (param0->unk_1C != NULL) {
        OverworldAnimManagerList_FinishAndFree(param0->unk_1C);
        param0->unk_1C = NULL;
    }
}

static void ov5_021DF71C(UnkStruct_ov5_021DF47C *param0)
{
    if (param0->unk_1C != NULL) {
        OverworldAnimManagerList_Render(param0->unk_1C);
    }
}

OverworldAnimManager *ov5_021DF72C(const UnkStruct_ov5_021DF47C *param0, const OverworldAnimManagerFuncs *param1, const VecFx32 *param2, int param3, const void *param4, int param5)
{
    OverworldAnimManagerList *v1 = param0->unk_1C;
    OverworldAnimManager *v0 = OverworldAnimManagerList_InitManager(v1, param1, param2, param3, param4, param5);

    GF_ASSERT(v0 != NULL);

    return v0;
}

void ov5_021DF74C(OverworldAnimManager *param0)
{
    OverworldAnimManager_Finish(param0);
}

static void ov5_021DF754(UnkStruct_ov5_021DF47C *param0, u32 heapID, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8)
{
    UnkStruct_ov5_021DF8FC *v0;
    UnkStruct_ov5_021EDDAC v1;

    v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021DF8FC)), 0, 0);
    param0->unk_20 = v0;

    v0->heapID = heapID;
    v0->unk_04 = param2;
    v0->unk_06 = param3;
    v0->unk_08 = param4;
    v0->unk_0A = param5;
    v0->unk_10 = ov5_021F067C(heapID, HEAP_ID_69, param6, param3);
    v0->unk_14 = ov5_021F067C(heapID, HEAP_ID_70, param7, param4);
    v0->unk_18 = TextureResourceManager_New(param5, heapID);

    ov5_021DF8C8(param0, v0, param2);

    v1.unk_00 = param2;
    v1.heapID = ov5_021DF584(param0);
    v0->unk_0C = sub_02020C44(&v1);
}

static void ov5_021DF7C4(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_ov5_021DF8FC *v0 = param0->unk_20;

    if (v0 != NULL) {
        sub_02020CCC(v0->unk_0C);
        ov5_021DF8FC(v0);
        ov5_021F06D8(v0->unk_10);
        ov5_021F06D8(v0->unk_14);
        TextureResourceManager_Delete(v0->unk_18);
        ov5_021DF554(v0);

        param0->unk_20 = NULL;
    }
}

UnkStruct_020216E0 *ov5_021DF7F8(UnkStruct_ov5_021DF47C *param0, const UnkStruct_ov5_021DF84C *param1, const VecFx32 *param2)
{
    UnkStruct_ov5_021DF7F8 v0;
    UnkStruct_020216E0 *v1;
    UnkStruct_02020C44 *v2;
    VecFx32 v3 = { FX32_ONE, FX32_ONE, FX32_ONE };

    v2 = param0->unk_20->unk_0C;

    v0.unk_00 = v2;
    v0.unk_04 = param1;
    v0.unk_08 = *param2;
    v0.unk_14 = v3;

    v1 = sub_0202119C(&v0);
    GF_ASSERT(v1 != NULL);

    if (v1 != NULL) {
        NNS_G3dMdlSetMdlFogEnableFlagAll(sub_020213F4(v1), 1);
        AreaLight_UseGlobalModelAttributes(sub_020213F4(v1));
    }

    return v1;
}

UnkStruct_020216E0 *ov5_021DF84C(UnkStruct_ov5_021DF47C *param0, u32 param1, const VecFx32 *param2)
{
    UnkStruct_ov5_021DF84C *v0 = ov5_021DF9B4(param0->unk_20, param1);
    return ov5_021DF7F8(param0, v0, param2);
}

UnkStruct_ov5_021DF84C *ov5_021DF864(UnkStruct_ov5_021DF47C *param0, u32 param1, u32 param2, u32 param3, u32 param4, int param5, const UnkStruct_020217F4 *param6)
{
    void *v0, *v1, *v2;
    UnkStruct_02024184 v3;
    TextureResource *v4;
    UnkStruct_ov5_021DF84C *v5;
    UnkStruct_ov5_021DF8FC *v6 = param0->unk_20;
    v0 = ov5_021F075C(v6->unk_10, param2);
    v2 = ov5_021F075C(v6->unk_14, param3);

    sub_02024184(v2, &v3);

    v4 = TextureResourceManager_FindTextureResource(v6->unk_18, param4);
    GF_ASSERT(v4 != NULL);
    v1 = TextureResource_GetUnderlyingResource(v4);

    if (param5 == 1) {
        v4 = NULL;
    }

    v5 = ov5_021DF930(v6, param1, v0, &v3, v1, v4, param6);
    GF_ASSERT(v5 != NULL);

    return v5;
}

static void ov5_021DF8C8(UnkStruct_ov5_021DF47C *param0, UnkStruct_ov5_021DF8FC *param1, u32 param2)
{
    UnkStruct_ov5_021DF84C *v0;
    UnkStruct_ov5_021DF8C8 *v1;

    v0 = ov5_021DF528(param0, sizeof(UnkStruct_ov5_021DF84C) * param2, 0);
    param1->unk_20 = v0;

    v1 = ov5_021DF528(param0, (sizeof(UnkStruct_ov5_021DF8C8)) * param2, 0);
    param1->unk_1C = v1;

    do {
        v1->unk_00 = 17;
        v1->unk_04 = v0;
        v1++;
        v0++;
        param2--;
    } while (param2);
}

static void ov5_021DF8FC(UnkStruct_ov5_021DF8FC *param0)
{
    ov5_021DF554(param0->unk_1C);
    ov5_021DF554(param0->unk_20);
}

static void ov5_021DF910(UnkStruct_ov5_021DF8FC *param0, u32 param1)
{
    u32 v0 = param0->unk_04;
    UnkStruct_ov5_021DF8C8 *v1 = param0->unk_1C;

    do {
        if (v1->unk_00 == param1) {
            v1->unk_00 = 17;
            return;
        }

        v1++;
        v0--;
    } while (v0);

    GF_ASSERT(FALSE);
}

static UnkStruct_ov5_021DF84C *ov5_021DF930(UnkStruct_ov5_021DF8FC *param0, u32 param1, void *param2, UnkStruct_02024184 *param3, void *param4, TextureResource *param5, const UnkStruct_020217F4 *param6)
{
    UnkStruct_ov5_021DF84C *v0 = NULL;

    {
        u32 v1 = param0->unk_04;
        UnkStruct_ov5_021DF8C8 *v2 = param0->unk_1C;

        do {
            if (v2->unk_00 == param1) {
                return v2->unk_04;
            }

            v2++;
            v1--;
        } while (v1);

        v2 = param0->unk_1C;
        v1 = param0->unk_04;

        do {
            if (v2->unk_00 == 17) {
                v2->unk_00 = param1;
                v0 = v2->unk_04;
                break;
            }

            v2++;
            v1--;
        } while (v1);
    }

    GF_ASSERT(v0 != NULL);
    memset(v0, 0, sizeof(UnkStruct_ov5_021DF84C));

    v0->unk_00 = param2;
    v0->unk_0C = *param3;
    v0->unk_04 = param4;

    if (param5 != NULL) {
        v0->unk_1C = TextureResource_GetTexKey(param5);
        v0->unk_20 = TextureResource_GetTex4x4Key(param5);
        v0->unk_24 = TextureResource_GetPaletteKey(param5);
    }

    v0->unk_08 = param6;
    return v0;
}

static UnkStruct_ov5_021DF84C *ov5_021DF9B4(UnkStruct_ov5_021DF8FC *param0, u32 param1)
{
    u32 v0 = param0->unk_04;
    UnkStruct_ov5_021DF8C8 *v1 = param0->unk_1C;

    do {
        if (v1->unk_00 == param1) {
            return v1->unk_04;
        }

        v1++;
        v0--;
    } while (v0);

    GF_ASSERT(FALSE);
    return NULL;
}

void ov5_021DF9D4(UnkStruct_ov5_021DF47C *renderManager, u32 slotID)
{
    UnkStruct_ov5_021DF8FC *v0 = renderManager->unk_20;
    ov5_021DF910(v0, slotID);
}

void ov5_021DF9E0(UnkStruct_ov5_021DF47C *renderManager, u32 slotID, u32 resourceID)
{
    UnkStruct_ov5_021DF8FC *v0 = renderManager->unk_20;

    ov5_021F0784(v0->unk_10, slotID, renderManager->unk_18, resourceID, 0);
}

void *ov5_021DF9FC(UnkStruct_ov5_021DF47C *renderManager, u32 slotID)
{
    UnkStruct_ov5_021DF8FC *v0 = renderManager->unk_20;
    void *v1 = ov5_021F075C(v0->unk_10, slotID);

    return v1;
}

void ov5_021DFA08(UnkStruct_ov5_021DF47C *renderManager, u32 slotID)
{
    UnkStruct_ov5_021DF8FC *v0 = renderManager->unk_20;
    ov5_021F0740(v0->unk_10, slotID);
}

void ov5_021DFA14(UnkStruct_ov5_021DF47C *renderManager, u32 slotID, u32 resourceID)
{
    UnkStruct_ov5_021DF8FC *v0 = renderManager->unk_20;
    ov5_021F0784(v0->unk_14, slotID, renderManager->unk_18, resourceID, 0);
}

void ov5_021DFA30(UnkStruct_ov5_021DF47C *renderManager, u32 slotID)
{
    UnkStruct_ov5_021DF8FC *v0 = renderManager->unk_20;
    ov5_021F0740(v0->unk_14, slotID);
}

void ov5_021DFA3C(UnkStruct_ov5_021DF47C *renderManager, u32 slotID, u32 param2, u32 param3)
{
    UnkStruct_ov5_021DF8FC *v0 = renderManager->unk_20;
    void *v1 = ov5_021DF5C0(renderManager, param2, 1);
    TextureResource *v2 = TextureResourceManager_AddTextureAndAllocVRam(v0->unk_18, v1, slotID, param3, ov5_021DF584(renderManager));

    GF_ASSERT(v2 != NULL);
    ov5_021DFA88(renderManager, slotID, v0->unk_18);
}

void ov5_021DFA7C(UnkStruct_ov5_021DF47C *renderManager, u32 slotID)
{
    UnkStruct_ov5_021DF8FC *v0 = renderManager->unk_20;
    TextureResourceManager_RemoveTextureWithID(v0->unk_18, slotID);
}

static void ov5_021DFA88(UnkStruct_ov5_021DF47C *param0, u32 param1, TextureResourceManager *param2)
{
    UnkStruct_ov5_021DFA88 *v0 = ov5_021DF528(param0, (sizeof(UnkStruct_ov5_021DFA88)), 1);

    v0->unk_00 = 1;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    SysTask_ExecuteOnVBlank(ov5_021DFAC0, v0, 0xff);
    SysTask_ExecuteAfterVBlank(ov5_021DFADC, v0, 0xff);
}

static void ov5_021DFAC0(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DFA88 *v0 = param1;

    TextureResourceManager_UploadResourceToVRam(v0->unk_08, v0->unk_04);
    v0->unk_00 = 1;
    SysTask_Done(param0);
}

static void ov5_021DFADC(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DFA88 *v0 = param1;

    if (v0->unk_00 == 1) {
        TextureResourceManager_DiscardTextureData(v0->unk_08, v0->unk_04);
        ov5_021DF554(v0);
        SysTask_Done(param0);
    }
}

void ov5_021DFB00(UnkStruct_ov5_021DF47C *param0, Simple3DModel *param1, u32 param2, u32 narcMemberIdx, BOOL allocAtEnd)
{
    Simple3D_LoadModelFromSet(param1, param2, param0->unk_18, narcMemberIdx, param0->heapID, allocAtEnd);
    Simple3D_ScheduleBindModelTexture(param1);
}

void ov5_021DFB24(UnkStruct_ov5_021DF47C *param0, Simple3DAnimation *param1, u32 param2, u32 param3, u32 param4)
{
    Simple3D_LoadAnimFromOpenNARC(param1, param2, param0->unk_18, param3, param0->heapID, param4);
}

void ov5_021DFB40(UnkStruct_ov5_021DF47C *param0, Simple3DAnimation *param1, const Simple3DModel *param2, Simple3DAnimation *param3, u32 param4)
{
    Simple3D_ApplyAnimCopyToModel(param1, param2, param3, param4, param0->heapID);
}
