#ifndef POKEPLATINUM_BATTLE_BATTLE_CONTROLLER_H
#define POKEPLATINUM_BATTLE_BATTLE_CONTROLLER_H

#include "struct_decls/battle_system.h"

#include "battle/battle_context.h"
#include "battle/battle_message.h"
#include "battle/struct_ov16_0224DDA8.h"
#include "battle/struct_ov16_02265BBC.h"

void BattleController_TryRecvLocalMessage(BattleSystem *battleSys, int param1);
void BattleController_EmitSetupBattleUI(BattleSystem *battleSys, int param1);
void BattleController_EmitSetEncounter(BattleSystem *battleSys, int param1);
void BattleController_EmitShowEncounter(BattleSystem *battleSys, int param1);
void BattleController_EmitShowPokemon(BattleSystem *battleSys, int param1, int param2, int param3);
void BattleController_EmitReturnPokemon(BattleSystem *battleSys, BattleContext *param1, int param2);
void BattleController_EmitOpenCaptureBall(BattleSystem *battleSys, int param1, int param2);
void BattleController_EmitDeletePokemon(BattleSystem *battleSys, int param1);
void BattleController_EmitSetTrainerEncounter(BattleSystem *battleSys, int param1);
void BattleController_EmitThrowTrainerBall(BattleSystem *battleSys, int param1, int param2);
void BattleController_EmitSlideTrainerOut(BattleSystem *battleSys, int param1);
void BattleController_EmitSlideTrainerIn(BattleSystem *battleSys, int param1, int param2);

/**
 * @brief Slide the healthbar into the screen for a given battler.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @param delay     Optional frame-delay to wait until execution.
 */
void BattleController_EmitSlideHealthbarIn(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int delay);

/**
 * @brief Slide the healthbar out of the screen for a given battler.
 *
 * @param battleSys
 * @param battler
 */
void BattleController_EmitSlideHealthbarOut(BattleSystem *battleSys, int battler);
void BattleController_EmitSetCommandSelection(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int partySlot);
void ov16_022656D4(BattleSystem *battleSys, int param1, int param2);
void BattleController_EmitShowMoveSelectMenu(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
void ov16_02265790(BattleSystem *battleSys, int param1, int param2);
void BattleCommand_EmitShowTargetSelectMenu(BattleSystem *battleSys, BattleContext *battleCtx, int range, int battler);
void ov16_022658CC(BattleSystem *battleSys, int param1, int param2);
void BattleController_EmitShowBagMenu(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
void ov16_02265A70(BattleSystem *battleSys, int param1, BattleItemUse param2);
void BattleController_EmitShowPartyMenu(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int listMode, int canSwitch, int doubles);
void ov16_02265B10(BattleSystem *battleSys, int param1, int param2);
void BattleController_EmitShowYesNoMenu(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int promptMsg, int yesnoType, int move, int nickname);
void BattleController_EmitPrintAttackMessage(BattleSystem *battleSys, BattleContext *param1);
void BattleController_EmitPrintMessage(BattleSystem *battleSys, BattleContext *battleCtx, BattleMessage *battleMsg);
void BattleController_EmitPlayMoveAnimation(BattleSystem *battleSys, BattleContext *param1, u16 param2);
void BattleController_EmitPlayMoveAnimationA2D(BattleSystem *battleSys, BattleContext *param1, u16 param2, int param3, int param4);
void BattleController_EmitFlickerBattlerSprite(BattleSystem *battleSys, int param1, u32 param2);
void BattleController_EmitUpdateHPGauge(BattleSystem *battleSys, BattleContext *param1, int param2);
void BattleController_EmitUpdateExpGauge(BattleSystem *battleSys, BattleContext *param1, int param2, int param3);
void BattleController_EmitPlayFaintingSequence(BattleSystem *battleSys, BattleContext *param1, int param2);
void BattleController_EmitPlaySound(BattleSystem *battleSys, BattleContext *param1, int param2, int param3);
void BattleController_EmitFadeOut(BattleSystem *battleSys, BattleContext *param1);
void BattleController_EmitToggleVanish(BattleSystem *battleSys, int param1, int param2);
void BattleController_EmitSetStatusIcon(BattleSystem *battleSys, int param1, int param2);
void BattleController_EmitTrainerMessage(BattleSystem *battleSys, int param1, int param2);
void BattleController_EmitPlayStatusEffect(BattleSystem *battleSys, BattleContext *param1, int param2, int param3);
void BattleController_EmitPlayStatusEffectAToD(BattleSystem *battleSys, BattleContext *param1, int param2, int param3, int param4);
void BattleController_EmitRecallMessage(BattleSystem *battleSys, BattleContext *param1, int param2, int param3);
void BattleController_EmitSendOutMessage(BattleSystem *battleSys, BattleContext *param1, int param2, int param3);
void BattleController_EmitBattleStartMessage(BattleSystem *battleSys, BattleContext *param1, int param2);
void BattleController_EmitLeadMonMessage(BattleSystem *battleSys, BattleContext *param1, int param2);
void BattleController_EmitPlayLevelUpAnimation(BattleSystem *battleSys, int param1);
void BattleController_EmitSetAlertMessage(BattleSystem *battleSys, int battler, BattleMessage msg);
void ov16_022661B0(BattleSystem *battleSys, int param1);
void BattleController_EmitRefreshHPGauge(BattleSystem *battleSys, BattleContext *param1, int param2);
void BattleController_EmitUpdatePartyMon(BattleSystem *battleSys, BattleContext *param1, int param2);
void ov16_02266460(BattleSystem *battleSys, int param1);
void BattleController_EmitStopGaugeAnimation(BattleSystem *battleSys, int battler);
void BattleController_EmitRefreshPartyStatus(BattleSystem *battleSys, BattleContext *param1, int param2, int param3);
void BattleController_EmitForgetMove(BattleSystem *battleSys, int param1, int param2, int param3);
void BattleController_EmitSetMosaic(BattleSystem *battleSys, int param1, int param2, int param3);
void BattleController_EmitChangeWeatherForm(BattleSystem *battleSys, int param1);
void BattleController_EmitUpdateBG(BattleSystem *battleSys, int param1);
void BattleController_EmitClearTouchScreen(BattleSystem *battleSys, int param1);

/**
 * @brief Push a command to the I/O queue to show the party gauge at the start of a battle for a
 * given battler.
 *
 * @param battleSys
 * @param battler
 */
void BattleController_EmitShowBattleStartPartyGauge(BattleSystem *battleSys, int battler);

/**
 * @brief Push a command to the I/O queue to hide the party gauge at the start of a battle for a
 * given battler.
 *
 * @param battleSys
 * @param battler
 */
void BattleController_EmitHideBattleStartPartyGauge(BattleSystem *battleSys, int battler);

/**
 * @brief Push a command to the I/O queue to show the party gauge for a given battler.
 *
 * @param battleSys
 * @param battler
 */
void BattleController_EmitShowPartyGauge(BattleSystem *battleSys, int battler);

/**
 * @brief Push a command to the I/O queue to hide the party gauge for a given battler.
 *
 * @param battleSys
 * @param battler
 */
void BattleController_EmitHidePartyGauge(BattleSystem *battleSys, int battler);

/**
 * @brief Push a command to the I/O queue to load the graphics resources for the party gauge.
 *
 * @param battleSys
 */
void BattleController_EmitLoadPartyGaugeGraphics(BattleSystem *battleSys);

/**
 * @brief Push a command to the I/O queue to free the graphics resources for the party gauge.
 *
 * @param battleSys
 */
void BattleController_EmitFreePartyGaugeGraphics(BattleSystem *battleSys);
void BattleController_EmitIncrementRecord(BattleSystem *battleSys, int param1, int param2, int param3);
void BattleController_EmitLinkWaitMessage(BattleSystem *battleSys, int battler);
void BattleController_EmitRestoreSprite(BattleSystem *battleSys, BattleContext *param1, int param2);
void BattleController_EmitSpriteToOAM(BattleSystem *battleSys, int param1);
void BattleController_EmitOAMToSprite(BattleSystem *battleSys, int param1);
void BattleController_EmitResultMessage(BattleSystem *battleSys);
void BattleController_EmitEscapeMessage(BattleSystem *battleSys, BattleContext *param1);
void BattleController_EmitForfeitMessage(BattleSystem *battleSys);
void BattleController_EmitRefreshSprite(BattleSystem *battleSys, BattleContext *param1, int param2);
void BattleController_EmitPlayMoveHitSoundEffect(BattleSystem *battleSys, BattleContext *param1, int param2);
void BattleController_EmitPlayMusic(BattleSystem *battleSys, int param1, int param2);
void BattleIO_SubmitResult(BattleSystem *battleSys);
void BattleIO_ClearMessageBox(BattleSystem *battleSys);
void ClearCommand(BattleSystem *battleSys, int param1, int param2);
BOOL BattleController_RecvCommMessage(BattleSystem *battleSys, void *param1);
void BattleController_SetMoveAnimation(BattleSystem *battleSys, BattleContext *param1, MoveAnimation *param2, int param3, int param4, int param5, int param6, u16 param7);

#endif // POKEPLATINUM_BATTLE_BATTLE_CONTROLLER_H
