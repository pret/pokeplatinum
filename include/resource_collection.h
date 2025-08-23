#ifndef POKEPLATINUM_RESOURCE_MANAGER_H
#define POKEPLATINUM_RESOURCE_MANAGER_H

#include <nnsys.h>

#include "constants/heap.h"

// In TEX_RESOURCE_MODE_SEPARATED, texture data is stripped from the resource and stored in a separate buffer.
// The main purpose of this is to allow freeing the texture data after the texture has been uploaded to VRAM,
// while still keeping the resource itself around.
enum TextureResourceMode {
    TEX_RESOURCE_MODE_NORMAL = 0,
    TEX_RESOURCE_MODE_SEPARATED,
};

typedef struct Resource {
    int id;
    void *data;
} Resource;

typedef struct ResourceCollection {
    Resource *resources;
    int capacity;
    int count;
} ResourceCollection;

typedef struct TextureResource {
    Resource *resource;
    NNSGfdTexKey texKey;
    NNSGfdTexKey tex4x4Key;
    NNSGfdPlttKey paletteKey;
    void *textureData; // Only used when mode is TEX_RESOURCE_MODE_STRIPPED
    u16 texDataDiscarded;
    u16 mode;
} TextureResource;

typedef struct TextureResourceManager {
    ResourceCollection *resources;
    TextureResource *textures;
} TextureResourceManager;

ResourceCollection *ResourceCollection_New(s32 maxResources, enum HeapId heapID);
void ResourceCollection_Delete(ResourceCollection *collection);
BOOL ResourceCollection_IsIDUnused(ResourceCollection *collection, int id);
Resource *ResourceCollection_Add(ResourceCollection *collection, void *data, int id);
Resource *ResourceCollection_AddFromFile(ResourceCollection *collection, const char *filename, int id, enum HeapId heapID);
void ResourceCollection_Remove(ResourceCollection *collection, Resource *resource);
void ResourceCollection_Clear(ResourceCollection *collection);
Resource *ResourceCollection_FindResource(ResourceCollection *collection, int id);
void *Resource_GetData(Resource *resource);
void Resource_SetData(Resource *resource, void *data);
int Resource_GetID(Resource *resource);

TextureResourceManager *TextureResourceManager_New(s32 maxTextures, enum HeapId heapID);
void TextureResourceManager_Delete(TextureResourceManager *texMgr);
BOOL TextureResourceManager_IsIDUnused(const TextureResourceManager *texMgr, int id);
TextureResource *TextureResourceManager_AddTexture(const TextureResourceManager *texMgr, void *data, int id, enum TextureResourceMode mode, enum HeapId heapID);
TextureResource *TextureResourceManager_AddTextureAndAllocVRam(TextureResourceManager *texMgr, void *data, int id, enum TextureResourceMode mode, enum HeapId heapID);
void TextureResourceManager_RemoveTexture(TextureResourceManager *texMgr, TextureResource *texResource);
void TextureResourceManager_RemoveTextureWithID(TextureResourceManager *texMgr, int id);
void TextureResourceManager_Clear(TextureResourceManager *texMgr);
TextureResource *TextureResourceManager_FindTextureResource(const TextureResourceManager *texMgr, int id);
int TextureResource_GetID(const TextureResource *texResource);
NNSG3dResTex *TextureResource_GetUnderlyingResource(const TextureResource *texResource);
void TextureResource_UploadToVRam(TextureResource *texResource);
void TextureResourceManager_UploadResourceToVRam(TextureResourceManager *texMgr, int id);
void TextureResource_DiscardTextureData(TextureResource *texResource);
void TextureResourceManager_DiscardTextureData(TextureResourceManager *texMgr, int id);
void TextureResource_AllocVRam(TextureResource *texResource);
NNSGfdTexKey TextureResource_GetTexKey(const TextureResource *texResource);
NNSGfdTexKey TextureResource_GetTex4x4Key(const TextureResource *texResource);
NNSGfdPlttKey TextureResource_GetPaletteKey(const TextureResource *texResource);
u32 Utility_GetStrippedTextureResourceSize(NNSG3dResFileHeader *resFile);

#endif // POKEPLATINUM_RESOURCE_MANAGER_H
