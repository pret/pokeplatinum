#include <nitro.h>
#include <string.h>

#include "unk_02017728.h"
#include "heap.h"
#include "resource_manager.h"

#include "nnsys.h"

#define RESOURCE_ID_INVALID (-1)

typedef struct Resource {
    int id;
    void * data;
} Resource;

typedef struct ResourceManager {
    Resource * resources;
    int maxResources;
    int resourceCount;
} ResourceManager;

typedef struct UnkStruct_02022BD8_2_t {
    Resource * unk_00;
    NNSGfdTexKey unk_04;
    NNSGfdTexKey unk_08;
    NNSGfdPlttKey unk_0C;
    void * unk_10;
    u16 unk_14;
    u16 unk_16;
} UnkStruct_02022BD8_2;

typedef struct UnkStruct_02022BD8_t {
    ResourceManager * unk_00;
    UnkStruct_02022BD8_2 * unk_04;
} UnkStruct_02022BD8;

static Resource *ResourceManager_AllocResource(ResourceManager *resMgr);
static void Resource_Init(Resource *resource);
static UnkStruct_02022BD8_2 * sub_02022F2C(const UnkStruct_02022BD8 * param0);
static void sub_02022F5C(UnkStruct_02022BD8_2 * param0);
static void sub_02022F98(const NNSG3dResTex * param0, NNSGfdTexKey * param1, NNSGfdTexKey * param2, NNSGfdPlttKey * param3);
static NNSG3dResTex * sub_02022F70(const UnkStruct_02022BD8_2 * param0);
static NNSG3dResTex * sub_02022F80(const UnkStruct_02022BD8_2 * param0);
static void sub_02023008(NNSG3dResTex * param0, UnkStruct_02022BD8_2 * param1);
static void sub_02023034(NNSG3dResTex * param0, NNSGfdTexKey param1, NNSGfdTexKey param2, NNSGfdPlttKey param3);
static void sub_02023048(NNSG3dResTex * param0);
static void * sub_02023060(void * param0, u32 param1);
static u32 sub_02023084(const void * param0);

ResourceManager *ResourceManager_New(s32 maxResources, enum HeapId heapID)
{
    ResourceManager *resMgr = Heap_AllocFromHeap(heapID, sizeof(ResourceManager));
    GF_ASSERT(resMgr);

    resMgr->resources = Heap_AllocFromHeap(heapID, sizeof(Resource) * maxResources);
    GF_ASSERT(resMgr->resources);

    for (int i = 0; i < maxResources; i++) {
        Resource_Init(resMgr->resources + i);
    }

    resMgr->maxResources = maxResources;
    resMgr->resourceCount = 0;

    return resMgr;
}

void ResourceManager_Delete(ResourceManager *resMgr)
{
    GF_ASSERT(resMgr);

    ResourceManager_Clear(resMgr);
    Heap_FreeToHeap(resMgr->resources);
    Heap_FreeToHeap(resMgr);
}

BOOL ResourceManager_IsIDUnused(ResourceManager *resMgr, int id)
{
    GF_ASSERT(resMgr);
    return ResourceManager_FindResource(resMgr, id) == NULL;
}

Resource *ResourceManager_AddResource(ResourceManager *resMgr, void *data, int id)
{
    GF_ASSERT(resMgr);

    Resource *resource = ResourceManager_AllocResource(resMgr);
    GF_ASSERT(resource);

    GF_ASSERT(ResourceManager_IsIDUnused(resMgr, id) == TRUE);

    resource->data = data;
    resource->id = id;
    resMgr->resourceCount++;

    return resource;
}

Resource *ResourceManager_AddResourceFromFile(ResourceManager *resMgr, const char *filename, int id, enum HeapId heapID)
{
    GF_ASSERT(resMgr);
    GF_ASSERT(filename);

    Resource *resource = ResourceManager_AllocResource(resMgr);

    GF_ASSERT(resource);
    GF_ASSERT(ResourceManager_IsIDUnused(resMgr, id) == TRUE);

    resource->data = ReadFileToHeap(heapID, filename);
    GF_ASSERT(resource->data);
    resource->id = id;

    resMgr->resourceCount++;

    return resource;
}

void ResourceManager_RemoveResource(ResourceManager *resMgr, Resource *resource)
{
    GF_ASSERT(resMgr);
    GF_ASSERT(resource);

    if (resource->data) {
        Heap_FreeToHeap(resource->data);
        resource->data = NULL;
    }

    resource->id = RESOURCE_ID_INVALID;
    resMgr->resourceCount--;
}

void ResourceManager_Clear(ResourceManager *resMgr)
{
    GF_ASSERT(resMgr);
    GF_ASSERT(resMgr->resources);

    for (int i = 0; i < resMgr->maxResources; i++) {
        if (resMgr->resources[i].id != RESOURCE_ID_INVALID) {
            ResourceManager_RemoveResource(resMgr, resMgr->resources + i);
        }
    }
}

Resource *ResourceManager_FindResource(ResourceManager *resMgr, int id)
{
    GF_ASSERT(resMgr);

    for (int i = 0; i < resMgr->maxResources; i++) {
        if (resMgr->resources[i].id == id) {
            return resMgr->resources + i;
        }
    }

    return NULL;
}

void * sub_02022B54 (Resource * param0)
{
    GF_ASSERT(param0);
    return param0->data;
}

void sub_02022B64 (Resource * param0, void * param1)
{
    GF_ASSERT(param0);

    if (param0->data) {
        Heap_FreeToHeap(param0->data);
    }

    param0->data = param1;
}

int sub_02022B80 (Resource * param0)
{
    GF_ASSERT(param0);
    return param0->id;
}

static Resource *ResourceManager_AllocResource(ResourceManager *resMgr)
{
    GF_ASSERT(resMgr);

    for (int i = 0; i < resMgr->maxResources; i++) {
        if (resMgr->resources[i].id == RESOURCE_ID_INVALID) {
            return resMgr->resources + i;
        }
    }

    return NULL;
}

static void Resource_Init(Resource *resource)
{
    GF_ASSERT(resource);

    resource->id = 0xffffffff;
    resource->data = NULL;
}

UnkStruct_02022BD8 * sub_02022BD8 (int param0, int param1)
{
    UnkStruct_02022BD8 * v0;
    int v1;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_02022BD8));

    v0->unk_00 = ResourceManager_New(param0, param1);
    v0->unk_04 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_02022BD8_2) * param0);

    for (v1 = 0; v1 < param0; v1++) {
        sub_02022F5C(v0->unk_04 + v1);
    }

    return v0;
}

void sub_02022C1C (UnkStruct_02022BD8 * param0)
{
    GF_ASSERT(param0);

    sub_02022D58(param0);
    ResourceManager_Delete(param0->unk_00);
    Heap_FreeToHeap(param0->unk_04);
    Heap_FreeToHeap(param0);
}

BOOL sub_02022C40 (const UnkStruct_02022BD8 * param0, int param1)
{
    GF_ASSERT(param0);
    return ResourceManager_IsIDUnused(param0->unk_00, param1);
}

UnkStruct_02022BD8_2 * sub_02022C58 (const UnkStruct_02022BD8 * param0, void * param1, int param2, u32 param3, u32 param4)
{
    UnkStruct_02022BD8_2 * v0;
    void * v1;

    GF_ASSERT(param0);

    v0 = sub_02022F2C(param0);
    v0->unk_16 = param3;

    if (v0->unk_16 == 1) {
        v1 = sub_02023060(param1, param4);
        v0->unk_10 = param1;
    } else {
        v1 = param1;
        v0->unk_10 = NULL;
    }

    v0->unk_00 = ResourceManager_AddResource(param0->unk_00, v1, param2);

    return v0;
}

UnkStruct_02022BD8_2 * sub_02022C9C (UnkStruct_02022BD8 * param0, void * param1, int param2, u32 param3, int param4)
{
    UnkStruct_02022BD8_2 * v0;

    v0 = sub_02022C58(param0, param1, param2, param3, param4);
    sub_02022EBC(v0);

    return v0;
}

void sub_02022CB4 (UnkStruct_02022BD8 * param0, UnkStruct_02022BD8_2 * param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param1);

    if ((param1->unk_16 == 1) && (param1->unk_14 == 0)) {
        Heap_FreeToHeap(param1->unk_10);
        param1->unk_16 = NULL;
    }

    if (param1->unk_00) {
        ResourceManager_RemoveResource(param0->unk_00, param1->unk_00);
    }

    if (param1->unk_04 != NNS_GFD_ALLOC_ERROR_TEXKEY) {
        v0 = NNS_GfdFreeTexVram(param1->unk_04);
        GF_ASSERT(v0 == 0);
    }

    if (param1->unk_08 != NNS_GFD_ALLOC_ERROR_TEXKEY) {
        v0 = NNS_GfdFreeTexVram(param1->unk_08);
        GF_ASSERT(v0 == 0);
    }

    if (param1->unk_0C != NNS_GFD_ALLOC_ERROR_PLTTKEY) {
        v0 = NNS_GfdFreePlttVram(param1->unk_0C);
        GF_ASSERT(v0 == 0);
    }

    sub_02022F5C(param1);
}

void sub_02022D38 (UnkStruct_02022BD8 * param0, int param1)
{
    UnkStruct_02022BD8_2 * v0;

    GF_ASSERT(param0);

    v0 = sub_02022D98(param0, param1);
    sub_02022CB4(param0, v0);
}

void sub_02022D58 (UnkStruct_02022BD8 * param0)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04);

    for (v0 = 0; v0 < param0->unk_00->maxResources; v0++) {
        if (param0->unk_04[v0].unk_00) {
            sub_02022CB4(param0, param0->unk_04 + v0);
        }
    }
}

UnkStruct_02022BD8_2 * sub_02022D98 (const UnkStruct_02022BD8 * param0, int param1)
{
    int v0;
    int v1;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->unk_00->maxResources; v0++) {
        if (param0->unk_04[v0].unk_00) {
            v1 = sub_02022DE0(param0->unk_04 + v0);

            if (v1 == param1) {
                return param0->unk_04 + v0;
            }
        }
    }

    return NULL;
}

int sub_02022DE0 (const UnkStruct_02022BD8_2 * param0)
{
    GF_ASSERT(param0);
    return sub_02022B80(param0->unk_00);
}

NNSG3dResTex * sub_02022DF4 (const UnkStruct_02022BD8_2 * param0)
{
    GF_ASSERT(param0);
    return sub_02022F70(param0);
}

void sub_02022E08 (UnkStruct_02022BD8_2 * param0)
{
    NNSG3dResTex * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_14 == 0);

    if (param0->unk_0C == NNS_GFD_ALLOC_ERROR_PLTTKEY) {
        GF_ASSERT(0);
        return;
    }

    v0 = sub_02022F80(param0);
    sub_02023008(v0, param0);
}

void sub_02022E38 (UnkStruct_02022BD8 * param0, int param1)
{
    UnkStruct_02022BD8_2 * v0;

    GF_ASSERT(param0);

    v0 = sub_02022D98(param0, param1);
    sub_02022E08(v0);
}

void sub_02022E54 (UnkStruct_02022BD8_2 * param0)
{
    void * v0;

    GF_ASSERT(param0);

    if (param0->unk_16 == 0) {
        GF_ASSERT(0);
        return;
    }

    if (param0->unk_14) {
        GF_ASSERT(0);
        return;
    }

    sub_02023048(sub_02022F80(param0));
    sub_02023034(sub_02022F70(param0), param0->unk_04, param0->unk_08, param0->unk_0C);
    Heap_FreeToHeap(param0->unk_10);

    param0->unk_10 = NULL;
    param0->unk_14 = 1;
}

void sub_02022EA0 (UnkStruct_02022BD8 * param0, int param1)
{
    UnkStruct_02022BD8_2 * v0;

    GF_ASSERT(param0);

    v0 = sub_02022D98(param0, param1);
    sub_02022E54(v0);
}

void sub_02022EBC (UnkStruct_02022BD8_2 * param0)
{
    NNSG3dResTex * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_14 == 0);

    if (param0->unk_0C != NNS_GFD_ALLOC_ERROR_PLTTKEY) {
        GF_ASSERT(0);
        return;
    }

    v0 = sub_02022F80(param0);
    sub_02022F98(v0, &param0->unk_04, &param0->unk_08, &param0->unk_0C);
}

NNSGfdTexKey sub_02022EF4 (const UnkStruct_02022BD8_2 * param0)
{
    GF_ASSERT(param0);
    return param0->unk_04;
}

NNSGfdTexKey sub_02022F04 (const UnkStruct_02022BD8_2 * param0)
{
    GF_ASSERT(param0);
    return param0->unk_08;
}

NNSGfdPlttKey sub_02022F14 (const UnkStruct_02022BD8_2 * param0)
{
    GF_ASSERT(param0);
    return param0->unk_0C;
}

u32 sub_02022F24 (NNSG3dResFileHeader * param0)
{
    return sub_02023084(param0);
}

static UnkStruct_02022BD8_2 * sub_02022F2C (const UnkStruct_02022BD8 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00->maxResources; v0++) {
        if (param0->unk_04[v0].unk_00 == NULL) {
            return param0->unk_04 + v0;
        }
    }

    return NULL;
}

static void sub_02022F5C (UnkStruct_02022BD8_2 * param0)
{
    param0->unk_00 = NULL;
    param0->unk_04 = NNS_GFD_ALLOC_ERROR_TEXKEY;
    param0->unk_08 = NNS_GFD_ALLOC_ERROR_TEXKEY;
    param0->unk_0C = NNS_GFD_ALLOC_ERROR_PLTTKEY;
    param0->unk_14 = 0;
    param0->unk_10 = NULL;
    param0->unk_14 = 0;
}

static NNSG3dResTex * sub_02022F70 (const UnkStruct_02022BD8_2 * param0)
{
    void * v0;
    NNSG3dResTex * v1;

    v0 = sub_02022B54(param0->unk_00);
    v1 = NNS_G3dGetTex(v0);

    return v1;
}

static NNSG3dResTex * sub_02022F80 (const UnkStruct_02022BD8_2 * param0)
{
    void * v0;
    NNSG3dResTex * v1;

    if (param0->unk_16 == 0) {
        v0 = sub_02022B54(param0->unk_00);
    } else {
        v0 = param0->unk_10;
    }

    v1 = NNS_G3dGetTex(v0);
    return v1;
}

static void sub_02022F98 (const NNSG3dResTex * param0, NNSGfdTexKey * param1, NNSGfdTexKey * param2, NNSGfdPlttKey * param3)
{
    u32 v0;
    u32 v1;
    u32 v2;

    v0 = NNS_G3dTexGetRequiredSize(param0);
    v1 = NNS_G3dTex4x4GetRequiredSize(param0);
    v2 = NNS_G3dPlttGetRequiredSize(param0);

    if (v0 != 0) {
        *param1 = NNS_GfdAllocTexVram(v0, 0, 0);
    }

    if (v1 != 0) {
        *param2 = NNS_GfdAllocTexVram(v1, 1, 0);
    }

    if (v2 != 0) {
        *param3 = NNS_GfdAllocPlttVram(v2, param0->tex4x4Info.flag & NNS_G3D_RESPLTT_USEPLTT4, 0);
    }
}

static void sub_02023008 (NNSG3dResTex * param0, UnkStruct_02022BD8_2 * param1)
{
    sub_02023034(param0, param1->unk_04, param1->unk_08, param1->unk_0C);

    DC_FlushRange(param0, param0->header.size);

    NNS_G3dTexLoad(param0, 1);
    NNS_G3dPlttLoad(param0, 1);
}

static void sub_02023034 (NNSG3dResTex * param0, NNSGfdTexKey param1, NNSGfdTexKey param2, NNSGfdPlttKey param3)
{
    NNS_G3dTexSetTexKey(param0, param1, param2);
    NNS_G3dPlttSetPlttKey(param0, param3);
}

static void sub_02023048 (NNSG3dResTex * param0)
{
    NNSGfdTexKey v0;
    NNSGfdTexKey v1;
    NNSGfdPlttKey v2;

    NNS_G3dTexReleaseTexKey(param0, &v0, &v1);
    v2 = NNS_G3dPlttReleasePlttKey(param0);
}

static void * sub_02023060 (void * param0, u32 param1)
{
    u32 v0;
    void * v1;

    v0 = sub_02023084(param0);
    v1 = Heap_AllocFromHeap(param1, v0);

    memcpy(v1, param0, v0);
    return v1;
}

static u32 sub_02023084 (const void * param0)
{
    NNSG3dResTex * v0;
    u8 * v1;
    u32 v2;

    v0 = NNS_G3dGetTex(param0);
    GF_ASSERT(v0);

    v1 = (u8 *)v0 + v0->texInfo.ofsTex;
    v2 = (u32)(v1 - (u8 *)param0);

    return v2;
}
