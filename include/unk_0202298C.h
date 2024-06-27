#ifndef POKEPLATINUM_UNK_0202298C_H
#define POKEPLATINUM_UNK_0202298C_H

#include "resource_manager.h"

#include <nnsys.h>

ResourceManager * ResourceManager_New(int param0, int param1);
void ResourceManager_Delete(ResourceManager * param0);
BOOL ResourceManager_IsIDUnused(ResourceManager * param0, int param1);
Resource * ResourceManager_AddResource(ResourceManager * param0, void * param1, int param2);
Resource * ResourceManager_AddResourceFromFile(ResourceManager * param0, const char * param1, int param2, int param3);
void ResourceManager_RemoveResource(ResourceManager * param0, Resource * param1);
void ResourceManager_Clear(ResourceManager * param0);
Resource * ResourceManager_FindResource(ResourceManager * param0, int param1);
void * Resource_GetData(Resource * param0);
void Resource_SetData(Resource * param0, void * param1);
int Resource_GetID(Resource * param0);
TextureResourceManager * TextureResourceManager_New(int param0, int param1);
void TextureResourceManager_Delete(TextureResourceManager * param0);
BOOL TextureResourceManager_IsIDUnused(const TextureResourceManager * param0, int param1);
TextureResource * TextureResourceManager_AddTexture(const TextureResourceManager * param0, void * param1, int param2, u32 param3, u32 param4);
TextureResource * TextureResourceManager_AddTextureAndAllocVRam(TextureResourceManager * param0, void * param1, int param2, u32 param3, int param4);
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
