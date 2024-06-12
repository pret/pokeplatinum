#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02025E0C_decl.h"
#include "savedata.h"

#include "savedata.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "game_options.h"
#include "coins.h"
#include "play_time.h"

struct UnkStruct_02025E0C_t {
    Options unk_00;
    TrainerInfo unk_04;
    u16 unk_24;
    PlayTime playTime;
};

int Player_SaveSize (void)
{
    return sizeof(UnkStruct_02025E0C);
}

void Player_Init (UnkStruct_02025E0C * param0)
{
    MI_CpuClearFast(param0, sizeof(UnkStruct_02025E0C));

    Options_Init(&param0->unk_00);
    TrainerInfo_Init(&param0->unk_04);
    Coins_Init(&param0->unk_24);
    PlayTime_Init(&param0->playTime);
}

TrainerInfo * SaveData_GetTrainerInfo (SaveData * param0)
{
    UnkStruct_02025E0C * v0;

    v0 = SaveData_SaveTable(param0, 1);
    return &v0->unk_04;
}

Options * SaveData_Options (SaveData * param0)
{
    UnkStruct_02025E0C * v0;

    v0 = SaveData_SaveTable(param0, 1);
    return &v0->unk_00;
}

u16 * sub_02025E50 (SaveData * param0)
{
    UnkStruct_02025E0C * v0;

    v0 = SaveData_SaveTable(param0, 1);
    return &v0->unk_24;
}

PlayTime *SaveData_GetPlayTime(SaveData *savedata)
{
    UnkStruct_02025E0C *v0 = SaveData_SaveTable(savedata, 1);
    return &v0->playTime;
}
