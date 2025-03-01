#include "scrcmd.h"

#include <nitro.h>
#include <nitro/code16.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/heap.h"
#include "constants/items.h"
#include "constants/overworld_weather.h"
#include "constants/scrcmd.h"
#include "constants/species.h"
#include "generated/journal_location_events.h"
#include "generated/save_types.h"
#include "generated/signpost_commands.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_02014EC4_decl.h"
#include "struct_decls/struct_0202440C_decl.h"
#include "struct_decls/struct_02026218_decl.h"
#include "struct_decls/struct_02026310_decl.h"
#include "struct_decls/struct_02028430_decl.h"
#include "struct_decls/struct_0202855C_decl.h"
#include "struct_decls/struct_020298B0_decl.h"
#include "struct_decls/struct_02029C68_decl.h"
#include "struct_decls/struct_02029C88_decl.h"
#include "struct_decls/struct_02029D04_decl.h"
#include "struct_decls/struct_0202A750_decl.h"
#include "struct_decls/struct_0202CA1C_decl.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_0205C22C_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_defs/choose_starter_data.h"
#include "struct_defs/special_encounter.h"
#include "struct_defs/struct_0202DF8C.h"
#include "struct_defs/struct_0203D8AC.h"
#include "struct_defs/struct_0203E608.h"
#include "struct_defs/struct_02041DC8.h"
#include "struct_defs/struct_02042434.h"
#include "struct_defs/struct_0204AFC4.h"
#include "struct_defs/struct_02098C44.h"

#include "applications/pokemon_summary_screen/main.h"
#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/field_menu.h"
#include "overlay005/honey_tree.h"
#include "overlay005/map_object_anim_cmd.h"
#include "overlay005/ov5_021D431C.h"
#include "overlay005/ov5_021D5EB8.h"
#include "overlay005/ov5_021DD42C.h"
#include "overlay005/ov5_021DDAE4.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/ov5_021E779C.h"
#include "overlay005/ov5_021EA874.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021EE7D4.h"
#include "overlay005/ov5_021F0E84.h"
#include "overlay005/ov5_021F6454.h"
#include "overlay005/save_info_window.h"
#include "overlay005/scrcmd_move_tutor.h"
#include "overlay005/signpost.h"
#include "overlay005/struct_ov5_021DD42C.h"
#include "overlay005/vs_seeker.h"
#include "overlay006/npc_trade.h"
#include "overlay006/ov6_0223E140.h"
#include "overlay006/ov6_02242AF0.h"
#include "overlay006/ov6_02243004.h"
#include "overlay006/ov6_02243258.h"
#include "overlay006/ov6_02246C24.h"
#include "overlay006/ov6_02246F00.h"
#include "overlay006/ov6_02247078.h"
#include "overlay006/ov6_02247830.h"
#include "overlay006/ov6_02247D30.h"
#include "overlay006/ov6_02247F5C.h"
#include "overlay006/ov6_02248948.h"
#include "overlay006/swarm.h"
#include "overlay006/trophy_garden_daily_encounters.h"
#include "overlay007/communication_club.h"
#include "overlay007/ov7_0224B4E8.h"
#include "overlay007/shop_menu.h"
#include "overlay008/ov8_02249960.h"
#include "overlay009/ov9_02249960.h"
#include "overlay023/ov23_022521F0.h"
#include "overlay090/struct_ov90_021D0D80.h"
#include "overlay098/struct_ov98_02247168.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "savedata/save_table.h"

#include "bag.h"
#include "bg_window.h"
#include "camera.h"
#include "comm_player_manager.h"
#include "communication_system.h"
#include "encounter.h"
#include "field_comm_manager.h"
#include "field_map_change.h"
#include "field_message.h"
#include "field_overworld_state.h"
#include "field_script_context.h"
#include "field_system.h"
#include "field_task.h"
#include "field_transition.h"
#include "game_records.h"
#include "great_marsh_lookout.h"
#include "heap.h"
#include "inlines.h"
#include "items.h"
#include "journal.h"
#include "location.h"
#include "map_header_data.h"
#include "map_object.h"
#include "map_object_move.h"
#include "math.h"
#include "menu.h"
#include "message.h"
#include "message_util.h"
#include "party.h"
#include "player_avatar.h"
#include "poffin.h"
#include "pokedex.h"
#include "pokemon.h"
#include "pokemon_storage_system_manager.h"
#include "pokeradar.h"
#include "poketch.h"
#include "render_window.h"
#include "roaming_pokemon.h"
#include "rtc.h"
#include "save_player.h"
#include "savedata.h"
#include "scrcmd_dummy_23F_242.h"
#include "scrcmd_jubilife_lottery.h"
#include "scrcmd_shop.h"
#include "scrcmd_system_flags.h"
#include "script_manager.h"
#include "special_encounter.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "system_data.h"
#include "system_flags.h"
#include "system_vars.h"
#include "text.h"
#include "trainer_data.h"
#include "trainer_info.h"
#include "unk_020041CC.h"
#include "unk_0200F174.h"
#include "unk_02014D38.h"
#include "unk_020261E4.h"
#include "unk_02028124.h"
#include "unk_0202854C.h"
#include "unk_020298BC.h"
#include "unk_0202ACE0.h"
#include "unk_0202C9F4.h"
#include "unk_0202DF8C.h"
#include "unk_02033200.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_02038FFC.h"
#include "unk_020393C8.h"
#include "unk_0203D1B8.h"
#include "unk_02046C7C.h"
#include "unk_020474B8.h"
#include "unk_020482D4.h"
#include "unk_02048614.h"
#include "unk_02048BD0.h"
#include "unk_02048DD8.h"
#include "unk_020494DC.h"
#include "unk_0204AEE8.h"
#include "unk_0204B64C.h"
#include "unk_0204B830.h"
#include "unk_0204C500.h"
#include "unk_0204C6C8.h"
#include "unk_0204C8F0.h"
#include "unk_0204CA84.h"
#include "unk_0204CDDC.h"
#include "unk_0204CFFC.h"
#include "unk_0204E240.h"
#include "unk_0204E378.h"
#include "unk_0204E75C.h"
#include "unk_0204E974.h"
#include "unk_0204EDA4.h"
#include "unk_0204F04C.h"
#include "unk_0204F13C.h"
#include "unk_0204FAB4.h"
#include "unk_0205003C.h"
#include "unk_02050568.h"
#include "unk_020528D0.h"
#include "unk_02052C6C.h"
#include "unk_020553DC.h"
#include "unk_020559DC.h"
#include "unk_0205749C.h"
#include "unk_0205B33C.h"
#include "unk_0205C22C.h"
#include "unk_0205C980.h"
#include "unk_0205DFC4.h"
#include "unk_020655F4.h"
#include "unk_02069BE0.h"
#include "unk_0206B70C.h"
#include "unk_0206C660.h"
#include "unk_0206C784.h"
#include "unk_0206CCB0.h"
#include "unk_0206F314.h"
#include "unk_02070428.h"
#include "unk_0207160C.h"
#include "unk_02071B10.h"
#include "unk_02071CD0.h"
#include "unk_02071D40.h"
#include "unk_020722AC.h"
#include "unk_0207DA28.h"
#include "unk_02096420.h"
#include "unk_02097B18.h"
#include "unk_020985E4.h"
#include "unk_02099500.h"
#include "unk_02099604.h"
#include "unk_0209ACF4.h"
#include "unk_0209B344.h"
#include "unk_0209C194.h"
#include "vars_flags.h"

#include "constdata/const_020EAB80.h"
#include "constdata/const_020EAC58.h"
#include "constdata/const_020F8BE0.h"

typedef struct {
    SysTask *unk_00;
    SysTask *unk_04;
    MapObjectAnimCmd *unk_08;
    FieldSystem *fieldSystem;
} UnkStruct_02040F28;

static BOOL ScrCmd_Noop(ScriptContext *ctx);
static BOOL ScrCmd_Dummy(ScriptContext *ctx);
static BOOL ScrCmd_End(ScriptContext *ctx);
static BOOL ScrCmd_WaitTime(ScriptContext *ctx);
static BOOL ScriptContext_DecrementTimer(ScriptContext *ctx);
static BOOL ScrCmd_004(ScriptContext *ctx);
static BOOL ScrCmd_005(ScriptContext *ctx);
static BOOL ScrCmd_006(ScriptContext *ctx);
static BOOL ScrCmd_007(ScriptContext *ctx);
static BOOL ScrCmd_008(ScriptContext *ctx);
static BOOL ScrCmd_009(ScriptContext *ctx);
static BOOL ScrCmd_00A(ScriptContext *ctx);
static u32 Compare(u16 value0, u16 value1);
static BOOL ScrCmd_00B(ScriptContext *ctx);
static BOOL ScrCmd_00C(ScriptContext *ctx);
static BOOL ScrCmd_00D(ScriptContext *ctx);
static BOOL ScrCmd_00E(ScriptContext *ctx);
static BOOL ScrCmd_00F(ScriptContext *ctx);
static BOOL ScrCmd_010(ScriptContext *ctx);
static BOOL ScrCmd_CompareVarToValue(ScriptContext *ctx);
static BOOL ScrCmd_CompareVarToVar(ScriptContext *ctx);
static BOOL ScrCmd_013(ScriptContext *ctx);
static BOOL ScrCmd_CallCommonScript(ScriptContext *ctx);
static BOOL ScriptContext_WaitSubContext(ScriptContext *ctx);
static BOOL ScrCmd_ReturnCommonScript(ScriptContext *ctx);
static BOOL ScrCmd_GoTo(ScriptContext *ctx);
static MapObject *sub_02040ED4(FieldSystem *fieldSystem, int param1);
static BOOL ScrCmd_017(ScriptContext *ctx);
static BOOL ScrCmd_018(ScriptContext *ctx);
static BOOL ScrCmd_019(ScriptContext *ctx);
static BOOL ScrCmd_Call(ScriptContext *ctx);
static BOOL ScrCmd_Return(ScriptContext *ctx);
static BOOL ScrCmd_GoToIf(ScriptContext *ctx);
static BOOL ScrCmd_CallIf(ScriptContext *ctx);
static BOOL ScrCmd_SetFlag(ScriptContext *ctx);
static BOOL ScrCmd_ClearFlag(ScriptContext *ctx);
static BOOL ScrCmd_CheckFlag(ScriptContext *ctx);
static BOOL ScrCmd_CheckFlagFromVar(ScriptContext *ctx);
static BOOL ScrCmd_SetFlagFromVar(ScriptContext *ctx);
static BOOL ScrCmd_SetTrainerFlag(ScriptContext *ctx);
static BOOL ScrCmd_ClearTrainerFlag(ScriptContext *ctx);
static BOOL ScrCmd_CheckTrainerFlag(ScriptContext *ctx);
static BOOL ScrCmd_AddVar(ScriptContext *ctx);
static BOOL ScrCmd_SubVar(ScriptContext *ctx);
static BOOL ScrCmd_SetVarFromValue(ScriptContext *ctx);
static BOOL ScrCmd_SetVarFromVar(ScriptContext *ctx);
static BOOL ScrCmd_02A(ScriptContext *ctx);
static BOOL ScrCmd_MessageInstant(ScriptContext *ctx);
static BOOL ScrCmd_1FA(ScriptContext *ctx);
static BOOL ScrCmd_1FB(ScriptContext *ctx);
static BOOL ScrCmd_1FC(ScriptContext *ctx);
static BOOL ScrCmd_1FD(ScriptContext *ctx);
static BOOL ScrCmd_1FE(ScriptContext *ctx);
static BOOL ScrCmd_1FF(ScriptContext *ctx);
static BOOL ScrCmd_26D(ScriptContext *ctx);
static BOOL ScrCmd_Message(ScriptContext *ctx);
static BOOL ScrCmd_MessageVar(ScriptContext *ctx);
static BOOL ScrCmd_2C0(ScriptContext *ctx);
static BOOL ScrCmd_02E(ScriptContext *ctx);
static BOOL ScrCmd_02F(ScriptContext *ctx);
static BOOL sub_02040014(ScriptContext *ctx);
static BOOL ScrCmd_WaitABPress(ScriptContext *ctx);
static BOOL ScriptContext_CheckABPress(ScriptContext *ctx);
static BOOL ScrCmd_WaitABXPadPress(ScriptContext *ctx);
static BOOL ScriptContext_CheckABXPadPress(ScriptContext *ctx);
static BOOL ScrCmd_WaitABPadPress(ScriptContext *ctx);
static BOOL ScriptContext_CheckABPadPress(ScriptContext *ctx);
static BOOL ScrCmd_OpenMessage(ScriptContext *ctx);
static BOOL ScrCmd_CloseMessage(ScriptContext *ctx);
static BOOL ScrCmd_035(ScriptContext *ctx);
static BOOL ScrCmd_DrawSignpostInstantMessage(ScriptContext *ctx);
static BOOL ScrCmd_DrawSignpostTextBox(ScriptContext *ctx);
static BOOL ScrCmd_SetSignpostCommand(ScriptContext *ctx);
static BOOL ScrCmd_WaitForSignpostDone(ScriptContext *ctx);
static BOOL WaitForSignpostDone(ScriptContext *ctx);
static BOOL ScrCmd_DrawSignpostScrollingMessage(ScriptContext *ctx);
static BOOL WaitScrollingSignpostInput(ScriptContext *ctx);
static BOOL ScrCmd_GetSignpostInput(ScriptContext *ctx);
static BOOL HandleSignpostInput(ScriptContext *ctx);
static BOOL ScrCmd_ShowStartMenu(ScriptContext *ctx);
static BOOL ScriptContext_ScrollBG3(ScriptContext *ctx);
static BOOL ScrCmd_ScrollBG3(ScriptContext *ctx);
static BOOL ScrCmd_ShowYesNoMenu(ScriptContext *ctx);
static BOOL ScriptContext_WaitForYesNoResult(ScriptContext *ctx);
static BOOL ScrCmd_040(ScriptContext *ctx);
static BOOL ScrCmd_041(ScriptContext *ctx);
static BOOL ScrCmd_042(ScriptContext *ctx);
static BOOL ScrCmd_29D(ScriptContext *ctx);
static BOOL ScrCmd_043(ScriptContext *ctx);
static BOOL sub_02040A50(ScriptContext *ctx);
static BOOL ScrCmd_044(ScriptContext *ctx);
static BOOL ScrCmd_045(ScriptContext *ctx);
static BOOL ScrCmd_046(ScriptContext *ctx);
static BOOL ScrCmd_047(ScriptContext *ctx);
static BOOL ScrCmd_327(ScriptContext *ctx);
static BOOL ScrCmd_306(ScriptContext *ctx);
static BOOL ScrCmd_048(ScriptContext *ctx);
static BOOL ScrCmd_ApplyMovement(ScriptContext *ctx);
static BOOL ScrCmd_WaitMovement(ScriptContext *ctx);
static BOOL ScrCmd_LockAll(ScriptContext *ctx);
static BOOL sub_020410CC(ScriptContext *ctx);
static BOOL ScrCmd_ReleaseAll(ScriptContext *ctx);
static BOOL ScrCmd_062(ScriptContext *ctx);
static BOOL ScrCmd_063(ScriptContext *ctx);
static BOOL ScrCmd_AddObject(ScriptContext *ctx);
static BOOL ScrCmd_RemoveObject(ScriptContext *ctx);
static BOOL ScrCmd_066(ScriptContext *ctx);
static BOOL ScrCmd_067(ScriptContext *ctx);
static BOOL ScrCmd_308(ScriptContext *ctx);
static BOOL ScrCmd_309(ScriptContext *ctx);
static BOOL ScrCmd_FacePlayer(ScriptContext *ctx);
static BOOL ScrCmd_GetPlayerMapPos(ScriptContext *ctx);
static BOOL ScrCmd_06A(ScriptContext *ctx);
static BOOL ScrCmd_GetPlayerDir(ScriptContext *ctx);
static BOOL ScrCmd_06B(ScriptContext *ctx);
static BOOL ScrCmd_06C(ScriptContext *ctx);
static BOOL ScrCmd_06D(ScriptContext *ctx);
static BOOL ScrCmd_2AD(ScriptContext *ctx);
static BOOL ScrCmd_06E(ScriptContext *ctx);
static BOOL ScrCmd_093(ScriptContext *ctx);
static BOOL ScrCmd_094(ScriptContext *ctx);
static BOOL ScrCmd_095(ScriptContext *ctx);
static BOOL ScrCmd_09B(ScriptContext *ctx);
static BOOL ScrCmd_315(ScriptContext *ctx);
static BOOL ScrCmd_09C(ScriptContext *ctx);
static BOOL ScrCmd_09D(ScriptContext *ctx);
static BOOL ScrCmd_09E(ScriptContext *ctx);
static BOOL ScrCmd_09F(ScriptContext *ctx);
static BOOL ScrCmd_ReturnToField(ScriptContext *ctx);
static BOOL ScrCmd_1F8(ScriptContext *ctx);
static BOOL ScrCmd_0A2(ScriptContext *ctx);
static BOOL ScrCmd_0A3(ScriptContext *ctx);
static BOOL ScrCmd_0A4(ScriptContext *ctx);
static BOOL ScrCmd_207(ScriptContext *ctx);
static BOOL ScrCmd_DrawPokemonPreview(ScriptContext *ctx);
static void FieldSystem_WriteSpeciesSeen(FieldSystem *fieldSystem, u16 param1);
static BOOL ScrCmd_209(ScriptContext *ctx);
static BOOL ScrCmd_20A(ScriptContext *ctx);
static BOOL ScrCmd_20B(ScriptContext *ctx);
static BOOL ScrCmd_0A5(ScriptContext *ctx);
static BOOL ScrCmd_30E(ScriptContext *ctx);
static BOOL ScrCmd_0A6(ScriptContext *ctx);
static BOOL ScrCmd_0A7(ScriptContext *ctx);
static BOOL ScrCmd_0A8(ScriptContext *ctx);
static BOOL ScrCmd_12E(ScriptContext *ctx);
static BOOL ScrCmd_12F(ScriptContext *ctx);
static BOOL ScrCmd_130(ScriptContext *ctx);
static BOOL ScrCmd_OpenSealCapsuleEditor(ScriptContext *ctx);
static BOOL ScrCmd_0AA(ScriptContext *ctx);
static BOOL ScrCmd_1D7(ScriptContext *ctx);
static BOOL ScrCmd_1D8(ScriptContext *ctx);
static BOOL ScrCmd_1D9(ScriptContext *ctx);
static BOOL ScrCmd_0AB(ScriptContext *ctx);
static BOOL ScrCmd_0AC(ScriptContext *ctx);
static BOOL ScrCmd_0AD(ScriptContext *ctx);
static BOOL ScrCmd_0AE(ScriptContext *ctx);
static BOOL ScrCmd_0AF(ScriptContext *ctx);
static BOOL ScrCmd_0B0(ScriptContext *ctx);
static BOOL ScrCmd_0B1(ScriptContext *ctx);
static BOOL ScrCmd_336(ScriptContext *ctx);
static BOOL ScrCmd_0B2(ScriptContext *ctx);
static BOOL ScrCmd_0B3(ScriptContext *ctx);
static BOOL ScrCmd_StartChooseStarterScene(ScriptContext *ctx);
static BOOL ScrCmd_SaveChosenStarter(ScriptContext *ctx);
static BOOL ScrCmd_0BA(ScriptContext *ctx);
static BOOL ScrCmd_0BB(ScriptContext *ctx);
static BOOL ScrCmd_271(ScriptContext *ctx);
static BOOL ScrCmd_FadeScreen(ScriptContext *ctx);
static BOOL ScrCmd_WaitFadeScreen(ScriptContext *ctx);
static BOOL ScriptContext_ScreenWipeDone(ScriptContext *ctx);
static BOOL ScrCmd_Warp(ScriptContext *ctx);
static BOOL ScrCmd_0BF(ScriptContext *ctx);
static BOOL ScrCmd_0C0(ScriptContext *ctx);
static BOOL ScrCmd_0C1(ScriptContext *ctx);
static BOOL ScrCmd_0C2(ScriptContext *ctx);
static BOOL ScrCmd_0C3(ScriptContext *ctx);
static BOOL ScrCmd_0C4(ScriptContext *ctx);
static BOOL ScrCmd_0C5(ScriptContext *ctx);
static BOOL sub_02042C80(ScriptContext *ctx);
static BOOL ScrCmd_0C6(ScriptContext *ctx);
static BOOL ScrCmd_CheckPlayerOnBike(ScriptContext *ctx);
static BOOL ScrCmd_SetPlayerBike(ScriptContext *ctx);
static BOOL ScrCmd_0C9(ScriptContext *ctx);
static BOOL ScrCmd_GetPlayerState(ScriptContext *ctx);
static BOOL ScrCmd_SetPlayerState(ScriptContext *ctx);
static BOOL ScrCmd_ChangePlayerState(ScriptContext *ctx);
static BOOL ScrCmd_GetPlayerStarterSpecies(ScriptContext *ctx);
static BOOL ScrCmd_GetSwarmMapAndSpecies(ScriptContext *ctx);
static BOOL ScrCmd_0E6(ScriptContext *ctx);
static BOOL ScrCmd_0F2(ScriptContext *ctx);
static BOOL sub_02042F74(ScriptContext *ctx);
static BOOL ScrCmd_0F3(ScriptContext *ctx);
static BOOL sub_0204300C(ScriptContext *ctx);
static BOOL ScrCmd_0F4(ScriptContext *ctx);
static BOOL ScrCmd_0F5(ScriptContext *ctx);
static BOOL ScrCmd_StartLinkBattle(ScriptContext *ctx);
static BOOL ScrCmd_0F7(ScriptContext *ctx);
static BOOL ScrCmd_11B(ScriptContext *ctx);
static BOOL ScrCmd_11C(ScriptContext *ctx);
static BOOL ScrCmd_11D(ScriptContext *ctx);
static BOOL ScrCmd_11E(ScriptContext *ctx);
static BOOL ScrCmd_11F(ScriptContext *ctx);
static BOOL ScrCmd_120(ScriptContext *ctx);
static BOOL ScrCmd_121(ScriptContext *ctx);
static BOOL ScrCmd_122(ScriptContext *ctx);
static BOOL ScrCmd_123(ScriptContext *ctx);
static BOOL ScrCmd_StartWildBattle(ScriptContext *ctx);
static BOOL ScrCmd_StartLegendaryBattle(ScriptContext *ctx);
static BOOL ScrCmd_StartFatefulEncounter(ScriptContext *ctx);
static BOOL ScrCmd_StartFirstBattle(ScriptContext *ctx);
static BOOL ScrCmd_StartCatchingTutorial(ScriptContext *ctx);
static BOOL ScrCmd_SlatherHoneyTree(ScriptContext *ctx);
static BOOL ScrCmd_GetHoneyTreeStatus(ScriptContext *ctx);
static BOOL ScrCmd_StartHoneyTreeBattle(ScriptContext *ctx);
static BOOL ScrCmd_12A(ScriptContext *ctx);
static BOOL ScrCmd_12B(ScriptContext *ctx);
static BOOL ScrCmd_CheckSaveType(ScriptContext *ctx);
static BOOL ScrCmd_12D(ScriptContext *ctx);
static BOOL ScrCmd_131(ScriptContext *ctx);
static BOOL ScrCmd_132(ScriptContext *ctx);
static BOOL ScrCmd_RegisterPoketchApp(ScriptContext *ctx);
static BOOL ScrCmd_CheckPoketchAppRegistered(ScriptContext *ctx);
static BOOL ScrCmd_135(ScriptContext *ctx);
static BOOL sub_02043678(ScriptContext *ctx);
static BOOL ScrCmd_136(ScriptContext *ctx);
static BOOL ScrCmd_137(ScriptContext *ctx);
static BOOL ScrCmd_138(ScriptContext *ctx);
static BOOL ScrCmd_139(ScriptContext *ctx);
static BOOL ScrCmd_13B(ScriptContext *ctx);
static BOOL ScrCmd_13A(ScriptContext *ctx);
static BOOL ScrCmd_13C(ScriptContext *ctx);
static BOOL ScrCmd_13D(ScriptContext *ctx);
static BOOL ScrCmd_13E(ScriptContext *ctx);
static BOOL sub_020437E8(ScriptContext *ctx);
static BOOL ScrCmd_13F(ScriptContext *ctx);
static BOOL ScrCmd_140(ScriptContext *ctx);
static BOOL ScrCmd_146(ScriptContext *ctx);
static BOOL ScrCmd_141(ScriptContext *ctx);
static BOOL sub_02043938(ScriptContext *ctx);
static BOOL ScrCmd_142(ScriptContext *ctx);
static BOOL ScrCmd_143(ScriptContext *ctx);
static BOOL ScrCmd_144(ScriptContext *ctx);
static BOOL sub_020439F4(ScriptContext *ctx);
static BOOL ScrCmd_145(ScriptContext *ctx);
static BOOL sub_02043A4C(ScriptContext *ctx);
static BOOL ScrCmd_153(ScriptContext *ctx);
static BOOL ScrCmd_154(ScriptContext *ctx);
static BOOL ScrCmd_155(ScriptContext *ctx);
static BOOL ScrCmd_29C(ScriptContext *ctx);
static BOOL ScrCmd_156(ScriptContext *ctx);
static BOOL ScrCmd_2BA(ScriptContext *ctx);
static BOOL ScrCmd_14B(ScriptContext *ctx);
static BOOL ScrCmd_14C(ScriptContext *ctx);
static BOOL ScrCmd_GetPlayerGender(ScriptContext *ctx);
static BOOL ScrCmd_HealParty(ScriptContext *ctx);
static BOOL ScrCmd_14F(ScriptContext *ctx);
static BOOL ScrCmd_150(ScriptContext *ctx);
static BOOL sub_02043C70(ScriptContext *ctx);
static BOOL ScrCmd_151(ScriptContext *ctx);
static BOOL ScrCmd_152(ScriptContext *ctx);
static BOOL ScrCmd_SetObjectEventPos(ScriptContext *ctx);
static BOOL ScrCmd_187(ScriptContext *ctx);
static BOOL ScrCmd_188(ScriptContext *ctx);
static BOOL ScrCmd_189(ScriptContext *ctx);
static BOOL ScrCmd_SetWarpEventPos(ScriptContext *ctx);
static BOOL ScrCmd_18B(ScriptContext *ctx);
static BOOL ScrCmd_18C(ScriptContext *ctx);
static BOOL ScrCmd_18F(ScriptContext *ctx);
static BOOL ScrCmd_168(ScriptContext *ctx);
static BOOL ScrCmd_169(ScriptContext *ctx);
static BOOL ScrCmd_16A(ScriptContext *ctx);
static BOOL ScrCmd_16B(ScriptContext *ctx);
static BOOL ScrCmd_16C(ScriptContext *ctx);
static BOOL ScrCmd_16F(ScriptContext *ctx);
static BOOL ScrCmd_170(ScriptContext *ctx);
static BOOL ScrCmd_171(ScriptContext *ctx);
static BOOL ScrCmd_172(ScriptContext *ctx);
static BOOL ScrCmd_173(ScriptContext *ctx);
static BOOL ScrCmd_174(ScriptContext *ctx);
static BOOL ScrCmd_175(ScriptContext *ctx);
static BOOL ScrCmd_176(ScriptContext *ctx);
static BOOL ScrCmd_2C9(ScriptContext *ctx);
static BOOL ScrCmd_2F0(ScriptContext *ctx);
static BOOL ScrCmd_2F2(ScriptContext *ctx);
static BOOL ScrCmd_GetPlayer3DPos(ScriptContext *ctx);
static BOOL ScrCmd_178(ScriptContext *ctx);
static BOOL ScrCmd_179(ScriptContext *ctx);
static BOOL ScrCmd_17A(ScriptContext *ctx);
static BOOL ScrCmd_18D(ScriptContext *ctx);
static BOOL ScrCmd_18E(ScriptContext *ctx);
static BOOL ScrCmd_WaitABPressTime(ScriptContext *ctx);
static BOOL ScriptContext_DecrementABPressTimer(ScriptContext *ctx);
static BOOL ScrCmd_191(ScriptContext *ctx);
static BOOL ScrCmd_193(ScriptContext *ctx);
static BOOL ScrCmd_2D0(ScriptContext *ctx);
static BOOL ScrCmd_2D4(ScriptContext *ctx);
static BOOL ScrCmd_2DB(ScriptContext *ctx);
static BOOL ScrCmd_2A5(ScriptContext *ctx);
static BOOL ScrCmd_196(ScriptContext *ctx);
static BOOL ScrCmd_197(ScriptContext *ctx);
static BOOL ScrCmd_2E7(ScriptContext *ctx);
static BOOL ScrCmd_2E8(ScriptContext *ctx);
static BOOL ScrCmd_19E(ScriptContext *ctx);
static BOOL sub_020441C8(ScriptContext *ctx);
static BOOL ScrCmd_19F(ScriptContext *ctx);
static BOOL sub_02044240(ScriptContext *ctx);
static BOOL ScrCmd_1A0(ScriptContext *ctx);
static BOOL ScrCmd_1A1(ScriptContext *ctx);
static BOOL ScrCmd_1A2(ScriptContext *ctx);
static BOOL ScrCmd_03F(ScriptContext *ctx);
static BOOL ScrCmd_1AC(ScriptContext *ctx);
static BOOL ScrCmd_1B1(ScriptContext *ctx);
static BOOL ScrCmd_1B2(ScriptContext *ctx);
static BOOL ScrCmd_1B3(ScriptContext *ctx);
static BOOL ScrCmd_1B4(ScriptContext *ctx);
static BOOL ScrCmd_1B5(ScriptContext *ctx);
static BOOL ScrCmd_GetTimeOfDay(ScriptContext *ctx);
static BOOL ScrCmd_1B7(ScriptContext *ctx);
static BOOL ScrCmd_1B8(ScriptContext *ctx);
static BOOL ScrCmd_1C1(ScriptContext *ctx);
static BOOL ScrCmd_1C2(ScriptContext *ctx);
static BOOL ScrCmd_1C3(ScriptContext *ctx);
static BOOL ScrCmd_1C4(ScriptContext *ctx);
static BOOL ScrCmd_InitSizeContestRecord(ScriptContext *ctx);
static BOOL ScrCmd_GiveJournal(ScriptContext *ctx);
static BOOL ScrCmd_CreateJournalEvent(ScriptContext *ctx);
static BOOL ScrCmd_1CE(ScriptContext *ctx);
static BOOL ScrCmd_1D2(ScriptContext *ctx);
static BOOL ScrCmd_1D3(ScriptContext *ctx);
static BOOL ScrCmd_1D4(ScriptContext *ctx);
static BOOL ScrCmd_1D5(ScriptContext *ctx);
static BOOL ScrCmd_1D6(ScriptContext *ctx);
static BOOL ScrCmd_192(ScriptContext *ctx);
static BOOL ScrCmd_194(ScriptContext *ctx);
static BOOL ScrCmd_195(ScriptContext *ctx);
static BOOL ScrCmd_1E8(ScriptContext *ctx);
static BOOL ScrCmd_1E9(ScriptContext *ctx);
static BOOL ScrCmd_1EA(ScriptContext *ctx);
static BOOL ScrCmd_1EB(ScriptContext *ctx);
static BOOL ScrCmd_AddTrophyGardenMon(ScriptContext *ctx);
static BOOL ScrCmd_GetTrophyGardenSlot1Species(ScriptContext *ctx);
static BOOL ScrCmd_1EF(ScriptContext *ctx);
static BOOL ScrCmd_IncrementGameRecord(ScriptContext *ctx);
static BOOL ScrCmd_1E6(ScriptContext *ctx);
static BOOL ScrCmd_1E7(ScriptContext *ctx);
static BOOL ScrCmd_334(ScriptContext *ctx);
static BOOL ScrCmd_335(ScriptContext *ctx);
static BOOL ScrCmd_Dummy1F9(ScriptContext *ctx);
static BOOL ScrCmd_GetPreviousMapID(ScriptContext *ctx);
static BOOL ScrCmd_GetCurrentMapID(ScriptContext *ctx);
static BOOL ScrCmd_202(ScriptContext *ctx);
static BOOL ScrCmd_203(ScriptContext *ctx);
static BOOL ScrCmd_204(ScriptContext *ctx);
static BOOL ScrCmd_205(ScriptContext *ctx);
static BOOL ScrCmd_310(ScriptContext *ctx);
static BOOL ScrCmd_StartGreatMarshLookout(ScriptContext *ctx);
static BOOL ScrCmd_20C(ScriptContext *ctx);
static BOOL ScrCmd_20D(ScriptContext *ctx);
static BOOL ScrCmd_20E(ScriptContext *ctx);
static BOOL ScrCmd_20F(ScriptContext *ctx);
static BOOL ScrCmd_210(ScriptContext *ctx);
static BOOL ScrCmd_211(ScriptContext *ctx);
static BOOL ScrCmd_GetSpiritombCounter(ScriptContext *ctx);
static BOOL ScrCmd_ClearSpiritombCounter(ScriptContext *ctx);
static BOOL ScrCmd_218(ScriptContext *ctx);
static BOOL ScrCmd_SetNewsPressDeadline(ScriptContext *ctx);
static BOOL ScrCmd_GetNewsPressDeadline(ScriptContext *ctx);
static BOOL ScrCmd_EnableSwarms(ScriptContext *ctx);
static BOOL ScrCmd_ActivateRoamingPokemon(ScriptContext *ctx);
static BOOL ScrCmd_StartNpcTrade(ScriptContext *ctx);
static BOOL ScrCmd_GetNpcTradeSpecies(ScriptContext *ctx);
static BOOL ScrCmd_GetNpcTradeRequestedSpecies(ScriptContext *ctx);
static BOOL ScrCmd_229(ScriptContext *ctx);
static BOOL ScrCmd_FinishNpcTrade(ScriptContext *ctx);
static BOOL ScrCmd_22B(ScriptContext *ctx);
static BOOL ScrCmd_22C(ScriptContext *ctx);
static BOOL ScrCmd_22D(ScriptContext *ctx);
static BOOL ScrCmd_233(ScriptContext *ctx);
static BOOL ScrCmd_GetDayOfWeek(ScriptContext *ctx);
static BOOL ScrCmd_239(ScriptContext *ctx);
static BOOL ScrCmd_23A(ScriptContext *ctx);
static BOOL ScrCmd_23B(ScriptContext *ctx);
static BOOL ScrCmd_23C(ScriptContext *ctx);
static BOOL ScrCmd_23D(ScriptContext *ctx);
static BOOL ScrCmd_243(ScriptContext *ctx);
static BOOL ScrCmd_244(ScriptContext *ctx);
static BOOL ScrCmd_245(ScriptContext *ctx);
static BOOL ScrCmd_246(ScriptContext *ctx);
static BOOL ScrCmd_249(ScriptContext *ctx);
static BOOL ScrCmd_24A(ScriptContext *ctx);
static BOOL ScrCmd_24B(ScriptContext *ctx);
static BOOL ScrCmd_24C(ScriptContext *ctx);
static BOOL ScrCmd_24D(ScriptContext *ctx);
static BOOL ScrCmd_252(ScriptContext *ctx);
static BOOL ScrCmd_258(ScriptContext *ctx);
static BOOL ScrCmd_259(ScriptContext *ctx);
static BOOL ScrCmd_25A(ScriptContext *ctx);
static BOOL ScrCmd_25B(ScriptContext *ctx);
static BOOL ScrCmd_25C(ScriptContext *ctx);
static BOOL ScrCmd_25D(ScriptContext *ctx);
static BOOL ScrCmd_25E(ScriptContext *ctx);
static BOOL ScrCmd_25F(ScriptContext *ctx);
static BOOL ScrCmd_260(ScriptContext *ctx);
static BOOL ScrCmd_262(ScriptContext *ctx);
static BOOL ScrCmd_263(ScriptContext *ctx);
static BOOL ScrCmd_264(ScriptContext *ctx);
static BOOL ScrCmd_HidePoketch(ScriptContext *ctx);
static BOOL ScrCmd_ShowPoketch(ScriptContext *ctx);
static BOOL ScrCmd_267(ScriptContext *ctx);
static BOOL ScrCmd_268(ScriptContext *ctx);
static BOOL ScrCmd_269(ScriptContext *ctx);
static BOOL ScrCmd_26A(ScriptContext *ctx);
static BOOL ScrCmd_26B(ScriptContext *ctx);
static BOOL ScrCmd_26C(ScriptContext *ctx);
static BOOL ScrCmd_GetGBACartridgeVersion(ScriptContext *ctx);
static BOOL ScrCmd_SetHiddenLocation(ScriptContext *ctx);
static BOOL ScrCmd_273(ScriptContext *ctx);
static BOOL ScrCmd_CheckBonusRoundStreak(ScriptContext *ctx);
static BOOL ScrCmd_GetDailyRandomLevel(ScriptContext *ctx);
static BOOL ScrCmd_279(ScriptContext *ctx);
static BOOL ScrCmd_27A(ScriptContext *ctx);
static BOOL ScrCmd_InitDailyRandomLevel(ScriptContext *ctx);
static BOOL ScrCmd_27D(ScriptContext *ctx);
static BOOL ScrCmd_CheckIsDepartmentStoreRegular(ScriptContext *ctx);
static BOOL ScrCmd_27F(ScriptContext *ctx);
static BOOL ScrCmd_282(ScriptContext *ctx);
static BOOL ScrCmd_284(ScriptContext *ctx);
static BOOL ScrCmd_285(ScriptContext *ctx);
static BOOL ScrCmd_GetUndergroundItemsGivenAway(ScriptContext *ctx);
static BOOL ScrCmd_GetUndergroundFossilsUnearthed(ScriptContext *ctx);
static BOOL ScrCmd_GetUndergroundTrapsSet(ScriptContext *ctx);
static BOOL ScrCmd_289(ScriptContext *ctx);
static BOOL ScrCmd_28A(ScriptContext *ctx);
static BOOL ScrCmd_307(ScriptContext *ctx);
static BOOL ScrCmd_CheckDistributionEvent(ScriptContext *ctx);
static BOOL ScrCmd_DrawPokemonPreviewFromPartySlot(ScriptContext *ctx);
static BOOL ScrCmd_28D(ScriptContext *ctx);
static BOOL ScrCmd_28E(ScriptContext *ctx);
static BOOL sub_02041FF8(ScriptContext *ctx);
static BOOL ScrCmd_28F(ScriptContext *ctx);
static BOOL ScrCmd_292(ScriptContext *ctx);
static BOOL ScrCmd_290(ScriptContext *ctx);
static BOOL ScrCmd_291(ScriptContext *ctx);
static BOOL ScrCmd_29E(ScriptContext *ctx);
static BOOL ScrCmd_GetUndergroundTalkCounter(ScriptContext *ctx);
static BOOL ScrCmd_29F(ScriptContext *ctx);
static BOOL ScrCmd_2A1(ScriptContext *ctx);
static BOOL ScrCmd_2A2(ScriptContext *ctx);
static BOOL ScrCmd_2A3(ScriptContext *ctx);
static BOOL ScrCmd_2A4(ScriptContext *ctx);
static BOOL ScrCmd_2A7(ScriptContext *ctx);
static BOOL ScrCmd_2AA(ScriptContext *ctx);
static BOOL ScrCmd_2AB(ScriptContext *ctx);
static BOOL ScrCmd_2AC(ScriptContext *ctx);
static BOOL ScrCmd_2AF(ScriptContext *ctx);
static BOOL ScrCmd_2B0(ScriptContext *ctx);
static BOOL ScrCmd_2B1(ScriptContext *ctx);
static BOOL ScrCmd_2B2(ScriptContext *ctx);
static BOOL ScrCmd_LockLastTalked(ScriptContext *ctx);
static BOOL ScrCmd_2B5(ScriptContext *ctx);
static BOOL ScrCmd_2B6(ScriptContext *ctx);
static BOOL sub_02040A9C(ScriptContext *ctx);
static BOOL ScrCmd_2B9(ScriptContext *ctx);
static BOOL ScrCmd_2BB(ScriptContext *ctx);
static BOOL ScrCmd_2BE(ScriptContext *ctx);
static BOOL ScrCmd_2BF(ScriptContext *ctx);
static BOOL ScrCmd_2C1(ScriptContext *ctx);
static BOOL ScrCmd_2C2(ScriptContext *ctx);
static BOOL ScrCmd_2C3(ScriptContext *ctx);
static BOOL ScrCmd_33A(ScriptContext *ctx);
static BOOL ScrCmd_33B(ScriptContext *ctx);
static BOOL ScrCmd_2C4(ScriptContext *ctx);
static BOOL ScrCmd_2C6(ScriptContext *ctx);
static BOOL ScrCmd_2C7(ScriptContext *ctx);
static BOOL ScrCmd_2CA(ScriptContext *ctx);
static BOOL ScrCmd_2CD(ScriptContext *ctx);
static BOOL ScrCmd_2CE(ScriptContext *ctx);
static BOOL ScrCmd_2D6(ScriptContext *ctx);
static BOOL ScrCmd_2D7(ScriptContext *ctx);
static BOOL ScrCmd_PokeMartFrontier(ScriptContext *ctx);
BOOL ScrCmd_2C8(ScriptContext *ctx);
BOOL ScrCmd_2E2(ScriptContext *ctx);
BOOL ScrCmd_2E3(ScriptContext *ctx);
BOOL ScrCmd_2E4(ScriptContext *ctx);
BOOL ScrCmd_2F4(ScriptContext *ctx);
static u8 sub_02046524(u16 param0, u16 param1, u16 param2, u16 param3);
static u8 sub_02046568(u16 param0, u16 param1, u16 param2, u16 param3);
static BOOL ScrCmd_2F6(ScriptContext *ctx);
static BOOL ScrCmd_2F7(ScriptContext *ctx);
static BOOL ScrCmd_2FB(ScriptContext *ctx);
static BOOL ScrCmd_2FC(ScriptContext *ctx);
static BOOL ScrCmd_302(ScriptContext *ctx);
static BOOL ScrCmd_30A(ScriptContext *ctx);
static BOOL ScrCmd_311(ScriptContext *ctx);
static BOOL ScrCmd_312(ScriptContext *ctx);
static BOOL ScrCmd_31F(ScriptContext *ctx);
static BOOL ScrCmd_313(ScriptContext *ctx);
static BOOL ScrCmd_StartGiratinaOriginBattle(ScriptContext *ctx);
static BOOL ScrCmd_WriteSpeciesSeen(ScriptContext *ctx);
static BOOL ScrCmd_320(ScriptContext *ctx);
static BOOL ScrCmd_321(ScriptContext *ctx);
static BOOL ScrCmd_322(ScriptContext *ctx);
static BOOL ScrCmd_323(ScriptContext *ctx);
static BOOL ScrCmd_328(ScriptContext *ctx);
static BOOL ScrCmd_32B(ScriptContext *ctx);
static BOOL sub_02040F0C(ScriptContext *ctx);
static void sub_02040F28(FieldSystem *fieldSystem, SysTask *param1, MapObjectAnimCmd *param2);
static void sub_02040F5C(SysTask *param0, void *param1);
static u32 sub_0204676C(SaveData *param0);

static const u8 sConditionTable[6][3] = {
    //   <     ==      >
    { TRUE, FALSE, FALSE }, //  <
    { FALSE, TRUE, FALSE }, //  ==
    { FALSE, FALSE, TRUE }, //  >
    { TRUE, TRUE, FALSE }, //  <=
    { FALSE, TRUE, TRUE }, //  >=
    { TRUE, FALSE, TRUE }, //  !=
};

static const WindowTemplate Unk_020EAB84 = {
    0x3,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x21F
};

const ScrCmdFunc Unk_020EAC58[] = {
    ScrCmd_Noop,
    ScrCmd_Dummy,
    ScrCmd_End,
    ScrCmd_WaitTime,
    ScrCmd_004,
    ScrCmd_005,
    ScrCmd_006,
    ScrCmd_007,
    ScrCmd_008,
    ScrCmd_009,
    ScrCmd_00A,
    ScrCmd_00B,
    ScrCmd_00C,
    ScrCmd_00D,
    ScrCmd_00E,
    ScrCmd_00F,
    ScrCmd_010,
    ScrCmd_CompareVarToValue,
    ScrCmd_CompareVarToVar,
    ScrCmd_013,
    ScrCmd_CallCommonScript,
    ScrCmd_ReturnCommonScript,
    ScrCmd_GoTo,
    ScrCmd_017,
    ScrCmd_018,
    ScrCmd_019,
    ScrCmd_Call,
    ScrCmd_Return,
    ScrCmd_GoToIf,
    ScrCmd_CallIf,
    ScrCmd_SetFlag,
    ScrCmd_ClearFlag,
    ScrCmd_CheckFlag,
    ScrCmd_CheckFlagFromVar,
    ScrCmd_SetFlagFromVar,
    ScrCmd_SetTrainerFlag,
    ScrCmd_ClearTrainerFlag,
    ScrCmd_CheckTrainerFlag,
    ScrCmd_AddVar,
    ScrCmd_SubVar,
    ScrCmd_SetVarFromValue,
    ScrCmd_SetVarFromVar,
    ScrCmd_02A,
    ScrCmd_MessageInstant,
    ScrCmd_Message,
    ScrCmd_MessageVar,
    ScrCmd_02E,
    ScrCmd_02F,
    ScrCmd_WaitABPress,
    ScrCmd_WaitABXPadPress,
    ScrCmd_WaitABPadPress,
    ScrCmd_OpenMessage,
    ScrCmd_CloseMessage,
    ScrCmd_035,
    ScrCmd_DrawSignpostInstantMessage,
    ScrCmd_DrawSignpostTextBox,
    ScrCmd_SetSignpostCommand,
    ScrCmd_WaitForSignpostDone,
    ScrCmd_DrawSignpostScrollingMessage,
    ScrCmd_GetSignpostInput,
    ScrCmd_ShowStartMenu,
    ScrCmd_ScrollBG3,
    ScrCmd_ShowYesNoMenu,
    ScrCmd_03F,
    ScrCmd_040,
    ScrCmd_041,
    ScrCmd_042,
    ScrCmd_043,
    ScrCmd_044,
    ScrCmd_045,
    ScrCmd_046,
    ScrCmd_047,
    ScrCmd_048,
    ScrCmd_PlayFanfare,
    ScrCmd_04A,
    ScrCmd_WaitFanfare,
    ScrCmd_PlayCry,
    ScrCmd_04D,
    ScrCmd_PlaySound,
    ScrCmd_WaitSound,
    ScrCmd_PlayMusic,
    ScrCmd_StopMusic,
    ScrCmd_PlayDefaultMusic,
    ScrCmd_053,
    ScrCmd_FadeOutMusic,
    ScrCmd_055,
    ScrCmd_056,
    ScrCmd_057,
    ScrCmd_058,
    ScrCmd_059,
    ScrCmd_05A,
    ScrCmd_05B,
    ScrCmd_05C,
    ScrCmd_05D,
    ScrCmd_ApplyMovement,
    ScrCmd_WaitMovement,
    ScrCmd_LockAll,
    ScrCmd_ReleaseAll,
    ScrCmd_062,
    ScrCmd_063,
    ScrCmd_AddObject,
    ScrCmd_RemoveObject,
    ScrCmd_066,
    ScrCmd_067,
    ScrCmd_FacePlayer,
    ScrCmd_GetPlayerMapPos,
    ScrCmd_06A,
    ScrCmd_06B,
    ScrCmd_06C,
    ScrCmd_06D,
    ScrCmd_06E,
    ScrCmd_06F,
    ScrCmd_070,
    ScrCmd_071,
    ScrCmd_072,
    ScrCmd_073,
    ScrCmd_074,
    ScrCmd_075,
    ScrCmd_076,
    ScrCmd_077,
    ScrCmd_078,
    ScrCmd_079,
    ScrCmd_07A,
    ScrCmd_AddItem,
    ScrCmd_RemoveItem,
    ScrCmd_07D,
    ScrCmd_CheckItem,
    ScrCmd_07F,
    ScrCmd_GetItemPocket,
    ScrCmd_081,
    ScrCmd_082,
    ScrCmd_083,
    ScrCmd_084,
    ScrCmd_085,
    ScrCmd_086,
    ScrCmd_087,
    ScrCmd_088,
    ScrCmd_089,
    ScrCmd_08A,
    ScrCmd_08B,
    ScrCmd_08C,
    ScrCmd_08D,
    ScrCmd_08E,
    ScrCmd_08F,
    ScrCmd_090,
    ScrCmd_091,
    ScrCmd_092,
    ScrCmd_093,
    ScrCmd_094,
    ScrCmd_095,
    ScrCmd_GivePokemon,
    ScrCmd_GiveEgg,
    ScrCmd_098,
    ScrCmd_099,
    ScrCmd_09A,
    ScrCmd_09B,
    ScrCmd_09C,
    ScrCmd_09D,
    ScrCmd_09E,
    ScrCmd_09F,
    ScrCmd_0A0,
    ScrCmd_ReturnToField,
    ScrCmd_0A2,
    ScrCmd_0A3,
    ScrCmd_0A4,
    ScrCmd_0A5,
    ScrCmd_0A6,
    ScrCmd_0A7,
    ScrCmd_0A8,
    ScrCmd_OpenSealCapsuleEditor,
    ScrCmd_0AA,
    ScrCmd_0AB,
    ScrCmd_0AC,
    ScrCmd_0AD,
    ScrCmd_0AE,
    ScrCmd_0AF,
    ScrCmd_0B0,
    ScrCmd_0B1,
    ScrCmd_0B2,
    ScrCmd_0B3,
    ScrCmd_StartChooseStarterScene,
    ScrCmd_SaveChosenStarter,
    ScrCmd_0B6,
    ScrCmd_0B7,
    ScrCmd_0B8,
    ScrCmd_0B9,
    ScrCmd_0BA,
    ScrCmd_0BB,
    ScrCmd_FadeScreen,
    ScrCmd_WaitFadeScreen,
    ScrCmd_Warp,
    ScrCmd_0BF,
    ScrCmd_0C0,
    ScrCmd_0C1,
    ScrCmd_0C2,
    ScrCmd_0C3,
    ScrCmd_0C4,
    ScrCmd_0C5,
    ScrCmd_0C6,
    ScrCmd_CheckPlayerOnBike,
    ScrCmd_SetPlayerBike,
    ScrCmd_0C9,
    ScrCmd_GetPlayerState,
    ScrCmd_SetPlayerState,
    ScrCmd_ChangePlayerState,
    ScrCmd_BufferPlayerName,
    ScrCmd_BufferRivalName,
    ScrCmd_BufferCounterpartName,
    ScrCmd_BufferPartyMonSpecies,
    ScrCmd_BufferItemName,
    ScrCmd_BufferPocketName,
    ScrCmd_BufferTMHMMoveName,
    ScrCmd_BufferMoveName,
    ScrCmd_BufferNumber,
    ScrCmd_BufferPartyMonNickname,
    ScrCmd_BufferPoketchAppName,
    ScrCmd_0D8,
    ScrCmd_0D9,
    ScrCmd_BufferSpeciesNameFromVar,
    ScrCmd_BufferPlayerStarterSpeciesName,
    ScrCmd_BufferRivalStarterSpeciesName,
    ScrCmd_BufferPlayerCounterpartStarterSpeciesName,
    ScrCmd_GetPlayerStarterSpecies,
    ScrCmd_BufferUndergroundGoodsName,
    ScrCmd_BufferUndergroundTrapName,
    ScrCmd_BufferUndergroundItemName,
    ScrCmd_0E2,
    ScrCmd_GetSwarmMapAndSpecies,
    ScrCmd_0E4,
    ScrCmd_StartTrainerBattle,
    ScrCmd_0E6,
    ScrCmd_0E7,
    ScrCmd_0E8,
    ScrCmd_0E9,
    ScrCmd_0EA,
    ScrCmd_BlackOutFromBattle,
    ScrCmd_CheckWonBattle,
    ScrCmd_CheckLostBattle,
    ScrCmd_CheckHasTwoAliveMons,
    ScrCmd_StartDummyTrainerBattle,
    ScrCmd_0F0,
    ScrCmd_0F1,
    ScrCmd_0F2,
    ScrCmd_0F3,
    ScrCmd_0F4,
    ScrCmd_0F5,
    ScrCmd_StartLinkBattle,
    ScrCmd_0F7,
    ScrCmd_0F8,
    ScrCmd_0F9,
    ScrCmd_0FA,
    ScrCmd_0FB,
    ScrCmd_0FC,
    ScrCmd_0FD,
    ScrCmd_0FE,
    ScrCmd_0FF,
    ScrCmd_100,
    ScrCmd_101,
    ScrCmd_102,
    ScrCmd_103,
    ScrCmd_104,
    ScrCmd_105,
    ScrCmd_106,
    ScrCmd_107,
    ScrCmd_108,
    ScrCmd_109,
    ScrCmd_10A,
    ScrCmd_10B,
    ScrCmd_10C,
    ScrCmd_10D,
    ScrCmd_10E,
    ScrCmd_10F,
    ScrCmd_110,
    ScrCmd_111,
    ScrCmd_112,
    ScrCmd_113,
    ScrCmd_114,
    ScrCmd_115,
    ScrCmd_116,
    ScrCmd_117,
    ScrCmd_118,
    ScrCmd_CheckPartyPokerus,
    ScrCmd_11A,
    ScrCmd_11B,
    ScrCmd_11C,
    ScrCmd_11D,
    ScrCmd_11E,
    ScrCmd_11F,
    ScrCmd_120,
    ScrCmd_121,
    ScrCmd_122,
    ScrCmd_123,
    ScrCmd_StartWildBattle,
    ScrCmd_StartFirstBattle,
    ScrCmd_StartCatchingTutorial,
    ScrCmd_SlatherHoneyTree,
    ScrCmd_GetHoneyTreeStatus,
    ScrCmd_StartHoneyTreeBattle,
    ScrCmd_12A,
    ScrCmd_12B,
    ScrCmd_CheckSaveType,
    ScrCmd_12D,
    ScrCmd_12E,
    ScrCmd_12F,
    ScrCmd_130,
    ScrCmd_131,
    ScrCmd_132,
    ScrCmd_RegisterPoketchApp,
    ScrCmd_CheckPoketchAppRegistered,
    ScrCmd_135,
    ScrCmd_136,
    ScrCmd_137,
    ScrCmd_138,
    ScrCmd_139,
    ScrCmd_13A,
    ScrCmd_13B,
    ScrCmd_13C,
    ScrCmd_13D,
    ScrCmd_13E,
    ScrCmd_13F,
    ScrCmd_140,
    ScrCmd_141,
    ScrCmd_142,
    ScrCmd_143,
    ScrCmd_144,
    ScrCmd_145,
    ScrCmd_146,
    ScrCmd_PokeMartCommon,
    ScrCmd_PokeMartSpecialties,
    ScrCmd_PokeMartDecor,
    ScrCmd_PokeMartSeal,
    ScrCmd_14B,
    ScrCmd_14C,
    ScrCmd_GetPlayerGender,
    ScrCmd_HealParty,
    ScrCmd_14F,
    ScrCmd_150,
    ScrCmd_151,
    ScrCmd_152,
    ScrCmd_153,
    ScrCmd_154,
    ScrCmd_155,
    ScrCmd_156,
    ScrCmd_CheckPokedexAcquired,
    ScrCmd_GivePokedex,
    ScrCmd_CheckRunningShoesAcquired,
    ScrCmd_GiveRunningShoes,
    ScrCmd_CheckBadgeAcquired,
    ScrCmd_GiveBadge,
    ScrCmd_CountBadgesAcquired,
    ScrCmd_CheckBagAcquired,
    ScrCmd_GiveBag,
    ScrCmd_CheckHasPartner,
    ScrCmd_SetHasPartner,
    ScrCmd_ClearHasPartner,
    ScrCmd_CheckStepFlag,
    ScrCmd_SetStepFlag,
    ScrCmd_ClearStepFlag,
    ScrCmd_CheckGameCompleted,
    ScrCmd_SetGameCompleted,
    ScrCmd_168,
    ScrCmd_169,
    ScrCmd_16A,
    ScrCmd_16B,
    ScrCmd_16C,
    ScrCmd_16D,
    ScrCmd_16E,
    ScrCmd_16F,
    ScrCmd_170,
    ScrCmd_171,
    ScrCmd_172,
    ScrCmd_173,
    ScrCmd_174,
    ScrCmd_175,
    ScrCmd_176,
    ScrCmd_GetPartyCount,
    ScrCmd_178,
    ScrCmd_179,
    ScrCmd_17A,
    ScrCmd_17B,
    ScrCmd_17C,
    ScrCmd_17D,
    ScrCmd_17E,
    ScrCmd_17F,
    ScrCmd_180,
    ScrCmd_181,
    ScrCmd_182,
    ScrCmd_183,
    ScrCmd_184,
    ScrCmd_185,
    ScrCmd_SetObjectEventPos,
    ScrCmd_187,
    ScrCmd_188,
    ScrCmd_189,
    ScrCmd_SetWarpEventPos,
    ScrCmd_18B,
    ScrCmd_18C,
    ScrCmd_18D,
    ScrCmd_18E,
    ScrCmd_18F,
    ScrCmd_WaitABPressTime,
    ScrCmd_191,
    ScrCmd_192,
    ScrCmd_193,
    ScrCmd_194,
    ScrCmd_195,
    ScrCmd_196,
    ScrCmd_197,
    ScrCmd_198,
    ScrCmd_199,
    ScrCmd_GetPartyCountHatched,
    ScrCmd_CountAliveMonsExcept,
    ScrCmd_19C,
    ScrCmd_19D,
    ScrCmd_19E,
    ScrCmd_19F,
    ScrCmd_1A0,
    ScrCmd_1A1,
    ScrCmd_1A2,
    ScrCmd_1A3,
    ScrCmd_1A4,
    ScrCmd_1A5,
    ScrCmd_1A6,
    ScrCmd_1A7,
    ScrCmd_1A8,
    ScrCmd_1A9,
    ScrCmd_1AA,
    ScrCmd_1AB,
    ScrCmd_1AC,
    ScrCmd_Dummy1AD,
    ScrCmd_1AE,
    ScrCmd_1AF,
    ScrCmd_1B0,
    ScrCmd_1B1,
    ScrCmd_1B2,
    ScrCmd_1B3,
    ScrCmd_1B4,
    ScrCmd_1B5,
    ScrCmd_GetTimeOfDay,
    ScrCmd_1B7,
    ScrCmd_1B8,
    ScrCmd_1B9,
    ScrCmd_1BA,
    ScrCmd_1BB,
    ScrCmd_1BC,
    ScrCmd_GetPlayerDir,
    ScrCmd_1BE,
    ScrCmd_1BF,
    ScrCmd_1C0,
    ScrCmd_1C1,
    ScrCmd_1C2,
    ScrCmd_1C3,
    ScrCmd_1C4,
    ScrCmd_InitSizeContestRecord,
    ScrCmd_SelectPartyMonMove,
    ScrCmd_GetSelectedPartyMonMove,
    ScrCmd_1C8,
    ScrCmd_1C9,
    ScrCmd_1CA,
    ScrCmd_1CB,
    ScrCmd_GiveJournal,
    ScrCmd_CreateJournalEvent,
    ScrCmd_1CE,
    ScrCmd_Strength,
    ScrCmd_Flash,
    ScrCmd_Defog,
    ScrCmd_1D2,
    ScrCmd_1D3,
    ScrCmd_1D4,
    ScrCmd_1D5,
    ScrCmd_1D6,
    ScrCmd_1D7,
    ScrCmd_1D8,
    ScrCmd_1D9,
    ScrCmd_1DA,
    ScrCmd_1DB,
    ScrCmd_1DC,
    ScrCmd_1DD,
    ScrCmd_1DE,
    ScrCmd_1DF,
    ScrCmd_1E0,
    ScrCmd_1E1,
    ScrCmd_1E2,
    ScrCmd_1E3,
    ScrCmd_1E4,
    ScrCmd_IncrementGameRecord,
    ScrCmd_1E6,
    ScrCmd_1E7,
    ScrCmd_1E8,
    ScrCmd_1E9,
    ScrCmd_1EA,
    ScrCmd_1EB,
    ScrCmd_AddTrophyGardenMon,
    ScrCmd_GetTrophyGardenSlot1Species,
    ScrCmd_1EE,
    ScrCmd_1EF,
    ScrCmd_1F0,
    ScrCmd_1F1,
    ScrCmd_1F2,
    ScrCmd_1F3,
    ScrCmd_1F4,
    ScrCmd_1F5,
    ScrCmd_1F6,
    ScrCmd_SurvivePoison,
    ScrCmd_1F8,
    ScrCmd_Dummy1F9,
    ScrCmd_1FA,
    ScrCmd_1FB,
    ScrCmd_1FC,
    ScrCmd_1FD,
    ScrCmd_1FE,
    ScrCmd_1FF,
    ScrCmd_GetPreviousMapID,
    ScrCmd_GetCurrentMapID,
    ScrCmd_202,
    ScrCmd_203,
    ScrCmd_204,
    ScrCmd_205,
    ScrCmd_StartGreatMarshLookout,
    ScrCmd_207,
    ScrCmd_DrawPokemonPreview,
    ScrCmd_209,
    ScrCmd_20A,
    ScrCmd_20B,
    ScrCmd_20C,
    ScrCmd_20D,
    ScrCmd_20E,
    ScrCmd_20F,
    ScrCmd_210,
    ScrCmd_211,
    ScrCmd_212,
    ScrCmd_213,
    ScrCmd_GetSpiritombCounter,
    ScrCmd_ClearAmitySquareStepCount,
    ScrCmd_GetAmitySquareStepCount,
    ScrCmd_217,
    ScrCmd_218,
    ScrCmd_SetNewsPressDeadline,
    ScrCmd_GetNewsPressDeadline,
    ScrCmd_EnableSwarms,
    ScrCmd_ActivateRoamingPokemon,
    ScrCmd_21D,
    ScrCmd_Dummy21E,
    ScrCmd_21F,
    ScrCmd_220,
    ScrCmd_221,
    ScrCmd_222,
    ScrCmd_223,
    ScrCmd_224,
    ScrCmd_225,
    ScrCmd_StartNpcTrade,
    ScrCmd_GetNpcTradeSpecies,
    ScrCmd_GetNpcTradeRequestedSpecies,
    ScrCmd_229,
    ScrCmd_FinishNpcTrade,
    ScrCmd_22B,
    ScrCmd_22C,
    ScrCmd_22D,
    ScrCmd_22E,
    ScrCmd_22F,
    ScrCmd_230,
    ScrCmd_231,
    ScrCmd_232,
    ScrCmd_233,
    ScrCmd_GetDayOfWeek,
    ScrCmd_235,
    ScrCmd_236,
    ScrCmd_237,
    ScrCmd_238,
    ScrCmd_239,
    ScrCmd_23A,
    ScrCmd_23B,
    ScrCmd_23C,
    ScrCmd_23D,
    ScrCmd_23E,
    ScrCmd_Dummy23F,
    ScrCmd_Dummy240,
    ScrCmd_Dummy241,
    ScrCmd_Dummy242,
    ScrCmd_243,
    ScrCmd_244,
    ScrCmd_245,
    ScrCmd_246,
    ScrCmd_247,
    ScrCmd_248,
    ScrCmd_249,
    ScrCmd_24A,
    ScrCmd_24B,
    ScrCmd_24C,
    ScrCmd_24D,
    ScrCmd_GetJubilifeLotteryTrainerID,
    ScrCmd_CheckForJubilifeLotteryWinner,
    ScrCmd_RandomizeJubilifeLottery,
    ScrCmd_251,
    ScrCmd_252,
    ScrCmd_253,
    ScrCmd_254,
    ScrCmd_255,
    ScrCmd_CalcCatchingShowPoints,
    ScrCmd_ShowAccessoryShop,
    ScrCmd_258,
    ScrCmd_259,
    ScrCmd_25A,
    ScrCmd_25B,
    ScrCmd_25C,
    ScrCmd_25D,
    ScrCmd_25E,
    ScrCmd_25F,
    ScrCmd_260,
    ScrCmd_261,
    ScrCmd_262,
    ScrCmd_263,
    ScrCmd_264,
    ScrCmd_HidePoketch,
    ScrCmd_ShowPoketch,
    ScrCmd_267,
    ScrCmd_268,
    ScrCmd_269,
    ScrCmd_26A,
    ScrCmd_26B,
    ScrCmd_26C,
    ScrCmd_26D,
    ScrCmd_GetGBACartridgeVersion,
    ScrCmd_ClearSpiritombCounter,
    ScrCmd_SetHiddenLocation,
    ScrCmd_271,
    ScrCmd_272,
    ScrCmd_273,
    ScrCmd_274,
    ScrCmd_CheckBonusRoundStreak,
    ScrCmd_276,
    ScrCmd_GetDailyRandomLevel,
    ScrCmd_278,
    ScrCmd_279,
    ScrCmd_27A,
    ScrCmd_InitDailyRandomLevel,
    ScrCmd_27C,
    ScrCmd_27D,
    ScrCmd_CheckIsDepartmentStoreRegular,
    ScrCmd_27F,
    ScrCmd_280,
    ScrCmd_281,
    ScrCmd_282,
    ScrCmd_283,
    ScrCmd_284,
    ScrCmd_285,
    ScrCmd_GetUndergroundItemsGivenAway,
    ScrCmd_GetUndergroundFossilsUnearthed,
    ScrCmd_GetUndergroundTrapsSet,
    ScrCmd_289,
    ScrCmd_28A,
    ScrCmd_CheckDistributionEvent,
    ScrCmd_DrawPokemonPreviewFromPartySlot,
    ScrCmd_28D,
    ScrCmd_28E,
    ScrCmd_28F,
    ScrCmd_290,
    ScrCmd_291,
    ScrCmd_292,
    ScrCmd_GetUndergroundTalkCounter,
    ScrCmd_294,
    ScrCmd_295,
    ScrCmd_296,
    ScrCmd_297,
    ScrCmd_298,
    ScrCmd_299,
    ScrCmd_29A,
    ScrCmd_29B,
    ScrCmd_29C,
    ScrCmd_29D,
    ScrCmd_29E,
    ScrCmd_29F,
    ScrCmd_StartTagBattle,
    ScrCmd_2A1,
    ScrCmd_2A2,
    ScrCmd_2A3,
    ScrCmd_2A4,
    ScrCmd_2A5,
    ScrCmd_2A6,
    ScrCmd_2A7,
    ScrCmd_2A8,
    ScrCmd_2A9,
    ScrCmd_2AA,
    ScrCmd_2AB,
    ScrCmd_2AC,
    ScrCmd_2AD,
    ScrCmd_2AE,
    ScrCmd_2AF,
    ScrCmd_2B0,
    ScrCmd_2B1,
    ScrCmd_2B2,
    ScrCmd_2B3,
    ScrCmd_LockLastTalked,
    ScrCmd_2B5,
    ScrCmd_2B6,
    ScrCmd_2B7,
    ScrCmd_2B8,
    ScrCmd_2B9,
    ScrCmd_2BA,
    ScrCmd_2BB,
    ScrCmd_CheckDidNotCapture,
    ScrCmd_StartLegendaryBattle,
    ScrCmd_2BE,
    ScrCmd_2BF,
    ScrCmd_2C0,
    ScrCmd_2C1,
    ScrCmd_2C2,
    ScrCmd_2C3,
    ScrCmd_2C4,
    ScrCmd_2C5,
    ScrCmd_2C6,
    ScrCmd_2C7,
    ScrCmd_2C8,
    ScrCmd_2C9,
    ScrCmd_2CA,
    ScrCmd_2CB,
    ScrCmd_2CC,
    ScrCmd_2CD,
    ScrCmd_2CE,
    ScrCmd_2CF,
    ScrCmd_2D0,
    ScrCmd_2D1,
    ScrCmd_2D2,
    ScrCmd_2D3,
    ScrCmd_2D4,
    ScrCmd_2D5,
    ScrCmd_2D6,
    ScrCmd_2D7,
    ScrCmd_PokeMartFrontier,
    ScrCmd_2D9,
    ScrCmd_2DA,
    ScrCmd_2DB,
    ScrCmd_2DC,
    ScrCmd_2DD,
    ScrCmd_2DE,
    ScrCmd_2DF,
    ScrCmd_2E0,
    ScrCmd_2E1,
    ScrCmd_2E2,
    ScrCmd_2E3,
    ScrCmd_2E4,
    ScrCmd_CheckHasLearnableTutorMoves,
    ScrCmd_ShowMoveTutorMoveSelectionMenu,
    ScrCmd_2E7,
    ScrCmd_2E8,
    ScrCmd_ResetMoveSlot,
    ScrCmd_CheckCanAffordMove,
    ScrCmd_PayShardsCost,
    ScrCmd_ShowShardsCost,
    ScrCmd_CloseShardCostWindow,
    ScrCmd_JudgeStats,
    ScrCmd_2EF,
    ScrCmd_2F0,
    ScrCmd_2F1,
    ScrCmd_2F2,
    ScrCmd_2F3,
    ScrCmd_2F4,
    ScrCmd_2F5,
    ScrCmd_2F6,
    ScrCmd_2F7,
    ScrCmd_2F8,
    ScrCmd_2F9,
    ScrCmd_2FA,
    ScrCmd_2FB,
    ScrCmd_2FC,
    ScrCmd_2FD,
    ScrCmd_2FE,
    ScrCmd_2FF,
    ScrCmd_300,
    ScrCmd_301,
    ScrCmd_302,
    ScrCmd_303,
    ScrCmd_304,
    ScrCmd_305,
    ScrCmd_306,
    ScrCmd_307,
    ScrCmd_308,
    ScrCmd_309,
    ScrCmd_30A,
    ScrCmd_30B,
    ScrCmd_30C,
    ScrCmd_30D,
    ScrCmd_30E,
    ScrCmd_30F,
    ScrCmd_310,
    ScrCmd_311,
    ScrCmd_312,
    ScrCmd_313,
    ScrCmd_314,
    ScrCmd_315,
    ScrCmd_316,
    ScrCmd_GetPlayer3DPos,
    ScrCmd_StartFatefulEncounter,
    ScrCmd_StartGiratinaOriginBattle,
    ScrCmd_WriteSpeciesSeen,
    ScrCmd_31B,
    ScrCmd_31C,
    ScrCmd_31D,
    ScrCmd_31E,
    ScrCmd_31F,
    ScrCmd_320,
    ScrCmd_321,
    ScrCmd_322,
    ScrCmd_323,
    ScrCmd_324,
    ScrCmd_325,
    ScrCmd_326,
    ScrCmd_327,
    ScrCmd_328,
    ScrCmd_329,
    ScrCmd_32A,
    ScrCmd_32B,
    ScrCmd_32C,
    ScrCmd_32D,
    ScrCmd_32E,
    ScrCmd_32F,
    ScrCmd_330,
    ScrCmd_331,
    ScrCmd_332,
    ScrCmd_333,
    ScrCmd_334,
    ScrCmd_335,
    ScrCmd_336,
    ScrCmd_CheckHasSeenSpecies,
    ScrCmd_338,
    ScrCmd_339,
    ScrCmd_33A,
    ScrCmd_33B,
    ScrCmd_33C,
    ScrCmd_33D,
    ScrCmd_33E,
    ScrCmd_33F,
    ScrCmd_340,
    ScrCmd_341,
    ScrCmd_BufferPlayerCounterpartStarterSpeciesNameWithArticle,
    ScrCmd_343,
    ScrCmd_344,
    ScrCmd_345,
    ScrCmd_346,
    ScrCmd_347,
};

const u32 Unk_020EAB80 = NELEMS(Unk_020EAC58);

static BOOL ScrCmd_Noop(ScriptContext *ctx)
{
    return FALSE;
}

static BOOL ScrCmd_Dummy(ScriptContext *ctx)
{
    return FALSE;
}

static BOOL ScrCmd_End(ScriptContext *ctx)
{
    ScriptContext_Stop(ctx);
    return FALSE;
}

static BOOL ScrCmd_WaitTime(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 frames = ScriptContext_ReadHalfWord(ctx);
    u16 countdownVarID = ScriptContext_ReadHalfWord(ctx);
    u16 *countdownVar = FieldSystem_GetVarPointer(fieldSystem, countdownVarID);

    *countdownVar = frames;

    ctx->data[0] = countdownVarID;

    ScriptContext_Pause(ctx, ScriptContext_DecrementTimer);
    return TRUE;
}

static BOOL ScriptContext_DecrementTimer(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *frames = FieldSystem_GetVarPointer(fieldSystem, ctx->data[0]);

    (*frames)--;

    return *frames == 0;
}

static BOOL ScrCmd_Dummy1F9(ScriptContext *ctx)
{
    u16 dummy = ScriptContext_GetVar(ctx);
    return FALSE;
}

static BOOL ScrCmd_004(ScriptContext *ctx)
{
    u8 v0 = ScriptContext_ReadByte(ctx);

    ctx->data[v0] = ScriptContext_ReadByte(ctx);
    return 0;
}

static BOOL ScrCmd_005(ScriptContext *ctx)
{
    u8 v0;
    u32 v1;

    v0 = ScriptContext_ReadByte(ctx);
    v1 = ScriptContext_ReadWord(ctx);
    ctx->data[v0] = v1;

    return 0;
}

static BOOL ScrCmd_006(ScriptContext *ctx)
{
    u8 v0;
    u8 *v1;

    v0 = ScriptContext_ReadByte(ctx);
    v1 = (u8 *)ScriptContext_ReadWord(ctx);
    ctx->data[v0] = *v1;

    return 0;
}

static BOOL ScrCmd_007(ScriptContext *ctx)
{
    u8 *v0;
    u8 v1;

    v0 = (u8 *)ScriptContext_ReadWord(ctx);
    v1 = ScriptContext_ReadByte(ctx);
    *v0 = v1;

    return 0;
}

static BOOL ScrCmd_008(ScriptContext *ctx)
{
    u8 *v0;
    u8 v1;

    v0 = (u8 *)ScriptContext_ReadWord(ctx);
    v1 = ScriptContext_ReadByte(ctx);
    *v0 = ctx->data[v1];

    return 0;
}

static BOOL ScrCmd_009(ScriptContext *ctx)
{
    u8 v0 = ScriptContext_ReadByte(ctx);
    u8 v1 = ScriptContext_ReadByte(ctx);
    ctx->data[v0] = ctx->data[v1];

    return 0;
}

static BOOL ScrCmd_00A(ScriptContext *ctx)
{
    u8 *v0;
    u8 *v1;

    v0 = (u8 *)ScriptContext_ReadWord(ctx);
    v1 = (u8 *)ScriptContext_ReadWord(ctx);
    *v0 = *v1;

    return 0;
}

static u32 Compare(u16 value0, u16 value1)
{
    if (value0 < value1) {
        return 0;
    } else if (value0 == value1) {
        return 1;
    } else {
        return 2;
    }
}

static BOOL ScrCmd_00B(ScriptContext *ctx)
{
    u8 v0 = ctx->data[ScriptContext_ReadByte(ctx)];
    u8 v1 = ctx->data[ScriptContext_ReadByte(ctx)];
    ctx->comparisonResult = Compare(v0, v1);

    return 0;
}

static BOOL ScrCmd_00C(ScriptContext *ctx)
{
    u8 v0 = ctx->data[ScriptContext_ReadByte(ctx)];
    u8 v1 = ScriptContext_ReadByte(ctx);
    ctx->comparisonResult = Compare(v0, v1);

    return 0;
}

static BOOL ScrCmd_00D(ScriptContext *ctx)
{
    u8 v0 = ctx->data[ScriptContext_ReadByte(ctx)];
    u8 v1 = *(u8 *)ScriptContext_ReadWord(ctx);
    ctx->comparisonResult = Compare(v0, v1);

    return 0;
}

static BOOL ScrCmd_00E(ScriptContext *ctx)
{
    u8 v0 = *(u8 *)ScriptContext_ReadWord(ctx);
    u8 v1 = ctx->data[ScriptContext_ReadByte(ctx)];
    ctx->comparisonResult = Compare(v0, v1);

    return 0;
}

static BOOL ScrCmd_00F(ScriptContext *ctx)
{
    u8 v0 = *(u8 *)ScriptContext_ReadWord(ctx);
    u8 v1 = ScriptContext_ReadByte(ctx);
    ctx->comparisonResult = Compare(v0, v1);

    return 0;
}

static BOOL ScrCmd_010(ScriptContext *ctx)
{
    u8 v0 = *(u8 *)ScriptContext_ReadWord(ctx);
    u8 v1 = *(u8 *)ScriptContext_ReadWord(ctx);
    ctx->comparisonResult = Compare(v0, v1);

    return 0;
}

static BOOL ScrCmd_CompareVarToValue(ScriptContext *ctx)
{
    u16 value0 = *ScriptContext_GetVarPointer(ctx);
    u16 value1 = ScriptContext_ReadHalfWord(ctx);
    ctx->comparisonResult = Compare(value0, value1);
    return FALSE;
}

static BOOL ScrCmd_CompareVarToVar(ScriptContext *ctx)
{
    u16 *var0 = ScriptContext_GetVarPointer(ctx);
    u16 *var1 = ScriptContext_GetVarPointer(ctx);
    ctx->comparisonResult = Compare(*var0, *var1);
    return FALSE;
}

static BOOL ScrCmd_013(ScriptContext *ctx)
{
    u16 v0;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 *v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_NUM_ACTIVE_CONTEXTS);
    ScriptContext **v3 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_SUB_CONTEXT);

    v0 = ScriptContext_ReadHalfWord(ctx);
    *v3 = ScriptContext_CreateAndStart(fieldSystem, v0);
    (*v2)++;

    return 1;
}

static BOOL ScrCmd_CallCommonScript(ScriptContext *ctx)
{
    u16 scriptID;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 *subCtxActive = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_SUB_CONTEXT_ACTIVE);
    u8 *numActiveContexts = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_NUM_ACTIVE_CONTEXTS);
    ScriptContext **commonScriptCtx = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_SUB_CONTEXT);

    scriptID = ScriptContext_ReadHalfWord(ctx);
    *subCtxActive = TRUE;
    *commonScriptCtx = ScriptContext_CreateAndStart(fieldSystem, scriptID);
    (*numActiveContexts)++;

    ScriptContext_Pause(ctx, ScriptContext_WaitSubContext);
    return TRUE;
}

static BOOL ScriptContext_WaitSubContext(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 *subCtxActive = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_SUB_CONTEXT_ACTIVE);
    return *subCtxActive == FALSE;
}

static BOOL ScrCmd_ReturnCommonScript(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 *subCtxActive = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_SUB_CONTEXT_ACTIVE);
    *subCtxActive = FALSE;
    return FALSE;
}

static BOOL ScrCmd_GoTo(ScriptContext *ctx)
{
    ScriptContext_Jump(ctx, ctx->scriptPtr + ScriptContext_ReadWord(ctx));
    return FALSE;
}

static BOOL ScrCmd_017(ScriptContext *ctx)
{
    u8 v0;
    s32 v1;
    MapObject **v2;
    FieldSystem *fieldSystem = ctx->fieldSystem;

    v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    v0 = ScriptContext_ReadByte(ctx);
    v1 = (s32)ScriptContext_ReadWord(ctx);

    if (MapObject_GetLocalID(*v2) == v0) {
        ScriptContext_Jump(ctx, (u8 *)(ctx->scriptPtr + v1));
    }

    return 0;
}

static BOOL ScrCmd_018(ScriptContext *ctx)
{
    u32 taskVal = FieldTask_GetDummy1CVal(ctx->task);
    u8 val = ScriptContext_ReadByte(ctx);
    s32 offset = (s32)ScriptContext_ReadWord(ctx);

    if (taskVal == val) {
        ScriptContext_Jump(ctx, (u8 *)(ctx->scriptPtr + offset));
    }

    return FALSE;
}

static BOOL ScrCmd_019(ScriptContext *ctx)
{
    u8 v0;
    s32 v1;
    int *v2;
    FieldSystem *fieldSystem = ctx->fieldSystem;

    v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_PLAYER_DIR);
    v0 = ScriptContext_ReadByte(ctx);
    v1 = (s32)ScriptContext_ReadWord(ctx);

    if (*v2 == v0) {
        ScriptContext_Jump(ctx, (u8 *)(ctx->scriptPtr + v1));
    }

    return 0;
}

static BOOL ScrCmd_Call(ScriptContext *ctx)
{
    ScriptContext_Call(ctx, ctx->scriptPtr + ScriptContext_ReadWord(ctx));
    return FALSE;
}

static BOOL ScrCmd_Return(ScriptContext *ctx)
{
    ScriptContext_Return(ctx);
    return FALSE;
}

static BOOL ScrCmd_GoToIf(ScriptContext *ctx)
{
    u8 condition = ScriptContext_ReadByte(ctx);
    s32 offset = ScriptContext_ReadWord(ctx);
    if (sConditionTable[condition][ctx->comparisonResult] == TRUE) {
        ScriptContext_Jump(ctx, ctx->scriptPtr + offset);
    }
    return FALSE;
}

static BOOL ScrCmd_CallIf(ScriptContext *ctx)
{
    u8 condition = ScriptContext_ReadByte(ctx);
    s32 offset = ScriptContext_ReadWord(ctx);
    if (sConditionTable[condition][ctx->comparisonResult] == TRUE) {
        ScriptContext_Call(ctx, ctx->scriptPtr + offset);
    }
    return FALSE;
}

static BOOL ScrCmd_SetFlag(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 flagID = ScriptContext_ReadHalfWord(ctx);
    FieldSystem_SetFlag(fieldSystem, flagID);
    return FALSE;
}

static BOOL ScrCmd_ClearFlag(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 flagID = ScriptContext_ReadHalfWord(ctx);
    FieldSystem_ClearFlag(fieldSystem, flagID);
    return FALSE;
}

static BOOL ScrCmd_CheckFlag(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 flagID = ScriptContext_ReadHalfWord(ctx);
    ctx->comparisonResult = FieldSystem_CheckFlag(fieldSystem, flagID);
    return FALSE;
}

static BOOL ScrCmd_CheckFlagFromVar(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *flagID = ScriptContext_GetVarPointer(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = FieldSystem_CheckFlag(fieldSystem, (*flagID));
    return FALSE;
}

static BOOL ScrCmd_SetFlagFromVar(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 flagID = *ScriptContext_GetVarPointer(ctx);
    FieldSystem_SetFlag(fieldSystem, flagID);
    return FALSE;
}

static BOOL ScrCmd_SetTrainerFlag(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 trainerID = ScriptContext_GetVar(ctx);
    Script_SetTrainerDefeated(fieldSystem, trainerID);
    return FALSE;
}

static BOOL ScrCmd_ClearTrainerFlag(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 trainerID = ScriptContext_GetVar(ctx);
    Script_ClearTrainerDefeated(fieldSystem, trainerID);
    return FALSE;
}

static BOOL ScrCmd_CheckTrainerFlag(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 trainerID = ScriptContext_GetVar(ctx);
    ctx->comparisonResult = Script_IsTrainerDefeated(fieldSystem, trainerID);
    return FALSE;
}

static BOOL ScrCmd_AddVar(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar += ScriptContext_GetVar(ctx);
    return FALSE;
}

static BOOL ScrCmd_SubVar(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar -= ScriptContext_GetVar(ctx);
    return FALSE;
}

static BOOL ScrCmd_SetVarFromValue(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = ScriptContext_ReadHalfWord(ctx);
    return FALSE;
}

static BOOL ScrCmd_SetVarFromVar(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 *srcVar = ScriptContext_GetVarPointer(ctx);
    *destVar = *srcVar;
    return FALSE;
}

static BOOL ScrCmd_02A(ScriptContext *ctx)
{
    u16 *v0 = ScriptContext_GetVarPointer(ctx);
    *v0 = ScriptContext_GetVar(ctx);

    return 0;
}

static BOOL ScrCmd_MessageInstant(ScriptContext *ctx)
{
    u8 messageID = ScriptContext_ReadByte(ctx);

    ov5_021DD498(ctx, ctx->loader, messageID);
    return FALSE;
}

static BOOL ScrCmd_1FA(ScriptContext *ctx)
{
    MessageLoader *msgLoader;
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);

    msgLoader = MessageLoader_Init(1, 26, v1, HEAP_ID_FIELD_TASK);

    ov5_021DD498(ctx, msgLoader, v2);
    MessageLoader_Free(msgLoader);

    return 0;
}

static BOOL ScrCmd_1FB(ScriptContext *ctx)
{
    MessageLoader *msgLoader;
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);

    msgLoader = MessageLoader_Init(1, 26, v1, HEAP_ID_FIELD_TASK);
    ov5_021DD444(ctx, msgLoader, v2, 1, NULL);

    MessageLoader_Free(msgLoader);
    ScriptContext_Pause(ctx, sub_02040014);

    return 1;
}

static BOOL ScrCmd_1FC(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_ReadHalfWord(ctx);
    u16 v1 = ScriptContext_ReadHalfWord(ctx);
    u16 v2 = ScriptContext_ReadHalfWord(ctx);
    u16 v3 = ScriptContext_ReadHalfWord(ctx);

    ov5_021DD4CC(ctx, v0, v1, v2, v3, 0xFF);
    return 0;
}

static BOOL ScrCmd_1FD(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_ReadHalfWord(ctx);
    u16 v1 = ScriptContext_ReadHalfWord(ctx);
    u16 v2 = ScriptContext_ReadHalfWord(ctx);
    u16 v3 = ScriptContext_ReadHalfWord(ctx);

    ov5_021DD4CC(ctx, v0, v1, v2, v3, 1);
    ScriptContext_Pause(ctx, sub_02040014);

    return 1;
}

static BOOL ScrCmd_1FE(ScriptContext *ctx)
{
    u16 *v0;
    UnkStruct_0204AFC4 *v1;
    MessageLoader *v2;
    u16 v3 = ScriptContext_ReadByte(ctx);

    v1 = ctx->fieldSystem->unk_AC;

    if (v1 == NULL) {
        return 0;
    }

    v0 = v1->unk_78[v3].unk_00.unk_18;

    if (v0[0] == 0xFFFF) {
        v2 = MessageLoader_Init(1, 26, 613, HEAP_ID_FIELD_TASK);
        ov5_021DD444(ctx, v2, v0[1], 1, NULL);
        MessageLoader_Free(v2);
    } else {
        ov5_021DD4CC(ctx, v0[0], v0[1], v0[2], v0[3], 1);
    }

    ScriptContext_Pause(ctx, sub_02040014);
    return 1;
}

static BOOL ScrCmd_1FF(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 v1 = ScriptContext_ReadByte(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);
    u16 v3 = ScriptContext_ReadHalfWord(ctx);
    u8 v4 = ScriptContext_ReadByte(ctx);
    u8 v5;
    StringTemplate *v6;

    v5 = 0;
    v6 = sub_0204AEE8(fieldSystem->saveData, v2, v3, v4, &v5);

    ov5_021DD530(ctx, v6, v1 + v5, 1);
    StringTemplate_Free(v6);
    ScriptContext_Pause(ctx, sub_02040014);

    return 1;
}

static BOOL ScrCmd_26D(ScriptContext *ctx)
{
    UnkStruct_ov5_021DD42C v0;
    u16 v1 = ScriptContext_ReadHalfWord(ctx);

    ov5_021DD42C(&v0, ctx);
    v0.unk_02 = 3;

    ov5_021DD444(ctx, ctx->loader, v1, 0, &v0);
    ScriptContext_Pause(ctx, sub_02040014);

    return 1;
}

static BOOL ScrCmd_Message(ScriptContext *ctx)
{
    u8 messageID = ScriptContext_ReadByte(ctx);

    ov5_021DD444(ctx, ctx->loader, messageID, 1, NULL);
    ScriptContext_Pause(ctx, sub_02040014);

    return TRUE;
}

static BOOL sub_02040014(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 *v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_ID);

    return FieldMessage_FinishedPrinting(*v1);
}

static BOOL ScrCmd_MessageVar(ScriptContext *ctx)
{
    u16 messageID = ScriptContext_GetVar(ctx);

    ov5_021DD444(ctx, ctx->loader, (u8)messageID, 1, NULL);
    ScriptContext_Pause(ctx, sub_02040014);

    return TRUE;
}

static BOOL ScrCmd_2C0(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    UnkStruct_ov5_021DD42C v1;

    ov5_021DD42C(&v1, ctx);

    v1.unk_01 = 1;

    ov5_021DD444(ctx, ctx->loader, (u8)v0, 1, &v1);
    ScriptContext_Pause(ctx, sub_02040014);

    return 1;
}

static BOOL ScrCmd_02E(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);

    ov5_021DD444(ctx, ctx->loader, (u8)v0, 0, NULL);
    ScriptContext_Pause(ctx, sub_02040014);

    return 1;
}

static BOOL ScrCmd_20C(ScriptContext *ctx)
{
    MapObject **mapObj = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u8 v1 = MapObject_GetTrainerType(*mapObj);

    ov5_021DD444(ctx, ctx->loader, (u8)v1, 1, NULL);
    ScriptContext_Pause(ctx, sub_02040014);

    return 1;
}

static BOOL ScrCmd_02F(ScriptContext *ctx)
{
    u8 v0 = ScriptContext_ReadByte(ctx);

    if (CommSys_IsInitialized() == 0) {
        ov5_021DD444(ctx, ctx->loader, v0, 1, NULL);
    } else {
        UnkStruct_ov5_021DD42C v1;

        ov5_021DD42C(&v1, ctx);

        v1.unk_00 = 1;
        v1.unk_01 = 1;

        ov5_021DD444(ctx, ctx->loader, v0, 0, &v1);
    }

    ScriptContext_Pause(ctx, sub_02040014);
    return 1;
}

static BOOL ScrCmd_WaitABPress(ScriptContext *ctx)
{
    ScriptContext_Pause(ctx, ScriptContext_CheckABPress);
    return TRUE;
}

static BOOL ScriptContext_CheckABPress(ScriptContext *ctx)
{
    // this doesn't match using == TRUE or leaving off a comparison entirely
    return (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) != FALSE;
}

static BOOL ScrCmd_WaitABPressTime(ScriptContext *ctx)
{
    ctx->data[0] = ScriptContext_GetVar(ctx);
    ScriptContext_Pause(ctx, ScriptContext_DecrementABPressTimer);
    return TRUE;
}

static BOOL ScriptContext_DecrementABPressTimer(ScriptContext *ctx)
{
    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        return TRUE;
    }

    ctx->data[0]--;

    return ctx->data[0] == 0;
}

static BOOL ScrCmd_WaitABXPadPress(ScriptContext *ctx)
{
    ScriptContext_Pause(ctx, ScriptContext_CheckABXPadPress);
    return TRUE;
}

static BOOL ScriptContext_CheckABXPadPress(ScriptContext *ctx)
{
    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        return TRUE;
    }

    if (gSystem.pressedKeys & PAD_KEY_UP) {
        Player_SetDir(ctx->fieldSystem->playerAvatar, DIR_NORTH);
    } else if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        Player_SetDir(ctx->fieldSystem->playerAvatar, DIR_SOUTH);
    } else if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        Player_SetDir(ctx->fieldSystem->playerAvatar, DIR_WEST);
    } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        Player_SetDir(ctx->fieldSystem->playerAvatar, DIR_EAST);
    } else if (gSystem.pressedKeys & PAD_BUTTON_X) {
        sub_0203F0C0(ctx->fieldSystem);
    } else {
        return FALSE;
    }

    return TRUE;
}

static BOOL ScrCmd_WaitABPadPress(ScriptContext *ctx)
{
    ScriptContext_Pause(ctx, ScriptContext_CheckABPadPress);
    return TRUE;
}

static BOOL ScriptContext_CheckABPadPress(ScriptContext *ctx)
{
    // this function doesn't match simplified further, using == TRUE, or leaving off a comparison entirely
    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        return TRUE;
    }
    return (gSystem.pressedKeys & PAD_KEY) != FALSE;
}

static BOOL ScrCmd_OpenMessage(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 *isMsgBoxOpen = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_IS_MSG_BOX_OPEN);

    FieldMessage_AddWindow(fieldSystem->bgConfig, FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_WINDOW), 3);
    FieldMessage_DrawWindow(FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_WINDOW), SaveData_Options(ctx->fieldSystem->saveData));

    *isMsgBoxOpen = TRUE;
    return FALSE;
}

static BOOL ScrCmd_CloseMessage(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Window *window = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_WINDOW);
    u8 *v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_IS_MSG_BOX_OPEN);

    Window_EraseMessageBox(window, 0);
    Window_Remove(window);

    *v2 = 0;
    return FALSE;
}

static BOOL ScrCmd_035(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Window *v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_WINDOW);
    u8 *v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_IS_MSG_BOX_OPEN);

    Window_Remove(v1);

    *v2 = 0;
    return 0;
}

// this command is unused
static BOOL ScrCmd_ScrollBG3(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *distanceX = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_BG3_SCROLL_DIST_X);
    u16 *countX = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_BG3_SCROLL_COUNT_X);
    u16 *directionX = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_BG3_SCROLL_DIR_X);
    u16 *distanceY = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_BG3_SCROLL_DIST_Y);
    u16 *countY = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_BG3_SCROLL_COUNT_Y);
    u16 *directionY = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_BG3_SCROLL_DIR_Y);

    *distanceX = ScriptContext_ReadByte(ctx);
    *countX = ScriptContext_ReadByte(ctx);
    *directionX = ScriptContext_ReadByte(ctx);
    *distanceY = ScriptContext_ReadByte(ctx);
    *countY = ScriptContext_ReadByte(ctx);
    *directionY = ScriptContext_ReadByte(ctx);

    ScriptContext_Pause(ctx, ScriptContext_ScrollBG3);

    return TRUE;
}

static BOOL ScriptContext_ScrollBG3(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *distanceX = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_BG3_SCROLL_DIST_X);
    u16 *directionX = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_BG3_SCROLL_DIR_X);
    u16 *distanceY = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_BG3_SCROLL_DIST_Y);
    u16 *directionY = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_BG3_SCROLL_DIR_Y);
    u16 *countX = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_BG3_SCROLL_COUNT_X);
    u16 *countY = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_BG3_SCROLL_COUNT_Y);

    if (*countX == 0 && *countY == 0) {
        return TRUE;
    }

    if (*distanceX != 0) {
        if (*directionX == 0) {
            Bg_SetOffset(fieldSystem->bgConfig, 3, 1, *distanceX);
        } else {
            Bg_SetOffset(fieldSystem->bgConfig, 3, 2, *distanceX);
        }
    }

    if (*distanceY != 0) {
        if (*directionY == 0) {
            Bg_SetOffset(fieldSystem->bgConfig, 3, 4, *distanceY);
        } else {
            Bg_SetOffset(fieldSystem->bgConfig, 3, 5, *distanceY);
        }
    }

    if (*countX != 0) {
        (*countX)--;
    }

    if (*countY != 0) {
        (*countY)--;
    }

    return FALSE;
}

static BOOL ScrCmd_DrawSignpostInstantMessage(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Strbuf **tempBuf = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TEMPORARY_BUF);
    Strbuf **msgBuf = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_BUF);
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 signpostNARCMemberIdx;
    u16 unused;
    u8 signpostType;
    u8 messageID;

    messageID = ScriptContext_ReadByte(ctx);
    signpostType = ScriptContext_ReadByte(ctx);
    signpostNARCMemberIdx = ScriptContext_ReadHalfWord(ctx);
    unused = ScriptContext_ReadHalfWord(ctx);

    if (signpostNARCMemberIdx == 0) {
        MapObject **objectPtr = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);

        signpostNARCMemberIdx = MapObject_GetDataAt(*objectPtr, 0);
    }

    Signpost_SetTypeAndNARCMemberIdx(fieldSystem->signpost, signpostType, signpostNARCMemberIdx);
    Signpost_SetCommand(fieldSystem->signpost, SIGNPOST_CMD_DRAW);
    Signpost_DoCurrentCommand(fieldSystem);

    MessageLoader_GetStrbuf(ctx->loader, messageID, *tempBuf);
    StringTemplate_Format(*strTemplate, *msgBuf, *tempBuf);
    Text_AddPrinterWithParams(Signpost_GetWindow(fieldSystem->signpost), FONT_MESSAGE, *msgBuf, 0, 0, TEXT_SPEED_INSTANT, NULL);

    return TRUE;
}

static BOOL ScrCmd_DrawSignpostTextBox(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 signpostType = ScriptContext_ReadByte(ctx);
    u16 signpostNARCMemberIdx = ScriptContext_ReadHalfWord(ctx);

    Signpost_SetTypeAndNARCMemberIdx(fieldSystem->signpost, signpostType, signpostNARCMemberIdx);
    Signpost_SetCommand(fieldSystem->signpost, SIGNPOST_CMD_DRAW);

    return TRUE;
}

static BOOL ScrCmd_SetSignpostCommand(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 signpostCommand = ScriptContext_ReadByte(ctx);

    Signpost_SetCommand(fieldSystem->signpost, signpostCommand);

    return TRUE;
}

static BOOL ScrCmd_WaitForSignpostDone(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    if (Signpost_IsDone(fieldSystem->signpost) == TRUE) {
        return FALSE;
    }

    ScriptContext_Pause(ctx, WaitForSignpostDone);
    return TRUE;
}

static BOOL WaitForSignpostDone(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    if (Signpost_IsDone(fieldSystem->signpost) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

static BOOL ScrCmd_DrawSignpostScrollingMessage(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 *printerID = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_ID);
    Strbuf **tempBuf = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TEMPORARY_BUF);
    Strbuf **msgBuf = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_BUF);
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 messageID = ScriptContext_ReadByte(ctx);
    u16 destVarID = ScriptContext_ReadHalfWord(ctx);

    MessageLoader_GetStrbuf(ctx->loader, messageID, *tempBuf);
    StringTemplate_Format(*strTemplate, *msgBuf, *tempBuf);

    *printerID = FieldMessage_Print(Signpost_GetWindow(fieldSystem->signpost), *msgBuf, SaveData_Options(ctx->fieldSystem->saveData), 1);

    ctx->data[0] = destVarID;
    ScriptContext_Pause(ctx, WaitScrollingSignpostInput);

    return TRUE;
}

static BOOL WaitScrollingSignpostInput(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 *printerID = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_ID);
    u16 *destVar = FieldSystem_GetVarPointer(fieldSystem, ctx->data[0]);
    u8 unused = Signpost_GetType(fieldSystem->signpost);
    int dir = 0xffff;

    if (FieldMessage_FinishedPrinting(*printerID) == TRUE) {
        *destVar = 2;
        return TRUE;
    }

    if (gSystem.pressedKeys & PAD_KEY_UP) {
        dir = DIR_NORTH;
    } else if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        dir = DIR_SOUTH;
    } else if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        dir = DIR_WEST;
    } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        dir = DIR_EAST;
    }

    if (dir != 0xffff) {
        Text_RemovePrinter(*printerID);
        Player_SetDir(ctx->fieldSystem->playerAvatar, dir);
        *destVar = 0;
        return TRUE;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_X) {
        Text_RemovePrinter(*printerID);
        *destVar = 1;
        return TRUE;
    }

    return FALSE;
}

static BOOL ScrCmd_GetSignpostInput(ScriptContext *ctx)
{
    u16 destVarID = ScriptContext_ReadHalfWord(ctx);

    ctx->data[0] = destVarID;
    ScriptContext_Pause(ctx, HandleSignpostInput);

    return TRUE;
}

static BOOL HandleSignpostInput(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = FieldSystem_GetVarPointer(fieldSystem, ctx->data[0]);
    int dir = 0xffff;

    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        *destVar = 0;
        return TRUE;
    }

    if (gSystem.pressedKeys & PAD_KEY_UP) {
        dir = DIR_NORTH;
    } else if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        dir = DIR_SOUTH;
    } else if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        dir = DIR_WEST;
    } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        dir = DIR_EAST;
    }

    if (dir != 0xffff) {
        Player_SetDir(ctx->fieldSystem->playerAvatar, dir);
        *destVar = 0;
        return TRUE;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_X) {
        *destVar = 1;
        return TRUE;
    }

    return FALSE;
}

static BOOL ScrCmd_ShowStartMenu(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    sub_0203F0C0(fieldSystem);
    return FALSE;
}

static BOOL ScrCmd_ShowYesNoMenu(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Menu **menu = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_UI_CONTROL);
    u16 destVarID = ScriptContext_ReadHalfWord(ctx);

    LoadStandardWindowGraphics(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, 11, STANDARD_WINDOW_SYSTEM, HEAP_ID_FIELD);

    *menu = Menu_MakeYesNoChoice(fieldSystem->bgConfig, &Unk_020EAB84, 1024 - (18 + 12) - 9, 11, 4);
    ctx->data[0] = destVarID;

    ScriptContext_Pause(ctx, ScriptContext_WaitForYesNoResult);

    return TRUE;
}

static BOOL ScriptContext_WaitForYesNoResult(ScriptContext *ctx)
{
    u32 result;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Menu **menu = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_UI_CONTROL);
    u16 *destVar = FieldSystem_GetVarPointer(fieldSystem, ctx->data[0]);

    result = Menu_ProcessInputAndHandleExit(*menu, HEAP_ID_FIELD);

    if (result == MENU_NOTHING_CHOSEN) {
        return FALSE;
    }

    if (result == 0) {
        *destVar = MENU_YES;
    } else {
        *destVar = MENU_NO;
    }

    return TRUE;
}

static BOOL ScrCmd_18D(ScriptContext *ctx)
{
    void **v0;
    Window *v1 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_WINDOW);

    v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_SAVING_ICON);
    *v0 = Window_AddWaitDial(v1, 1024 - (18 + 12));

    return 0;
}

static BOOL ScrCmd_18E(ScriptContext *ctx)
{
    void **v0;

    v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_SAVING_ICON);
    DestroyWaitDial(*v0);

    return 0;
}

static BOOL ScrCmd_040(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    FieldMenuManager **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, 0);
    StringTemplate **v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v3 = ScriptContext_ReadByte(ctx);
    u8 v4 = ScriptContext_ReadByte(ctx);
    u8 v5 = ScriptContext_ReadByte(ctx);
    u8 v6 = ScriptContext_ReadByte(ctx);
    u16 v7 = ScriptContext_ReadHalfWord(ctx);

    *v1 = FieldMenuManager_New(fieldSystem, v3, v4, v5, v6, FieldSystem_GetVarPointer(fieldSystem, v7), *v2, FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_WINDOW), NULL);
    ctx->data[0] = v7;

    return 1;
}

static BOOL ScrCmd_041(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    FieldMenuManager **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, 0);
    StringTemplate **v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v3 = ScriptContext_ReadByte(ctx);
    u8 v4 = ScriptContext_ReadByte(ctx);
    u8 v5 = ScriptContext_ReadByte(ctx);
    u8 v6 = ScriptContext_ReadByte(ctx);
    u16 v7 = ScriptContext_ReadHalfWord(ctx);

    *v1 = FieldMenuManager_New(fieldSystem, v3, v4, v5, v6, FieldSystem_GetVarPointer(fieldSystem, v7), *v2, FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_WINDOW), ctx->loader);
    ctx->data[0] = v7;

    return 1;
}

static BOOL ScrCmd_042(ScriptContext *ctx)
{
    u8 v0, v1;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    FieldMenuManager **v3 = FieldSystem_GetScriptMemberPtr(fieldSystem, 0);

    v0 = ScriptContext_ReadByte(ctx);
    v1 = ScriptContext_ReadByte(ctx);

    FieldMenuManager_AddMenuEntry(*v3, v0, v1);
    return 0;
}

static BOOL ScrCmd_29D(ScriptContext *ctx)
{
    u16 v0, v1;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    FieldMenuManager **v3 = FieldSystem_GetScriptMemberPtr(fieldSystem, 0);

    v0 = ScriptContext_GetVar(ctx);
    v1 = ScriptContext_GetVar(ctx);

    FieldMenuManager_AddMenuEntry(*v3, v0, v1);
    return 0;
}

static BOOL ScrCmd_043(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    FieldMenuManager **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, 0);

    FieldMenuManager_ShowSingleColumnMenu(*v1);
    ScriptContext_Pause(ctx, sub_02040A50);

    return 1;
}

static BOOL sub_02040A50(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *v1 = FieldSystem_GetVarPointer(fieldSystem, ctx->data[0]);

    if (*v1 == LIST_MENU_NO_SELECTION_YET) {
        return 0;
    }

    return 1;
}

static BOOL ScrCmd_2B9(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    FieldMenuManager **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, 0);

    FieldMenuManager_ShowSingleColumnMenu(*v1);
    ScriptContext_Pause(ctx, sub_02040A9C);

    return 1;
}

static BOOL sub_02040A9C(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *v1 = FieldSystem_GetVarPointer(fieldSystem, ctx->data[0]);
    FieldMenuManager **v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, 0);

    if (*v1 == LIST_MENU_NO_SELECTION_YET) {
        if (sub_0205B9E8(fieldSystem->unk_7C)) {
            *v1 = 8;
            FieldMenuManager_DeleteWithMenu(*v2);
            return 1;
        }

        return 0;
    }

    return 1;
}

static BOOL ScrCmd_044(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    FieldMenuManager **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, 0);
    StringTemplate **v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v3 = ScriptContext_ReadByte(ctx);
    u8 v4 = ScriptContext_ReadByte(ctx);
    u8 v5 = ScriptContext_ReadByte(ctx);
    u8 v6 = ScriptContext_ReadByte(ctx);
    u16 v7 = ScriptContext_ReadHalfWord(ctx);

    *v1 = FieldMenuManager_New2(fieldSystem, v3, v4, v5, v6, FieldSystem_GetVarPointer(fieldSystem, v7), *v2, FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_WINDOW), NULL);
    ctx->data[0] = v7;

    return 1;
}

static BOOL ScrCmd_045(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    FieldMenuManager **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, 0);
    StringTemplate **v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v3 = ScriptContext_ReadByte(ctx);
    u8 v4 = ScriptContext_ReadByte(ctx);
    u8 v5 = ScriptContext_ReadByte(ctx);
    u8 v6 = ScriptContext_ReadByte(ctx);
    u16 v7 = ScriptContext_ReadHalfWord(ctx);

    *v1 = FieldMenuManager_New2(fieldSystem, v3, v4, v5, v6, FieldSystem_GetVarPointer(fieldSystem, v7), *v2, FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_WINDOW), ctx->loader);
    ctx->data[0] = v7;

    return 1;
}

static BOOL ScrCmd_046(ScriptContext *ctx)
{
    FieldMenuManager **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 0);
    u8 v1 = ScriptContext_GetVar(ctx);
    u8 v2 = ScriptContext_GetVar(ctx);
    u8 v3 = ScriptContext_GetVar(ctx);

    FieldMenuManager_AddListMenuEntry(*v0, v1, v2, v3);
    return 0;
}

static BOOL ScrCmd_047(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    FieldMenuManager **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, 0);

    FieldMenuManager_ShowListMenu(*v1);

    ScriptContext_Pause(ctx, sub_02040A50);
    return 1;
}

static BOOL ScrCmd_327(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    FieldMenuManager **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, 0);
    u16 v2 = ScriptContext_GetVar(ctx);

    FieldMenuManager_ShowListMenuWithWidth(*v1, v2);
    ScriptContext_Pause(ctx, sub_02040A50);

    return 1;
}

static BOOL ScrCmd_306(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    FieldMenuManager **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, 0);
    u16 *v2 = ScriptContext_GetVarPointer(ctx);
    u16 *v3 = ScriptContext_GetVarPointer(ctx);

    FieldMenuManager_ShowListMenuWithCursorPosition(*v1, v2, v3);
    ScriptContext_Pause(ctx, sub_02040A50);

    return 1;
}

static BOOL ScrCmd_048(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    FieldMenuManager **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, 0);
    u8 v2 = ScriptContext_ReadByte(ctx);

    FieldMenuManager_ShowMultiColumnMenu(*v1, v2);
    ScriptContext_Pause(ctx, sub_02040A50);

    return 1;
}

static BOOL ScrCmd_33A(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    FieldMenuManager **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, 0);
    u8 v2 = ScriptContext_ReadByte(ctx);

    FieldMenuManager_SetHorizontalAnchor(*v1, (BOOL)v2);
    return 1;
}

static BOOL ScrCmd_33B(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    FieldMenuManager **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, 0);
    u8 v2 = ScriptContext_ReadByte(ctx);

    FieldMenuManager_SetVerticalAnchor(*v1, (BOOL)v2);
    return 1;
}

static BOOL ScrCmd_ApplyMovement(ScriptContext *ctx)
{
    u16 localID = ScriptContext_GetVar(ctx);
    u32 movementOffset = ScriptContext_ReadWord(ctx);
    MapObject *object = sub_02040ED4(ctx->fieldSystem, localID);
    if (object == NULL) {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    SysTask *v1 = MapObject_StartAnimation(object, (MapObjectAnimCmd *)(ctx->scriptPtr + movementOffset));
    u8 *v2 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_MOVEMENT_COUNT);
    (*v2)++;
    sub_02040F28(ctx->fieldSystem, v1, NULL);
    return FALSE;
}

static BOOL ScrCmd_2A1(ScriptContext *ctx)
{
    u8 *v0;
    SysTask *v1;
    u8 *v2;
    MapObject **v3;
    MapObject *v4;
    u16 v5 = ScriptContext_GetVar(ctx);
    u16 v6 = ScriptContext_GetVar(ctx);
    u16 v7 = ScriptContext_GetVar(ctx);
    u16 v8, v9;
    MapObjectAnimCmd *v10;
    int v11;

    v4 = sub_02040ED4(ctx->fieldSystem, v5);

    if (v4 == NULL) {
        GF_ASSERT(FALSE);
    }

    v10 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(MapObjectAnimCmd) * 64);
    v8 = MapObject_GetX(v4);
    v9 = MapObject_GetZ(v4);
    v11 = 0;

    if (v8 < v6) {
        v10[v11].unk_00 = 0xf;
        v10[v11].unk_02 = v6 - v8;
        v11++;
    } else if (v8 > v6) {
        v10[v11].unk_00 = 0xe;
        v10[v11].unk_02 = v8 - v6;
        v11++;
    }

    if (v9 < v7) {
        v10[v11].unk_00 = 0xc;
        v10[v11].unk_02 = v7 - v9;
        v11++;
    } else if (v9 > v7) {
        v10[v11].unk_00 = 0xd;
        v10[v11].unk_02 = v9 - v7;
        v11++;
    }

    v10[v11].unk_00 = 0xfe;
    v10[v11].unk_02 = 0;

    v1 = MapObject_StartAnimation(v4, v10);
    v2 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_MOVEMENT_COUNT);
    (*v2)++;

    sub_02040F28(ctx->fieldSystem, v1, v10);

    return 0;
}

static MapObject *sub_02040ED4(FieldSystem *fieldSystem, int param1)
{
    MapObject **v0;
    MapObject *v1;

    if (param1 == 0xf2) {
        v1 = sub_02062570(fieldSystem->mapObjMan, 0x30);
    } else if (param1 == 0xf1) {
        v0 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_CAMERA_OBJECT);
        v1 = *v0;
    } else {
        v1 = MapObjMan_LocalMapObjByIndex(fieldSystem->mapObjMan, param1);
    }

    return v1;
}

static BOOL ScrCmd_WaitMovement(ScriptContext *ctx)
{
    ScriptContext_Pause(ctx, sub_02040F0C);
    return TRUE;
}

static BOOL sub_02040F0C(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 *v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MOVEMENT_COUNT);

    if (*v1 == 0) {
        return 1;
    }

    return 0;
}

static void sub_02040F28(FieldSystem *fieldSystem, SysTask *param1, MapObjectAnimCmd *param2)
{
    UnkStruct_02040F28 *v0 = NULL;

    v0 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(UnkStruct_02040F28));

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
        return;
    }

    v0->fieldSystem = fieldSystem;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_00 = SysTask_Start(sub_02040F5C, v0, 0);

    return;
}

static void sub_02040F5C(SysTask *task, void *param1)
{
    UnkStruct_02040F28 *v0;
    u8 *v1;

    v0 = (UnkStruct_02040F28 *)param1;
    v1 = FieldSystem_GetScriptMemberPtr(v0->fieldSystem, SCRIPT_MANAGER_MOVEMENT_COUNT);

    if (MapObject_HasAnimationEnded(v0->unk_04) == 1) {
        MapObject_FinishAnimation(v0->unk_04);
        SysTask_Done(v0->unk_00);

        if (v0->unk_08) {
            Heap_FreeToHeap(v0->unk_08);
        }

        Heap_FreeToHeap(param1);

        if (*v1 == 0) {
            GF_ASSERT(FALSE);
            return;
        }

        (*v1)--;
    }

    return;
}

static BOOL ScrCmd_LockAll(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    MapObject **objectPtr = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);

    if (*objectPtr == NULL) {
        MapObjectManager *mapObjMan = fieldSystem->mapObjMan;
        MapObjectMan_PauseAllMovement(mapObjMan);

        MapObject *object = sub_02062570(fieldSystem->mapObjMan, 0x30);

        if (object
            && SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(fieldSystem->saveData)) == 1
            && MapObject_IsMoving(object) != FALSE) {

            MapObject_SetPauseMovementOff(object);
            ScriptContext_Pause(ctx, sub_020410CC);
            return TRUE;
        }
    } else {
        ScrCmd_LockLastTalked(ctx);
    }

    return TRUE;
}

static u8 Unk_021C07E0;

static inline void inline_020410F4(void)
{
    Unk_021C07E0 = 0;
}

static inline BOOL inline_020410F4_1(int mask)
{
    return (Unk_021C07E0 & mask) != 0;
}

static inline void inline_020410F4_2(int mask)
{
    Unk_021C07E0 |= mask;
}

static inline void inline_020410F4_3(int mask)
{
    Unk_021C07E0 &= (0xff ^ mask);
}

static BOOL sub_02041004(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    MapObject **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    MapObject *v2 = Player_MapObject(fieldSystem->playerAvatar);

    if (inline_020410F4_1(1 << 0) && (LocalMapObj_CheckAnimationFinished(v2) == 1)) {
        MapObject_SetPauseMovementOn(v2);
        inline_020410F4_3(1 << 0);
    }

    if (inline_020410F4_1(1 << 2) && (MapObject_IsMoving(*v1) == 0)) {
        MapObject_SetPauseMovementOn(*v1);
        inline_020410F4_3(1 << 2);
    }

    if (inline_020410F4_1(1 << 1)) {
        MapObject *v3 = sub_02062570(fieldSystem->mapObjMan, 0x30);

        if (MapObject_IsMoving(v3) == 0) {
            MapObject_SetPauseMovementOn(v3);
            inline_020410F4_3(1 << 1);
        }
    }

    if (inline_020410F4_1(1 << 3)) {
        MapObject *v4 = sub_02069EB8(*v1);

        if (MapObject_IsMoving(v4) == 0) {
            MapObject_SetPauseMovementOn(v4);
            inline_020410F4_3(1 << 3);
        }
    }

    if (Unk_021C07E0 == 0) {
        return 1;
    }

    return 0;
}

static BOOL sub_020410CC(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    MapObject *v1 = sub_02062570(fieldSystem->mapObjMan, 0x30);

    if (MapObject_IsMoving(v1) == 0) {
        MapObject_SetPauseMovementOn(v1);
        return 1;
    }

    return 0;
}

static BOOL ScrCmd_LockLastTalked(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    MapObject **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    MapObject *player = Player_MapObject(fieldSystem->playerAvatar);
    MapObject *v3 = sub_02062570(fieldSystem->mapObjMan, 0x30);
    MapObject *v4 = sub_02069EB8(*v1);
    MapObjectManager *mapObjMan = fieldSystem->mapObjMan;

    inline_020410F4();
    MapObjectMan_PauseAllMovement(mapObjMan);

    if (LocalMapObj_CheckAnimationFinished(player) == FALSE) {
        inline_020410F4_2(1 << 0);
        MapObject_SetPauseMovementOff(player);
    }

    if (MapObject_IsMoving(*v1) != FALSE) {
        inline_020410F4_2(1 << 2);
        MapObject_SetPauseMovementOff(*v1);
    }

    if (v3) {
        if (SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(fieldSystem->saveData)) == 1 && MapObject_IsMoving(v3) != FALSE) {
            inline_020410F4_2(1 << 1);
            MapObject_SetPauseMovementOff(v3);
        }
    }

    if (v4) {
        if (MapObject_IsMoving(v4) != FALSE) {
            inline_020410F4_2(1 << 3);
            MapObject_SetPauseMovementOff(v4);
        }
    }

    ScriptContext_Pause(ctx, sub_02041004);
    return TRUE;
}

static BOOL ScrCmd_ReleaseAll(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    MapObjectManager *mapObjMan = fieldSystem->mapObjMan;
    MapObjectMan_UnpauseAllMovement(mapObjMan);

    return TRUE;
}

static BOOL ScrCmd_062(ScriptContext *ctx)
{
    MapObject *mapObj;
    FieldSystem *fieldSystem = ctx->fieldSystem;

    mapObj = MapObjMan_LocalMapObjByIndex(fieldSystem->mapObjMan, ScriptContext_ReadHalfWord(ctx));
    MapObject_SetPauseMovementOn(mapObj);

    return FALSE;
}

static BOOL ScrCmd_063(ScriptContext *ctx)
{
    MapObject *mapObj;
    FieldSystem *fieldSystem = ctx->fieldSystem;

    mapObj = MapObjMan_LocalMapObjByIndex(fieldSystem->mapObjMan, ScriptContext_ReadHalfWord(ctx));
    MapObject_SetPauseMovementOff(mapObj);

    return FALSE;
}

static BOOL ScrCmd_AddObject(ScriptContext *ctx)
{
    MapObject *mapObj;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 localID = ScriptContext_GetVar(ctx);

    mapObj = MapObjectMan_AddMapObjectFromLocalID(fieldSystem->mapObjMan, localID, MapHeaderData_GetNumObjectEvents(fieldSystem), fieldSystem->location->mapId, MapHeaderData_GetObjectEvents(fieldSystem));

    if (mapObj == NULL) {
        GF_ASSERT(FALSE);
    }

    return FALSE;
}

static BOOL ScrCmd_RemoveObject(ScriptContext *ctx)
{
    MapObject *mapObj;
    FieldSystem *fieldSystem = ctx->fieldSystem;

    mapObj = MapObjMan_LocalMapObjByIndex(fieldSystem->mapObjMan, ScriptContext_GetVar(ctx));

    if (mapObj == NULL) {
        GF_ASSERT(FALSE);
    } else {
        MapObject_SetFlagAndDeleteObject(mapObj);
    }

    return FALSE;
}

static BOOL ScrCmd_066(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    u16 v1 = ScriptContext_GetVar(ctx);
    MapObject **v2 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_CAMERA_OBJECT);

    *v2 = MapObjectMan_AddMapObject(ctx->fieldSystem->mapObjMan, v0, v1, 0, 0x2000, 0x0, ctx->fieldSystem->location->mapId);

    sub_020642F8(*v2);
    MapObject_SetHidden(*v2, 1);
    sub_02062D80(*v2, 0);

    {
        const VecFx32 *v3;

        v3 = MapObject_GetPos(*v2);
        ov5_021E931C(v3, ctx->fieldSystem->unk_28);
        Camera_TrackTarget(v3, ctx->fieldSystem->camera);
    }

    return 0;
}

static BOOL ScrCmd_067(ScriptContext *ctx)
{
    MapObject **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_CAMERA_OBJECT);

    MapObject_Delete(*v0);

    {
        MapObject *v1;
        const VecFx32 *v2;

        v1 = MapObjMan_LocalMapObjByIndex(ctx->fieldSystem->mapObjMan, 0xff);
        v2 = MapObject_GetPos(v1);

        ov5_021E931C(v2, ctx->fieldSystem->unk_28);
        Camera_TrackTarget(v2, ctx->fieldSystem->camera);
    }

    return 0;
}

static BOOL ScrCmd_308(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    u16 v1 = ScriptContext_GetVar(ctx);
    MapObject **v2 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_CAMERA_OBJECT);

    *v2 = MapObjectMan_AddMapObject(ctx->fieldSystem->mapObjMan, v0, v1, 0, 0x2000, 0x0, ctx->fieldSystem->location->mapId);

    sub_020642F8(*v2);
    MapObject_SetHidden(*v2, 1);
    sub_02062D80(*v2, 0);

    return 0;
}

static BOOL ScrCmd_309(ScriptContext *ctx)
{
    MapObject **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_CAMERA_OBJECT);

    MapObject_Delete(*v0);
    return 0;
}

static BOOL ScrCmd_FacePlayer(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    PlayerAvatar *playerAvatar = fieldSystem->playerAvatar;
    int dir = Direction_GetOpposite(PlayerAvatar_GetDir(playerAvatar));
    MapObject **object = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);

    if (*object == NULL) {
        return FALSE;
    }

    ov5_021ECDFC(*object, dir);

    return FALSE;
}

static BOOL ScrCmd_GetPlayerMapPos(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    u16 *destVarX = ScriptContext_GetVarPointer(ctx);
    u16 *destVarZ = ScriptContext_GetVarPointer(ctx);

    *destVarX = Player_GetXPos(fieldSystem->playerAvatar);
    *destVarZ = Player_GetZPos(fieldSystem->playerAvatar);

    return FALSE;
}

static BOOL ScrCmd_06A(ScriptContext *ctx)
{
    MapObject *mapObj;
    u16 *v1, *v2;
    FieldSystem *fieldSystem = ctx->fieldSystem;

    mapObj = MapObjMan_LocalMapObjByIndex(fieldSystem->mapObjMan, ScriptContext_GetVar(ctx));
    v1 = ScriptContext_GetVarPointer(ctx);
    v2 = ScriptContext_GetVarPointer(ctx);
    *v1 = MapObject_GetX(mapObj);
    *v2 = MapObject_GetZ(mapObj);

    return 0;
}

static BOOL ScrCmd_GetPlayerDir(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = PlayerAvatar_GetDir(ctx->fieldSystem->playerAvatar);

    return FALSE;
}

static BOOL ScrCmd_06B(ScriptContext *ctx)
{
    u16 v0, v1, v2;
    VecFx32 v3;
    FieldSystem *fieldSystem = ctx->fieldSystem;

    v0 = ScriptContext_GetVar(ctx);
    v1 = ScriptContext_GetVar(ctx);
    v2 = ScriptContext_GetVar(ctx);

    v3.x = FX32_CONST(v0);
    v3.y = FX32_CONST(v1);
    v3.z = FX32_CONST(v2);

    sub_020630AC(Player_MapObject(ctx->fieldSystem->playerAvatar), &v3);
    Camera_Move(&v3, ctx->fieldSystem->camera);

    return 0;
}

static BOOL ScrCmd_06C(ScriptContext *ctx)
{
    MapObject *mapObj;
    u8 v1;

    mapObj = MapObjMan_LocalMapObjByIndex(ctx->fieldSystem->mapObjMan, ScriptContext_GetVar(ctx));
    v1 = ScriptContext_ReadByte(ctx);

    sub_02062E5C(mapObj, v1);
    return 0;
}

static BOOL ScrCmd_06D(ScriptContext *ctx)
{
    MapObject *mapObj;
    u16 v1;

    mapObj = MapObjMan_LocalMapObjByIndex(ctx->fieldSystem->mapObjMan, ScriptContext_GetVar(ctx));
    v1 = ScriptContext_ReadHalfWord(ctx);

    MapObject_SetMoveCode(mapObj, v1);
    return 0;
}

static BOOL ScrCmd_2AD(ScriptContext *ctx)
{
    MapObject *mapObj;
    u16 *v1 = ScriptContext_GetVarPointer(ctx);

    *v1 = 0;
    mapObj = MapObjMan_LocalMapObjByIndex(ctx->fieldSystem->mapObjMan, ScriptContext_GetVar(ctx));

    if (mapObj != NULL) {
        *v1 = MapObject_GetMovementType(mapObj);
    }

    return 0;
}

static BOOL ScrCmd_06E(ScriptContext *ctx)
{
    MapObject *mapObj = sub_02062570(ctx->fieldSystem->mapObjMan, 0x30);

    sub_020633C8(mapObj, 0xfe);
    return 0;
}

static BOOL ScrCmd_2AB(ScriptContext *ctx)
{
    UnkStruct_0202CA1C *v0;
    u16 *v1 = ScriptContext_GetVarPointer(ctx);

    v0 = sub_0202CA1C(ctx->fieldSystem->saveData);
    *v1 = sub_0202CBA8(v0);

    return 0;
}

static BOOL ScrCmd_093(ScriptContext *ctx)
{
    UnkStruct_0202CA1C *v0;
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 *v2 = ScriptContext_GetVarPointer(ctx);

    v0 = sub_0202CA1C(ctx->fieldSystem->saveData);
    *v2 = sub_0202CBC8(v0, v1);

    return 0;
}

static BOOL ScrCmd_094(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    u16 v1 = ScriptContext_GetVar(ctx);

    sub_0202CAE0(sub_0202CA1C(ctx->fieldSystem->saveData), v0, v1);
    return 0;
}

static BOOL ScrCmd_095(ScriptContext *ctx)
{
    Pokemon *pokemon;
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 *v2 = ScriptContext_GetVarPointer(ctx);

    pokemon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(ctx->fieldSystem->saveData), v1);
    *v2 = Pokemon_GetForm(pokemon);

    return 0;
}

static BOOL ScrCmd_191(ScriptContext *ctx)
{
    void **v0;

    v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
    *v0 = sub_0203D3C0(32, ctx->fieldSystem);

    ScriptContext_Pause(ctx, ScriptContext_WaitForApplicationExit);
    return 1;
}

static BOOL ScrCmd_2A5(ScriptContext *ctx)
{
    void **v0;

    v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
    *v0 = sub_0203D3E4(32, ctx->fieldSystem);

    ScriptContext_Pause(ctx, ScriptContext_WaitForApplicationExit);
    return 1;
}

static BOOL ScrCmd_192(ScriptContext *ctx)
{
    void **v0;

    v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
    *v0 = sub_0203D50C(ctx->fieldSystem->task, HEAP_ID_FIELD_TASK);

    return 1;
}

static BOOL ScrCmd_193(ScriptContext *ctx)
{
    void **v0;
    u16 *v1 = ScriptContext_GetVarPointer(ctx);
    v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);

    GF_ASSERT(*v0 != 0);

    *v1 = sub_0203D408(*v0);

    if (*v1 == 7) {
        *v1 = 0xff;
    }

    Heap_FreeToHeap(*v0);
    *v0 = NULL;

    return 0;
}

static BOOL ScrCmd_2D0(ScriptContext *ctx)
{
    u16 v0;
    int v1;
    void **v2;
    u16 *v3;
    u16 *v4;
    PartyManagementData *v5;

    v3 = ScriptContext_GetVarPointer(ctx);
    v4 = ScriptContext_GetVarPointer(ctx);
    v2 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
    v5 = *v2;

    GF_ASSERT(*v2 != 0);

    v1 = sub_0203D408(*v2);

    if (v1 == 7) {
        *v3 = 0xff;
    } else if (v1 == 6) {
        v0 = v5->unk_2C[0];
        *v3 = v0;
        *v3 -= 1;
        v0 = v5->unk_2C[1];
        *v4 = v0;

        if (*v4 > 0) {
            *v4 -= 1;
        }
    }

    Heap_FreeToHeap(*v2);
    *v2 = NULL;

    return 0;
}

static BOOL ScrCmd_2D4(ScriptContext *ctx)
{
    u16 v0;
    int v1;
    void **v2;
    u16 *v3;
    u16 *v4;
    u16 *v5;
    PartyManagementData *v6;

    v3 = ScriptContext_GetVarPointer(ctx);
    v4 = ScriptContext_GetVarPointer(ctx);
    v5 = ScriptContext_GetVarPointer(ctx);
    v2 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
    v6 = *v2;

    GF_ASSERT(*v2 != 0);

    v1 = sub_0203D408(*v2);

    if (v1 == 7) {
        *v3 = 0xff;
    } else if (v1 == 6) {
        *v3 = v6->unk_2C[0];
        *v3 -= 1;

        *v4 = v6->unk_2C[1];
        *v4 -= 1;

        *v5 = v6->unk_2C[2];

        if (*v5 > 0) {
            *v5 -= 1;
        }
    }

    Heap_FreeToHeap(*v2);
    *v2 = NULL;

    return 0;
}

static BOOL ScrCmd_2DB(ScriptContext *ctx)
{
    u16 v0;
    int v1;
    void **v2;
    u16 *v3;
    u16 *v4;
    u16 *v5;
    PartyManagementData *v6;

    v3 = ScriptContext_GetVarPointer(ctx);
    v4 = ScriptContext_GetVarPointer(ctx);
    v5 = ScriptContext_GetVarPointer(ctx);
    v2 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
    v6 = *v2;

    GF_ASSERT(*v2 != 0);

    v1 = sub_0203D408(*v2);

    if (v1 == 7) {
        *v3 = 0xff;
    } else if (v1 == 6) {
        *v3 = v6->unk_2C[0];
        *v3 -= 1;

        *v4 = v6->unk_2C[1];
        *v4 -= 1;

        *v5 = v6->unk_2C[2];

        if (*v5 > 0) {
            *v5 -= 1;
        }
    }

    Heap_FreeToHeap(*v2);
    *v2 = NULL;

    return 0;
}

static BOOL ScrCmd_194(ScriptContext *ctx)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);
    u16 v3 = ScriptContext_GetVar(ctx);
    u16 v4 = ScriptContext_GetVar(ctx);

    *v0 = sub_0203D578(32, ctx->fieldSystem, v3, v2, v4, v1);
    ScriptContext_Pause(ctx, ScriptContext_WaitForApplicationExit);

    return 1;
}

static BOOL ScrCmd_195(ScriptContext *ctx)
{
    void **v0;
    u16 *v1, *v2;

    v1 = ScriptContext_GetVarPointer(ctx);
    v2 = ScriptContext_GetVarPointer(ctx);
    v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);

    GF_ASSERT(*v0 != 0);

    *v1 = sub_0203D408(*v0);

    if (*v1 == 7) {
        *v1 = 0xff;
    }

    *v2 = sub_0203D438(*v0);

    if (*v2 == 1) {
        *v2 = 1;
    } else {
        *v2 = 0;
    }

    Heap_FreeToHeap(*v0);
    *v0 = NULL;

    return 0;
}

static BOOL ScrCmd_196(ScriptContext *ctx)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
    u16 v1 = ScriptContext_GetVar(ctx);

    *v0 = sub_0203D5C8(32, ctx->fieldSystem, v1);
    ScriptContext_Pause(ctx, ScriptContext_WaitForApplicationExit);

    return 1;
}

static BOOL ScrCmd_197(ScriptContext *ctx)
{
    void **v0;
    u16 *v1 = ScriptContext_GetVarPointer(ctx);
    v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);

    GF_ASSERT(*v0 != 0);

    *v1 = sub_0203D440(*v0);

    Heap_FreeToHeap(*v0);
    *v0 = NULL;

    return 0;
}

static BOOL ScrCmd_2E7(ScriptContext *ctx)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);

    *v0 = sub_0203E63C(32, ctx->fieldSystem, v1, v2);
    ScriptContext_Pause(ctx, ScriptContext_WaitForApplicationExit);

    return 1;
}

static BOOL ScrCmd_2E8(ScriptContext *ctx)
{
    void **v0;
    u16 *v1;
    PokemonSummary *v2;

    v1 = ScriptContext_GetVarPointer(ctx);
    v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);

    GF_ASSERT(*v0 != 0);

    v2 = *v0;
    *v1 = v2->selectedMoveSlot;

    Heap_FreeToHeap(*v0);
    *v0 = NULL;

    return 1;
}

static BOOL ScrCmd_09B(ScriptContext *ctx)
{
    u8 v0, v1;
    MapObject **v2 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 v3 = ScriptContext_GetVar(ctx);
    u16 *v4 = ScriptContext_GetVarPointer(ctx);

    *v4 = VsSeeker_GetRematchTrainerID(ctx->fieldSystem, *v2, v3);
    return 0;
}

static BOOL ScrCmd_315(ScriptContext *ctx)
{
    u16 *v0 = ScriptContext_GetVarPointer(ctx);

    *v0 = FieldOverworldState_GetWeather(SaveData_GetFieldOverworldState(ctx->fieldSystem->saveData));
    return 0;
}

static BOOL ScrCmd_09C(ScriptContext *ctx)
{
    return 0;
}

static BOOL ScrCmd_09D(ScriptContext *ctx)
{
    return 0;
}

static BOOL ScrCmd_09E(ScriptContext *ctx)
{
    return 1;
}

static BOOL ScrCmd_09F(ScriptContext *ctx)
{
    return 0;
}

BOOL sub_02041CC8(ScriptContext *ctx)
{
    void **v0;
    FieldSystem *fieldSystem = ctx->fieldSystem;

    v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);

    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return 0;
    }

    Heap_FreeToHeap(*v0);
    *v0 = NULL;

    return 1;
}

static BOOL sub_02041CF4(ScriptContext *ctx)
{
    void **v0;
    FieldSystem *fieldSystem;
    UnkStruct_02042434 *v2;

    fieldSystem = ctx->fieldSystem;
    v0 = FieldSystem_GetScriptMemberPtr(fieldSystem, 19);
    v2 = *v0;

    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return FALSE;
    }

    if (v2->unk_08 == 1) {
        void *journalEntryLocationEvent;

        journalEntryLocationEvent = JournalEntry_CreateEventUsedPCBox(HEAP_ID_FIELDMAP);
        JournalEntry_SaveData(fieldSystem->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
    }

    Heap_FreeToHeap(*v0);
    *v0 = NULL;

    return TRUE;
}

static BOOL sub_02041D3C(ScriptContext *ctx)
{
    void **v0;
    FieldSystem *fieldSystem = ctx->fieldSystem;

    v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);

    if (sub_0209C238(*v0) == 0) {
        return 0;
    }

    *v0 = NULL;

    return 1;
}

BOOL ScriptContext_WaitForApplicationExit(ScriptContext *ctx)
{
    return !FieldSystem_IsRunningApplication(ctx->fieldSystem);
}

static BOOL ScrCmd_ReturnToField(ScriptContext *ctx)
{
    FieldTransition_StartMap(ctx->fieldSystem->task);
    return TRUE;
}

static BOOL ScrCmd_1F8(ScriptContext *ctx)
{
    FieldTransition_FinishMap(ctx->fieldSystem->task);
    return 1;
}

static BOOL sub_02041D98(FieldSystem *fieldSystem, int param1, int param2)
{
    UnkStruct_0202A750 *v0 = sub_0202A750(fieldSystem->saveData);

    if (param1 == 0) {
        if (sub_02029D10(v0, param2) == 0) {
            return 0;
        }
    } else {
        if (sub_02029D2C(v0, param2) == 0) {
            return 0;
        }
    }

    return 1;
}

static UnkStruct_02041DC8 *sub_02041DC8(int heapID, FieldSystem *fieldSystem, int param2, int param3)
{
    UnkStruct_02041DC8 *v0;
    UnkStruct_02029C68 *v1;
    UnkStruct_02029C88 *v2;
    UnkStruct_0202A750 *v3 = sub_0202A750(fieldSystem->saveData);

    if (sub_02041D98(fieldSystem, param2, param3) == 0) {
        return NULL;
    }

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_02041DC8));
    memset(v0, 0, sizeof(UnkStruct_02041DC8));

    v0->unk_00 = v3;
    v0->unk_08 = param2;
    v0->unk_04 = param3;

    return v0;
}

static BOOL ScrCmd_0A2(ScriptContext *ctx)
{
    ov5_021EAF50(ctx->fieldSystem);
    return 1;
}

static BOOL ScrCmd_0A3(ScriptContext *ctx)
{
    sub_0207DDC0(ctx->task);
    return 1;
}

static BOOL ScrCmd_0A4(ScriptContext *ctx)
{
    UnkStruct_ov98_02247168 *v0;
    void **v1 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
    u16 *v2 = ScriptContext_GetVarPointer(ctx);

    v0 = (*v1);
    *v2 = v0->unk_04;

    Heap_FreeToHeap(*v1);
    return 0;
}

static BOOL ScrCmd_207(ScriptContext *ctx)
{
    u16 *v0 = ScriptContext_GetVarPointer(ctx);

    *v0 = CommSys_CurNetId();
    return 1;
}

static BOOL ScrCmd_DrawPokemonPreview(ScriptContext *ctx)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 species = ScriptContext_GetVar(ctx);
    u16 gender = ScriptContext_GetVar(ctx);

    LoadStandardWindowGraphics(ctx->fieldSystem->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, 11, 0, HEAP_ID_FIELD);
    *v0 = DrawPokemonPreview(ctx->fieldSystem->bgConfig, BG_LAYER_MAIN_3, 10, 5, 11, 1024 - (18 + 12) - 9, species, gender, HEAP_ID_FIELD);
    FieldSystem_WriteSpeciesSeen(ctx->fieldSystem, species);

    return FALSE;
}

static BOOL ScrCmd_DrawPokemonPreviewFromPartySlot(ScriptContext *ctx)
{
    Pokemon *pokemon;
    void **v1 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 partySlot = ScriptContext_GetVar(ctx);

    pokemon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(ctx->fieldSystem->saveData), partySlot);
    LoadStandardWindowGraphics(ctx->fieldSystem->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, 11, 0, HEAP_ID_FIELD);

    *v1 = DrawPokemonPreviewFromStruct(ctx->fieldSystem->bgConfig, BG_LAYER_MAIN_3, 10, 5, 11, 1024 - (18 + 12) - 9, pokemon, HEAP_ID_FIELD);
    FieldSystem_WriteSpeciesSeen(ctx->fieldSystem, Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL));

    return FALSE;
}

static BOOL ScrCmd_209(ScriptContext *ctx)
{
    u8 *v0;
    void **v1 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);

    v0 = *v1;
    *v0 = 1;

    return 1;
}

static BOOL ScrCmd_28D(ScriptContext *ctx)
{
    u8 *v0;
    void **v1 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);

    v0 = *v1;
    *v0 = 2;

    return 1;
}

static BOOL ScrCmd_28E(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 v1 = ScriptContext_ReadHalfWord(ctx);

    ctx->data[0] = v1;
    ScriptContext_Pause(ctx, sub_02041FF8);

    return 1;
}

static BOOL sub_02041FF8(ScriptContext *ctx)
{
    u8 *v0;
    void **v1 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *v2 = FieldSystem_GetVarPointer(ctx->fieldSystem, ctx->data[0]);

    v0 = *v1;

    if (*v0 == 3) {
        return 0;
    }

    return 1;
}

static BOOL ScrCmd_20A(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_ReadHalfWord(ctx);
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);

    VsSeeker_Start(ctx->task, *v1, FieldSystem_GetVarPointer(ctx->fieldSystem, v0));
    return 1;
}

static BOOL ScrCmd_20B(ScriptContext *ctx)
{
    MapObject **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);

    if (*v0 != NULL) {
        if ((sub_02071CB4(ctx->fieldSystem, 2) == 0) || (ov8_0224C5DC(ctx->fieldSystem, *v0) == 0)) {
            VsSeeker_SetMoveCodeForFacingDirection(ctx->fieldSystem, *v0);
        }
    }

    return 0;
}

static BOOL ScrCmd_0A5(ScriptContext *ctx)
{
    sub_0209ACF4(ctx->task);
    return 1;
}

static BOOL ScrCmd_30E(ScriptContext *ctx)
{
    u16 *v0 = ScriptContext_GetVarPointer(ctx);

    sub_0209B344(ctx->task, v0);
    return 1;
}

static BOOL ScrCmd_0A6(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);

    sub_0203DAC0(ctx->fieldSystem->task, v1, ctx->fieldSystem->saveData, v0, v2);
    return 1;
}

static BOOL ScrCmd_0A7(ScriptContext *ctx)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
    int v1 = ScriptContext_ReadHalfWord(ctx);
    u16 *v2 = ScriptContext_GetVarPointer(ctx);

    *v0 = sub_02041DC8(HEAP_ID_FIELDMAP, ctx->fieldSystem, 0, v1);

    if (*v0 == NULL) {
        *v2 = 1;

        return 1;
    }

    *v2 = 0;

    sub_0203DB24(ctx->fieldSystem, *v0);
    ScriptContext_Pause(ctx, sub_02041CC8);

    return 1;
}

static BOOL ScrCmd_0A8(ScriptContext *ctx)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
    int v1 = ScriptContext_ReadHalfWord(ctx);
    u16 *v2 = ScriptContext_GetVarPointer(ctx);

    *v0 = sub_02041DC8(HEAP_ID_FIELDMAP, ctx->fieldSystem, 1, v1);

    if (*v0 == NULL) {
        *v2 = 1;

        return 1;
    }

    *v2 = 0;

    sub_0203DB24(ctx->fieldSystem, *v0);
    ScriptContext_Pause(ctx, sub_02041CC8);

    return 1;
}

static BOOL ScrCmd_12E(ScriptContext *ctx)
{
    BOOL v0;
    int v1 = ScriptContext_ReadHalfWord(ctx);
    u16 *v2 = ScriptContext_GetVarPointer(ctx);

    v0 = sub_02041D98(ctx->fieldSystem, 0, v1);

    if (v0 == 1) {
        *v2 = 1;
        return 1;
    }

    *v2 = 0;
    return 1;
}

static BOOL ScrCmd_12F(ScriptContext *ctx)
{
    BOOL v0;
    int v1 = ScriptContext_ReadHalfWord(ctx);
    u16 *v2 = ScriptContext_GetVarPointer(ctx);

    v0 = sub_02041D98(ctx->fieldSystem, 1, v1);

    if (v0 == 1) {
        *v2 = 1;
        return 1;
    }

    *v2 = 0;
    return 1;
}

static BOOL ScrCmd_130(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    UnkStruct_0202A750 *v1 = sub_0202A750(ctx->fieldSystem->saveData);
    UnkStruct_02029C68 *v2 = sub_02029CA8(v1, 0);

    sub_0202A0A0(v2, v0);

    return 1;
}

static BOOL ScrCmd_205(ScriptContext *ctx)
{
    sub_0203E224(ctx->fieldSystem);
    ScriptContext_Pause(ctx, ScriptContext_WaitForApplicationExit);

    return 1;
}

static BOOL ScrCmd_310(ScriptContext *ctx)
{
    sub_0203E704(ctx->fieldSystem);
    ScriptContext_Pause(ctx, ScriptContext_WaitForApplicationExit);

    return 1;
}

static BOOL ScrCmd_OpenSealCapsuleEditor(ScriptContext *ctx)
{
    sub_020980DC(ctx->task, ctx->fieldSystem->saveData);
    return TRUE;
}

static BOOL ScrCmd_0AA(ScriptContext *ctx)
{
    UnkStruct_0203D8AC *v0;
    void **v1 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);

    *v1 = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(UnkStruct_0203D8AC));

    sub_0206B70C(ctx->fieldSystem, *v1, 2);
    sub_0203D884(ctx->fieldSystem, *v1);
    ScriptContext_Pause(ctx, sub_02041CC8);

    return 1;
}

static BOOL ScrCmd_1D7(ScriptContext *ctx)
{
    u8 v0;
    UnkStruct_0203D8AC *v1;
    void **v2 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);

    v0 = ScriptContext_ReadHalfWord(ctx);
    *v2 = sub_02099674(ctx->fieldSystem, v0, HEAP_ID_FIELDMAP);

    ScriptContext_Pause(ctx, sub_02041CC8);
    return 1;
}

static BOOL ScrCmd_1D8(ScriptContext *ctx)
{
    u16 *v0 = FieldSystem_GetVarPointer(ctx->fieldSystem, ScriptContext_ReadHalfWord(ctx));

    if (!Bag_HasItemsInPocket(SaveData_GetBag(ctx->fieldSystem->saveData), 4)) {
        *v0 = 1;
        return 0;
    }

    if (Poffin_GetNumberOfFilledSlots(Poffin_GetSavedataBlock(ctx->fieldSystem->saveData)) >= MAX_POFFINS) {
        *v0 = 2;
        return 0;
    }

    *v0 = 0;
    return 0;
}

static BOOL ScrCmd_1D9(ScriptContext *ctx)
{
    UnkStruct_ov90_021D0D80 *v0;
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);
    void **v3 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);

    *v3 = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(UnkStruct_ov90_021D0D80));

    v0 = (UnkStruct_ov90_021D0D80 *)*v3;
    MI_CpuClear8(v0, sizeof(UnkStruct_ov90_021D0D80));

    v0->unk_04 = v1;
    v0->unk_06 = v2;
    v0->unk_00 = ctx->fieldSystem->saveData;

    sub_0203D9D8(ctx->fieldSystem, *v3);
    ScriptContext_Pause(ctx, sub_02041CC8);

    return 1;
}

static BOOL ScrCmd_0AB(ScriptContext *ctx)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
    UnkStruct_02042434 *v1 = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(UnkStruct_02042434));

    v1->unk_00 = ctx->fieldSystem->saveData;
    v1->unk_04 = ScriptContext_ReadByte(ctx);
    *v0 = v1;

    sub_0203D754(ctx->fieldSystem, *v0);
    ScriptContext_Pause(ctx, sub_02041CF4);

    return 1;
}

static BOOL ScrCmd_0AC(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    sub_0203DDFC(fieldSystem);
    ScriptContext_Pause(ctx, ScriptContext_WaitForApplicationExit);

    return 1;
}

static BOOL ScrCmd_0AD(ScriptContext *ctx)
{
    sub_02072204(ctx->fieldSystem);
    return 1;
}

static BOOL ScrCmd_0AE(ScriptContext *ctx)
{
    sub_0203DDDC(ctx->fieldSystem->task);
    return 1;
}

static BOOL ScrCmd_0AF(ScriptContext *ctx)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);

    *v0 = sub_0203DE34(ctx->fieldSystem);
    ScriptContext_Pause(ctx, sub_02041CC8);

    return 1;
}

static BOOL ScrCmd_0B0(ScriptContext *ctx)
{
    sub_02052E58(ctx->fieldSystem->task);
    return 1;
}

static BOOL ScrCmd_0B1(ScriptContext *ctx)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);

    *v0 = sub_0203E244(ctx->fieldSystem);
    ScriptContext_Pause(ctx, sub_02041CC8);

    return 1;
}

static BOOL ScrCmd_336(ScriptContext *ctx)
{
    u16 *v0;
    int v1;
    HallOfFame *v2 = SaveData_HallOfFame(ctx->fieldSystem->saveData, 4, &v1);
    v0 = ScriptContext_GetVarPointer(ctx);
    *v0 = 0;

    if (v1 == 2) {
        *v0 = 1;
    }

    Heap_FreeToHeap(v2);
    return 0;
}

static BOOL ScrCmd_0B2(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);

    if (sub_02039074(ctx->fieldSystem->saveData)) {
        *v1 = 1;
        sub_0203E0FC(ctx->fieldSystem, v0);
        ScriptContext_Pause(ctx, ScriptContext_WaitForApplicationExit);
    } else {
        *v1 = 0;
    }

    return 1;
}

static BOOL ScrCmd_0B3(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_ReadHalfWord(ctx);

    sub_0207DDE0(ctx->task, FieldSystem_GetVarPointer(ctx->fieldSystem, v0));
    return 1;
}

static BOOL ScrCmd_StartChooseStarterScene(ScriptContext *ctx)
{
    ChooseStarterData *chooseStarterData;
    void **fieldSysDataPtr = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);

    *fieldSysDataPtr = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(ChooseStarterData));
    chooseStarterData = *fieldSysDataPtr;

    chooseStarterData->options = SaveData_Options(ctx->fieldSystem->saveData);

    FieldSystem_LaunchChooseStarterApp(ctx->fieldSystem, *fieldSysDataPtr);
    ScriptContext_Pause(ctx, ScriptContext_WaitForApplicationExit);

    return TRUE;
}

static BOOL ScrCmd_SaveChosenStarter(ScriptContext *ctx)
{
    ChooseStarterData *chooseStarterData;
    void **fieldSysDataPtr = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);

    chooseStarterData = (*fieldSysDataPtr);

    SystemVars_SetPlayerStarter(SaveData_GetVarsFlags(ctx->fieldSystem->saveData), chooseStarterData->species);

    Heap_FreeToHeap(*fieldSysDataPtr);

    return FALSE;
}

static BOOL ScrCmd_178(ScriptContext *ctx)
{
    void **v0;
    u8 v1;

    if (ScriptContext_ReadByte(ctx) == 0) {
        v1 = 0;
    } else {
        v1 = 1;
    }

    v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
    GF_ASSERT(*v0 == 0);

    *v0 = sub_0203D264(ctx->fieldSystem, v1);
    ScriptContext_Pause(ctx, ScriptContext_WaitForApplicationExit);

    return 1;
}

static BOOL ScrCmd_179(ScriptContext *ctx)
{
    u16 *v0;
    void **v1;

    v0 = ScriptContext_GetVarPointer(ctx);
    v1 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);

    GF_ASSERT(*v1 != 0);
    *v0 = sub_0203D2C4(*v1);

    Heap_FreeToHeap(*v1);
    *v1 = NULL;

    return 0;
}

static BOOL ScrCmd_0BA(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    sub_0203DFE8(ctx->task, 0, 0, 7, 0, NULL, ScriptContext_GetVarPointer(ctx));
    return 1;
}

static BOOL ScrCmd_0BB(ScriptContext *ctx)
{
    u16 v0[10 * 2];
    Pokemon *v1;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 v3 = ScriptContext_GetVar(ctx);

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v3);

    Pokemon_GetValue(v1, MON_DATA_NICKNAME, v0);
    sub_0203DFE8(ctx->task, 1, Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL), 10, v3, v0, ScriptContext_GetVarPointer(ctx));

    return 1;
}

static BOOL ScrCmd_271(ScriptContext *ctx)
{
    sub_0203DFE8(ctx->task, 6, 0, 10, 0, NULL, ScriptContext_GetVarPointer(ctx));
    return 1;
}

static BOOL ScrCmd_2C6(ScriptContext *ctx)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);

    *v0 = sub_0209C1EC(ctx->fieldSystem);
    ScriptContext_Pause(ctx, sub_02041D3C);

    return 1;
}

static BOOL ScrCmd_2C7(ScriptContext *ctx)
{
    u16 *v0 = ScriptContext_GetVarPointer(ctx);
    u8 v1 = sub_0205BE38();

    if (v1 == TrainerInfo_DPGameCode()) {
        *v0 = 0;
    } else {
        *v0 = 1;
    }

    return 0;
}

static BOOL ScrCmd_243(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);
    u16 *v2 = ScriptContext_GetVarPointer(ctx);

    *v2 = 0xffff;
    sub_0203D80C(ctx->fieldSystem->task, v1, v2, NULL);

    return 1;
}

static BOOL ScrCmd_244(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);
    u16 *v2 = ScriptContext_GetVarPointer(ctx);
    u16 *v3 = ScriptContext_GetVarPointer(ctx);

    *v2 = 0xffff;
    *v3 = 0xffff;

    sub_0203D80C(ctx->fieldSystem->task, v1, v2, v3);
    return 1;
}

static BOOL ScrCmd_245(ScriptContext *ctx)
{
    StringTemplate **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);

    StringTemplate_SetCustomMessageWord(*v0, v1, v2);

    return 0;
}

static BOOL ScrCmd_FadeScreen(ScriptContext *ctx)
{
    u16 transition = ScriptContext_ReadHalfWord(ctx);
    u16 frames = ScriptContext_ReadHalfWord(ctx);
    u16 type = ScriptContext_ReadHalfWord(ctx);
    u16 color = ScriptContext_ReadHalfWord(ctx);

    StartScreenTransition(0, type, type, color, transition, frames, HEAP_ID_FIELD);
    sub_0200F32C(0);
    sub_0200F32C(1);

    return FALSE;
}

static BOOL ScrCmd_WaitFadeScreen(ScriptContext *ctx)
{
    ScriptContext_Pause(ctx, ScriptContext_ScreenWipeDone);
    return TRUE;
}

static BOOL ScriptContext_ScreenWipeDone(ScriptContext *ctx)
{
    return IsScreenTransitionDone() == TRUE;
}

static BOOL ScrCmd_Warp(ScriptContext *ctx)
{
    u16 mapID = ScriptContext_GetVar(ctx);
    s16 dummy = ScriptContext_ReadHalfWord(ctx);
    u16 x = ScriptContext_GetVar(ctx);
    u16 z = ScriptContext_GetVar(ctx);
    u16 direction = ScriptContext_GetVar(ctx);

    FieldTask_StartMapChangeFull(ctx->task, mapID, -1, x, z, direction);
    return TRUE;
}

static BOOL ScrCmd_203(ScriptContext *ctx)
{
    u16 v0, v1, v2, v3;
    s16 v4;
    FieldSystem *fieldSystem = ctx->fieldSystem;

    v0 = ScriptContext_ReadHalfWord(ctx);
    v4 = ScriptContext_ReadHalfWord(ctx);
    v1 = ScriptContext_GetVar(ctx);
    v2 = ScriptContext_GetVar(ctx);
    v3 = ScriptContext_ReadHalfWord(ctx);
    v4 = -1;

    sub_02054800(ctx->fieldSystem->task, v0, v4, v1, v2, v3);

    return 1;
}

static BOOL ScrCmd_204(ScriptContext *ctx)
{
    sub_02054864(ctx->fieldSystem->task);
    return 1;
}

static BOOL ScrCmd_GetPreviousMapID(ScriptContext *ctx)
{
    FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(ctx->fieldSystem->saveData);
    Location *location = FieldOverworldState_GetPrevLocation(fieldState);
    u16 *mapId = ScriptContext_GetVarPointer(ctx);

    *mapId = location->mapId;
    return FALSE;
}

static BOOL ScrCmd_GetCurrentMapID(ScriptContext *ctx)
{
    u16 *mapID = ScriptContext_GetVarPointer(ctx);

    *mapID = ctx->fieldSystem->location->mapId;
    return FALSE;
}

static BOOL ScrCmd_0BF(ScriptContext *ctx)
{
    ov5_021E0734(ctx->task, PlayerAvatar_GetDir(ctx->fieldSystem->playerAvatar), ScriptContext_GetVar(ctx));
    return 1;
}

static BOOL ScrCmd_0C0(ScriptContext *ctx)
{
    RadarChain_Clear(ctx->fieldSystem->chain);

    {
        int v0;

        if (PlayerAvatar_DistortionStateOnFloor(ctx->fieldSystem->playerAvatar) == TRUE) {
            v0 = PlayerAvatar_GetDir(ctx->fieldSystem->playerAvatar);
        } else {
            v0 = PlayerAvatar_GetMoveDir(ctx->fieldSystem->playerAvatar);
        }

        ov5_021E00EC(ctx->task, v0, ScriptContext_GetVar(ctx));
    }

    return 1;
}

static BOOL ScrCmd_0C1(ScriptContext *ctx)
{
    ov5_021E0998(ctx->task, PlayerAvatar_GetDir(ctx->fieldSystem->playerAvatar), ScriptContext_GetVar(ctx));
    return 1;
}

static BOOL ScrCmd_0C2(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_ReadHalfWord(ctx);
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);

    FieldTask_StartMapChangeFly(ctx->fieldSystem, v0, -1, v1, v2, 1);
    return 1;
}

static BOOL ScrCmd_0C3(ScriptContext *ctx)
{
    FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(ctx->fieldSystem->saveData);

    FieldOverworldState_SetWeather(fieldState, OVERWORLD_WEATHER_CLEAR);
    ov5_021D5F7C(ctx->fieldSystem->unk_04->unk_0C, FieldOverworldState_GetWeather(fieldState));

    return 1;
}

static BOOL ScrCmd_0C4(ScriptContext *ctx)
{
    FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(ctx->fieldSystem->saveData);

    FieldOverworldState_SetWeather(fieldState, OVERWORLD_WEATHER_CLEAR);
    ov5_021D5F7C(ctx->fieldSystem->unk_04->unk_0C, FieldOverworldState_GetWeather(fieldState));

    return 1;
}

static BOOL ScrCmd_0C5(ScriptContext *ctx)
{
    Pokemon *v0;
    void **v1 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 v2 = ScriptContext_GetVar(ctx);

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(ctx->fieldSystem->saveData), v2);
    *v1 = ov6_02243F88(ctx->fieldSystem, 0, v0, PlayerAvatar_Gender(ctx->fieldSystem->playerAvatar));

    ScriptContext_Pause(ctx, sub_02042C80);
    return 1;
}

static BOOL sub_02042C80(ScriptContext *ctx)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);

    if (ov6_02243FBC(*v0) == 1) {
        ov6_02243FC8(*v0);
        return 1;
    }

    return 0;
}

static BOOL ScrCmd_0C6(ScriptContext *ctx)
{
    ov5_021E0DD4(ctx->task);
    return 1;
}

static BOOL ScrCmd_CheckPlayerOnBike(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = PlayerAvatar_GetPlayerState(ctx->fieldSystem->playerAvatar) == PLAYER_STATE_CYCLING;
    return FALSE;
}

static BOOL ScrCmd_SetPlayerBike(ScriptContext *ctx)
{
    u8 rideBike = ScriptContext_ReadByte(ctx);

    if (rideBike == TRUE) {
        Sound_SetSpecialBGM(ctx->fieldSystem, 1152);
        sub_02055554(ctx->fieldSystem, 1152, 1);
        PlayerAvatar_SetRequestStateBit(ctx->fieldSystem->playerAvatar, (1 << 1));
        PlayerAvatar_RequestChangeState(ctx->fieldSystem->playerAvatar);
    } else {
        PlayerAvatar_SetRequestStateBit(ctx->fieldSystem->playerAvatar, (1 << 0));
        PlayerAvatar_RequestChangeState(ctx->fieldSystem->playerAvatar);
        Sound_SetSpecialBGM(ctx->fieldSystem, 0);
        sub_02055554(ctx->fieldSystem, sub_02055428(ctx->fieldSystem, ctx->fieldSystem->location->mapId), 1);
    }

    return FALSE;
}

static BOOL ScrCmd_2BF(ScriptContext *ctx)
{
    Sound_SetSpecialBGM(ctx->fieldSystem, 1189);
    return 0;
}

static BOOL ScrCmd_0C9(ScriptContext *ctx)
{
    sub_0205EFC4(ctx->fieldSystem->playerAvatar, ScriptContext_ReadByte(ctx));
    return 0;
}

static BOOL ScrCmd_GetPlayerState(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = PlayerAvatar_GetPlayerState(ctx->fieldSystem->playerAvatar);
    return FALSE;
}

static BOOL ScrCmd_SetPlayerState(ScriptContext *ctx)
{
    u16 state = ScriptContext_ReadHalfWord(ctx);

    PlayerAvatar_TurnOnRequestStateBit(ctx->fieldSystem->playerAvatar, state);
    return TRUE;
}

static BOOL ScrCmd_ChangePlayerState(ScriptContext *ctx)
{
    PlayerAvatar_RequestChangeState(ctx->fieldSystem->playerAvatar);
    return FALSE;
}

static BOOL ScrCmd_GetSwarmMapAndSpecies(ScriptContext *ctx)
{
    SpecialEncounter *speEnc = SaveData_GetSpecialEncounters(ctx->fieldSystem->saveData);
    u16 *mapDest = ScriptContext_GetVarPointer(ctx);
    u16 *speciesDest = ScriptContext_GetVarPointer(ctx);

    Swarm_GetMapIdAndSpecies(SpecialEncounter_GetDailyMon(speEnc, DAILY_SWARM), mapDest, speciesDest);
    return FALSE;
}

static BOOL ScrCmd_GetPlayerStarterSpecies(ScriptContext *ctx)
{
    u16 *species = ScriptContext_GetVarPointer(ctx);

    *species = SystemVars_GetPlayerStarter(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    return FALSE;
}

static BOOL ScrCmd_0E6(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_SCRIPT_ID);
    Strbuf **v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_BUF);
    u8 *v3 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_IS_MSG_BOX_OPEN);
    u8 *v4 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_ID);
    u16 v5 = ScriptContext_GetVar(ctx);
    u16 v6 = ScriptContext_GetVar(ctx);

    Trainer_LoadMessage(v5, v6, *v2, 11);
    Window_FillTilemap(FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_WINDOW), SCRIPT_MANAGER_STR_TEMPLATE);

    *v4 = FieldMessage_Print(FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_WINDOW), *v2, SaveData_Options(ctx->fieldSystem->saveData), SCRIPT_MANAGER_WINDOW);
    ScriptContext_Pause(ctx, sub_02040014);

    return 1;
}

static BOOL ScrCmd_0F2(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 commType = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);
    u16 v3 = ScriptContext_GetVar(ctx);
    u16 v4 = ScriptContext_ReadHalfWord(ctx);

    ov7_0224B414(fieldSystem, commType, v2, v3);
    ctx->data[0] = v4;
    ScriptContext_Pause(ctx, sub_02042F74);

    return 1;
}

static BOOL sub_02042F74(ScriptContext *ctx)
{
    u32 v0;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *v2 = FieldSystem_GetVarPointer(fieldSystem, ctx->data[0]);

    v0 = ov7_0224B460();

    if (v0 == 0) {
        return 0;
    }

    *v2 = v0;
    return 1;
}

static BOOL ScrCmd_0F3(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 commType = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);
    u16 v3 = ScriptContext_GetVar(ctx);
    u16 v4 = ScriptContext_ReadHalfWord(ctx);

    ov7_0224B47C(fieldSystem, commType, v2, v3);
    ctx->data[0] = v4;
    ScriptContext_Pause(ctx, sub_0204300C);

    return 1;
}

static BOOL sub_0204300C(ScriptContext *ctx)
{
    u32 v0;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *v2 = FieldSystem_GetVarPointer(fieldSystem, ctx->data[0]);

    v0 = CommClub_CheckWindowOpenClient();

    if (v0 == 0) {
        return 0;
    }

    *v2 = v0;
    return 1;
}

static BOOL ScrCmd_0F4(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 v1 = ScriptContext_ReadHalfWord(ctx);

    return 1;
}

static BOOL ScrCmd_0F5(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 v1 = ScriptContext_ReadHalfWord(ctx);

    return 1;
}

static BOOL ScrCmd_StartLinkBattle(ScriptContext *ctx)
{
    void **partyManagementDataPtr = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_PARTY_MANAGEMENT_DATA);
    PartyManagementData *partyManagementData = *partyManagementDataPtr;

    Encounter_NewVsLink(ctx->fieldSystem->task, partyManagementData->unk_2C, BATTLE_TYPE_LINK | BATTLE_TYPE_TRAINER);
    Heap_FreeToHeap(partyManagementData);

    *partyManagementDataPtr = NULL;

    return TRUE;
}

static BOOL ScrCmd_0F7(ScriptContext *ctx)
{
    return 1;
}

static BOOL ScrCmd_11B(ScriptContext *ctx)
{
    Location location;

    location.mapId = ScriptContext_GetVar(ctx);
    location.warpId = ScriptContext_GetVar(ctx);
    location.x = ScriptContext_GetVar(ctx);
    location.z = ScriptContext_GetVar(ctx);
    location.faceDirection = ScriptContext_GetVar(ctx);

    FieldOverworldState_SetSpecialLocation(SaveData_GetFieldOverworldState(ctx->fieldSystem->saveData), &location);
    return 0;
}

static BOOL ScrCmd_11C(ScriptContext *ctx)
{
    Location *location;
    u16 *v1 = ScriptContext_GetVarPointer(ctx);

    location = FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(ctx->fieldSystem->saveData));
    *v1 = FieldMenu_GetFloorsAbove(location->mapId);

    return 0;
}

static BOOL ScrCmd_11D(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v2 = ScriptContext_ReadByte(ctx);
    u8 v3 = ScriptContext_ReadByte(ctx);
    u16 *v4 = ScriptContext_GetVarPointer(ctx);
    u16 v5 = ScriptContext_GetVar(ctx);

    FieldMenu_ShowCurrentFloorWindow(fieldSystem, v2, v3, v4, *v1, v5);
    return 0;
}

static BOOL ScrCmd_11E(ScriptContext *ctx)
{
    const Pokedex *v0 = SaveData_GetPokedex(ctx->fieldSystem->saveData);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);

    *v1 = Pokedex_CountSeen_Local(v0);
    return 0;
}

static BOOL ScrCmd_11F(ScriptContext *ctx)
{
    const Pokedex *v0 = SaveData_GetPokedex(ctx->fieldSystem->saveData);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);

    *v1 = Pokedex_CountCaught_Local(v0);
    return 0;
}

static BOOL ScrCmd_120(ScriptContext *ctx)
{
    const Pokedex *v0 = SaveData_GetPokedex(ctx->fieldSystem->saveData);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);

    *v1 = Pokedex_CountSeen_National(v0);
    return 0;
}

static BOOL ScrCmd_121(ScriptContext *ctx)
{
    const Pokedex *v0 = SaveData_GetPokedex(ctx->fieldSystem->saveData);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);

    *v1 = Pokedex_CountCaught_National(v0);
    return 0;
}

static BOOL ScrCmd_122(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    return 0;
}

static BOOL ScrCmd_123(ScriptContext *ctx)
{
    const Pokedex *v0 = SaveData_GetPokedex(ctx->fieldSystem->saveData);
    const TrainerInfo *v1 = SaveData_GetTrainerInfo(ctx->fieldSystem->saveData);
    u8 v2 = ScriptContext_ReadByte(ctx);
    u16 *v3 = ScriptContext_GetVarPointer(ctx);
    u16 v4;

    if (v2 == 0) {
        v4 = Pokedex_NumCaught_Local(v0);
        *v3 = sub_0205E078(v4, SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(ctx->fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_ETERNA_CITY));
    } else {
        v4 = Pokedex_NumCaught_National(v0);
        *v3 = sub_0205E0E4(v4, TrainerInfo_Gender(v1));
    }

    return 0;
}

static BOOL ScrCmd_StartWildBattle(ScriptContext *ctx)
{
    int *battleResultMaskPtr = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_BATTLE_RESULT);
    u16 species = ScriptContext_GetVar(ctx);
    u8 level = (u8)ScriptContext_GetVar(ctx);

    Encounter_NewVsSpeciesAtLevel(ctx->task, species, level, battleResultMaskPtr, FALSE);
    return TRUE;
}

static BOOL ScrCmd_StartLegendaryBattle(ScriptContext *ctx)
{
    int *battleResultMaskPtr = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_BATTLE_RESULT);
    u16 species = ScriptContext_GetVar(ctx);
    u8 level = (u8)ScriptContext_GetVar(ctx);

    Encounter_NewVsSpeciesAtLevel(ctx->task, species, level, battleResultMaskPtr, TRUE);
    return TRUE;
}

static BOOL ScrCmd_StartGiratinaOriginBattle(ScriptContext *ctx)
{
    int *battleResultMaskPtr = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_BATTLE_RESULT);
    u16 species = ScriptContext_GetVar(ctx);
    u8 level = (u8)ScriptContext_GetVar(ctx);

    Encounter_NewVsGiratinaOrigin(ctx->task, species, level, battleResultMaskPtr, TRUE);
    return TRUE;
}

static BOOL ScrCmd_StartFatefulEncounter(ScriptContext *ctx)
{
    int *battleResultMaskPtr = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_BATTLE_RESULT);
    u16 species = ScriptContext_GetVar(ctx);
    u8 level = (u8)ScriptContext_GetVar(ctx);

    Encounter_NewFatefulVsSpeciesAtLevel(ctx->task, species, level, battleResultMaskPtr, TRUE);
    return TRUE;
}

static BOOL ScrCmd_StartFirstBattle(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    int *battleResultMaskPtr = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_BATTLE_RESULT);
    u16 trainerID = ScriptContext_GetVar(ctx);

    Encounter_NewVsFirstBattle(ctx->task, trainerID, HEAP_ID_FIELDMAP, battleResultMaskPtr);
    return TRUE;
}

static BOOL ScrCmd_StartCatchingTutorial(ScriptContext *ctx)
{
    Encounter_NewCatchingTutorial(ctx->task);
    return TRUE;
}

static BOOL ScrCmd_SlatherHoneyTree(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    HoneyTree_SlatherTree(fieldSystem);
    return FALSE;
}

static BOOL ScrCmd_GetHoneyTreeStatus(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *var = ScriptContext_GetVarPointer(ctx);

    *var = HoneyTree_GetTreeSlatherStatus(fieldSystem);
    return FALSE;
}

static BOOL ScrCmd_StartHoneyTreeBattle(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    int *battleResultMaskPtr = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_BATTLE_RESULT);
    Encounter_NewVsHoneyTree(ctx->task, battleResultMaskPtr);
    return TRUE;
}

static BOOL ScrCmd_12A(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    HoneyTree_StopShaking(fieldSystem);
    return 0;
}

static BOOL ScrCmd_12B(ScriptContext *ctx)
{
    sub_0203E0D0(ctx->fieldSystem);
    ScriptContext_Pause(ctx, ScriptContext_WaitForApplicationExit);
    return 1;
}

static BOOL ScrCmd_CheckSaveType(ScriptContext *ctx)
{
    SaveData *saveData = ctx->fieldSystem->saveData;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    if (SaveData_OverwriteCheck(saveData)) {
        *destVar = SAVE_TYPE_OVERWRITE;
    } else if (SaveData_DataExists(saveData) == FALSE) {
        *destVar = SAVE_TYPE_NO_DATA_EXISTS;
    } else if (SaveData_FullSaveRequired(saveData)) {
        *destVar = SAVE_TYPE_FULL_SAVE;
    } else {
        *destVar = SAVE_TYPE_QUICK_SAVE;
    }

    return FALSE;
}

static BOOL ScrCmd_12D(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVarResult = ScriptContext_GetVarPointer(ctx);

    *destVarResult = FieldSystem_Save(fieldSystem);
    return FALSE;
}

static BOOL ScrCmd_2D6(ScriptContext *ctx)
{
    SaveDataExtra_Init(ctx->fieldSystem->saveData);
    return 0;
}

static BOOL ScrCmd_2D7(ScriptContext *ctx)
{
    u16 *v0 = ScriptContext_GetVarPointer(ctx);

    *v0 = SaveData_MiscSaveBlock_InitFlag(ctx->fieldSystem->saveData);
    return 0;
}

static BOOL ScrCmd_131(ScriptContext *ctx)
{
    ov5_021DDBC8(ctx->task);
    return 1;
}

static BOOL ScrCmd_132(ScriptContext *ctx)
{
    Poketch *poketch = SaveData_PoketchData(ctx->fieldSystem->saveData);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);

    *v1 = Poketch_IsEnabled(poketch);
    return 0;
}

static BOOL ScrCmd_RegisterPoketchApp(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 appID = ScriptContext_GetVar(ctx);

    Poketch_RegisterApp(SaveData_PoketchData(fieldSystem->saveData), appID);
    return FALSE;
}

static BOOL ScrCmd_CheckPoketchAppRegistered(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 appID = ScriptContext_GetVar(ctx);
    u16 *destVarID = ScriptContext_GetVarPointer(ctx);

    *destVarID = Poketch_IsAppRegistered(SaveData_PoketchData(fieldSystem->saveData), appID);
    return FALSE;
}

static BOOL ScrCmd_135(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);

    ctx->data[0] = v0;

    CommTiming_StartSync(v0);
    ScriptContext_Pause(ctx, sub_02043678);

    return 1;
}

static BOOL sub_02043678(ScriptContext *ctx)
{
    int v0;

    if (CommSys_ConnectedCount() < 2) {
        v0 = 1;
    } else {
        v0 = CommTiming_IsSyncState(ctx->data[0]);
    }

    return v0;
}

static BOOL ScrCmd_136(ScriptContext *ctx)
{
    sub_020365F4();
    return 0;
}

static BOOL ScrCmd_137(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 *v2 = ScriptContext_GetVarPointer(ctx);

    *v2 = sub_0205BC50(*v1);
    return 0;
}

static BOOL ScrCmd_138(ScriptContext *ctx)
{
    u16 *v0 = ScriptContext_GetVarPointer(ctx);
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);

    *v0 = sub_0205BF44(ctx->fieldSystem->unk_7C, *v2);
    return 0;
}

static BOOL ScrCmd_139(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_ReadHalfWord(ctx);

    if ((v0 == 5) || (v0 == 7) || (v0 == 9) || (v0 == 6) || (v0 == 12) || (v0 == 10)) {
        sub_02036BC8();
    } else if (v0 == 11) {
        sub_02036BD8();
    }

    if (CommSys_CurNetId() == 0) {
        sub_0205BEA8(v0);
    }

    return 0;
}

static BOOL ScrCmd_13C(ScriptContext *ctx)
{
    MapObject **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 v2 = ScriptContext_ReadHalfWord(ctx);
    TrainerInfo *v3 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(ctx->fieldSystem));
    UnkStruct_02014EC4 *v4 = sub_02014EC4(FieldSystem_GetSaveData(ctx->fieldSystem));
    u16 v5;

    if (v2 == 0) {
        v5 = MapObject_GetLocalID(*v0);
    } else {
        v5 = 0;
    }

    sub_0205C040(*v1, v2, v5, v3, v4);
    return 0;
}

static BOOL ScrCmd_13D(ScriptContext *ctx)
{
    CommFieldCmd_Init(ctx->fieldSystem);
    return 0;
}

static BOOL ScrCmd_13E(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    sub_0205C2B0(fieldSystem->unk_80);
    sub_02036AC4();
    ScriptContext_Pause(ctx, sub_020437E8);

    return 1;
}

static BOOL sub_020437E8(ScriptContext *ctx)
{
    return CommSys_ConnectedCount() < 2;
}

static BOOL ScrCmd_13F(ScriptContext *ctx)
{
    MapObject **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 v1 = ScriptContext_ReadHalfWord(ctx);
    u16 *v2 = ScriptContext_GetVarPointer(ctx);
    StringTemplate **v3 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);

    *v2 = sub_0205BCF4(ctx->fieldSystem->unk_7C, MapObject_GetLocalID(*v0), v1, *v3);
    return 0;
}

static BOOL ScrCmd_2BA(ScriptContext *ctx)
{
    PartyManagementData *v0;
    void **v1;
    u16 *v2 = ScriptContext_GetVarPointer(ctx);

    *v2 = sub_0205BA7C(ctx->fieldSystem->unk_7C);

    if (*v2 != 0) {
        v1 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
        v0 = *v1;
        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ScrCmd_140(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    MapObject **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 *v2 = ScriptContext_GetVarPointer(ctx);

    *v2 = sub_0205B780(fieldSystem->unk_7C, MapObject_GetLocalID(*v1));
    return 0;
}

static BOOL ScrCmd_146(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    MapObject **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 v2 = ScriptContext_GetVar(ctx);
    u16 *v3 = ScriptContext_GetVarPointer(ctx);

    *v3 = sub_0205B804(fieldSystem->unk_7C, MapObject_GetLocalID(*v1), v2);
    return 0;
}

static BOOL ScrCmd_141(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_ReadHalfWord(ctx);

    ctx->data[0] = v0;
    ScriptContext_Pause(ctx, sub_02043938);

    return 1;
}

static BOOL sub_02043938(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u32 v1 = sub_0205B8D8(fieldSystem->unk_7C);
    u16 *v2 = FieldSystem_GetVarPointer(fieldSystem, ctx->data[0]);

    if (v1 == 0) {
        return 0;
    }

    *v2 = v1;
    return 1;
}

static BOOL ScrCmd_142(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    UnkStruct_0205C22C *v1 = fieldSystem->unk_80;

    sub_0205C820(fieldSystem->mapObjMan, v1);
    return 0;
}

static BOOL ScrCmd_13A(ScriptContext *ctx)
{
    sub_0205BEA8(4);
    sub_02036BA0();
    return 0;
}

static BOOL ScrCmd_13B(ScriptContext *ctx)
{
    sub_02036BD8();
    sub_02036AC4();
    sub_0205BEA8(0);
    return 0;
}

static BOOL ScrCmd_143(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);

    sub_0205B930(fieldSystem->unk_7C, v1, v2);
    return 0;
}

static BOOL ScrCmd_144(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_ReadHalfWord(ctx);

    ctx->data[0] = v0;
    ScriptContext_Pause(ctx, sub_020439F4);

    return 1;
}

static BOOL sub_020439F4(ScriptContext *ctx)
{
    u16 *v0 = FieldSystem_GetVarPointer(ctx->fieldSystem, ctx->data[0]);
    u32 v1 = sub_0205B8DC(ctx->fieldSystem->unk_7C);

    if (v1 >= 1) {
        *v0 = v1;

        sub_0205C154(ctx->fieldSystem->unk_7C);
        return 1;
    }

    *v0 = 0;
    return 0;
}

static BOOL ScrCmd_145(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_ReadHalfWord(ctx);

    ctx->data[0] = v0;
    ScriptContext_Pause(ctx, sub_02043A4C);

    return 1;
}

static BOOL sub_02043A4C(ScriptContext *ctx)
{
    u16 *v0 = FieldSystem_GetVarPointer(ctx->fieldSystem, ctx->data[0]);
    u32 v1 = sub_0205B91C(ctx->fieldSystem->unk_7C);

    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        v1 = sub_0205B9EC(ctx->fieldSystem->unk_7C, 8);

        if (v1) {
            (void)0;
        } else {
            (void)0;
        }
    }

    if (v1 != 0) {
        *v0 = v1;
        return 1;
    }

    return 0;
}

static BOOL ScrCmd_153(ScriptContext *ctx)
{
    sub_02054708(ctx->fieldSystem->task);
    return 1;
}

static BOOL ScrCmd_154(ScriptContext *ctx)
{
    TrainerInfo *v0 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(ctx->fieldSystem));
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);

    sub_0205C980(TrainerInfo_ID(v0), TrainerInfo_Gender(v0), *v1);
    return 0;
}

static BOOL ScrCmd_155(ScriptContext *ctx)
{
    TrainerInfo *v0 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(ctx->fieldSystem));
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 *v2 = ScriptContext_GetVarPointer(ctx);

    *v2 = sub_0205C9BC(TrainerInfo_ID(v0), TrainerInfo_Gender(v0), v1);
    *v2 = sub_0205CA14(TrainerInfo_Gender(v0), *v2, 2);

    return 0;
}

static BOOL ScrCmd_29C(ScriptContext *ctx)
{
    TrainerInfo *v0 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(ctx->fieldSystem));
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 *v2 = ScriptContext_GetVarPointer(ctx);

    *v2 = sub_0205C9BC(TrainerInfo_ID(v0), TrainerInfo_Gender(v0), v1);

    return 0;
}

static BOOL ScrCmd_156(ScriptContext *ctx)
{
    TrainerInfo *v0 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(ctx->fieldSystem));
    u16 v1 = ScriptContext_GetVar(ctx);

    TrainerInfo_SetAppearance(v0, v1);
    return 0;
}

static BOOL ScrCmd_14B(ScriptContext *ctx)
{
    sub_02052C5C(ctx->task);
    return 1;
}

static BOOL ScrCmd_14C(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    FieldSystem *fieldSystem = ctx->fieldSystem;

    FieldOverworldState_SetWarpId(SaveData_GetFieldOverworldState(fieldSystem->saveData), v0);
    return 0;
}

static BOOL ScrCmd_GetPlayerGender(ScriptContext *ctx)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(ctx->fieldSystem));
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = TrainerInfo_Gender(trainerInfo);
    return FALSE;
}

static BOOL ScrCmd_HealParty(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(ctx->task);

    HealAllPokemonInParty(Party_GetFromSavedata(fieldSystem->saveData));
    return FALSE;
}

static BOOL ScrCmd_14F(ScriptContext *ctx)
{
    return 0;
}

static BOOL ScrCmd_150(ScriptContext *ctx)
{
    FieldCommMan_EndBattle();
    ScriptContext_Pause(ctx, sub_02043C70);
    return 1;
}

static BOOL sub_02043C70(ScriptContext *ctx)
{
    if (CommMan_IsInitialized() != 1) {
        if (CommServerClient_IsInitialized() != 1) {
            return 1;
        }
    }

    return 0;
}

static BOOL ScrCmd_2BB(ScriptContext *ctx)
{
    sub_020598A0();
    ScriptContext_Pause(ctx, sub_02043C70);
    return 1;
}

static BOOL ScrCmd_151(ScriptContext *ctx)
{
    FieldCommMan_EnterBattleRoom(ctx->fieldSystem);
    return 0;
}

static BOOL ScrCmd_152(ScriptContext *ctx)
{
    CommPlayer_SetDir(ScriptContext_ReadHalfWord(ctx));
    return 0;
}

static BOOL ScrCmd_17A(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);

    *v1 = Bag_HasItemsInPocket(SaveData_GetBag(ctx->fieldSystem->saveData), v0);
    return 0;
}

static BOOL ScrCmd_SetObjectEventPos(ScriptContext *ctx)
{
    u16 localID = ScriptContext_GetVar(ctx);
    u16 x = ScriptContext_GetVar(ctx);
    u16 z = ScriptContext_GetVar(ctx);

    MapHeaderData_SetObjectEventPos(ctx->fieldSystem, localID, x, z);
    return FALSE;
}

static BOOL ScrCmd_187(ScriptContext *ctx)
{
    MapObject *v0;
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);
    u16 v3 = ScriptContext_GetVar(ctx);
    u16 v4 = ScriptContext_GetVar(ctx);
    u16 v5 = ScriptContext_GetVar(ctx);

    v0 = MapObjMan_LocalMapObjByIndex(ctx->fieldSystem->mapObjMan, v1);

    MapObject_SetPosDirFromCoords(v0, v2, v3, v4, v5);
    sub_020642F8(v0);

    return 0;
}

static BOOL ScrCmd_188(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    u16 v1 = ScriptContext_GetVar(ctx);

    MapHeaderData_SetObjectEventMovementType(ctx->fieldSystem, v0, v1);
    return 0;
}

static BOOL ScrCmd_189(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    u16 v1 = ScriptContext_GetVar(ctx);

    MapHeaderData_SetObjectEventDir(ctx->fieldSystem, v0, v1);
    return 0;
}

static BOOL ScrCmd_SetWarpEventPos(ScriptContext *ctx)
{
    u16 index = ScriptContext_GetVar(ctx);
    u16 x = ScriptContext_GetVar(ctx);
    u16 z = ScriptContext_GetVar(ctx);

    MapHeaderData_SetWarpEventPos(ctx->fieldSystem, index, x, z);
    return FALSE;
}

static BOOL ScrCmd_18B(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);

    MapHeaderData_SetBgEventPos(ctx->fieldSystem, v0, v1, v2);
    return 0;
}

static BOOL ScrCmd_18C(ScriptContext *ctx)
{
    MapObject *v0;
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);

    v0 = MapObjMan_LocalMapObjByIndex(ctx->fieldSystem->mapObjMan, v1);

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    }

    ov5_021ECDFC(v0, v2);
    return 0;
}

static BOOL ScrCmd_18F(ScriptContext *ctx)
{
    u16 **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_SAVE_TYPE);
    u16 v1 = ScriptContext_GetVar(ctx);

    if (*v0 != NULL) {
        **v0 = v1;
    }

    return 0;
}

static BOOL ScrCmd_168(ScriptContext *ctx)
{
    u16 v0, v1;
    u16 v2, v3;
    int v4, v5;
    u8 v6;
    FieldSystem *fieldSystem;

    v0 = ScriptContext_ReadHalfWord(ctx);
    v1 = ScriptContext_ReadHalfWord(ctx);
    v2 = ScriptContext_GetVar(ctx);
    v3 = ScriptContext_GetVar(ctx);
    v6 = ScriptContext_ReadByte(ctx);
    fieldSystem = ctx->fieldSystem;
    v4 = v0 * 32 + v2;
    v5 = v1 * 32 + v3;

    ov5_021D4BF4(fieldSystem, v4, v5, v6);

    return 0;
}

static BOOL ScrCmd_169(ScriptContext *ctx)
{
    u8 v0;
    FieldSystem *fieldSystem;

    v0 = ScriptContext_ReadByte(ctx);
    fieldSystem = ctx->fieldSystem;

    ov5_021D4D48(fieldSystem, v0);
    return 1;
}

static BOOL ScrCmd_16A(ScriptContext *ctx)
{
    u8 v0;
    FieldSystem *fieldSystem;

    v0 = ScriptContext_ReadByte(ctx);
    fieldSystem = ctx->fieldSystem;

    ov5_021D4D68(fieldSystem, v0);
    return 0;
}

static BOOL ScrCmd_16B(ScriptContext *ctx)
{
    u8 v0;
    FieldSystem *fieldSystem;

    v0 = ScriptContext_ReadByte(ctx);
    fieldSystem = ctx->fieldSystem;

    ov5_021D4C88(fieldSystem, v0);
    return 0;
}

static BOOL ScrCmd_16C(ScriptContext *ctx)
{
    u8 v0;
    FieldSystem *fieldSystem;

    v0 = ScriptContext_ReadByte(ctx);
    fieldSystem = ctx->fieldSystem;

    ov5_021D4CEC(fieldSystem, v0);
    return 0;
}

static BOOL ScrCmd_16F(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    sub_02071B10(fieldSystem);
    return 0;
}

static BOOL ScrCmd_170(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    ov8_0224997C(fieldSystem);
    return 1;
}

static BOOL ScrCmd_171(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    sub_02071C18(fieldSystem);
    return 0;
}

static BOOL ScrCmd_172(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    ov8_02249FB8(fieldSystem);
    return 1;
}

static BOOL ScrCmd_173(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    sub_02071B30(fieldSystem);
    return 0;
}

static BOOL ScrCmd_174(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    sub_02071BF8(fieldSystem);
    return 0;
}

static BOOL ScrCmd_175(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 v1 = ScriptContext_ReadByte(ctx);

    sub_02071B6C(fieldSystem, v1);
    return 0;
}

static BOOL ScrCmd_176(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 v1 = ScriptContext_ReadByte(ctx);

    ov8_0224AD34(fieldSystem, v1);
    return 1;
}

static BOOL ScrCmd_2C9(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    sub_02071BD0(fieldSystem);
    return 0;
}

static BOOL ScrCmd_2F0(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    sub_02071C34(fieldSystem);
    return 0;
}

static BOOL ScrCmd_2F2(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    sub_02071C5C(fieldSystem);
    return 0;
}

static BOOL ScrCmd_GetPlayer3DPos(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    u16 *destVarX = ScriptContext_GetVarPointer(ctx);
    u16 *destVarY = ScriptContext_GetVarPointer(ctx);
    u16 *destVarZ = ScriptContext_GetVarPointer(ctx);

    MapObject *player = Player_MapObject(fieldSystem->playerAvatar);

    *destVarX = MapObject_GetX(player);
    *destVarY = MapObject_GetY(player) / 2;
    *destVarZ = MapObject_GetZ(player);

    return FALSE;
}

static BOOL ScrCmd_1AC(ScriptContext *ctx)
{
    sub_0203E2FC(ctx->fieldSystem);
    return 1;
}

static BOOL ScrCmd_19E(ScriptContext *ctx)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    MapObject **v1 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 v2 = ScriptContext_GetVar(ctx);
    u16 v3 = ScriptContext_ReadHalfWord(ctx);

    ctx->data[0] = v3;
    *v0 = ov23_02252C98(v2, ctx->fieldSystem, MapObject_GetLocalID(*v1));

    ScriptContext_Pause(ctx, sub_020441C8);
    return 1;
}

static BOOL sub_020441C8(ScriptContext *ctx)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *v1 = FieldSystem_GetVarPointer(ctx->fieldSystem, ctx->data[0]);

    *v1 = ov23_02252C70(*v0);

    if ((*v1) == 0xfffe) {
        return 0;
    }

    return 1;
}

static BOOL ScrCmd_19F(ScriptContext *ctx)
{
    u8 *v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_MESSAGE_ID);

    *v0 = ov23_02252C9C(ScriptContext_GetVar(ctx));
    ScriptContext_Pause(ctx, sub_02044240);

    return 1;
}

static BOOL sub_02044240(ScriptContext *ctx)
{
    u8 *v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_MESSAGE_ID);
    return FieldMessage_FinishedPrinting(*v0);
}

static BOOL ScrCmd_1A0(ScriptContext *ctx)
{
    ov23_02252CD4();
    return 0;
}

static BOOL ScrCmd_1A1(ScriptContext *ctx)
{
    u8 v0 = ScriptContext_ReadByte(ctx);
    u16 v1 = ScriptContext_GetVar(ctx);

    ov23_02252CE0(v0, v1);
    return 0;
}

static BOOL ScrCmd_1A2(ScriptContext *ctx)
{
    u8 v0 = ScriptContext_ReadByte(ctx);
    u16 v1 = ScriptContext_GetVar(ctx);

    ov23_02252CF4(v0, v1);
    return 0;
}

static BOOL ScrCmd_03F(ScriptContext *ctx)
{
    return 1;
}

static BOOL ScrCmd_1B1(ScriptContext *ctx)
{
    MapObject *v0;
    FieldSystem *fieldSystem = ctx->fieldSystem;

    v0 = MapObjMan_LocalMapObjByIndex(fieldSystem->mapObjMan, ScriptContext_GetVar(ctx));

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    }

    MapObject_SetHidden(v0, 0);
    return 0;
}

static BOOL ScrCmd_1B2(ScriptContext *ctx)
{
    MapObject *v0;
    FieldSystem *fieldSystem = ctx->fieldSystem;

    v0 = MapObjMan_LocalMapObjByIndex(fieldSystem->mapObjMan, ScriptContext_GetVar(ctx));

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    }

    MapObject_SetHidden(v0, 1);
    return 0;
}

static BOOL ScrCmd_1B3(ScriptContext *ctx)
{
    sub_020736D8(ctx->task);
    return 1;
}

static BOOL ScrCmd_1B4(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *v1 = ScriptContext_GetVarPointer(ctx);
    UnkStruct_02028430 *v2 = sub_02028430(fieldSystem->saveData);

    *v1 = (u16)sub_02028494(v2, 0);
    return 0;
}

static BOOL ScrCmd_1B5(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);

    sub_020703FC(ctx->task, v0);
    return 1;
}

static BOOL ScrCmd_GetTimeOfDay(ScriptContext *ctx)
{
    u16 *timeOfDay = ScriptContext_GetVarPointer(ctx);
    *timeOfDay = FieldSystem_GetTimeOfDay(ctx->fieldSystem);
    return FALSE;
}

static BOOL ScrCmd_1B7(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *v1 = ScriptContext_GetVarPointer(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);

    *v1 = (LCRNG_Next() % v2);

    return 1;
}

static BOOL ScrCmd_1B8(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *v1 = ScriptContext_GetVarPointer(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);

    *v1 = (LCRNG_Next() % v2);

    return 1;
}

static BOOL ScrCmd_1C1(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *v1 = ScriptContext_GetVarPointer(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);

    *v1 = ov5_021EE920(fieldSystem, v2);

    return 0;
}

static BOOL ScrCmd_1C2(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Pokemon *v1;
    u16 v2 = ScriptContext_GetVar(ctx);

    ov5_021EE9BC(fieldSystem, v2);

    return 0;
}

static BOOL ScrCmd_1C3(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);
    u16 v3 = ScriptContext_GetVar(ctx);

    ov5_021EEA84(fieldSystem, v1, v2, v3);
    return 0;
}

static BOOL ScrCmd_1C4(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);
    u16 v3 = ScriptContext_GetVar(ctx);

    ov5_021EEA54(fieldSystem, v1, v2, v3);
    return 0;
}

static BOOL ScrCmd_InitSizeContestRecord(ScriptContext *ctx)
{
    SystemVars_SetSizeContestRecord(SaveData_GetVarsFlags(ctx->fieldSystem->saveData), 33280);
    return FALSE;
}

static BOOL ScrCmd_GiveJournal(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    SystemFlag_HandleJournalAcquired(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_SET);
    fieldSystem->journalEntry = Journal_GetSavedPage(SaveData_GetJournal(fieldSystem->saveData), 1);
    sub_02053494(fieldSystem);

    return FALSE;
}

static BOOL ScrCmd_CreateJournalEvent(ScriptContext *ctx)
{
    u8 dataType;
    u16 eventType = ScriptContext_GetVar(ctx);
    u16 eventParam = ScriptContext_GetVar(ctx);
    u16 unused1 = ScriptContext_GetVar(ctx);
    u16 unused2 = ScriptContext_GetVar(ctx);
    u16 unused3 = ScriptContext_GetVar(ctx);
    void **data = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);

    switch (eventType) {
    case LOCATION_EVENT_GAME_CORNER:
        dataType = JOURNAL_LOCATION;
        *data = JournalEntry_CreateEventGameCorner(HEAP_ID_FIELD);
        break;
    case LOCATION_EVENT_SAFARI_GAME:
        dataType = JOURNAL_LOCATION;
        *data = JournalEntry_CreateEventSafariGame(HEAP_ID_FIELD);
        break;
    case LOCATION_EVENT_ITEM_WAS_OBTAINED:
        dataType = JOURNAL_LOCATION;
        *data = JournalEntry_CreateEventObtainedItem(eventParam, HEAP_ID_FIELD);
        break;
    case LOCATION_EVENT_USED_CUT:
    case LOCATION_EVENT_USED_SURF:
    case LOCATION_EVENT_USED_STRENGTH:
    case LOCATION_EVENT_USED_DEFOG:
    case LOCATION_EVENT_USED_ROCK_SMASH:
    case LOCATION_EVENT_USED_WATERFALL:
    case LOCATION_EVENT_USED_ROCK_CLIMB:
        dataType = JOURNAL_LOCATION;
        *data = JournalEntry_CreateEventUsedMove(eventType - LOCATION_EVENT_USED_CUT, eventParam, HEAP_ID_FIELD);
        break;
    case LOCATION_EVENT_BATTLE_TOWER:
    case LOCATION_EVENT_BATTLE_FACTORY:
    case LOCATION_EVENT_BATTLE_CASTLE:
    case LOCATION_EVENT_BATTLE_HALL:
    case LOCATION_EVENT_BATTLE_ARCADE:
        dataType = JOURNAL_LOCATION;
        *data = JournalEntry_CreateEventBattleFacility(HEAP_ID_FIELD, eventType);
        break;
    default:
        return TRUE;
    }

    JournalEntry_SaveData(ctx->fieldSystem->journalEntry, *data, dataType);
    return TRUE;
}

static BOOL ScrCmd_1CE(ScriptContext *ctx)
{
    return 0;
}

static BOOL ScrCmd_1D2(ScriptContext *ctx)
{
    UnkStruct_0202A750 *v0;
    UnkStruct_02029D04 *v1;
    u16 v2 = ScriptContext_GetVar(ctx);
    u16 v3 = ScriptContext_GetVar(ctx);

    v0 = sub_0202A750(ctx->fieldSystem->saveData);
    v1 = sub_02029D04(v0);

    sub_02029E2C(v1, v2, v3);
    return 0;
}

static BOOL ScrCmd_1D3(ScriptContext *ctx)
{
    UnkStruct_0202A750 *v0;
    UnkStruct_02029D04 *v1;
    u16 v2 = ScriptContext_GetVar(ctx);
    u16 v3 = ScriptContext_GetVar(ctx);
    u16 *v4 = ScriptContext_GetVarPointer(ctx);

    v0 = sub_0202A750(ctx->fieldSystem->saveData);
    v1 = sub_02029D04(v0);
    *v4 = sub_02029D50(v1, v2, v3);

    return 0;
}

static BOOL ScrCmd_1D4(ScriptContext *ctx)
{
    UnkStruct_0202A750 *v0;
    UnkStruct_02029D04 *v1;
    u16 v2 = ScriptContext_GetVar(ctx);
    u16 v3 = ScriptContext_GetVar(ctx);
    u16 *v4 = ScriptContext_GetVarPointer(ctx);

    v0 = sub_0202A750(ctx->fieldSystem->saveData);
    v1 = sub_02029D04(v0);

    if (v3 <= sub_02029D94(v1, v2)) {
        *v4 = 1;
    } else {
        *v4 = 0;
    }

    return 0;
}

static BOOL ScrCmd_1D5(ScriptContext *ctx)
{
    UnkStruct_0202A750 *v0;
    UnkStruct_02029D04 *v1;
    u16 v2 = ScriptContext_GetVar(ctx);

    v0 = sub_0202A750(ctx->fieldSystem->saveData);
    v1 = sub_02029D04(v0);

    sub_02029EFC(v1, v2);
    return 0;
}

static BOOL ScrCmd_1D6(ScriptContext *ctx)
{
    UnkStruct_0202A750 *v0;
    UnkStruct_02029D04 *v1;
    u16 v2 = ScriptContext_GetVar(ctx);
    u16 *v3 = ScriptContext_GetVarPointer(ctx);

    v0 = sub_0202A750(ctx->fieldSystem->saveData);
    v1 = sub_02029D04(v0);
    *v3 = sub_02029D80(v1, v2);

    return 0;
}

static BOOL ScrCmd_1E8(ScriptContext *ctx)
{
    const Pokedex *v0 = SaveData_GetPokedex(ctx->fieldSystem->saveData);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);

    *v1 = 0;

    if (Pokedex_LocalDexCompleted(v0) == 1) {
        *v1 = 1;
    }

    return 0;
}

static BOOL ScrCmd_1E9(ScriptContext *ctx)
{
    const Pokedex *v0 = SaveData_GetPokedex(ctx->fieldSystem->saveData);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);

    *v1 = 0;

    if (Pokedex_NationalDexCompleted(v0) == 1) {
        *v1 = 1;
    }

    return 0;
}

static BOOL ScrCmd_1EA(ScriptContext *ctx)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);

    *v0 = sub_0203E53C(ctx->fieldSystem, HEAP_ID_FIELD_TASK, 0);
    ScriptContext_Pause(ctx, sub_02041CC8);

    return 1;
}

static BOOL ScrCmd_1EB(ScriptContext *ctx)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);

    *v0 = sub_0203E53C(ctx->fieldSystem, HEAP_ID_FIELD_TASK, 1);
    ScriptContext_Pause(ctx, sub_02041CC8);

    return 1;
}

static BOOL ScrCmd_AddTrophyGardenMon(ScriptContext *ctx)
{
    TrophyGarden_AddNewMon(ctx->fieldSystem->saveData);
    return FALSE;
}

static BOOL ScrCmd_GetTrophyGardenSlot1Species(ScriptContext *ctx)
{
    u16 *var = ScriptContext_GetVarPointer(ctx);

    *var = TrophyGarden_GetSlot1Species(ctx->fieldSystem->saveData);
    return FALSE;
}

static BOOL ScrCmd_1EF(ScriptContext *ctx)
{
    u16 *v0 = ScriptContext_GetVarPointer(ctx);
    return 0;
}

static BOOL ScrCmd_IncrementGameRecord(ScriptContext *ctx)
{
    u16 recordID = ScriptContext_ReadHalfWord(ctx);

    GameRecords_IncrementRecordValue(SaveData_GetGameRecordsPtr(ctx->fieldSystem->saveData), recordID);
    return FALSE;
}

static BOOL ScrCmd_1E6(ScriptContext *ctx)
{
    u32 v0;
    u16 *v1, *v2;
    u16 v3 = ScriptContext_ReadHalfWord(ctx);
    u16 v4 = ScriptContext_ReadHalfWord(ctx);
    u16 v5 = ScriptContext_ReadHalfWord(ctx);

    v1 = FieldSystem_GetVarPointer(ctx->fieldSystem, v4);
    v2 = FieldSystem_GetVarPointer(ctx->fieldSystem, v5);
    v0 = GameRecords_GetRecordValue(SaveData_GetGameRecordsPtr(ctx->fieldSystem->saveData), v3);
    *v1 = ((v0 & 0xFFFF0000) >> 16);
    *v2 = (v0 & 0xFFFF);

    return 0;
}

static BOOL ScrCmd_1E7(ScriptContext *ctx)
{
    u32 v0;
    u16 v1 = ScriptContext_ReadHalfWord(ctx);
    u16 v2 = ScriptContext_ReadHalfWord(ctx);
    u16 v3 = ScriptContext_ReadHalfWord(ctx);
    u8 v4 = ScriptContext_ReadByte(ctx);

    v0 = (u32)(v2) << 16;
    v0 |= v3;

    switch (v4) {
    case 0:
        GameRecords_AddToRecordValue(SaveData_GetGameRecordsPtr(ctx->fieldSystem->saveData), v1, v0);
        break;
    case 1:
        GameRecords_SetRecordValue(SaveData_GetGameRecordsPtr(ctx->fieldSystem->saveData), v1, v0);
        break;
    case 2:
        GameRecords_SetAndLimitRecordValue(SaveData_GetGameRecordsPtr(ctx->fieldSystem->saveData), v1, v0);
        break;
    }

    return 0;
}

static BOOL ScrCmd_334(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_ReadHalfWord(ctx);
    u16 v1 = ScriptContext_GetVar(ctx);

    GameRecords_AddToRecordValue(SaveData_GetGameRecordsPtr(ctx->fieldSystem->saveData), v0, v1);
    return 0;
}

static BOOL ScrCmd_335(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_ReadHalfWord(ctx);
    u32 v1 = ScriptContext_ReadWord(ctx);

    GameRecords_AddToRecordValue(SaveData_GetGameRecordsPtr(ctx->fieldSystem->saveData), v0, v1);
    return 0;
}

static BOOL ScrCmd_202(ScriptContext *ctx)
{
    u16 *v0;
    u16 *v1;
    FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(ctx->fieldSystem->saveData);
    VarsFlags *v3 = SaveData_GetVarsFlags(ctx->fieldSystem->saveData);
    TVBroadcast *v4 = SaveData_TVBroadcast(ctx->fieldSystem->saveData);
    int v5 = ScriptContext_ReadByte(ctx);

    v0 = FieldOverworldState_GetSafariBallCount(fieldState);
    v1 = FieldOverworldState_GetSafariStepCount(fieldState);

    switch (v5) {
    case 0:
        SystemFlag_SetSafariGameActive(v3);
        sub_0206D000(v4);
        *v0 = 30;
        *v1 = 0;
        break;
    case 1:
        SystemFlag_ClearSafariGameActive(v3);
        sub_0206D720(ctx->fieldSystem);
        void *journalEntryLocationEvent = JournalEntry_CreateEventSafariGame(HEAP_ID_FIELD);

        JournalEntry_SaveData(ctx->fieldSystem->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
        *v0 = 0;
        *v1 = 0;
        break;
    }

    return FALSE;
}

static BOOL ScrCmd_StartGreatMarshLookout(ScriptContext *ctx)
{
    GreatMarshLookout_Init(ctx->fieldSystem);
    return TRUE;
}

static BOOL ScrCmd_20D(ScriptContext *ctx)
{
    u8 v0 = ScriptContext_ReadByte(ctx);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);

    *v1 = ov6_02243004(ctx->fieldSystem, v0);
    return 1;
}

static BOOL ScrCmd_20E(ScriptContext *ctx)
{
    sub_02071CD0(ctx->fieldSystem);
    return 0;
}

static BOOL ScrCmd_20F(ScriptContext *ctx)
{
    u16 *v0 = ScriptContext_GetVarPointer(ctx);
    u16 v1 = ScriptContext_ReadHalfWord(ctx);

    sub_02004550(65, 0, 0);
    ov6_02242B58(ctx->fieldSystem, *v0, v1);

    return 1;
}

static BOOL ScrCmd_210(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_ReadHalfWord(ctx);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);

    *v1 = ov6_02242C3C(ctx->fieldSystem, v0);
    return 0;
}

static BOOL ScrCmd_211(ScriptContext *ctx)
{
    u8 v0 = ScriptContext_ReadByte(ctx);

    sub_0205ED2C(ctx->fieldSystem->playerAvatar, v0);
    return 1;
}

static BOOL ScrCmd_GetSpiritombCounter(ScriptContext *ctx)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(ctx->fieldSystem->saveData);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = SystemVars_GetSpiritombCounter(varsFlags);
    return FALSE;
}

static BOOL ScrCmd_218(ScriptContext *ctx)
{
    const Pokedex *v0 = SaveData_GetPokedex(ctx->fieldSystem->saveData);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);
    u16 v2, v3, v4, v5;

    v2 = Pokedex_CountSeen_Local(v0);
    v3 = LCRNG_Next() % v2;
    *v1 = 25;

    for (v4 = 1, v5 = 0; v4 <= NATIONAL_DEX_COUNT; v4++) {
        if (Pokedex_HasSeenSpecies(v0, v4) == TRUE && Pokemon_SinnohDexNumber(v4) != FALSE) {
            if (v5 == v3) {
                *v1 = v4;
                break;
            }

            v5++;
        }
    }

    return 0;
}

static BOOL ScrCmd_SetNewsPressDeadline(ScriptContext *ctx)
{
    u16 deadlineInDays = ScriptContext_GetVar(ctx);
    SystemVars_SetNewsPressDeadline(SaveData_GetVarsFlags(ctx->fieldSystem->saveData), deadlineInDays);
    return FALSE;
}

static BOOL ScrCmd_GetNewsPressDeadline(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = SystemVars_GetNewsPressDeadline(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    return FALSE;
}

static BOOL ScrCmd_EnableSwarms(ScriptContext *ctx)
{
    SpecialEncounter_EnableSwarms(ctx->fieldSystem->saveData);

    return 0;
}

static BOOL ScrCmd_ActivateRoamingPokemon(ScriptContext *ctx)
{
    u8 slot = ScriptContext_ReadByte(ctx);

    RoamingPokemon_ActivateSlot(ctx->fieldSystem->saveData, slot);
    return FALSE;
}

static BOOL ScrCmd_StartNpcTrade(ScriptContext *ctx)
{
    void **data = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    *data = NpcTrade_Init(HEAP_ID_FIELDMAP, ScriptContext_ReadByte(ctx));
    return FALSE;
}

static BOOL ScrCmd_GetNpcTradeSpecies(ScriptContext *ctx)
{
    void **data = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = NpcTrade_GetSpecies((NpcTradeData *)*data);
    return FALSE;
}

static BOOL ScrCmd_GetNpcTradeRequestedSpecies(ScriptContext *ctx)
{
    void **data = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = NpcTrade_GetRequestedSpecies((NpcTradeData *)*data);
    return FALSE;
}

static BOOL ScrCmd_229(ScriptContext *ctx)
{
    void **data = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    sub_0206C740(ctx->task, (NpcTradeData *)*data, ScriptContext_GetVar(ctx), HEAP_ID_FIELDMAP);
    return TRUE;
}

static BOOL ScrCmd_FinishNpcTrade(ScriptContext *ctx)
{
    void **data = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    NpcTrade_Free((NpcTradeData *)*data);
    return FALSE;
}

static BOOL ScrCmd_22B(ScriptContext *ctx)
{
    Pokedex_TurnOnLanguageDetection(SaveData_GetPokedex(ctx->fieldSystem->saveData));
    return 0;
}

static BOOL ScrCmd_22C(ScriptContext *ctx)
{
    Pokedex_TurnOnFormDetection(SaveData_GetPokedex(ctx->fieldSystem->saveData));
    return 0;
}

static BOOL ScrCmd_22D(ScriptContext *ctx)
{
    u8 v0 = ScriptContext_ReadByte(ctx);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);

    *v1 = 0;

    if (v0 == 1) {
        Pokedex_ObtainNationalDex(SaveData_GetPokedex(ctx->fieldSystem->saveData));
        TrainerInfo_GiveNationalDex(SaveData_GetTrainerInfo(ctx->fieldSystem->saveData));
    } else if (v0 == 2) {
        *v1 = Pokedex_IsNationalDexObtained(SaveData_GetPokedex(ctx->fieldSystem->saveData));
    } else {
        GF_ASSERT(FALSE);
    }

    return 0;
}

static BOOL ScrCmd_233(ScriptContext *ctx)
{
    Pokemon *v0;
    u16 *v1 = ScriptContext_GetVarPointer(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);
    u32 v3[7];

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(ctx->fieldSystem->saveData), v2);

    v3[0] = Pokemon_GetValue(v0, MON_DATA_HP_EV, NULL);
    v3[1] = Pokemon_GetValue(v0, MON_DATA_ATK_EV, NULL);
    v3[2] = Pokemon_GetValue(v0, MON_DATA_DEF_EV, NULL);
    v3[3] = Pokemon_GetValue(v0, MON_DATA_SPEED_EV, NULL);
    v3[4] = Pokemon_GetValue(v0, MON_DATA_SPATK_EV, NULL);
    v3[5] = Pokemon_GetValue(v0, MON_DATA_SPDEF_EV, NULL);
    *v1 = (v3[0] + v3[1] + v3[2] + v3[3] + v3[4] + v3[5]);

    return 0;
}

static BOOL ScrCmd_GetDayOfWeek(ScriptContext *ctx)
{
    RTCDate date;
    u16 *weekDay = ScriptContext_GetVarPointer(ctx);

    GetCurrentDate(&date);
    *weekDay = date.week;

    return FALSE;
}

static BOOL ScrCmd_239(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_ReadHalfWord(ctx);

    ov7_0224BE7C(ctx->task, FieldSystem_GetVarPointer(ctx->fieldSystem, v0));
    return 1;
}

static BOOL ScrCmd_23A(ScriptContext *ctx)
{
    Pokemon *v0;
    u16 *v1 = ScriptContext_GetVarPointer(ctx);
    u16 *v2 = ScriptContext_GetVarPointer(ctx);
    u16 v3 = ScriptContext_GetVar(ctx);
    u16 v4, v5;

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(ctx->fieldSystem->saveData), v3);
    v4 = Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL);
    v5 = Pokemon_GetValue(v0, MON_DATA_FORM, NULL);
    *v1 = ov5_021F0E90(v4, v5);
    *v2 = ov5_021F0E84(v4);

    return 0;
}

static BOOL ScrCmd_23B(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);

    ov6_02246C24(ctx->fieldSystem, v0);
    return 1;
}

static BOOL ScrCmd_23C(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    u16 v1 = ScriptContext_GetVar(ctx);

    ov6_02246F00(ctx->fieldSystem, (u8)v0, (u8)v1);
    return 1;
}

static BOOL ScrCmd_23D(ScriptContext *ctx)
{
    u8 v0 = ScriptContext_ReadByte(ctx);
    u8 v1 = ScriptContext_ReadByte(ctx);
    int v2 = ScriptContext_ReadHalfWord(ctx);
    int v3 = ScriptContext_ReadHalfWord(ctx);
    int v4 = ScriptContext_ReadHalfWord(ctx);

    sub_0206C784(ctx->fieldSystem, v0, v1, v2, v3, v4);
    return 1;
}

static BOOL ScrCmd_246(ScriptContext *ctx)
{
    u16 *v0 = ScriptContext_GetVarPointer(ctx);

    *v0 = GAME_VERSION;
    return 0;
}

static BOOL ScrCmd_249(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    TrainerInfo *v1 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(ctx->fieldSystem));
    u16 *v2 = ScriptContext_GetVarPointer(ctx);
    PCBoxes *v3 = SaveData_PCBoxes(fieldSystem->saveData);
    u16 v4 = ScriptContext_GetVar(ctx);
    u16 v5 = ScriptContext_GetVar(ctx);
    u16 v6 = ScriptContext_GetVar(ctx);
    u16 v7 = ScriptContext_GetVar(ctx);
    int v8 = ov6_022479D0(v1, v4, v5, v6, v7, 4);

    if ((v8 == -1) || (v8 > 7)) {
        *v2 = 0xff;
        return 0;
    }

    if (PCBoxes_CheckHasUnlockedWallpaper(v3, v8)) {
        *v2 = 0;
    } else {
        PCBoxes_UnlockWallpaper(v3, v8);
        *v2 = v8 + 1;
    }

    return 0;
}

static BOOL ScrCmd_24A(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *v1 = fieldSystem->saveData;
    SecretBaseRecord *v2;
    u16 *v3 = ScriptContext_GetVarPointer(ctx);

    v2 = SaveData_SecretBaseRecord(v1);
    *v3 = sub_020295B8(v2);

    return 0;
}

static BOOL ScrCmd_24B(ScriptContext *ctx)
{
    FieldSystem *fieldSystem;
    u8 v1;

    fieldSystem = ctx->fieldSystem;
    v1 = ScriptContext_ReadByte(ctx);

    ov6_02247078(fieldSystem, v1);

    return 0;
}

static BOOL ScrCmd_24C(ScriptContext *ctx)
{
    FieldSystem *fieldSystem;
    u8 v1;

    fieldSystem = ctx->fieldSystem;
    v1 = ScriptContext_ReadByte(ctx);

    ov6_022470E8(fieldSystem, v1);
    return 0;
}

static BOOL ScrCmd_24D(ScriptContext *ctx)
{
    FieldSystem *fieldSystem;
    u8 v1;

    fieldSystem = ctx->fieldSystem;
    v1 = ScriptContext_ReadByte(ctx);

    ov6_022470F4(fieldSystem, v1);
    return 0;
}

static void FieldSystem_WriteSpeciesSeen(FieldSystem *fieldSystem, u16 species)
{
    Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);
    Pokemon *pokemon = Pokemon_New(HEAP_ID_FIELD_TASK);

    Pokemon_Init(pokemon);
    Pokemon_InitWith(pokemon, species, 50, INIT_IVS_RANDOM, FALSE, 0, OTID_NOT_SET, 0);
    Pokedex_Encounter(pokedex, pokemon);
    Heap_FreeToHeap(pokemon);

    return;
}

static BOOL ScrCmd_WriteSpeciesSeen(ScriptContext *ctx)
{
    u16 species = ScriptContext_GetVar(ctx);

    FieldSystem_WriteSpeciesSeen(ctx->fieldSystem, species);
    return FALSE;
}

static BOOL ScrCmd_252(ScriptContext *ctx)
{
    u16 *v0 = ScriptContext_GetVarPointer(ctx);
    u16 v1 = PCBoxes_CountAllBoxMons(SaveData_PCBoxes(ctx->fieldSystem->saveData));
    *v0 = 18 * (5 * 6) - v1;

    return 0;
}

static BOOL ScrCmd_258(ScriptContext *ctx)
{
    SysTask **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_PLAYER_TASK);

    *v0 = NULL;
    *v0 = ov5_021E1000(ctx->fieldSystem);

    return 1;
}

static BOOL ScrCmd_259(ScriptContext *ctx)
{
    SysTask **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_PLAYER_TASK);

    ov5_021E100C(*v0);
    return 1;
}

static BOOL ScrCmd_25A(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);

    ov6_02247D30(ctx->fieldSystem, v0);
    return 1;
}

static BOOL ScrCmd_25B(ScriptContext *ctx)
{
    sub_020716D4(ctx->fieldSystem);
    return 0;
}

static BOOL ScrCmd_25C(ScriptContext *ctx)
{
    sub_0207183C(ctx->fieldSystem);
    return 1;
}

static BOOL ScrCmd_25D(ScriptContext *ctx)
{
    u16 *v0 = ScriptContext_GetVarPointer(ctx);

    if (sub_02071818(ctx->fieldSystem)) {
        (*v0) = 1;
    } else {
        (*v0) = 0;
    }

    return 0;
}

static BOOL ScrCmd_25E(ScriptContext *ctx)
{
    ov6_02247F5C(ctx->fieldSystem);
    return 0;
}

static BOOL ScrCmd_25F(ScriptContext *ctx)
{
    ov6_02247FBC(ctx->fieldSystem);
    return 1;
}

static BOOL ScrCmd_260(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_ReadHalfWord(ctx);

    GameRecords_IncrementTrainerScore(SaveData_GetGameRecordsPtr(ctx->fieldSystem->saveData), v0);
    return 0;
}

static BOOL ScrCmd_262(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);
    Party *v2 = Party_GetFromSavedata(ctx->fieldSystem->saveData);

    *v1 = Party_HasSpecies(v2, v0);
    return 1;
}

static BOOL ScrCmd_263(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    Party *v1 = Party_GetFromSavedata(ctx->fieldSystem->saveData);
    int v2;
    int v3;
    int v4 = Party_GetCurrentCount(v1);
    Pokemon *v5;
    Pokedex *v6 = SaveData_GetPokedex(ctx->fieldSystem->saveData);

    for (v2 = 0; v2 < v4; v2++) {
        v5 = Party_GetPokemonBySlotIndex(v1, v2);
        v3 = Pokemon_GetValue(v5, MON_DATA_SPECIES, NULL);

        if (v3 == SPECIES_DEOXYS) {
            Pokemon_SetValue(v5, MON_DATA_FORM, &v0);
            Pokemon_CalcLevelAndStats(v5);
            Pokedex_Capture(v6, v5);
        }
    }

    return 1;
}

static BOOL ScrCmd_264(ScriptContext *ctx)
{
    Pokemon *v0;
    int v1, v2, v3, v4, v5, v6;
    u16 *v7 = ScriptContext_GetVarPointer(ctx);
    Party *v8 = Party_GetFromSavedata(ctx->fieldSystem->saveData);
    int v9 = Party_GetCurrentCount(v8);

    v3 = 0;
    v4 = 0;

    for (v1 = 0; v1 < v9; v1++) {
        v0 = Party_GetPokemonBySlotIndex(v8, v1);
        v2 = Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL);
        v6 = Pokemon_GetValue(v0, MON_DATA_GENDER, NULL);
        v5 = Pokemon_GetValue(v0, MON_DATA_IS_EGG, NULL);

        if ((v2 == SPECIES_COMBEE) && (v5 == 0)) {
            if (v6 == 0) {
                v3 = 1;
            }

            if (v6 == 1) {
                v4 = 1;
            }
        }
    }

    if ((v3 == 1) && (v4 == 1)) {
        *v7 = 2;
    } else if ((v3 == 0) && (v4 == 0)) {
        *v7 = 0;
    } else {
        *v7 = 1;
    }

    return 1;
}

static BOOL ScrCmd_HidePoketch(ScriptContext *ctx)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(ctx->fieldSystem->saveData);
    SystemFlag_SetPoketchHidden(varsFlags);
    return FALSE;
}

static BOOL ScrCmd_ShowPoketch(ScriptContext *ctx)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(ctx->fieldSystem->saveData);
    SystemFlag_ClearPoketchHidden(varsFlags);
    return FALSE;
}

static BOOL ScrCmd_267(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);

    sub_0203E414(ctx->fieldSystem->task, v0);
    return 1;
}

static BOOL ScrCmd_268(ScriptContext *ctx)
{
    u16 *v0 = ScriptContext_GetVarPointer(ctx);

    *v0 = sub_02055BDC(ctx->fieldSystem);
    return 0;
}

static BOOL ScrCmd_269(ScriptContext *ctx)
{
    MapObject *v0;
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);
    u16 v3 = ScriptContext_GetVar(ctx);
    u16 v4 = ScriptContext_GetVar(ctx);
    u16 v5 = ScriptContext_GetVar(ctx);

    v0 = MapObjMan_LocalMapObjByIndex(ctx->fieldSystem->mapObjMan, v1);

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    }

    sub_0205E318(ctx->task, v0, v2, v3, v4, v5);
    return 1;
}

static BOOL ScrCmd_26A(ScriptContext *ctx)
{
    MapObject *v0;
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);
    u16 v3 = ScriptContext_GetVar(ctx);

    v0 = MapObjMan_LocalMapObjByIndex(ctx->fieldSystem->mapObjMan, v1);

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    }

    sub_0205E3F4(ctx->task, v0, v2, v3);
    return 1;
}

static BOOL ScrCmd_26B(ScriptContext *ctx)
{
    u16 *v0 = FieldSystem_GetVarPointer(ctx->fieldSystem, ScriptContext_ReadHalfWord(ctx));

    *v0 = HasAllLegendaryTitansInParty(ctx->fieldSystem->saveData);
    return 0;
}

static BOOL ScrCmd_26C(ScriptContext *ctx)
{
    UnkStruct_0202A750 *v0;
    UnkStruct_02029D04 *v1;
    u16 v2[16];
    int v3, v4, v5, v6;
    u16 *v7 = ScriptContext_GetVarPointer(ctx);

    v0 = sub_0202A750(ctx->fieldSystem->saveData);
    v1 = sub_02029D04(v0);

    v4 = 0;

    for (v3 = 0; v3 < (49 - 34 + 1); v3++) {
        if (sub_02029D50(v1, 34 + v3, 1) == 1) {
            v2[v3] = 1;
            v4++;
        }
    }

    if (v4 == 0) {
        *v7 = 0xffff;
        return 0;
    }

    v5 = LCRNG_Next() % v4;

    for (v3 = 0; v3 < (49 - 34 + 1); v3++) {
        if (v2[v3] == 1) {
            if (v5 == 0) {
                break;
            } else {
                v5--;
            }
        }
    }

    GF_ASSERT(v3 < (49 - 34 + 1));

    v6 = 34 + v3;
    *v7 = v6;

    return 0;
}

static BOOL ScrCmd_GetGBACartridgeVersion(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = gSystem.gbaCartridgeVersion;
    return TRUE;
}

static BOOL ScrCmd_ClearSpiritombCounter(ScriptContext *ctx)
{
    SystemVars_SetSpiritombCounter(SaveData_GetVarsFlags(ctx->fieldSystem->saveData), 0);
    return FALSE;
}

static BOOL ScrCmd_SetHiddenLocation(ScriptContext *ctx)
{
    u16 hiddenLocation = ScriptContext_GetVar(ctx);
    u8 enable = ScriptContext_ReadByte(ctx);
    VarsFlags *varsFlags = SaveData_GetVarsFlags(ctx->fieldSystem->saveData);

    if (enable) {
        SystemVars_SetHiddenLocationMagic(varsFlags, hiddenLocation);
    } else {
        SystemVars_ClearHiddenLocation(varsFlags, hiddenLocation);
    }

    return FALSE;
}

static BOOL ScrCmd_273(ScriptContext *ctx)
{
    StringTemplate **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v1 = ScriptContext_ReadByte(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);

    StringTemplate_SetContestBackdropName(*v0, v1, v2);
    return 1;
}

static BOOL ScrCmd_CheckBonusRoundStreak(ScriptContext *ctx)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(ctx->fieldSystem->saveData);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    if (SystemVars_GetConsecutiveBonusRoundWins(varsFlags) >= 10) {
        *destVar = TRUE;
    } else {
        *destVar = FALSE;
    }

    return FALSE;
}

static BOOL ScrCmd_GetDailyRandomLevel(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = SystemVars_GetDailyRandomLevel(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    return FALSE;
}

static BOOL ScrCmd_279(ScriptContext *ctx)
{
    UnkStruct_0202A750 *v0;
    UnkStruct_02029D04 *v1;
    u16 v2 = ScriptContext_GetVar(ctx);
    u16 v3 = ScriptContext_GetVar(ctx);

    v0 = sub_0202A750(ctx->fieldSystem->saveData);
    v1 = sub_02029D04(v0);

    sub_02029EA0(v1, v2, v3);
    return 0;
}

static BOOL ScrCmd_27A(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    sub_02050568(fieldSystem);
    return 1;
}

static BOOL ScrCmd_InitDailyRandomLevel(ScriptContext *ctx)
{
    SystemVars_InitDailyRandomLevel(ctx->fieldSystem->saveData);
    return FALSE;
}

static BOOL ScrCmd_27D(ScriptContext *ctx)
{
    UnkStruct_02014EC4 *v0;
    u32 v1;
    u16 *v2 = ScriptContext_GetVarPointer(ctx);
    u16 v3 = ScriptContext_GetVar(ctx);
    StringTemplate **v4 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);

    v0 = sub_02014EC4(ctx->fieldSystem->saveData);
    v1 = sub_02014EE4(v0);

    if (v1 == 32) {
        *v2 = 0xffff;
        return 0;
    } else {
        *v2 = v1;
    }

    {
        u16 v5;

        v5 = sub_02014F64(v1);
        StringTemplate_SetCustomMessageWord(*v4, v3, v5);
    }

    return 0;
}

static BOOL ScrCmd_27F(ScriptContext *ctx)
{
    UnkStruct_02014EC4 *v0;
    u16 *v1 = ScriptContext_GetVarPointer(ctx);

    v0 = sub_02014EC4(ctx->fieldSystem->saveData);

    if (sub_02014F48(v0) == 1) {
        *v1 = 1;
    } else {
        *v1 = 0;
    }

    return 0;
}

static BOOL ScrCmd_CheckIsDepartmentStoreRegular(ScriptContext *ctx)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(ctx->fieldSystem->saveData);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    if (SystemVars_GetDepartmentStoreBuyCount(varsFlags) >= 5) {
        *destVar = TRUE;
    } else {
        *destVar = FALSE;
    }

    return FALSE;
}

static BOOL ScrCmd_282(ScriptContext *ctx)
{
    u16 *v0 = ScriptContext_GetVarPointer(ctx);
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SystemData *v2 = SaveData_GetSystemData(ctx->fieldSystem->saveData);

    if ((SystemData_GetOwnerBirthMonth(v2) == sub_02055BB8(fieldSystem)) && (SystemData_GetOwnerBirthDayOfMonth(v2) == sub_02055BC4(fieldSystem))) {
        *v0 = 1;
    } else {
        *v0 = 0;
    }

    return 0;
}

static BOOL ScrCmd_284(ScriptContext *ctx)
{
    const Pokedex *v0 = SaveData_GetPokedex(ctx->fieldSystem->saveData);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);

    *v1 = Pokedex_NumFormsSeen_Unown(v0);
    return 0;
}

static BOOL ScrCmd_285(ScriptContext *ctx)
{
    u8 v0, v1;
    u16 v2, v3, v4;
    u16 v5 = ScriptContext_GetVar(ctx);
    u16 v6 = ScriptContext_GetVar(ctx);
    FieldSystem *fieldSystem = ctx->fieldSystem;
    static const u16 v8[] = {
        0x10F,
        0x110,
        0x111,
        0x206,
        0x207,
        0x208,
        0x209,
        0x20A,
        0x20B,
        0x20C,
        0x20D,
        0x20E,
        0x20F,
        0x210,
        0x211,
        0x212,
        0x213,
        0x214
    };

    v2 = 0;
    v3 = fieldSystem->location->x;
    v4 = fieldSystem->location->z;

    if (v5 >= 3) {
        v2 = 270;
    } else if (v6 >= 30) {
        v2 = 268;
    } else if (LCRNG_Next() % 100 < 25) {
        v2 = 269;
    } else {
        static const u16 v9[] = {
            0x10F,
            0x110,
            0x111,
            0x206,
            0x207,
            0x208,
            0x209,
            0x20A,
            0x20B,
            0x20C,
            0x20D,
            0x20E,
            0x20F,
            0x210,
            0x211,
            0x212,
            0x213,
            0x214
        };

        v2 = LCRNG_Next() % 6;
        v2 = v9[v2 + (v5 * 6)];
    }

    if (v3 == 11) {
        if (v4 == 1) {
            v0 = 0;
        } else if (v4 == 20) {
            v0 = 2;
        } else {
            v0 = 5;
        }
    } else {
        if (v3 == 20) {
            v0 = 1;
        } else {
            v0 = 3;
        }
    }

    for (v1 = 0; v1 < 4; v1++) {
        if (v1 == v0) {
            continue;
        }

        MapHeaderData_SetWarpEventDestHeaderID(ctx->fieldSystem, v1, v2);
    }

    return 0;
}

static BOOL ScrCmd_GetUndergroundItemsGivenAway(ScriptContext *ctx)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(ctx->fieldSystem->saveData);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = SystemVars_GetUndergroundItemsGivenAway(varsFlags);
    return FALSE;
}

static BOOL ScrCmd_GetUndergroundFossilsUnearthed(ScriptContext *ctx)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(ctx->fieldSystem->saveData);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = SystemVars_GetUndergroundFossilsUnearthed(varsFlags);
    return FALSE;
}

static BOOL ScrCmd_GetUndergroundTrapsSet(ScriptContext *ctx)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(ctx->fieldSystem->saveData);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = SystemVars_GetUndergroundTrapsSet(varsFlags);
    return FALSE;
}

static BOOL ScrCmd_289(ScriptContext *ctx)
{
    Poffin *v0;
    int v1;
    PoffinCase *v2;
    u8 v3[5];
    u8 v4;
    u16 v5;
    u16 *v6;
    int v7;

    v6 = ScriptContext_GetVarPointer(ctx);

    for (v7 = 0; v7 < 5; v7++) {
        v3[v7] = ScriptContext_GetVar(ctx);
    }

    v4 = ScriptContext_GetVar(ctx);
    v0 = Poffin_New(4);
    v1 = sub_0202A9E4(v0, v3, v4, 0);
    v2 = Poffin_GetSavedataBlock(ctx->fieldSystem->saveData);
    v5 = Poffin_AddToCase(v2, v0);

    Heap_FreeToHeap(v0);

    if (v5 == POFFIN_NONE) {
        *v6 = 0xffff;
    } else {
        *v6 = v1;
    }

    return 0;
}

static BOOL ScrCmd_28A(ScriptContext *ctx)
{
    PoffinCase *poffinCase;
    u16 *v1 = ScriptContext_GetVarPointer(ctx);
    poffinCase = Poffin_GetSavedataBlock(ctx->fieldSystem->saveData);

    if (Poffin_GetEmptyCaseSlot(poffinCase) == POFFIN_NONE) {
        *v1 = 0;
    } else {
        *v1 = 1;
    }

    return 0;
}

static BOOL ScrCmd_307(ScriptContext *ctx)
{
    PoffinCase *poffinCase;
    u16 *v1 = ScriptContext_GetVarPointer(ctx);
    poffinCase = Poffin_GetSavedataBlock(ctx->fieldSystem->saveData);
    *v1 = Poffin_GetNumberOfEmptySlots(poffinCase);

    return 0;
}

static BOOL ScrCmd_CheckDistributionEvent(ScriptContext *ctx)
{
    u8 eventID = ScriptContext_ReadByte(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    VarsFlags *varsFlags = SaveData_GetVarsFlags(ctx->fieldSystem->saveData);

    GF_ASSERT(eventID <= DISTRIBUTION_EVENT_MAX);
    *destVar = SystemVars_CheckDistributionEvent(varsFlags, eventID);
    return FALSE;
}

static BOOL ScrCmd_28F(ScriptContext *ctx)
{
    int v0;
    const HallOfFame *v1;
    u16 *v2 = ScriptContext_GetVarPointer(ctx);

    v1 = SaveData_HallOfFame(ctx->fieldSystem->saveData, 32, &v0);

    if (v0 == 0) {
        *v2 = 0;
        Heap_FreeToHeap((void *)v1);
        return 1;
    } else if (v0 == 1) {
        *v2 = sub_0202E174(v1, 0);
        Heap_FreeToHeap((void *)v1);
        return 1;
    } else if (v0 == 2) {
        *v2 = 0;
        Heap_FreeToHeap((void *)v1);
        return 1;
    }

    *v2 = 0;
    return 1;
}

static BOOL ScrCmd_290(ScriptContext *ctx)
{
    void **v0;
    u16 v1 = ScriptContext_GetVar(ctx);

    v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
    *v0 = sub_0203D410(32, ctx->fieldSystem, v1);

    ScriptContext_Pause(ctx, ScriptContext_WaitForApplicationExit);
    return 1;
}

static BOOL ScrCmd_291(ScriptContext *ctx)
{
    void **v0;
    u16 *v1, *v2;

    v1 = ScriptContext_GetVarPointer(ctx);
    v2 = ScriptContext_GetVarPointer(ctx);
    v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);

    GF_ASSERT(*v0 != 0);

    *v1 = sub_0203D408(*v0);

    if (*v1 == 7) {
        *v1 = 0xff;
    }

    *v2 = sub_0203D438(*v0);

    if (*v2 == 1) {
        *v2 = 1;
    } else {
        *v2 = 0;
    }

    Heap_FreeToHeap(*v0);
    *v0 = NULL;

    return 0;
}

static BOOL ScrCmd_292(ScriptContext *ctx)
{
    u16 v0;
    u8 v1 = ScriptContext_ReadByte(ctx);
    u16 *v2 = ScriptContext_GetVarPointer(ctx);

    if (v1 > 100) {
        v1 = 100;
    }

    v0 = LCRNG_Next() % 101;

    if (v0 <= v1) {
        *v2 = 1;
    } else {
        *v2 = 0;
    }

    return 0;
}

static BOOL ScrCmd_29E(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);
    FieldSystem *fieldSystem = ctx->fieldSystem;

    switch (v0) {
    case 0:
        ov6_0224899C(fieldSystem, v1, 0, HEAP_ID_FIELD_TASK);
        break;
    case 1:
        ov6_0224899C(fieldSystem, v1, 1, HEAP_ID_FIELD_TASK);
        break;
    case 2:
        ov6_0224899C(fieldSystem, v1, 2, HEAP_ID_FIELD_TASK);
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 1;
}

static BOOL ScrCmd_GetUndergroundTalkCounter(ScriptContext *ctx)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(ctx->fieldSystem->saveData);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = SystemVars_GetUndergroundTalkCounter(varsFlags);
    return FALSE;
}

static BOOL ScrCmd_29F(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);

    if (v0 == 0) {
        ov6_0223E384(ctx->fieldSystem->task);
    } else {
        ov6_0223E4EC(ctx->fieldSystem->task);
    }

    return 1;
}

static BOOL ScrCmd_2A3(ScriptContext *ctx)
{
    u16 *v0 = ScriptContext_GetVarPointer(ctx);

    *v0 = sub_02039074(ctx->fieldSystem->saveData);
    return 0;
}

static BOOL ScrCmd_2A4(ScriptContext *ctx)
{
    u16 *v0 = ScriptContext_GetVarPointer(ctx);

    *v0 = sub_0202AF94(sub_0202B370(ctx->fieldSystem->saveData));
    return 0;
}

static BOOL ScrCmd_2A2(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    UndergroundData *v1 = sub_020298B0(ctx->fieldSystem->saveData);

    if ((v0 == 135) || (v0 == 136)) {
        sub_02028828(v1);
    }

    return 0;
}

static BOOL ScrCmd_2A7(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    u16 *v1 = ScriptContext_GetVarPointer(ctx);

    *v1 = 0;

    if ((v0 >= 298) && (v0 <= 313)) {
        *v1 = 1;
    }

    return 0;
}

static BOOL ScrCmd_2AA(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *v1 = ScriptContext_GetVarPointer(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);
    u16 v3 = ScriptContext_GetVar(ctx);
    u16 v4 = ScriptContext_GetVar(ctx);
    u16 v5 = ScriptContext_GetVar(ctx);
    StringTemplate *v6 = StringTemplate_Default(32);
    MessageLoader *v7 = MessageLoader_Init(0, 26, 372, HEAP_ID_FIELD_TASK);
    Strbuf *v8;
    Strbuf *v9;

    StringTemplate_SetCustomMessageWord(v6, 0, v2);
    StringTemplate_SetCustomMessageWord(v6, 1, v3);
    StringTemplate_SetCustomMessageWord(v6, 2, v4);
    StringTemplate_SetCustomMessageWord(v6, 3, v5);

    v8 = MessageUtil_ExpandedStrbuf(v6, v7, 1, 32);
    v9 = MessageLoader_GetNewStrbuf(v7, 0);
    *v1 = (Strbuf_Compare(v8, v9) == 0);

    Strbuf_Free(v8);
    Strbuf_Free(v9);
    MessageLoader_Free(v7);
    StringTemplate_Free(v6);

    return 0;
}

static BOOL ScrCmd_2AC(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SystemData *v1 = SaveData_GetSystemData(ctx->fieldSystem->saveData);

    sub_02025D6C(v1, 1);
    return 0;
}

static BOOL ScrCmd_2AF(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *v1 = ScriptContext_GetVarPointer(ctx);
    StringTemplate **v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);

    *v1 = sub_0205BC50(*v2);
    return 0;
}

static BOOL ScrCmd_2B0(ScriptContext *ctx)
{
    sub_02039734();
    return 0;
}

static BOOL ScrCmd_2B1(ScriptContext *ctx)
{
    sub_02039794();
    return 0;
}

static BOOL ScrCmd_2B2(ScriptContext *ctx)
{
    FieldSystem_SaveObjects(ctx->fieldSystem);
    return 0;
}

static BOOL ScrCmd_2B5(ScriptContext *ctx)
{
    u16 mapId = ScriptContext_GetVar(ctx);
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);
    FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(ctx->fieldSystem->saveData);
    Location *location = FieldOverworldState_GetExitLocation(fieldState);

    location->mapId = mapId;
    location->x = v1;
    location->z = v2;
    location->warpId = WARP_ID_NONE;
    location->faceDirection = FACE_DOWN;

    return 0;
}

static BOOL ScrCmd_2B6(ScriptContext *ctx)
{
    MapObject *v0;
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_ReadByte(ctx);

    v0 = MapObjMan_LocalMapObjByIndex(ctx->fieldSystem->mapObjMan, v1);

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    }

    sub_02062D80(v0, v2);
    return 0;
}

static BOOL ScrCmd_2BE(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *v1 = ScriptContext_GetVarPointer(ctx);

    *v1 = sub_02071F28(fieldSystem);
    return 0;
}

static BOOL ScrCmd_2C1(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveInfoWindow **saveInfoWin = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_SAVE_INFO_WINDOW);

    if (!SaveData_OverwriteCheck(fieldSystem->saveData)) {
        *saveInfoWin = SaveInfoWindow_New(fieldSystem, HEAP_ID_FIELD, BG_LAYER_MAIN_3);
        SaveInfoWindow_Draw(*saveInfoWin);
    }

    return FALSE;
}

static BOOL ScrCmd_2C2(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveInfoWindow **saveInfoWin = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_SAVE_INFO_WINDOW);

    if (!SaveData_OverwriteCheck(fieldSystem->saveData)) {
        SaveInfoWindow_Erase(*saveInfoWin);
        SaveInfoWindow_Free(*saveInfoWin);
    }

    return FALSE;
}

static BOOL ScrCmd_2C3(ScriptContext *ctx)
{
    sub_02070428(ctx->fieldSystem, ScriptContext_ReadByte(ctx));
    return 0;
}

static BOOL ScrCmd_2C4(ScriptContext *ctx)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
    u8 v1 = ScriptContext_ReadByte(ctx);
    UnkStruct_ov104_02230BE4 *v2 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_ov104_02230BE4));

    MI_CpuClear8(v2, sizeof(UnkStruct_ov104_02230BE4));

    *v0 = v2;

    if ((v1 == ((((((0 + 1) + 1) + 1) + 1) + 1) + 0)) || (v1 == ((((((0 + 1) + 1) + 1) + 1) + 1) + 1))) {
        v2->unk_00 = ctx->fieldSystem->unk_AC;
    } else {
        v2->unk_00 = NULL;
    }

    v2->unk_04 = SaveData_Options(ctx->fieldSystem->saveData);
    v2->unk_24 = v1;
    v2->unk_08 = ctx->fieldSystem->saveData;
    v2->unk_1C = ctx->fieldSystem->location->mapId;
    v2->unk_0C = ctx->fieldSystem->journalEntry;
    v2->unk_10 = ctx->fieldSystem->unk_98;
    v2->unk_20 = ctx->fieldSystem->battleSubscreenCursorOn;

    FieldTask_RunApplication(ctx->task, &Unk_020F8BE0, v2);
    ScriptContext_Pause(ctx, sub_02041CC8);

    return 1;
}

static BOOL ScrCmd_2CA(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Strbuf **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MESSAGE_BUF);
    Window *v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_WINDOW);

    ov8_0224B67C(fieldSystem, v2, ctx->loader, *v1);
    return 1;
}

static void sub_020462C0(SysTask *ctx, void *param1)
{
    FieldSystem *fieldSystem = param1;

    if (fieldSystem->unk_04->unk_0C) {
        ov5_021D5F24(fieldSystem->unk_04->unk_0C, 26);
        SysTask_Done(ctx);
    }
}

static BOOL ScrCmd_2CD(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    SysTask_Start(sub_020462C0, fieldSystem, 128);
    return 1;
}

static BOOL ScrCmd_2CE(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 v1 = FieldOverworldState_GetWeather(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    ov5_021D5F24(fieldSystem->unk_04->unk_0C, v1);
    return 1;
}

static BOOL ScrCmd_PokeMartFrontier(ScriptContext *ctx)
{
    u8 martID = ScriptContext_ReadByte(ctx);
    static const u16 BattleFrontierRightExchangeServiceCorner[] = {
        ITEM_TM06,
        ITEM_TM73,
        ITEM_TM61,
        ITEM_TM45,
        ITEM_TM40,
        ITEM_TM31,
        ITEM_TM08,
        ITEM_TM04,
        ITEM_TM81,
        ITEM_TM30,
        ITEM_TM53,
        ITEM_TM36,
        ITEM_TM59,
        ITEM_TM71,
        ITEM_TM26,
        SHOP_ITEM_END,
    };
    static const u16 BattleFrontierLeftExchangeServiceCorner[] = {
        ITEM_PROTEIN,
        ITEM_CALCIUM,
        ITEM_IRON,
        ITEM_ZINC,
        ITEM_CARBOS,
        ITEM_HP_UP,
        ITEM_POWER_BRACER,
        ITEM_POWER_BELT,
        ITEM_POWER_LENS,
        ITEM_POWER_BAND,
        ITEM_POWER_ANKLET,
        ITEM_POWER_WEIGHT,
        ITEM_TOXIC_ORB,
        ITEM_FLAME_ORB,
        ITEM_WHITE_HERB,
        ITEM_POWER_HERB,
        ITEM_BRIGHTPOWDER,
        ITEM_CHOICE_BAND,
        ITEM_FOCUS_BAND,
        ITEM_SCOPE_LENS,
        ITEM_MUSCLE_BAND,
        ITEM_FOCUS_SASH,
        ITEM_CHOICE_SCARF,
        ITEM_RAZOR_CLAW,
        ITEM_RAZOR_FANG,
        ITEM_RARE_CANDY,
        SHOP_ITEM_END,
    };
    static const u16 *BattleFrontierExchangeServiceCorners[] = {
        BattleFrontierRightExchangeServiceCorner,
        BattleFrontierLeftExchangeServiceCorner,
    };

    Shop_Start(ctx->task, ctx->fieldSystem, (u16 *)BattleFrontierExchangeServiceCorners[martID], MART_TYPE_FRONTIER, FALSE);
    return TRUE;
}

BOOL ScrCmd_2C8(ScriptContext *ctx)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 v2 = ScriptContext_GetVar(ctx);
    u16 v3 = ScriptContext_GetVar(ctx);

    *v0 = sub_0203E564(ctx->fieldSystem, v1, v2, v3, HEAP_ID_FIELD_TASK);
    ScriptContext_Pause(ctx, sub_02041CC8);

    return 1;
}

BOOL ScrCmd_2E2(ScriptContext *ctx)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);

    *v0 = sub_0203E608(ctx->fieldSystem, HEAP_ID_FIELD_TASK);
    ScriptContext_Pause(ctx, ScriptContext_WaitForApplicationExit);

    return 1;
}

BOOL ScrCmd_2E3(ScriptContext *ctx)
{
    void **v0;
    FieldSystem *fieldSystem = ctx->fieldSystem;

    v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
    Heap_FreeToHeap(*v0);
    *v0 = NULL;

    return 1;
}

BOOL ScrCmd_2E4(ScriptContext *ctx)
{
    void **v0;
    UnkStruct_0203E608 *v1;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 v3 = ScriptContext_GetVar(ctx);
    u16 *v4 = ScriptContext_GetVarPointer(ctx);
    u16 *v5 = ScriptContext_GetVarPointer(ctx);

    v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, 19);
    v1 = (UnkStruct_0203E608 *)*v0;
    *v4 = v1->unk_08[v3];
    *v5 = v1->unk_0E[v3];

    return 0;
}

static const u16 Unk_020EAB96[] = {
    0x7E,
    0x7f,
    0x80,
    0x81,
    0x82,
    0x83,
    0x84,
    0x85
};

static const u16 Unk_020EAB8C[] = {
    0x8D,
    0x8E,
    0x8f,
    0x90,
    0x91
};

BOOL ScrCmd_2F4(ScriptContext *ctx)
{
    u16 v0, v1, v2, v3, v4;
    u16 *v5 = ScriptContext_GetVarPointer(ctx);
    u16 *v6 = ScriptContext_GetVarPointer(ctx);
    u16 *v7 = ScriptContext_GetVarPointer(ctx);
    u16 *v8 = ScriptContext_GetVarPointer(ctx);

    *v5 = 0xfff;
    *v6 = 0xfff;
    *v7 = 0xfff;
    *v8 = 0xfff;
    v0 = (LCRNG_Next() % (NELEMS(Unk_020EAB96)));
    *v5 = Unk_020EAB96[v0];

    v1 = sub_02046524(v0, 0xfff, 0xfff, 0xfff);

    if (v1 != (NELEMS(Unk_020EAB96))) {
        *v6 = Unk_020EAB96[v1];
    }

    v2 = sub_02046524(v0, v1, 0xfff, 0xfff);

    if (v2 != (NELEMS(Unk_020EAB96))) {
        *v7 = Unk_020EAB96[v2];
    }

    v3 = sub_02046568(0xfff, 0xfff, 0xfff, 0xfff);

    if (v3 != (NELEMS(Unk_020EAB8C))) {
        *v8 = Unk_020EAB8C[v3];
    }

    return 0;
}

static u8 sub_02046524(u16 ctx, u16 param1, u16 param2, u16 param3)
{
    u16 v0;
    u8 v1 = 0;

    while (TRUE) {
        v0 = (LCRNG_Next() % ((NELEMS(Unk_020EAB96)) + 1));

        if (v0 == (NELEMS(Unk_020EAB96))) {
            break;
        }

        v1++;

        if (v1 >= 8) {
            v0 = (NELEMS(Unk_020EAB96));
            break;
        }

        if ((v0 != ctx) && (v0 != param1) && (v0 != param2) && (v0 != param3)) {
            break;
        }
    }

    return v0;
}

static u8 sub_02046568(u16 ctx, u16 param1, u16 param2, u16 param3)
{
    u16 v0;
    u8 v1 = 0;

    while (TRUE) {
        v0 = (LCRNG_Next() % ((NELEMS(Unk_020EAB8C)) + 1));

        if (v0 == (NELEMS(Unk_020EAB8C))) {
            break;
        }

        v1++;

        if (v1 >= 8) {
            v0 = (NELEMS(Unk_020EAB8C));
            break;
        }

        if ((v0 != ctx) && (v0 != param1) && (v0 != param2) && (v0 != param3)) {
            break;
        }
    }

    return v0;
}

static BOOL ScrCmd_2F6(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_GetVar(ctx);
    u16 v1 = ScriptContext_GetVar(ctx);
    u16 *v2 = ScriptContext_GetVarPointer(ctx);

    if (sub_02039074(ctx->fieldSystem->saveData)) {
        *v2 = 1;
        sub_0203E6C0(ctx->fieldSystem, v1, v0);
        ScriptContext_Pause(ctx, ScriptContext_WaitForApplicationExit);
    } else {
        *v2 = 0;
    }

    return 1;
}

static BOOL ScrCmd_2F7(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_ReadHalfWord(ctx);
    u16 *v1 = FieldSystem_GetVarPointer(ctx->fieldSystem, v0);

    if (sub_02039074(ctx->fieldSystem->saveData)) {
        sub_0205749C(ctx->task, *v1);
    }

    return 1;
}

static BOOL ScrCmd_2FB(ScriptContext *ctx)
{
    sub_020985E4(ctx->task, ctx->fieldSystem->saveData);
    return 1;
}

static BOOL ScrCmd_2FC(ScriptContext *ctx)
{
    u16 *v0 = ScriptContext_GetVarPointer(ctx);

    *v0 = 0;

    if (gSystem.heldKeys & PAD_BUTTON_A) {
        *v0 = 1;
    }

    if (gSystem.heldKeys & PAD_BUTTON_B) {
        *v0 = 1;
    }

    return 0;
}

static BOOL ScrCmd_302(ScriptContext *ctx)
{
    u32 v0;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *v2 = ScriptContext_GetVarPointer(ctx);
    u16 *v3 = ScriptContext_GetVarPointer(ctx);
    u16 *v4 = ScriptContext_GetVarPointer(ctx);
    u16 *v5 = ScriptContext_GetVarPointer(ctx);
    u16 *v6 = ScriptContext_GetVarPointer(ctx);

    *v2 = 0;
    *v3 = 0;
    *v4 = 0;
    *v5 = 0;
    *v6 = 0;

    v0 = sub_0204676C(fieldSystem->saveData);

    if (((v0 >> 1) & 0x1) == 1) {
        *v2 = 1;
    }

    if (((v0 >> 2) & 0x1) == 1) {
        *v3 = 1;
    }

    if (((v0 >> 3) & 0x1) == 1) {
        *v4 = 1;
    }

    if (((v0 >> 4) & 0x1) == 1) {
        *v5 = 1;
    }

    if (((v0 >> 5) & 0x1) == 1) {
        *v6 = 1;
    }

    return 1;
}

static u32 sub_0204676C(SaveData *saveData)
{
    int v0;
    Pokemon *v1;
    BoxPokemon *v2;
    u32 v3 = 0;

    {
        Party *v4;
        int v5;

        v4 = Party_GetFromSavedata(saveData);
        v5 = Party_GetCurrentCount(v4);

        for (v0 = 0; v0 < v5; v0++) {
            v1 = Party_GetPokemonBySlotIndex(v4, v0);

            if ((Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL) == SPECIES_ROTOM) && (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) == 0)) {
                v3 |= 1 << Pokemon_GetValue(v1, MON_DATA_FORM, NULL);
            }
        }
    }

    {
        UnkStruct_02026310 *v6;
        UnkStruct_02026218 *v7;

        v6 = sub_02026310(saveData);

        for (v0 = 0; v0 < 2; v0++) {
            v7 = sub_02026218(v6, v0);
            v2 = sub_02026220(v7);

            if ((BoxPokemon_GetValue(v2, MON_DATA_SPECIES, NULL) == SPECIES_ROTOM) && (BoxPokemon_GetValue(v2, MON_DATA_IS_EGG, NULL) == 0)) {
                v3 |= 1 << BoxPokemon_GetValue(v2, MON_DATA_FORM, NULL);
            }
        }
    }

    {
        PCBoxes *v8;
        u32 v9;

        v8 = SaveData_PCBoxes(saveData);

        for (v9 = 0; v9 < 18; v9++) {
            for (v0 = 0; v0 < (5 * 6); v0++) {
                v2 = PCBoxes_GetBoxMonAt(v8, v9, v0);

                if ((BoxPokemon_GetValue(v2, MON_DATA_SPECIES, NULL) == SPECIES_ROTOM) && (BoxPokemon_GetValue(v2, MON_DATA_IS_EGG, NULL) == 0)) {
                    v3 |= 1 << BoxPokemon_GetValue(v2, MON_DATA_FORM, NULL);
                }
            }
        }
    }

    return v3;
}

static BOOL ScrCmd_30A(ScriptContext *ctx)
{
    u16 v0 = ScriptContext_ReadHalfWord(ctx);

    GameRecords_IncrementTrainerScore(SaveData_GetGameRecordsPtr(ctx->fieldSystem->saveData), v0);
    return 0;
}

static BOOL ScrCmd_311(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 v1 = ScriptContext_GetVar(ctx);

    ov9_0224F158(fieldSystem, v1);
    return 0;
}

static BOOL ScrCmd_312(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 v1 = ScriptContext_GetVar(ctx);

    ov9_0224F16C(fieldSystem, v1);
    return 0;
}

static BOOL ScrCmd_31F(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    ov9_02249FD0(fieldSystem);
    return 0;
}

u32 Unk_021C07E8;
u32 Unk_021C07E4;
u32 Unk_021C07EC;

static BOOL ScrCmd_313(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 v1 = ScriptContext_GetVar(ctx);
    u32 v2 = Heap_FndGetTotalFreeSizeForExpHeap(11);
    u32 v3 = Heap_FndGetTotalFreeSizeForExpHeap(4);
    u32 v4 = Heap_FndGetTotalFreeSizeForExpHeap(32);

    if (v1 == 0) {
        Unk_021C07E8 = v2;
        Unk_021C07E4 = v3;
        Unk_021C07EC = v4;
    } else {
        if (v2 != Unk_021C07E8) {
            GF_ASSERT(FALSE);
        }

        if (v4 != Unk_021C07EC) {
            GF_ASSERT(FALSE);
        }
    }

    return 0;
}

static BOOL ScrCmd_320(ScriptContext *ctx)
{
    sub_0203E714(ctx->fieldSystem);
    ScriptContext_Pause(ctx, ScriptContext_WaitForApplicationExit);

    return 1;
}

static BOOL ScrCmd_321(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 v1 = ScriptContext_GetVar(ctx);

    ov9_0224E884(fieldSystem, v1);
    return 0;
}

static BOOL ScrCmd_322(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;

    ov9_0224E8A8(fieldSystem);
    return 0;
}

static BOOL ScrCmd_323(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *v1 = ScriptContext_GetVarPointer(ctx);
    s64 v2;
    s64 v3;

    v2 = GetTimestamp();
    v3 = v2 - fieldSystem->unk_C4.unk_00;

    if (v3 >= 120) {
        *v1 = 1;
    } else {
        *v1 = 0;
    }

    return 0;
}

static BOOL ScrCmd_328(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Party *v1;
    u16 v2 = ScriptContext_GetVar(ctx);

    v1 = Party_GetFromSavedata(ctx->fieldSystem->saveData);
    Party_SetGiratinaForm(v1, v2);
    {
        int v3, v4;
        Pokemon *v5;

        v4 = Party_GetCurrentCount(v1);

        for (v3 = 0; v3 < v4; v3++) {
            v5 = Party_GetPokemonBySlotIndex(v1, v3);

            if ((Pokemon_GetValue(v5, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v5, MON_DATA_SPECIES, NULL) == SPECIES_GIRATINA)) {
                Pokedex_Capture(SaveData_GetPokedex(fieldSystem->saveData), v5);
            }
        }
    }
    return 0;
}

static BOOL ScrCmd_32B(ScriptContext *ctx)
{
    u32 v0, v1;
    int v2, v3;
    Pokemon *v4;
    u16 *v5 = ScriptContext_GetVarPointer(ctx);

    *v5 = 0;
    v2 = Party_GetCurrentCount(Party_GetFromSavedata(ctx->fieldSystem->saveData));

    for (v3 = 0; v3 < v2; v3++) {
        v4 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(ctx->fieldSystem->saveData), v3);

        if (Pokemon_GetValue(v4, MON_DATA_IS_EGG, NULL) == 0) {
            v0 = Pokemon_GetValue(v4, MON_DATA_SPECIES, NULL);

            if (v0 == SPECIES_REGIGIGAS) {
                v1 = Pokemon_GetValue(v4, MON_DATA_FATEFUL_ENCOUNTER, NULL);

                if (v1 == 1) {
                    *v5 = 1;
                    return 0;
                }
            }
        }
    }

    return 0;
}
