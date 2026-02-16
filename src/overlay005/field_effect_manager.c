#include "overlay005/field_effect_manager.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/field_effect_renderer.h"

#include "struct_decls/struct_02020C44_decl.h"
#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_020217F4.h"
#include "struct_defs/struct_02024184.h"

#include "field/field_system.h"
#include "overlay005/area_light.h"
#include "overlay005/field_effect_renderer.h"
#include "overlay005/resource_heap.h"
#include "overlay005/struct_ov5_021DF7F8.h"
#include "overlay005/struct_ov5_021DF84C.h"
#include "overlay005/struct_ov5_021EDDAC.h"

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

typedef struct UnkStruct_ov5_021DF8FC_t {
    enum HeapID heapID;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
    UnkStruct_02020C44 *unk_0C;
    ResourceHeap *modelResHeap;
    ResourceHeap *metadataResHeap;
    TextureResourceManager *texResMan;
    UnkStruct_ov5_021DF8C8 *unk_1C;
    UnkStruct_ov5_021DF84C *unk_20;
} UnkStruct_ov5_021DF8FC;

typedef struct UnkStruct_ov5_021DF8C8_t {
    u32 unk_00;
    UnkStruct_ov5_021DF84C *unk_04;
} UnkStruct_ov5_021DF8C8;

typedef struct FieldEffectTexture {
    BOOL valid;
    u32 texID;
    TextureResourceManager *texResMan;
} FieldEffectTexture;

static u32 GetHeapID(const FieldEffectManager *fieldEffMan);
static void OpenArchive(FieldEffectManager *fieldEffMan);
static void CloseArchive(FieldEffectManager *fieldEffMan);
static void ResetAllRenderers(FieldEffectManager *fieldEffMan);
static void InitRenderer(FieldEffectManager *fieldEffMan, u32 id);
static void FieldEffectRenderer_Free(FieldEffectManager *fieldEffMan, FieldEffectRenderer *fieldEffRenderer);
static void FreeRenderers(FieldEffectManager *fieldEffMan);
static FieldEffectRenderer *FindFreeRenderer(FieldEffectManager *fieldEffMan);
static FieldEffectRenderer *GetRenderer(FieldEffectManager *fieldEffMan, u32 id);
static void FieldEffectRenderer_Reset(FieldEffectRenderer *fieldEffRenderer);
static void FieldEffectRenderer_Init(FieldEffectRenderer *fieldEffRenderer, u32 id, void *context);
static int FieldEffectRenderer_IsInvalid(const FieldEffectRenderer *fieldEffRenderer);
static const FieldEffectRendererFuncs *GetRendererFuncs(u32 id);
static void InitAnimManagerList(FieldEffectManager *fieldEffMan);
static void FinishAndFreeAnimations(FieldEffectManager *fieldEffMan);
static void RenderFieldEffects(FieldEffectManager *fieldEffMan);
static void ov5_021DF754(FieldEffectManager *param0, enum HeapID heapID, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8);
static void ov5_021DF7C4(FieldEffectManager *fieldEffMan);
static void ov5_021DF8C8(FieldEffectManager *fieldEffMan, UnkStruct_ov5_021DF8FC *graphicsManager, u32 objectCount);
static void ov5_021DF8FC(UnkStruct_ov5_021DF8FC *graphicsManager);
static UnkStruct_ov5_021DF84C *ov5_021DF9B4(UnkStruct_ov5_021DF8FC *graphicsManager, u32 id);
static void ov5_021DF910(UnkStruct_ov5_021DF8FC *graphicsManager, u32 id);
static UnkStruct_ov5_021DF84C *ov5_021DF930(UnkStruct_ov5_021DF8FC *graphicsManager, u32 id, void *modelData, UnkStruct_02024184 *textureData, void *textureResource, TextureResource *texture, const UnkStruct_020217F4 *effectData);
static void UploadTextureResourceToVRamDuringVBlank(FieldEffectManager *fieldEffMan, u32 texID, TextureResourceManager *texResMan);
static void UploadTextureResourceToVRamTask(SysTask *task, void *context);
static void DiscardTextureDataTask(SysTask *task, void *context);

FieldEffectManager *FieldEffectManager_New(FieldSystem *fieldSystem, u32 rendererCount, enum HeapID heapID)
{
    FieldEffectManager *fieldEffMan = Heap_Alloc(heapID, sizeof(FieldEffectManager));
    memset(fieldEffMan, 0, sizeof(FieldEffectManager));

    fieldEffMan->heapID = heapID;
    fieldEffMan->rendererCount = rendererCount;
    fieldEffMan->fieldSystem = fieldSystem;
    fieldEffMan->renderers = Heap_Alloc(heapID, sizeof(FieldEffectRenderer) * rendererCount);

    ResetAllRenderers(fieldEffMan);
    OpenArchive(fieldEffMan);

    return fieldEffMan;
}

void FieldEffectManager_InitAnimManagerList(FieldEffectManager *fieldEffMan, u32 animManCount)
{
    fieldEffMan->animManCount = animManCount;
    InitAnimManagerList(fieldEffMan);
}

void ov5_021DF488(FieldEffectManager *fieldEffMan, enum HeapID heapID, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8)
{
    ov5_021DF754(fieldEffMan, heapID, param2, param3, param4, param5, param6, param7, param8);
}

void FieldEffectManager_InitRenderer(FieldEffectManager *fieldEffMan, u32 id)
{
    if (GetRenderer(fieldEffMan, id) != NULL) {
        GF_ASSERT(FALSE);
        return;
    }

    InitRenderer(fieldEffMan, id);
}

void FieldEffectManager_InitRenderers(FieldEffectManager *fieldEffMan, const u32 *idIter)
{
    while (*idIter != FIELD_EFFECT_RENDERER_INVALID) {
        FieldEffectManager_InitRenderer(fieldEffMan, *idIter);
        idIter++;
    }
}

int FieldEffectManager_HasRenderer(FieldEffectManager *fieldEffMan, u32 id)
{
    return GetRenderer(fieldEffMan, id) != NULL;
}

void FieldEffectManager_Render(FieldEffectManager *fieldEffMan)
{
    RenderFieldEffects(fieldEffMan);
}

void FieldEffectManager_Free(FieldEffectManager *fieldEffMan)
{
    FinishAndFreeAnimations(fieldEffMan);
    FreeRenderers(fieldEffMan);
    ov5_021DF7C4(fieldEffMan);
    CloseArchive(fieldEffMan);
    Heap_Free(fieldEffMan->renderers);
    Heap_Free(fieldEffMan);
}

void *FieldEffectManager_HeapAlloc(const FieldEffectManager *fieldEffMan, u32 size, BOOL allocAtEnd)
{
    return allocAtEnd == FALSE
        ? Heap_Alloc(fieldEffMan->heapID, size)
        : Heap_AllocAtEnd(fieldEffMan->heapID, size);
}

void *FieldEffectManager_HeapAllocInit(const FieldEffectManager *fieldEffMan, u32 size, BOOL allocAtEnd, u32 initValue)
{
    void *data = FieldEffectManager_HeapAlloc(fieldEffMan, size, allocAtEnd);

    memset(data, initValue, size);
    return data;
}

void FieldEffectManager_HeapFree(void *data)
{
    Heap_Free(data);
}

void *FieldEffectManager_GetRendererContext(FieldEffectManager *fieldEffMan, u32 id)
{
    FieldEffectRenderer *fieldEffRenderer = GetRenderer(fieldEffMan, id);

    if (fieldEffRenderer == NULL) {
        GF_ASSERT(FALSE);
        return NULL;
    }

    return fieldEffRenderer->context;
}

FieldSystem *FieldEffectManager_GetFieldSystem(const FieldEffectManager *fieldEffMan)
{
    return fieldEffMan->fieldSystem;
}

FieldEffectManager *MapObject_GetFieldEffectManager(const MapObject *mapObject)
{
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObject);
    return fieldSystem->fieldEffMan;
}

static u32 GetHeapID(const FieldEffectManager *fieldEffMan)
{
    return fieldEffMan->heapID;
}

static void OpenArchive(FieldEffectManager *fieldEffMan)
{
    fieldEffMan->fldEffNARC = NARC_ctor(NARC_INDEX_DATA__MMODEL__FLDEFF, GetHeapID(fieldEffMan));
}

static void CloseArchive(FieldEffectManager *fieldEffMan)
{
    NARC_dtor(fieldEffMan->fldEffNARC);
}

u32 FieldEffectManager_GetNARCMemberSize(FieldEffectManager *fieldEffMan, u32 memberIndex)
{
    return NARC_GetMemberSize(fieldEffMan->fldEffNARC, memberIndex);
}

void FieldEffectManager_ReadNARCWholeMember(FieldEffectManager *fieldEffMan, u32 memberIndex, void *dest)
{
    NARC_ReadWholeMember(fieldEffMan->fldEffNARC, memberIndex, dest);
}

void *FieldEffectManager_AllocAndReadNARCWholeMember(FieldEffectManager *fieldEffMan, u32 memberIndex, BOOL allocAtEnd)
{
    u32 memberSize = NARC_GetMemberSize(fieldEffMan->fldEffNARC, memberIndex);
    void *buffer = FieldEffectManager_HeapAlloc(fieldEffMan, memberSize, allocAtEnd);

    NARC_ReadWholeMember(fieldEffMan->fldEffNARC, memberIndex, buffer);
    return buffer;
}

static void ResetAllRenderers(FieldEffectManager *fieldEffMan)
{
    u32 i = fieldEffMan->rendererCount;
    FieldEffectRenderer *iter = fieldEffMan->renderers;

    while (i) {
        FieldEffectRenderer_Reset(iter);
        iter++;
        i--;
    }
}

static void InitRenderer(FieldEffectManager *fieldEffMan, u32 id)
{
    const FieldEffectRendererFuncs *funcs = GetRendererFuncs(id);
    void *rendererData = funcs->newFunc(fieldEffMan);
    FieldEffectRenderer *fieldEffRenderer = FindFreeRenderer(fieldEffMan);

    FieldEffectRenderer_Init(fieldEffRenderer, id, rendererData);
}

static void FieldEffectRenderer_Free(FieldEffectManager *fieldEffMan, FieldEffectRenderer *fieldEffRenderer)
{
    const FieldEffectRendererFuncs *funcs = GetRendererFuncs(fieldEffRenderer->id);
    funcs->freeFunc(fieldEffRenderer->context);

    FieldEffectRenderer_Reset(fieldEffRenderer);
}

static void FreeRenderers(FieldEffectManager *fieldEffMan)
{
    u32 i = fieldEffMan->rendererCount;
    FieldEffectRenderer *iter = fieldEffMan->renderers;

    while (i) {
        if (!FieldEffectRenderer_IsInvalid(iter)) {
            FieldEffectRenderer_Free(fieldEffMan, iter);
        }

        iter++;
        i--;
    }
}

static FieldEffectRenderer *FindFreeRenderer(FieldEffectManager *fieldEffMan)
{
    u32 i = fieldEffMan->rendererCount;
    FieldEffectRenderer *iter = fieldEffMan->renderers;

    while (i) {
        if (FieldEffectRenderer_IsInvalid(iter) == TRUE) {
            return iter;
        }

        iter++;
        i--;
    }

    GF_ASSERT(FALSE);
    return NULL;
}

static FieldEffectRenderer *GetRenderer(FieldEffectManager *fieldEffMan, u32 id)
{
    u32 i = fieldEffMan->rendererCount;
    FieldEffectRenderer *iter = fieldEffMan->renderers;

    while (i) {
        if (iter->id == id) {
            return iter;
        }

        iter++;
        i--;
    }

    return NULL;
}

static void FieldEffectRenderer_Reset(FieldEffectRenderer *fieldEffRenderer)
{
    fieldEffRenderer->id = FIELD_EFFECT_RENDERER_INVALID;
    fieldEffRenderer->context = NULL;
}

static void FieldEffectRenderer_Init(FieldEffectRenderer *fieldEffRenderer, u32 id, void *context)
{
    fieldEffRenderer->id = id;
    fieldEffRenderer->context = context;
}

static int FieldEffectRenderer_IsInvalid(const FieldEffectRenderer *fieldEffRenderer)
{
    return fieldEffRenderer->id == FIELD_EFFECT_RENDERER_INVALID;
}

static const FieldEffectRendererFuncs *GetRendererFuncs(u32 id)
{
    const FieldEffectRendererFuncs *iter = sFieldEffectRendererHandlers;

    while (iter->id != FIELD_EFFECT_RENDERER_INVALID) {
        if (iter->id == id) {
            return iter;
        }

        iter++;
    }

    GF_ASSERT(FALSE);
    return NULL;
}

static void InitAnimManagerList(FieldEffectManager *fieldEffMan)
{
    fieldEffMan->animManList = OverworldAnimManagerList_New(fieldEffMan->heapID, fieldEffMan->animManCount);
}

static void FinishAndFreeAnimations(FieldEffectManager *fieldEffMan)
{
    if (fieldEffMan->animManList != NULL) {
        OverworldAnimManagerList_FinishAndFree(fieldEffMan->animManList);
        fieldEffMan->animManList = NULL;
    }
}

static void RenderFieldEffects(FieldEffectManager *fieldEffMan)
{
    if (fieldEffMan->animManList != NULL) {
        OverworldAnimManagerList_Render(fieldEffMan->animManList);
    }
}

OverworldAnimManager *FieldEffectManager_InitAnimManager(const FieldEffectManager *fieldEffMan, const OverworldAnimManagerFuncs *funcs, const VecFx32 *initialPos, int animId, const void *userData, int sysTaskPriority)
{
    OverworldAnimManagerList *animManList = fieldEffMan->animManList;
    OverworldAnimManager *animMan = OverworldAnimManagerList_InitManager(animManList, funcs, initialPos, animId, userData, sysTaskPriority);

    GF_ASSERT(animMan != NULL);
    return animMan;
}

void FieldEffectManager_FinishAnimManager(OverworldAnimManager *animMan)
{
    OverworldAnimManager_Finish(animMan);
}

static void ov5_021DF754(FieldEffectManager *param0, enum HeapID heapID, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8)
{
    UnkStruct_ov5_021DF8FC *v0;
    UnkStruct_ov5_021EDDAC v1;

    v0 = FieldEffectManager_HeapAllocInit(param0, (sizeof(UnkStruct_ov5_021DF8FC)), 0, 0);
    param0->unk_20 = v0;

    v0->heapID = heapID;
    v0->unk_04 = param2;
    v0->unk_06 = param3;
    v0->unk_08 = param4;
    v0->unk_0A = param5;
    v0->modelResHeap = ResourceHeap_New(heapID, HEAP_ID_69, param6, param3);
    v0->metadataResHeap = ResourceHeap_New(heapID, HEAP_ID_70, param7, param4);
    v0->texResMan = TextureResourceManager_New(param5, heapID);

    ov5_021DF8C8(param0, v0, param2);

    v1.unk_00 = param2;
    v1.heapID = GetHeapID(param0);
    v0->unk_0C = sub_02020C44(&v1);
}

static void ov5_021DF7C4(FieldEffectManager *fieldEffMan)
{
    UnkStruct_ov5_021DF8FC *v0 = fieldEffMan->unk_20;

    if (v0 != NULL) {
        sub_02020CCC(v0->unk_0C);
        ov5_021DF8FC(v0);
        ResourceHeap_Free(v0->modelResHeap);
        ResourceHeap_Free(v0->metadataResHeap);
        TextureResourceManager_Delete(v0->texResMan);
        FieldEffectManager_HeapFree(v0);

        fieldEffMan->unk_20 = NULL;
    }
}

UnkStruct_020216E0 *ov5_021DF7F8(FieldEffectManager *param0, const UnkStruct_ov5_021DF84C *param1, const VecFx32 *param2)
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

UnkStruct_020216E0 *ov5_021DF84C(FieldEffectManager *param0, u32 param1, const VecFx32 *param2)
{
    UnkStruct_ov5_021DF84C *v0 = ov5_021DF9B4(param0->unk_20, param1);
    return ov5_021DF7F8(param0, v0, param2);
}

UnkStruct_ov5_021DF84C *ov5_021DF864(FieldEffectManager *param0, u32 param1, u32 param2, u32 param3, u32 param4, int param5, const UnkStruct_020217F4 *param6)
{
    void *v0, *v1, *v2;
    UnkStruct_02024184 v3;
    TextureResource *v4;
    UnkStruct_ov5_021DF84C *v5;
    UnkStruct_ov5_021DF8FC *v6 = param0->unk_20;
    v0 = ResourceHeap_GetItemData(v6->modelResHeap, param2);
    v2 = ResourceHeap_GetItemData(v6->metadataResHeap, param3);

    sub_02024184(v2, &v3);

    v4 = TextureResourceManager_FindTextureResource(v6->texResMan, param4);
    GF_ASSERT(v4 != NULL);
    v1 = TextureResource_GetUnderlyingResource(v4);

    if (param5 == 1) {
        v4 = NULL;
    }

    v5 = ov5_021DF930(v6, param1, v0, &v3, v1, v4, param6);
    GF_ASSERT(v5 != NULL);

    return v5;
}

static void ov5_021DF8C8(FieldEffectManager *param0, UnkStruct_ov5_021DF8FC *param1, u32 param2)
{
    UnkStruct_ov5_021DF84C *v0;
    UnkStruct_ov5_021DF8C8 *v1;

    v0 = FieldEffectManager_HeapAlloc(param0, sizeof(UnkStruct_ov5_021DF84C) * param2, 0);
    param1->unk_20 = v0;

    v1 = FieldEffectManager_HeapAlloc(param0, (sizeof(UnkStruct_ov5_021DF8C8)) * param2, 0);
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
    FieldEffectManager_HeapFree(param0->unk_1C);
    FieldEffectManager_HeapFree(param0->unk_20);
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

void ov5_021DF9D4(FieldEffectManager *fieldEffMan, u32 slotID)
{
    UnkStruct_ov5_021DF8FC *v0 = fieldEffMan->unk_20;
    ov5_021DF910(v0, slotID);
}

void ov5_021DF9E0(FieldEffectManager *fieldEffMan, u32 slotID, u32 resourceID)
{
    UnkStruct_ov5_021DF8FC *v0 = fieldEffMan->unk_20;

    ResourceHeap_LoadMemberFromNARC(v0->modelResHeap, slotID, fieldEffMan->fldEffNARC, resourceID, FALSE);
}

void *ov5_021DF9FC(FieldEffectManager *fieldEffMan, u32 slotID)
{
    UnkStruct_ov5_021DF8FC *v0 = fieldEffMan->unk_20;
    void *v1 = ResourceHeap_GetItemData(v0->modelResHeap, slotID);

    return v1;
}

void ov5_021DFA08(FieldEffectManager *fieldEffMan, u32 slotID)
{
    UnkStruct_ov5_021DF8FC *v0 = fieldEffMan->unk_20;
    ResourceHeap_FreeItem(v0->modelResHeap, slotID);
}

void ov5_021DFA14(FieldEffectManager *fieldEffMan, u32 slotID, u32 resourceID)
{
    UnkStruct_ov5_021DF8FC *v0 = fieldEffMan->unk_20;
    ResourceHeap_LoadMemberFromNARC(v0->metadataResHeap, slotID, fieldEffMan->fldEffNARC, resourceID, FALSE);
}

void ov5_021DFA30(FieldEffectManager *fieldEffMan, u32 slotID)
{
    UnkStruct_ov5_021DF8FC *v0 = fieldEffMan->unk_20;
    ResourceHeap_FreeItem(v0->metadataResHeap, slotID);
}

void ov5_021DFA3C(FieldEffectManager *fieldEffMan, u32 slotID, u32 param2, u32 param3)
{
    UnkStruct_ov5_021DF8FC *v0 = fieldEffMan->unk_20;
    void *v1 = FieldEffectManager_AllocAndReadNARCWholeMember(fieldEffMan, param2, 1);
    TextureResource *v2 = TextureResourceManager_AddTextureAndAllocVRam(v0->texResMan, v1, slotID, param3, GetHeapID(fieldEffMan));

    GF_ASSERT(v2 != NULL);
    UploadTextureResourceToVRamDuringVBlank(fieldEffMan, slotID, v0->texResMan);
}

void ov5_021DFA7C(FieldEffectManager *fieldEffMan, u32 slotID)
{
    UnkStruct_ov5_021DF8FC *v0 = fieldEffMan->unk_20;
    TextureResourceManager_RemoveTextureWithID(v0->texResMan, slotID);
}

static void UploadTextureResourceToVRamDuringVBlank(FieldEffectManager *fieldEffMan, u32 texID, TextureResourceManager *texResMan)
{
    FieldEffectTexture *tex = FieldEffectManager_HeapAlloc(fieldEffMan, sizeof(FieldEffectTexture), TRUE);

    tex->valid = TRUE;
    tex->texID = texID;
    tex->texResMan = texResMan;

    SysTask_ExecuteOnVBlank(UploadTextureResourceToVRamTask, tex, 0xFF);
    SysTask_ExecuteAfterVBlank(DiscardTextureDataTask, tex, 0xFF);
}

static void UploadTextureResourceToVRamTask(SysTask *task, void *context)
{
    FieldEffectTexture *tex = context;

    TextureResourceManager_UploadResourceToVRam(tex->texResMan, tex->texID);
    tex->valid = TRUE;
    SysTask_Done(task);
}

static void DiscardTextureDataTask(SysTask *task, void *context)
{
    FieldEffectTexture *tex = context;

    if (tex->valid == TRUE) {
        TextureResourceManager_DiscardTextureData(tex->texResMan, tex->texID);
        FieldEffectManager_HeapFree(tex);
        SysTask_Done(task);
    }
}

void FieldEffectManager_LoadModel(FieldEffectManager *fieldEffMan, Simple3DModel *model, u32 modelIndex, u32 memberIdx, BOOL allocAtEnd)
{
    Simple3D_LoadModelFromSet(model, modelIndex, fieldEffMan->fldEffNARC, memberIdx, fieldEffMan->heapID, allocAtEnd);
    Simple3D_ScheduleBindModelTexture(model);
}

void FieldEffectManager_LoadAnimation(FieldEffectManager *fieldEffMan, Simple3DAnimation *anim, u32 unused, u32 memberIndex, BOOL allocAtEnd)
{
    Simple3D_LoadAnimFromOpenNARC(anim, unused, fieldEffMan->fldEffNARC, memberIndex, fieldEffMan->heapID, allocAtEnd);
}

void FieldEffectManager_ApplyAnimCopyToModel(FieldEffectManager *fieldEffMan, Simple3DAnimation *destAnim, const Simple3DModel *model, Simple3DAnimation *srcAnim, u32 unused)
{
    Simple3D_ApplyAnimCopyToModel(destAnim, model, srcAnim, unused, fieldEffMan->heapID);
}
