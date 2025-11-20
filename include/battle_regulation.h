#ifndef POKEPLATINUM_BATTLE_REGULATION_H
#define POKEPLATINUM_BATTLE_REGULATION_H

#include "savedata.h"
#include "strbuf.h"

#define BATTLE_REGULATION_NAME_LENGTH 12

typedef struct BattleRegulation {
    u16 name[BATTLE_REGULATION_NAME_LENGTH];
    u16 maxTotalLevel;
    u8 teamSize;
    u8 maxLevel;
    s8 heightRestriction;
    s8 weightRestriction;
    u8 speciesRestriction : 1;
    u8 itemRestriction : 1;
    u8 speciesUniqueness : 1;
    u8 itemUniqueness : 1;
    u8 moveRestrictions : 1;
} BattleRegulation;

typedef struct BattleRegulationData {
    BattleRegulation regulations[1];
} BattleRegulationData;

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
const BattleRegulation *BattleRegulation_GetByIndex(SaveData *saveData, int index);
void BattleRegulation_GetNameByIndex(SaveData *saveData, int index, Strbuf *strbuf, int heapID);
const BattleRegulation *BattleRegulation_GetDefault(void);
int BattleRegulation_GetIndex(const BattleRegulation *regulation);

#endif // POKEPLATINUM_BATTLE_REGULATION_H
