#ifndef POKEPLATINUM_BATTLE_BATTLE_CONTROLLER_H
#define POKEPLATINUM_BATTLE_BATTLE_CONTROLLER_H

#include "struct_decls/battle_system.h"

#include "battle/battle_context.h"
#include "battle/battle_message.h"
#include "battle/struct_ov16_0224DDA8.h"
#include "battle/struct_ov16_02265BBC.h"

void BattleController_TryRecvLocalMessage(BattleSystem *battleSys, int recipient);
void BattleController_EmitSetupBattleUI(BattleSystem *battleSys, int battlerId);
void BattleController_EmitSetEncounter(BattleSystem *battleSys, int battlerId);
void BattleController_EmitShowEncounter(BattleSystem *battleSys, int battlerId);
void BattleController_EmitShowPokemon(BattleSystem *battleSys, int battlerId, int capturedBall, int param3);
void BattleController_EmitReturnPokemon(BattleSystem *battleSys, BattleContext *battleCtx, int battlerId);
void BattleController_EmitOpenCaptureBall(BattleSystem *battleSys, int battlerId, int ball);
void BattleController_EmitDeletePokemon(BattleSystem *battleSys, int battlerId);
void BattleController_EmitSetTrainerEncounter(BattleSystem *battleSys, int battlerId);
void BattleController_EmitThrowTrainerBall(BattleSystem *battleSys, int battlerId, int ballTypeIn);
void BattleController_EmitSlideTrainerOut(BattleSystem *battleSys, int battlerId);
void BattleController_EmitSlideTrainerIn(BattleSystem *battleSys, int battlerId, int posIn);
void BattleController_EmitSlideHealthbarIn(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int delay);
void BattleController_EmitSlideHealthbarOut(BattleSystem *battleSys, int battler);
void BattleController_EmitSetCommandSelection(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int partySlot);
void ov16_022656D4(BattleSystem *battleSys, int battlerId, int command);
void BattleController_EmitShowMoveSelectMenu(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
void ov16_02265790(BattleSystem *battleSys, int battlerId, int command);
void BattleCommand_EmitShowTargetSelectMenu(BattleSystem *battleSys, BattleContext *battleCtx, int range, int battler);
void ov16_022658CC(BattleSystem *battleSys, int battlerId, int command);
void BattleController_EmitShowBagMenu(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
void ov16_02265A70(BattleSystem *battleSys, int battlerId, BattleItemUse message);
void BattleController_EmitShowPartyMenu(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int listMode, int canSwitch, int doubles);
void ov16_02265B10(BattleSystem *battleSys, int battlerId, int command);
void BattleController_EmitShowYesNoMenu(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int promptMsg, int yesnoType, int move, int nickname);
void BattleController_EmitPrintAttackMessage(BattleSystem *battleSys, BattleContext *battleCtx);
void BattleController_EmitPrintMessage(BattleSystem *battleSys, BattleContext *battleCtx, BattleMessage *battleMsg);
void BattleController_EmitPlayMoveAnimation(BattleSystem *battleSys, BattleContext *battleCtx, u16 param2);
void BattleController_EmitPlayMoveAnimationA2D(BattleSystem *battleSys, BattleContext *battleCtx, u16 param2, int attacker, int defender);
void BattleController_EmitFlickerBattlerSprite(BattleSystem *battleSys, int battlerId, u32 unused);
void BattleController_EmitUpdateHPGauge(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
void BattleController_EmitUpdateExpGauge(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int curExp);
void BattleController_EmitPlayFaintingSequence(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
void BattleController_EmitPlaySound(BattleSystem *battleSys, BattleContext *battleCtx, int sdatID, int battler);
void BattleController_EmitFadeOut(BattleSystem *battleSys, BattleContext *battleCtx);
void BattleController_EmitToggleVanish(BattleSystem *battleSys, int battlerId, int toggle);
void BattleController_EmitSetStatusIcon(BattleSystem *battleSys, int battlerId, int status);
void BattleController_EmitTrainerMessage(BattleSystem *battleSys, int battlerId, int msg);
void BattleController_EmitPlayStatusEffect(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int param3);
void BattleController_EmitPlayStatusEffectAToD(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, int defender, int param4);
void BattleController_EmitRecallMessage(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int partySlot);
void BattleController_EmitSendOutMessage(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int partySlot);
void BattleController_EmitBattleStartMessage(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
void BattleController_EmitLeadMonMessage(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
void BattleController_EmitPlayLevelUpAnimation(BattleSystem *battleSys, int battlerId);
void BattleController_EmitSetAlertMessage(BattleSystem *battleSys, int battler, BattleMessage msg);
void ov16_022661B0(BattleSystem *battleSys, int battlerId);
void BattleController_EmitRefreshHPGauge(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
void BattleController_EmitUpdatePartyMon(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
void ov16_02266460(BattleSystem *battleSys, int battlerId);
void BattleController_EmitStopGaugeAnimation(BattleSystem *battleSys, int battler);
void BattleController_EmitRefreshPartyStatus(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int move);
void BattleController_EmitForgetMove(BattleSystem *battleSys, int battlerId, int move, int slot);
void BattleController_EmitSetMosaic(BattleSystem *battleSys, int battlerId, int param2, int wait);
void BattleController_EmitChangeWeatherForm(BattleSystem *battleSys, int battlerId);
void BattleController_EmitUpdateBG(BattleSystem *battleSys, int battlerId);
void BattleController_EmitClearTouchScreen(BattleSystem *battleSys, int battlerId);

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
void BattleController_EmitIncrementRecord(BattleSystem *battleSys, int battlerId, int battlerType, int record);
void BattleController_EmitLinkWaitMessage(BattleSystem *battleSys, int battler);
void BattleController_EmitRestoreSprite(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
void BattleController_EmitSpriteToOAM(BattleSystem *battleSys, int battlerId);
void BattleController_EmitOAMToSprite(BattleSystem *battleSys, int battlerId);
void BattleController_EmitResultMessage(BattleSystem *battleSys);
void BattleController_EmitEscapeMessage(BattleSystem *battleSys, BattleContext *battleCtx);
void BattleController_EmitForfeitMessage(BattleSystem *battleSys);
void BattleController_EmitRefreshSprite(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
void BattleController_EmitPlayMoveHitSoundEffect(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
void BattleController_EmitPlayMusic(BattleSystem *battleSys, int battlerId, int bgmID);
void BattleController_EmitSubmitResult(BattleSystem *battleSys);
void BattleController_EmitClearMessageBox(BattleSystem *battleSys);
void BattleController_EmitClearCommand(BattleSystem *battleSys, int battlerId, int command);
BOOL BattleController_RecvCommMessage(BattleSystem *battleSys, void *data);
void BattleController_SetMoveAnimation(BattleSystem *battleSys, BattleContext *battleCtx, MoveAnimation *animation, int param3, int param4, int attacker, int defender, u16 move);

#endif // POKEPLATINUM_BATTLE_BATTLE_CONTROLLER_H
