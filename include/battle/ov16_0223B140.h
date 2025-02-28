#ifndef POKEPLATINUM_OV16_0223B140_H
#define POKEPLATINUM_OV16_0223B140_H

#include "struct_decls/battle_system.h"

#include "overlay_manager.h"

BOOL Battle_Main(OverlayManager *param0, int *param1);
void ov16_0223B384(BattleSystem *battleSys);
void ov16_0223B3E4(BattleSystem *battleSys);
void ov16_0223B430(BattleSystem *battleSys);
void ov16_0223B53C(BattleSystem *battleSys);
void ov16_0223B578(BattleSystem *battleSys);
void BattleSystem_LoadFightOverlay(BattleSystem *battleSys, int param1);

#endif // POKEPLATINUM_OV16_0223B140_H
