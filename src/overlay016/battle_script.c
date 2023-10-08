#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "constants/battle/message_tags.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_02007C7C_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "overlay016/struct_ov16_0224B7CC_decl.h"
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
#include "struct_defs/struct_0201EE28.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/trainer_data.h"
#include "struct_defs/battle_system.h"
#include "struct_defs/struct_0208737C.h"
#include "overlay012/struct_ov12_02237728.h"
#include "overlay016/struct_ov16_022431BC.h"
#include "overlay016/struct_ov16_022431BC_1.h"
#include "overlay016/struct_ov16_022431BC_2.h"
#include "overlay016/struct_ov16_022431BC_3.h"
#include "overlay016/struct_ov16_02248E74.h"
#include "overlay016/struct_ov16_0224B7CC_t.h"
#include "overlay016/struct_ov16_0225BFFC_t.h"
#include "overlay021/struct_ov21_021E8E0C.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_02006224.h"
#include "unk_020067E8.h"
#include "unk_0200762C.h"
#include "message.h"
#include "unk_0200B358.h"
#include "unk_0200C6E4.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02012744.h"
#include "unk_0201567C.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_0201E86C.h"
#include "unk_020218BC.h"
#include "unk_02022594.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "pokemon.h"
#include "move_table.h"
#include "unk_02079170.h"
#include "unk_020797C8.h"
#include "unk_02079D40.h"
#include "party.h"
#include "unk_0207A274.h"
#include "item.h"
#include "unk_0208694C.h"
#include "unk_0208C098.h"
#include "flags.h"
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
static BOOL ov16_02241340(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022414E0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241518(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241544(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241584(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022415B8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022415F8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241618(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241644(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241698(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241714(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022417C0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022417F4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241894(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022418C0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241924(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241984(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241A20(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241A58(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241B08(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241BC0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241BDC(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241BFC(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241C28(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241CD0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241D34(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241EB0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241EF0(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241F1C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02241F34(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224200C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02242134(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022421D4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224221C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224226C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02242298(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224230C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02242400(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02242A14(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02242B38(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02242B74(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02242BAC(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02242C6C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02242CA4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02242DBC(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02242F1C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02242F3C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02242F5C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02242F8C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022430A4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022430F4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02243120(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224314C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02243184(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022432B4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02243334(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02243398(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02243424(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02243494(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022434CC(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02243504(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02243530(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224355C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224358C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02243708(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022437D4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022438A8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022438F8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022439D8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02243AB8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02243B38(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02243D2C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02243D64(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02243DBC(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02243EF4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02243F54(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02244010(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0224410C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02244208(BattleSystem * param0, BattleContext * param1);
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
static void ov16_022499C0(Party * param0, int param1, int param2, int param3);
static int ov16_0224A724(BattleSystem * param0, BattleContext * param1);
static void ov16_0224B520(BattleSystem * param0, UnkStruct_ov16_0224B7CC * param1, Pokemon * param2);
static void ov16_0224B7CC(BattleSystem * param0, UnkStruct_ov16_0224B7CC * param1);
static void ov16_0224B850(BattleSystem * param0, BattleContext * param1, int param2);
static void BattleAI_SetAbility(BattleContext * param0, u8 param1, u8 param2);
static void BattleAI_SetHeldItem(BattleContext *battleCtx, u8 battler, u16 item);
static void ov16_02248E74(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02249B80(UnkStruct_0201CD38 * param0, void * param1);

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
    ov16_02241340,
    ov16_022414E0,
    ov16_02241518,
    ov16_02241544,
    ov16_02241584,
    ov16_022415B8,
    ov16_022415F8,
    ov16_02241618,
    ov16_02241644,
    ov16_02241698,
    ov16_02241714,
    ov16_022417C0,
    ov16_022417F4,
    ov16_02241894,
    ov16_022418C0,
    ov16_02241924,
    ov16_02241984,
    ov16_02241A20,
    ov16_02241A58,
    ov16_02241B08,
    ov16_02241BC0,
    ov16_02241BDC,
    ov16_02241BFC,
    ov16_02241C28,
    ov16_02241CD0,
    ov16_02241D34,
    ov16_02241EB0,
    ov16_02241EF0,
    ov16_02241F1C,
    ov16_02241F34,
    ov16_0224200C,
    ov16_02242134,
    ov16_022421D4,
    ov16_0224221C,
    ov16_0224226C,
    ov16_02242298,
    ov16_0224230C,
    ov16_02242400,
    ov16_02242A14,
    ov16_02242B38,
    ov16_02242B74,
    ov16_02242BAC,
    ov16_02242C6C,
    ov16_02242CA4,
    ov16_02242DBC,
    ov16_02242F1C,
    ov16_02242F3C,
    ov16_02242F5C,
    ov16_02242F8C,
    ov16_022430A4,
    ov16_022430F4,
    ov16_02243120,
    ov16_0224314C,
    ov16_02243184,
    ov16_022432B4,
    ov16_02243334,
    ov16_02243398,
    ov16_02243424,
    ov16_02243494,
    ov16_022434CC,
    ov16_02243504,
    ov16_02243530,
    ov16_0224355C,
    ov16_0224358C,
    ov16_02243708,
    ov16_022437D4,
    ov16_022438A8,
    ov16_022438F8,
    ov16_022439D8,
    ov16_02243AB8,
    ov16_02243B38,
    ov16_02243D2C,
    ov16_02243D64,
    ov16_02243DBC,
    ov16_02243EF4,
    ov16_02243F54,
    ov16_02244010,
    ov16_0224410C,
    ov16_02244208,
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

            if (battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) {
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

            if ((battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
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

            if (battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) {
                BattleSystem_NoExpGain(battleCtx, i);
                BattleSystem_FlagExpGain(battleSys, battleCtx, i);
                BattleIO_ShowEncounter(battleSys, i);
                BattleSystem_DexFlagSeen(battleSys, i);
            }
        }
        break;

    case BTLSCR_ATTACKER:
        battlerData = BattleSystem_BattlerData(battleSys, battleCtx->attacker);

        if ((battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
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

        if ((battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
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

        if ((battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
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

            if ((battlerData->unk_191 & 0x1) == 0) {
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

            if (battlerData->unk_191 & 0x1) {
                BattleSystem_NoExpGain(battleCtx, i);
                BattleSystem_FlagExpGain(battleSys, battleCtx, i);
                BattleIO_ShowPokemon(battleSys, i, NULL, 0);
                BattleSystem_DexFlagSeen(battleSys, i);
            }
        }
        break;

    case BTLSCR_ATTACKER:
        battlerData = BattleSystem_BattlerData(battleSys, battleCtx->attacker);

        if ((battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
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

        if ((battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
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

        if ((battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
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

            if ((battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
                BattleIO_ReturnPokemon(battleSys, battleCtx, i);
            }
        }
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if ((battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) && 
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
                if (battlerData->unk_191 != BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
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

            if ((battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
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

            if (battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) {
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

            if ((battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
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

            if (battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) {
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

            if ((battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
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

            if (battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) {
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

            if (battlerData->unk_191 == BATTLER_TYPE_SOLO_PLAYER
                    || battlerData->unk_191 == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                BattleIO_SlideTrainerOut(battleSys, i);
                break;
            }
        }
        break;

    case BTLSCR_ENEMY_SLOT_1:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->unk_191 == BATTLER_TYPE_SOLO_ENEMY
                    || battlerData->unk_191 == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
                BattleIO_SlideTrainerOut(battleSys, i);
                break;
            }
        }
        break;

    case BTLSCR_PLAYER_SLOT_2:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->unk_191 == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
                BattleIO_SlideTrainerOut(battleSys, i);
                break;
            }
        }
        break;

    case BTLSCR_ENEMY_SLOT_2:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->unk_191 == BATTLER_TYPE_ENEMY_SIDE_SLOT_2) {
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

            if ((battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
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

            if (battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) {
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

            if (battlerData->unk_191 == BATTLER_TYPE_SOLO_PLAYER
                    || battlerData->unk_191 == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                BattleIO_SlideTrainerIn(battleSys, i, posIn);
                break;
            }
        }
        break;

    case BTLSCR_ENEMY_SLOT_1:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->unk_191 == BATTLER_TYPE_SOLO_ENEMY
                    || battlerData->unk_191 == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
                BattleIO_SlideTrainerIn(battleSys, i, posIn);
                break;
            }
        }
        break;

    case BTLSCR_PLAYER_SLOT_2:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->unk_191 == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
                BattleIO_SlideTrainerIn(battleSys, i, posIn);
                break;
            }
        }
        break;

    case BTLSCR_ENEMY_SLOT_2:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->unk_191 == BATTLER_TYPE_ENEMY_SIDE_SLOT_2) {
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

            if ((battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
                BattleIO_SlideHPGaugeIn(battleSys, battleCtx, i, 0);
            }
        }
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) {
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

            if ((battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
                BattleIO_SlideHPGaugeIn(battleSys, battleCtx, i, wait);
                wait += 4;
            }
        }
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) {
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

            if ((battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) == FALSE
                    && (battleCtx->battlersSwitchingMask & FlagIndex(i)) == FALSE) {
                BattleIO_SlideHPGaugeOut(battleSys, i);
            }
        }
        break;

    case BTLSCR_ENEMY:
        for (i = 0; i < maxBattlers; i++) {
            battlerData = BattleSystem_BattlerData(battleSys, i);

            if (battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) {
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

static BOOL ov16_02241340 (BattleSystem * param0, BattleContext * param1)
{
    if (ov16_02251FC8(param1)) {
        BattleScript_Iter(param1, 1);
    } else {
        ov16_0225201C(param1);
    }

    param1->battleProgressFlag = 1;

    return 0;
}

static void ov16_02241374 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    if (Battler_Ability(param1, param1->attacker) == 96) {
        v0 = 0;
    } else if (param1->moveType) {
        v0 = param1->moveType;
    } else {
        v0 = param1->aiContext.moveTable[param1->moveCur].type;
    }

    param1->damage = BattleSystem_CalcMoveDamage(param0, param1, param1->moveCur, param1->sideConditionsMask[Battler_Side(param0, param1->defender)], param1->fieldConditionsMask, param1->movePower, v0, param1->attacker, param1->defender, param1->criticalMul);
    param1->damage *= param1->criticalMul;

    if (Battler_HeldItemEffect(param1, param1->attacker) == 98) {
        param1->damage = param1->damage * (100 + Battler_HeldItemPower(param1, param1->attacker, 0)) / 100;
    }

    if (Battler_HeldItemEffect(param1, param1->attacker) == 105) {
        param1->damage = param1->damage * (10 + param1->battleMons[param1->attacker].moveEffectsData.metronomeTurns) / 10;
    }

    if (param1->battleMons[param1->attacker].moveEffectsData.meFirst) {
        if (param1->meFirstTurnOrder == param1->battleMons[param1->attacker].moveEffectsData.meFirstTurnNumber) {
            param1->battleMons[param1->attacker].moveEffectsData.meFirstTurnNumber--;
        }

        if ((param1->meFirstTurnOrder - param1->battleMons[param1->attacker].moveEffectsData.meFirstTurnNumber) < 2) {
            param1->damage = param1->damage * 15 / 10;
        } else {
            param1->battleMons[param1->attacker].moveEffectsData.meFirst = 0;
        }
    }
}

static BOOL ov16_022414E0 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);
    ov16_02241374(param0, param1);

    param1->damage = BattleSystem_CalcDamageVariance(param0, param1, param1->damage);
    param1->damage *= -1;

    return 0;
}

static BOOL ov16_02241518 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);
    ov16_02241374(param0, param1);

    param1->damage *= -1;

    return 0;
}

static BOOL ov16_02241544 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);

    if ((param1->battleStatusMask & 0x1) == 0) {
        ov16_02265B68(param0, param1);
    }

    param1->battleStatusMask |= 0x1;
    param1->battleStatusMask2 |= 0x4;

    return 0;
}

static BOOL ov16_02241584 (BattleSystem * param0, BattleContext * param1)
{
    BattleMessageParams v0;
    BattleMessage v1;

    BattleScript_Iter(param1, 1);
    BattleMessageParams_Make(param1, &v0);
    BattleMessage_Make(param0, param1, &v0, &v1);
    ov16_02265BA0(param0, param1, &v1);

    return 0;
}

static BOOL ov16_022415B8 (BattleSystem * param0, BattleContext * param1)
{
    BattleMessageParams v0;
    BattleMessage v1;

    BattleScript_Iter(param1, 1);
    BattleMessageParams_Make(param1, &v0);
    BattleMessage_Make(param0, param1, &v0, &v1);

    v1.tags |= 0x80;

    ov16_02265BA0(param0, param1, &v1);

    return 0;
}

static BOOL ov16_022415F8 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);
    ov16_02265BA0(param0, param1, &param1->msgBuffer);

    return 0;
}

static BOOL ov16_02241618 (BattleSystem * param0, BattleContext * param1)
{
    BattleMessageParams v0;

    BattleScript_Iter(param1, 1);
    BattleMessageParams_Make(param1, &v0);
    BattleMessage_Make(param0, param1, &v0, &param1->msgBuffer);

    return 0;
}

static BOOL ov16_02241644 (BattleSystem * param0, BattleContext * param1)
{
    BattleMessageParams v0;
    BattleMessage v1;
    int v2;
    int v3;

    BattleScript_Iter(param1, 1);

    v2 = BattleScript_Read(param1);

    BattleMessageParams_Make(param1, &v0);
    BattleMessage_Make(param0, param1, &v0, &v1);

    v1.tags |= 0x40;
    v1.battler = BattleScript_Battler(param0, param1, v2);

    ov16_02265BA0(param0, param1, &v1);

    return 0;
}

static BOOL ov16_02241698 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    u16 v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if (v0 == 0xff) {
        v1 = param1->msgMoveTemp;
    } else {
        v1 = param1->moveCur;
    }

    if ((((param1->battleStatusMask & 0x4000) == 0) && (ov16_0223EDAC(param0) == 1)) || (v1 == 144)) {
        param1->battleStatusMask |= 0x4000;
        ov16_02265BBC(param0, param1, v1);
    }

    if (ov16_0223EDAC(param0) == 0) {
        BattleScript_Call(param1, 1, (0 + 291));
    }

    return 0;
}

static BOOL ov16_02241714 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    u16 v5;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);

    if (v0 == 0xff) {
        v5 = param1->msgMoveTemp;
    } else {
        v5 = param1->moveCur;
    }

    v3 = BattleScript_Battler(param0, param1, v1);
    v4 = BattleScript_Battler(param0, param1, v2);

    if ((((param1->battleStatusMask & 0x4000) == 0) && (ov16_0223EDAC(param0) == 1)) || (v5 == 144)) {
        param1->battleStatusMask |= 0x4000;
        ov16_02265BEC(param0, param1, v5, v3, v4);
    }

    if (ov16_0223EDAC(param0) == 0) {
        BattleScript_Call(param1, 1, (0 + 291));
    }

    return 0;
}

static BOOL ov16_022417C0 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    ov16_02265C1C(param0, v1, param1->moveStatusFlags);

    return 0;
}

static BOOL ov16_022417F4 (BattleSystem * param0, BattleContext * param1)
{
    int v0, v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    if ((param1->battleMons[v1].curHP + param1->hpCalcTemp) <= 0) {
        param1->hitDamage = param1->battleMons[v1].curHP * -1;
    } else {
        param1->hitDamage = param1->hpCalcTemp;
    }

    if (param1->hitDamage < 0) {
        param1->totalDamage[v1] += (param1->hitDamage * -1);
    }

    param1->battleMons[v1].curHP += param1->hpCalcTemp;

    if (param1->battleMons[v1].curHP < 0) {
        param1->battleMons[v1].curHP = 0;
    } else if (param1->battleMons[v1].curHP > param1->battleMons[v1].maxHP) {
        param1->battleMons[v1].curHP = param1->battleMons[v1].maxHP;
    }

    BattleMon_CopyToParty(param0, param1, v1);

    return 0;
}

static BOOL ov16_02241894 (BattleSystem * param0, BattleContext * param1)
{
    int v0, v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    ov16_02265C38(param0, param1, v1);

    return 0;
}

static BOOL ov16_022418C0 (BattleSystem * param0, BattleContext * param1)
{
    int v0, v1, v2;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    if (param1->battleMons[v1].curHP == 0) {
        param1->faintedMon = v1;
        param1->battleStatusMask |= (FlagIndex(v1) << 24);
        param1->totalFainted[v1]++;

        ov16_0224B850(param0, param1, v1);
    }

    return 0;
}

static BOOL ov16_02241924 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);
    ov16_02265D98(param0, param1, param1->faintedMon);

    param1->battleStatusMask &= (FlagIndex(param1->faintedMon) << 24) ^ 0xffffffff;
    param1->battleStatusMask2 |= FlagIndex(param1->faintedMon) << 28;
    param1->battlerActions[param1->faintedMon][0] = 39;

    ov16_02254744(param0, param1, param1->faintedMon);

    return 0;
}

static BOOL ov16_02241984 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);
    v0 = BattleScript_Read(param1);

    if ((BattleSystem_BattleType(param0) & 0x4) == 0) {
        if ((Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_BUTTON_X | PAD_BUTTON_Y)) || (sub_02022798())) {
            param1->waitCounter = v0;
        }
    }

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

static BOOL ov16_02241A20 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Battler(param0, param1, v0);

    ov16_02265EAC(param0, param1, v1, v2);

    return 0;
}

static BOOL ov16_02241A58 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int * v4;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v3 = BattleScript_Read(param1);
    v4 = BattleScript_VarAddress(param0, param1, v1);

    switch (v0) {
    case 0:
        if (v4[0] != v2) {
            v3 = 0;
        }
        break;
    case 1:
        if (v4[0] == v2) {
            v3 = 0;
        }
        break;
    case 2:
        if (v4[0] <= v2) {
            v3 = 0;
        }
        break;
    case 3:
        if (v4[0] > v2) {
            v3 = 0;
        }
        break;
    case 4:
        if ((v4[0] & v2) == 0) {
            v3 = 0;
        }

        break;
    case 5:
        if (v4[0] & v2) {
            v3 = 0;
        }
        break;
    case 6:
        if ((v4[0] & v2) != v2) {
            v3 = 0;
        }
        break;
    default:
        GF_ASSERT(1);
        break;
    }

    if (v3) {
        BattleScript_Iter(param1, v3);
    }

    return 0;
}

static BOOL ov16_02241B08 (BattleSystem * param0, BattleContext * param1)
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
    v4 = BattleScript_Read(param1);
    v6 = BattleScript_Battler(param0, param1, v1);
    v5 = BattleMon_Get(param1, v6, v2, NULL);

    switch (v0) {
    case 0:
        if (v5 != v3) {
            v4 = 0;
        }
        break;
    case 1:
        if (v5 == v3) {
            v4 = 0;
        }
        break;
    case 2:
        if (v5 <= v3) {
            v4 = 0;
        }
        break;
    case 3:
        if (v5 > v3) {
            v4 = 0;
        }
        break;
    case 4:
        if ((v5 & v3) == 0) {
            v4 = 0;
        }
        break;
    case 5:
        if (v5 & v3) {
            v4 = 0;
        }
        break;
    case 6:
        if ((v5 & v3) != v3) {
            v4 = 0;
        }
        break;
    default:
        GF_ASSERT(1);
        break;
    }

    if (v4) {
        BattleScript_Iter(param1, v4);
    }

    return 0;
}

static BOOL ov16_02241BC0 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);
    ov16_02265ECC(param0, param1);

    return 0;
}

static BOOL ov16_02241BDC (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);
    v0 = BattleScript_Read(param1);
    BattleScript_Jump(param1, 1, v0);

    return 0;
}

static BOOL ov16_02241BFC (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);
    v0 = param1->aiContext.moveTable[param1->moveCur].effect;
    BattleScript_Jump(param1, 30, v0);

    return 0;
}

static BOOL ov16_02241C28 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    param1->battleStatusMask &= (0x1 ^ 0xffffffff);
    param1->battleStatusMask &= (0x4000 ^ 0xffffffff);
    param1->moveCur = param1->msgMoveTemp;

    if (v0 == 0) {
        param1->defender = BattleSystem_Defender(param0, param1, param1->attacker, param1->msgMoveTemp, 1, 0);
        BattleSystem_RedirectTarget(param0, param1, param1->attacker, param1->msgMoveTemp);
        param1->battlerActions[param1->attacker][1] = param1->defender;
    }

    if (param1->defender == 0xff) {
        param1->commandNext = 38;
        BattleScript_Jump(param1, 1, (0 + 281));
    } else {
        BattleScript_Jump(param1, 0, param1->moveCur);
    }

    return 0;
}

static BOOL ov16_02241CD0 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);

    if ((BattleSystem_BattleType(param0) & 0x400) || (BattleSystem_BattleStatus(param0) & 0x1)) {
        param1->criticalMul = 1;
    } else {
        param1->criticalMul = ov16_0225AEE4(param0, param1, param1->attacker, param1->defender, param1->criticalBoosts, ov16_0225B45C(param0, param1, 0, param1->defender));
    }

    return 0;
}

static BOOL ov16_02241D34 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    u32 v1 = BattleSystem_BattleType(param0);
    BattlerData * v2 = BattleSystem_BattlerData(param0, param1->faintedMon);

    BattleScript_Iter(param1, 1);
    v0 = BattleScript_Read(param1);

    if ((v2->unk_191 & 0x1) && ((v1 & (0x4 | 0x20 | 0x80 | 0x200)) == 0)) {
        {
            int v3;
            int v4;
            int v5 = 0;
            int v6 = 0;
            u16 v7;
            u16 v8;
            int v9;
            Pokemon * v10;

            for (v3 = 0; v3 < Party_GetCurrentCount(BattleSystem_Party(param0, 0)); v3++) {
                v10 = ov16_0223DFAC(param0, 0, v3);

                if ((Pokemon_GetValue(v10, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v10, MON_DATA_CURRENT_HP, NULL))) {
                    if (param1->monsGainingExp[(param1->faintedMon >> 1) & 1] & FlagIndex(v3)) {
                        v5++;
                    }

                    v7 = Pokemon_GetValue(v10, MON_DATA_HELD_ITEM, NULL);
                    v9 = ov16_0225B0FC(param1, v7, 1);

                    if (v9 == 51) {
                        v6++;
                    }
                }
            }

            v8 = PokemonPersonalData_GetSpeciesValue(param1->battleMons[param1->faintedMon].species, 9);
            v8 = (v8 * param1->battleMons[param1->faintedMon].level) / 7;

            if (v6) {
                param1->gainedExp = (v8 / 2) / v5;

                if (param1->gainedExp == 0) {
                    param1->gainedExp = 1;
                }

                param1->sharedExp = (v8 / 2) / v6;

                if (param1->sharedExp == 0) {
                    param1->sharedExp = 1;
                }
            } else {
                param1->gainedExp = v8 / v5;

                if (param1->gainedExp == 0) {
                    param1->gainedExp = 1;
                }

                param1->sharedExp = 0;
            }
        }
    } else {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_02241EB0 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);

    param1->unk_178 = (UnkStruct_ov16_0224B7CC *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0224B7CC));
    param1->unk_178->unk_00 = param0;
    param1->unk_178->unk_04 = param1;
    param1->unk_178->unk_28 = 0;
    param1->unk_178->unk_30[6] = 0;

    sub_0200D9E8(ov16_02248E74, param1->unk_178, NULL);

    return 0;
}

static BOOL ov16_02241EF0 (BattleSystem * param0, BattleContext * param1)
{
    if (param1->unk_178 == NULL) {
        BattleScript_Iter(param1, 1);
    }

    param1->battleProgressFlag = 1;

    return 0;
}

static BOOL ov16_02241F1C (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    return 0;
}

static BOOL ov16_02241F34 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3 = BattleSystem_MaxBattlers(param0);

    BattleScript_Iter(param1, 1);

    v2 = 0;

    for (v0 = 0; v0 < v3; v0++) {
        if (param1->battlerStatusFlags[v0] & 0x1) {
            v2 |= FlagIndex(v0);
            BattleIO_ShowPartyScreen(param0, param1, v0, 1, 0, 6);
        }
    }

    for (v0 = 0; v0 < v3; v0++) {
        if (BattleSystem_BattleType(param0) == ((0x4 | 0x1) | 0x2)) {
            v1 = BattleSystem_Partner(param0, v0);

            if (((v2 & FlagIndex(v0)) == 0) && ((v2 & FlagIndex(v1)) == 0)) {
                v2 |= FlagIndex(v0);
                BattleIO_LinkWaitMessage(param0, v0);
            }
        } else {
            if ((v2 & FlagIndex(v0)) == 0) {
                BattleIO_LinkWaitMessage(param0, v0);
            }
        }
    }

    for (v0 = 0; v0 < v3; v0++) {
        if (param1->battlerStatusFlags[v0] & 0x1) {
            param1->switchedMon = v0;
            break;
        }
    }

    return 0;
}

static BOOL ov16_0224200C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    v1 = BattleSystem_MaxBattlers(param0);
    v2 = 0;

    for (v0 = 0; v0 < v1; v0++) {
        if (param1->battlerStatusFlags[v0] & 0x1) {
            v2++;
        }
    }

    for (v0 = 0; v0 < v1; v0++) {
        if ((param1->battlerStatusFlags[v0] & 0x1) && (BattleContext_IOBufferVal(param1, v0))) {
            param1->switchedPartySlot[v0] = param1->ioBuffer[v0][0] - 1;
            v2--;

            if ((param1->battleStatusMask2 & (FlagIndex(v0) << 24)) == 0) {
                param1->battleStatusMask2 |= (FlagIndex(v0) << 24);
                BattleIO_LinkWaitMessage(param0, v0);
            }
        }
    }

    if (v2 == 0) {
        for (v0 = 0; v0 < v1; v0++) {
            if ((param1->battlerStatusFlags[v0] & 0x1) && (BattleContext_IOBufferVal(param1, v0))) {
                ov16_0223F500(param0, v0, param1->ioBuffer[v0][0]);
            }
        }

        param1->battleStatusMask2 &= (0xf000000 ^ 0xffffffff);
        BattleScript_Iter(param1, 1);
    }

    param1->battleProgressFlag = 1;

    return 0;
}

static BOOL ov16_02242134 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);
    v1 = BattleScript_Read(param1);

    switch (v1) {
    default:
        break;
    case 0x1:
        v0 = param1->attacker;
        break;
    case 0x6:
        v0 = param1->switchedMon;
        break;
    case 0x12:
        v0 = param1->defender;
        break;
    }

    param1->battlerStatusFlags[v0] &= 0x1 ^ 0xffffffff;
    param1->battlersSwitchingMask &= (FlagIndex(v0) ^ 0xffffffff);
    param1->selectedPartySlot[v0] = param1->switchedPartySlot[v0];
    param1->switchedPartySlot[v0] = 6;

    BattleSystem_InitBattleMon(param0, param1, v0, param1->selectedPartySlot[v0]);
    BattleSystem_SwitchSlots(param0, param1, v0, param1->selectedPartySlot[v0]);

    param1->hpTemp = param1->battleMons[1].curHP;

    ov16_0225433C(param0, param1, v0);

    return 0;
}

static BOOL ov16_022421D4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1 = BattleSystem_MaxBattlers(param0);
    int v2;

    BattleScript_Iter(param1, 1);
    v2 = BattleScript_Read(param1);

    for (v0 = 0; v0 < v1; v0++) {
        if (param1->battlerStatusFlags[v0] & 0x1) {
            param1->switchedMon = v0;
            BattleScript_Iter(param1, v2);
            break;
        }
    }

    return 0;
}

static BOOL ov16_0224221C (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    param1->unk_178 = (UnkStruct_ov16_0224B7CC *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0224B7CC));
    param1->unk_178->unk_00 = param0;
    param1->unk_178->unk_04 = param1;
    param1->unk_178->unk_28 = 0;
    param1->unk_178->unk_24 = v0;
    param1->unk_178->unk_2C = param1->msgItemTemp;

    sub_0200D9E8(ov16_02249B80, param1->unk_178, NULL);

    return 0;
}

static BOOL ov16_0224226C (BattleSystem * param0, BattleContext * param1)
{
    if (param1->unk_178 == NULL) {
        BattleScript_Iter(param1, 1);
    }

    param1->battleProgressFlag = 1;

    return 0;
}

static BOOL ov16_02242298 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);

    if (param1->multiHitNumHits == 0) {
        if (v0 == 0) {
            if (Battler_Ability(param1, param1->attacker) == 92) {
                v0 = 5;
            } else {
                if ((v0 = BattleSystem_RandNext(param0) & 3) < 2) {
                    v0 += 2;
                } else {
                    v0 = (BattleSystem_RandNext(param0) & 3) + 2;
                }
            }
        }

        param1->multiHitCounter = v0;
        param1->multiHitNumHits = v0;
        param1->multiHitAccuracyCheck = v1;
    }

    return 0;
}

static BOOL ov16_0224230C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int * v3;
    u32 v4;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v3 = BattleScript_VarAddress(param0, param1, v1);

    switch (v0) {
    case ((6 + 1) + 0):
        v3[0] = v2;
        break;
    case ((6 + 1) + 1):
        v3[0] += v2;
        break;
    case ((6 + 1) + 2):
        v3[0] -= v2;
        break;
    case ((6 + 1) + 3):
        v3[0] |= v2;
        break;
    case ((6 + 1) + 4):
        v3[0] &= (v2 ^ 0xffffffff);
        break;
    case ((6 + 1) + 5):
        v3[0] *= v2;
        break;
    case ((6 + 1) + 6):
        v3[0] /= v2;
        break;
    case ((6 + 1) + 7):
        v3[0] = v3[0] << v2;
        break;
    case ((6 + 1) + 8):
        v4 = v3[0];
        v4 = v4 >> v2;
        v3[0] = v4;
        break;
    case ((6 + 1) + 9):
        v3[0] = FlagIndex(v2);
        break;
    case ((6 + 1) + 10):
        GF_ASSERT(0);
        break;
    case ((6 + 1) + 11):
        v3[0] -= v2;

        if (v3[0] < 0) {
            v3[0] = 0;
        }
        break;
    case ((6 + 1) + 12):
        v3[0] ^= v2;
        break;
    case ((6 + 1) + 13):
        v3[0] &= v2;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static BOOL ov16_02242400 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    BattleMon *v6 = &param1->battleMons[param1->sideEffectMon];

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v5 = 0;

    param1->battleStatusMask &= (0x20000 ^ 0xffffffff);

    if (param1->sideEffectParam >= 0x2e) {
        v3 = param1->sideEffectParam - 0x2e;
        v4 = -2;
        param1->scriptTemp = 13;
    } else if (param1->sideEffectParam >= 0x27) {
        v3 = param1->sideEffectParam - 0x27;
        v4 = 2;
        param1->scriptTemp = 12;
    } else if (param1->sideEffectParam >= 0x16) {
        v3 = param1->sideEffectParam - 0x16;
        v4 = -1;
        param1->scriptTemp = 13;
    } else {
        v3 = param1->sideEffectParam - 0xf;
        v4 = 1;
        param1->scriptTemp = 12;
    }

    if (v4 > 0) {
        if (v6->statBoosts[0x1 + v3] == 12) {
            param1->battleStatusMask |= 0x20000;

            if ((param1->sideEffectType == 2) || (param1->sideEffectType == 3)) {
                BattleScript_Iter(param1, v1);
            } else {
                param1->msgBuffer.id = 142;
                param1->msgBuffer.tags = 12;
                param1->msgBuffer.params[0] = BattleSystem_NicknameTag(param1, param1->sideEffectMon);
                param1->msgBuffer.params[1] = 0x1 + v3;

                BattleScript_Iter(param1, v0);
            }
        } else {
            if (param1->sideEffectType == 3) {
                param1->msgBuffer.id = 622;
                param1->msgBuffer.tags = 39;
                param1->msgBuffer.params[0] = BattleSystem_NicknameTag(param1, param1->sideEffectMon);
                param1->msgBuffer.params[1] = param1->battleMons[param1->sideEffectMon].ability;
                param1->msgBuffer.params[2] = 0x1 + v3;
            } else if (param1->sideEffectType == 5) {
                param1->msgBuffer.id = 756;
                param1->msgBuffer.tags = 45;
                param1->msgBuffer.params[0] = BattleSystem_NicknameTag(param1, param1->sideEffectMon);
                param1->msgBuffer.params[1] = param1->msgItemTemp;
                param1->msgBuffer.params[2] = 0x1 + v3;
            } else {
                param1->msgBuffer.id = (v4 == 1 ? 750 : 753);
                param1->msgBuffer.tags = 12;
                param1->msgBuffer.params[0] = BattleSystem_NicknameTag(param1, param1->sideEffectMon);
                param1->msgBuffer.params[1] = 0x1 + v3;
            }

            v6->statBoosts[0x1 + v3] += v4;

            if (v6->statBoosts[0x1 + v3] > 12) {
                v6->statBoosts[0x1 + v3] = 12;
            }
        }
    } else {
        if ((param1->sideEffectFlags & 0x8000000) == 0) {
            if (param1->attacker != param1->sideEffectMon) {
                if (param1->sideConditions[Battler_Side(param0, param1->sideEffectMon)].mistTurns) {
                    param1->msgBuffer.id = 273;
                    param1->msgBuffer.tags = 2;
                    param1->msgBuffer.params[0] = BattleSystem_NicknameTag(param1, param1->sideEffectMon);
                    v5 = 1;
                } else if ((Battler_IgnorableAbility(param1, param1->attacker, param1->sideEffectMon, 29) == 1) || (Battler_IgnorableAbility(param1, param1->attacker, param1->sideEffectMon, 73) == 1)) {
                    if (param1->sideEffectType == 3) {
                        param1->msgBuffer.id = 727;
                        param1->msgBuffer.tags = 53;
                        param1->msgBuffer.params[0] = BattleSystem_NicknameTag(param1, param1->sideEffectMon);
                        param1->msgBuffer.params[1] = param1->battleMons[param1->sideEffectMon].ability;
                        param1->msgBuffer.params[2] = BattleSystem_NicknameTag(param1, param1->attacker);
                        param1->msgBuffer.params[3] = param1->battleMons[param1->attacker].ability;
                    } else {
                        param1->msgBuffer.id = 669;
                        param1->msgBuffer.tags = 11;
                        param1->msgBuffer.params[0] = BattleSystem_NicknameTag(param1, param1->sideEffectMon);
                        param1->msgBuffer.params[1] = param1->battleMons[param1->sideEffectMon].ability;
                    }

                    v5 = 1;
                } else if (((Battler_IgnorableAbility(param1, param1->attacker, param1->sideEffectMon, 51) == 1) && ((0x1 + v3) == 0x6)) || ((Battler_IgnorableAbility(param1, param1->attacker, param1->sideEffectMon, 52) == 1) && ((0x1 + v3) == 0x1))) {
                    if (param1->sideEffectType == 3) {
                        param1->msgBuffer.id = 727;
                        param1->msgBuffer.tags = 53;
                        param1->msgBuffer.params[0] = BattleSystem_NicknameTag(param1, param1->sideEffectMon);
                        param1->msgBuffer.params[1] = param1->battleMons[param1->sideEffectMon].ability;
                        param1->msgBuffer.params[2] = BattleSystem_NicknameTag(param1, param1->attacker);
                        param1->msgBuffer.params[3] = param1->battleMons[param1->attacker].ability;
                    } else {
                        param1->msgBuffer.id = 704;
                        param1->msgBuffer.tags = 39;
                        param1->msgBuffer.params[0] = BattleSystem_NicknameTag(param1, param1->sideEffectMon);
                        param1->msgBuffer.params[1] = param1->battleMons[param1->sideEffectMon].ability;
                        param1->msgBuffer.params[2] = 0x1 + v3;
                    }

                    v5 = 1;
                } else if (v6->statBoosts[0x1 + v3] == 0) {
                    param1->battleStatusMask |= 0x20000;

                    if ((param1->sideEffectType == 2) || (param1->sideEffectType == 3)) {
                        BattleScript_Iter(param1, v1);
                        return 0;
                    } else {
                        param1->msgBuffer.id = 145;
                        param1->msgBuffer.tags = 12;
                        param1->msgBuffer.params[0] = BattleSystem_NicknameTag(param1, param1->sideEffectMon);
                        param1->msgBuffer.params[1] = 0x1 + v3;
                        BattleScript_Iter(param1, v0);
                        return 0;
                    }
                } else if ((Battler_IgnorableAbility(param1, param1->attacker, param1->sideEffectMon, 19) == 1) && (param1->sideEffectType == 2)) {
                    v5 = 1;
                } else if (param1->battleMons[param1->sideEffectMon].statusVolatile & 0x1000000) {
                    v5 = 2;
                }
            } else if (v6->statBoosts[0x1 + v3] == 0) {
                param1->battleStatusMask |= 0x20000;

                if ((param1->sideEffectType == 2) || (param1->sideEffectType == 3)) {
                    BattleScript_Iter(param1, v1);
                    return 0;
                } else {
                    param1->msgBuffer.id = 145;
                    param1->msgBuffer.tags = 12;
                    param1->msgBuffer.params[0] = BattleSystem_NicknameTag(param1, param1->sideEffectMon);
                    param1->msgBuffer.params[1] = 0x1 + v3;
                    BattleScript_Iter(param1, v0);
                    return 0;
                }
            }

            if ((v5 == 2) && (param1->sideEffectType == 1)) {
                BattleScript_Iter(param1, v2);
                return 0;
            } else if ((v5) && (param1->sideEffectType == 2)) {
                BattleScript_Iter(param1, v1);
                return 0;
            } else if (v5) {
                BattleScript_Iter(param1, v0);
                return 0;
            }
        }

        if (param1->sideEffectType == 3) {
            param1->msgBuffer.id = 662;
            param1->msgBuffer.tags = 54;
            param1->msgBuffer.params[0] = BattleSystem_NicknameTag(param1, param1->attacker);
            param1->msgBuffer.params[1] = param1->battleMons[param1->attacker].ability;
            param1->msgBuffer.params[2] = BattleSystem_NicknameTag(param1, param1->sideEffectMon);
            param1->msgBuffer.params[3] = 0x1 + v3;
        } else {
            param1->msgBuffer.id = ((v4 == -1) ? 762 : 765);
            param1->msgBuffer.tags = 12;
            param1->msgBuffer.params[0] = BattleSystem_NicknameTag(param1, param1->sideEffectMon);
            param1->msgBuffer.params[1] = 0x1 + v3;
        }

        v6->statBoosts[0x1 + v3] += v4;

        if (v6->statBoosts[0x1 + v3] < 0) {
            v6->statBoosts[0x1 + v3] = 0;
        }
    }

    return 0;
}

static BOOL ov16_02242A14 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    u32 v6;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v3 = BattleScript_Read(param1);
    v4 = BattleScript_Battler(param0, param1, v1);
    v5 = BattleMon_Get(param1, v4, v2, NULL);

    switch (v0) {
    case ((6 + 1) + 0):
        v5 = v3;
        break;
    case ((6 + 1) + 1):
        v5 += v3;
        break;
    case ((6 + 1) + 2):
        v5 -= v3;
        break;
    case ((6 + 1) + 3):
        v5 |= v3;
        break;
    case ((6 + 1) + 4):
        v5 &= (v3 ^ 0xffffffff);
        break;
    case ((6 + 1) + 5):
        v5 *= v3;
        break;
    case ((6 + 1) + 6):
        v5 /= v3;
        break;
    case ((6 + 1) + 7):
        v5 = v5 << v3;
        break;
    case ((6 + 1) + 8):
        v6 = v5;
        v6 = v6 >> v3;
        v5 = v6;
        break;
    case ((6 + 1) + 9):
        v5 = FlagIndex(v3);
        break;
    case ((6 + 1) + 10):
        GF_ASSERT(0);
        break;
    case ((6 + 1) + 11):
        v5 -= v3;

        if (v5 < 0) {
            v5 = 0;
        }
        break;
    case ((6 + 1) + 12):
        v5 ^= v3;
        break;
    case ((6 + 1) + 13):
        v5 &= v3;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (v2 == 26) {
        BattleAI_SetAbility(param1, v4, v5);
    }

    ov16_022523E8(param1, v4, v2, (u8 *)&v5);
    BattleMon_CopyToParty(param0, param1, v4);

    return 0;
}

static BOOL ov16_02242B38 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v0 = BattleScript_Battler(param0, param1, v1);

    param1->clearVolatileStatus[v0] |= v2;

    return 0;
}

static BOOL ov16_02242B74 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Battler(param0, param1, v0);

    ov16_02265EE8(param0, v2, v1);

    return 0;
}

static BOOL ov16_02242BAC (BattleSystem * param0, BattleContext * param1)
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

            v5 = BattleSystem_MaxBattlers(param0);

            for (v4 = 0; v4 < v5; v4++) {
                if (v0 == 0) {
                    if (Battler_Ability(param1, v4) == v2) {
                        BattleScript_Iter(param1, v3);
                        param1->abilityMon = v4;
                        break;
                    }
                } else {
                    if (Battler_Ability(param1, v4) == v2) {
                        break;
                    }
                }
            }
        }
    } else {
        v4 = BattleScript_Battler(param0, param1, v1);

        if (v0 == 0) {
            if (Battler_Ability(param1, v4) == v2) {
                BattleScript_Iter(param1, v3);
                param1->abilityMon = v4;
            }
        } else {
            if (Battler_Ability(param1, v4) != v2) {
                BattleScript_Iter(param1, v3);
                param1->abilityMon = v4;
            }
        }
    }

    return 0;
}

static BOOL ov16_02242C6C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v0 += 1;
    v1 = BattleScript_Read(param1);

    param1->calcTemp = (BattleSystem_RandNext(param0) % v0) + v1;

    return 0;
}

static BOOL ov16_02242CA4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int * v3;
    int * v4;
    u32 v5;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v3 = BattleScript_VarAddress(param0, param1, v1);
    v4 = BattleScript_VarAddress(param0, param1, v2);

    switch (v0) {
    case ((6 + 1) + 0):
        v3[0] = v4[0];
        break;
    case ((6 + 1) + 1):
        v3[0] += v4[0];
        break;
    case ((6 + 1) + 2):
        v3[0] -= v4[0];
        break;
    case ((6 + 1) + 3):
        v3[0] |= v4[0];
        break;
    case ((6 + 1) + 4):
        v3[0] &= (v4[0] ^ 0xffffffff);
        break;
    case ((6 + 1) + 5):
        v3[0] *= v4[0];
        break;
    case ((6 + 1) + 6):
        v3[0] /= v4[0];
        break;
    case ((6 + 1) + 7):
        v3[0] = v3[0] << v4[0];
        break;
    case ((6 + 1) + 8):
        v5 = v3[0];
        v5 = v5 >> v4[0];
        v3[0] = v5;
        break;
    case ((6 + 1) + 9):
        v3[0] = FlagIndex(v4[0]);
        break;
    case ((6 + 1) + 10):
        v4[0] = v3[0];
        break;
    case ((6 + 1) + 11):
        v3[0] -= v4[0];

        if (v3[0] < 0) {
            v3[0] = 0;
        }
        break;
    case ((6 + 1) + 12):
        v3[0] ^= v4[0];
        break;
    case ((6 + 1) + 13):
        v3[0] &= v4[0];
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static BOOL ov16_02242DBC (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    int * v6;
    u32 v7;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v3 = BattleScript_Read(param1);
    v4 = BattleScript_Battler(param0, param1, v1);
    v5 = BattleMon_Get(param1, v4, v2, NULL);
    v6 = BattleScript_VarAddress(param0, param1, v3);

    switch (v0) {
    case ((6 + 1) + 0):
        v5 = v6[0];
        break;
    case ((6 + 1) + 1):
        v5 += v6[0];
        break;
    case ((6 + 1) + 2):
        v5 -= v6[0];
        break;
    case ((6 + 1) + 3):
        v5 |= v6[0];
        break;
    case ((6 + 1) + 4):
        v5 &= (v6[0] ^ 0xffffffff);
        break;
    case ((6 + 1) + 5):
        v5 *= v6[0];
        break;
    case ((6 + 1) + 6):
        v5 /= v6[0];
        break;
    case ((6 + 1) + 7):
        v5 = v5 << v6[0];
        break;
    case ((6 + 1) + 8):
        v7 = v5;
        v7 = v7 >> v6[0];
        v5 = v7;
        break;
    case ((6 + 1) + 9):
        v5 = FlagIndex(v6[0]);
        break;
    case ((6 + 1) + 10):
        v6[0] = v5;
        break;
    case ((6 + 1) + 11):
        v5 -= v6[0];

        if (v5 < 0) {
            v5 = 0;
        }
        break;
    case ((6 + 1) + 12):
        v5 ^= v6[0];
        break;
    case ((6 + 1) + 13):
        v5 &= v6[0];
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (v0 != ((6 + 1) + 10)) {
        if (v2 == 26) {
            BattleAI_SetAbility(param1, v4, v5);
        }

        ov16_022523E8(param1, v4, v2, (u8 *)&v5);
        BattleMon_CopyToParty(param0, param1, v4);
    }

    return 0;
}

static BOOL ov16_02242F1C (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);
    v0 = BattleScript_Read(param1);
    BattleScript_Iter(param1, v0);

    return 0;
}

static BOOL ov16_02242F3C (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);
    v0 = BattleScript_Read(param1);
    BattleScript_Call(param1, 1, v0);

    return 0;
}

static BOOL ov16_02242F5C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int * v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_VarAddress(param0, param1, v0);

    BattleScript_Call(param1, 1, v1[0]);

    return 0;
}

static BOOL ov16_02242F8C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    v1 = 0;
    v0 = BattleSystem_BattleType(param0);

    BattleScript_Iter(param1, 1);

    if (param1->moveCopied[param1->attacker]) {
        v1 = param1->moveCopied[param1->attacker];
    } else {
        if (v0 & 0x2) {
            v1 = param1->moveCopiedHit[param1->attacker][0] + param1->moveCopiedHit[param1->attacker][1] + param1->moveCopiedHit[param1->attacker][2] + param1->moveCopiedHit[param1->attacker][3];

            if (v1) {
                do {
                    v1 = param1->moveCopiedHit[param1->attacker][BattleSystem_RandNext(param0) % 4];
                } while (v1 == 0);
            }
        }
    }

    if ((v1) && (ov16_0225B084(param1, v1) == 1)) {
        param1->battleStatusMask &= (0x1 ^ 0xffffffff);
        param1->battleStatusMask &= (0x4000 ^ 0xffffffff);
        param1->moveCur = v1;
        param1->defender = BattleSystem_Defender(param0, param1, param1->attacker, v1, 1, 0);

        if (param1->defender == 0xff) {
            param1->commandNext = 38;
            BattleScript_Jump(param1, 1, (0 + 281));
        } else {
            param1->battlerActions[param1->attacker][1] = param1->defender;
            BattleScript_Jump(param1, 0, v1);
        }
    } else {
        param1->selfTurnFlags[param1->attacker].skipPressureCheck = 1;
    }

    return 0;
}

static BOOL ov16_022430A4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v2 = BattleSystem_MaxBattlers(param0);

    for (v1 = 0; v1 < v2; v1++) {
        for (v0 = 0x0; v0 < 0x8; v0++) {
            param1->battleMons[v1].statBoosts[v0] = 6;
        }

        param1->battleMons[v1].statusVolatile &= (0x100000 ^ 0xffffffff);
    }

    return 0;
}

static BOOL ov16_022430F4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    ov16_02253EF0(param0, param1, v1);

    return 0;
}

static BOOL ov16_02243120 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    BattleSystem_BreakMultiTurn(param0, param1, v1);

    return 0;
}

static BOOL ov16_0224314C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Battler(param0, param1, v0);

    ov16_02265FB8(param0, v2, v1);

    return 0;
}

static BOOL ov16_02243184 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Battler(param0, param1, v0);

    ov16_02265FD8(param0, v2, v1);

    return 0;
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
        v0 = ov16_0223F904(param0->parties[0], param0->unk_48[0]);
        TrainerInfo_TakeMoney(BattleSystem_TrainerInfo(param0, 0), v0);
    }

    if (v0) {
        param1->msgTemp = v0;
    } else {
        param1->msgTemp = 0;
    }

    return 0;
}

static BOOL ov16_02243334 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);

    if ((ov16_0223EDAC(param0) == 1) || (v2 == 15) || (v2 == 16) || (v2 == 26) || (v2 == 25)) {
        v0 = BattleScript_Battler(param0, param1, v1);

        if (ov16_0225B1DC(param1, v0, v2) == 1) {
            ov16_02265FF8(param0, param1, v0, v2);
        }
    }

    return 0;
}

static BOOL ov16_02243398 (BattleSystem * param0, BattleContext * param1)
{
    int v0, v1;
    int v2;
    int v3;
    int v4;

    BattleScript_Iter(param1, 1);

    v2 = BattleScript_Read(param1);
    v3 = BattleScript_Read(param1);
    v4 = BattleScript_Read(param1);

    if ((ov16_0223EDAC(param0) == 1) || (v4 == 15) || (v4 == 16) || (v4 == 26) || (v4 == 25)) {
        v0 = BattleScript_Battler(param0, param1, v2);
        v1 = BattleScript_Battler(param0, param1, v3);

        if ((ov16_0225B1DC(param1, v0, v4) == 1) && (ov16_0225B1DC(param1, v1, v4) == 1)) {
            ov16_02266028(param0, param1, v0, v1, v4);
        }
    }

    return 0;
}

static BOOL ov16_02243424 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int * v3;

    BattleScript_Iter(param1, 1);

    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v0 = BattleScript_Battler(param0, param1, v1);
    v3 = BattleScript_VarAddress(param0, param1, v2);

    if ((ov16_0223EDAC(param0) == 1) || (v2 == 15) || (v2 == 16) || (v3[0] == 26) || (v3[0] == 25)) {
        if (ov16_0225B1DC(param1, v0, v3[0]) == 1) {
            ov16_02265FF8(param0, param1, v0, v3[0]);
        }
    }

    return 0;
}

static BOOL ov16_02243494 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v1 = BattleScript_Read(param1);
    v0 = BattleScript_Battler(param0, param1, v1);

    ov16_02266058(param0, param1, v0, param1->selectedPartySlot[v0]);

    return 0;
}

static BOOL ov16_022434CC (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v1 = BattleScript_Read(param1);
    v0 = BattleScript_Battler(param0, param1, v1);

    ov16_0226609C(param0, param1, v0, param1->selectedPartySlot[v0]);

    return 0;
}

static BOOL ov16_02243504 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v1 = BattleScript_Read(param1);
    v0 = BattleScript_Battler(param0, param1, v1);

    ov16_022660E8(param0, param1, v0);

    return 0;
}

static BOOL ov16_02243530 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v1 = BattleScript_Read(param1);
    v0 = BattleScript_Battler(param0, param1, v1);

    ov16_02266100(param0, param1, v0);

    return 0;
}

static BOOL ov16_0224355C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Battler(param0, param1, v0);

    ov16_02265FD8(param0, v1, param1->msgTemp);

    return 0;
}

static BOOL ov16_0224358C (BattleSystem * param0, BattleContext * param1)
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

    for (v0 = 0; v0 < 4; v0++) {
        if (param1->battleMons[param1->attacker].moves[v0] == 0) {
            break;
        }
    }

    for (v1 = 0; v1 < v0; v1++) {
        if (param1->battleMons[param1->attacker].moves[v1] != 160) {
            v3 = param1->aiContext.moveTable[param1->battleMons[param1->attacker].moves[v1]].type;

            if (v3 == 9) {
                if ((BattleMon_Get(param1, param1->attacker, 27, NULL) == 7) || (BattleMon_Get(param1, param1->attacker, 28, NULL) == 7)) {
                    v3 = 7;
                } else {
                    v3 = 0;
                }
            }

            if ((v3 != BattleMon_Get(param1, param1->attacker, 27, NULL)) && (v3 != BattleMon_Get(param1, param1->attacker, 28, NULL))) {
                break;
            }
        }
    }

    if (v1 == v0) {
        BattleScript_Iter(param1, v2);
    } else {
        do {
            do {
                v1 = BattleSystem_RandNext(param0) % v0;
            } while (param1->battleMons[param1->attacker].moves[v1] == 160);

            v3 = param1->aiContext.moveTable[param1->battleMons[param1->attacker].moves[v1]].type;

            if (v3 == 9) {
                if ((BattleMon_Get(param1, param1->attacker, 27, NULL) == 7) || (BattleMon_Get(param1, param1->attacker, 28, NULL) == 7)) {
                    v3 = 7;
                } else {
                    v3 = 0;
                }
            }
        } while ((v3 == BattleMon_Get(param1, param1->attacker, 27, NULL)) || (v3 == BattleMon_Get(param1, param1->attacker, 28, NULL)));

        param1->battleMons[param1->attacker].type1 = v3;
        param1->battleMons[param1->attacker].type2 = v3;
        param1->msgTemp = v3;
    }

    return 0;
}

static BOOL ov16_02243708 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    u32 * v4;
    u32 * v5;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v3 = BattleScript_Read(param1);
    v4 = BattleScript_VarAddress(param0, param1, v1);
    v5 = BattleScript_VarAddress(param0, param1, v2);

    switch (v0) {
    case 0:
        if (v4[0] != v5[0]) {
            v3 = 0;
        }
        break;
    case 1:
        if (v4[0] == v5[0]) {
            v3 = 0;
        }
        break;
    case 2:
        if (v4[0] <= v5[0]) {
            v3 = 0;
        }
        break;
    case 3:
        if (v4[0] > v5[0]) {
            v3 = 0;
        }
        break;
    case 4:
        if ((v4[0] & v5[0]) == 0) {
            v3 = 0;
        }
        break;
    case 5:
        if (v4[0] & v5[0]) {
            v3 = 0;
        }
        break;
    case 6:
        if ((v4[0] & v5[0]) != v5[0]) {
            v3 = 0;
        }
        break;
    default:
        GF_ASSERT(1);
        break;
    }

    if (v3) {
        BattleScript_Iter(param1, v3);
    }

    return 0;
}

static BOOL ov16_022437D4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    u32 v5;
    u32 * v6;
    int v7;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_Read(param1);
    v3 = BattleScript_Read(param1);
    v4 = BattleScript_Read(param1);
    v7 = BattleScript_Battler(param0, param1, v1);
    v5 = BattleMon_Get(param1, v7, v2, NULL);
    v6 = BattleScript_VarAddress(param0, param1, v3);

    switch (v0) {
    case 0:
        if (v5 != v6[0]) {
            v4 = 0;
        }
        break;
    case 1:
        if (v5 == v6[0]) {
            v4 = 0;
        }
        break;
    case 2:
        if (v5 <= v6[0]) {
            v4 = 0;
        }
        break;
    case 3:
        if (v5 > v6[0]) {
            v4 = 0;
        }
        break;
    case 4:
        if ((v5 & v6[0]) == 0) {
            v4 = 0;
        }
        break;
    case 5:
        if (v5 & v6[0]) {
            v4 = 0;
        }
        break;
    case 6:
        if ((v5 & v6[0]) != v6[0]) {
            v4 = 0;
        }
        break;
    default:
        GF_ASSERT(1);
        break;
    }

    if (v4) {
        BattleScript_Iter(param1, v4);
    }

    return 0;
}

static BOOL ov16_022438A8 (BattleSystem * param0, BattleContext * param1)
{
    BattleScript_Iter(param1, 1);

    param1->msgTemp = param1->payDayCount * param1->prizeMoneyMul;

    if (param1->msgTemp > 0xffff) {
        param1->msgTemp = 0xffff;
    }

    TrainerInfo_GiveMoney(BattleSystem_TrainerInfo(param0, 0), param1->msgTemp);

    return 0;
}

static BOOL ov16_022438F8 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = Battler_Side(param0, param1->attacker);

    if (param1->sideConditionsMask[v1] & 0x2) {
        BattleScript_Iter(param1, v0);
        param1->moveStatusFlags |= 0x40;
    } else {
        param1->sideConditionsMask[v1] |= 0x2;
        param1->sideConditions[v1].lightScreenTurns = 5;
        param1->sideConditions[v1].lightScreenUser = param1->attacker;

        if (Battler_HeldItemEffect(param1, param1->attacker) == 97) {
            param1->sideConditions[v1].lightScreenTurns += Battler_HeldItemPower(param1, param1->attacker, 0);
        }

        param1->msgBuffer.tags = 20;
        param1->msgBuffer.params[0] = param1->moveCur;
        param1->msgBuffer.params[1] = param1->attacker;

        if (ov16_022554E0(param0, param1, 1, param1->attacker) == 2) {
            param1->msgBuffer.id = 192;
        } else {
            param1->msgBuffer.id = 190;
        }
    }

    return 0;
}

static BOOL ov16_022439D8 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = Battler_Side(param0, param1->attacker);

    if (param1->sideConditionsMask[v1] & 0x1) {
        BattleScript_Iter(param1, v0);
        param1->moveStatusFlags |= 0x40;
    } else {
        param1->sideConditionsMask[v1] |= 0x1;
        param1->sideConditions[v1].reflectTurns = 5;
        param1->sideConditions[v1].reflectUser = param1->attacker;

        if (Battler_HeldItemEffect(param1, param1->attacker) == 97) {
            param1->sideConditions[v1].reflectTurns += Battler_HeldItemPower(param1, param1->attacker, 0);
        }

        param1->msgBuffer.tags = 20;
        param1->msgBuffer.params[0] = param1->moveCur;
        param1->msgBuffer.params[1] = param1->attacker;

        if (ov16_022554E0(param0, param1, 1, param1->attacker) == 2) {
            param1->msgBuffer.id = 196;
        } else {
            param1->msgBuffer.id = 194;
        }
    }

    return 0;
}

static BOOL ov16_02243AB8 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = Battler_Side(param0, param1->attacker);

    if (param1->sideConditionsMask[v1] & 0x40) {
        BattleScript_Iter(param1, v0);
        param1->moveStatusFlags |= 0x40;
    } else {
        param1->sideConditionsMask[v1] |= 0x40;
        param1->sideConditions[v1].mistTurns = 5;
        param1->sideConditions[v1].mistUser = param1->attacker;
    }

    return 0;
}

static BOOL ov16_02243B38 (BattleSystem * param0, BattleContext * param1)
{
    u16 v0;

    BattleScript_Iter(param1, 1);

    param1->battleStatusMask |= 0x400;

    if (Battler_IgnorableAbility(param1, param1->attacker, param1->defender, 5) == 1) {
        param1->moveStatusFlags |= 0x80000;
    } else {
        if (((param1->battleMons[param1->defender].moveEffectsMask & 0x18) == 0) && (Battler_Ability(param1, param1->attacker) != 99) && (Battler_Ability(param1, param1->defender) != 99)) {
            v0 = param1->aiContext.moveTable[param1->moveCur].accuracy + (param1->battleMons[param1->attacker].level - param1->battleMons[param1->defender].level);

            if (((BattleSystem_RandNext(param0) % 100) < v0) && (param1->battleMons[param1->attacker].level >= param1->battleMons[param1->defender].level)) {
                v0 = 1;
            } else {
                v0 = 0;
            }
        } else {
            if ((((param1->battleMons[param1->defender].moveEffectsData.lockOnTarget == param1->attacker) && (param1->battleMons[param1->defender].moveEffectsMask & 0x18)) || (Battler_Ability(param1, param1->attacker) == 99) || (Battler_Ability(param1, param1->defender) == 99)) && (param1->battleMons[param1->attacker].level >= param1->battleMons[param1->defender].level)) {
                v0 = 1;
            } else {
                v0 = param1->aiContext.moveTable[param1->moveCur].accuracy + (param1->battleMons[param1->attacker].level - param1->battleMons[param1->defender].level);

                if (((BattleSystem_RandNext(param0) % 100) < v0) && (param1->battleMons[param1->attacker].level >= param1->battleMons[param1->defender].level)) {
                    v0 = 1;
                } else {
                    v0 = 0;
                }
            }

            param1->moveStatusFlags |= 0x400;
        }

        if (v0) {
            param1->damage = param1->battleMons[param1->defender].curHP * -1;
            param1->moveStatusFlags |= 0x20;
        } else {
            if (param1->battleMons[param1->attacker].level >= param1->battleMons[param1->defender].level) {
                param1->moveStatusFlags |= 0x1;
            } else {
                param1->moveStatusFlags |= 0x1000;
            }
        }
    }

    return 0;
}

static BOOL ov16_02243D2C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int * v2;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v2 = BattleScript_VarAddress(param0, param1, v0);
    v2[0] = BattleSystem_Divide(v2[0], v1);

    return 0;
}

static BOOL ov16_02243D64 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int * v3;
    int * v4;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = BattleScript_Read(param1);
    v3 = BattleScript_VarAddress(param0, param1, v0);
    v4 = BattleScript_VarAddress(param0, param1, v1);

    if (v3[0] < 0) {
        v2 = -1;
    } else {
        v2 = 1;
    }

    v3[0] /= v4[0];

    if (v3[0] == 0) {
        v3[0] = v2;
    }

    return 0;
}

static BOOL ov16_02243DBC (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);

    if ((ov16_0225AFF4(param1->movePrevByBattler[param1->defender]) == 0) || (param1->battleMons[param1->attacker].statusVolatile & 0x200000) || (param1->battleMons[param1->defender].statusVolatile & 0x1000000) || (param1->movePrevByBattler[param1->defender] == 0)) {
        BattleScript_Iter(param1, v0);
    } else {
        {
            int v1;
            int v2 = -1;

            for (v1 = 0; v1 < 4; v1++) {
                if (param1->battleMons[param1->attacker].moves[v1] == param1->movePrevByBattler[param1->defender]) {
                    break;
                }

                if ((param1->battleMons[param1->attacker].moves[v1] == 102) && (v2 == -1)) {
                    v2 = v1;
                }
            }

            if (v1 == 4) {
                param1->msgMoveTemp = param1->movePrevByBattler[param1->defender];
                param1->battleMons[param1->attacker].moves[v2] = param1->msgMoveTemp;

                if (param1->aiContext.moveTable[param1->msgMoveTemp].pp < 5) {
                    param1->battleMons[param1->attacker].ppCur[v2] = param1->aiContext.moveTable[param1->msgMoveTemp].pp;
                } else {
                    param1->battleMons[param1->attacker].ppCur[v2] = 5;
                }

                param1->battleMons[param1->attacker].moveEffectsData.mimickedMoveSlot |= FlagIndex(v2);

                if (param1->msgMoveTemp == 387) {
                    param1->battleMons[param1->attacker].moveEffectsData.lastResortCount = 0;
                }
            } else {
                BattleScript_Iter(param1, v0);
            }
        }
    }

    return 0;
}

static BOOL ov16_02243EF4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    u16 v1;

    BattleScript_Iter(param1, 1);

    while (TRUE) {
        v1 = (BattleSystem_RandNext(param0) % 467) + 1;

        for (v0 = 0; v0 < 4; v0++) {
            if (param1->battleMons[param1->attacker].moves[v0] == v1) {
                break;
            }
        }

        if (v0 != 4) {
            continue;
        }

        if (ov16_0225B02C(param0, param1, param1->attacker, v1) == 0) {
            continue;
        }

        param1->msgMoveTemp = v1;
        break;
    }

    return 0;
}

static BOOL ov16_02243F54 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = Battler_SlotForMove(&param1->battleMons[param1->defender], param1->movePrevByBattler[param1->defender]);

    if ((param1->battleMons[param1->defender].moveEffectsData.disabledMove == 0) && (v1 != 4) && (param1->battleMons[param1->defender].ppCur[v1]) && (param1->movePrevByBattler[param1->defender])) {
        param1->msgMoveTemp = param1->movePrevByBattler[param1->defender];
        param1->battleMons[param1->defender].moveEffectsData.disabledMove = param1->msgMoveTemp;
        param1->battleMons[param1->defender].moveEffectsData.disabledTurns = BattleSystem_RandNext(param0) % 4 + 3;
    } else {
        BattleScript_Iter(param1, v0);
    }

    return 0;
}

static BOOL ov16_02244010 (BattleSystem * param0, BattleContext * param1)
{
    int v0, v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v2 = param1->turnFlags[param1->attacker].physicalDamageLastAttacker;
    v0 = Battler_Side(param0, param1->attacker);
    v1 = Battler_Side(param0, v2);

    if ((param1->turnFlags[param1->attacker].physicalDamageTakenFrom[v2]) && (v0 != v1) && (param1->battleMons[v2].curHP)) {
        param1->damage = param1->turnFlags[param1->attacker].physicalDamageTakenFrom[v2] * 2;

        if ((param1->sideConditions[v1].followMe) && (param1->battleMons[param1->sideConditions[v1].followMeUser].curHP)) {
            param1->defender = param1->sideConditions[v1].followMeUser;
        } else {
            param1->defender = v2;
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
        param1->selfTurnFlags[param1->attacker].skipPressureCheck = 1;
        param1->moveStatusFlags |= 0x40;
    }

    return 0;
}

static BOOL ov16_0224410C (BattleSystem * param0, BattleContext * param1)
{
    int v0, v1;
    int v2;

    BattleScript_Iter(param1, 1);

    v2 = param1->turnFlags[param1->attacker].specialDamageLastAttacker;
    v0 = Battler_Side(param0, param1->attacker);
    v1 = Battler_Side(param0, v2);

    if ((param1->turnFlags[param1->attacker].specialDamageTakenFrom[v2]) && (v0 != v1) && (param1->battleMons[v2].curHP)) {
        param1->damage = param1->turnFlags[param1->attacker].specialDamageTakenFrom[v2] * 2;

        if ((param1->sideConditions[v1].followMe) && (param1->battleMons[param1->sideConditions[v1].followMeUser].curHP)) {
            param1->defender = param1->sideConditions[v1].followMeUser;
        } else {
            param1->defender = v2;
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
        param1->selfTurnFlags[param1->attacker].skipPressureCheck = 1;
        param1->moveStatusFlags |= 0x40;
    }

    return 0;
}

static BOOL ov16_02244208 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    BattleScript_Iter(param1, 1);

    v0 = BattleScript_Read(param1);
    v1 = Battler_SlotForMove(&param1->battleMons[param1->defender], param1->movePrevByBattler[param1->defender]);

    if (ov16_0225B084(param1, param1->movePrevByBattler[param1->defender]) == 0) {
        v1 = 4;
    }

    if ((param1->battleMons[param1->defender].moveEffectsData.encoredMove == 0) && (v1 != 4) && (param1->battleMons[param1->defender].ppCur[v1]) && (param1->movePrevByBattler[param1->defender])) {
        param1->msgMoveTemp = param1->movePrevByBattler[param1->defender];
        param1->battleMons[param1->defender].moveEffectsData.encoredMove = param1->msgMoveTemp;
        param1->battleMons[param1->defender].moveEffectsData.encoredMoveSlot = v1;

        param1->battleMons[param1->defender].moveEffectsData.encoredTurns = BattleSystem_RandNext(param0) % 5 + 3;
    } else {
        param1->moveStatusFlags |= 0x40;
        BattleScript_Iter(param1, v0);
    }

    return 0;
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
                    ov16_0225588C(param0, 0xffff, &v4, &v5, &v6);

                    if ((v4 == v3) && (v6 <= 5) && (BattleMon_Get(param1, param1->attacker, 27, NULL) != v5) && (BattleMon_Get(param1, param1->attacker, 28, NULL) != v5)) {
                        param1->battleMons[param1->attacker].type1 = v5;
                        param1->battleMons[param1->attacker].type2 = v5;
                        param1->msgTemp = v5;
                        return 0;
                    }
                }

                v0 = 0;

                while (ov16_0225588C(param0, v0, &v4, &v5, &v6) == 1) {
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
    param1->battleMons[param1->attacker].moveEffectsData.transformedPID = param1->battleMons[param1->defender].pid;
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
        ov16_02253EF0(param0, param1, param1->attacker);
        param1->battleMons[param1->attacker].moveEffectsData.rolloutCount = 5;
    }

    if (--param1->battleMons[param1->attacker].moveEffectsData.rolloutCount == 0) {
        BattleSystem_BreakMultiTurn(param0, param1, param1->attacker);
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
            v5 = ov16_0223DFAC(param0, param1->attacker, param1->beatUpCounter);

            if ((param1->beatUpCounter == param1->selectedPartySlot[param1->attacker]) || ((Pokemon_GetValue(v5, MON_DATA_CURRENT_HP, NULL) != 0) && (Pokemon_GetValue(v5, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v5, MON_DATA_SPECIES_EGG, NULL) != 494) && (Pokemon_GetValue(v5, MON_DATA_160, NULL) == 0))) {
                break;
            }

            param1->beatUpCounter++;
        }
    }

    v5 = ov16_0223DFAC(param0, param1->attacker, param1->beatUpCounter);
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
            v5 = ov16_0223DFAC(param0, param1->attacker, param1->beatUpCounter);

            if ((param1->beatUpCounter == param1->selectedPartySlot[param1->attacker]) || ((Pokemon_GetValue(v5, MON_DATA_CURRENT_HP, NULL) != 0) && (Pokemon_GetValue(v5, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v5, MON_DATA_SPECIES_EGG, NULL) != 494) && (Pokemon_GetValue(v5, MON_DATA_160, NULL) == 0))) {
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
            v7 = ov16_0223DFAC(param0, param1->attacker, v3);

            if ((Pokemon_GetValue(v7, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v7, MON_DATA_SPECIES_EGG, NULL) != 494)) {
                for (v4 = 0; v4 < 4; v4++) {
                    v2 = Pokemon_GetValue(v7, MON_DATA_MOVE1 + v4, NULL);

                    if ((ov16_02255918(v2) == 0) && (ov16_0225B02C(param0, param1, param1->attacker, v2) == 1)) {
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
    v6 = ov16_0223E2A4(param0, param1->attacker, 0);
    v7 = ov16_0223E2A4(param0, param1->attacker, 2);

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

    if ((param1->battlerActions[param1->defender][0] != 39) && (param1->turnFlags[param1->defender].struggling == 0) && (ov16_0225B0C0(param1, v1) == 1) && (param1->aiContext.moveTable[v1].power)) {
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

    if ((ov16_02255918(param1->movePrev) == 0) && (param1->movePrev) && (ov16_0225B02C(param0, param1, param1->attacker, param1->movePrev) == 1)) {
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
        v8 = ov16_0223DFAC(param0, 0, v1);
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
    v4 = ov16_02258874(param1, v0);

    v3[0] = ov16_0225B0FC(param1, v4, 1);

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
    v4 = ov16_02258874(param1, v0);

    v3[0] = ov16_0225B0FC(param1, v4, 2);

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

    v1 = ov16_0223E22C(param0);

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
    v0 = ov16_0223E22C(param0);

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

    v0 = ov16_0223E22C(param0);

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

        ov16_0223F500(param0, 0, v0);
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

            if ((v2->unk_191 & 0x1) == 0) {
                ov16_022667E8(param0, v1);
            }
        }
        break;
    case 0x4:
        for (v1 = 0; v1 < v3; v1++) {
            v2 = BattleSystem_BattlerData(param0, v1);

            if (v2->unk_191 & 0x1) {
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

            if ((v2->unk_191 & 0x1) == 0) {
                ov16_02266804(param0, v1);
            }
        }
        break;
    case 0x4:
        for (v1 = 0; v1 < v3; v1++) {
            v2 = BattleSystem_BattlerData(param0, v1);

            if (v2->unk_191 & 0x1) {
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
        v3 = ov16_0223DFAC(param0, v1, param1->selectedPartySlot[v1]);
        v4 = Pokemon_GetValue(v3, MON_DATA_ABILITY, NULL);
        v5 = Pokemon_GetValue(v3, MON_DATA_160, NULL);

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

    ov16_02251C94(param0, param1, v1, param1->selectedPartySlot[v1]);

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

static void ov16_02248E74 (UnkStruct_0201CD38 * param0, void * param1)
{
    int v0;
    int v1;
    UnkStruct_ov16_0224B7CC * v2 = param1;
    Pokemon * v3;
    BattleMessage v4;
    int v5;
    int v6;
    MessageLoader * v7;
    u32 v8;
    int v9;
    int v10;

    v7 = ov16_0223E05C(v2->unk_00);
    v8 = BattleSystem_BattleType(v2->unk_00);
    v5 = (v2->unk_04->faintedMon) >> 1 & 1;
    v6 = 0;

    for (v1 = v2->unk_30[6]; v1 < BattleSystem_PartyCount(v2->unk_00, v6); v1++) {
        v3 = ov16_0223DFAC(v2->unk_00, v6, v1);
        v9 = Pokemon_GetValue(v3, MON_DATA_HELD_ITEM, NULL);
        v10 = Item_LoadParam(v9, 1, 5);

        if ((v10 == 51) || (v2->unk_04->monsGainingExp[v5] & FlagIndex(v1))) {
            break;
        }
    }

    if (v1 == BattleSystem_PartyCount(v2->unk_00, v6)) {
        v2->unk_28 = 38;
    } else if ((v8 & 0x2) && ((v8 & 0x40) == 0)) {
        if (v2->unk_04->selectedPartySlot[2] == v1) {
            v6 = 2;
        }
    }

    switch (v2->unk_28) {
    case 0:
    {
        u32 v11;
        u32 v12;

        v9 = Pokemon_GetValue(v3, MON_DATA_HELD_ITEM, NULL);
        v10 = Item_LoadParam(v9, 1, 5);

        if (((v8 & 0x1) == 0) && ((v2->unk_04->battleMons[1].curHP + v2->unk_04->battleMons[3].curHP) == 0) && (Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL)) && (v2->unk_04->expJinglePlayed == 0)) {
            Sound_PlayBGM(1127);
            v2->unk_04->expJinglePlayed = 1;
            BattleSystem_SetRedHPSoundFlag(v2->unk_00, 2);
        }

        v11 = 0;
        v4.id = 1;

        if ((Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL)) && (Pokemon_GetValue(v3, MON_DATA_LEVEL, NULL) != 100)) {
            if (v2->unk_04->monsGainingExp[v5] & FlagIndex(v1)) {
                v11 = v2->unk_04->gainedExp;
            }

            if (v10 == 51) {
                v11 += v2->unk_04->sharedExp;
            }

            if (v10 == 66) {
                v11 = v11 * 150 / 100;
            }

            if (v8 & 0x1) {
                v11 = v11 * 150 / 100;
            }

            if (ov16_02259B38(v2->unk_00, v3) == 0) {
                if (Pokemon_GetValue(v3, MON_DATA_LANGUAGE, NULL) != Unk_020E4C44) {
                    v11 = v11 * 170 / 100;
                } else {
                    v11 = v11 * 150 / 100;
                }

                v4.id = 2;
            }

            v12 = Pokemon_GetValue(v3, MON_DATA_EXP, NULL);
            v2->unk_30[3] = v12 - Pokemon_GetCurrentLevelBaseExp(v3);
            v12 += v11;

            if (v1 == v2->unk_04->selectedPartySlot[v6]) {
                v2->unk_04->battleMons[v6].exp = v12;
            }

            Pokemon_SetValue(v3, 8, (u8 *)&v12);
            ov16_022499C0(BattleSystem_Party(v2->unk_00, v6), v1, v2->unk_04->battleMons[v2->unk_04->faintedMon].species, v2->unk_04->battleMons[v2->unk_04->faintedMon].formNum);
        }

        if (v11) {
            v4.tags = 17;
            v4.params[0] = v6 | (v1 << 8);
            v4.params[1] = v11;
            v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v7, &v4, ov16_0223EDF0(v2->unk_00));
            v2->unk_30[1] = 30 / 4;
            v2->unk_28++;
        } else {
            v2->unk_28 = 37;
        }
    }
    break;
    case 1:
        if (sub_0201D724(v2->unk_30[0]) == 0) {
            v2->unk_28++;
        }
        break;
    case 2:
        if (--v2->unk_30[1] == 0) {
            v2->unk_28++;
        }
        break;
    case 3:
        if (v1 == v2->unk_04->selectedPartySlot[v6]) {
            ov16_02265D14(v2->unk_00, v2->unk_04, v6, v2->unk_30[3]);
            v2->unk_30[3] = 0;
            v2->unk_28++;
        } else {
            v2->unk_28 = 5;
        }
        break;
    case 4:
        if (ov16_02251FC8(v2->unk_04)) {
            v2->unk_28++;
        }
        break;
    case 5:
        if (sub_02076B14(v3)) {
            if (v2->unk_04->selectedPartySlot[v6] == v1) {
                ov16_02265FF8(v2->unk_00, v2->unk_04, v6, 8);
                ov16_0226614C(v2->unk_00, v6);
            }

            v2->unk_28 = 6;
        } else {
            v2->unk_28 = 37;
        }
        break;
    case 6:
        if (ov16_02251FC8(v2->unk_04)) {
            {
                int v13;
                int v14[6] = {164, 165, 166, 168, 169, 167};
                UnkStruct_ov16_02248E74 * v15;

                v13 = Pokemon_GetValue(v3, MON_DATA_LEVEL, NULL);
                v2->unk_04->unk_17C = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_02248E74));
                v15 = (UnkStruct_ov16_02248E74 *)v2->unk_04->unk_17C;

                for (v0 = 0; v0 < 6; v0++) {
                    v15->unk_00[v0] = Pokemon_GetValue(v3, v14[v0], NULL);
                }

                sub_02075C74(v3, 0, ov16_0223E24C(v2->unk_00));
                Pokemon_CalcStats(v3);

                if (v2->unk_04->selectedPartySlot[v6] == v1) {
                    ov16_02251C94(v2->unk_00, v2->unk_04, v6, v2->unk_04->selectedPartySlot[v6]);
                }

                v2->unk_04->levelUpMons |= FlagIndex(v1);
                BattleIO_RefreshHPGauge(v2->unk_00, v2->unk_04, v6);

                v4.id = 3;
                v4.tags = 17;
                v4.params[0] = v6 | (v1 << 8);
                v4.params[1] = v13;
                v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v7, &v4, ov16_0223EDF0(v2->unk_00));
                v2->unk_28 = 7;
            }
        }
        break;
    case 7:
        if (sub_0201D724(v2->unk_30[0]) == 0) {
            v2->unk_28 = 8;
            v2->unk_30[2] = 0;
        }
        break;
    case 8:
        if (v2->unk_04->selectedPartySlot[v6] != v1) {
            ov16_0224B520(v2->unk_00, v2, v3);
        }

        v2->unk_28 = 9;
        break;
    case 9:
    {
        UnkStruct_02018340 * v16;
        UnkStruct_0205AA50 * v17;
        UnkStruct_02002F38 * v18;

        v16 = ov16_0223DF00(v2->unk_00);
        v17 = ov16_0223DF04(v2->unk_00, 1);
        v18 = ov16_0223E064(v2->unk_00);

        G2_SetBG0Priority(1 + 1);

        sub_02019060(1, 1);
        sub_02019060(2, 0);

        ov16_0223F8DC(v2->unk_00, 0 + 2);

        sub_0200DA60(v16, 2, 1, 0, 5);
        sub_02003050(v18, 38, sub_0200DAA0(), 5, 0, 0x20, 8 * 0x10);
        sub_0201A7E8(v16, v17, 2, 0x11, 0x7, 14, 12, 11, (9 + 1));
        sub_0201ADA4(v17, 0xff);
        sub_0200DC48(v17, 0, 1, 8);

        v2->unk_28 = 10;
    }
    break;
    case 10:
    {
        int v19[6] = {8, 1, 2, 4, 5, 3};
        int v20[6] = {164, 165, 166, 168, 169, 167};
        UnkStruct_0205AA50 * v21;
        UnkStruct_ov16_02248E74 * v22;

        v21 = ov16_0223DF04(v2->unk_00, 1);
        v22 = (UnkStruct_ov16_02248E74 *)v2->unk_04->unk_17C;

        for (v0 = 0; v0 < 6; v0++) {
            v4.id = 947;
            v4.tags = 4;
            v4.params[0] = v19[v0];

            ov16_0223FB78(v2->unk_00, v21, v7, &v4, 0, 16 * v0, 0, 0, 0);

            v4.id = 948;
            v4.tags = 7;
            v4.params[0] = Pokemon_GetValue(v3, v20[v0], NULL) - v22->unk_00[v0];
            v4.digits = 2;

            ov16_0223FB78(v2->unk_00, v21, v7, &v4, 80, 16 * v0, 0x2, 28, 0);
        }

        v2->unk_28 = 11;
    }
    break;
    case 12:
    {
        int v23[6] = {8, 1, 2, 4, 5, 3};
        int v24[6] = {164, 165, 166, 168, 169, 167};
        UnkStruct_0205AA50 * v25;
        UnkStruct_ov16_02248E74 * v26;

        v25 = ov16_0223DF04(v2->unk_00, 1);
        v26 = (UnkStruct_ov16_02248E74 *)v2->unk_04->unk_17C;

        sub_0201AE78(v25, 0xf, 80, 0, 36, 96);

        for (v0 = 0; v0 < 6; v0++) {
            v4.id = 949;
            v4.tags = 7;
            v4.params[0] = Pokemon_GetValue(v3, v24[v0], NULL);
            v4.digits = 3;

            ov16_0223FB78(v2->unk_00, v25, v7, &v4, 72, 16 * v0, 0x2, 36, 0);
        }

        v2->unk_28 = 13;
    }
    break;
    case 11:
    case 13:
        if ((Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_BUTTON_X | PAD_BUTTON_Y)) || (sub_02022798())) {
            sub_02005748(1500);
            v2->unk_28++;
        }
        break;
    case 14:
    {
        UnkStruct_0205AA50 * v27;

        v27 = ov16_0223DF04(v2->unk_00, 1);

        sub_0200DC9C(v27, 0);
        sub_0201A8FC(v27);

        G2_SetBG0Priority(1);

        sub_02019060(1, 0);
        sub_02019060(2, 1);

        ov16_0223F8DC(v2->unk_00, 0);

        if (v2->unk_04->selectedPartySlot[v6] != v1) {
            ov16_0224B7CC(v2->unk_00, v2);
        }

        Heap_FreeToHeap(v2->unk_04->unk_17C);

        v2->unk_28 = 15;
    }
    break;
    case 15:
    {
        u16 v28;
        UnkStruct_02018340 * v29 = ov16_0223DF00(v2->unk_00);

        switch (sub_0207727C(v3, &v2->unk_30[2], &v28)) {
        case 0xfffe:
            break;
        case 0x0:
            v2->unk_28 = 3;
            break;
        case 0xffff:
            v2->unk_30[4] = v28;
            v2->unk_28 = 16;
            break;
        default:
            if (v2->unk_04->selectedPartySlot[v6] == v1) {
                ov16_02251C94(v2->unk_00, v2->unk_04, v6, v2->unk_04->selectedPartySlot[v6]);
            }

            v4.id = 4;
            v4.tags = 10;
            v4.params[0] = v6 | (v1 << 8);
            v4.params[1] = v28;
            v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v7, &v4, ov16_0223EDF0(v2->unk_00));
            v2->unk_28 = 36;
            break;
        }
    }
    break;
    case 16:
        v4.id = 1178;
        v4.tags = 10;
        v4.params[0] = v6 | (v1 << 8);
        v4.params[1] = v2->unk_30[4];
        v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v7, &v4, ov16_0223EDF0(v2->unk_00));
        v2->unk_28++;
        break;
    case 18:
        v4.id = 1179;
        v4.tags = 2;
        v4.params[0] = v6 | (v1 << 8);
        v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v7, &v4, ov16_0223EDF0(v2->unk_00));
        v2->unk_28++;
        break;
    case 17:
    case 19:
    case 25:
    case 27:
    case 29:
    case 32:
        if (sub_0201D724(v2->unk_30[0]) == 0) {
            v2->unk_28++;
        }
        break;
    case 20:
        BattleIO_ShowYesNoScreen(v2->unk_00, v2->unk_04, v6, 1180, 1, NULL, NULL);
        v2->unk_28++;
        break;
    case 21:
        if (BattleContext_IOBufferVal(v2->unk_04, v6)) {
            if (BattleContext_IOBufferVal(v2->unk_04, v6) == 0xff) {
                v2->unk_28 = 31;
            } else {
                v4.id = 1183;
                v4.tags = 0;
                v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v7, &v4, ov16_0223EDF0(v2->unk_00));
                v2->unk_28 = 22;
            }
        }
        break;
    case 22:
        if (sub_0201D724(v2->unk_30[0]) == 0) {
            ov16_022664C4(v2->unk_00, v6, v2->unk_30[4], v1);
            v2->unk_28++;
        }
        break;
    case 23:
        if (BattleContext_IOBufferVal(v2->unk_04, v6) == 0xff) {
            v2->unk_28 = 31;
        } else if (BattleContext_IOBufferVal(v2->unk_04, v6)) {
            v2->unk_30[5] = v2->unk_04->ioBuffer[v6][0] - 1;
            v2->unk_28 = 24;
        }
        break;
    case 31:
        v4.id = 1184;
        v4.tags = 0;
        v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v7, &v4, ov16_0223EDF0(v2->unk_00));
        v2->unk_28++;
        break;
    case 33:
        BattleIO_ShowYesNoScreen(v2->unk_00, v2->unk_04, v6, 1185, 2, v2->unk_30[4], NULL);
        v2->unk_28++;
        break;
    case 34:
        if (BattleContext_IOBufferVal(v2->unk_04, v6)) {
            if (BattleContext_IOBufferVal(v2->unk_04, v6) == 0xff) {
                v2->unk_28 = 16;
            } else {
                v4.id = 1188;
                v4.tags = 10;
                v4.params[0] = v6 | (v1 << 8);
                v4.params[1] = v2->unk_30[4];
                v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v7, &v4, ov16_0223EDF0(v2->unk_00));
                v2->unk_28 = 35;
            }
        }
        break;
    case 35:
        if (sub_0201D724(v2->unk_30[0]) == 0) {
            v2->unk_28 = 15;
        }
        break;
    case 24:
        v4.id = 1189;
        v4.tags = 0;
        v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v7, &v4, ov16_0223EDF0(v2->unk_00));
        v2->unk_28++;
        break;
    case 26:
        v4.id = 1190;
        v4.tags = 10;
        v4.params[0] = v6 | (v1 << 8);
        v4.params[1] = Pokemon_GetValue(v3, 54 + v2->unk_30[5], NULL);
        v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v7, &v4, ov16_0223EDF0(v2->unk_00));
        v2->unk_28++;
        break;
    case 28:
        v4.id = 1191;
        v4.tags = 0;
        v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v7, &v4, ov16_0223EDF0(v2->unk_00));
        v2->unk_28++;
        break;
    case 30:
        v4.id = 1192;
        v4.tags = 10;
        v4.params[0] = v6 | (v1 << 8);
        v4.params[1] = v2->unk_30[4];
        v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v7, &v4, ov16_0223EDF0(v2->unk_00));
        v0 = 0;

        Pokemon_SetValue(v3, 62 + v2->unk_30[5], &v0);
        Pokemon_SetMoveSlot(v3, v2->unk_30[4], v2->unk_30[5]);

        if (v2->unk_04->selectedPartySlot[v6] == v1) {
            ov16_02251C94(v2->unk_00, v2->unk_04, v6, v2->unk_04->selectedPartySlot[v6]);
        }

        v2->unk_28 = 36;
        break;
    case 36:
        if (sub_0201D724(v2->unk_30[0]) == 0) {
            v2->unk_28 = 15;
        }
        break;
    case 37:
        v2->unk_04->monsGainingExp[v5] &= (FlagIndex(v1) ^ 0xffffffff);
        v2->unk_30[6] = v1 + 1;
        v2->unk_28 = 0;
        break;
    case 38:
        v2->unk_04->unk_178 = NULL;
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        break;
    }
}

static void ov16_022499C0 (Party * param0, int param1, int param2, int param3)
{
    int v0;
    s16 v1 = 0;
    u8 v2[6];
    u16 v3;
    u16 v4;
    int v5;
    int v6;
    Pokemon * v7;
    PokemonPersonalData * v8;

    v8 = PokemonPersonalData_FromMonForm(param2, param3, 5);
    v7 = Party_GetPokemonBySlotIndex(param0, param1);
    v4 = Pokemon_GetValue(v7, MON_DATA_HELD_ITEM, NULL);
    v5 = Item_LoadParam(v4, 1, 5);
    v6 = Item_LoadParam(v4, 2, 5);
    v3 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        v2[v0] = Pokemon_GetValue(v7, MON_DATA_HP_EV + v0, NULL);
        v3 += v2[v0];
    }

    for (v0 = 0; v0 < 6; v0++) {
        if (v3 >= 510) {
            break;
        }

        switch (v0) {
        case 0:
            v1 = PokemonPersonalData_GetValue(v8, 10);

            if (v5 == 122) {
                v1 += v6;
            }
            break;
        case 1:
            v1 = PokemonPersonalData_GetValue(v8, 11);

            if (v5 == 117) {
                v1 += v6;
            }
            break;
        case 2:
            v1 = PokemonPersonalData_GetValue(v8, 12);

            if (v5 == 118) {
                v1 += v6;
            }
            break;
        case 3:
            v1 = PokemonPersonalData_GetValue(v8, 13);

            if (v5 == 121) {
                v1 += v6;
            }
            break;
        case 4:
            v1 = PokemonPersonalData_GetValue(v8, 14);

            if (v5 == 119) {
                v1 += v6;
            }
            break;
        case 5:
            v1 = PokemonPersonalData_GetValue(v8, 15);

            if (v5 == 120) {
                v1 += v6;
            }
            break;
        }

        if (sub_02077758(param0, FlagIndex(param1))) {
            v1 = v1 * 2;
        }

        if (v5 == 50) {
            v1 = v1 * 2;
        }

        if (v3 + v1 > 510) {
            v1 -= ((v3 + v1) - 510);
        }

        if (v2[v0] + v1 > 255) {
            v1 -= ((v2[v0] + v1) - 255);
        }

        v2[v0] += v1;
        v3 += v1;
        Pokemon_SetValue(v7, 13 + v0, (u8 *)&v2[v0]);
    }

    PokemonPersonalData_Free(v8);
}

static void ov16_02249B80 (UnkStruct_0201CD38 * param0, void * param1)
{
    int v0;
    int v1;
    UnkStruct_ov16_0224B7CC * v2 = param1;
    Pokemon * v3;
    UnkStruct_02002F38 * v4;
    UnkStruct_02007768 * v5;
    MessageLoader * v6;

    v6 = ov16_0223E05C(v2->unk_00);
    v4 = ov16_0223E064(v2->unk_00);
    v5 = ov16_0223E000(v2->unk_00);
    v1 = 1;

    if (v2->unk_04->battlersSwitchingMask & FlagIndex(v1)) {
        v1 = 3;
    }

    switch (v2->unk_28) {
    case 0:
        if (v2->unk_24 == 0) {
            {
                UnkStruct_ov12_02237728 v7;

                v7.unk_08 = 3;
                v7.unk_04 = 5;
                v7.unk_0C = v1 + 20000;
                v7.unk_10 = v2->unk_2C;
                v7.unk_1C = ov16_0223E010(v2->unk_00);
                v7.unk_20 = ov16_0223E064(v2->unk_00);
                v7.unk_14 = 1;
                v7.unk_18 = 0;
                v7.unk_24 = v2->unk_00;

                if (BattleSystem_BattleType(v2->unk_00) & 0x2) {
                    if (v1 == 1) {
                        v7.unk_00 = 16;
                    } else {
                        v7.unk_00 = 17;
                    }
                } else {
                    v7.unk_00 = 15;
                }

                v2->unk_08 = ov12_02237728(&v7);
                v2->unk_28 = 1;

                sub_02005748(1802);
                v2->unk_00->unk_241E++;
                ov12_022368C8(v2->unk_08, 0);
            }
        } else {
            {
                BattlerData * v8;

                v8 = BattleSystem_BattlerData(v2->unk_00, 0);

                if (ov12_02237890(v8->unk_84) != 4) {
                    v2->unk_08 = v8->unk_84;
                    v8->unk_84 = NULL;
                    v2->unk_28 = 1;

                    sub_02005748(1802);
                    v2->unk_00->unk_241E++;
                    ov12_022368C8(v2->unk_08, 0);
                }
            }
        }
        break;
    case 1:
        if (ov12_022368D0(v2->unk_08, 0) == 0) {
            {
                u32 v9;

                v9 = BattleSystem_BattleType(v2->unk_00);

                if (v9 & 0x1) {
                    sub_02005728(1510, 117);
                    ov12_022368C8(v2->unk_08, 2);
                    v2->unk_28 = 25;
                } else {
                    sub_02005728(1800, 117);
                    ov12_022368C8(v2->unk_08, 1);

                    v2->unk_28 = 2;
                    v2->unk_30[1] = 23;
                }
            }
        }
        break;
    case 2:
        if (--v2->unk_30[1] == 0) {
            ov16_02265050(v2->unk_00, v1, v2->unk_2C);
            v2->unk_30[2] = ov16_0224A724(v2->unk_00, v2->unk_04);

            if (v2->unk_30[2] < 4) {
                v2->unk_30[3] = v2->unk_30[2];
            } else {
                v2->unk_30[3] = 3;
            }

            v2->unk_28 = 3;
        }
        break;
    case 3:
        if ((ov12_022368D0(v2->unk_08, 1) == 0) && (ov16_02251FC8(v2->unk_04))) {
            ov12_022368C8(v2->unk_08, 3);
            v2->unk_28 = 4;
        }
        break;
    case 4:
        if (ov12_022368D0(v2->unk_08, 3) == 0) {
            v2->unk_28 = 5;
        }
        break;
    case 5:
        if (v2->unk_30[3] == 0) {
            if (v2->unk_30[2] == 4) {
                v2->unk_28 = 7;
                v2->unk_30[1] = 12;
            } else {
                v2->unk_28 = 28;
            }
        } else {
            ov12_022368C8(v2->unk_08, 4);
            v2->unk_28 = 6;
            v2->unk_30[1] = 12;
        }
        break;
    case 6:
        if (ov12_022368D0(v2->unk_08, 4) == 0) {
            if (--v2->unk_30[1] == 0) {
                v2->unk_30[3]--;
                v2->unk_28 = 5;
            }
        }
        break;
    case 7:
        if (--v2->unk_30[1] == 0) {
            ov12_022368C8(v2->unk_08, 6);
            sub_02005728(1801, 117);
            v2->unk_28 = 8;
        }
        break;
    case 8:
        if (ov12_022368D0(v2->unk_08, 6) == 0) {
            {
                BattleMessage v10;

                v10.id = 867;
                v10.tags = 2 | 0x80;
                v10.params[0] = v1;
                v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v6, &v10, ov16_0223EDF0(v2->unk_00));
                v2->unk_30[1] = 30;
                v2->unk_28 = 9;

                Sound_PlayBGM(1127);
                BattleSystem_SetRedHPSoundFlag(v2->unk_00, 2);
            }
        }
        break;
    case 9:
        if (sub_0201D724(v2->unk_30[0]) == 0) {
            v2->unk_28 = 10;
            ov12_022368C8(v2->unk_08, 7);
        }
        break;
    case 10:
        if (ov12_022368D0(v2->unk_08, 7) == 0) {
            if (--v2->unk_30[1] == 0) {
                ov16_0223F4B0(v2->unk_00, v1);
                v3 = ov16_0223DFAC(v2->unk_00, v1, v2->unk_04->selectedPartySlot[v1]);

                if (BattleSystem_BattleType(v2->unk_00) & (0x200 | 0x400)) {
                    v3 = ov16_0223DFAC(v2->unk_00, v1, v2->unk_04->selectedPartySlot[v1]);
                    ov16_02259A5C(v2->unk_00, v2->unk_04, v3);
                    sub_02015738(ov16_0223E220(v2->unk_00), 1);
                    sub_02003178(v4, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 0, 16, 0x0);
                    sub_0200872C(v5, 0, 16, 0, 0x0);
                    v2->unk_28 = 32;
                } else if (ov16_0223F9E0(v2->unk_00, Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL))) {
                    sub_02015738(ov16_0223E220(v2->unk_00), 1);
                    sub_02003178(v4, (0x1 | 0x4), 0xffff, 1, 0, 16, 0x0);
                    sub_0200872C(v5, 0, 16, 0, 0x0);
                    v2->unk_28 = 16;
                } else {
                    {
                        BattleMessage v11;

                        v11.id = 871;
                        v11.tags = 2 | 0x80;
                        v11.params[0] = v1;
                        v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v6, &v11, ov16_0223EDF0(v2->unk_00));
                        v2->unk_30[1] = 30;
                        v2->unk_28 = 11;
                    }

                    ov16_0223F268(v2->unk_00);
                }
            }
        }
        break;
    case 11:
        if (sub_0201D724(v2->unk_30[0]) == 0) {
            if (--v2->unk_30[1] == 0) {
                v2->unk_28 = 12;
                sub_02003178(v4, (0x1 | 0x4), 0xffff, 1, 0, 16, 0x0);
                sub_0200872C(v5, 0, 16, 0, 0x0);
                sub_02015738(ov16_0223E220(v2->unk_00), 1);
            }
        }
        break;
    case 12:
        if (sub_0200384C(v4) == 0) {
            {
                UnkStruct_ov21_021E8E0C v12;

                ov12_0223783C(v2->unk_08);
                sub_02007DD4(v5);
                ov16_0223B53C(v2->unk_00);
                ov16_022686BC(ov16_0223E020(v2->unk_00, 0), 0);
                ov16_022686BC(ov16_0223E020(v2->unk_00, 1), 0);
                ov16_02263B20(BattleSystem_BattlerData(v2->unk_00, 0), 0);

                v12.unk_00 = ov16_0223DF00(v2->unk_00);
                v12.unk_04 = ov16_0223E064(v2->unk_00);
                v12.unk_08 = v5;
                v12.unk_0C = 5;
                v12.unk_10 = ov16_0223DFAC(v2->unk_00, v1, v2->unk_04->selectedPartySlot[v1]);
                v12.unk_14 = sub_0207A280(ov16_0223E068(v2->unk_00));
                v2->unk_50[1] = sub_0201EE9C();
                v2->unk_50[0] = ov21_021E8D48(&v12);
                v2->unk_28 = 13;
            }
        }
        break;
    case 13:
        if (ov21_021E8DEC(v2->unk_50[0])) {
            if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
                v2->unk_28 = 14;
            } else if (sub_02022798()) {
                sub_02005748(1500);
                v2->unk_28 = 14;
            }

            if (v2->unk_28 == 14) {
                sub_02003178(v4, (0x1 | 0x4), 0xffff, 1, 0, 16, 0x0);
                ov21_021E8E04(v2->unk_50[0], 0);
            }
        }
        break;
    case 14:
    {
        UnkStruct_02007C7C * v13;

        v13 = ov21_021E8E00(v2->unk_50[0]);
        sub_02008274(v13, 0, 4);

        if (sub_020080C0(v13, 0) >= 128) {
            sub_02007DEC(v13, 0, 128);
            v2->unk_28 = 15;
        }
    }
    break;
    case 15:
        ov21_021E8DD0(v2->unk_50[0]);
        sub_0201EEB8(v2->unk_50[1]);
        ov16_0223B578(v2->unk_00);
        sub_02003178(v4, (0x1 | 0x4), 0xffff, 1, 16, 0, 0x0);
        v2->unk_28 = 17;
        break;
    case 16:
        if (sub_0200384C(v4) == 0) {
            {
                UnkStruct_02008A90 v14;

                v3 = ov16_0223DFAC(v2->unk_00, v1, v2->unk_04->selectedPartySlot[v1]);

                ov12_0223783C(v2->unk_08);
                sub_02007DD4(v5);
                ov16_02263B20(BattleSystem_BattlerData(v2->unk_00, 0), 0);
                ov16_0223B53C(v2->unk_00);
                ov16_0223B578(v2->unk_00);
                sub_02075EF4(&v14, v3, 2);
                sub_02007C34(v5, &v14, 128, 72, 0, 0, NULL, NULL);
                sub_02003178(v4, (0x1 | 0x4), 0xffff, 1, 16, 0, 0x0);
                sub_0200872C(v5, 16, 0, 0, 0x0);

                v2->unk_28 = 17;
            }
        }
        break;
    case 17:
        if (sub_0200384C(v4) == 0) {
            {
                v2->unk_28 = 18;

                sub_02015738(ov16_0223E220(v2->unk_00), 0);
                sub_02003858(v4, 1);
            }
        }
        break;
    case 18:
    {
        int v15;

        v15 = v1 | (v2->unk_04->selectedPartySlot[v1]);
        BattleIO_ShowYesNoScreen(v2->unk_00, v2->unk_04, 0, 868, 5, NULL, v15);
        v2->unk_28++;
    }
    break;
    case 19:
        if (BattleContext_IOBufferVal(v2->unk_04, 0)) {
            if (BattleContext_IOBufferVal(v2->unk_04, 0) == 0xff) {
                v2->unk_28 = 22;
            } else {
                sub_02015738(ov16_0223E220(v2->unk_00), 1);
                sub_02003178(v4, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 0, 16, 0x0);
                sub_0200872C(v5, 0, 16, 0, 0x0);
                v2->unk_28 = 20;
            }
        }
        break;
    case 20:
        if (sub_0200384C(v4) == 0) {
            {
                UnkStruct_0208737C * v16;

                sub_0200F344(0, 0x0);
                sub_0200F344(1, 0x0);

                v3 = ov16_0223DFAC(v2->unk_00, v1, v2->unk_04->selectedPartySlot[v1]);
                v16 = sub_0208712C(5, 1, Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL), 10, ov16_0223EDA4(v2->unk_00));
                v2->unk_50[1] = v16;

                if (BattleSystem_PartyCount(v2->unk_00, 0) < 6) {
                    v16->unk_44 = 0;
                } else {
                    v16->unk_44 = 1174 + ov16_0223F240(v2->unk_00);
                }

                v16->unk_08 = Pokemon_GetValue(v3, MON_DATA_FORM, NULL);
                v16->unk_48 = ov16_0223E228(v2->unk_00);
                v16->unk_10 = Pokemon_GetValue(v3, MON_DATA_GENDER, NULL);
                v2->unk_50[0] = sub_020067E8(&Unk_020F2DAC, v16, 5);
                v2->unk_28 = 21;

                ov16_0223F414(v2->unk_00);

                {
                    int v17;
                    BattlerData * v18;

                    for (v17 = 0; v17 < BattleSystem_MaxBattlers(v2->unk_00); v17++) {
                        v18 = BattleSystem_BattlerData(v2->unk_00, v17);

                        if (v18->unk_18) {
                            sub_0200D0F4(v18->unk_18);
                            v18->unk_18 = NULL;
                        }
                    }
                }

                ov16_0223B3E4(v2->unk_00);
                ov16_0223F314(v2->unk_00, 1);
            }
        }
        break;
    case 21:
        if (sub_02006844(v2->unk_50[0])) {
            {
                UnkStruct_0208737C * v19;
                int v20;

                v19 = v2->unk_50[1];
                v3 = ov16_0223DFAC(v2->unk_00, v1, v2->unk_04->selectedPartySlot[v1]);

                if (v19->unk_14 == 0) {
                    Pokemon_SetValue(v3, 120, v19->unk_18);
                    ov16_0223F24C(v2->unk_00, (1 + 48));
                }

                sub_0208716C(v19);
                sub_02006814(v2->unk_50[0]);
                ov16_0223F314(v2->unk_00, 2);

                v2->unk_28 = 23;
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

                v22 = BattleSystem_Party(v2->unk_00, 0);
                v3 = ov16_0223DFAC(v2->unk_00, v1, v2->unk_04->selectedPartySlot[v1]);

                ov16_0223F9A0(v2->unk_00, v1);
                ov16_02259A5C(v2->unk_00, v2->unk_04, v3);
                ov16_0223EF48(v2->unk_00, v3);
                ov16_0223EF68(v2->unk_00, v3);
                BattleIO_IncrementRecord(v2->unk_00, 0, 0, (1 + 8));

                if (Party_AddPokemon(v22, v3) == 1) {
                    if (v2->unk_28 == 22) {
                        sub_02015738(ov16_0223E220(v2->unk_00), 1);
                        sub_02003178(v4, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 0, 16, 0x0);
                        sub_0200872C(v5, 0, 16, 0, 0x0);
                    }

                    v2->unk_28 = 32;
                } else {
                    {
                        PCBoxes * v24;
                        u32 v25;
                        u32 v26;
                        int v27;
                        int v28;
                        int v29;

                        v24 = ov16_0223E228(v2->unk_00);
                        v25 = sub_0207999C(v24);
                        v26 = sub_020799A0(v24);

                        sub_02079A94(v24, v26);

                        for (v27 = 0; v27 < 4; v27++) {
                            v28 = Pokemon_GetValue(v3, MON_DATA_MOVE1_MAX_PP + v27, NULL);
                            Pokemon_SetValue(v3, 58 + v27, &v28);
                        }

                        if (Pokemon_SetGiratinaForm(v3) != -1) {
                            ov16_0223F9A0(v2->unk_00, v1);
                        }

                        sub_020798A0(v24, v26, Pokemon_GetBoxPokemon(v3));

                        if (v2->unk_28 == 22) {
                            if (v25 == v26) {
                                v21.id = 1174 + ov16_0223F240(v2->unk_00);
                                v21.tags = 19 | 0x80;
                                v21.params[0] = v1;
                                v21.params[1] = v25;
                            } else {
                                v21.id = 1176 + ov16_0223F240(v2->unk_00);
                                v21.tags = 47 | 0x80;
                                v21.params[0] = v1;
                                v21.params[1] = v25;
                                v21.params[2] = v26;
                            }

                            v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v6, &v21, ov16_0223EDF0(v2->unk_00));
                            v2->unk_30[1] = 30;
                            v2->unk_28 = 24;
                        } else {
                            v2->unk_28 = 32;
                        }
                    }
                }
            }
        }
        break;
    case 24:
        if (sub_0201D724(v2->unk_30[0]) == 0) {
            if (--v2->unk_30[1] == 0) {
                {
                    sub_02015738(ov16_0223E220(v2->unk_00), 1);
                    sub_02003178(v4, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 0, 16, 0x0);
                    sub_0200872C(v5, 0, 16, 0, 0x0);

                    v2->unk_28 = 32;
                }
            }
        }
        break;
    case 25:
        if (ov12_022368D0(v2->unk_08, 2) == 0) {
            {
                BattleMessage v30;

                ov12_0223783C(v2->unk_08);

                v30.id = 859;
                v30.tags = 0;

                v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v6, &v30, ov16_0223EDF0(v2->unk_00));
                v2->unk_30[1] = 30;
                v2->unk_28 = 26;
            }
        }
        break;
    case 26:
        if (sub_0201D724(v2->unk_30[0]) == 0) {
            if (--v2->unk_30[1] == 0) {
                {
                    BattleMessage v31;

                    v31.id = 860;
                    v31.tags = 0;
                    v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v6, &v31, ov16_0223EDF0(v2->unk_00));
                    v2->unk_30[1] = 30;
                    v2->unk_28 = 27;
                }
            }
        }
        break;
    case 27:
        if (sub_0201D724(v2->unk_30[0]) == 0) {
            if (--v2->unk_30[1] == 0) {
                v2->unk_04->unk_178 = NULL;
                Heap_FreeToHeap(param1);
                sub_0200DA58(param0);
            }
        }
        break;
    case 28:
        BattleIO_ShowPokemon(v2->unk_00, v1, v2->unk_2C, 1);
        v2->unk_28 = 29;
        v2->unk_30[1] = 2;
        break;
    case 29:
        if (--v2->unk_30[1] == 0) {
            ov12_0223783C(v2->unk_08);
            v2->unk_28 = 30;
        }
        break;
    case 30:
        if (ov16_02251FC8(v2->unk_04)) {
            {
                BattleMessage v32;

                v32.id = 863 + v2->unk_30[2];
                v32.tags = 0;
                v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v6, &v32, ov16_0223EDF0(v2->unk_00));
                v2->unk_30[1] = 30;
                v2->unk_28 = 31;
            }
        }
        break;
    case 31:
        if (sub_0201D724(v2->unk_30[0]) == 0) {
            if (--v2->unk_30[1] == 0) {
                v2->unk_04->unk_178 = NULL;
                Heap_FreeToHeap(param1);
                sub_0200DA58(param0);
            }
        }
        break;
    case 32:
        if (sub_0200384C(v4) == 0) {
            if (BattleSystem_BattleType(v2->unk_00) & (0x200 | 0x400)) {
                ov12_0223783C(v2->unk_08);
                sub_02007DD4(v5);
            }

            v2->unk_00->resultMask = 0x4;
            v2->unk_04->unk_178 = NULL;

            Heap_FreeToHeap(param1);
            sub_0200DA58(param0);
        }
        break;
    }
}

static const u8 Unk_ov16_0226E570[] = {
    0x14,
    0xF,
    0xA,
    0xF
};

static const u8 Unk_ov16_0226E638[][2] = {
    {0xA, 0x28},
    {0xA, 0x23},
    {0xA, 0x1E},
    {0xA, 0x19},
    {0xA, 0x14},
    {0xA, 0xF},
    {0xA, 0xA},
    {0xF, 0xA},
    {0x14, 0xA},
    {0x19, 0xA},
    {0x1E, 0xA},
    {0x23, 0xA},
    {0x28, 0xA}
};

static int ov16_0224A724 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    u32 v1;
    u32 v2;
    u32 v3;
    u32 v4;
    int v5;
    int v6;

    if (BattleSystem_BattleType(param0) & (0x200 | 0x400)) {
        return 4;
    }

    if (param1->msgItemTemp == 5) {
        v3 = PokemonPersonalData_GetSpeciesValue(param1->battleMons[param1->defender].species, 8);
        v3 = v3 * Unk_ov16_0226E638[param1->safariCatchCount][0] / Unk_ov16_0226E638[param1->safariCatchCount][1];
    } else {
        v3 = PokemonPersonalData_GetSpeciesValue(param1->battleMons[param1->defender].species, 8);
    }

    v4 = 10;
    v5 = BattleMon_Get(param1, param1->defender, 27, NULL);
    v6 = BattleMon_Get(param1, param1->defender, 28, NULL);

    if (param1->msgItemTemp > 5) {
        switch (param1->msgItemTemp) {
        case 6:
            if ((v5 == 11) || (v6 == 11) || (v5 == 6) || (v6 == 6)) {
                v4 = 30;
            }
            break;
        case 7:
            if (ov16_0223E22C(param0) == 7) {
                v4 = 35;
            }
            break;
        case 8:
            if (param1->battleMons[param1->defender].level < 40) {
                v4 = 40 - param1->battleMons[param1->defender].level;

                if (v4 < 10) {
                    v4 = 10;
                }
            }
            break;
        case 9:
            if (ov16_0223F9E0(param0, param1->battleMons[param1->defender].species) == 1) {
                v4 = 30;
            }
            break;
        case 10:
            v4 = 10 + param1->totalTurns;

            if (v4 > 40) {
                v4 = 40;
            }
            break;
        case 13:
            if ((ov16_0223EBF8(param0) == 3) || (ov16_0223EBF8(param0) == 4) || (ov16_0223E22C(param0) == 5)) {
                v4 = 35;
            }
            break;
        case 15:
            if (param1->totalTurns < 1) {
                v4 = 40;
            }
            break;
        }
    } else {
        v4 = Unk_ov16_0226E570[param1->msgItemTemp - 2];
    }

    v1 = ((v3 * v4) / 10) * (param1->battleMons[param1->defender].maxHP * 3 - param1->battleMons[param1->defender].curHP * 2) / (param1->battleMons[param1->defender].maxHP * 3);

    if (param1->battleMons[param1->defender].status & (0x7 | 0x20)) {
        v1 *= 2;
    }

    if (param1->battleMons[param1->defender].status & (0x8 | 0x40 | 0x10 | 0x80)) {
        v1 = v1 * 15 / 10;
    }

    if (v1 >= 255) {
        v0 = 4;
    } else {
        v2 = (255 << 16) / v1;

        CP_SetSqrt32(v2);
        CP_WaitSqrt();

        v2 = CP_GetSqrtResult32();

        CP_SetSqrt32(v2);
        CP_WaitSqrt();

        v1 = CP_GetSqrtResult32();
        v1 = (65535 << 4) / v1;

        for (v0 = 0; v0 < 4; v0++) {
            if (BattleSystem_RandNext(param0) >= v1) {
                break;
            }
        }

        if (param1->msgItemTemp == 1) {
            v0 = 4;
        }
    }

    return v0;
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
            if (battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) {
                break;
            }
        }
        break;

    case BTLSCR_ENEMY_SLOT_1:
        maxBattlers = BattleSystem_MaxBattlers(battleSys);
        for (battlerOut = 0; battlerOut < maxBattlers; battlerOut++) {
            battlerData = BattleSystem_BattlerData(battleSys, battlerOut);
            if (battlerData->unk_191 == BATTLER_TYPE_ENEMY_SIDE_SLOT_1 || battlerData->unk_191 == BATTLER_TYPE_SOLO_ENEMY) {
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
            if (battlerData->unk_191 == expectedBattlerType) {
                break;
            }
        }
        break;

    case BTLSCR_PLAYER:
        maxBattlers = BattleSystem_MaxBattlers(battleSys);
        for (battlerOut = 0; battlerOut < maxBattlers; battlerOut++) {
            battlerData = BattleSystem_BattlerData(battleSys, battlerOut);
            if ((battlerData->unk_191 & BATTLER_TYPE_SOLO_ENEMY) == FALSE) {
                break;
            }
        }
        break;

    case BTLSCR_PLAYER_SLOT_1:
        maxBattlers = BattleSystem_MaxBattlers(battleSys);
        for (battlerOut = 0; battlerOut < maxBattlers; battlerOut++) {
            battlerData = BattleSystem_BattlerData(battleSys, battlerOut);
            if (battlerData->unk_191 == BATTLER_TYPE_PLAYER_SIDE_SLOT_1
                    || battlerData->unk_191 == BATTLER_TYPE_SOLO_PLAYER) {
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
            if (battlerData->unk_191 == expectedBattlerType) {
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

static void ov16_0224B520 (BattleSystem * param0, UnkStruct_ov16_0224B7CC * param1, Pokemon * param2)
{
    UnkStruct_ov104_0223F9E0 v0;
    UnkStruct_0200C6E4 * v1;
    UnkStruct_0200C704 * v2;
    UnkStruct_02002F38 * v3;
    MessageLoader * v4;
    UnkStruct_0200B358 * v5;
    Strbuf* v6, * v7;
    UnkStruct_02018340 * v8;
    UnkStruct_0205AA50 v9;
    int v10;
    UnkStruct_0201EE28 v11;
    UnkStruct_020127E8 v12;
    int v13;

    v4 = ov16_0223E05C(param0);
    v7 = ov16_0223E0D4(param0);
    v5 = ov16_0223E0D0(param0);
    v8 = ov16_0223DF00(param0);
    v1 = ov16_0223E010(param0);
    v2 = ov16_0223E018(param0);
    v3 = ov16_0223E064(param0);

    sub_0200CBDC(v1, v2, 27, 256, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 20021);
    sub_0200CD7C(v3, 2, v1, v2, 27, 82, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 20016);
    sub_0200CE0C(v1, v2, 27, 257, 1, 20013);
    sub_0200CE3C(v1, v2, 27, 258, 1, 20013);

    param1->unk_0C[0] = sub_0200CE6C(v1, v2, &Unk_ov16_0226E6C4);

    sub_0200D330(param1->unk_0C[0]);
    sub_0200D888(v1, v2, 19, sub_02079D80(param2), 0, NNS_G2D_VRAM_TYPE_2DMAIN, 20022);
    sub_0200CD7C(v3, 2, v1, v2, 19, sub_02079FD0(), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 20017);
    sub_0200CE0C(v1, v2, 19, sub_02079FDC(), 0, 20014);
    sub_0200CE3C(v1, v2, 19, sub_02079FE8(), 0, 20014);

    param1->unk_0C[1] = sub_0200CE6C(v1, v2, &Unk_ov16_0226E6F8);

    sub_02021F24(param1->unk_0C[1]->unk_00, sub_02079FC4(param2));
    sub_0200D330(param1->unk_0C[1]);

    param1->unk_50[0] = sub_02012744(1, 5);

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

    v12.unk_00 = param1->unk_50[0];
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

    param1->unk_14 = sub_020127E8(&v12);
    param1->unk_18 = v11;

    sub_02012AC0(param1->unk_14, 1);
    sub_0201A8FC(&v9);
}

static void ov16_0224B7CC (BattleSystem * param0, UnkStruct_ov16_0224B7CC * param1)
{
    UnkStruct_0200C704 * v0;

    v0 = ov16_0223E018(param0);

    sub_0200D0F4(param1->unk_0C[0]);
    sub_0200D0F4(param1->unk_0C[1]);
    sub_02012870(param1->unk_14);
    sub_0201EE28(&param1->unk_18);
    sub_0200D070(v0, 20021);
    sub_0200D080(v0, 20016);
    sub_0200D090(v0, 20013);
    sub_0200D0A0(v0, 20013);
    sub_0200D070(v0, 20022);
    sub_0200D080(v0, 20017);
    sub_0200D090(v0, 20014);
    sub_0200D0A0(v0, 20014);
    sub_020127BC(param1->unk_50[0]);
}

static void ov16_0224B850 (BattleSystem * param0, BattleContext * param1, int param2)
{
    Pokemon * v0;
    u8 v1, v2;

    if (Battler_Side(param0, param2)) {
        return;
    }

    if (BattleSystem_BattleType(param0) & 0x2) {
        v1 = ov16_0223E1C4(param0, 3);
        v2 = ov16_0223E1C4(param0, 5);

        if (param1->battleMons[v2].level > param1->battleMons[v1].level) {
            v1 = v2;
        }
    } else {
        v1 = ov16_0223E1C4(param0, 1);
    }

    v0 = ov16_0223DFAC(param0, param2, param1->selectedPartySlot[param2]);

    if (param1->battleMons[v1].level > param1->battleMons[param2].level) {
        if (param1->battleMons[v1].level - param1->battleMons[param2].level >= 30) {
            sub_02075C74(v0, 8, ov16_0223E24C(param0));
        } else {
            sub_02075C74(v0, 6, ov16_0223E24C(param0));
        }
    } else {
        sub_02075C74(v0, 6, ov16_0223E24C(param0));
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
