#ifndef POKEPLATINUM_OV16_0226485C_H
#define POKEPLATINUM_OV16_0226485C_H

#include "struct_decls/battle_system.h"

#include "battle/battle_context.h"
#include "battle/battle_message.h"
#include "battle/struct_ov16_0224DDA8.h"
#include "battle/struct_ov16_02265BBC.h"

void ov16_02264988(BattleSystem *battleSys, int param1);
void BattleIO_SetupBattleUI(BattleSystem *battleSys, int param1);
void BattleIO_SetEncounter(BattleSystem *battleSys, int param1);
void BattleIO_ShowEncounter(BattleSystem *battleSys, int param1);
void BattleIO_ShowPokemon(BattleSystem *battleSys, int param1, int param2, int param3);
void BattleIO_ReturnPokemon(BattleSystem *battleSys, BattleContext *param1, int param2);
void ov16_02265050(BattleSystem *battleSys, int param1, int param2);
void BattleIO_DeletePokemon(BattleSystem *battleSys, int param1);
void BattleIO_SetTrainerEncounter(BattleSystem *battleSys, int param1);
void BattleIO_ThrowTrainerBall(BattleSystem *battleSys, int param1, int param2);
void BattleIO_SlideTrainerOut(BattleSystem *battleSys, int param1);
void BattleIO_SlideTrainerIn(BattleSystem *battleSys, int param1, int param2);

/**
 * @brief Slide the healthbar into the screen for a given battler.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @param delay     Optional frame-delay to wait until execution.
 */
void BattleIO_SlideHealthbarIn(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int delay);

/**
 * @brief Slide the healthbar out of the screen for a given battler.
 *
 * @param battleSys
 * @param battler
 */
void BattleIO_SlideHealthbarOut(BattleSystem *battleSys, int battler);
void BattleIO_SetCommandSelection(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int partySlot);
void ov16_022656D4(BattleSystem *battleSys, int param1, int param2);
void BattleIO_ShowMoveSelectScreen(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
void ov16_02265790(BattleSystem *battleSys, int param1, int param2);
void BattleIO_ShowTargetSelection(BattleSystem *battleSys, BattleContext *battleCtx, int range, int battler);
void ov16_022658CC(BattleSystem *battleSys, int param1, int param2);
void BattleIO_ShowBagScreen(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
void ov16_02265A70(BattleSystem *battleSys, int param1, BattleItemUse param2);
void BattleIO_ShowPartyScreen(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int listMode, int canSwitch, int doubles);
void ov16_02265B10(BattleSystem *battleSys, int param1, int param2);
void BattleIO_ShowYesNoScreen(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int promptMsg, int yesnoType, int move, int nickname);
void BattleIO_PrintAttackMessage(BattleSystem *battleSys, BattleContext *param1);

/**
 * @brief Submit a BattleMessage to the I/O queue for display on the screen.
 *
 * @param battleSys
 * @param battleCtx
 * @param battleMsg
 */
void BattleIO_PrintMessage(BattleSystem *battleSys, BattleContext *battleCtx, BattleMessage *battleMsg);
void BattleIO_PlayMoveAnimation(BattleSystem *battleSys, BattleContext *param1, u16 param2);
void BattleIO_PlayMoveAnimationA2D(BattleSystem *battleSys, BattleContext *param1, u16 param2, int param3, int param4);
void BattleIO_FlickerBattler(BattleSystem *battleSys, int param1, u32 param2);
void BattleIO_UpdateHPGauge(BattleSystem *battleSys, BattleContext *param1, int param2);
void BattleIO_UpdateExpGauge(BattleSystem *battleSys, BattleContext *param1, int param2, int param3);
void BattleIO_PlayFaintingSequence(BattleSystem *battleSys, BattleContext *param1, int param2);
void BattleIO_PlaySound(BattleSystem *battleSys, BattleContext *param1, int param2, int param3);
void BattleIO_FadeOut(BattleSystem *battleSys, BattleContext *param1);
void BattleIO_ToggleVanish(BattleSystem *battleSys, int param1, int param2);
void BattleIO_SetStatusIcon(BattleSystem *battleSys, int param1, int param2);
void BattleIO_TrainerMessage(BattleSystem *battleSys, int param1, int param2);
void BattleIO_PlayStatusEffect(BattleSystem *battleSys, BattleContext *param1, int param2, int param3);
void BattleIO_PlayStatusEffectAToD(BattleSystem *battleSys, BattleContext *param1, int param2, int param3, int param4);
void BattleIO_PrintRecallMessage(BattleSystem *battleSys, BattleContext *param1, int param2, int param3);
void BattleIO_PrintSendOutMessage(BattleSystem *battleSys, BattleContext *param1, int param2, int param3);
void BattleIO_PrintBattleStartMessage(BattleSystem *battleSys, BattleContext *param1, int param2);
void BattleIO_PrintLeadMonMessage(BattleSystem *battleSys, BattleContext *param1, int param2);
void BattleIO_PlayLevelUpAnimation(BattleSystem *battleSys, int param1);
void BattleIO_SetAlertMessage(BattleSystem *battleSys, int battler, BattleMessage msg);
void ov16_022661B0(BattleSystem *battleSys, int param1);
void BattleIO_RefreshHPGauge(BattleSystem *battleSys, BattleContext *param1, int param2);
void BattleIO_UpdatePartyMon(BattleSystem *battleSys, BattleContext *param1, int param2);
void ov16_02266460(BattleSystem *battleSys, int param1);
void BattleIO_StopGaugeAnimation(BattleSystem *battleSys, int battler);
void BattleIO_RefreshPartyStatus(BattleSystem *battleSys, BattleContext *param1, int param2, int param3);
void BattleIO_ForgetMove(BattleSystem *battleSys, int param1, int param2, int param3);
void BattleIO_SetMosaic(BattleSystem *battleSys, int param1, int param2, int param3);
void BattleIO_ChangeWeatherForm(BattleSystem *battleSys, int param1);
void BattleIO_UpdateBG(BattleSystem *battleSys, int param1);
void BattleIO_ClearTouchScreen(BattleSystem *battleSys, int param1);

/**
 * @brief Push a command to the I/O queue to show the party gauge at the start of a battle for a
 * given battler.
 *
 * @param battleSys
 * @param battler
 */
void BattleIO_ShowBattleStartPartyGauge(BattleSystem *battleSys, int battler);

/**
 * @brief Push a command to the I/O queue to hide the party gauge at the start of a battle for a
 * given battler.
 *
 * @param battleSys
 * @param battler
 */
void BattleIO_HideBattleStartPartyGauge(BattleSystem *battleSys, int battler);

/**
 * @brief Push a command to the I/O queue to show the party gauge for a given battler.
 *
 * @param battleSys
 * @param battler
 */
void BattleIO_ShowPartyGauge(BattleSystem *battleSys, int battler);

/**
 * @brief Push a command to the I/O queue to hide the party gauge for a given battler.
 *
 * @param battleSys
 * @param battler
 */
void BattleIO_HidePartyGauge(BattleSystem *battleSys, int battler);

/**
 * @brief Push a command to the I/O queue to load the graphics resources for the party gauge.
 *
 * @param battleSys
 */
void BattleIO_LoadPartyGaugeGraphics(BattleSystem *battleSys);

/**
 * @brief Push a command to the I/O queue to free the graphics resources for the party gauge.
 *
 * @param battleSys
 */
void BattleIO_FreePartyGaugeGraphics(BattleSystem *battleSys);
void BattleIO_IncrementRecord(BattleSystem *battleSys, int param1, int param2, int param3);
void BattleIO_LinkWaitMessage(BattleSystem *battleSys, int battler);
void BattleIO_RestoreSprite(BattleSystem *battleSys, BattleContext *param1, int param2);
void BattleIO_SpriteToOAM(BattleSystem *battleSys, int param1);
void BattleIO_OAMToSprite(BattleSystem *battleSys, int param1);
void BattleIO_ResultMessage(BattleSystem *battleSys);
void BattleIO_EscapeMessage(BattleSystem *battleSys, BattleContext *param1);
void BattleIO_ForfeitMessage(BattleSystem *battleSys);
void BattleIO_RefreshSprite(BattleSystem *battleSys, BattleContext *param1, int param2);
void BattleIO_PlayMoveHitSoundEffect(BattleSystem *battleSys, BattleContext *param1, int param2);
void BattleIO_PlayMusic(BattleSystem *battleSys, int param1, int param2);
void BattleIO_SubmitResult(BattleSystem *battleSys);
void BattleIO_ClearMessageBox(BattleSystem *battleSys);
void ClearCommand(BattleSystem *battleSys, int param1, int param2);
BOOL ov16_02266AE4(BattleSystem *battleSys, void *param1);
void ov16_02266B78(BattleSystem *battleSys, BattleContext *param1, UnkStruct_ov16_02265BBC *param2, int param3, int param4, int param5, int param6, u16 param7);

#endif // POKEPLATINUM_OV16_0226485C_H
