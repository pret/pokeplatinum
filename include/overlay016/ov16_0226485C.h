#ifndef POKEPLATINUM_OV16_0226485C_H
#define POKEPLATINUM_OV16_0226485C_H

#include "struct_decls/battle_system.h"
#include "battle/battle_context.h"
#include "overlay016/struct_ov16_0224DDA8.h"
#include "battle/battle_message.h"
#include "overlay016/struct_ov16_02265BBC.h"

void ov16_02264988(BattleSystem * param0, int param1);
void BattleIO_SetupBattleUI(BattleSystem * param0, int param1);
void BattleIO_SetEncounter(BattleSystem * param0, int param1);
void BattleIO_ShowEncounter(BattleSystem * param0, int param1);
void BattleIO_ShowPokemon(BattleSystem * param0, int param1, int param2, int param3);
void BattleIO_ReturnPokemon(BattleSystem * param0, BattleContext * param1, int param2);
void ov16_02265050(BattleSystem * param0, int param1, int param2);
void BattleIO_DeletePokemon(BattleSystem * param0, int param1);
void BattleIO_SetTrainerEncounter(BattleSystem * param0, int param1);
void BattleIO_ThrowTrainerBall(BattleSystem * param0, int param1, int param2);
void BattleIO_SlideTrainerOut(BattleSystem * param0, int param1);
void BattleIO_SlideTrainerIn(BattleSystem * param0, int param1, int param2);
void BattleIO_SlideHPGaugeIn(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void BattleIO_SlideHPGaugeOut(BattleSystem * param0, int param1);
void BattleIO_SetCommandSelection(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int partySlot);
void ov16_022656D4(BattleSystem * param0, int param1, int param2);
void BattleIO_ShowMoveSelectScreen(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
void ov16_02265790(BattleSystem * param0, int param1, int param2);
void BattleIO_ShowTargetSelection(BattleSystem *battleSys, BattleContext *battleCtx, int range, int battler);
void ov16_022658CC(BattleSystem * param0, int param1, int param2);
void BattleIO_ShowBagScreen(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
void ov16_02265A70(BattleSystem * param0, int param1, BattleItemUse param2);
void BattleIO_ShowPartyScreen(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int listMode, int canSwitch, int doubles);
void ov16_02265B10(BattleSystem * param0, int param1, int param2);
void BattleIO_ShowYesNoScreen(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int promptMsg, int yesnoType, int move, int nickname);
void BattleIO_PrintAttackMessage(BattleSystem * param0, BattleContext * param1);
void BattleIO_PrintMessage(BattleSystem * param0, BattleContext * param1, BattleMessage * param2);
void BattleIO_PlayMoveAnimation(BattleSystem * param0, BattleContext * param1, u16 param2);
void BattleIO_PlayMoveAnimationA2D(BattleSystem * param0, BattleContext * param1, u16 param2, int param3, int param4);
void ov16_02265C1C(BattleSystem * param0, int param1, u32 param2);
void ov16_02265C38(BattleSystem * param0, BattleContext * param1, int param2);
void ov16_02265D14(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void ov16_02265D98(BattleSystem * param0, BattleContext * param1, int param2);
void ov16_02265EAC(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void ov16_02265ECC(BattleSystem * param0, BattleContext * param1);
void ov16_02265EE8(BattleSystem * param0, int param1, int param2);
void ov16_02265FB8(BattleSystem * param0, int param1, int param2);
void ov16_02265FD8(BattleSystem * param0, int param1, int param2);
void ov16_02265FF8(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void ov16_02266028(BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4);
void ov16_02266058(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void ov16_0226609C(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void ov16_022660E8(BattleSystem * param0, BattleContext * param1, int param2);
void ov16_02266100(BattleSystem * param0, BattleContext * param1, int param2);
void ov16_0226614C(BattleSystem * param0, int param1);
void BattleIO_SetAlertMessage(BattleSystem *battleSys, int battler, BattleMessage msg);
void ov16_022661B0(BattleSystem * param0, int param1);
void BattleIO_RefreshHPGauge(BattleSystem * param0, BattleContext * param1, int param2);
void ov16_022662FC(BattleSystem * param0, BattleContext * param1, int param2);
void ov16_02266460(BattleSystem * param0, int param1);
void BattleIO_StopGaugeAnimation(BattleSystem *battleSys, int battler);
void ov16_02266498(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void ov16_022664C4(BattleSystem * param0, int param1, int param2, int param3);
void ov16_022664F8(BattleSystem * param0, int param1, int param2, int param3);
void ov16_0226651C(BattleSystem * param0, int param1);
void ov16_022665AC(BattleSystem * param0, int param1);
void BattleIO_ClearTouchScreen(BattleSystem * param0, int param1);
void ov16_022665E4(BattleSystem * param0, int param1);
void ov16_0226660C(BattleSystem * param0, int param1);
void ov16_02266634(BattleSystem * param0, int param1);
void ov16_0226665C(BattleSystem * param0, int param1);
void ov16_02266684(BattleSystem * param0);
void ov16_022666A0(BattleSystem * param0);
void BattleIO_IncrementRecord(BattleSystem * param0, int param1, int param2, int param3);
void BattleIO_LinkWaitMessage(BattleSystem *battleSys, int battler);
void ov16_0226673C(BattleSystem * param0, BattleContext * param1, int param2);
void ov16_022667E8(BattleSystem * param0, int param1);
void ov16_02266804(BattleSystem * param0, int param1);
void ov16_02266820(BattleSystem * param0);
void ov16_0226683C(BattleSystem * param0, BattleContext * param1);
void ov16_022668D0(BattleSystem * param0);
void ov16_0226692C(BattleSystem * param0, BattleContext * param1, int param2);
void ov16_022669D8(BattleSystem * param0, BattleContext * param1, int param2);
void ov16_02266A18(BattleSystem * param0, int param1, int param2);
void ov16_02266A38(BattleSystem * param0);
void BattleIO_ClearMessageBox(BattleSystem * param0);
void ov16_02266ABC(BattleSystem * param0, int param1, int param2);
BOOL ov16_02266AE4(BattleSystem * param0, void * param1);
void ov16_02266B78(BattleSystem * param0, BattleContext * param1, UnkStruct_ov16_02265BBC * param2, int param3, int param4, int param5, int param6, u16 param7);

#endif // POKEPLATINUM_OV16_0226485C_H
