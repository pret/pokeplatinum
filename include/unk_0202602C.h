#ifndef POKEPLATINUM_UNK_0202602C_H
#define POKEPLATINUM_UNK_0202602C_H

#include "struct_decls/struct_02026030_decl.h"
#include "struct_defs/struct_0202610C.h"

#include "savedata.h"
#include "strbuf.h"

int sub_0202602C(void);
int RegulationBattles_SaveSize(void);
void BattleRegulation_Copy(const BattleRegulation *param0, BattleRegulation *param1);
void RegulationBattles_Init(UnkStruct_02026030 *param0);
void sub_0202604C(const BattleRegulation *param0, Strbuf *param1);
Strbuf *sub_0202605C(const BattleRegulation *param0, int heapID);
int sub_02026074(const BattleRegulation *param0, int param1);
BattleRegulation *sub_0202610C(SaveData *saveData, int param1);
void sub_0202613C(SaveData *saveData, const BattleRegulation *param1);

#endif // POKEPLATINUM_UNK_0202602C_H
