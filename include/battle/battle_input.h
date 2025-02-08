#ifndef POKEPLATINUM_OV16_0226871C_H
#define POKEPLATINUM_OV16_0226871C_H

#include "constants/battle/battle_input.h"

#include "struct_decls/battle_system.h"

#include "battle/move_display_info.h"
#include "battle/struct_ov16_02268A14_decl.h"

#include "bg_window.h"
#include "narc.h"

void ov16_02268744(BgConfig *bgConfig);
void ov16_022687A0(BgConfig *bgConfig);
void *BattleInput_NewInit(NARC *param0, NARC *param1, BattleSystem *param2, int param3, u8 *param4);
void BattleInput_Free(BattleInput *input);
void ov16_02268A88(BattleInput *input);
void ov16_02268B8C(BattleInput *input);
void BattleInput_ChangeMenu(NARC *param0, NARC *param1, BattleInput *param2, int param3, int param4, void *param5);
void BattleInput_CreateBallGagueObjects(NARC *param0, BattleInput *param1);
void ov16_0226914C(BattleInput *input, const u8 *param1);
void ov16_02269168(BattleInput *input, u8 param1[], u8 param2[]);
void BattleInput_EnableBallGauge(BattleInput *input);
void BattleInput_DisableBallGauge(BattleInput *input);
int BattleInput_CheckTouch(BattleInput *input);
BOOL BattleInput_CheckEffectEnded(BattleInput *input);
int GetSelectedMonsFromMoveRange(int param0, int param1);
void ov16_0226940C(BattleInput *input);
void BattleInput_StartHorizontalScrollTask(BattleInput *input, int param1, int param2);
void ov16_0226AC98(BattleInput *input, int param1, const MoveDisplayInfo *param2);
void ov16_0226BCCC(BattleInput *input, int param1);
BOOL ov16_0226BCD0(BattleInput *input);
int BattleInput_GetCursorPressed(BattleInput *input);
void BattleInput_SetCursorPressed(BattleInput *input, int param1);
void BattleInput_PrintRecordingStopMessage(BattleInput *input, int param1);
u8 BattleInput_GetRunCommandType(BattleInput *input);

#endif // POKEPLATINUM_OV16_0226871C_H
