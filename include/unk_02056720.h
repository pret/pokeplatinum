#ifndef POKEPLATINUM_UNK_02056720_H
#define POKEPLATINUM_UNK_02056720_H

#include "struct_decls/struct_02056B24_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_021C0794_decl.h"

int Poketch_SaveSize(void);
void Poketch_Init(PoketchData * param0);
void sub_020567D0(PoketchData * param0);
BOOL sub_020567E0(PoketchData * param0);
BOOL sub_020567E8(PoketchData * param0, int param1);
BOOL sub_020567F0(PoketchData * param0, int param1);
int sub_02056830(const PoketchData * param0);
int sub_02056838(PoketchData * param0);
int sub_02056860(PoketchData * param0);
u32  sub_02056888(const PoketchData * param0);
void sub_0205689C(PoketchData * param0, u32 param1);
u32  sub_020568C8(const PoketchData * param0);
void sub_020568CC(PoketchData * param0, u32 param1);
BOOL sub_020568D8(const PoketchData * param0);
void sub_020568E0(const PoketchData * param0, u32 * param1, u32 * param2);
void sub_020568F4(PoketchData * param0, BOOL param1, u32 param2, u32 param3);
void sub_02056934(PoketchData * param0, u32 param1, u32 param2);
void sub_02056970(PoketchData * param0, u32 param1, u32 param2);
BOOL sub_020569A8(const PoketchData * param0, u32 param1, u32 param2);
void sub_020569C4(PoketchData * param0, int param1, u8 param2, u8 param3);
void sub_020569E8(const PoketchData * param0, int param1, u8 * param2, u8 * param3);
BOOL sub_02056A10(const PoketchData * param0);
void sub_02056A18(const PoketchData * param0, u8 * param1);
void sub_02056A2C(PoketchData * param0, const u8 * param1);
void sub_02056A48(PoketchData * param0, const BoxPokemon * param1);
int sub_02056AAC(const PoketchData * param0);
void sub_02056AC8(const PoketchData * param0, int param1, int * param2, int * param3);
u32 sub_02056AFC(const PoketchData * param0, int param1);
PoketchData * sub_02056B24(SaveData * param0);

#endif // POKEPLATINUM_UNK_02056720_H
