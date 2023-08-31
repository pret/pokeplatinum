#include <nitro.h>
#include <string.h>

#include "move_table.h"
#include "narc.h"

static void LoadMoveEntry(int moveID, MoveTable * moveTable);

void MoveTable_Load (void * dest) {
    NARC_ReadFromMemberByIndexPair(dest, NARC_INDEX_POKETOOL__WAZA__PL_WAZA_TBL, 0, 0, sizeof(MoveTable) * (467 + 1));
}

u32 MoveTable_LoadAttribute (int moveID, int attrno)
{
    MoveTable moveData;

    LoadMoveEntry(moveID, &moveData);
    return MoveTable_Attribute(&moveData, attrno);
}

u8 MoveTable_CalcMaxPP (u16 moveID, u8 ppUps)
{
    u8 pp;

    if (ppUps > 3) {
        ppUps = 3;
    }

    pp = MoveTable_LoadAttribute(moveID, 5);
    pp += (pp * 20 * ppUps) / 100;

    return pp;
}

u32 MoveTable_Attribute (MoveTable * moveTable, int attribute)
{
    u32 ret;

    switch (attribute) {
    case MOVEATTRIBUTE_EFFECT:
        ret = moveTable->effect;
        break;
    case MOVEATTRIBUTE_CLASS:
        ret = moveTable->class;
        break;
    case MOVEATTRIBUTE_POWER:
        ret = moveTable->power;
        break;
    case MOVEATTRIBUTE_TYPE:
        ret = moveTable->type;
        break;
    case MOVEATTRIBUTE_ACCURACY:
        ret = moveTable->accuracy;
        break;
    case MOVEATTRIBUTE_PP:
        ret = moveTable->pp;
        break;
    case MOVEATTRIBUTE_EFFECT_CHANCE:
        ret = moveTable->effectChance;
        break;
    case MOVEATTRIBUTE_RANGE:
        ret = moveTable->range;
        break;
    case MOVEATTRIBUTE_PRIORTY:
        ret = moveTable->priority;
        break;
    case MOVEATTRIBUTE_FLAGS:
        ret = moveTable->flags;
        break;
    case MOVEATTRIBUTE_CONTEST_EFFECT:
        ret = moveTable->contest.effect;
        break;
    case MOVEATTRIBUTE_CONTEST_TYPE:
        ret = moveTable->contest.type;
        break;
    }

    return ret;
}

static void LoadMoveEntry (int moveID, MoveTable * moveTable)
{
    NARC_ReadWholeMemberByIndexPair(moveTable, NARC_INDEX_POKETOOL__WAZA__PL_WAZA_TBL, moveID);
}
