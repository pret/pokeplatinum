#ifndef POKEPLATINUM_UNK_02014A84_H
#define POKEPLATINUM_UNK_02014A84_H

#include "struct_defs/sentence.h"

#include "strbuf.h"

void sub_02014A84(Sentence *sentence);
void sub_02014A9C(Sentence *sentence, u32 param1);
void sub_02014AB4(Sentence *sentence);
void sub_02014AC4(Sentence *sentence, int param1);
Strbuf *sub_02014B34(const Sentence *sentence, u32 heapID);
Strbuf *sub_02014BA0(const Sentence *sentence, u32 param1);
BOOL sub_02014BBC(const Sentence *sentence);
BOOL sub_02014BD0(const Sentence *sentence);
u16 sub_02014C78(const Sentence *sentence, int param1);
u32 sub_02014C80(const Sentence *sentence);
u32 sub_02014C84(const Sentence *sentence);
BOOL sub_02014C88(const Sentence *param0, const Sentence *param1);
void sub_02014CC0(Sentence *param0, const Sentence *param1);
u32 sub_02014CD4(u32 param0);
void sub_02014CE0(Sentence *sentence, u32 param1, u32 param2);
void sub_02014CF8(Sentence *sentence, u32 index, u16 word);
void sub_02014D10(Sentence *sentence);

#endif // POKEPLATINUM_UNK_02014A84_H
