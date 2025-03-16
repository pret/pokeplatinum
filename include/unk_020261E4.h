#ifndef POKEPLATINUM_UNK_020261E4_H
#define POKEPLATINUM_UNK_020261E4_H

#include "struct_decls/struct_02026218_decl.h"
#include "struct_decls/struct_02026224_decl.h"
#include "struct_decls/struct_02026310_decl.h"
#include "struct_defs/struct_0202818C.h"

#include "pokemon.h"
#include "savedata.h"

int Daycare_SaveSize(void);
void Daycare_Init(Daycare *daycare);
UnkStruct_02026218 *sub_02026218(Daycare *daycare, int param1);
BoxPokemon *sub_02026220(UnkStruct_02026218 *param0);
UnkStruct_02026224 *sub_02026224(UnkStruct_02026218 *param0);
u32 sub_02026228(const UnkStruct_02026218 *param0);
UnkStruct_0202818C *sub_02026230(UnkStruct_02026224 *param0);
int sub_02026234(const Daycare *daycare);
int sub_02026248(const Daycare *daycare);
int sub_02026250(const Daycare *daycare);
void sub_02026258(UnkStruct_02026218 *param0, int param1);
void sub_02026260(UnkStruct_02026218 *param0, int param1);
void sub_02026270(Daycare *daycare, int param1);
void sub_02026278(Daycare *daycare, int param1);
BOOL sub_02026280(Daycare *daycare);
void sub_020262A8(UnkStruct_02026218 *param0, const UnkStruct_02026218 *param1);
void sub_020262C0(UnkStruct_02026224 *param0);
void sub_020262F4(UnkStruct_02026218 *param0);
Daycare *sub_02026310(SaveData *param0);

#endif // POKEPLATINUM_UNK_020261E4_H
