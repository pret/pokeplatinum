#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0202440C_decl.h"
#include "struct_decls/struct_0202442C_decl.h"
#include "struct_decls/struct_02024440_decl.h"
#include "struct_decls/struct_0202F264_decl.h"
#include "struct_decls/struct_020308A0_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "constdata/const_020E5830.h"
#include "constdata/const_020E5894.h"
#include "constdata/const_020E5834.h"
#include "constdata/const_020E582C.h"

#include "struct_defs/save_table_entry.h"
#include "struct_defs/struct_0202DF8C.h"

#include "unk_02014D38.h"
#include "savedata/save_table.h"
#include "unk_020244AC.h"
#include "unk_02025CB0.h"
#include "unk_02025E08.h"
#include "unk_0202602C.h"
#include "unk_020261E4.h"
#include "unk_0202631C.h"
#include "unk_020277A4.h"
#include "unk_02027F84.h"
#include "unk_02028124.h"
#include "unk_0202854C.h"
#include "unk_020298BC.h"
#include "poffin.h"
#include "unk_0202ACE0.h"
#include "unk_0202B37C.h"
#include "unk_0202B604.h"
#include "unk_0202C7FC.h"
#include "unk_0202C858.h"
#include "unk_0202C9F4.h"
#include "unk_0202CC64.h"
#include "unk_0202CD50.h"
#include "unk_0202D778.h"
#include "unk_0202D7A8.h"
#include "unk_0202DA40.h"
#include "unk_0202DAB4.h"
#include "unk_0202DF8C.h"
#include "unk_0202E2CC.h"
#include "unk_0202E840.h"
#include "unk_0202EEC0.h"
#include "unk_0202F108.h"
#include "unk_0202F1D4.h"
#include "unk_0203061C.h"
#include "unk_02030880.h"
#include "unk_02030CE8.h"
#include "unk_02030EA4.h"
#include "unk_0203A6DC.h"
#include "unk_020507CC.h"
#include "unk_02056720.h"
#include "unk_020797C8.h"
#include "party.h"
#include "unk_0207D3B8.h"

const SaveTableEntry Unk_020E5894[] = {
    {0x0, 0x0, (SaveEntrySizeFunc)sub_02025CB0, (SaveEntryInitFunc)sub_02025CB4},
    {0x1, 0x0, (SaveEntrySizeFunc)sub_02025E08, (SaveEntryInitFunc)sub_02025E0C},
    {0x2, 0x0, (SaveEntrySizeFunc)Party_sizeof, (SaveEntryInitFunc)sub_0207A008},
    {0x3, 0x0, (SaveEntrySizeFunc)sub_0207D3B8, (SaveEntryInitFunc)sub_0207D3D8},
    {0x4, 0x0, (SaveEntrySizeFunc)sub_020507CC, (SaveEntryInitFunc)sub_020507D4},
    {0x5, 0x0, (SaveEntrySizeFunc)sub_02056720, (SaveEntryInitFunc)sub_02056728},
    {0x6, 0x0, (SaveEntrySizeFunc)sub_0203A6DC, (SaveEntryInitFunc)sub_0203A6F8},
    {0x7, 0x0, (SaveEntrySizeFunc)sub_0202631C, (SaveEntryInitFunc)sub_02026D6C},
    {0x8, 0x0, (SaveEntrySizeFunc)sub_020261E4, (SaveEntryInitFunc)sub_020261EC},
    {0x9, 0x0, (SaveEntrySizeFunc)sub_02027F84, (SaveEntryInitFunc)sub_02027F98},
    {0xA, 0x0, (SaveEntrySizeFunc)sub_020277A4, (SaveEntryInitFunc)sub_020277AC},
    {0xB, 0x0, (SaveEntrySizeFunc)sub_0203A6E0, (SaveEntryInitFunc)sub_0203A6E8},
    {0xC, 0x0, (SaveEntrySizeFunc)sub_0202854C, (SaveEntryInitFunc)sub_02028574},
    {0xD, 0x0, (SaveEntrySizeFunc)sub_02026030, (SaveEntryInitFunc)sub_02026040},
    {0xE, 0x0, (SaveEntrySizeFunc)sub_02029C58, (SaveEntryInitFunc)sub_02029BFC},
    {0xF, 0x0, (SaveEntrySizeFunc)sub_0202843C, (SaveEntryInitFunc)sub_02028444},
    {0x10, 0x0, (SaveEntrySizeFunc)Poffin_GetSizeOfSavedataBlock, (SaveEntryInitFunc)sub_0202AB3C},
    {0x11, 0x0, (SaveEntrySizeFunc)sub_0202B37C, (SaveEntryInitFunc)sub_0202B3A8},
    {0x12, 0x0, (SaveEntrySizeFunc)sub_0202B604, (SaveEntryInitFunc)sub_0202B618},
    {0x13, 0x0, (SaveEntrySizeFunc)sub_0202C7FC, (SaveEntryInitFunc)sub_0202C804},
    {0x14, 0x0, (SaveEntrySizeFunc)sub_0202CD50, (SaveEntryInitFunc)sub_0202CD58},
    {0x15, 0x0, (SaveEntrySizeFunc)sub_0202C9F4, (SaveEntryInitFunc)sub_0202C9FC},
    {0x16, 0x0, (SaveEntrySizeFunc)sub_0202CC64, (SaveEntryInitFunc)sub_0202CC6C},
    {0x17, 0x0, (SaveEntrySizeFunc)sub_0203061C, (SaveEntryInitFunc)sub_02030624},
    {0x18, 0x0, (SaveEntrySizeFunc)sub_0202D778, (SaveEntryInitFunc)sub_0202D77C},
    {0x19, 0x0, (SaveEntrySizeFunc)sub_0202D7A8, (SaveEntryInitFunc)sub_0202D7B0},
    {0x1A, 0x0, (SaveEntrySizeFunc)sub_0202DA4C, (SaveEntryInitFunc)sub_0202DA50},
    {0x1B, 0x0, (SaveEntrySizeFunc)sub_0202E2CC, (SaveEntryInitFunc)sub_0202E2D4},
    {0x1C, 0x0, (SaveEntrySizeFunc)sub_0202E884, (SaveEntryInitFunc)sub_0202E88C},
    {0x1D, 0x0, (SaveEntrySizeFunc)sub_0202ACE0, (SaveEntryInitFunc)sub_0202ACE8},
    {0x1E, 0x0, (SaveEntrySizeFunc)sub_0202C858, (SaveEntryInitFunc)sub_0202C860},
    {0x1F, 0x0, (SaveEntrySizeFunc)sub_0202DAB4, (SaveEntryInitFunc)sub_0202DABC},
    {0x20, 0x0, (SaveEntrySizeFunc)sub_0202EEC0, (SaveEntryInitFunc)sub_0202EEC8},
    {0x21, 0x0, (SaveEntrySizeFunc)sub_0202F108, (SaveEntryInitFunc)sub_0202F10C},
    {0x22, 0x0, (SaveEntrySizeFunc)sub_02014E8C, (SaveEntryInitFunc)sub_02014E90},
    {0x23, 0x0, (SaveEntrySizeFunc)sub_02030CE8, (SaveEntryInitFunc)sub_02030CEC},
    {0x24, 0x0, (SaveEntrySizeFunc)sub_02030EA4, (SaveEntryInitFunc)sub_02030EA8},
    {0x25, 0x1, (SaveEntrySizeFunc)sub_020797D4, (SaveEntryInitFunc)sub_020797C8}
};

const int Unk_020E5830 = NELEMS(Unk_020E5894);

TVBroadcast * SaveData_TVBroadcast (SaveData * param0)
{
    sub_02025C48(27);
    return sub_020245BC(param0, 27);
}

PSSBoxes * SaveData_PSSBoxes (SaveData * param0)
{
    return sub_020245BC(param0, 37);
}

MysteryGift * SaveData_MysteryGift (SaveData * param0)
{
    sub_02025C48(31);
    return sub_020245BC(param0, 31);
}

PalParkTransfer * SaveData_PalParkTransfer (SaveData * param0)
{
    return sub_020245BC(param0, 32);
}

const SaveTableEntry Unk_020E5834[] = {
    {0x0, 0x20, (SaveEntrySizeFunc)sub_0202DF8C, (SaveEntryInitFunc)sub_0202DF94},
    {0x1, 0x23, (SaveEntrySizeFunc)sub_02030880, (SaveEntryInitFunc)sub_02030888},
    {0x2, 0x24, (SaveEntrySizeFunc)sub_0202F1D4, (SaveEntryInitFunc)sub_0202F1DC},
    {0x3, 0x26, (SaveEntrySizeFunc)sub_0202F1D4, (SaveEntryInitFunc)sub_0202F1DC},
    {0x4, 0x28, (SaveEntrySizeFunc)sub_0202F1D4, (SaveEntryInitFunc)sub_0202F1DC},
    {0x5, 0x2A, (SaveEntrySizeFunc)sub_0202F1D4, (SaveEntryInitFunc)sub_0202F1DC}
};

const int Unk_020E582C = NELEMS(Unk_020E5834);

HallOfFame * SaveData_HallOfFame (SaveData * param0, int param1, int * param2)
{
    return sub_02025680(param0, param1, 0, param2);
}

int SaveData_SaveHallOfFame (SaveData * param0, HallOfFame * param1)
{
    return sub_02025428(param0, 0, param1);
}

BattleRecording * SaveData_BattleRecording (SaveData * param0, int param1, int * param2, int param3)
{
    BOOL v0;
    return sub_020257E8(param0, param1, 2 + param3, param2, &v0);
}

int SaveData_SaveBattleRecording (SaveData * param0, BattleRecording * param1, int param2)
{
    return sub_02025574(param0, 2 + param2, param1);
}

BattleFrontierStage * SaveData_BattleFrontierStage (SaveData * param0, int param1, int * param2)
{
    BOOL v0;
    return sub_020257E8(param0, param1, 1, param2, &v0);
}

int SaveData_SaveBattleFrontierStage (SaveData * param0, BattleFrontierStage * param1)
{
    return sub_02025574(param0, 1, param1);
}
