#ifndef POKEPLATINUM_UNK_02014D38_H
#define POKEPLATINUM_UNK_02014D38_H

#include "struct_decls/struct_02014D38_decl.h"
#include "struct_decls/struct_02014EC4_decl.h"
#include "struct_decls/struct_02014FB0_decl.h"

#include "savedata.h"
#include "strbuf.h"

UnkStruct_02014D38 *sub_02014D38(u32 heapID);
void sub_02014D70(UnkStruct_02014D38 *param0);
void sub_02014D90(UnkStruct_02014D38 *param0, u16 param1, Strbuf *param2);
void sub_02014DB8(u16 param0, Strbuf *param1);
u16 sub_02014DFC(u32 param0, u32 param1);
BOOL sub_02014E4C(u16 param0, u32 *param1, u32 *param2);
u32 Sentence_SaveSize(void);
void Sentence_Init(void *param0);
UnkStruct_02014EC4 *sub_02014EC4(SaveData *saveData);
BOOL sub_02014ED8(const UnkStruct_02014EC4 *param0, u32 param1);
u32 sub_02014EE4(UnkStruct_02014EC4 *param0);
BOOL sub_02014F48(UnkStruct_02014EC4 *param0);
u16 sub_02014F64(u32 param0);
BOOL sub_02014F8C(const UnkStruct_02014EC4 *param0, int param1);
void sub_02014F98(UnkStruct_02014EC4 *param0, int param1);
UnkStruct_02014FB0 *sub_02014FB0(u32 param0);
void sub_02014FF0(UnkStruct_02014FB0 *param0);
u32 sub_02015004(const UnkStruct_02014FB0 *param0);
u16 sub_02015008(const UnkStruct_02014FB0 *param0, u32 param1);
s16 sub_02015030(const UnkStruct_02014FB0 *param0, u16 param1);

#endif // POKEPLATINUM_UNK_02014D38_H
