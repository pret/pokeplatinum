#ifndef POKEPLATINUM_UNK_0202631C_H
#define POKEPLATINUM_UNK_0202631C_H

#include "struct_decls/pokedexdata_decl.h"

#include "pokemon.h"
#include "savedata.h"

int Pokedex_SaveSize(void);
Pokedex *Pokedex_New(u32 param0);
void Pokedex_Copy(const Pokedex *src, Pokedex *dest);
void Pokedex_Init(Pokedex *param0);
u16 sub_02026DD0(const Pokedex *param0);
u16 Pokedex_CountSeenNational(const Pokedex *pokedex);
u16 Pokedex_CountSeen(const Pokedex *pokedex);
u16 sub_02026E64(const Pokedex *param0);
u16 Pokedex_CountSeenSinnoh(const Pokedex *pokedex);
BOOL sub_02026EF4(const Pokedex *param0);
BOOL sub_02026F0C(const Pokedex *param0);
u16 sub_02026F20(const Pokedex *param0);
u16 sub_02026F58(const Pokedex *param0);
BOOL Pokedex_HasCaughtSpecies(const Pokedex *pokedex, u16 species);
BOOL Pokedex_HasSeenSpecies(const Pokedex *pokedex, u16 species);
u32 sub_0202702C(const Pokedex *param0, u8 param1);
u32 sub_02027058(const Pokedex *param0, u16 param1, int param2);
u32 sub_020270AC(const Pokedex *param0, int param1);
u32 sub_020270DC(const Pokedex *param0);
u32 sub_020270F8(const Pokedex *param0, int param1);
u32 sub_02027130(const Pokedex *param0);
u32 sub_02027154(const Pokedex *param0, int param1);
u32 sub_0202718C(const Pokedex *param0);
u32 sub_020271B0(const Pokedex *param0, int param1);
u32 sub_020271E8(const Pokedex *param0);
u32 sub_02027208(const Pokedex *param0, int param1);
u32 sub_02027240(const Pokedex *param0);
u32 sub_02027264(const Pokedex *param0, int param1);
u32 sub_02027288(const Pokedex *param0);
void sub_020272A4(Pokedex *param0, Pokemon *param1);
void sub_0202736C(Pokedex *param0, Pokemon *param1);
void sub_02027454(Pokedex *param0);
BOOL Pokedex_IsNationalDexObtained(const Pokedex *pokedex);
BOOL sub_02027494(const Pokedex *param0);
void sub_020274B0(Pokedex *param0);
BOOL sub_020274D0(const Pokedex *param0, u16 param1, u32 param2);
void sub_02027508(Pokedex *param0);
BOOL sub_02027514(const Pokedex *param0);
BOOL Pokedex_IsObtained(const Pokedex *pokedex);
void Pokedex_FlagObtained(Pokedex *param0);
Pokedex *SaveData_Pokedex(SaveData *saveData);
u32 sub_0202756C(const Pokedex *param0, int param1, int param2);
u32 sub_020276C8(const Pokedex *param0, int param1);

#endif // POKEPLATINUM_UNK_0202631C_H
