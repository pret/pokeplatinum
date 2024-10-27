#ifndef POKEPLATINUM_UNK_0202631C_H
#define POKEPLATINUM_UNK_0202631C_H

#include "struct_decls/pokedexdata_decl.h"

#include "pokemon.h"
#include "savedata.h"

int Pokedex_SaveSize(void);
PokedexData *sub_02026324(u32 param0);
void sub_02026338(const PokedexData *param0, PokedexData *param1);
void Pokedex_Init(PokedexData *param0);
u16 sub_02026DD0(const PokedexData *param0);
u16 Pokedex_CountSeenNational(const PokedexData *pokedex);
u16 Pokedex_CountSeen(const PokedexData *pokedex);
u16 sub_02026E64(const PokedexData *param0);
u16 Pokedex_CountSeenSinnoh(const PokedexData *pokedex);
BOOL sub_02026EF4(const PokedexData *param0);
BOOL sub_02026F0C(const PokedexData *param0);
u16 sub_02026F20(const PokedexData *param0);
u16 sub_02026F58(const PokedexData *param0);
BOOL Pokedex_HasCaughtSpecies(const PokedexData *pokedex, u16 species);
BOOL Pokedex_HasSeenSpecies(const PokedexData *pokedex, u16 species);
u32 sub_0202702C(const PokedexData *param0, u8 param1);
u32 sub_02027058(const PokedexData *param0, u16 param1, int param2);
u32 sub_020270AC(const PokedexData *param0, int param1);
u32 sub_020270DC(const PokedexData *param0);
u32 sub_020270F8(const PokedexData *param0, int param1);
u32 sub_02027130(const PokedexData *param0);
u32 sub_02027154(const PokedexData *param0, int param1);
u32 sub_0202718C(const PokedexData *param0);
u32 sub_020271B0(const PokedexData *param0, int param1);
u32 sub_020271E8(const PokedexData *param0);
u32 sub_02027208(const PokedexData *param0, int param1);
u32 sub_02027240(const PokedexData *param0);
u32 sub_02027264(const PokedexData *param0, int param1);
u32 sub_02027288(const PokedexData *param0);
void sub_020272A4(PokedexData *param0, Pokemon *param1);
void sub_0202736C(PokedexData *param0, Pokemon *param1);
void sub_02027454(PokedexData *param0);
BOOL Pokedex_IsNationalDexObtained(const PokedexData *pokedex);
BOOL sub_02027494(const PokedexData *param0);
void sub_020274B0(PokedexData *param0);
BOOL sub_020274D0(const PokedexData *param0, u16 param1, u32 param2);
void sub_02027508(PokedexData *param0);
BOOL sub_02027514(const PokedexData *param0);
BOOL Pokedex_IsObtained(const PokedexData *pokedex);
void sub_02027540(PokedexData *param0);
PokedexData *SaveData_Pokedex(SaveData *saveData);
u32 sub_0202756C(const PokedexData *param0, int param1, int param2);
u32 sub_020276C8(const PokedexData *param0, int param1);

#endif // POKEPLATINUM_UNK_0202631C_H
