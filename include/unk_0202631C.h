#ifndef POKEPLATINUM_UNK_0202631C_H
#define POKEPLATINUM_UNK_0202631C_H

#include "struct_decls/pokedexdata_decl.h"

#include "pokemon.h"
#include "savedata.h"

int Pokedex_SaveSize(void);
PokedexData *sub_02026324(u32 param0);
void sub_02026338(const PokedexData *param0, PokedexData *param1);
void Pokedex_Init(PokedexData *dexData);
u16 sub_02026DD0(const PokedexData *dexData);
u16 sub_02026E0C(const PokedexData *dexData);
u16 sub_02026E48(const PokedexData *dexData);
u16 sub_02026E64(const PokedexData *dexData);
u16 sub_02026EAC(const PokedexData *dexData);
BOOL sub_02026EF4(const PokedexData *dexData);
BOOL sub_02026F0C(const PokedexData *dexData);
u16 sub_02026F20(const PokedexData *dexData);
u16 sub_02026F58(const PokedexData *dexData);
BOOL Pokedex_CaughtSpecies(const PokedexData *dexData, u16 species);
BOOL Pokedex_EncounteredSpecies(const PokedexData *dexData, u16 species);
u32 sub_0202702C(const PokedexData *dexData, u8 param1);
u32 sub_02027058(const PokedexData *dexData, u16 param1, int param2);
u32 sub_020270AC(const PokedexData *dexData, int param1);
u32 sub_020270DC(const PokedexData *dexData);
u32 sub_020270F8(const PokedexData *dexData, int param1);
u32 sub_02027130(const PokedexData *dexData);
u32 sub_02027154(const PokedexData *dexData, int param1);
u32 sub_0202718C(const PokedexData *dexData);
u32 sub_020271B0(const PokedexData *dexData, int param1);
u32 sub_020271E8(const PokedexData *dexData);
u32 sub_02027208(const PokedexData *dexData, int param1);
u32 sub_02027240(const PokedexData *dexData);
u32 sub_02027264(const PokedexData *dexData, int param1);
u32 sub_02027288(const PokedexData *dexData);
void sub_020272A4(PokedexData *dexData, Pokemon *param1);
void sub_0202736C(PokedexData *dexData, Pokemon *param1);
void sub_02027454(PokedexData *dexData);
BOOL Pokedex_NationalUnlocked(const PokedexData *dexData);
BOOL Pokedex_CanDetectForms(const PokedexData *dexData);
void Pokedex_TurnOnFormDetection(PokedexData *dexData);
BOOL sub_020274D0(const PokedexData *dexData, u16 param1, u32 param2);
void sub_02027508(PokedexData *dexData);
BOOL sub_02027514(const PokedexData *dexData);
BOOL sub_02027520(const PokedexData *dexData);
void sub_02027540(PokedexData *dexData);
PokedexData *SaveData_Pokedex(SaveData *param0);
u32 sub_0202756C(const PokedexData *dexData, int param1, int param2);
u32 sub_020276C8(const PokedexData *dexData, int param1);

#endif // POKEPLATINUM_UNK_0202631C_H
