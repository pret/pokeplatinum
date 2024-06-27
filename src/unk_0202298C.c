#include <nitro.h>
#include <string.h>

#include "unk_02017728.h"
#include "heap.h"
#include "unk_0202298C.h"

#include "nnsys.h"

typedef struct Resource {
    int id;
    void * data;
} Resource;

typedef struct ResourceManager {
    Resource * unk_00;
    int unk_04;
    int resourceCount;
} UnkStruct_0202298C;

typedef struct TextureResource {
    Resource * resource;
    NNSGfdTexKey unk_04;
    NNSGfdTexKey unk_08;
    NNSGfdPlttKey unk_0C;
    void * textureData;
    u16 unk_14;
    u16 mode;
} TextureResource;

typedef struct TextureResourceManager {
    UnkStruct_0202298C * resMgr;
    TextureResource * textures;
} TextureResourceManager;

static Resource * sub_02022B90(UnkStruct_0202298C * param0);
static void sub_02022BC0(Resource * param0);
static TextureResource * sub_02022F2C(const TextureResourceManager * param0);
static void sub_02022F5C(TextureResource * param0);
static void sub_02022F98(const NNSG3dResTex * param0, NNSGfdTexKey * param1, NNSGfdTexKey * param2, NNSGfdPlttKey * param3);
static NNSG3dResTex * sub_02022F70(const TextureResource * param0);
static NNSG3dResTex * sub_02022F80(const TextureResource * param0);
static void sub_02023008(NNSG3dResTex * param0, TextureResource * param1);
static void sub_02023034(NNSG3dResTex * param0, NNSGfdTexKey param1, NNSGfdTexKey param2, NNSGfdPlttKey param3);
static void sub_02023048(NNSG3dResTex * param0);
static void * sub_02023060(void * param0, u32 param1);
static u32 sub_02023084(const void * param0);

UnkStruct_0202298C * ResourceManager_New (int param0, int param1)
{
    UnkStruct_0202298C * v0;
    int v1;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_0202298C));
    GF_ASSERT(v0);

    v0->unk_00 = Heap_AllocFromHeap(param1, sizeof(Resource) * param0);
    GF_ASSERT(v0->unk_00);

    for (v1 = 0; v1 < param0; v1++) {
        sub_02022BC0((v0->unk_00 + v1));
    }

    v0->unk_04 = param0;
    v0->resourceCount = 0;

    return v0;
}

void ResourceManager_Delete (UnkStruct_0202298C * param0)
{
    GF_ASSERT(param0);

    ResourceManager_Clear(param0);
    Heap_FreeToHeap(param0->unk_00);
    Heap_FreeToHeap(param0);
}

BOOL ResourceManager_IsIDUnused (UnkStruct_0202298C * param0, int param1)
{
    int v0;

    GF_ASSERT(param0);

    if (ResourceManager_FindResource(param0, param1) == NULL) {
        return 1;
    }

    return 0;
}

Resource * ResourceManager_AddResource (UnkStruct_0202298C * param0, void * param1, int param2)
{
    Resource * v0;

    GF_ASSERT(param0);

    v0 = sub_02022B90(param0);

    GF_ASSERT(v0);
    GF_ASSERT((ResourceManager_IsIDUnused(param0, param2) == 1));

    v0->unk_04 = param1;
    v0->unk_00 = param2;
    param0->resourceCount++;

    return v0;
}

Resource * ResourceManager_AddResourceFromFile (UnkStruct_0202298C * param0, const char * param1, int param2, int param3)
{
    Resource * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param1);

    v0 = sub_02022B90(param0);

    GF_ASSERT(v0);
    GF_ASSERT((ResourceManager_IsIDUnused(param0, param2) == 1));

    v0->unk_04 = ReadFileToHeap(param3, param1);
    GF_ASSERT(v0->unk_04);
    v0->unk_00 = param2;

    param0->resourceCount++;

    return v0;
}

void ResourceManager_RemoveResource (UnkStruct_0202298C * param0, Resource * param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param1);

    if (param1->unk_04) {
        Heap_FreeToHeap(param1->unk_04);
        param1->unk_04 = NULL;
    }

    param1->unk_00 = 0xffffffff;
    param0->resourceCount--;
}

void ResourceManager_Clear (UnkStruct_0202298C * param0)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_00);

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_00[v0].unk_00 != 0xffffffff) {
            ResourceManager_RemoveResource(param0, (param0->unk_00 + v0));
        }
    }
}

Resource * ResourceManager_FindResource (UnkStruct_0202298C * param0, int param1)
{
    int v0;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_00[v0].unk_00 == param1) {
            return param0->unk_00 + v0;
        }
    }

    return NULL;
}

void * Resource_GetData (Resource * param0)
{
    GF_ASSERT(param0);
    return param0->unk_04;
}

void Resource_SetData (Resource * param0, void * param1)
{
    GF_ASSERT(param0);

    if (param0->unk_04) {
        Heap_FreeToHeap(param0->unk_04);
    }

    param0->unk_04 = param1;
}

int Resource_GetID (Resource * param0)
{
    GF_ASSERT(param0);
    return param0->unk_00;
}

static Resource * sub_02022B90 (UnkStruct_0202298C * param0)
{
    int v0;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_00[v0].unk_00 == 0xffffffff) {
            return param0->unk_00 + v0;
        }
    }

    return NULL;
}

static void sub_02022BC0 (Resource * param0)
{
    GF_ASSERT(param0);

    param0->unk_00 = 0xffffffff;
    param0->unk_04 = NULL;
}

TextureResourceManager * TextureResourceManager_New (int param0, int param1)
{
    TextureResourceManager * v0;
    int v1;

    v0 = Heap_AllocFromHeap(param1, sizeof(TextureResourceManager));

    v0->resMgr = ResourceManager_New(param0, param1);
    v0->textures = Heap_AllocFromHeap(param1, sizeof(TextureResource) * param0);

    for (v1 = 0; v1 < param0; v1++) {
        sub_02022F5C(v0->textures + v1);
    }

    return v0;
}

void TextureResourceManager_Delete (TextureResourceManager * param0)
{
    GF_ASSERT(param0);

    sub_02022D58(param0);
    ResourceManager_Delete(param0->resMgr);
    Heap_FreeToHeap(param0->textures);
    Heap_FreeToHeap(param0);
}

BOOL TextureResourceManager_IsIDUnused (const TextureResourceManager * param0, int param1)
{
    GF_ASSERT(param0);
    return ResourceManager_IsIDUnused(param0->resMgr, param1);
}

TextureResource * sub_02022C58 (const TextureResourceManager * param0, void * param1, int param2, u32 param3, u32 param4)
{
    TextureResource * v0;
    void * v1;

    GF_ASSERT(param0);

    v0 = sub_02022F2C(param0);
    v0->mode = param3;

    if (v0->mode == 1) {
        v1 = sub_02023060(param1, param4);
        v0->textureData = param1;
    } else {
        v1 = param1;
        v0->textureData = NULL;
    }

    v0->resource = ResourceManager_AddResource(param0->resMgr, v1, param2);

    return v0;
}

TextureResource * sub_02022C9C (TextureResourceManager * param0, void * param1, int param2, u32 param3, int param4)
{
    TextureResource * v0;

    v0 = sub_02022C58(param0, param1, param2, param3, param4);
    sub_02022EBC(v0);

    return v0;
}

void sub_02022CB4 (TextureResourceManager * param0, TextureResource * param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param1);

    if ((param1->mode == 1) && (param1->unk_14 == 0)) {
        Heap_FreeToHeap(param1->textureData);
        param1->mode = NULL;
    }

    if (param1->resource) {
        ResourceManager_RemoveResource(param0->resMgr, param1->resource);
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

void sub_02022D38 (TextureResourceManager * param0, int param1)
{
    TextureResource * v0;

    GF_ASSERT(param0);

    v0 = sub_02022D98(param0, param1);
    sub_02022CB4(param0, v0);
}

void sub_02022D58 (TextureResourceManager * param0)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->textures);

    for (v0 = 0; v0 < param0->resMgr->unk_04; v0++) {
        if (param0->textures[v0].resource) {
            sub_02022CB4(param0, param0->textures + v0);
        }
    }
}

TextureResource * sub_02022D98 (const TextureResourceManager * param0, int param1)
{
    int v0;
    int v1;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->resMgr->unk_04; v0++) {
        if (param0->textures[v0].resource) {
            v1 = TextureResource_GetID(param0->textures + v0);

            if (v1 == param1) {
                return param0->textures + v0;
            }
        }
    }

    return NULL;
}

int TextureResource_GetID (const TextureResource * param0)
{
    GF_ASSERT(param0);
    return Resource_GetID(param0->resource);
}

NNSG3dResTex * sub_02022DF4 (const TextureResource * param0)
{
    GF_ASSERT(param0);
    return sub_02022F70(param0);
}

void sub_02022E08 (TextureResource * param0)
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

void sub_02022E38 (TextureResourceManager * param0, int param1)
{
    TextureResource * v0;

    GF_ASSERT(param0);

    v0 = sub_02022D98(param0, param1);
    sub_02022E08(v0);
}

void sub_02022E54 (TextureResource * param0)
{
    void * v0;

    GF_ASSERT(param0);

    if (param0->mode == 0) {
        GF_ASSERT(0);
        return;
    }

    if (param0->unk_14) {
        GF_ASSERT(0);
        return;
    }

    sub_02023048(sub_02022F80(param0));
    sub_02023034(sub_02022F70(param0), param0->unk_04, param0->unk_08, param0->unk_0C);
    Heap_FreeToHeap(param0->textureData);

    param0->textureData = NULL;
    param0->unk_14 = 1;
}

void sub_02022EA0 (TextureResourceManager * param0, int param1)
{
    TextureResource * v0;

    GF_ASSERT(param0);

    v0 = sub_02022D98(param0, param1);
    sub_02022E54(v0);
}

void sub_02022EBC (TextureResource * param0)
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

NNSGfdTexKey sub_02022EF4 (const TextureResource * param0)
{
    GF_ASSERT(param0);
    return param0->unk_04;
}

NNSGfdTexKey sub_02022F04 (const TextureResource * param0)
{
    GF_ASSERT(param0);
    return param0->unk_08;
}

NNSGfdPlttKey sub_02022F14 (const TextureResource * param0)
{
    GF_ASSERT(param0);
    return param0->unk_0C;
}

u32 sub_02022F24 (NNSG3dResFileHeader * param0)
{
    return sub_02023084(param0);
}

static TextureResource * sub_02022F2C (const TextureResourceManager * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->resMgr->unk_04; v0++) {
        if (param0->textures[v0].resource == NULL) {
            return param0->textures + v0;
        }
    }

    return NULL;
}

static void sub_02022F5C (TextureResource * param0)
{
    param0->resource = NULL;
    param0->unk_04 = NNS_GFD_ALLOC_ERROR_TEXKEY;
    param0->unk_08 = NNS_GFD_ALLOC_ERROR_TEXKEY;
    param0->unk_0C = NNS_GFD_ALLOC_ERROR_PLTTKEY;
    param0->unk_14 = 0;
    param0->textureData = NULL;
    param0->unk_14 = 0;
}

static NNSG3dResTex * sub_02022F70 (const TextureResource * param0)
{
    void * v0;
    NNSG3dResTex * v1;

    v0 = Resource_GetData(param0->resource);
    v1 = NNS_G3dGetTex(v0);

    return v1;
}

static NNSG3dResTex * sub_02022F80 (const TextureResource * param0)
{
    void * v0;
    NNSG3dResTex * v1;

    if (param0->mode == 0) {
        v0 = Resource_GetData(param0->resource);
    } else {
        v0 = param0->textureData;
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

static void sub_02023008 (NNSG3dResTex * param0, TextureResource * param1)
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
