#ifndef POKEPLATINUM_BATTLE_REGULATION_DATA_H
#define POKEPLATINUM_BATTLE_REGULATION_DATA_H

#include "struct_defs/battle_regulation.h"

#include "savedata.h"
#include "strbuf.h"

const BattleRegulation *BattleRegulation_GetByIndex(SaveData *saveData, int index);
void BattleRegulation_GetNameByIndex(SaveData *saveData, int index, Strbuf *strbuf, int heapID);
const BattleRegulation *BattleRegulation_GetDefault(void);
int BattleRegulation_GetIndex(const BattleRegulation *regulation);

#endif // POKEPLATINUM_BATTLE_REGULATION_DATA_H
