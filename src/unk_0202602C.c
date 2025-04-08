#include "unk_0202602C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02026030_decl.h"
#include "struct_defs/struct_02026030_t.h"
#include "struct_defs/struct_0202610C.h"

#include "savedata.h"
#include "strbuf.h"

int sub_0202602C(void)
{
    return sizeof(BattleRegulation);
}

int RegulationBattles_SaveSize(void)
{
    return sizeof(UnkStruct_02026030);
}

void BattleRegulation_Copy(const BattleRegulation *param0, BattleRegulation *param1)
{
    MI_CpuCopy8(param0, param1, sizeof(BattleRegulation));
}

void RegulationBattles_Init(UnkStruct_02026030 *param0)
{
    memset(param0, 0, sizeof(UnkStruct_02026030));
}

void sub_0202604C(const BattleRegulation *param0, Strbuf *param1)
{
    Strbuf_CopyNumChars(param1, param0->unk_00, (11 + 1));
}

Strbuf *sub_0202605C(const BattleRegulation *param0, int param1)
{
    Strbuf *v0 = Strbuf_Init((11 + 1) * 2, param1);

    Strbuf_CopyChars(v0, param0->unk_00);
    return v0;
}

int sub_02026074(const BattleRegulation *param0, int param1)
{
    int v0 = 0;

    switch (param1) {
    case 1:
        v0 = param0->unk_1A;
        break;
    case 2:
        v0 = param0->unk_1B;
        break;
    case 3:
        v0 = param0->unk_18;
        break;
    case 4:
        v0 = param0->unk_1E_0;
        break;
    case 5:
        v0 = param0->unk_1C;
        break;
    case 6:
        if (param0->unk_1C > 0) {
            v0 = 1;
        } else if (param0->unk_1C < 0) {
            v0 = -1;
        }
        break;
    case 7:
        v0 = param0->unk_1D;
        break;
    case 8:
        if (param0->unk_1D > 0) {
            v0 = 1;
        } else if (param0->unk_1D < 0) {
            v0 = -1;
        }
        break;
    case 9:
        v0 = param0->unk_1E_3;
        break;
    case 10:
        v0 = param0->unk_1E_2;
        break;
    case 11:
        v0 = param0->unk_1E_1;
        break;
    case 12:
        v0 = param0->unk_1E_4;
        break;
    }

    return v0;
}

BattleRegulation *sub_0202610C(SaveData *saveData, int param1)
{
    GF_ASSERT(param1 < 1);
    UnkStruct_02026030 *v0 = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_REGULATION_BATTLES);

    if (sub_02026074(&v0->unk_00[param1], 1) != 0) {
        return &v0->unk_00[param1];
    }

    return NULL;
}

void sub_0202613C(SaveData *saveData, const BattleRegulation *param1)
{
    UnkStruct_02026030 *v0 = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_REGULATION_BATTLES);
    BattleRegulation_Copy(param1, &v0->unk_00[0]);
}
