#ifndef POKEPLATINUM_UNK_02030A80_H
#define POKEPLATINUM_UNK_02030A80_H

#include "struct_decls/struct_02030A80_decl.h"
#include "struct_defs/sentence.h"

#include "savedata.h"
#include "strbuf.h"

UnkStruct_02030A80 *sub_02030A80(int heapID);
void sub_02030A98(UnkStruct_02030A80 *param0);
void sub_02030AA0(UnkStruct_02030A80 *param0, SaveData *saveData);
Strbuf *sub_02030B94(const UnkStruct_02030A80 *param0, int heapID);
u32 sub_02030BAC(const UnkStruct_02030A80 *param0);
int sub_02030BBC(const UnkStruct_02030A80 *param0);
int sub_02030BCC(const UnkStruct_02030A80 *param0);
int sub_02030BEC(const UnkStruct_02030A80 *param0);
int sub_02030BFC(const UnkStruct_02030A80 *param0);
int sub_02030C08(const UnkStruct_02030A80 *param0);
Strbuf *sub_02030C28(const UnkStruct_02030A80 *param0, Sentence *param1, int heapID);
int sub_02030CCC(const UnkStruct_02030A80 *param0);
int sub_02030CDC(const UnkStruct_02030A80 *param0);

#endif // POKEPLATINUM_UNK_02030A80_H
