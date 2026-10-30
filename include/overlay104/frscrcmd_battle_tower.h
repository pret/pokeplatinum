#ifndef POKEPLATINUM_FRSCRCMD_BATTLE_TOWER_H
#define POKEPLATINUM_FRSCRCMD_BATTLE_TOWER_H

#include "overlay104/defs.h"

BOOL FrontierScrCmd_CallBattleTowerFunction(FrontierScriptContext *ctx);
BOOL FrontierScrCmd_BattleTower_PrintTrainerIntro(FrontierScriptContext *ctx);
BOOL FrontierScrCmd_FreeTowerStruct(FrontierScriptContext *ctx);
BOOL FrontierScrCmd_BattleTower_StartBattle(FrontierScriptContext *ctx);
BOOL FrontierScrCmd_BattleTower_CheckWonBattle(FrontierScriptContext *ctx);
BOOL FrontierScrCmd_BattleTower_SendRetireMessage(FrontierScriptContext *ctx);
BOOL FrontierScrCmd_BattleTower_WaitForRetireMessage(FrontierScriptContext *ctx);

#endif // POKEPLATINUM_FRSCRCMD_BATTLE_TOWER_H
