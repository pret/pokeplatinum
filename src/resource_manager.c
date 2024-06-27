#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "unk_02017728.h"
#include "heap.h"
#include "resource_manager.h"

#include "nnsys.h"

#define RESOURCE_ID_INVALID (-1)

typedef struct Resource {
    int id;
    void *data;
} Resource;

typedef struct ResourceManager {
    Resource * resources;
    int maxResources;
    int resourceCount;
} ResourceManager;

typedef struct TextureResource {
    Resource *resource;
    NNSGfdTexKey unk_04;
    NNSGfdTexKey unk_08;
    NNSGfdPlttKey unk_0C;
    void *textureData; // Only used when mode is TEX_RESOURCE_MODE_STRIPPED
    u16 unk_14;
    u16 mode;
} TextureResource;

typedef struct TextureResourceManager {
    ResourceManager *resMgr;
    TextureResource *textures;
} TextureResourceManager;

static Resource *ResourceManager_AllocResource(ResourceManager *resMgr);
static void Resource_Init(Resource *resource);
static TextureResource * TextureResourceManager_AllocTexture(const TextureResourceManager * param0);
static void TextureResource_Init(TextureResource * param0);
static void sub_02022F98(const NNSG3dResTex * param0, NNSGfdTexKey * param1, NNSGfdTexKey * param2, NNSGfdPlttKey * param3);
static NNSG3dResTex * TextureResource_GetTexture(const TextureResource * param0);
static NNSG3dResTex * TextureResource_GetTextureSafe(const TextureResource * param0);
static void sub_02023008(NNSG3dResTex * param0, TextureResource * param1);
static void sub_02023034(NNSG3dResTex * param0, NNSGfdTexKey param1, NNSGfdTexKey param2, NNSGfdPlttKey param3);
static void sub_02023048(NNSG3dResTex * param0);
static void * CreateStrippedTexture(void * param0, enum HeapId param1);
static u32 GetStrippedTextureResourceSize(const void * param0);

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

void *Resource_GetData(Resource *resource)
{
    GF_ASSERT(resource);
    return resource->data;
}

void Resource_SetData(Resource *resource, void *data)
{
    GF_ASSERT(resource);

    if (resource->data) {
        Heap_FreeToHeap(resource->data);
    }

    resource->data = data;
}

int Resource_GetID(Resource *resource)
{
    GF_ASSERT(resource);
    return resource->id;
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

    resource->id = RESOURCE_ID_INVALID;
    resource->data = NULL;
}

TextureResourceManager *TextureResourceManager_New(s32 maxTextures, enum HeapId heapID)
{
    TextureResourceManager *texMgr = Heap_AllocFromHeap(heapID, sizeof(TextureResourceManager));

    texMgr->resMgr = ResourceManager_New(maxTextures, heapID);
    texMgr->textures = Heap_AllocFromHeap(heapID, sizeof(TextureResource) * maxTextures);

    for (int i = 0; i < maxTextures; i++) {
        TextureResource_Init(texMgr->textures + i);
    }

    return texMgr;
}

void TextureResourceManager_Delete(TextureResourceManager *texMgr)
{
    GF_ASSERT(texMgr);

    sub_02022D58(texMgr);
    ResourceManager_Delete(texMgr->resMgr);
    Heap_FreeToHeap(texMgr->textures);
    Heap_FreeToHeap(texMgr);
}

BOOL TextureResourceManager_IsIDUnused(const TextureResourceManager *texMgr, int id)
{
    GF_ASSERT(texMgr);
    return ResourceManager_IsIDUnused(texMgr->resMgr, id);
}

TextureResource *sub_02022C58(const TextureResourceManager *texMgr, void *data, int id, enum TextureResourceMode mode, enum HeapId heapID)
{
    TextureResource * texResource;
    void * resourceData;

    GF_ASSERT(texMgr);

    texResource = TextureResourceManager_AllocTexture(texMgr);
    texResource->mode = mode;

    if (texResource->mode == TEX_RESOURCE_MODE_STRIPPED) {
        resourceData = CreateStrippedTexture(data, heapID);
        texResource->textureData = data;
    } else {
        resourceData = data;
        texResource->textureData = NULL;
    }

    texResource->resource = ResourceManager_AddResource(texMgr->resMgr, resourceData, id);

    return texResource;
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

    TextureResource_Init(param1);
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

    for (v0 = 0; v0 < param0->resMgr->maxResources; v0++) {
        if (param0->textures[v0].resource) {
            sub_02022CB4(param0, param0->textures + v0);
        }
    }
}

TextureResource * sub_02022D98 (const TextureResourceManager *texMgr, int param1)
{
    int v0;
    int v1;

    GF_ASSERT(texMgr);

    for (v0 = 0; v0 < texMgr->resMgr->maxResources; v0++) {
        if (texMgr->textures[v0].resource) {
            v1 = TextureResource_GetID(texMgr->textures + v0);

            if (v1 == param1) {
                return texMgr->textures + v0;
            }
        }
    }

    return NULL;
}

int TextureResource_GetID(const TextureResource *texResource)
{
    GF_ASSERT(texResource);
    return Resource_GetID(texResource->resource);
}

NNSG3dResTex * sub_02022DF4 (const TextureResource * param0)
{
    GF_ASSERT(param0);
    return TextureResource_GetTexture(param0);
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

    v0 = TextureResource_GetTextureSafe(param0);
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

    sub_02023048(TextureResource_GetTextureSafe(param0));
    sub_02023034(TextureResource_GetTexture(param0), param0->unk_04, param0->unk_08, param0->unk_0C);
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

    v0 = TextureResource_GetTextureSafe(param0);
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
    return GetStrippedTextureResourceSize(param0);
}

static TextureResource * TextureResourceManager_AllocTexture(const TextureResourceManager *texMgr)
{
    for (int i = 0; i < texMgr->resMgr->maxResources; i++) {
        if (texMgr->textures[i].resource == NULL) {
            return texMgr->textures + i;
        }
    }

    return NULL;
}

static void TextureResource_Init(TextureResource *texResource)
{
    texResource->resource = NULL;
    texResource->unk_04 = NNS_GFD_ALLOC_ERROR_TEXKEY;
    texResource->unk_08 = NNS_GFD_ALLOC_ERROR_TEXKEY;
    texResource->unk_0C = NNS_GFD_ALLOC_ERROR_PLTTKEY;
    texResource->unk_14 = 0;
    texResource->textureData = NULL;
    texResource->unk_14 = 0;
}

// Assumes that the texture resource is in TEX_RESOURCE_MODE_NORMAL
static NNSG3dResTex *TextureResource_GetTexture(const TextureResource *texResource)
{
    return NNS_G3dGetTex(Resource_GetData(texResource->resource));
}

static NNSG3dResTex *TextureResource_GetTextureSafe(const TextureResource *texResource)
{
    void *texData = texResource->mode == TEX_RESOURCE_MODE_NORMAL 
        ? Resource_GetData(texResource->resource) 
        : texResource->textureData;

    return NNS_G3dGetTex(texData);
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

// Duplicates a texture resource without the actual texture data
static void *CreateStrippedTexture(void *resFile, enum HeapId heapID)
{
    u32 size = GetStrippedTextureResourceSize(resFile);
    void *duplicated = Heap_AllocFromHeap(heapID, size);
    memcpy(duplicated, resFile, size);

    return duplicated;
}

// Calculates the size of a texture resource without the actual texture data
static u32 GetStrippedTextureResourceSize(const void *resFile)
{
    NNSG3dResTex *texture = NNS_G3dGetTex(resFile);
    GF_ASSERT(texture);

    u8 *texData = (u8 *)texture + texture->texInfo.ofsTex;
    return (u32)(texData - (u8 *)resFile);
}
