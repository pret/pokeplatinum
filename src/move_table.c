#include "move_table.h"

#include <nitro.h>
#include <string.h>

#include "constants/moves.h"

#include "narc.h"

static void LoadMoveEntry(int move, MoveTable *entry);

void MoveTable_Load(void *buf) {
    NARC_ReadFromMemberByIndexPair(buf, NARC_INDEX_POKETOOL__WAZA__PL_WAZA_TBL, 0, 0, sizeof(MoveTable) * MAX_MOVES);
}

u32 MoveTable_LoadParam(int move, enum MoveAttribute param) {
    MoveTable moveData;

    LoadMoveEntry(move, &moveData);
    return MoveTable_Get(&moveData, param);
}

u8 MoveTable_CalcMaxPP(u16 move, u8 ppUps) {
    if (ppUps > 3) {
        ppUps = 3;
    }

    u8 pp = MoveTable_LoadParam(move, MOVEATTRIBUTE_PP);
    pp += (pp * 20 * ppUps) / 100;

    return pp;
}

u32 MoveTable_Get(MoveTable *entry, enum MoveAttribute param) {
    u32 result;

    switch (param) {
    case MOVEATTRIBUTE_EFFECT:
        result = entry->effect;
        break;
    case MOVEATTRIBUTE_CLASS:
        result = entry->class;
        break;
    case MOVEATTRIBUTE_POWER:
        result = entry->power;
        break;
    case MOVEATTRIBUTE_TYPE:
        result = entry->type;
        break;
    case MOVEATTRIBUTE_ACCURACY:
        result = entry->accuracy;
        break;
    case MOVEATTRIBUTE_PP:
        result = entry->pp;
        break;
    case MOVEATTRIBUTE_EFFECT_CHANCE:
        result = entry->effectChance;
        break;
    case MOVEATTRIBUTE_RANGE:
        result = entry->range;
        break;
    case MOVEATTRIBUTE_PRIORTY:
        result = entry->priority;
        break;
    case MOVEATTRIBUTE_FLAGS:
        result = entry->flags;
        break;
    case MOVEATTRIBUTE_CONTEST_EFFECT:
        result = entry->contest.effect;
        break;
    case MOVEATTRIBUTE_CONTEST_TYPE:
        result = entry->contest.type;
        break;
    }

    return result;
}

static void LoadMoveEntry(int move, MoveTable *entry) {
    NARC_ReadWholeMemberByIndexPair(entry, NARC_INDEX_POKETOOL__WAZA__PL_WAZA_TBL, move);
}
