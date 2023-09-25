#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02025E0C_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_02025E5C.h"
#include "struct_defs/struct_020279FC.h"

#include "unk_020244AC.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_020279FC.h"
#include "coins.h"
#include "unk_0202CBE4.h"

struct UnkStruct_02025E0C_t {
    UnkStruct_020279FC unk_00;
    TrainerInfo unk_04;
    u16 unk_24;
    UnkStruct_02025E5C unk_26;
};

int Player_SaveSize (void)
{
    return sizeof(UnkStruct_02025E0C);
}

void Player_Init (UnkStruct_02025E0C * param0)
{
    MI_CpuClearFast(param0, sizeof(UnkStruct_02025E0C));

    sub_02027A1C(&param0->unk_00);
    TrainerInfo_Init(&param0->unk_04);
    Coins_Init(&param0->unk_24);
    sub_0202CBE4(&param0->unk_26);
}

TrainerInfo * sub_02025E38 (SaveData * param0)
{
    UnkStruct_02025E0C * v0;

    v0 = SaveData_Get(param0, 1);
    return &v0->unk_04;
}

UnkStruct_020279FC * sub_02025E44 (SaveData * param0)
{
    UnkStruct_02025E0C * v0;

    v0 = SaveData_Get(param0, 1);
    return &v0->unk_00;
}

u16 * sub_02025E50 (SaveData * param0)
{
    UnkStruct_02025E0C * v0;

    v0 = SaveData_Get(param0, 1);
    return &v0->unk_24;
}

UnkStruct_02025E5C * sub_02025E5C (SaveData * param0)
{
    UnkStruct_02025E0C * v0;

    v0 = SaveData_Get(param0, 1);
    return &v0->unk_26;
}
