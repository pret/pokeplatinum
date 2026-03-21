#ifndef POKEPLATINUM_BATTLE_BATTLE_IO_COMMAND_H
#define POKEPLATINUM_BATTLE_BATTLE_IO_COMMAND_H

#include "struct_decls/battle_system.h"
#include "struct_defs/battler_data.h"

typedef struct BattlerInitData {
    u8 battler;
    u8 battlerType;
} BattlerInitData;

BattlerData *BattlerData_New(BattleSystem *battleSys, BattlerInitData *battlerInitData);
void ov16_0225C038(BattleSystem *battleSys, BattlerData *battlerData, int ballID, int param3);
void BattleSystem_ExecuteBattlerCommand(BattleSystem *battleSys, BattlerData *battlerData);
void ov16_0225C104(BattleSystem *battleSys, BattlerData *battlerData, int param2);

#endif // POKEPLATINUM_BATTLE_BATTLE_IO_COMMAND_H
