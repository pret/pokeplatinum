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

/**
 * @brief Submit a BattleMessage to the I/O queue for display on the screen.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @param battleMsg 
 */
void BattleIO_PrintMessage(BattleSystem *battleSys, BattleContext *battleCtx, BattleMessage *battleMsg);
void BattleIO_PlayMoveAnimation(BattleSystem * param0, BattleContext * param1, u16 param2);
void BattleIO_PlayMoveAnimationA2D(BattleSystem * param0, BattleContext * param1, u16 param2, int param3, int param4);
void BattleIO_FlickerBattler(BattleSystem * param0, int param1, u32 param2);
void BattleIO_UpdateHPGauge(BattleSystem * param0, BattleContext * param1, int param2);
void BattleIO_UpdateExpGauge(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void BattleIO_PlayFaintingSequence(BattleSystem * param0, BattleContext * param1, int param2);
void BattleIO_PlaySound(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void BattleIO_FadeOut(BattleSystem * param0, BattleContext * param1);
void BattleIO_ToggleVanish(BattleSystem * param0, int param1, int param2);
void BattleIO_SetStatusIcon(BattleSystem * param0, int param1, int param2);
void BattleIO_TrainerMessage(BattleSystem * param0, int param1, int param2);
void BattleIO_PlayStatusEffect(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void BattleIO_PlayStatusEffectAToD(BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4);
void BattleIO_PrintRecallMessage(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void BattleIO_PrintSendOutMessage(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void BattleIO_PrintBattleStartMessage(BattleSystem * param0, BattleContext * param1, int param2);
void BattleIO_PrintLeadMonMessage(BattleSystem * param0, BattleContext * param1, int param2);
void BattleIO_PlayLevelUpAnimation(BattleSystem * param0, int param1);
void BattleIO_SetAlertMessage(BattleSystem *battleSys, int battler, BattleMessage msg);
void ov16_022661B0(BattleSystem * param0, int param1);
void BattleIO_RefreshHPGauge(BattleSystem * param0, BattleContext * param1, int param2);
void BattleIO_UpdatePartyMon(BattleSystem * param0, BattleContext * param1, int param2);
void ov16_02266460(BattleSystem * param0, int param1);
void BattleIO_StopGaugeAnimation(BattleSystem *battleSys, int battler);
void BattleIO_RefreshPartyStatus(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void BattleIO_ForgetMove(BattleSystem * param0, int param1, int param2, int param3);
void BattleIO_SetMosaic(BattleSystem * param0, int param1, int param2, int param3);
void BattleIO_ChangeWeatherForm(BattleSystem * param0, int param1);
void BattleIO_UpdateBG(BattleSystem * param0, int param1);
void BattleIO_ClearTouchScreen(BattleSystem * param0, int param1);

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
void BattleIO_IncrementRecord(BattleSystem * param0, int param1, int param2, int param3);
void BattleIO_LinkWaitMessage(BattleSystem *battleSys, int battler);
void BattleIO_RestoreSprite(BattleSystem * param0, BattleContext * param1, int param2);
void BattleIO_SpriteToOAM(BattleSystem * param0, int param1);
void BattleIO_OAMToSprite(BattleSystem * param0, int param1);
void BattleIO_ResultMessage(BattleSystem * param0);
void BattleIO_EscapeMessage(BattleSystem * param0, BattleContext * param1);
void BattleIO_ForfeitMessage(BattleSystem * param0);
void BattleIO_RefreshSprite(BattleSystem * param0, BattleContext * param1, int param2);
void BattleIO_PlayMoveHitSoundEffect(BattleSystem * param0, BattleContext * param1, int param2);
void BattleIO_PlayMusic(BattleSystem * param0, int param1, int param2);
void BattleIO_SubmitResult(BattleSystem * param0);
void BattleIO_ClearMessageBox(BattleSystem * param0);
void ClearCommand(BattleSystem * param0, int param1, int param2);
BOOL ov16_02266AE4(BattleSystem * param0, void * param1);
void ov16_02266B78(BattleSystem * param0, BattleContext * param1, UnkStruct_ov16_02265BBC * param2, int param3, int param4, int param5, int param6, u16 param7);

#endif // POKEPLATINUM_OV16_0226485C_H
