#include <nitro.h>
#include <string.h>

#include "savedata.h"

#include "savedata.h"
#include "save_player.h"
#include "trainer_info.h"
#include "game_options.h"
#include "coins.h"
#include "play_time.h"


int Player_SaveSize (void)
{
    return sizeof(PlayerSave);
}

void Player_Init (PlayerSave * player)
{
    MI_CpuClearFast(player, sizeof(PlayerSave));

    Options_Init(&player->options);
    TrainerInfo_Init(&player->info);
    Coins_Init(&player->coins);
    PlayTime_Init(&player->playTime);
}

TrainerInfo * SaveData_GetTrainerInfo (SaveData * savedata)
{
    PlayerSave * state = SaveData_SaveTable(savedata, 1);
    return &state->info;
}

Options * SaveData_Options (SaveData * savedata)
{
    PlayerSave * state = SaveData_SaveTable(savedata, 1);
    return &state->options;
}

u16 * SaveData_GetCoins (SaveData * savedata)
{
    PlayerSave * state = SaveData_SaveTable(savedata, 1);
    return &state->coins;
}

PlayTime *SaveData_GetPlayTime(SaveData *savedata)
{
    PlayerSave *state = SaveData_SaveTable(savedata, 1);
    return &state->playTime;
}
