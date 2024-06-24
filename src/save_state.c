#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_save_state_decl.h"
#include "savedata.h"

#include "savedata.h"
#include "save_state.h"
#include "trainer_info.h"
#include "game_options.h"
#include "coins.h"
#include "play_time.h"

struct SaveState_t {
    Options options;
    TrainerInfo info;
    u16 coins; 
    PlayTime playTime;
};

int Player_SaveSize (void)
{
    return sizeof(SaveState);
}

void Player_Init (SaveState * player)
{
    MI_CpuClearFast(player, sizeof(SaveState));

    Options_Init(&player->options);
    TrainerInfo_Init(&player->info);
    Coins_Init(&player->coins);
    PlayTime_Init(&player->playTime);
}

TrainerInfo * SaveData_GetTrainerInfo (SaveData * savedata)
{
    SaveState * state = SaveData_SaveTable(savedata, 1);
    return &state->info;
}

Options * SaveData_Options (SaveData * savedata)
{
    SaveState * state = SaveData_SaveTable(savedata, 1);
    return &state->options;
}

u16 * SaveData_GetCoins (SaveData * savedata)
{
    SaveState * state = SaveData_SaveTable(savedata, 1);
    return &state->coins;
}

PlayTime *SaveData_GetPlayTime(SaveData *savedata)
{
    SaveState *state = SaveData_SaveTable(savedata, 1);
    return &state->playTime;
}
