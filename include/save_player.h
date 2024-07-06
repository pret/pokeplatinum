#ifndef POKEPLATINUM_SAVE_PLAYER_H
#define POKEPLATINUM_SAVE_PLAYER_H

#include "game_options.h"
#include "play_time.h"
#include "savedata.h"
#include "trainer_info.h"

typedef struct PlayerSave {
    Options options;
    TrainerInfo info;
    u16 coins;
    PlayTime playTime;
} PlayerSave;

int Player_SaveSize(void);
void Player_Init(PlayerSave *player);
TrainerInfo *SaveData_GetTrainerInfo(SaveData *saveData);
Options *SaveData_Options(SaveData *saveData);
u16 *SaveData_GetCoins(SaveData *saveData);
PlayTime *SaveData_GetPlayTime(SaveData *saveData);

#endif // POKEPLATINUM_SAVE_PLAYER_H
