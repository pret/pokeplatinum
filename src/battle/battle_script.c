#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/heap.h"
#include "constants/items.h"
#include "constants/narc.h"
#include "constants/pokemon.h"
#include "constants/rtc.h"
#include "constants/species.h"
#include "constants/string.h"
#include "generated/abilities.h"
#include "generated/genders.h"

#include "struct_decls/battle_system.h"
#include "struct_decls/pc_boxes_decl.h"
#include "struct_defs/battle_system.h"
#include "struct_defs/fraction.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/trainer.h"

#include "applications/naming_screen.h"
#include "applications/pokedex/ov21_021E8D48.h"
#include "applications/pokedex/struct_ov21_021E8E0C.h"
#include "battle/battle_context.h"
#include "battle/battle_controller.h"
#include "battle/battle_display.h"
#include "battle/battle_io.h"
#include "battle/battle_lib.h"
#include "battle/battle_message.h"
#include "battle/battle_mon.h"
#include "battle/btlcmd.h"
#include "battle/common.h"
#include "battle/ov16_0223B140.h"
#include "battle/ov16_0223DF00.h"
#include "battle/ov16_02268520.h"
#include "battle/struct_ov16_0225BFFC_decl.h"
#include "battle/struct_ov16_0225BFFC_t.h"
#include "battle_anim/ov12_02235E94.h"
#include "battle_anim/struct_ov12_02237728.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "dexmode_checker.h"
#include "flags.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "move_table.h"
#include "overlay_manager.h"
#include "palette.h"
#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "pokemon_sprite.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_chatot.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "system.h"
#include "text.h"
#include "touch_screen.h"
#include "trainer_data.h"
#include "trainer_info.h"
#include "unk_02012744.h"
#include "unk_0201567C.h"
#include "unk_0208C098.h"

#include "res/battle/scripts/sub_seq.naix.h"

typedef BOOL (*BtlCmd)(BattleSystem *, BattleContext *);

typedef struct BattleMessageParams {
    int id; //< ID of the message in the battle text bank
    int tags; //< Tags defining what each parameter should be interpreted as
    int params[6]; //< Params for the rendered message
} BattleMessageParams;

static BOOL BtlCmd_PlayEncounterAnimation(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SetPokemonEncounter(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PokemonSlideIn(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PokemonSendOut(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_RecallPokemon(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_DeletePokemon(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SetTrainerEncounter(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ThrowPokeball(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TrainerSlideOut(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TrainerSlideIn(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_BackgroundSlideIn(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_HealthbarSlideIn(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_HealthbarSlideInDelay(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_HealthbarSlideOut(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_Wait(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcDamage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcMaxDamage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintAttackMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintGlobalMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintBufferedMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_BufferMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_BufferLocalMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PlayMoveAnimation(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PlayMoveAnimationOnMons(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_FlickerMon(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_UpdateHealthBarValue(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_UpdateHealthBar(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryFaintMon(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PlayFaintAnimation(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_WaitButtonABTime(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PlaySound(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CompareVarToValue(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CompareMonDataToValue(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_FadeOutBattle(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_GoToSubscript(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_GoToEffectScript(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_GoToMoveScript(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcCrit(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcExpGain(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_StartGetExpTask(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_WaitGetExpTask(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_Dummy2A(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ShowParty(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_WaitMonSelection(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SwitchAndUpdateMon(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_GoToIfAnySwitches(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_StartCatchMonTask(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_WaitCatchMonTask(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SetMultiHit(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_UpdateVar(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ChangeStatStage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_UpdateMonData(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ClearVolatileStatus(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ToggleVanish(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CheckAbility(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_Random(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_UpdateVarFromVar(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_UpdateMonDataFromVar(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_GoTo(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_Call(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CallFromVar(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SetMirrorMove(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ResetAllStatChanges(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_LockMoveChoice(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_UnlockMoveChoice(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SetHealthbarStatus(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintTrainerMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PayPrizeMoney(BattleSystem *battleSys, BattleContext *param1);
static BOOL BtlCmd_PlayBattleAnimation(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PlayBattleAnimationOnMons(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PlayBattleAnimationFromVar(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintRecallMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintSendOutMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintEncounterMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintFirstSendOutMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintBufferedTrainerMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryConversion(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CompareVarToVar(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CompareMonDataToVar(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_AddPayDayMoney(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryLightScreen(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryReflect(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryMist(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryOHKOMove(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_DivideVarByValue(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_DivideVarByVar(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryMimic(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_Metronome(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryDisable(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_Counter(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_MirrorCoat(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryEncore(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryConversion2(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TrySketch(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TrySleepTalk(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcFlailPower(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TrySpite(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryPartyStatusRefresh(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryStealItem(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryProtection(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TrySubstitute(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryWhirlwind(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_Transform(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TrySpikes(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CheckSpikes(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryPerishSong(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_GetMonBySpeedOrder(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_GoToIfValidMon(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_EndOfTurnWeatherEffect(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcRolloutPower(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcFuryCutterPower(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryAttract(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TrySafeguard(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_Present(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcMagnitudePower(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryReplaceFaintedMon(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_RapidSpin(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_WeatherHPRecovery(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcHiddenPowerParams(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CopyStatStages(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryFutureSight(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CheckMoveHit(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryTeleport(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_BeatUp(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_FollowMe(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryHelpingHand(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TrySwapItems(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryWish(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryAssist(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TrySetMagicCoat(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_MagicCoat(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcRevengePowerMul(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryBreakScreens(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryYawn(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryKnockOff(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcHPFalloffPower(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryImprison(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryGrudge(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TrySnatch(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcWeightBasedPower(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcWeatherBallParams(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryPursuit(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ApplyTypeEffectiveness(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_IfTurnFlag(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SetTurnFlag(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcGyroBallPower(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryMetalBurst(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcPaybackPower(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcTrumpCardPower(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcWringOutPower(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryMeFirst(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryCopycat(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcPunishmentPower(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TrySuckerPunch(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CheckSideCondition(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryFeint(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CheckCanShareStatus(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryLastResort(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryToxicSpikes(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CheckToxicSpikes(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CheckIgnorableAbility(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_IfSameSide(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_GenerateEndOfBattleItem(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TrickRoom(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_IfMovedThisTurn(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CheckItemHoldEffect(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_GetItemHoldEffect(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_GetItemEffectParam(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryCamouflage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_GetTerrainMove(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_GetTerrainSecondaryEffect(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcNaturalGiftParams(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryPluck(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryFling(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_YesNoMenu(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_WaitYesNoResult(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ChoosePokemonMenu(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_WaitPokemonMenuResult(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SetLinkBattleResult(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CheckStealthRock(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CheckEffectActivation(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CheckChatterActivation(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_GetCurrentMoveData(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SetMosaic(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ChangeForm(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SetBattleBackground(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_UseBagItem(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryEscape(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ShowBattleStartPartyGauge(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_HideBattleStartPartyGauge(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ShowPartyGauge(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_HidePartyGauge(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_LoadPartyGaugeGraphics(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_FreePartyGaugeGraphics(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_IncrementGameRecord(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_RestoreSprite(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TriggerAbilityOnHit(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SpriteToOAM(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_OAMToSprite(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CheckBlackOut(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_BoostRandomStatBy2(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_RemoveItem(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryRecycle(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TriggerHeldItemOnHit(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintBattleResultMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintEscapeMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintForfeitMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CheckHoldOnWith1HP(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryRestoreStatusOnSwitch(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CheckSubstitute(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CheckIgnoreWeather(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SetRandomTarget(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TriggerHeldItemOnPivotMove(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_RefreshSprite(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PlayMoveHitSound(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PlayBGM(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CheckSafariGameDone(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_WaitTime(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CheckCurMoveIsType(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_LoadArchivedMonData(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_RefreshMonData(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_End(BattleSystem *battleSys, BattleContext *battleCtx);

static int BattleScript_Read(BattleContext *battleCtx);
static void BattleScript_Iter(BattleContext *battleCtx, int i);
static void BattleScript_Jump(BattleContext *battleCtx, enum NarcID narcID, int file);
static void BattleScript_Call(BattleContext *battleCtx, enum NarcID narcID, int file);
static void *BattleScript_VarAddress(BattleSystem *battleSys, BattleContext *battleCtx, int var);
static int BattleScript_Battler(BattleSystem *battleSys, BattleContext *battleCtx, int battlerIn);
static void BattleScript_CalcMoveDamage(BattleSystem *battleSys, BattleContext *battleCtx);

static void BattleMessageParams_Make(BattleContext *battleCtx, BattleMessageParams *msgParams);
static void BattleMessage_Make(BattleSystem *battleSys, BattleContext *battleCtx, BattleMessageParams *msgParams, BattleMessage *msg);
static int BattleMessage_NameTag(BattleSystem *battleSys, BattleContext *battleCtx, int battlerIn);
static int BattleMessage_MoveTag(BattleContext *battleCtx, int battlerIn);
static int BattleMessage_ItemTag(BattleContext *battleCtx, int battlerIn);
static int BattleMessage_NumTag(BattleContext *battleCtx, int battlerIn);
static int BattleMessage_TypeTag(BattleContext *battleCtx, int battlerIn);
static int BattleMessage_AbilityTag(BattleSystem *battleSys, BattleContext *battleCtx, int battlerIn);
static int BattleMessage_StatTag(BattleContext *battleCtx, int battlerIn);
static int BattleMessage_StatusTag(BattleContext *battleCtx, int battlerIn);
static int BattleMessage_PokeTag(BattleSystem *battleSys, BattleContext *battleCtx, int battlerIn);
static int BattleMessage_PoffinTag(BattleContext *battleCtx, int battlerIn);
static int BattleMessage_FlavorTag(BattleContext *battleCtx, int battlerIn);
static int BattleMessage_TrainerClassTag(BattleSystem *battleSys, BattleContext *battleCtx, int battlerIn);
static int BattleMessage_TrainerNameTag(BattleSystem *battleSys, BattleContext *battleCtx, int battlerIn);

static u32 BattleScript_CalcPrizeMoney(BattleSystem *battleSys, BattleContext *param1, int param2);
static void BattleScript_CalcEffortValues(Party *party, int slot, int species, int form);
static int BattleScript_CalcCatchShakes(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleScript_LoadPartyLevelUpIcon(BattleSystem *battleSys, BattleScriptTaskData *param1, Pokemon *param2);
static void BattleScript_FreePartyLevelUpIcon(BattleSystem *battleSys, BattleScriptTaskData *param1);
static void BattleScript_UpdateFriendship(BattleSystem *battleSys, BattleContext *battleCtx, int faintingBattler);
static void BattleAI_SetAbility(BattleContext *battleCtx, u8 battler, u8 ability);
static void BattleAI_SetHeldItem(BattleContext *battleCtx, u8 battler, u16 item);
static void BattleScript_GetExpTask(SysTask *task, void *data);
static void BattleScript_CatchMonTask(SysTask *task, void *data);

static const BtlCmd sBattleCommands[] = {
    BtlCmd_PlayEncounterAnimation,
    BtlCmd_SetPokemonEncounter,
    BtlCmd_PokemonSlideIn,
    BtlCmd_PokemonSendOut,
    BtlCmd_RecallPokemon,
    BtlCmd_DeletePokemon,
    BtlCmd_SetTrainerEncounter,
    BtlCmd_ThrowPokeball,
    BtlCmd_TrainerSlideOut,
    BtlCmd_TrainerSlideIn,
    BtlCmd_BackgroundSlideIn,
    BtlCmd_HealthbarSlideIn,
    BtlCmd_HealthbarSlideInDelay,
    BtlCmd_HealthbarSlideOut,
    BtlCmd_Wait,
    BtlCmd_CalcDamage,
    BtlCmd_CalcMaxDamage,
    BtlCmd_PrintAttackMessage,
    BtlCmd_PrintMessage,
    BtlCmd_PrintGlobalMessage,
    BtlCmd_PrintBufferedMessage,
    BtlCmd_BufferMessage,
    BtlCmd_BufferLocalMessage,
    BtlCmd_PlayMoveAnimation,
    BtlCmd_PlayMoveAnimationOnMons,
    BtlCmd_FlickerMon,
    BtlCmd_UpdateHealthBarValue,
    BtlCmd_UpdateHealthBar,
    BtlCmd_TryFaintMon,
    BtlCmd_PlayFaintAnimation,
    BtlCmd_WaitButtonABTime,
    BtlCmd_PlaySound,
    BtlCmd_CompareVarToValue,
    BtlCmd_CompareMonDataToValue,
    BtlCmd_FadeOutBattle,
    BtlCmd_GoToSubscript,
    BtlCmd_GoToEffectScript,
    BtlCmd_GoToMoveScript,
    BtlCmd_CalcCrit,
    BtlCmd_CalcExpGain,
    BtlCmd_StartGetExpTask,
    BtlCmd_WaitGetExpTask,
    BtlCmd_Dummy2A,
    BtlCmd_ShowParty,
    BtlCmd_WaitMonSelection,
    BtlCmd_SwitchAndUpdateMon,
    BtlCmd_GoToIfAnySwitches,
    BtlCmd_StartCatchMonTask,
    BtlCmd_WaitCatchMonTask,
    BtlCmd_SetMultiHit,
    BtlCmd_UpdateVar,
    BtlCmd_ChangeStatStage,
    BtlCmd_UpdateMonData,
    BtlCmd_ClearVolatileStatus,
    BtlCmd_ToggleVanish,
    BtlCmd_CheckAbility,
    BtlCmd_Random,
    BtlCmd_UpdateVarFromVar,
    BtlCmd_UpdateMonDataFromVar,
    BtlCmd_GoTo,
    BtlCmd_Call,
    BtlCmd_CallFromVar,
    BtlCmd_SetMirrorMove,
    BtlCmd_ResetAllStatChanges,
    BtlCmd_LockMoveChoice,
    BtlCmd_UnlockMoveChoice,
    BtlCmd_SetHealthbarStatus,
    BtlCmd_PrintTrainerMessage,
    BtlCmd_PayPrizeMoney,
    BtlCmd_PlayBattleAnimation,
    BtlCmd_PlayBattleAnimationOnMons,
    BtlCmd_PlayBattleAnimationFromVar,
    BtlCmd_PrintRecallMessage,
    BtlCmd_PrintSendOutMessage,
    BtlCmd_PrintEncounterMessage,
    BtlCmd_PrintFirstSendOutMessage,
    BtlCmd_PrintBufferedTrainerMessage,
    BtlCmd_TryConversion,
    BtlCmd_CompareVarToVar,
    BtlCmd_CompareMonDataToVar,
    BtlCmd_AddPayDayMoney,
    BtlCmd_TryLightScreen,
    BtlCmd_TryReflect,
    BtlCmd_TryMist,
    BtlCmd_TryOHKOMove,
    BtlCmd_DivideVarByValue,
    BtlCmd_DivideVarByVar,
    BtlCmd_TryMimic,
    BtlCmd_Metronome,
    BtlCmd_TryDisable,
    BtlCmd_Counter,
    BtlCmd_MirrorCoat,
    BtlCmd_TryEncore,
    BtlCmd_TryConversion2,
    BtlCmd_TrySketch,
    BtlCmd_TrySleepTalk,
    BtlCmd_CalcFlailPower,
    BtlCmd_TrySpite,
    BtlCmd_TryPartyStatusRefresh,
    BtlCmd_TryStealItem,
    BtlCmd_TryProtection,
    BtlCmd_TrySubstitute,
    BtlCmd_TryWhirlwind,
    BtlCmd_Transform,
    BtlCmd_TrySpikes,
    BtlCmd_CheckSpikes,
    BtlCmd_TryPerishSong,
    BtlCmd_GetMonBySpeedOrder,
    BtlCmd_GoToIfValidMon,
    BtlCmd_EndOfTurnWeatherEffect,
    BtlCmd_CalcRolloutPower,
    BtlCmd_CalcFuryCutterPower,
    BtlCmd_TryAttract,
    BtlCmd_TrySafeguard,
    BtlCmd_Present,
    BtlCmd_CalcMagnitudePower,
    BtlCmd_TryReplaceFaintedMon,
    BtlCmd_RapidSpin,
    BtlCmd_WeatherHPRecovery,
    BtlCmd_CalcHiddenPowerParams,
    BtlCmd_CopyStatStages,
    BtlCmd_TryFutureSight,
    BtlCmd_CheckMoveHit,
    BtlCmd_TryTeleport,
    BtlCmd_BeatUp,
    BtlCmd_FollowMe,
    BtlCmd_TryHelpingHand,
    BtlCmd_TrySwapItems,
    BtlCmd_TryWish,
    BtlCmd_TryAssist,
    BtlCmd_TrySetMagicCoat,
    BtlCmd_MagicCoat,
    BtlCmd_CalcRevengePowerMul,
    BtlCmd_TryBreakScreens,
    BtlCmd_TryYawn,
    BtlCmd_TryKnockOff,
    BtlCmd_CalcHPFalloffPower,
    BtlCmd_TryImprison,
    BtlCmd_TryGrudge,
    BtlCmd_TrySnatch,
    BtlCmd_CalcWeightBasedPower,
    BtlCmd_CalcWeatherBallParams,
    BtlCmd_TryPursuit,
    BtlCmd_ApplyTypeEffectiveness,
    BtlCmd_IfTurnFlag,
    BtlCmd_SetTurnFlag,
    BtlCmd_CalcGyroBallPower,
    BtlCmd_TryMetalBurst,
    BtlCmd_CalcPaybackPower,
    BtlCmd_CalcTrumpCardPower,
    BtlCmd_CalcWringOutPower,
    BtlCmd_TryMeFirst,
    BtlCmd_TryCopycat,
    BtlCmd_CalcPunishmentPower,
    BtlCmd_TrySuckerPunch,
    BtlCmd_CheckSideCondition,
    BtlCmd_TryFeint,
    BtlCmd_CheckCanShareStatus,
    BtlCmd_TryLastResort,
    BtlCmd_TryToxicSpikes,
    BtlCmd_CheckToxicSpikes,
    BtlCmd_CheckIgnorableAbility,
    BtlCmd_IfSameSide,
    BtlCmd_GenerateEndOfBattleItem,
    BtlCmd_TrickRoom,
    BtlCmd_IfMovedThisTurn,
    BtlCmd_CheckItemHoldEffect,
    BtlCmd_GetItemHoldEffect,
    BtlCmd_GetItemEffectParam,
    BtlCmd_TryCamouflage,
    BtlCmd_GetTerrainMove,
    BtlCmd_GetTerrainSecondaryEffect,
    BtlCmd_CalcNaturalGiftParams,
    BtlCmd_TryPluck,
    BtlCmd_TryFling,
    BtlCmd_YesNoMenu,
    BtlCmd_WaitYesNoResult,
    BtlCmd_ChoosePokemonMenu,
    BtlCmd_WaitPokemonMenuResult,
    BtlCmd_SetLinkBattleResult,
    BtlCmd_CheckStealthRock,
    BtlCmd_CheckEffectActivation,
    BtlCmd_CheckChatterActivation,
    BtlCmd_GetCurrentMoveData,
    BtlCmd_SetMosaic,
    BtlCmd_ChangeForm,
    BtlCmd_SetBattleBackground,
    BtlCmd_UseBagItem,
    BtlCmd_TryEscape,
    BtlCmd_ShowBattleStartPartyGauge,
    BtlCmd_HideBattleStartPartyGauge,
    BtlCmd_ShowPartyGauge,
    BtlCmd_HidePartyGauge,
    BtlCmd_LoadPartyGaugeGraphics,
    BtlCmd_FreePartyGaugeGraphics,
    BtlCmd_IncrementGameRecord,
    BtlCmd_RestoreSprite,
    BtlCmd_TriggerAbilityOnHit,
    BtlCmd_SpriteToOAM,
    BtlCmd_OAMToSprite,
    BtlCmd_CheckBlackOut,
    BtlCmd_BoostRandomStatBy2,
    BtlCmd_RemoveItem,
    BtlCmd_TryRecycle,
    BtlCmd_TriggerHeldItemOnHit,
    BtlCmd_PrintBattleResultMessage,
    BtlCmd_PrintEscapeMessage,
    BtlCmd_PrintForfeitMessage,
    BtlCmd_CheckHoldOnWith1HP,
    BtlCmd_TryRestoreStatusOnSwitch,
    BtlCmd_CheckSubstitute,
    BtlCmd_CheckIgnoreWeather,
    BtlCmd_SetRandomTarget,
    BtlCmd_TriggerHeldItemOnPivotMove,
    BtlCmd_RefreshSprite,
    BtlCmd_PlayMoveHitSound,
    BtlCmd_PlayBGM,
    BtlCmd_CheckSafariGameDone,
    BtlCmd_WaitTime,
    BtlCmd_CheckCurMoveIsType,
    BtlCmd_LoadArchivedMonData,
    BtlCmd_RefreshMonData,
    BtlCmd_End
};

BOOL BattleScript_Exec(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BOOL result;

    do {
        result = sBattleCommands[battleCtx->battleScript[battleCtx->scriptCursor]](battleSys, battleCtx);
    } while (battleCtx->battleProgressFlag == FALSE
        && (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_LINK) == FALSE);

    battleCtx->battleProgressFlag = FALSE;
    return result;
}

/**
 * @brief Setup the battle UI from our POV.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PlayEncounterAnimation(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    BattleIO_SetupBattleUI(battleSys, BATTLER_US);

    return FALSE;
}

/**
 * @brief Set a wild Pokemon as the battle encounter.
 *
 * This also flags the encounter as seen in the Pokedex.
 *
 * Inputs:
 * 1. the battler for whom the wild Pokemon will be set as the encounter
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_SetPokemonEncounter(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);

    BattleScript_Iter(battleCtx, 1);

    int battlerIn = BattleScript_Read(battleCtx);
    switch (battlerIn) {
    default:
    case BTLSCR_ALL_BATTLERS:
        for (i = 0; i < maxBattlers; i++) {
            BattleIO_SetEncounter(battleSys, i);
            BattleSystem_DexFlagSeen(battleSys, i);
        }
        break;

    case BTLSCR_PLAYER:
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            BattlerData *battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) {
                BattleIO_SetEncounter(battleSys, i);
                BattleSystem_DexFlagSeen(battleSys, i);
            }
        }
        break;
    }

    return FALSE;
}

/**
 * @brief Show a wild encounter.
 *
 * This also marks eligible battlers for experience gain.
 *
 * Inputs:
 * 1. the battler who will be shown
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PokemonSlideIn(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    BattlerData *battlerData;

    BattleScript_Iter(battleCtx, 1);

    int battlerIn = BattleScript_Read(battleCtx);
    switch (battlerIn) {
    default:
    case BTLSCR_ALL_BATTLERS:
        for (i = 0; i < maxBattlers; i++) {
            BattleIO_ShowEncounter(battleSys, i);
            BattleSystem_DexFlagSeen(battleSys, i);
        }
        break;

    case BTLSCR_PLAYER:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
                BattleIO_ShowEncounter(battleSys, i);
                BattleSystem_DexFlagSeen(battleSys, i);
            }
        }

        BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, BATTLER_ENEMY_1);
        BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, BATTLER_ENEMY_2);
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) {
                BattleSystem_ClearSideExpGain(battleCtx, i);
                BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, i);
                BattleIO_ShowEncounter(battleSys, i);
                BattleSystem_DexFlagSeen(battleSys, i);
            }
        }
        break;

    case BTLSCR_ATTACKER:
        battlerData = BattleSystem_BattlerData(battleSys, battleCtx->attacker);

        if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
            BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, BATTLER_ENEMY_1);
            BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, BATTLER_ENEMY_2);
        } else {
            BattleSystem_ClearSideExpGain(battleCtx, battleCtx->attacker);
            BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, battleCtx->attacker);
        }

        BattleSystem_DexFlagSeen(battleSys, battleCtx->attacker);
        BattleIO_ShowEncounter(battleSys, battleCtx->attacker);
        break;

    case BTLSCR_DEFENDER:
        battlerData = BattleSystem_BattlerData(battleSys, battleCtx->defender);

        if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
            BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, BATTLER_ENEMY_1);
            BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, BATTLER_ENEMY_2);
        } else {
            BattleSystem_ClearSideExpGain(battleCtx, battleCtx->defender);
            BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, battleCtx->defender);
        }

        BattleSystem_DexFlagSeen(battleSys, battleCtx->defender);
        BattleIO_ShowEncounter(battleSys, battleCtx->defender);
        break;

    case BTLSCR_SWITCHED_MON:
        battlerData = BattleSystem_BattlerData(battleSys, battleCtx->switchedMon);

        if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
            BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, BATTLER_ENEMY_1);
            BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, BATTLER_ENEMY_2);
        } else {
            BattleSystem_ClearSideExpGain(battleCtx, battleCtx->switchedMon);
            BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, battleCtx->switchedMon);
        }

        BattleSystem_DexFlagSeen(battleSys, battleCtx->switchedMon);
        BattleIO_ShowEncounter(battleSys, battleCtx->switchedMon);
        break;
    }

    return FALSE;
}

/**
 * @brief Show a Pokemon.
 *
 * This also marks eligible battlers for experience gain.
 *
 * Inputs:
 * 1. the battler who will be shown
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PokemonSendOut(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    BattlerData *battlerData;

    BattleScript_Iter(battleCtx, 1);

    int battlerIn = BattleScript_Read(battleCtx);
    switch (battlerIn) {
    default:
    case BTLSCR_ALL_BATTLERS:
        for (i = 0; i < maxBattlers; i++) {
            BattleIO_ShowPokemon(battleSys, i, NULL, 0);
            BattleSystem_DexFlagSeen(battleSys, i);
        }
        break;

    case BTLSCR_PLAYER:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if ((battlerData->battlerType & 0x1) == 0) {
                BattleIO_ShowPokemon(battleSys, i, NULL, 0);
                BattleSystem_DexFlagSeen(battleSys, i);
            }
        }

        BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, BATTLER_ENEMY_1);
        BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, BATTLER_ENEMY_2);
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType & 0x1) {
                BattleSystem_ClearSideExpGain(battleCtx, i);
                BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, i);
                BattleIO_ShowPokemon(battleSys, i, NULL, 0);
                BattleSystem_DexFlagSeen(battleSys, i);
            }
        }
        break;

    case BTLSCR_ATTACKER:
        battlerData = BattleSystem_BattlerData(battleSys, battleCtx->attacker);

        if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
            BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, BATTLER_ENEMY_1);
            BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, BATTLER_ENEMY_2);
        } else {
            BattleSystem_ClearSideExpGain(battleCtx, battleCtx->attacker);
            BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, battleCtx->attacker);
        }

        BattleSystem_DexFlagSeen(battleSys, battleCtx->attacker);
        BattleIO_ShowPokemon(battleSys, battleCtx->attacker, NULL, 0);
        break;

    case BTLSCR_DEFENDER:
        battlerData = BattleSystem_BattlerData(battleSys, battleCtx->defender);

        if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
            BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, BATTLER_ENEMY_1);
            BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, BATTLER_ENEMY_2);
        } else {
            BattleSystem_ClearSideExpGain(battleCtx, battleCtx->defender);
            BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, battleCtx->defender);
        }

        BattleSystem_DexFlagSeen(battleSys, battleCtx->defender);
        BattleIO_ShowPokemon(battleSys, battleCtx->defender, NULL, 0);
        break;

    case BTLSCR_SWITCHED_MON:
        battlerData = BattleSystem_BattlerData(battleSys, battleCtx->switchedMon);

        if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
            BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, BATTLER_ENEMY_1);
            BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, BATTLER_ENEMY_2);
        } else {
            BattleSystem_ClearSideExpGain(battleCtx, battleCtx->switchedMon);
            BattleSystem_FlagBattlerExpGain(battleSys, battleCtx, battleCtx->switchedMon);
        }

        BattleSystem_DexFlagSeen(battleSys, battleCtx->switchedMon);
        BattleIO_ShowPokemon(battleSys, battleCtx->switchedMon, NULL, 0);
        break;
    }

    return 0;
}

/**
 * @brief Return a Pokemon to its Poke Ball.
 *
 * Inputs:
 * 1. the battler who will be returned to its Poke Ball
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_RecallPokemon(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    BattlerData *battlerData;

    BattleScript_Iter(battleCtx, 1);
    int battlerIn = BattleScript_Read(battleCtx);

    switch (battlerIn) {
    case BTLSCR_ALL_BATTLERS:
        for (i = 0; i < maxBattlers; i++) {
            BattleIO_ReturnPokemon(battleSys, battleCtx, i);
        }
        break;

    case BTLSCR_PLAYER:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
                BattleIO_ReturnPokemon(battleSys, battleCtx, i);
            }
        }
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) && (battleCtx->battlersSwitchingMask & FlagIndex(i)) == FALSE) {
                BattleIO_ReturnPokemon(battleSys, battleCtx, i);
            }
        }
        break;

    default:
        i = BattleScript_Battler(battleSys, battleCtx, battlerIn);
        BattleIO_ReturnPokemon(battleSys, battleCtx, i);
        break;
    }

    return FALSE;
}

/**
 * @brief Delete a Pokemon's sprite.
 *
 * Inputs:
 * 1. the battler whose sprite will be deleted
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_DeletePokemon(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    int battlerIn = BattleScript_Read(battleCtx);
    int battler = BattleScript_Battler(battleSys, battleCtx, battlerIn);

    BattleIO_DeletePokemon(battleSys, battler);

    return FALSE;
}

/**
 * @brief Set a trainer as the battle encounter.
 *
 * Inputs:
 * 1. the battler for whom the trainer will be set as the encounter
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_SetTrainerEncounter(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    BattlerData *battlerData;

    BattleScript_Iter(battleCtx, 1);

    int battlerIn = BattleScript_Read(battleCtx);

    switch (battlerIn) {
    default:
    case BTLSCR_ALL_BATTLERS:
        if (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_TAG) {
            for (i = 0; i < maxBattlers; i++) {
                battlerData = BattleSystem_BattlerData(battleSys, i);
                if (battlerData->battlerType != BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
                    BattleIO_SetTrainerEncounter(battleSys, i);
                }
            }
        } else {
            for (i = 0; i < maxBattlers; i++) {
                if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_2vs2) == FALSE
                    && (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES)
                    && i > 1) {
                    break;
                }

                BattleIO_SetTrainerEncounter(battleSys, i);
            }
        }
        break;

    case BTLSCR_PLAYER:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
                BattleIO_SetTrainerEncounter(battleSys, i);

                if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_2vs2) == FALSE
                    && (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES)) {
                    break;
                }
            }
        }
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) {
                BattleIO_SetTrainerEncounter(battleSys, i);

                if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_2vs2) == FALSE
                    && (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_TAG) == FALSE
                    && (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES)) {
                    break;
                }
            }
        }
        break;
    }

    return FALSE;
}

/**
 * @brief Play the ball-throw animation for a battler.
 *
 * Inputs:
 * 1. the battler whose ball is to be thrown
 * 2. the type of ball that the battler will throw
 *
 * Side effects:
 * - battleCtx->battleProgressFlag will be set to TRUE.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_ThrowPokeball(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    BattlerData *battlerData;

    BattleScript_Iter(battleCtx, 1);

    int battlerIn = BattleScript_Read(battleCtx);
    int ballTypeIn = BattleScript_Read(battleCtx);

    switch (battlerIn) {
    default:
    case BTLSCR_ALL_BATTLERS:
        for (i = 0; i < maxBattlers; i++) {
            if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_2vs2) == FALSE
                && (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES)
                && i > 1) {
                break;
            }

            BattleIO_ThrowTrainerBall(battleSys, i, ballTypeIn);
        }
        break;

    case BTLSCR_PLAYER:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
                BattleIO_ThrowTrainerBall(battleSys, i, ballTypeIn);

                if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_2vs2) == FALSE
                    && (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES)) {
                    break;
                }
            }
        }
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) {
                BattleIO_ThrowTrainerBall(battleSys, i, ballTypeIn);

                if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_2vs2) == FALSE
                    && (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_TAG) == FALSE
                    && (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES)) {
                    break;
                }
            }
        }
        break;
    }

    battleCtx->battleProgressFlag = TRUE;
    return FALSE;
}

/**
 * @brief Slide a trainer's sprite out of view.
 *
 * Inputs:
 * 1. the battler whose sprite is to be moved
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TrainerSlideOut(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    BattlerData *battlerData;

    BattleScript_Iter(battleCtx, 1);

    int battlerIn = BattleScript_Read(battleCtx);

    switch (battlerIn) {
    default:
    case BTLSCR_ALL_BATTLERS:
        for (i = 0; i < maxBattlers; i++) {
            if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_2vs2) == FALSE
                && (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES)
                && i > 1) {
                break;
            }

            BattleIO_SlideTrainerOut(battleSys, i);
        }
        break;

    case BTLSCR_PLAYER:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
                BattleIO_SlideTrainerOut(battleSys, i);

                if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_2vs2) == FALSE
                    && (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES)) {
                    break;
                }
            }
        }
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) {
                BattleIO_SlideTrainerOut(battleSys, i);

                if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_2vs2) == FALSE
                    && (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_TAG) == FALSE
                    && (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES)) {
                    break;
                }
            }
        }
        break;

    case BTLSCR_PLAYER_SLOT_1:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType == BATTLER_TYPE_SOLO_PLAYER
                || battlerData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                BattleIO_SlideTrainerOut(battleSys, i);
                break;
            }
        }
        break;

    case BTLSCR_ENEMY_SLOT_1:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType == BATTLER_TYPE_SOLO_ENEMY
                || battlerData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
                BattleIO_SlideTrainerOut(battleSys, i);
                break;
            }
        }
        break;

    case BTLSCR_PLAYER_SLOT_2:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
                BattleIO_SlideTrainerOut(battleSys, i);
                break;
            }
        }
        break;

    case BTLSCR_ENEMY_SLOT_2:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_2) {
                BattleIO_SlideTrainerOut(battleSys, i);
                break;
            }
        }
        break;
    }

    return FALSE;
}

/**
 * @brief Slide a trainer's sprite into view.
 *
 * Inputs:
 * 1. the battler whose sprite is to be moved
 * 2. the position that the trainer should be moved into (i.e. the trainer's slot
 * on their side of the field)
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TrainerSlideIn(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    BattlerData *battlerData;

    BattleScript_Iter(battleCtx, 1);

    int battlerIn = BattleScript_Read(battleCtx);
    int posIn = BattleScript_Read(battleCtx);

    switch (battlerIn) {
    default:
    case BTLSCR_ALL_BATTLERS:
        for (i = 0; i < maxBattlers; i++) {
            if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES)
                && i > 1) {
                break;
            }

            BattleIO_SlideTrainerIn(battleSys, i, posIn);
        }
        break;

    case BTLSCR_PLAYER:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
                BattleIO_SlideTrainerIn(battleSys, i, posIn);

                if (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES) {
                    break;
                }
            }
        }
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) {
                BattleIO_SlideTrainerIn(battleSys, i, posIn);

                if (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES) {
                    break;
                }
            }
        }
        break;

    case BTLSCR_PLAYER_SLOT_1:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType == BATTLER_TYPE_SOLO_PLAYER
                || battlerData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                BattleIO_SlideTrainerIn(battleSys, i, posIn);
                break;
            }
        }
        break;

    case BTLSCR_ENEMY_SLOT_1:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType == BATTLER_TYPE_SOLO_ENEMY
                || battlerData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
                BattleIO_SlideTrainerIn(battleSys, i, posIn);
                break;
            }
        }
        break;

    case BTLSCR_PLAYER_SLOT_2:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
                BattleIO_SlideTrainerIn(battleSys, i, posIn);
                break;
            }
        }
        break;

    case BTLSCR_ENEMY_SLOT_2:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_2) {
                BattleIO_SlideTrainerIn(battleSys, i, posIn);
                break;
            }
        }
        break;
    }

    return FALSE;
}

static BOOL BtlCmd_BackgroundSlideIn(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);

    BattleScript_Iter(battleCtx, 1);

    for (i = 0; i < maxBattlers; i++) {
        ov16_02266460(battleSys, i);
    }

    return FALSE;
}

/**
 * @brief Slide the HP gauge in for a battler.
 *
 * Inputs:
 * 1. the battler whose HP gauge should be moved
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_HealthbarSlideIn(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    BattlerData *battlerData;

    BattleScript_Iter(battleCtx, 1);

    int battlerIn = BattleScript_Read(battleCtx);

    switch (battlerIn) {
    case BTLSCR_ALL_BATTLERS:
        for (i = 0; i < maxBattlers; i++) {
            BattleIO_SlideHealthbarIn(battleSys, battleCtx, i, 0);
        }
        break;

    case BTLSCR_PLAYER:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
                BattleIO_SlideHealthbarIn(battleSys, battleCtx, i, 0);
            }
        }
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) {
                BattleIO_SlideHealthbarIn(battleSys, battleCtx, i, 0);
            }
        }
        break;

    default:
        i = BattleScript_Battler(battleSys, battleCtx, battlerIn);
        BattleIO_SlideHealthbarIn(battleSys, battleCtx, i, 0);
        break;
    }

    return FALSE;
}

/**
 * @brief Slide the HP gauge in for all battlers on a given side,
 * delaying between them.
 *
 * Inputs:
 * 1. the side whose battlers' HP gauge should be moved
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_HealthbarSlideInDelay(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    BattlerData *battlerData;

    BattleScript_Iter(battleCtx, 1);

    int battlerIn = BattleScript_Read(battleCtx);
    u8 wait = 0;

    switch (battlerIn) {
    case BTLSCR_ALL_BATTLERS:
        for (i = 0; i < maxBattlers; i++) {
            BattleIO_SlideHealthbarIn(battleSys, battleCtx, i, 0);
        }
        break;

    case BTLSCR_PLAYER:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
                BattleIO_SlideHealthbarIn(battleSys, battleCtx, i, wait);
                wait += 4;
            }
        }
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) {
                BattleIO_SlideHealthbarIn(battleSys, battleCtx, i, wait);
                wait += 4;
            }
        }
        break;

    default:
        i = BattleScript_Battler(battleSys, battleCtx, battlerIn);
        BattleIO_SlideHealthbarIn(battleSys, battleCtx, i, wait);
        break;
    }

    return FALSE;
}

/**
 * @brief Slide the HP gauge out for a battler.
 *
 * Inputs:
 * 1. the battler whose HP gauge should be moved
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_HealthbarSlideOut(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    BattlerData *battlerData;

    BattleScript_Iter(battleCtx, 1);

    int battlerIn = BattleScript_Read(battleCtx);

    switch (battlerIn) {
    case BTLSCR_ALL_BATTLERS:
        for (i = 0; i < maxBattlers; i++) {
            BattleIO_SlideHealthbarOut(battleSys, i);
        }
        break;

    case BTLSCR_PLAYER:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE
                && (battleCtx->battlersSwitchingMask & FlagIndex(i)) == FALSE) {
                BattleIO_SlideHealthbarOut(battleSys, i);
            }
        }
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) {
                BattleIO_SlideHealthbarOut(battleSys, i);
            }
        }
        break;

    default:
        i = BattleScript_Battler(battleSys, battleCtx, battlerIn);
        BattleIO_SlideHealthbarOut(battleSys, i);
        break;
    }

    return FALSE;
}

/**
 * @brief Wait until the battle IO queue is empty.
 *
 * This command ensures that all linked battlers are in sync with the present
 * state of the battle after a given action. CompareVarToValue any linked battler hangs in
 * this state for 1800 frames (~30 seconds), then the link status will be set
 * to an error state, forcing the battle to end.
 *
 * Side effects:
 * - battleCtx->battleProgressFlag will be set to TRUE.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_Wait(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (BattleIO_QueueIsEmpty(battleCtx)) {
        BattleScript_Iter(battleCtx, 1);
    } else {
        BattleIO_UpdateTimeout(battleCtx);
    }

    battleCtx->battleProgressFlag = TRUE;
    return FALSE;
}

/**
 * @brief Calculate the damage for the current move and store the result in
 * the BattleContext struct.
 *
 * Aside from the standard damage calc, this is where the following effects
 * have their damage amplification properties applied:
 * - Life Orb
 * - Metronome
 * - Me First
 *
 * @param battleSys
 * @param battleCtx
 */
static void BattleScript_CalcMoveDamage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int moveType;
    if (Battler_Ability(battleCtx, battleCtx->attacker) == ABILITY_NORMALIZE) {
        moveType = TYPE_NORMAL;
    } else if (battleCtx->moveType) {
        moveType = battleCtx->moveType;
    } else {
        moveType = CURRENT_MOVE_DATA.type;
    }

    battleCtx->damage = BattleSystem_CalcMoveDamage(battleSys,
        battleCtx,
        battleCtx->moveCur,
        battleCtx->sideConditionsMask[Battler_Side(battleSys, battleCtx->defender)],
        battleCtx->fieldConditionsMask,
        battleCtx->movePower,
        moveType,
        battleCtx->attacker,
        battleCtx->defender,
        battleCtx->criticalMul);
    battleCtx->damage *= battleCtx->criticalMul;

    if (Battler_HeldItemEffect(battleCtx, battleCtx->attacker) == HOLD_EFFECT_HP_DRAIN_ON_ATK) {
        battleCtx->damage = battleCtx->damage * (100 + Battler_HeldItemPower(battleCtx, battleCtx->attacker, 0)) / 100;
    }

    if (Battler_HeldItemEffect(battleCtx, battleCtx->attacker) == HOLD_EFFECT_BOOST_REPEATED) {
        battleCtx->damage = battleCtx->damage * (10 + ATTACKING_MON.moveEffectsData.metronomeTurns) / 10;
    }

    if (ATTACKING_MON.moveEffectsData.meFirst) {
        // TODO: Document how this works after documenting the Me First behavior.
        if (battleCtx->meFirstTurnOrder == ATTACKING_MON.moveEffectsData.meFirstTurnNumber) {
            ATTACKING_MON.moveEffectsData.meFirstTurnNumber--;
        }

        if (battleCtx->meFirstTurnOrder - ATTACKING_MON.moveEffectsData.meFirstTurnNumber < 2) {
            battleCtx->damage = battleCtx->damage * 15 / 10;
        } else {
            ATTACKING_MON.moveEffectsData.meFirst = 0;
        }
    }
}

/**
 * @brief Calculate the damage for the current move, applying random variance
 * to the computed value.
 *
 * Side effects:
 * - battleCtx->damage will have its value set to the final damage value to be
 * added to the target's HP.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CalcDamage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    BattleScript_CalcMoveDamage(battleSys, battleCtx);
    battleCtx->damage = BattleSystem_CalcDamageVariance(battleSys, battleCtx, battleCtx->damage);
    battleCtx->damage *= -1;

    return FALSE;
}

/**
 * @brief Calculate the maximum damage for the current move.
 *
 * Side effects:
 * - battleCtx->damage will have its value set to the final damage value to be
 * added to the target's HP.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CalcMaxDamage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    BattleScript_CalcMoveDamage(battleSys, battleCtx);
    battleCtx->damage *= -1;

    return FALSE;
}

/**
 * @brief Print the attack message, i.e., "Cloyster used Icicle Spear!"
 *
 * Side effects:
 * - System control will be flagged to skip all future attack messages
 * - System control will be flagged that the attack message has been shown
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PrintAttackMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    if ((battleCtx->battleStatusMask & SYSCTL_SKIP_ATTACK_MESSAGE) == FALSE) {
        BattleIO_PrintAttackMessage(battleSys, battleCtx);
    }

    battleCtx->battleStatusMask |= SYSCTL_SKIP_ATTACK_MESSAGE; // don't show on future hits
    battleCtx->battleStatusMask2 |= SYSCTL_ATTACK_MESSAGE_SHOWN;

    return FALSE;
}

/**
 * @brief Print a message.
 *
 * Inputs:
 * 1. The ID of the message to be shown in the battle text bank.
 * 2. A tag value specifying what varargs to expect and in what order.
 * .. varargs to the string formatter.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PrintMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    BattleMessageParams msgParams;
    BattleMessageParams_Make(battleCtx, &msgParams);

    BattleMessage msg;
    BattleMessage_Make(battleSys, battleCtx, &msgParams, &msg);

    BattleIO_PrintMessage(battleSys, battleCtx, &msg);

    return FALSE;
}

/**
 * @brief Print a global message.
 *
 * This is for messages which do not pertain to any particular battler or side
 * of the battlefield, e.g., weather continuation messages ("Rain continues to
 * fall.", "The sandstorm rages.", etc.).
 *
 * Inputs:
 * 1. The ID of the message to be shown in the battle text bank.
 * 2. A tag value specifying what varargs to expect and in what order.
 * .. varargs to the string formatter.
 *
 * @param battleSys
 * @param battleCtx
 * @return BOOL
 */
static BOOL BtlCmd_PrintGlobalMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    BattleMessageParams msgParams;
    BattleMessageParams_Make(battleCtx, &msgParams);

    BattleMessage msg;
    BattleMessage_Make(battleSys, battleCtx, &msgParams, &msg);

    msg.tags |= TAG_GLOBAL_MESSAGE;
    BattleIO_PrintMessage(battleSys, battleCtx, &msg);

    return FALSE;
}

/**
 * @brief Print the prepared message.
 *
 * This, specifically, prints the contents of battleCtx->msgBuffer.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PrintBufferedMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    BattleIO_PrintMessage(battleSys, battleCtx, &battleCtx->msgBuffer);

    return FALSE;
}

/**
 * @brief Prepare a message for later printing.
 *
 * Inputs:
 * 1. The ID of the message to be shown in the battle text bank.
 * 2. A tag value specifying what varargs to expect and in what order.
 * .. varargs to the string formatter.
 *
 * Side effects:
 * - The contents of the prepared message are stored in battleCtx->msgBuffer.
 * This message can later be printed by invoking PrintBufferedMessage.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_BufferMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    BattleMessageParams msgParams;
    BattleMessageParams_Make(battleCtx, &msgParams);
    BattleMessage_Make(battleSys, battleCtx, &msgParams, &battleCtx->msgBuffer);

    return FALSE;
}

/**
 * @brief Print a side-local message.
 *
 * Inputs:
 * 1. The battler on whom the message is centered.
 * 2. The ID of the message to be shown in the battle text bank.
 * 3. A tag value specifying what varargs to expect and in what order.
 * .. varargs to the string formatter.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_BufferLocalMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    BattleMessageParams msgParams;
    BattleMessageParams_Make(battleCtx, &msgParams);

    BattleMessage msg;
    BattleMessage_Make(battleSys, battleCtx, &msgParams, &msg);

    msg.tags |= TAG_SIDE_LOCAL_MESSAGE;
    msg.battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_PrintMessage(battleSys, battleCtx, &msg);

    return FALSE;
}

/**
 * @brief Play a move animation, if move animations are enabled.
 *
 * Inputs:
 * 1. The location from which the animation is sourced. CompareVarToValue the input here is
 * BTLSCR_MSG_TEMP, then the move to load is picked from battleCtx->msgMoveTemp.
 * Otherwise, it is picked from battleCtx->moveCur.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PlayMoveAnimation(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inMoveSource = BattleScript_Read(battleCtx);

    u16 move;
    if (inMoveSource == BTLSCR_MSG_TEMP) {
        move = battleCtx->msgMoveTemp;
    } else {
        move = battleCtx->moveCur;
    }

    if (((battleCtx->battleStatusMask & SYSCTL_PLAYED_MOVE_ANIMATION) == FALSE && BattleSystem_AnimationsOn(battleSys) == TRUE)
        || move == MOVE_TRANSFORM) {
        battleCtx->battleStatusMask |= SYSCTL_PLAYED_MOVE_ANIMATION;
        BattleIO_PlayMoveAnimation(battleSys, battleCtx, move);
    }

    if (BattleSystem_AnimationsOn(battleSys) == FALSE) {
        BattleScript_Call(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, subscript_wait_move_animation);
    }

    return FALSE;
}

/**
 * @brief Play a move animation from the given attacker toward the given defender,
 * if move animations are enabled.
 *
 * Inputs:
 * 1. The location from which the animation is sourced. CompareVarToValue the input here is
 * BTLSCR_MSG_TEMP, then the move to load is picked from battleCtx->msgMoveTemp.
 * Otherwise, it is picked from battleCtx->moveCur.
 * 2. The attacker for the move animation.
 * 3. The defender for the move animation.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PlayMoveAnimationOnMons(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inMoveSource = BattleScript_Read(battleCtx);
    int inAttacker = BattleScript_Read(battleCtx);
    int inDefender = BattleScript_Read(battleCtx);

    u16 move;
    if (inMoveSource == BTLSCR_MSG_TEMP) {
        move = battleCtx->msgMoveTemp;
    } else {
        move = battleCtx->moveCur;
    }

    int attacker = BattleScript_Battler(battleSys, battleCtx, inAttacker);
    int defender = BattleScript_Battler(battleSys, battleCtx, inDefender);

    if (((battleCtx->battleStatusMask & SYSCTL_PLAYED_MOVE_ANIMATION) == FALSE && BattleSystem_AnimationsOn(battleSys) == TRUE)
        || move == MOVE_TRANSFORM) {
        battleCtx->battleStatusMask |= SYSCTL_PLAYED_MOVE_ANIMATION;
        BattleIO_PlayMoveAnimationA2D(battleSys, battleCtx, move, attacker, defender);
    }

    if (BattleSystem_AnimationsOn(battleSys) == FALSE) {
        BattleScript_Call(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, subscript_wait_move_animation);
    }

    return FALSE;
}

/**
 * @brief Flicker a battler's sprite (e.g., when it is damaged).
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_FlickerMon(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    int inBattler = BattleScript_Read(battleCtx);
    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);

    BattleIO_FlickerBattler(battleSys, battler, battleCtx->moveStatusFlags);

    return FALSE;
}

/**
 * @brief Update the HP value for a battler according to damage stored in the
 * battle context.
 *
 * Damage to be deducted from the battler's current HP is pulled from
 * battleCtx->hpCalcTemp.
 *
 * Inputs:
 * 1. The battler whose HP value is to be updated.
 *
 * Side effects:
 * - battleCtx->hitDamage is updated to be the damage taken, capped to the
 * battler's current HP.
 * - battleCtx->totalDamage for the battler accumulates the damage taken
 * - the battler's current HP is adjusted to the new value after applying
 * the taken damage, capped to its maximum HP (in case the damage taken
 * results in healing, e.g. via Volt Absorb).
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_UpdateHealthBarValue(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    // Cap the hit damage to the battler's current HP
    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    if (battleCtx->battleMons[battler].curHP + battleCtx->hpCalcTemp <= 0) {
        battleCtx->hitDamage = battleCtx->battleMons[battler].curHP * -1;
    } else {
        battleCtx->hitDamage = battleCtx->hpCalcTemp;
    }

    // Accumulate the hit damage into this battler's total taken damage
    if (battleCtx->hitDamage < 0) {
        battleCtx->totalDamage[battler] += (battleCtx->hitDamage * -1);
    }

    // Cap the battler's new HP value to their max HP (in case the temp value is positive).
    battleCtx->battleMons[battler].curHP += battleCtx->hpCalcTemp;
    if (battleCtx->battleMons[battler].curHP < 0) {
        battleCtx->battleMons[battler].curHP = 0;
    } else if (battleCtx->battleMons[battler].curHP > battleCtx->battleMons[battler].maxHP) {
        battleCtx->battleMons[battler].curHP = battleCtx->battleMons[battler].maxHP;
    }

    BattleMon_CopyToParty(battleSys, battleCtx, battler);

    return FALSE;
}

/**
 * @brief Update the HP gauge for a battler with their new current HP.
 *
 * Inputs:
 * 1. The battler whose HP gauge is to be updated.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_UpdateHealthBar(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);

    BattleIO_UpdateHPGauge(battleSys, battleCtx, battler);

    return FALSE;
}

/**
 * @brief Flags the given battler as fainted.
 *
 * Inputs:
 * 1. The battler which is to be fainted.
 *
 * Side effects:
 * - battleCtx->faintedMon will be set to the input battler
 * - The system's flag for the fainted battler will be flipped on
 * - The total number of mons fainted for the battler's trainer will be
 * incremented
 * - The friendship of the Pokemon will be updated after fainting
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryFaintMon(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    if (battleCtx->battleMons[battler].curHP == 0) {
        battleCtx->faintedMon = battler;
        battleCtx->battleStatusMask |= (FlagIndex(battler) << SYSCTL_MON_FAINTED_SHIFT);
        battleCtx->totalFainted[battler]++;

        BattleScript_UpdateFriendship(battleSys, battleCtx, battler);
    }

    return FALSE;
}

/**
 * @brief Play the fainting sequence for a fainted battler.
 *
 * Side effects:
 * - The system's flag for the fainted battler will be flipped off
 * - The system's flag for EXP payout on the fainted battler will be
 * flipped on
 * - The fainted battler will have their control state skipped to
 * MOVE_END
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PlayFaintAnimation(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    BattleIO_PlayFaintingSequence(battleSys, battleCtx, battleCtx->faintedMon);
    battleCtx->battleStatusMask &= (FlagIndex(battleCtx->faintedMon) << SYSCTL_MON_FAINTED_SHIFT) ^ 0xFFFFFFFF;
    battleCtx->battleStatusMask2 |= FlagIndex(battleCtx->faintedMon) << SYSCTL_PAYOUT_EXP_SHIFT;
    battleCtx->battlerActions[battleCtx->faintedMon][BATTLE_ACTION_PICK_COMMAND] = BATTLE_CONTROL_MOVE_END;

    BattleSystem_CleanupFaintedMon(battleSys, battleCtx, battleCtx->faintedMon);

    return FALSE;
}

/**
 * @brief Wait a specified number of frames.
 *
 * Non-Link battles can skip the wait with a button press.
 *
 * Inputs:
 * 1. The number of frames to wait at this instruction
 *
 * Side effects:
 * - battleCtx->battleProgressFlag will be set to TRUE.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_WaitButtonABTime(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int frames = BattleScript_Read(battleCtx);

    if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_LINK) == FALSE) {
        if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_BUTTON_X | PAD_BUTTON_Y)) || TouchScreen_Tapped()) {
            battleCtx->waitCounter = frames;
        }
    }

    int inc;
    if ((battleSys->battleType & BATTLE_TYPE_LINK) && (battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) == FALSE) {
        inc = 2;
    } else {
        inc = 1;
    }

    // Go back through this command until the specified number of frames have elapsed
    if (frames > battleCtx->waitCounter) {
        BattleScript_Iter(battleCtx, -2); // jump back to the instruction
        battleCtx->waitCounter += inc;
    } else {
        battleCtx->waitCounter = 0;
    }

    battleCtx->battleProgressFlag = TRUE;
    return FALSE;
}

/**
 * @brief Play a sound originating from a particular battler.
 *
 * Inputs:
 * 1. The battler from which the sound originates. This is used for determining
 * from which of the DS's stereo speakers to pan the sound. Enemies will have
 * their sounds pan from the right, while allies will have their sounds pan from
 * the left.
 * 2. The SDAT ID to play.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PlaySound(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int battler = BattleScript_Read(battleCtx);
    int sdatID = BattleScript_Read(battleCtx);

    BattleIO_PlaySound(battleSys, battleCtx, sdatID, BattleScript_Battler(battleSys, battleCtx, battler));

    return FALSE;
}

/**
 * @brief Compare a given data-value from a variable to a target static value.
 *
 * Inputs:
 * 1. The operation mode. See `battle_script_opcodes` for possible values.
 * 2. The variable whose data should be retrieved for the comparison.
 * 3. The static value to compare against.
 * 4. The jump-ahead value if the comparison yields TRUE.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CompareVarToValue(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int op = BattleScript_Read(battleCtx);
    int srcVar = BattleScript_Read(battleCtx);
    int compareTo = BattleScript_Read(battleCtx);
    int jump = BattleScript_Read(battleCtx);

    int *data = BattleScript_VarAddress(battleSys, battleCtx, srcVar);

    switch (op) {
    case OPCODE_EQU:
        if (*data != compareTo) {
            jump = 0;
        }
        break;

    case OPCODE_NEQ:
        if (*data == compareTo) {
            jump = 0;
        }
        break;

    case OPCODE_GT:
        if (*data <= compareTo) {
            jump = 0;
        }
        break;

    case OPCODE_LTE:
        if (*data > compareTo) {
            jump = 0;
        }
        break;

    case OPCODE_FLAG_SET:
        if ((*data & compareTo) == FALSE) {
            jump = 0;
        }
        break;

    case OPCODE_FLAG_NOT:
        if (*data & compareTo) {
            jump = 0;
        }
        break;

    case OPCODE_AND:
        if ((*data & compareTo) != compareTo) {
            jump = 0;
        }
        break;

    default:
        GF_ASSERT(TRUE);
        break;
    }

    if (jump) {
        BattleScript_Iter(battleCtx, jump);
    }

    return FALSE;
}

/**
 * @brief Compare a given data-value from a battler to a target static value.
 *
 * Inputs:
 * 1. The operation mode. See `battle_script_opcodes` for possible values.
 * 2. The battler whose data should be retrieved for the comparison.
 * 3. The parameter to retrieve for the comparison.
 * 4. The static value to compare against.
 * 5. The jump-ahead value if the comparison yields TRUE.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CompareMonDataToValue(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int op = BattleScript_Read(battleCtx);
    int inBattler = BattleScript_Read(battleCtx);
    int srcParam = BattleScript_Read(battleCtx);
    int compareTo = BattleScript_Read(battleCtx);
    int jump = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    int data = BattleMon_Get(battleCtx, battler, srcParam, NULL);

    switch (op) {
    case OPCODE_EQU:
        if (data != compareTo) {
            jump = 0;
        }
        break;

    case OPCODE_NEQ:
        if (data == compareTo) {
            jump = 0;
        }
        break;

    case OPCODE_GT:
        if (data <= compareTo) {
            jump = 0;
        }
        break;

    case OPCODE_LTE:
        if (data > compareTo) {
            jump = 0;
        }
        break;

    case OPCODE_FLAG_SET:
        if ((data & compareTo) == FALSE) {
            jump = 0;
        }
        break;

    case OPCODE_FLAG_NOT:
        if (data & compareTo) {
            jump = 0;
        }
        break;

    case OPCODE_AND:
        if ((data & compareTo) != compareTo) {
            jump = 0;
        }
        break;

    default:
        GF_ASSERT(TRUE);
        break;
    }

    if (jump) {
        BattleScript_Iter(battleCtx, jump);
    }

    return FALSE;
}

/**
 * @brief Perform a screen fade at the end of a battle to transition out of
 * the battle UI.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_FadeOutBattle(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    BattleIO_FadeOut(battleSys, battleCtx);

    return FALSE;
}

/**
 * @brief GoTo to a subroutine sequence, abandoning the current script.
 *
 * Inputs:
 * 1. The subroutine sequence to jump to.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_GoToSubscript(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int subseq = BattleScript_Read(battleCtx);

    BattleScript_Jump(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, subseq);

    return FALSE;
}

/**
 * @brief GoTo to the battle effect sequence for the current move.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_GoToEffectScript(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    BattleScript_Jump(battleCtx, NARC_INDEX_BATTLE__SKILL__BE_SEQ, CURRENT_MOVE_DATA.effect);

    return FALSE;
}

/**
 * @brief GoTo to the move sequence for the chosen move.
 *
 * This is specifically for moves which call other moves (e.g., Assist, Me
 * First, Metronome, Sleep Talk) by setting battleCtx->msgMoveTemp.
 *
 * Inputs:
 * 1. A flag indicating if the target is set on input. In practice, this is
 * always FALSE in vanilla.
 *
 * Side effects:
 * - The system control flag to skip the attack message is turned off.
 * - The system control flag signalling that the move's animation has played
 * is turned off.
 * - battleCtx->moveCur is reassigned to battleCtx->msgMoveTemp.
 * - The defender is assigned for the move.
 * - The battler's chosen target is reassigned to the assigned defender.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_GoToMoveScript(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    BOOL targetIsSet = BattleScript_Read(battleCtx);

    battleCtx->battleStatusMask &= ~SYSCTL_SKIP_ATTACK_MESSAGE;
    battleCtx->battleStatusMask &= ~SYSCTL_PLAYED_MOVE_ANIMATION;
    battleCtx->moveCur = battleCtx->msgMoveTemp;

    if (targetIsSet == FALSE) {
        battleCtx->defender = BattleSystem_Defender(battleSys, battleCtx, battleCtx->attacker, battleCtx->msgMoveTemp, TRUE, 0);
        BattleSystem_CheckRedirectionAbilities(battleSys, battleCtx, battleCtx->attacker, battleCtx->msgMoveTemp);
        ATTACKER_ACTION[BATTLE_ACTION_CHOOSE_TARGET] = battleCtx->defender;
    }

    if (battleCtx->defender == BATTLER_NONE) {
        battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;
        BattleScript_Jump(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, subscript_no_target);
    } else {
        BattleScript_Jump(battleCtx, NARC_INDEX_BATTLE__SKILL__WAZA_SEQ, battleCtx->moveCur);
    }

    return FALSE;
}

/**
 * @brief Check if a critical hit should occur.
 *
 * CompareVarToValue the battle is either the catching tutorial or the player's first battle,
 * then this will always flag no critical hits.
 *
 * Side effects:
 * - battleCtx->criticalMul is set to the multiplier to be applied to the total
 * move damage for a critical hit.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CalcCrit(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_CATCH_TUTORIAL)
        || (BattleSystem_BattleStatus(battleSys) & BATTLE_STATUS_FIRST_BATTLE)) {
        battleCtx->criticalMul = 1;
    } else {
        battleCtx->criticalMul = BattleSystem_CalcCriticalMulti(battleSys,
            battleCtx,
            battleCtx->attacker,
            battleCtx->defender,
            battleCtx->criticalBoosts,
            BattleContext_Get(battleSys, battleCtx, BATTLECTX_SIDE_CONDITIONS_MASK, battleCtx->defender));
    }

    return FALSE;
}

/**
 * @brief Calculate the amount of experience to be given to each participating
 * battler.
 *
 * Inputs:
 * 1. The jump distance if no experience is to be given. i.e., the defeated
 * battler is an ally, or the battle type explicitly forbids experience gain.
 *
 * Side effects:
 * - battleCtx->gainedExp will be updated with the amount of experience to be
 * given to each participating battler.
 * - battleCtx->sharedExp will be updated with the amount of experience to be
 * given to each participating battler which was holding an Exp Share.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CalcExpGain(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int jump;
    u32 battleType = BattleSystem_BattleType(battleSys);
    BattlerData *battlerData = BattleSystem_BattlerData(battleSys, battleCtx->faintedMon);

    BattleScript_Iter(battleCtx, 1);
    jump = BattleScript_Read(battleCtx);

    if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) && (battleType & BATTLE_TYPE_NO_EXPERIENCE) == FALSE) {
        int i;
        int totalMonsGainingExp = 0;
        int totalMonsWithExpShare = 0;

        for (i = 0; i < Party_GetCurrentCount(BattleSystem_Party(battleSys, BATTLER_US)); i++) {
            Pokemon *mon = BattleSystem_PartyPokemon(battleSys, BATTLER_US, i);

            if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL) && Pokemon_GetValue(mon, MON_DATA_HP, NULL)) {
                if (battleCtx->sideGetExpMask[(battleCtx->faintedMon >> 1) & 1] & FlagIndex(i)) {
                    totalMonsGainingExp++;
                }

                u16 item = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
                if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HOLD_EFFECT) == HOLD_EFFECT_EXP_SHARE) {
                    totalMonsWithExpShare++;
                }
            }
        }

        u16 exp = SpeciesData_GetSpeciesValue(battleCtx->battleMons[battleCtx->faintedMon].species, SPECIES_DATA_BASE_EXP_REWARD);
        exp = (exp * battleCtx->battleMons[battleCtx->faintedMon].level) / 7;

        if (totalMonsWithExpShare) {
            battleCtx->gainedExp = (exp / 2) / totalMonsGainingExp;

            if (battleCtx->gainedExp == 0) {
                battleCtx->gainedExp = 1;
            }

            battleCtx->sharedExp = (exp / 2) / totalMonsWithExpShare;

            if (battleCtx->sharedExp == 0) {
                battleCtx->sharedExp = 1;
            }
        } else {
            battleCtx->gainedExp = exp / totalMonsGainingExp;

            if (battleCtx->gainedExp == 0) {
                battleCtx->gainedExp = 1;
            }

            battleCtx->sharedExp = 0;
        }
    } else {
        BattleScript_Iter(battleCtx, jump);
    }

    return FALSE;
}

enum GetExpTaskState {
    SEQ_GET_EXP_START = 0,
    SEQ_GET_EXP_WAIT_MESSAGE_PRINT,
    SEQ_GET_EXP_WAIT_MESSAGE_DELAY,
    SEQ_GET_EXP_GAUGE,
    SEQ_GET_EXP_WAIT_GAUGE,

    SEQ_GET_EXP_CHECK_LEVEL_UP,
    SEQ_GET_EXP_WAIT_LEVEL_UP_EFFECT,
    SEQ_GET_EXP_WAIT_LEVEL_UP_MESSAGE_PRINT,

    SEQ_GET_EXP_LEVEL_UP_SUMMARY_LOAD_ICON,
    SEQ_GET_EXP_LEVEL_UP_SUMMARY_INIT,
    SEQ_GET_EXP_LEVEL_UP_SUMMARY_PRINT_DIFF,
    SEQ_GET_EXP_LEVEL_UP_SUMMARY_PRINT_DIFF_WAIT,
    SEQ_GET_EXP_LEVEL_UP_SUMMARY_PRINT_TRUE,
    SEQ_GET_EXP_LEVEL_UP_SUMMARY_PRINT_TRUE_WAIT,
    SEQ_GET_EXP_LEVEL_UP_CLEAR,

    SEQ_GET_EXP_CHECK_LEARN_MOVE,
    SEQ_GET_EXP_WANTS_TO_LEARN_MOVE_PRINT,
    SEQ_GET_EXP_WANTS_TO_LEARN_MOVE_PRINT_WAIT,
    SEQ_GET_EXP_CANT_LEARN_MORE_MOVES_PRINT,
    SEQ_GET_EXP_CANT_LEARN_MORE_MOVES_PRINT_WAIT,
    SEQ_GET_EXP_MAKE_IT_FORGET_PROMPT,
    SEQ_GET_EXP_MAKE_IT_FORGET_ANSWER,
    SEQ_GET_EXP_MAKE_IT_FORGET_WAIT,
    SEQ_GET_EXP_MAKE_IT_FORGET_INPUT_TAKEN,
    SEQ_GET_EXP_ONE_TWO_POOF,
    SEQ_GET_EXP_ONE_TWO_POOF_WAIT,
    SEQ_GET_EXP_FORGOT_HOW_TO_USE,
    SEQ_GET_EXP_FORGOT_HOW_TO_USE_WAIT,
    SEQ_GET_EXP_AND_DOTDOTDOT,
    SEQ_GET_EXP_AND_DOTDOTDOT_WAIT,
    SEQ_GET_EXP_LEARNED_MOVE,
    SEQ_GET_EXP_MAKE_IT_FORGET_CANCELLED,
    SEQ_GET_EXP_MAKE_IT_FORGET_CANCELLED_WAIT,
    SEQ_GET_EXP_GIVE_UP_LEARNING_PROMPT,
    SEQ_GET_EXP_GIVE_UP_LEARNING_ANSWER,
    SEQ_GET_EXP_GIVE_UP_LEARNING_WAIT,
    SEQ_GET_EXP_LEARNED_MOVE_WAIT,

    SEQ_GET_EXP_CHECK_DONE,
    SEQ_GET_EXP_DONE,
};

enum GetExpTaskDataIndex {
    GET_EXP_MSG_INDEX = 0,
    GET_EXP_MSG_DELAY,
    GET_EXP_LEARNSET_INDEX,
    GET_EXP_NEW_EXP,
    GET_EXP_MOVE,
    GET_EXP_MOVE_SLOT,
    GET_EXP_PARTY_SLOT
};

/**
 * @brief Start the experience point allocation state machine.
 *
 * The kicked-off state machine is responsible for controlling the flow of
 * events in the experience-gain UX. It will perform distribution, check for
 * level-up events, display new stats, and prompt the player if a new move is
 * to be learned.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_StartGetExpTask(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    battleCtx->taskData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleScriptTaskData));
    battleCtx->taskData->battleSys = battleSys;
    battleCtx->taskData->battleCtx = battleCtx;
    battleCtx->taskData->seqNum = SEQ_GET_EXP_START;
    battleCtx->taskData->tmpData[GET_EXP_PARTY_SLOT] = 0;

    SysTask_Start(BattleScript_GetExpTask, battleCtx->taskData, NULL);

    return FALSE;
}

/**
 * @brief Waits until the experience-distribution task has completed.
 *
 * Side effects:
 * - battleCtx->battleProgressFlag will be set to TRUE.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_WaitGetExpTask(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (battleCtx->taskData == NULL) {
        BattleScript_Iter(battleCtx, 1);
    }

    battleCtx->battleProgressFlag = TRUE;

    return FALSE;
}

/**
 * @brief Chomps an additional word out of the buffer.
 *
 * Does nothing else.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_Dummy2A(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    BattleScript_Read(battleCtx);

    return FALSE;
}

/**
 * @brief Show the party list.
 *
 * This command explicitly does not allow the player to cancel switching;
 * it should be invoked only when a switch is _forced_ and cannot be undone.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_ShowParty(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);

    BattleScript_Iter(battleCtx, 1);

    int switchingMask = 0;

    int battler;
    for (battler = 0; battler < maxBattlers; battler++) {
        if (battleCtx->battlerStatusFlags[battler] & BATTLER_STATUS_SWITCHING) {
            switchingMask |= FlagIndex(battler);
            BattleIO_ShowPartyScreen(battleSys, battleCtx, battler, 1, 0, 6);
        }
    }

    for (battler = 0; battler < maxBattlers; battler++) {
        if (BattleSystem_BattleType(battleSys) == BATTLE_TYPE_LINK_DOUBLES) {
            // CompareVarToValue both battlers are done selecting replacements, wait for all other battlers
            int partner = BattleSystem_Partner(battleSys, battler);
            if ((switchingMask & FlagIndex(battler)) == FALSE
                && (switchingMask & FlagIndex(partner)) == FALSE) {
                switchingMask |= FlagIndex(battler);
                BattleIO_LinkWaitMessage(battleSys, battler);
            }
        } else if ((switchingMask & FlagIndex(battler)) == FALSE) {
            BattleIO_LinkWaitMessage(battleSys, battler);
        }
    }

    for (battler = 0; battler < maxBattlers; battler++) {
        if (battleCtx->battlerStatusFlags[battler] & BATTLER_STATUS_SWITCHING) {
            battleCtx->switchedMon = battler;
            break;
        }
    }

    return FALSE;
}

/**
 * @brief Wait for all battlers in the midst of selecting replacement battlers
 * to finish selecting their replacements.
 *
 * Side effects:
 * - battleCtx->battleProgressFlag will be set to TRUE.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_WaitMonSelection(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    int totalSwitching = 0;

    int battler;
    for (battler = 0; battler < maxBattlers; battler++) {
        if (battleCtx->battlerStatusFlags[battler] & BATTLER_STATUS_SWITCHING) {
            totalSwitching++;
        }
    }

    for (battler = 0; battler < maxBattlers; battler++) {
        if ((battleCtx->battlerStatusFlags[battler] & BATTLER_STATUS_SWITCHING)
            && BattleContext_IOBufferVal(battleCtx, battler)) {
            battleCtx->switchedPartySlot[battler] = battleCtx->ioBuffer[battler][0] - 1;
            totalSwitching--;

            if ((battleCtx->battleStatusMask2 & (FlagIndex(battler) << SYSCTL_LINK_WAITING_SHIFT)) == FALSE) {
                battleCtx->battleStatusMask2 |= (FlagIndex(battler) << SYSCTL_LINK_WAITING_SHIFT);
                BattleIO_LinkWaitMessage(battleSys, battler);
            }
        }
    }

    if (totalSwitching == 0) {
        for (battler = 0; battler < maxBattlers; battler++) {
            if ((battleCtx->battlerStatusFlags[battler] & BATTLER_STATUS_SWITCHING)
                && BattleContext_IOBufferVal(battleCtx, battler)) {
                BattleSystem_Record(battleSys, battler, battleCtx->ioBuffer[battler][0]);
            }
        }

        battleCtx->battleStatusMask2 &= ~SYSCTL_LINK_WAITING;
        BattleScript_Iter(battleCtx, 1);
    }

    battleCtx->battleProgressFlag = TRUE;
    return FALSE;
}

/**
 * @brief SwitchAndUpdateMon a battler for another.
 *
 * Inputs:
 * 1. The battler who is switching
 *
 * Side effects:
 * - Flips the switching flag off for the battler status flags
 * - Flips the battler-specific flag off for the switching mask
 * - Updates the selected and switched party slot values
 * - Caches the enemy's current HP value in battleCtx->hpTemp
 * - Invokes InitBattleMon, SwitchSlots, and UpdateAfterSwitch; refer to the
 * docs for those routines for more detailed information
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_SwitchAndUpdateMon(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int battler;

    switch (inBattler) {
    default:
        break;

    case BTLSCR_ATTACKER:
        battler = battleCtx->attacker;
        break;

    case BTLSCR_SWITCHED_MON:
        battler = battleCtx->switchedMon;
        break;

    case BTLSCR_FORCED_OUT:
        battler = battleCtx->defender;
        break;
    }

    battleCtx->battlerStatusFlags[battler] &= ~BATTLER_STATUS_SWITCHING;
    battleCtx->battlersSwitchingMask &= FLAG_NEGATE(FlagIndex(battler));
    battleCtx->selectedPartySlot[battler] = battleCtx->switchedPartySlot[battler];
    battleCtx->switchedPartySlot[battler] = MAX_PARTY_SIZE;

    BattleSystem_InitBattleMon(battleSys, battleCtx, battler, battleCtx->selectedPartySlot[battler]);
    BattleSystem_SwitchSlots(battleSys, battleCtx, battler, battleCtx->selectedPartySlot[battler]);

    // cache the enemy's current HP (used for force-out moves like Whirlwind?)
    battleCtx->hpTemp = battleCtx->battleMons[BATTLER_ENEMY_1].curHP;

    BattleSystem_UpdateAfterSwitch(battleSys, battleCtx, battler);

    return FALSE;
}

/**
 * @brief GoTo to the designated address if any battlers are switching.
 *
 * Inputs:
 * 1. The jump distance
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_GoToIfAnySwitches(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i; // must declare here to match
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);

    BattleScript_Iter(battleCtx, 1);
    int jump = BattleScript_Read(battleCtx);

    for (i = 0; i < maxBattlers; i++) {
        if (battleCtx->battlerStatusFlags[i] & BATTLER_STATUS_SWITCHING) {
            battleCtx->switchedMon = i;
            BattleScript_Iter(battleCtx, jump);
            break;
        }
    }

    return FALSE;
}

/**
 * @brief Start the Pokemon capture state machine.
 *
 * The kicked-off state machine is responsible for controlling the flow of
 * events in the capture UX. It will calculate the capture rate, show the
 * correct number of shakes, etc.
 *
 * Inputs:
 * 1. Whether or not the capture is in the Great Marsh.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_StartCatchMonTask(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    BOOL safariCapture = BattleScript_Read(battleCtx);

    battleCtx->taskData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleScriptTaskData));
    battleCtx->taskData->battleSys = battleSys;
    battleCtx->taskData->battleCtx = battleCtx;
    battleCtx->taskData->seqNum = 0;
    battleCtx->taskData->flag = safariCapture;
    battleCtx->taskData->ball = battleCtx->msgItemTemp;

    SysTask_Start(BattleScript_CatchMonTask, battleCtx->taskData, NULL);

    return FALSE;
}

/**
 * @brief Waits until the Pokemon capture task has completed.
 *
 * Side effects:
 * - battleCtx->battleProgressFlag will be set to TRUE.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_WaitCatchMonTask(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (battleCtx->taskData == NULL) {
        BattleScript_Iter(battleCtx, 1);
    }

    battleCtx->battleProgressFlag = TRUE;

    return FALSE;
}

/**
 * @brief Setup the initial state for a multi-hit move (e.g., Spike Cannon,
 * Twineedle, Triple Kick).
 *
 * Inputs:
 * 1. The number of hits to apply to the move. CompareVarToValue this value is passed as 0,
 * then a number of hits will be generated from 2 through 5. CompareVarToValue the attacker
 * has Skill Link, then the generated number of hits will always be 5.
 * 2. The flags to set for the move, which control how to evaluate successive
 * hits. The relevant flags of note are:
 *   - SYSCTL_SKIP_OBEDIENCE_CHECK -> do not check for obedience after the first hit
 *   - SYSCTL_SKIP_STATUS_CHECK -> do not try to break the move after the first hit
 *   - SYSCTL_SKIP_PP_DECREMENT -> do not deduct additional PP after the first hit
 *   - SYSCTL_SKIP_IMMUNITY_TRIGGERS -> do not repeat the check for immunity abilities
 *   - SYSCTL_SKIP_ACCURACY_CHECK -> do not check accuracy after the first hit
 *   - SYSCTL_SKIP_ACCURACY_OVERRIDES -> same as SYSCTL_SKIP_ACCURACY_CHECK
 *   - SYSCTL_SKIP_STOLEN_CHECK -> do not check for the move to be stolen after the first hit
 *
 * In practice, there are two variants of flags submitted to this command call:
 * 1. Triple Kick, which omits the SYSCTL_SKIP_ACCURACY_CHECK flag
 * 2. All other multi-hit moves, which include the SYSCTL_SKIP_ACCURACY_CHECK flag
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_SetMultiHit(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int hits = BattleScript_Read(battleCtx);
    int flags = BattleScript_Read(battleCtx);

    if (battleCtx->multiHitNumHits == 0) {
        if (hits == 0) {
            if (Battler_Ability(battleCtx, battleCtx->attacker) == ABILITY_SKILL_LINK) {
                hits = 5;
            } else {
                hits = BattleSystem_RandNext(battleSys) & 3;
                if (hits < 2) { // 2 or 3 hits
                    hits += 2;
                } else { // 4 or 5 hits
                    hits = (BattleSystem_RandNext(battleSys) & 3) + 2;
                }
            }
        }

        battleCtx->multiHitCounter = hits;
        battleCtx->multiHitNumHits = hits;
        battleCtx->multiHitAccuracyCheck = flags;
    }

    return FALSE;
}

/**
 * @brief Update the value of a variable using an operation applied to itself
 * and a static source value.
 *
 * Inputs:
 * 1. The operation to apply; see `battle_script_opcodes` for possible values.
 * 2. ID of the variable to target as a source operand and the destination.
 * 3. A static source value to use as the second operand.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_UpdateVar(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int op = BattleScript_Read(battleCtx);
    int dstVar = BattleScript_Read(battleCtx);
    int srcVal = BattleScript_Read(battleCtx);

    int *var = BattleScript_VarAddress(battleSys, battleCtx, dstVar);
    u32 mask;

    switch (op) {
    case OPCODE_SET:
        *var = srcVal;
        break;

    case OPCODE_ADD:
        *var += srcVal;
        break;

    case OPCODE_SUB:
        *var -= srcVal;
        break;

    case OPCODE_FLAG_ON:
        *var |= srcVal;
        break;

    case OPCODE_FLAG_OFF:
        *var &= FLAG_NEGATE(srcVal);
        break;

    case OPCODE_MUL:
        *var *= srcVal;
        break;

    case OPCODE_DIV:
        *var /= srcVal;
        break;

    case OPCODE_LEFT_SHIFT:
        *var = *var << srcVal;
        break;

    case OPCODE_RIGHT_SHIFT:
        mask = *var;
        mask = mask >> srcVal;
        *var = mask;
        break;

    case OPCODE_FLAG_INDEX:
        *var = FlagIndex(srcVal);
        break;

    case OPCODE_GET:
        GF_ASSERT(FALSE);
        break;

    case OPCODE_SUB_TO_ZERO:
        *var -= srcVal;
        if (*var < 0) {
            *var = 0;
        }
        break;

    case OPCODE_BITWISE_XOR:
        *var ^= srcVal;
        break;

    case OPCODE_BITWISE_AND:
        *var &= srcVal;
        break;

    default:
        GF_ASSERT(FALSE);
        break;
    }

    return FALSE;
}

static inline BOOL AbilityBlocksSpecificStatReduction(BattleContext *battleCtx, int statOffset, int ability, int stat)
{
    return Battler_IgnorableAbility(battleCtx, battleCtx->attacker, battleCtx->sideEffectMon, ability) == TRUE
        && BATTLE_STAT_ATTACK + statOffset == stat;
}

static inline void SetupNicknameStatMsg(BattleContext *battleCtx, int msgID, int statOffset)
{
    battleCtx->msgBuffer.id = msgID;
    battleCtx->msgBuffer.tags = TAG_NICKNAME_STAT;
    battleCtx->msgBuffer.params[0] = BattleSystem_NicknameTag(battleCtx, battleCtx->sideEffectMon);
    battleCtx->msgBuffer.params[1] = BATTLE_STAT_ATTACK + statOffset;
}

static inline void SetupNicknameAbilityStatMsg(BattleContext *battleCtx, int msgID, int statOffset)
{
    battleCtx->msgBuffer.id = msgID;
    battleCtx->msgBuffer.tags = TAG_NICKNAME_ABILITY_STAT;
    battleCtx->msgBuffer.params[0] = BattleSystem_NicknameTag(battleCtx, battleCtx->sideEffectMon);
    battleCtx->msgBuffer.params[1] = battleCtx->battleMons[battleCtx->sideEffectMon].ability;
    battleCtx->msgBuffer.params[2] = BATTLE_STAT_ATTACK + statOffset;
}

static inline void SetupNicknameAbilityNicknameAbilityMsg(BattleContext *battleCtx, int msgID)
{
    battleCtx->msgBuffer.id = msgID;
    battleCtx->msgBuffer.tags = TAG_NICKNAME_ABILITY_NICKNAME_ABILITY;
    battleCtx->msgBuffer.params[0] = BattleSystem_NicknameTag(battleCtx, battleCtx->sideEffectMon);
    battleCtx->msgBuffer.params[1] = battleCtx->battleMons[battleCtx->sideEffectMon].ability;
    battleCtx->msgBuffer.params[2] = BattleSystem_NicknameTag(battleCtx, battleCtx->attacker);
    battleCtx->msgBuffer.params[3] = battleCtx->battleMons[battleCtx->attacker].ability;
}

/**
 * @brief Try to change the stat stage for a target battler.
 *
 * This handles all of the logic related to whether or not a stat stage change
 * can be applied given the target's ability, volatile condition (i.e., Mist or
 * Substitute), current stat stage, etc.
 *
 * Inputs:
 * 1. How far ahead to jump if there is no change to the stage.
 * 2. How far ahead to jump if the change is blocked.
 * 3. How far ahead to jump if the change is blocked by Substitute.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_ChangeStatStage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int jumpNoChange;
    int jumpBlocked;
    int jumpBlockedBySubstitute;
    int statOffset;
    int stageChange;
    int result;
    BattleMon *mon = &battleCtx->battleMons[battleCtx->sideEffectMon];

    BattleScript_Iter(battleCtx, 1);

    jumpNoChange = BattleScript_Read(battleCtx);
    jumpBlocked = BattleScript_Read(battleCtx);
    jumpBlockedBySubstitute = BattleScript_Read(battleCtx);
    result = 0;

    battleCtx->battleStatusMask &= ~SYSCTL_FAIL_STAT_STAGE_CHANGE;

    if (battleCtx->sideEffectParam >= MOVE_SUBSCRIPT_PTR_ATTACK_DOWN_2_STAGES) {
        statOffset = battleCtx->sideEffectParam - MOVE_SUBSCRIPT_PTR_ATTACK_DOWN_2_STAGES;
        stageChange = -2;
        battleCtx->scriptTemp = BATTLE_ANIMATION_STAT_DROP;
    } else if (battleCtx->sideEffectParam >= MOVE_SUBSCRIPT_PTR_ATTACK_UP_2_STAGES) {
        statOffset = battleCtx->sideEffectParam - MOVE_SUBSCRIPT_PTR_ATTACK_UP_2_STAGES;
        stageChange = 2;
        battleCtx->scriptTemp = BATTLE_ANIMATION_STAT_BOOST;
    } else if (battleCtx->sideEffectParam >= MOVE_SUBSCRIPT_PTR_ATTACK_DOWN_1_STAGE) {
        statOffset = battleCtx->sideEffectParam - MOVE_SUBSCRIPT_PTR_ATTACK_DOWN_1_STAGE;
        stageChange = -1;
        battleCtx->scriptTemp = BATTLE_ANIMATION_STAT_DROP;
    } else {
        statOffset = battleCtx->sideEffectParam - MOVE_SUBSCRIPT_PTR_ATTACK_UP_1_STAGE;
        stageChange = 1;
        battleCtx->scriptTemp = BATTLE_ANIMATION_STAT_BOOST;
    }

    if (stageChange > 0) {
        if (mon->statBoosts[BATTLE_STAT_ATTACK + statOffset] == 12) {
            battleCtx->battleStatusMask |= SYSCTL_FAIL_STAT_STAGE_CHANGE;

            if (battleCtx->sideEffectType == SIDE_EFFECT_TYPE_INDIRECT
                || battleCtx->sideEffectType == SIDE_EFFECT_TYPE_ABILITY) {
                BattleScript_Iter(battleCtx, jumpBlocked);
            } else {
                SetupNicknameStatMsg(battleCtx, 142, statOffset); // "{0}'s {1} won't go higher!"
                BattleScript_Iter(battleCtx, jumpNoChange);
            }
        } else {
            if (battleCtx->sideEffectType == SIDE_EFFECT_TYPE_ABILITY) {
                SetupNicknameAbilityStatMsg(battleCtx, 622, statOffset); // "{0}'s {1} raised its {2}!"
            } else if (battleCtx->sideEffectType == SIDE_EFFECT_TYPE_HELD_ITEM) {
                battleCtx->msgBuffer.id = 756; // "The {0} raised {1}'s {2}!"
                battleCtx->msgBuffer.tags = TAG_NICKNAME_ITEM_STAT;
                battleCtx->msgBuffer.params[0] = BattleSystem_NicknameTag(battleCtx, battleCtx->sideEffectMon);
                battleCtx->msgBuffer.params[1] = battleCtx->msgItemTemp;
                battleCtx->msgBuffer.params[2] = BATTLE_STAT_ATTACK + statOffset;
            } else {
                // "{0}'s {1} rose!" or "{0}'s {1} sharply rose!"
                SetupNicknameStatMsg(battleCtx, stageChange == 1 ? 750 : 753, statOffset);
            }

            mon->statBoosts[BATTLE_STAT_ATTACK + statOffset] += stageChange;

            if (mon->statBoosts[BATTLE_STAT_ATTACK + statOffset] > 12) {
                mon->statBoosts[BATTLE_STAT_ATTACK + statOffset] = 12;
            }
        }
    } else {
        if ((battleCtx->sideEffectFlags & MOVE_SIDE_EFFECT_CANNOT_PREVENT) == FALSE) {
            if (battleCtx->attacker != battleCtx->sideEffectMon) {
                if (battleCtx->sideConditions[Battler_Side(battleSys, battleCtx->sideEffectMon)].mistTurns) {
                    battleCtx->msgBuffer.id = 273; // "{0} is protected by Mist!"
                    battleCtx->msgBuffer.tags = TAG_NICKNAME;
                    battleCtx->msgBuffer.params[0] = BattleSystem_NicknameTag(battleCtx, battleCtx->sideEffectMon);

                    result = 1;
                } else if (Battler_IgnorableAbility(battleCtx, battleCtx->attacker, battleCtx->sideEffectMon, ABILITY_CLEAR_BODY) == TRUE
                    || Battler_IgnorableAbility(battleCtx, battleCtx->attacker, battleCtx->sideEffectMon, ABILITY_WHITE_SMOKE) == TRUE) {
                    if (battleCtx->sideEffectType == SIDE_EFFECT_TYPE_ABILITY) {
                        SetupNicknameAbilityNicknameAbilityMsg(battleCtx, 727); // "{0}'s {1} suppressed {2}'s {3}!"
                    } else {
                        battleCtx->msgBuffer.id = 669; // "{0}'s {1} prevents stat loss!"
                        battleCtx->msgBuffer.tags = TAG_NICKNAME_ABILITY;
                        battleCtx->msgBuffer.params[0] = BattleSystem_NicknameTag(battleCtx, battleCtx->sideEffectMon);
                        battleCtx->msgBuffer.params[1] = battleCtx->battleMons[battleCtx->sideEffectMon].ability;
                    }

                    result = 1;
                } else if (AbilityBlocksSpecificStatReduction(battleCtx, statOffset, ABILITY_KEEN_EYE, BATTLE_STAT_ACCURACY)
                    || AbilityBlocksSpecificStatReduction(battleCtx, statOffset, ABILITY_HYPER_CUTTER, BATTLE_STAT_ATTACK)) {
                    if (battleCtx->sideEffectType == SIDE_EFFECT_TYPE_ABILITY) {
                        SetupNicknameAbilityNicknameAbilityMsg(battleCtx, 727); // "{0}'s {1} suppressed {2}'s {3}!"
                    } else {
                        SetupNicknameAbilityStatMsg(battleCtx, 704, statOffset); // "{0}'s {1} prevents {2} loss!"
                    }

                    result = 1;
                } else if (mon->statBoosts[BATTLE_STAT_ATTACK + statOffset] == 0) {
                    battleCtx->battleStatusMask |= SYSCTL_FAIL_STAT_STAGE_CHANGE;

                    if (battleCtx->sideEffectType == SIDE_EFFECT_TYPE_INDIRECT
                        || battleCtx->sideEffectType == SIDE_EFFECT_TYPE_ABILITY) {
                        BattleScript_Iter(battleCtx, jumpBlocked);

                        return FALSE;
                    } else {
                        SetupNicknameStatMsg(battleCtx, 145, statOffset); // "{0}'s {1} won't go lower!"
                        BattleScript_Iter(battleCtx, jumpNoChange);

                        return FALSE;
                    }
                } else if (Battler_IgnorableAbility(battleCtx, battleCtx->attacker, battleCtx->sideEffectMon, ABILITY_SHIELD_DUST) == TRUE
                    && battleCtx->sideEffectType == SIDE_EFFECT_TYPE_INDIRECT) {
                    result = 1;
                } else if (battleCtx->battleMons[battleCtx->sideEffectMon].statusVolatile & VOLATILE_CONDITION_SUBSTITUTE) {
                    result = 2;
                }
            } else if (mon->statBoosts[BATTLE_STAT_ATTACK + statOffset] == 0) {
                battleCtx->battleStatusMask |= SYSCTL_FAIL_STAT_STAGE_CHANGE;

                if (battleCtx->sideEffectType == SIDE_EFFECT_TYPE_INDIRECT
                    || battleCtx->sideEffectType == SIDE_EFFECT_TYPE_ABILITY) {
                    BattleScript_Iter(battleCtx, jumpBlocked);

                    return FALSE;
                } else {
                    SetupNicknameStatMsg(battleCtx, 145, statOffset); // "{0}'s {1} won't go lower!"
                    BattleScript_Iter(battleCtx, jumpNoChange);

                    return FALSE;
                }
            }

            if (result == 2 && battleCtx->sideEffectType == SIDE_EFFECT_TYPE_DIRECT) {
                BattleScript_Iter(battleCtx, jumpBlockedBySubstitute);

                return FALSE;
            } else if (result && battleCtx->sideEffectType == SIDE_EFFECT_TYPE_INDIRECT) {
                BattleScript_Iter(battleCtx, jumpBlocked);

                return FALSE;
            } else if (result) {
                BattleScript_Iter(battleCtx, jumpNoChange);

                return FALSE;
            }
        }

        if (battleCtx->sideEffectType == SIDE_EFFECT_TYPE_ABILITY) {
            battleCtx->msgBuffer.id = 662; // "{0}'s {1} cuts {2}'s {3}!"
            battleCtx->msgBuffer.tags = TAG_NICKNAME_ABILITY_NICKNAME_STAT;
            battleCtx->msgBuffer.params[0] = BattleSystem_NicknameTag(battleCtx, battleCtx->attacker);
            battleCtx->msgBuffer.params[1] = battleCtx->battleMons[battleCtx->attacker].ability;
            battleCtx->msgBuffer.params[2] = BattleSystem_NicknameTag(battleCtx, battleCtx->sideEffectMon);
            battleCtx->msgBuffer.params[3] = BATTLE_STAT_ATTACK + statOffset;
        } else {
            // "{0}'s {1} fell!" or "{0}'s {1} harshly fell!"
            SetupNicknameStatMsg(battleCtx, stageChange == -1 ? 762 : 765, statOffset);
        }

        mon->statBoosts[BATTLE_STAT_ATTACK + statOffset] += stageChange;

        if (mon->statBoosts[BATTLE_STAT_ATTACK + statOffset] < 0) {
            mon->statBoosts[BATTLE_STAT_ATTACK + statOffset] = 0;
        }
    }

    return FALSE;
}

/**
 * @brief Update the value of a battler's data field using an operation applied
 * to itself and a static source value.
 *
 * Inputs:
 * 1. The operation to apply; see `battle_script_opcodes` for possible values.
 * 2. ID of the battler to target as a source operand and the destination.
 * 3. ID of the battler's data field to target as a source operand and
 * the destination.
 * 4. A static source value to use as the second operand.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_UpdateMonData(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int op = BattleScript_Read(battleCtx);
    int inBattler = BattleScript_Read(battleCtx);
    int paramID = BattleScript_Read(battleCtx);
    int srcVal = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    int monData = BattleMon_Get(battleCtx, battler, paramID, NULL);

    switch (op) {
    case OPCODE_SET:
        monData = srcVal;
        break;

    case OPCODE_ADD:
        monData += srcVal;
        break;

    case OPCODE_SUB:
        monData -= srcVal;
        break;

    case OPCODE_FLAG_ON:
        monData |= srcVal;
        break;

    case OPCODE_FLAG_OFF:
        monData &= FLAG_NEGATE(srcVal);
        break;

    case OPCODE_MUL:
        monData *= srcVal;
        break;

    case OPCODE_DIV:
        monData /= srcVal;
        break;

    case OPCODE_LEFT_SHIFT:
        monData = monData << srcVal;
        break;

    case OPCODE_RIGHT_SHIFT:
        u32 mask = monData;
        mask = mask >> srcVal;
        monData = mask;
        break;

    case OPCODE_FLAG_INDEX:
        monData = FlagIndex(srcVal);
        break;

    case OPCODE_GET:
        GF_ASSERT(FALSE);
        break;

    case OPCODE_SUB_TO_ZERO:
        monData -= srcVal;

        if (monData < 0) {
            monData = 0;
        }
        break;

    case OPCODE_BITWISE_XOR:
        monData ^= srcVal;
        break;

    case OPCODE_BITWISE_AND:
        monData &= srcVal;
        break;

    default:
        GF_ASSERT(FALSE);
        break;
    }

    if (paramID == BATTLEMON_ABILITY) {
        BattleAI_SetAbility(battleCtx, battler, monData);
    }

    BattleMon_Set(battleCtx, battler, paramID, &monData);
    BattleMon_CopyToParty(battleSys, battleCtx, battler);

    return FALSE;
}

/**
 * @brief Clear a particular volatile status for a battler.
 *
 * Inputs:
 * 1. The battler whose volatile status should be cleared.
 * 2. Bitmask of the volatile status condition(s) to be cleared.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_ClearVolatileStatus(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int volStatus = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    battleCtx->clearVolatileStatus[battler] |= volStatus;

    return FALSE;
}

/**
 * @brief Toggle the "vanished" flag for a battler.
 *
 * This flag controls whether or not the battler's sprite is visible, e.g.,
 * during a multi-turn move like Bounce or Dig.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_ToggleVanish(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int toggle = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_ToggleVanish(battleSys, battler, toggle);

    return FALSE;
}

/**
 * @brief Check the ability of a battler or set of battlers.
 *
 * Inputs:
 * 1. Op-code which controls the behavior. See `CHECK_HAVE`/`CHECK_NOT_HAVE`
 * 2. Input battler (or set of battlers) whose ability should be checked
 * 3. The ability to check for any battler to have (or not have)
 * 4. GoTo distance if a battler in the input set meets the criteria
 *
 * Side effects:
 * - CompareVarToValue any battler matches the criteria, battleCtx->abilityMon will be set
 * to their identifier.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CheckAbility(BattleSystem *battleSys, BattleContext *battleCtx)
{

    BattleScript_Iter(battleCtx, 1);
    int op = BattleScript_Read(battleCtx);
    int inBattler = BattleScript_Read(battleCtx);
    int ability = BattleScript_Read(battleCtx);
    int jump = BattleScript_Read(battleCtx);

    int battler;
    if (inBattler == BTLSCR_ALL_BATTLERS) {
        int maxBattlers = BattleSystem_MaxBattlers(battleSys);

        for (battler = 0; battler < maxBattlers; battler++) {
            if (op == CHECK_HAVE) {
                if (Battler_Ability(battleCtx, battler) == ability) {
                    BattleScript_Iter(battleCtx, jump);
                    battleCtx->abilityMon = battler;
                    break;
                }
            } else if (Battler_Ability(battleCtx, battler) == ability) {
                break;
            }
        }
    } else {
        battler = BattleScript_Battler(battleSys, battleCtx, inBattler);

        if (op == CHECK_HAVE) {
            if (Battler_Ability(battleCtx, battler) == ability) {
                BattleScript_Iter(battleCtx, jump);
                battleCtx->abilityMon = battler;
            }
        } else if (Battler_Ability(battleCtx, battler) != ability) {
            BattleScript_Iter(battleCtx, jump);
            battleCtx->abilityMon = battler;
        }
    }

    return FALSE;
}

/**
 * @brief Generate a random value in the specified range, inclusive on both
 * ends, and offseting the result by a static value.
 *
 * Inputs:
 * 1. The maximum value R of the range [0, R]
 * 2. The value by which to offset the generated random value
 *
 * Side effects:
 * - battleCtx->calcTemp will be set to the result value
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_Random(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int range = BattleScript_Read(battleCtx);
    range += 1;
    int offset = BattleScript_Read(battleCtx);

    battleCtx->calcTemp = (BattleSystem_RandNext(battleSys) % range) + offset;

    return FALSE;
}

/**
 * @brief Update the value of a variable using an operation applied to itself
 * and the value of another variable.
 *
 * Inputs:
 * 1. The operation to apply; see `battle_script_opcodes` for possible values.
 * 2. ID of the variable to target as a source operand and the destination.
 * 3. ID of the variable to use as the second operand.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_UpdateVarFromVar(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int op = BattleScript_Read(battleCtx);
    int dstVar = BattleScript_Read(battleCtx);
    int srcVar = BattleScript_Read(battleCtx);

    int *dstData = BattleScript_VarAddress(battleSys, battleCtx, dstVar);
    int *srcData = BattleScript_VarAddress(battleSys, battleCtx, srcVar);

    switch (op) {
    case OPCODE_SET:
        *dstData = *srcData;
        break;

    case OPCODE_ADD:
        *dstData += *srcData;
        break;

    case OPCODE_SUB:
        *dstData -= *srcData;
        break;

    case OPCODE_FLAG_ON:
        *dstData |= *srcData;
        break;

    case OPCODE_FLAG_OFF:
        *dstData &= FLAG_NEGATE(*srcData);
        break;

    case OPCODE_MUL:
        *dstData *= *srcData;
        break;

    case OPCODE_DIV:
        *dstData /= *srcData;
        break;

    case OPCODE_LEFT_SHIFT:
        *dstData = *dstData << *srcData;
        break;

    case OPCODE_RIGHT_SHIFT:
        u32 tmp = *dstData;
        tmp = tmp >> *srcData;
        *dstData = tmp;
        break;

    case OPCODE_FLAG_INDEX:
        *dstData = FlagIndex(*srcData);
        break;

    case OPCODE_GET:
        *srcData = *dstData;
        break;

    case OPCODE_SUB_TO_ZERO:
        *dstData -= *srcData;

        if (*dstData < 0) {
            *dstData = 0;
        }
        break;

    case OPCODE_BITWISE_XOR:
        *dstData ^= *srcData;
        break;

    case OPCODE_BITWISE_AND:
        *dstData &= *srcData;
        break;

    default:
        GF_ASSERT(FALSE);
        break;
    }

    return FALSE;
}

/**
 * @brief Update the value of a battler's data field using an operation applied
 * to itself and the value of a variable.
 *
 * Inputs:
 * 1. The operation to apply; see `battle_script_opcodes` for possible values.
 * 2. ID of the battler to target as a source operand and the destination.
 * 3. ID of the battler's data field to target as a source operand and
 * the destination.
 * 4. ID of the variable to use as the second operand.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_UpdateMonDataFromVar(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int op = BattleScript_Read(battleCtx);
    int inBattler = BattleScript_Read(battleCtx);
    int paramID = BattleScript_Read(battleCtx);
    int var = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    int monData = BattleMon_Get(battleCtx, battler, paramID, NULL);
    int *varData = BattleScript_VarAddress(battleSys, battleCtx, var);

    switch (op) {
    case OPCODE_SET:
        monData = *varData;
        break;

    case OPCODE_ADD:
        monData += *varData;
        break;

    case OPCODE_SUB:
        monData -= *varData;
        break;

    case OPCODE_FLAG_ON:
        monData |= *varData;
        break;

    case OPCODE_FLAG_OFF:
        monData &= FLAG_NEGATE(*varData);
        break;

    case OPCODE_MUL:
        monData *= *varData;
        break;

    case OPCODE_DIV:
        monData /= *varData;
        break;

    case OPCODE_LEFT_SHIFT:
        monData = monData << *varData;
        break;

    case OPCODE_RIGHT_SHIFT:
        u32 mask = monData;
        mask = mask >> *varData;
        monData = mask;
        break;

    case OPCODE_FLAG_INDEX:
        monData = FlagIndex(*varData);
        break;

    case OPCODE_GET:
        *varData = monData;
        break;

    case OPCODE_SUB_TO_ZERO:
        monData -= *varData;

        if (monData < 0) {
            monData = 0;
        }
        break;

    case OPCODE_BITWISE_XOR:
        monData ^= *varData;
        break;

    case OPCODE_BITWISE_AND:
        monData &= *varData;
        break;

    default:
        GF_ASSERT(FALSE);
        break;
    }

    if (op != OPCODE_GET) {
        if (paramID == BATTLEMON_ABILITY) {
            BattleAI_SetAbility(battleCtx, battler, monData);
        }

        BattleMon_Set(battleCtx, battler, paramID, &monData);
        BattleMon_CopyToParty(battleSys, battleCtx, battler);
    }

    return FALSE;
}

/**
 * @brief GoTo ahead a certain distance.
 *
 * Inputs:
 * 1. The distance to jump forward in words.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_GoTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jump = BattleScript_Read(battleCtx);

    BattleScript_Iter(battleCtx, jump);

    return FALSE;
}

/**
 * @brief Call a given subroutine sequence, returning to the current routine
 * point finished.
 *
 * Inputs:
 * 1. ID of the subroutine sequence to call.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_Call(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int subseq = BattleScript_Read(battleCtx);

    BattleScript_Call(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, subseq);

    return FALSE;
}

/**
 * @brief Call a given subroutine sequence from the value of a variable,
 * returning to the current routine point finished.
 *
 * Inputs:
 * 1. Variable containing the ID of the subroutine sequence to call.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CallFromVar(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int var = BattleScript_Read(battleCtx);

    int *subseq = BattleScript_VarAddress(battleSys, battleCtx, var);
    BattleScript_Call(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, *subseq);

    return FALSE;
}

/**
 * @brief Set the move to be copied by Mirror Move.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_SetMirrorMove(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int move = MOVE_NONE;
    int battleType = BattleSystem_BattleType(battleSys);

    BattleScript_Iter(battleCtx, 1);

    if (battleCtx->moveCopied[battleCtx->attacker]) {
        move = battleCtx->moveCopied[battleCtx->attacker];
    } else if (battleType & BATTLE_TYPE_DOUBLES) {
        // In double battles, choose randomly.
        move = battleCtx->moveCopiedHit[battleCtx->attacker][0]
            + battleCtx->moveCopiedHit[battleCtx->attacker][1]
            + battleCtx->moveCopiedHit[battleCtx->attacker][2]
            + battleCtx->moveCopiedHit[battleCtx->attacker][3];

        if (move) {
            do {
                move = battleCtx->moveCopiedHit[battleCtx->attacker][BattleSystem_RandNext(battleSys) % 4];
            } while (move == MOVE_NONE);
        }
    }

    // Mirror Move shares a legality table with Encore
    if (move && Move_CanBeEncored(battleCtx, move) == TRUE) {
        battleCtx->battleStatusMask &= ~SYSCTL_SKIP_ATTACK_MESSAGE;
        battleCtx->battleStatusMask &= ~SYSCTL_PLAYED_MOVE_ANIMATION;
        battleCtx->moveCur = move;
        battleCtx->defender = BattleSystem_Defender(battleSys, battleCtx, battleCtx->attacker, move, TRUE, RANGE_SINGLE_TARGET);

        if (battleCtx->defender == BATTLER_NONE) {
            battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;
            BattleScript_Jump(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, subscript_no_target);
        } else {
            ATTACKER_ACTION[BATTLE_ACTION_CHOOSE_TARGET] = battleCtx->defender;
            BattleScript_Jump(battleCtx, NARC_INDEX_BATTLE__SKILL__WAZA_SEQ, move);
        }
    } else {
        battleCtx->selfTurnFlags[battleCtx->attacker].skipPressureCheck = TRUE;
    }

    return FALSE;
}

/**
 * @brief Reset all stat changes for all active battlers.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_ResetAllStatChanges(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    for (int i = 0; i < maxBattlers; i++) {
        for (int j = BATTLE_STAT_HP; j < BATTLE_STAT_MAX; j++) {
            battleCtx->battleMons[i].statBoosts[j] = 6;
        }

        battleCtx->battleMons[i].statusVolatile &= ~VOLATILE_CONDITION_FOCUS_ENERGY;
    }

    return FALSE;
}

/**
 * @brief Locks the given battler into their current move.
 *
 * This is used by moves such as Thrash and Outrage to force the user to keep
 * using them over multiple turns.
 *
 * Inputs:
 * 1. The battler whose move choice should be locked.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_LockMoveChoice(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    Battler_LockMoveChoice(battleSys, battleCtx, battler);

    return FALSE;
}

/**
 * @brief Unlocks the given battler's move choices.
 *
 * This is invoked at the end of moves such as Thrash and Outrage to permit the
 * user to choose a different move after their effect ends.
 *
 * Inputs:
 * 1. The battler whose move choice should be unlocked.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_UnlockMoveChoice(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    Battler_UnlockMoveChoice(battleSys, battleCtx, battler);

    return FALSE;
}

/**
 * @brief Set the status icon on a battler's HP gauge.
 *
 * Inputs:
 * 1. The battler whose HP gauge should be updated.
 * 2. The status icon to apply to the HP gauge.
 *
 * @param battleSys
 * @param battleCtx
 * @return BOOL
 */
static BOOL BtlCmd_SetHealthbarStatus(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int status = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_SetStatusIcon(battleSys, battler, status);

    return FALSE;
}

/**
 * @brief Shows a trainer message of a particular type.
 *
 * Inputs:
 * 1. The battler whose trainer message should be shown.
 * 2. The type of trainer message to display.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PrintTrainerMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int msgType = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_TrainerMessage(battleSys, battler, msgType);

    return FALSE;
}

#include "data/trainer_class_prize_mul.h"

static u32 BattleScript_CalcPrizeMoney(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    u8 lastLevel = 0;
    void *rawParty = Heap_Alloc(HEAP_ID_BATTLE, sizeof(TrainerMonWithMovesAndItem) * MAX_PARTY_SIZE);

    Trainer trainer;
    Trainer_Load(battleSys->trainerIDs[battler], &trainer);
    Trainer_LoadParty(battleSys->trainerIDs[battler], rawParty);

    switch (trainer.header.monDataType) {
    default:
    case TRDATATYPE_BASE: {
        TrainerMonBase *party = (TrainerMonBase *)rawParty;
        lastLevel = party[trainer.header.partySize - 1].level;
        break;
    }

    case TRDATATYPE_WITH_MOVES: {
        TrainerMonWithMoves *party = (TrainerMonWithMoves *)rawParty;
        lastLevel = party[trainer.header.partySize - 1].level;
        break;
    }

    case TRDATATYPE_WITH_ITEM: {
        TrainerMonWithItem *party = (TrainerMonWithItem *)rawParty;
        lastLevel = party[trainer.header.partySize - 1].level;
        break;
    }

    case TRDATATYPE_WITH_MOVES_AND_ITEM: {
        TrainerMonWithMovesAndItem *party = (TrainerMonWithMovesAndItem *)rawParty;
        lastLevel = party[trainer.header.partySize - 1].level;
        break;
    }
    }

    u32 prize;
    if ((battleSys->battleType & BATTLE_TYPE_TAG) || battleSys->battleType == BATTLE_TYPE_TRAINER_WITH_AI_PARTNER) {
        prize = lastLevel * 4 * battleCtx->prizeMoneyMul * sTrainerClassPrizeMul[trainer.header.trainerType];
    } else if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        prize = lastLevel * 4 * battleCtx->prizeMoneyMul * 2 * sTrainerClassPrizeMul[trainer.header.trainerType];
    } else {
        prize = lastLevel * 4 * battleCtx->prizeMoneyMul * sTrainerClassPrizeMul[trainer.header.trainerType];
    }

    Heap_Free(rawParty);
    return prize;
}

/**
 * @brief Payout the prize money for the battle (or deduct a penalty for losing).
 *
 * Side effects:
 * - battleCtx->msgTemp will be updated with the amount of money paid out
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PayPrizeMoney(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    u32 money;
    if (battleSys->resultMask == BATTLE_RESULT_WIN) {
        money = BattleScript_CalcPrizeMoney(battleSys, battleCtx, BATTLER_ENEMY_1);

        if ((battleSys->battleType & BATTLE_TYPE_TAG) || battleSys->battleType == BATTLE_TYPE_TRAINER_WITH_AI_PARTNER) {
            money += BattleScript_CalcPrizeMoney(battleSys, battleCtx, BATTLER_ENEMY_2);
        }

        TrainerInfo_GiveMoney(BattleSystem_TrainerInfo(battleSys, BATTLER_US), money);
    } else {
        money = BattleSystem_CalcMoneyPenalty(battleSys->parties[BATTLER_US], battleSys->trainerInfo[BATTLER_US]);
        TrainerInfo_TakeMoney(BattleSystem_TrainerInfo(battleSys, BATTLER_US), money);
    }

    if (money) {
        battleCtx->msgTemp = money;
    } else {
        battleCtx->msgTemp = 0;
    }

    return FALSE;
}

/**
 * @brief Play a status effect on the given battler.
 *
 * This is responsible for playing the basic animations for status effects
 * like end-of-turn Burn and Poison damage, full-Paralysis, Sleep, etc. It also
 * handles animations for generic battle state updates, such as Substitute,
 * weather, transformations, etc.
 *
 * Inputs:
 * 1. The battler on whom the animation should be centered.
 * 2. The effect to be played.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PlayBattleAnimation(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int effect = BattleScript_Read(battleCtx);

    if (BattleSystem_AnimationsOn(battleSys) == TRUE
        || effect == BATTLE_ANIMATION_SUB_OUT
        || effect == BATTLE_ANIMATION_SUB_IN
        || effect == BATTLE_ANIMATION_SUBSTITUTE_OUT
        || effect == BATTLE_ANIMATION_SUBSTITUTE_IN) {
        int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
        if (BattleSystem_ShouldShowStatusEffect(battleCtx, battler, effect) == TRUE) {
            BattleIO_PlayStatusEffect(battleSys, battleCtx, battler, effect);
        }
    }

    return FALSE;
}

/**
 * @brief Play a status effect on the given battler.
 *
 * This is responsible for animations that have an attacker and a defender.
 * In vanilla Gen4, this only applies to the Leech Seed damage+drain effect.
 *
 * Inputs:
 * 1. The attacker for the animation.
 * 2. The defender for the animation.
 * 3. The effect to be played.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PlayBattleAnimationOnMons(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inAttacker = BattleScript_Read(battleCtx);
    int inDefender = BattleScript_Read(battleCtx);
    int effect = BattleScript_Read(battleCtx);

    if (BattleSystem_AnimationsOn(battleSys) == TRUE
        || effect == BATTLE_ANIMATION_SUB_OUT
        || effect == BATTLE_ANIMATION_SUB_IN
        || effect == BATTLE_ANIMATION_SUBSTITUTE_OUT
        || effect == BATTLE_ANIMATION_SUBSTITUTE_IN) {
        int attacker = BattleScript_Battler(battleSys, battleCtx, inAttacker);
        int defender = BattleScript_Battler(battleSys, battleCtx, inDefender);

        if (BattleSystem_ShouldShowStatusEffect(battleCtx, attacker, effect) == TRUE
            && BattleSystem_ShouldShowStatusEffect(battleCtx, defender, effect) == TRUE) {
            BattleIO_PlayStatusEffectAToD(battleSys, battleCtx, attacker, defender, effect);
        }
    }

    return FALSE;
}

/**
 * @brief Play a status effect from the value stored in a variable.
 *
 * Inputs:
 * 1. The battler on whom the animation should be centered.
 * 2. The variable to consult for the effect to be played.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PlayBattleAnimationFromVar(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int var = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    int *effect = BattleScript_VarAddress(battleSys, battleCtx, var);

    if ((BattleSystem_AnimationsOn(battleSys) == TRUE
            || var == BATTLE_ANIMATION_SUB_OUT // bug: this should be *effect, not var
            || var == BATTLE_ANIMATION_SUB_IN // bug: this should be *effect, not var
            || *effect == BATTLE_ANIMATION_SUBSTITUTE_OUT
            || *effect == BATTLE_ANIMATION_SUBSTITUTE_IN)
        && BattleSystem_ShouldShowStatusEffect(battleCtx, battler, *effect) == TRUE) {
        BattleIO_PlayStatusEffect(battleSys, battleCtx, battler, *effect);
    }

    return FALSE;
}

/**
 * @brief Print the message for recalling a Pokemon back to its ball.
 *
 * Inputs:
 * 1. The battler to be recalled.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PrintRecallMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_PrintRecallMessage(battleSys, battleCtx, battler, battleCtx->selectedPartySlot[battler]);

    return FALSE;
}

/**
 * @brief Print the message for sending a Pokemon out mid-battle.
 *
 * Inputs:
 * 1. The battler to be sent out.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PrintSendOutMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_PrintSendOutMessage(battleSys, battleCtx, battler, battleCtx->selectedPartySlot[battler]);

    return FALSE;
}

/**
 * @brief Print the message for starting an encounter (e.g., "A wild Rattata
 * appeared!" or "Youngster Joey wants to battle!")
 *
 * Inputs:
 * 1. The battler appearing on the opposite side of the field.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PrintEncounterMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_PrintBattleStartMessage(battleSys, battleCtx, battler);

    return FALSE;
}

/**
 * @brief Print the message for sending out a leading Pokemon.
 *
 * Inputs:
 * 1. The battler being sent out.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PrintFirstSendOutMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_PrintLeadMonMessage(battleSys, battleCtx, battler);

    return FALSE;
}

/**
 * @brief Print the prepared message as a trainer message for the given battler.
 *
 * Inputs:
 * 1. The battler for whom the message should be shown as a trainer message.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PrintBufferedTrainerMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_TrainerMessage(battleSys, battler, battleCtx->msgTemp);

    return FALSE;
}

/**
 * @brief Try to execute the Conversion effect.
 *
 * Inputs:
 * 1. The jump-distance if the process fails for whatever reason.
 *
 * @param battleSys
 * @param battleCtx
 * @return BOOL
 */
static BOOL BtlCmd_TryConversion(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int numMoves, i, moveType; // must declare these here to match

    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);

    if (Battler_Ability(battleCtx, battleCtx->attacker) == ABILITY_MULTITYPE) {
        BattleScript_Iter(battleCtx, jumpOnFail);
        return FALSE;
    }

    for (numMoves = 0; numMoves < 4; numMoves++) {
        if (ATTACKING_MON.moves[numMoves] == MOVE_NONE) {
            break;
        }
    }

    // First, check if there are any non-Conversion moves which have a type different from the
    // source Pokemon's types.
    for (i = 0; i < numMoves; i++) {
        if (ATTACKING_MON.moves[i] == MOVE_CONVERSION) {
            continue;
        }

        moveType = MOVE_DATA(ATTACKING_MON.moves[i]).type;
        if (moveType == TYPE_MYSTERY) {
            if (MON_HAS_TYPE(battleCtx->attacker, TYPE_GHOST)) {
                moveType = TYPE_GHOST;
            } else {
                moveType = TYPE_NORMAL;
            }
        }

        if (MON_IS_NOT_TYPE(battleCtx->attacker, moveType)) {
            break;
        }
    }

    if (i == numMoves) { // no such moves
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else {
        do {
            // Get a random non-Conversion move
            do {
                i = BattleSystem_RandNext(battleSys) % numMoves;
            } while (ATTACKING_MON.moves[i] == MOVE_CONVERSION);

            moveType = MOVE_DATA(ATTACKING_MON.moves[i]).type;

            // Handle Curse as a Ghost-type move for Ghost-type Pokemon
            if (moveType == TYPE_MYSTERY) {
                if (MON_HAS_TYPE(battleCtx->attacker, TYPE_GHOST)) {
                    moveType = TYPE_GHOST;
                } else {
                    moveType = TYPE_NORMAL;
                }
            }
        } while (MON_HAS_TYPE(battleCtx->attacker, moveType));

        ATTACKING_MON.type1 = moveType;
        ATTACKING_MON.type2 = moveType;
        battleCtx->msgTemp = moveType;
    }

    return FALSE;
}

/**
 * @brief Compare a given data-value from a variable to a target variable's value.
 *
 * Inputs:
 * 1. The operation mode. See `battle_script_opcodes` for possible values.
 * 3. The variable whose data will be used on the left-hand side of the comparison.
 * 3. The variable whose data will be used on the right-hand side of the comparison.
 * 4. The jump-ahead value if the comparison yields TRUE.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CompareVarToVar(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int op = BattleScript_Read(battleCtx);
    int lhsVar = BattleScript_Read(battleCtx);
    int rhsVar = BattleScript_Read(battleCtx);
    int jump = BattleScript_Read(battleCtx);

    u32 *lhs = BattleScript_VarAddress(battleSys, battleCtx, lhsVar);
    u32 *rhs = BattleScript_VarAddress(battleSys, battleCtx, rhsVar);

    switch (op) {
    case OPCODE_EQU:
        if (*lhs != *rhs) {
            jump = 0;
        }
        break;

    case OPCODE_NEQ:
        if (*lhs == *rhs) {
            jump = 0;
        }
        break;

    case OPCODE_GT:
        if (*lhs <= *rhs) {
            jump = 0;
        }
        break;

    case OPCODE_LTE:
        if (*lhs > *rhs) {
            jump = 0;
        }
        break;

    case OPCODE_FLAG_SET:
        if ((*lhs & *rhs) == FALSE) {
            jump = 0;
        }
        break;

    case OPCODE_FLAG_NOT:
        if (*lhs & *rhs) {
            jump = 0;
        }
        break;

    case OPCODE_AND:
        if ((*lhs & *rhs) != *rhs) {
            jump = 0;
        }
        break;

    default:
        GF_ASSERT(TRUE);
        break;
    }

    if (jump) {
        BattleScript_Iter(battleCtx, jump);
    }

    return FALSE;
}

/**
 * @brief Compare a given data-value from a battler to a target variable's value.
 *
 * Inputs:
 * 1. The operation mode. See `battle_script_opcodes` for possible values.
 * 2. The battler whose data should be retrieved for the left-hand side of the comparison.
 * 3. The parameter to use for the left-hand side of the comparison.
 * 4. The variable whose data will be used on the right-hand side of the comparison.
 * 5. The jump-ahead value if the comparison yields TRUE.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CompareMonDataToVar(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int op = BattleScript_Read(battleCtx);
    int battler = BattleScript_Read(battleCtx);
    int paramID = BattleScript_Read(battleCtx);
    int rhsVar = BattleScript_Read(battleCtx);
    int jump = BattleScript_Read(battleCtx);

    u32 lhs = BattleMon_Get(battleCtx, BattleScript_Battler(battleSys, battleCtx, battler), paramID, NULL);
    u32 *rhs = BattleScript_VarAddress(battleSys, battleCtx, rhsVar);

    switch (op) {
    case OPCODE_EQU:
        if (lhs != *rhs) {
            jump = 0;
        }
        break;

    case OPCODE_NEQ:
        if (lhs == *rhs) {
            jump = 0;
        }
        break;

    case OPCODE_GT:
        if (lhs <= *rhs) {
            jump = 0;
        }
        break;

    case OPCODE_LTE:
        if (lhs > *rhs) {
            jump = 0;
        }
        break;

    case OPCODE_FLAG_SET:
        if ((lhs & *rhs) == FALSE) {
            jump = 0;
        }
        break;

    case OPCODE_FLAG_NOT:
        if (lhs & *rhs) {
            jump = 0;
        }
        break;

    case OPCODE_AND:
        if ((lhs & *rhs) != *rhs) {
            jump = 0;
        }
        break;

    default:
        GF_ASSERT(TRUE);
        break;
    }

    if (jump) {
        BattleScript_Iter(battleCtx, jump);
    }

    return FALSE;
}

/**
 * @brief Gives the money accrued from Pay Day to the player.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_AddPayDayMoney(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    battleCtx->msgTemp = battleCtx->payDayCount * battleCtx->prizeMoneyMul;
    if (battleCtx->msgTemp > PAYDAY_MAX) {
        battleCtx->msgTemp = PAYDAY_MAX;
    }

    TrainerInfo_GiveMoney(BattleSystem_TrainerInfo(battleSys, BATTLER_US), battleCtx->msgTemp);

    return FALSE;
}

/**
 * @brief Try to set Light Screen for the user's side.
 *
 * Inputs:
 * 1. The jump-distance if Light Screen is already set for the user's side.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryLightScreen(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jump = BattleScript_Read(battleCtx);

    int side = Battler_Side(battleSys, battleCtx->attacker);

    if (battleCtx->sideConditionsMask[side] & SIDE_CONDITION_LIGHT_SCREEN) {
        BattleScript_Iter(battleCtx, jump);
        battleCtx->moveStatusFlags |= MOVE_STATUS_FAILED;
    } else {
        battleCtx->sideConditionsMask[side] |= SIDE_CONDITION_LIGHT_SCREEN;
        battleCtx->sideConditions[side].lightScreenTurns = NUM_SCREEN_TURNS;
        battleCtx->sideConditions[side].lightScreenUser = battleCtx->attacker;

        if (Battler_HeldItemEffect(battleCtx, battleCtx->attacker) == HOLD_EFFECT_EXTEND_SCREENS) {
            battleCtx->sideConditions[side].lightScreenTurns += Battler_HeldItemPower(battleCtx, battleCtx->attacker, 0);
        }

        battleCtx->msgBuffer.tags = TAG_MOVE_SIDE;
        battleCtx->msgBuffer.params[0] = battleCtx->moveCur;
        battleCtx->msgBuffer.params[1] = battleCtx->attacker;

        if (BattleSystem_CountAliveBattlers(battleSys, battleCtx, TRUE, battleCtx->attacker) == 2) {
            battleCtx->msgBuffer.id = 192; // "{0} raised [your/its] team's Special Defense slightly!"
        } else {
            battleCtx->msgBuffer.id = 190; // "{0} raised [your/its] team's Special Defense!"
        }
    }

    return FALSE;
}

/**
 * @brief Try to set Reflect for the user's side.
 *
 * Inputs:
 * 1. The jump-distance if Reflect is already set for the user's side.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryReflect(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jump = BattleScript_Read(battleCtx);

    int side = Battler_Side(battleSys, battleCtx->attacker);

    if (battleCtx->sideConditionsMask[side] & SIDE_CONDITION_REFLECT) {
        BattleScript_Iter(battleCtx, jump);
        battleCtx->moveStatusFlags |= MOVE_STATUS_FAILED;
    } else {
        battleCtx->sideConditionsMask[side] |= SIDE_CONDITION_REFLECT;
        battleCtx->sideConditions[side].reflectTurns = NUM_SCREEN_TURNS;
        battleCtx->sideConditions[side].reflectUser = battleCtx->attacker;

        if (Battler_HeldItemEffect(battleCtx, battleCtx->attacker) == HOLD_EFFECT_EXTEND_SCREENS) {
            battleCtx->sideConditions[side].reflectTurns += Battler_HeldItemPower(battleCtx, battleCtx->attacker, 0);
        }

        battleCtx->msgBuffer.tags = TAG_MOVE_SIDE;
        battleCtx->msgBuffer.params[0] = battleCtx->moveCur;
        battleCtx->msgBuffer.params[1] = battleCtx->attacker;

        if (BattleSystem_CountAliveBattlers(battleSys, battleCtx, TRUE, battleCtx->attacker) == 2) {
            battleCtx->msgBuffer.id = 196; // "{0} raised [your/its] team's Defense slightly!"
        } else {
            battleCtx->msgBuffer.id = 194; // "{0} raised [your/its] team's Defense!"
        }
    }

    return FALSE;
}

/**
 * @brief Try to set Mist for the user's side.
 *
 * Inputs:
 * 1. The jump-distance if Mist is already set for the user's side.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryMist(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jump = BattleScript_Read(battleCtx);

    int side = Battler_Side(battleSys, battleCtx->attacker);

    if (battleCtx->sideConditionsMask[side] & SIDE_CONDITION_MIST) {
        BattleScript_Iter(battleCtx, jump);
        battleCtx->moveStatusFlags |= MOVE_STATUS_FAILED;
    } else {
        battleCtx->sideConditionsMask[side] |= SIDE_CONDITION_MIST;
        battleCtx->sideConditions[side].mistTurns = NUM_SCREEN_TURNS;
        battleCtx->sideConditions[side].mistUser = battleCtx->attacker;
    }

    return FALSE;
}

/**
 * @brief Try to execute a one-hit KO move (e.g., Guillotine, Sheer Cold).
 *
 * These moves do not follow the standard accuracy formula. CompareVarToValue the defender is
 * a higher level than the attacker, then the move will always fail to hit, even
 * if the attacker is under the effect of No Guard or Lock On. Accuracy for
 * these moves scales linearly from their base accuracy according to the
 * difference of the attacker and defender's levels. That is:
 *
 *     accuracy = baseAccuracy + (attackerLevel - defenderLevel)
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryOHKOMove(BattleSystem *battleSys, BattleContext *battleCtx)
{
    u16 hit;
    BattleScript_Iter(battleCtx, 1);
    battleCtx->battleStatusMask |= SYSCTL_NONSTANDARD_ACC_CHECK;

    if (Battler_IgnorableAbility(battleCtx, battleCtx->attacker, battleCtx->defender, ABILITY_STURDY) == TRUE) {
        battleCtx->moveStatusFlags |= MOVE_STATUS_STURDY;
    } else {
        if ((DEFENDING_MON.moveEffectsMask & MOVE_EFFECT_LOCK_ON) == FALSE
            && Battler_Ability(battleCtx, battleCtx->attacker) != ABILITY_NO_GUARD
            && Battler_Ability(battleCtx, battleCtx->defender) != ABILITY_NO_GUARD) {
            // Use the usual OHKO accuracy check: scale upwards with the difference between the attacker and
            // defender's levels.
            hit = CURRENT_MOVE_DATA.accuracy + (ATTACKING_MON.level - DEFENDING_MON.level);

            if ((BattleSystem_RandNext(battleSys) % 100) < hit && ATTACKING_MON.level >= DEFENDING_MON.level) {
                hit = TRUE;
            } else {
                hit = FALSE;
            }
        } else {
            if (((DEFENDING_MON.moveEffectsData.lockOnTarget == battleCtx->attacker
                     && (DEFENDING_MON.moveEffectsMask & MOVE_EFFECT_LOCK_ON))
                    || Battler_Ability(battleCtx, battleCtx->attacker) == ABILITY_NO_GUARD
                    || Battler_Ability(battleCtx, battleCtx->defender) == ABILITY_NO_GUARD)
                && ATTACKING_MON.level >= DEFENDING_MON.level) {
                // Bypass the accuracy check: always hit.
                hit = TRUE;
            } else {
                // Fallback to the usual OHKO accuracy check, for some reason.
                hit = CURRENT_MOVE_DATA.accuracy + (ATTACKING_MON.level - DEFENDING_MON.level);

                if ((BattleSystem_RandNext(battleSys) % 100) < hit && ATTACKING_MON.level >= DEFENDING_MON.level) {
                    hit = TRUE;
                } else {
                    hit = FALSE;
                }
            }

            battleCtx->moveStatusFlags |= MOVE_STATUS_BYPASSED_ACCURACY;
        }

        if (hit) {
            battleCtx->damage = DEFENDING_MON.curHP * -1;
            battleCtx->moveStatusFlags |= MOVE_STATUS_ONE_HIT_KO;
        } else if (ATTACKING_MON.level >= DEFENDING_MON.level) {
            battleCtx->moveStatusFlags |= MOVE_STATUS_MISSED;
        } else {
            battleCtx->moveStatusFlags |= MOVE_STATUS_ONE_HIT_KO_FAILED;
        }
    }

    return FALSE;
}

/**
 * @brief DivideVarByValue the value of a variable by another static value, storing the
 * result back into the source variable.
 *
 * This operation will not permit quotients of 0. CompareVarToValue the variable's value is
 * positive, then the minimum permissible quotient will be 1. Likewise, a
 * negative value will permit a maximum quotient of -1.
 *
 * Inputs:
 * 1. ID of the source variable for the dividend and where to store the result.
 * 2. Static value for the divisor.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_DivideVarByValue(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int srcVar = BattleScript_Read(battleCtx);
    int divBy = BattleScript_Read(battleCtx);

    int *var = BattleScript_VarAddress(battleSys, battleCtx, srcVar);
    *var = BattleSystem_Divide(*var, divBy);

    return FALSE;
}

/**
 * @brief DivideVarByValue the value of a variable by the value of another variable,
 * storing the result back into the former.
 *
 * This operation will not permit quotients of 0. CompareVarToValue the variable's value is
 * positive, then the minimum permissible quotient will be 1. Likewise, a
 * negative value will permit a maximum quotient of -1.
 *
 * Inputs:
 * 1. ID of the variable for the dividend and where to store the result.
 * 2. ID of the variable for the divisor.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_DivideVarByVar(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int srcVar = BattleScript_Read(battleCtx);
    int divVar = BattleScript_Read(battleCtx);

    int *src = BattleScript_VarAddress(battleSys, battleCtx, srcVar);
    int *div = BattleScript_VarAddress(battleSys, battleCtx, divVar);

    int signedFloor;
    if (*src < 0) {
        signedFloor = -1;
    } else {
        signedFloor = 1;
    }

    *src /= *div;

    if (*src == 0) {
        *src = signedFloor;
    }

    return FALSE;
}

/**
 * @brief Try to execute the Mimic effect.
 *
 * This command will fail if any of the following are true:
 * - The move attempting to be Mimicked is not permitted (see Move_CanBeMimicked)
 * - The attacker has Transformed
 * - The defender is behind a Substitute
 * - The defender has yet to use a move
 * - The attacker knows the move that the defender last used
 *
 * Inputs:
 * 1. Distance to jump ahead if the effect fails
 *
 * @param battleSys
 * @param battleCtx
 * @return BOOL
 */
static BOOL BtlCmd_TryMimic(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);

    if (Move_CanBeMimicked(DEFENDER_LAST_MOVE) == FALSE
        || (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_TRANSFORM)
        || (DEFENDING_MON.statusVolatile & VOLATILE_CONDITION_SUBSTITUTE)
        || DEFENDER_LAST_MOVE == MOVE_NONE) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else {
        int i, j = -1;
        for (i = 0; i < 4; i++) {
            // Don't try to copy a move that we already know
            if (ATTACKING_MON.moves[i] == DEFENDER_LAST_MOVE) {
                break;
            }

            // Only replace the first instance of Mimic
            if (ATTACKING_MON.moves[i] == MOVE_MIMIC && j == -1) {
                j = i;
            }
        }

        if (i == 4) {
            // Copying a move we do not already know
            battleCtx->msgMoveTemp = DEFENDER_LAST_MOVE;
            ATTACKING_MON.moves[j] = battleCtx->msgMoveTemp;

            // Max out the current PP at 5
            if (MOVE_DATA(battleCtx->msgMoveTemp).pp < 5) {
                ATTACKING_MON.ppCur[j] = MOVE_DATA(battleCtx->msgMoveTemp).pp;
            } else {
                ATTACKING_MON.ppCur[j] = 5;
            }

            ATTACKING_MON.moveEffectsData.mimickedMoveSlot |= FlagIndex(j);

            if (battleCtx->msgMoveTemp == MOVE_LAST_RESORT) {
                ATTACKING_MON.moveEffectsData.lastResortCount = 0;
            }
        } else {
            // We tried to copy a move that we already know
            BattleScript_Iter(battleCtx, jumpOnFail);
        }
    }

    return FALSE;
}

/**
 * @brief Pick a random move permitted by Metronome.
 *
 * This command will skip over any moves already known by the attacker.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_Metronome(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    while (TRUE) {
        int i;
        u16 move = (BattleSystem_RandNext(battleSys) % NUM_VALID_MOVES) + 1;

        // Do not try to invoke a move that we already know.
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (ATTACKING_MON.moves[i] == move) {
                break;
            }
        }
        if (i != LEARNED_MOVES_MAX) {
            continue;
        }

        // Check if the move is allowed to be Metronomed globally
        if (Move_CanBeMetronomed(battleSys, battleCtx, battleCtx->attacker, move) == FALSE) {
            continue;
        }

        battleCtx->msgMoveTemp = move;
        break;
    }

    return FALSE;
}

/**
 * @brief Try to disable the defender's most recently used move.
 *
 * This command will fail if any of the following are true:
 * - The defender already has another move disabled.
 * - The defender does not know the move attempting to be disabled.
 * - The defender does not have PP remaining for the move to be disabled.
 * - The defender has yet to use a move.
 *
 * Inputs:
 * 1. Distance to jump ahead if the effect fails
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryDisable(BattleSystem *battleSys, BattleContext *battleCtx)
{

    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);

    int moveSlot = Battler_SlotForMove(&DEFENDING_MON, DEFENDER_LAST_MOVE);

    if (DEFENDING_MON.moveEffectsData.disabledMove == MOVE_NONE
        && moveSlot != LEARNED_MOVES_MAX
        && DEFENDING_MON.ppCur[moveSlot]
        && DEFENDER_LAST_MOVE) {
        battleCtx->msgMoveTemp = DEFENDER_LAST_MOVE;
        DEFENDING_MON.moveEffectsData.disabledMove = battleCtx->msgMoveTemp;
        DEFENDING_MON.moveEffectsData.disabledTurns = BattleSystem_RandNext(battleSys) % 4 + 3; // range: [3-6]
    } else {
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Execute the Counter effect.
 *
 * This command will fail if any of the following are true:
 * - The attacker did not receive physical damage this turn
 * - The last battler to attack this one is their teammate
 * - The last battler to attack this one is no longer active
 * - Both opponents have fainted by other means
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_Counter(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    int lastAttacker = ATTACKER_TURN_FLAGS.physicalDamageLastAttacker;
    int attackingSide = Battler_Side(battleSys, battleCtx->attacker);
    int defendingSide = Battler_Side(battleSys, lastAttacker);

    if (ATTACKER_TURN_FLAGS.physicalDamageTakenFrom[lastAttacker]
        && attackingSide != defendingSide
        && battleCtx->battleMons[lastAttacker].curHP) {
        battleCtx->damage = ATTACKER_TURN_FLAGS.physicalDamageTakenFrom[lastAttacker] * 2;

        if (battleCtx->sideConditions[defendingSide].followMe && FOLLOW_ME_MON(defendingSide).curHP) {
            battleCtx->defender = FOLLOW_ME_USER(defendingSide);
        } else {
            battleCtx->defender = lastAttacker;
        }

        // CompareVarToValue the target is no longer active, pick a random opponent
        // This should always give us an active opponent, unless both have fainted
        if (DEFENDING_MON.curHP == 0) {
            battleCtx->defender = BattleSystem_RandomOpponent(battleSys, battleCtx, battleCtx->attacker);

            // CompareVarToValue there are no possible targets, fail
            if (DEFENDING_MON.curHP == 0) {
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;
                BattleScript_Jump(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, subscript_no_target);
            }
        }

        BattleSystem_DecPPForPressure(battleCtx, battleCtx->attacker, battleCtx->defender);
    } else {
        ATTACKER_SELF_TURN_FLAGS.skipPressureCheck = TRUE;
        battleCtx->moveStatusFlags |= MOVE_STATUS_FAILED;
    }

    return FALSE;
}

/**
 * @brief Execute the Mirror Coat effect.
 *
 * This command will fail if any of the following are true:
 * - The attacker did not receive special damage this turn
 * - The last battler to attack this one is their teammate
 * - The last battler to attack this one is no longer active
 * - Both opponents have fainted by other means
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_MirrorCoat(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    int lastAttacker = ATTACKER_TURN_FLAGS.specialDamageLastAttacker;
    int attackingSide = Battler_Side(battleSys, battleCtx->attacker);
    int defendingSide = Battler_Side(battleSys, lastAttacker);

    if (ATTACKER_TURN_FLAGS.specialDamageTakenFrom[lastAttacker]
        && attackingSide != defendingSide
        && battleCtx->battleMons[lastAttacker].curHP) {
        battleCtx->damage = ATTACKER_TURN_FLAGS.specialDamageTakenFrom[lastAttacker] * 2;

        if (battleCtx->sideConditions[defendingSide].followMe && FOLLOW_ME_MON(defendingSide).curHP) {
            battleCtx->defender = FOLLOW_ME_USER(defendingSide);
        } else {
            battleCtx->defender = lastAttacker;
        }

        // CompareVarToValue the target is no longer active, pick a random opponent
        // This should always give us an active opponent, unless both have fainted
        if (DEFENDING_MON.curHP == 0) {
            battleCtx->defender = BattleSystem_RandomOpponent(battleSys, battleCtx, battleCtx->attacker);

            // CompareVarToValue there are no possible targets, fail
            if (DEFENDING_MON.curHP == 0) {
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;
                BattleScript_Jump(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, subscript_no_target);
            }
        }

        BattleSystem_DecPPForPressure(battleCtx, battleCtx->attacker, battleCtx->defender);
    } else {
        ATTACKER_SELF_TURN_FLAGS.skipPressureCheck = TRUE;
        battleCtx->moveStatusFlags |= MOVE_STATUS_FAILED;
    }

    return FALSE;
}

/**
 * @brief Try to execute Encore on the defender's most recently used move.
 *
 * This command will fail if any of the following are true:
 * - The defender already has another move encored.
 * - The defender does not know the move attempting to be encored.
 * - The move last used is one which cannot be encored. (see: Move_CanBeEncored)
 * - The defender does not have PP remaining for the move to be disabled.
 * - The defender has yet to use a move.
 *
 * Inputs:
 * 1. Distance to jump ahead if the effect fails
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryEncore(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);

    int moveSlot = Battler_SlotForMove(&DEFENDING_MON, DEFENDER_LAST_MOVE);
    if (Move_CanBeEncored(battleCtx, DEFENDER_LAST_MOVE) == FALSE) {
        moveSlot = LEARNED_MOVES_MAX;
    }

    if (DEFENDING_MON.moveEffectsData.encoredMove == MOVE_NONE
        && moveSlot != LEARNED_MOVES_MAX
        && DEFENDING_MON.ppCur[moveSlot]
        && DEFENDER_LAST_MOVE) {
        battleCtx->msgMoveTemp = DEFENDER_LAST_MOVE;
        DEFENDING_MON.moveEffectsData.encoredMove = battleCtx->msgMoveTemp;
        DEFENDING_MON.moveEffectsData.encoredMoveSlot = moveSlot;
        DEFENDING_MON.moveEffectsData.encoredTurns = BattleSystem_RandNext(battleSys) % 5 + 3; // range: [3-7]
    } else {
        battleCtx->moveStatusFlags |= MOVE_STATUS_FAILED;
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Tries to execute the Conversion 2 effect.
 *
 * Conversion 2 considers the type of the move that the user was last hit by,
 * then picks a random type which would resist that move and assigns the user
 * to be that type.
 *
 * Inputs:
 * 1. The distance to jump if the effect fails to execute.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryConversion2(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);

    if (Battler_Ability(battleCtx, battleCtx->attacker) == ABILITY_MULTITYPE) {
        BattleScript_Iter(battleCtx, jumpOnFail);
        return FALSE;
    }

    if (battleCtx->conversion2Move[battleCtx->attacker]
        && battleCtx->conversion2Battler[battleCtx->attacker] != BATTLER_NONE) {
        // Fail to execute if the source move's owner is locked into the first turn of a multi-turn move
        if (Move_IsMultiTurn(battleCtx, battleCtx->conversion2Move[battleCtx->attacker])
            && (battleCtx->battleMons[battleCtx->conversion2Battler[battleCtx->attacker]].statusVolatile & VOLATILE_CONDITION_MOVE_LOCKED)) {
            BattleScript_Iter(battleCtx, jumpOnFail);
            return FALSE;
        }

        u8 atkType, defType, typeMulti;
        int i, moveType = battleCtx->conversion2Type[battleCtx->attacker];
        for (i = 0; i < 1000; i++) {
            // Get a random entry from the type m atchup table
            BattleSystem_TypeMatchup(battleSys, 0xFFFF, &atkType, &defType, &typeMulti);

            // Check if the accessed entry has an attacking type which matches the source move
            // and a defending type which results in a favorable matchup
            if (atkType == moveType
                && typeMulti <= TYPE_MULTI_NOT_VERY_EFF
                && MON_IS_NOT_TYPE(battleCtx->attacker, defType)) {
                ATTACKING_MON.type1 = defType;
                ATTACKING_MON.type2 = defType;
                battleCtx->msgTemp = defType;
                return FALSE;
            }
        }

        // Fallback to a linear search through the table for the first entry which matches the criteria
        i = 0;
        while (BattleSystem_TypeMatchup(battleSys, i, &atkType, &defType, &typeMulti) == TRUE) {
            if (atkType == moveType
                && typeMulti <= TYPE_MULTI_NOT_VERY_EFF
                && MON_IS_NOT_TYPE(battleCtx->attacker, defType)) {
                ATTACKING_MON.type1 = defType;
                ATTACKING_MON.type2 = defType;
                battleCtx->msgTemp = defType;
                return FALSE;
            }

            i++;
        }
    }

    BattleScript_Iter(battleCtx, jumpOnFail);
    return FALSE;
}

/**
 * @brief Try to execute the Sketch effect.
 *
 * Sketch will attempt to teach the attacking battler the move which was most-
 * recently used by its target, overwriting Sketch's current move slot. The
 * following moves may not be Sketched:
 * - Struggle
 * - Sketch
 * - Chatter
 *
 * Inputs:
 * 1. The distance to jump if the effect fails to execute.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TrySketch(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int moveSlot = -1;

    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);

    // Don't allow Sketch while Transformed or against any of Struggle, Chatter, or Sketch itself
    if ((ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_TRANSFORM)
        || battleCtx->moveSketched[battleCtx->defender] == MOVE_STRUGGLE
        || battleCtx->moveSketched[battleCtx->defender] == MOVE_SKETCH
        || battleCtx->moveSketched[battleCtx->defender] == MOVE_CHATTER
        || battleCtx->moveSketched[battleCtx->defender] == MOVE_NONE) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else {
        int i;
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            // Don't allow Sketching a move that we already know
            if (ATTACKING_MON.moves[i] != MOVE_SKETCH
                && ATTACKING_MON.moves[i] == battleCtx->moveSketched[battleCtx->defender]) {
                break;
            }

            // Replace the first instance of Sketch only (there should only be one)
            if (ATTACKING_MON.moves[i] == MOVE_SKETCH && moveSlot == -1) {
                moveSlot = i;
            }
        }

        if (i == LEARNED_MOVES_MAX) {
            // Teach the attacker the Sketched move with default PP
            ATTACKING_MON.moves[moveSlot] = battleCtx->moveSketched[battleCtx->defender];
            ATTACKING_MON.ppCur[moveSlot] = MOVE_DATA(battleCtx->moveSketched[battleCtx->defender]).pp;

            BattleIO_UpdatePartyMon(battleSys, battleCtx, battleCtx->attacker);
            battleCtx->msgMoveTemp = battleCtx->moveSketched[battleCtx->defender];

            if (battleCtx->msgMoveTemp == MOVE_LAST_RESORT) {
                ATTACKING_MON.moveEffectsData.lastResortCount = 0;
            }
        } else {
            BattleScript_Iter(battleCtx, jumpOnFail);
        }
    }

    return FALSE;
}

/**
 * @brief Try to execute the Sleep Talk effect.
 *
 * Sleep Talk will try to invoke another move that the attacker knows, barring:
 * - other invoker-class moves (see Move_IsInvoker)
 * - Focus Punch
 * - Uproar
 * - Chatter
 * - Multi-turn moves
 *
 * It will permit invocation of any other move, including those which have had
 * their PP wholly depleted.
 *
 * Inputs:
 * 1. The distance to jump if the effect fails to execute.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TrySleepTalk(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    int jumpOnFail = BattleScript_Read(battleCtx);
    int invalidMovesMask = 0;
    int i;

    // Check for invalid moves for the random selection
    for (i = 0; i < 4; i++) {
        if (Move_IsInvoker(ATTACKING_MON.moves[i])
            || ATTACKING_MON.moves[i] == MOVE_FOCUS_PUNCH
            || ATTACKING_MON.moves[i] == MOVE_UPROAR
            || ATTACKING_MON.moves[i] == MOVE_CHATTER
            || Move_IsMultiTurn(battleCtx, ATTACKING_MON.moves[i])) {
            invalidMovesMask |= FlagIndex(i);
        }
    }

    // Check for other invalid moves (only skip the PP check)
    invalidMovesMask = BattleSystem_CheckInvalidMoves(battleSys, battleCtx, battleCtx->attacker, invalidMovesMask, ~CHECK_INVALID_NO_PP);
    if (invalidMovesMask == STRUGGLING_ALL) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else {
        do {
            i = BattleSystem_RandNext(battleSys) % LEARNED_MOVES_MAX;
        } while (invalidMovesMask & FlagIndex(i));

        battleCtx->msgMoveTemp = ATTACKING_MON.moves[i];
    }

    return FALSE;
}

static const u8 sHPPixelsToFlailPower[][2] = {
    { 1, 200 },
    { 5, 150 },
    { 12, 100 },
    { 21, 80 },
    { 42, 40 },
    { 64, 20 },
};

/**
 * @brief Calculate the power for Flail-type moves according to the attacker's
 * current HP.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CalcFlailPower(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    int i, curHPPixels = App_PixelCount(ATTACKING_MON.curHP, ATTACKING_MON.maxHP, 64);
    for (i = 0; i < NELEMS(sHPPixelsToFlailPower); i++) {
        if (curHPPixels <= sHPPixelsToFlailPower[i][0]) {
            break;
        }
    }

    battleCtx->movePower = sHPPixelsToFlailPower[i][1];

    return FALSE;
}

/**
 * @brief Try to execute the Spite effect.
 *
 * Spite deducts up to 4 PP from the move that its target last used. This
 * command can fail if any of the following are true:
 * - The target does not actually know the move that it last used
 * - The target has no remaining PP for the move that it last used
 * - The target has yet to use a move
 *
 * Inputs:
 * 1. The distance to jump if the effect fails to execute.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TrySpite(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);

    if (DEFENDER_LAST_MOVE) {
        int moveSlot = Battler_SlotForMove(&DEFENDING_MON, DEFENDER_LAST_MOVE);
        if (moveSlot == LEARNED_MOVES_MAX || DEFENDING_MON.ppCur[moveSlot] == 0) {
            BattleScript_Iter(battleCtx, jumpOnFail);
        } else {
            int dec = 4;
            if (DEFENDING_MON.ppCur[moveSlot] < dec) {
                dec = DEFENDING_MON.ppCur[moveSlot];
            }

            battleCtx->msgMoveTemp = DEFENDER_LAST_MOVE;
            battleCtx->msgTemp = dec;
            DEFENDING_MON.ppCur[moveSlot] -= dec;

            BattleMon_CopyToParty(battleSys, battleCtx, battleCtx->defender);
        }
    } else {
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Try to clear the status of each party Pokemon.
 *
 * This command does not fail in the traditional sense; failure always occurs
 * silently, and will only occur for individual party Pokemon. CompareVarToValue the move using
 * this effect is Heal Bell, then it will fail for any party Pokemon with the
 * ability Soundproof.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryPartyStatusRefresh(BattleSystem *battleSys, BattleContext *battleCtx)
{
    u32 battleType = BattleSystem_BattleType(battleSys);
    BattleScript_Iter(battleCtx, 1);

    battleCtx->calcTemp = 0;
    if (battleCtx->moveCur == MOVE_HEAL_BELL) {
        battleCtx->msgMoveTemp = battleCtx->moveCur;

        if (Battler_Ability(battleCtx, battleCtx->attacker) != ABILITY_SOUNDPROOF) {
            ATTACKING_MON.status = MON_CONDITION_NONE;
            ATTACKING_MON.statusVolatile &= ~VOLATILE_CONDITION_NIGHTMARE;
        } else {
            battleCtx->calcTemp |= (SOUNDPROOF_SLOT_1 | NO_PARTNER_SLOT_1);
        }

        if (battleType & BATTLE_TYPE_DOUBLES) {
            int partner = BattleScript_Battler(battleSys, battleCtx, BTLSCR_ATTACKER_PARTNER);

            if ((battleCtx->battlersSwitchingMask & FlagIndex(partner)) == FALSE) {
                if (Battler_IgnorableAbility(battleCtx, battleCtx->attacker, partner, ABILITY_SOUNDPROOF) == FALSE) {
                    battleCtx->battleMons[partner].status = MON_CONDITION_NONE;
                    battleCtx->battleMons[partner].statusVolatile &= ~VOLATILE_CONDITION_NIGHTMARE;
                } else {
                    battleCtx->msgBattlerTemp = partner;
                    battleCtx->calcTemp |= (SOUNDPROOF_SLOT_2 | NO_PARTNER_SLOT_2);
                }
            }
        } else {
            battleCtx->calcTemp |= NO_PARTNER_SLOT_2;
        }
    } else {
        ATTACKING_MON.status = MON_CONDITION_NONE;
        ATTACKING_MON.statusVolatile &= ~VOLATILE_CONDITION_NIGHTMARE;

        if (battleType & BATTLE_TYPE_DOUBLES) {
            int partner = BattleScript_Battler(battleSys, battleCtx, BTLSCR_ATTACKER_PARTNER);

            if ((battleCtx->battlersSwitchingMask & FlagIndex(partner)) == FALSE) {
                battleCtx->battleMons[partner].status = MON_CONDITION_NONE;
                battleCtx->battleMons[partner].statusVolatile &= ~VOLATILE_CONDITION_NIGHTMARE;
            }
        } else {
            battleCtx->calcTemp |= NO_PARTNER_SLOT_2;
        }
    }

    BattleIO_RefreshPartyStatus(battleSys, battleCtx, battleCtx->attacker, battleCtx->moveCur);
    return FALSE;
}

/**
 * @brief Check if the target's held item can be stolen.
 *
 * Inputs:
 * 1. The distance to jump if the effect fails to execute.
 * 2. The distance to jump if the effect fails to execute specifically due to
 * the ability Sticky Hold.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryStealItem(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);
    int jumpStickyHold = BattleScript_Read(battleCtx);

    u32 battleType = BattleSystem_BattleType(battleSys);
    int attackingSide = Battler_Side(battleSys, battleCtx->attacker);

    if (Battler_Side(battleSys, battleCtx->attacker) && (battleType & BATTLE_TYPE_RESTORE_ITEMS_AFTER) == FALSE) {
        // AI trainers are unable to steal items outside of the Battle Frontier. PvP trainers can steal items.
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else if (battleCtx->sideConditions[attackingSide].knockedOffItemsMask & FlagIndex(battleCtx->selectedPartySlot[battleCtx->attacker])) {
        // The attacker has an item which has been suppressed.
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else if (Battler_Ability(battleCtx, battleCtx->attacker) == ABILITY_MULTITYPE || Battler_Ability(battleCtx, battleCtx->defender) == ABILITY_MULTITYPE) {
        // Either battler has Multitype.
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else if (DEFENDING_MON.heldItem == ITEM_GRISEOUS_ORB) {
        // The defender is holding a Griseous Orb.
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else if (DEFENDING_MON.moveEffectsData.custapBerry || DEFENDING_MON.moveEffectsData.quickClaw) {
        // The defender activated a Custap Berry or a Quick Claw this turn.
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else if (DEFENDING_MON.heldItem && Battler_IgnorableAbility(battleCtx, battleCtx->attacker, battleCtx->defender, ABILITY_STICKY_HOLD) == TRUE) {
        // The defender has a held item, but has the ability Sticky Hold.
        BattleScript_Iter(battleCtx, jumpStickyHold);
    } else if (ATTACKING_MON.heldItem || BattleSystem_CanStealItem(battleSys, battleCtx, battleCtx->defender) == FALSE) {
        // The attacker has an item, or the defender's item cannot be stolen.
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

static const u16 sProtectSuccessRate[] = {
    0xFFFF, // 100.0%
    0x7FFF, // ~50.0%
    0x3FFF, // ~25.0%
    0x1FFF, // ~12.5%
};

/**
 * @brief Try to execute the Protect or Endure effects.
 *
 * Inputs:
 * 1. The distance to jump if the effect fails to execute.
 *
 * Side effects:
 * - The prepared message buffer is updated with data necessary to print the
 * message appropriate for the used move.
 *
 * @param battleSys
 * @param battleCtx
 * @return BOOL
 */
static BOOL BtlCmd_TryProtection(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);

    if (battleCtx->moveProtect[battleCtx->attacker] != MOVE_PROTECT
        && battleCtx->moveProtect[battleCtx->attacker] != MOVE_DETECT
        && battleCtx->moveProtect[battleCtx->attacker] != MOVE_ENDURE) {
        battleCtx->battleMons[battleCtx->attacker].moveEffectsData.protectSuccessTurns = 0;
    }

    BOOL moreBattlersThisTurn;
    if (battleCtx->waitingBattlers == 1) {
        moreBattlersThisTurn = FALSE;
    } else {
        moreBattlersThisTurn = TRUE;
    }

    if (sProtectSuccessRate[ATTACKING_MON.moveEffectsData.protectSuccessTurns] >= BattleSystem_RandNext(battleSys)
        && moreBattlersThisTurn) {
        if (CURRENT_MOVE_DATA.effect == BATTLE_EFFECT_PROTECT) {
            ATTACKER_TURN_FLAGS.protecting = TRUE;
            battleCtx->msgBuffer.id = 282; // "{0} protected itself!"
        }

        if (CURRENT_MOVE_DATA.effect == BATTLE_EFFECT_SURVIVE_WITH_1_HP) {
            ATTACKER_TURN_FLAGS.enduring = TRUE;
            battleCtx->msgBuffer.id = 442; // "{0} braced itself!"
        }

        battleCtx->msgBuffer.tags = TAG_NICKNAME;
        battleCtx->msgBuffer.params[0] = BattleSystem_NicknameTag(battleCtx, battleCtx->attacker);

        if (ATTACKING_MON.moveEffectsData.protectSuccessTurns < NELEMS(sProtectSuccessRate) - 1) {
            ATTACKING_MON.moveEffectsData.protectSuccessTurns++;
        }
    } else {
        ATTACKING_MON.moveEffectsData.protectSuccessTurns = 0;
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Try to execute the Substitute effect, failing if the battler using
 * Substitute has insufficient HP.
 *
 * Inputs:
 * 1. The distance to jump if the effect fails to execute.
 *
 * Side effects:
 * - battleCtx->hpCalcTemp will be updated to the amount of HP to deduct from
 * the battler using Substitute.
 * - The attacker will have its effects data updated with the calculated
 * Substitute HP.
 * - The attacker will be freed from all binding effects.
 *
 * @param battleSys
 * @param battleCtx
 * @return BOOL
 */
static BOOL BtlCmd_TrySubstitute(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);
    int subHP = BattleSystem_Divide(ATTACKING_MON.maxHP, 4);

    if (ATTACKING_MON.curHP <= subHP) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else {
        battleCtx->hpCalcTemp = subHP * -1;
        ATTACKING_MON.moveEffectsData.substituteHP = subHP;
        ATTACKING_MON.statusVolatile &= ~VOLATILE_CONDITION_BIND;
    }

    return FALSE;
}

/**
 * @brief Try to execute the Whirlwind effect.
 *
 * This command does NOT check for any other effects which would prevent this
 * effect's execution, e.g. Suction Cups or Ingrain.
 *
 * Inputs:
 * 1. The distance to jump if the effect fails to execute.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryWhirlwind(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);
    u32 battleType = BattleSystem_BattleType(battleSys);

    if (battleType & BATTLE_TYPE_TRAINER) {
        Party *defenderParty;
        Pokemon *mon;
        int defenderPartyCount;
        int eligibleMons = 0, maxActiveMons, i, partyStart, partyEnd, max;
        int selectedSlot1, selectedSlot2;

        defenderParty = BattleSystem_Party(battleSys, battleCtx->defender);
        defenderPartyCount = BattleSystem_PartyCount(battleSys, battleCtx->defender);

        if ((battleType & BATTLE_TYPE_2vs2)
            || ((battleType & BATTLE_TYPE_TAG) && Battler_Side(battleSys, battleCtx->defender))) {
            // There are two battlers out at one time, but only one of these belongs to each trainer.
            partyStart = 0;
            partyEnd = defenderPartyCount;
            max = defenderPartyCount;
            maxActiveMons = 1;
            selectedSlot1 = battleCtx->selectedPartySlot[battleCtx->defender];
            selectedSlot2 = battleCtx->selectedPartySlot[battleCtx->defender];
        } else if (battleType & BATTLE_TYPE_DOUBLES) {
            // There are two battlers out at one time, and both belong to the same trainer.
            partyStart = 0;
            partyEnd = defenderPartyCount;
            max = defenderPartyCount;
            maxActiveMons = 2;
            selectedSlot1 = battleCtx->selectedPartySlot[battleCtx->defender];
            selectedSlot2 = battleCtx->selectedPartySlot[BattleSystem_Partner(battleSys, battleCtx->defender)];
        } else {
            // There is only one active battler (singles).
            partyStart = 0;
            partyEnd = defenderPartyCount;
            max = defenderPartyCount;
            maxActiveMons = 1;
            selectedSlot1 = battleCtx->selectedPartySlot[battleCtx->defender];
            selectedSlot2 = battleCtx->selectedPartySlot[battleCtx->defender];
        }

        // Count the number of eligible mons in the party.
        for (i = partyStart; i < partyEnd; i++) {
            mon = Party_GetPokemonBySlotIndex(defenderParty, i);

            if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL)
                && Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE
                && Pokemon_GetValue(mon, MON_DATA_HP, NULL)) {
                eligibleMons++;
            }
        }

        // Check if there are more eligible mons in the back of the party.
        if (eligibleMons <= maxActiveMons) {
            BattleScript_Iter(battleCtx, jumpOnFail);
        } else if (BattleSystem_CanWhirlwind(battleSys, battleCtx)) {
            // Pick a random eligible mon from the back of the party.
            do {
                do {
                    i = BattleSystem_RandNext(battleSys) % max;
                    i += partyStart;
                } while (i == selectedSlot1 || i == selectedSlot2);

                mon = Party_GetPokemonBySlotIndex(defenderParty, i);
            } while (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL) == SPECIES_NONE
                || Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == TRUE
                || Pokemon_GetValue(mon, MON_DATA_HP, NULL) == 0);

            battleCtx->switchedPartySlot[battleCtx->defender] = i;
        } else {
            // We failed the random Whirlwind check.
            BattleScript_Iter(battleCtx, jumpOnFail);
        }
    } else if (BattleSystem_CanWhirlwind(battleSys, battleCtx) == FALSE) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Transform the attacker into its target.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_Transform(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    ATTACKING_MON.statusVolatile |= VOLATILE_CONDITION_TRANSFORM;
    ATTACKING_MON.moveEffectsData.disabledMove = MOVE_NONE;
    ATTACKING_MON.moveEffectsData.disabledTurns = 0;
    ATTACKING_MON.moveEffectsData.transformedPID = DEFENDING_MON.personality;
    ATTACKING_MON.moveEffectsData.transformedGender = DEFENDING_MON.gender;
    ATTACKING_MON.moveEffectsData.mimickedMoveSlot = 0;
    ATTACKING_MON.moveEffectsData.lastResortCount = 0;

    u8 *attackerData = (u8 *)&ATTACKING_MON;
    u8 *defenderData = (u8 *)&DEFENDING_MON;

    int i; // does not match if this is declared outside the individual loops' scopes
    for (i = 0; i < XtOffset(BattleMon *, ability) + 1; i++) {
        attackerData[i] = defenderData[i];
    }

    ATTACKING_MON.weatherAbilityAnnounced = FALSE;
    ATTACKING_MON.intimidateAnnounced = FALSE;
    ATTACKING_MON.traceAnnounced = FALSE;
    ATTACKING_MON.downloadAnnounced = FALSE;
    ATTACKING_MON.anticipationAnnounced = FALSE;
    ATTACKING_MON.forewarnAnnounced = FALSE;
    ATTACKING_MON.friskAnnounced = FALSE;
    ATTACKING_MON.moldBreakerAnnounced = FALSE;
    ATTACKING_MON.pressureAnnounced = FALSE;
    ATTACKING_MON.moveEffectsData.truant = battleCtx->totalTurns & 1;
    ATTACKING_MON.moveEffectsData.slowStartTurnNumber = battleCtx->totalTurns + 1;
    ATTACKING_MON.slowStartAnnounced = FALSE;
    ATTACKING_MON.slowStartFinished = FALSE;

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (MOVE_DATA(ATTACKING_MON.moves[i]).pp < 5) {
            ATTACKING_MON.ppCur[i] = MOVE_DATA(ATTACKING_MON.moves[i]).pp;
        } else {
            ATTACKING_MON.ppCur[i] = 5;
        }
    }

    return FALSE;
}

/**
 * @brief Try to execute the Spikes effect.
 *
 * CompareVarToValue the defending side already has 3 layers of Spikes, then this command
 * will fail.
 *
 * Inputs:
 * 1. The distance to jump if the effect fails to execute.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TrySpikes(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);
    int defendingSide = Battler_Side(battleSys, battleCtx->attacker) ^ 1;

    if (battleCtx->sideConditions[defendingSide].spikesLayers == 3) {
        battleCtx->selfTurnFlags[battleCtx->attacker].skipPressureCheck = TRUE;
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else {
        battleCtx->sideConditionsMask[defendingSide] |= SIDE_CONDITION_SPIKES;
        battleCtx->sideConditions[defendingSide].spikesLayers++;
    }

    return FALSE;
}

/**
 * @brief Check for the Spikes effect on the given battler.
 *
 * Battlers suffering from the Spikes effect will take damage equal to a
 * percentage of their maximum HP, determined by the number of layers of Spikes
 * active on their side of the battlefield:
 * - 1 layer  -> 1/8 max HP
 * - 2 layers -> 1/6 max HP
 * - 3 layers -> 1/4 max HP
 *
 * This command will NOT check for an immunity to Spikes damage.
 *
 * Inputs:
 * 1. The battler who should take Spikes damage.
 * 2. The distance to jump if there is no Spikes damage to take.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CheckSpikes(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int jumpOnFail = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    int side = Battler_Side(battleSys, battler);

    if (battleCtx->sideConditions[side].spikesLayers && battleCtx->battleMons[battler].curHP) {
        battleCtx->hpCalcTemp = (5 - battleCtx->sideConditions[side].spikesLayers) * 2;
        battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[battler].maxHP * -1, battleCtx->hpCalcTemp);
    } else {
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Try to execute the Perish Song effect.
 *
 * This command will loop over all active battlers and attempt to apply Perish
 * Song to each of them, setting their "perish count" to 3 turns. It will not
 * reset the perish count for any of these active battlers, nor will it affect
 * any battler with Soundproof.
 *
 * CompareVarToValue there are no active battlers which could be affected and do not have an
 * active perish count, then this command will fail.
 *
 * Inputs:
 * 1. The distance to jump if the effect fails to execute.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryPerishSong(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);

    battleCtx->calcTemp = maxBattlers;

    int ineligibleBattlers = 0;
    for (int i = 0; i < maxBattlers; i++) {
        if ((battleCtx->battleMons[i].moveEffectsMask & MOVE_EFFECT_PERISH_SONG)
            || battleCtx->battleMons[i].curHP == 0
            || Battler_IgnorableAbility(battleCtx, battleCtx->attacker, i, ABILITY_SOUNDPROOF) == TRUE) {
            ineligibleBattlers++;
        } else {
            battleCtx->battleMons[i].moveEffectsMask |= MOVE_EFFECT_PERISH_SONG;
            battleCtx->battleMons[i].moveEffectsData.perishSongTurns = 3;
        }
    }

    if (ineligibleBattlers == maxBattlers) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Gets the next battler according to speed order and stores the result
 * into the specified variable.
 *
 * The "next battler" is defined by battleCtx->battlerSpeedTemp, which stores
 * an index into the battleCtx->monSpeedOrder array.
 *
 * Inputs:
 * 1. The destination variable.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_GetMonBySpeedOrder(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int dstVar = BattleScript_Read(battleCtx);

    u32 *var = BattleScript_VarAddress(battleSys, battleCtx, dstVar);
    *var = battleCtx->monSpeedOrder[battleCtx->battlerSpeedTemp];

    return FALSE;
}

/**
 * @brief Checks if the value in a given variable is a valid battler ID and, if
 * so, jumps the specified distance.
 *
 * Inputs:
 * 1. The source variable whose value should be checked.
 * 2. The distance to jump if the variable's value is a valid battler ID.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_GoToIfValidMon(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int srcVar = BattleScript_Read(battleCtx);
    int jump = BattleScript_Read(battleCtx);

    u32 *var = BattleScript_VarAddress(battleSys, battleCtx, srcVar);
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);

    if (*var < maxBattlers) {
        BattleScript_Iter(battleCtx, jump);
    }

    return FALSE;
}

/**
 * @brief Determines the appropriate end-of-turn weather effect to apply and
 * sets up state variables with the relevant data for that effect.
 *
 * Inputs:
 * 1. The battler for whom to apply any end-of-turn weather effects.
 *
 * Side effects:
 * - battleCtx->hpCalcTemp will be updated with the (signed) amount of HP to
 * add to an affected battler's current HP.
 * - CompareVarToValue the effect to apply is due to Solar Power or Hydration, then
 * battleCtx->scriptTemp will be updated with an appropriate identifier.
 * - CompareVarToValue the effect to apply is due to Hydration, then battleCtx->msgTemp will
 * be updated with the condition to be restored.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_EndOfTurnWeatherEffect(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);

    battleCtx->scriptTemp = 0;
    battleCtx->hpCalcTemp = 0;

    int type1 = BattleMon_Get(battleCtx, battler, BATTLEMON_TYPE_1, NULL);
    int type2 = BattleMon_Get(battleCtx, battler, BATTLEMON_TYPE_2, NULL);

    if (NO_CLOUD_NINE) {
        if (WEATHER_IS_SAND
            && type1 != TYPE_ROCK && type2 != TYPE_ROCK
            && type1 != TYPE_STEEL && type2 != TYPE_STEEL
            && type1 != TYPE_GROUND && type2 != TYPE_GROUND
            && battleCtx->battleMons[battler].curHP
            && Battler_Ability(battleCtx, battler) != ABILITY_SAND_VEIL
            && (battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_NO_WEATHER_DAMAGE) == FALSE) {
            battleCtx->msgMoveTemp = MOVE_SANDSTORM;
            battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[battler].maxHP * -1, 16);
        }

        if (WEATHER_IS_SUN
            && battleCtx->battleMons[battler].curHP
            && (battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_NO_WEATHER_DAMAGE) == FALSE) {
            if (Battler_Ability(battleCtx, battler) == ABILITY_DRY_SKIN
                || Battler_Ability(battleCtx, battler) == ABILITY_SOLAR_POWER) {
                battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[battler].maxHP * -1, 8);
            }

            if (Battler_Ability(battleCtx, battler) == ABILITY_SOLAR_POWER) {
                battleCtx->scriptTemp = WEATHER_EFFECT_SOLAR_POWER;
            }
        }

        if (WEATHER_IS_HAIL
            && battleCtx->battleMons[battler].curHP
            && (battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_NO_WEATHER_DAMAGE) == FALSE) {
            if (Battler_Ability(battleCtx, battler) == ABILITY_ICE_BODY) {
                if (battleCtx->battleMons[battler].curHP < battleCtx->battleMons[battler].maxHP) {
                    battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[battler].maxHP, 16);
                }
            } else if (type1 != TYPE_ICE
                && type2 != TYPE_ICE
                && Battler_Ability(battleCtx, battler) != ABILITY_SNOW_CLOAK) {
                battleCtx->msgMoveTemp = MOVE_HAIL;
                battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[battler].maxHP * -1, 16);
            }
        }

        if (WEATHER_IS_RAIN) {
            if (battleCtx->battleMons[battler].curHP
                && battleCtx->battleMons[battler].curHP < battleCtx->battleMons[battler].maxHP
                && Battler_Ability(battleCtx, battler) == ABILITY_RAIN_DISH) {
                battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[battler].maxHP, 16);
            }

            if (battleCtx->battleMons[battler].curHP
                && battleCtx->battleMons[battler].curHP < battleCtx->battleMons[battler].maxHP
                && Battler_Ability(battleCtx, battler) == ABILITY_DRY_SKIN) {
                battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[battler].maxHP, 8);
            }

            if (battleCtx->battleMons[battler].curHP
                && (battleCtx->battleMons[battler].status & MON_CONDITION_ANY)
                && Battler_Ability(battleCtx, battler) == ABILITY_HYDRATION) {
                if (battleCtx->battleMons[battler].status & MON_CONDITION_SLEEP) {
                    battleCtx->msgTemp = MSGCOND_SLEEP;
                } else if (battleCtx->battleMons[battler].status & MON_CONDITION_ANY_POISON) {
                    battleCtx->msgTemp = MSGCOND_POISON;
                } else if (battleCtx->battleMons[battler].status & MON_CONDITION_BURN) {
                    battleCtx->msgTemp = MSGCOND_BURN;
                } else if (battleCtx->battleMons[battler].status & MON_CONDITION_PARALYSIS) {
                    battleCtx->msgTemp = MSGCOND_PARALYSIS;
                } else {
                    battleCtx->msgTemp = MSGCOND_FREEZE;
                }

                battleCtx->scriptTemp = WEATHER_EFFECT_HYDRATION;
            }
        }
    }

    return FALSE;
}

/**
 * @brief Calculate the base power for Rollout.
 *
 * Compute the following: rolloutBasePower * 2^(pastRolloutTurns)
 *
 * This command will also handle locking and unlocking the attacker's move
 * choice, as needed.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CalcRolloutPower(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    ATTACKER_SELF_TURN_FLAGS.repeatedMoveCount = ATTACKING_MON.moveEffectsData.rolloutCount;

    if ((ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_MOVE_LOCKED) == FALSE) {
        Battler_LockMoveChoice(battleSys, battleCtx, battleCtx->attacker);
        ATTACKING_MON.moveEffectsData.rolloutCount = 5;
    }

    if (--ATTACKING_MON.moveEffectsData.rolloutCount == 0) {
        Battler_UnlockMoveChoice(battleSys, battleCtx, battleCtx->attacker);
    }

    battleCtx->movePower = CURRENT_MOVE_DATA.power;

    // must declare i first to match (regswap)
    int i, exponent = 5 - ATTACKING_MON.moveEffectsData.rolloutCount;
    for (i = 1; i < exponent; i++) {
        battleCtx->movePower *= 2;
    }

    if (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_DEFENSE_CURL) {
        battleCtx->movePower *= 2;
    }

    return FALSE;
}

/**
 * @brief Calculate the base power for Fury Cutter.
 *
 * Compute the following: furyCutterBasePower * 2^(min(pastFuryCutterTurns, 5))
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CalcFuryCutterPower(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    if (ATTACKING_MON.moveEffectsData.furyCutterCount < 5) {
        ATTACKING_MON.moveEffectsData.furyCutterCount++;
    }

    battleCtx->movePower = CURRENT_MOVE_DATA.power;

    for (int i = 1; i < ATTACKING_MON.moveEffectsData.furyCutterCount; i++) {
        battleCtx->movePower *= 2;
    }

    return FALSE;
}

/**
 * @brief Try to inflict infatuation on the target.
 *
 * Inputs:
 * 1. The distance to jump if infatuation cannot be inflicted.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryAttract(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);

    if (battleCtx->battleMons[battleCtx->msgBattlerTemp].gender == battleCtx->battleMons[battleCtx->sideEffectMon].gender
        || battleCtx->battleMons[battleCtx->sideEffectMon].statusVolatile & VOLATILE_CONDITION_ATTRACT
        || battleCtx->battleMons[battleCtx->msgBattlerTemp].gender == GENDER_NONE
        || battleCtx->battleMons[battleCtx->sideEffectMon].gender == GENDER_NONE) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else {
        battleCtx->battleMons[battleCtx->sideEffectMon].statusVolatile |= FlagIndex(battleCtx->msgBattlerTemp) << VOLATILE_CONDITION_ATTRACT_SHIFT;
    }

    return FALSE;
}

/**
 * @brief Try to apply Safeguard to the user's side of the field.
 *
 * Inputs:
 * 1. The distance to jump if Safeguard is already active for the user's side.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TrySafeguard(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);
    int side = Battler_Side(battleSys, battleCtx->attacker);

    if (battleCtx->sideConditionsMask[side] & SIDE_CONDITION_SAFEGUARD) {
        BattleScript_Iter(battleCtx, jumpOnFail);
        battleCtx->moveStatusFlags |= MOVE_STATUS_FAILED;
    } else {
        battleCtx->sideConditionsMask[side] |= SIDE_CONDITION_SAFEGUARD;
        battleCtx->sideConditions[side].safeguardTurns = 5;
        battleCtx->sideConditions[side].safeguardUser = battleCtx->attacker;
        battleCtx->msgBuffer.tags = TAG_NONE_SIDE_CONSCIOUS;
        battleCtx->msgBuffer.params[0] = battleCtx->attacker;
        battleCtx->msgBuffer.id = 198; // "[Your/The foe's] team became cloaked in a mystical veil!"
    }

    return FALSE;
}

/**
 * @brief Try to execute Present.
 *
 * This command will roll for the function of Present (either a damaging move
 * or one that heals its target) and also for the base power, if it is determined
 * to be a damaging move.
 *
 * Inputs:
 * 1. The distance to jump if Present is rolled to be a healing move.
 *
 * @param battleSys
 * @param battleCtx
 * @return BOOL
 */
static BOOL BtlCmd_Present(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpIfHeal = BattleScript_Read(battleCtx);
    int rnd = BattleSystem_RandNext(battleSys) & 0xFF;

    if (rnd < (255 * 40 / 100)) {
        battleCtx->movePower = 40;
    } else if (rnd < (255 * 70 / 100)) {
        battleCtx->movePower = 80;
    } else if (rnd < (255 * 80 / 100)) {
        battleCtx->movePower = 120;
    } else {
        battleCtx->hpCalcTemp = BattleSystem_Divide(DEFENDING_MON.maxHP, 4);
        BattleScript_Iter(battleCtx, jumpIfHeal);
    }

    return FALSE;
}

/**
 * @brief Calculate the base power for Magnitude.
 *
 * Side effects:
 * - battleCtx->magnitude will be updated to be the level of Magnitude, falling
 * within the range [4, 10].
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CalcMagnitudePower(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    if (battleCtx->magnitude == 0) {
        battleCtx->magnitude = BattleSystem_RandNext(battleSys) % 100;

        if (battleCtx->magnitude < 5) {
            battleCtx->movePower = 10;
            battleCtx->magnitude = 4;
        } else if (battleCtx->magnitude < 15) {
            battleCtx->movePower = 30;
            battleCtx->magnitude = 5;
        } else if (battleCtx->magnitude < 35) {
            battleCtx->movePower = 50;
            battleCtx->magnitude = 6;
        } else if (battleCtx->magnitude < 65) {
            battleCtx->movePower = 70;
            battleCtx->magnitude = 7;
        } else if (battleCtx->magnitude < 85) {
            battleCtx->movePower = 90;
            battleCtx->magnitude = 8;
        } else if (battleCtx->magnitude < 95) {
            battleCtx->movePower = 110;
            battleCtx->magnitude = 9;
        } else {
            battleCtx->movePower = 150;
            battleCtx->magnitude = 10;
        }
    }

    battleCtx->msgTemp = battleCtx->magnitude;
    return FALSE;
}

/**
 * @brief Try to issue a battler replacement.
 *
 * Inputs:
 * 1. The battler to be replaced.
 * 2. A flag requesting for the party list to be opened, if TRUE.
 * 3. The distance to jump if there are no possible replacement party members.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryReplaceFaintedMon(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    BOOL openPartyList = BattleScript_Read(battleCtx);
    int jumpOnFail = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);

    if (BattleSystem_AnyReplacementMons(battleSys, battleCtx, battler) == FALSE) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else if (openPartyList == TRUE) {
        battleCtx->battlerStatusFlags[battler] |= BATTLER_STATUS_SWITCHING;
    }

    return FALSE;
}

/**
 * @brief Frees the user from trapping effects and Leech Seed and removes the
 * effects of entry-hazards from the user's side of the field.
 *
 * This command will not iterate the sequence pointer until all such effects
 * have been removed. Effects will always be removed in the following order:
 * 1. Trapping effects (Bind, Clamp, etc.)
 * 2. Leech Seed
 * 3. Spikes
 * 4. Toxic Spikes
 * 5. Stealth Rock
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_RapidSpin(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int side = Battler_Side(battleSys, battleCtx->attacker);

    if (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_BIND) {
        ATTACKING_MON.statusVolatile &= ~VOLATILE_CONDITION_BIND;
        battleCtx->msgBattlerTemp = ATTACKING_MON.moveEffectsData.bindTarget;
        battleCtx->msgMoveTemp = ATTACKING_MON.moveEffectsData.bindingMove;
        BattleScript_Call(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, subscript_break_bind_effect);

        return FALSE;
    }

    if (ATTACKING_MON.moveEffectsMask & MOVE_EFFECT_LEECH_SEED) {
        ATTACKING_MON.moveEffectsMask &= ~MOVE_EFFECT_LEECH_SEED;
        ATTACKING_MON.moveEffectsMask &= ~MOVE_EFFECT_LEECH_SEED_RECIPIENT;
        battleCtx->msgMoveTemp = MOVE_LEECH_SEED;
        BattleScript_Call(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, subscript_blow_away_hazards);

        return FALSE;
    }

    if (battleCtx->sideConditions[side].spikesLayers) {
        battleCtx->sideConditionsMask[side] &= ~SIDE_CONDITION_SPIKES;
        battleCtx->sideConditions[side].spikesLayers = 0;
        battleCtx->msgMoveTemp = MOVE_SPIKES;
        BattleScript_Call(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, subscript_blow_away_hazards);

        return FALSE;
    }

    if (battleCtx->sideConditions[side].toxicSpikesLayers) {
        battleCtx->sideConditionsMask[side] &= ~SIDE_CONDITION_TOXIC_SPIKES;
        battleCtx->sideConditions[side].toxicSpikesLayers = 0;
        battleCtx->msgMoveTemp = MOVE_TOXIC_SPIKES;

        BattleScript_Call(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, subscript_blow_away_hazards);

        return FALSE;
    }

    if (battleCtx->sideConditionsMask[side] & SIDE_CONDITION_STEALTH_ROCK) {
        battleCtx->sideConditionsMask[side] &= ~SIDE_CONDITION_STEALTH_ROCK;
        battleCtx->msgMoveTemp = MOVE_STEALTH_ROCK;
        BattleScript_Call(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, subscript_blow_away_hazards);

        return FALSE;
    }

    BattleScript_Iter(battleCtx, 1);

    return FALSE;
}

/**
 * @brief Recover HP using a weather-based move.
 *
 * - CompareVarToValue no weather is active, recovery is equal to 1/2 of the user's maximum HP.
 * - CompareVarToValue the weather is sun, recovery is equal to 2/3 of the user's maximum HP.
 * - CompareVarToValue any other weather is active, recovery is equal to 1/4 of the user's maximum HP.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_WeatherHPRecovery(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    if (NO_WEATHER) {
        battleCtx->hpCalcTemp = ATTACKING_MON.maxHP / 2;
    } else if (WEATHER_IS_SUN) {
        battleCtx->hpCalcTemp = BattleSystem_Divide(ATTACKING_MON.maxHP * 20, 30);
    } else {
        battleCtx->hpCalcTemp = BattleSystem_Divide(ATTACKING_MON.maxHP, 4);
    }

    return FALSE;
}

/**
 * @brief Calculate the base power and type of Hidden Power.
 *
 * The base power of Hidden Power is calculated by the following formula:
 *
 *     (u + 2v + 4w + 8x + 16y + 32z) * 40
 *     ----------------------------------- + 30
 *                     63
 *
 * Where u, v, w, x, y, and z are the second-least-significant bits of the HP,
 * Attack, Defense, Speed, Special Attack, and Special Defense IVs, respectively.
 *
 * The type of Hidden Power is calculated by the following formula:
 *
 *     (a + 2b + 4c + 8d + 16e + 32f) * 15
 *     -----------------------------------
 *                     63
 *
 * Where a, b, c, d, e, and f are the least-significant bits of the HP, Attack,
 * Defense, Speed, Special Attack, and Special Defense IVs, respectively. The
 * result is then mapped to a type using the standard definitions.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CalcHiddenPowerParams(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    battleCtx->movePower = ((ATTACKING_MON.hpIV & 2) >> 1)
        | (ATTACKING_MON.attackIV & 2)
        | ((ATTACKING_MON.defenseIV & 2) << 1)
        | ((ATTACKING_MON.speedIV & 2) << 2)
        | ((ATTACKING_MON.spAttackIV & 2) << 3)
        | ((ATTACKING_MON.spDefenseIV & 2) << 4);

    battleCtx->moveType = (ATTACKING_MON.hpIV & 1)
        | ((ATTACKING_MON.attackIV & 1) << 1)
        | ((ATTACKING_MON.defenseIV & 1) << 2)
        | ((ATTACKING_MON.speedIV & 1) << 3)
        | ((ATTACKING_MON.spAttackIV & 1) << 4)
        | ((ATTACKING_MON.spDefenseIV & 1) << 5);

    battleCtx->movePower = battleCtx->movePower * 40 / 63 + 30;
    battleCtx->moveType = battleCtx->moveType * 15 / 63 + 1;

    if (battleCtx->moveType >= TYPE_MYSTERY) {
        battleCtx->moveType++;
    }

    return FALSE;
}

/**
 * @brief Copies the target's stat stages and any Focus Energy state.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CopyStatStages(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    for (int i = BATTLE_STAT_HP; i < BATTLE_STAT_MAX; i++) {
        ATTACKING_MON.statBoosts[i] = DEFENDING_MON.statBoosts[i];
    }

    ATTACKING_MON.statusVolatile |= (DEFENDING_MON.statusVolatile & VOLATILE_CONDITION_FOCUS_ENERGY);

    return FALSE;
}

/**
 * @brief Try to set up Future Sight.
 *
 * Inputs:
 * 1. The distance to jump if there is already a Future Sight effect in-wait.
 *
 * @param battleSys
 * @param battleCtx
 * @return BOOL
 */
static BOOL BtlCmd_TryFutureSight(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);

    if (battleCtx->fieldConditions.futureSightTurns[battleCtx->defender] == 0) {
        int side = Battler_Side(battleSys, battleCtx->defender);
        battleCtx->sideConditionsMask[side] |= SIDE_CONDITION_FUTURE_SIGHT;
        battleCtx->fieldConditions.futureSightTurns[battleCtx->defender] = 3;
        battleCtx->fieldConditions.futureSightMove[battleCtx->defender] = battleCtx->moveCur;
        battleCtx->fieldConditions.futureSightAttacker[battleCtx->defender] = battleCtx->attacker;

        // Calculate the damage at the time of Future Sight setup.
        // Do not check for type effectiveness nor crits.
        int damage = BattleSystem_CalcMoveDamage(battleSys,
                         battleCtx,
                         battleCtx->moveCur,
                         battleCtx->sideConditionsMask[side],
                         battleCtx->fieldConditionsMask,
                         0,
                         0,
                         battleCtx->attacker,
                         battleCtx->defender,
                         1)
            * -1;
        battleCtx->fieldConditions.futureSightDamage[battleCtx->defender] = BattleSystem_CalcDamageVariance(battleSys, battleCtx, damage);

        if (ATTACKER_TURN_FLAGS.helpingHand) {
            battleCtx->fieldConditions.futureSightDamage[battleCtx->defender] = battleCtx->fieldConditions.futureSightDamage[battleCtx->defender] * 15 / 10;
        }
    } else {
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Check if a move hits its target.
 *
 * Inputs:
 * 1. The attacking battler
 * 2. The defending battler
 * 3. The source of the move
 * 4. The distance to jump if the move did not connect
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CheckMoveHit(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inAttacker = BattleScript_Read(battleCtx);
    int inDefender = BattleScript_Read(battleCtx);
    int inMoveSrc = BattleScript_Read(battleCtx);
    int jumpOnMiss = BattleScript_Read(battleCtx);

    int attacker = BattleScript_Battler(battleSys, battleCtx, inAttacker);
    int defender = BattleScript_Battler(battleSys, battleCtx, inDefender);
    int move = BattleMessage_MoveTag(battleCtx, inMoveSrc);

    BattleController_CheckMoveHit(battleSys, battleCtx, attacker, defender, move);
    if (battleCtx->moveStatusFlags & MOVE_STATUS_DID_NOT_HIT) {
        BattleScript_Iter(battleCtx, jumpOnMiss);
    }

    return FALSE;
}

/**
 * @brief Check if the user can Teleport away.
 *
 * Inputs:
 * 1. The distance to jump if the user is trapped for whatever reason.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryTeleport(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpIfTrapped = BattleScript_Read(battleCtx);

    if (Battler_IsTrappedMsg(battleSys, battleCtx, battleCtx->attacker, NULL)) {
        BattleScript_Iter(battleCtx, jumpIfTrapped);
    }

    return FALSE;
}

static inline BOOL BeatUpEligibleMon(BattleContext *battleCtx, Pokemon *mon)
{
    return battleCtx->beatUpCounter == battleCtx->selectedPartySlot[battleCtx->attacker]
        || (Pokemon_GetValue(mon, MON_DATA_HP, NULL) != 0
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG
            && Pokemon_GetValue(mon, MON_DATA_STATUS, NULL) == MON_CONDITION_NONE);
}

/**
 * @brief Calculate the damage for a single hit of Beat Up.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_BeatUp(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int partyCount;
    int species;
    int form;
    int level;
    Pokemon *mon;

    BattleScript_Iter(battleCtx, 1);

    partyCount = BattleSystem_PartyCount(battleSys, battleCtx->attacker);

    if (battleCtx->multiHitNumHits == 0) {
        battleCtx->multiHitNumHits = 2; // not actually used, just set to make multi-hit stuff work
        battleCtx->multiHitAccuracyCheck = SYSCTL_MULTI_HIT_MOVE;
        battleCtx->beatUpCounter = 0;

        while (TRUE) {
            // Find the next mon to deal Beat Up damage
            mon = BattleSystem_PartyPokemon(battleSys, battleCtx->attacker, battleCtx->beatUpCounter);
            if (BeatUpEligibleMon(battleCtx, mon)) {
                break;
            }

            battleCtx->beatUpCounter++;
        }
    }

    mon = BattleSystem_PartyPokemon(battleSys, battleCtx->attacker, battleCtx->beatUpCounter);
    species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);
    level = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);

    battleCtx->damage = SpeciesData_GetFormValue(species, form, SPECIES_DATA_BASE_ATK);
    battleCtx->damage *= CURRENT_MOVE_DATA.power;
    battleCtx->damage *= ((level * 2 / 5) + 2);
    battleCtx->damage /= SpeciesData_GetFormValue(DEFENDING_MON.species, DEFENDING_MON.formNum, SPECIES_DATA_BASE_DEF);
    battleCtx->damage /= 50;
    battleCtx->damage += 2;
    battleCtx->damage *= battleCtx->criticalMul;

    if (battleCtx->turnFlags[battleCtx->attacker].helpingHand) {
        battleCtx->damage = battleCtx->damage * 15 / 10;
    }

    battleCtx->damage = BattleSystem_CalcDamageVariance(battleSys, battleCtx, battleCtx->damage);
    battleCtx->damage *= -1;

    battleCtx->msgBuffer.id = 481; // "{0}'s attack!"
    battleCtx->msgBuffer.tags = TAG_NICKNAME;
    battleCtx->msgBuffer.params[0] = (battleCtx->attacker | (battleCtx->beatUpCounter << 8));

    battleCtx->beatUpCounter++;
    battleCtx->multiHitCounter = 2;

    // Check if there are more eligible mons in the back to attack
    if (battleCtx->beatUpCounter < partyCount) {
        while (TRUE) {
            mon = BattleSystem_PartyPokemon(battleSys, battleCtx->attacker, battleCtx->beatUpCounter);
            if (BeatUpEligibleMon(battleCtx, mon)) {
                break;
            }

            battleCtx->beatUpCounter++;

            if (battleCtx->beatUpCounter >= partyCount) {
                battleCtx->multiHitCounter = 1;
                break;
            }
        }
    } else {
        battleCtx->multiHitCounter = 1;
    }

    return FALSE;
}

/**
 * @brief Set up Follow Me for the attacking side.
 *
 * Side effects:
 * 1. The followMe flag for the user's side will be set to TRUE.
 * 2. The followMeUser value for the user's side will be set to the user's ID.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_FollowMe(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    int side = Battler_Side(battleSys, battleCtx->attacker);
    battleCtx->sideConditions[side].followMe = TRUE;
    FOLLOW_ME_USER(side) = battleCtx->attacker;

    return FALSE;
}

/**
 * @brief Try to set up Helping Hand on the user's side.
 *
 * This command will fail if any of the following are true:
 * - The battle is not a double-battle
 * - The user's partner already moved this turn (including switching)
 * - The user's partner has fainted
 * - The user is already under the effect of Helping Hand from their partner
 *
 * Inputs:
 * 1. The distance to jump if the effect fails to execute
 *
 * Side effects:
 * - The Helping Hand flag for the user's partner will be flipped to TRUE
 *
 * @param battleSys
 * @param battleCtx
 * @return BOOL
 */
static BOOL BtlCmd_TryHelpingHand(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);
    int battleType = BattleSystem_BattleType(battleSys);

    if (battleType & BATTLE_TYPE_DOUBLES) {
        int partner = BattleScript_Battler(battleSys, battleCtx, BTLSCR_ATTACKER_PARTNER);
        if ((battleCtx->battlersSwitchingMask & FlagIndex(partner)) == FALSE
            && battleCtx->battlerActions[partner][BATTLE_ACTION_PICK_COMMAND] != BATTLE_CONTROL_MOVE_END
            && battleCtx->battleMons[partner].curHP
            && ATTACKER_TURN_FLAGS.helpingHand == FALSE
            && battleCtx->turnFlags[partner].helpingHand == FALSE) {
            battleCtx->msgBattlerTemp = partner;
            battleCtx->turnFlags[partner].helpingHand = TRUE;
        } else {
            BattleScript_Iter(battleCtx, jumpOnFail);
        }
    } else {
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Check if the attacker and defender can swap their items.
 *
 * This command will fail if any of the following are true:
 * - The attacker is an AI trainer outside of the Battle Frontier
 * - Either the attacker or defender have had their held items disabled by
 * Knock Off
 * - Neither the attacker nor defender are holding an item
 * - Either the attacker or defender are holding Mail
 * - The defender has Sticky Hold, and the attacker does not have Mold
 * Breaker
 *
 * Inputs:
 * 1. The distance to jump if the effect fails to execute
 * 2. The distance to jump if the defender has Sticky Hold
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TrySwapItems(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);
    int jumpStickyHold = BattleScript_Read(battleCtx);

    u32 battleType = BattleSystem_BattleType(battleSys);
    int attacking = Battler_Side(battleSys, battleCtx->attacker);
    int defending = Battler_Side(battleSys, battleCtx->defender);

    if (Battler_Side(battleSys, battleCtx->attacker) && (battleType & BATTLE_TYPE_RESTORE_ITEMS_AFTER) == FALSE) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else if ((battleCtx->sideConditions[attacking].knockedOffItemsMask & FlagIndex(battleCtx->selectedPartySlot[battleCtx->attacker]))
        || (battleCtx->sideConditions[defending].knockedOffItemsMask & FlagIndex(battleCtx->selectedPartySlot[battleCtx->defender]))) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else if ((ATTACKING_MON.heldItem == ITEM_NONE && DEFENDING_MON.heldItem == ITEM_NONE)
        || BattleSystem_NotHoldingMail(battleCtx, battleCtx->attacker) == FALSE
        || BattleSystem_NotHoldingMail(battleCtx, battleCtx->defender) == FALSE) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else if (Battler_IgnorableAbility(battleCtx, battleCtx->attacker, battleCtx->defender, ABILITY_STICKY_HOLD) == TRUE) {
        BattleScript_Iter(battleCtx, jumpStickyHold);
    }

    return FALSE;
}

/**
 * @brief Try to setup Wish on the user's side of the field.
 *
 * Inputs:
 * 1. The distance to jump if Wish is already active on the user's side of
 * the field.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryWish(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);

    if (battleCtx->fieldConditions.wishTurns[battleCtx->attacker]) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else {
        battleCtx->fieldConditions.wishTurns[battleCtx->attacker] = 2;
        battleCtx->fieldConditions.wishTarget[battleCtx->attacker] = battleCtx->selectedPartySlot[battleCtx->attacker];
    }

    return FALSE;
}

/**
 * @brief Try to execute Assist.
 *
 * Assist will pick a random move from among those known by the attacking mon's
 * party members, only considering moves which are not of the invoker-class
 * and could be invoked by a Metronome effect.
 *
 * Inputs:
 * 1. The distance to jump if there are no eligible moves
 *
 * Side effects:
 * - battleCtx->msgMoveTemp will be set to the chosen move to invoke
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryAssist(BattleSystem *battleSys, BattleContext *battleCtx)
{
    // must declare C89-style to match
    int jumpOnFail;
    u16 moves[MAX_PARTY_SIZE * LEARNED_MOVES_MAX], move;
    int i, j;
    int partyCount;
    int numMoves;
    Pokemon *mon;

    BattleScript_Iter(battleCtx, 1);
    jumpOnFail = BattleScript_Read(battleCtx);
    numMoves = 0;
    partyCount = BattleSystem_PartyCount(battleSys, battleCtx->attacker);

    for (i = 0; i < partyCount; i++) {
        if (i == battleCtx->selectedPartySlot[battleCtx->attacker]) {
            continue;
        }

        mon = BattleSystem_PartyPokemon(battleSys, battleCtx->attacker, i);
        if (Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG) {
            for (j = 0; j < LEARNED_MOVES_MAX; j++) {
                move = Pokemon_GetValue(mon, MON_DATA_MOVE1 + j, NULL);
                if (Move_IsInvoker(move) == FALSE && Move_CanBeMetronomed(battleSys, battleCtx, battleCtx->attacker, move) == TRUE) {
                    moves[numMoves] = move;
                    numMoves++;
                }
            }
        }
    }

    if (numMoves) {
        battleCtx->msgMoveTemp = moves[BattleSystem_RandNext(battleSys) % numMoves];
    } else {
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Try to set the Magic Coat flag for the user.
 *
 * The flag will not be set if the user is the last to move this turn.
 *
 * Inputs:
 * 1. The distance to jump if there are no battlers moving after this one.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TrySetMagicCoat(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    int jumpOnFail = BattleScript_Read(battleCtx);
    u32 numBattlers = 0;
    for (int i = 0; i < BattleSystem_MaxBattlers(battleSys); i++) {
        if (battleCtx->battleMons[i].curHP) {
            numBattlers++;
        }
    }

    if (battleCtx->waitingBattlers == 1) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else {
        battleCtx->turnFlags[battleCtx->attacker].magicCoat = TRUE;
    }

    return FALSE;
}

/**
 * @brief Reflect the current move using Magic Coat.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_MagicCoat(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    int target = Battler_Side(battleSys, battleCtx->attacker);
    int attacker = battleCtx->attacker;

    battleCtx->magicCoatMon = attacker;
    battleCtx->attacker = battleCtx->defender;

    if (battleCtx->sideConditions[target].followMe && FOLLOW_ME_MON(target).curHP) {
        battleCtx->defender = FOLLOW_ME_USER(target);
    } else if (CURRENT_MOVE_DATA.range == RANGE_ADJACENT_OPPONENTS || CURRENT_MOVE_DATA.range == RANGE_ALL_ADJACENT) {
        battleCtx->defender = attacker;
    } else {
        target = BattleSystem_Defender(battleSys, battleCtx, battleCtx->attacker, battleCtx->moveCur, TRUE, RANGE_SINGLE_TARGET);
        if (battleCtx->selfTurnFlags[target].lightningRodActivated || battleCtx->selfTurnFlags[target].stormDrainActivated) {
            battleCtx->defender = target;
        } else {
            battleCtx->defender = attacker;
        }
    }

    battleCtx->battleStatusMask2 |= SYSCTL_MAGIC_COAT_REFLECTED;

    return FALSE;
}

/**
 * @brief Calculate the power multiplier to apply for Revenge.
 *
 * The multiplier will be set to 2x if the attacker took damage from its target
 * this turn; otherwise, it will be set to 1x.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CalcRevengePowerMul(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    if ((ATTACKER_TURN_FLAGS.physicalDamageTakenFrom[battleCtx->defender] && (ATTACKER_TURN_FLAGS.physicalDamageAttackerMask & FlagIndex(battleCtx->defender)))
        || (ATTACKER_TURN_FLAGS.specialDamageTakenFrom[battleCtx->defender]) && (ATTACKER_TURN_FLAGS.specialDamageAttackerMask & FlagIndex(battleCtx->defender))) {
        battleCtx->powerMul = 20;
    } else {
        battleCtx->powerMul = 10;
    }

    return FALSE;
}

/**
 * @brief Try to break Reflect and Light Screen on the defending side.
 *
 * Inputs:
 * 1. The distance to jump if neither Reflect nor Light Screen are active on
 * the defending side.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryBreakScreens(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpIfNoScreens = BattleScript_Read(battleCtx);
    int defending = Battler_Side(battleSys, battleCtx->defender);

    if ((battleCtx->sideConditionsMask[defending] & SIDE_CONDITION_REFLECT)
        || (battleCtx->sideConditionsMask[defending] & SIDE_CONDITION_LIGHT_SCREEN)) {
        battleCtx->sideConditionsMask[defending] &= ~SIDE_CONDITION_REFLECT;
        battleCtx->sideConditionsMask[defending] &= ~SIDE_CONDITION_LIGHT_SCREEN;
        battleCtx->sideConditions[defending].reflectTurns = 0;
        battleCtx->sideConditions[defending].lightScreenTurns = 0;
    } else {
        BattleScript_Iter(battleCtx, jumpIfNoScreens);
    }

    return FALSE;
}

/**
 * @brief Try to apply Yawn to the target.
 *
 * Inputs:
 * 1. The distance to jump if the target is already under the effect of Yawn.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryYawn(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);

    if (DEFENDING_MON.moveEffectsMask & MOVE_EFFECT_YAWN) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else {
        DEFENDING_MON.moveEffectsMask |= (1 << (MOVE_EFFECT_YAWN_SHIFT + 1));
    }

    return FALSE;
}

/**
 * @brief Try to knock off the target's held item.
 *
 * Inputs:
 * 1. The distance to jump if the defender does not have a held item.
 *
 * Side effects:
 * - CompareVarToValue the target has a held item and does not have Sticky Hold, the mask
 * of knocked off items for the defending side will be updated to toggle the
 * flag for the target.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryKnockOff(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);
    int defending = Battler_Side(battleSys, battleCtx->defender);

    if (DEFENDING_MON.heldItem && Battler_IgnorableAbility(battleCtx, battleCtx->attacker, battleCtx->defender, ABILITY_STICKY_HOLD) == TRUE) {
        battleCtx->msgBuffer.id = 714; // "{0}'s {1} made {2} ineffective!"
        battleCtx->msgBuffer.tags = TAG_NICKNAME_ABILITY_MOVE;
        battleCtx->msgBuffer.params[0] = BattleSystem_NicknameTag(battleCtx, battleCtx->defender);
        battleCtx->msgBuffer.params[1] = DEFENDING_MON.ability;
        battleCtx->msgBuffer.params[2] = battleCtx->moveCur;
    } else if (DEFENDING_MON.heldItem) {
        battleCtx->msgBuffer.id = 552; // "{0} knocked off {1}'s {2}!"
        battleCtx->msgBuffer.tags = TAG_NICKNAME_NICKNAME_ITEM;
        battleCtx->msgBuffer.params[0] = BattleSystem_NicknameTag(battleCtx, battleCtx->attacker);
        battleCtx->msgBuffer.params[1] = BattleSystem_NicknameTag(battleCtx, battleCtx->defender);
        battleCtx->msgBuffer.params[2] = DEFENDING_MON.heldItem;

        DEFENDING_MON.heldItem = ITEM_NONE;
        battleCtx->sideConditions[defending].knockedOffItemsMask |= FlagIndex(battleCtx->selectedPartySlot[battleCtx->defender]);
    } else {
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Calculate the power of a move whose power scales with HP fall-off.
 *
 * This includes moves like Water Spout and Eruption.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CalcHPFalloffPower(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    if (battleCtx->movePower == 0) {
        battleCtx->movePower = CURRENT_MOVE_DATA.power * ATTACKING_MON.curHP / ATTACKING_MON.maxHP;

        if (battleCtx->movePower == 0) {
            battleCtx->movePower = 1;
        }
    }

    return FALSE;
}

/**
 * @brief Try to apply the Imprison effect.
 *
 * This command will fail if the battler using Imprison does not know at least
 * one move that is also known by either of the defending battlers.
 *
 * Inputs:
 * 1. The distance to jump if Imprison is already set or the Imprisoning battler
 * does not know a move that the defenders know.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryImprison(BattleSystem *battleSys, BattleContext *battleCtx)
{
    // must declare C89-style to match
    int jumpOnFail;
    int attackingSide;
    int i, j;
    int battler, maxBattlers;
    int defender1, defender2;

    BattleScript_Iter(battleCtx, 1);
    jumpOnFail = BattleScript_Read(battleCtx);

    defender1 = BattleSystem_EnemyInSlot(battleSys, battleCtx->attacker, ENEMY_IN_SLOT_RIGHT);
    defender2 = BattleSystem_EnemyInSlot(battleSys, battleCtx->attacker, ENEMY_IN_SLOT_LEFT);

    battleCtx->battleMons[defender1].moveEffectsMask |= MOVE_EFFECT_IMPRISONED;
    battleCtx->battleMons[defender2].moveEffectsMask |= MOVE_EFFECT_IMPRISONED;

    if (ATTACKING_MON.moveEffectsMask & MOVE_EFFECT_IMPRISON) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else {
        attackingSide = Battler_Side(battleSys, battleCtx->attacker);
        maxBattlers = BattleSystem_MaxBattlers(battleSys);

        // Check that the Imprisoning mon knows at least 1 move that the active defenders know
        for (battler = 0; battler < maxBattlers; battler++) {
            if (attackingSide != Battler_Side(battleSys, battler)) {
                for (i = 0; i < LEARNED_MOVES_MAX; i++) {
                    for (j = 0; j < LEARNED_MOVES_MAX; j++) {
                        if (ATTACKING_MON.moves[i] == battleCtx->battleMons[battler].moves[j]
                            && ATTACKING_MON.moves[i]
                            && battleCtx->battleMons[battler].moves[j]) {
                            break;
                        }
                    }

                    if (j != LEARNED_MOVES_MAX) {
                        break;
                    }
                }

                if (j != LEARNED_MOVES_MAX) {
                    break;
                }
            }
        }

        if (battler == maxBattlers) {
            BattleScript_Iter(battleCtx, jumpOnFail);
        } else {
            ATTACKING_MON.moveEffectsMask |= MOVE_EFFECT_IMPRISON;
        }
    }

    return FALSE;
}

/**
 * @brief Try to execute the Grudge effect on fainting.
 *
 * Inputs:
 * 1. The distance to jump if the fainted mon did not use Grudge, if the
 * attacking mon is a teammate, if the attacking mon has also fainted, or if
 * the killing move was Struggle.
 *
 * @param battleSys
 * @param battleCtx
 * @return BOOL
 */
static BOOL BtlCmd_TryGrudge(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);
    int defending = Battler_Side(battleSys, battleCtx->defender);

    if ((FAINTED_MON.moveEffectsMask & MOVE_EFFECT_GRUDGE)
        && Battler_Side(battleSys, battleCtx->attacker) != Battler_Side(battleSys, battleCtx->faintedMon)
        && ATTACKING_MON.curHP
        && battleCtx->moveTemp != MOVE_STRUGGLE) {
        int moveSlot = ATTACKER_MOVE_SLOT;
        ATTACKING_MON.ppCur[moveSlot] = 0;
        battleCtx->msgMoveTemp = ATTACKING_MON.moves[moveSlot];

        BattleMon_CopyToParty(battleSys, battleCtx, battleCtx->attacker);
    } else {
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Try to set the Snatch flag for the user.
 *
 * The flag will not be set if the user is the last to move this turn.
 *
 * Inputs:
 * 1. The distance to jump if there are no battlers moving after this one.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TrySnatch(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);
    u32 numBattlers = 0;

    for (int i = 0; i < BattleSystem_MaxBattlers(battleSys); i++) {
        if (battleCtx->battleMons[i].curHP) {
            numBattlers++;
        }
    }

    if (battleCtx->waitingBattlers == 1) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else {
        ATTACKER_TURN_FLAGS.snatching = TRUE;
    }

    return FALSE;
}

#include "data/battle/weight_to_power.h"

/**
 * @brief Calculate the base power of a move which scales with the defender's
 * weight.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CalcWeightBasedPower(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    int i = 0;
    int monWeight = DEFENDING_MON.weight;

    for (; sWeightToPower[i][0] != 0xFFFF; i++) {
        if (sWeightToPower[i][0] >= monWeight) {
            break;
        }
    }

    if (sWeightToPower[i][0] != 0xFFFF) {
        battleCtx->movePower = sWeightToPower[i][1];
    } else {
        battleCtx->movePower = 120;
    }

    return FALSE;
}

/**
 * @brief Calculate the base power of Weather Ball.
 *
 * This also sets the type of Weather Ball according to any active weather:
 * - Water-type in Rain
 * - Rock-type in Sand
 * - Fire-type in Sun
 * - Ice-type in Hail
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CalcWeatherBallParams(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    if (NO_CLOUD_NINE) {
        if (battleCtx->fieldConditionsMask & FIELD_CONDITION_WEATHER) {
            battleCtx->movePower = CURRENT_MOVE_DATA.power * 2;

            if (WEATHER_IS_RAIN) {
                battleCtx->moveType = TYPE_WATER;
            }

            if (WEATHER_IS_SAND) {
                battleCtx->moveType = TYPE_ROCK;
            }

            if (WEATHER_IS_SUN) {
                battleCtx->moveType = TYPE_FIRE;
            }

            if (WEATHER_IS_HAIL) {
                battleCtx->moveType = TYPE_ICE;
            }
        } else {
            battleCtx->movePower = CURRENT_MOVE_DATA.power;
        }
    }

    return FALSE;
}

/**
 * @brief Try to execute Pursuit against a battler switching out via U-turn.
 *
 * Inputs:
 * 1. The distance to jump if there is no Pursuit trigger.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryPursuit(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int jumpIfNoTrigger;
    int i;
    int maxBattlers;
    int move;
    int moveSlot;

    BattleScript_Iter(battleCtx, 1);

    jumpIfNoTrigger = BattleScript_Read(battleCtx);
    maxBattlers = BattleSystem_MaxBattlers(battleSys);

    // Go through all of the battlers while trying to switch and check for any of them using Pursuit.
    // Only consider battlers which would move after us and are not currently asleep, frozen, or Truant.
    for (i = 0; i < maxBattlers; i++) {
        if (battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] != BATTLE_CONTROL_MOVE_END
            && battleCtx->battleMons[i].curHP
            && (battleCtx->battleMons[i].status & (MON_CONDITION_SLEEP | MON_CONDITION_FREEZE)) == FALSE
            && Battler_CheckTruant(battleCtx, i) == FALSE
            && Battler_Side(battleSys, i) != Battler_Side(battleSys, battleCtx->switchedMon)) {
            if (battleCtx->battleMons[i].moveEffectsData.encoredMove
                && battleCtx->battleMons[i].moveEffectsData.encoredMove == battleCtx->battleMons[i].moves[battleCtx->battleMons[i].moveEffectsData.encoredMoveSlot]) {
                move = battleCtx->battleMons[i].moveEffectsData.encoredMove;
            } else {
                move = Battler_SelectedMove(battleCtx, i);
            }

            if (move) {
                moveSlot = Battler_SlotForMove(&battleCtx->battleMons[i], move);

                if (MOVE_DATA(move).effect == BATTLE_EFFECT_HIT_BEFORE_SWITCH
                    && battleCtx->battleMons[i].ppCur[moveSlot]) {
                    battleCtx->battleMons[i].ppCur[moveSlot]--;

                    // CompareVarToValue the switching battler has Pressure, apply it to the battler using Pursuit.
                    if (Battler_Ability(battleCtx, battleCtx->switchedMon) == ABILITY_PRESSURE
                        && battleCtx->battleMons[i].ppCur[moveSlot]) {
                        battleCtx->battleMons[i].ppCur[moveSlot]--;
                    }

                    BattleSystem_SetupLoop(battleSys, battleCtx);
                    battleCtx->attacker = i;
                    battleCtx->defender = battleCtx->switchedMon;
                    battleCtx->powerMul = 20;
                    battleCtx->moveCur = move;
                    battleCtx->movePrevByBattler[i] = move;
                    battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] = BATTLE_CONTROL_MOVE_END;

                    BattleMon_CopyToParty(battleSys, battleCtx, i);
                    break;
                }
            }
        }
    }

    if (i == maxBattlers) {
        BattleScript_Iter(battleCtx, jumpIfNoTrigger);
    } else {
        int effect = Battler_HeldItemEffect(battleCtx, battleCtx->attacker);
        int power = Battler_HeldItemPower(battleCtx, battleCtx->attacker, 0);

        if (effect == HOLD_EFFECT_CHOICE_ATK
            || effect == HOLD_EFFECT_CHOICE_SPEED
            || effect == HOLD_EFFECT_CHOICE_SPATK) {
            ATTACKING_MON.moveEffectsData.choiceLockedMove = move;
        }
    }

    return FALSE;
}

/**
 * @brief Check the type chart and apply any damage multipliers.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_ApplyTypeEffectiveness(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    battleCtx->damage = BattleSystem_ApplyTypeChart(battleSys,
        battleCtx,
        battleCtx->moveCur,
        battleCtx->moveType,
        battleCtx->attacker,
        battleCtx->defender,
        battleCtx->damage,
        &battleCtx->moveStatusFlags);

    return FALSE;
}

/**
 * @brief Checks if the value in a given turn flag matches a static input value.
 *
 * Inputs:
 * 1. The battler whose turn flags should be checked.
 * 2. The turn flag to check.
 * 3. The static value to compare against.
 * 4. The distance to jump if the turn flag value matches.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_IfTurnFlag(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BOOL result = FALSE;

    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int flagID = BattleScript_Read(battleCtx);
    int compareTo = BattleScript_Read(battleCtx);
    int jumpIfTrue = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);

    switch (flagID) {
    case TURN_FLAG_STRUGGLING:
        if (battleCtx->turnFlags[battler].struggling == compareTo) {
            result = TRUE;
        }
        break;

    case TURN_FLAG_PP_DECREMENTED:
        if (battleCtx->turnFlags[battler].ppDecremented == compareTo) {
            result = TRUE;
        }
        break;

    case TURN_FLAG_PROTECTING:
        if (battleCtx->turnFlags[battler].protecting == compareTo) {
            result = TRUE;
        }
        break;

    case TURN_FLAG_HELPING_HAND:
        if (battleCtx->turnFlags[battler].helpingHand == compareTo) {
            result = TRUE;
        }
        break;

    case TURN_FLAG_MAGIC_COAT:
        if (battleCtx->turnFlags[battler].magicCoat == compareTo) {
            result = TRUE;
        }
        break;

    case TURN_FLAG_SNATCHING:
        if (battleCtx->turnFlags[battler].snatching == compareTo) {
            result = TRUE;
        }
        break;

    case TURN_FLAG_ROOSTING:
        if (battleCtx->turnFlags[battler].roosting == compareTo) {
            result = TRUE;
        }
        break;
    }

    if (result) {
        BattleScript_Iter(battleCtx, jumpIfTrue);
    }

    return FALSE;
}

/**
 * @brief Set a battler's turn flag to a given static value.
 *
 * Inputs:
 * 1. The battler whose turn flags should be modified.
 * 2. The turn flag to be set.
 * 3. The static value to set.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_SetTurnFlag(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int flagID = BattleScript_Read(battleCtx);
    int val = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);

    switch (flagID) {
    case TURN_FLAG_STRUGGLING:
        battleCtx->turnFlags[battler].struggling = val;
        break;

    case TURN_FLAG_PP_DECREMENTED:
        battleCtx->turnFlags[battler].ppDecremented = val;
        break;

    case TURN_FLAG_PROTECTING:
        battleCtx->turnFlags[battler].protecting = val;
        break;

    case TURN_FLAG_HELPING_HAND:
        battleCtx->turnFlags[battler].helpingHand = val;
        break;

    case TURN_FLAG_MAGIC_COAT:
        battleCtx->turnFlags[battler].magicCoat = val;
        break;

    case TURN_FLAG_SNATCHING:
        battleCtx->turnFlags[battler].snatching = val;
        break;

    case TURN_FLAG_ROOSTING:
        battleCtx->turnFlags[battler].roosting = val;
        break;
    }

    return FALSE;
}

/**
 * @brief Calculates the base power of Gyro Ball.
 *
 * Gyro Ball has greater power if the attacker has lower speed than its target.
 * Specifically, it computes the following formula:
 *
 *        (      25 * defenderSpeed     )
 *     min( 150, ------------------ + 1 )
 *        (         attackerSpeed       )
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CalcGyroBallPower(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    battleCtx->movePower = 1 + 25 * battleCtx->monSpeedValues[battleCtx->defender] / battleCtx->monSpeedValues[battleCtx->attacker];
    if (battleCtx->movePower > 150) {
        battleCtx->movePower = 150;
    }

    return FALSE;
}

/**
 * @brief Try to execute Metal Burst.
 *
 * Inputs:
 * 1. The distance to jump if the attacker has not yet taken damage this turn,
 * or the last damage source is an ally.
 *
 * Side effects:
 * - battleCtx->damage will be set to 1.5x the attacker's last damage taken.
 * - battleCtx->defender will be set to the last battler to deal damage to the
 * attacker, or to the defending side's Follow Me user (if one exists), or to
 * either's partner (if the former has fainted).
 * - CompareVarToValue there is no valid target, the "no target" subsequence will be executed.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryMetalBurst(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);
    int attacking = Battler_Side(battleSys, battleCtx->attacker);
    int defending = Battler_Side(battleSys, ATTACKER_TURN_FLAGS.lastAttacker);

    if (ATTACKER_TURN_FLAGS.lastDamageTaken
        && attacking != defending
        && battleCtx->battleMons[ATTACKER_TURN_FLAGS.lastAttacker].curHP) {
        battleCtx->damage = ATTACKER_TURN_FLAGS.lastDamageTaken * 15 / 10;

        if (battleCtx->sideConditions[defending].followMe && FOLLOW_ME_MON(defending).curHP) {
            battleCtx->defender = FOLLOW_ME_USER(defending);
        } else {
            battleCtx->defender = ATTACKER_TURN_FLAGS.lastAttacker;
        }

        if (DEFENDING_MON.curHP == 0) {
            battleCtx->defender = BattleSystem_RandomOpponent(battleSys, battleCtx, battleCtx->attacker);

            if (DEFENDING_MON.curHP == 0) {
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;
                BattleScript_Jump(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, subscript_no_target);
            }
        }

        BattleSystem_DecPPForPressure(battleCtx, battleCtx->attacker, battleCtx->defender);
    } else {
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Calculates the power for Payback.
 *
 * Payback has doubled power if the user moves after the target, if the target
 * switches out, or if the opponent uses an item.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CalcPaybackPower(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    if (DEFENDER_ACTION[BATTLE_ACTION_PICK_COMMAND] == BATTLE_CONTROL_MOVE_END) {
        battleCtx->movePower = CURRENT_MOVE_DATA.power * 2;
    } else {
        battleCtx->movePower = CURRENT_MOVE_DATA.power;
    }

    return FALSE;
}

static const u8 sCurrentPPScaledPower[] = {
    200,
    80,
    60,
    50,
    40,
};

/**
 * @brief Calculates the base power of Trump Card.
 *
 * Trump Card's base power scales according to its remaining PP.
 * - 0:  200
 * - 1:   80
 * - 2:   60
 * - 3:   50
 * - 4+:  40
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CalcTrumpCardPower(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    u8 ppCur = ATTACKING_MON.ppCur[ATTACKER_MOVE_SLOT];
    if (ppCur > 4) {
        ppCur = 4;
    }

    battleCtx->movePower = sCurrentPPScaledPower[ppCur];

    return FALSE;
}

/**
 * @brief Calculates the base power of Wring Out.
 *
 * Wring Out's base power scales according to the defender's remaining HP.
 * Specifically, it computes the following formula:
 *
 *         120 * currentHP
 *     1 + ---------------
 *              maxHP
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CalcWringOutPower(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    battleCtx->movePower = 1 + (120 * DEFENDING_MON.curHP) / DEFENDING_MON.maxHP;

    return FALSE;
}

/**
 * @brief Try to execute Me First.
 *
 * Inputs:
 * 1. The distance to jump if the defender has already taken their turn, if the
 * defender is struggling, if the move to be stolen cannot be copied by Me First,
 * or if the move to be stolen has no base power.
 *
 * Side effects:
 * - The Me First flag will be set on the attacker's move effects.
 * - battleCtx->msgMoveTemp will be set to the stolen move.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryMeFirst(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);

    u16 move;
    if (DEFENDING_MON.moveEffectsData.encoredMove
        && DEFENDING_MON.moveEffectsData.encoredMove == DEFENDING_MON.moves[DEFENDING_MON.moveEffectsData.encoredMoveSlot]) {
        move = DEFENDING_MON.moveEffectsData.encoredMove;
    } else {
        move = Battler_SelectedMove(battleCtx, battleCtx->defender);
    }

    if (DEFENDER_ACTION[BATTLE_ACTION_PICK_COMMAND] != BATTLE_CONTROL_MOVE_END
        && DEFENDER_TURN_FLAGS.struggling == FALSE
        && Move_MeFirstCanCopy(battleCtx, move) == TRUE
        && MOVE_DATA(move).power) {
        ATTACKING_MON.moveEffectsData.meFirst = TRUE;
        ATTACKING_MON.moveEffectsData.meFirstTurnNumber = battleCtx->meFirstTurnOrder;
        battleCtx->msgMoveTemp = move;
    } else {
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Try to execute Copycat.
 *
 * Inputs:
 * 1. The distace to jump if the move to be copied is invoker-class, if a move
 * has yet to be used this turn, or if the move to be copied cannot be invoked
 * by Metronome.
 *
 * Side effects:
 * - battleCtx->msgMoveTemp will be set to the most-recently used move.
 *
 * @param battleSys
 * @param battleCtx
 * @return BOOL
 */
static BOOL BtlCmd_TryCopycat(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);

    if (Move_IsInvoker(battleCtx->movePrev) == FALSE
        && battleCtx->movePrev
        && Move_CanBeMetronomed(battleSys, battleCtx, battleCtx->attacker, battleCtx->movePrev) == TRUE) {
        battleCtx->msgMoveTemp = battleCtx->movePrev;
    } else {
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Calculate the base power for Punishment.
 *
 * Punishment's base power scales according to the sum of stat boosts that the
 * target has accrued. Stat reductions are not considered.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CalcPunishmentPower(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    // must declare i first to match
    int i, sumBoosts = 0;
    for (i = BATTLE_STAT_HP; i < BATTLE_STAT_MAX; i++) {
        if (DEFENDING_MON.statBoosts[i] > 6) {
            sumBoosts += DEFENDING_MON.statBoosts[i] - 6;
        }
    }

    battleCtx->movePower = 60 + 20 * sumBoosts;
    if (battleCtx->movePower > 200) {
        battleCtx->movePower = 200;
    }

    return FALSE;
}

/**
 * @brief Try to execute Sucker Punch.
 *
 * Inputs:
 * 1. The distance to jump if the target has already taken their turn, or if
 * the target's chosen move has no power.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TrySuckerPunch(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);

    int move;
    if (DEFENDING_MON.moveEffectsData.encoredMove
        && DEFENDING_MON.moveEffectsData.encoredMove == DEFENDING_MON.moves[DEFENDING_MON.moveEffectsData.encoredMoveSlot]) {
        move = DEFENDING_MON.moveEffectsData.encoredMove;
    } else {
        move = Battler_SelectedMove(battleCtx, battleCtx->defender);
    }

    if (DEFENDER_ACTION[BATTLE_ACTION_PICK_COMMAND] == BATTLE_CONTROL_MOVE_END
        || (MOVE_DATA(move).power == 0 && DEFENDER_TURN_FLAGS.struggling == FALSE)) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Check the side conditions for a particular side of the battle, or
 * clear them.
 *
 * Inputs:
 * 1. The battler for whom the side conditions should be checked/cleared.
 * 2. The op code for this command (see: `battle_script_check_side_condition_ops`).
 * 3. The specific side condition to check/modify (see: `battle_script_side_conditions`).
 * 4. The distance to jump if a check operation is not fulfilled.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CheckSideCondition(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int op = BattleScript_Read(battleCtx);
    int sidecond = BattleScript_Read(battleCtx);
    int jump = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    int side = Battler_Side(battleSys, battler);
    int val;

    switch (op) {
    case CHECK_SIDE_COND_VAL_ZERO:
    case CHECK_SIDE_COND_VAL_NOT_ZERO:
        switch (sidecond) {
        case SIDE_COND_REFLECT_TURNS:
            val = battleCtx->sideConditions[side].reflectTurns;
            break;

        case SIDE_COND_LIGHT_SCREEN_TURNS:
            val = battleCtx->sideConditions[side].lightScreenTurns;
            break;

        case SIDE_COND_MIST_TURNS:
            val = battleCtx->sideConditions[side].mistTurns;
            break;

        case SIDE_COND_SAFEGUARD_TURNS:
            val = battleCtx->sideConditions[side].safeguardTurns;
            break;

        case SIDE_COND_SPIKES_LAYERS:
            val = battleCtx->sideConditions[side].spikesLayers;
            break;

        case SIDE_COND_TOXIC_SPIKES_LAYERS:
            val = battleCtx->sideConditions[side].toxicSpikesLayers;
            break;
        }
        break;

    case CHECK_SIDE_COND_CLEAR:
        switch (sidecond) {
        case SIDE_COND_REFLECT_TURNS:
            battleCtx->sideConditions[side].reflectTurns = 0;
            battleCtx->sideConditionsMask[side] &= ~SIDE_CONDITION_REFLECT;
            break;

        case SIDE_COND_LIGHT_SCREEN_TURNS:
            battleCtx->sideConditions[side].lightScreenTurns = 0;
            battleCtx->sideConditionsMask[side] &= ~SIDE_CONDITION_LIGHT_SCREEN;
            break;

        case SIDE_COND_MIST_TURNS:
            battleCtx->sideConditions[side].mistTurns = 0;
            battleCtx->sideConditionsMask[side] &= ~SIDE_CONDITION_MIST;
            break;

        case SIDE_COND_SAFEGUARD_TURNS:
            battleCtx->sideConditions[side].safeguardTurns = 0;
            battleCtx->sideConditionsMask[side] &= ~SIDE_CONDITION_SAFEGUARD;
            break;

        case SIDE_COND_SPIKES_LAYERS:
            battleCtx->sideConditions[side].spikesLayers = 0;
            battleCtx->sideConditionsMask[side] &= ~SIDE_CONDITION_SPIKES;
            break;

        case SIDE_COND_TOXIC_SPIKES_LAYERS:
            battleCtx->sideConditions[side].toxicSpikesLayers = 0;
            battleCtx->sideConditionsMask[side] &= ~SIDE_CONDITION_TOXIC_SPIKES;
            break;
        }
        break;
    }

    if (op == CHECK_SIDE_COND_VAL_ZERO && val == 0) {
        BattleScript_Iter(battleCtx, jump);
    }

    if (op == CHECK_SIDE_COND_VAL_NOT_ZERO && val) {
        BattleScript_Iter(battleCtx, jump);
    }

    return FALSE;
}

/**
 * @brief Check if the current move's target is Protecting itself.
 *
 * Inputs:
 * 1. The distance to jump if the target is not Protecting itself.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryFeint(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);

    if (DEFENDER_TURN_FLAGS.protecting == FALSE) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Check if the defending battler can be given a non-volatile status
 * condition from the attacker.
 *
 * Inputs:
 * 1. The distance to jump if the defender is already statused, if the defender
 * is behind a Substitute, or if the attacker does not have a status condition.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CheckCanShareStatus(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);

    if (DEFENDING_MON.status
        || (DEFENDING_MON.statusVolatile & VOLATILE_CONDITION_SUBSTITUTE)
        || ATTACKING_MON.status == MON_CONDITION_NONE) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Try to execute Last Resort.
 *
 * Inputs:
 * 1. The distance to jump if the battler has yet to use all of its other
 * known moves, or if it ONLY knows Last Resort.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryLastResort(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);
    int numMoves = Battler_CountMoves(battleSys, battleCtx, battleCtx->attacker);

    if (ATTACKING_MON.moveEffectsData.lastResortCount < numMoves - 1
        || numMoves < 2) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Try to execute the Toxic Spikes effect.
 *
 * Inputs:
 * 1. The distance to jump if there are already 2 layers of Toxic Spikes on
 * the targeted side of the field.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryToxicSpikes(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);
    int defending = Battler_Side(battleSys, battleCtx->attacker) ^ 1;

    if (battleCtx->sideConditions[defending].toxicSpikesLayers == 2) {
        ATTACKER_SELF_TURN_FLAGS.skipPressureCheck = TRUE;
        BattleScript_Iter(battleCtx, jumpOnFail);
    } else {
        battleCtx->sideConditionsMask[defending] |= SIDE_CONDITION_TOXIC_SPIKES;
        battleCtx->sideConditions[defending].toxicSpikesLayers++;
    }

    return 0;
}

/**
 * @brief Check for the Toxic Spikes entry effect.
 *
 * Inputs:
 * 1. The battler who is switching in and should be subject to Toxic Spikes.
 * 2. The distance to jump if there are no layers of Toxic Spikes.
 *
 * Side effects:
 * - battleCtx->calcTemp will be set to the number of layers of Toxic Spikes on
 * the switched-in battler's side of the field. CompareVarToValue the switched-in battler has
 * the Poison type, then this will instead be set to 0.
 * - battleCtx->sideEffectType will be set to SIDE_EFFECT_TYPE_TOXIC_SPIKES.
 * - battleCtx->sideEffectMon will be set to the switched-in battler.
 * - CompareVarToValue the switched-in battler has the Poison type, then Toxic Spikes will be
 * cleared from its side of the field.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CheckToxicSpikes(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int jumpIfNoToxicSpikes = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    int side = Battler_Side(battleSys, battler);

    if (battleCtx->sideConditions[side].toxicSpikesLayers) {
        battleCtx->calcTemp = battleCtx->sideConditions[side].toxicSpikesLayers;
        battleCtx->sideEffectType = SIDE_EFFECT_TYPE_TOXIC_SPIKES;
        battleCtx->sideEffectMon = battler;

        if (MON_HAS_TYPE(battleCtx->switchedMon, TYPE_POISON)) {
            battleCtx->sideConditionsMask[side] &= ~SIDE_CONDITION_TOXIC_SPIKES;
            battleCtx->sideConditions[side].toxicSpikesLayers = 0;
            battleCtx->calcTemp = 0;
        }
    } else {
        BattleScript_Iter(battleCtx, jumpIfNoToxicSpikes);
    }

    return FALSE;
}

/**
 * @brief Check the ability of a battler or set of battlers, accounting for
 * effects which ignore that ability.
 *
 * Inputs:
 * 1. Op-code which controls the behavior. See `CHECK_HAVE`/`CHECK_NOT_HAVE`
 * 2. Input battler (or set of battlers) whose ability should be checked
 * 3. The ability to check for any battler to have (or not have)
 * 4. GoTo distance if a battler in the input set meets the criteria
 *
 * Side effects:
 * - CompareVarToValue any battler matches the criteria, battleCtx->abilityMon will be set
 * to their identifier.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CheckIgnorableAbility(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int op = BattleScript_Read(battleCtx);
    int inBattler = BattleScript_Read(battleCtx);
    int ability = BattleScript_Read(battleCtx);
    int jump = BattleScript_Read(battleCtx);

    int battler;
    if (inBattler == BTLSCR_ALL_BATTLERS) {
        int maxBattlers = BattleSystem_MaxBattlers(battleSys);

        for (int i = 0; i < maxBattlers; i++) {
            battler = battleCtx->monSpeedOrder[i];

            if (op == CHECK_HAVE) {
                if (Battler_IgnorableAbility(battleCtx, battleCtx->attacker, battler, ability) == TRUE
                    && battleCtx->battleMons[battler].curHP) {
                    BattleScript_Iter(battleCtx, jump);
                    battleCtx->abilityMon = battler;
                    break;
                }
            } else if (Battler_IgnorableAbility(battleCtx, battleCtx->attacker, battler, ability) == FALSE
                || battleCtx->battleMons[battler].curHP == 0) {
                BattleScript_Iter(battleCtx, jump);
                battleCtx->abilityMon = battler;
                break;
            }
        }
    } else {
        battler = BattleScript_Battler(battleSys, battleCtx, inBattler);

        if (op == CHECK_HAVE) {
            if (Battler_IgnorableAbility(battleCtx, battleCtx->attacker, battler, ability) == TRUE
                && battleCtx->battleMons[battler].curHP) {
                BattleScript_Iter(battleCtx, jump);
                battleCtx->abilityMon = battler;
            }
        } else if (Battler_IgnorableAbility(battleCtx, battleCtx->attacker, battler, ability) == FALSE
            || battleCtx->battleMons[battler].curHP == 0) {
            BattleScript_Iter(battleCtx, jump);
            battleCtx->abilityMon = battler;
        }
    }

    return FALSE;
}

/**
 * @brief GoTo forward a certain distance if two battlers are on the same
 * side of the field.
 *
 * Inputs:
 * 1. The first battler.
 * 2. The second battler.
 * 3. The distance to jump if the two battlers are teammates.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_IfSameSide(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler1 = BattleScript_Read(battleCtx);
    int inBattler2 = BattleScript_Read(battleCtx);
    int jumpIfSameSide = BattleScript_Read(battleCtx);

    int battler1 = BattleScript_Battler(battleSys, battleCtx, inBattler1);
    int battler2 = BattleScript_Battler(battleSys, battleCtx, inBattler2);

    if (Battler_Side(battleSys, battler1) == Battler_Side(battleSys, battler2)) {
        BattleScript_Iter(battleCtx, jumpIfSameSide);
    }

    return FALSE;
}

#include "data/pickup.h"

/**
 * @brief Generates an end-of-battle item, if applicable.
 *
 * This command encompasses two abilities: Pickup and Honey Gather.
 *
 * Pickup has a 10% chance to generate a semi-random item pulled from a table
 * of eligible values. The generated item has a 98% chance to be a "common"
 * item, and a 2% chance to be a "rare" item. The exact items which can be
 * generated vary using a sliding window on table of all possible entries; the
 * window used shifts forward 1 entry for every 10 levels that the Pokemon has
 * (1-10, 11-20, etc.).
 *
 * 9 slots are viewed for the common items window, and 2 slots are viewed for
 * the rare items window. Items in the rare window have an equal chance of
 * being generated (1% each). Items in the common window have a sliding
 * probability:
 *         1: 30%
 *     2 - 7: 10% each
 *      8, 9:  4% each
 *
 * Honey Gather has a 5% chance to generate Honey at the end of the battle,
 * scaling upwards by 5% for every 10 levels that the Pokemon has (5% for
 * levels 1-10, 10% for levels 11-20, etc., capping at 50%).
 *
 * @param battleSys
 * @param battleCtx
 * @return BOOL
 */
static BOOL BtlCmd_GenerateEndOfBattleItem(BattleSystem *battleSys, BattleContext *battleCtx)
{
    // Declare C89-style to match
    int rnd, i, j, max;
    u16 species, item;
    u8 ability, level;
    Pokemon *mon;

    BattleScript_Iter(battleCtx, 1);

    for (i = 0; i < BattleSystem_PartyCount(battleSys, BATTLER_US); i++) {
        mon = BattleSystem_PartyPokemon(battleSys, BATTLER_US, i);
        species = Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL);
        item = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
        ability = Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL);

        if (ability == ABILITY_PICKUP
            && species != SPECIES_NONE
            && species != SPECIES_EGG
            && item == ITEM_NONE
            && BattleSystem_RandNext(battleSys) % 10 == 0) {
            rnd = BattleSystem_RandNext(battleSys) % 100;

            // determine what offset of the sliding table to start from
            level = (Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL) - 1) / 10;

            if (level >= COMMON_PICKUP_ENTRIES + 1) { // must use GTE to match; does not match with GT
                level = COMMON_PICKUP_ENTRIES;
            }

            // find the item to generate
            for (j = 0; j < COMMON_PICKUP_ENTRIES; j++) {
                if (sCommonPickupRate[j] > rnd) {
                    Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &sCommonPickupItems[level + j]);
                    break;
                }

                if (rnd >= 98 && rnd <= 99) {
                    Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &sRarePickupItems[level + (99 - rnd)]);
                    break;
                }
            }
        }

        if (ability == ABILITY_HONEY_GATHER
            && species != SPECIES_NONE
            && species != SPECIES_EGG
            && item == ITEM_NONE) {
            j = 0;
            max = 10;
            level = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);

            // floor the Pokemon's level by ranges of 10
            // e.g., levels 1-10 eval to 0, levels 21-30 eval to 2, etc.
            while (level > max) {
                j++;
                max += 10;
            }

            GF_ASSERT(j < 10);

            if (BattleSystem_RandNext(battleSys) % 100 < sHoneyGatherRate[j]) {
                j = ITEM_HONEY;
                Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &j);
            }
        }
    }

    return FALSE;
}

/**
 * @brief Set the Trick Room activation flag for the attacker.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TrickRoom(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    ATTACKER_SELF_TURN_FLAGS.trickRoomActivated = TRUE;

    return FALSE;
}

/**
 * @brief GoTo ahead if a given battler has already moved this turn.
 *
 * Inputs:
 * 1. The battler to check.
 * 2. The distance to jump if the battler has already moved this turn.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_IfMovedThisTurn(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int jump = BattleScript_Read(battleCtx);
    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);

    if (Battler_MovedThisTurn(battleCtx, battler) == TRUE) {
        BattleScript_Iter(battleCtx, jump);
    }

    return FALSE;
}

/**
 * @brief GoTo ahead if a given battler has (or does not have) an item with the
 * given hold effect.
 *
 * Inputs:
 * 1. Opcode. See `CHECK_HAVE`/`CHECK_NOT_HAVE`
 * 2. The battler whose held item is to be checked.
 * 3. The effect to check for.
 * 4. The distance to jump if the battler has (or does not have) an item with
 * the given hold effect.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CheckItemHoldEffect(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int op = BattleScript_Read(battleCtx);
    int inBattler = BattleScript_Read(battleCtx);
    int effect = BattleScript_Read(battleCtx);
    int jumpIfTrue = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);

    if (op == CHECK_HAVE) {
        if (Battler_HeldItemEffect(battleCtx, battler) == effect) {
            BattleScript_Iter(battleCtx, jumpIfTrue);
        }
    } else if (Battler_HeldItemEffect(battleCtx, battler) != effect) {
        BattleScript_Iter(battleCtx, jumpIfTrue);
    }

    return FALSE;
}

/**
 * @brief Get a battler's held item and store its effect into the
 * specified variable.
 *
 * Inputs:
 * 1. The battler whose item is to be accessed.
 * 2. The variable in which to store the item effect.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_GetItemHoldEffect(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int dstVar = BattleScript_Read(battleCtx);

    int *var = BattleScript_VarAddress(battleSys, battleCtx, dstVar);
    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    u16 item = Battler_HeldItem(battleCtx, battler);

    *var = BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HOLD_EFFECT);

    return FALSE;
}

/**
 * @brief Get a battler's held item and store its effect power into the
 * specified variable.
 *
 * Inputs:
 * 1. The battler whose item is to be accessed.
 * 2. The variable in which to store the item effect power.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_GetItemEffectParam(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int dstVar = BattleScript_Read(battleCtx);

    int *var = BattleScript_VarAddress(battleSys, battleCtx, dstVar);
    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    u16 item = Battler_HeldItem(battleCtx, battler);

    *var = BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HOLD_EFFECT_PARAM);

    return FALSE;
}

#include "data/terrain/to_type.h"

/**
 * @brief Try to change the battler's type to one according to the battle
 * terrain.
 *
 * Inputs:
 * 1. The distance to jump ahead if the user is already of the terrain's
 * corresponding type, or if the user is Arceus.
 *
 * @param battleSys
 * @param battleCtx
 * @return BOOL
 */
static BOOL BtlCmd_TryCamouflage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpOnFail = BattleScript_Read(battleCtx);

    if (Battler_Ability(battleCtx, battleCtx->attacker) == ABILITY_MULTITYPE) {
        BattleScript_Iter(battleCtx, jumpOnFail);
        return FALSE;
    }

    int terrain = BattleSystem_Terrain(battleSys);
    if (terrain > TERRAIN_SPECIAL) {
        terrain = TERRAIN_SPECIAL;
    }

    int type = sTerrainCamouflageType[terrain];
    if (MON_IS_NOT_TYPE(battleCtx->attacker, type)) {
        ATTACKING_MON.type1 = type;
        ATTACKING_MON.type2 = type;
        battleCtx->msgTemp = type;
    } else {
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return 0;
}

#include "data/terrain/to_move.h"

/**
 * @brief Get the move which corresponding to this battle's terrain.
 *
 * Side effects:
 * - battleCtx->msgMoveTemp will be set to the terrain's corresponding move.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_GetTerrainMove(BattleSystem *battleSys, BattleContext *battleCtx)
{

    BattleScript_Iter(battleCtx, 1);

    int terrain = BattleSystem_Terrain(battleSys);
    if (terrain > TERRAIN_SPECIAL) {
        terrain = TERRAIN_SPECIAL;
    }

    battleCtx->msgMoveTemp = sTerrainMove[terrain];

    return FALSE;
}

#include "data/terrain/to_secondary_effect.h"

/**
 * @brief Get the secondary effect corresponding to this battle's terrain.
 *
 * Side effects:
 * - battleCtx->sideEffectIndirectFlags will be set to the terrain's
 * corresponding secondary effect flags.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_GetTerrainSecondaryEffect(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    int terrain = BattleSystem_Terrain(battleSys);
    if (terrain > TERRAIN_SPECIAL) {
        terrain = TERRAIN_SPECIAL;
    }

    battleCtx->sideEffectIndirectFlags = sTerrainSideEffect[terrain];

    return FALSE;
}

/**
 * @brief Calculate the type and base power of Natural Gift.
 *
 * Inputs:
 * 1. The distance to jump if the attacker's item cannot be used with Natural
 * Gift.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CalcNaturalGiftParams(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpInvalidItem = BattleScript_Read(battleCtx);

    int power = Battler_NaturalGiftPower(battleCtx, battleCtx->attacker);
    if (power) {
        battleCtx->movePower = power;
        battleCtx->moveType = Battler_NaturalGiftType(battleCtx, battleCtx->attacker);
    } else {
        BattleScript_Iter(battleCtx, jumpInvalidItem);
    }

    return FALSE;
}

/**
 * @brief Try to Pluck the defender's berry and grant its effect to the attacker.
 *
 * Inputs:
 * 1. The distance to jump if the defender has Sticky Hold.
 * 2. The distance to jump if the defender's berry does not have a Pluckable
 * effect, or if the defender used their Custap Berry this turn.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryPluck(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpStickyHold = BattleScript_Read(battleCtx);
    int jumpNoEffect = BattleScript_Read(battleCtx);

    if (DEFENDING_MON.heldItem
        && Battler_IgnorableAbility(battleCtx, battleCtx->attacker, battleCtx->defender, ABILITY_STICKY_HOLD) == TRUE) {
        BattleScript_Iter(battleCtx, jumpStickyHold);
    } else if ((DEFENDING_MON.heldItem && DEFENDING_MON.moveEffectsData.custapBerry)
        || BattleSystem_PluckBerry(battleSys, battleCtx, battleCtx->defender) != TRUE) {
        BattleScript_Iter(battleCtx, jumpNoEffect);
    }

    return FALSE;
}

/**
 * @brief Try to Fling the attacker's item and enact its effect on the defender.
 *
 * Inputs:
 * 1. The distance to jump if the attacker's item does not have a Flingable
 * effect.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryFling(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpNoEffect = BattleScript_Read(battleCtx);

    if (BattleSystem_FlingItem(battleSys, battleCtx, battleCtx->attacker) != TRUE) {
        BattleScript_Iter(battleCtx, jumpNoEffect);
    }

    return FALSE;
}

/**
 * @brief Show a Yes/No option-select on the bottom screen.
 *
 * Inputs:
 * 1. The type of Yes/No option-select to be shown.
 *
 * @param battleSys
 * @param battleCtx
 * @return BOOL
 */
static BOOL BtlCmd_YesNoMenu(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int type = BattleScript_Read(battleCtx);

    BattleIO_ShowYesNoScreen(battleSys, battleCtx, BATTLER_US, NULL, type, NULL, NULL);

    return FALSE;
}

/**
 * @brief Wait for a result from a displayed Yes/No option-select.
 *
 * This command will NOT modify the sequence cursor until an input is made.
 *
 * Inputs:
 * 1. The distance to jump if the player selected Yes.
 * 2. The distance to jump if the player selected No.
 *
 * Side effects:
 * - battleCtx->battleProgressFlag will be set to TRUE.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_WaitYesNoResult(BattleSystem *battleSys, BattleContext *battleCtx)
{
    u8 input = BattleContext_IOBufferVal(battleCtx, 0);

    if (input) {
        BattleScript_Iter(battleCtx, 1);
        int jumpIfYes = BattleScript_Read(battleCtx);
        int jumpIfNo = BattleScript_Read(battleCtx);

        if (input == 0xFF) {
            BattleScript_Iter(battleCtx, jumpIfNo);
        } else {
            BattleScript_Iter(battleCtx, jumpIfYes);
        }

        BattleSystem_Record(battleSys, 0, input);
    }

    battleCtx->battleProgressFlag = TRUE;
    return FALSE;
}

/**
 * @brief Show the Party menu on the bottom screen.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_ChoosePokemonMenu(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleSystem_MaxBattlers(battleSys); // must stay to match
    BattleScript_Iter(battleCtx, 1);

    BattleIO_ShowPartyScreen(battleSys, battleCtx, BATTLER_US, 0, 0, 6);
    battleCtx->switchedMon = BATTLER_US;

    return FALSE;
}

/**
 * @brief Wait for a result from a displayed Party menu.
 *
 * This command will NOT modify the sequence cursor until an input is made.
 *
 * Inputs:
 * 1. The distance to jump if the player selected Cancel.
 *
 * Side effects:
 * - battleCtx->switchedPartySlot will be updated to reflect the chosen
 * party slot for a switch.
 * - battleCtx->battleProgressFlag will be set to TRUE.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_WaitPokemonMenuResult(BattleSystem *battleSys, BattleContext *battleCtx)
{
    u8 input = BattleContext_IOBufferVal(battleCtx, 0);

    if (input) {
        BattleScript_Iter(battleCtx, 1);
        int jumpIfCancel = BattleScript_Read(battleCtx);

        if (input == 0xFF) {
            BattleScript_Iter(battleCtx, jumpIfCancel);
        } else {
            battleCtx->switchedPartySlot[BATTLER_US] = input - 1;
        }
    }

    battleCtx->battleProgressFlag = TRUE;
    return FALSE;
}

/**
 * @brief Submit the battle result flag to other Wi-fi battlers, if this is
 * a Wi-fi battle.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_SetLinkBattleResult(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    if (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_LINK) {
        BattleIO_SubmitResult(battleSys);
    }

    return FALSE;
}

/**
 * @brief Check for Stealth Rock on a battler's side of the field.
 *
 * Inputs:
 * 1. The battler for whom Stealth Rock should be checked.
 * 2. The distance to jump if there is no effect to apply.
 *
 * Side effects:
 * - battleCtx->hpCalcTemp will be set to the HP deduction to apply to the
 * input battler from Stealth Rock.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CheckStealthRock(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int jumpNoEffect = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    int side = Battler_Side(battleSys, battler);
    int type1 = BattleMon_Get(battleCtx, battler, BATTLEMON_TYPE_1, NULL);
    int type2 = BattleMon_Get(battleCtx, battler, BATTLEMON_TYPE_2, NULL);

    if ((battleCtx->sideConditionsMask[side] & SIDE_CONDITION_STEALTH_ROCK)
        && battleCtx->battleMons[battler].curHP) {
        switch (BattleSystem_TypeMatchupMultiplier(TYPE_ROCK, type1, type2)) {
        case TYPE_MULTI_QUADRUPLE_DAMAGE:
            battleCtx->hpCalcTemp = 2;
            break;

        case TYPE_MULTI_DOUBLE_DAMAGE:
            battleCtx->hpCalcTemp = 4;
            break;

        case TYPE_MULTI_BASE_DAMAGE:
            battleCtx->hpCalcTemp = 8;
            break;

        case TYPE_MULTI_HALF_DAMAGE:
            battleCtx->hpCalcTemp = 16;
            break;

        case TYPE_MULTI_QUARTER_DAMAGE:
            battleCtx->hpCalcTemp = 32;
            break;

        case TYPE_MULTI_IMMUNE:
            BattleScript_Iter(battleCtx, jumpNoEffect);
            return FALSE;

        default:
            GF_ASSERT(FALSE);
            break;
        }

        battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[battler].maxHP * -1, battleCtx->hpCalcTemp);
    } else {
        BattleScript_Iter(battleCtx, jumpNoEffect);
    }

    return FALSE;
}

/**
 * @brief Check if a secondary effect should activate.
 *
 * Inputs:
 * 1. The distance to jump ahead if the secondary effect should NOT activate.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CheckEffectActivation(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpNoEffect = BattleScript_Read(battleCtx);

    u16 effectChance;
    if (Battler_Ability(battleCtx, battleCtx->attacker) == ABILITY_SERENE_GRACE) {
        effectChance = CURRENT_MOVE_DATA.effectChance * 2;
    } else {
        effectChance = CURRENT_MOVE_DATA.effectChance;
    }

    GF_ASSERT(effectChance != 0);

    if (BattleSystem_RandNext(battleSys) % 100 < effectChance
        && battleCtx->battleMons[battleCtx->sideEffectMon].curHP) {
        return FALSE;
    }

    BattleScript_Iter(battleCtx, jumpNoEffect);
    return FALSE;
}

/**
 * @brief Check if Chatter's secondary effect should activate based on Chatot's
 * sound data.
 *
 * Inputs:
 * 1. The distance to jump ahead if the secondary effect should NOT activate.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CheckChatterActivation(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpNoEffect = BattleScript_Read(battleCtx);

    if (ATTACKING_MON.species == SPECIES_CHATOT
        && DEFENDING_MON.curHP
        && (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_TRANSFORM) == FALSE) {
        int chatter;
        if ((BattleSystem_BattleStatus(battleSys) & BATTLE_STATUS_RECORDING) == FALSE) {
            chatter = Sound_GetChatterActivationParameter(BattleSystem_ChatotVoice(battleSys, battleCtx->attacker));
        } else {
            chatter = BattleSystem_RecordedChatter(battleSys, battleCtx->attacker);
        }

        u16 effectChance;
        switch (chatter) {
        default:
        case 0:
            effectChance = 0;
            break;

        case 1:
            effectChance = 10;
            break;

        case 2:
            effectChance = 30;
            break;
        }

        if (BattleSystem_RandNext(battleSys) % 100 > effectChance) {
            BattleScript_Iter(battleCtx, jumpNoEffect);
        }
    } else {
        BattleScript_Iter(battleCtx, jumpNoEffect);
    }

    return FALSE;
}

/**
 * @brief Gets a parameter from the current move's data table entry.
 *
 * Inputs:
 * 1. The parameter to be retrieved from the current move.
 *
 * Side effects:
 * - battleCtx->calcTemp will be set to the value of the requested parameter.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_GetCurrentMoveData(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int param = BattleScript_Read(battleCtx);

    battleCtx->calcTemp = MoveTable_Get(&CURRENT_MOVE_DATA, param);

    return FALSE;
}

/**
 * @brief Sets the mosaic effect on a battler's sprite.
 *
 * Inputs:
 * 1. The battler on which to apply the effect.
 * 2. The target distortion level to be applied.
 * 3. The time to wait between individual distortion levels.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_SetMosaic(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int param = BattleScript_Read(battleCtx);
    int wait = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_SetMosaic(battleSys, battler, param, wait);

    return FALSE;
}

/**
 * @brief Signals that a form change should occur due to the field's weather.
 *
 * Inputs:
 * 1. The battler whose form should be changed.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_ChangeForm(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_ChangeWeatherForm(battleSys, battler);

    return FALSE;
}

/**
 * @brief Issue a signal to shift all terrain graphics into the BG.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_SetBattleBackground(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    BattleIO_UpdateBG(battleSys, BATTLER_US);

    return FALSE;
}

/**
 * @brief Use an item from the bag for a battler.
 *
 * Inputs:
 * 1. Which battler is using the item.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_UseBagItem(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleSystem_UseBagItem(battleSys, battler, battleCtx->selectedPartySlot[battler], NULL, battleCtx->msgItemTemp);

    return FALSE;
}

/**
 * @brief Try to escape the battle from the given slot.
 *
 * Inputs:
 * 1. The battler trying to escape
 * 2. The distance to jump if escape fails
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryEscape(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int jumpOnFail = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);

    if (Battler_CanEscape(battleSys, battleCtx, battler)) {
        BattleScript_Iter(battleCtx, jumpOnFail);
    }

    return FALSE;
}

/**
 * @brief Show the start-of-battle party gauge.
 *
 * Inputs:
 * 1. The battler whose party gauge should be shown.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_ShowBattleStartPartyGauge(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_ShowBattleStartPartyGauge(battleSys, battler);

    return FALSE;
}

/**
 * @brief Hide the start-of-battle party gauge.
 *
 * Inputs:
 * 1. The battler whose party gauge should be hidden.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_HideBattleStartPartyGauge(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_HideBattleStartPartyGauge(battleSys, battler);

    return FALSE;
}

/**
 * @brief Show the mid-battle party gauge.
 *
 * Inputs:
 * 1. The battler whose party gauge should be shown.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_ShowPartyGauge(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_ShowPartyGauge(battleSys, battler);

    return FALSE;
}

/**
 * @brief Hide the mid-battle party gauge.
 *
 * Inputs:
 * 1. The battler whose party gauge should be hidden.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_HidePartyGauge(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_HidePartyGauge(battleSys, battler);

    return FALSE;
}

/**
 * @brief Show the party gauge graphics resources.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_LoadPartyGaugeGraphics(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    BattleIO_LoadPartyGaugeGraphics(battleSys);

    return FALSE;
}

/**
 * @brief Hide the party gauge graphics resources.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_FreePartyGaugeGraphics(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    BattleIO_FreePartyGaugeGraphics(battleSys);

    return FALSE;
}

static BOOL BtlCmd_IncrementGameRecord(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int battlerType = BattleScript_Read(battleCtx);
    int record = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_IncrementRecord(battleSys, battler, battlerType, record);

    return FALSE;
}

/**
 * @brief Restore a given battler's sprite, e.g., one that has been hidden
 * behind a Substitute.
 *
 * Inputs:
 * 1. The battler to be restored.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_RestoreSprite(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_RestoreSprite(battleSys, battleCtx, battler);

    return FALSE;
}

/**
 * @brief Triggers any abilities when a move hits its target.
 *
 * Inputs:
 * 1. The distance to jump if there are no effects to trigger.
 *
 * Side effects:
 * - battleCtx->scriptTemp will be set to the subroutine sequence to execute
 * for any triggered effect.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TriggerAbilityOnHit(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpNoEffect = BattleScript_Read(battleCtx);

    if (BattleSystem_TriggerAbilityOnHit(battleSys, battleCtx, &battleCtx->scriptTemp) == FALSE) {
        BattleScript_Iter(battleCtx, jumpNoEffect);
    }

    return FALSE;
}

/**
 * @brief Convert a sprite into OAM form.
 *
 * This is used at the start of the battle for moving sprites across the screen,
 * fading them in/out, etc.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_SpriteToOAM(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);

    BattleScript_Iter(battleCtx, 1);
    int battler = BattleScript_Read(battleCtx);

    switch (battler) {
    case BTLSCR_PLAYER:
        for (int i = 0; i < maxBattlers; i++) {
            BattlerData *battlerData = BattleSystem_BattlerData(battleSys, i);
            if ((battlerData->battlerType & BATTLER_THEM) == FALSE) {
                BattleIO_SpriteToOAM(battleSys, i);
            }
        }
        break;

    case BTLSCR_ENEMY:
        for (int i = 0; i < maxBattlers; i++) {
            BattlerData *battlerData = BattleSystem_BattlerData(battleSys, i);
            if (battlerData->battlerType & BATTLER_THEM) {
                BattleIO_SpriteToOAM(battleSys, i);
            }
        }
        break;

    default:
        int i = BattleScript_Battler(battleSys, battleCtx, battler);
        BattleIO_SpriteToOAM(battleSys, i);
        break;
    }

    return FALSE;
}

/**
 * @brief Convert back from OAM to a sprite.
 *
 * This is used at the start of the battle for moving sprites across the screen,
 * fading them in/out, etc.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_OAMToSprite(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);

    BattleScript_Iter(battleCtx, 1);
    int battler = BattleScript_Read(battleCtx);

    switch (battler) {
    case BTLSCR_PLAYER:
        for (int i = 0; i < maxBattlers; i++) {
            BattlerData *battlerData = BattleSystem_BattlerData(battleSys, i);
            if ((battlerData->battlerType & BATTLER_THEM) == FALSE) {
                BattleIO_OAMToSprite(battleSys, i);
            }
        }
        break;

    case BTLSCR_ENEMY:
        for (int i = 0; i < maxBattlers; i++) {
            BattlerData *battlerData = BattleSystem_BattlerData(battleSys, i);
            if (battlerData->battlerType & BATTLER_THEM) {
                BattleIO_OAMToSprite(battleSys, i);
            }
        }
        break;

    default:
        int i = BattleScript_Battler(battleSys, battleCtx, battler);
        BattleIO_OAMToSprite(battleSys, i);
        break;
    }

    return FALSE;
}

/**
 * @brief GoTo ahead a certain distance if the battler is out of Pokemon.
 *
 * Inputs:
 * 1. The battler to be checked
 * 2. The distance to jump if the battler is out of Pokemon
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CheckBlackOut(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int inBattler;
    int jumpIfWhiteOut;
    int battler;
    int i;
    int aliveMons = 0;
    u32 battleType;
    Pokemon *mon;
    BattlerData *battlerData;

    BattleScript_Iter(battleCtx, 1);

    inBattler = BattleScript_Read(battleCtx);
    jumpIfWhiteOut = BattleScript_Read(battleCtx);
    battleType = BattleSystem_BattleType(battleSys);
    battler = BattleScript_Battler(battleSys, battleCtx, inBattler);

    if ((battleType & BATTLE_TYPE_2vs2)
        || ((battleType & BATTLE_TYPE_TAG) && Battler_Side(battleSys, battler))) {
        Party *party1 = BattleSystem_Party(battleSys, battler);
        Party *party2 = BattleSystem_Party(battleSys, BattleSystem_Partner(battleSys, battler));
        battlerData = BattleSystem_BattlerData(battleSys, battler);

        for (i = 0; i < Party_GetCurrentCount(party1); i++) {
            mon = Party_GetPokemonBySlotIndex(party1, i);

            if (Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
                && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG) {
                aliveMons += Pokemon_GetValue(mon, MON_DATA_HP, NULL);
            }
        }

        // Don't consider the second slot if we have a partner
        // first condition here does not match as an AND of NEQs, must be a NOT of an OR of EQs
        if (!(battleType == BATTLE_TYPE_TRAINER_WITH_AI_PARTNER || battleType == BATTLE_TYPE_AI_PARTNER)
            || Battler_Side(battleSys, battler) != BATTLER_US
            || BattleSystem_BattlerSlot(battleSys, battler) != BATTLER_PLAYER_2) {
            for (i = 0; i < Party_GetCurrentCount(party2); i++) {
                mon = Party_GetPokemonBySlotIndex(party2, i);

                if (Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
                    && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG) {
                    aliveMons += Pokemon_GetValue(mon, MON_DATA_HP, NULL);
                }
            }
        }

        if (aliveMons == 0) {
            BattleScript_Iter(battleCtx, jumpIfWhiteOut);
        }
    } else {
        Party *party = BattleSystem_Party(battleSys, battler);
        battlerData = BattleSystem_BattlerData(battleSys, battler);

        for (i = 0; i < Party_GetCurrentCount(party); i++) {
            mon = Party_GetPokemonBySlotIndex(party, i);

            if (Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
                && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG) {
                aliveMons += Pokemon_GetValue(mon, MON_DATA_HP, NULL);
            }
        }

        if (aliveMons == 0) {
            BattleScript_Iter(battleCtx, jumpIfWhiteOut);
        }
    }

    return FALSE;
}

/**
 * @brief Boost a random stat by 2 stages.
 *
 * Inputs:
 * 1. The distance to jump if there are no valid stats to boost.
 *
 * Side effects:
 * - battleCtx->sideEffectDirectFlags will be set to the random stat to be
 * boosted.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_BoostRandomStatBy2(BattleSystem *battleSys, BattleContext *battleCtx)
{
    // must maintain this declaration order to match
    int i, validStats;
    int stats[BATTLE_STAT_MAX];
    int jumpNoValidBoosts;

    BattleScript_Iter(battleCtx, 1);
    jumpNoValidBoosts = BattleScript_Read(battleCtx);
    validStats = 0;

    for (i = BATTLE_STAT_ATTACK; i < BATTLE_STAT_MAX; i++) {
        if (battleCtx->battleMons[battleCtx->defender].statBoosts[i] < 12) {
            stats[validStats++] = i - 1;
        }
    }

    if (validStats) {
        battleCtx->sideEffectDirectFlags = MOVE_SUBSCRIPT_PTR_ATTACK_UP_2_STAGES + stats[BattleSystem_RandNext(battleSys) % validStats];
        battleCtx->sideEffectDirectFlags |= MOVE_SIDE_EFFECT_TO_DEFENDER;
    } else {
        BattleScript_Iter(battleCtx, jumpNoValidBoosts);
    }

    return FALSE;
}

/**
 * @brief Remove a battler's held item.
 *
 * Inputs:
 * 1. The battler whose item should be removed.
 *
 * Side effects:
 * - battleCtx->recycleItem will be updated to the battler's old held item.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_RemoveItem(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    battleCtx->recycleItem[battler] = battleCtx->battleMons[battler].heldItem;
    battleCtx->battleMons[battler].heldItem = ITEM_NONE;

    BattleMon_CopyToParty(battleSys, battleCtx, battler);

    return FALSE;
}

/**
 * @brief Check for an item in the Recycle buffer.
 *
 * Inputs:
 * 1. The distance to jump if there is no item in the Recycle buffer.
 *
 * Side effects:
 * - battleCtx->msgItemTemp will be set to the item from the Recycle buffer.
 * - battleCtx->recycleItem will be cleared for the attacker.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryRecycle(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpNoRecyclableItem = BattleScript_Read(battleCtx);

    if (battleCtx->recycleItem[battleCtx->attacker]) {
        battleCtx->msgItemTemp = battleCtx->recycleItem[battleCtx->attacker];
        battleCtx->recycleItem[battleCtx->attacker] = ITEM_NONE;
    } else {
        BattleScript_Iter(battleCtx, jumpNoRecyclableItem);
    }

    return FALSE;
}

/**
 * @brief Triggers any held items when a move hits its target.
 *
 * Inputs:
 * 1. The distance to jump if there are no items to be triggered.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TriggerHeldItemOnHit(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpNoEffects = BattleScript_Read(battleCtx);

    if (BattleSystem_TriggerHeldItemOnHit(battleSys, battleCtx, &battleCtx->scriptTemp) == FALSE) {
        BattleScript_Iter(battleCtx, jumpNoEffects);
    }

    return FALSE;
}

/**
 * @brief Display the result message for a battle.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PrintBattleResultMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    BattleIO_ResultMessage(battleSys);

    return FALSE;
}

/**
 * @brief Display the message for escaping a battle.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PrintEscapeMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    BattleIO_EscapeMessage(battleSys, battleCtx);

    return FALSE;
}

/**
 * @brief Display the message for forfeiting a battle.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PrintForfeitMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    BattleIO_ForfeitMessage(battleSys);

    return FALSE;
}

/**
 * @brief Check if a battler should be left with 1 HP after a move hits.
 *
 * Inputs:
 * 1. The battler to be checked.
 *
 * Side effects:
 * - CompareVarToValue the battler should endure the hit, battleCtx->hpCalcTemp will be updated
 * with the correct amount of damage to leave them at 1 HP, and
 * battleCtx->moveStatusFlags will be updated with the MOVE_STATUS_ENDURED_ITEM
 * flag.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CheckHoldOnWith1HP(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BOOL endure = FALSE;

    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    int itemEffect = Battler_HeldItemEffect(battleCtx, battler);
    int itemPower = Battler_HeldItemPower(battleCtx, battler, ITEM_POWER_CHECK_ALL);

    if (itemEffect == HOLD_EFFECT_MAYBE_ENDURE
        && BattleSystem_RandNext(battleSys) % 100 < itemPower) {
        endure = TRUE;
    }

    if (itemEffect == HOLD_EFFECT_ENDURE
        && battleCtx->battleMons[battler].curHP == battleCtx->battleMons[battler].maxHP) {
        endure = TRUE;
    }

    if (endure && battleCtx->battleMons[battler].curHP + battleCtx->hpCalcTemp <= 0) {
        battleCtx->hpCalcTemp = (battleCtx->battleMons[battler].curHP - 1) * -1;
        battleCtx->moveStatusFlags |= MOVE_STATUS_ENDURED_ITEM;
    }

    return FALSE;
}

/**
 * @brief Try to restore the battler's status on switch-out.
 *
 * Inputs:
 * 1. The battler whose status should be restored.
 * 2. The distance to jump if the battler has fainted, or the battler has no
 * ability which would restore its status on switch-out.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TryRestoreStatusOnSwitch(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int jumpNoStatusRestore = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    if (battleCtx->battleMons[battler].curHP && battleCtx->selectedPartySlot[battler] != 6) {
        Pokemon *mon = BattleSystem_PartyPokemon(battleSys, battler, battleCtx->selectedPartySlot[battler]);
        int ability = Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL);
        int status = Pokemon_GetValue(mon, MON_DATA_STATUS, NULL);

        if (battleCtx->battleMons[battler].ability != ABILITY_NATURAL_CURE
            && Ability_ForbidsStatus(battleCtx, ability, status) == FALSE) {
            BattleScript_Iter(battleCtx, jumpNoStatusRestore);
        }
    } else {
        BattleScript_Iter(battleCtx, jumpNoStatusRestore);
    }

    return 0;
}

/**
 * @brief Check if a battler has an active Substitute.
 *
 * Inputs:
 * 1. The battler to be checked
 * 2. The distance to jump if Substitute is not active
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CheckSubstitute(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int jumpSubActive = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    if ((battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_SUBSTITUTE)
        || (battleCtx->selfTurnFlags[battler].statusFlags & SELF_TURN_FLAG_SUBSTITUTE_HIT)) {
        BattleScript_Iter(battleCtx, jumpSubActive);
    }

    return FALSE;
}

/**
 * @brief GoTo ahead a certain distance if a weather-negation effect is active.
 *
 * @param battleSys
 * @param battleCtx
 * @return BOOL
 */
static BOOL BtlCmd_CheckIgnoreWeather(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpIfActive = BattleScript_Read(battleCtx);

    if (BattleSystem_CountAbility(battleSys, battleCtx, COUNT_ALIVE_BATTLERS, 0, ABILITY_CLOUD_NINE)
        || BattleSystem_CountAbility(battleSys, battleCtx, COUNT_ALIVE_BATTLERS, 0, ABILITY_AIR_LOCK)) {
        BattleScript_Iter(battleCtx, jumpIfActive);
    }

    return FALSE;
}

/**
 * @brief Set the target of the next move to be a random opponent.
 *
 * Inputs:
 * 1. The battler used to determine who is an opponent.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_SetRandomTarget(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    battleCtx->defender = BattleSystem_RandomOpponent(battleSys, battleCtx, battler);

    return FALSE;
}

/**
 * @brief Triggers any held items when a pivot move hits its target.
 *
 * Inputs:
 * 1. The distance to jump if there are no items to be triggered.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_TriggerHeldItemOnPivotMove(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpNoEffects = BattleScript_Read(battleCtx);

    if (BattleSystem_TriggerHeldItemOnPivotMove(battleSys, battleCtx, &battleCtx->scriptTemp) == FALSE) {
        BattleScript_Iter(battleCtx, jumpNoEffects);
    }

    return FALSE;
}

/**
 * @brief Refresh a battler's sprite according to new parameters, e.g., during
 * a mid-battle form change.
 *
 * Inputs:
 * 1. The battler whose sprite should be refreshed.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_RefreshSprite(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_RefreshSprite(battleSys, battleCtx, battler);

    return FALSE;
}

/**
 * @brief Play the "move hit" sound effect.
 *
 * Inputs:
 * 1. The battler who should hear the effect.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PlayMoveHitSound(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_PlayMoveHitSoundEffect(battleSys, battleCtx, battler);

    return FALSE;
}

/**
 * @brief Play a given music track.
 *
 * Inputs:
 * 1. The battler who should hear the music.
 * 2. The track to be played.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_PlayBGM(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int bgmID = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_PlayMusic(battleSys, battler, bgmID);

    return FALSE;
}

/**
 * @brief Check if the Safari Zone game should continue.
 *
 * Inputs:
 * 1. The distance to jump if the Safari Zone game is not yet over
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CheckSafariGameDone(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int jumpNotOver = BattleScript_Read(battleCtx);

    if ((BattleSystem_PartyCount(battleSys, BATTLER_US) != MAX_PARTY_SIZE || PCBoxes_FirstEmptyBox(battleSys->pcBoxes) != 18)
        && battleSys->safariBalls) {
        BattleScript_Iter(battleCtx, jumpNotOver);
    }

    return FALSE;
}

/**
 * @brief Wait a certain number of frames, disabling the skip functionality.
 *
 * Inputs:
 * 1. The number of frames to wait.
 *
 * Side effects:
 * - battleCtx->battleProgressFlag will be set to TRUE.
 *
 * @param battleSys
 * @param battleCtx
 * @return BOOL
 */
static BOOL BtlCmd_WaitTime(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int wait = BattleScript_Read(battleCtx);

    int inc;
    if ((battleSys->battleType & BATTLE_TYPE_LINK)
        && (battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) == FALSE) {
        inc = 2;
    } else {
        inc = 1;
    }

    if (wait > battleCtx->waitCounter) {
        BattleScript_Iter(battleCtx, -2);
        battleCtx->waitCounter += inc;
    } else {
        battleCtx->waitCounter = 0;
    }

    battleCtx->battleProgressFlag = TRUE;
    return FALSE;
}

/**
 * @brief Check if the current move is of the given type.
 *
 * Inputs:
 * 1. The type to check for.
 * 2. The distance to jump if the current move is of the given type.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_CheckCurMoveIsType(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int type = BattleScript_Read(battleCtx);
    int jumpIfType = BattleScript_Read(battleCtx);

    if (CURRENT_MOVE_DATA.type == type) {
        BattleScript_Iter(battleCtx, jumpIfType);
    }

    return FALSE;
}

/**
 * @brief Loads a data value from the personal NARC for the given species, using
 * a form specified in a variable.
 *
 * Inputs:
 * 1. The target species.
 * 2. A variable which contains the form to be loaded.
 * 3. The target data value from the personal NARC.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_LoadArchivedMonData(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int species = BattleScript_Read(battleCtx);
    int formVar = BattleScript_Read(battleCtx);
    int personalParam = BattleScript_Read(battleCtx);

    int *form = BattleScript_VarAddress(battleSys, battleCtx, formVar);
    battleCtx->calcTemp = SpeciesData_GetFormValue(species, *form, personalParam);

    return FALSE;
}

/**
 * @brief Reload a Pokemon, refreshing all of its underlying data, e.g., stats,
 * ability, etc.
 *
 * Inputs:
 * 1. The battler which should be reloaded.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_RefreshMonData(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleSystem_ReloadPokemon(battleSys, battleCtx, battler, battleCtx->selectedPartySlot[battler]);

    return FALSE;
}

/**
 * @brief End the sequence.
 *
 * Side effects:
 * battleCtx->battleProgressFlag will be set to TRUE.
 *
 * @param battleSys
 * @param battleCtx
 * @return FALSE
 */
static BOOL BtlCmd_End(BattleSystem *battleSys, BattleContext *battleCtx)
{
    battleCtx->battleProgressFlag = TRUE;
    return BattleSystem_PopScript(battleCtx);
}

/**
 * @brief Read a 4-byte chunk from the loaded script and increment the cursor.
 *
 * @param battleCtx
 * @return The read 4-byte chunk.
 */
static int BattleScript_Read(BattleContext *battleCtx)
{
    int data = battleCtx->battleScript[battleCtx->scriptCursor];
    battleCtx->scriptCursor++;

    return data;
}

/**
 * @brief Increment the script cursor by a specified amount.
 *
 * @param battleCtx
 * @param i             Increment value
 */
static void BattleScript_Iter(BattleContext *battleCtx, int i)
{
    battleCtx->scriptCursor += i;
}

/**
 * @brief Load a script into the script buffer.
 *
 * This will perform a full jump to the accompanying script, abandoning the
 * current execution.
 *
 * @param battleCtx
 * @param narcID        Which NARC to open for the script
 * @param file          Which file in the NARC to load
 */
static void BattleScript_Jump(BattleContext *battleCtx, enum NarcID narcID, int file)
{
    BattleSystem_LoadScript(battleCtx, narcID, file);
}

/**
 * @brief Load a script into the script buffer, returning to the current
 * execution once finished with the newly-loaded script.
 *
 * @param battleCtx
 * @param narcID        Which NARC to open for the script
 * @param file          Which file in the NARC to load
 */
static void BattleScript_Call(BattleContext *battleCtx, enum NarcID narcID, int file)
{
    BattleSystem_CallScript(battleCtx, narcID, file);
}

/**
 * @brief Get a pointer to the requested variable.
 *
 * @param battleSys
 * @param battleCtx
 * @param var           The requested variable. See enum BattleScriptVars.
 * @return Memory address of the requested variable.
 */
static void *BattleScript_VarAddress(BattleSystem *battleSys, BattleContext *battleCtx, int var)
{
    switch (var) {
    case BTLVAR_BATTLE_TYPE:
        return &battleSys->battleType;
    case BTLVAR_CRITICAL_BOOSTS:
        return &battleCtx->criticalBoosts;
    case BTLVAR_SIDE_EFFECT_FLAGS_DIRECT:
        return &battleCtx->sideEffectDirectFlags;
    case BTLVAR_SIDE_EFFECT_FLAGS_INDIRECT:
        return &battleCtx->sideEffectIndirectFlags;
    case BTLVAR_SIDE_EFFECT_FLAGS_ABILITY:
        return &battleCtx->sideEffectAbilityFlags;
    case BTLVAR_SIDE_EFFECT_TYPE:
        return &battleCtx->sideEffectType;
    case BTLVAR_BATTLE_CTX_STATUS:
        return &battleCtx->battleStatusMask;
    case BTLVAR_FIELD_CONDITIONS:
        return &battleCtx->fieldConditionsMask;
    case BTLVAR_POWER_MULTI:
        return &battleCtx->powerMul;
    case BTLVAR_CALC_TEMP:
        return &battleCtx->calcTemp;
    case BTLVAR_MOVE_STATUS_FLAGS:
        return &battleCtx->moveStatusFlags;
    case BTLVAR_SIDE_CONDITIONS_ATTACKER:
        return &battleCtx->sideConditionsMask[Battler_Side(battleSys, battleCtx->attacker)];
    case BTLVAR_SIDE_CONDITIONS_DEFENDER:
        return &battleCtx->sideConditionsMask[Battler_Side(battleSys, battleCtx->defender)];
    case BTLVAR_SIDE_CONDITIONS_EFFECT_MON:
        return &battleCtx->sideConditionsMask[Battler_Side(battleSys, battleCtx->sideEffectMon)];
    case BTLVAR_DAMAGE:
        return &battleCtx->damage;
    case BTLVAR_ATTACKER:
        return &battleCtx->attacker;
    case BTLVAR_DEFENDER:
        return &battleCtx->defender;
    case BTLVAR_SIDE_EFFECT_MON:
        return &battleCtx->sideEffectMon;
    case BTLVAR_FAINTED_MON:
        return &battleCtx->faintedMon;
    case BTLVAR_SWITCHED_MON:
        return &battleCtx->switchedMon;
    case BTLVAR_MSG_BATTLER_TEMP:
        return &battleCtx->msgBattlerTemp;
    case BTLVAR_ATTACKER_STORED_DAMAGE:
        return &battleCtx->storedDamage[battleCtx->attacker];
    case BTLVAR_MSG_TEMP:
        return &battleCtx->msgTemp;
    case BTLVAR_PAY_DAY_COUNT:
        return &battleCtx->payDayCount;
    case BTLVAR_CURRENT_MOVE:
        return &battleCtx->moveCur;
    case BTLVAR_TOTAL_TURNS:
        return &battleCtx->totalTurns;
    case BTLVAR_MSG_ATTACKER:
        return &battleCtx->msgAttacker;
    case BTLVAR_MSG_DEFENDER:
        return &battleCtx->msgDefender;
    case BTLVAR_MOVE_TEMP:
        return &battleCtx->moveTemp;
    case BTLVAR_LAST_BATTLER_ID:
        return &battleCtx->lastBattlerId;
    case BTLVAR_MOVE_POWER:
        return &battleCtx->movePower;
    case BTLVAR_AFTER_MOVE_MESSAGE_TYPE:
        return &battleCtx->afterMoveMessageType;
    case BTLVAR_HP_CALC_TEMP:
        return &battleCtx->hpCalcTemp;
    case BTLVAR_RESULT_MASK:
        return &battleSys->resultMask;
    case BTLVAR_SIDE_EFFECT_PARAM:
        return &battleCtx->sideEffectParam;
    case BTLVAR_MSG_MOVE_TEMP:
        return &battleCtx->msgMoveTemp;
    case BTLVAR_MSG_ITEM_TEMP:
        return &battleCtx->msgItemTemp;
    case BTLVAR_MSG_ABILITY_TEMP:
        return &battleCtx->msgAbilityTemp;
    case BTLVAR_WEATHER_TURNS:
        return &battleCtx->fieldConditions.weatherTurns;
    case BTLVAR_BATTLER_SPEED_TEMP:
        return &battleCtx->battlerSpeedTemp;
    case BTLVAR_MULTI_HIT_LOOP:
        return &battleCtx->multiHitLoop;
    case BTLVAR_ATTACKER_PHYSICAL_DAMAGE_MASK:
        return &battleCtx->turnFlags[battleCtx->attacker].physicalDamageAttackerMask;
    case BTLVAR_ATTACKER_SPECIAL_DAMAGE_MASK:
        return &battleCtx->turnFlags[battleCtx->attacker].specialDamageAttackerMask;
    case BTLVAR_SCRIPT_TEMP:
        return &battleCtx->scriptTemp;
    case BTLVAR_CRITICAL_MUL:
        return &battleCtx->criticalMul;
    case BTLVAR_ATTACKER_LAST_DAMAGE_TAKEN:
        return &battleCtx->turnFlags[battleCtx->attacker].lastDamageTaken;
    case BTLVAR_DEFENDER_LAST_DAMAGE_TAKEN:
        return &battleCtx->turnFlags[battleCtx->defender].lastDamageTaken;
    case BTLVAR_ATTACKER_SELF_TURN_STATUS_FLAGS:
        return &battleCtx->selfTurnFlags[battleCtx->attacker].statusFlags;
    case BTLVAR_DEFENDER_SELF_TURN_STATUS_FLAGS:
        return &battleCtx->selfTurnFlags[battleCtx->defender].statusFlags;
    case BTLVAR_SIDE_EFFECT_MON_SELF_TURN_STATUS_FLAGS:
        return &battleCtx->selfTurnFlags[battleCtx->sideEffectMon].statusFlags;
    case BTLVAR_FLING_TEMP:
        return &battleCtx->flingTemp;
    case BTLVAR_FLING_SCRIPT:
        return &battleCtx->flingScript;
    case BTLVAR_BATTLE_SYS_STATUS:
        return &battleSys->battleStatusMask;
    case BTLVAR_ATTACKER_LOCKED_MOVE:
        return &battleCtx->moveLockedInto[battleCtx->attacker];
    case BTLVAR_HIT_DAMAGE:
        return &battleCtx->hitDamage;
    case BTLVAR_NUM_SAFARI_BALLS:
        return &battleSys->safariBalls;
    case BTLVAR_SWITCHED_MON_TEMP:
        return &battleCtx->switchedMonTemp;
    case BTLVAR_MOVE_TYPE:
        return &battleCtx->moveType;
    case BTLVAR_MOVE_EFFECT_CHANCE:
        return &battleCtx->moveEffectChance;
    case BTLVAR_REGULATION_FLAG:
        return &battleSys->unk_2418;
    case BTLVAR_BATTLE_CTX_STATUS_2:
        return &battleCtx->battleStatusMask2;
    case BTLVAR_TURN_ORDER_COUNTER:
        return &battleCtx->turnOrderCounter;
    case BTLVAR_MAX_BATTLERS:
        return &battleSys->maxBattlers;
    case BTLVAR_ATTACKER_TEMP:
        return &battleCtx->attackerTemp;
    case BTLVAR_DEFENDER_TEMP:
        return &battleCtx->defenderTemp;
    case BTLVAR_DEFENDER_PHYSICAL_DAMAGE_TAKEN:
        return &battleCtx->selfTurnFlags[battleCtx->defender].physicalDamageTaken;
    case BTLVAR_MSG_BATTLER_TEMP_ASSURANCE_DAMAGE_MASK:
        return &battleCtx->turnFlags[battleCtx->msgBattlerTemp].assuranceDamageMask;
    case BTLVAR_DEFENDER_ASSURANCE_DAMAGE_MASK:
        return &battleCtx->turnFlags[battleCtx->defender].assuranceDamageMask;
    case BTLVAR_ATTACKER_SHELL_BELL_DAMAGE_DEALT:
        return &battleCtx->selfTurnFlags[battleCtx->attacker].shellBellDamageDealt;
    case BTLVAR_WAITING_BATTLERS:
        return &battleCtx->waitingBattlers;
    }

    return NULL;
}

typedef struct PokemonStats {
    int stat[6];
} PokemonStats;

/**
 * @brief System task-state machine for controlling the UX flow for a battler
 * gaining Exp. Points.
 *
 * @param task
 * @param inData
 */
static void BattleScript_GetExpTask(SysTask *task, void *inData)
{
    // must declare C89-style to match
    int i;
    int slot;
    BattleScriptTaskData *data = inData;
    Pokemon *mon;
    BattleMessage msg;
    int battler;
    int expBattler;
    MessageLoader *msgLoader;
    u32 battleType;
    int item;
    int itemEffect;

    msgLoader = BattleSystem_MessageLoader(data->battleSys);
    battleType = BattleSystem_BattleType(data->battleSys);
    battler = data->battleCtx->faintedMon >> 1 & 1; // init to the side with the fainted mon
    expBattler = 0;

    // Figure out which mon we're working on
    for (slot = data->tmpData[6]; slot < BattleSystem_PartyCount(data->battleSys, expBattler); slot++) {
        mon = BattleSystem_PartyPokemon(data->battleSys, expBattler, slot);
        item = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
        itemEffect = Item_LoadParam(item, ITEM_PARAM_HOLD_EFFECT, HEAP_ID_BATTLE);

        if (itemEffect == HOLD_EFFECT_EXP_SHARE || (data->battleCtx->sideGetExpMask[battler] & FlagIndex(slot))) {
            break;
        }
    }

    if (slot == BattleSystem_PartyCount(data->battleSys, expBattler)) {
        data->seqNum = SEQ_GET_EXP_DONE;
    } else if ((battleType & BATTLE_TYPE_DOUBLES)
        && (battleType & BATTLE_TYPE_AI) == FALSE
        && data->battleCtx->selectedPartySlot[2] == slot) {
        expBattler = 2;
    }

    switch (data->seqNum) {
    case SEQ_GET_EXP_START: {
        item = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
        itemEffect = Item_LoadParam(item, ITEM_PARAM_HOLD_EFFECT, HEAP_ID_BATTLE);

        // Declare victory if all wild mons have been defeated
        if ((battleType & BATTLE_TYPE_TRAINER) == FALSE
            && data->battleCtx->battleMons[BATTLER_ENEMY_1].curHP
                    + data->battleCtx->battleMons[BATTLER_ENEMY_2].curHP
                == 0
            && Pokemon_GetValue(mon, MON_DATA_HP, NULL)
            && data->battleCtx->expJinglePlayed == FALSE) {
            Sound_PlayBGM(SEQ_VICTORY_WILD_POKEMON);
            data->battleCtx->expJinglePlayed = TRUE;
            BattleSystem_SetRedHPSoundFlag(data->battleSys, 2); // turn off
        }

        u32 totalExp = 0;
        msg.id = 1; // "{0} gained {1} Exp. Points!"

        if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) && Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL) != 100) {
            if (data->battleCtx->sideGetExpMask[battler] & FlagIndex(slot)) {
                totalExp = data->battleCtx->gainedExp;
            }

            if (itemEffect == HOLD_EFFECT_EXP_SHARE) {
                totalExp += data->battleCtx->sharedExp;
            }

            if (itemEffect == HOLD_EFFECT_EXP_UP) {
                totalExp = totalExp * 150 / 100;
            }

            if (battleType & BATTLE_TYPE_TRAINER) {
                totalExp = totalExp * 150 / 100;
            }

            if (BattleSystem_PokemonIsOT(data->battleSys, mon) == FALSE) {
                if (Pokemon_GetValue(mon, MON_DATA_LANGUAGE, NULL) != gGameLanguage) {
                    totalExp = totalExp * 170 / 100;
                } else {
                    totalExp = totalExp * 150 / 100;
                }

                msg.id = 2; // "{0} gained a boosted {1} Exp. Points!"
            }

            u32 newExp = Pokemon_GetValue(mon, MON_DATA_EXPERIENCE, NULL);
            data->tmpData[3] = newExp - Pokemon_GetCurrentLevelBaseExp(mon);
            newExp += totalExp;

            if (slot == data->battleCtx->selectedPartySlot[expBattler]) {
                data->battleCtx->battleMons[expBattler].exp = newExp;
            }

            Pokemon_SetValue(mon, MON_DATA_EXPERIENCE, &newExp);
            BattleScript_CalcEffortValues(BattleSystem_Party(data->battleSys, expBattler),
                slot,
                data->battleCtx->battleMons[data->battleCtx->faintedMon].species,
                data->battleCtx->battleMons[data->battleCtx->faintedMon].formNum);
        }

        if (totalExp) {
            msg.tags = TAG_NICKNAME_NUM;
            msg.params[0] = expBattler | (slot << 8);
            msg.params[1] = totalExp;
            data->tmpData[GET_EXP_MSG_INDEX] = BattleMessage_Print(data->battleSys, msgLoader, &msg, BattleSystem_TextSpeed(data->battleSys));
            data->tmpData[GET_EXP_MSG_DELAY] = 30 / 4;
            data->seqNum++;
        } else {
            data->seqNum = SEQ_GET_EXP_CHECK_DONE;
        }

        break;
    }

    case SEQ_GET_EXP_WAIT_MESSAGE_PRINT:
        if (Text_IsPrinterActive(data->tmpData[GET_EXP_MSG_INDEX]) == FALSE) {
            data->seqNum++;
        }
        break;

    case SEQ_GET_EXP_WAIT_MESSAGE_DELAY:
        if (--data->tmpData[GET_EXP_MSG_DELAY] == 0) {
            data->seqNum++;
        }
        break;

    case SEQ_GET_EXP_GAUGE:
        // Only animate the gauge for an active battler
        if (slot == data->battleCtx->selectedPartySlot[expBattler]) {
            BattleIO_UpdateExpGauge(data->battleSys, data->battleCtx, expBattler, data->tmpData[3]);
            data->tmpData[GET_EXP_NEW_EXP] = 0;
            data->seqNum++;
        } else {
            data->seqNum = SEQ_GET_EXP_CHECK_LEVEL_UP;
        }
        break;

    case SEQ_GET_EXP_WAIT_GAUGE:
        if (BattleIO_QueueIsEmpty(data->battleCtx)) {
            data->seqNum++;
        }
        break;

    case SEQ_GET_EXP_CHECK_LEVEL_UP:
        if (Pokemon_ShouldLevelUp(mon)) {
            // Only play the special level-up animation for an active battler
            if (data->battleCtx->selectedPartySlot[expBattler] == slot) {
                BattleIO_PlayStatusEffect(data->battleSys, data->battleCtx, expBattler, BATTLE_ANIMATION_LEVEL_UP);
                BattleIO_PlayLevelUpAnimation(data->battleSys, expBattler);
            }

            data->seqNum = SEQ_GET_EXP_WAIT_LEVEL_UP_EFFECT;
        } else {
            data->seqNum = SEQ_GET_EXP_CHECK_DONE;
        }
        break;

    case SEQ_GET_EXP_WAIT_LEVEL_UP_EFFECT:
        if (BattleIO_QueueIsEmpty(data->battleCtx)) {
            int statParams[STAT_MAX] = {
                MON_DATA_MAX_HP,
                MON_DATA_ATK,
                MON_DATA_DEF,
                MON_DATA_SP_ATK,
                MON_DATA_SP_DEF,
                MON_DATA_SPEED
            };
            int level = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);

            // Cache the stats from the previous level for later
            data->battleCtx->tmpData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(PokemonStats));
            PokemonStats *oldStats = data->battleCtx->tmpData;
            for (i = 0; i < STAT_MAX; i++) {
                oldStats->stat[i] = Pokemon_GetValue(mon, statParams[i], NULL);
            }

            Pokemon_UpdateFriendship(mon, 0, BattleSystem_MapHeader(data->battleSys));
            Pokemon_CalcStats(mon);

            if (data->battleCtx->selectedPartySlot[expBattler] == slot) {
                BattleSystem_ReloadPokemon(data->battleSys,
                    data->battleCtx,
                    expBattler,
                    data->battleCtx->selectedPartySlot[expBattler]);
            }

            data->battleCtx->levelUpMons |= FlagIndex(slot);
            BattleIO_RefreshHPGauge(data->battleSys, data->battleCtx, expBattler);

            msg.id = 3; // "{0} grew to Lv. {1}!"
            msg.tags = TAG_NICKNAME_NUM;
            msg.params[0] = expBattler | (slot << 8);
            msg.params[1] = level;
            data->tmpData[GET_EXP_MSG_INDEX] = BattleMessage_Print(data->battleSys, msgLoader, &msg, BattleSystem_TextSpeed(data->battleSys));
            data->seqNum = SEQ_GET_EXP_WAIT_LEVEL_UP_MESSAGE_PRINT;
        }
        break;

    case SEQ_GET_EXP_WAIT_LEVEL_UP_MESSAGE_PRINT:
        if (Text_IsPrinterActive(data->tmpData[GET_EXP_MSG_INDEX]) == 0) {
            data->seqNum = SEQ_GET_EXP_LEVEL_UP_SUMMARY_LOAD_ICON;
            data->tmpData[GET_EXP_LEARNSET_INDEX] = 0;
        }
        break;

    case SEQ_GET_EXP_LEVEL_UP_SUMMARY_LOAD_ICON:
        // Load the Pokemon's Party icon if they are not the active battler
        if (data->battleCtx->selectedPartySlot[expBattler] != slot) {
            BattleScript_LoadPartyLevelUpIcon(data->battleSys, data, mon);
        }

        data->seqNum = SEQ_GET_EXP_LEVEL_UP_SUMMARY_INIT;
        break;

    case SEQ_GET_EXP_LEVEL_UP_SUMMARY_INIT: {
        BgConfig *bgl = BattleSystem_BGL(data->battleSys);
        Window *window = BattleSystem_Window(data->battleSys, 1);
        PaletteData *paletteSys = BattleSystem_PaletteSys(data->battleSys);

        G2_SetBG0Priority(1 + 1); // this is the background + 1; could do with a constant
        Bg_SetPriority(BG_LAYER_MAIN_1, 1);
        Bg_SetPriority(BG_LAYER_MAIN_2, 0);

        BattleSystem_SetGaugePriority(data->battleSys, 0 + 2); // gauge's default is 0

        LoadStandardWindowTiles(bgl, 2, 1, 0, HEAP_ID_BATTLE);
        PaletteData_LoadBufferFromFileStart(paletteSys, NARC_INDEX_GRAPHIC__PL_WINFRAME, GetStandardWindowPaletteNARCMember(), HEAP_ID_BATTLE, 0, 0x20, 8 * 0x10);
        Window_Add(bgl, window, 2, 0x11, 0x7, 14, 12, 11, (9 + 1));
        Window_FillTilemap(window, 0xFF);
        Window_DrawStandardFrame(window, 0, 1, 8);

        data->seqNum = SEQ_GET_EXP_LEVEL_UP_SUMMARY_PRINT_DIFF;
        break;
    }

    case SEQ_GET_EXP_LEVEL_UP_SUMMARY_PRINT_DIFF: {
        int statTags[STAT_MAX] = { 8, 1, 2, 4, 5, 3 };
        int statParams[STAT_MAX] = {
            MON_DATA_MAX_HP,
            MON_DATA_ATK,
            MON_DATA_DEF,
            MON_DATA_SP_ATK,
            MON_DATA_SP_DEF,
            MON_DATA_SPEED
        };
        Window *window = BattleSystem_Window(data->battleSys, 1);
        PokemonStats *oldStats = data->battleCtx->tmpData;

        for (i = 0; i < 6; i++) {
            msg.id = 947; // stat name
            msg.tags = TAG_STAT;
            msg.params[0] = statTags[i];

            BattleMessage_PrintToWindow(data->battleSys, window, msgLoader, &msg, 0, 16 * i, 0, 0, 0);

            msg.id = 948; // "+{0}"
            msg.tags = TAG_NUMBERS;
            msg.params[0] = Pokemon_GetValue(mon, statParams[i], NULL) - oldStats->stat[i];
            msg.digits = 2;

            BattleMessage_PrintToWindow(data->battleSys, window, msgLoader, &msg, 80, 16 * i, 0x2, 28, 0);
        }

        data->seqNum = SEQ_GET_EXP_LEVEL_UP_SUMMARY_PRINT_DIFF_WAIT;
        break;
    }

    case SEQ_GET_EXP_LEVEL_UP_SUMMARY_PRINT_TRUE: {
        int statTags[STAT_MAX] = { 8, 1, 2, 4, 5, 3 }; // unused, but must be kept to match
        int statParams[STAT_MAX] = {
            MON_DATA_MAX_HP,
            MON_DATA_ATK,
            MON_DATA_DEF,
            MON_DATA_SP_ATK,
            MON_DATA_SP_DEF,
            MON_DATA_SPEED
        };
        Window *window = BattleSystem_Window(data->battleSys, 1);

        Window_FillRectWithColor(window, 0xF, 80, 0, 36, 96); // clear out the diff section (keep the printed stat names)

        for (i = 0; i < STAT_MAX; i++) {
            msg.id = 949; // just a number
            msg.tags = TAG_NUMBERS;
            msg.params[0] = Pokemon_GetValue(mon, statParams[i], NULL);
            msg.digits = 3;

            BattleMessage_PrintToWindow(data->battleSys, window, msgLoader, &msg, 72, 16 * i, 0x2, 36, 0);
        }

        data->seqNum = SEQ_GET_EXP_LEVEL_UP_SUMMARY_PRINT_TRUE_WAIT;
        break;
    }

    case SEQ_GET_EXP_LEVEL_UP_SUMMARY_PRINT_DIFF_WAIT:
    case SEQ_GET_EXP_LEVEL_UP_SUMMARY_PRINT_TRUE_WAIT:
        if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_BUTTON_X | PAD_BUTTON_Y)) || TouchScreen_Tapped()) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            data->seqNum++;
        }
        break;

    case SEQ_GET_EXP_LEVEL_UP_CLEAR: {
        Window *window = BattleSystem_Window(data->battleSys, 1);

        Window_EraseStandardFrame(window, 0);
        Window_Remove(window);

        G2_SetBG0Priority(1);
        Bg_SetPriority(BG_LAYER_MAIN_1, 0);
        Bg_SetPriority(BG_LAYER_MAIN_2, 1);

        BattleSystem_SetGaugePriority(data->battleSys, 0);

        if (data->battleCtx->selectedPartySlot[expBattler] != slot) {
            BattleScript_FreePartyLevelUpIcon(data->battleSys, data);
        }

        Heap_Free(data->battleCtx->tmpData);
        data->seqNum = 15;
        break;
    }

    case SEQ_GET_EXP_CHECK_LEARN_MOVE: {
        u16 move;
        BgConfig *bgl = BattleSystem_BGL(data->battleSys); // unused, but must be kept to match

        switch (Pokemon_LevelUpMove(mon, &data->tmpData[GET_EXP_LEARNSET_INDEX], &move)) {
        case LEARNSET_MOVE_ALREADY_KNOWN:
            // go to the next move possibly learnable for a given level
            break;

        case LEARNSET_NO_MOVE_TO_LEARN:
            data->seqNum = SEQ_GET_EXP_GAUGE;
            break;

        case LEARNSET_ALL_SLOTS_FILLED:
            data->tmpData[GET_EXP_MOVE] = move;
            data->seqNum = SEQ_GET_EXP_WANTS_TO_LEARN_MOVE_PRINT;
            break;

        default:
            if (data->battleCtx->selectedPartySlot[expBattler] == slot) {
                BattleSystem_ReloadPokemon(data->battleSys,
                    data->battleCtx,
                    expBattler,
                    data->battleCtx->selectedPartySlot[expBattler]);
            }

            msg.id = 4; // "{0} learned {1}!"
            msg.tags = TAG_NICKNAME_MOVE;
            msg.params[0] = expBattler | (slot << 8);
            msg.params[1] = move;
            data->tmpData[GET_EXP_MSG_INDEX] = BattleMessage_Print(data->battleSys, msgLoader, &msg, BattleSystem_TextSpeed(data->battleSys));
            data->seqNum = SEQ_GET_EXP_LEARNED_MOVE_WAIT;
            break;
        }

        break;
    }

    case SEQ_GET_EXP_WANTS_TO_LEARN_MOVE_PRINT:
        msg.id = 1178; // "{0} wants to learn the move {1}."
        msg.tags = TAG_NICKNAME_MOVE;
        msg.params[0] = expBattler | (slot << 8);
        msg.params[1] = data->tmpData[GET_EXP_MOVE];
        data->tmpData[0] = BattleMessage_Print(data->battleSys, msgLoader, &msg, BattleSystem_TextSpeed(data->battleSys));
        data->seqNum++;
        break;

    case SEQ_GET_EXP_CANT_LEARN_MORE_MOVES_PRINT:
        msg.id = 1179; // "But {0} can't learn more than four moves."
        msg.tags = TAG_NICKNAME;
        msg.params[0] = expBattler | (slot << 8);
        data->tmpData[0] = BattleMessage_Print(data->battleSys, msgLoader, &msg, BattleSystem_TextSpeed(data->battleSys));
        data->seqNum++;
        break;

    case SEQ_GET_EXP_WANTS_TO_LEARN_MOVE_PRINT_WAIT:
    case SEQ_GET_EXP_CANT_LEARN_MORE_MOVES_PRINT_WAIT:
    case SEQ_GET_EXP_ONE_TWO_POOF_WAIT:
    case SEQ_GET_EXP_FORGOT_HOW_TO_USE_WAIT:
    case SEQ_GET_EXP_AND_DOTDOTDOT_WAIT:
    case SEQ_GET_EXP_MAKE_IT_FORGET_CANCELLED_WAIT:
        if (Text_IsPrinterActive(data->tmpData[GET_EXP_MSG_INDEX]) == FALSE) {
            data->seqNum++;
        }
        break;

    case SEQ_GET_EXP_MAKE_IT_FORGET_PROMPT:
        // "Make it forget another move?"
        BattleIO_ShowYesNoScreen(data->battleSys, data->battleCtx, expBattler, 1180, 1, NULL, NULL);
        data->seqNum++;
        break;

    case SEQ_GET_EXP_MAKE_IT_FORGET_ANSWER:
        if (BattleContext_IOBufferVal(data->battleCtx, expBattler)) {
            if (BattleContext_IOBufferVal(data->battleCtx, expBattler) == 0xFF) { // TODO: could use a const
                data->seqNum = SEQ_GET_EXP_MAKE_IT_FORGET_CANCELLED;
            } else {
                msg.id = 1183; // "Which move should be forgotten?"
                msg.tags = TAG_NONE;
                data->tmpData[GET_EXP_MSG_INDEX] = BattleMessage_Print(data->battleSys, msgLoader, &msg, BattleSystem_TextSpeed(data->battleSys));
                data->seqNum = 22;
            }
        }
        break;

    case SEQ_GET_EXP_MAKE_IT_FORGET_WAIT:
        if (Text_IsPrinterActive(data->tmpData[GET_EXP_MSG_INDEX]) == FALSE) {
            BattleIO_ForgetMove(data->battleSys, expBattler, data->tmpData[GET_EXP_MOVE], slot);
            data->seqNum++;
        }
        break;

    case SEQ_GET_EXP_MAKE_IT_FORGET_INPUT_TAKEN:
        if (BattleContext_IOBufferVal(data->battleCtx, expBattler) == 0xFF) {
            data->seqNum = SEQ_GET_EXP_MAKE_IT_FORGET_CANCELLED;
        } else if (BattleContext_IOBufferVal(data->battleCtx, expBattler)) {
            data->tmpData[GET_EXP_MOVE_SLOT] = data->battleCtx->ioBuffer[expBattler][0] - 1;
            data->seqNum = 24;
        }
        break;

    case SEQ_GET_EXP_MAKE_IT_FORGET_CANCELLED:
        msg.id = 1184; // "Well, then..."
        msg.tags = TAG_NONE;
        data->tmpData[GET_EXP_MSG_INDEX] = BattleMessage_Print(data->battleSys, msgLoader, &msg, BattleSystem_TextSpeed(data->battleSys));
        data->seqNum++;
        break;

    case SEQ_GET_EXP_GIVE_UP_LEARNING_PROMPT:
        // "Should this Pokémon give up on learning this new move?"
        BattleIO_ShowYesNoScreen(data->battleSys, data->battleCtx, expBattler, 1185, 2, data->tmpData[4], NULL);
        data->seqNum++;
        break;

    case SEQ_GET_EXP_GIVE_UP_LEARNING_ANSWER:
        if (BattleContext_IOBufferVal(data->battleCtx, expBattler)) {
            if (BattleContext_IOBufferVal(data->battleCtx, expBattler) == 0xFF) {
                data->seqNum = SEQ_GET_EXP_WANTS_TO_LEARN_MOVE_PRINT;
            } else {
                msg.id = 1188; // "{0} did not learn {1}."
                msg.tags = TAG_NICKNAME_MOVE;
                msg.params[0] = expBattler | (slot << 8);
                msg.params[1] = data->tmpData[GET_EXP_MOVE];
                data->tmpData[GET_EXP_MSG_INDEX] = BattleMessage_Print(data->battleSys, msgLoader, &msg, BattleSystem_TextSpeed(data->battleSys));
                data->seqNum = 35;
            }
        }
        break;

    case SEQ_GET_EXP_GIVE_UP_LEARNING_WAIT:
        if (Text_IsPrinterActive(data->tmpData[GET_EXP_MSG_INDEX]) == FALSE) {
            // Check for another move to learn
            data->seqNum = SEQ_GET_EXP_CHECK_LEARN_MOVE;
        }
        break;

    case SEQ_GET_EXP_ONE_TWO_POOF:
        msg.id = 1189; // "1, 2, and... ... Poof!"
        msg.tags = TAG_NONE;
        data->tmpData[GET_EXP_MSG_INDEX] = BattleMessage_Print(data->battleSys, msgLoader, &msg, BattleSystem_TextSpeed(data->battleSys));
        data->seqNum++;
        break;

    case SEQ_GET_EXP_FORGOT_HOW_TO_USE:
        msg.id = 1190; // "{0} forgot how to use {1}."
        msg.tags = TAG_NICKNAME_MOVE;
        msg.params[0] = expBattler | (slot << 8);
        msg.params[1] = Pokemon_GetValue(mon, 54 + data->tmpData[5], NULL);
        data->tmpData[GET_EXP_MSG_INDEX] = BattleMessage_Print(data->battleSys, msgLoader, &msg, BattleSystem_TextSpeed(data->battleSys));
        data->seqNum++;
        break;

    case SEQ_GET_EXP_AND_DOTDOTDOT:
        msg.id = 1191; // "And..."
        msg.tags = TAG_NONE;
        data->tmpData[GET_EXP_MSG_INDEX] = BattleMessage_Print(data->battleSys, msgLoader, &msg, BattleSystem_TextSpeed(data->battleSys));
        data->seqNum++;
        break;

    case SEQ_GET_EXP_LEARNED_MOVE:
        msg.id = 1192; // "{0} learned {1}!"
        msg.tags = TAG_NICKNAME_MOVE;
        msg.params[0] = expBattler | (slot << 8);
        msg.params[1] = data->tmpData[4];
        data->tmpData[GET_EXP_MSG_INDEX] = BattleMessage_Print(data->battleSys, msgLoader, &msg, BattleSystem_TextSpeed(data->battleSys));

        i = 0;
        Pokemon_SetValue(mon, MON_DATA_MOVE1_PP_UPS + data->tmpData[GET_EXP_MOVE_SLOT], &i);
        Pokemon_SetMoveSlot(mon, data->tmpData[GET_EXP_MOVE], data->tmpData[GET_EXP_MOVE_SLOT]);

        if (data->battleCtx->selectedPartySlot[expBattler] == slot) {
            BattleSystem_ReloadPokemon(data->battleSys,
                data->battleCtx,
                expBattler,
                data->battleCtx->selectedPartySlot[expBattler]);
        }

        data->seqNum = SEQ_GET_EXP_LEARNED_MOVE_WAIT;
        break;

    case SEQ_GET_EXP_LEARNED_MOVE_WAIT:
        if (Text_IsPrinterActive(data->tmpData[GET_EXP_MSG_INDEX]) == FALSE) {
            // Check for another move to learn
            data->seqNum = SEQ_GET_EXP_CHECK_LEARN_MOVE;
        }
        break;

    case SEQ_GET_EXP_CHECK_DONE:
        data->battleCtx->sideGetExpMask[battler] &= (FlagIndex(slot) ^ 0xFFFFFFFF); // this mon is done
        data->tmpData[GET_EXP_PARTY_SLOT] = slot + 1;
        data->seqNum = SEQ_GET_EXP_START; // go back to the top and get the next mon
        break;

    case SEQ_GET_EXP_DONE:
        data->battleCtx->taskData = NULL;
        Heap_Free(inData);
        SysTask_Done(task);
        break;
    }
}

/**
 * @brief Compute the effort-value payout for a given party member, considering
 * that they participating in the defeat of an opponent with the given species
 * and form.
 *
 * @param party     The Party struct
 * @param slot      Slot in the party deserving EV payout
 * @param species   The species of the defeated foe
 * @param form      The form of the defeated foe
 */
static void BattleScript_CalcEffortValues(Party *party, int slot, int species, int form)
{
    // must declare C89-style to match
    int stat;
    s16 tmp = 0;
    u8 curEVs[6];
    u16 sumEVs;
    u16 item;
    int itemEffect;
    int itemPower;
    SpeciesData *personal = SpeciesData_FromMonForm(species, form, HEAP_ID_BATTLE);
    Pokemon *mon = Party_GetPokemonBySlotIndex(party, slot);
    item = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
    itemEffect = Item_LoadParam(item, ITEM_PARAM_HOLD_EFFECT, HEAP_ID_BATTLE);
    itemPower = Item_LoadParam(item, ITEM_PARAM_HOLD_EFFECT_PARAM, HEAP_ID_BATTLE);
    sumEVs = 0;

    for (stat = 0; stat < STAT_MAX; stat++) {
        curEVs[stat] = Pokemon_GetValue(mon, MON_DATA_HP_EV + stat, NULL);
        sumEVs += curEVs[stat];
    }

    for (stat = 0; stat < STAT_MAX; stat++) {
        if (sumEVs >= MAX_EVS_ALL_STATS) {
            break;
        }

        switch (stat) {
        case STAT_HP:
            tmp = SpeciesData_GetValue(personal, SPECIES_DATA_EV_HP_YIELD);
            if (itemEffect == HOLD_EFFECT_LVLUP_HP_EV_UP) {
                tmp += itemPower;
            }
            break;

        case STAT_ATTACK:
            tmp = SpeciesData_GetValue(personal, SPECIES_DATA_EV_ATK_YIELD);
            if (itemEffect == HOLD_EFFECT_LVLUP_ATK_EV_UP) {
                tmp += itemPower;
            }
            break;

        case STAT_DEFENSE:
            tmp = SpeciesData_GetValue(personal, SPECIES_DATA_EV_DEF_YIELD);
            if (itemEffect == HOLD_EFFECT_LVLUP_DEF_EV_UP) {
                tmp += itemPower;
            }
            break;

        case STAT_SPEED:
            tmp = SpeciesData_GetValue(personal, SPECIES_DATA_EV_SPEED_YIELD);
            if (itemEffect == HOLD_EFFECT_LVLUP_SPEED_EV_UP) {
                tmp += itemPower;
            }
            break;

        case STAT_SPECIAL_ATTACK:
            tmp = SpeciesData_GetValue(personal, SPECIES_DATA_EV_SP_ATK_YIELD);
            if (itemEffect == HOLD_EFFECT_LVLUP_SPATK_EV_UP) {
                tmp += itemPower;
            }
            break;

        case STAT_SPECIAL_DEFENSE:
            tmp = SpeciesData_GetValue(personal, SPECIES_DATA_EV_SP_DEF_YIELD);
            if (itemEffect == HOLD_EFFECT_LVLUP_SPDEF_EV_UP) {
                tmp += itemPower;
            }
            break;
        }

        if (Pokemon_HasPokerus(party, FlagIndex(slot))) {
            tmp *= 2;
        }

        if (itemEffect == HOLD_EFFECT_EVS_UP_SPEED_DOWN) {
            tmp *= 2;
        }

        // Don't let the sum of all EVs exceed the sum max
        if (sumEVs + tmp > MAX_EVS_ALL_STATS) {
            tmp -= (sumEVs + tmp - MAX_EVS_ALL_STATS);
        }

        // Don't let the sum of EVs for this stat exceed the stat-local max
        if (curEVs[stat] + tmp > MAX_EVS_SINGLE_STAT) {
            tmp -= (curEVs[stat] + tmp - MAX_EVS_SINGLE_STAT);
        }

        curEVs[stat] += tmp;
        sumEVs += tmp;
        Pokemon_SetValue(mon, MON_DATA_HP_EV + stat, &curEVs[stat]);
    }

    SpeciesData_Free(personal);
}

static void BattleScript_CatchMonTask(SysTask *param0, void *param1)
{
    int v0;
    int v1;
    BattleScriptTaskData *v2 = param1;
    Pokemon *v3;
    PaletteData *v4;
    PokemonSpriteManager *v5;
    MessageLoader *v6 = BattleSystem_MessageLoader(v2->battleSys);
    v4 = BattleSystem_PaletteSys(v2->battleSys);
    v5 = ov16_0223E000(v2->battleSys);
    v1 = 1;

    if (v2->battleCtx->battlersSwitchingMask & FlagIndex(v1)) {
        v1 = 3;
    }

    switch (v2->seqNum) {
    case 0:
        if (v2->flag == 0) {
            {
                BallThrow v7;

                v7.mode = 3;
                v7.heapID = HEAP_ID_BATTLE;
                v7.target = v1 + 20000;
                v7.ballID = v2->ball;
                v7.cellActorSys = BattleSystem_GetSpriteSystem(v2->battleSys);
                v7.paletteSys = BattleSystem_PaletteSys(v2->battleSys);
                v7.bgPrio = 1;
                v7.surface = 0;
                v7.battleSys = v2->battleSys;

                if (BattleSystem_BattleType(v2->battleSys) & BATTLE_TYPE_DOUBLES) {
                    if (v1 == 1) {
                        v7.type = 16;
                    } else {
                        v7.type = 17;
                    }
                } else {
                    v7.type = 15;
                }

                v2->ballRotation = ov12_02237728(&v7);
                v2->seqNum = 1;

                Sound_PlayEffect(SEQ_SE_DP_NAGERU);
                v2->battleSys->unk_241E++;
                ov12_022368C8(v2->ballRotation, 0);
            }
        } else {
            {
                BattlerData *v8;

                v8 = BattleSystem_BattlerData(v2->battleSys, 0);

                if (ov12_02237890(v8->unk_84) != 4) {
                    v2->ballRotation = v8->unk_84;
                    v8->unk_84 = NULL;
                    v2->seqNum = 1;

                    Sound_PlayEffect(SEQ_SE_DP_NAGERU);
                    v2->battleSys->unk_241E++;
                    ov12_022368C8(v2->ballRotation, 0);
                }
            }
        }
        break;
    case 1:
        if (ov12_022368D0(v2->ballRotation, 0) == 0) {
            {
                u32 battleType = BattleSystem_BattleType(v2->battleSys);

                if (battleType & BATTLE_TYPE_TRAINER) {
                    Sound_PlayPannedEffect(SEQ_SE_DP_KON, 117);
                    ov12_022368C8(v2->ballRotation, 2);
                    v2->seqNum = 25;
                } else {
                    Sound_PlayPannedEffect(SEQ_SE_DP_BOWA4, 117);
                    ov12_022368C8(v2->ballRotation, 1);

                    v2->seqNum = 2;
                    v2->tmpData[1] = 23;
                }
            }
        }
        break;
    case 2:
        if (--v2->tmpData[1] == 0) {
            ov16_02265050(v2->battleSys, v1, v2->ball);
            v2->tmpData[2] = BattleScript_CalcCatchShakes(v2->battleSys, v2->battleCtx);

            if (v2->tmpData[2] < 4) {
                v2->tmpData[3] = v2->tmpData[2];
            } else {
                v2->tmpData[3] = 3;
            }

            v2->seqNum = 3;
        }
        break;
    case 3:
        if ((ov12_022368D0(v2->ballRotation, 1) == 0) && (BattleIO_QueueIsEmpty(v2->battleCtx))) {
            ov12_022368C8(v2->ballRotation, 3);
            v2->seqNum = 4;
        }
        break;
    case 4:
        if (ov12_022368D0(v2->ballRotation, 3) == 0) {
            v2->seqNum = 5;
        }
        break;
    case 5:
        if (v2->tmpData[3] == 0) {
            if (v2->tmpData[2] == 4) {
                v2->seqNum = 7;
                v2->tmpData[1] = 12;
            } else {
                v2->seqNum = 28;
            }
        } else {
            ov12_022368C8(v2->ballRotation, 4);
            v2->seqNum = 6;
            v2->tmpData[1] = 12;
        }
        break;
    case 6:
        if (ov12_022368D0(v2->ballRotation, 4) == 0) {
            if (--v2->tmpData[1] == 0) {
                v2->tmpData[3]--;
                v2->seqNum = 5;
            }
        }
        break;
    case 7:
        if (--v2->tmpData[1] == 0) {
            ov12_022368C8(v2->ballRotation, 6);
            Sound_PlayPannedEffect(SEQ_SE_DP_GETTING, 117);
            v2->seqNum = 8;
        }
        break;
    case 8:
        if (ov12_022368D0(v2->ballRotation, 6) == 0) {
            {
                BattleMessage v10;

                v10.id = 867;
                v10.tags = 2 | 0x80;
                v10.params[0] = v1;
                v2->tmpData[0] = BattleMessage_Print(v2->battleSys, v6, &v10, BattleSystem_TextSpeed(v2->battleSys));
                v2->tmpData[1] = 30;
                v2->seqNum = 9;

                Sound_PlayBGM(SEQ_VICTORY_WILD_POKEMON);
                BattleSystem_SetRedHPSoundFlag(v2->battleSys, 2);
            }
        }
        break;
    case 9:
        if (Text_IsPrinterActive(v2->tmpData[0]) == 0) {
            v2->seqNum = 10;
            ov12_022368C8(v2->ballRotation, 7);
        }
        break;
    case 10:
        if (ov12_022368D0(v2->ballRotation, 7) == 0) {
            if (--v2->tmpData[1] == 0) {
                ov16_0223F4B0(v2->battleSys, v1);
                v3 = BattleSystem_PartyPokemon(v2->battleSys, v1, v2->battleCtx->selectedPartySlot[v1]);

                if (BattleSystem_BattleType(v2->battleSys) & (BATTLE_TYPE_PAL_PARK | BATTLE_TYPE_CATCH_TUTORIAL)) {
                    v3 = BattleSystem_PartyPokemon(v2->battleSys, v1, v2->battleCtx->selectedPartySlot[v1]);
                    BattleSystem_SetPokemonCatchData(v2->battleSys, v2->battleCtx, v3);
                    sub_02015738(ov16_0223E220(v2->battleSys), 1);
                    PaletteData_StartFade(v4, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 0, 16, 0x0);
                    PokemonSpriteManager_StartFadeAll(v5, 0, 16, 0, 0x0);
                    v2->seqNum = 32;
                } else if (BattleSystem_CaughtSpecies(v2->battleSys, Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL))) {
                    sub_02015738(ov16_0223E220(v2->battleSys), 1);
                    PaletteData_StartFade(v4, (0x1 | 0x4), 0xffff, 1, 0, 16, 0x0);
                    PokemonSpriteManager_StartFadeAll(v5, 0, 16, 0, 0x0);
                    v2->seqNum = 16;
                } else {
                    {
                        BattleMessage v11;

                        v11.id = 871;
                        v11.tags = 2 | 0x80;
                        v11.params[0] = v1;
                        v2->tmpData[0] = BattleMessage_Print(v2->battleSys, v6, &v11, BattleSystem_TextSpeed(v2->battleSys));
                        v2->tmpData[1] = 30;
                        v2->seqNum = 11;
                    }

                    ov16_0223F268(v2->battleSys);
                }
            }
        }
        break;
    case 11:
        if (Text_IsPrinterActive(v2->tmpData[0]) == 0) {
            if (--v2->tmpData[1] == 0) {
                v2->seqNum = 12;
                PaletteData_StartFade(v4, (0x1 | 0x4), 0xffff, 1, 0, 16, 0x0);
                PokemonSpriteManager_StartFadeAll(v5, 0, 16, 0, 0x0);
                sub_02015738(ov16_0223E220(v2->battleSys), 1);
            }
        }
        break;
    case 12:
        if (PaletteData_GetSelectedBuffersMask(v4) == 0) {
            {
                UnkStruct_ov21_021E8E0C v12;

                ov12_0223783C(v2->ballRotation);
                PokemonSpriteManager_DeleteAll(v5);
                ov16_0223B53C(v2->battleSys);
                ov16_022686BC(ov16_0223E020(v2->battleSys, 0), 0);
                ov16_022686BC(ov16_0223E020(v2->battleSys, 1), 0);
                ov16_02263B20(BattleSystem_BattlerData(v2->battleSys, 0), 0);

                v12.unk_00 = BattleSystem_BGL(v2->battleSys);
                v12.unk_04 = BattleSystem_PaletteSys(v2->battleSys);
                v12.unk_08 = v5;
                v12.heapID = HEAP_ID_BATTLE;
                v12.unk_10 = BattleSystem_PartyPokemon(v2->battleSys, v1, v2->battleCtx->selectedPartySlot[v1]);
                v12.unk_14 = IsNationalDexObtained(BattleSystem_GetPokedex(v2->battleSys));
                v2->tmpPtr[1] = CharTransfer_PopTaskManager();
                v2->tmpPtr[0] = ov21_021E8D48(&v12);
                v2->seqNum = 13;
            }
        }
        break;
    case 13:
        if (ov21_021E8DEC(v2->tmpPtr[0])) {
            if (gSystem.pressedKeys & PAD_BUTTON_A) {
                v2->seqNum = 14;
            } else if (TouchScreen_Tapped()) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                v2->seqNum = 14;
            }

            if (v2->seqNum == 14) {
                PaletteData_StartFade(v4, (0x1 | 0x4), 0xffff, 1, 0, 16, 0x0);
                ov21_021E8E04(v2->tmpPtr[0], 0);
            }
        }
        break;
    case 14: {
        PokemonSprite *v13;

        v13 = ov21_021E8E00(v2->tmpPtr[0]);
        PokemonSprite_AddAttribute(v13, MON_SPRITE_X_CENTER, 4);

        if (PokemonSprite_GetAttribute(v13, MON_SPRITE_X_CENTER) >= 128) {
            PokemonSprite_SetAttribute(v13, MON_SPRITE_X_CENTER, 128);
            v2->seqNum = 15;
        }
    } break;
    case 15:
        ov21_021E8DD0(v2->tmpPtr[0]);
        CharTransfer_PushTaskManager(v2->tmpPtr[1]);
        ov16_0223B578(v2->battleSys);
        PaletteData_StartFade(v4, (0x1 | 0x4), 0xffff, 1, 16, 0, 0x0);
        v2->seqNum = 17;
        break;
    case 16:
        if (PaletteData_GetSelectedBuffersMask(v4) == 0) {
            {
                PokemonSpriteTemplate v14;

                v3 = BattleSystem_PartyPokemon(v2->battleSys, v1, v2->battleCtx->selectedPartySlot[v1]);

                ov12_0223783C(v2->ballRotation);
                PokemonSpriteManager_DeleteAll(v5);
                ov16_02263B20(BattleSystem_BattlerData(v2->battleSys, 0), 0);
                ov16_0223B53C(v2->battleSys);
                ov16_0223B578(v2->battleSys);
                Pokemon_BuildSpriteTemplate(&v14, v3, 2);
                PokemonSpriteManager_CreateSprite(v5, &v14, 128, 72, 0, 0, NULL, NULL);
                PaletteData_StartFade(v4, (0x1 | 0x4), 0xffff, 1, 16, 0, 0x0);
                PokemonSpriteManager_StartFadeAll(v5, 16, 0, 0, 0x0);

                v2->seqNum = 17;
            }
        }
        break;
    case 17:
        if (PaletteData_GetSelectedBuffersMask(v4) == 0) {
            {
                v2->seqNum = 18;

                sub_02015738(ov16_0223E220(v2->battleSys), 0);
                PaletteData_SetAutoTransparent(v4, 1);
            }
        }
        break;
    case 18: {
        int v15;

        v15 = v1 | (v2->battleCtx->selectedPartySlot[v1]);
        BattleIO_ShowYesNoScreen(v2->battleSys, v2->battleCtx, 0, 868, 5, NULL, v15);
        v2->seqNum++;
    } break;
    case 19:
        if (BattleContext_IOBufferVal(v2->battleCtx, 0)) {
            if (BattleContext_IOBufferVal(v2->battleCtx, 0) == 0xff) {
                v2->seqNum = 22;
            } else {
                sub_02015738(ov16_0223E220(v2->battleSys), 1);
                PaletteData_StartFade(v4, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 0, 16, 0x0);
                PokemonSpriteManager_StartFadeAll(v5, 0, 16, 0, 0x0);
                v2->seqNum = 20;
            }
        }
        break;
    case 20:
        if (PaletteData_GetSelectedBuffersMask(v4) == 0) {
            {
                NamingScreenArgs *v16;

                SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
                SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);

                v3 = BattleSystem_PartyPokemon(v2->battleSys, v1, v2->battleCtx->selectedPartySlot[v1]);
                v16 = NamingScreenArgs_Init(
                    HEAP_ID_BATTLE,
                    NAMING_SCREEN_TYPE_POKEMON,
                    Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL),
                    MON_NAME_LEN,
                    BattleSystem_GetOptions(v2->battleSys));
                v2->tmpPtr[1] = v16;

                if (BattleSystem_PartyCount(v2->battleSys, 0) < 6) {
                    v16->battleMsgID = 0;
                } else {
                    v16->battleMsgID = 1174 + ov16_0223F240(v2->battleSys);
                }

                v16->monForm = Pokemon_GetValue(v3, MON_DATA_FORM, NULL);
                v16->pcBoxes = BattleSystem_PCBoxes(v2->battleSys);
                v16->monGender = Pokemon_GetValue(v3, MON_DATA_GENDER, NULL);
                v2->tmpPtr[0] = ApplicationManager_New(&gNamingScreenAppTemplate, v16, HEAP_ID_BATTLE);
                v2->seqNum = 21;

                ov16_0223F414(v2->battleSys);

                {
                    int v17;
                    BattlerData *v18;

                    for (v17 = 0; v17 < BattleSystem_MaxBattlers(v2->battleSys); v17++) {
                        v18 = BattleSystem_BattlerData(v2->battleSys, v17);

                        if (v18->unk_18) {
                            Sprite_DeleteAndFreeResources(v18->unk_18);
                            v18->unk_18 = NULL;
                        }
                    }
                }

                ov16_0223B3E4(v2->battleSys);
                ov16_0223F314(v2->battleSys, 1);
            }
        }
        break;
    case 21:
        if (ApplicationManager_Exec(v2->tmpPtr[0])) {
            {
                NamingScreenArgs *v19;
                int v20;

                v19 = v2->tmpPtr[1];
                v3 = BattleSystem_PartyPokemon(v2->battleSys, v1, v2->battleCtx->selectedPartySlot[v1]);

                if (v19->returnCode == NAMING_SCREEN_CODE_OK) {
                    Pokemon_SetValue(v3, MON_DATA_NICKNAME_STRING_AND_FLAG, v19->textInputStr);
                    ov16_0223F24C(v2->battleSys, (1 + 48));
                }

                NamingScreenArgs_Free(v19);
                ApplicationManager_Free(v2->tmpPtr[0]);
                ov16_0223F314(v2->battleSys, 2);

                v2->seqNum = 23;
            }
        }
        break;
    case 22:
    case 23:
        if (PaletteData_GetSelectedBuffersMask(v4) == 0) {
            {
                BattleMessage v21;
                Party *v22;
                int v23;

                v22 = BattleSystem_Party(v2->battleSys, 0);
                v3 = BattleSystem_PartyPokemon(v2->battleSys, v1, v2->battleCtx->selectedPartySlot[v1]);

                ov16_0223F9A0(v2->battleSys, v1);
                BattleSystem_SetPokemonCatchData(v2->battleSys, v2->battleCtx, v3);
                ov16_0223EF48(v2->battleSys, v3);
                ov16_0223EF68(v2->battleSys, v3);
                BattleIO_IncrementRecord(v2->battleSys, 0, 0, (1 + 8));

                if (Party_AddPokemon(v22, v3) == 1) {
                    if (v2->seqNum == 22) {
                        sub_02015738(ov16_0223E220(v2->battleSys), 1);
                        PaletteData_StartFade(v4, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 0, 16, 0x0);
                        PokemonSpriteManager_StartFadeAll(v5, 0, 16, 0, 0x0);
                    }

                    v2->seqNum = 32;
                } else {
                    {
                        PCBoxes *pcBoxes;
                        u32 v25;
                        u32 v26;
                        int v27;
                        int v28;
                        int v29;

                        pcBoxes = BattleSystem_PCBoxes(v2->battleSys);
                        v25 = PCBoxes_GetCurrentBoxID(pcBoxes);
                        v26 = PCBoxes_FirstEmptyBox(pcBoxes);

                        PCBoxes_SetCurrentBox(pcBoxes, v26);

                        for (v27 = 0; v27 < LEARNED_MOVES_MAX; v27++) {
                            v28 = Pokemon_GetValue(v3, MON_DATA_MOVE1_MAX_PP + v27, NULL);
                            Pokemon_SetValue(v3, MON_DATA_MOVE1_PP + v27, &v28);
                        }

                        if (Pokemon_SetGiratinaFormByHeldItem(v3) != -1) {
                            ov16_0223F9A0(v2->battleSys, v1);
                        }

                        PCBoxes_TryStoreBoxMonInBox(pcBoxes, v26, Pokemon_GetBoxPokemon(v3));

                        if (v2->seqNum == 22) {
                            if (v25 == v26) {
                                v21.id = 1174 + ov16_0223F240(v2->battleSys);
                                v21.tags = 19 | 0x80;
                                v21.params[0] = v1;
                                v21.params[1] = v25;
                            } else {
                                v21.id = 1176 + ov16_0223F240(v2->battleSys);
                                v21.tags = 47 | 0x80;
                                v21.params[0] = v1;
                                v21.params[1] = v25;
                                v21.params[2] = v26;
                            }

                            v2->tmpData[0] = BattleMessage_Print(v2->battleSys, v6, &v21, BattleSystem_TextSpeed(v2->battleSys));
                            v2->tmpData[1] = 30;
                            v2->seqNum = 24;
                        } else {
                            v2->seqNum = 32;
                        }
                    }
                }
            }
        }
        break;
    case 24:
        if (Text_IsPrinterActive(v2->tmpData[0]) == 0) {
            if (--v2->tmpData[1] == 0) {
                {
                    sub_02015738(ov16_0223E220(v2->battleSys), 1);
                    PaletteData_StartFade(v4, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 0, 16, 0x0);
                    PokemonSpriteManager_StartFadeAll(v5, 0, 16, 0, 0x0);

                    v2->seqNum = 32;
                }
            }
        }
        break;
    case 25:
        if (ov12_022368D0(v2->ballRotation, 2) == 0) {
            {
                BattleMessage v30;

                ov12_0223783C(v2->ballRotation);

                v30.id = 859;
                v30.tags = 0;

                v2->tmpData[0] = BattleMessage_Print(v2->battleSys, v6, &v30, BattleSystem_TextSpeed(v2->battleSys));
                v2->tmpData[1] = 30;
                v2->seqNum = 26;
            }
        }
        break;
    case 26:
        if (Text_IsPrinterActive(v2->tmpData[0]) == 0) {
            if (--v2->tmpData[1] == 0) {
                {
                    BattleMessage v31;

                    v31.id = 860;
                    v31.tags = 0;
                    v2->tmpData[0] = BattleMessage_Print(v2->battleSys, v6, &v31, BattleSystem_TextSpeed(v2->battleSys));
                    v2->tmpData[1] = 30;
                    v2->seqNum = 27;
                }
            }
        }
        break;
    case 27:
        if (Text_IsPrinterActive(v2->tmpData[0]) == 0) {
            if (--v2->tmpData[1] == 0) {
                v2->battleCtx->taskData = NULL;
                Heap_Free(param1);
                SysTask_Done(param0);
            }
        }
        break;
    case 28:
        BattleIO_ShowPokemon(v2->battleSys, v1, v2->ball, 1);
        v2->seqNum = 29;
        v2->tmpData[1] = 2;
        break;
    case 29:
        if (--v2->tmpData[1] == 0) {
            ov12_0223783C(v2->ballRotation);
            v2->seqNum = 30;
        }
        break;
    case 30:
        if (BattleIO_QueueIsEmpty(v2->battleCtx)) {
            {
                BattleMessage v32;

                v32.id = 863 + v2->tmpData[2];
                v32.tags = 0;
                v2->tmpData[0] = BattleMessage_Print(v2->battleSys, v6, &v32, BattleSystem_TextSpeed(v2->battleSys));
                v2->tmpData[1] = 30;
                v2->seqNum = 31;
            }
        }
        break;
    case 31:
        if (Text_IsPrinterActive(v2->tmpData[0]) == 0) {
            if (--v2->tmpData[1] == 0) {
                v2->battleCtx->taskData = NULL;
                Heap_Free(param1);
                SysTask_Done(param0);
            }
        }
        break;
    case 32:
        if (PaletteData_GetSelectedBuffersMask(v4) == 0) {
            if (BattleSystem_BattleType(v2->battleSys) & (BATTLE_TYPE_PAL_PARK | BATTLE_TYPE_CATCH_TUTORIAL)) {
                ov12_0223783C(v2->ballRotation);
                PokemonSpriteManager_DeleteAll(v5);
            }

            v2->battleSys->resultMask = 0x4;
            v2->battleCtx->taskData = NULL;

            Heap_Free(param1);
            SysTask_Done(param0);
        }
        break;
    }
}

static const u8 sBasicBallMod[] = {
    20, // ITEM_ULTRA_BALL
    15, // ITEM_GREAT_BALL
    10, // ITEM_POKE_BALL
    15, // ITEM_SAFARI_BALL
};

static const struct Fraction sSafariCatchRate[] = {
    { 10, 40 },
    { 10, 35 },
    { 10, 30 },
    { 10, 25 },
    { 10, 20 },
    { 10, 15 },
    { 10, 10 },
    { 15, 10 },
    { 20, 10 },
    { 25, 10 },
    { 30, 10 },
    { 35, 10 },
    { 40, 10 }
};

/**
 * @brief Computes the number of times that a Poke Ball will "shake" when
 * attempting to capture a wild Pokemon.
 *
 * This is, effectively, the capture formula. It performs all computations which
 * factor into whether a given Pokemon will be caught or not, including the wild
 * Pokemon's species, the type of ball being used, and Safari Zone mechanics.
 *
 * @param battleSys
 * @param battleCtx
 * @return The number of times that a Poke Ball will shake during a capture
 * attempt. 4 shakes is defined as a successful capture.
 */
static int BattleScript_CalcCatchShakes(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_ALWAYS_CATCH) {
        return 4;
    }

    u32 speciesMod;
    if (battleCtx->msgItemTemp == ITEM_SAFARI_BALL) {
        speciesMod = SpeciesData_GetSpeciesValue(battleCtx->battleMons[battleCtx->defender].species, SPECIES_DATA_CATCH_RATE);
        speciesMod = speciesMod * sSafariCatchRate[battleCtx->safariCatchStage].numerator / sSafariCatchRate[battleCtx->safariCatchStage].denominator;
    } else {
        speciesMod = SpeciesData_GetSpeciesValue(battleCtx->battleMons[battleCtx->defender].species, SPECIES_DATA_CATCH_RATE);
    }

    u32 ballMod = 10;
    int type1 = BattleMon_Get(battleCtx, battleCtx->defender, BATTLEMON_TYPE_1, NULL);
    int type2 = BattleMon_Get(battleCtx, battleCtx->defender, BATTLEMON_TYPE_2, NULL);

    if (battleCtx->msgItemTemp > ITEM_SAFARI_BALL) {
        switch (battleCtx->msgItemTemp) {
        case ITEM_NET_BALL:
            if (type1 == TYPE_WATER || type2 == TYPE_WATER
                || type1 == TYPE_BUG || type2 == TYPE_BUG) {
                ballMod = 30;
            }
            break;

        case ITEM_DIVE_BALL:
            if (BattleSystem_Terrain(battleSys) == TERRAIN_WATER) {
                ballMod = 35;
            }
            break;

        case ITEM_NEST_BALL:
            if (battleCtx->battleMons[battleCtx->defender].level < 40) {
                ballMod = 40 - battleCtx->battleMons[battleCtx->defender].level;

                if (ballMod < 10) {
                    ballMod = 10;
                }
            }
            break;

        case ITEM_REPEAT_BALL:
            if (BattleSystem_CaughtSpecies(battleSys, battleCtx->battleMons[battleCtx->defender].species) == TRUE) {
                ballMod = 30;
            }
            break;

        case ITEM_TIMER_BALL:
            ballMod = 10 + battleCtx->totalTurns;
            if (ballMod > 40) {
                ballMod = 40;
            }
            break;

        case ITEM_DUSK_BALL:
            if (BattleSystem_Time(battleSys) == TIMEOFDAY_NIGHT
                || BattleSystem_Time(battleSys) == TIMEOFDAY_LATE_NIGHT
                || BattleSystem_Terrain(battleSys) == TERRAIN_CAVE) {
                ballMod = 35;
            }
            break;

        case ITEM_QUICK_BALL:
            if (battleCtx->totalTurns < 1) {
                ballMod = 40;
            }
            break;
        }
    } else {
        ballMod = sBasicBallMod[battleCtx->msgItemTemp - ITEM_ULTRA_BALL];
    }

    u32 catchRate = (speciesMod * ballMod / 10)
        * (battleCtx->battleMons[battleCtx->defender].maxHP * 3 - battleCtx->battleMons[battleCtx->defender].curHP * 2)
        / (battleCtx->battleMons[battleCtx->defender].maxHP * 3);

    if (battleCtx->battleMons[battleCtx->defender].status & (MON_CONDITION_SLEEP | MON_CONDITION_FREEZE)) {
        catchRate *= 2;
    }

    if (battleCtx->battleMons[battleCtx->defender].status & (MON_CONDITION_POISON | MON_CONDITION_BURN | MON_CONDITION_PARALYSIS | MON_CONDITION_TOXIC)) {
        catchRate = catchRate * 15 / 10;
    }

    int shakes;
    if (catchRate >= 0xFF) {
        shakes = 4;
    } else {
        u32 sqrtRate = (0xFF << 16) / catchRate;
        CP_SetSqrt32(sqrtRate);
        CP_WaitSqrt();

        sqrtRate = CP_GetSqrtResult32();
        CP_SetSqrt32(sqrtRate);
        CP_WaitSqrt();

        catchRate = CP_GetSqrtResult32();
        catchRate = (0xFFFF << 4) / catchRate;

        for (shakes = 0; shakes < 4; shakes++) {
            if (BattleSystem_RandNext(battleSys) >= catchRate) {
                break;
            }
        }

        if (battleCtx->msgItemTemp == ITEM_MASTER_BALL) {
            shakes = 4;
        }
    }

    return shakes;
}

/**
 * @brief Get a true battler ID from the requested battler value.
 *
 * Input values should fall in the range of
 * BTLSCR_ATTACKER >= battlerIn >= BTLSCR_SWITCHED_MON_AFTER.
 *
 * @param battleSys
 * @param battleCtx
 * @param battlerIn     The requested battler
 * @return ID of the requested battler
 */
static int BattleScript_Battler(BattleSystem *battleSys, BattleContext *battleCtx, int battlerIn)
{
    int battlerOut;
    BattlerData *battlerData;
    int maxBattlers, expectedBattlerType, side;

    switch (battlerIn) {
    default:
    case BTLSCR_ATTACKER:
        battlerOut = battleCtx->attacker;
        break;

    case BTLSCR_DEFENDER:
        battlerOut = battleCtx->defender;
        break;

    case BTLSCR_FAINTED_MON:
        battlerOut = battleCtx->faintedMon;
        break;

    case BTLSCR_SWITCHED_MON:
    case BTLSCR_SWITCHED_MON_AFTER:
        battlerOut = battleCtx->switchedMon;
        break;

    case BTLSCR_SIDE_EFFECT_MON:
        battlerOut = battleCtx->sideEffectMon;
        break;

    case BTLSCR_ABILITY_MON:
        battlerOut = battleCtx->abilityMon;
        break;

    case BTLSCR_ENEMY:
        maxBattlers = BattleSystem_MaxBattlers(battleSys);
        for (battlerOut = 0; battlerOut < maxBattlers; battlerOut++) {
            battlerData = BattleSystem_BattlerData(battleSys, battlerOut);
            if (battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) {
                break;
            }
        }
        break;

    case BTLSCR_ENEMY_SLOT_1:
        maxBattlers = BattleSystem_MaxBattlers(battleSys);
        for (battlerOut = 0; battlerOut < maxBattlers; battlerOut++) {
            battlerData = BattleSystem_BattlerData(battleSys, battlerOut);
            if (battlerData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1 || battlerData->battlerType == BATTLER_TYPE_SOLO_ENEMY) {
                break;
            }
        }
        break;

    case BTLSCR_ENEMY_SLOT_2:
        if (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES) {
            expectedBattlerType = BATTLER_TYPE_ENEMY_SIDE_SLOT_2;
        } else {
            expectedBattlerType = BATTLER_TYPE_SOLO_ENEMY;
        }

        maxBattlers = BattleSystem_MaxBattlers(battleSys);
        for (battlerOut = 0; battlerOut < maxBattlers; battlerOut++) {
            battlerData = BattleSystem_BattlerData(battleSys, battlerOut);
            if (battlerData->battlerType == expectedBattlerType) {
                break;
            }
        }
        break;

    case BTLSCR_PLAYER:
        maxBattlers = BattleSystem_MaxBattlers(battleSys);
        for (battlerOut = 0; battlerOut < maxBattlers; battlerOut++) {
            battlerData = BattleSystem_BattlerData(battleSys, battlerOut);
            if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
                break;
            }
        }
        break;

    case BTLSCR_PLAYER_SLOT_1:
        maxBattlers = BattleSystem_MaxBattlers(battleSys);
        for (battlerOut = 0; battlerOut < maxBattlers; battlerOut++) {
            battlerData = BattleSystem_BattlerData(battleSys, battlerOut);
            if (battlerData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1
                || battlerData->battlerType == BATTLER_TYPE_SOLO_PLAYER) {
                break;
            }
        }
        break;

    case BTLSCR_PLAYER_SLOT_2:
        if (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES) {
            expectedBattlerType = BATTLER_TYPE_PLAYER_SIDE_SLOT_2;
        } else {
            expectedBattlerType = BATTLER_TYPE_SOLO_PLAYER;
        }

        maxBattlers = BattleSystem_MaxBattlers(battleSys);
        for (battlerOut = 0; battlerOut < maxBattlers; battlerOut++) {
            battlerData = BattleSystem_BattlerData(battleSys, battlerOut);
            if (battlerData->battlerType == expectedBattlerType) {
                break;
            }
        }
        break;

    case BTLSCR_MSG_ATTACKER:
        battlerOut = battleCtx->msgAttacker;
        break;

    case BTLSCR_MSG_DEFENDER:
        battlerOut = battleCtx->msgDefender;
        break;

    case BTLSCR_ATTACKER_PARTNER: {
        // must re-declare to match
        int battlers = BattleSystem_MaxBattlers(battleSys);
        for (battlerOut = 0; battlerOut < battlers; battlerOut++) {
            if (battlerOut != battleCtx->attacker
                && Battler_Side(battleSys, battlerOut) == Battler_Side(battleSys, battleCtx->attacker)) {
                break;
            }
        }

        if (battlerOut == battlers) {
            GF_ASSERT("FALSE");
            battlerOut = 0;
        }
        break;
    }

    case BTLSCR_DEFENDER_PARTNER: {
        // must re-declare to match
        int battlers = BattleSystem_MaxBattlers(battleSys);
        for (battlerOut = 0; battlerOut < battlers; battlerOut++) {
            if (battlerOut != battleCtx->defender
                && Battler_Side(battleSys, battlerOut) == Battler_Side(battleSys, battleCtx->defender)) {
                break;
            }
        }

        if (battlerOut == battlers) {
            GF_ASSERT("FALSE");
            battlerOut = 0;
        }
        break;
    }

    case BTLSCR_ATTACKER_ENEMY:
        maxBattlers = BattleSystem_MaxBattlers(battleSys);
        side = Battler_Side(battleSys, battleCtx->attacker);

        for (battlerOut = 0; battlerOut < maxBattlers; battlerOut++) {
            if (side != Battler_Side(battleSys, battlerOut)) {
                break;
            }
        }
        break;

    case BTLSCR_DEFENDER_ENEMY:
        maxBattlers = BattleSystem_MaxBattlers(battleSys);
        side = Battler_Side(battleSys, battleCtx->defender);

        for (battlerOut = 0; battlerOut < maxBattlers; battlerOut++) {
            if (side != Battler_Side(battleSys, battlerOut)) {
                break;
            }
        }
        break;

    case BTLSCR_MSG_TEMP:
    case BTLSCR_MSG_BATTLER_TEMP:
        battlerOut = battleCtx->msgBattlerTemp;
        break;
    }

    GF_ASSERT(battlerOut != BATTLER_NONE);
    return battlerOut;
}

/**
 * @brief Populate a BattleMessageParams struct from input values from the
 * script buffer.
 *
 * As a side effect, the script cursor head will be iterated forward by 2 + N,
 * where N is the number of data values as defined by the tag value read from
 * the script buffer.
 *
 * @param battleCtx
 * @param[out] msgParams
 */
static void BattleMessageParams_Make(BattleContext *battleCtx, BattleMessageParams *msgParams)
{
    int tagCount = 0;

    msgParams->id = BattleScript_Read(battleCtx);
    msgParams->tags = BattleScript_Read(battleCtx);

    switch (msgParams->tags) {
    case TAG_NONE:
        tagCount = 0;
        break;

    case TAG_NONE_SIDE_CONSCIOUS:
    case TAG_NICKNAME:
    case TAG_MOVE:
    case TAG_STAT:
    case TAG_ITEM:
    case TAG_NUMBER:
    case TAG_NUMBERS:
    case TAG_TRNAME:
        tagCount = 1;
        break;

    case TAG_NICKNAME_NICKNAME:
    case TAG_NICKNAME_MOVE:
    case TAG_NICKNAME_ABILITY:
    case TAG_NICKNAME_STAT:
    case TAG_NICKNAME_TYPE:
    case TAG_NICKNAME_POKE:
    case TAG_NICKNAME_ITEM:
    case 16:
    case TAG_NICKNAME_NUM:
    case TAG_NICKNAME_TRNAME:
    case TAG_NICKNAME_BOX:
    case TAG_MOVE_SIDE:
    case TAG_MOVE_NICKNAME:
    case TAG_MOVE_MOVE:
    case TAG_ABILITY_NICKNAME:
    case TAG_ITEM_MOVE:
    case TAG_NUMBER_NUMBER:
    case TAG_TRNAME_TRNAME:
    case TAG_TRNAME_NICKNAME:
    case TAG_TRNAME_ITEM:
    case TAG_TRNAME_NUM:
    case TAG_TRCLASS_TRNAME:
        tagCount = 2;
        break;

    case TAG_NICKNAME_NICKNAME_MOVE:
    case TAG_NICKNAME_NICKNAME_ABILITY:
    case TAG_NICKNAME_NICKNAME_ITEM:
    case TAG_NICKNAME_MOVE_MOVE:
    case TAG_NICKNAME_MOVE_NUMBER:
    case TAG_NICKNAME_ABILITY_NICKNAME:
    case TAG_NICKNAME_ABILITY_MOVE:
    case TAG_NICKNAME_ABILITY_ITEM:
    case TAG_NICKNAME_ABILITY_STAT:
    case TAG_NICKNAME_ABILITY_TYPE:
    case TAG_NICKNAME_ABILITY_STATUS:
    case TAG_NICKNAME_ABILITY_NUMBER:
    case TAG_NICKNAME_ITEM_NICKNAME:
    case TAG_NICKNAME_ITEM_MOVE:
    case TAG_NICKNAME_ITEM_STAT:
    case TAG_NICKNAME_ITEM_STATUS:
    case TAG_NICKNAME_BOX_BOX:
    case TAG_ITEM_NICKNAME_FLAVOR:
    case TAG_TRNAME_NICKNAME_NICKNAME:
    case TAG_TRCLASS_TRNAME_NICKNAME:
    case TAG_TRCLASS_TRNAME_ITEM:
        tagCount = 3;
        break;

    case TAG_NICKNAME_ABILITY_NICKNAME_MOVE:
    case TAG_NICKNAME_ABILITY_NICKNAME_ABILITY:
    case TAG_NICKNAME_ABILITY_NICKNAME_STAT:
    case TAG_NICKNAME_ITEM_NICKNAME_ITEM:
    case TAG_TRNAME_NICKNAME_TRNAME_NICKNAME:
    case TAG_TRCLASS_TRNAME_NICKNAME_NICKNAME:
    case TAG_TRCLASS_TRNAME_NICKNAME_TRNAME:
    case TAG_TRCLASS_TRNAME_TRCLASS_TRNAME:
        tagCount = 4;
        break;

    case TAG_TRCLASS_TRNAME_NICKNAME_TRCLASS_TRNAME_NICKNAME:
        tagCount = 6;
        break;

    default:
        GF_ASSERT("FALSE");
        break;
    }

    for (int i = 0; i < tagCount; i++) {
        msgParams->params[i] = BattleScript_Read(battleCtx);
    }
}

/**
 * @brief Populate a BattleMessage struct from the input BattleMessageParams struct.
 *
 * @param battleSys
 * @param battleCtx
 * @param msgParams
 * @param[out] msg
 */
static void BattleMessage_Make(BattleSystem *battleSys, BattleContext *battleCtx, BattleMessageParams *msgParams, BattleMessage *msg)
{
    msg->id = msgParams->id;
    msg->tags = msgParams->tags;

    switch (msg->tags) {
    case TAG_NONE:
        break;

    case TAG_NONE_SIDE_CONSCIOUS:
        msg->params[0] = BattleScript_Battler(battleSys, battleCtx, msgParams->params[0]);
        break;

    case TAG_NICKNAME:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        break;

    case TAG_MOVE:
        msg->params[0] = BattleMessage_MoveTag(battleCtx, msgParams->params[0]);
        break;

    case TAG_STAT:
        msg->params[0] = BattleMessage_StatTag(battleCtx, msgParams->params[0]);
        break;

    case TAG_ITEM:
        msg->params[0] = BattleMessage_ItemTag(battleCtx, msgParams->params[0]);
        break;

    case TAG_NUMBER:
    case TAG_NUMBERS:
        msg->params[0] = BattleMessage_NumTag(battleCtx, msgParams->params[0]);
        break;

    case TAG_TRNAME:
        msg->params[0] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[0]);
        break;

    case TAG_NICKNAME_NICKNAME:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[1]);
        break;

    case TAG_NICKNAME_MOVE:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_MoveTag(battleCtx, msgParams->params[1]);
        break;

    case TAG_NICKNAME_ABILITY:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_AbilityTag(battleSys, battleCtx, msgParams->params[1]);
        break;

    case TAG_NICKNAME_STAT:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_StatTag(battleCtx, msgParams->params[1]);
        break;

    case TAG_NICKNAME_TYPE:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_TypeTag(battleCtx, msgParams->params[1]);
        break;

    case TAG_NICKNAME_POKE:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_PokeTag(battleSys, battleCtx, msgParams->params[1]);
        break;

    case TAG_NICKNAME_ITEM:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_ItemTag(battleCtx, msgParams->params[1]);
        break;

    case TAG_NICKNAME_POFFIN:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_PoffinTag(battleCtx, msgParams->params[1]);
        break;

    case TAG_NICKNAME_NUM:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_NumTag(battleCtx, msgParams->params[1]);
        break;

    case TAG_NICKNAME_TRNAME:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[1]);
        break;

    case TAG_NICKNAME_BOX:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = msgParams->params[1];
        break;

    case TAG_MOVE_SIDE:
        msg->params[0] = BattleMessage_MoveTag(battleCtx, msgParams->params[0]);
        msg->params[1] = BattleScript_Battler(battleSys, battleCtx, msgParams->params[1]);
        break;

    case TAG_MOVE_NICKNAME:
        msg->params[0] = BattleMessage_MoveTag(battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[1]);
        break;

    case TAG_MOVE_MOVE:
        msg->params[0] = BattleMessage_MoveTag(battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_MoveTag(battleCtx, msgParams->params[1]);
        break;

    case TAG_ABILITY_NICKNAME:
        msg->params[0] = BattleMessage_AbilityTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[1]);
        break;

    case TAG_ITEM_MOVE:
        msg->params[0] = BattleMessage_ItemTag(battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_MoveTag(battleCtx, msgParams->params[1]);
        break;

    case TAG_NUMBER_NUMBER:
        msg->params[0] = BattleMessage_NumTag(battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_NumTag(battleCtx, msgParams->params[1]);
        break;

    case TAG_TRNAME_TRNAME:
        msg->params[0] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[1]);
        break;

    case TAG_TRNAME_NICKNAME:
        msg->params[0] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[1]);
        break;

    case TAG_TRNAME_ITEM:
        msg->params[0] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_ItemTag(battleCtx, msgParams->params[1]);
        break;

    case TAG_TRNAME_NUM:
        msg->params[0] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_NumTag(battleCtx, msgParams->params[1]);
        break;

    case TAG_TRCLASS_TRNAME:
        msg->params[0] = BattleMessage_TrainerClassTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[1]);
        break;

    case TAG_NICKNAME_NICKNAME_MOVE:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_MoveTag(battleCtx, msgParams->params[2]);
        break;

    case TAG_NICKNAME_NICKNAME_ABILITY:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_AbilityTag(battleSys, battleCtx, msgParams->params[2]);
        break;

    case TAG_NICKNAME_NICKNAME_ITEM:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_ItemTag(battleCtx, msgParams->params[2]);
        break;

    case TAG_NICKNAME_MOVE_MOVE:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_MoveTag(battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_MoveTag(battleCtx, msgParams->params[2]);
        break;

    case TAG_NICKNAME_MOVE_NUMBER:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_MoveTag(battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_NumTag(battleCtx, msgParams->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_NICKNAME:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_AbilityTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_MOVE:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_AbilityTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_MoveTag(battleCtx, msgParams->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_ITEM:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_AbilityTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_ItemTag(battleCtx, msgParams->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_STAT:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_AbilityTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_StatTag(battleCtx, msgParams->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_TYPE:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_AbilityTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_TypeTag(battleCtx, msgParams->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_STATUS:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_AbilityTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_StatusTag(battleCtx, msgParams->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_NUMBER:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_AbilityTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_NumTag(battleCtx, msgParams->params[2]);
        break;

    case TAG_NICKNAME_ITEM_NICKNAME:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_ItemTag(battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[2]);
        break;

    case TAG_NICKNAME_ITEM_MOVE:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_ItemTag(battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_MoveTag(battleCtx, msgParams->params[2]);
        break;

    case TAG_NICKNAME_ITEM_STAT:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_ItemTag(battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_StatTag(battleCtx, msgParams->params[2]);
        break;

    case TAG_NICKNAME_ITEM_STATUS:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_ItemTag(battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_StatusTag(battleCtx, msgParams->params[2]);
        break;

    case TAG_NICKNAME_BOX_BOX:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = msgParams->params[1];
        msg->params[2] = msgParams->params[2];
        break;

    case TAG_ITEM_NICKNAME_FLAVOR:
        msg->params[0] = BattleMessage_ItemTag(battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_FlavorTag(battleCtx, msgParams->params[2]);
        break;

    case TAG_TRNAME_NICKNAME_NICKNAME:
        msg->params[0] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[2]);
        break;

    case TAG_TRCLASS_TRNAME_NICKNAME:
        msg->params[0] = BattleMessage_TrainerClassTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[2]);
        break;

    case TAG_TRCLASS_TRNAME_ITEM:
        msg->params[0] = BattleMessage_TrainerClassTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_ItemTag(battleCtx, msgParams->params[2]);
        break;

    case TAG_NICKNAME_ABILITY_NICKNAME_MOVE:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_AbilityTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[2]);
        msg->params[3] = BattleMessage_MoveTag(battleCtx, msgParams->params[3]);
        break;

    case TAG_NICKNAME_ABILITY_NICKNAME_ABILITY:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_AbilityTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[2]);
        msg->params[3] = BattleMessage_AbilityTag(battleSys, battleCtx, msgParams->params[3]);
        break;

    case TAG_NICKNAME_ABILITY_NICKNAME_STAT:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_AbilityTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[2]);
        msg->params[3] = BattleMessage_StatTag(battleCtx, msgParams->params[3]);
        break;

    case TAG_NICKNAME_ITEM_NICKNAME_ITEM:
        msg->params[0] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_ItemTag(battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[2]);
        msg->params[3] = BattleMessage_ItemTag(battleCtx, msgParams->params[3]);
        break;

    case TAG_TRNAME_NICKNAME_TRNAME_NICKNAME:
        msg->params[0] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[2]);
        msg->params[3] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[3]);
        break;

    case TAG_TRCLASS_TRNAME_NICKNAME_NICKNAME:
        msg->params[0] = BattleMessage_TrainerClassTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[2]);
        msg->params[3] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[3]);
        break;

    case TAG_TRCLASS_TRNAME_NICKNAME_TRNAME:
        msg->params[0] = BattleMessage_TrainerClassTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[2]);
        msg->params[3] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[3]);
        break;

    case TAG_TRCLASS_TRNAME_TRCLASS_TRNAME:
        msg->params[0] = BattleMessage_TrainerClassTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_TrainerClassTag(battleSys, battleCtx, msgParams->params[2]);
        msg->params[3] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[3]);
        break;

    case TAG_TRCLASS_TRNAME_NICKNAME_TRCLASS_TRNAME_NICKNAME:
        msg->params[0] = BattleMessage_TrainerClassTag(battleSys, battleCtx, msgParams->params[0]);
        msg->params[1] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[1]);
        msg->params[2] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[2]);
        msg->params[3] = BattleMessage_TrainerClassTag(battleSys, battleCtx, msgParams->params[3]);
        msg->params[4] = BattleMessage_TrainerNameTag(battleSys, battleCtx, msgParams->params[4]);
        msg->params[5] = BattleMessage_NameTag(battleSys, battleCtx, msgParams->params[5]);
        break;

    default:
        GF_ASSERT("FALSE");
        break;
    }
}

/**
 * @brief Build a name tag mask.
 *
 * @param battleSys
 * @param battleCtx
 * @param battlerIn The battler whose name will be applied to the tag mask
 * @return The constructed tag mask
 */
static int BattleMessage_NameTag(BattleSystem *battleSys, BattleContext *battleCtx, int battlerIn)
{
    int battler = BattleScript_Battler(battleSys, battleCtx, battlerIn);
    int tag = battler;

    if (battlerIn == BTLSCR_SWITCHED_MON_AFTER) {
        tag |= battleCtx->switchedPartySlot[battler] << 8;
    } else {
        tag |= battleCtx->selectedPartySlot[battler] << 8;
    }

    return tag;
}

/**
 * @brief Tag the move for a battler.
 *
 * @param battleCtx
 * @param battlerIn The battler whose move will be applied to the tag
 * @return The tagged move
 */
static int BattleMessage_MoveTag(BattleContext *battleCtx, int battlerIn)
{
    int move;
    switch (battlerIn) {
    case BTLSCR_ATTACKER:
        move = battleCtx->moveCur;
        break;

    case BTLSCR_MSG_TEMP:
        move = battleCtx->msgMoveTemp;
        break;

    default:
        break;
    }

    return move;
}

/**
 * @brief Tag the held item for a battler.
 *
 * @param battleCtx
 * @param battlerIn The battler whose held item will be applied to the tag
 * @return The tagged held item
 */
static int BattleMessage_ItemTag(BattleContext *battleCtx, int battlerIn)
{
    int item;
    switch (battlerIn) {
    case BTLSCR_ATTACKER:
        item = battleCtx->battleMons[battleCtx->attacker].heldItem;
        BattleAI_SetHeldItem(battleCtx, battleCtx->attacker, item);
        break;

    case BTLSCR_DEFENDER:
        item = battleCtx->battleMons[battleCtx->defender].heldItem;
        BattleAI_SetHeldItem(battleCtx, battleCtx->defender, item);
        break;

    case BTLSCR_MSG_BATTLER_TEMP:
        item = battleCtx->battleMons[battleCtx->msgBattlerTemp].heldItem;
        BattleAI_SetHeldItem(battleCtx, battleCtx->msgBattlerTemp, item);
        break;

    case BTLSCR_MSG_TEMP:
        item = battleCtx->msgItemTemp;
        break;

    default:
        break;
    }

    return item;
}

/**
 * @brief Tag a number.
 *
 * @param battleCtx
 * @param battlerIn Battler input; only BTLSCR_MSG_TEMP will produce a non-zero result
 * @return The tagged number
 */
static int BattleMessage_NumTag(BattleContext *battleCtx, int battlerIn)
{
    int num;
    if (battlerIn == BTLSCR_MSG_TEMP) {
        num = battleCtx->msgTemp;
    }

    return num;
}

/**
 * @brief Tag a type.
 *
 * @param battleCtx
 * @param battlerIn Battler input; only BTLSCR_MSG_TEMP will produce a non-Normal result
 * @return The tagged type
 */
static int BattleMessage_TypeTag(BattleContext *battleCtx, int battlerIn)
{
    int type;
    if (battlerIn == BTLSCR_MSG_TEMP) {
        type = battleCtx->msgTemp;
    }

    return type;
}

/**
 * @brief Tag the ability for a battler.
 *
 * @param battleSys
 * @param battleCtx
 * @param battlerIn The battler whose ability will be applied to the tag
 * @return The tagged ability
 */
static int BattleMessage_AbilityTag(BattleSystem *battleSys, BattleContext *battleCtx, int battlerIn)
{
    int ability, battler;
    if (battlerIn == BTLSCR_MSG_TEMP) {
        ability = battleCtx->msgAbilityTemp;
    } else {
        battler = BattleScript_Battler(battleSys, battleCtx, battlerIn);
        ability = battleCtx->battleMons[battler].ability;
        BattleAI_SetAbility(battleCtx, battler, ability);
    }

    return ability;
}

/**
 * @brief Tag a stat-name value.
 *
 * @param battleCtx
 * @param battlerIn Battler input; only BTLSCR_MSG_TEMP will produce a non-HP result
 * @return The tagged stat-name
 */
static int BattleMessage_StatTag(BattleContext *battleCtx, int battlerIn)
{
    int status;
    if (battlerIn == BTLSCR_MSG_TEMP) {
        status = battleCtx->msgTemp;
    }

    return status;
}

/**
 * @brief Tag a status-name value.
 *
 * @param battleCtx
 * @param battlerIn Battler input; only BTLSCR_MSG_TEMP will produce a non-empty result
 * @return The tagged status-name
 */
static int BattleMessage_StatusTag(BattleContext *battleCtx, int battlerIn)
{
    int status;
    if (battlerIn == BTLSCR_MSG_TEMP) {
        status = battleCtx->msgTemp;
    }

    return status;
}

/**
 * @brief Build a name tag mask.
 *
 * This is, strangely, identical to BattleMessage_NameTag, save for not supporting
 * switched mons.
 *
 * @param battleSys
 * @param battleCtx
 * @param battlerIn The battler whose name will be applied to the tag mask
 * @return The constructed tag mask
 */
static int BattleMessage_PokeTag(BattleSystem *battleSys, BattleContext *battleCtx, int battlerIn)
{
    int battler = BattleScript_Battler(battleSys, battleCtx, battlerIn);
    int tag = battler;
    tag |= battleCtx->selectedPartySlot[battler] << 8;

    return tag;
}

/**
 * @brief Tag a poffin-name value.
 *
 * @param battleCtx
 * @param battlerIn Battler input; only BTLSCR_MSG_TEMP will produce a non-empty result
 * @return The tagged poffin-name
 */
static int BattleMessage_PoffinTag(BattleContext *battleCtx, int battlerIn)
{
    int poffin;
    if (battlerIn == BTLSCR_MSG_TEMP) {
        poffin = battleCtx->msgTemp;
    }

    return poffin;
}

/**
 * @brief Tag a flavor-name value.
 *
 * @param battleCtx
 * @param battlerIn Battler input; only BTLSCR_MSG_TEMP will produce a non-empty result
 * @return The tagged flavor-name
 */
static int BattleMessage_FlavorTag(BattleContext *battleCtx, int battlerIn)
{
    int flavor;
    if (battlerIn == BTLSCR_MSG_TEMP) {
        flavor = battleCtx->msgTemp;
    }

    return flavor;
}

/**
 * @brief Tag a trainer class value.
 *
 * @param battleSys
 * @param battleCtx
 * @param battlerIn
 * @return The tagged trainer class value.
 */
static int BattleMessage_TrainerClassTag(BattleSystem *battleSys, BattleContext *battleCtx, int battlerIn)
{
    return BattleScript_Battler(battleSys, battleCtx, battlerIn);
}

/**
 * @brief Tag a trainer name.
 *
 * @param battleSys
 * @param battleCtx
 * @param battlerIn
 * @return The tagged trainer name.
 */
static int BattleMessage_TrainerNameTag(BattleSystem *battleSys, BattleContext *battleCtx, int battlerIn)
{
    return BattleScript_Battler(battleSys, battleCtx, battlerIn);
}

static const SpriteTemplate Unk_ov16_0226E6C4 = {
    0x80,
    0x0,
    0x0,
    0x0,
    0xC8,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x4E35, 0x4E30, 0x4E2D, 0x4E2D, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

static const SpriteTemplate Unk_ov16_0226E6F8 = {
    0x98,
    0x18,
    0x0,
    0x0,
    0x64,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x4E36, 0x4E31, 0x4E2E, 0x4E2E, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

static void BattleScript_LoadPartyLevelUpIcon(BattleSystem *battleSys, BattleScriptTaskData *param1, Pokemon *param2)
{
    SpriteTemplate v0;
    SpriteSystem *v1;
    SpriteManager *v2;
    PaletteData *v3;
    MessageLoader *v4;
    StringTemplate *v5;
    Strbuf *v6, *v7;
    BgConfig *v8;
    Window v9;
    int v10;
    CharTransferAllocation v11;
    UnkStruct_020127E8 v12;
    int v13;

    v4 = BattleSystem_MessageLoader(battleSys);
    v7 = ov16_0223E0D4(battleSys);
    v5 = BattleSystem_StringTemplate(battleSys);
    v8 = BattleSystem_BGL(battleSys);
    v1 = BattleSystem_GetSpriteSystem(battleSys);
    v2 = BattleSystem_GetSpriteManager(battleSys);
    v3 = BattleSystem_PaletteSys(battleSys);

    SpriteSystem_LoadCharResObj(v1, v2, NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 256, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, 20021);
    SpriteSystem_LoadPaletteBuffer(v3, PLTTBUF_MAIN_OBJ, v1, v2, NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 82, FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 20016);
    SpriteSystem_LoadCellResObj(v1, v2, NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 257, TRUE, 20013);
    SpriteSystem_LoadAnimResObj(v1, v2, NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 258, TRUE, 20013);

    param1->sprites[0] = SpriteSystem_NewSprite(v1, v2, &Unk_ov16_0226E6C4);

    ManagedSprite_TickFrame(param1->sprites[0]);
    SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(v1, v2, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, Pokemon_IconSpriteIndex(param2), FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 20022);
    SpriteSystem_LoadPaletteBuffer(v3, PLTTBUF_MAIN_OBJ, v1, v2, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), FALSE, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 20017);
    SpriteSystem_LoadCellResObj(v1, v2, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIcon64KCellsFileIndex(), FALSE, 20014);
    SpriteSystem_LoadAnimResObj(v1, v2, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIcon64KAnimationFileIndex(), FALSE, 20014);

    param1->sprites[1] = SpriteSystem_NewSprite(v1, v2, &Unk_ov16_0226E6F8);

    Sprite_SetExplicitPaletteOffsetAutoAdjust(param1->sprites[1]->sprite, Pokemon_IconPaletteIndex(param2));
    ManagedSprite_TickFrame(param1->sprites[1]);

    param1->tmpPtr[0] = sub_02012744(1, HEAP_ID_BATTLE);

    if (Pokemon_GetValue(param2, MON_DATA_NO_PRINT_GENDER, NULL) == 0) {
        v13 = 2;
    } else {
        v13 = Pokemon_GetValue(param2, MON_DATA_GENDER, NULL);
    }

    if (v13 == 0) {
        v6 = MessageLoader_GetNewStrbuf(v4, 944);
    } else if (v13 == 1) {
        v6 = MessageLoader_GetNewStrbuf(v4, 945);
    } else {
        v6 = MessageLoader_GetNewStrbuf(v4, 946);
    }

    StringTemplate_SetNickname(v5, 0, Pokemon_GetBoxPokemon(param2));
    StringTemplate_SetNumber(v5, 1, Pokemon_GetValue(param2, MON_DATA_LEVEL, NULL), 3, 0, 1);
    StringTemplate_Format(v5, v7, v6);
    Strbuf_Free(v6);
    Window_Init(&v9);
    Window_AddToTopLeftCorner(v8, &v9, 12, 4, 0, 0);
    Text_AddPrinterWithParamsAndColor(&v9, FONT_SYSTEM, v7, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    v10 = sub_02012898(&v9, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_BATTLE);
    CharTransfer_AllocRange(v10, 1, NNS_G2D_VRAM_TYPE_2DMAIN, &v11);

    v12.unk_00 = param1->tmpPtr[0];
    v12.unk_04 = &v9;
    v12.unk_08 = SpriteManager_GetSpriteList(v2);
    v12.unk_0C = SpriteManager_FindPlttResourceProxy(v2, 20016);
    v12.unk_10 = NULL;
    v12.unk_14 = v11.offset;
    v12.unk_18 = 176;
    v12.unk_1C = 8;
    v12.unk_20 = 0;
    v12.unk_24 = 100;
    v12.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v12.heapID = HEAP_ID_BATTLE;

    param1->fontOAM = sub_020127E8(&v12);
    param1->charTransferAllocation = v11;

    sub_02012AC0(param1->fontOAM, 1);
    Window_Remove(&v9);
}

static void BattleScript_FreePartyLevelUpIcon(BattleSystem *battleSys, BattleScriptTaskData *param1)
{
    SpriteManager *v0 = BattleSystem_GetSpriteManager(battleSys);

    Sprite_DeleteAndFreeResources(param1->sprites[0]);
    Sprite_DeleteAndFreeResources(param1->sprites[1]);
    sub_02012870(param1->fontOAM);
    CharTransfer_ClearRange(&param1->charTransferAllocation);
    SpriteManager_UnloadCharObjById(v0, 20021);
    SpriteManager_UnloadPlttObjById(v0, 20016);
    SpriteManager_UnloadCellObjById(v0, 20013);
    SpriteManager_UnloadAnimObjById(v0, 20013);
    SpriteManager_UnloadCharObjById(v0, 20022);
    SpriteManager_UnloadPlttObjById(v0, 20017);
    SpriteManager_UnloadCellObjById(v0, 20014);
    SpriteManager_UnloadAnimObjById(v0, 20014);
    sub_020127BC(param1->tmpPtr[0]);
}

/**
 * @brief Update friendship value for a fainting battler.
 *
 * The highest-level battler is chosen to determine how much friendship to
 * deduct.
 *
 * @param battleSys
 * @param battleCtx
 * @param faintingBattler
 */
static void BattleScript_UpdateFriendship(BattleSystem *battleSys, BattleContext *battleCtx, int faintingBattler)
{
    if (Battler_Side(battleSys, faintingBattler)) {
        return;
    }

    u8 battler;
    if (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES) {
        battler = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_1);
        u8 battler2 = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_2);
        if (battleCtx->battleMons[battler2].level > battleCtx->battleMons[battler].level) {
            battler = battler2;
        }
    } else {
        battler = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_SOLO_ENEMY);
    }

    Pokemon *mon = BattleSystem_PartyPokemon(battleSys, faintingBattler, battleCtx->selectedPartySlot[faintingBattler]);

    if (battleCtx->battleMons[battler].level > battleCtx->battleMons[faintingBattler].level) {
        if (battleCtx->battleMons[battler].level - battleCtx->battleMons[faintingBattler].level >= 30) {
            Pokemon_UpdateFriendship(mon, 8, BattleSystem_MapHeader(battleSys));
        } else {
            Pokemon_UpdateFriendship(mon, 6, BattleSystem_MapHeader(battleSys));
        }
    } else {
        Pokemon_UpdateFriendship(mon, 6, BattleSystem_MapHeader(battleSys));
    }
}

/**
 * @brief Notify the AI context of a battler's ability after it is announced
 * in any fashion.
 *
 * @param battleCtx
 * @param battler
 * @param ability
 */
static void BattleAI_SetAbility(BattleContext *battleCtx, u8 battler, u8 ability)
{
    battleCtx->aiContext.battlerAbilities[battler] = ability;
}

/**
 * @brief Notify the AI context of a battler's held item after it is announced
 * in any fashion.
 *
 * @param battleCtx
 * @param battler
 * @param item
 */
static void BattleAI_SetHeldItem(BattleContext *battleCtx, u8 battler, u16 item)
{
    battleCtx->aiContext.battlerHeldItems[battler] = item;
}
