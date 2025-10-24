#ifndef POKEPLATINUM_BATTLE_REGULATION_H
#define POKEPLATINUM_BATTLE_REGULATION_H

#include "struct_decls/battle_regulation_data_decl.h"
#include "struct_defs/battle_regulation.h"

#include "savedata.h"
#include "strbuf.h"

enum BattleRegulationRule {
    BATTLE_REGULATION_RULE_TEAM_SIZE = 1,
    BATTLE_REGULATION_RULE_MAX_LEVEL,
    BATTLE_REGULATION_RULE_MAX_TOTAL_LEVEL,
    BATTLE_REGULATION_RULE_SPECIES_RESTRICT,
    BATTLE_REGULATION_RULE_HEIGHT_RESTRICT,
    BATTLE_REGULATION_RULE_HEIGHT_TYPE,
    BATTLE_REGULATION_RULE_WEIGHT_RESTRICT,
    BATTLE_REGULATION_RULE_WEIGHT_TYPE,
    BATTLE_REGULATION_RULE_ITEM_UNIQUE,
    BATTLE_REGULATION_RULE_SPECIES_UNIQUE,
    BATTLE_REGULATION_RULE_ITEM_RESTRICT,
    BATTLE_REGULATION_RULE_MOVE_RESTRICTIONS,
};

int BattleRegulation_Size(void);
int BattleRegulation_SaveSize(void);
void BattleRegulation_Copy(const BattleRegulation *src, BattleRegulation *dst);
void RegulationBattles_Init(BattleRegulationData *regulationData);
void BattleRegulation_GetName(const BattleRegulation *regulation, Strbuf *strbuf);
Strbuf *BattleRegulation_GetNameStrbuf(const BattleRegulation *regulation, int heapID);
int BattleRegulation_GetRuleValue(const BattleRegulation *regulation, enum BattleRegulationRule rule);
BattleRegulation *BattleRegulation_Load(SaveData *saveData, int index);
void BattleRegulation_Save(SaveData *saveData, const BattleRegulation *regulation);

#endif // POKEPLATINUM_BATTLE_REGULATION_H
