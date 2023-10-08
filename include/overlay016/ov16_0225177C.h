#ifndef POKEPLATINUM_OV16_0225177C_H
#define POKEPLATINUM_OV16_0225177C_H

#include "pokemon.h"
#include "struct_decls/battle_system.h"
#include "battle/battle_context.h"
#include "battle/battle_mon.h"
#include "battle/battle_message.h"

void BattleSystem_InitBattleMon(BattleSystem *battleSys, BattleContext *battleCtx, int param2, int param3);
void ov16_02251C94(BattleSystem * param0, BattleContext * param1, int param2, int param3);

/**
 * @brief Load a script file from the specified NARC.
 * 
 * @param battleCtx 
 * @param narc          Which NARC to open for the script
 * @param file          Which file in the NARC to load
 */
void BattleSystem_LoadScript(BattleContext *battleCtx, int narc, int file);

/**
 * @brief Load a script file from the specified NARC and invoke it as a call,
 * returning to the previous script once finished processing.
 * 
 * @param battleCtx 
 * @param narc          Which NARC to open for the script
 * @param file          Which file in the NARC to load
 */
void BattleSystem_CallScript(BattleContext *battleCtx, int narc, int file);
BOOL ov16_02251EF4(BattleContext * param0);
void ov16_02251F44(BattleContext * param0, int param1, int param2, int param3);
void ov16_02251F80(BattleContext * param0, int param1, int param2, int param3);

/**
 * @brief Determine if the Battle IO queue is empty (i.e., there are no pending
 * actions to be executed for any players hooked into this particular battle).
 * 
 * As a side effect, if the queue is empty, then this routine will also set the
 * link-battle timeout counter back to 0.
 * 
 * @param battleCtx 
 * @return TRUE if the queue has no remaining actions; FALSE otherwise.
 */
BOOL BattleIO_QueueIsEmpty(BattleContext *battleCtx);

/**
 * @brief Increments the link-battle timeout counter.
 * 
 * If the counter exceeds the maximum timeout value (1800, ~= 30 seconds),
 * then the link will be terminated with an error state.
 * 
 * @param battleCtx 
 */
void BattleIO_UpdateTimeout(BattleContext *battleCtx);
void BattleIO_ClearBuffer(BattleContext *battleCtx, int battler);
int BattleMon_Get(BattleContext * param0, int param1, int param2, void * param3);
void ov16_022523E8(BattleContext * param0, int param1, int param2, const void * param3);
void ov16_02252A14(BattleContext * param0, int param1, int param2, int param3);
void ov16_02252A2C(BattleMon * param0, int param1, int param2);
u8 BattleSystem_CompareBattlerSpeed(BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4);
void BattleSystem_NoExpGain(BattleContext * param0, int param1);
void BattleSystem_FlagExpGain(BattleSystem * param0, BattleContext * param1, int param2);
BOOL BattleSystem_CheckPrimaryEffect(BattleSystem * param0, BattleContext * param1, int * param2);
BOOL BattleSystem_TriggerSecondaryEffect(BattleSystem *battleSys, BattleContext *battleCtx, int *nextSeq);
int BattleSystem_Defender(BattleSystem * param0, BattleContext * param1, int param2, u16 param3, int param4, int param5);
void BattleSystem_RedirectTarget(BattleSystem * param0, BattleContext * param1, int param2, u16 param3);
BOOL BattleMove_TriggerRedirectionAbilities(BattleSystem * param0, BattleContext * param1);
void BattleMon_CopyToParty(BattleSystem * param0, BattleContext * param1, int param2);
void ov16_02253EF0(BattleSystem * param0, BattleContext * param1, int param2);
void BattleSystem_BreakMultiTurn(BattleSystem * param0, BattleContext * param1, int param2);
int ov16_02253F7C(BattleContext * param0, int param1);
BOOL BattleSystem_CheckTrainerMessage(BattleSystem * param0, BattleContext * param1);
void BattleContext_Init(BattleContext * param0);
void BattleContext_InitCounters(BattleSystem * param0, BattleContext * param1);
void ov16_0225433C(BattleSystem * param0, BattleContext * param1, int param2);
void ov16_02254744(BattleSystem * param0, BattleContext * param1, int param2);
void BattleSystem_SetupNextTurn(BattleSystem * param0, BattleContext * param1);
int BattleSystem_CheckStruggling(BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4);
BOOL BattleSystem_CanUseMove(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int moveSlot, BattleMessage *msgOut);
int Battler_SlotForMove(BattleMon * param0, u16 param1);
int BattleSystem_CheckTypeChart(BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4, int param5, int param6, u32 * param7);
void ov16_022552D4(BattleContext * param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, u32 * param8);
BOOL BattleContext_MoveFailed(BattleContext * param0, int param1);
u8 ov16_022554E0(BattleSystem * param0, BattleContext * param1, int param2, int param3);
int BattleSystem_NicknameTag(BattleContext *battleSys, int battler);
u16 Battler_SelectedMove(BattleContext * param0, int param1);
int BattleSystem_CountAbility(BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4);
BOOL BattleMove_IsMultiTurn(BattleContext * param0, int param1);
BOOL ov16_0225588C(BattleSystem * param0, int param1, u8 * param2, u8 * param3, u8 * param4);
int ov16_022558CC(u8 param0, u8 param1, u8 param2);
BOOL ov16_02255918(u16 param0);
BOOL BattleSystem_IsGhostCurse(BattleContext * param0, u16 param1, int param2);
BOOL ov16_02255980(BattleSystem * param0, BattleContext * param1, int param2);
BOOL ov16_022559DC(BattleContext * param0, int param1);
BOOL ov16_022559FC(BattleSystem * param0, BattleContext * param1);
u8 Battler_Ability(BattleContext * param0, int param1);
BOOL Battler_IgnorableAbility(BattleContext * param0, int param1, int param2, int param3);

/**
 * @brief Checks if there are any Pokemon which can act as a replacement for a
 * fainted one.
 * 
 * Replacement-eligible Pokemon have HP > 0 and belong to the same party as a
 * fallen ally.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @param battler   The battler which wishes to replace a fainted Pokemon.
 * @return TRUE if there are any Pokemon which can replace the fainted one;
 * otherwise FALSE. 
 */
BOOL BattleSystem_AnyReplacementMons(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
BOOL BattleSystem_Trapped(BattleSystem * param0, BattleContext * param1, int param2, BattleMessage * param3);
BOOL BattleSystem_TryEscape(BattleSystem * param0, BattleContext * param1, int param2);
BOOL Battler_CheckTruant(BattleContext * param0, int param1);
BOOL BattleSystem_Imprisoned(BattleSystem * param0, BattleContext * param1, int param2, int param3);
BOOL ov16_02255F68(BattleSystem * param0, BattleContext * param1, int param2);
void BattleSystem_SetupLoop(BattleSystem *battleSys, BattleContext *battleCtx);
void BattleSystem_SortMonsBySpeed(BattleSystem * param0, BattleContext * param1);
BOOL BattleSystem_FailsInHighGravity(BattleSystem * param0, BattleContext * param1, int param2, int param3);
BOOL BattleSystem_HealBlocked(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void BattleSystem_UpdateLastResort(BattleSystem * param0, BattleContext * param1);
int ov16_02256128(BattleSystem * param0, BattleContext * param1, int param2);
int BattleSystem_CheckImmunityAbilities(BattleContext * param0, int param1, int param2);
BOOL BattleSystem_TriggerTurnEndAbility(BattleSystem * param0, BattleContext * param1, int param2);
int BattleSystem_Divide(int param0, int param1);
int BattleSystem_ShowMonChecks(BattleSystem * param0, BattleContext * param1);
int BattleSystem_RandomOpponent(BattleSystem * param0, BattleContext * param1, int param2);
BOOL BattleSystem_TriggerAbilityOnHit(BattleSystem *battleSys, BattleContext *battleCtx, int *nextSeq);
BOOL BattleSystem_RecoverStatusByAbility(BattleSystem * param0, BattleContext * param1, int param2, int param3);
BOOL ov16_022577A4(BattleContext * param0, int param1, int param2);
BOOL BattleSystem_SynchronizeStatus(BattleSystem * battleSys, BattleContext * battleCtx, int controllerCommand);
BOOL BattleSystem_TriggerHeldItem(BattleSystem * param0, BattleContext * param1, int param2);
BOOL BattleSystem_TriggerLeftovers(BattleSystem * param0, BattleContext * param1, int param2);
BOOL BattleSystem_TriggerHeldItemOnStatus(BattleSystem * param0, BattleContext * param1, int param2, int * param3);
BOOL BattleSystem_TriggerDetrimentalHeldItem(BattleSystem * param0, BattleContext * param1, int param2);
u16 ov16_02258874(BattleContext * param0, int param1);
BOOL Battler_MovedThisTurn(BattleContext * param0, int param1);
BOOL BattleSystem_TriggerHeldItemOnHit(BattleSystem * param0, BattleContext * param1, int * param2);
s32 Battler_HeldItemEffect(BattleContext * param0, int param1);
s32 Battler_HeldItemPower(BattleContext * param0, int param1, int param2);
s32 ov16_02258B18(BattleContext * param0, int param1);
s32 ov16_02258B2C(BattleContext * param0, int param1);
s32 ov16_02258B40(BattleContext * param0, int param1);
s32 ov16_02258B58(BattleContext * param0, int param1);
s32 ov16_02258B80(BattleContext * param0, int param1);
int BattleSystem_CanSwitch(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
BOOL ov16_02258CB4(BattleSystem * param0, BattleContext * param1, int param2);
BOOL ov16_02259204(BattleSystem * param0, BattleContext * param1, int param2);
void BattleSystem_UpdateMetronomeCount(BattleSystem * param0, BattleContext * param1);
void BattleSystem_VerifyMetronomeCount(BattleSystem * param0, BattleContext * param1);
int ov16_022599D0(BattleContext * param0, int param1, int param2, int param3);
BOOL BattleSystem_CanPickCommand(BattleContext *battleSys, int battler);
void ov16_02259A5C(BattleSystem * param0, BattleContext * param1, Pokemon * param2);
u8 BattleContext_IOBufferVal(BattleContext *battleCtx, int battler);
BOOL Battler_BehindSubstitute(BattleContext * param0, int param1);
BOOL BattleSystem_TrainerIsOT(BattleSystem * param0, BattleContext * param1);
BOOL ov16_02259B38(BattleSystem * param0, Pokemon * param1);
BOOL BattleSystem_UpdateWeatherForms(BattleSystem * param0, BattleContext * param1, int * param2);
void ov16_0225A1B0(BattleSystem * param0, BattleContext * param1);
void BattleSystem_SwitchSlots(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int partySlot);
int BattleSystem_CalcMoveDamage(BattleSystem * param0, BattleContext * param1, int param2, u32 param3, u32 param4, u16 param5, u8 param6, u8 param7, u8 param8, u8 param9);
int BattleSystem_CalcDamageVariance(BattleSystem * param0, BattleContext * param1, int param2);
int ov16_0225AEE4(BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4, u32 param5);
BOOL ov16_0225AFF4(u16 param0);
BOOL ov16_0225B02C(BattleSystem * param0, BattleContext * param1, int param2, u16 param3);
BOOL ov16_0225B084(BattleContext * param0, u16 param1);
BOOL ov16_0225B0C0(BattleContext * param0, u16 param1);
s32 ov16_0225B0FC(BattleContext * param0, u16 param1, u16 param2);
int BattleSystem_SideToBattler(BattleSystem * param0, BattleContext * param1, int param2);
void BattleSystem_SortMonsInTrickRoom(BattleSystem * param0, BattleContext * param1);
BOOL ov16_0225B1DC(BattleContext * param0, int param1, int param2);
BOOL ov16_0225B228(BattleSystem * param0, BattleContext * param1, int * param2);
void BattleSystem_DecPPForPressure(BattleContext * param0, int param1, int param2);
BOOL BattleSystem_RecordingStopped(BattleSystem * param0, BattleContext * param1);
int ov16_0225B45C(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void ov16_0225B540(BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4);
int ov16_0225BA88(BattleSystem * param0, int param1);
int ov16_0225BE28(BattleSystem * param0, int param1);
int ov16_0225BE3C(BattleSystem * param0, BattleContext * param1, Pokemon * param2, int param3);

#endif // POKEPLATINUM_OV16_0225177C_H
