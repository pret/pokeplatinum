#ifndef POKEPLATINUM_UNK_02025E08_H
#define POKEPLATINUM_UNK_02025E08_H

#include "struct_decls/struct_02025E0C_decl.h"
#include "play_time.h"
#include "trainer_info.h"
#include "game_options.h"
#include "savedata.h"

int Player_SaveSize(void);
void Player_Init(UnkStruct_02025E0C * param0);
TrainerInfo * SaveData_GetTrainerInfo(SaveData * param0);
Options * SaveData_Options(SaveData * param0);
u16 * sub_02025E50(SaveData * param0);
PlayTime * SaveData_GetPlayTime(SaveData * param0);

#endif // POKEPLATINUM_UNK_02025E08_H
