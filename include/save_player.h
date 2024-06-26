#ifndef POKEPLATINUM_SAVE_PLAYER_H
#define POKEPLATINUM_SAVE_PLAYER_H

#include "play_time.h"
#include "trainer_info.h"
#include "game_options.h"
#include "savedata.h"

typedef struct PlayerSave_t {
    Options options;
    TrainerInfo info;
    u16 coins; 
    PlayTime playTime;
} PlayerSave;

int Player_SaveSize(void);
void Player_Init(PlayerSave * player);
TrainerInfo * SaveData_GetTrainerInfo(SaveData * savedata);
Options * SaveData_Options(SaveData * savedata);
u16 * SaveData_GetCoins(SaveData * savedata);
PlayTime * SaveData_GetPlayTime(SaveData * savedata);

#endif // POKEPLATINUM_SAVE_PLAYER_H
