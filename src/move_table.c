#include <nitro.h>
#include <string.h>

#include "constants/moves.h"

#include "move_table.h"
#include "narc.h"

static void LoadMoveEntry(int move, MoveTable *moveTable);

void MoveTable_Load(void *buf)
{
    NARC_ReadFromMemberByIndexPair(buf, NARC_INDEX_POKETOOL__WAZA__PL_WAZA_TBL, 0, 0, sizeof(MoveTable) * MAX_MOVES);
}

u32 MoveTable_LoadAttribute(int move, enum MoveAttribute attribute)
{
    MoveTable moveData;

    LoadMoveEntry(move, &moveData);
    return MoveTable_Attribute(&moveData, attribute);
}

u8 MoveTable_CalcMaxPP(u16 move, u8 ppUps)
{
    if (ppUps > 3) {
        ppUps = 3;
    }

    u8 pp = MoveTable_LoadAttribute(move, MOVEATTRIBUTE_PP);
    pp += (pp * 20 * ppUps) / 100;

    return pp;
}

u32 MoveTable_Attribute(MoveTable *moveTable, enum MoveAttribute attribute)
{
    u32 result;

    switch (attribute) {
    case MOVEATTRIBUTE_EFFECT:
        result = moveTable->effect;
        break;
    case MOVEATTRIBUTE_CLASS:
        result = moveTable->class;
        break;
    case MOVEATTRIBUTE_POWER:
        result = moveTable->power;
        break;
    case MOVEATTRIBUTE_TYPE:
        result = moveTable->type;
        break;
    case MOVEATTRIBUTE_ACCURACY:
        result = moveTable->accuracy;
        break;
    case MOVEATTRIBUTE_PP:
        result = moveTable->pp;
        break;
    case MOVEATTRIBUTE_EFFECT_CHANCE:
        result = moveTable->effectChance;
        break;
    case MOVEATTRIBUTE_RANGE:
        result = moveTable->range;
        break;
    case MOVEATTRIBUTE_PRIORTY:
        result = moveTable->priority;
        break;
    case MOVEATTRIBUTE_FLAGS:
        result = moveTable->flags;
        break;
    case MOVEATTRIBUTE_CONTEST_EFFECT:
        result = moveTable->contest.effect;
        break;
    case MOVEATTRIBUTE_CONTEST_TYPE:
        result = moveTable->contest.type;
        break;
    }

    return result;
}

static void LoadMoveEntry(int move, MoveTable *moveTable)
{
    NARC_ReadWholeMemberByIndexPair(moveTable, NARC_INDEX_POKETOOL__WAZA__PL_WAZA_TBL, move);
}
