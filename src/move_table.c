#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020790C4.h"

#include "filesystem.h"
#include "move_table.h"

static void LoadMoveEntry(int moveID, MoveTable * moveTable);

void LoadMoveTable (void * dest) {
    ReadFromNarcMemberByIndexPair(dest, 9, 0, 0, sizeof(MoveTable) * (467 + 1));
}

u32 GetMoveAttributeibute (int moveID, int attrno)
{
    MoveTable moveData;

    LoadMoveEntry(moveID, &moveData);
    return GetMoveTableAttribute(&moveData, attrno);
}

u8 GetMoveMaxPP (u16 moveID, u8 ppUps)
{
    u8 pp;

    if (ppUps > 3) {
        ppUps = 3;
    }

    pp = GetMoveAttributeibute(moveID, 5);
    pp += (pp * 20 * ppUps) / 100;

    return pp;
}

u32 GetMoveTableAttribute (MoveTable * moveTable, int attribute)
{
    u32 ret;

    switch (attribute) {
    case MOVEATTRIBUTE_EFFECT:
        ret = moveTable->unk_00;
        break;
    case MOVEATTRIBUTE_CLASS:
        ret = moveTable->unk_02;
        break;
    case MOVEATTRIBUTE_POWER:
        ret = moveTable->unk_03;
        break;
    case MOVEATTRIBUTE_TYPE:
        ret = moveTable->unk_04;
        break;
    case MOVEATTRIBUTE_ACCURACY:
        ret = moveTable->unk_05;
        break;
    case MOVEATTRIBUTE_PP:
        ret = moveTable->unk_06;
        break;
    case MOVEATTRIBUTE_EFFECT_CHANCE:
        ret = moveTable->unk_07;
        break;
    case MOVEATTRIBUTE_UNK7:
        ret = moveTable->unk_08;
        break;
    case MOVEATTRIBUTE_PRIORTY:
        ret = moveTable->unk_0A;
        break;
    case MOVEATTRIBUTE_UNK9:
        ret = moveTable->unk_0B;
        break;
    case MOVEATTRIBUTE_UNK10:
        ret = moveTable->unk_0C.unk_00;
        break;
    case MOVEATTRIBUTE_CONTEST_TYPE:
        ret = moveTable->unk_0C.unk_01;
        break;
    }

    return ret;
}

static void LoadMoveEntry (int moveID, MoveTable * moveTable)
{
    ReadWholeNarcMemberByIndexPair(moveTable, 9, moveID);
}
