#ifndef POKEPLATINUM_UNK_0202CD50_H
#define POKEPLATINUM_UNK_0202CD50_H

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_0202CD88_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

int GameRecord_SaveSize(void);
void GameRecord_Init(UnkStruct_0202CD88 * param0);
UnkStruct_0202CD88 * sub_0202CD88(SaveData * param0);
u32 sub_0202CE90(UnkStruct_0202CD88 * param0, int param1, u32 param2);
u32 sub_0202CED0(UnkStruct_0202CD88 * param0, int param1, u32 param2);
u32 sub_0202CF28(UnkStruct_0202CD88 * param0, int param1);
u32 sub_0202CF70(UnkStruct_0202CD88 * param0, int param1, u32 param2);
u32 sub_0202CFB8(UnkStruct_0202CD88 * param0, int param1);
void sub_0202CFEC(UnkStruct_0202CD88 * param0, int param1);
u32 sub_0202D034(UnkStruct_0202CD88 * param0);
void sub_0202D040(UnkStruct_0202CD88 * param0, const PokedexData * param1, u16 const param2);

#endif // POKEPLATINUM_UNK_0202CD50_H
