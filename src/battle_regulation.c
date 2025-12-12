#include "battle_regulation.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"

#include "message.h"
#include "savedata.h"
#include "strbuf.h"

#include "res/text/bank/unk_0353.h"

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
    Strbuf_CopyNumChars(strbuf, regulation->name, BATTLE_REGULATION_NAME_LENGTH);
}

Strbuf *BattleRegulation_GetNameStrbuf(const BattleRegulation *regulation, int heapID)
{
    Strbuf *strbuf = Strbuf_Init(BATTLE_REGULATION_NAME_LENGTH * 2, heapID);

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

BattleRegulation BattleRegulation_PredefinedRules[] = {
    {
        .name = { CHAR_EOS },
        .maxTotalLevel = 0,
        .teamSize = 3,
        .maxLevel = 50,
        .heightRestriction = 0,
        .weightRestriction = 0,
        .speciesRestriction = 1,
        .itemRestriction = 0,
        .speciesUniqueness = 0,
        .itemUniqueness = 0,
        .moveRestrictions = 0,
    },
    {
        .name = { CHAR_EOS },
        .maxTotalLevel = 80,
        .teamSize = 3,
        .maxLevel = 30,
        .heightRestriction = -20,
        .weightRestriction = -20,
        .speciesRestriction = 0,
        .itemRestriction = 0,
        .speciesUniqueness = 0,
        .itemUniqueness = 0,
        .moveRestrictions = 0,
    },
    {
        .name = { CHAR_EOS },
        .maxTotalLevel = 0,
        .teamSize = 3,
        .maxLevel = 5,
        .heightRestriction = 0,
        .weightRestriction = 0,
        .speciesRestriction = 0,
        .itemRestriction = 0,
        .speciesUniqueness = 0,
        .itemUniqueness = 0,
        .moveRestrictions = 1,
    },
    {
        .name = { CHAR_EOS },
        .maxTotalLevel = 0,
        .teamSize = 3,
        .maxLevel = 50,
        .heightRestriction = 0,
        .weightRestriction = -99,
        .speciesRestriction = 0,
        .itemRestriction = 0,
        .speciesUniqueness = 0,
        .itemUniqueness = 0,
        .moveRestrictions = 0,
    },
    {
        .name = { CHAR_EOS },
        .maxTotalLevel = 0,
        .teamSize = 4,
        .maxLevel = 50,
        .heightRestriction = 0,
        .weightRestriction = 0,
        .speciesRestriction = 1,
        .itemRestriction = 0,
        .speciesUniqueness = 0,
        .itemUniqueness = 0,
        .moveRestrictions = 0,
    },
};

BattleRegulation BattleRegulation_DefaultRule = {
    .name = { CHAR_EOS },
    .maxTotalLevel = 0,
    .teamSize = 6,
    .maxLevel = 100,
    .heightRestriction = 0,
    .weightRestriction = 0,
    .speciesRestriction = 1,
    .itemRestriction = 1,
    .speciesUniqueness = 1,
    .itemUniqueness = 1,
    .moveRestrictions = 0,
};

const BattleRegulation *BattleRegulation_GetByIndex(SaveData *saveData, int index)
{
    BattleRegulationData *regulationData = NULL;

    if (index < NELEMS(BattleRegulation_PredefinedRules)) {
        return &BattleRegulation_PredefinedRules[index];
    }

    regulationData = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_REGULATION_BATTLES);
    return &regulationData->regulations[0];
}

void BattleRegulation_GetNameByIndex(SaveData *saveData, int index, Strbuf *strbuf, int heapID)
{
    MessageLoader *messageLoader;
    BattleRegulationData *regulationData = NULL;

    if (index < NELEMS(BattleRegulation_PredefinedRules)) {
        messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0353, heapID);
        MessageLoader_GetStrbuf(messageLoader, pl_msg_00000353_00070 + index, strbuf);
        MessageLoader_Free(messageLoader);
    } else {
        BattleRegulation_GetName(BattleRegulation_Load(saveData, 0), strbuf);
    }
}

const BattleRegulation *BattleRegulation_GetDefault(void)
{
    return &BattleRegulation_DefaultRule;
}

int BattleRegulation_GetIndex(const BattleRegulation *regulation)
{
    if (regulation == NULL) {
        return 0xFF;
    }

    for (int i = 0; i < NELEMS(BattleRegulation_PredefinedRules); i++) {
        if (memcmp(regulation, &BattleRegulation_PredefinedRules[i], sizeof(BattleRegulation)) == 0) {
            return i;
        }
    }

    return NELEMS(BattleRegulation_PredefinedRules);
}
