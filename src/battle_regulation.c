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
    Strbuf_CopyNumChars(strbuf, regulation->name, (11 + 1));
}

Strbuf *BattleRegulation_GetNameStrbuf(const BattleRegulation *regulation, int heapID)
{
    Strbuf *strbuf = Strbuf_Init((11 + 1) * 2, heapID);

    Strbuf_CopyChars(strbuf, regulation->name);
    return strbuf;
}

int BattleRegulation_GetRuleValue(const BattleRegulation *regulation, enum BattleRegulationRule rule)
{
    int v0 = 0;

    switch (rule) {
    case BATTLE_REGULATION_RULE_TEAM_SIZE:
        v0 = regulation->teamSize;
        break;
    case BATTLE_REGULATION_RULE_MAX_LEVEL:
        v0 = regulation->maxLevel;
        break;
    case BATTLE_REGULATION_RULE_MAX_TOTAL_LEVEL:
        v0 = regulation->maxTotalLevel;
        break;
    case BATTLE_REGULATION_RULE_SPECIES_RESTRICT:
        v0 = regulation->speciesRestriction;
        break;
    case BATTLE_REGULATION_RULE_HEIGHT_RESTRICT:
        v0 = regulation->heightRestriction;
        break;
    case BATTLE_REGULATION_RULE_HEIGHT_TYPE:
        if (regulation->heightRestriction > 0) {
            v0 = 1;
        } else if (regulation->heightRestriction < 0) {
            v0 = -1;
        }
        break;
    case BATTLE_REGULATION_RULE_WEIGHT_RESTRICT:
        v0 = regulation->weightRestriction;
        break;
    case BATTLE_REGULATION_RULE_WEIGHT_TYPE:
        if (regulation->weightRestriction > 0) {
            v0 = 1;
        } else if (regulation->weightRestriction < 0) {
            v0 = -1;
        }
        break;
    case BATTLE_REGULATION_RULE_ITEM_UNIQUE:
        v0 = regulation->itemUniqueness;
        break;
    case BATTLE_REGULATION_RULE_SPECIES_UNIQUE:
        v0 = regulation->speciesUniqueness;
        break;
    case BATTLE_REGULATION_RULE_ITEM_RESTRICT:
        v0 = regulation->itemRestriction;
        break;
    case BATTLE_REGULATION_RULE_MOVE_RESTRICTIONS:
        v0 = regulation->moveRestrictions;
        break;
    }

    return v0;
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
