#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "unk_02017728.h"
#include "heap.h"
#include "resource_manager.h"

#define RESOURCE_ID_INVALID (-1)

static Resource *ResourceManager_AllocResource(ResourceManager *resMgr);
static void Resource_Init(Resource *resource);
static TextureResource *TextureResourceManager_AllocTexture(const TextureResourceManager *texMgr);
static void TextureResource_Init(TextureResource *texResource);
static void TexRes_AllocVRam(const NNSG3dResTex *texRes, NNSGfdTexKey *texKey, NNSGfdTexKey *tex4x4Key, NNSGfdPlttKey *paletteKey);
static NNSG3dResTex *TextureResource_GetTexRes(const TextureResource *texResource);
static NNSG3dResTex *TextureResource_GetTexResWithData(const TextureResource *texResource);
static void TexRes_UploadToVRam(NNSG3dResTex *texRes, TextureResource *texResource);
static void TexRes_AssignVRamKeys(NNSG3dResTex *texRes, NNSGfdTexKey texKey, NNSGfdTexKey tex4x4Key, NNSGfdPlttKey paletteKey);
static void TexRes_ReleaseVRamKeys(NNSG3dResTex *texRes);
static void *CreateStrippedTexture(void *resFile, enum HeapId heapID);
static u32 GetStrippedTextureResourceSize(const void *resFile);

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

    TextureResourceManager_Clear(texMgr);
    ResourceManager_Delete(texMgr->resMgr);
    Heap_FreeToHeap(texMgr->textures);
    Heap_FreeToHeap(texMgr);
}

BOOL TextureResourceManager_IsIDUnused(const TextureResourceManager *texMgr, int id)
{
    GF_ASSERT(texMgr);
    return ResourceManager_IsIDUnused(texMgr->resMgr, id);
}

TextureResource *TextureResourceManager_AddTexture(const TextureResourceManager *texMgr, void *data, 
    int id, enum TextureResourceMode mode, enum HeapId heapID)
{
    TextureResource * texResource;
    void * resourceData;

    GF_ASSERT(texMgr);

    texResource = TextureResourceManager_AllocTexture(texMgr);
    texResource->mode = mode;

    if (texResource->mode == TEX_RESOURCE_MODE_SEPARATED) {
        resourceData = CreateStrippedTexture(data, heapID);
        texResource->textureData = data;
    } else {
        resourceData = data;
        texResource->textureData = NULL;
    }

    texResource->resource = ResourceManager_AddResource(texMgr->resMgr, resourceData, id);

    return texResource;
}

TextureResource *TextureResourceManager_AddTextureAndAllocVRam(TextureResourceManager *texMgr, void *data, 
    int id, enum TextureResourceMode mode, enum HeapId heapID)
{
    TextureResource *texResource = TextureResourceManager_AddTexture(texMgr, data, id, mode, heapID);
    TextureResource_AllocVRam(texResource);

    return texResource;
}

void TextureResourceManager_RemoveTexture(TextureResourceManager *texMgr, TextureResource *texResource)
{
    GF_ASSERT(texMgr);
    GF_ASSERT(texResource);

    if (texResource->mode == TEX_RESOURCE_MODE_SEPARATED && (texResource->texDataDiscarded == 0)) {
        Heap_FreeToHeap(texResource->textureData);
        texResource->mode = NULL;
    }

    if (texResource->resource) {
        ResourceManager_RemoveResource(texMgr->resMgr, texResource->resource);
    }

    if (texResource->texKey != NNS_GFD_ALLOC_ERROR_TEXKEY) {
        GF_ASSERT(NNS_GfdFreeTexVram(texResource->texKey) == 0);
    }

    if (texResource->tex4x4Key != NNS_GFD_ALLOC_ERROR_TEXKEY) {
        GF_ASSERT(NNS_GfdFreeTexVram(texResource->tex4x4Key) == 0);
    }

    if (texResource->paletteKey != NNS_GFD_ALLOC_ERROR_PLTTKEY) {
        GF_ASSERT(NNS_GfdFreePlttVram(texResource->paletteKey) == 0);
    }

    TextureResource_Init(texResource);
}

void TextureResourceManager_RemoveTextureWithID(TextureResourceManager *texMgr, int id)
{
    GF_ASSERT(texMgr);
    TextureResourceManager_RemoveTexture(texMgr, TextureResourceManager_FindTextureResource(texMgr, id));
}

void TextureResourceManager_Clear(TextureResourceManager *texMgr)
{
    GF_ASSERT(texMgr);
    GF_ASSERT(texMgr->textures);

    for (int i = 0; i < texMgr->resMgr->maxResources; i++) {
        if (texMgr->textures[i].resource) {
            TextureResourceManager_RemoveTexture(texMgr, texMgr->textures + i);
        }
    }
}

TextureResource *TextureResourceManager_FindTextureResource(const TextureResourceManager *texMgr, int id)
{
    GF_ASSERT(texMgr);

    for (int i = 0; i < texMgr->resMgr->maxResources; i++) {
        // Combining these two checks into one doesn't match
        if (texMgr->textures[i].resource) {
            int texId = TextureResource_GetID(texMgr->textures + i);
            if (texId == id) {
                return texMgr->textures + i;
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

NNSG3dResTex *TextureResource_GetUnderlyingResource(const TextureResource *texResource)
{
    GF_ASSERT(texResource);
    return TextureResource_GetTexRes(texResource);
}

void TextureResource_UploadToVRam(TextureResource *texResource)
{
    NNSG3dResTex * texRes;

    GF_ASSERT(texResource);
    GF_ASSERT(texResource->texDataDiscarded == FALSE);

    if (texResource->paletteKey == NNS_GFD_ALLOC_ERROR_PLTTKEY) {
        GF_ASSERT(FALSE);
        return;
    }

    texRes = TextureResource_GetTexResWithData(texResource);
    TexRes_UploadToVRam(texRes, texResource);
}

void TextureResourceManager_UploadResourceToVRam(TextureResourceManager *texMgr, int id)
{
    GF_ASSERT(texMgr);
    TextureResource_UploadToVRam(TextureResourceManager_FindTextureResource(texMgr, id));
}

// Discards the texture data of a texture resource. Only do this after the texture has been uploaded to VRAM.
// Only allowed for TEX_RESOURCE_MODE_SEPARATED resources.
void TextureResource_DiscardTextureData(TextureResource *texResource)
{
    GF_ASSERT(texResource);

    // Discarding texture data is not allowed for normal texture resources
    if (texResource->mode == TEX_RESOURCE_MODE_NORMAL) {
        GF_ASSERT(FALSE);
        return;
    }

    if (texResource->texDataDiscarded) {
        GF_ASSERT(FALSE);
        return;
    }

    TexRes_ReleaseVRamKeys(TextureResource_GetTexResWithData(texResource));
    TexRes_AssignVRamKeys(
        TextureResource_GetTexRes(texResource), 
        texResource->texKey, 
        texResource->tex4x4Key, 
        texResource->paletteKey
    );
    Heap_FreeToHeap(texResource->textureData);

    texResource->textureData = NULL;
    texResource->texDataDiscarded = TRUE;
}

void TextureResourceManager_DiscardTextureData(TextureResourceManager *texMgr, int id)
{
    GF_ASSERT(texMgr);
    TextureResource_DiscardTextureData(TextureResourceManager_FindTextureResource(texMgr, id));
}

void TextureResource_AllocVRam(TextureResource *texResource)
{
    GF_ASSERT(texResource);
    GF_ASSERT(texResource->texDataDiscarded == FALSE);

    if (texResource->paletteKey != NNS_GFD_ALLOC_ERROR_PLTTKEY) {
        GF_ASSERT(FALSE);
        return;
    }

    NNSG3dResTex *texRes = TextureResource_GetTexResWithData(texResource);
    TexRes_AllocVRam(texRes, &texResource->texKey, &texResource->tex4x4Key, &texResource->paletteKey);
}

NNSGfdTexKey TextureResource_GetTexKey(const TextureResource *texResource)
{
    GF_ASSERT(texResource);
    return texResource->texKey;
}

NNSGfdTexKey TextureResource_GetTex4x4Key(const TextureResource *texResource)
{
    GF_ASSERT(texResource);
    return texResource->tex4x4Key;
}

NNSGfdPlttKey TextureResource_GetPaletteKey(const TextureResource *texResource)
{
    GF_ASSERT(texResource);
    return texResource->paletteKey;
}

u32 Utility_GetStrippedTextureResourceSize(NNSG3dResFileHeader *resFile)
{
    return GetStrippedTextureResourceSize(resFile);
}

static TextureResource *TextureResourceManager_AllocTexture(const TextureResourceManager *texMgr)
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
    texResource->texKey = NNS_GFD_ALLOC_ERROR_TEXKEY;
    texResource->tex4x4Key = NNS_GFD_ALLOC_ERROR_TEXKEY;
    texResource->paletteKey = NNS_GFD_ALLOC_ERROR_PLTTKEY;
    texResource->texDataDiscarded = 0;
    texResource->textureData = NULL;
    texResource->texDataDiscarded = 0;
}

static NNSG3dResTex *TextureResource_GetTexRes(const TextureResource *texResource)
{
    return NNS_G3dGetTex(Resource_GetData(texResource->resource));
}

static NNSG3dResTex *TextureResource_GetTexResWithData(const TextureResource *texResource)
{
    void *texData = texResource->mode == TEX_RESOURCE_MODE_NORMAL 
        ? Resource_GetData(texResource->resource) 
        : texResource->textureData;

    return NNS_G3dGetTex(texData);
}

static void TexRes_AllocVRam(const NNSG3dResTex *texRes, NNSGfdTexKey *texKey, NNSGfdTexKey *tex4x4Key, NNSGfdPlttKey *paletteKey)
{
    u32 texSize = NNS_G3dTexGetRequiredSize(texRes);
    u32 tex4x4Size = NNS_G3dTex4x4GetRequiredSize(texRes);
    u32 paletteSize = NNS_G3dPlttGetRequiredSize(texRes);

    if (texSize != 0) {
        *texKey = NNS_GfdAllocTexVram(texSize, FALSE, 0);
    }

    if (tex4x4Size != 0) {
        *tex4x4Key = NNS_GfdAllocTexVram(tex4x4Size, TRUE, 0);
    }

    if (paletteSize != 0) {
        *paletteKey = NNS_GfdAllocPlttVram(paletteSize, texRes->tex4x4Info.flag & NNS_G3D_RESPLTT_USEPLTT4, 0);
    }
}

static void TexRes_UploadToVRam(NNSG3dResTex *texRes, TextureResource *texResource)
{
    TexRes_AssignVRamKeys(texRes, texResource->texKey, texResource->tex4x4Key, texResource->paletteKey);

    DC_FlushRange(texRes, texRes->header.size);

    NNS_G3dTexLoad(texRes, TRUE);
    NNS_G3dPlttLoad(texRes, TRUE);
}

static void TexRes_AssignVRamKeys(NNSG3dResTex *texRes, NNSGfdTexKey texKey, NNSGfdTexKey tex4x4Key, NNSGfdPlttKey paletteKey)
{
    NNS_G3dTexSetTexKey(texRes, texKey, tex4x4Key);
    NNS_G3dPlttSetPlttKey(texRes, paletteKey);
}

static void TexRes_ReleaseVRamKeys(NNSG3dResTex *texRes)
{
    NNSGfdTexKey texKey;
    NNSGfdTexKey tex4x4Key;

    NNS_G3dTexReleaseTexKey(texRes, &texKey, &tex4x4Key);
    NNS_G3dPlttReleasePlttKey(texRes);
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
