#ifndef POKEPLATINUM_UNK_0202298C_H
#define POKEPLATINUM_UNK_0202298C_H

#include "struct_decls/struct_0202298C_decl.h"
#include "struct_decls/struct_02022BC0_decl.h"
#include "struct_decls/struct_02022BD8_2_decl.h"
#include "struct_decls/struct_02022BD8_decl.h"

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
TextureResource * sub_02022C58(const TextureResourceManager * param0, void * param1, int param2, u32 param3, u32 param4);
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
