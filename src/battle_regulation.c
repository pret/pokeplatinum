#include "battle_regulation.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/battle_regulation_data_decl.h"
#include "struct_defs/battle_regulation.h"
#include "struct_defs/battle_regulation_data.h"

#include "savedata.h"
#include "strbuf.h"

int BattleRegulation_Size(void)
{
    return sizeof(BattleRegulation);
}

int BattleRegulation_SaveSize(void)
{
    return sizeof(BattleRegulationData);
}

void BattleRegulation_Copy(const BattleRegulation *src, BattleRegulation *dst)
{
    MI_CpuCopy8(src, dst, sizeof(BattleRegulation));
}

void RegulationBattles_Init(BattleRegulationData *regulationData)
{
    memset(regulationData, 0, sizeof(BattleRegulationData));
}

void BattleRegulation_GetName(const BattleRegulation *regulation, Strbuf *strbuf)
{
    Strbuf_CopyNumChars(strbuf, regulation->name, (BATTLE_REGULATION_NAME_LENGTH));
}

Strbuf *BattleRegulation_GetNameStrbuf(const BattleRegulation *regulation, int heapID)
{
    Strbuf *strbuf = Strbuf_Init((BATTLE_REGULATION_NAME_LENGTH) * 2, heapID);

    Strbuf_CopyChars(strbuf, regulation->name);
    return strbuf;
}

int BattleRegulation_GetRuleValue(const BattleRegulation *regulation, enum BattleRegulationRule rule)
{
    int ruleValue = 0;

    switch (rule) {
    case BATTLE_REGULATION_RULE_TEAM_SIZE:
        ruleValue = regulation->teamSize;
        break;
    case BATTLE_REGULATION_RULE_MAX_LEVEL:
        ruleValue = regulation->maxLevel;
        break;
    case BATTLE_REGULATION_RULE_MAX_TOTAL_LEVEL:
        ruleValue = regulation->maxTotalLevel;
        break;
    case BATTLE_REGULATION_RULE_SPECIES_RESTRICT:
        ruleValue = regulation->speciesRestriction;
        break;
    case BATTLE_REGULATION_RULE_HEIGHT_RESTRICT:
        ruleValue = regulation->heightRestriction;
        break;
    case BATTLE_REGULATION_RULE_HEIGHT_TYPE:
        if (regulation->heightRestriction > 0) {
            ruleValue = 1;
        } else if (regulation->heightRestriction < 0) {
            ruleValue = -1;
        }
        break;
    case BATTLE_REGULATION_RULE_WEIGHT_RESTRICT:
        ruleValue = regulation->weightRestriction;
        break;
    case BATTLE_REGULATION_RULE_WEIGHT_TYPE:
        if (regulation->weightRestriction > 0) {
            ruleValue = 1;
        } else if (regulation->weightRestriction < 0) {
            ruleValue = -1;
        }
        break;
    case BATTLE_REGULATION_RULE_ITEM_UNIQUE:
        ruleValue = regulation->itemUniqueness;
        break;
    case BATTLE_REGULATION_RULE_SPECIES_UNIQUE:
        ruleValue = regulation->speciesUniqueness;
        break;
    case BATTLE_REGULATION_RULE_ITEM_RESTRICT:
        ruleValue = regulation->itemRestriction;
        break;
    case BATTLE_REGULATION_RULE_MOVE_RESTRICTIONS:
        ruleValue = regulation->moveRestrictions;
        break;
    }

    return ruleValue;
}

BattleRegulation *BattleRegulation_Load(SaveData *saveData, int index)
{
    GF_ASSERT(index < 1);
    BattleRegulationData *regulationData = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_REGULATION_BATTLES);

    if (BattleRegulation_GetRuleValue(&regulationData->regulations[index], BATTLE_REGULATION_RULE_TEAM_SIZE) != 0) {
        return &regulationData->regulations[index];
    }

    return NULL;
}

void BattleRegulation_Save(SaveData *saveData, const BattleRegulation *regulation)
{
    BattleRegulationData *regulationData = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_REGULATION_BATTLES);
    BattleRegulation_Copy(regulation, &regulationData->regulations[0]);
}
