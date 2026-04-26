#ifndef POKEPLATINUM_FRSCRCMD_BATTLE_HALL_H
#define POKEPLATINUM_FRSCRCMD_BATTLE_HALL_H

#include "overlay104/defs.h"

BOOL FrontierScrCmd_8B(FrontierScriptContext *param0);
BOOL FrontierScrCmd_8C(FrontierScriptContext *param0);
BOOL FrontierScrCmd_8D(FrontierScriptContext *param0);
BOOL FrontierScrCmd_OpenBattleHallApp(FrontierScriptContext *ctx);
BOOL FrontierScrCmd_BattleHall_CheckWonBattle(FrontierScriptContext *ctx);
BOOL FrontierScrCmd_BattleHall_StartBattle(FrontierScriptContext *ctx);
BOOL FrontierScrCmd_CallBattleHallFunction(FrontierScriptContext *ctx);
BOOL FrontierScrCmd_BattleHall_GetBattleResult(FrontierScriptContext *param0);
BOOL FrontierScrCmd_93(FrontierScriptContext *param0);
BOOL FrontierScrCmd_94(FrontierScriptContext *param0);
BOOL FrontierScrCmd_95(FrontierScriptContext *param0);
BOOL FrontierScrCmd_BattleHall_UpdateWinRecord(FrontierScriptContext *ctx);
BOOL FrontierScrCmd_C7(FrontierScriptContext *param0);

#endif // POKEPLATINUM_FRSCRCMD_BATTLE_HALL_H
