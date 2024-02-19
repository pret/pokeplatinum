#ifndef POKEPLATINUM_UNK_02025E08_H
#define POKEPLATINUM_UNK_02025E08_H

#include "struct_decls/struct_02025E0C_decl.h"
#include "struct_decls/struct_02025E5C_decl.h"
#include "trainer_info.h"
#include "struct_defs/options.h"
#include "struct_decls/struct_021C0794_decl.h"

int Player_SaveSize(void);
void Player_Init(UnkStruct_02025E0C * param0);
TrainerInfo * sub_02025E38(SaveData * param0);
Options * sub_02025E44(SaveData * param0);
u16 * sub_02025E50(SaveData * param0);
UnkStruct_02025E5C * sub_02025E5C(SaveData * param0);

#endif // POKEPLATINUM_UNK_02025E08_H
