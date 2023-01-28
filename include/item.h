#ifndef POKEPLATINUM_UNK_0207CDEC_H
#define POKEPLATINUM_UNK_0207CDEC_H

#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_0207D3B0_decl.h"

void sub_0207CDEC(void * param0, u16 param1, u16 param2);
u16 sub_0207CE78(u16 param0, u16 param1);
u16 sub_0207CF10(u16 param0);
u16 GetItemIconCellArchiveIndex(void);
u16 GetItemIconCellAnimationArchiveIndex(void);
void * LoadItemDataOrGfx(u16 param0, u16 param1, u32 param2);
void GetItemNameIntoString(UnkStruct_02023790 * param0, u16 param1, u32 param2);
void GetItemDescriptionIntoString(UnkStruct_02023790 * param0, u16 param1, u16 param2);
s32 GetItemAttribute(u16 param0, u16 param1, u32 param2);
s32 GetItemAttributeFromStruct(UnkStruct_0207D3B0 * param0, u16 param1);
const u16 GetMoveFromTMOrHMItemID(u16 param0);
u8 IsMoveHM(u16 param0);
u8 GetTMOrHMNumberFromItemID(u16 param0);
u8 IsItemMail(u16 param0);
u8 sub_0207D2F0(u16 param0);
u16 sub_0207D310(u8 param0);
u8 IsItemBerry(u16 param0);
u8 sub_0207D344(u16 param0);
u16 sub_0207D354(u8 param0);
u8 IsItemHerbalMedicine(u16 param0);
void * sub_0207D388(int param0);
UnkStruct_0207D3B0 * sub_0207D3B0(UnkStruct_0207D3B0 * param0, u16 param1);

#endif // POKEPLATINUM_UNK_0207CDEC_H
