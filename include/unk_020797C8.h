#ifndef POKEPLATINUM_UNK_020797C8_H
#define POKEPLATINUM_UNK_020797C8_H

#include "struct_decls/struct_020797DC_decl.h"
#include "struct_defs/pokemon.h"

#include "strbuf.h"

#define MAX_PC_BOXES 18

void PCBoxes_Init(PCBoxes *param0);
u32 PCBoxes_SaveSize(void);
BOOL sub_02079868(PCBoxes *param0, BoxPokemon *param1);
BOOL sub_020798A0(PCBoxes *param0, u32 param1, BoxPokemon *param2);
BOOL sub_02079914(PCBoxes *param0, u32 param1, u32 param2, BoxPokemon *param3);
void sub_02079968(PCBoxes *param0, u32 param1, u32 param2);
u32 sub_0207999C(const PCBoxes *param0);
u32 PCBoxes_FirstEmptyBox(const PCBoxes *param0);
BOOL sub_020799F0(const PCBoxes *param0, int *param1, int *param2);
u32 sub_02079A50(const PCBoxes *param0);
void sub_02079A94(PCBoxes *param0, u32 param1);
u32 sub_02079AA8(const PCBoxes *param0, u32 param1);
void sub_02079AC4(PCBoxes *param0, u32 param1, u32 param2);
void sub_02079AF4(const PCBoxes *param0, u32 param1, Strbuf *param2);
void sub_02079B24(PCBoxes *param0, u32 param1, const Strbuf *param2);
u32 sub_02079B54(const PCBoxes *param0, u32 param1);
u32 sub_02079B98(const PCBoxes *param0, u32 param1);
u32 sub_02079BEC(const PCBoxes *param0);
u32 sub_02079C08(const PCBoxes *param0, u32 param1, u32 param2, int param3, void *param4);
void sub_02079C50(PCBoxes *param0, u32 param1, u32 param2, int param3, void *param4);
BoxPokemon *sub_02079C9C(const PCBoxes *param0, u32 param1, u32 param2);
void sub_02079CD8(PCBoxes *param0, u32 param1);
BOOL sub_02079CFC(const PCBoxes *param0, u32 param1);
u32 sub_02079D20(const PCBoxes *param0);

#endif // POKEPLATINUM_UNK_020797C8_H
