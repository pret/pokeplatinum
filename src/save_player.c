#include "save_player.h"

#include <nitro.h>
#include <string.h>

#include "coins.h"
#include "game_options.h"
#include "play_time.h"
#include "savedata.h"
#include "trainer_info.h"

int Player_SaveSize(void) {
    return sizeof(PlayerSave);
}

void Player_Init(PlayerSave *player) {
    MI_CpuClearFast(player, sizeof(PlayerSave));

    Options_Init(&player->options);
    TrainerInfo_Init(&player->info);
    Coins_Init(&player->coins);
    PlayTime_Init(&player->playTime);
}

TrainerInfo *SaveData_GetTrainerInfo(SaveData *saveData) {
    PlayerSave *state = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_PLAYER);
    return &state->info;
}

Options *SaveData_GetOptions(SaveData *saveData) {
    PlayerSave *state = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_PLAYER);
    return &state->options;
}

u16 *SaveData_GetCoins(SaveData *saveData) {
    PlayerSave *state = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_PLAYER);
    return &state->coins;
}

PlayTime *SaveData_GetPlayTime(SaveData *saveData) {
    PlayerSave *state = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_PLAYER);
    return &state->playTime;
}
