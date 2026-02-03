#include "overlay104/ov104_0222FBE4.h"

#include <nitro.h>
#include <string.h>

#include "constants/scrcmd.h"
#include "generated/game_records.h"
#include "generated/string_padding_mode.h"

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
u16 ov104_0222FC8C(FrontierScriptContext *param0, u16 param1);
u16 *ov104_0222FC14(FrontierScriptContext *param0, u16 param1);
static BOOL FrontierScrCmd_Noop(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_End(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_02(FrontierScriptContext *param0);
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
static BOOL FrontierScrCmd_15(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_16(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_17(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_18(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_19(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_1A(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_1B(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_1C(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_1D(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_1E(FrontierScriptContext *param0);
static BOOL ov104_02230124(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_CompareVarToValue(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_CompareVarToVar(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_SetVarFromValue(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_SetVarFromVar(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_AddVar(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_SubVar(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_GoTo(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_GoToIf(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_34(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_ShowYesNoMenu(FrontierScriptContext *ctx);
static BOOL WaitForYesNoResult(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_22(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_23(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_24(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_25(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_28(FrontierScriptContext *param0);
static void ov104_0223056C(u16 param0, UnkStruct_ov104_0223C634 *param1, const UnkStruct_ov104_02232B78_sub1 *param2, UnkStruct_ov63_0222D77C *param3, u8 *param4, enum HeapID heapID);
static BOOL FrontierScrCmd_29(FrontierScriptContext *param0);
static BOOL ov104_022305C8(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_6C(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_6D(FrontierScriptContext *param0);
static BOOL ov104_022309DC(FrontierScriptContext *param0);
static int ov104_02230A2C(u16 param0, u16 param1);
static BOOL FrontierScrCmd_6E(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_6F(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_70(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_72(FrontierScriptContext *param0);
static BOOL ov104_02230C3C(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_73(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_74(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_75(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_ShowSavingIcon(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_HideSavingIcon(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_BufferItemName(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_BufferNumber(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_BufferPlayerName(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_BufferPartnerName(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_BufferMoveName(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_BufferSpeciesName(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_BufferTypeName(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_BufferRivalName(FrontierScriptContext *ctx);
static String *GetSpeciesNameString(u16 species, u32 heapID);
static BOOL FrontierScrCmd_81(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_82(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_83(FrontierScriptContext *param0);
static u16 GetNumberDigitCount(u32 number);
u16 *ov104_0222FBE4(FrontierScriptContext *param0);
u16 ov104_0222FC00(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_Call(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_Return(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_CallIf(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_03(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_04(FrontierScriptContext *param0);
static BOOL ov104_0222FCEC(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_26(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_27(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_35(FrontierScriptContext *param0);
static BOOL ov104_02230FCC(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_36(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_37(FrontierScriptContext *param0);
static BOOL ov104_02231010(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_GetRandom(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_HealParty(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_WaitABPress(FrontierScriptContext *ctx);
static BOOL CheckABPress(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_WaitABPressTime(FrontierScriptContext *ctx);
static BOOL DecrementABPressTimer(FrontierScriptContext *ctx);
static BOOL FrontierScrCmd_3C(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_3D(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_3E(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_2A(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_2B(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_2C(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_2D(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_2E(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_2F(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_30(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_31(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_32(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_33(FrontierScriptContext *param0);
static BOOL ov104_02230850(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_3F(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_40(FrontierScriptContext *param0);
static BOOL ov104_02231AA8(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_41(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_42(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_43(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_44(FrontierScriptContext *param0);
static BOOL ov104_02231BB8(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_4C(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_4D(FrontierScriptContext *param0);
static BOOL ov104_02231C54(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_4E(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_4F(FrontierScriptContext *param0);
static BOOL ov104_02231CF4(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_96(FrontierScriptContext *param0);
static void ov104_0223088C(FrontierScriptContext *param0, int param1, int param2);
static BOOL FrontierScrCmd_53(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_54(FrontierScriptContext *param0);
static u32 ov104_022313F4(u16 param0, u16 param1);
static BOOL FrontierScrCmd_45(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_46(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_47(FrontierScriptContext *param0);
static BOOL ov104_02231E14(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_48(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_49(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_4A(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_4B(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_71(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_B7(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_C8(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_C9(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_CA(FrontierScriptContext *param0);
static BOOL FrontierScrCmd_CB(FrontierScriptContext *param0);
static void ov104_02230950(void *param0);
static BOOL ov104_02231148(UnkStruct_ov104_02231148 *param0);
static BOOL ov104_022311BC(UnkStruct_ov104_02231148 *param0);
static BOOL ov104_022312D8(UnkStruct_ov104_02231148 *param0);
static BOOL ov104_02231720(UnkStruct_ov104_02231148 *param0);
static BOOL ov104_02231864(UnkStruct_ov104_02231148 *param0);
static BOOL ov104_022319CC(UnkStruct_ov104_02231148 *param0);

static const WindowTemplate Unk_ov104_0223F640 = {
    0x1,
    0x19,
    0xD,
    0x6,
    0x4,
    0xE,
    0x355
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

const FrontierScrCmdFunc Unk_ov104_0223F674[] = {
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
    FrontierScrCmd_15,
    FrontierScrCmd_16,
    FrontierScrCmd_17,
    FrontierScrCmd_18,
    FrontierScrCmd_19,
    FrontierScrCmd_1A,
    FrontierScrCmd_1B,
    FrontierScrCmd_1C,
    FrontierScrCmd_1D,
    FrontierScrCmd_1E,
    FrontierScrCmd_ShowYesNoMenu,
    FrontierScrCmd_CompareVarToValue,
    FrontierScrCmd_CompareVarToVar,
    FrontierScrCmd_22,
    FrontierScrCmd_23,
    FrontierScrCmd_24,
    FrontierScrCmd_25,
    FrontierScrCmd_26,
    FrontierScrCmd_27,
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
    FrontierScrCmd_36,
    FrontierScrCmd_37,
    FrontierScrCmd_GetRandom,
    FrontierScrCmd_HealParty,
    FrontierScrCmd_WaitABPress,
    FrontierScrCmd_WaitABPressTime,
    FrontierScrCmd_3C,
    FrontierScrCmd_3D,
    FrontierScrCmd_3E,
    FrontierScrCmd_3F,
    FrontierScrCmd_40,
    FrontierScrCmd_41,
    FrontierScrCmd_42,
    FrontierScrCmd_43,
    FrontierScrCmd_44,
    FrontierScrCmd_45,
    FrontierScrCmd_46,
    FrontierScrCmd_47,
    FrontierScrCmd_48,
    FrontierScrCmd_49,
    FrontierScrCmd_4A,
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
    FrontierScrCmd_74,
    FrontierScrCmd_75,
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
    FrontierScrCmd_81,
    FrontierScrCmd_82,
    FrontierScrCmd_83,
    FrontierScrCmd_84,
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
    FrontierScrCmd_96,
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
    FrontierScrCmd_B7,
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
    FrontierScrCmd_CA,
    FrontierScrCmd_CB,
};

const u32 Unk_ov104_0223F63C = NELEMS(Unk_ov104_0223F674);

u16 *ov104_0222FBE4(FrontierScriptContext *param0)
{
    u16 *v0;
    u16 v1 = FrontierScriptContext_ReadHalfWord(param0);

    v0 = ov104_0222FC14(param0, v1);

    if (v0 == NULL) {
        (void)0;
    }

    GF_ASSERT(v0 != NULL);
    return v0;
}

u16 ov104_0222FC00(FrontierScriptContext *param0)
{
    return ov104_0222FC8C(param0, FrontierScriptContext_ReadHalfWord(param0));
}

u16 *ov104_0222FC14(FrontierScriptContext *param0, u16 param1)
{
    if (param1 < 0x8000) {
        return NULL;
    } else if (param1 < ((0x8000 + 7) + 1)) {
        return &param0->unk_08[param1 - 0x8000];
    } else if (param1 < ((((0x8000 + 7) + 1) + 7) + 1)) {
        return ov104_0222E91C(param0->unk_00, param1 - ((0x8000 + 7) + 1));
    } else if (param1 < ((((((0x8000 + 7) + 1) + 7) + 1) + 3) + 1)) {
        return &param0->data[param1 - ((((0x8000 + 7) + 1) + 7) + 1)];
    } else if (param1 == 0xfd13) {
        return NULL;
    } else if (param1 == 0xeeee) {
        return NULL;
    } else if (param1 == 0xeeef) {
        return NULL;
    }

    GF_ASSERT(0);
    return NULL;
}

u16 ov104_0222FC8C(FrontierScriptContext *param0, u16 param1)
{
    u16 *v0 = ov104_0222FC14(param0, param1);

    if (v0 == NULL) {
        return param1;
    }

    return *v0;
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

static BOOL FrontierScrCmd_02(FrontierScriptContext *param0)
{
    FrontierScriptContext_Stop(param0);
    sub_0209B9B4(param0->unk_00->unk_00);

    return 0;
}

static BOOL FrontierScrCmd_03(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u16 v1 = ov104_0222FC00(param0);

    sub_0209B9BC(v0->unk_00, v1, 0xffff);
    FrontierScriptContext_Pause(param0, ov104_0222FCEC);

    return 1;
}

static BOOL ov104_0222FCEC(FrontierScriptContext *param0)
{
    return 1;
}

static BOOL FrontierScrCmd_04(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u16 v1 = ov104_0222FC00(param0);
    u16 v2 = ov104_0222FC00(param0);

    sub_0209B9BC(v0->unk_00, v1, v2);
    FrontierScriptContext_Stop(param0);

    return 0;
}

static BOOL FrontierScrCmd_WaitTime(FrontierScriptContext *ctx)
{
    u16 frames = FrontierScriptContext_ReadHalfWord(ctx);
    u16 countdownVarID = FrontierScriptContext_ReadHalfWord(ctx);

    u16 *countdownVar = ov104_0222FC14(ctx, countdownVarID);
    *countdownVar = frames;
    ctx->data[0] = countdownVarID;
    FrontierScriptContext_Pause(ctx, DecrementTimer);
    return TRUE;
}

static BOOL DecrementTimer(FrontierScriptContext *ctx)
{
    u16 *frames = ov104_0222FC14(ctx, ctx->data[0]);
    (*frames)--;
    return *frames == 0;
}

static BOOL FrontierScrCmd_SetVarFromValue(FrontierScriptContext *ctx)
{
    u16 *destVar = ov104_0222FBE4(ctx);
    *destVar = FrontierScriptContext_ReadHalfWord(ctx);
    return FALSE;
}

static BOOL FrontierScrCmd_SetVarFromVar(FrontierScriptContext *ctx)
{
    u16 *destVar = ov104_0222FBE4(ctx);
    u16 *srcVar = ov104_0222FBE4(ctx);
    *destVar = *srcVar;
    return FALSE;
}

static BOOL FrontierScrCmd_AddVar(FrontierScriptContext *ctx)
{
    u16 *destVar = ov104_0222FBE4(ctx);
    *destVar += ov104_0222FC00(ctx);
    return FALSE;
}

static BOOL FrontierScrCmd_SubVar(FrontierScriptContext *ctx)
{
    u16 *destVar = ov104_0222FBE4(ctx);
    *destVar -= ov104_0222FC00(ctx);
    return FALSE;
}

static BOOL Compare(u16 value0, u16 value1)
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
    u16 value0 = ov104_0222FC00(ctx);
    u16 value1 = FrontierScriptContext_ReadHalfWord(ctx);
    ctx->comparisonResult = Compare(value0, value1);
    return FALSE;
}

static BOOL FrontierScrCmd_CompareVarToVar(FrontierScriptContext *ctx)
{
    u16 *var0 = ov104_0222FBE4(ctx);
    u16 *var1 = ov104_0222FBE4(ctx);
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
    ov104_02232088(ctx->unk_00);
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

static BOOL FrontierScrCmd_15(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u8 v1 = FrontierScriptContext_ReadByte(param0);
    u8 v2 = FrontierScriptContext_ReadByte(param0);
    u8 v3 = FrontierScriptContext_ReadByte(param0);
    u8 v4 = FrontierScriptContext_ReadByte(param0);
    u16 v5 = FrontierScriptContext_ReadHalfWord(param0);

    v0->unk_60 = ov104_02232258(v0, v1, v2, v3, v4, ov104_0222FC14(param0, v5), v0->strTemplate, NULL);
    param0->data[0] = v5;

    return 1;
}

static BOOL FrontierScrCmd_16(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u8 v1 = FrontierScriptContext_ReadByte(param0);
    u8 v2 = FrontierScriptContext_ReadByte(param0);
    u8 v3 = FrontierScriptContext_ReadByte(param0);
    u8 v4 = FrontierScriptContext_ReadByte(param0);
    u16 v5 = FrontierScriptContext_ReadHalfWord(param0);

    v0->unk_60 = ov104_02232258(v0, v1, v2, v3, v4, ov104_0222FC14(param0, v5), v0->strTemplate, param0->msgLoader);
    param0->data[0] = v5;

    return 1;
}

static BOOL FrontierScrCmd_17(FrontierScriptContext *param0)
{
    u16 v0, v1, v2;
    UnkStruct_ov104_022320B4 *v3 = param0->unk_00;

    v0 = FrontierScriptContext_ReadHalfWord(param0);
    v1 = 0xff;
    v2 = FrontierScriptContext_ReadHalfWord(param0);

    ov104_022322A8(v3->unk_60, v0, v1, v2);
    return 0;
}

static BOOL FrontierScrCmd_18(FrontierScriptContext *param0)
{
    u16 v0, v1, v2;
    UnkStruct_ov104_022320B4 *v3 = param0->unk_00;

    v0 = FrontierScriptContext_ReadHalfWord(param0);
    v1 = FrontierScriptContext_ReadHalfWord(param0);
    v2 = FrontierScriptContext_ReadHalfWord(param0);

    ov104_022322A8(v3->unk_60, v0, v1, v2);
    return 0;
}

static BOOL FrontierScrCmd_19(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;

    ov104_022322B0(v0->unk_60);
    FrontierScriptContext_Pause(param0, ov104_02230124);

    return 1;
}

static BOOL ov104_02230124(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u16 *v1 = ov104_0222FC14(param0, param0->data[0]);

    if (*v1 == 0xeeee) {
        return 0;
    }

    v0->unk_60 = NULL;
    return 1;
}

static BOOL FrontierScrCmd_1A(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u8 v1 = FrontierScriptContext_ReadByte(param0);
    u8 v2 = FrontierScriptContext_ReadByte(param0);
    u8 v3 = FrontierScriptContext_ReadByte(param0);
    u8 v4 = FrontierScriptContext_ReadByte(param0);
    u16 v5 = FrontierScriptContext_ReadHalfWord(param0);

    v0->unk_60 = ov104_022325FC(v0, v1, v2, v3, v4, ov104_0222FC14(param0, v5), v0->strTemplate, NULL);
    param0->data[0] = v5;

    return 1;
}

static BOOL FrontierScrCmd_1B(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u8 v1 = FrontierScriptContext_ReadByte(param0);
    u8 v2 = FrontierScriptContext_ReadByte(param0);
    u8 v3 = FrontierScriptContext_ReadByte(param0);
    u8 v4 = FrontierScriptContext_ReadByte(param0);
    u16 v5 = FrontierScriptContext_ReadHalfWord(param0);

    v0->unk_60 = ov104_022325FC(v0, v1, v2, v3, v4, ov104_0222FC14(param0, v5), v0->strTemplate, param0->msgLoader);
    param0->data[0] = v5;

    return 1;
}

static BOOL FrontierScrCmd_1C(FrontierScriptContext *param0)
{
    u16 v0, v1, v2;
    UnkStruct_ov104_022320B4 *v3 = param0->unk_00;

    v0 = FrontierScriptContext_ReadHalfWord(param0);
    v1 = FrontierScriptContext_ReadHalfWord(param0);
    v2 = FrontierScriptContext_ReadHalfWord(param0);

    ov104_0223261C(v3->unk_60, v0, v1, v2);
    return 0;
}

static BOOL FrontierScrCmd_1D(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;

    ov104_02232624(v0->unk_60);
    FrontierScriptContext_Pause(param0, ov104_02230124);

    return 1;
}

static BOOL FrontierScrCmd_1E(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;

    ov104_02232B5C(v0->unk_60);
    return 1;
}

static BOOL FrontierScrCmd_ShowYesNoMenu(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = ov104_0222E924(v0);
    u16 destVarID = FrontierScriptContext_ReadHalfWord(ctx);
    u8 cursorStart = FrontierScriptContext_ReadByte(ctx);

    v0->menu = Menu_MakeYesNoChoiceWithCursorAt(v1->unk_00, &Unk_ov104_0223F640, 1024 - (18 + 12) - 9, 12, cursorStart, v0->heapID);
    ctx->data[0] = destVarID;
    FrontierScriptContext_Pause(ctx, WaitForYesNoResult);
    return TRUE;
}

static BOOL WaitForYesNoResult(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v1 = ctx->unk_00;
    u16 *destVar = ov104_0222FC14(ctx, ctx->data[0]);
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

static BOOL FrontierScrCmd_22(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    const u8 *v2;
    UnkStruct_ov104_0223C688 v3;
    s32 v4 = FrontierScriptContext_ReadWord(param0);
    v2 = param0->scriptPtr;

    param0->scriptPtr = (u8 *)(param0->scriptPtr + v4);

    while (TRUE) {
        v3.unk_00 = ov104_0222FC00(param0);

        if (v3.unk_00 == 0xfd13) {
            break;
        }

        v3.unk_02 = FrontierScriptContext_ReadByte(param0);

        if (v3.unk_00 == 0xeeee) {
            const TrainerInfo *v5;
            UnkStruct_ov104_02230BE4 *v6;

            v6 = sub_0209B970(v0->unk_00);
            v5 = SaveData_GetTrainerInfo(v6->saveData);
            v3.unk_00 = ov104_0222E5F0(v5);

            ov104_0223D0EC(v1, &v3);
        } else if (v3.unk_00 == 0xeeef) {
            if (CommSys_IsInitialized() == 1) {
                const TrainerInfo *v7;
                int v8, v9;

                v8 = CommSys_ConnectedCount();

                for (v9 = 0; v9 < v8; v9++) {
                    v7 = CommInfo_TrainerInfo(v9);
                    v3.unk_00 = ov104_0222E5F0(v7);
                    ov104_0223D0EC(v1, &v3);
                }
            } else {
                (void)0;
            }
        } else {
            ov104_0223D0EC(v1, &v3);
        }
    }

    param0->scriptPtr = v2;
    return 0;
}

static BOOL FrontierScrCmd_23(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2 = ov104_0222FC00(param0);
    ov104_0223D148(v1, v2);

    return 0;
}

static BOOL FrontierScrCmd_24(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    const u8 *v2;
    s32 v3;
    UnkStruct_ov104_0223D570 v4;
    int v5;

    v3 = FrontierScriptContext_ReadWord(param0);
    v2 = param0->scriptPtr;

    param0->scriptPtr = (u8 *)(param0->scriptPtr + v3);

    while (TRUE) {
        v5 = -1;
        v4.unk_04 = ov104_0222FC00(param0);

        if (v4.unk_04 == 0xfd13) {
            break;
        }

        v4.unk_00 = ov104_0222FC00(param0);
        v4.unk_0A = FrontierScriptContext_ReadByte(param0);
        v4.unk_06 = FrontierScriptContext_ReadHalfWord(param0) + -8;
        v4.unk_08 = FrontierScriptContext_ReadHalfWord(param0) + -16;
        v4.unk_0B = FrontierScriptContext_ReadByte(param0);
        v4.unk_0C = FrontierScriptContext_ReadByte(param0);
        v4.unk_02 = 0;

        if (v4.unk_00 == 0xeeee) {
            const TrainerInfo *v6;
            UnkStruct_ov104_02230BE4 *v7;

            v7 = sub_0209B970(v0->unk_00);
            v6 = SaveData_GetTrainerInfo(v7->saveData);
            v4.unk_00 = ov104_0222E5F0(v6);
            v5 = (32 - 1);
        } else if (v4.unk_00 == 0xeeef) {
            const TrainerInfo *v8;
            int v9;

            v9 = FrontierScriptContext_ReadByte(param0);
            v8 = CommInfo_TrainerInfo(v9);
            v4.unk_00 = ov104_0222E5F0(v8);
        } else {
            (void)0;
        }

        ov104_0223D180(v1, &v4, v5);
    }

    param0->scriptPtr = v2;
    return 0;
}

static BOOL FrontierScrCmd_25(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    UnkStruct_ov63_0222BEC0 *v2;
    u16 v3 = ov104_0222FC00(param0);
    v2 = ov63_0222BF18(v1->unk_14, v3);

    ov104_0223D200(v1, v2);

    return 0;
}

static BOOL FrontierScrCmd_26(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2 = ov104_0222FC00(param0);
    u8 v3 = FrontierScriptContext_ReadByte(param0);
    UnkStruct_ov63_0222CE44 *v4 = NULL;

    ov104_0223D258(v1, v2, NULL, &v4);
    GF_ASSERT(v4 != NULL);
    ov63_0222D008(v4, v3);

    return 0;
}

static BOOL FrontierScrCmd_27(FrontierScriptContext *param0)
{
    return 0;
}

static BOOL FrontierScrCmd_28(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u8 *v2;
    u16 v3 = ov104_0222FC00(param0);
    u32 v4 = (s32)FrontierScriptContext_ReadWord(param0);
    UnkStruct_ov104_0223C634 *v5 = ov104_0223D5A8(v0->unk_00, v3);

    if (v5 == NULL) {
        GF_ASSERT(0);
    }

    v2 = (u8 *)(param0->scriptPtr + v4);
    ov104_0223056C(v3, v5, (UnkStruct_ov104_02232B78_sub1 *)v2, v1->unk_30, &v0->unk_59, v0->heapID);
    v0->unk_59++;

    return 0;
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

static BOOL FrontierScrCmd_29(FrontierScriptContext *param0)
{
    FrontierScriptContext_Pause(param0, ov104_022305C8);
    return 1;
}

static BOOL ov104_022305C8(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;

    if (v0->unk_59 == 0) {
        return 1;
    }

    return 0;
}

static BOOL FrontierScrCmd_2A(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    const u8 *v2;
    s32 v3;
    u16 v4;
    NARC *v5;

    v3 = FrontierScriptContext_ReadWord(param0);
    v2 = param0->scriptPtr;
    param0->scriptPtr = (u8 *)(param0->scriptPtr + v3);
    v5 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, v0->heapID);

    while (TRUE) {
        v4 = ov104_0222FC00(param0);

        if (v4 == 0xfd13) {
            break;
        }

        ov104_0223D768(v1->unk_34.unk_00, v1->unk_34.unk_04, v5, v1->unk_04, v4);
        ov104_0223D29C(v1, v4);
    }

    NARC_dtor(v5);
    param0->scriptPtr = v2;

    return 0;
}

static BOOL FrontierScrCmd_2B(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2 = ov104_0222FC00(param0);

    ov104_0223D7EC(v1->unk_34.unk_04, v2);
    ov104_0223D2CC(v1, v2);

    return 0;
}

static BOOL FrontierScrCmd_2C(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    const u8 *v2;
    s32 v3;
    u16 v4, v5, v6, v7, v8, v9;
    ManagedSprite *v10;

    v3 = FrontierScriptContext_ReadWord(param0);
    v2 = param0->scriptPtr;

    param0->scriptPtr = (u8 *)(param0->scriptPtr + v3);

    while (TRUE) {
        v4 = ov104_0222FC00(param0);

        if (v4 == 0xfd13) {
            break;
        }

        v5 = ov104_0222FC00(param0);
        v6 = ov104_0222FC00(param0);
        v7 = ov104_0222FC00(param0);
        v8 = FrontierScriptContext_ReadByte(param0);
        v9 = FrontierScriptContext_ReadByte(param0);
        v10 = ov104_0223D2FC(v1, v9, v4);

        ManagedSprite_SetPositionXY(v10, v5, v6);
        ManagedSprite_SetDrawFlag(v10, v7);

        ov104_0223D378(v1, v9, v8);
    }

    param0->scriptPtr = v2;
    return 0;
}

static BOOL FrontierScrCmd_2D(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u16 v1;
    UnkStruct_ov104_0223C4CC *v2 = sub_0209B974(v0->unk_00);

    v1 = ov104_0222FC00(param0);
    ov104_0223D348(v2, v1);

    return 0;
}

static BOOL FrontierScrCmd_2E(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2 = ov104_0222FC00(param0);
    u8 v3 = FrontierScriptContext_ReadByte(param0);
    ManagedSprite *v4 = ov104_0223D370(v1, v2);

    GF_ASSERT(v4 != NULL);
    ManagedSprite_SetDrawFlag(v4, v3);

    return 0;
}

static BOOL FrontierScrCmd_2F(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2 = ov104_0222FC00(param0);
    ManagedSprite *v3 = ov104_0223D370(v1, v2);

    GF_ASSERT(v3 != NULL);
    Sprite_SetFlipMode2(v3->sprite, 1);

    return 0;
}

static BOOL FrontierScrCmd_30(FrontierScriptContext *param0)
{
    ManagedSprite *v0;
    UnkStruct_ov104_022320B4 *v1 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v2 = sub_0209B974(v1->unk_00);
    u16 v3 = ov104_0222FC00(param0);
    u16 v4 = ov104_0222FC00(param0);

    v0 = ov104_0223D370(v2, v3);
    GF_ASSERT(v0 != NULL);

    if (v4 == 0) {
        Sprite_SetExplicitOamMode2(v0->sprite, GX_OAM_MODE_NORMAL);
    } else {
        Sprite_SetExplicitOamMode2(v0->sprite, GX_OAM_MODE_XLU);
    }

    return 0;
}

static BOOL FrontierScrCmd_31(FrontierScriptContext *param0)
{
    u16 v0 = ov104_0222FC00(param0);
    u16 v1 = ov104_0222FC00(param0);
    ManagedSprite *v2;
    UnkStruct_ov104_0223C4CC *v3 = sub_0209B974(param0->unk_00->unk_00);

    v2 = ov104_0223D370(v3, v0);

    ManagedSprite_SetAnim(v2, v1);
    ov104_0223D378(v3, v0, 1);

    return 0;
}

static BOOL FrontierScrCmd_32(FrontierScriptContext *param0)
{
    u16 v0 = ov104_0222FC00(param0);
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(param0->unk_00->unk_00);

    ov104_0223D378(v1, v0, 0);
    return 0;
}

static BOOL FrontierScrCmd_33(FrontierScriptContext *param0)
{
    u16 v0 = ov104_0222FC00(param0);

    param0->data[0] = v0;
    FrontierScriptContext_Pause(param0, ov104_02230850);

    return 1;
}

static BOOL ov104_02230850(FrontierScriptContext *param0)
{
    ManagedSprite *v0;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(param0->unk_00->unk_00);

    v0 = ov104_0223D370(v1, param0->data[0]);

    if ((ov104_0223D3A4(v1, param0->data[0]) == 0) || (ManagedSprite_IsAnimated(v0) == 0)) {
        return 1;
    }

    return 0;
}

static void ov104_0223088C(FrontierScriptContext *param0, int param1, int param2)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    s16 *v1;
    u16 v2;
    int v3;

    GF_ASSERT(param2 <= 7);

    v1 = Heap_Alloc(v0->heapID, sizeof(s16) * param2);
    v2 = ov104_0222FC00(param0);

    for (v3 = 0; v3 < 3; v3++) {
        v1[v3] = ov104_0222FC00(param0);
    }

    ov104_0223D860(v0->unk_00, v2, 1, v1, 3);
    Heap_Free(v1);
}

static BOOL FrontierScrCmd_53(FrontierScriptContext *param0)
{
    u16 v0 = ov104_0222FC00(param0);
    ov104_0223D860(param0->unk_00->unk_00, v0, 0, NULL, 0);

    return 0;
}

static BOOL FrontierScrCmd_54(FrontierScriptContext *param0)
{
    ov104_0223088C(param0, 1, 3);
    return 0;
}

static BOOL FrontierScrCmd_34(FrontierScriptContext *param0)
{
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);
    void *v0 = NamingScreenArgs_Init(HEAP_ID_FIELD2, NAMING_SCREEN_TYPE_PLAYER, 0, 8, (void *)v1->options);

    sub_0209B988(param0->unk_00->unk_00, &gNamingScreenAppTemplate, v0, 0, ov104_02230950);

    return 1;
}

static void ov104_02230950(void *param0)
{
    NamingScreenArgs_Free(param0);
}

static BOOL FrontierScrCmd_6C(FrontierScriptContext *param0)
{
    int v0;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);

    sub_0202F1F8(v1->saveData, HEAP_ID_FIELD2, &v0);
    return 0;
}

static BOOL FrontierScrCmd_6D(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u16 v1 = FrontierScriptContext_ReadHalfWord(param0);
    u16 v2 = ov104_0222FC00(param0);
    u16 v3 = ov104_0222FC00(param0);
    u16 *v4 = ov104_0222FBE4(param0);

    if (v3 > 9999) {
        v3 = 9999;
    }

    v0->unk_B0 = 0;
    v0->unk_B2 = 0;
    v0->unk_B4 = ov104_02230A2C(v1, v2);
    v0->unk_B6 = v3;
    v0->unk_B8 = v4;

    FrontierScriptContext_Pause(param0, ov104_022309DC);
    return 1;
}

static BOOL ov104_022309DC(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);
    int v2 = sub_0202F41C(v1->saveData, v0->unk_B4, v0->unk_B6, 0, &v0->unk_B0, &v0->unk_B2);

    if ((v2 == 2) || (v2 == 3)) {
        if (v2 == 2) {
            *(v0->unk_B8) = 1;
        } else {
            *(v0->unk_B8) = 0;
        }

        return 1;
    }

    return 0;
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

static BOOL FrontierScrCmd_6E(FrontierScriptContext *param0)
{
    int v0;
    FieldBattleDTO *v1;
    UnkStruct_ov104_02230BE4 *v2 = sub_0209B970(param0->unk_00->unk_00);

    v1 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(FieldBattleDTO));
    MI_CpuClear8(v1, sizeof(FieldBattleDTO));

    sub_0202F298(v2->saveData, 11, &v0, v1, 0);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_BATTLE, SEQ_BATTLE_TRAINER, 1);
    sub_0209B988(param0->unk_00->unk_00, &gBattleApplicationTemplate, v1, 1, NULL);

    return 1;
}

static BOOL FrontierScrCmd_6F(FrontierScriptContext *param0)
{
    sub_0202F22C();
    return 0;
}

static BOOL FrontierScrCmd_70(FrontierScriptContext *param0)
{
    int v0;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);
    u16 *v2 = ov104_0222FBE4(param0);

    *v2 = sub_0202F330(v1->saveData, 11, &v0, 0);
    return 0;
}

static BOOL FrontierScrCmd_72(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(ctx->unk_00->unk_00);
    u16 *unused = ov104_0222FBE4(ctx);
    SaveData_Save(v0->saveData);
    return FALSE;
}

static BOOL FrontierScrCmd_73(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);
    u16 *v2 = ov104_0222FBE4(param0);

    ResetLock(RESET_LOCK_SOFT_RESET);
    InitHeapCanary(v0->heapID);
    SaveData_SaveStateInit(v1->saveData, 2);

    FrontierScriptContext_Pause(param0, ov104_02230C3C);
    return 1;
}

static BOOL ov104_02230C3C(FrontierScriptContext *param0)
{
    int v0;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);

    v0 = SaveData_SaveStateMain(v1->saveData);

    if (v0 == 2) {
        FreeHeapCanary();
        ResetUnlock(RESET_LOCK_SOFT_RESET);
        return 1;
    }

    if (v0 == 3) {
        FreeHeapCanary();
        ResetUnlock(RESET_LOCK_SOFT_RESET);
        return 1;
    }

    return 0;
}

static BOOL FrontierScrCmd_74(FrontierScriptContext *param0)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(param0->unk_00->unk_00);

    SaveDataExtra_Init(v0->saveData);
    return 0;
}

static BOOL FrontierScrCmd_75(FrontierScriptContext *param0)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(param0->unk_00->unk_00);
    u16 *v1 = ov104_0222FBE4(param0);

    *v1 = SaveData_MiscSaveBlock_InitFlag(v0->saveData);
    return 0;
}

static BOOL FrontierScrCmd_ShowSavingIcon(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_022320B4 *v0 = ctx->unk_00;
    v0->savingIcon = Window_AddWaitDial(&v0->msgWindow, 1024 - (18 + 12));
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
    u16 item = ov104_0222FC00(ctx);

    StringTemplate_SetItemName(ctx->unk_00->strTemplate, templateArg, item);
    return FALSE;
}

static BOOL FrontierScrCmd_BufferNumber(FrontierScriptContext *ctx)
{
    u8 templateArg = FrontierScriptContext_ReadByte(ctx);
    u16 number = ov104_0222FC00(ctx);

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
    u16 move = ov104_0222FC00(ctx);

    StringTemplate_SetMoveName(ctx->unk_00->strTemplate, templateArg, move);
    return FALSE;
}

BOOL FrontierScrCmd_BufferSpeciesName(FrontierScriptContext *ctx)
{
    u8 templateArg = FrontierScriptContext_ReadByte(ctx);
    u16 species = ov104_0222FC00(ctx);
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
    u16 type = ov104_0222FC00(ctx);

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

static BOOL FrontierScrCmd_81(FrontierScriptContext *param0)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(param0->unk_00->unk_00);
    u16 *v1 = ov104_0222FBE4(param0);

    *v1 = sub_0202D230(sub_0202D750(v0->saveData), 0, 0);
    return 0;
}

static BOOL FrontierScrCmd_82(FrontierScriptContext *param0)
{
    TVBroadcast *broadcast;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);
    u16 v2 = ov104_0222FC00(param0);

    broadcast = SaveData_GetTVBroadcast(v1->saveData);

    sub_0206D0C8(broadcast, v2);
    GameRecords_AddToRecordValue(SaveData_GetGameRecords(v1->saveData), RECORD_UNK_068, v2);
    sub_0202D230(sub_0202D750(v1->saveData), v2, 5);

    return 0;
}

static BOOL FrontierScrCmd_83(FrontierScriptContext *param0)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(param0->unk_00->unk_00);
    u16 v1 = ov104_0222FC00(param0);

    GameRecords_AddToRecordValue(SaveData_GetGameRecords(v0->saveData), RECORD_UNK_069, v1);
    sub_0202D230(sub_0202D750(v0->saveData), v1, 6);

    return 0;
}

static BOOL FrontierScrCmd_35(FrontierScriptContext *param0)
{
    u16 v0 = ov104_0222FC00(param0);

    param0->data[0] = v0;

    CommTiming_StartSync(v0);
    FrontierScriptContext_Pause(param0, ov104_02230FCC);

    return 1;
}

static BOOL ov104_02230FCC(FrontierScriptContext *param0)
{
    int v0;

    if (CommSys_ConnectedCount() < 2) {
        v0 = 1;
    } else {
        v0 = CommTiming_IsSyncState(param0->data[0]);
    }

    return v0;
}

static BOOL FrontierScrCmd_36(FrontierScriptContext *param0)
{
    CommTool_ClearReceivedTempDataAllPlayers();
    return 0;
}

static BOOL FrontierScrCmd_37(FrontierScriptContext *param0)
{
    FieldCommMan_EndBattle();
    FrontierScriptContext_Pause(param0, ov104_02231010);

    return 1;
}

static BOOL ov104_02231010(FrontierScriptContext *param0)
{
    if (CommMan_IsInitialized() != 1) {
        if (CommServerClient_IsInitialized() != 1) {
            return 1;
        }
    }

    return 0;
}

static BOOL FrontierScrCmd_GetRandom(FrontierScriptContext *ctx)
{
    u16 *destVar = ov104_0222FBE4(ctx);
    u16 upperBound = ov104_0222FC00(ctx);

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
    ctx->data[0] = ov104_0222FC00(ctx);
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

static BOOL FrontierScrCmd_3C(FrontierScriptContext *param0)
{
    u16 *v0 = ov104_0222FBE4(param0);

    return 1;
}

BOOL FrontierScrCmd_3D(FrontierScriptContext *param0)
{
    u16 *v0;
    u16 v1 = FrontierScriptContext_ReadHalfWord(param0);
    u16 v2 = ov104_0222FC00(param0);
    UnkStruct_ov104_02230BE4 *v3 = sub_0209B970(param0->unk_00->unk_00);

    v0 = VarsFlags_GetVarAddress(SaveData_GetVarsFlags(v3->saveData), v1);
    *v0 = v2;

    return 0;
}

BOOL FrontierScrCmd_3E(FrontierScriptContext *param0)
{
    u16 *v0;
    u16 v1 = FrontierScriptContext_ReadHalfWord(param0);
    u16 *v2 = ov104_0222FBE4(param0);
    UnkStruct_ov104_02230BE4 *v3 = sub_0209B970(param0->unk_00->unk_00);

    v0 = VarsFlags_GetVarAddress(SaveData_GetVarsFlags(v3->saveData), v1);
    *v2 = *v0;

    return 0;
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
            return 0;
        }
        break;
    }

    return 1;
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
    case 3: {
        BOOL v0 = ov104_0223EC34(param0->unk_2C);

        Window_ScheduleCopyToVRAM(param0->unk_28);

        if (v0) {
            param0->unk_04++;
        }
    } break;
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

            return 0;
        }
        break;
    }

    return 1;
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
    case 3: {
        BOOL v0 = ov104_0223EE44(param0->unk_2C);

        Window_ScheduleCopyToVRAM(param0->unk_28);

        if (v0) {
            param0->unk_04++;
        }
    } break;

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

            return 0;
        }
        break;
    }

    return 1;
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

                v10 = v4->unk_00[v0].unk_0C & 0xffff;
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

            v14 = v4->unk_00[v0].unk_0C & 0xffff;
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

        {
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
        return 0;
    }

    return 1;
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

        {
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
        return 0;
    }

    return 1;
}

static BOOL ov104_022319CC(UnkStruct_ov104_02231148 *param0)
{
    switch (param0->unk_04) {
    case 0:
        ov104_0223F094(&param0->unk_18, HEAP_ID_94);
        param0->unk_04++;
        break;
    case 1:
        ov104_0223F0B0(&param0->unk_18, 0, 191, (0xffff / 192) * 2, FX32_CONST(18), 4 * 100, REG_BG3HOFS_ADDR, 0, 5 - 1);
        param0->unk_04++;
        break;
    default:
        break;
    }

    return 1;
}

static BOOL FrontierScrCmd_3F(FrontierScriptContext *param0)
{
    UnkStruct_ov104_02230BE4 *v0;
    UnkStruct_ov104_02231148 *v1;

    v0 = sub_0209B970(param0->unk_00->unk_00);
    param0->data[0] = ov104_0222FC00(param0);

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_BATTLE, SEQ_BATTLE_TRAINER, 1);

    v1 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_ov104_02231148));
    v1->unk_14 = sub_0209B978(param0->unk_00->unk_00);
    v1->unk_04 = 0;
    v1->unk_08 = param0->data[0];
    v1->unk_00 = ov104_0222E924(param0->unk_00);

    sub_0209B980(param0->unk_00->unk_00, v1);
    FrontierScriptContext_Pause(param0, ov104_02231AA8);
    PaletteData_FillBufferRange(v1->unk_00->unk_04, 0, 2, 0x0, 0, 1);

    return 1;
}

static BOOL ov104_02231AA8(FrontierScriptContext *param0)
{
    BOOL v0;
    UnkStruct_ov104_02231148 *v1 = sub_0209B978(param0->unk_00->unk_00);

    v0 = Unk_ov104_0223F65C[v1->unk_08](v1);

    if (v0 == 0) {
        SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
        SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
        sub_0209B980(param0->unk_00->unk_00, v1->unk_14);
        Heap_Free(v1);
    }

    return !v0;
}

static BOOL FrontierScrCmd_40(FrontierScriptContext *param0)
{
    u16 v0;
    UnkStruct_ov104_02230BE4 *v1;
    u16 *v2 = ov104_0222FBE4(param0);

    v1 = sub_0209B970(param0->unk_00->unk_00);

    if (TrainerInfo_Gender(SaveData_GetTrainerInfo(v1->saveData)) == 0) {
        v0 = 0x0;
    } else {
        v0 = 0x61;
    }

    *v2 = v0;
    return 0;
}

static BOOL FrontierScrCmd_41(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2 = ov104_0222FC00(param0);
    u16 v3 = ov104_0222FC00(param0);
    u16 v4 = ov104_0222FC00(param0);

    ov104_0223D614(v1->unk_10, v2, v3, v4);

    return 0;
}

static BOOL FrontierScrCmd_42(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2 = ov104_0222FC00(param0);
    ov104_0223D68C(v1->unk_10, v2);

    return 0;
}

static BOOL FrontierScrCmd_43(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2, v3;
    ParticleSystem *v4;

    v2 = ov104_0222FC00(param0);
    v3 = ov104_0222FC00(param0);
    v4 = ov104_0223D6D0(v1->unk_10, v2);

    ParticleSystem_CreateEmitterWithCallback(v4, v3, NULL, NULL);

    return 0;
}

static BOOL FrontierScrCmd_44(FrontierScriptContext *param0)
{
    FrontierScriptContext_Pause(param0, ov104_02231BB8);
    return 1;
}

static BOOL ov104_02231BB8(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);

    if (ov104_0223D6E4(v1->unk_10) == 1) {
        return 1;
    }

    return 0;
}

static BOOL FrontierScrCmd_4C(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2, v3, v4, v5;
    UnkStruct_ov104_0223319C *v6 = &v1->unk_A4;

    if (v6->unk_00 != NULL) {
        GF_ASSERT(0);
        SysTask_Done(v6->unk_00);
    }

    v2 = ov104_0222FC00(param0);
    v3 = ov104_0222FC00(param0);
    v4 = ov104_0222FC00(param0);
    v5 = ov104_0222FC00(param0);

    MI_CpuClear8(v6, sizeof(UnkStruct_ov104_0223319C));

    v6->unk_04 = v2;
    v6->unk_06 = v3;
    v6->unk_09 = v4;
    v6->unk_0A = v5;
    v6->unk_00 = SysTask_Start(ov104_0223319C, v6, 70000);

    return 0;
}

static BOOL FrontierScrCmd_4D(FrontierScriptContext *param0)
{
    FrontierScriptContext_Pause(param0, ov104_02231C54);
    return 1;
}

static BOOL ov104_02231C54(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);

    if (v1->unk_A4.unk_00 == NULL) {
        return 1;
    }

    return 0;
}

static BOOL FrontierScrCmd_4E(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2, v3, v4, v5;
    UnkStruct_ov104_022331E8 *v6 = &v1->unk_B0;

    if (v6->unk_00 != NULL) {
        GF_ASSERT(0);
        SysTask_Done(v6->unk_00);
    }

    MI_CpuClear8(v6, sizeof(UnkStruct_ov104_022331E8));

    v6->unk_04 = ov104_0222FC00(param0);
    v6->unk_05 = ov104_0222FC00(param0);
    v6->unk_06 = ov104_0222FC00(param0);
    v6->unk_07 = ov104_0222FC00(param0);
    v6->unk_08 = ov104_0222FC00(param0);
    v6->unk_0A = ov104_0222FC00(param0);
    v6->unk_00 = SysTask_Start(ov104_022331E8, v6, 300);

    return 0;
}

static BOOL FrontierScrCmd_4F(FrontierScriptContext *param0)
{
    FrontierScriptContext_Pause(param0, ov104_02231CF4);
    return 1;
}

static BOOL ov104_02231CF4(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);

    if (v1->unk_B0.unk_00 == NULL) {
        return 1;
    }

    return 0;
}

static BOOL FrontierScrCmd_96(FrontierScriptContext *param0)
{
    u16 v0 = FrontierScriptContext_ReadHalfWord(param0);

    return 0;
}

static BOOL FrontierScrCmd_45(FrontierScriptContext *param0)
{
    Party *v0;
    Pokemon *v1;
    UnkStruct_ov104_02230BE4 *v2;
    UnkStruct_ov104_0223C4CC *v3 = ov104_0222E924(param0->unk_00);
    u16 v4 = ov104_0222FC00(param0);
    u16 v5 = ov104_0222FC00(param0);
    u16 v6 = ov104_0222FC00(param0);
    u16 v7 = FrontierScriptContext_ReadHalfWord(param0);
    u16 v8 = FrontierScriptContext_ReadHalfWord(param0);
    u16 v9 = FrontierScriptContext_ReadHalfWord(param0);

    v2 = sub_0209B970(param0->unk_00->unk_00);
    v0 = SaveData_GetParty(v2->saveData);
    v1 = Party_GetPokemonBySlotIndex(v0, v4);
    v8 = 8;
    v9 = (GX_RGB(0, 0, 0));

    ov104_02232CE0(v3, v1, HEAP_ID_FIELD2, v7, v5, v6, 0, 0, v8, v9);
    return 0;
}

static BOOL FrontierScrCmd_46(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223C4CC *v0 = ov104_0222E924(param0->unk_00);
    u16 v1 = FrontierScriptContext_ReadHalfWord(param0);

    ov104_02232E80(v0, v1);
    return 0;
}

static BOOL FrontierScrCmd_47(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223C4CC *v0 = ov104_0222E924(param0->unk_00);
    u16 v1 = FrontierScriptContext_ReadHalfWord(param0);
    s16 v2, v3;

    ov104_0223D554(v0, &v2, &v3);
    ov104_0223DC7C(v1, v0->unk_00, v0->unk_34.unk_00, v0->unk_34.unk_04, v0->unk_04, &param0->data[0], v2, v3);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_BATTLE, SEQ_BATTLE_FRONTIER_BRAIN, 1);
    FrontierScriptContext_Pause(param0, ov104_02231E14);

    return 1;
}

static BOOL ov104_02231E14(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);

    if (param0->data[0] == 1) {
        return 1;
    }

    return 0;
}

static BOOL FrontierScrCmd_48(FrontierScriptContext *param0)
{
    UnkStruct_ov104_02230BE4 *v0;
    u16 v1 = FrontierScriptContext_ReadHalfWord(param0);

    v0 = sub_0209B970(param0->unk_00->unk_00);
    GameRecords_IncrementRecordValue(SaveData_GetGameRecords(v0->saveData), v1);

    return 0;
}

static BOOL FrontierScrCmd_49(FrontierScriptContext *param0)
{
    UnkStruct_ov104_02230BE4 *v0;
    u16 v1 = FrontierScriptContext_ReadHalfWord(param0);
    u16 v2 = ov104_0222FC00(param0);

    v0 = sub_0209B970(param0->unk_00->unk_00);
    GameRecords_AddToRecordValue(SaveData_GetGameRecords(v0->saveData), v1, v2);

    return 0;
}

static BOOL FrontierScrCmd_4A(FrontierScriptContext *param0)
{
    UnkStruct_ov104_02230BE4 *v0;
    u16 v1 = FrontierScriptContext_ReadHalfWord(param0);

    v0 = sub_0209B970(param0->unk_00->unk_00);
    GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(v0->saveData), v1);

    return 0;
}

static BOOL FrontierScrCmd_4B(FrontierScriptContext *param0)
{
    UnkStruct_ov104_02230BE4 *v0;
    u16 *v1 = ov104_0222FBE4(param0);

    v0 = sub_0209B970(param0->unk_00->unk_00);
    *v1 = sub_0205E6D8(v0->saveData);

    return 0;
}

static BOOL FrontierScrCmd_71(FrontierScriptContext *param0)
{
    u16 *v0 = ov104_0222FBE4(param0);

    *v0 = sub_0202FAC0();
    return 0;
}

static BOOL FrontierScrCmd_B7(FrontierScriptContext *param0)
{
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);
    WiFiList *v0 = SaveData_GetWiFiList(v1->saveData);

    sub_0202B13C(v0, NintendoWFC_GetHostFriendIdx());
    return 0;
}

static BOOL FrontierScrCmd_C8(FrontierScriptContext *param0)
{
    u16 v0;
    TVBroadcast *broadcast;
    TrainerInfo *v2;
    UnkStruct_ov104_02230BE4 *v3 = sub_0209B970(param0->unk_00->unk_00);
    broadcast = SaveData_GetTVBroadcast(v3->saveData);
    v0 = ov104_0222FC00(param0);
    v2 = CommInfo_TrainerInfo(1 - CommSys_CurNetId());

    sub_0206D088(broadcast, v0, v2);
    return 0;
}

static BOOL FrontierScrCmd_C9(FrontierScriptContext *param0)
{
    u16 v0 = ov104_0222FC00(param0);

    sub_0203632C(v0);
    return 0;
}

static BOOL FrontierScrCmd_CA(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u8 v1 = FrontierScriptContext_ReadByte(param0);
    ov104_0223327C(v0->unk_60, v1);
    return 1;
}

static BOOL FrontierScrCmd_CB(FrontierScriptContext *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u8 v1 = FrontierScriptContext_ReadByte(param0);
    ov104_02233298(v0->unk_60, v1);
    return 1;
}
