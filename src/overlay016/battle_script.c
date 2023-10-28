#include <nitro.h>
#include <string.h>

#include "constants/abilities.h"
#include "constants/heap.h"
#include "constants/items.h"
#include "constants/narc.h"
#include "constants/pokemon.h"
#include "constants/sdat.h"
#include "constants/battle/condition.h"
#include "constants/battle/message_tags.h"
#include "constants/battle/moves.h"
#include "constants/battle/side_effects.h"
#include "constants/battle/system_control.h"
#include "constants/battle/terrain.h"
#include "constants/narc_files/battle_skill_subseq.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_02007C7C_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "overlay016/struct_ov16_0225BFFC_decl.h"

#include "struct_decls/battle_system.h"
#include "battle/battle_context.h"
#include "battle/battle_message.h"
#include "battle/battle_mon.h"
#include "battle/btlcmd.h"
#include "battle/common.h"
#include "battle/battle_controller.h"

#include "constdata/const_020F2DAC.h"

#include "struct_defs/struct_02008A90.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/sprite_manager_allocation.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/trainer_data.h"
#include "struct_defs/battle_system.h"
#include "struct_defs/struct_0208737C.h"
#include "struct_defs/fraction.h"
#include "overlay012/struct_ov12_02237728.h"
#include "overlay016/struct_ov16_022431BC.h"
#include "overlay016/struct_ov16_022431BC_1.h"
#include "overlay016/struct_ov16_022431BC_2.h"
#include "overlay016/struct_ov16_022431BC_3.h"
#include "overlay016/struct_ov16_0225BFFC_t.h"
#include "overlay021/struct_ov21_021E8E0C.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "core_sys.h"
#include "flags.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "move_table.h"
#include "party.h"
#include "pokemon.h"
#include "strbuf.h"
#include "trainer_info.h"

#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_02006224.h"
#include "unk_020067E8.h"
#include "unk_0200762C.h"
#include "unk_0200B358.h"
#include "unk_0200C6E4.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02012744.h"
#include "unk_0201567C.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_0201E86C.h"
#include "unk_020218BC.h"
#include "unk_02022594.h"
#include "unk_02079170.h"
#include "unk_020797C8.h"
#include "unk_02079D40.h"
#include "unk_0207A274.h"
#include "unk_0208694C.h"
#include "unk_0208C098.h"
#include "overlay012/ov12_02235E94.h"
#include "overlay016/ov16_0223B140.h"
#include "overlay016/ov16_0223DF00.h"
#include "overlay016/ov16_0225177C.h"
#include "overlay016/ov16_0225CBB8.h"
#include "overlay016/ov16_0226485C.h"
#include "overlay016/ov16_02268520.h"
#include "overlay021/ov21_021E8D48.h"

typedef BOOL (*BtlCmd)(BattleSystem*, BattleContext*);

typedef struct BattleMessageParams {
    int id; //< ID of the message in the battle text bank
    int tags; //< Tags defining what each parameter should be interpreted as
    int params[6]; //< Params for the rendered message
} BattleMessageParams;

static BOOL BtlCmd_SetupBattleUI(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SetEncounter(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ShowEncounter(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ShowPokemon(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ReturnPokemon(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_DeletePokemon(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SetTrainerEncounter(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ThrowTrainerBall(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SlideTrainerOut(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SlideTrainerIn(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_Unused0A(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SlideHPGaugeIn(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SlideHPGaugeInWait(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SlideHPGaugeOut(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_Wait(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcDamage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcMaxDamage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintAttackMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintGlobalMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintPreparedMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrepareMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintSideLocalMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PlayMoveAnimation(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PlayMoveAnimationA2D(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_FlickerBattler(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_UpdateHPValue(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_UpdateHPGauge(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_FaintBattler(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PlayFaintingSequence(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_WaitFrames(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PlaySound(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_If(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_IfMonData(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_FadeOut(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_JumpToSub(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_JumpToBattleEffect(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_JumpToMove(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CheckCritical(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CalcExpGain(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_StartGetExpTask(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_WaitGetExpTask(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_Dummy2A(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ShowPartyList(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_WaitPartyList(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_Switch(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_JumpIfAnySwitches(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_StartCatchMonTask(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_WaitCatchMonTask(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SetupMultiHit(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SetVarValue(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ChangeStatStage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SetMonDataValue(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ClearVolatileStatus(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ToggleVanish(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CheckAbility(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_Random(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SetVarFromVar(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SetMonDataFromVar(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_Jump(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CallSub(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_CallSubFromVar(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SetMirrorMove(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_ResetStatChanges(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_LockMoveChoice(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_UnlockMoveChoice(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_SetStatusIcon(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TrainerMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL ov16_022432B4(BattleSystem * param0, BattleContext * param1);
static BOOL BtlCmd_PlayStatusEffect(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PlayStatusEffectAToD(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PlayStatusEffectFromVar(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintRecallMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintSendOutMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintBattleStartMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PrintLeadMonMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_PreparedTrainerMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryConversion(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_IfVar(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_IfMonDataVar(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_GivePayDayMoney(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryLightScreen(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryReflect(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryMist(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryOHKOMove(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_Divide(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_DivideByVar(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryMimic(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_Metronome(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryDisable(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_Counter(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_MirrorCoat(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BtlCmd_TryEncore(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL ov16_022442F0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022444B0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022445D4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022446A0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022446F4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02244798(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022448E8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02244A0C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02244B48(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02244BC4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02244D60(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02244F54(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02244FD8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224505C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224510C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02245144(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02245188(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224544C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02245568(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022455F8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224567C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02245710(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02245784(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224582C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02245890(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022459D8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02245A7C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02245B68(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02245BC8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02245CB4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02245D34(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02245D68(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02245FC4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02246004(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022460A8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022461B0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022461F4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022462D8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02246334(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022463E8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02246458(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022464CC(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224650C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02246630(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02246688(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022467A0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02246848(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022468A4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02246904(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022469C4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02246B68(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02246BB0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02246CB4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02246DAC(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02246DF0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02246EE4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02246F2C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02246F70(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02246FA8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247064(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022470C0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247118(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247194(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247378(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022473A8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022473F4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247440(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022474C4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247570(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247698(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022476F8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224787C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022478A4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022478E4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247950(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224799C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022479E8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247A80(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247AB0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247AE0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247B28(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247BA4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247BD4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247C04(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247C64(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247C94(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247CE0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247D04(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247E10(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247E98(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247F44(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247F7C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247FBC(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02247FE8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248000(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248040(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248084(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022480B0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022480DC(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248108(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248134(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224814C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248164(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022481A4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022481D0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248204(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248294(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248324(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022484D0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248550(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224859C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022485E0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248614(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224862C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248648(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248660(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248708(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022487A4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248800(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248850(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248880(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022488B4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022488E0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224890C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248944(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248988(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022489F4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248A34(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248A7C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02248AB4(BattleSystem * param0, BattleContext * param1);

static int BattleScript_Read(BattleContext *battleCtx);
static void BattleScript_Iter(BattleContext *battleCtx, int i);
static void BattleScript_Jump(BattleContext *battleCtx, int narc, int file);
static void BattleScript_Call(BattleContext *battleCtx, int narc, int file);
static void* BattleScript_VarAddress(BattleSystem *battleSys, BattleContext *battleCtx, int var);
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

static u32 ov16_022431BC(BattleSystem * param0, BattleContext * param1, int param2);
static void BattleScript_CalcEffortValues(Party *party, int slot, int species, int form);
static int BattleScript_CalcCatchShakes(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleScript_LoadPartyLevelUpIcon(BattleSystem * param0, BattleScriptTaskData * param1, Pokemon * param2);
static void BattleScript_FreePartyLevelUpIcon(BattleSystem * param0, BattleScriptTaskData * param1);
static void BattleScript_UpdateFriendship(BattleSystem *battleSys, BattleContext *battleCtx, int faintingBattler);
static void BattleAI_SetAbility(BattleContext * param0, u8 param1, u8 param2);
static void BattleAI_SetHeldItem(BattleContext *battleCtx, u8 battler, u16 item);
static void BattleScript_GetExpTask(SysTask * param0, void * param1);
static void BattleScript_CatchMonTask(SysTask * param0, void * param1);

static const BtlCmd sBattleCommands[] = {
    BtlCmd_SetupBattleUI,
    BtlCmd_SetEncounter,
    BtlCmd_ShowEncounter,
    BtlCmd_ShowPokemon,
    BtlCmd_ReturnPokemon,
    BtlCmd_DeletePokemon,
    BtlCmd_SetTrainerEncounter,
    BtlCmd_ThrowTrainerBall,
    BtlCmd_SlideTrainerOut,
    BtlCmd_SlideTrainerIn,
    BtlCmd_Unused0A,
    BtlCmd_SlideHPGaugeIn,
    BtlCmd_SlideHPGaugeInWait,
    BtlCmd_SlideHPGaugeOut,
    BtlCmd_Wait,
    BtlCmd_CalcDamage,
    BtlCmd_CalcMaxDamage,
    BtlCmd_PrintAttackMessage,
    BtlCmd_PrintMessage,
    BtlCmd_PrintGlobalMessage,
    BtlCmd_PrintPreparedMessage,
    BtlCmd_PrepareMessage,
    BtlCmd_PrintSideLocalMessage,
    BtlCmd_PlayMoveAnimation,
    BtlCmd_PlayMoveAnimationA2D,
    BtlCmd_FlickerBattler,
    BtlCmd_UpdateHPValue,
    BtlCmd_UpdateHPGauge,
    BtlCmd_FaintBattler,
    BtlCmd_PlayFaintingSequence,
    BtlCmd_WaitFrames,
    BtlCmd_PlaySound,
    BtlCmd_If,
    BtlCmd_IfMonData,
    BtlCmd_FadeOut,
    BtlCmd_JumpToSub,
    BtlCmd_JumpToBattleEffect,
    BtlCmd_JumpToMove,
    BtlCmd_CheckCritical,
    BtlCmd_CalcExpGain,
    BtlCmd_StartGetExpTask,
    BtlCmd_WaitGetExpTask,
    BtlCmd_Dummy2A,
    BtlCmd_ShowPartyList,
    BtlCmd_WaitPartyList,
    BtlCmd_Switch,
    BtlCmd_JumpIfAnySwitches,
    BtlCmd_StartCatchMonTask,
    BtlCmd_WaitCatchMonTask,
    BtlCmd_SetupMultiHit,
    BtlCmd_SetVarValue,
    BtlCmd_ChangeStatStage,
    BtlCmd_SetMonDataValue,
    BtlCmd_ClearVolatileStatus,
    BtlCmd_ToggleVanish,
    BtlCmd_CheckAbility,
    BtlCmd_Random,
    BtlCmd_SetVarFromVar,
    BtlCmd_SetMonDataFromVar,
    BtlCmd_Jump,
    BtlCmd_CallSub,
    BtlCmd_CallSubFromVar,
    BtlCmd_SetMirrorMove,
    BtlCmd_ResetStatChanges,
    BtlCmd_LockMoveChoice,
    BtlCmd_UnlockMoveChoice,
    BtlCmd_SetStatusIcon,
    BtlCmd_TrainerMessage,
    ov16_022432B4,
    BtlCmd_PlayStatusEffect,
    BtlCmd_PlayStatusEffectAToD,
    BtlCmd_PlayStatusEffectFromVar,
    BtlCmd_PrintRecallMessage,
    BtlCmd_PrintSendOutMessage,
    BtlCmd_PrintBattleStartMessage,
    BtlCmd_PrintLeadMonMessage,
    BtlCmd_PreparedTrainerMessage,
    BtlCmd_TryConversion,
    BtlCmd_IfVar,
    BtlCmd_IfMonDataVar,
    BtlCmd_GivePayDayMoney,
    BtlCmd_TryLightScreen,
    BtlCmd_TryReflect,
    BtlCmd_TryMist,
    BtlCmd_TryOHKOMove,
    BtlCmd_Divide,
    BtlCmd_DivideByVar,
    BtlCmd_TryMimic,
    BtlCmd_Metronome,
    BtlCmd_TryDisable,
    BtlCmd_Counter,
    BtlCmd_MirrorCoat,
    BtlCmd_TryEncore,
    ov16_022442F0,
    ov16_022444B0,
    ov16_022445D4,
    ov16_022446A0,
    ov16_022446F4,
    ov16_02244798,
    ov16_022448E8,
    ov16_02244A0C,
    ov16_02244B48,
    ov16_02244BC4,
    ov16_02244D60,
    ov16_02244F54,
    ov16_02244FD8,
    ov16_0224505C,
    ov16_0224510C,
    ov16_02245144,
    ov16_02245188,
    ov16_0224544C,
    ov16_02245568,
    ov16_022455F8,
    ov16_0224567C,
    ov16_02245710,
    ov16_02245784,
    ov16_0224582C,
    ov16_02245890,
    ov16_022459D8,
    ov16_02245A7C,
    ov16_02245B68,
    ov16_02245BC8,
    ov16_02245CB4,
    ov16_02245D34,
    ov16_02245D68,
    ov16_02245FC4,
    ov16_02246004,
    ov16_022460A8,
    ov16_022461B0,
    ov16_022461F4,
    ov16_022462D8,
    ov16_02246334,
    ov16_022463E8,
    ov16_02246458,
    ov16_022464CC,
    ov16_0224650C,
    ov16_02246630,
    ov16_02246688,
    ov16_022467A0,
    ov16_02246848,
    ov16_022468A4,
    ov16_02246904,
    ov16_022469C4,
    ov16_02246B68,
    ov16_02246BB0,
    ov16_02246CB4,
    ov16_02246DAC,
    ov16_02246DF0,
    ov16_02246EE4,
    ov16_02246F2C,
    ov16_02246F70,
    ov16_02246FA8,
    ov16_02247064,
    ov16_022470C0,
    ov16_02247118,
    ov16_02247194,
    ov16_02247378,
    ov16_022473A8,
    ov16_022473F4,
    ov16_02247440,
    ov16_022474C4,
    ov16_02247570,
    ov16_02247698,
    ov16_022476F8,
    ov16_0224787C,
    ov16_022478A4,
    ov16_022478E4,
    ov16_02247950,
    ov16_0224799C,
    ov16_022479E8,
    ov16_02247A80,
    ov16_02247AB0,
    ov16_02247AE0,
    ov16_02247B28,
    ov16_02247BA4,
    ov16_02247BD4,
    ov16_02247C04,
    ov16_02247C64,
    ov16_02247C94,
    ov16_02247CE0,
    ov16_02247D04,
    ov16_02247E10,
    ov16_02247E98,
    ov16_02247F44,
    ov16_02247F7C,
    ov16_02247FBC,
    ov16_02247FE8,
    ov16_02248000,
    ov16_02248040,
    ov16_02248084,
    ov16_022480B0,
    ov16_022480DC,
    ov16_02248108,
    ov16_02248134,
    ov16_0224814C,
    ov16_02248164,
    ov16_022481A4,
    ov16_022481D0,
    ov16_02248204,
    ov16_02248294,
    ov16_02248324,
    ov16_022484D0,
    ov16_02248550,
    ov16_0224859C,
    ov16_022485E0,
    ov16_02248614,
    ov16_0224862C,
    ov16_02248648,
    ov16_02248660,
    ov16_02248708,
    ov16_022487A4,
    ov16_02248800,
    ov16_02248850,
    ov16_02248880,
    ov16_022488B4,
    ov16_022488E0,
    ov16_0224890C,
    ov16_02248944,
    ov16_02248988,
    ov16_022489F4,
    ov16_02248A34,
    ov16_02248A7C,
    ov16_02248AB4
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
static BOOL BtlCmd_SetupBattleUI(BattleSystem *battleSys, BattleContext *battleCtx)
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
static BOOL BtlCmd_SetEncounter(BattleSystem *battleSys, BattleContext *battleCtx)
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
static BOOL BtlCmd_ShowEncounter(BattleSystem *battleSys, BattleContext *battleCtx)
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

        BattleSystem_FlagExpGain(battleSys, battleCtx, BATTLER_ENEMY_SLOT_1);
        BattleSystem_FlagExpGain(battleSys, battleCtx, BATTLER_ENEMY_SLOT_2);
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) {
                BattleSystem_NoExpGain(battleCtx, i);
                BattleSystem_FlagExpGain(battleSys, battleCtx, i);
                BattleIO_ShowEncounter(battleSys, i);
                BattleSystem_DexFlagSeen(battleSys, i);
            }
        }
        break;

    case BTLSCR_ATTACKER:
        battlerData = BattleSystem_BattlerData(battleSys, battleCtx->attacker);

        if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
            BattleSystem_FlagExpGain(battleSys, battleCtx, BATTLER_ENEMY_SLOT_1);
            BattleSystem_FlagExpGain(battleSys, battleCtx, BATTLER_ENEMY_SLOT_2);
        } else {
            BattleSystem_NoExpGain(battleCtx, battleCtx->attacker);
            BattleSystem_FlagExpGain(battleSys, battleCtx, battleCtx->attacker);
        }

        BattleSystem_DexFlagSeen(battleSys, battleCtx->attacker);
        BattleIO_ShowEncounter(battleSys, battleCtx->attacker);
        break;

    case BTLSCR_DEFENDER:
        battlerData = BattleSystem_BattlerData(battleSys, battleCtx->defender);

        if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
            BattleSystem_FlagExpGain(battleSys, battleCtx, BATTLER_ENEMY_SLOT_1);
            BattleSystem_FlagExpGain(battleSys, battleCtx, BATTLER_ENEMY_SLOT_2);
        } else {
            BattleSystem_NoExpGain(battleCtx, battleCtx->defender);
            BattleSystem_FlagExpGain(battleSys, battleCtx, battleCtx->defender);
        }

        BattleSystem_DexFlagSeen(battleSys, battleCtx->defender);
        BattleIO_ShowEncounter(battleSys, battleCtx->defender);
        break;

    case BTLSCR_SWITCHED_MON:
        battlerData = BattleSystem_BattlerData(battleSys, battleCtx->switchedMon);

        if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
            BattleSystem_FlagExpGain(battleSys, battleCtx, BATTLER_ENEMY_SLOT_1);
            BattleSystem_FlagExpGain(battleSys, battleCtx, BATTLER_ENEMY_SLOT_2);
        } else {
            BattleSystem_NoExpGain(battleCtx, battleCtx->switchedMon);
            BattleSystem_FlagExpGain(battleSys, battleCtx, battleCtx->switchedMon);
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
static BOOL BtlCmd_ShowPokemon(BattleSystem *battleSys, BattleContext *battleCtx)
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

        BattleSystem_FlagExpGain(battleSys, battleCtx, BATTLER_ENEMY_SLOT_1);
        BattleSystem_FlagExpGain(battleSys, battleCtx, BATTLER_ENEMY_SLOT_2);
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType & 0x1) {
                BattleSystem_NoExpGain(battleCtx, i);
                BattleSystem_FlagExpGain(battleSys, battleCtx, i);
                BattleIO_ShowPokemon(battleSys, i, NULL, 0);
                BattleSystem_DexFlagSeen(battleSys, i);
            }
        }
        break;

    case BTLSCR_ATTACKER:
        battlerData = BattleSystem_BattlerData(battleSys, battleCtx->attacker);

        if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
            BattleSystem_FlagExpGain(battleSys, battleCtx, BATTLER_ENEMY_SLOT_1);
            BattleSystem_FlagExpGain(battleSys, battleCtx, BATTLER_ENEMY_SLOT_2);
        } else {
            BattleSystem_NoExpGain(battleCtx, battleCtx->attacker);
            BattleSystem_FlagExpGain(battleSys, battleCtx, battleCtx->attacker);
        }

        BattleSystem_DexFlagSeen(battleSys, battleCtx->attacker);
        BattleIO_ShowPokemon(battleSys, battleCtx->attacker, NULL, 0);
        break;

    case BTLSCR_DEFENDER:
        battlerData = BattleSystem_BattlerData(battleSys, battleCtx->defender);

        if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
            BattleSystem_FlagExpGain(battleSys, battleCtx, BATTLER_ENEMY_SLOT_1);
            BattleSystem_FlagExpGain(battleSys, battleCtx, BATTLER_ENEMY_SLOT_2);
        } else {
            BattleSystem_NoExpGain(battleCtx, battleCtx->defender);
            BattleSystem_FlagExpGain(battleSys, battleCtx, battleCtx->defender);
        }

        BattleSystem_DexFlagSeen(battleSys, battleCtx->defender);
        BattleIO_ShowPokemon(battleSys, battleCtx->defender, NULL, 0);
        break;

    case BTLSCR_SWITCHED_MON:
        battlerData = BattleSystem_BattlerData(battleSys, battleCtx->switchedMon);

        if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
            BattleSystem_FlagExpGain(battleSys, battleCtx, BATTLER_ENEMY_SLOT_1);
            BattleSystem_FlagExpGain(battleSys, battleCtx, BATTLER_ENEMY_SLOT_2);
        } else {
            BattleSystem_NoExpGain(battleCtx, battleCtx->switchedMon);
            BattleSystem_FlagExpGain(battleSys, battleCtx, battleCtx->switchedMon);
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
static BOOL BtlCmd_ReturnPokemon(BattleSystem *battleSys, BattleContext *battleCtx)
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

            if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) && 
                    (battleCtx->battlersSwitchingMask & FlagIndex(i)) == FALSE) {
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
        if (BattleSystem_BattleType(battleSys) & 0x10) {
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
 * @param battleSys 
 * @param battleCtx 
 * @return FALSE
 */
static BOOL BtlCmd_ThrowTrainerBall(BattleSystem *battleSys, BattleContext *battleCtx)
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
static BOOL BtlCmd_SlideTrainerOut(BattleSystem *battleSys, BattleContext *battleCtx)
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
static BOOL BtlCmd_SlideTrainerIn(BattleSystem *battleSys, BattleContext *battleCtx)
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

static BOOL BtlCmd_Unused0A(BattleSystem *battleSys, BattleContext *battleCtx)
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
static BOOL BtlCmd_SlideHPGaugeIn(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    BattlerData *battlerData;

    BattleScript_Iter(battleCtx, 1);

    int battlerIn = BattleScript_Read(battleCtx);

    switch (battlerIn) {
    case BTLSCR_ALL_BATTLERS:
        for (i = 0; i < maxBattlers; i++) {
            BattleIO_SlideHPGaugeIn(battleSys, battleCtx, i, 0);
        }
        break;

    case BTLSCR_PLAYER:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
                BattleIO_SlideHPGaugeIn(battleSys, battleCtx, i, 0);
            }
        }
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) {
                BattleIO_SlideHPGaugeIn(battleSys, battleCtx, i, 0);
            }
        }
        break;

    default:
        i = BattleScript_Battler(battleSys, battleCtx, battlerIn);
        BattleIO_SlideHPGaugeIn(battleSys, battleCtx, i, 0);
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
static BOOL BtlCmd_SlideHPGaugeInWait(BattleSystem *battleSys, BattleContext *battleCtx)
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
            BattleIO_SlideHPGaugeIn(battleSys, battleCtx, i, 0);
        }
        break;

    case BTLSCR_PLAYER:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
                BattleIO_SlideHPGaugeIn(battleSys, battleCtx, i, wait);
                wait += 4;
            }
        }
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) {
                BattleIO_SlideHPGaugeIn(battleSys, battleCtx, i, wait);
                wait += 4;
            }
        }
        break;

    default:
        i = BattleScript_Battler(battleSys, battleCtx, battlerIn);
        BattleIO_SlideHPGaugeIn(battleSys, battleCtx, i, wait);
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
static BOOL BtlCmd_SlideHPGaugeOut(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    BattlerData *battlerData;

    BattleScript_Iter(battleCtx, 1);
    
    int battlerIn = BattleScript_Read(battleCtx);

    switch (battlerIn) {
    case BTLSCR_ALL_BATTLERS:
        for (i = 0; i < maxBattlers; i++) {
            BattleIO_SlideHPGaugeOut(battleSys, i);
        }
        break;

    case BTLSCR_PLAYER:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if ((battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) == FALSE
                    && (battleCtx->battlersSwitchingMask & FlagIndex(i)) == FALSE) {
                BattleIO_SlideHPGaugeOut(battleSys, i);
            }
        }
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->battlerType & BATTLER_TYPE_SOLO_ENEMY) {
                BattleIO_SlideHPGaugeOut(battleSys, i);
            }
        }
        break;

    default:
        i = BattleScript_Battler(battleSys, battleCtx, battlerIn);
        BattleIO_SlideHPGaugeOut(battleSys, i);
        break;
    }

    return FALSE;
}

/**
 * @brief Wait until the battle IO queue is empty.
 * 
 * This command ensures that all linked battlers are in sync with the present
 * state of the battle after a given action. If any linked battler hangs in
 * this state for 1800 frames (~30 seconds), then the link status will be set
 * to an error state, forcing the battle to end.
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
static BOOL BtlCmd_PrintPreparedMessage(BattleSystem *battleSys, BattleContext *battleCtx)
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
 * This message can later be printed by invoking PrintPreparedMessage.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @return FALSE 
 */
static BOOL BtlCmd_PrepareMessage(BattleSystem *battleSys, BattleContext *battleCtx)
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
static BOOL BtlCmd_PrintSideLocalMessage(BattleSystem *battleSys, BattleContext *battleCtx)
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
 * 1. The location from which the animation is sourced. If the input here is
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
        BattleScript_Call(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, BATTLE_SUBSEQ_WAIT_MOVE_ANIMATION);
    }

    return FALSE;
}

/**
 * @brief Play a move animation from the given attacker toward the given defender,
 * if move animations are enabled.
 * 
 * Inputs:
 * 1. The location from which the animation is sourced. If the input here is
 * BTLSCR_MSG_TEMP, then the move to load is picked from battleCtx->msgMoveTemp.
 * Otherwise, it is picked from battleCtx->moveCur.
 * 2. The attacker for the move animation.
 * 3. The defender for the move animation.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @return FALSE
 */
static BOOL BtlCmd_PlayMoveAnimationA2D(BattleSystem *battleSys, BattleContext *battleCtx)
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
        BattleScript_Call(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, BATTLE_SUBSEQ_WAIT_MOVE_ANIMATION);
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
static BOOL BtlCmd_FlickerBattler(BattleSystem *battleSys, BattleContext *battleCtx)
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
static BOOL BtlCmd_UpdateHPValue(BattleSystem *battleSys, BattleContext *battleCtx)
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
static BOOL BtlCmd_UpdateHPGauge(BattleSystem *battleSys, BattleContext *battleCtx)
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
static BOOL BtlCmd_FaintBattler(BattleSystem *battleSys, BattleContext *battleCtx)
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
static BOOL BtlCmd_PlayFaintingSequence(BattleSystem *battleSys, BattleContext *battleCtx)
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
 * @param battleSys 
 * @param battleCtx 
 * @return FALSE
 */
static BOOL BtlCmd_WaitFrames(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int frames = BattleScript_Read(battleCtx);

    if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_LINK) == FALSE) {
        if ((gCoreSys.padInput & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_BUTTON_X | PAD_BUTTON_Y)) || TouchScreen_Tapped()) {
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
 * 2. The SDAT sequence to play.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @return FALSE
 */
static BOOL BtlCmd_PlaySound(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int battler = BattleScript_Read(battleCtx);
    int sdatSeq = BattleScript_Read(battleCtx);

    BattleIO_PlaySound(battleSys, battleCtx, sdatSeq, BattleScript_Battler(battleSys, battleCtx, battler));

    return FALSE;
}

/**
 * @brief Compare a given data-value from a variable to a target static value.
 * 
 * Inputs:
 * 1. The operation mode. See enum OpCode for possible values.
 * 2. The variable whose data should be retrieved for the comparison.
 * 3. The static value to compare against.
 * 4. The jump-ahead value if the comparison yields TRUE.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @return FALSE
 */
static BOOL BtlCmd_If(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int op = BattleScript_Read(battleCtx);
    int srcVar = BattleScript_Read(battleCtx);
    int compareTo = BattleScript_Read(battleCtx);
    int jump = BattleScript_Read(battleCtx);

    int *data = BattleScript_VarAddress(battleSys, battleCtx, srcVar);

    switch (op) {
    case IFOP_EQU:
        if (*data != compareTo) {
            jump = 0;
        }
        break;

    case IFOP_NEQ:
        if (*data == compareTo) {
            jump = 0;
        }
        break;

    case IFOP_GT:
        if (*data <= compareTo) {
            jump = 0;
        }
        break;

    case IFOP_LTE:
        if (*data > compareTo) {
            jump = 0;
        }
        break;

    case IFOP_FLAG_SET:
        if ((*data & compareTo) == FALSE) {
            jump = 0;
        }
        break;

    case IFOP_FLAG_NOT:
        if (*data & compareTo) {
            jump = 0;
        }
        break;

    case IFOP_AND:
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
 * 1. The operation mode. See enum OpCode for possible values.
 * 2. The battler whose data should be retrieved for the comparison.
 * 3. The parameter to retrieve for the comparison.
 * 4. The static value to compare against.
 * 5. The jump-ahead value if the comparison yields TRUE.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @return FALSE
 */
static BOOL BtlCmd_IfMonData(BattleSystem *battleSys, BattleContext *battleCtx)
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
    case IFOP_EQU:
        if (data != compareTo) {
            jump = 0;
        }
        break;

    case IFOP_NEQ:
        if (data == compareTo) {
            jump = 0;
        }
        break;

    case IFOP_GT:
        if (data <= compareTo) {
            jump = 0;
        }
        break;

    case IFOP_LTE:
        if (data > compareTo) {
            jump = 0;
        }
        break;

    case IFOP_FLAG_SET:
        if ((data & compareTo) == FALSE) {
            jump = 0;
        }
        break;

    case IFOP_FLAG_NOT:
        if (data & compareTo) {
            jump = 0;
        }
        break;

    case IFOP_AND:
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
static BOOL BtlCmd_FadeOut(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    BattleIO_FadeOut(battleSys, battleCtx);

    return FALSE;
}

/**
 * @brief Jump to a subroutine sequence, abandoning the current script.
 * 
 * Inputs:
 * 1. The subroutine sequence to jump to.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @return FALSE 
 */
static BOOL BtlCmd_JumpToSub(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int subseq = BattleScript_Read(battleCtx);

    BattleScript_Jump(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, subseq);

    return FALSE;
}

/**
 * @brief Jump to the battle effect sequence for the current move.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @return FALSE
 */
static BOOL BtlCmd_JumpToBattleEffect(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);

    BattleScript_Jump(battleCtx, NARC_INDEX_BATTLE__SKILL__BE_SEQ, CURRENT_MOVE_DATA.effect);

    return FALSE;
}

/**
 * @brief Jump to the move sequence for the chosen move.
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
static BOOL BtlCmd_JumpToMove(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    BOOL targetIsSet = BattleScript_Read(battleCtx);

    battleCtx->battleStatusMask &= ~SYSCTL_SKIP_ATTACK_MESSAGE;
    battleCtx->battleStatusMask &= ~SYSCTL_PLAYED_MOVE_ANIMATION;
    battleCtx->moveCur = battleCtx->msgMoveTemp;

    if (targetIsSet == FALSE) {
        battleCtx->defender = BattleSystem_Defender(battleSys, battleCtx, battleCtx->attacker, battleCtx->msgMoveTemp, TRUE, 0);
        BattleSystem_RedirectTarget(battleSys, battleCtx, battleCtx->attacker, battleCtx->msgMoveTemp);
        battleCtx->battlerActions[battleCtx->attacker][BATTLE_ACTION_CHOOSE_TARGET] = battleCtx->defender;
    }

    if (battleCtx->defender == BATTLER_NONE) {
        battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;
        BattleScript_Jump(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, BATTLE_SUBSEQ_NO_TARGET);
    } else {
        BattleScript_Jump(battleCtx, NARC_INDEX_BATTLE__SKILL__WAZA_SEQ, battleCtx->moveCur);
    }

    return FALSE;
}

/**
 * @brief Check if a critical hit should occur.
 * 
 * If the battle is either the catching tutorial or the player's first battle,
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
static BOOL BtlCmd_CheckCritical(BattleSystem *battleSys, BattleContext *battleCtx)
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

            if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL) && Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL)) {
                if (battleCtx->monsGainingExp[(battleCtx->faintedMon >> 1) & 1] & FlagIndex(i)) {
                    totalMonsGainingExp++;
                }

                u16 item = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
                if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HOLD_EFFECT) == HOLD_EFFECT_EXP_SHARE) {
                    totalMonsWithExpShare++;
                }
            }
        }

        u16 exp = PokemonPersonalData_GetSpeciesValue(battleCtx->battleMons[battleCtx->faintedMon].species, MON_DATA_PERSONAL_BASE_EXP);
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

enum {
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

enum {
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

    battleCtx->taskData = Heap_AllocFromHeap(HEAP_ID_BATTLE, sizeof(BattleScriptTaskData));
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
static BOOL BtlCmd_ShowPartyList(BattleSystem *battleSys, BattleContext *battleCtx)
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
            // If both battlers are done selecting replacements, wait for all other battlers
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
 * @param battleSys 
 * @param battleCtx 
 * @return FALSE
 */
static BOOL BtlCmd_WaitPartyList(BattleSystem *battleSys, BattleContext *battleCtx)
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
 * @brief Switch a battler for another.
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
static BOOL BtlCmd_Switch(BattleSystem *battleSys, BattleContext *battleCtx)
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
    battleCtx->hpTemp = battleCtx->battleMons[BATTLER_ENEMY_SLOT_1].curHP;

    BattleSystem_UpdateAfterSwitch(battleSys, battleCtx, battler);

    return FALSE;
}

/**
 * @brief Jump to the designated address if any battlers are switching.
 * 
 * Inputs:
 * 1. The jump distance
 * 
 * @param battleSys 
 * @param battleCtx 
 * @return FALSE 
 */
static BOOL BtlCmd_JumpIfAnySwitches(BattleSystem *battleSys, BattleContext *battleCtx)
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

    battleCtx->taskData = Heap_AllocFromHeap(HEAP_ID_BATTLE, sizeof(BattleScriptTaskData));
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
 * 1. The number of hits to apply to the move. If this value is passed as 0,
 * then a number of hits will be generated from 2 through 5. If the attacker
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
static BOOL BtlCmd_SetupMultiHit(BattleSystem *battleSys, BattleContext *battleCtx)
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
 * 1. The operation to apply; see enum OpCode for possible values.
 * 2. ID of the variable to target as a source operand and the destination.
 * 3. A static source value to use as the second operand.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @return FALSE
 */
static BOOL BtlCmd_SetVarValue(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int op = BattleScript_Read(battleCtx);
    int dstVar = BattleScript_Read(battleCtx);
    int srcVal = BattleScript_Read(battleCtx);

    int *var = BattleScript_VarAddress(battleSys, battleCtx, dstVar);
    u32 mask;

    switch (op) {
    case VALOP_SET:
        *var = srcVal;
        break;

    case VALOP_ADD:
        *var += srcVal;
        break;
        
    case VALOP_SUB:
        *var -= srcVal;
        break;

    case VALOP_FLAG_ON:
        *var |= srcVal;
        break;

    case VALOP_FLAG_OFF:
        *var &= FLAG_NEGATE(srcVal);
        break;

    case VALOP_MUL:
        *var *= srcVal;
        break;

    case VALOP_DIV:
        *var /= srcVal;
        break;

    case VALOP_LSH:
        *var = *var << srcVal;
        break;

    case VALOP_RSH:
        mask = *var;
        mask = mask >> srcVal;
        *var = mask;
        break;

    case VALOP_FLAG_INDEX:
        *var = FlagIndex(srcVal);
        break;

    case VALOP_GET:
        GF_ASSERT(FALSE);
        break;

    case VALOP_SUB_TO_ZERO:
        *var -= srcVal;
        if (*var < 0) {
            *var = 0;
        }
        break;

    case VALOP_XOR:
        *var ^= srcVal;
        break;

    case VALOP_AND:
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

    if (battleCtx->sideEffectParam >= MOVE_SIDE_EFFECT_ATTACK_DOWN_2_STAGES) {
        statOffset = battleCtx->sideEffectParam - MOVE_SIDE_EFFECT_ATTACK_DOWN_2_STAGES;
        stageChange = -2;
        battleCtx->scriptTemp = STATUS_EFFECT_STAGE_DOWN;
    } else if (battleCtx->sideEffectParam >= MOVE_SIDE_EFFECT_ATTACK_UP_2_STAGES) {
        statOffset = battleCtx->sideEffectParam - MOVE_SIDE_EFFECT_ATTACK_UP_2_STAGES;
        stageChange = 2;
        battleCtx->scriptTemp = STATUS_EFFECT_STAGE_UP;
    } else if (battleCtx->sideEffectParam >= MOVE_SIDE_EFFECT_ATTACK_DOWN_1_STAGE) {
        statOffset = battleCtx->sideEffectParam - MOVE_SIDE_EFFECT_ATTACK_DOWN_1_STAGE;
        stageChange = -1;
        battleCtx->scriptTemp = STATUS_EFFECT_STAGE_DOWN;
    } else {
        statOffset = battleCtx->sideEffectParam - MOVE_SIDE_EFFECT_ATTACK_UP_1_STAGE;
        stageChange = 1;
        battleCtx->scriptTemp = STATUS_EFFECT_STAGE_UP;
    }

    if (stageChange > 0) {
        if (mon->statBoosts[BATTLE_STAT_ATTACK + statOffset] == 12) {
            battleCtx->battleStatusMask |= SYSCTL_FAIL_STAT_STAGE_CHANGE;

            if (battleCtx->sideEffectType == SIDE_EFFECT_SOURCE_INDIRECT
                    || battleCtx->sideEffectType == SIDE_EFFECT_SOURCE_ABILITY) {
                BattleScript_Iter(battleCtx, jumpBlocked);
            } else {
                SetupNicknameStatMsg(battleCtx, 142, statOffset); // "{0}'s {1} won't go higher!"
                BattleScript_Iter(battleCtx, jumpNoChange);
            }
        } else {
            if (battleCtx->sideEffectType == SIDE_EFFECT_SOURCE_ABILITY) {
                SetupNicknameAbilityStatMsg(battleCtx, 622, statOffset); // "{0}'s {1} raised its {2}!"
            } else if (battleCtx->sideEffectType == SIDE_EFFECT_SOURCE_HELD_ITEM) {
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
                    if (battleCtx->sideEffectType == SIDE_EFFECT_SOURCE_ABILITY) {
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
                    if (battleCtx->sideEffectType == SIDE_EFFECT_SOURCE_ABILITY) {
                        SetupNicknameAbilityNicknameAbilityMsg(battleCtx, 727); // "{0}'s {1} suppressed {2}'s {3}!"
                    } else {
                        SetupNicknameAbilityStatMsg(battleCtx, 704, statOffset); // "{0}'s {1} prevents {2} loss!"
                    }

                    result = 1;
                } else if (mon->statBoosts[BATTLE_STAT_ATTACK + statOffset] == 0) {
                    battleCtx->battleStatusMask |= SYSCTL_FAIL_STAT_STAGE_CHANGE;

                    if (battleCtx->sideEffectType == SIDE_EFFECT_SOURCE_INDIRECT
                            || battleCtx->sideEffectType == SIDE_EFFECT_SOURCE_ABILITY) {
                        BattleScript_Iter(battleCtx, jumpBlocked);

                        return FALSE;
                    } else {
                        SetupNicknameStatMsg(battleCtx, 145, statOffset); // "{0}'s {1} won't go lower!"
                        BattleScript_Iter(battleCtx, jumpNoChange);

                        return FALSE;
                    }
                } else if (Battler_IgnorableAbility(battleCtx, battleCtx->attacker, battleCtx->sideEffectMon, ABILITY_SHIELD_DUST) == TRUE
                        && battleCtx->sideEffectType == SIDE_EFFECT_SOURCE_INDIRECT) {
                    result = 1;
                } else if (battleCtx->battleMons[battleCtx->sideEffectMon].statusVolatile & VOLATILE_CONDITION_SUBSTITUTE) {
                    result = 2;
                }
            } else if (mon->statBoosts[BATTLE_STAT_ATTACK + statOffset] == 0) {
                battleCtx->battleStatusMask |= SYSCTL_FAIL_STAT_STAGE_CHANGE;

                if (battleCtx->sideEffectType == SIDE_EFFECT_SOURCE_INDIRECT
                        || battleCtx->sideEffectType == SIDE_EFFECT_SOURCE_ABILITY) {
                    BattleScript_Iter(battleCtx, jumpBlocked);

                    return FALSE;
                } else {
                    SetupNicknameStatMsg(battleCtx, 145, statOffset); // "{0}'s {1} won't go lower!"
                    BattleScript_Iter(battleCtx, jumpNoChange);

                    return FALSE;
                }
            }

            if (result == 2 && battleCtx->sideEffectType == SIDE_EFFECT_SOURCE_DIRECT) {
                BattleScript_Iter(battleCtx, jumpBlockedBySubstitute);

                return FALSE;
            } else if (result && battleCtx->sideEffectType == SIDE_EFFECT_SOURCE_INDIRECT) {
                BattleScript_Iter(battleCtx, jumpBlocked);

                return FALSE;
            } else if (result) {
                BattleScript_Iter(battleCtx, jumpNoChange);

                return FALSE;
            }
        }

        if (battleCtx->sideEffectType == SIDE_EFFECT_SOURCE_ABILITY) {
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
 * 1. The operation to apply; see enum OpCode for possible values.
 * 2. ID of the battler to target as a source operand and the destination.
 * 3. ID of the battler's data field to target as a source operand and
 * the destination.
 * 4. A static source value to use as the second operand.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @return FALSE 
 */
static BOOL BtlCmd_SetMonDataValue(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int op = BattleScript_Read(battleCtx);
    int inBattler = BattleScript_Read(battleCtx);
    int paramID = BattleScript_Read(battleCtx);
    int srcVal = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    int monData = BattleMon_Get(battleCtx, battler, paramID, NULL);

    switch (op) {
    case VALOP_SET:
        monData = srcVal;
        break;

    case VALOP_ADD:
        monData += srcVal;
        break;

    case VALOP_SUB:
        monData -= srcVal;
        break;

    case VALOP_FLAG_ON:
        monData |= srcVal;
        break;

    case VALOP_FLAG_OFF:
        monData &= FLAG_NEGATE(srcVal);
        break;

    case VALOP_MUL:
        monData *= srcVal;
        break;

    case VALOP_DIV:
        monData /= srcVal;
        break;

    case VALOP_LSH:
        monData = monData << srcVal;
        break;

    case VALOP_RSH:
        u32 mask = monData;
        mask = mask >> srcVal;
        monData = mask;
        break;

    case VALOP_FLAG_INDEX:
        monData = FlagIndex(srcVal);
        break;

    case VALOP_GET:
        GF_ASSERT(FALSE);
        break;

    case VALOP_SUB_TO_ZERO:
        monData -= srcVal;

        if (monData < 0) {
            monData = 0;
        }
        break;

    case VALOP_XOR:
        monData ^= srcVal;
        break;

    case VALOP_AND:
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
 * 1. Op-code which controls the behavior. See enum CheckAbilityOp
 * 2. Input battler (or set of battlers) whose ability should be checked
 * 3. The ability to check for any battler to have (or not have)
 * 4. Jump distance if a battler in the input set meets the criteria
 * 
 * Side effects:
 * - If any battler matches the criteria, battleCtx->abilityMon will be set
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
            if (op == CHECK_ABILITY_HAVE) {
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

        if (op == CHECK_ABILITY_HAVE) {
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
 * 1. The operation to apply; see enum OpCode for possible values.
 * 2. ID of the variable to target as a source operand and the destination.
 * 3. ID of the variable to use as the second operand.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @return FALSE
 */
static BOOL BtlCmd_SetVarFromVar(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int op = BattleScript_Read(battleCtx);
    int dstVar = BattleScript_Read(battleCtx);
    int srcVar = BattleScript_Read(battleCtx);

    int *dstData = BattleScript_VarAddress(battleSys, battleCtx, dstVar);
    int *srcData = BattleScript_VarAddress(battleSys, battleCtx, srcVar);

    switch (op) {
    case VALOP_SET:
        *dstData = *srcData;
        break;

    case VALOP_ADD:
        *dstData += *srcData;
        break;

    case VALOP_SUB:
        *dstData -= *srcData;
        break;

    case VALOP_FLAG_ON:
        *dstData |= *srcData;
        break;

    case VALOP_FLAG_OFF:
        *dstData &= FLAG_NEGATE(*srcData);
        break;

    case VALOP_MUL:
        *dstData *= *srcData;
        break;

    case VALOP_DIV:
        *dstData /= *srcData;
        break;

    case VALOP_LSH:
        *dstData = *dstData << *srcData;
        break;

    case VALOP_RSH:
        u32 tmp = *dstData;
        tmp = tmp >> *srcData;
        *dstData = tmp;
        break;

    case VALOP_FLAG_INDEX:
        *dstData = FlagIndex(*srcData);
        break;

    case VALOP_GET:
        *srcData = *dstData;
        break;

    case VALOP_SUB_TO_ZERO:
        *dstData -= *srcData;

        if (*dstData < 0) {
            *dstData = 0;
        }
        break;

    case VALOP_XOR:
        *dstData ^= *srcData;
        break;

    case VALOP_AND:
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
 * 1. The operation to apply; see enum OpCode for possible values.
 * 2. ID of the battler to target as a source operand and the destination.
 * 3. ID of the battler's data field to target as a source operand and
 * the destination.
 * 4. ID of the variable to use as the second operand.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @return FALSE
 */
static BOOL BtlCmd_SetMonDataFromVar(BattleSystem *battleSys, BattleContext *battleCtx)
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
    case VALOP_SET:
        monData = *varData;
        break;

    case VALOP_ADD:
        monData += *varData;
        break;

    case VALOP_SUB:
        monData -= *varData;
        break;

    case VALOP_FLAG_ON:
        monData |= *varData;
        break;

    case VALOP_FLAG_OFF:
        monData &= FLAG_NEGATE(*varData);
        break;

    case VALOP_MUL:
        monData *= *varData;
        break;

    case VALOP_DIV:
        monData /= *varData;
        break;

    case VALOP_LSH:
        monData = monData << *varData;
        break;

    case VALOP_RSH:
        u32 mask = monData;
        mask = mask >> *varData;
        monData = mask;
        break;

    case VALOP_FLAG_INDEX:
        monData = FlagIndex(*varData);
        break;

    case VALOP_GET:
        *varData = monData;
        break;

    case VALOP_SUB_TO_ZERO:
        monData -= *varData;

        if (monData < 0) {
            monData = 0;
        }
        break;

    case VALOP_XOR:
        monData ^= *varData;
        break;

    case VALOP_AND:
        monData &= *varData;
        break;

    default:
        GF_ASSERT(FALSE);
        break;
    }

    if (op != VALOP_GET) {
        if (paramID == BATTLEMON_ABILITY) {
            BattleAI_SetAbility(battleCtx, battler, monData);
        }

        BattleMon_Set(battleCtx, battler, paramID, &monData);
        BattleMon_CopyToParty(battleSys, battleCtx, battler);
    }

    return FALSE;
}

/**
 * @brief Jump ahead a certain distance.
 * 
 * Inputs:
 * 1. The distance to jump forward in words.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @return FALSE 
 */
static BOOL BtlCmd_Jump(BattleSystem *battleSys, BattleContext *battleCtx)
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
static BOOL BtlCmd_CallSub(BattleSystem *battleSys, BattleContext *battleCtx)
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
static BOOL BtlCmd_CallSubFromVar(BattleSystem *battleSys, BattleContext *battleCtx)
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
            BattleScript_Jump(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, BATTLE_SUBSEQ_NO_TARGET);
        } else {
            battleCtx->battlerActions[battleCtx->attacker][1] = battleCtx->defender;
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
static BOOL BtlCmd_ResetStatChanges(BattleSystem *battleSys, BattleContext *battleCtx)
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
static BOOL BtlCmd_SetStatusIcon(BattleSystem *battleSys, BattleContext *battleCtx)
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
static BOOL BtlCmd_TrainerMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int msgType = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    BattleIO_TrainerMessage(battleSys, battler, msgType);

    return FALSE;
}

static u8 Unk_ov16_02270B20[] = {
    0x0,
    0x0,
    0x4,
    0x4,
    0x4,
    0x4,
    0x4,
    0x8,
    0x4,
    0x8,
    0x4,
    0x8,
    0x8,
    0x8,
    0x6,
    0xC,
    0xC,
    0xC,
    0x4,
    0x8,
    0x10,
    0x10,
    0x2,
    0x10,
    0xF,
    0xF,
    0x8,
    0x14,
    0x2,
    0x8,
    0x8,
    0x1E,
    0x28,
    0x28,
    0x32,
    0x32,
    0xE,
    0x10,
    0xA,
    0xF,
    0xF,
    0xC,
    0x4,
    0x4,
    0x1,
    0x1,
    0x8,
    0x5,
    0xC,
    0x8,
    0x8,
    0x1E,
    0x6,
    0xF,
    0xF,
    0x8,
    0x8,
    0x6,
    0x6,
    0xA,
    0x5,
    0x5,
    0x1E,
    0x19,
    0x1E,
    0x1E,
    0x1E,
    0x1E,
    0x1E,
    0x32,
    0xE,
    0xA,
    0x14,
    0xA,
    0x1E,
    0x1E,
    0x1E,
    0x1E,
    0x1E,
    0x1E,
    0x8,
    0x8,
    0x12,
    0x8,
    0xA,
    0x12,
    0x2D,
    0x14,
    0x14,
    0xA,
    0x1E,
    0x1E,
    0x1E,
    0x1E,
    0x1E,
    0x19,
    0x19,
    0x0,
    0xA,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0
};

static u32 ov16_022431BC (BattleSystem * param0, BattleContext * param1, int param2)
{
    int v0 = 0;
    void * v1;
    u32 v2;
    u8 v3 = 0;
    TrainerData v4;

    v1 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_022431BC_3) * 6);

    sub_0207938C(param0->unk_A0[param2], &v4);
    sub_0207939C(param0->unk_A0[param2], v1);

    switch (v4.unk_00) {
    default:
    case 0:
    {
        UnkStruct_ov16_022431BC * v5;

        v5 = (UnkStruct_ov16_022431BC *)v1;
        v3 = v5[v4.unk_03 - 1].unk_02;
    }
    break;
    case 1:
    {
        UnkStruct_ov16_022431BC_1 * v6;

        v6 = (UnkStruct_ov16_022431BC_1 *)v1;
        v3 = v6[v4.unk_03 - 1].unk_02;
    }
    break;
    case 2:
    {
        UnkStruct_ov16_022431BC_2 * v7;

        v7 = (UnkStruct_ov16_022431BC_2 *)v1;
        v3 = v7[v4.unk_03 - 1].unk_02;
    }
    break;
    case 3:
    {
        UnkStruct_ov16_022431BC_3 * v8;

        v8 = (UnkStruct_ov16_022431BC_3 *)v1;
        v3 = v8[v4.unk_03 - 1].unk_02;
    }
    break;
    }

    if ((param0->battleType & 0x10) || (param0->battleType == ((0x2 | 0x1) | 0x8 | 0x40))) {
        v2 = v3 * 4 * param1->prizeMoneyMul * Unk_ov16_02270B20[v4.class];
    } else if (param0->battleType & 0x2) {
        v2 = v3 * 4 * param1->prizeMoneyMul * 2 * Unk_ov16_02270B20[v4.class];
    } else {
        v2 = v3 * 4 * param1->prizeMoneyMul * Unk_ov16_02270B20[v4.class];
    }

    Heap_FreeToHeap(v1);

    return v2;
}

static BOOL ov16_022432B4 (BattleSystem * param0, BattleContext * param1)
{
    u32 v0;

    BattleScript_Iter(param1, 1);

    if (param0->resultMask == 0x1) {
        v0 = ov16_022431BC(param0, param1, 1);

        if ((param0->battleType & 0x10) || (param0->battleType == ((0x2 | 0x1) | 0x8 | 0x40))) {
            v0 += ov16_022431BC(param0, param1, 3);
        }

        TrainerInfo_GiveMoney(BattleSystem_TrainerInfo(param0, 0), v0);
    } else {
        v0 = ov16_0223F904(param0->parties[0], param0->trainerInfo[0]);
        TrainerInfo_TakeMoney(BattleSystem_TrainerInfo(param0, 0), v0);
    }

    if (v0) {
        param1->msgTemp = v0;
    } else {
        param1->msgTemp = 0;
    }

    return 0;
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
static BOOL BtlCmd_PlayStatusEffect(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int effect = BattleScript_Read(battleCtx);

    if (BattleSystem_AnimationsOn(battleSys) == TRUE
            || effect == STATUS_EFFECT_CHANGE_FORM_OUT
            || effect == STATUS_EFFECT_CHANGE_FORM_IN
            || effect == STATUS_EFFECT_SUBSTITUTE_OFF
            || effect == STATUS_EFFECT_SUBSTITUTE_ON) {
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
static BOOL BtlCmd_PlayStatusEffectAToD(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inAttacker = BattleScript_Read(battleCtx);
    int inDefender = BattleScript_Read(battleCtx);
    int effect = BattleScript_Read(battleCtx);

    if (BattleSystem_AnimationsOn(battleSys) == TRUE
            || effect == STATUS_EFFECT_CHANGE_FORM_OUT
            || effect == STATUS_EFFECT_CHANGE_FORM_IN
            || effect == STATUS_EFFECT_SUBSTITUTE_OFF
            || effect == STATUS_EFFECT_SUBSTITUTE_ON) {
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
static BOOL BtlCmd_PlayStatusEffectFromVar(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int inBattler = BattleScript_Read(battleCtx);
    int var = BattleScript_Read(battleCtx);

    int battler = BattleScript_Battler(battleSys, battleCtx, inBattler);
    int *effect = BattleScript_VarAddress(battleSys, battleCtx, var);

    if ((BattleSystem_AnimationsOn(battleSys) == TRUE
            || var == STATUS_EFFECT_CHANGE_FORM_OUT // bug: this should be *effect, not var
            || var == STATUS_EFFECT_CHANGE_FORM_IN // bug: this should be *effect, not var
            || *effect == STATUS_EFFECT_SUBSTITUTE_OFF
            || *effect == STATUS_EFFECT_SUBSTITUTE_ON)
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
static BOOL BtlCmd_PrintBattleStartMessage(BattleSystem *battleSys, BattleContext *battleCtx)
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
static BOOL BtlCmd_PrintLeadMonMessage(BattleSystem *battleSys, BattleContext *battleCtx)
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
static BOOL BtlCmd_PreparedTrainerMessage(BattleSystem *battleSys, BattleContext *battleCtx)
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
 * 1. The operation mode. See enum OpCode for possible values.
 * 3. The variable whose data will be used on the left-hand side of the comparison.
 * 3. The variable whose data will be used on the right-hand side of the comparison.
 * 4. The jump-ahead value if the comparison yields TRUE.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @return FALSE
 */
static BOOL BtlCmd_IfVar(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int op = BattleScript_Read(battleCtx);
    int lhsVar = BattleScript_Read(battleCtx);
    int rhsVar = BattleScript_Read(battleCtx);
    int jump = BattleScript_Read(battleCtx);

    u32 *lhs = BattleScript_VarAddress(battleSys, battleCtx, lhsVar);
    u32 *rhs = BattleScript_VarAddress(battleSys, battleCtx, rhsVar);

    switch (op) {
    case IFOP_EQU:
        if (*lhs != *rhs) {
            jump = 0;
        }
        break;

    case IFOP_NEQ:
        if (*lhs == *rhs) {
            jump = 0;
        }
        break;

    case IFOP_GT:
        if (*lhs <= *rhs) {
            jump = 0;
        }
        break;

    case IFOP_LTE:
        if (*lhs > *rhs) {
            jump = 0;
        }
        break;

    case IFOP_FLAG_SET:
        if ((*lhs & *rhs) == FALSE) {
            jump = 0;
        }
        break;

    case IFOP_FLAG_NOT:
        if (*lhs & *rhs) {
            jump = 0;
        }
        break;

    case IFOP_AND:
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
 * 1. The operation mode. See enum OpCode for possible values.
 * 2. The battler whose data should be retrieved for the left-hand side of the comparison.
 * 3. The parameter to use for the left-hand side of the comparison.
 * 4. The variable whose data will be used on the right-hand side of the comparison.
 * 5. The jump-ahead value if the comparison yields TRUE.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @return FALSE
 */
static BOOL BtlCmd_IfMonDataVar(BattleSystem *battleSys, BattleContext *battleCtx)
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
    case IFOP_EQU:
        if (lhs != *rhs) {
            jump = 0;
        }
        break;
        
    case IFOP_NEQ:
        if (lhs == *rhs) {
            jump = 0;
        }
        break;

    case IFOP_GT:
        if (lhs <= *rhs) {
            jump = 0;
        }
        break;

    case IFOP_LTE:
        if (lhs > *rhs) {
            jump = 0;
        }
        break;

    case IFOP_FLAG_SET:
        if ((lhs & *rhs) == FALSE) {
            jump = 0;
        }
        break;

    case IFOP_FLAG_NOT:
        if (lhs & *rhs) {
            jump = 0;
        }
        break;

    case IFOP_AND:
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
static BOOL BtlCmd_GivePayDayMoney(BattleSystem *battleSys, BattleContext *battleCtx)
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
 * These moves do not follow the standard accuracy formula. If the defender is
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
 * @brief Divide the value of a variable by another static value, storing the
 * result back into the source variable.
 * 
 * This operation will not permit quotients of 0. If the variable's value is
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
static BOOL BtlCmd_Divide(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BattleScript_Iter(battleCtx, 1);
    int srcVar = BattleScript_Read(battleCtx);
    int divBy = BattleScript_Read(battleCtx);
    
    int *var = BattleScript_VarAddress(battleSys, battleCtx, srcVar);
    *var = BattleSystem_Divide(*var, divBy);

    return FALSE;
}

/**
 * @brief Divide the value of a variable by the value of another variable,
 * storing the result back into the former.
 * 
 * This operation will not permit quotients of 0. If the variable's value is
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
static BOOL BtlCmd_DivideByVar (BattleSystem * battleSys, BattleContext * battleCtx)
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
        u16 move = (BattleSystem_RandNext(battleSys) % NUM_MOVES) + 1;

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

        // If the target is no longer active, pick a random opponent
        // This should always give us an active opponent, unless both have fainted
        if (DEFENDING_MON.curHP == 0) {
            battleCtx->defender = BattleSystem_RandomOpponent(battleSys, battleCtx, battleCtx->attacker);

            // If there are no possible targets, fail
            if (DEFENDING_MON.curHP == 0) {
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;
                BattleScript_Jump(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, BATTLE_SUBSEQ_NO_TARGET);
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

        // If the target is no longer active, pick a random opponent
        // This should always give us an active opponent, unless both have fainted
        if (DEFENDING_MON.curHP == 0) {
            battleCtx->defender = BattleSystem_RandomOpponent(battleSys, battleCtx, battleCtx->attacker);

            // If there are no possible targets, fail
            if (DEFENDING_MON.curHP == 0) {
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;
                BattleScript_Jump(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, BATTLE_SUBSEQ_NO_TARGET);
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

static BOOL ov16_022442F0 (BattleSystem * param0, BattleContext * param1)
{
    int v0, v1;
    int v2;
    int v3;

    BattleScript_Iter(param1, 1);

    v2 = BattleScript_Read(param1);

    if (Battler_Ability(param1, param1->attacker) == 121) {
        BattleScript_Iter(param1, v2);
        return 0;
    }

    if ((param1->conversion2Move[param1->attacker]) && (param1->conversion2Battler[param1->attacker] != 0xff)) {
        if ((BattleMove_IsMultiTurn(param1, param1->conversion2Move[param1->attacker])) && (param1->battleMons[param1->conversion2Battler[param1->attacker]].statusVolatile & 0x1000)) {
            BattleScript_Iter(param1, v2);
            return 0;
        } else {
            {
                u8 v4, v5, v6;

                v3 = param1->conversion2Type[param1->attacker];

                for (v0 = 0; v0 < 1000; v0++) {
                    BattleSystem_TypeMatchup(param0, 0xffff, &v4, &v5, &v6);

                    if ((v4 == v3) && (v6 <= 5) && (BattleMon_Get(param1, param1->attacker, 27, NULL) != v5) && (BattleMon_Get(param1, param1->attacker, 28, NULL) != v5)) {
                        param1->battleMons[param1->attacker].type1 = v5;
                        param1->battleMons[param1->attacker].type2 = v5;
                        param1->msgTemp = v5;
                        return 0;
                    }
                }

                v0 = 0;

                while (BattleSystem_TypeMatchup(param0, v0, &v4, &v5, &v6) == 1) {
                    if ((v4 == v3) && (v6 <= 5) && (BattleMon_Get(param1, param1->attacker, 27, NULL) != v5) && (BattleMon_Get(param1, param1->attacker, 28, NULL) != v5)) {
                        param1->battleMons[param1->attacker].type1 = v5;
                        param1->battleMons[param1->attacker].type2 = v5;
                        param1->msgTemp = v5;
                        return 0;
                    }

                    v0++;
                }
            }
        }
    }

    BattleScript_Iter(param1, v2);

    return 0;
}

static BOOL ov16_022444B0 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1 = -1;
    int v2;

    BattleScript_Iter(param1, 1);

    v2 = BattleScript_Read(param1);

    if ((param1->battleMons[param1->attacker].statusVolatile & 0x200000) || (param1->moveSketched[param1->defender] == 165) || (param1->moveSketched[param1->defender] == 166) || (param1->moveSketched[param1->defender] == 448) || (param1->moveSketched[param1->defender] == 0)) {
        BattleScript_Iter(param1, v2);
    } else {
        for (v0 = 0; v0 < 4; v0++) {
            if ((param1->battleMons[param1->attacker].moves[v0] != 166) && (param1->battleMons[param1->attacker].moves[v0] == param1->moveSketched[param1->defender])) {
                break;
            }

            if ((param1->battleMons[param1->attacker].moves[v0] == 166) && (v1 == -1)) {
                v1 = v0;
            }
        }

        if (v0 == 4) {
            param1->battleMons[param1->attacker].moves[v1] = param1->moveSketched[param1->defender];
            param1->battleMons[param1->attacker].ppCur[v1] = param1->aiContext.moveTable[param1->moveSketched[param1->defender]].pp;
            ov16_022662FC(param0, param1, param1->attacker);
            param1->msgMoveTemp = param1->moveSketched[param1->defender];

            if (param1->msgMoveTemp == 387) {
                param1->battleMons[param1->attacker].moveEffectsData.lastResortCount = 0;
            }
        } else {
            BattleScript_Iter(param1, v2);
        }
    }

    return 0;
}

static BOOL ov16_022445D4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v2 = BattleScript_Read(param1);
    v1 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        if ((ov16_02255918(param1->battleMons[param1->attacker].moves[v0])) || (param1->battleMons[param1->attacker].moves[v0] == 264) || (param1->battleMons[param1->attacker].moves[v0] == 253) || (param1->battleMons[param1->attacker].moves[v0] == 448) || (BattleMove_IsMultiTurn(param1, param1->battleMons[param1->attacker].moves[v0]))) {
            v1 |= FlagIndex(v0);
        }
    }

    v1 = BattleSystem_CheckStruggling(param0, param1, param1->attacker, v1, (0x2 ^ 0xffffffff));

    if (v1 == 0xf) {
        BattleScript_Iter(param1, v2);
    } else {
        do {
            v0 = BattleSystem_RandNext(param0) % 4;
        } while ((v1 & FlagIndex(v0)));

        param1->msgMoveTemp = param1->battleMons[param1->attacker].moves[v0];
    }

    return 0;
}

static const u8 Unk_ov16_0226E584[][2] = {
    {0x1, 0xC8},
    {0x5, 0x96},
    {0xC, 0x64},
    {0x15, 0x50},
    {0x2A, 0x28},
    {0x40, 0x14}
};

static BOOL ov16_022446A0 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);
    v1 = sub_0208C0BC(param1->battleMons[param1->attacker].curHP, param1->battleMons[param1->attacker].maxHP, 64);

    for (v0 = 0; v0 < NELEMS(Unk_ov16_0226E584); v0++) {
        if (v1 <= Unk_ov16_0226E584[v0][0]) {
            break;
        }
    }

    param1->movePower = Unk_ov16_0226E584[v0][1];

    return 0;
}

static BOOL ov16_022446F4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);
    v0 = BattleScript_Read(param1);

    if (param1->movePrevByBattler[param1->defender]) {
        v1 = Battler_SlotForMove(&param1->battleMons[param1->defender], param1->movePrevByBattler[param1->defender]);

        if ((v1 == 4) || (param1->battleMons[param1->defender].ppCur[v1] == 0)) {
            BattleScript_Iter(param1, v0);
        } else {
            v2 = 4;

            if (param1->battleMons[param1->defender].ppCur[v1] < v2) {
                v2 = param1->battleMons[param1->defender].ppCur[v1];
            }

            param1->msgMoveTemp = param1->movePrevByBattler[param1->defender];
            param1->msgTemp = v2;
            param1->battleMons[param1->defender].ppCur[v1] -= v2;

            BattleMon_CopyToParty(param0, param1, param1->defender);
        }
    } else {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_02244798 (BattleSystem * param0, BattleContext * param1)
{
    u32 v0;
    int v1;

    v0 = BattleSystem_BattleType(param0);
    BattleScript_Iter(param1, 1);

    param1->calcTemp = 0;

    if (param1->moveCur == 215) {
        param1->msgMoveTemp = param1->moveCur;

        if (Battler_Ability(param1, param1->attacker) != 43) {
            param1->battleMons[param1->attacker].status = 0;
            param1->battleMons[param1->attacker].statusVolatile &= (0x8000000 ^ 0xffffffff);
        } else {
            param1->calcTemp |= (1 | 4);
        }

        if (v0 & 0x2) {
            v1 = BattleScript_Battler(param0, param1, 0x10);

            if ((param1->battlersSwitchingMask & FlagIndex(v1)) == 0) {
                if (Battler_IgnorableAbility(param1, param1->attacker, v1, 43) == 0) {
                    param1->battleMons[v1].status = 0;
                    param1->battleMons[v1].statusVolatile &= (0x8000000 ^ 0xffffffff);
                } else {
                    param1->msgBattlerTemp = v1;
                    param1->calcTemp |= (2 | 8);
                }
            }
        } else {
            param1->calcTemp |= 8;
        }
    } else {
        param1->battleMons[param1->attacker].status = 0;
        param1->battleMons[param1->attacker].statusVolatile &= (0x8000000 ^ 0xffffffff);

        if (v0 & 0x2) {
            v1 = BattleScript_Battler(param0, param1, 0x10);

            if ((param1->battlersSwitchingMask & FlagIndex(v1)) == 0) {
                param1->battleMons[v1].status = 0;
                param1->battleMons[v1].statusVolatile &= (0x8000000 ^ 0xffffffff);
            }
        } else {
            param1->calcTemp |= 8;
        }
    }

    ov16_02266498(param0, param1, param1->attacker, param1->moveCur);

    return 0;
}

static BOOL ov16_022448E8 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    u32 v2;
    int v3;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleSystem_BattleType(param0);
    v3 = Battler_Side(param0, param1->attacker);

    if ((Battler_Side(param0, param1->attacker)) && ((v2 & (0x4 | 0x80)) == 0)) {
        BattleScript_Iter(param1, v0);
    } else if (param1->sideConditions[v3].knockedOffItemsMask & FlagIndex(param1->selectedPartySlot[param1->attacker])) {
        BattleScript_Iter(param1, v0);
    } else if ((Battler_Ability(param1, param1->attacker) == 121) || (Battler_Ability(param1, param1->defender) == 121)) {
        BattleScript_Iter(param1, v0);
    } else if (param1->battleMons[param1->defender].heldItem == 112) {
        BattleScript_Iter(param1, v0);
    } else if ((param1->battleMons[param1->defender].moveEffectsData.custapBerry) || (param1->battleMons[param1->defender].moveEffectsData.quickClaw)) {
        BattleScript_Iter(param1, v0);
    } else {
        if ((param1->battleMons[param1->defender].heldItem) && (Battler_IgnorableAbility(param1, param1->attacker, param1->defender, 60) == 1)) {
            BattleScript_Iter(param1, v1);
        } else if ((param1->battleMons[param1->attacker].heldItem) || (ov16_02255980(param0, param1, param1->defender) == 0)) {
            BattleScript_Iter(param1, v0);
        }
    }

    return 0;
}

static const u16 Unk_ov16_0226E57C[] = {
    0xFFFF,
    0x7FFF,
    0x3FFF,
    0x1FFF
};

static BOOL ov16_02244A0C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);
    v2 = BattleScript_Read(param1);

    if ((param1->moveProtect[param1->attacker] != 182) && (param1->moveProtect[param1->attacker] != 197) && (param1->moveProtect[param1->attacker] != 203)) {
        param1->battleMons[param1->attacker].moveEffectsData.protectSuccessTurns = 0;
    }

    if (param1->waitingBattlers == 1) {
        v1 = 0;
    } else {
        v1 = 1;
    }

    if ((Unk_ov16_0226E57C[param1->battleMons[param1->attacker].moveEffectsData.protectSuccessTurns] >= BattleSystem_RandNext(param0)) && (v1)) {
        if (param1->aiContext.moveTable[param1->moveCur].effect == 111) {
            param1->turnFlags[param1->attacker].protecting = 1;
            param1->msgBuffer.id = 282;
        }

        if (param1->aiContext.moveTable[param1->moveCur].effect == 116) {
            param1->turnFlags[param1->attacker].enduring = 1;
            param1->msgBuffer.id = 442;
        }

        param1->msgBuffer.tags = 2;
        param1->msgBuffer.params[0] = BattleSystem_NicknameTag(param1, param1->attacker);

        if (param1->battleMons[param1->attacker].moveEffectsData.protectSuccessTurns < NELEMS(Unk_ov16_0226E57C) - 1) {
            param1->battleMons[param1->attacker].moveEffectsData.protectSuccessTurns++;
        }
    } else {
        param1->battleMons[param1->attacker].moveEffectsData.protectSuccessTurns = 0;
        BattleScript_Iter(param1, v2);
    }

    return 0;
}

static BOOL ov16_02244B48 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleSystem_Divide(param1->battleMons[param1->attacker].maxHP, 4);

    if (param1->battleMons[param1->attacker].curHP <= v1) {
        BattleScript_Iter(param1, v0);
    } else {
        param1->hpCalcTemp = v1 * -1;
        param1->battleMons[param1->attacker].moveEffectsData.substituteHP = v1;
        param1->battleMons[param1->attacker].statusVolatile &= (0xe000 ^ 0xffffffff);
    }

    return 0;
}

static BOOL ov16_02244BC4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    u32 v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleSystem_BattleType(param0);

    if (v1 & 0x1) {
        {
            Party * v2;
            Pokemon * v3;
            int v4;
            int v5 = 0, v6, v7, v8, v9, v10;
            int v11, v12;

            v2 = BattleSystem_Party(param0, param1->defender);
            v4 = BattleSystem_PartyCount(param0, param1->defender);

            if ((v1 & 0x8) || ((v1 & 0x10) && (Battler_Side(param0, param1->defender)))) {
                v8 = 0;
                v9 = v4;
                v10 = v4;
                v6 = 1;
                v11 = param1->selectedPartySlot[param1->defender];
                v12 = param1->selectedPartySlot[param1->defender];
            } else if (v1 & 0x2) {
                v8 = 0;
                v9 = v4;
                v10 = v4;
                v6 = 2;
                v11 = param1->selectedPartySlot[param1->defender];
                v12 = param1->selectedPartySlot[BattleSystem_Partner(param0, param1->defender)];
            } else {
                v8 = 0;
                v9 = v4;
                v10 = v4;
                v6 = 1;
                v11 = param1->selectedPartySlot[param1->defender];
                v12 = param1->selectedPartySlot[param1->defender];
            }

            for (v7 = v8; v7 < v9; v7++) {
                v3 = Party_GetPokemonBySlotIndex(v2, v7);

                if ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL))) {
                    v5++;
                }
            }

            if (v5 <= v6) {
                BattleScript_Iter(param1, v0);
            } else {
                if (ov16_022559FC(param0, param1)) {
                    do {
                        do {
                            v7 = BattleSystem_RandNext(param0) % v10;
                            v7 += v8;
                        } while ((v7 == v11) || (v7 == v12));

                        v3 = Party_GetPokemonBySlotIndex(v2, v7);
                    } while ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL) == 0) || (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 1) || (Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL) == 0));

                    param1->switchedPartySlot[param1->defender] = v7;
                } else {
                    BattleScript_Iter(param1, v0);
                }
            }
        }
    } else {
        if (ov16_022559FC(param0, param1) == 0) {
            BattleScript_Iter(param1, v0);
        }
    }

    return 0;
}

static BOOL ov16_02244D60 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    u8 * v1, * v2;

    BattleScript_Iter(param1, 1);

    param1->battleMons[param1->attacker].statusVolatile |= 0x200000;
    param1->battleMons[param1->attacker].moveEffectsData.disabledMove = 0;
    param1->battleMons[param1->attacker].moveEffectsData.disabledTurns = 0;
    param1->battleMons[param1->attacker].moveEffectsData.transformedPID = param1->battleMons[param1->defender].personality;
    param1->battleMons[param1->attacker].moveEffectsData.transformedGender = param1->battleMons[param1->defender].gender;
    param1->battleMons[param1->attacker].moveEffectsData.mimickedMoveSlot = 0;
    param1->battleMons[param1->attacker].moveEffectsData.lastResortCount = 0;

    v1 = (u8 *)&param1->battleMons[param1->attacker];
    v2 = (u8 *)&param1->battleMons[param1->defender];

    for (v0 = 0; v0 < XtOffset(BattleMon*, ability) + 1; v0++) {
        v1[v0] = v2[v0];
    }

    param1->battleMons[param1->attacker].weatherAbilityAnnounced = 0;
    param1->battleMons[param1->attacker].intimidateAnnounced = 0;
    param1->battleMons[param1->attacker].traceAnnounced = 0;
    param1->battleMons[param1->attacker].downloadAnnounced = 0;
    param1->battleMons[param1->attacker].anticipationAnnounced = 0;
    param1->battleMons[param1->attacker].forewarnAnnounced = 0;
    param1->battleMons[param1->attacker].friskAnnounced = 0;
    param1->battleMons[param1->attacker].moldBreakerAnnounced = 0;
    param1->battleMons[param1->attacker].pressureAnnounced = 0;
    param1->battleMons[param1->attacker].moveEffectsData.truant = param1->totalTurns & 1;
    param1->battleMons[param1->attacker].moveEffectsData.slowStartTurnNumber = param1->totalTurns + 1;
    param1->battleMons[param1->attacker].slowStartAnnounced = 0;
    param1->battleMons[param1->attacker].slowStartFinished = 0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param1->aiContext.moveTable[param1->battleMons[param1->attacker].moves[v0]].pp < 5) {
            param1->battleMons[param1->attacker].ppCur[v0] = param1->aiContext.moveTable[param1->battleMons[param1->attacker].moves[v0]].pp;
        } else {
            param1->battleMons[param1->attacker].ppCur[v0] = 5;
        }
    }

    return 0;
}

static BOOL ov16_02244F54 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = Battler_Side(param0, param1->attacker) ^ 1;

    if (param1->sideConditions[v1].spikesLayers == 3) {
        param1->selfTurnFlags[param1->attacker].skipPressureCheck = 1;
        BattleScript_Iter(param1, v0);
    } else {
        param1->sideConditionsMask[v1] |= 0x4;
        param1->sideConditions[v1].spikesLayers++;
    }

    return 0;
}

static BOOL ov16_02244FD8 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Battler(param0, param1, v0);
    v3 = Battler_Side(param0, v2);

    if ((param1->sideConditions[v3].spikesLayers) && (param1->battleMons[v2].curHP)) {
        param1->hpCalcTemp = (5 - param1->sideConditions[v3].spikesLayers) * 2;
        param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[v2].maxHP * -1, param1->hpCalcTemp);
    } else {
        BattleScript_Iter(param1, v1);
    }

    return 0;
}

static BOOL ov16_0224505C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v3 = BattleSystem_MaxBattlers(param0);

    param1->calcTemp = v3;

    v2 = 0;

    for (v1 = 0; v1 < v3; v1++) {
        if ((param1->battleMons[v1].moveEffectsMask & 0x20) || (param1->battleMons[v1].curHP == 0) || (Battler_IgnorableAbility(param1, param1->attacker, v1, 43) == 1)) {
            v2++;
        } else {
            param1->battleMons[v1].moveEffectsMask |= 0x20;
            param1->battleMons[v1].moveEffectsData.perishSongTurns = 3;
        }
    }

    if (v2 == v3) {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_0224510C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    u32 * v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_VarAddress(param0, param1, v0);
    v1[0] = param1->monSpeedOrder[param1->battlerSpeedTemp];

    return 0;
}

static BOOL ov16_02245144 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    u32 * v2;
    int v3;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_VarAddress(param0, param1, v0);
    v3 = BattleSystem_MaxBattlers(param0);

    if (v2[0] < v3) {
        BattleScript_Iter(param1, v1);
    }

    return 0;
}

static BOOL ov16_02245188 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    param1->scriptTemp = 0;
    param1->hpCalcTemp = 0;

    v2 = BattleMon_Get(param1, v1, 27, NULL);
    v3 = BattleMon_Get(param1, v1, 28, NULL);

    if ((BattleSystem_CountAbility(param0, param1, 8, 0, 13) == 0) && (BattleSystem_CountAbility(param0, param1, 8, 0, 76) == 0)) {
        if (param1->fieldConditionsMask & 0xc) {
            if ((v2 != 5) && (v3 != 5) && (v2 != 8) && (v3 != 8) && (v2 != 4) && (v3 != 4) && (param1->battleMons[v1].curHP) && (Battler_Ability(param1, v1) != 8) && ((param1->battleMons[v1].moveEffectsMask & (0x80 | 0x40000)) == 0)) {
                param1->msgMoveTemp = 201;
                param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[v1].maxHP * -1, 16);
            }
        }

        if (param1->fieldConditionsMask & 0x30) {
            if ((param1->battleMons[v1].curHP) && ((param1->battleMons[v1].moveEffectsMask & (0x80 | 0x40000)) == 0)) {
                if ((Battler_Ability(param1, v1) == 87) || (Battler_Ability(param1, v1) == 94)) {
                    param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[v1].maxHP * -1, 8);
                }

                if (Battler_Ability(param1, v1) == 94) {
                    param1->scriptTemp = 2;
                }
            }
        }

        if (param1->fieldConditionsMask & 0xc0) {
            if ((param1->battleMons[v1].curHP) && ((param1->battleMons[v1].moveEffectsMask & (0x80 | 0x40000)) == 0)) {
                if (Battler_Ability(param1, v1) == 115) {
                    if (param1->battleMons[v1].curHP < param1->battleMons[v1].maxHP) {
                        param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[v1].maxHP, 16);
                    }
                } else if ((v2 != 15) && (v3 != 15) && (Battler_Ability(param1, v1) != 81)) {
                    param1->msgMoveTemp = 258;
                    param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[v1].maxHP * -1, 16);
                }
            }
        }

        if (param1->fieldConditionsMask & 0x3) {
            if ((param1->battleMons[v1].curHP) && (param1->battleMons[v1].curHP < param1->battleMons[v1].maxHP) && (Battler_Ability(param1, v1) == 44)) {
                param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[v1].maxHP, 16);
            }

            if ((param1->battleMons[v1].curHP) && (param1->battleMons[v1].curHP < param1->battleMons[v1].maxHP) && (Battler_Ability(param1, v1) == 87)) {
                param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[v1].maxHP, 8);
            }

            if ((param1->battleMons[v1].curHP) && (param1->battleMons[v1].status & 0xff) && (Battler_Ability(param1, v1) == 93)) {
                if (param1->battleMons[v1].status & 0x7) {
                    param1->msgTemp = 0;
                } else if (param1->battleMons[v1].status & 0xf88) {
                    param1->msgTemp = 1;
                } else if (param1->battleMons[v1].status & 0x10) {
                    param1->msgTemp = 2;
                } else if (param1->battleMons[v1].status & 0x40) {
                    param1->msgTemp = 3;
                } else {
                    param1->msgTemp = 4;
                }

                param1->scriptTemp = 1;
            }
        }
    }

    return 0;
}

static BOOL ov16_0224544C (BattleSystem * param0, BattleContext * param1)
{
    int v0, v1;

    BattleScript_Iter(param1, 1);

    param1->selfTurnFlags[param1->attacker].repeatedMoveCount = param1->battleMons[param1->attacker].moveEffectsData.rolloutCount;

    if ((param1->battleMons[param1->attacker].statusVolatile & 0x1000) == 0) {
        Battler_LockMoveChoice(param0, param1, param1->attacker);
        param1->battleMons[param1->attacker].moveEffectsData.rolloutCount = 5;
    }

    if (--param1->battleMons[param1->attacker].moveEffectsData.rolloutCount == 0) {
        Battler_UnlockMoveChoice(param0, param1, param1->attacker);
    }

    param1->movePower = param1->aiContext.moveTable[param1->moveCur].power;

    v1 = 5 - param1->battleMons[param1->attacker].moveEffectsData.rolloutCount;

    for (v0 = 1; v0 < v1; v0++) {
        param1->movePower *= 2;
    }

    if (param1->battleMons[param1->attacker].statusVolatile & 0x40000000) {
        param1->movePower *= 2;
    }

    return 0;
}

static BOOL ov16_02245568 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);

    if (param1->battleMons[param1->attacker].moveEffectsData.furyCutterCount < 5) {
        param1->battleMons[param1->attacker].moveEffectsData.furyCutterCount++;
    }

    param1->movePower = param1->aiContext.moveTable[param1->moveCur].power;

    for (v0 = 1; v0 < param1->battleMons[param1->attacker].moveEffectsData.furyCutterCount; v0++) {
        param1->movePower *= 2;
    }

    return 0;
}

static BOOL ov16_022455F8 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if ((param1->battleMons[param1->msgBattlerTemp].gender == param1->battleMons[param1->sideEffectMon].gender) || (param1->battleMons[param1->sideEffectMon].statusVolatile & 0xf0000) || (param1->battleMons[param1->msgBattlerTemp].gender == 2) || (param1->battleMons[param1->sideEffectMon].gender == 2)) {
        BattleScript_Iter(param1, v0);
    } else {
        param1->battleMons[param1->sideEffectMon].statusVolatile |= FlagIndex(param1->msgBattlerTemp) << 16;
    }

    return 0;
}

static BOOL ov16_0224567C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = Battler_Side(param0, param1->attacker);

    if (param1->sideConditionsMask[v1] & 0x8) {
        BattleScript_Iter(param1, v0);
        param1->moveStatusFlags |= 0x40;
    } else {
        param1->sideConditionsMask[v1] |= 0x8;
        param1->sideConditions[v1].safeguardTurns = 5;
        param1->sideConditions[v1].safeguardUser = param1->attacker;
        param1->msgBuffer.tags = 1;
        param1->msgBuffer.params[0] = param1->attacker;
        param1->msgBuffer.id = 198;
    }

    return 0;
}

static BOOL ov16_02245710 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleSystem_RandNext(param0) & 0xff;

    if (v1 < (255 * 40 / 100)) {
        param1->movePower = 40;
    } else if (v1 < (255 * 70 / 100)) {
        param1->movePower = 80;
    } else if (v1 < (255 * 80 / 100)) {
        param1->movePower = 120;
    } else {
        param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param1->defender].maxHP, 4);
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_02245784 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);

    if (param1->magnitude == 0) {
        param1->magnitude = BattleSystem_RandNext(param0) % 100;

        if (param1->magnitude < 5) {
            param1->movePower = 10;
            param1->magnitude = 4;
        } else if (param1->magnitude < 15) {
            param1->movePower = 30;
            param1->magnitude = 5;
        } else if (param1->magnitude < 35) {
            param1->movePower = 50;
            param1->magnitude = 6;
        } else if (param1->magnitude < 65) {
            param1->movePower = 70;
            param1->magnitude = 7;
        } else if (param1->magnitude < 85) {
            param1->movePower = 90;
            param1->magnitude = 8;
        } else if (param1->magnitude < 95) {
            param1->movePower = 110;
            param1->magnitude = 9;
        } else {
            param1->movePower = 150;
            param1->magnitude = 10;
        }
    }

    param1->msgTemp = param1->magnitude;

    return 0;
}

static BOOL ov16_0224582C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v3 = BattleScript_Battler(param0, param1, v0);

    if (BattleSystem_AnyReplacementMons(param0, param1, v3) == 0) {
        BattleScript_Iter(param1, v2);
    } else {
        if (v1 == 1) {
            param1->battlerStatusFlags[v3] |= 0x1;
        }
    }

    return 0;
}

static BOOL ov16_02245890 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    v0 = Battler_Side(param0, param1->attacker);

    if (param1->battleMons[param1->attacker].statusVolatile & 0xe000) {
        param1->battleMons[param1->attacker].statusVolatile &= (0xe000 ^ 0xffffffff);
        param1->msgBattlerTemp = param1->battleMons[param1->attacker].moveEffectsData.bindTarget;
        param1->msgMoveTemp = param1->battleMons[param1->attacker].moveEffectsData.bindingMove;
        BattleScript_Call(param1, 1, (0 + 116));
        return 0;
    }

    if (param1->battleMons[param1->attacker].moveEffectsMask & 0x4) {
        param1->battleMons[param1->attacker].moveEffectsMask &= (0x4 ^ 0xffffffff);
        param1->battleMons[param1->attacker].moveEffectsMask &= (0x3 ^ 0xffffffff);
        param1->msgMoveTemp = 73;
        BattleScript_Call(param1, 1, (0 + 117));
        return 0;
    }

    if (param1->sideConditions[v0].spikesLayers) {
        param1->sideConditionsMask[v0] &= (0x4 ^ 0xffffffff);
        param1->sideConditions[v0].spikesLayers = 0;
        param1->msgMoveTemp = 191;
        BattleScript_Call(param1, 1, (0 + 117));
        return 0;
    }

    if (param1->sideConditions[v0].toxicSpikesLayers) {
        param1->sideConditionsMask[v0] &= (0x400 ^ 0xffffffff);
        param1->sideConditions[v0].toxicSpikesLayers = 0;

        param1->msgMoveTemp = 390;

        BattleScript_Call(param1, 1, (0 + 117));
        return 0;
    }

    if (param1->sideConditionsMask[v0] & 0x80) {
        param1->sideConditionsMask[v0] &= (0x80 ^ 0xffffffff);
        param1->msgMoveTemp = 446;
        BattleScript_Call(param1, 1, (0 + 117));
        return 0;
    }

    BattleScript_Iter(param1, 1);

    return 0;
}

static BOOL ov16_022459D8 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);

    if (((param1->fieldConditionsMask & (0x3 | 0xc | 0x30 | 0xc0 | 0x8000)) == 0) || (BattleSystem_CountAbility(param0, param1, 8, 0, 13)) || (BattleSystem_CountAbility(param0, param1, 8, 0, 76))) {
        param1->hpCalcTemp = param1->battleMons[param1->attacker].maxHP / 2;
    } else if (param1->fieldConditionsMask & 0x30) {
        param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param1->attacker].maxHP * 20, 30);
    } else {
        param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param1->attacker].maxHP, 4);
    }

    return 0;
}

static BOOL ov16_02245A7C (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);

    param1->movePower = ((param1->battleMons[param1->attacker].hpIV & 2) >> 1) | ((param1->battleMons[param1->attacker].attackIV & 2) >> 0) | ((param1->battleMons[param1->attacker].defenseIV & 2) << 1) | ((param1->battleMons[param1->attacker].speedIV & 2) << 2) | ((param1->battleMons[param1->attacker].spAttackIV & 2) << 3) | ((param1->battleMons[param1->attacker].spDefenseIV & 2) << 4);
    param1->moveType = ((param1->battleMons[param1->attacker].hpIV & 1) >> 0) | ((param1->battleMons[param1->attacker].attackIV & 1) << 1) | ((param1->battleMons[param1->attacker].defenseIV & 1) << 2) | ((param1->battleMons[param1->attacker].speedIV & 1) << 3) | ((param1->battleMons[param1->attacker].spAttackIV & 1) << 4) | ((param1->battleMons[param1->attacker].spDefenseIV & 1) << 5);
    param1->movePower = param1->movePower * 40 / 63 + 30;
    param1->moveType = (param1->moveType * 15 / 63) + 1;

    if (param1->moveType >= 9) {
        param1->moveType++;
    }

    return 0;
}

static BOOL ov16_02245B68 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);

    for (v0 = 0x0; v0 < 0x8; v0++) {
        param1->battleMons[param1->attacker].statBoosts[v0] = param1->battleMons[param1->defender].statBoosts[v0];
    }

    param1->battleMons[param1->attacker].statusVolatile |= (param1->battleMons[param1->defender].statusVolatile & 0x100000);

    return 0;
}

static BOOL ov16_02245BC8 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if (param1->fieldConditions.futureSightTurns[param1->defender] == 0) {
        v1 = Battler_Side(param0, param1->defender);
        param1->sideConditionsMask[v1] |= 0x10;
        param1->fieldConditions.futureSightTurns[param1->defender] = 3;
        param1->fieldConditions.futureSightMove[param1->defender] = param1->moveCur;
        param1->fieldConditions.futureSightAttacker[param1->defender] = param1->attacker;
        v2 = BattleSystem_CalcMoveDamage(param0, param1, param1->moveCur, param1->sideConditionsMask[v1], param1->fieldConditionsMask, 0, 0, param1->attacker, param1->defender, 1) * -1;
        param1->fieldConditions.futureSightDamage[param1->defender] = BattleSystem_CalcDamageVariance(param0, param1, v2);

        if (param1->turnFlags[param1->attacker].helpingHand) {
            param1->fieldConditions.futureSightDamage[param1->defender] = param1->fieldConditions.futureSightDamage[param1->defender] * 15 / 10;
        }
    } else {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_02245CB4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    int v6;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v3 = BattleScript_Read(param1);
    v4 = BattleScript_Battler(param0, param1, v0);
    v5 = BattleScript_Battler(param0, param1, v1);
    v6 = BattleMessage_MoveTag(param1, v2);

    BattleController_CheckMoveHit(param0, param1, v4, v5, v6);

    if (param1->moveStatusFlags & (1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576)) {
        BattleScript_Iter(param1, v3);
    }

    return 0;
}

static BOOL ov16_02245D34 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if (BattleSystem_Trapped(param0, param1, param1->attacker, NULL)) {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_02245D68 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    Pokemon * v5;

    BattleScript_Iter(param1, 1);

    v1 = BattleSystem_PartyCount(param0, param1->attacker);

    if (param1->multiHitNumHits == 0) {
        param1->multiHitNumHits = 2;
        param1->multiHitAccuracyCheck = (1 | 4 | 8 | 16 | 32 | 64 | 128);
        param1->beatUpCounter = 0;

        while (TRUE) {
            v5 = BattleSystem_PartyPokemon(param0, param1->attacker, param1->beatUpCounter);

            if ((param1->beatUpCounter == param1->selectedPartySlot[param1->attacker]) || ((Pokemon_GetValue(v5, MON_DATA_CURRENT_HP, NULL) != 0) && (Pokemon_GetValue(v5, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v5, MON_DATA_SPECIES_EGG, NULL) != 494) && (Pokemon_GetValue(v5, MON_DATA_STATUS_CONDITION, NULL) == 0))) {
                break;
            }

            param1->beatUpCounter++;
        }
    }

    v5 = BattleSystem_PartyPokemon(param0, param1->attacker, param1->beatUpCounter);
    v2 = Pokemon_GetValue(v5, MON_DATA_SPECIES, NULL);
    v3 = Pokemon_GetValue(v5, MON_DATA_FORM, NULL);
    v4 = Pokemon_GetValue(v5, MON_DATA_LEVEL, NULL);

    param1->damage = PokemonPersonalData_GetFormValue(v2, v3, 1);
    param1->damage *= param1->aiContext.moveTable[param1->moveCur].power;
    param1->damage *= ((v4 * 2 / 5) + 2);
    param1->damage /= PokemonPersonalData_GetFormValue(param1->battleMons[param1->defender].species, param1->battleMons[param1->defender].formNum, 2);
    param1->damage /= 50;
    param1->damage += 2;
    param1->damage *= param1->criticalMul;

    if (param1->turnFlags[param1->attacker].helpingHand) {
        param1->damage = param1->damage * 15 / 10;
    }

    param1->damage = BattleSystem_CalcDamageVariance(param0, param1, param1->damage);
    param1->damage *= -1;
    param1->msgBuffer.id = 481;
    param1->msgBuffer.tags = 2;
    param1->msgBuffer.params[0] = (param1->attacker | (param1->beatUpCounter << 8));
    param1->beatUpCounter++;
    param1->multiHitCounter = 2;

    if (param1->beatUpCounter < v1) {
        while (TRUE) {
            v5 = BattleSystem_PartyPokemon(param0, param1->attacker, param1->beatUpCounter);

            if ((param1->beatUpCounter == param1->selectedPartySlot[param1->attacker]) || ((Pokemon_GetValue(v5, MON_DATA_CURRENT_HP, NULL) != 0) && (Pokemon_GetValue(v5, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v5, MON_DATA_SPECIES_EGG, NULL) != 494) && (Pokemon_GetValue(v5, MON_DATA_STATUS_CONDITION, NULL) == 0))) {
                break;
            }

            param1->beatUpCounter++;

            if (param1->beatUpCounter >= v1) {
                param1->multiHitCounter = 1;
                break;
            }
        }
    } else {
        param1->multiHitCounter = 1;
    }

    return 0;
}

static BOOL ov16_02245FC4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);

    v0 = Battler_Side(param0, param1->attacker);

    param1->sideConditions[v0].followMe = 1;
    param1->sideConditions[v0].followMeUser = param1->attacker;

    return 0;
}

static BOOL ov16_02246004 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v2 = BattleSystem_BattleType(param0);

    if (v2 & 0x2) {
        v1 = BattleScript_Battler(param0, param1, 0x10);

        if (((param1->battlersSwitchingMask & FlagIndex(v1)) == 0) && (param1->battlerActions[v1][0] != 39) && (param1->battleMons[v1].curHP) && (param1->turnFlags[param1->attacker].helpingHand == 0) && (param1->turnFlags[v1].helpingHand == 0)) {
            param1->msgBattlerTemp = v1;
            param1->turnFlags[v1].helpingHand = 1;
        } else {
            BattleScript_Iter(param1, v0);
        }
    } else {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_022460A8 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    u32 v2;
    int v3;
    int v4;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleSystem_BattleType(param0);
    v3 = Battler_Side(param0, param1->attacker);
    v4 = Battler_Side(param0, param1->defender);

    if ((Battler_Side(param0, param1->attacker)) && ((v2 & (0x4 | 0x80)) == 0)) {
        BattleScript_Iter(param1, v0);
    } else if ((param1->sideConditions[v3].knockedOffItemsMask & FlagIndex(param1->selectedPartySlot[param1->attacker])) || (param1->sideConditions[v4].knockedOffItemsMask & FlagIndex(param1->selectedPartySlot[param1->defender]))) {
        BattleScript_Iter(param1, v0);
    } else if (((param1->battleMons[param1->attacker].heldItem == 0) && (param1->battleMons[param1->defender].heldItem == 0)) || (ov16_022559DC(param1, param1->attacker) == 0) || (ov16_022559DC(param1, param1->defender) == 0)) {
        BattleScript_Iter(param1, v0);
    } else {
        if (Battler_IgnorableAbility(param1, param1->attacker, param1->defender, 60) == 1) {
            BattleScript_Iter(param1, v1);
        }
    }

    return 0;
}

static BOOL ov16_022461B0 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    u32 v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if (param1->fieldConditions.wishTurns[param1->attacker]) {
        BattleScript_Iter(param1, v0);
    } else {
        param1->fieldConditions.wishTurns[param1->attacker] = 2;
        param1->fieldConditions.wishTarget[param1->attacker] = param1->selectedPartySlot[param1->attacker];
    }

    return 0;
}

static BOOL ov16_022461F4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    u16 v1[6 * 4];
    u16 v2;
    int v3, v4;
    int v5;
    int v6;
    Pokemon * v7;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v6 = 0;
    v5 = BattleSystem_PartyCount(param0, param1->attacker);

    for (v3 = 0; v3 < v5; v3++) {
        if (v3 != param1->selectedPartySlot[param1->attacker]) {
            v7 = BattleSystem_PartyPokemon(param0, param1->attacker, v3);

            if ((Pokemon_GetValue(v7, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v7, MON_DATA_SPECIES_EGG, NULL) != 494)) {
                for (v4 = 0; v4 < 4; v4++) {
                    v2 = Pokemon_GetValue(v7, MON_DATA_MOVE1 + v4, NULL);

                    if ((ov16_02255918(v2) == 0) && (Move_CanBeMetronomed(param0, param1, param1->attacker, v2) == 1)) {
                        v1[v6] = v2;
                        v6++;
                    }
                }
            }
        }
    }

    if (v6) {
        param1->msgMoveTemp = v1[BattleSystem_RandNext(param0) % v6];
    } else {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_022462D8 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    u32 v2;

    BattleScript_Iter(param1, 1);

    v1 = BattleScript_Read(param1);
    v2 = 0;

    for (v0 = 0; v0 < BattleSystem_MaxBattlers(param0); v0++) {
        if (param1->battleMons[v0].curHP) {
            v2++;
        }
    }

    if (param1->waitingBattlers == 1) {
        BattleScript_Iter(param1, v1);
    } else {
        param1->turnFlags[param1->attacker].magicCoat = 1;
    }

    return 0;
}

static BOOL ov16_02246334 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = Battler_Side(param0, param1->attacker);
    v1 = param1->attacker;

    param1->magicCoatMon = v1;
    param1->attacker = param1->defender;

    if ((param1->sideConditions[v0].followMe) && (param1->battleMons[param1->sideConditions[v0].followMeUser].curHP)) {
        param1->defender = param1->sideConditions[v0].followMeUser;
    } else if ((param1->aiContext.moveTable[param1->moveCur].range == 0x4) || (param1->aiContext.moveTable[param1->moveCur].range == 0x8)) {
        param1->defender = v1;
    } else {
        v0 = BattleSystem_Defender(param0, param1, param1->attacker, param1->moveCur, 1, 0);

        if ((param1->selfTurnFlags[v0].lightningRodActivated) || (param1->selfTurnFlags[v0].stormDrainActivated)) {
            param1->defender = v0;
        } else {
            param1->defender = v1;
        }
    }

    param1->battleStatusMask2 |= 0x8;

    return 0;
}

static BOOL ov16_022463E8 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);

    if (((param1->turnFlags[param1->attacker].physicalDamageTakenFrom[param1->defender]) && (param1->turnFlags[param1->attacker].physicalDamageAttackerMask & FlagIndex(param1->defender))) || ((param1->turnFlags[param1->attacker].specialDamageTakenFrom[param1->defender]) && (param1->turnFlags[param1->attacker].specialDamageAttackerMask & FlagIndex(param1->defender)))) {
        param1->powerMul = 20;
    } else {
        param1->powerMul = 10;
    }

    return 0;
}

static BOOL ov16_02246458 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = Battler_Side(param0, param1->defender);

    if ((param1->sideConditionsMask[v1] & 0x1) || (param1->sideConditionsMask[v1] & 0x2)) {
        param1->sideConditionsMask[v1] &= (0x1 ^ 0xffffffff);
        param1->sideConditionsMask[v1] &= (0x2 ^ 0xffffffff);
        param1->sideConditions[v1].reflectTurns = 0;
        param1->sideConditions[v1].lightScreenTurns = 0;
    } else {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_022464CC (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if (param1->battleMons[param1->defender].moveEffectsMask & 0x1800) {
        BattleScript_Iter(param1, v0);
    } else {
        param1->battleMons[param1->defender].moveEffectsMask |= 0x800 << 1;
    }

    return 0;
}

static BOOL ov16_0224650C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = Battler_Side(param0, param1->defender);

    if ((param1->battleMons[param1->defender].heldItem) && (Battler_IgnorableAbility(param1, param1->attacker, param1->defender, 60) == 1)) {
        param1->msgBuffer.id = 714;
        param1->msgBuffer.tags = 37;
        param1->msgBuffer.params[0] = BattleSystem_NicknameTag(param1, param1->defender);
        param1->msgBuffer.params[1] = param1->battleMons[param1->defender].ability;
        param1->msgBuffer.params[2] = param1->moveCur;
    } else if (param1->battleMons[param1->defender].heldItem) {
        param1->msgBuffer.id = 552;
        param1->msgBuffer.tags = 33;
        param1->msgBuffer.params[0] = BattleSystem_NicknameTag(param1, param1->attacker);
        param1->msgBuffer.params[1] = BattleSystem_NicknameTag(param1, param1->defender);
        param1->msgBuffer.params[2] = param1->battleMons[param1->defender].heldItem;
        param1->battleMons[param1->defender].heldItem = 0;
        param1->sideConditions[v1].knockedOffItemsMask |= FlagIndex(param1->selectedPartySlot[param1->defender]);
    } else {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_02246630 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);

    if (param1->movePower == 0) {
        param1->movePower = param1->aiContext.moveTable[param1->moveCur].power * param1->battleMons[param1->attacker].curHP / param1->battleMons[param1->attacker].maxHP;

        if (param1->movePower == 0) {
            param1->movePower = 1;
        }
    }

    return 0;
}

static BOOL ov16_02246688 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    int v6;
    int v7;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v6 = BattleSystem_EnemyInSlot(param0, param1->attacker, 0);
    v7 = BattleSystem_EnemyInSlot(param0, param1->attacker, 2);

    param1->battleMons[v6].moveEffectsMask |= 0x40000000;
    param1->battleMons[v7].moveEffectsMask |= 0x40000000;

    if (param1->battleMons[param1->attacker].moveEffectsMask & 0x2000) {
        BattleScript_Iter(param1, v0);
    } else {
        v1 = Battler_Side(param0, param1->attacker);
        v5 = BattleSystem_MaxBattlers(param0);

        for (v4 = 0; v4 < v5; v4++) {
            if (v1 != Battler_Side(param0, v4)) {
                for (v2 = 0; v2 < 4; v2++) {
                    for (v3 = 0; v3 < 4; v3++) {
                        if ((param1->battleMons[param1->attacker].moves[v2] == param1->battleMons[v4].moves[v3]) && (param1->battleMons[param1->attacker].moves[v2]) && (param1->battleMons[v4].moves[v3])) {
                            break;
                        }
                    }

                    if (v3 != 4) {
                        break;
                    }
                }

                if (v3 != 4) {
                    break;
                }
            }
        }

        if (v4 == v5) {
            BattleScript_Iter(param1, v0);
        } else {
            param1->battleMons[param1->attacker].moveEffectsMask |= 0x2000;
        }
    }

    return 0;
}

static BOOL ov16_022467A0 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = Battler_Side(param0, param1->defender);

    if ((param1->battleMons[param1->faintedMon].moveEffectsMask & 0x4000) && (Battler_Side(param0, param1->attacker) != Battler_Side(param0, param1->faintedMon)) && (param1->battleMons[param1->attacker].curHP) && (param1->moveTemp != 165)) {
        v2 = param1->moveSlot[param1->attacker];
        param1->battleMons[param1->attacker].ppCur[v2] = 0;
        param1->msgMoveTemp = param1->battleMons[param1->attacker].moves[v2];

        BattleMon_CopyToParty(param0, param1, param1->attacker);
    } else {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_02246848 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    u32 v2;

    BattleScript_Iter(param1, 1);

    v1 = BattleScript_Read(param1);
    v2 = 0;

    for (v0 = 0; v0 < BattleSystem_MaxBattlers(param0); v0++) {
        if (param1->battleMons[v0].curHP) {
            v2++;
        }
    }

    if (param1->waitingBattlers == 1) {
        BattleScript_Iter(param1, v1);
    } else {
        param1->turnFlags[param1->attacker].snatching = 1;
    }

    return 0;
}

static const u16 Unk_ov16_0226E5F0[][2] = {
    {0x64, 0x14},
    {0xFA, 0x28},
    {0x1F4, 0x3C},
    {0x3E8, 0x50},
    {0x7D0, 0x64},
    {0xFFFF, 0xFFFF}
};

static BOOL ov16_022468A4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = 0;
    v1 = param1->battleMons[param1->defender].weight;

    while (Unk_ov16_0226E5F0[v0][0] != 0xffff) {
        if (Unk_ov16_0226E5F0[v0][0] >= v1) {
            break;
        }

        v0++;
    }

    if (Unk_ov16_0226E5F0[v0][0] != 0xffff) {
        param1->movePower = Unk_ov16_0226E5F0[v0][1];
    } else {
        param1->movePower = 120;
    }

    return 0;
}

static BOOL ov16_02246904 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);

    if ((BattleSystem_CountAbility(param0, param1, 8, 0, 13) == 0) && (BattleSystem_CountAbility(param0, param1, 8, 0, 76) == 0)) {
        if (param1->fieldConditionsMask & (0x3 | 0xc | 0x30 | 0xc0 | 0x8000)) {
            param1->movePower = param1->aiContext.moveTable[param1->moveCur].power * 2;

            if (param1->fieldConditionsMask & 0x3) {
                param1->moveType = 11;
            }

            if (param1->fieldConditionsMask & 0xc) {
                param1->moveType = 5;
            }

            if (param1->fieldConditionsMask & 0x30) {
                param1->moveType = 10;
            }

            if (param1->fieldConditionsMask & 0xc0) {
                param1->moveType = 15;
            }
        } else {
            param1->movePower = param1->aiContext.moveTable[param1->moveCur].power;
        }
    }

    return 0;
}

static BOOL ov16_022469C4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v2 = BattleSystem_MaxBattlers(param0);

    for (v1 = 0; v1 < v2; v1++) {
        if ((param1->battlerActions[v1][0] != 39) && (param1->battleMons[v1].curHP) && ((param1->battleMons[v1].status & (0x7 | 0x20)) == 0) && (Battler_CheckTruant(param1, v1) == 0) && (Battler_Side(param0, v1) != Battler_Side(param0, param1->switchedMon))) {
            if ((param1->battleMons[v1].moveEffectsData.encoredMove) && (param1->battleMons[v1].moveEffectsData.encoredMove == param1->battleMons[v1].moves[param1->battleMons[v1].moveEffectsData.encoredMoveSlot])) {
                v3 = param1->battleMons[v1].moveEffectsData.encoredMove;
            } else {
                v3 = Battler_SelectedMove(param1, v1);
            }

            if (v3) {
                v4 = Battler_SlotForMove(&param1->battleMons[v1], v3);

                if ((param1->aiContext.moveTable[v3].effect == 128) && (param1->battleMons[v1].ppCur[v4])) {
                    param1->battleMons[v1].ppCur[v4]--;

                    if ((Battler_Ability(param1, param1->switchedMon) == 46) && (param1->battleMons[v1].ppCur[v4])) {
                        param1->battleMons[v1].ppCur[v4]--;
                    }

                    BattleSystem_SetupLoop(param0, param1);
                    param1->attacker = v1;
                    param1->defender = param1->switchedMon;
                    param1->powerMul = 20;
                    param1->moveCur = v3;
                    param1->movePrevByBattler[v1] = v3;
                    param1->battlerActions[v1][0] = 39;
                    BattleMon_CopyToParty(param0, param1, v1);
                    break;
                }
            }
        }
    }

    if (v1 == v2) {
        BattleScript_Iter(param1, v0);
    } else {
        {
            int v5;
            int v6;

            v5 = Battler_HeldItemEffect(param1, param1->attacker);
            v6 = Battler_HeldItemPower(param1, param1->attacker, 0);

            if ((v5 == 55) || (v5 == 115) || (v5 == 125)) {
                param1->battleMons[param1->attacker].moveEffectsData.choiceLockedMove = v3;
            }
        }
    }

    return 0;
}

static BOOL ov16_02246B68 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);

    param1->damage = BattleSystem_CheckTypeChart(param0, param1, param1->moveCur, param1->moveType, param1->attacker, param1->defender, param1->damage, &param1->moveStatusFlags);

    return 0;
}

static BOOL ov16_02246BB0 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5 = 0;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v3 = BattleScript_Read(param1);
    v4 = BattleScript_Battler(param0, param1, v0);

    switch (v1) {
    case 0:
        if (param1->turnFlags[v4].struggling == v2) {
            v5 = 1;
        }
        break;
    case 1:
        if (param1->turnFlags[v4].ppDecremented == v2) {
            v5 = 1;
        }
        break;
    case 2:
        if (param1->turnFlags[v4].protecting == v2) {
            v5 = 1;
        }
        break;
    case 3:
        if (param1->turnFlags[v4].helpingHand == v2) {
            v5 = 1;
        }
        break;
    case 4:
        if (param1->turnFlags[v4].magicCoat == v2) {
            v5 = 1;
        }
        break;
    case 5:
        if (param1->turnFlags[v4].snatching == v2) {
            v5 = 1;
        }
        break;
    case 6:
        if (param1->turnFlags[v4].roosting == v2) {
            v5 = 1;
        }
        break;
    }

    if (v5) {
        BattleScript_Iter(param1, v3);
    }

    return 0;
}

static BOOL ov16_02246CB4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v3 = BattleScript_Battler(param0, param1, v0);

    switch (v1) {
    case 0:
        param1->turnFlags[v3].struggling = v2;
        break;
    case 1:
        param1->turnFlags[v3].ppDecremented = v2;
        break;
    case 2:
        param1->turnFlags[v3].protecting = v2;
        break;
    case 3:
        param1->turnFlags[v3].helpingHand = v2;
        break;
    case 4:
        param1->turnFlags[v3].magicCoat = v2;
        break;
    case 5:
        param1->turnFlags[v3].snatching = v2;
        break;
    case 6:
        param1->turnFlags[v3].roosting = v2;
        break;
    }

    return 0;
}

static BOOL ov16_02246DAC (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);

    param1->movePower = 1 + 25 * param1->monSpeedValues[param1->defender] / param1->monSpeedValues[param1->attacker];

    if (param1->movePower > 150) {
        param1->movePower = 150;
    }

    return 0;
}

static BOOL ov16_02246DF0 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = Battler_Side(param0, param1->attacker);
    v2 = Battler_Side(param0, param1->turnFlags[param1->attacker].lastAttacker);

    if ((param1->turnFlags[param1->attacker].lastDamageTaken) && (v1 != v2) && (param1->battleMons[param1->turnFlags[param1->attacker].lastAttacker].curHP)) {
        param1->damage = param1->turnFlags[param1->attacker].lastDamageTaken * 15 / 10;

        if ((param1->sideConditions[v2].followMe) && (param1->battleMons[param1->sideConditions[v2].followMeUser].curHP)) {
            param1->defender = param1->sideConditions[v2].followMeUser;
        } else {
            param1->defender = param1->turnFlags[param1->attacker].lastAttacker;
        }

        if (param1->battleMons[param1->defender].curHP == 0) {
            param1->defender = BattleSystem_RandomOpponent(param0, param1, param1->attacker);

            if (param1->battleMons[param1->defender].curHP == 0) {
                param1->commandNext = 38;
                BattleScript_Jump(param1, 1, (0 + 281));
            }
        }

        BattleSystem_DecPPForPressure(param1, param1->attacker, param1->defender);
    } else {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_02246EE4 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);

    if (param1->battlerActions[param1->defender][0] == 39) {
        param1->movePower = param1->aiContext.moveTable[param1->moveCur].power * 2;
    } else {
        param1->movePower = param1->aiContext.moveTable[param1->moveCur].power;
    }

    return 0;
}

static const u8 Unk_ov16_0226E574[] = {
    0xC8,
    0x50,
    0x3C,
    0x32,
    0x28
};

static BOOL ov16_02246F2C (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;

    BattleScript_Iter(param1, 1);

    v0 = param1->battleMons[param1->attacker].ppCur[param1->moveSlot[param1->attacker]];

    if (v0 > 4) {
        v0 = 4;
    }

    param1->movePower = Unk_ov16_0226E574[v0];

    return 0;
}

static BOOL ov16_02246F70 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;

    BattleScript_Iter(param1, 1);

    param1->movePower = 1 + (120 * param1->battleMons[param1->defender].curHP) / param1->battleMons[param1->defender].maxHP;

    return 0;
}

static BOOL ov16_02246FA8 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    u16 v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if ((param1->battleMons[param1->defender].moveEffectsData.encoredMove) && (param1->battleMons[param1->defender].moveEffectsData.encoredMove == param1->battleMons[param1->defender].moves[param1->battleMons[param1->defender].moveEffectsData.encoredMoveSlot])) {
        v1 = param1->battleMons[param1->defender].moveEffectsData.encoredMove;
    } else {
        v1 = Battler_SelectedMove(param1, param1->defender);
    }

    if ((param1->battlerActions[param1->defender][0] != 39) && (param1->turnFlags[param1->defender].struggling == 0) && (Move_MeFirstCanCopy(param1, v1) == 1) && (param1->aiContext.moveTable[v1].power)) {
        param1->battleMons[param1->attacker].moveEffectsData.meFirst = 1;
        param1->battleMons[param1->attacker].moveEffectsData.meFirstTurnNumber = param1->meFirstTurnOrder;
        param1->msgMoveTemp = v1;
    } else {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_02247064 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if ((ov16_02255918(param1->movePrev) == 0) && (param1->movePrev) && (Move_CanBeMetronomed(param0, param1, param1->attacker, param1->movePrev) == 1)) {
        param1->msgMoveTemp = param1->movePrev;
    } else {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_022470C0 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v1 = 0;

    for (v0 = 0x0; v0 < 0x8; v0++) {
        if (param1->battleMons[param1->defender].statBoosts[v0] > 6) {
            v1 += (param1->battleMons[param1->defender].statBoosts[v0] - 6);
        }
    }

    param1->movePower = 60 + 20 * v1;

    if (param1->movePower > 200) {
        param1->movePower = 200;
    }

    return 0;
}

static BOOL ov16_02247118 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if ((param1->battleMons[param1->defender].moveEffectsData.encoredMove) && (param1->battleMons[param1->defender].moveEffectsData.encoredMove == param1->battleMons[param1->defender].moves[param1->battleMons[param1->defender].moveEffectsData.encoredMoveSlot])) {
        v1 = param1->battleMons[param1->defender].moveEffectsData.encoredMove;
    } else {
        v1 = Battler_SelectedMove(param1, param1->defender);
    }

    if ((param1->battlerActions[param1->defender][0] == 39) || ((param1->aiContext.moveTable[v1].power == 0) && (param1->turnFlags[param1->defender].struggling == 0))) {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_02247194 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    int v6;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v3 = BattleScript_Read(param1);
    v4 = BattleScript_Battler(param0, param1, v0);
    v5 = Battler_Side(param0, v4);

    switch (v1) {
    case 0:
    case 1:
        switch (v2) {
        case 0:
            v6 = param1->sideConditions[v5].reflectTurns;
            break;
        case 1:
            v6 = param1->sideConditions[v5].lightScreenTurns;
            break;
        case 2:
            v6 = param1->sideConditions[v5].mistTurns;
            break;
        case 3:
            v6 = param1->sideConditions[v5].safeguardTurns;
            break;
        case 4:
            v6 = param1->sideConditions[v5].spikesLayers;
            break;
        case 5:
            v6 = param1->sideConditions[v5].toxicSpikesLayers;
            break;
        }
        break;
    case 2:
        switch (v2) {
        case 0:
            param1->sideConditions[v5].reflectTurns = 0;
            param1->sideConditionsMask[v5] &= (0x1 ^ 0xffffffff);
            break;
        case 1:
            param1->sideConditions[v5].lightScreenTurns = 0;
            param1->sideConditionsMask[v5] &= (0x2 ^ 0xffffffff);
            break;
        case 2:
            param1->sideConditions[v5].mistTurns = 0;
            param1->sideConditionsMask[v5] &= (0x40 ^ 0xffffffff);
            break;
        case 3:
            param1->sideConditions[v5].safeguardTurns = 0;
            param1->sideConditionsMask[v5] &= (0x8 ^ 0xffffffff);
            break;
        case 4:
            param1->sideConditions[v5].spikesLayers = 0;
            param1->sideConditionsMask[v5] &= (0x4 ^ 0xffffffff);
            break;
        case 5:
            param1->sideConditions[v5].toxicSpikesLayers = 0;
            param1->sideConditionsMask[v5] &= (0x400 ^ 0xffffffff);
            break;
        }
        break;
    }

    if ((v1 == 0) && (v6 == 0)) {
        BattleScript_Iter(param1, v3);
    }

    if ((v1 == 1) && (v6)) {
        BattleScript_Iter(param1, v3);
    }

    return 0;
}

static BOOL ov16_02247378 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if (param1->turnFlags[param1->defender].protecting == 0) {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_022473A8 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if ((param1->battleMons[param1->defender].status) || (param1->battleMons[param1->defender].statusVolatile & 0x1000000) || (param1->battleMons[param1->attacker].status == 0)) {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_022473F4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = ov16_02256128(param0, param1, param1->attacker);

    if ((param1->battleMons[param1->attacker].moveEffectsData.lastResortCount < (v1 - 1)) || (v1 < 2)) {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_02247440 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = Battler_Side(param0, param1->attacker) ^ 1;

    if (param1->sideConditions[v1].toxicSpikesLayers == 2) {
        param1->selfTurnFlags[param1->attacker].skipPressureCheck = 1;
        BattleScript_Iter(param1, v0);
    } else {
        param1->sideConditionsMask[v1] |= 0x400;
        param1->sideConditions[v1].toxicSpikesLayers++;
    }

    return 0;
}

static BOOL ov16_022474C4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Battler(param0, param1, v0);
    v3 = Battler_Side(param0, v2);

    if (param1->sideConditions[v3].toxicSpikesLayers) {
        param1->calcTemp = param1->sideConditions[v3].toxicSpikesLayers;
        param1->sideEffectType = 6;
        param1->sideEffectMon = v2;

        if ((BattleMon_Get(param1, param1->switchedMon, 27, NULL) == 3) || (BattleMon_Get(param1, param1->switchedMon, 28, NULL) == 3)) {
            param1->sideConditionsMask[v3] &= (0x400 ^ 0xffffffff);
            param1->sideConditions[v3].toxicSpikesLayers = 0;
            param1->calcTemp = 0;
        }
    } else {
        BattleScript_Iter(param1, v1);
    }

    return 0;
}

static BOOL ov16_02247570 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v3 = BattleScript_Read(param1);

    if (v1 == 0x0) {
        {
            int v5;
            int v6;

            v6 = BattleSystem_MaxBattlers(param0);

            for (v5 = 0; v5 < v6; v5++) {
                v4 = param1->monSpeedOrder[v5];

                if (v0 == 0) {
                    if ((Battler_IgnorableAbility(param1, param1->attacker, v4, v2) == 1) && (param1->battleMons[v4].curHP)) {
                        BattleScript_Iter(param1, v3);
                        param1->abilityMon = v4;
                        break;
                    }
                } else {
                    if ((Battler_IgnorableAbility(param1, param1->attacker, v4, v2) == 0) || (param1->battleMons[v4].curHP == 0)) {
                        BattleScript_Iter(param1, v3);
                        param1->abilityMon = v4;
                        break;
                    }
                }
            }
        }
    } else {
        v4 = BattleScript_Battler(param0, param1, v1);

        if (v0 == 0) {
            if ((Battler_IgnorableAbility(param1, param1->attacker, v4, v2) == 1) && (param1->battleMons[v4].curHP)) {
                BattleScript_Iter(param1, v3);
                param1->abilityMon = v4;
            }
        } else {
            if ((Battler_IgnorableAbility(param1, param1->attacker, v4, v2) == 0) || (param1->battleMons[v4].curHP == 0)) {
                BattleScript_Iter(param1, v3);
                param1->abilityMon = v4;
            }
        }
    }

    return 0;
}

static BOOL ov16_02247698 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v3 = BattleScript_Battler(param0, param1, v0);
    v4 = BattleScript_Battler(param0, param1, v1);

    if (Battler_Side(param0, v3) == Battler_Side(param0, v4)) {
        BattleScript_Iter(param1, v2);
    }

    return 0;
}

static const u16 Unk_ov16_0226E66C[] = {
    0x11,
    0x12,
    0x1A,
    0x3,
    0x4F,
    0x4E,
    0x1B,
    0x19,
    0x2,
    0x1C,
    0x32,
    0x6C,
    0x6B,
    0x6D,
    0x17,
    0x1D,
    0x33,
    0x29
};

static const u16 Unk_ov16_0226E590[] = {
    0x19,
    0x5C,
    0xDD,
    0x17,
    0x26,
    0xD6,
    0x173,
    0x28,
    0x148,
    0xEA,
    0x161
};

static const u8 Unk_ov16_0226EAA8[] = {
    0x1E,
    0x28,
    0x32,
    0x3C,
    0x46,
    0x50,
    0x5A,
    0x5E,
    0x62
};

static const u8 Unk_ov16_0226EAB4[] = {
    0x5,
    0xA,
    0xF,
    0x14,
    0x19,
    0x1E,
    0x23,
    0x28,
    0x2D,
    0x32
};

static BOOL ov16_022476F8 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1, v2, v3;
    u16 v4;
    u16 v5;
    u8 v6;
    u8 v7;
    Pokemon * v8;

    BattleScript_Iter(param1, 1);

    for (v1 = 0; v1 < BattleSystem_PartyCount(param0, 0); v1++) {
        v8 = BattleSystem_PartyPokemon(param0, 0, v1);
        v4 = Pokemon_GetValue(v8, MON_DATA_SPECIES_EGG, NULL);
        v5 = Pokemon_GetValue(v8, MON_DATA_HELD_ITEM, NULL);
        v6 = Pokemon_GetValue(v8, MON_DATA_ABILITY, NULL);

        if ((v6 == 53) && (v4 != 0) && (v4 != 494) && (v5 == 0) && ((BattleSystem_RandNext(param0) % 10) == 0)) {
            v0 = BattleSystem_RandNext(param0) % 100;
            v7 = (Pokemon_GetValue(v8, MON_DATA_LEVEL, NULL) - 1) / 10;

            if (v7 >= 10) {
                v7 = 9;
            }

            for (v2 = 0; v2 < 9; v2++) {
                if (Unk_ov16_0226EAA8[v2] > v0) {
                    Pokemon_SetValue(v8, 6, (u8 *)&Unk_ov16_0226E66C[v7 + v2]);
                    break;
                } else if ((v0 >= 98) && (v0 <= 99)) {
                    Pokemon_SetValue(v8, 6, (u8 *)&Unk_ov16_0226E590[v7 + (99 - v0)]);
                    break;
                }
            }
        }

        if ((v6 == 118) && (v4 != 0) && (v4 != 494) && (v5 == 0)) {
            v2 = 0;
            v3 = 10;
            v7 = Pokemon_GetValue(v8, MON_DATA_LEVEL, NULL);

            while (v7 > v3) {
                v2++;
                v3 += 10;
            }

            GF_ASSERT(v2 < 10);

            if (BattleSystem_RandNext(param0) % 100 < Unk_ov16_0226EAB4[v2]) {
                v2 = 94;
                Pokemon_SetValue(v8, 6, (u8 *)&v2);
            }
        }
    }

    return 0;
}

static BOOL ov16_0224787C (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);

    param1->selfTurnFlags[param1->attacker].trickRoomActivated = 1;

    return 0;
}

static BOOL ov16_022478A4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v0 = BattleScript_Battler(param0, param1, v1);

    if (Battler_MovedThisTurn(param1, v0) == 1) {
        BattleScript_Iter(param1, v2);
    }

    return 0;
}

static BOOL ov16_022478E4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    u16 v4;
    int v5;

    BattleScript_Iter(param1, 1);

    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v5 = BattleScript_Read(param1);
    v3 = BattleScript_Read(param1);
    v0 = BattleScript_Battler(param0, param1, v2);

    if (v1 == 0) {
        if (Battler_HeldItemEffect(param1, v0) == v5) {
            BattleScript_Iter(param1, v3);
        }
    } else {
        if (Battler_HeldItemEffect(param1, v0) != v5) {
            BattleScript_Iter(param1, v3);
        }
    }

    return 0;
}

static BOOL ov16_02247950 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int * v3;
    u16 v4;

    BattleScript_Iter(param1, 1);

    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v3 = BattleScript_VarAddress(param0, param1, v2);
    v0 = BattleScript_Battler(param0, param1, v1);
    v4 = Battler_HeldItem(param1, v0);

    v3[0] = BattleSystem_GetItemData(param1, v4, 1);

    return 0;
}

static BOOL ov16_0224799C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int * v3;
    u16 v4;

    BattleScript_Iter(param1, 1);

    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v3 = BattleScript_VarAddress(param0, param1, v2);
    v0 = BattleScript_Battler(param0, param1, v1);
    v4 = Battler_HeldItem(param1, v0);

    v3[0] = BattleSystem_GetItemData(param1, v4, 2);

    return 0;
}

static const u8 Unk_ov16_0226EAC0[] = {
    0x4,
    0x4,
    0xC,
    0xC,
    0x5,
    0x5,
    0xF,
    0xB,
    0xF,
    0x0,
    0x4,
    0x2,
    0x0
};

static BOOL ov16_022479E8 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if (Battler_Ability(param1, param1->attacker) == 121) {
        BattleScript_Iter(param1, v0);
        return 0;
    }

    v1 = BattleSystem_Terrain(param0);

    if (v1 > 12) {
        v1 = 12;
    }

    v2 = Unk_ov16_0226EAC0[v1];

    if ((BattleMon_Get(param1, param1->attacker, 27, NULL) != v2) && (BattleMon_Get(param1, param1->attacker, 28, NULL) != v2)) {
        param1->battleMons[param1->attacker].type1 = v2;
        param1->battleMons[param1->attacker].type2 = v2;
        param1->msgTemp = v2;
    } else {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static const u16 Unk_ov16_0226E652[] = {
    0x59,
    0x59,
    0x192,
    0x192,
    0x9D,
    0x9D,
    0x3B,
    0x38,
    0x3A,
    0xA1,
    0x1AA,
    0x193,
    0xA1
};

static BOOL ov16_02247A80 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);
    v0 = BattleSystem_Terrain(param0);

    if (v0 > 12) {
        v0 = 12;
    }

    param1->msgMoveTemp = Unk_ov16_0226E652[v0];

    return 0;
}

static const u32 Unk_ov16_0226E690[] = {
    0x8000001B,
    0x8000001B,
    0x80000001,
    0x80000001,
    0x80000008,
    0x80000008,
    0x80000004,
    0x80000016,
    0x80000004,
    0x80000005,
    0x80000018,
    0x8000001C,
    0x80000005
};

static BOOL ov16_02247AB0 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);

    v0 = BattleSystem_Terrain(param0);

    if (v0 > 12) {
        v0 = 12;
    }

    param1->sideEffectIndirectFlags = Unk_ov16_0226E690[v0];

    return 0;
}

static BOOL ov16_02247AE0 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = ov16_02258B18(param1, param1->attacker);

    if (v1) {
        param1->movePower = v1;
        param1->moveType = ov16_02258B2C(param1, param1->attacker);
    } else {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_02247B28 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);

    if ((param1->battleMons[param1->defender].heldItem) && (Battler_IgnorableAbility(param1, param1->attacker, param1->defender, 60) == 1)) {
        BattleScript_Iter(param1, v0);
    } else if (((param1->battleMons[param1->defender].heldItem) && (param1->battleMons[param1->defender].moveEffectsData.custapBerry)) || (ov16_02258CB4(param0, param1, param1->defender) != 1)) {
        BattleScript_Iter(param1, v1);
    }

    return 0;
}

static BOOL ov16_02247BA4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if (ov16_02259204(param0, param1, param1->attacker) != 1) {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_02247BD4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);
    v0 = BattleScript_Read(param1);
    BattleIO_ShowYesNoScreen(param0, param1, 0, NULL, v0, NULL, NULL);

    return 0;
}

static BOOL ov16_02247C04 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    int v2;

    v0 = BattleContext_IOBufferVal(param1, 0);

    if (v0) {
        BattleScript_Iter(param1, 1);

        v1 = BattleScript_Read(param1);
        v2 = BattleScript_Read(param1);

        if (v0 == 0xff) {
            BattleScript_Iter(param1, v2);
        } else {
            BattleScript_Iter(param1, v1);
        }

        BattleSystem_Record(param0, 0, v0);
    }

    param1->battleProgressFlag = 1;

    return 0;
}

static BOOL ov16_02247C64 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1 = BattleSystem_MaxBattlers(param0);

    BattleScript_Iter(param1, 1);
    BattleIO_ShowPartyScreen(param0, param1, 0, 0, 0, 6);

    param1->switchedMon = 0;

    return 0;
}

static BOOL ov16_02247C94 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;

    v0 = BattleContext_IOBufferVal(param1, 0);

    if (v0) {
        BattleScript_Iter(param1, 1);

        v1 = BattleScript_Read(param1);

        if (v0 == 0xff) {
            BattleScript_Iter(param1, v1);
        } else {
            param1->switchedPartySlot[0] = v0 - 1;
        }
    }

    param1->battleProgressFlag = 1;

    return 0;
}

static BOOL ov16_02247CE0 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);

    if (BattleSystem_BattleType(param0) & 0x4) {
        ov16_02266A38(param0);
    }

    return 0;
}

static BOOL ov16_02247D04 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Battler(param0, param1, v0);
    v3 = Battler_Side(param0, v2);
    v4 = BattleMon_Get(param1, v2, 27, NULL);
    v5 = BattleMon_Get(param1, v2, 28, NULL);

    if ((param1->sideConditionsMask[v3] & 0x80) && (param1->battleMons[v2].curHP)) {
        switch (ov16_022558CC(5, v4, v5)) {
        case 160:
            param1->hpCalcTemp = 2;
            break;
        case 80:
            param1->hpCalcTemp = 4;
            break;
        case 40:
            param1->hpCalcTemp = 8;
            break;
        case 20:
            param1->hpCalcTemp = 16;
            break;
        case 10:
            param1->hpCalcTemp = 32;
            break;
        case 0:
            BattleScript_Iter(param1, v1);
            return 0;
        default:
            GF_ASSERT(0);
            break;
        }

        param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[v2].maxHP * -1, param1->hpCalcTemp);
    } else {
        BattleScript_Iter(param1, v1);
    }

    return 0;
}

static BOOL ov16_02247E10 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    u16 v1;

    BattleScript_Iter(param1, 1);
    v0 = BattleScript_Read(param1);

    if (Battler_Ability(param1, param1->attacker) == 32) {
        v1 = param1->aiContext.moveTable[param1->moveCur].effectChance * 2;
    } else {
        v1 = param1->aiContext.moveTable[param1->moveCur].effectChance;
    }

    GF_ASSERT(v1 != 0);

    if (((BattleSystem_RandNext(param0) % 100) < v1) && (param1->battleMons[param1->sideEffectMon].curHP)) {
        return 0;
    }

    BattleScript_Iter(param1, v0);

    return 0;
}

static BOOL ov16_02247E98 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    u16 v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    {
        int v2;

        if ((param1->battleMons[param1->attacker].species == 441) && (param1->battleMons[param1->defender].curHP) && ((param1->battleMons[param1->attacker].statusVolatile & 0x200000) == 0)) {
            if ((BattleSystem_BattleStatus(param0) & 0x10) == 0) {
                v2 = sub_02006494(ov16_0223EE30(param0, param1->attacker));
            } else {
                v2 = ov16_0223F810(param0, param1->attacker);
            }

            switch (v2) {
            default:
            case 0:
                v1 = 0;
                break;
            case 1:
                v1 = 10;
                break;
            case 2:
                v1 = 30;
                break;
            }

            if ((BattleSystem_RandNext(param0) % 100) > v1) {
                BattleScript_Iter(param1, v0);
            }
        } else {
            BattleScript_Iter(param1, v0);
        }
    }

    return 0;
}

static BOOL ov16_02247F44 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    param1->calcTemp = MoveTable_Get(&param1->aiContext.moveTable[param1->moveCur], v0);

    return 0;
}

static BOOL ov16_02247F7C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v3 = BattleScript_Battler(param0, param1, v0);

    ov16_022664F8(param0, v3, v1, v2);

    return 0;
}

static BOOL ov16_02247FBC (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    ov16_0226651C(param0, v1);

    return 0;
}

static BOOL ov16_02247FE8 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);
    ov16_022665AC(param0, 0);

    return 0;
}

static BOOL ov16_02248000 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    ov16_0223E30C(param0, v1, param1->selectedPartySlot[v1], NULL, param1->msgItemTemp);

    return 0;
}

static BOOL ov16_02248040 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    if (BattleSystem_TryEscape(param0, param1, v1)) {
        BattleScript_Iter(param1, v2);
    }

    return 0;
}

static BOOL ov16_02248084 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    ov16_022665E4(param0, v1);

    return 0;
}

static BOOL ov16_022480B0 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    ov16_0226660C(param0, v1);

    return 0;
}

static BOOL ov16_022480DC (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    ov16_02266634(param0, v1);

    return 0;
}

static BOOL ov16_02248108 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    ov16_0226665C(param0, v1);

    return 0;
}

static BOOL ov16_02248134 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);
    ov16_02266684(param0);

    return 0;
}

static BOOL ov16_0224814C (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);
    ov16_022666A0(param0);

    return 0;
}

static BOOL ov16_02248164 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v3 = BattleScript_Battler(param0, param1, v0);

    BattleIO_IncrementRecord(param0, v3, v1, v2);

    return 0;
}

static BOOL ov16_022481A4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    ov16_0226673C(param0, param1, v1);

    return 0;
}

static BOOL ov16_022481D0 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if (BattleSystem_TriggerAbilityOnHit(param0, param1, &param1->scriptTemp) == 0) {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_02248204 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    BattlerData * v2;
    int v3 = BattleSystem_MaxBattlers(param0);

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    switch (v0) {
    case 0x3:
        for (v1 = 0; v1 < v3; v1++) {
            v2 = BattleSystem_BattlerData(param0, v1);

            if ((v2->battlerType & 0x1) == 0) {
                ov16_022667E8(param0, v1);
            }
        }
        break;
    case 0x4:
        for (v1 = 0; v1 < v3; v1++) {
            v2 = BattleSystem_BattlerData(param0, v1);

            if (v2->battlerType & 0x1) {
                ov16_022667E8(param0, v1);
            }
        }
        break;
    default:
        v1 = BattleScript_Battler(param0, param1, v0);
        ov16_022667E8(param0, v1);
        break;
    }

    return 0;
}

static BOOL ov16_02248294 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    BattlerData * v2;
    int v3 = BattleSystem_MaxBattlers(param0);

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    switch (v0) {
    case 0x3:
        for (v1 = 0; v1 < v3; v1++) {
            v2 = BattleSystem_BattlerData(param0, v1);

            if ((v2->battlerType & 0x1) == 0) {
                ov16_02266804(param0, v1);
            }
        }
        break;
    case 0x4:
        for (v1 = 0; v1 < v3; v1++) {
            v2 = BattleSystem_BattlerData(param0, v1);

            if (v2->battlerType & 0x1) {
                ov16_02266804(param0, v1);
            }
        }
        break;
    default:
        v1 = BattleScript_Battler(param0, param1, v0);
        ov16_02266804(param0, v1);
        break;
    }

    return 0;
}

static BOOL ov16_02248324 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4 = 0;
    u32 v5;
    Pokemon * v6;
    BattlerData * v7;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v5 = BattleSystem_BattleType(param0);
    v2 = BattleScript_Battler(param0, param1, v0);

    if ((v5 & 0x8) || ((v5 & 0x10) && (Battler_Side(param0, v2)))) {
        {
            Party * v8;
            Party * v9;

            v8 = BattleSystem_Party(param0, v2);
            v9 = BattleSystem_Party(param0, BattleSystem_Partner(param0, v2));
            v7 = BattleSystem_BattlerData(param0, v2);

            for (v3 = 0; v3 < Party_GetCurrentCount(v8); v3++) {
                v6 = Party_GetPokemonBySlotIndex(v8, v3);

                if ((Pokemon_GetValue(v6, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v6, MON_DATA_SPECIES_EGG, NULL) != 494)) {
                    v4 += Pokemon_GetValue(v6, MON_DATA_CURRENT_HP, NULL);
                }
            }

            if (((v5 == ((0x2 | 0x1) | 0x8 | 0x40)) || (v5 == (0x2 | 0x8 | 0x40))) && (Battler_Side(param0, v2) == 0) && (BattleSystem_BattlerSlot(param0, v2) == 2)) {
                (void)0;
            } else {
                for (v3 = 0; v3 < Party_GetCurrentCount(v9); v3++) {
                    v6 = Party_GetPokemonBySlotIndex(v9, v3);

                    if ((Pokemon_GetValue(v6, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v6, MON_DATA_SPECIES_EGG, NULL) != 494)) {
                        v4 += Pokemon_GetValue(v6, MON_DATA_CURRENT_HP, NULL);
                    }
                }
            }

            if (v4 == 0) {
                BattleScript_Iter(param1, v1);
            }
        }
    } else {
        {
            Party * v10;

            v10 = BattleSystem_Party(param0, v2);
            v7 = BattleSystem_BattlerData(param0, v2);

            for (v3 = 0; v3 < Party_GetCurrentCount(v10); v3++) {
                v6 = Party_GetPokemonBySlotIndex(v10, v3);

                if ((Pokemon_GetValue(v6, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v6, MON_DATA_SPECIES_EGG, NULL) != 494)) {
                    v4 += Pokemon_GetValue(v6, MON_DATA_CURRENT_HP, NULL);
                }
            }

            if (v4 == 0) {
                BattleScript_Iter(param1, v1);
            }
        }
    }

    return 0;
}

static BOOL ov16_022484D0 (BattleSystem * param0, BattleContext * param1)
{
    int v0, v1;
    int v2[0x8];
    int v3;

    BattleScript_Iter(param1, 1);

    v3 = BattleScript_Read(param1);
    v1 = 0;

    for (v0 = 0x1; v0 < 0x8; v0++) {
        if (param1->battleMons[param1->defender].statBoosts[v0] < 12) {
            v2[v1++] = v0 - 1;
        }
    }

    if (v1) {
        param1->sideEffectDirectFlags = 0x27 + v2[BattleSystem_RandNext(param0) % v1];
        param1->sideEffectDirectFlags |= 0x80000000;
    } else {
        BattleScript_Iter(param1, v3);
    }

    return 0;
}

static BOOL ov16_02248550 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    param1->recycleItem[v1] = param1->battleMons[v1].heldItem;
    param1->battleMons[v1].heldItem = 0;

    BattleMon_CopyToParty(param0, param1, v1);

    return 0;
}

static BOOL ov16_0224859C (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if (param1->recycleItem[param1->attacker]) {
        param1->msgItemTemp = param1->recycleItem[param1->attacker];
        param1->recycleItem[param1->attacker] = 0;
    } else {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_022485E0 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if (BattleSystem_TriggerHeldItemOnHit(param0, param1, &param1->scriptTemp) == 0) {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_02248614 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);
    ov16_02266820(param0);

    return 0;
}

static BOOL ov16_0224862C (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);
    ov16_0226683C(param0, param1);

    return 0;
}

static BOOL ov16_02248648 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);
    ov16_022668D0(param0);

    return 0;
}

static BOOL ov16_02248660 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4 = 0;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);
    v2 = Battler_HeldItemEffect(param1, v1);
    v3 = Battler_HeldItemPower(param1, v1, 0);

    if ((v2 == 65) && ((BattleSystem_RandNext(param0) % 100) < v3)) {
        v4 = 1;
    }

    if ((v2 == 103) && (param1->battleMons[v1].curHP == param1->battleMons[v1].maxHP)) {
        v4 = 1;
    }

    if (v4) {
        if ((param1->battleMons[v1].curHP + param1->hpCalcTemp) <= 0) {
            param1->hpCalcTemp = (param1->battleMons[v1].curHP - 1) * -1;
            param1->moveStatusFlags |= 0x100;
        }
    }

    return 0;
}

static BOOL ov16_02248708 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    Pokemon * v3;
    int v4;
    int v5;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    if ((param1->battleMons[v1].curHP) && (param1->selectedPartySlot[v1] != 6)) {
        v3 = BattleSystem_PartyPokemon(param0, v1, param1->selectedPartySlot[v1]);
        v4 = Pokemon_GetValue(v3, MON_DATA_ABILITY, NULL);
        v5 = Pokemon_GetValue(v3, MON_DATA_STATUS_CONDITION, NULL);

        if ((param1->battleMons[v1].ability != 30) && (ov16_022577A4(param1, v4, v5) == 0)) {
            BattleScript_Iter(param1, v2);
        }
    } else {
        BattleScript_Iter(param1, v2);
    }

    return 0;
}

static BOOL ov16_022487A4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    if ((param1->battleMons[v1].statusVolatile & 0x1000000) || (param1->selfTurnFlags[v1].statusFlags & 0x8)) {
        BattleScript_Iter(param1, v2);
    }

    return 0;
}

static BOOL ov16_02248800 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v2 = BattleScript_Read(param1);

    if ((BattleSystem_CountAbility(param0, param1, 8, 0, 13) == 0) && (BattleSystem_CountAbility(param0, param1, 8, 0, 76) == 0)) {
        (void)0;
    } else {
        BattleScript_Iter(param1, v2);
    }

    return 0;
}

static BOOL ov16_02248850 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    param1->defender = BattleSystem_RandomOpponent(param0, param1, v1);

    return 0;
}

static BOOL ov16_02248880 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if (ov16_0225B228(param0, param1, &param1->scriptTemp) == 0) {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_022488B4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    ov16_0226692C(param0, param1, v1);

    return 0;
}

static BOOL ov16_022488E0 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    ov16_022669D8(param0, param1, v1);

    return 0;
}

static BOOL ov16_0224890C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Battler(param0, param1, v0);

    ov16_02266A18(param0, v2, v1);

    return 0;
}

static BOOL ov16_02248944 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if (((BattleSystem_PartyCount(param0, 0) != 6) || (sub_020799A0(param0->unk_64) != 18)) && (param0->safariBalls)) {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_02248988 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if ((param0->battleType & 0x4) && ((param0->battleStatusMask & 0x10) == 0)) {
        v1 = 2;
    } else {
        v1 = 1;
    }

    if (v0 > param1->waitCounter) {
        BattleScript_Iter(param1, -2);
        param1->waitCounter += v1;
    } else {
        param1->waitCounter = 0;
    }

    param1->battleProgressFlag = 1;

    return 0;
}

static BOOL ov16_022489F4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);

    if (param1->aiContext.moveTable[param1->moveCur].type == v0) {
        BattleScript_Iter(param1, v1);
    }

    return 0;
}

static BOOL ov16_02248A34 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int * v3;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v3 = BattleScript_VarAddress(param0, param1, v1);

    param1->calcTemp = PokemonPersonalData_GetFormValue(v0, v3[0], v2);

    return 0;
}

static BOOL ov16_02248A7C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    BattleSystem_ReloadPokemon(param0, param1, v1, param1->selectedPartySlot[v1]);

    return 0;
}

static BOOL ov16_02248AB4 (BattleSystem * param0, BattleContext * param1)
{
    param1->battleProgressFlag = 1;
    return ov16_02251EF4(param1);
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
 * @param narc          Which NARC to open for the script
 * @param file          Which file in the NARC to load
 */
static void BattleScript_Jump(BattleContext *battleCtx, int narc, int file)
{
    BattleSystem_LoadScript(battleCtx, narc, file);
}

/**
 * @brief Load a script into the script buffer, returning to the current
 * execution once finished with the newly-loaded script.
 * 
 * @param battleCtx 
 * @param narc          Which NARC to open for the script
 * @param file          Which file in the NARC to load
 */
static void BattleScript_Call(BattleContext *battleCtx, int narc, int file)
{
    BattleSystem_CallScript(battleCtx, narc, file);
}

/**
 * @brief Get a pointer to the requested variable.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @param var           The requested variable. See enum BattleScriptVars.
 * @return Memory address of the requested variable.
 */
static void* BattleScript_VarAddress(BattleSystem *battleSys, BattleContext *battleCtx, int var)
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

        // TODO: rename monsGainingExp (sideGetExpMask?)
        if (itemEffect == HOLD_EFFECT_EXP_SHARE || (data->battleCtx->monsGainingExp[battler] & FlagIndex(slot))) {
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
                && data->battleCtx->battleMons[BATTLER_ENEMY_SLOT_1].curHP
                    + data->battleCtx->battleMons[BATTLER_ENEMY_SLOT_2].curHP == 0
                && Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL)
                && data->battleCtx->expJinglePlayed == FALSE) {
            Sound_PlayBGM(SEQ_VICTORY_WILD_POKEMON);
            data->battleCtx->expJinglePlayed = TRUE;
            BattleSystem_SetRedHPSoundFlag(data->battleSys, 2); // turn off
        }

        u32 totalExp = 0;
        msg.id = 1; // "{0} gained {1} Exp. Points!"

        if (Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL) && Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL) != 100) {
            if (data->battleCtx->monsGainingExp[battler] & FlagIndex(slot)) {
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
                if (Pokemon_GetValue(mon, MON_DATA_LANGUAGE, NULL) != Unk_020E4C44) {
                    totalExp = totalExp * 170 / 100;
                } else {
                    totalExp = totalExp * 150 / 100;
                }

                msg.id = 2; // "{0} gained a boosted {1} Exp. Points!"
            }

            u32 newExp = Pokemon_GetValue(mon, MON_DATA_EXP, NULL);
            data->tmpData[3] = newExp - Pokemon_GetCurrentLevelBaseExp(mon);
            newExp += totalExp;

            if (slot == data->battleCtx->selectedPartySlot[expBattler]) {
                data->battleCtx->battleMons[expBattler].exp = newExp;
            }

            Pokemon_SetValue(mon, MON_DATA_EXP, &newExp);
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
        if (Message_Printing(data->tmpData[GET_EXP_MSG_INDEX]) == FALSE) {
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
                BattleIO_PlayStatusEffect(data->battleSys, data->battleCtx, expBattler, STATUS_EFFECT_LEVEL_UP);
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
            data->battleCtx->tmpData = Heap_AllocFromHeap(HEAP_ID_BATTLE, sizeof(PokemonStats));
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
        if (Message_Printing(data->tmpData[GET_EXP_MSG_INDEX]) == 0) {
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
        BGL *bgl = BattleSystem_BGL(data->battleSys);
        Window *window = BattleSystem_Window(data->battleSys, 1);
        PaletteSys *paletteSys = BattleSystem_PaletteSys(data->battleSys);

        G2_SetBG0Priority(1 + 1); // this is the background + 1; could do with a constant
        BGL_SetPriority(1, 1);
        BGL_SetPriority(2, 0);

        BattleSystem_SetGaugePriority(data->battleSys, 0 + 2); // gauge's default is 0

        Window_SetFrame(bgl, 2, 1, 0, HEAP_ID_BATTLE);
        PaletteSys_LoadPalette(paletteSys, NARC_INDEX_GRAPHIC__PL_WINFRAME, Window_FramePalette(), HEAP_ID_BATTLE, 0, 0x20, 8 * 0x10);
        BGL_AddWindow(bgl, window, 2, 0x11, 0x7, 14, 12, 11, (9 + 1));
        BGL_FillWindow(window, 0xFF);
        Window_Show(window, 0, 1, 8);

        data->seqNum = SEQ_GET_EXP_LEVEL_UP_SUMMARY_PRINT_DIFF;
        break;
    }

    case SEQ_GET_EXP_LEVEL_UP_SUMMARY_PRINT_DIFF: {
        int statTags[STAT_MAX] = {8, 1, 2, 4, 5, 3};
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
        int statTags[STAT_MAX] = {8, 1, 2, 4, 5, 3}; // unused, but must be kept to match
        int statParams[STAT_MAX] = {
            MON_DATA_MAX_HP,
            MON_DATA_ATK,
            MON_DATA_DEF,
            MON_DATA_SP_ATK,
            MON_DATA_SP_DEF,
            MON_DATA_SPEED
        };
        Window *window = BattleSystem_Window(data->battleSys, 1);

        BGL_WindowColor(window, 0xF, 80, 0, 36, 96); // clear out the diff section (keep the printed stat names)

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
        if ((gCoreSys.padInput & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_BUTTON_X | PAD_BUTTON_Y)) || TouchScreen_Tapped()) {
            Sound_PlayEffect(SEQ_CONFIRM);
            data->seqNum++;
        }
        break;

    case SEQ_GET_EXP_LEVEL_UP_CLEAR:{
        Window *window = BattleSystem_Window(data->battleSys, 1);

        Window_Clear(window, 0);
        BGL_DeleteWindow(window);

        G2_SetBG0Priority(1);
        BGL_SetPriority(1, 0);
        BGL_SetPriority(2, 1);

        BattleSystem_SetGaugePriority(data->battleSys, 0);

        if (data->battleCtx->selectedPartySlot[expBattler] != slot) {
            BattleScript_FreePartyLevelUpIcon(data->battleSys, data);
        }

        Heap_FreeToHeap(data->battleCtx->tmpData);
        data->seqNum = 15;
        break;
    }

    case SEQ_GET_EXP_CHECK_LEARN_MOVE: {
        u16 move;
        BGL *bgl = BattleSystem_BGL(data->battleSys); // unused, but must be kept to match

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
        if (Message_Printing(data->tmpData[GET_EXP_MSG_INDEX]) == FALSE) {
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
        if (Message_Printing(data->tmpData[GET_EXP_MSG_INDEX]) == FALSE) {
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
        if (Message_Printing(data->tmpData[GET_EXP_MSG_INDEX]) == FALSE) {
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
        if (Message_Printing(data->tmpData[GET_EXP_MSG_INDEX]) == FALSE) {
            // Check for another move to learn
            data->seqNum = SEQ_GET_EXP_CHECK_LEARN_MOVE;
        }
        break;

    case SEQ_GET_EXP_CHECK_DONE:
        data->battleCtx->monsGainingExp[battler] &= (FlagIndex(slot) ^ 0xFFFFFFFF); // this mon is done
        data->tmpData[GET_EXP_PARTY_SLOT] = slot + 1;
        data->seqNum = SEQ_GET_EXP_START; // go back to the top and get the next mon
        break;

    case SEQ_GET_EXP_DONE:
        data->battleCtx->taskData = NULL;
        Heap_FreeToHeap(inData);
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
    Pokemon *mon;
    PokemonPersonalData *personal;

    personal = PokemonPersonalData_FromMonForm(species, form, HEAP_ID_BATTLE);
    mon = Party_GetPokemonBySlotIndex(party, slot);
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
            tmp = PokemonPersonalData_GetValue(personal, MON_DATA_PERSONAL_EV_HP_YIELD);
            if (itemEffect == HOLD_EFFECT_LVLUP_HP_EV_UP) {
                tmp += itemPower;
            }
            break;

        case STAT_ATTACK:
            tmp = PokemonPersonalData_GetValue(personal, MON_DATA_PERSONAL_EV_ATK_YIELD);
            if (itemEffect == HOLD_EFFECT_LVLUP_ATK_EV_UP) {
                tmp += itemPower;
            }
            break;

        case STAT_DEFENSE:
            tmp = PokemonPersonalData_GetValue(personal, MON_DATA_PERSONAL_EV_DEF_YIELD);
            if (itemEffect == HOLD_EFFECT_LVLUP_DEF_EV_UP) {
                tmp += itemPower;
            }
            break;

        case STAT_SPEED:
            tmp = PokemonPersonalData_GetValue(personal, MON_DATA_PERSONAL_EV_SPEED_YIELD);
            if (itemEffect == HOLD_EFFECT_LVLUP_SPEED_EV_UP) {
                tmp += itemPower;
            }
            break;

        case STAT_SPECIAL_ATTACK:
            tmp = PokemonPersonalData_GetValue(personal, MON_DATA_PERSONAL_EV_SP_ATK_YIELD);
            if (itemEffect == HOLD_EFFECT_LVLUP_SPATK_EV_UP) {
                tmp += itemPower;
            }
            break;

        case STAT_SPECIAL_DEFENSE:
            tmp = PokemonPersonalData_GetValue(personal, MON_DATA_PERSONAL_EV_SP_DEF_YIELD);
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

    PokemonPersonalData_Free(personal);
}

static void BattleScript_CatchMonTask (SysTask * param0, void * param1)
{
    int v0;
    int v1;
    BattleScriptTaskData * v2 = param1;
    Pokemon * v3;
    PaletteSys * v4;
    UnkStruct_02007768 * v5;
    MessageLoader * v6;

    v6 = BattleSystem_MessageLoader(v2->battleSys);
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
                v7.heapID = 5;
                v7.target = v1 + 20000;
                v7.ballID = v2->ball;
                v7.cellActorSys = ov16_0223E010(v2->battleSys);
                v7.paletteSys = BattleSystem_PaletteSys(v2->battleSys);
                v7.bgPrio = 1;
                v7.surface = 0;
                v7.battleSys = v2->battleSys;

                if (BattleSystem_BattleType(v2->battleSys) & 0x2) {
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

                Sound_PlayEffect(1802);
                v2->battleSys->unk_241E++;
                ov12_022368C8(v2->ballRotation, 0);
            }
        } else {
            {
                BattlerData * v8;

                v8 = BattleSystem_BattlerData(v2->battleSys, 0);

                if (ov12_02237890(v8->unk_84) != 4) {
                    v2->ballRotation = v8->unk_84;
                    v8->unk_84 = NULL;
                    v2->seqNum = 1;

                    Sound_PlayEffect(1802);
                    v2->battleSys->unk_241E++;
                    ov12_022368C8(v2->ballRotation, 0);
                }
            }
        }
        break;
    case 1:
        if (ov12_022368D0(v2->ballRotation, 0) == 0) {
            {
                u32 v9;

                v9 = BattleSystem_BattleType(v2->battleSys);

                if (v9 & 0x1) {
                    sub_02005728(1510, 117);
                    ov12_022368C8(v2->ballRotation, 2);
                    v2->seqNum = 25;
                } else {
                    sub_02005728(1800, 117);
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
            sub_02005728(1801, 117);
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

                Sound_PlayBGM(1127);
                BattleSystem_SetRedHPSoundFlag(v2->battleSys, 2);
            }
        }
        break;
    case 9:
        if (Message_Printing(v2->tmpData[0]) == 0) {
            v2->seqNum = 10;
            ov12_022368C8(v2->ballRotation, 7);
        }
        break;
    case 10:
        if (ov12_022368D0(v2->ballRotation, 7) == 0) {
            if (--v2->tmpData[1] == 0) {
                ov16_0223F4B0(v2->battleSys, v1);
                v3 = BattleSystem_PartyPokemon(v2->battleSys, v1, v2->battleCtx->selectedPartySlot[v1]);

                if (BattleSystem_BattleType(v2->battleSys) & (0x200 | 0x400)) {
                    v3 = BattleSystem_PartyPokemon(v2->battleSys, v1, v2->battleCtx->selectedPartySlot[v1]);
                    ov16_02259A5C(v2->battleSys, v2->battleCtx, v3);
                    sub_02015738(ov16_0223E220(v2->battleSys), 1);
                    sub_02003178(v4, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 0, 16, 0x0);
                    sub_0200872C(v5, 0, 16, 0, 0x0);
                    v2->seqNum = 32;
                } else if (BattleSystem_CaughtSpecies(v2->battleSys, Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL))) {
                    sub_02015738(ov16_0223E220(v2->battleSys), 1);
                    sub_02003178(v4, (0x1 | 0x4), 0xffff, 1, 0, 16, 0x0);
                    sub_0200872C(v5, 0, 16, 0, 0x0);
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
        if (Message_Printing(v2->tmpData[0]) == 0) {
            if (--v2->tmpData[1] == 0) {
                v2->seqNum = 12;
                sub_02003178(v4, (0x1 | 0x4), 0xffff, 1, 0, 16, 0x0);
                sub_0200872C(v5, 0, 16, 0, 0x0);
                sub_02015738(ov16_0223E220(v2->battleSys), 1);
            }
        }
        break;
    case 12:
        if (sub_0200384C(v4) == 0) {
            {
                UnkStruct_ov21_021E8E0C v12;

                ov12_0223783C(v2->ballRotation);
                sub_02007DD4(v5);
                ov16_0223B53C(v2->battleSys);
                ov16_022686BC(ov16_0223E020(v2->battleSys, 0), 0);
                ov16_022686BC(ov16_0223E020(v2->battleSys, 1), 0);
                ov16_02263B20(BattleSystem_BattlerData(v2->battleSys, 0), 0);

                v12.unk_00 = BattleSystem_BGL(v2->battleSys);
                v12.unk_04 = BattleSystem_PaletteSys(v2->battleSys);
                v12.unk_08 = v5;
                v12.unk_0C = 5;
                v12.unk_10 = BattleSystem_PartyPokemon(v2->battleSys, v1, v2->battleCtx->selectedPartySlot[v1]);
                v12.unk_14 = sub_0207A280(ov16_0223E068(v2->battleSys));
                v2->tmpPtr[1] = sub_0201EE9C();
                v2->tmpPtr[0] = ov21_021E8D48(&v12);
                v2->seqNum = 13;
            }
        }
        break;
    case 13:
        if (ov21_021E8DEC(v2->tmpPtr[0])) {
            if (gCoreSys.padInput & PAD_BUTTON_A) {
                v2->seqNum = 14;
            } else if (TouchScreen_Tapped()) {
                Sound_PlayEffect(1500);
                v2->seqNum = 14;
            }

            if (v2->seqNum == 14) {
                sub_02003178(v4, (0x1 | 0x4), 0xffff, 1, 0, 16, 0x0);
                ov21_021E8E04(v2->tmpPtr[0], 0);
            }
        }
        break;
    case 14:
    {
        UnkStruct_02007C7C * v13;

        v13 = ov21_021E8E00(v2->tmpPtr[0]);
        sub_02008274(v13, 0, 4);

        if (sub_020080C0(v13, 0) >= 128) {
            sub_02007DEC(v13, 0, 128);
            v2->seqNum = 15;
        }
    }
    break;
    case 15:
        ov21_021E8DD0(v2->tmpPtr[0]);
        sub_0201EEB8(v2->tmpPtr[1]);
        ov16_0223B578(v2->battleSys);
        sub_02003178(v4, (0x1 | 0x4), 0xffff, 1, 16, 0, 0x0);
        v2->seqNum = 17;
        break;
    case 16:
        if (sub_0200384C(v4) == 0) {
            {
                UnkStruct_02008A90 v14;

                v3 = BattleSystem_PartyPokemon(v2->battleSys, v1, v2->battleCtx->selectedPartySlot[v1]);

                ov12_0223783C(v2->ballRotation);
                sub_02007DD4(v5);
                ov16_02263B20(BattleSystem_BattlerData(v2->battleSys, 0), 0);
                ov16_0223B53C(v2->battleSys);
                ov16_0223B578(v2->battleSys);
                sub_02075EF4(&v14, v3, 2);
                sub_02007C34(v5, &v14, 128, 72, 0, 0, NULL, NULL);
                sub_02003178(v4, (0x1 | 0x4), 0xffff, 1, 16, 0, 0x0);
                sub_0200872C(v5, 16, 0, 0, 0x0);

                v2->seqNum = 17;
            }
        }
        break;
    case 17:
        if (sub_0200384C(v4) == 0) {
            {
                v2->seqNum = 18;

                sub_02015738(ov16_0223E220(v2->battleSys), 0);
                sub_02003858(v4, 1);
            }
        }
        break;
    case 18:
    {
        int v15;

        v15 = v1 | (v2->battleCtx->selectedPartySlot[v1]);
        BattleIO_ShowYesNoScreen(v2->battleSys, v2->battleCtx, 0, 868, 5, NULL, v15);
        v2->seqNum++;
    }
    break;
    case 19:
        if (BattleContext_IOBufferVal(v2->battleCtx, 0)) {
            if (BattleContext_IOBufferVal(v2->battleCtx, 0) == 0xff) {
                v2->seqNum = 22;
            } else {
                sub_02015738(ov16_0223E220(v2->battleSys), 1);
                sub_02003178(v4, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 0, 16, 0x0);
                sub_0200872C(v5, 0, 16, 0, 0x0);
                v2->seqNum = 20;
            }
        }
        break;
    case 20:
        if (sub_0200384C(v4) == 0) {
            {
                UnkStruct_0208737C * v16;

                sub_0200F344(0, 0x0);
                sub_0200F344(1, 0x0);

                v3 = BattleSystem_PartyPokemon(v2->battleSys, v1, v2->battleCtx->selectedPartySlot[v1]);
                v16 = sub_0208712C(5, 1, Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL), 10, ov16_0223EDA4(v2->battleSys));
                v2->tmpPtr[1] = v16;

                if (BattleSystem_PartyCount(v2->battleSys, 0) < 6) {
                    v16->unk_44 = 0;
                } else {
                    v16->unk_44 = 1174 + ov16_0223F240(v2->battleSys);
                }

                v16->unk_08 = Pokemon_GetValue(v3, MON_DATA_FORM, NULL);
                v16->unk_48 = ov16_0223E228(v2->battleSys);
                v16->unk_10 = Pokemon_GetValue(v3, MON_DATA_GENDER, NULL);
                v2->tmpPtr[0] = sub_020067E8(&Unk_020F2DAC, v16, 5);
                v2->seqNum = 21;

                ov16_0223F414(v2->battleSys);

                {
                    int v17;
                    BattlerData * v18;

                    for (v17 = 0; v17 < BattleSystem_MaxBattlers(v2->battleSys); v17++) {
                        v18 = BattleSystem_BattlerData(v2->battleSys, v17);

                        if (v18->unk_18) {
                            sub_0200D0F4(v18->unk_18);
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
        if (sub_02006844(v2->tmpPtr[0])) {
            {
                UnkStruct_0208737C * v19;
                int v20;

                v19 = v2->tmpPtr[1];
                v3 = BattleSystem_PartyPokemon(v2->battleSys, v1, v2->battleCtx->selectedPartySlot[v1]);

                if (v19->unk_14 == 0) {
                    Pokemon_SetValue(v3, 120, v19->unk_18);
                    ov16_0223F24C(v2->battleSys, (1 + 48));
                }

                sub_0208716C(v19);
                sub_02006814(v2->tmpPtr[0]);
                ov16_0223F314(v2->battleSys, 2);

                v2->seqNum = 23;
            }
        }
        break;
    case 22:
    case 23:
        if (sub_0200384C(v4) == 0) {
            {
                BattleMessage v21;
                Party * v22;
                int v23;

                v22 = BattleSystem_Party(v2->battleSys, 0);
                v3 = BattleSystem_PartyPokemon(v2->battleSys, v1, v2->battleCtx->selectedPartySlot[v1]);

                ov16_0223F9A0(v2->battleSys, v1);
                ov16_02259A5C(v2->battleSys, v2->battleCtx, v3);
                ov16_0223EF48(v2->battleSys, v3);
                ov16_0223EF68(v2->battleSys, v3);
                BattleIO_IncrementRecord(v2->battleSys, 0, 0, (1 + 8));

                if (Party_AddPokemon(v22, v3) == 1) {
                    if (v2->seqNum == 22) {
                        sub_02015738(ov16_0223E220(v2->battleSys), 1);
                        sub_02003178(v4, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 0, 16, 0x0);
                        sub_0200872C(v5, 0, 16, 0, 0x0);
                    }

                    v2->seqNum = 32;
                } else {
                    {
                        PCBoxes * v24;
                        u32 v25;
                        u32 v26;
                        int v27;
                        int v28;
                        int v29;

                        v24 = ov16_0223E228(v2->battleSys);
                        v25 = sub_0207999C(v24);
                        v26 = sub_020799A0(v24);

                        sub_02079A94(v24, v26);

                        for (v27 = 0; v27 < 4; v27++) {
                            v28 = Pokemon_GetValue(v3, MON_DATA_MOVE1_MAX_PP + v27, NULL);
                            Pokemon_SetValue(v3, 58 + v27, &v28);
                        }

                        if (Pokemon_SetGiratinaForm(v3) != -1) {
                            ov16_0223F9A0(v2->battleSys, v1);
                        }

                        sub_020798A0(v24, v26, Pokemon_GetBoxPokemon(v3));

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
        if (Message_Printing(v2->tmpData[0]) == 0) {
            if (--v2->tmpData[1] == 0) {
                {
                    sub_02015738(ov16_0223E220(v2->battleSys), 1);
                    sub_02003178(v4, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 0, 16, 0x0);
                    sub_0200872C(v5, 0, 16, 0, 0x0);

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
        if (Message_Printing(v2->tmpData[0]) == 0) {
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
        if (Message_Printing(v2->tmpData[0]) == 0) {
            if (--v2->tmpData[1] == 0) {
                v2->battleCtx->taskData = NULL;
                Heap_FreeToHeap(param1);
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
        if (Message_Printing(v2->tmpData[0]) == 0) {
            if (--v2->tmpData[1] == 0) {
                v2->battleCtx->taskData = NULL;
                Heap_FreeToHeap(param1);
                SysTask_Done(param0);
            }
        }
        break;
    case 32:
        if (sub_0200384C(v4) == 0) {
            if (BattleSystem_BattleType(v2->battleSys) & (0x200 | 0x400)) {
                ov12_0223783C(v2->ballRotation);
                sub_02007DD4(v5);
            }

            v2->battleSys->resultMask = 0x4;
            v2->battleCtx->taskData = NULL;

            Heap_FreeToHeap(param1);
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
        speciesMod = PokemonPersonalData_GetSpeciesValue(battleCtx->battleMons[battleCtx->defender].species, MON_DATA_PERSONAL_CATCH_RATE);
        speciesMod = speciesMod * sSafariCatchRate[battleCtx->safariCatchStage].numerator / sSafariCatchRate[battleCtx->safariCatchStage].denominator;
    } else {
        speciesMod = PokemonPersonalData_GetSpeciesValue(battleCtx->battleMons[battleCtx->defender].species, MON_DATA_PERSONAL_CATCH_RATE);
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
            if (BattleSystem_Time(battleSys) == TIME_NIGHT
                    || BattleSystem_Time(battleSys) == TIME_MIDNIGHT
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
        
    case BTLSCR_ATTACKER_PARTNER:
    {
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

    case BTLSCR_DEFENDER_PARTNER:
    {
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

static const UnkStruct_ov104_0223F9E0 Unk_ov16_0226E6C4 = {
    0x80,
    0x0,
    0x0,
    0x0,
    0xC8,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0x4E35, 0x4E30, 0x4E2D, 0x4E2D, 0xFFFFFFFF, 0xFFFFFFFF},
    0x1,
    0x0
};

static const UnkStruct_ov104_0223F9E0 Unk_ov16_0226E6F8 = {
    0x98,
    0x18,
    0x0,
    0x0,
    0x64,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0x4E36, 0x4E31, 0x4E2E, 0x4E2E, 0xFFFFFFFF, 0xFFFFFFFF},
    0x1,
    0x0
};

static void BattleScript_LoadPartyLevelUpIcon (BattleSystem * param0, BattleScriptTaskData * param1, Pokemon * param2)
{
    UnkStruct_ov104_0223F9E0 v0;
    UnkStruct_0200C6E4 * v1;
    UnkStruct_0200C704 * v2;
    PaletteSys * v3;
    MessageLoader * v4;
    UnkStruct_0200B358 * v5;
    Strbuf* v6, * v7;
    BGL * v8;
    Window v9;
    int v10;
    SpriteManagerAllocation v11;
    UnkStruct_020127E8 v12;
    int v13;

    v4 = BattleSystem_MessageLoader(param0);
    v7 = ov16_0223E0D4(param0);
    v5 = ov16_0223E0D0(param0);
    v8 = BattleSystem_BGL(param0);
    v1 = ov16_0223E010(param0);
    v2 = ov16_0223E018(param0);
    v3 = BattleSystem_PaletteSys(param0);

    sub_0200CBDC(v1, v2, 27, 256, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 20021);
    sub_0200CD7C(v3, 2, v1, v2, 27, 82, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 20016);
    sub_0200CE0C(v1, v2, 27, 257, 1, 20013);
    sub_0200CE3C(v1, v2, 27, 258, 1, 20013);

    param1->cellActorData[0] = sub_0200CE6C(v1, v2, &Unk_ov16_0226E6C4);

    sub_0200D330(param1->cellActorData[0]);
    sub_0200D888(v1, v2, 19, sub_02079D80(param2), 0, NNS_G2D_VRAM_TYPE_2DMAIN, 20022);
    sub_0200CD7C(v3, 2, v1, v2, 19, sub_02079FD0(), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 20017);
    sub_0200CE0C(v1, v2, 19, sub_02079FDC(), 0, 20014);
    sub_0200CE3C(v1, v2, 19, sub_02079FE8(), 0, 20014);

    param1->cellActorData[1] = sub_0200CE6C(v1, v2, &Unk_ov16_0226E6F8);

    sub_02021F24(param1->cellActorData[1]->unk_00, sub_02079FC4(param2));
    sub_0200D330(param1->cellActorData[1]);

    param1->tmpPtr[0] = sub_02012744(1, 5);

    if (Pokemon_GetValue(param2, MON_DATA_176, NULL) == 0) {
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

    sub_0200B5CC(v5, 0, Pokemon_GetBoxPokemon(param2));
    sub_0200B60C(v5, 1, Pokemon_GetValue(param2, MON_DATA_LEVEL, NULL), 3, 0, 1);
    sub_0200C388(v5, v7, v6);
    Strbuf_Free(v6);
    sub_0201A7A0(&v9);
    sub_0201A870(v8, &v9, 12, 4, 0, 0);
    sub_0201D78C(&v9, 0, v7, 0, 0, 0xff, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)), NULL);

    v10 = sub_02012898(&v9, NNS_G2D_VRAM_TYPE_2DMAIN, 5);
    sub_0201ED94(v10, 1, NNS_G2D_VRAM_TYPE_2DMAIN, &v11);

    v12.unk_00 = param1->tmpPtr[0];
    v12.unk_04 = &v9;
    v12.unk_08 = sub_0200D9B0(v2);
    v12.unk_0C = sub_0200D04C(v2, 20016);
    v12.unk_10 = NULL;
    v12.unk_14 = v11.unk_04;
    v12.unk_18 = 176;
    v12.unk_1C = 8;
    v12.unk_20 = 0;
    v12.unk_24 = 100;
    v12.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v12.unk_2C = 5;

    param1->fontOAM = sub_020127E8(&v12);
    param1->spriteMgrAlloc = v11;

    sub_02012AC0(param1->fontOAM, 1);
    BGL_DeleteWindow(&v9);
}

static void BattleScript_FreePartyLevelUpIcon (BattleSystem * param0, BattleScriptTaskData * param1)
{
    UnkStruct_0200C704 * v0;

    v0 = ov16_0223E018(param0);

    sub_0200D0F4(param1->cellActorData[0]);
    sub_0200D0F4(param1->cellActorData[1]);
    sub_02012870(param1->fontOAM);
    sub_0201EE28(&param1->spriteMgrAlloc);
    sub_0200D070(v0, 20021);
    sub_0200D080(v0, 20016);
    sub_0200D090(v0, 20013);
    sub_0200D0A0(v0, 20013);
    sub_0200D070(v0, 20022);
    sub_0200D080(v0, 20017);
    sub_0200D090(v0, 20014);
    sub_0200D0A0(v0, 20014);
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

