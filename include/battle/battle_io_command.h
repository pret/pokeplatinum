#ifndef POKEPLATINUM_BATTLE_BATTLE_IO_COMMAND_H
#define POKEPLATINUM_BATTLE_BATTLE_IO_COMMAND_H

#include "struct_decls/battle_system.h"
#include "struct_defs/battler_data.h"

typedef struct BattlerInitData {
    u8 battler;
    u8 battlerType;
} BattlerInitData;

BattlerData *BattlerData_New(BattleSystem *battleSys, BattlerInitData *battlerInitData);
void BattlerData_InitSendOutBallThrow(BattleSystem *battleSys, BattlerData *battlerData, int ballID, int unused);
void BattleSystem_ExecuteBattlerCommand(BattleSystem *battleSys, BattlerData *battlerData);
void BattlerData_Delete(BattleSystem *battleSys, BattlerData *battlerData, int renderMode);

#endif // POKEPLATINUM_BATTLE_BATTLE_IO_COMMAND_H
