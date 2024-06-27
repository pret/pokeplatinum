#ifndef POKEPLATINUM_UNK_0202298C_H
#define POKEPLATINUM_UNK_0202298C_H

#include "struct_decls/struct_0202298C_decl.h"
#include "struct_decls/struct_02022BC0_decl.h"
#include "struct_decls/struct_02022BD8_2_decl.h"
#include "struct_decls/struct_02022BD8_decl.h"

#include "constants/heap.h"

#include <nnsys.h>

// In TEX_RESOURCE_MODE_SEPARATED, texture data is stripped from the resource and stored in a separate buffer.
// The main purpose of this is to allow freeing the texture data after the texture has been uploaded to VRAM,
// while still keeping the resource itself around.
enum TextureResourceMode {
    TEX_RESOURCE_MODE_NORMAL = 0,
    TEX_RESOURCE_MODE_SEPARATED,
};

ResourceManager *ResourceManager_New(s32 maxResources, enum HeapId heapID);
void ResourceManager_Delete(ResourceManager *resMgr);
BOOL ResourceManager_IsIDUnused(ResourceManager *resMgr, int id);
Resource *ResourceManager_AddResource(ResourceManager *resMgr, void *data, int id);
Resource *ResourceManager_AddResourceFromFile(ResourceManager *resMgr, const char *filename, int id, enum HeapId heapID);
void ResourceManager_RemoveResource(ResourceManager *resMgr, Resource *resource);
void ResourceManager_Clear(ResourceManager *resMgr);
Resource *ResourceManager_FindResource(ResourceManager *resMgr, int id);
void *Resource_GetData(Resource *resource);
void Resource_SetData(Resource *resource, void *data);
int Resource_GetID(Resource *resource);
TextureResourceManager *TextureResourceManager_New(s32 maxTextures, enum HeapId heapID);
void TextureResourceManager_Delete(TextureResourceManager * param0);
BOOL TextureResourceManager_IsIDUnused(const TextureResourceManager * param0, int param1);
TextureResource * TextureResourceManager_AddTexture(const TextureResourceManager *texMgr, void *data, 
    int id, enum TextureResourceMode mode, enum HeapId heapID);
TextureResource * TextureResourceManager_AddTextureAndAllocVRam(TextureResourceManager *texMgr, void *data, 
    int id, enum TextureResourceMode mode, enum HeapId heapID);
void TextureResourceManager_RemoveTexture(TextureResourceManager * param0, TextureResource * param1);
void TextureResourceManager_RemoveTextureWithID(TextureResourceManager * param0, int param1);
void TextureResourceManager_Clear(TextureResourceManager * param0);
TextureResource * TextureResourceManager_FindTextureResource(const TextureResourceManager * param0, int param1);
int TextureResource_GetID(const TextureResource * param0);
NNSG3dResTex * TextureResource_GetUnderlyingResource(const TextureResource * param0);
void TextureResource_UploadToVRam(TextureResource * param0);
void TextureResourceManager_UploadResourceToVRam(TextureResourceManager * param0, int param1);
void TextureResource_DiscardTextureData(TextureResource * param0);
void TextureResourceManager_DiscardTextureData(TextureResourceManager * param0, int param1);
void TextureResource_AllocVRam(TextureResource * param0);
NNSGfdTexKey TextureResource_GetTexKey(const TextureResource * param0);
NNSGfdTexKey TextureResource_GetTex4x4Key(const TextureResource * param0);
NNSGfdPlttKey TextureResource_GetPaletteKey(const TextureResource * param0);
u32 Utility_GetStrippedTextureResourceSize(NNSG3dResFileHeader * param0);

#endif // POKEPLATINUM_UNK_0202298C_H
