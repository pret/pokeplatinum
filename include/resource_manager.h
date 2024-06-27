#ifndef POKEPLATINUM_UNK_0202298C_H
#define POKEPLATINUM_UNK_0202298C_H

#include "struct_decls/struct_0202298C_decl.h"
#include "struct_decls/struct_02022BC0_decl.h"
#include "struct_decls/struct_02022BD8_2_decl.h"
#include "struct_decls/struct_02022BD8_decl.h"

#include "constants/heap.h"

#include <nnsys.h>

ResourceManager *ResourceManager_New(s32 maxResources, enum HeapId heapID);
void ResourceManager_Delete(ResourceManager *resMgr);
BOOL ResourceManager_IsIDUnused(ResourceManager *resMgr, int id);
Resource *ResourceManager_AddResource(ResourceManager *resMgr, void *data, int id);
Resource *ResourceManager_AddResourceFromFile(ResourceManager *resMgr, const char *filename, int id, enum HeapId heapID);
void ResourceManager_RemoveResource(ResourceManager *resMgr, Resource *resource);
void ResourceManager_Clear(ResourceManager *resMgr);
Resource *ResourceManager_FindResource(ResourceManager *resMgr, int id);
void * sub_02022B54(Resource * param0);
void sub_02022B64(Resource * param0, void * param1);
int sub_02022B80(Resource * param0);
UnkStruct_02022BD8 * sub_02022BD8(int param0, int param1);
void sub_02022C1C(UnkStruct_02022BD8 * param0);
BOOL sub_02022C40(const UnkStruct_02022BD8 * param0, int param1);
UnkStruct_02022BD8_2 * sub_02022C58(const UnkStruct_02022BD8 * param0, void * param1, int param2, u32 param3, u32 param4);
UnkStruct_02022BD8_2 * sub_02022C9C(UnkStruct_02022BD8 * param0, void * param1, int param2, u32 param3, int param4);
void sub_02022CB4(UnkStruct_02022BD8 * param0, UnkStruct_02022BD8_2 * param1);
void sub_02022D38(UnkStruct_02022BD8 * param0, int param1);
void sub_02022D58(UnkStruct_02022BD8 * param0);
UnkStruct_02022BD8_2 * sub_02022D98(const UnkStruct_02022BD8 * param0, int param1);
int sub_02022DE0(const UnkStruct_02022BD8_2 * param0);
NNSG3dResTex * sub_02022DF4(const UnkStruct_02022BD8_2 * param0);
void sub_02022E08(UnkStruct_02022BD8_2 * param0);
void sub_02022E38(UnkStruct_02022BD8 * param0, int param1);
void sub_02022E54(UnkStruct_02022BD8_2 * param0);
void sub_02022EA0(UnkStruct_02022BD8 * param0, int param1);
void sub_02022EBC(UnkStruct_02022BD8_2 * param0);
NNSGfdTexKey sub_02022EF4(const UnkStruct_02022BD8_2 * param0);
NNSGfdTexKey sub_02022F04(const UnkStruct_02022BD8_2 * param0);
NNSGfdPlttKey sub_02022F14(const UnkStruct_02022BD8_2 * param0);
u32 sub_02022F24(NNSG3dResFileHeader * param0);

#endif // POKEPLATINUM_UNK_0202298C_H
