#ifndef POKEPLATINUM_BATTLE_BATTLE_IO_COMMAND_H
#define POKEPLATINUM_BATTLE_BATTLE_IO_COMMAND_H

#include "struct_decls/battle_system.h"
#include "struct_defs/battler_data.h"

#include "battle/struct_ov16_0223C2C0.h"

BattlerData *ov16_0225BFFC(BattleSystem *battleSys, UnkStruct_ov16_0223C2C0 *param1);
void ov16_0225C038(BattleSystem *battleSys, BattlerData *battlerData, int ballID, int param3);
void ov16_0225C0DC(BattleSystem *battleSys, BattlerData *battlerData);
void ov16_0225C104(BattleSystem *battleSys, BattlerData *battlerData, int param2);

#endif // POKEPLATINUM_BATTLE_BATTLE_IO_COMMAND_H
