#include "overlay104/frscrcmd.h"

#include <nitro.h>
#include <string.h>

#include "constants/field_base_tiles.h"
#include "constants/scrcmd.h"
#include "generated/game_records.h"
#include "generated/genders.h"
#include "generated/object_events_gfx.h"
#include "generated/string_padding_mode.h"
#include "generated/vars_flags.h"

#include "struct_decls/struct_0202440C_decl.h"
#include "struct_decls/struct_0202B370_decl.h"

#include "applications/naming_screen.h"
#include "nintendo_wfc/main.h"
#include "overlay063/ov63_0222BE18.h"
#include "overlay063/ov63_0222CCE4.h"
#include "overlay063/struct_ov63_0222BEC0_decl.h"
#include "overlay063/struct_ov63_0222CE44.h"
#include "overlay063/struct_ov63_0222D77C_decl.h"
#include "overlay104/frontier_script_context.h"
#include "overlay104/frscrcmd_sound.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0222E63C.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/ov104_022332B4.h"
#include "overlay104/ov104_02234838.h"
#include "overlay104/ov104_022358E8.h"
#include "overlay104/ov104_02237378.h"
#include "overlay104/ov104_02239130.h"
#include "overlay104/ov104_022395F0.h"
#include "overlay104/ov104_0223C2D4.h"
#include "overlay104/ov104_0223D5D0.h"
#include "overlay104/ov104_0223D768.h"
#include "overlay104/ov104_0223D860.h"
#include "overlay104/ov104_0223E894.h"
#include "overlay104/struct_ov104_0222FEDC.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_022320B4_decl.h"
#include "overlay104/struct_ov104_022320B4_t.h"
#include "overlay104/struct_ov104_02232B78.h"
#include "overlay104/struct_ov104_02232B78_sub1.h"
#include "overlay104/struct_ov104_0223319C.h"
#include "overlay104/struct_ov104_022331E8.h"
#include "overlay104/struct_ov104_0223C4CC.h"
#include "overlay104/struct_ov104_0223C634.h"
#include "overlay104/struct_ov104_0223C688.h"
#include "overlay104/struct_ov104_0223D570.h"
#include "overlay104/struct_ov104_0223EBD0_decl.h"
#include "overlay104/struct_ov104_0223F094.h"
#include "overlay104/struct_ov104_0223F174_decl.h"
#include "overlay104/struct_ov104_0223F1B4.h"
#include "savedata/save_table.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "communication_information.h"
#include "communication_system.h"
#include "enums.h"
#include "field_battle_data_transfer.h"
#include "field_comm_manager.h"
#include "game_records.h"
#include "heap.h"
#include "item_use_pokemon.h"
#include "math_util.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "particle_system.h"
#include "party.h"
#include "pokemon.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "trainer_info.h"
#include "tv_episode_segment.h"
#include "unk_0202ACE0.h"
#include "unk_0202D05C.h"
#include "unk_0202F1D4.h"
#include "unk_02033200.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_0205DFC4.h"
#include "unk_0209B6F8.h"
#include "vars_flags.h"

#include "constdata/const_020EA358.h"

typedef struct {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    int unk_0C;
} UnkStruct_ov104_022313FC_sub1;

typedef struct {
    UnkStruct_ov104_022313FC_sub1 unk_00[96];
    UnkStruct_ov104_0223F174 *unk_600;
    int unk_604;
} UnkStruct_ov104_022313FC;

typedef struct {
    UnkStruct_ov104_0223C4CC *unk_00;
    int unk_04;
    int unk_08;
    BOOL unk_0C;
    BOOL unk_10;
    void *unk_14;
    UnkStruct_ov104_0223F094 unk_18;
    UnkStruct_ov104_022313FC *unk_24;
    Window *unk_28;
    UnkStruct_ov104_0223EBD0 *unk_2C;
} UnkStruct_ov104_02231148;

void ov104_0223DC7C(int param0, BgConfig *param1, SpriteSystem *param2, SpriteManager *param3, PaletteData *param4, u16 *param5, s16 param6, s16 param7);
u16 FrontierScriptContext_TryGetVar(FrontierScriptContext *ctx, u16 varID);
u16 *FrontierScriptContext_GetVarPointer(FrontierScriptContext *ctx, u16 varID);
static BOOL FrontierScrCmd_Noop(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_End(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_02(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_WaitTime(FrontierScriptContext *ctx);
static BOOL DecrementTimer(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_MessageInstant(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_MessageNoSkip(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_Message(FrontierScriptContext *ctx);
static BOOL WaitForPrinter(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_CloseMessage(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_FadeScreen(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_WaitFadeScreen(FrontierScriptContext *ctx);
static BOOL ScreenWipeDone(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_InitGlobalTextMenu(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_InitLocalTextMenu(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_AddMenuEntry(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_AddMenuEntryWithDesc(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_ShowMenu(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_InitGlobalTextListMenu(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_InitLocalTextListMenu(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_AddListMenuEntry(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_ShowListMenu(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_FreeListMenu(FrontierScriptContext *ctx);
static BOOL ResumeOnMenuSelection(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_CompareVarToValue(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_CompareVarToVar(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_SetVarFromValue(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_SetVarFromVar(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_AddVar(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_SubVar(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_GoTo(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_GoToIf(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_34(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_ShowYesNoMenu(FrontierScriptContext *ctx);
static BOOL WaitForYesNoResult(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_22(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_23(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_24(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_25(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_28(FrontierScriptContext *ctx);
static void ov104_0223056C(u16 param0, UnkStruct_ov104_0223C634 *param1, const UnkStruct_ov104_02232B78_sub1 *param2, UnkStruct_ov63_0222D77C *param3, u8 *param4, enum HeapID heapID);
static BOOL FrontierScrCmd_29(FrontierScriptContext *ctx);
static BOOL ov104_022305C8(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_6C(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_6D(FrontierScriptContext *ctx);
static BOOL ov104_022309DC(FrontierScriptContext *ctx);
static int ov104_02230A2C(u16 param0, u16 param1);
static BOOL FrontierScrCmd_6E(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_6F(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_70(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_72(FrontierScriptContext *ctx);
static BOOL WaitForSaveStateFinish(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_73(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_SaveDataExtraInit(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_GetMiscSaveBlockInitFlag(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_ShowSavingIcon(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_HideSavingIcon(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_BufferItemName(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_BufferNumber(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_BufferPlayerName(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_BufferPartnerName(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_BufferMoveName(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_BufferSpeciesName(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_BufferTypeName(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_BufferRivalName(FrontierScriptContext *ctx);
static String *GetSpeciesNameString(u16 species, u32 heapID);
static BOOL FrontierScrCmd_GetNumBattlePoints(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_GiveBattlePoints(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_RemoteBattlePoints(FrontierScriptContext *ctx);
static u16 GetNumberDigitCount(u32 number);
u16 *FrontierScriptContext_TryGetVarPointer(FrontierScriptContext *ctx);
u16 FrontierScriptContext_GetVar(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_Call(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_Return(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_CallIf(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_03(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_04(FrontierScriptContext *ctx);
static BOOL Resume(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_26(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_Dummy27(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_35(FrontierScriptContext *ctx);
static BOOL WaitForSyncState(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_ClearReceivedTempDataAllPlayers(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_EndCommunication(FrontierScriptContext *ctx);
static BOOL WaitForCommManIsDeleted(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_GetRandom(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_HealParty(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_WaitABPress(FrontierScriptContext *ctx);
static BOOL CheckABPress(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_WaitABPressTime(FrontierScriptContext *ctx);
static BOOL DecrementABPressTimer(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_Dummy3C(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_3D(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_3E(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_2A(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_2B(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_2C(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_2D(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_2E(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_2F(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_30(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_31(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_32(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_33(FrontierScriptContext *ctx);
static BOOL ov104_02230850(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_3F(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_GetPlayerObjEventGfx(FrontierScriptContext *ctx);
static BOOL ov104_02231AA8(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_41(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_42(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_43(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_44(FrontierScriptContext *ctx);
static BOOL ov104_02231BB8(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_4C(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_4D(FrontierScriptContext *ctx);
static BOOL ov104_02231C54(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_4E(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_4F(FrontierScriptContext *ctx);
static BOOL ov104_02231CF4(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_Dummy96(FrontierScriptContext *ctx);
static void ov104_0223088C(FrontierScriptContext *ctx, int param1, int param2);
static BOOL FrontierScrCmd_53(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_54(FrontierScriptContext *ctx);
static u32 ov104_022313F4(u16 param0, u16 param1);
static BOOL FrontierScrCmd_45(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_46(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_47(FrontierScriptContext *ctx);
static BOOL ov104_02231E14(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_IncrementRecordValue(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_AddToRecordValue(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_IncrementTrainerScore(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_4B(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_71(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_SetWiFiListHostFriendCurrentDate(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_C8(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_C9(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_SetMenuXOriginSide(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_SetMenuYOriginSide(FrontierScriptContext *ctx);
static void ov104_02230950(void *namingScreenArgs);
static BOOL ov104_02231148(UnkStruct_ov104_02231148 *param0);
static BOOL ov104_022311BC(UnkStruct_ov104_02231148 *param0);
static BOOL ov104_022312D8(UnkStruct_ov104_02231148 *param0);
static BOOL ov104_02231720(UnkStruct_ov104_02231148 *param0);
static BOOL ov104_02231864(UnkStruct_ov104_02231148 *param0);
static BOOL ov104_022319CC(UnkStruct_ov104_02231148 *param0);

static const WindowTemplate sYesNoWindowTemplate = {
    .bgLayer = BG_LAYER_MAIN_1,
    .tilemapLeft = 25,
    .tilemapTop = 13,
    .width = 6,
    .height = 4,
    .palette = PLTT_14,
    .baseTile = 0x355,
};

static const u8 sConditionTable[6][3] = {
    //   <     ==      >
    { TRUE, FALSE, FALSE }, //  <
    { FALSE, TRUE, FALSE }, //  ==
    { FALSE, FALSE, TRUE }, //  >
    { TRUE, TRUE, FALSE }, //  <=
    { FALSE, TRUE, TRUE }, //  >=
    { TRUE, FALSE, TRUE }, //  !=
};

const FrontierScrCmdFunc gFrontierScrCmdFuncs[] = {
    FrontierScrCmd_Noop,
    FrontierScrCmd_End,
    FrontierScrCmd_02,
    FrontierScrCmd_03,
    FrontierScrCmd_04,
    FrontierScrCmd_WaitTime,
    FrontierScrCmd_SetVarFromValue,
    FrontierScrCmd_SetVarFromVar,
    FrontierScrCmd_AddVar,
    FrontierScrCmd_SubVar,
    FrontierScrCmd_GoTo,
    FrontierScrCmd_GoToIf,
    FrontierScrCmd_Call,
    FrontierScrCmd_Return,
    FrontierScrCmd_CallIf,
    FrontierScrCmd_MessageInstant,
    FrontierScrCmd_MessageNoSkip,
    FrontierScrCmd_Message,
    FrontierScrCmd_CloseMessage,
    FrontierScrCmd_FadeScreen,
    FrontierScrCmd_WaitFadeScreen,
    FrontierScrCmd_InitGlobalTextMenu,
    FrontierScrCmd_InitLocalTextMenu,
    FrontierScrCmd_AddMenuEntry,
    FrontierScrCmd_AddMenuEntryWithDesc,
    FrontierScrCmd_ShowMenu,
    FrontierScrCmd_InitGlobalTextListMenu,
    FrontierScrCmd_InitLocalTextListMenu,
    FrontierScrCmd_AddListMenuEntry,
    FrontierScrCmd_ShowListMenu,
    FrontierScrCmd_FreeListMenu,
    FrontierScrCmd_ShowYesNoMenu,
    FrontierScrCmd_CompareVarToValue,
    FrontierScrCmd_CompareVarToVar,
    FrontierScrCmd_22,
    FrontierScrCmd_23,
    FrontierScrCmd_24,
    FrontierScrCmd_25,
    FrontierScrCmd_26,
    FrontierScrCmd_Dummy27,
    FrontierScrCmd_28,
    FrontierScrCmd_29,
    FrontierScrCmd_2A,
    FrontierScrCmd_2B,
    FrontierScrCmd_2C,
    FrontierScrCmd_2D,
    FrontierScrCmd_2E,
    FrontierScrCmd_2F,
    FrontierScrCmd_30,
    FrontierScrCmd_31,
    FrontierScrCmd_32,
    FrontierScrCmd_33,
    FrontierScrCmd_34,
    FrontierScrCmd_35,
    FrontierScrCmd_ClearReceivedTempDataAllPlayers,
    FrontierScrCmd_EndCommunication,
    FrontierScrCmd_GetRandom,
    FrontierScrCmd_HealParty,
    FrontierScrCmd_WaitABPress,
    FrontierScrCmd_WaitABPressTime,
    FrontierScrCmd_Dummy3C,
    FrontierScrCmd_3D,
    FrontierScrCmd_3E,
    FrontierScrCmd_3F,
    FrontierScrCmd_GetPlayerObjEventGfx,
    FrontierScrCmd_41,
    FrontierScrCmd_42,
    FrontierScrCmd_43,
    FrontierScrCmd_44,
    FrontierScrCmd_45,
    FrontierScrCmd_46,
    FrontierScrCmd_47,
    FrontierScrCmd_IncrementRecordValue,
    FrontierScrCmd_AddToRecordValue,
    FrontierScrCmd_IncrementTrainerScore,
    FrontierScrCmd_4B,
    FrontierScrCmd_4C,
    FrontierScrCmd_4D,
    FrontierScrCmd_4E,
    FrontierScrCmd_4F,
    FrontierScrCmd_50,
    FrontierScrCmd_51,
    FrontierScrCmd_52,
    FrontierScrCmd_53,
    FrontierScrCmd_54,
    FrontierScrCmd_PlaySoundEffect,
    FrontierScrCmd_StopSoundEffect,
    FrontierScrCmd_WaitSoundEffect,
    FrontierScrCmd_PlayFanfare,
    FrontierScrCmd_WaitFanfare,
    FrontierScrCmd_PlayBGM,
    FrontierScrCmd_StopBGM,
    FrontierScrCmd_5C,
    FrontierScrCmd_5D,
    FrontierScrCmd_5E,
    FrontierScrCmd_5F,
    FrontierScrCmd_60,
    FrontierScrCmd_61,
    FrontierScrCmd_62,
    FrontierScrCmd_63,
    FrontierScrCmd_64,
    FrontierScrCmd_65,
    FrontierScrCmd_66,
    FrontierScrCmd_67,
    FrontierScrCmd_68,
    FrontierScrCmd_69,
    FrontierScrCmd_6A,
    FrontierScrCmd_6B,
    FrontierScrCmd_6C,
    FrontierScrCmd_6D,
    FrontierScrCmd_6E,
    FrontierScrCmd_6F,
    FrontierScrCmd_70,
    FrontierScrCmd_71,
    FrontierScrCmd_72,
    FrontierScrCmd_73,
    FrontierScrCmd_SaveDataExtraInit,
    FrontierScrCmd_GetMiscSaveBlockInitFlag,
    FrontierScrCmd_76,
    FrontierScrCmd_ShowSavingIcon,
    FrontierScrCmd_HideSavingIcon,
    FrontierScrCmd_BufferItemName,
    FrontierScrCmd_BufferNumber,
    FrontierScrCmd_BufferPlayerName,
    FrontierScrCmd_BufferPartnerName,
    FrontierScrCmd_BufferMoveName,
    FrontierScrCmd_BufferSpeciesName,
    FrontierScrCmd_BufferTypeName,
    FrontierScrCmd_BufferRivalName,
    FrontierScrCmd_GetNumBattlePoints,
    FrontierScrCmd_GiveBattlePoints,
    FrontierScrCmd_RemoteBattlePoints,
    FrontierScrCmd_CallBattleTowerFunction,
    FrontierScrCmd_85,
    FrontierScrCmd_86,
    FrontierScrCmd_87,
    FrontierScrCmd_88,
    FrontierScrCmd_89,
    FrontierScrCmd_8A,
    FrontierScrCmd_8B,
    FrontierScrCmd_8C,
    FrontierScrCmd_8D,
    FrontierScrCmd_OpenBattleHallApp,
    FrontierScrCmd_8F,
    FrontierScrCmd_90,
    FrontierScrCmd_91,
    FrontierScrCmd_92,
    FrontierScrCmd_93,
    FrontierScrCmd_94,
    FrontierScrCmd_95,
    FrontierScrCmd_Dummy96,
    FrontierScrCmd_97,
    FrontierScrCmd_98,
    FrontierScrCmd_99,
    FrontierScrCmd_9A,
    FrontierScrCmd_9B,
    FrontierScrCmd_9C,
    FrontierScrCmd_9D,
    FrontierScrCmd_9E,
    FrontierScrCmd_9F,
    FrontierScrCmd_A0,
    FrontierScrCmd_A1,
    FrontierScrCmd_A2,
    FrontierScrCmd_A3,
    FrontierScrCmd_A4,
    FrontierScrCmd_A5,
    FrontierScrCmd_A6,
    FrontierScrCmd_A7,
    FrontierScrCmd_A8,
    FrontierScrCmd_A9,
    FrontierScrCmd_AA,
    FrontierScrCmd_AB,
    FrontierScrCmd_AC,
    FrontierScrCmd_AD,
    FrontierScrCmd_AE,
    FrontierScrCmd_AF,
    FrontierScrCmd_B0,
    FrontierScrCmd_B1,
    FrontierScrCmd_B2,
    FrontierScrCmd_B3,
    FrontierScrCmd_B4,
    FrontierScrCmd_B5,
    FrontierScrCmd_B6,
    FrontierScrCmd_SetWiFiListHostFriendCurrentDate,
    FrontierScrCmd_B8,
    FrontierScrCmd_B9,
    FrontierScrCmd_BA,
    FrontierScrCmd_BB,
    FrontierScrCmd_BC,
    FrontierScrCmd_BD,
    FrontierScrCmd_BE,
    FrontierScrCmd_BF,
    FrontierScrCmd_C0,
    FrontierScrCmd_C1,
    FrontierScrCmd_C2,
    FrontierScrCmd_C3,
    FrontierScrCmd_C4,
    FrontierScrCmd_C5,
    FrontierScrCmd_C6,
    FrontierScrCmd_C7,
    FrontierScrCmd_C8,
    FrontierScrCmd_C9,
    FrontierScrCmd_SetMenuXOriginSide,
    FrontierScrCmd_SetMenuYOriginSide,
};

const u32 gFrontierScrCmdFuncsCount = NELEMS(gFrontierScrCmdFuncs);

u16 *FrontierScriptContext_TryGetVarPointer(FrontierScriptContext *ctx)
{
    u16 *var;
    u16 varID = FrontierScriptContext_ReadHalfWord(ctx);

    var = FrontierScriptContext_GetVarPointer(ctx, varID);

    if (var == NULL) {
        (void)0;
    }

    GF_ASSERT(var != NULL);
    return var;
}

u16 FrontierScriptContext_GetVar(FrontierScriptContext *ctx)
{
    return FrontierScriptContext_TryGetVar(ctx, FrontierScriptContext_ReadHalfWord(ctx));
}

u16 *FrontierScriptContext_GetVarPointer(FrontierScriptContext *ctx, u16 varID)
{
    if (varID < SCRIPT_LOCAL_VARS_START) {
        return NULL;
    } else if (varID < ((SCRIPT_LOCAL_VARS_START + 7) + 1)) {
        return &ctx->unk_08[varID - SCRIPT_LOCAL_VARS_START];
    } else if (varID < ((((SCRIPT_LOCAL_VARS_START + 7) + 1) + 7) + 1)) {
        return ov104_0222E91C(ctx->unk_00, varID - ((SCRIPT_LOCAL_VARS_START + 7) + 1));
    } else if (varID < ((((((SCRIPT_LOCAL_VARS_START + 7) + 1) + 7) + 1) + 3) + 1)) {
        return &ctx->data[varID - ((((SCRIPT_LOCAL_VARS_START + 7) + 1) + 7) + 1)];
    } else if (varID == 0xFD13) {
        return NULL;
    } else if (varID == 0xEEEE) {
        return NULL;
    } else if (varID == 0xEEEF) {
        return NULL;
    }

    GF_ASSERT(0);
    return NULL;
}

u16 FrontierScriptContext_TryGetVar(FrontierScriptContext *ctx, u16 varID)
{
    u16 *var = FrontierScriptContext_GetVarPointer(ctx, varID);

    if (var == NULL) {
        return varID;
    }

    return *var;
}

static BOOL FrontierScrCmd_Noop(FrontierScriptContext *ctx)
{
    return FALSE;
}

static BOOL FrontierScrCmd_End(FrontierScriptContext *ctx)
{
    FrontierScriptContext_Stop(ctx);
    return FALSE;
}

static BOOL FrontierScrCmd_02(FrontierScriptContext *ctx)
{
    FrontierScriptContext_Stop(ctx);
    sub_0209B9B4(ctx->unk_00->unk_00);

    return FALSE;
}

static BOOL FrontierScrCmd_03(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    u16 v1 = FrontierScriptContext_GetVar(ctx);

    sub_0209B9BC(v0->unk_00, v1, 0xFFFF);
    FrontierScriptContext_Pause(ctx, Resume);

    return TRUE;
}

static BOOL Resume(FrontierScriptContext *ctx)
{
    return TRUE;
}

static BOOL FrontierScrCmd_04(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    u16 v1 = FrontierScriptContext_GetVar(ctx);
    u16 v2 = FrontierScriptContext_GetVar(ctx);

    sub_0209B9BC(v0->unk_00, v1, v2);
    FrontierScriptContext_Stop(ctx);

    return FALSE;
}

static BOOL FrontierScrCmd_WaitTime(FrontierScriptContext *ctx)
{
    u16 frames = FrontierScriptContext_ReadHalfWord(ctx);
    u16 countdownVarID = FrontierScriptContext_ReadHalfWord(ctx);

    u16 *countdownVar = FrontierScriptContext_GetVarPointer(ctx, countdownVarID);
    *countdownVar = frames;
    ctx->data[0] = countdownVarID;
    FrontierScriptContext_Pause(ctx, DecrementTimer);
    return TRUE;
}

static BOOL DecrementTimer(FrontierScriptContext *ctx)
{
    u16 *frames = FrontierScriptContext_GetVarPointer(ctx, ctx->data[0]);
    (*frames)--;
    return *frames == 0;
}

static BOOL FrontierScrCmd_SetVarFromValue(FrontierScriptContext *ctx)
{
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);
    *destVar = FrontierScriptContext_ReadHalfWord(ctx);
    return FALSE;
}

static BOOL FrontierScrCmd_SetVarFromVar(FrontierScriptContext *ctx)
{
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);
    u16 *srcVar = FrontierScriptContext_TryGetVarPointer(ctx);
    *destVar = *srcVar;
    return FALSE;
}

static BOOL FrontierScrCmd_AddVar(FrontierScriptContext *ctx)
{
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);
    *destVar += FrontierScriptContext_GetVar(ctx);
    return FALSE;
}

static BOOL FrontierScrCmd_SubVar(FrontierScriptContext *ctx)
{
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);
    *destVar -= FrontierScriptContext_GetVar(ctx);
    return FALSE;
}

static u8 Compare(u16 value0, u16 value1)
{
    if (value0 < value1) {
        return 0;
    } else if (value0 == value1) {
        return 1;
    }

    return 2;
}

static BOOL FrontierScrCmd_CompareVarToValue(FrontierScriptContext *ctx)
{
    u16 value0 = FrontierScriptContext_GetVar(ctx);
    u16 value1 = FrontierScriptContext_ReadHalfWord(ctx);
    ctx->comparisonResult = Compare(value0, value1);
    return FALSE;
}

static BOOL FrontierScrCmd_CompareVarToVar(FrontierScriptContext *ctx)
{
    u16 *var0 = FrontierScriptContext_TryGetVarPointer(ctx);
    u16 *var1 = FrontierScriptContext_TryGetVarPointer(ctx);
    ctx->comparisonResult = Compare(*var0, *var1);
    return FALSE;
}

static void FrontierScriptContext_Jump(FrontierScriptContext *ctx, u8 *ptr)
{
    ctx->scriptPtr = ptr;
}

static BOOL FrontierScrCmd_GoTo(FrontierScriptContext *ctx)
{
    s32 offset = FrontierScriptContext_ReadWord(ctx);
    FrontierScriptContext_Jump(ctx, ctx->scriptPtr + offset);
    return FALSE;
}

static BOOL FrontierScrCmd_GoToIf(FrontierScriptContext *ctx)
{
    u8 condition = FrontierScriptContext_ReadByte(ctx);
    s32 offset = FrontierScriptContext_ReadWord(ctx);
    if (sConditionTable[condition][ctx->comparisonResult] == TRUE) {
        FrontierScriptContext_Jump(ctx, ctx->scriptPtr + offset);
    }
    return FALSE;
}

static BOOL FrontierScrCmd_Call(FrontierScriptContext *ctx)
{
    s32 offset = FrontierScriptContext_ReadWord(ctx);
    FrontierScriptContext_Call(ctx, ctx->scriptPtr + offset);
    return FALSE;
}

static BOOL FrontierScrCmd_Return(FrontierScriptContext *ctx)
{
    FrontierScriptContext_Return(ctx);
    return FALSE;
}

static BOOL FrontierScrCmd_CallIf(FrontierScriptContext *ctx)
{
    u8 condition = FrontierScriptContext_ReadByte(ctx);
    s32 offset = FrontierScriptContext_ReadWord(ctx);
    if (sConditionTable[condition][ctx->comparisonResult] == TRUE) {
        FrontierScriptContext_Call(ctx, ctx->scriptPtr + offset);
    }
    return FALSE;
}

static BOOL FrontierScrCmd_MessageInstant(FrontierScriptContext *ctx)
{
    FrontierMessageOptions printParams;
    u16 messageID = FrontierScriptContext_ReadHalfWord(ctx);

    printParams.renderDelay = TEXT_SPEED_INSTANT;
    printParams.scrollFlags = AUTO_SCROLL_DISABLED;
    printParams.font = FONT_MESSAGE;
    printParams.unused = 0;

    FrontierShowMessage(ctx->unk_00, ctx->msgLoader, messageID, FALSE, &printParams);

    return FALSE;
}

static BOOL FrontierScrCmd_MessageNoSkip(FrontierScriptContext *ctx)
{
    u16 messageID = FrontierScriptContext_ReadHalfWord(ctx);

    FrontierShowMessage(ctx->unk_00, ctx->msgLoader, messageID, FALSE, NULL);
    FrontierScriptContext_Pause(ctx, WaitForPrinter);
    return TRUE;
}

static BOOL FrontierScrCmd_Message(FrontierScriptContext *ctx)
{
    u16 messageID = FrontierScriptContext_ReadHalfWord(ctx);

    FrontierShowMessage(ctx->unk_00, ctx->msgLoader, messageID, TRUE, NULL);
    FrontierScriptContext_Pause(ctx, WaitForPrinter);
    return TRUE;
}

static BOOL WaitForPrinter(FrontierScriptContext *ctx)
{
    return !Text_IsPrinterActive(ctx->unk_00->printerID);
}

static BOOL FrontierScrCmd_CloseMessage(FrontierScriptContext *ctx)
{
    Frontier_CloseMessage(ctx->unk_00);
    return FALSE;
}

static BOOL FrontierScrCmd_FadeScreen(FrontierScriptContext *ctx)
{
    u16 transition = FrontierScriptContext_ReadHalfWord(ctx);
    u16 frames = FrontierScriptContext_ReadHalfWord(ctx);
    u16 type = FrontierScriptContext_ReadHalfWord(ctx);
    u16 color = FrontierScriptContext_ReadHalfWord(ctx);

    StartScreenFade(FADE_BOTH_SCREENS, type, type, color, transition, frames, HEAP_ID_FIELD2);
    ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
    ResetVisibleHardwareWindows(DS_SCREEN_SUB);
    return FALSE;
}

static BOOL FrontierScrCmd_WaitFadeScreen(FrontierScriptContext *ctx)
{
    FrontierScriptContext_Pause(ctx, ScreenWipeDone);
    return TRUE;
}

static BOOL ScreenWipeDone(FrontierScriptContext *ctx)
{
    return IsScreenFadeDone() == TRUE;
}

static BOOL FrontierScrCmd_InitGlobalTextMenu(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    u8 anchorX = FrontierScriptContext_ReadByte(ctx);
    u8 anchorY = FrontierScriptContext_ReadByte(ctx);
    u8 initialCursorPos = FrontierScriptContext_ReadByte(ctx);
    u8 canExitWithB = FrontierScriptContext_ReadByte(ctx);
    u16 selectedOptionVar = FrontierScriptContext_ReadHalfWord(ctx);

    v0->unk_60 = FrontierMenuManager_New(v0, anchorX, anchorY, initialCursorPos, canExitWithB, FrontierScriptContext_GetVarPointer(ctx, selectedOptionVar), v0->strTemplate, NULL);
    ctx->data[0] = selectedOptionVar;

    return TRUE;
}

static BOOL FrontierScrCmd_InitLocalTextMenu(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    u8 anchorX = FrontierScriptContext_ReadByte(ctx);
    u8 anchorY = FrontierScriptContext_ReadByte(ctx);
    u8 initialCursorPos = FrontierScriptContext_ReadByte(ctx);
    u8 canExitWithB = FrontierScriptContext_ReadByte(ctx);
    u16 selectedOptionVar = FrontierScriptContext_ReadHalfWord(ctx);

    v0->unk_60 = FrontierMenuManager_New(v0, anchorX, anchorY, initialCursorPos, canExitWithB, FrontierScriptContext_GetVarPointer(ctx, selectedOptionVar), v0->strTemplate, ctx->msgLoader);
    ctx->data[0] = selectedOptionVar;

    return TRUE;
}

static BOOL FrontierScrCmd_AddMenuEntry(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v3 = ctx->unk_00;

    u16 entryID = FrontierScriptContext_ReadHalfWord(ctx);
    u16 descriptionID = 0xff;
    u16 index = FrontierScriptContext_ReadHalfWord(ctx);

    FrontierMenuManager_AddMenuEntry(v3->unk_60, entryID, descriptionID, index);
    return FALSE;
}

static BOOL FrontierScrCmd_AddMenuEntryWithDesc(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v3 = ctx->unk_00;

    u16 entryID = FrontierScriptContext_ReadHalfWord(ctx);
    u16 descriptionID = FrontierScriptContext_ReadHalfWord(ctx);
    u16 index = FrontierScriptContext_ReadHalfWord(ctx);

    FrontierMenuManager_AddMenuEntry(v3->unk_60, entryID, descriptionID, index);
    return FALSE;
}

static BOOL FrontierScrCmd_ShowMenu(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;

    FrontierMenuManager_ShowMenu(v0->unk_60);
    FrontierScriptContext_Pause(ctx, ResumeOnMenuSelection);

    return TRUE;
}

static BOOL ResumeOnMenuSelection(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    u16 *selectedOptionPtr = FrontierScriptContext_GetVarPointer(ctx, ctx->data[0]);

    if (*selectedOptionPtr == LIST_MENU_NO_SELECTION_YET) {
        return FALSE;
    }

    v0->unk_60 = NULL;
    return TRUE;
}

static BOOL FrontierScrCmd_InitGlobalTextListMenu(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    u8 anchorX = FrontierScriptContext_ReadByte(ctx);
    u8 anchorY = FrontierScriptContext_ReadByte(ctx);
    u8 initialCursorPos = FrontierScriptContext_ReadByte(ctx);
    u8 canExitWithB = FrontierScriptContext_ReadByte(ctx);
    u16 selectedOptionVar = FrontierScriptContext_ReadHalfWord(ctx);

    v0->unk_60 = FrontierMenuManager_New2(v0, anchorX, anchorY, initialCursorPos, canExitWithB, FrontierScriptContext_GetVarPointer(ctx, selectedOptionVar), v0->strTemplate, NULL);
    ctx->data[0] = selectedOptionVar;

    return TRUE;
}

static BOOL FrontierScrCmd_InitLocalTextListMenu(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    u8 anchorX = FrontierScriptContext_ReadByte(ctx);
    u8 anchorY = FrontierScriptContext_ReadByte(ctx);
    u8 initialCursorPos = FrontierScriptContext_ReadByte(ctx);
    u8 canExitWithB = FrontierScriptContext_ReadByte(ctx);
    u16 selectedOptionVar = FrontierScriptContext_ReadHalfWord(ctx);

    v0->unk_60 = FrontierMenuManager_New2(v0, anchorX, anchorY, initialCursorPos, canExitWithB, FrontierScriptContext_GetVarPointer(ctx, selectedOptionVar), v0->strTemplate, ctx->msgLoader);
    ctx->data[0] = selectedOptionVar;

    return TRUE;
}

static BOOL FrontierScrCmd_AddListMenuEntry(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v3 = ctx->unk_00;

    u16 entryID = FrontierScriptContext_ReadHalfWord(ctx);
    u16 descriptionID = FrontierScriptContext_ReadHalfWord(ctx);
    u16 index = FrontierScriptContext_ReadHalfWord(ctx);

    FrontierMenuManager_AddListMenuEntry(v3->unk_60, entryID, descriptionID, index);
    return FALSE;
}

static BOOL FrontierScrCmd_ShowListMenu(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;

    FrontierMenuManager_ShowListMenu(v0->unk_60);
    FrontierScriptContext_Pause(ctx, ResumeOnMenuSelection);

    return TRUE;
}

static BOOL FrontierScrCmd_FreeListMenu(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;

    FrontierMenuManager_FreeListMenu(v0->unk_60);
    return TRUE;
}

static BOOL FrontierScrCmd_ShowYesNoMenu(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = ov104_0222E924(v0);
    u16 destVarID = FrontierScriptContext_ReadHalfWord(ctx);
    u8 cursorStart = FrontierScriptContext_ReadByte(ctx);

    v0->menu = Menu_MakeYesNoChoiceWithCursorAt(v1->unk_00, &sYesNoWindowTemplate, BASE_TILE_STANDARD_WINDOW_FRAME, 12, cursorStart, v0->heapID);
    ctx->data[0] = destVarID;
    FrontierScriptContext_Pause(ctx, WaitForYesNoResult);
    return TRUE;
}

static BOOL WaitForYesNoResult(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v1 = ctx->unk_00;
    u16 *destVar = FrontierScriptContext_GetVarPointer(ctx, ctx->data[0]);
    u32 result = Menu_ProcessInputAndHandleExit(v1->menu, v1->heapID);
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

static BOOL FrontierScrCmd_22(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    const u8 *currScriptPtr;
    UnkStruct_ov104_0223C688 v3;
    s32 offset = FrontierScriptContext_ReadWord(ctx);
    currScriptPtr = ctx->scriptPtr;

    ctx->scriptPtr = (u8 *)(ctx->scriptPtr + offset);

    while (TRUE) {
        v3.unk_00 = FrontierScriptContext_GetVar(ctx);

        if (v3.unk_00 == 0xFD13) {
            break;
        }

        v3.unk_02 = FrontierScriptContext_ReadByte(ctx);

        if (v3.unk_00 == 0xEEEE) {
            UnkStruct_ov104_02230BE4 *v6 = sub_0209B970(v0->unk_00);
            const TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(v6->saveData);
            v3.unk_00 = ov104_0222E5F0(trainerInfo);

            ov104_0223D0EC(v1, &v3);
        } else if (v3.unk_00 == 0xEEEF) {
            if (CommSys_IsInitialized() == TRUE) {
                const TrainerInfo *trainerInfo;
                int connectedCount = CommSys_ConnectedCount(), i;

                for (i = 0; i < connectedCount; i++) {
                    trainerInfo = CommInfo_TrainerInfo(i);
                    v3.unk_00 = ov104_0222E5F0(trainerInfo);
                    ov104_0223D0EC(v1, &v3);
                }
            } else {
                (void)0;
            }
        } else {
            ov104_0223D0EC(v1, &v3);
        }
    }

    ctx->scriptPtr = currScriptPtr;
    return FALSE;
}

static BOOL FrontierScrCmd_23(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2 = FrontierScriptContext_GetVar(ctx);
    ov104_0223D148(v1, v2);

    return FALSE;
}

static BOOL FrontierScrCmd_24(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    const u8 *currScriptPtr;
    s32 offset = FrontierScriptContext_ReadWord(ctx);
    UnkStruct_ov104_0223D570 v4;
    int v5;

    currScriptPtr = ctx->scriptPtr;

    ctx->scriptPtr = (u8 *)(ctx->scriptPtr + offset);

    while (TRUE) {
        v5 = -1;
        v4.unk_04 = FrontierScriptContext_GetVar(ctx);

        if (v4.unk_04 == 0xFD13) {
            break;
        }

        v4.unk_00 = FrontierScriptContext_GetVar(ctx);
        v4.unk_0A = FrontierScriptContext_ReadByte(ctx);
        v4.unk_06 = FrontierScriptContext_ReadHalfWord(ctx) + -8;
        v4.unk_08 = FrontierScriptContext_ReadHalfWord(ctx) + -16;
        v4.unk_0B = FrontierScriptContext_ReadByte(ctx);
        v4.unk_0C = FrontierScriptContext_ReadByte(ctx);
        v4.unk_02 = 0;

        if (v4.unk_00 == 0xEEEE) {
            const TrainerInfo *trainerInfo;
            UnkStruct_ov104_02230BE4 *v7;

            v7 = sub_0209B970(v0->unk_00);
            trainerInfo = SaveData_GetTrainerInfo(v7->saveData);
            v4.unk_00 = ov104_0222E5F0(trainerInfo);
            v5 = (32 - 1);
        } else if (v4.unk_00 == 0xEEEF) {
            int netID = FrontierScriptContext_ReadByte(ctx);
            const TrainerInfo *trainerInfo = CommInfo_TrainerInfo(netID);
            v4.unk_00 = ov104_0222E5F0(trainerInfo);
        } else {
            (void)0;
        }

        ov104_0223D180(v1, &v4, v5);
    }

    ctx->scriptPtr = currScriptPtr;
    return FALSE;
}

static BOOL FrontierScrCmd_25(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    UnkStruct_ov63_0222BEC0 *v2;
    u16 v3 = FrontierScriptContext_GetVar(ctx);
    v2 = ov63_0222BF18(v1->unk_14, v3);

    ov104_0223D200(v1, v2);

    return FALSE;
}

static BOOL FrontierScrCmd_26(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2 = FrontierScriptContext_GetVar(ctx);
    u8 v3 = FrontierScriptContext_ReadByte(ctx);
    UnkStruct_ov63_0222CE44 *v4 = NULL;

    ov104_0223D258(v1, v2, NULL, &v4);
    GF_ASSERT(v4 != NULL);
    ov63_0222D008(v4, v3);

    return FALSE;
}

static BOOL FrontierScrCmd_Dummy27(FrontierScriptContext *ctx)
{
    return FALSE;
}

static BOOL FrontierScrCmd_28(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u8 *v2;
    u16 v3 = FrontierScriptContext_GetVar(ctx);
    u32 offset = (s32)FrontierScriptContext_ReadWord(ctx);
    UnkStruct_ov104_0223C634 *v5 = ov104_0223D5A8(v0->unk_00, v3);

    if (v5 == NULL) {
        GF_ASSERT(0);
    }

    v2 = (u8 *)(ctx->scriptPtr + offset);
    ov104_0223056C(v3, v5, (UnkStruct_ov104_02232B78_sub1 *)v2, v1->unk_30, &v0->unk_59, v0->heapID);
    v0->unk_59++;

    return FALSE;
}

static void ov104_0223056C(u16 param0, UnkStruct_ov104_0223C634 *param1, const UnkStruct_ov104_02232B78_sub1 *param2, UnkStruct_ov63_0222D77C *param3, u8 *param4, enum HeapID heapID)
{
    UnkStruct_ov104_02232B78 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov104_02232B78));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_02232B78));

    v0->unk_14 = param1;
    v0->unk_0C = param2;
    v0->unk_10 = param3;
    v0->unk_04 = param0;
    v0->unk_08 = param4;

    GF_ASSERT(param1->unk_38 == NULL);
    param1->unk_38 = SysTask_Start(ov104_02232B78, v0, 60000 + 100);
}

static BOOL FrontierScrCmd_29(FrontierScriptContext *ctx)
{
    FrontierScriptContext_Pause(ctx, ov104_022305C8);
    return TRUE;
}

static BOOL ov104_022305C8(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;

    if (v0->unk_59 == 0) {
        return TRUE;
    }

    return FALSE;
}

static BOOL FrontierScrCmd_2A(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    const u8 *currScriptPtr;
    s32 offset = FrontierScriptContext_ReadWord(ctx);
    u16 v4;
    NARC *narc;

    currScriptPtr = ctx->scriptPtr;
    ctx->scriptPtr = (u8 *)(ctx->scriptPtr + offset);
    narc = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, v0->heapID);

    while (TRUE) {
        v4 = FrontierScriptContext_GetVar(ctx);

        if (v4 == 0xFD13) {
            break;
        }

        ov104_0223D768(v1->unk_34.unk_00, v1->unk_34.unk_04, narc, v1->unk_04, v4);
        ov104_0223D29C(v1, v4);
    }

    NARC_dtor(narc);
    ctx->scriptPtr = currScriptPtr;

    return FALSE;
}

static BOOL FrontierScrCmd_2B(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2 = FrontierScriptContext_GetVar(ctx);

    ov104_0223D7EC(v1->unk_34.unk_04, v2);
    ov104_0223D2CC(v1, v2);

    return FALSE;
}

static BOOL FrontierScrCmd_2C(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    const u8 *currScriptPtr;
    s32 offset = FrontierScriptContext_ReadWord(ctx);
    u16 v4, x, y, draw, v8, v9;
    ManagedSprite *managedSprite;
    currScriptPtr = ctx->scriptPtr;

    ctx->scriptPtr = (u8 *)(ctx->scriptPtr + offset);

    while (TRUE) {
        v4 = FrontierScriptContext_GetVar(ctx);

        if (v4 == 0xFD13) {
            break;
        }

        x = FrontierScriptContext_GetVar(ctx);
        y = FrontierScriptContext_GetVar(ctx);
        draw = FrontierScriptContext_GetVar(ctx);
        v8 = FrontierScriptContext_ReadByte(ctx);
        v9 = FrontierScriptContext_ReadByte(ctx);
        managedSprite = ov104_0223D2FC(v1, v9, v4);

        ManagedSprite_SetPositionXY(managedSprite, x, y);
        ManagedSprite_SetDrawFlag(managedSprite, draw);

        ov104_0223D378(v1, v9, v8);
    }

    ctx->scriptPtr = currScriptPtr;
    return FALSE;
}

static BOOL FrontierScrCmd_2D(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    u16 v1;
    UnkStruct_ov104_0223C4CC *v2 = sub_0209B974(v0->unk_00);

    v1 = FrontierScriptContext_GetVar(ctx);
    ov104_0223D348(v2, v1);

    return FALSE;
}

static BOOL FrontierScrCmd_2E(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2 = FrontierScriptContext_GetVar(ctx);
    u8 draw = FrontierScriptContext_ReadByte(ctx);
    ManagedSprite *managedSprite = ov104_0223D370(v1, v2);

    GF_ASSERT(managedSprite != NULL);
    ManagedSprite_SetDrawFlag(managedSprite, draw);

    return FALSE;
}

static BOOL FrontierScrCmd_2F(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2 = FrontierScriptContext_GetVar(ctx);
    ManagedSprite *managedSprite = ov104_0223D370(v1, v2);

    GF_ASSERT(managedSprite != NULL);
    Sprite_SetFlipMode2(managedSprite->sprite, 1);

    return FALSE;
}

static BOOL FrontierScrCmd_30(FrontierScriptContext *ctx)
{
    ManagedSprite *managedSprite;
    UnkStruct_ov104_022320B4 *v1 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v2 = sub_0209B974(v1->unk_00);
    u16 v3 = FrontierScriptContext_GetVar(ctx);
    u16 v4 = FrontierScriptContext_GetVar(ctx);

    managedSprite = ov104_0223D370(v2, v3);
    GF_ASSERT(managedSprite != NULL);

    if (v4 == 0) {
        Sprite_SetExplicitOamMode2(managedSprite->sprite, GX_OAM_MODE_NORMAL);
    } else {
        Sprite_SetExplicitOamMode2(managedSprite->sprite, GX_OAM_MODE_XLU);
    }

    return FALSE;
}

static BOOL FrontierScrCmd_31(FrontierScriptContext *ctx)
{
    u16 v0 = FrontierScriptContext_GetVar(ctx);
    u16 animID = FrontierScriptContext_GetVar(ctx);
    ManagedSprite *managedSprite;
    UnkStruct_ov104_0223C4CC *v3 = sub_0209B974(ctx->unk_00->unk_00);

    managedSprite = ov104_0223D370(v3, v0);

    ManagedSprite_SetAnim(managedSprite, animID);
    ov104_0223D378(v3, v0, 1);

    return FALSE;
}

static BOOL FrontierScrCmd_32(FrontierScriptContext *ctx)
{
    u16 v0 = FrontierScriptContext_GetVar(ctx);
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(ctx->unk_00->unk_00);

    ov104_0223D378(v1, v0, 0);
    return FALSE;
}

static BOOL FrontierScrCmd_33(FrontierScriptContext *ctx)
{
    u16 v0 = FrontierScriptContext_GetVar(ctx);

    ctx->data[0] = v0;
    FrontierScriptContext_Pause(ctx, ov104_02230850);

    return TRUE;
}

static BOOL ov104_02230850(FrontierScriptContext *ctx)
{
    ManagedSprite *managedSprite;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(ctx->unk_00->unk_00);

    managedSprite = ov104_0223D370(v1, ctx->data[0]);

    if (ov104_0223D3A4(v1, ctx->data[0]) == 0 || ManagedSprite_IsAnimated(managedSprite) == FALSE) {
        return TRUE;
    }

    return FALSE;
}

static void ov104_0223088C(FrontierScriptContext *ctx, int param1, int param2)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    s16 *v1;
    u16 v2;
    int v3;

    GF_ASSERT(param2 <= 7);

    v1 = Heap_Alloc(v0->heapID, sizeof(s16) * param2);
    v2 = FrontierScriptContext_GetVar(ctx);

    for (v3 = 0; v3 < 3; v3++) {
        v1[v3] = FrontierScriptContext_GetVar(ctx);
    }

    ov104_0223D860(v0->unk_00, v2, 1, v1, 3);
    Heap_Free(v1);
}

static BOOL FrontierScrCmd_53(FrontierScriptContext *ctx)
{
    u16 v0 = FrontierScriptContext_GetVar(ctx);
    ov104_0223D860(ctx->unk_00->unk_00, v0, 0, NULL, 0);

    return FALSE;
}

static BOOL FrontierScrCmd_54(FrontierScriptContext *ctx)
{
    ov104_0223088C(ctx, 1, 3);
    return FALSE;
}

static BOOL FrontierScrCmd_34(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(ctx->unk_00->unk_00);
    void *namingScreenArgs = NamingScreenArgs_Init(HEAP_ID_FIELD2, NAMING_SCREEN_TYPE_PLAYER, 0, 8, (void *)v1->options);

    sub_0209B988(ctx->unk_00->unk_00, &gNamingScreenAppTemplate, namingScreenArgs, 0, ov104_02230950);

    return TRUE;
}

static void ov104_02230950(void *namingScreenArgs)
{
    NamingScreenArgs_Free(namingScreenArgs);
}

static BOOL FrontierScrCmd_6C(FrontierScriptContext *ctx)
{
    int v0;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(ctx->unk_00->unk_00);

    sub_0202F1F8(v1->saveData, HEAP_ID_FIELD2, &v0);
    return FALSE;
}

static BOOL FrontierScrCmd_6D(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    u16 v1 = FrontierScriptContext_ReadHalfWord(ctx);
    u16 v2 = FrontierScriptContext_GetVar(ctx);
    u16 v3 = FrontierScriptContext_GetVar(ctx);
    u16 *v4 = FrontierScriptContext_TryGetVarPointer(ctx);

    if (v3 > 9999) {
        v3 = 9999;
    }

    v0->unk_B0 = 0;
    v0->unk_B2 = 0;
    v0->unk_B4 = ov104_02230A2C(v1, v2);
    v0->unk_B6 = v3;
    v0->unk_B8 = v4;

    FrontierScriptContext_Pause(ctx, ov104_022309DC);
    return TRUE;
}

static BOOL ov104_022309DC(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(ctx->unk_00->unk_00);
    int v2 = sub_0202F41C(v1->saveData, v0->unk_B4, v0->unk_B6, 0, &v0->unk_B0, &v0->unk_B2);

    if ((v2 == 2) || (v2 == 3)) {
        if (v2 == 2) {
            *(v0->unk_B8) = 1;
        } else {
            *(v0->unk_B8) = 0;
        }

        return TRUE;
    }

    return FALSE;
}

static int ov104_02230A2C(u16 param0, u16 param1)
{
    int v0 = (UnkEnum_0202F510_15);

    switch (param0) {
    case 1:
        switch (param1) {
        case 0:
            v0 = (UnkEnum_0202F510_15);
            break;
        case 1:
            v0 = (UnkEnum_0202F510_16);
            break;
        case 2:
        case 3:
        case 6:
            v0 = (UnkEnum_0202F510_17);
            break;
        case 4:
        case 5:
            v0 = (UnkEnum_0202F510_15);
            break;
        default:
            GF_ASSERT(0);
            break;
        }
        break;
    case 2:
        switch (param1) {
        case 0:
            v0 = (UnkEnum_0202F510_18);
            break;
        case 1:
            v0 = (UnkEnum_0202F510_19);
            break;
        case 2:
        case 3:
            v0 = (UnkEnum_0202F510_20);
            break;
        default:
            GF_ASSERT(0);
            break;
        }
        break;
    case 3:
        switch (param1) {
        case 0:
            v0 = (UnkEnum_0202F510_21);
            break;
        case 1:
            v0 = (UnkEnum_0202F510_22);
            break;
        case 2:
        case 3:
            v0 = (UnkEnum_0202F510_23);
            break;
        default:
            GF_ASSERT(0);
            break;
        }
        break;
    case 4:
        switch (param1) {
        case 0:
            v0 = (UnkEnum_0202F510_27);
            break;
        case 1:
            v0 = (UnkEnum_0202F510_28);
            break;
        case 2:
        case 3:
            v0 = (UnkEnum_0202F510_29);
            break;
        default:
            GF_ASSERT(0);
            break;
        }
        break;
    case 5:
        switch (param1) {
        case 0:
            v0 = (UnkEnum_0202F510_24);
            break;
        case 1:
            v0 = (UnkEnum_0202F510_25);
            break;
        case 2:
        case 3:
            v0 = (UnkEnum_0202F510_26);
            break;
        default:
            GF_ASSERT(0);
            break;
        }
        break;
    case 6:
        switch (param1) {
        case 0:
            v0 = (UnkEnum_0202F510_30);
            break;
        case 1:
            v0 = (UnkEnum_0202F510_31);
            break;
        case 2:
        case 3:
            v0 = (UnkEnum_0202F510_32);
            break;
        default:
            GF_ASSERT(0);
            break;
        }
        break;
    }

    return v0;
}

static BOOL FrontierScrCmd_6E(FrontierScriptContext *ctx)
{
    int v0;
    FieldBattleDTO *dto;
    UnkStruct_ov104_02230BE4 *v2 = sub_0209B970(ctx->unk_00->unk_00);

    dto = Heap_Alloc(HEAP_ID_FIELD2, sizeof(FieldBattleDTO));
    MI_CpuClear8(dto, sizeof(FieldBattleDTO));

    sub_0202F298(v2->saveData, 11, &v0, dto, 0);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_BATTLE, SEQ_BATTLE_TRAINER, 1);
    sub_0209B988(ctx->unk_00->unk_00, &gBattleApplicationTemplate, dto, 1, NULL);

    return TRUE;
}

static BOOL FrontierScrCmd_6F(FrontierScriptContext *ctx)
{
    sub_0202F22C();
    return FALSE;
}

static BOOL FrontierScrCmd_70(FrontierScriptContext *ctx)
{
    int v0;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(ctx->unk_00->unk_00);
    u16 *v2 = FrontierScriptContext_TryGetVarPointer(ctx);

    *v2 = sub_0202F330(v1->saveData, 11, &v0, 0);
    return FALSE;
}

static BOOL FrontierScrCmd_72(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(ctx->unk_00->unk_00);
    u16 *unused = FrontierScriptContext_TryGetVarPointer(ctx);
    SaveData_Save(v0->saveData);
    return FALSE;
}

static BOOL FrontierScrCmd_73(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(ctx->unk_00->unk_00);
    u16 *v2 = FrontierScriptContext_TryGetVarPointer(ctx);

    ResetLock(RESET_LOCK_SOFT_RESET);
    InitHeapCanary(v0->heapID);
    SaveData_SaveStateInit(v1->saveData, 2);

    FrontierScriptContext_Pause(ctx, WaitForSaveStateFinish);
    return TRUE;
}

static BOOL WaitForSaveStateFinish(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(ctx->unk_00->unk_00);
    int saveResult = SaveData_SaveStateMain(v1->saveData);

    if (saveResult == SAVE_RESULT_OK) {
        FreeHeapCanary();
        ResetUnlock(RESET_LOCK_SOFT_RESET);
        return TRUE;
    }

    if (saveResult == SAVE_RESULT_CORRUPT) {
        FreeHeapCanary();
        ResetUnlock(RESET_LOCK_SOFT_RESET);
        return TRUE;
    }

    return FALSE;
}

static BOOL FrontierScrCmd_SaveDataExtraInit(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(ctx->unk_00->unk_00);

    SaveDataExtra_Init(v0->saveData);
    return FALSE;
}

static BOOL FrontierScrCmd_GetMiscSaveBlockInitFlag(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(ctx->unk_00->unk_00);
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);

    *destVar = SaveData_MiscSaveBlock_InitFlag(v0->saveData);
    return FALSE;
}

static BOOL FrontierScrCmd_ShowSavingIcon(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    v0->savingIcon = Window_AddWaitDial(&v0->msgWindow, BASE_TILE_SCROLLING_MESSAGE_BOX);
    return FALSE;
}

static BOOL FrontierScrCmd_HideSavingIcon(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    DestroyWaitDial(v0->savingIcon);
    return FALSE;
}

static BOOL FrontierScrCmd_BufferItemName(FrontierScriptContext *ctx)
{
    u8 templateArg = FrontierScriptContext_ReadByte(ctx);
    u16 item = FrontierScriptContext_GetVar(ctx);

    StringTemplate_SetItemName(ctx->unk_00->strTemplate, templateArg, item);
    return FALSE;
}

static BOOL FrontierScrCmd_BufferNumber(FrontierScriptContext *ctx)
{
    u8 templateArg = FrontierScriptContext_ReadByte(ctx);
    u16 number = FrontierScriptContext_GetVar(ctx);

    StringTemplate_SetNumber(ctx->unk_00->strTemplate, templateArg, number, GetNumberDigitCount(number), PADDING_MODE_SPACES, CHARSET_MODE_EN);
    return FALSE;
}

static u16 GetNumberDigitCount(u32 number)
{
    if (number / 10 == 0) {
        return 1;
    } else if (number / 100 == 0) {
        return 2;
    } else if (number / 1000 == 0) {
        return 3;
    } else if (number / 10000 == 0) {
        return 4;
    } else if (number / 100000 == 0) {
        return 5;
    } else if (number / 1000000 == 0) {
        return 6;
    } else if (number / 10000000 == 0) {
        return 7;
    } else if (number / 100000000 == 0) {
        return 8;
    }

    return 1;
}

static BOOL FrontierScrCmd_BufferPlayerName(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(ctx->unk_00->unk_00);
    u8 templateArg = FrontierScriptContext_ReadByte(ctx);

    StringTemplate_SetPlayerName(ctx->unk_00->strTemplate, templateArg, SaveData_GetTrainerInfo(v0->saveData));
    return FALSE;
}

static BOOL FrontierScrCmd_BufferPartnerName(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(ctx->unk_00->unk_00);
    u8 templateArg = FrontierScriptContext_ReadByte(ctx);

    StringTemplate_SetPlayerName(ctx->unk_00->strTemplate, templateArg, CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1));
    return FALSE;
}

BOOL FrontierScrCmd_BufferMoveName(FrontierScriptContext *ctx)
{
    u8 templateArg = FrontierScriptContext_ReadByte(ctx);
    u16 move = FrontierScriptContext_GetVar(ctx);

    StringTemplate_SetMoveName(ctx->unk_00->strTemplate, templateArg, move);
    return FALSE;
}

BOOL FrontierScrCmd_BufferSpeciesName(FrontierScriptContext *ctx)
{
    u8 templateArg = FrontierScriptContext_ReadByte(ctx);
    u16 species = FrontierScriptContext_GetVar(ctx);
    u16 unused1 = FrontierScriptContext_ReadHalfWord(ctx);
    u8 unused2 = FrontierScriptContext_ReadByte(ctx);
    String *speciesName = GetSpeciesNameString(species, HEAP_ID_FIELD2);

    StringTemplate_SetString(ctx->unk_00->strTemplate, templateArg, speciesName, unused1, unused2, GAME_LANGUAGE);
    String_Free(speciesName);
    return FALSE;
}

static String *GetSpeciesNameString(u16 species, u32 heapID)
{
    MessageLoader *speciesNames = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, heapID);
    String *buffer = MessageLoader_GetNewString(speciesNames, species);

    MessageLoader_Free(speciesNames);
    return buffer;
}

static BOOL FrontierScrCmd_BufferTypeName(FrontierScriptContext *ctx)
{
    u8 templateArg = FrontierScriptContext_ReadByte(ctx);
    u16 type = FrontierScriptContext_GetVar(ctx);

    StringTemplate_SetPokemonTypeName(ctx->unk_00->strTemplate, templateArg, type);
    return FALSE;
}

static BOOL FrontierScrCmd_BufferRivalName(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(ctx->unk_00->unk_00);
    u8 templateArg = FrontierScriptContext_ReadByte(ctx);

    StringTemplate_SetRivalName(ctx->unk_00->strTemplate, templateArg, v0->saveData);
    return FALSE;
}

static BOOL FrontierScrCmd_GetNumBattlePoints(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(ctx->unk_00->unk_00);
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);

    *destVar = BattlePoints_ApplyFuncAndGet(sub_0202D750(v0->saveData), 0, BATTLE_POINTS_FUNC_NONE);
    return FALSE;
}

static BOOL FrontierScrCmd_GiveBattlePoints(FrontierScriptContext *ctx)
{
    TVBroadcast *broadcast;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(ctx->unk_00->unk_00);
    u16 battlePoints = FrontierScriptContext_GetVar(ctx);

    broadcast = SaveData_GetTVBroadcast(v1->saveData);

    sub_0206D0C8(broadcast, battlePoints);
    GameRecords_AddToRecordValue(SaveData_GetGameRecords(v1->saveData), RECORD_BATTLE_POINTS_RECEIVED, battlePoints);
    BattlePoints_ApplyFuncAndGet(sub_0202D750(v1->saveData), battlePoints, BATTLE_POINTS_FUNC_ADD);

    return FALSE;
}

static BOOL FrontierScrCmd_RemoteBattlePoints(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(ctx->unk_00->unk_00);
    u16 battlePoints = FrontierScriptContext_GetVar(ctx);

    GameRecords_AddToRecordValue(SaveData_GetGameRecords(v0->saveData), RECORD_BATTLE_POINTS_SPENT, battlePoints);
    BattlePoints_ApplyFuncAndGet(sub_0202D750(v0->saveData), battlePoints, BATTLE_POINTS_FUNC_SUB);

    return FALSE;
}

static BOOL FrontierScrCmd_35(FrontierScriptContext *ctx)
{
    u16 v0 = FrontierScriptContext_GetVar(ctx);

    ctx->data[0] = v0;

    CommTiming_StartSync(v0);
    FrontierScriptContext_Pause(ctx, WaitForSyncState);

    return TRUE;
}

static BOOL WaitForSyncState(FrontierScriptContext *ctx)
{
    int result;

    if (CommSys_ConnectedCount() < 2) {
        result = TRUE;
    } else {
        result = CommTiming_IsSyncState(ctx->data[0]);
    }

    return result;
}

static BOOL FrontierScrCmd_ClearReceivedTempDataAllPlayers(FrontierScriptContext *ctx)
{
    CommTool_ClearReceivedTempDataAllPlayers();
    return FALSE;
}

static BOOL FrontierScrCmd_EndCommunication(FrontierScriptContext *ctx)
{
    FieldCommMan_EndBattle();
    FrontierScriptContext_Pause(ctx, WaitForCommManIsDeleted);

    return TRUE;
}

static BOOL WaitForCommManIsDeleted(FrontierScriptContext *ctx)
{
    return CommMan_IsInitialized() != TRUE && CommServerClient_IsInitialized() != TRUE;
}

static BOOL FrontierScrCmd_GetRandom(FrontierScriptContext *ctx)
{
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);
    u16 upperBound = FrontierScriptContext_GetVar(ctx);

    *destVar = LCRNG_Next() % upperBound;
    return TRUE;
}

static BOOL FrontierScrCmd_HealParty(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(ctx->unk_00->unk_00);
    Party_HealAllMembers(SaveData_GetParty(v0->saveData));
    return FALSE;
}

static BOOL FrontierScrCmd_WaitABPress(FrontierScriptContext *ctx)
{
    FrontierScriptContext_Pause(ctx, CheckABPress);
    return TRUE;
}

static BOOL CheckABPress(FrontierScriptContext *ctx)
{
    return JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) != 0;
}

static BOOL FrontierScrCmd_WaitABPressTime(FrontierScriptContext *ctx)
{
    ctx->data[0] = FrontierScriptContext_GetVar(ctx);
    FrontierScriptContext_Pause(ctx, DecrementABPressTimer);
    return TRUE;
}

static BOOL DecrementABPressTimer(FrontierScriptContext *ctx)
{
    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
        return TRUE;
    }

    ctx->data[0]--;

    return ctx->data[0] == 0;
}

static BOOL FrontierScrCmd_Dummy3C(FrontierScriptContext *ctx)
{
    u16 *unused = FrontierScriptContext_TryGetVarPointer(ctx);

    return TRUE;
}

BOOL FrontierScrCmd_3D(FrontierScriptContext *ctx)
{
    u16 *destVar;
    u16 destVarID = FrontierScriptContext_ReadHalfWord(ctx);
    u16 value = FrontierScriptContext_GetVar(ctx);
    UnkStruct_ov104_02230BE4 *v3 = sub_0209B970(ctx->unk_00->unk_00);

    destVar = VarsFlags_GetVarAddress(SaveData_GetVarsFlags(v3->saveData), destVarID);
    *destVar = value;

    return FALSE;
}

BOOL FrontierScrCmd_3E(FrontierScriptContext *ctx)
{
    u16 *srcVar;
    u16 srcVarID = FrontierScriptContext_ReadHalfWord(ctx);
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);
    UnkStruct_ov104_02230BE4 *v3 = sub_0209B970(ctx->unk_00->unk_00);

    srcVar = VarsFlags_GetVarAddress(SaveData_GetVarsFlags(v3->saveData), srcVarID);
    *destVar = *srcVar;

    return FALSE;
}

static BOOL (*const Unk_ov104_0223F65C[])(UnkStruct_ov104_02231148 *) = {
    ov104_02231148,
    ov104_022311BC,
    ov104_022312D8,
    ov104_02231720,
    ov104_02231864,
    ov104_022319CC
};

static BOOL ov104_02231148(UnkStruct_ov104_02231148 *param0)
{
    switch (param0->unk_04) {
    case 0:
        ov104_0223E894(1, 16, -16, &param0->unk_0C, 2);
        param0->unk_04++;
        break;
    case 1:
        if (param0->unk_0C == 0) {
            break;
        }

        ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
        ResetVisibleHardwareWindows(DS_SCREEN_SUB);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_32, FADE_TYPE_UNK_32, COLOR_BLACK, 12, 1, HEAP_ID_FIELD2);
        param0->unk_04++;
        break;
    default:
        if (IsScreenFadeDone() == TRUE) {
            return FALSE;
        }
        break;
    }

    return TRUE;
}

static BOOL ov104_022311BC(UnkStruct_ov104_02231148 *param0)
{
    switch (param0->unk_04) {
    case 0:
        ov104_0223E894(1, 16, -16, &param0->unk_0C, 2);
        param0->unk_04++;
        break;
    case 1:
        if (param0->unk_0C == 0) {
            break;
        }

        param0->unk_28 = Window_New(HEAP_ID_FIELD2, 1);

        Window_Add(param0->unk_00->unk_00, param0->unk_28, 1, 0, 0, 32, 32, 0, 0);
        PaletteData_FillBufferRange(param0->unk_00->unk_04, 0, 2, 0x0, 0, 16);
        Window_FillTilemap(param0->unk_28, 0);
        Window_ScheduleCopyToVRAM(param0->unk_28);

        param0->unk_2C = ov104_0223EBA0(HEAP_ID_FIELD2);
        param0->unk_04++;
    case 2:
        ov104_0223EBF0(param0->unk_2C, 1, 1, param0->unk_28, 15);
        param0->unk_04++;
        break;
    case 3:
        BOOL v0 = ov104_0223EC34(param0->unk_2C);

        Window_ScheduleCopyToVRAM(param0->unk_28);

        if (v0) {
            param0->unk_04++;
        }
        break;
    default:
        if (IsScreenFadeDone() == TRUE) {
            ov104_0223EBD0(param0->unk_2C);

            Window_ClearAndCopyToVRAM(param0->unk_28);
            Window_Remove(param0->unk_28);
            Windows_Delete(param0->unk_28, 1);
            SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
            SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
            Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_FIELD2);
            Bg_ClearTilemap(param0->unk_00->unk_00, 1);

            return FALSE;
        }
        break;
    }

    return TRUE;
}

static BOOL ov104_022312D8(UnkStruct_ov104_02231148 *param0)
{
    switch (param0->unk_04) {
    case 0:
        ov104_0223E894(1, 16, -16, &param0->unk_0C, 2);
        param0->unk_04++;
        break;
    case 1:
        if (param0->unk_0C == 0) {
            break;
        }

        param0->unk_28 = Window_New(HEAP_ID_FIELD2, 1);

        Window_Add(param0->unk_00->unk_00, param0->unk_28, 1, 0, 0, 32, 32, 0, 0);
        PaletteData_FillBufferRange(param0->unk_00->unk_04, 0, 2, 0x0, 0, 16);
        Window_FillTilemap(param0->unk_28, 0);
        Window_ScheduleCopyToVRAM(param0->unk_28);

        param0->unk_2C = ov104_0223EBA0(HEAP_ID_FIELD2);
        param0->unk_04++;
    case 2:
        ov104_0223EBF0(param0->unk_2C, 1, 1, param0->unk_28, 15);
        param0->unk_04++;
        break;
    case 3:
        BOOL v0 = ov104_0223EE44(param0->unk_2C);

        Window_ScheduleCopyToVRAM(param0->unk_28);

        if (v0) {
            param0->unk_04++;
        }
        break;

    default:
        if (IsScreenFadeDone() == TRUE) {
            ov104_0223EBD0(param0->unk_2C);

            Window_ClearAndCopyToVRAM(param0->unk_28);
            Window_Remove(param0->unk_28);
            Windows_Delete(param0->unk_28, 1);

            SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
            SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);

            Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_FIELD2);
            Bg_ClearTilemap(param0->unk_00->unk_00, 1);

            return FALSE;
        }
        break;
    }

    return TRUE;
}

static u32 ov104_022313F4(u16 param0, u16 param1)
{
    return (param1 << 16) | param0;
}

static void ov104_022313FC(SysTask *param0, void *param1)
{
    int v0, v1;
    UnkStruct_ov104_0223F1B4 *v2;
    UnkStruct_ov104_02231148 *v3 = param1;
    UnkStruct_ov104_022313FC *v4 = v3->unk_24;
    MtxFx22 v5;
    int v6, v7, v8, v9;

    v6 = Bg_GetXOffset2(v3->unk_00->unk_00, 2);
    v7 = Bg_GetXOffset2(v3->unk_00->unk_00, 2);
    v8 = Bg_GetXOffset2(v3->unk_00->unk_00, 3);
    v9 = Bg_GetXOffset2(v3->unk_00->unk_00, 3);

    if (v3->unk_10 == 1) {
        v2 = ov104_0223F27C(v4->unk_600);

        for (v0 = 0; v0 < (192 / 2); v0++) {
            v4->unk_00[v0].unk_08 = 0;
            v4->unk_00[v0].unk_0A = 0;

            for (v1 = v4->unk_00[v0].unk_00; v1 < v4->unk_00[v0].unk_02; v1++) {
                s16 v10, v11;
                s16 v12, v13;

                v10 = v4->unk_00[v0].unk_0C & 0xFFFF;
                v11 = v4->unk_00[v0].unk_0C >> 16;

                CreateAffineTransformationMatrix(&v5, 0, FX32_ONE, FX32_ONE, AFFINE_MODE_NORMAL);

                v12 = v6 + v4->unk_00[v0].unk_08;
                v13 = v7 + v4->unk_00[v0].unk_0A;

                if (v4->unk_604 == 2) {
                    v12 %= 256;
                    v13 %= 256;
                } else if (v4->unk_604 == 1) {
                    if (v12 < 0) {
                        v12 = 256 + v12;
                    }

                    if (v13 < 0) {
                        v13 = -v13;
                    }

                    v12 %= 256;
                }

                G2x_SetBGyAffine_((u32)&v2[v1].unk_00, &v5, 0, 0, v12, v13);

                v12 = v8 + v4->unk_00[v0].unk_08;
                v13 = v9 + v4->unk_00[v0].unk_0A;

                if (v4->unk_604 == 2) {
                    v12 %= 256;
                    v13 %= 256;
                } else if (v4->unk_604 == 1) {
                    if (v12 < 0) {
                        v12 = 256 + v12;
                    }

                    if (v13 < 0) {
                        v13 = -v13;
                    }

                    v12 %= 256;
                }

                G2x_SetBGyAffine_((u32)&v2[v1].unk_10, &v5, 0, 0, v12, v13);
            }
        }

        ov104_0223F258(v4->unk_600);

        Heap_Free(v4);
        SysTask_Done(param0);

        return;
    }

    v2 = ov104_0223F27C(v4->unk_600);

    for (v0 = 0; v0 < (192 / 2); v0++) {
        v4->unk_00[v0].unk_08 += v4->unk_00[v0].unk_04;
        v4->unk_00[v0].unk_0A += v4->unk_00[v0].unk_06;

        for (v1 = v4->unk_00[v0].unk_00; v1 < v4->unk_00[v0].unk_02; v1++) {
            s16 v14, v15;
            s16 v16, v17;

            v14 = v4->unk_00[v0].unk_0C & 0xFFFF;
            v15 = v4->unk_00[v0].unk_0C >> 16;

            CreateAffineTransformationMatrix(&v5, 0, FX32_ONE, FX32_ONE, AFFINE_MODE_NORMAL);

            v16 = v6 + v4->unk_00[v0].unk_08;
            v17 = v7 + v4->unk_00[v0].unk_0A;

            if (v4->unk_604 == 2) {
                v16 %= 256;
                v17 %= 256;
            } else if (v4->unk_604 == 1) {
                if (v16 < 0) {
                    v16 = 256 + v16;
                }

                if (v17 < 0) {
                    v17 = -v17;
                }

                v16 %= 256;
            }

            G2x_SetBGyAffine_((u32)&v2[v1].unk_00, &v5, 0, 0, v16, v17);

            v16 = v8 + v4->unk_00[v0].unk_08;
            v17 = v9 + v4->unk_00[v0].unk_0A;

            if (v4->unk_604 == 2) {
                v16 %= 256;
                v17 %= 256;
            } else if (v4->unk_604 == 1) {
                if (v16 < 0) {
                    v16 = 256 + v16;
                }

                if (v17 < 0) {
                    v17 = -v17;
                }

                v16 %= 256;
            }

            G2x_SetBGyAffine_((u32)&v2[v1].unk_10, &v5, 0, 0, v16, v17);
        }
    }
}

static BOOL ov104_02231720(UnkStruct_ov104_02231148 *param0)
{
    UnkStruct_ov104_0223F1B4 v0;

    switch (param0->unk_04) {
    case 0:
        ov104_0223E894(1, 16, -16, &param0->unk_0C, 2);
        param0->unk_04++;
        break;
    case 1:
        if (param0->unk_0C == 0) {
            break;
        }

        MI_CpuClear8(&v0, sizeof(UnkStruct_ov104_0223F1B4));

        param0->unk_10 = 0;
        param0->unk_24 = Heap_Alloc(HEAP_ID_94, sizeof(UnkStruct_ov104_022313FC));
        param0->unk_24->unk_604 = 1;
        param0->unk_24->unk_600 = ov104_0223F1B4((u32)&reg_G2_BG2PA, &v0, HEAP_ID_94);

        int v1;

        for (v1 = 0; v1 < (192 / 2); v1++) {
            param0->unk_24->unk_00[v1].unk_00 = (v1 * 2);
            param0->unk_24->unk_00[v1].unk_02 = param0->unk_24->unk_00[v1].unk_00 + 2;
            param0->unk_24->unk_00[v1].unk_04 = ((((192 / 2) / 2) - v1) + 1) % 8;
            param0->unk_24->unk_00[v1].unk_06 = ((((192 / 2) / 2) - v1) + 1) / 4;
            param0->unk_24->unk_00[v1].unk_08 = 0;
            param0->unk_24->unk_00[v1].unk_0A = 0;
            param0->unk_24->unk_00[v1].unk_0C = ov104_022313F4(0, 0);
        }

        BrightnessController_StartTransition(40, -16, 0, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, BRIGHTNESS_MAIN_SCREEN);
        SysTask_Start(ov104_022313FC, param0, 0x1000);

        param0->unk_04++;
        break;
    case 2:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == FALSE) {
            break;
        }

        param0->unk_10 = 1;

        Bg_ToggleLayer(BG_LAYER_MAIN_3, 0);
        Bg_SetOffset(param0->unk_00->unk_00, 3, 0, 0);
        Bg_SetOffset(param0->unk_00->unk_00, 3, 3, 0);

        param0->unk_04++;
        break;
    default:
        return FALSE;
    }

    return TRUE;
}

static BOOL ov104_02231864(UnkStruct_ov104_02231148 *param0)
{
    UnkStruct_ov104_0223F1B4 v0;

    switch (param0->unk_04) {
    case 0:
        ov104_0223E894(1, 16, -16, &param0->unk_0C, 2);
        param0->unk_04++;
        break;
    case 1:
        if (param0->unk_0C == 0) {
            break;
        }

        MI_CpuClear8(&v0, sizeof(UnkStruct_ov104_0223F1B4));

        param0->unk_10 = 0;
        param0->unk_24 = Heap_Alloc(HEAP_ID_94, sizeof(UnkStruct_ov104_022313FC));
        param0->unk_24->unk_604 = 2;
        param0->unk_24->unk_600 = ov104_0223F1B4((u32)&reg_G2_BG2PA, &v0, HEAP_ID_94);

        int v1;

        for (v1 = 0; v1 < (192 / 2); v1++) {
            param0->unk_24->unk_00[v1].unk_00 = (v1 * 2);
            param0->unk_24->unk_00[v1].unk_02 = param0->unk_24->unk_00[v1].unk_00 + 2;
            param0->unk_24->unk_00[v1].unk_04 = ((((192 / 2) / 2) - v1) / 8) + 1;

            if (v1 % 2) {
                param0->unk_24->unk_00[v1].unk_04 *= -1;
            }

            if (v1 < ((192 / 2) / 2)) {
                param0->unk_24->unk_00[v1].unk_06 = v1;
            } else {
                param0->unk_24->unk_00[v1].unk_06 = (192 / 2) - v1;
            }

            param0->unk_24->unk_00[v1].unk_08 = 0;
            param0->unk_24->unk_00[v1].unk_0A = 0;
            param0->unk_24->unk_00[v1].unk_0C = ov104_022313F4(0, 0);
        }

        BrightnessController_StartTransition(40, -16, 0, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, BRIGHTNESS_MAIN_SCREEN);
        SysTask_Start(ov104_022313FC, param0, 0x1000);

        param0->unk_04++;
        break;
    case 2:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == FALSE) {
            break;
        }

        param0->unk_10 = 1;

        Bg_ToggleLayer(BG_LAYER_MAIN_3, 0);
        Bg_SetOffset(param0->unk_00->unk_00, 3, 0, 0);
        Bg_SetOffset(param0->unk_00->unk_00, 3, 3, 0);

        param0->unk_04++;
        break;
    default:
        return FALSE;
    }

    return TRUE;
}

static BOOL ov104_022319CC(UnkStruct_ov104_02231148 *param0)
{
    switch (param0->unk_04) {
    case 0:
        ov104_0223F094(&param0->unk_18, HEAP_ID_94);
        param0->unk_04++;
        break;
    case 1:
        ov104_0223F0B0(&param0->unk_18, 0, 191, (0xFFFF / 192) * 2, FX32_CONST(18), 4 * 100, REG_BG3HOFS_ADDR, 0, 5 - 1);
        param0->unk_04++;
        break;
    default:
        break;
    }

    return TRUE;
}

static BOOL FrontierScrCmd_3F(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v0;
    UnkStruct_ov104_02231148 *v1;

    v0 = sub_0209B970(ctx->unk_00->unk_00);
    ctx->data[0] = FrontierScriptContext_GetVar(ctx);

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_BATTLE, SEQ_BATTLE_TRAINER, 1);

    v1 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_ov104_02231148));
    v1->unk_14 = sub_0209B978(ctx->unk_00->unk_00);
    v1->unk_04 = 0;
    v1->unk_08 = ctx->data[0];
    v1->unk_00 = ov104_0222E924(ctx->unk_00);

    sub_0209B980(ctx->unk_00->unk_00, v1);
    FrontierScriptContext_Pause(ctx, ov104_02231AA8);
    PaletteData_FillBufferRange(v1->unk_00->unk_04, 0, 2, 0x0, 0, 1);

    return TRUE;
}

static BOOL ov104_02231AA8(FrontierScriptContext *ctx)
{
    BOOL v0;
    UnkStruct_ov104_02231148 *v1 = sub_0209B978(ctx->unk_00->unk_00);

    v0 = Unk_ov104_0223F65C[v1->unk_08](v1);

    if (v0 == 0) {
        SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
        SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
        sub_0209B980(ctx->unk_00->unk_00, v1->unk_14);
        Heap_Free(v1);
    }

    return !v0;
}

static BOOL FrontierScrCmd_GetPlayerObjEventGfx(FrontierScriptContext *ctx)
{
    u16 objEventGfx;
    UnkStruct_ov104_02230BE4 *v1;
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);

    v1 = sub_0209B970(ctx->unk_00->unk_00);

    if (TrainerInfo_Gender(SaveData_GetTrainerInfo(v1->saveData)) == GENDER_MALE) {
        objEventGfx = OBJ_EVENT_GFX_PLAYER_M;
    } else {
        objEventGfx = OBJ_EVENT_GFX_PLAYER_F;
    }

    *destVar = objEventGfx;
    return FALSE;
}

static BOOL FrontierScrCmd_41(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2 = FrontierScriptContext_GetVar(ctx);
    u16 v3 = FrontierScriptContext_GetVar(ctx);
    u16 v4 = FrontierScriptContext_GetVar(ctx);

    ov104_0223D614(v1->unk_10, v2, v3, v4);

    return FALSE;
}

static BOOL FrontierScrCmd_42(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2 = FrontierScriptContext_GetVar(ctx);
    ov104_0223D68C(v1->unk_10, v2);

    return FALSE;
}

static BOOL FrontierScrCmd_43(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2, resourceID;
    ParticleSystem *particleSystem;

    v2 = FrontierScriptContext_GetVar(ctx);
    resourceID = FrontierScriptContext_GetVar(ctx);
    particleSystem = ov104_0223D6D0(v1->unk_10, v2);

    ParticleSystem_CreateEmitterWithCallback(particleSystem, resourceID, NULL, NULL);

    return FALSE;
}

static BOOL FrontierScrCmd_44(FrontierScriptContext *ctx)
{
    FrontierScriptContext_Pause(ctx, ov104_02231BB8);
    return TRUE;
}

static BOOL ov104_02231BB8(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);

    if (ov104_0223D6E4(v1->unk_10) == 1) {
        return TRUE;
    }

    return FALSE;
}

static BOOL FrontierScrCmd_4C(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2, v3, v4, v5;
    UnkStruct_ov104_0223319C *v6 = &v1->unk_A4;

    if (v6->unk_00 != NULL) {
        GF_ASSERT(0);
        SysTask_Done(v6->unk_00);
    }

    v2 = FrontierScriptContext_GetVar(ctx);
    v3 = FrontierScriptContext_GetVar(ctx);
    v4 = FrontierScriptContext_GetVar(ctx);
    v5 = FrontierScriptContext_GetVar(ctx);

    MI_CpuClear8(v6, sizeof(UnkStruct_ov104_0223319C));

    v6->unk_04 = v2;
    v6->unk_06 = v3;
    v6->unk_09 = v4;
    v6->unk_0A = v5;
    v6->unk_00 = SysTask_Start(ov104_0223319C, v6, 70000);

    return FALSE;
}

static BOOL FrontierScrCmd_4D(FrontierScriptContext *ctx)
{
    FrontierScriptContext_Pause(ctx, ov104_02231C54);
    return TRUE;
}

static BOOL ov104_02231C54(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);

    if (v1->unk_A4.unk_00 == NULL) {
        return TRUE;
    }

    return FALSE;
}

static BOOL FrontierScrCmd_4E(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2, v3, v4, v5;
    UnkStruct_ov104_022331E8 *v6 = &v1->unk_B0;

    if (v6->unk_00 != NULL) {
        GF_ASSERT(0);
        SysTask_Done(v6->unk_00);
    }

    MI_CpuClear8(v6, sizeof(UnkStruct_ov104_022331E8));

    v6->unk_04 = FrontierScriptContext_GetVar(ctx);
    v6->unk_05 = FrontierScriptContext_GetVar(ctx);
    v6->unk_06 = FrontierScriptContext_GetVar(ctx);
    v6->unk_07 = FrontierScriptContext_GetVar(ctx);
    v6->unk_08 = FrontierScriptContext_GetVar(ctx);
    v6->unk_0A = FrontierScriptContext_GetVar(ctx);
    v6->unk_00 = SysTask_Start(ov104_022331E8, v6, 300);

    return FALSE;
}

static BOOL FrontierScrCmd_4F(FrontierScriptContext *ctx)
{
    FrontierScriptContext_Pause(ctx, ov104_02231CF4);
    return TRUE;
}

static BOOL ov104_02231CF4(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);

    if (v1->unk_B0.unk_00 == NULL) {
        return TRUE;
    }

    return FALSE;
}

static BOOL FrontierScrCmd_Dummy96(FrontierScriptContext *ctx)
{
    u16 unused = FrontierScriptContext_ReadHalfWord(ctx);

    return FALSE;
}

static BOOL FrontierScrCmd_45(FrontierScriptContext *ctx)
{
    Party *party;
    Pokemon *mon;
    UnkStruct_ov104_02230BE4 *v2;
    UnkStruct_ov104_0223C4CC *v3 = ov104_0222E924(ctx->unk_00);
    u16 slot = FrontierScriptContext_GetVar(ctx);
    u16 x = FrontierScriptContext_GetVar(ctx);
    u16 y = FrontierScriptContext_GetVar(ctx);
    u16 v7 = FrontierScriptContext_ReadHalfWord(ctx);
    u16 blendFraction = FrontierScriptContext_ReadHalfWord(ctx);
    u16 blendTarget = FrontierScriptContext_ReadHalfWord(ctx);

    v2 = sub_0209B970(ctx->unk_00->unk_00);
    party = SaveData_GetParty(v2->saveData);
    mon = Party_GetPokemonBySlotIndex(party, slot);
    blendFraction = 8;
    blendTarget = GX_RGB(0, 0, 0);

    ov104_02232CE0(v3, mon, HEAP_ID_FIELD2, v7, x, y, 0, 0, blendFraction, blendTarget);
    return FALSE;
}

static BOOL FrontierScrCmd_46(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_0223C4CC *v0 = ov104_0222E924(ctx->unk_00);
    u16 v1 = FrontierScriptContext_ReadHalfWord(ctx);

    ov104_02232E80(v0, v1);
    return FALSE;
}

static BOOL FrontierScrCmd_47(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_0223C4CC *v0 = ov104_0222E924(ctx->unk_00);
    u16 v1 = FrontierScriptContext_ReadHalfWord(ctx);
    s16 v2, v3;

    ov104_0223D554(v0, &v2, &v3);
    ov104_0223DC7C(v1, v0->unk_00, v0->unk_34.unk_00, v0->unk_34.unk_04, v0->unk_04, &ctx->data[0], v2, v3);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_BATTLE, SEQ_BATTLE_FRONTIER_BRAIN, 1);
    FrontierScriptContext_Pause(ctx, ov104_02231E14);

    return TRUE;
}

static BOOL ov104_02231E14(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);

    if (ctx->data[0] == 1) {
        return TRUE;
    }

    return FALSE;
}

static BOOL FrontierScrCmd_IncrementRecordValue(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v0;
    u16 recordID = FrontierScriptContext_ReadHalfWord(ctx);

    v0 = sub_0209B970(ctx->unk_00->unk_00);
    GameRecords_IncrementRecordValue(SaveData_GetGameRecords(v0->saveData), recordID);

    return FALSE;
}

static BOOL FrontierScrCmd_AddToRecordValue(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v0;
    u16 recordID = FrontierScriptContext_ReadHalfWord(ctx);
    u16 value = FrontierScriptContext_GetVar(ctx);

    v0 = sub_0209B970(ctx->unk_00->unk_00);
    GameRecords_AddToRecordValue(SaveData_GetGameRecords(v0->saveData), recordID, value);

    return FALSE;
}

static BOOL FrontierScrCmd_IncrementTrainerScore(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v0;
    u16 scoreID = FrontierScriptContext_ReadHalfWord(ctx);

    v0 = sub_0209B970(ctx->unk_00->unk_00);
    GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(v0->saveData), scoreID);

    return FALSE;
}

static BOOL FrontierScrCmd_4B(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v0;
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);

    v0 = sub_0209B970(ctx->unk_00->unk_00);
    *destVar = sub_0205E6D8(v0->saveData);

    return FALSE;
}

static BOOL FrontierScrCmd_71(FrontierScriptContext *ctx)
{
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);

    *destVar = sub_0202FAC0();
    return FALSE;
}

static BOOL FrontierScrCmd_SetWiFiListHostFriendCurrentDate(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(ctx->unk_00->unk_00);
    WiFiList *wiFiList = SaveData_GetWiFiList(v1->saveData);

    WiFiList_SetHostFriendCurrentDate(wiFiList, NintendoWFC_GetHostFriendIdx());
    return FALSE;
}

static BOOL FrontierScrCmd_C8(FrontierScriptContext *ctx)
{
    u16 v0;
    TVBroadcast *broadcast;
    TrainerInfo *trainerInfo;
    UnkStruct_ov104_02230BE4 *v3 = sub_0209B970(ctx->unk_00->unk_00);
    broadcast = SaveData_GetTVBroadcast(v3->saveData);
    v0 = FrontierScriptContext_GetVar(ctx);
    trainerInfo = CommInfo_TrainerInfo(1 - CommSys_CurNetId());

    sub_0206D088(broadcast, v0, trainerInfo);
    return FALSE;
}

static BOOL FrontierScrCmd_C9(FrontierScriptContext *ctx)
{
    u16 v0 = FrontierScriptContext_GetVar(ctx);

    sub_0203632C(v0);
    return FALSE;
}

static BOOL FrontierScrCmd_SetMenuXOriginSide(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    u8 isRightSide = FrontierScriptContext_ReadByte(ctx);
    FrontierMenuManager_SetHorizontalAnchor(v0->unk_60, isRightSide);
    return TRUE;
}

static BOOL FrontierScrCmd_SetMenuYOriginSide(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    u8 isBottomSide = FrontierScriptContext_ReadByte(ctx);
    FrontierMenuManager_SetVerticalAnchor(v0->unk_60, isBottomSide);
    return TRUE;
}
