#ifndef POKEPLATINUM_SAVE_STATE_H
#define POKEPLATINUM_SAVE_STATE_H

#include "struct_decls/struct_save_state_decl.h"
#include "play_time.h"
#include "trainer_info.h"
#include "game_options.h"
#include "savedata.h"

int Player_SaveSize(void);
void Player_Init(SaveState * player);
TrainerInfo * SaveData_GetTrainerInfo(SaveData * savedata);
Options * SaveData_Options(SaveData * savedata);
u16 * SaveData_GetCoins(SaveData * savedata);
PlayTime * SaveData_GetPlayTime(SaveData * savedata);

#endif // POKEPLATINUM_SAVE_STATE_H
