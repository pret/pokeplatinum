#ifndef POKEPLATINUM_UNK_0202631C_H
#define POKEPLATINUM_UNK_0202631C_H

#include "struct_decls/struct_02026324_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_021C0794_decl.h"

int Pokedex_SaveSize(void);
PokedexData * sub_02026324(u32 param0);
void sub_02026338(const PokedexData * param0, PokedexData * param1);
void Pokedex_Init(PokedexData * param0);
u16 sub_02026DD0(const PokedexData * param0);
u16 sub_02026E0C(const PokedexData * param0);
u16 sub_02026E48(const PokedexData * param0);
u16 sub_02026E64(const PokedexData * param0);
u16 sub_02026EAC(const PokedexData * param0);
BOOL sub_02026EF4(const PokedexData * param0);
BOOL sub_02026F0C(const PokedexData * param0);
u16 sub_02026F20(const PokedexData * param0);
u16 sub_02026F58(const PokedexData * param0);
BOOL Pokedex_CaughtSpecies(const PokedexData * param0, u16 param1);
BOOL sub_02026FE8(const PokedexData * param0, u16 param1);
u32 sub_0202702C(const PokedexData * param0, u8 param1);
u32 sub_02027058(const PokedexData * param0, u16 param1, int param2);
u32 sub_020270AC(const PokedexData * param0, int param1);
u32 sub_020270DC(const PokedexData * param0);
u32 sub_020270F8(const PokedexData * param0, int param1);
u32 sub_02027130(const PokedexData * param0);
u32 sub_02027154(const PokedexData * param0, int param1);
u32 sub_0202718C(const PokedexData * param0);
u32 sub_020271B0(const PokedexData * param0, int param1);
u32 sub_020271E8(const PokedexData * param0);
u32 sub_02027208(const PokedexData * param0, int param1);
u32 sub_02027240(const PokedexData * param0);
u32 sub_02027264(const PokedexData * param0, int param1);
u32 sub_02027288(const PokedexData * param0);
void sub_020272A4(PokedexData * param0, Pokemon * param1);
void sub_0202736C(PokedexData * param0, Pokemon * param1);
void sub_02027454(PokedexData * param0);
BOOL sub_02027474(const PokedexData * param0);
BOOL sub_02027494(const PokedexData * param0);
void sub_020274B0(PokedexData * param0);
BOOL sub_020274D0(const PokedexData * param0, u16 param1, u32 param2);
void sub_02027508(PokedexData * param0);
BOOL sub_02027514(const PokedexData * param0);
BOOL sub_02027520(const PokedexData * param0);
void sub_02027540(PokedexData * param0);
PokedexData * sub_02027560(SaveData * param0);
u32 sub_0202756C(const PokedexData * param0, int param1, int param2);
u32 sub_020276C8(const PokedexData * param0, int param1);

#endif // POKEPLATINUM_UNK_0202631C_H
