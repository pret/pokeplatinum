#ifndef POKEPLATINUM_UNK_02014A84_H
#define POKEPLATINUM_UNK_02014A84_H

#include "constants/heap.h"

#include "struct_defs/sentence.h"

#include "string_gf.h"

void Sentence_Init(Sentence *sentence);
void Sentence_InitWithType(Sentence *sentence, u32 type);
void sub_02014AB4(Sentence *sentence);
void sub_02014AC4(Sentence *sentence, int param1);
String *Sentence_AsString(const Sentence *sentence, enum HeapID heapID);
String *sub_02014BA0(const Sentence *sentence, u32 param1);
BOOL Sentence_IsValid(const Sentence *sentence);
BOOL sub_02014BD0(const Sentence *sentence);
u16 Sentence_GetWord(const Sentence *sentence, int slot);
u32 Sentence_GetType(const Sentence *sentence);
u32 Sentence_GetID(const Sentence *sentence);
BOOL sub_02014C88(const Sentence *param0, const Sentence *param1);
void Sentence_Set(Sentence *param0, const Sentence *param1);
u32 sub_02014CD4(u32 param0);
void sub_02014CE0(Sentence *sentence, u32 param1, u32 param2);
void Sentence_SetWord(Sentence *sentence, u32 index, u16 word);
void sub_02014D10(Sentence *sentence);

#endif // POKEPLATINUM_UNK_02014A84_H
