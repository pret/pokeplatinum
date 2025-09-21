#include "battle_regulation_data.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"

#include "struct_decls/battle_regulation_data_decl.h"
#include "struct_defs/battle_regulation.h"
#include "struct_defs/battle_regulation_data.h"

#include "battle_regulation.h"
#include "message.h"
#include "savedata.h"
#include "strbuf.h"

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
        MessageLoader_GetStrbuf(messageLoader, 70 + index, strbuf);
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
        return 0xff;
    }

    for (int i = 0; i < NELEMS(BattleRegulation_PredefinedRules); i++) {
        if (memcmp(regulation, &BattleRegulation_PredefinedRules[i], sizeof(BattleRegulation)) == 0) {
            return i;
        }
    }

    return 5;
}
