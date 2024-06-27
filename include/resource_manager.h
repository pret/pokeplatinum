#ifndef POKEPLATINUM_UNK_0202298C_H
#define POKEPLATINUM_UNK_0202298C_H

#include "struct_decls/struct_0202298C_decl.h"
#include "struct_decls/struct_02022BC0_decl.h"
#include "struct_decls/struct_02022BD8_2_decl.h"
#include "struct_decls/struct_02022BD8_decl.h"

#include "constants/heap.h"

#include <nnsys.h>

enum TextureResourceMode {
    TEX_RESOURCE_MODE_NORMAL = 0,   // Texture data is contained in the actual resource
    TEX_RESOURCE_MODE_STRIPPED,     // Texture data is stripped from the resource and stored in a separate buffer
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
TextureResource * sub_02022C58(const TextureResourceManager * param0, void * param1, int param2, enum TextureResourceMode param3, enum HeapId param4);
TextureResource * sub_02022C9C(TextureResourceManager * param0, void * param1, int param2, u32 param3, int param4);
void sub_02022CB4(TextureResourceManager * param0, TextureResource * param1);
void sub_02022D38(TextureResourceManager * param0, int param1);
void sub_02022D58(TextureResourceManager * param0);
TextureResource * sub_02022D98(const TextureResourceManager * param0, int param1);
int TextureResource_GetID(const TextureResource * param0);
NNSG3dResTex * sub_02022DF4(const TextureResource * param0);
void sub_02022E08(TextureResource * param0);
void sub_02022E38(TextureResourceManager * param0, int param1);
void sub_02022E54(TextureResource * param0);
void sub_02022EA0(TextureResourceManager * param0, int param1);
void sub_02022EBC(TextureResource * param0);
NNSGfdTexKey sub_02022EF4(const TextureResource * param0);
NNSGfdTexKey sub_02022F04(const TextureResource * param0);
NNSGfdPlttKey sub_02022F14(const TextureResource * param0);
u32 sub_02022F24(NNSG3dResFileHeader * param0);

#endif // POKEPLATINUM_UNK_0202298C_H
