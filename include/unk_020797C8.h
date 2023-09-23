#ifndef POKEPLATINUM_UNK_020797C8_H
#define POKEPLATINUM_UNK_020797C8_H

#include "strbuf.h"
#include "pokemon.h"
#include "struct_decls/struct_020797DC_decl.h"

void PSSBoxes_Init(PSSBoxes * param0);
u32 PSSBoxes_SaveSize(void);
BOOL sub_02079868(PSSBoxes * param0, BoxPokemon * param1);
BOOL sub_020798A0(PSSBoxes * param0, u32 param1, BoxPokemon * param2);
BOOL sub_02079914(PSSBoxes * param0, u32 param1, u32 param2, BoxPokemon * param3);
void sub_02079968(PSSBoxes * param0, u32 param1, u32 param2);
u32 sub_0207999C(const PSSBoxes * param0);
u32 sub_020799A0(const PSSBoxes * param0);
BOOL sub_020799F0(const PSSBoxes * param0, int * param1, int * param2);
u32 sub_02079A50(const PSSBoxes * param0);
void sub_02079A94(PSSBoxes * param0, u32 param1);
u32 sub_02079AA8(const PSSBoxes * param0, u32 param1);
void sub_02079AC4(PSSBoxes * param0, u32 param1, u32 param2);
void sub_02079AF4(const PSSBoxes * param0, u32 param1, Strbuf *param2);
void sub_02079B24(PSSBoxes * param0, u32 param1, const Strbuf *param2);
u32 sub_02079B54(const PSSBoxes * param0, u32 param1);
u32 sub_02079B98(const PSSBoxes * param0, u32 param1);
u32 sub_02079BEC(const PSSBoxes * param0);
u32 sub_02079C08(const PSSBoxes * param0, u32 param1, u32 param2, int param3, void * param4);
void sub_02079C50(PSSBoxes * param0, u32 param1, u32 param2, int param3, void * param4);
BoxPokemon * sub_02079C9C(const PSSBoxes * param0, u32 param1, u32 param2);
void sub_02079CD8(PSSBoxes * param0, u32 param1);
BOOL sub_02079CFC(const PSSBoxes * param0, u32 param1);
u32  sub_02079D20(const PSSBoxes * param0);

#endif // POKEPLATINUM_UNK_020797C8_H
