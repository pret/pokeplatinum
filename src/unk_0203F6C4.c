#include <nitro.h>
#include <string.h>

#include "inlines.h"
#include "core_sys.h"

#include "struct_decls/struct_02001AF4_decl.h"
#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02014EC4_decl.h"
#include "struct_decls/sys_task.h"
#include "strbuf.h"
#include "struct_decls/struct_0202440C_decl.h"
#include "struct_decls/struct_02025CCC_decl.h"
#include "trainer_info.h"
#include "struct_decls/struct_02026218_decl.h"
#include "struct_decls/struct_02026310_decl.h"
#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_02028430_decl.h"
#include "struct_decls/struct_0202855C_decl.h"
#include "struct_decls/struct_020298B0_decl.h"
#include "struct_decls/struct_02029C68_decl.h"
#include "struct_decls/struct_02029C88_decl.h"
#include "struct_decls/struct_02029D04_decl.h"
#include "struct_decls/struct_0202A750_decl.h"
#include "struct_decls/struct_0202AB28_decl.h"
#include "struct_decls/struct_0202CA1C_decl.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_0203E724_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/struct_0205C22C_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "savedata.h"
#include "overlay005/struct_ov5_021DC1A4_decl.h"
#include "overlay005/struct_ov5_021E1FF4_decl.h"
#include "overlay006/struct_ov6_02246204_decl.h"

#include "constdata/const_020F8BE0.h"
#include "constdata/const_020EAB80.h"
#include "constdata/const_020EAC58.h"

#include "struct_defs/struct_0202A93C.h"
#include "struct_defs/struct_0202D7B0.h"
#include "struct_defs/struct_0202DF8C.h"
#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "struct_defs/struct_0203D8AC.h"
#include "struct_defs/struct_0203E608.h"
#include "functypes/funcptr_0203E724.h"
#include "struct_defs/struct_0203E724_t.h"
#include "struct_defs/struct_02041DC8.h"
#include "struct_defs/struct_02042434.h"
#include "struct_defs/struct_020425E0.h"
#include "struct_defs/struct_02049FA8.h"
#include "struct_defs/struct_0204AFC4.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02098C44.h"
#include "struct_defs/pokemon_summary.h"
#include "overlay005/struct_ov5_021DD42C.h"
#include "overlay005/struct_ov5_021F8E3C.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay090/struct_ov90_021D0D80.h"
#include "overlay098/struct_ov98_02247168.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "unk_02001AF4.h"
#include "unk_020041CC.h"
#include "message.h"
#include "unk_0200B29C.h"
#include "unk_0200B358.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "rtc.h"
#include "unk_02014D38.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201D670.h"
#include "unk_02020020.h"
#include "strbuf.h"
#include "savedata/save_table.h"
#include "savedata.h"
#include "unk_02025CB0.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_020261E4.h"
#include "unk_0202631C.h"
#include "unk_02028124.h"
#include "unk_0202854C.h"
#include "unk_020298BC.h"
#include "poffin.h"
#include "unk_0202ACE0.h"
#include "unk_0202B604.h"
#include "unk_0202C9F4.h"
#include "unk_0202CD50.h"
#include "unk_0202D7A8.h"
#include "unk_0202DF8C.h"
#include "unk_02033200.h"
#include "communication_system.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_02038FFC.h"
#include "unk_020393C8.h"
#include "unk_0203A378.h"
#include "unk_0203A6DC.h"
#include "unk_0203CC84.h"
#include "unk_0203D1B8.h"
#include "unk_0203E724.h"
#include "unk_0203E880.h"
#include "unk_0203F6C4.h"
#include "unk_02046AD4.h"
#include "unk_02046C7C.h"
#include "unk_020474B8.h"
#include "unk_020480A8.h"
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
#include "unk_0204E3CC.h"
#include "unk_0204E75C.h"
#include "unk_0204E974.h"
#include "unk_0204EDA4.h"
#include "unk_0204F02C.h"
#include "unk_0204F04C.h"
#include "unk_0204F13C.h"
#include "unk_0204FAB4.h"
#include "unk_0205003C.h"
#include "unk_02050568.h"
#include "unk_020507CC.h"
#include "unk_020508D4.h"
#include "unk_02050A74.h"
#include "unk_020528D0.h"
#include "unk_02052C6C.h"
#include "unk_020530C8.h"
#include "unk_020553DC.h"
#include "unk_02055808.h"
#include "unk_020559DC.h"
#include "poketch_data.h"
#include "unk_0205749C.h"
#include "unk_02057518.h"
#include "field_comm_manager.h"
#include "unk_0205B33C.h"
#include "unk_0205C22C.h"
#include "unk_0205C980.h"
#include "unk_0205D8CC.h"
#include "unk_0205DFC4.h"
#include "unk_0205E7D0.h"
#include "unk_02061804.h"
#include "unk_02063400.h"
#include "unk_020655F4.h"
#include "pokeradar.h"
#include "unk_02069BE0.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "unk_0206B70C.h"
#include "unk_0206C0E8.h"
#include "roaming_pokemon.h"
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
#include "constants/species.h"
#include "pokemon.h"
#include "trainer_data.h"
#include "unk_020797C8.h"
#include "party.h"
#include "unk_0207D3B8.h"
#include "unk_0207DA28.h"
#include "unk_02096420.h"
#include "unk_02097B18.h"
#include "unk_020985E4.h"
#include "unk_02099500.h"
#include "unk_02099604.h"
#include "unk_0209ACF4.h"
#include "unk_0209B344.h"
#include "unk_0209C194.h"
#include "overlay005/ov5_021D431C.h"
#include "overlay005/ov5_021D5EB8.h"
#include "overlay005/ov5_021DB888.h"
#include "overlay005/ov5_021DC018.h"
#include "overlay005/ov5_021DD42C.h"
#include "overlay005/ov5_021DDAE4.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/ov5_021E1B08.h"
#include "overlay005/ov5_021E1D20.h"
#include "overlay005/ov5_021E779C.h"
#include "overlay005/ov5_021EA874.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021EE7D4.h"
#include "overlay005/ov5_021EFB0C.h"
#include "overlay005/ov5_021F0E84.h"
#include "overlay005/ov5_021F6454.h"
#include "overlay005/ov5_021F77A8.h"
#include "overlay006/ov6_0223E140.h"
#include "overlay006/ov6_02242AF0.h"
#include "overlay006/ov6_02243004.h"
#include "overlay006/ov6_02243218.h"
#include "overlay006/ov6_02243258.h"
#include "overlay006/ov6_02246184.h"
#include "overlay006/ov6_02246C24.h"
#include "overlay006/ov6_02246F00.h"
#include "overlay006/ov6_02247078.h"
#include "overlay006/ov6_022475B0.h"
#include "overlay006/ov6_02247830.h"
#include "overlay006/ov6_02247D30.h"
#include "overlay006/ov6_02247F5C.h"
#include "overlay006/ov6_02248948.h"
#include "overlay007/ov7_02249960.h"
#include "overlay007/ov7_0224B4E8.h"
#include "overlay007/ov7_0224CD28.h"
#include "overlay008/ov8_02249960.h"
#include "overlay009/ov9_02249960.h"
#include "overlay023/ov23_022521F0.h"

#include <nitro/code16.h>

typedef struct {
    SysTask * unk_00;
    SysTask * unk_04;
    UnkStruct_ov5_021F8E3C * unk_08;
    FieldSystem * unk_0C;
} UnkStruct_02040F28;

static BOOL sub_0203F6C4(UnkStruct_0203E724 * param0);
static BOOL sub_0203F6C8(UnkStruct_0203E724 * param0);
static BOOL sub_0203F6CC(UnkStruct_0203E724 * param0);
static BOOL sub_0203F6D8(UnkStruct_0203E724 * param0);
static BOOL sub_0203F70C(UnkStruct_0203E724 * param0);
static BOOL sub_0203F74C(UnkStruct_0203E724 * param0);
static BOOL sub_0203F764(UnkStruct_0203E724 * param0);
static BOOL sub_0203F780(UnkStruct_0203E724 * param0);
static BOOL sub_0203F79C(UnkStruct_0203E724 * param0);
static BOOL sub_0203F7B4(UnkStruct_0203E724 * param0);
static BOOL sub_0203F7D0(UnkStruct_0203E724 * param0);
static BOOL sub_0203F7F0(UnkStruct_0203E724 * param0);
static BOOL sub_0203F808(u16 param0, u16 param1);
static BOOL sub_0203F81C(UnkStruct_0203E724 * param0);
static BOOL sub_0203F84C(UnkStruct_0203E724 * param0);
static BOOL sub_0203F874(UnkStruct_0203E724 * param0);
static BOOL sub_0203F89C(UnkStruct_0203E724 * param0);
static BOOL sub_0203F8C4(UnkStruct_0203E724 * param0);
static BOOL sub_0203F8E0(UnkStruct_0203E724 * param0);
static BOOL sub_0203F900(UnkStruct_0203E724 * param0);
static BOOL sub_0203F92C(UnkStruct_0203E724 * param0);
static BOOL sub_0203F964(UnkStruct_0203E724 * param0);
static BOOL sub_0203F99C(UnkStruct_0203E724 * param0);
static BOOL sub_0203F9EC(UnkStruct_0203E724 * param0);
static BOOL sub_0203FA08(UnkStruct_0203E724 * param0);
static BOOL sub_0203FA1C(UnkStruct_0203E724 * param0);
static LocalMapObject * sub_02040ED4(FieldSystem * param0, int param1);
static BOOL sub_0203FA34(UnkStruct_0203E724 * param0);
static BOOL sub_0203FA6C(UnkStruct_0203E724 * param0);
static BOOL sub_0203FA9C(UnkStruct_0203E724 * param0);
static BOOL sub_0203FAD0(UnkStruct_0203E724 * param0);
static BOOL sub_0203FAE8(UnkStruct_0203E724 * param0);
static BOOL sub_0203FAF4(UnkStruct_0203E724 * param0);
static BOOL sub_0203FB28(UnkStruct_0203E724 * param0);
static BOOL sub_0203FB5C(UnkStruct_0203E724 * param0);
static BOOL sub_0203FB74(UnkStruct_0203E724 * param0);
static BOOL sub_0203FB8C(UnkStruct_0203E724 * param0);
static BOOL sub_0203FBA8(UnkStruct_0203E724 * param0);
static BOOL sub_0203FBE4(UnkStruct_0203E724 * param0);
static BOOL sub_0203FC0C(UnkStruct_0203E724 * param0);
static BOOL sub_0203FC30(UnkStruct_0203E724 * param0);
static BOOL sub_0203FC54(UnkStruct_0203E724 * param0);
static BOOL sub_0203FC7C(UnkStruct_0203E724 * param0);
static BOOL sub_0203FCAC(UnkStruct_0203E724 * param0);
static BOOL sub_0203FCDC(UnkStruct_0203E724 * param0);
static BOOL sub_0203FD00(UnkStruct_0203E724 * param0);
static BOOL sub_0203FD30(UnkStruct_0203E724 * param0);
static BOOL sub_0203FD5C(UnkStruct_0203E724 * param0);
static BOOL sub_0203FD70(UnkStruct_0203E724 * param0);
static BOOL sub_0203FDBC(UnkStruct_0203E724 * param0);
static BOOL sub_0203FE20(UnkStruct_0203E724 * param0);
static BOOL sub_0203FE60(UnkStruct_0203E724 * param0);
static BOOL sub_0203FEAC(UnkStruct_0203E724 * param0);
static BOOL sub_0203FF34(UnkStruct_0203E724 * param0);
static BOOL sub_0203FFAC(UnkStruct_0203E724 * param0);
static BOOL sub_0203FFE8(UnkStruct_0203E724 * param0);
static BOOL sub_02040028(UnkStruct_0203E724 * param0);
static BOOL sub_02040064(UnkStruct_0203E724 * param0);
static BOOL sub_020400AC(UnkStruct_0203E724 * param0);
static BOOL sub_02040124(UnkStruct_0203E724 * param0);
static BOOL sub_02040014(UnkStruct_0203E724 * param0);
static BOOL sub_02040180(UnkStruct_0203E724 * param0);
static BOOL sub_02040190(UnkStruct_0203E724 * param0);
static BOOL sub_020401F4(UnkStruct_0203E724 * param0);
static BOOL sub_02040204(UnkStruct_0203E724 * param0);
static BOOL sub_02040284(UnkStruct_0203E724 * param0);
static BOOL sub_02040294(UnkStruct_0203E724 * param0);
static BOOL sub_020402B4(UnkStruct_0203E724 * param0);
static BOOL sub_020402FC(UnkStruct_0203E724 * param0);
static BOOL sub_0204032C(UnkStruct_0203E724 * param0);
static BOOL sub_020404A4(UnkStruct_0203E724 * param0);
static BOOL sub_02040554(UnkStruct_0203E724 * param0);
static BOOL sub_02040580(UnkStruct_0203E724 * param0);
static BOOL sub_0204059C(UnkStruct_0203E724 * param0);
static BOOL sub_020405C4(UnkStruct_0203E724 * param0);
static BOOL sub_020405DC(UnkStruct_0203E724 * param0);
static BOOL sub_02040670(UnkStruct_0203E724 * param0);
static BOOL sub_02040714(UnkStruct_0203E724 * param0);
static BOOL sub_02040730(UnkStruct_0203E724 * param0);
static BOOL sub_020407B4(UnkStruct_0203E724 * param0);
static BOOL sub_020403EC(UnkStruct_0203E724 * param0);
static BOOL sub_02040354(UnkStruct_0203E724 * param0);
static BOOL sub_020407C4(UnkStruct_0203E724 * param0);
static BOOL sub_02040824(UnkStruct_0203E724 * param0);
static BOOL sub_020408B0(UnkStruct_0203E724 * param0);
static BOOL sub_02040938(UnkStruct_0203E724 * param0);
static BOOL sub_020409C0(UnkStruct_0203E724 * param0);
static BOOL sub_020409E8(UnkStruct_0203E724 * param0);
static BOOL sub_02040A2C(UnkStruct_0203E724 * param0);
static BOOL sub_02040A50(UnkStruct_0203E724 * param0);
static BOOL sub_02040AE8(UnkStruct_0203E724 * param0);
static BOOL sub_02040B70(UnkStruct_0203E724 * param0);
static BOOL sub_02040BF8(UnkStruct_0203E724 * param0);
static BOOL sub_02040C58(UnkStruct_0203E724 * param0);
static BOOL sub_02040C7C(UnkStruct_0203E724 * param0);
static BOOL sub_02040CB8(UnkStruct_0203E724 * param0);
static BOOL sub_02040D08(UnkStruct_0203E724 * param0);
static BOOL sub_02040D74(UnkStruct_0203E724 * param0);
static BOOL sub_02040EFC(UnkStruct_0203E724 * param0);
static BOOL sub_02040FA4(UnkStruct_0203E724 * param0);
static BOOL sub_020410CC(UnkStruct_0203E724 * param0);
static BOOL sub_020411C4(UnkStruct_0203E724 * param0);
static BOOL sub_020411D4(UnkStruct_0203E724 * param0);
static BOOL sub_020411F0(UnkStruct_0203E724 * param0);
static BOOL sub_0204120C(UnkStruct_0203E724 * param0);
static BOOL sub_02041254(UnkStruct_0203E724 * param0);
static BOOL sub_02041288(UnkStruct_0203E724 * param0);
static BOOL sub_02041320(UnkStruct_0203E724 * param0);
static BOOL sub_02041364(UnkStruct_0203E724 * param0);
static BOOL sub_020413D8(UnkStruct_0203E724 * param0);
static BOOL sub_020413F0(UnkStruct_0203E724 * param0);
static BOOL sub_02041420(UnkStruct_0203E724 * param0);
static BOOL sub_02041464(UnkStruct_0203E724 * param0);
static BOOL sub_020414C4(UnkStruct_0203E724 * param0);
static BOOL sub_020414EC(UnkStruct_0203E724 * param0);
static BOOL sub_020415D0(UnkStruct_0203E724 * param0);
static BOOL sub_02041604(UnkStruct_0203E724 * param0);
static BOOL sub_0204163C(UnkStruct_0203E724 * param0);
static BOOL sub_02041684(UnkStruct_0203E724 * param0);
static BOOL sub_020416C8(UnkStruct_0203E724 * param0);
static BOOL sub_02041708(UnkStruct_0203E724 * param0);
static BOOL sub_0204174C(UnkStruct_0203E724 * param0);
static BOOL sub_02041C40(UnkStruct_0203E724 * param0);
static BOOL sub_02041C8C(UnkStruct_0203E724 * param0);
static BOOL sub_02041CB8(UnkStruct_0203E724 * param0);
static BOOL sub_02041CBC(UnkStruct_0203E724 * param0);
static BOOL sub_02041CC0(UnkStruct_0203E724 * param0);
static BOOL sub_02041CC4(UnkStruct_0203E724 * param0);
static BOOL sub_02041D78(UnkStruct_0203E724 * param0);
static BOOL sub_02041D88(UnkStruct_0203E724 * param0);
static BOOL sub_02041E18(UnkStruct_0203E724 * param0);
static BOOL sub_02041E28(UnkStruct_0203E724 * param0);
static BOOL sub_02041E34(UnkStruct_0203E724 * param0);
static BOOL sub_02041E64(UnkStruct_0203E724 * param0);
static BOOL sub_02041E84(UnkStruct_0203E724 * param0);
static void sub_020451B4(FieldSystem * param0, u16 param1);
static BOOL sub_02041FAC(UnkStruct_0203E724 * param0);
static BOOL sub_02042028(UnkStruct_0203E724 * param0);
static BOOL sub_0204205C(UnkStruct_0203E724 * param0);
static BOOL sub_020420A0(UnkStruct_0203E724 * param0);
static BOOL sub_020420AC(UnkStruct_0203E724 * param0);
static BOOL sub_020420CC(UnkStruct_0203E724 * param0);
static BOOL sub_02042124(UnkStruct_0203E724 * param0);
static BOOL sub_0204218C(UnkStruct_0203E724 * param0);
static BOOL sub_020421F4(UnkStruct_0203E724 * param0);
static BOOL sub_02042230(UnkStruct_0203E724 * param0);
static BOOL sub_0204226C(UnkStruct_0203E724 * param0);
static BOOL sub_020422D4(UnkStruct_0203E724 * param0);
static BOOL sub_020422E8(UnkStruct_0203E724 * param0);
static BOOL sub_02042330(UnkStruct_0203E724 * param0);
static BOOL sub_02042368(UnkStruct_0203E724 * param0);
static BOOL sub_020423BC(UnkStruct_0203E724 * param0);
static BOOL sub_02042434(UnkStruct_0203E724 * param0);
static BOOL sub_02042480(UnkStruct_0203E724 * param0);
static BOOL sub_0204249C(UnkStruct_0203E724 * param0);
static BOOL sub_020424AC(UnkStruct_0203E724 * param0);
static BOOL sub_020424BC(UnkStruct_0203E724 * param0);
static BOOL sub_020424E8(UnkStruct_0203E724 * param0);
static BOOL sub_020424F8(UnkStruct_0203E724 * param0);
static BOOL sub_02042524(UnkStruct_0203E724 * param0);
static BOOL sub_02042560(UnkStruct_0203E724 * param0);
static BOOL sub_020425C0(UnkStruct_0203E724 * param0);
static BOOL sub_020425E0(UnkStruct_0203E724 * param0);
static BOOL sub_02042628(UnkStruct_0203E724 * param0);
static BOOL sub_020426E8(UnkStruct_0203E724 * param0);
static BOOL sub_02042718(UnkStruct_0203E724 * param0);
static BOOL sub_02042784(UnkStruct_0203E724 * param0);
static BOOL sub_02042918(UnkStruct_0203E724 * param0);
static BOOL sub_02042960(UnkStruct_0203E724 * param0);
static BOOL sub_02042970(UnkStruct_0203E724 * param0);
static BOOL sub_02042984(UnkStruct_0203E724 * param0);
static BOOL sub_02042AB0(UnkStruct_0203E724 * param0);
static BOOL sub_02042AE0(UnkStruct_0203E724 * param0);
static BOOL sub_02042B3C(UnkStruct_0203E724 * param0);
static BOOL sub_02042B6C(UnkStruct_0203E724 * param0);
static BOOL sub_02042BB8(UnkStruct_0203E724 * param0);
static BOOL sub_02042BE8(UnkStruct_0203E724 * param0);
static BOOL sub_02042C18(UnkStruct_0203E724 * param0);
static BOOL sub_02042C80(UnkStruct_0203E724 * param0);
static BOOL sub_02042CA8(UnkStruct_0203E724 * param0);
static BOOL sub_02042CB4(UnkStruct_0203E724 * param0);
static BOOL sub_02042CE4(UnkStruct_0203E724 * param0);
static BOOL sub_02042D84(UnkStruct_0203E724 * param0);
static BOOL sub_02042D9C(UnkStruct_0203E724 * param0);
static BOOL sub_02042DC4(UnkStruct_0203E724 * param0);
static BOOL sub_02042DDC(UnkStruct_0203E724 * param0);
static BOOL sub_02042E38(UnkStruct_0203E724 * param0);
static BOOL sub_02042DEC(UnkStruct_0203E724 * param0);
static BOOL sub_02042E64(UnkStruct_0203E724 * param0);
static BOOL sub_02042F04(UnkStruct_0203E724 * param0);
static BOOL sub_02042F74(UnkStruct_0203E724 * param0);
static BOOL sub_02042F9C(UnkStruct_0203E724 * param0);
static BOOL sub_0204300C(UnkStruct_0203E724 * param0);
static BOOL sub_02043034(UnkStruct_0203E724 * param0);
static BOOL sub_02043040(UnkStruct_0203E724 * param0);
static BOOL sub_0204304C(UnkStruct_0203E724 * param0);
static BOOL sub_0204307C(UnkStruct_0203E724 * param0);
static BOOL sub_02043080(UnkStruct_0203E724 * param0);
static BOOL sub_02043100(UnkStruct_0203E724 * param0);
static BOOL sub_02043130(UnkStruct_0203E724 * param0);
static BOOL sub_02043190(UnkStruct_0203E724 * param0);
static BOOL sub_020431C0(UnkStruct_0203E724 * param0);
static BOOL sub_020431F0(UnkStruct_0203E724 * param0);
static BOOL sub_02043220(UnkStruct_0203E724 * param0);
static BOOL sub_02043250(UnkStruct_0203E724 * param0);
static BOOL sub_02043254(UnkStruct_0203E724 * param0);
static BOOL sub_020432DC(UnkStruct_0203E724 * param0);
static BOOL sub_02043330(UnkStruct_0203E724 * param0);
static BOOL sub_020433D8(UnkStruct_0203E724 * param0);
static BOOL sub_0204342C(UnkStruct_0203E724 * param0);
static BOOL sub_02043460(UnkStruct_0203E724 * param0);
static BOOL sub_0204346C(UnkStruct_0203E724 * param0);
static BOOL sub_0204347C(UnkStruct_0203E724 * param0);
static BOOL sub_020434A4(UnkStruct_0203E724 * param0);
static BOOL sub_020434C0(UnkStruct_0203E724 * param0);
static BOOL sub_020434D0(UnkStruct_0203E724 * param0);
static BOOL sub_020434EC(UnkStruct_0203E724 * param0);
static BOOL sub_02043540(UnkStruct_0203E724 * param0);
static BOOL sub_020435A0(UnkStruct_0203E724 * param0);
static BOOL sub_020435AC(UnkStruct_0203E724 * param0);
static BOOL sub_020435DC(UnkStruct_0203E724 * param0);
static BOOL sub_02043608(UnkStruct_0203E724 * param0);
static BOOL sub_02043648(UnkStruct_0203E724 * param0);
static BOOL sub_02043678(UnkStruct_0203E724 * param0);
static BOOL sub_02043694(UnkStruct_0203E724 * param0);
static BOOL sub_020436A0(UnkStruct_0203E724 * param0);
static BOOL sub_020436D0(UnkStruct_0203E724 * param0);
static BOOL sub_02043708(UnkStruct_0203E724 * param0);
static BOOL sub_02043988(UnkStruct_0203E724 * param0);
static BOOL sub_02043978(UnkStruct_0203E724 * param0);
static BOOL sub_02043748(UnkStruct_0203E724 * param0);
static BOOL sub_020437B4(UnkStruct_0203E724 * param0);
static BOOL sub_020437C4(UnkStruct_0203E724 * param0);
static BOOL sub_020437E8(UnkStruct_0203E724 * param0);
static BOOL sub_020437FC(UnkStruct_0203E724 * param0);
static BOOL sub_02043894(UnkStruct_0203E724 * param0);
static BOOL sub_020438CC(UnkStruct_0203E724 * param0);
static BOOL sub_0204391C(UnkStruct_0203E724 * param0);
static BOOL sub_02043938(UnkStruct_0203E724 * param0);
static BOOL sub_02043964(UnkStruct_0203E724 * param0);
static BOOL sub_0204399C(UnkStruct_0203E724 * param0);
static BOOL sub_020439D8(UnkStruct_0203E724 * param0);
static BOOL sub_020439F4(UnkStruct_0203E724 * param0);
static BOOL sub_02043A30(UnkStruct_0203E724 * param0);
static BOOL sub_02043A4C(UnkStruct_0203E724 * param0);
static BOOL sub_02043A94(UnkStruct_0203E724 * param0);
static BOOL sub_02043AA4(UnkStruct_0203E724 * param0);
static BOOL sub_02043AE0(UnkStruct_0203E724 * param0);
static BOOL sub_02043B48(UnkStruct_0203E724 * param0);
static BOOL sub_02043BA0(UnkStruct_0203E724 * param0);
static BOOL sub_02043854(UnkStruct_0203E724 * param0);
static BOOL sub_02043BD4(UnkStruct_0203E724 * param0);
static BOOL sub_02043BE0(UnkStruct_0203E724 * param0);
static BOOL sub_02043C0C(UnkStruct_0203E724 * param0);
static BOOL sub_02043C3C(UnkStruct_0203E724 * param0);
static BOOL sub_02043C54(UnkStruct_0203E724 * param0);
static BOOL sub_02043C58(UnkStruct_0203E724 * param0);
static BOOL sub_02043C70(UnkStruct_0203E724 * param0);
static BOOL sub_02043CA4(UnkStruct_0203E724 * param0);
static BOOL sub_02043CB4(UnkStruct_0203E724 * param0);
static BOOL sub_02043D04(UnkStruct_0203E724 * param0);
static BOOL sub_02043D54(UnkStruct_0203E724 * param0);
static BOOL sub_02043DE4(UnkStruct_0203E724 * param0);
static BOOL sub_02043E1C(UnkStruct_0203E724 * param0);
static BOOL sub_02043E54(UnkStruct_0203E724 * param0);
static BOOL sub_02043EA4(UnkStruct_0203E724 * param0);
static BOOL sub_02043EF4(UnkStruct_0203E724 * param0);
static BOOL sub_02043F40(UnkStruct_0203E724 * param0);
static BOOL sub_02043F6C(UnkStruct_0203E724 * param0);
static BOOL sub_02043FC4(UnkStruct_0203E724 * param0);
static BOOL sub_02043FDC(UnkStruct_0203E724 * param0);
static BOOL sub_02043FF4(UnkStruct_0203E724 * param0);
static BOOL sub_0204400C(UnkStruct_0203E724 * param0);
static BOOL sub_02044024(UnkStruct_0203E724 * param0);
static BOOL sub_02044034(UnkStruct_0203E724 * param0);
static BOOL sub_02044044(UnkStruct_0203E724 * param0);
static BOOL sub_02044054(UnkStruct_0203E724 * param0);
static BOOL sub_02044064(UnkStruct_0203E724 * param0);
static BOOL sub_02044074(UnkStruct_0203E724 * param0);
static BOOL sub_02044084(UnkStruct_0203E724 * param0);
static BOOL sub_020440A0(UnkStruct_0203E724 * param0);
static BOOL sub_020440BC(UnkStruct_0203E724 * param0);
static BOOL sub_020440CC(UnkStruct_0203E724 * param0);
static BOOL sub_020440DC(UnkStruct_0203E724 * param0);
static BOOL sub_020440EC(UnkStruct_0203E724 * param0);
static BOOL sub_02042658(UnkStruct_0203E724 * param0);
static BOOL sub_020426A8(UnkStruct_0203E724 * param0);
static BOOL sub_02043CC4(UnkStruct_0203E724 * param0);
static BOOL sub_02040868(UnkStruct_0203E724 * param0);
static BOOL sub_02040898(UnkStruct_0203E724 * param0);
static BOOL sub_020401A8(UnkStruct_0203E724 * param0);
static BOOL sub_020401D0(UnkStruct_0203E724 * param0);
static BOOL sub_02041790(UnkStruct_0203E724 * param0);
static BOOL sub_02041814(UnkStruct_0203E724 * param0);
static BOOL sub_02041860(UnkStruct_0203E724 * param0);
static BOOL sub_020418E0(UnkStruct_0203E724 * param0);
static BOOL sub_02041984(UnkStruct_0203E724 * param0);
static BOOL sub_020417C0(UnkStruct_0203E724 * param0);
static BOOL sub_02041B24(UnkStruct_0203E724 * param0);
static BOOL sub_02041B68(UnkStruct_0203E724 * param0);
static BOOL sub_02041BA8(UnkStruct_0203E724 * param0);
static BOOL sub_02041C00(UnkStruct_0203E724 * param0);
static BOOL sub_02044168(UnkStruct_0203E724 * param0);
static BOOL sub_020441C8(UnkStruct_0203E724 * param0);
static BOOL sub_02044208(UnkStruct_0203E724 * param0);
static BOOL sub_02044240(UnkStruct_0203E724 * param0);
static BOOL sub_02044254(UnkStruct_0203E724 * param0);
static BOOL sub_02044260(UnkStruct_0203E724 * param0);
static BOOL sub_02044288(UnkStruct_0203E724 * param0);
static BOOL sub_020442B0(UnkStruct_0203E724 * param0);
static BOOL sub_02044158(UnkStruct_0203E724 * param0);
static BOOL sub_020442B4(UnkStruct_0203E724 * param0);
static BOOL sub_020442E8(UnkStruct_0203E724 * param0);
static BOOL sub_0204431C(UnkStruct_0203E724 * param0);
static BOOL sub_02044328(UnkStruct_0203E724 * param0);
static BOOL sub_02044354(UnkStruct_0203E724 * param0);
static BOOL sub_02044374(UnkStruct_0203E724 * param0);
static BOOL sub_02044398(UnkStruct_0203E724 * param0);
static BOOL sub_020443D0(UnkStruct_0203E724 * param0);
static BOOL sub_02044408(UnkStruct_0203E724 * param0);
static BOOL sub_02044444(UnkStruct_0203E724 * param0);
static BOOL sub_02044468(UnkStruct_0203E724 * param0);
static BOOL sub_020444BC(UnkStruct_0203E724 * param0);
static BOOL sub_02044510(UnkStruct_0203E724 * param0);
static BOOL sub_02044528(UnkStruct_0203E724 * param0);
static BOOL sub_02044558(UnkStruct_0203E724 * param0);
static BOOL sub_0204466C(UnkStruct_0203E724 * param0);
static BOOL sub_02044670(UnkStruct_0203E724 * param0);
static BOOL sub_020446B4(UnkStruct_0203E724 * param0);
static BOOL sub_02044710(UnkStruct_0203E724 * param0);
static BOOL sub_02044774(UnkStruct_0203E724 * param0);
static BOOL sub_020447A4(UnkStruct_0203E724 * param0);
static BOOL sub_020417F0(UnkStruct_0203E724 * param0);
static BOOL sub_02041A28(UnkStruct_0203E724 * param0);
static BOOL sub_02041AB0(UnkStruct_0203E724 * param0);
static BOOL sub_020447E8(UnkStruct_0203E724 * param0);
static BOOL sub_02044820(UnkStruct_0203E724 * param0);
static BOOL sub_02044858(UnkStruct_0203E724 * param0);
static BOOL sub_02044888(UnkStruct_0203E724 * param0);
static BOOL sub_020448B8(UnkStruct_0203E724 * param0);
static BOOL sub_020448C8(UnkStruct_0203E724 * param0);
static BOOL sub_020448F0(UnkStruct_0203E724 * param0);
static BOOL sub_02044908(UnkStruct_0203E724 * param0);
static BOOL sub_02044928(UnkStruct_0203E724 * param0);
static BOOL sub_02044980(UnkStruct_0203E724 * param0);
static BOOL sub_020449F4(UnkStruct_0203E724 * param0);
static BOOL sub_02044A28(UnkStruct_0203E724 * param0);
static BOOL sub_0203F734(UnkStruct_0203E724 * param0);
static BOOL sub_02042A60(UnkStruct_0203E724 * param0);
static BOOL sub_02042A8C(UnkStruct_0203E724 * param0);
static BOOL sub_02044A50(UnkStruct_0203E724 * param0);
static BOOL sub_020429F4(UnkStruct_0203E724 * param0);
static BOOL sub_02042A50(UnkStruct_0203E724 * param0);
static BOOL sub_0204229C(UnkStruct_0203E724 * param0);
static BOOL sub_020422B8(UnkStruct_0203E724 * param0);
static BOOL sub_02044AE8(UnkStruct_0203E724 * param0);
static BOOL sub_020400E8(UnkStruct_0203E724 * param0);
static BOOL sub_02044AF8(UnkStruct_0203E724 * param0);
static BOOL sub_02044B28(UnkStruct_0203E724 * param0);
static BOOL sub_02044B38(UnkStruct_0203E724 * param0);
static BOOL sub_02044B70(UnkStruct_0203E724 * param0);
static BOOL sub_02044BA0(UnkStruct_0203E724 * param0);
static BOOL sub_02044BB8(UnkStruct_0203E724 * param0);
static BOOL sub_02045708(UnkStruct_0203E724 * param0);
static BOOL sub_02044BE8(UnkStruct_0203E724 * param0);
static BOOL sub_02044C64(UnkStruct_0203E724 * param0);
static BOOL sub_02044C90(UnkStruct_0203E724 * param0);
static BOOL sub_02044CBC(UnkStruct_0203E724 * param0);
static BOOL sub_02044CCC(UnkStruct_0203E724 * param0);
static BOOL sub_02044CE4(UnkStruct_0203E724 * param0);
static BOOL sub_02044D08(UnkStruct_0203E724 * param0);
static BOOL sub_02044D38(UnkStruct_0203E724 * param0);
static BOOL sub_02044D68(UnkStruct_0203E724 * param0);
static BOOL sub_02044D9C(UnkStruct_0203E724 * param0);
static BOOL sub_02044DB4(UnkStruct_0203E724 * param0);
static BOOL sub_02044DC8(UnkStruct_0203E724 * param0);
static BOOL sub_02044DDC(UnkStruct_0203E724 * param0);
static BOOL sub_02044E40(UnkStruct_0203E724 * param0);
static BOOL sub_02044EDC(UnkStruct_0203E724 * param0);
static BOOL sub_02044F04(UnkStruct_0203E724 * param0);
static BOOL sub_02044F24(UnkStruct_0203E724 * param0);
static BOOL sub_02044FA4(UnkStruct_0203E724 * param0);
static BOOL sub_02044FCC(UnkStruct_0203E724 * param0);
static BOOL sub_0204500C(UnkStruct_0203E724 * param0);
static BOOL sub_02042810(UnkStruct_0203E724 * param0);
static BOOL sub_02042868(UnkStruct_0203E724 * param0);
static BOOL sub_020428D4(UnkStruct_0203E724 * param0);
static BOOL sub_0204504C(UnkStruct_0203E724 * param0);
static BOOL sub_02045068(UnkStruct_0203E724 * param0);
static BOOL sub_02045134(UnkStruct_0203E724 * param0);
static BOOL sub_02045160(UnkStruct_0203E724 * param0);
static BOOL sub_0204517C(UnkStruct_0203E724 * param0);
static BOOL sub_02045198(UnkStruct_0203E724 * param0);
static BOOL sub_0204521C(UnkStruct_0203E724 * param0);
static BOOL sub_02045250(UnkStruct_0203E724 * param0);
static BOOL sub_02045274(UnkStruct_0203E724 * param0);
static BOOL sub_0204528C(UnkStruct_0203E724 * param0);
static BOOL sub_020452B4(UnkStruct_0203E724 * param0);
static BOOL sub_020452C4(UnkStruct_0203E724 * param0);
static BOOL sub_020452D4(UnkStruct_0203E724 * param0);
static BOOL sub_02045304(UnkStruct_0203E724 * param0);
static BOOL sub_02045314(UnkStruct_0203E724 * param0);
static BOOL sub_02045324(UnkStruct_0203E724 * param0);
static BOOL sub_02045344(UnkStruct_0203E724 * param0);
static BOOL sub_02045384(UnkStruct_0203E724 * param0);
static BOOL sub_02045404(UnkStruct_0203E724 * param0);
static BOOL sub_020454C0(UnkStruct_0203E724 * param0);
static BOOL sub_020454D4(UnkStruct_0203E724 * param0);
static BOOL sub_020454E8(UnkStruct_0203E724 * param0);
static BOOL sub_0204550C(UnkStruct_0203E724 * param0);
static BOOL sub_02045530(UnkStruct_0203E724 * param0);
static BOOL sub_020455C4(UnkStruct_0203E724 * param0);
static BOOL sub_02045628(UnkStruct_0203E724 * param0);
static BOOL sub_02045650(UnkStruct_0203E724 * param0);
static BOOL sub_020456E8(UnkStruct_0203E724 * param0);
static BOOL sub_02045720(UnkStruct_0203E724 * param0);
static BOOL sub_02045760(UnkStruct_0203E724 * param0);
static BOOL sub_02045798(UnkStruct_0203E724 * param0);
static BOOL sub_020457D0(UnkStruct_0203E724 * param0);
static BOOL sub_020457FC(UnkStruct_0203E724 * param0);
static BOOL sub_02045840(UnkStruct_0203E724 * param0);
static BOOL sub_02045850(UnkStruct_0203E724 * param0);
static BOOL sub_02045860(UnkStruct_0203E724 * param0);
static BOOL sub_02045900(UnkStruct_0203E724 * param0);
static BOOL sub_020458CC(UnkStruct_0203E724 * param0);
static BOOL sub_02045938(UnkStruct_0203E724 * param0);
static BOOL sub_0204598C(UnkStruct_0203E724 * param0);
static BOOL sub_020459BC(UnkStruct_0203E724 * param0);
static BOOL sub_02045A88(UnkStruct_0203E724 * param0);
static BOOL sub_02045AB8(UnkStruct_0203E724 * param0);
static BOOL sub_02045AE8(UnkStruct_0203E724 * param0);
static BOOL sub_02045B18(UnkStruct_0203E724 * param0);
static BOOL sub_02045BA8(UnkStruct_0203E724 * param0);
static BOOL sub_02045BE4(UnkStruct_0203E724 * param0);
static BOOL sub_02045C10(UnkStruct_0203E724 * param0);
static BOOL sub_02041F14(UnkStruct_0203E724 * param0);
static BOOL sub_02041FC4(UnkStruct_0203E724 * param0);
static BOOL sub_02041FDC(UnkStruct_0203E724 * param0);
static BOOL sub_02041FF8(UnkStruct_0203E724 * param0);
static BOOL sub_02045C50(UnkStruct_0203E724 * param0);
static BOOL sub_02045D70(UnkStruct_0203E724 * param0);
static BOOL sub_02045CB8(UnkStruct_0203E724 * param0);
static BOOL sub_02045CFC(UnkStruct_0203E724 * param0);
static BOOL sub_02045DB0(UnkStruct_0203E724 * param0);
static BOOL sub_02045E14(UnkStruct_0203E724 * param0);
static BOOL sub_02045E44(UnkStruct_0203E724 * param0);
static BOOL sub_02040DD8(UnkStruct_0203E724 * param0);
static BOOL sub_02045ECC(UnkStruct_0203E724 * param0);
static BOOL sub_02045E78(UnkStruct_0203E724 * param0);
static BOOL sub_02045EA0(UnkStruct_0203E724 * param0);
static BOOL sub_02045F04(UnkStruct_0203E724 * param0);
static BOOL sub_02045F48(UnkStruct_0203E724 * param0);
static BOOL sub_0204169C(UnkStruct_0203E724 * param0);
static BOOL sub_02046038(UnkStruct_0203E724 * param0);
static BOOL sub_02046050(UnkStruct_0203E724 * param0);
static BOOL sub_02046080(UnkStruct_0203E724 * param0);
static BOOL sub_0204608C(UnkStruct_0203E724 * param0);
static BOOL sub_02046098(UnkStruct_0203E724 * param0);
static BOOL sub_020410F4(UnkStruct_0203E724 * param0);
static BOOL sub_020460A8(UnkStruct_0203E724 * param0);
static BOOL sub_02046108(UnkStruct_0203E724 * param0);
static BOOL sub_02040A9C(UnkStruct_0203E724 * param0);
static BOOL sub_02040A78(UnkStruct_0203E724 * param0);
static BOOL sub_02043C8C(UnkStruct_0203E724 * param0);
static BOOL sub_02046144(UnkStruct_0203E724 * param0);
static BOOL sub_02042D70(UnkStruct_0203E724 * param0);
static BOOL sub_0204616C(UnkStruct_0203E724 * param0);
static BOOL sub_0204619C(UnkStruct_0203E724 * param0);
static BOOL sub_020461C8(UnkStruct_0203E724 * param0);
static BOOL sub_02040D34(UnkStruct_0203E724 * param0);
static BOOL sub_02040D54(UnkStruct_0203E724 * param0);
static BOOL sub_020461E0(UnkStruct_0203E724 * param0);
static BOOL sub_020427B4(UnkStruct_0203E724 * param0);
static BOOL sub_020427E0(UnkStruct_0203E724 * param0);
static BOOL sub_02046294(UnkStruct_0203E724 * param0);
static BOOL sub_020462DC(UnkStruct_0203E724 * param0);
static BOOL sub_020462F4(UnkStruct_0203E724 * param0);
static BOOL sub_02043568(UnkStruct_0203E724 * param0);
static BOOL sub_02043578(UnkStruct_0203E724 * param0);
static BOOL sub_02046314(UnkStruct_0203E724 * param0);
BOOL sub_02046340(UnkStruct_0203E724 * param0);
BOOL sub_020463B4(UnkStruct_0203E724 * param0);
BOOL sub_020463E4(UnkStruct_0203E724 * param0);
BOOL sub_02046400(UnkStruct_0203E724 * param0);
BOOL sub_0204645C(UnkStruct_0203E724 * param0);
static u8 sub_02046524(u16 param0, u16 param1, u16 param2, u16 param3);
static u8 sub_02046568(u16 param0, u16 param1, u16 param2, u16 param3);
static BOOL sub_020465AC(UnkStruct_0203E724 * param0);
static BOOL sub_02046624(UnkStruct_0203E724 * param0);
static BOOL sub_02046658(UnkStruct_0203E724 * param0);
static BOOL sub_0204666C(UnkStruct_0203E724 * param0);
static BOOL sub_020466A4(UnkStruct_0203E724 * param0);
static BOOL sub_02046868(UnkStruct_0203E724 * param0);
static BOOL sub_02046888(UnkStruct_0203E724 * param0);
static BOOL sub_020468AC(UnkStruct_0203E724 * param0);
static BOOL sub_020468D0(UnkStruct_0203E724 * param0);
static BOOL sub_020468E0(UnkStruct_0203E724 * param0);
static BOOL sub_02043384(UnkStruct_0203E724 * param0);
static BOOL sub_020451F8(UnkStruct_0203E724 * param0);
static BOOL sub_0204693C(UnkStruct_0203E724 * param0);
static BOOL sub_02046958(UnkStruct_0203E724 * param0);
static BOOL sub_0204697C(UnkStruct_0203E724 * param0);
static BOOL sub_0204698C(UnkStruct_0203E724 * param0);
static BOOL sub_020469D0(UnkStruct_0203E724 * param0);
static BOOL sub_02046A4C(UnkStruct_0203E724 * param0);
static BOOL sub_02040F0C(UnkStruct_0203E724 * param0);
static void sub_02040F28(FieldSystem * param0, SysTask * param1, UnkStruct_ov5_021F8E3C * param2);
static void sub_02040F5C(SysTask * param0, void * param1);
static u32 sub_0204676C(SaveData * param0);

static const u8 Unk_020EABA6[6][3] = {
    {0x1, 0x0, 0x0},
    {0x0, 0x1, 0x0},
    {0x0, 0x0, 0x1},
    {0x1, 0x1, 0x0},
    {0x0, 0x1, 0x1},
    {0x1, 0x0, 0x1}
};

static const UnkStruct_ov61_0222C884 Unk_020EAB84 = {
    0x3,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x21F
};

const UnkFuncPtr_0203E724 Unk_020EAC58[] = {
    sub_0203F6C4,
    sub_0203F6C8,
    sub_0203F6CC,
    sub_0203F6D8,
    sub_0203F74C,
    sub_0203F764,
    sub_0203F780,
    sub_0203F79C,
    sub_0203F7B4,
    sub_0203F7D0,
    sub_0203F7F0,
    sub_0203F81C,
    sub_0203F84C,
    sub_0203F874,
    sub_0203F89C,
    sub_0203F8C4,
    sub_0203F8E0,
    sub_0203F900,
    sub_0203F92C,
    sub_0203F964,
    sub_0203F99C,
    sub_0203FA08,
    sub_0203FA1C,
    sub_0203FA34,
    sub_0203FA6C,
    sub_0203FA9C,
    sub_0203FAD0,
    sub_0203FAE8,
    sub_0203FAF4,
    sub_0203FB28,
    sub_0203FB5C,
    sub_0203FB74,
    sub_0203FB8C,
    sub_0203FBA8,
    sub_0203FBE4,
    sub_0203FC0C,
    sub_0203FC30,
    sub_0203FC54,
    sub_0203FC7C,
    sub_0203FCAC,
    sub_0203FCDC,
    sub_0203FD00,
    sub_0203FD30,
    sub_0203FD5C,
    sub_0203FFE8,
    sub_02040028,
    sub_020400AC,
    sub_02040124,
    sub_02040180,
    sub_020401F4,
    sub_02040284,
    sub_020402B4,
    sub_020402FC,
    sub_0204032C,
    sub_020404A4,
    sub_02040554,
    sub_02040580,
    sub_0204059C,
    sub_020405DC,
    sub_02040714,
    sub_020407B4,
    sub_02040354,
    sub_020407C4,
    sub_020442B0,
    sub_020408B0,
    sub_02040938,
    sub_020409C0,
    sub_02040A2C,
    sub_02040AE8,
    sub_02040B70,
    sub_02040BF8,
    sub_02040C58,
    sub_02040D08,
    sub_020483F4,
    sub_02048410,
    sub_0204842C,
    sub_0204846C,
    sub_020484A0,
    sub_020484C4,
    sub_020484D4,
    sub_020482FC,
    sub_0204830C,
    sub_02048320,
    sub_02048338,
    sub_02048350,
    sub_0204838C,
    sub_020483B0,
    sub_020483CC,
    sub_020483E0,
    sub_020484F8,
    sub_02048530,
    sub_0204855C,
    sub_02048568,
    sub_0204857C,
    sub_02040D74,
    sub_02040EFC,
    sub_02040FA4,
    sub_020411C4,
    sub_020411D4,
    sub_020411F0,
    sub_0204120C,
    sub_02041254,
    sub_02041288,
    sub_02041320,
    sub_020413F0,
    sub_02041420,
    sub_02041464,
    sub_020414EC,
    sub_020415D0,
    sub_02041604,
    sub_02041684,
    sub_0204C8F0,
    sub_0204C914,
    sub_0204C968,
    sub_0204C9FC,
    sub_0204CA4C,
    sub_0204CA64,
    sub_0204C6C8,
    sub_0204C718,
    sub_0204C730,
    sub_0204C750,
    sub_0204C780,
    sub_0204C7AC,
    sub_0204E75C,
    sub_0204E7B4,
    sub_0204E80C,
    sub_0204E864,
    sub_0204E900,
    sub_0204E934,
    sub_0204E96C,
    sub_0204E970,
    sub_0204E974,
    sub_0204E9C8,
    sub_0204EA04,
    sub_0204EA58,
    sub_0204EA94,
    sub_0204EAE8,
    sub_0204EB24,
    sub_0204EB60,
    sub_0204EB9C,
    sub_0204EBE4,
    sub_0204EC20,
    sub_0204EC5C,
    sub_0204EC98,
    sub_0204ECF0,
    sub_0204ED2C,
    sub_0204ED68,
    sub_020416C8,
    sub_02041708,
    sub_0204174C,
    sub_0204CFFC,
    sub_0204D154,
    sub_0204D1DC,
    sub_0204D234,
    sub_0204D2D8,
    sub_02041C40,
    sub_02041CB8,
    sub_02041CBC,
    sub_02041CC0,
    sub_02041CC4,
    sub_0204E128,
    sub_02041D78,
    sub_02041E18,
    sub_02041E28,
    sub_02041E34,
    sub_020420A0,
    sub_020420CC,
    sub_02042124,
    sub_0204218C,
    sub_020422D4,
    sub_020422E8,
    sub_02042434,
    sub_02042480,
    sub_0204249C,
    sub_020424AC,
    sub_020424BC,
    sub_020424E8,
    sub_020424F8,
    sub_02042560,
    sub_020425C0,
    sub_020425E0,
    sub_02042628,
    sub_02048614,
    sub_020486E0,
    sub_02048750,
    sub_02048778,
    sub_020426E8,
    sub_02042718,
    sub_02042918,
    sub_02042960,
    sub_02042984,
    sub_02042AB0,
    sub_02042AE0,
    sub_02042B3C,
    sub_02042B6C,
    sub_02042BB8,
    sub_02042BE8,
    sub_02042C18,
    sub_02042CA8,
    sub_02042CB4,
    sub_02042CE4,
    sub_02042D84,
    sub_02042D9C,
    sub_02042DC4,
    sub_02042DDC,
    sub_020474F4,
    sub_02047528,
    sub_0204754C,
    sub_02047570,
    sub_020475F0,
    sub_02047628,
    sub_02047660,
    sub_0204769C,
    sub_020476D4,
    sub_020477D0,
    sub_02047874,
    sub_020478AC,
    sub_020478E4,
    sub_02047930,
    sub_020479C0,
    sub_02047A10,
    sub_02047A60,
    sub_02042E38,
    sub_02047AB0,
    sub_02047AE8,
    sub_02047B20,
    sub_02047B58,
    sub_02042DEC,
    sub_020487CC,
    sub_020487FC,
    sub_02042E64,
    sub_020488E0,
    sub_02048968,
    sub_020489F0,
    sub_02048A24,
    sub_02048A44,
    sub_02048A50,
    sub_02048A80,
    sub_02048AE0,
    sub_02048B0C,
    sub_02048B34,
    sub_02048B60,
    sub_02042F04,
    sub_02042F9C,
    sub_02043034,
    sub_02043040,
    sub_0204304C,
    sub_0204307C,
    sub_02046C7C,
    sub_02046CAC,
    sub_02046CFC,
    sub_02046E14,
    sub_02046E60,
    sub_02046EB4,
    sub_02046F08,
    sub_02046F5C,
    sub_02046FB8,
    sub_02046FF0,
    sub_0204700C,
    sub_02047048,
    sub_02047084,
    sub_020470C0,
    sub_020470F0,
    sub_0204712C,
    sub_0204715C,
    sub_0204718C,
    sub_020471BC,
    sub_02047200,
    sub_02047244,
    sub_020472E8,
    sub_02047318,
    sub_02047358,
    sub_02047274,
    sub_020473B8,
    sub_020473E4,
    sub_02047424,
    sub_02047438,
    sub_0204744C,
    sub_020474AC,
    sub_02047388,
    sub_020473A0,
    sub_0204DA20,
    sub_0204DA84,
    sub_02043080,
    sub_02043100,
    sub_02043130,
    sub_02043190,
    sub_020431C0,
    sub_020431F0,
    sub_02043220,
    sub_02043250,
    sub_02043254,
    sub_020432DC,
    sub_0204342C,
    sub_02043460,
    sub_0204346C,
    sub_0204347C,
    sub_020434A4,
    sub_020434C0,
    sub_020434D0,
    sub_020434EC,
    sub_02043540,
    sub_020421F4,
    sub_02042230,
    sub_0204226C,
    sub_020435A0,
    sub_020435AC,
    sub_020435DC,
    sub_02043608,
    sub_02043648,
    sub_02043694,
    sub_020436A0,
    sub_020436D0,
    sub_02043708,
    sub_02043978,
    sub_02043988,
    sub_02043748,
    sub_020437B4,
    sub_020437C4,
    sub_020437FC,
    sub_02043894,
    sub_0204391C,
    sub_02043964,
    sub_0204399C,
    sub_020439D8,
    sub_02043A30,
    sub_020438CC,
    sub_02046AD4,
    sub_02046B9C,
    sub_02046BF4,
    sub_02046C34,
    sub_02043BD4,
    sub_02043BE0,
    sub_02043C0C,
    sub_02043C3C,
    sub_02043C54,
    sub_02043C58,
    sub_02043CA4,
    sub_02043CB4,
    sub_02043A94,
    sub_02043AA4,
    sub_02043AE0,
    sub_02043BA0,
    sub_0204E3CC,
    sub_0204E3FC,
    sub_0204E410,
    sub_0204E440,
    sub_0204E45C,
    sub_0204E4A4,
    sub_0204E504,
    sub_0204E4D8,
    sub_0204E554,
    sub_0204E568,
    sub_0204E594,
    sub_0204E5A8,
    sub_0204E5BC,
    sub_0204E5E8,
    sub_0204E5FC,
    sub_0204E610,
    sub_0204E63C,
    sub_02043F6C,
    sub_02043FC4,
    sub_02043FDC,
    sub_02043FF4,
    sub_0204400C,
    sub_0204CA84,
    sub_0204CAA4,
    sub_02044024,
    sub_02044034,
    sub_02044044,
    sub_02044054,
    sub_02044064,
    sub_02044074,
    sub_02044084,
    sub_020440A0,
    sub_0204D840,
    sub_02042658,
    sub_020426A8,
    sub_02043CC4,
    sub_02047BB8,
    sub_02047C30,
    sub_0204B64C,
    sub_0204B680,
    sub_0204B6B4,
    sub_0204B6E8,
    sub_0204B71C,
    sub_0204B750,
    sub_0204B784,
    sub_0204B7CC,
    sub_0204B7FC,
    sub_02043D04,
    sub_02043D54,
    sub_02043DE4,
    sub_02043E1C,
    sub_02043E54,
    sub_02043EA4,
    sub_02043EF4,
    sub_02040868,
    sub_02040898,
    sub_02043F40,
    sub_020401A8,
    sub_02041790,
    sub_020417F0,
    sub_02041814,
    sub_02041A28,
    sub_02041AB0,
    sub_02041B24,
    sub_02041B68,
    sub_0204D08C,
    sub_0204D0E8,
    sub_0204D86C,
    sub_0204D8C4,
    sub_0204D94C,
    sub_0204D9C8,
    sub_02044168,
    sub_02044208,
    sub_02044254,
    sub_02044260,
    sub_02044288,
    sub_0204C938,
    sub_0204CB20,
    sub_0204CDA4,
    sub_0204CDBC,
    sub_0204CDC0,
    sub_0204CAD4,
    sub_0204CAEC,
    sub_0204CB80,
    sub_0204C9AC,
    sub_02044158,
    sub_0204CDC4,
    sub_0204CBD4,
    sub_0204CC24,
    sub_0204CC78,
    sub_020442B4,
    sub_020442E8,
    sub_0204431C,
    sub_02044328,
    sub_02044354,
    sub_02044374,
    sub_02044398,
    sub_020443D0,
    sub_0204D5CC,
    sub_0204D614,
    sub_0204D6E4,
    sub_0204CCB8,
    sub_020414C4,
    sub_0204CD44,
    sub_0204CD74,
    sub_0204DC98,
    sub_02044408,
    sub_02044444,
    sub_02044468,
    sub_020444BC,
    sub_02044510,
    sub_0204EDA4,
    sub_0204EDEC,
    sub_0204DACC,
    sub_0204DB74,
    sub_0204DBB8,
    sub_02047D00,
    sub_02044528,
    sub_02044558,
    sub_0204466C,
    sub_0204E650,
    sub_0204E6AC,
    sub_0204E704,
    sub_02044670,
    sub_020446B4,
    sub_02044710,
    sub_02044774,
    sub_020447A4,
    sub_02042330,
    sub_02042368,
    sub_020423BC,
    sub_0204950C,
    sub_020494DC,
    sub_0204951C,
    sub_02049538,
    sub_02049800,
    sub_02049880,
    sub_020498A8,
    sub_020498D0,
    sub_020499BC,
    sub_02049A68,
    sub_02049AB4,
    sub_02044908,
    sub_02044928,
    sub_02044980,
    sub_020447E8,
    sub_02044820,
    sub_02044858,
    sub_02044888,
    sub_020448B8,
    sub_020448C8,
    sub_0204DC18,
    sub_020448F0,
    sub_0204DC60,
    sub_0204E240,
    sub_0204E370,
    sub_0204E374,
    sub_0204E28C,
    sub_0204E2E0,
    sub_0204D3DC,
    sub_0204D398,
    sub_02041D88,
    sub_0203F734,
    sub_0203FD70,
    sub_0203FDBC,
    sub_0203FE20,
    sub_0203FE60,
    sub_0203FEAC,
    sub_0203FF34,
    sub_02042A60,
    sub_02042A8C,
    sub_02044A50,
    sub_020429F4,
    sub_02042A50,
    sub_0204229C,
    sub_02044AE8,
    sub_02041E64,
    sub_02041E84,
    sub_02041FAC,
    sub_02042028,
    sub_0204205C,
    sub_020400E8,
    sub_02044AF8,
    sub_02044B28,
    sub_02044B38,
    sub_02044B70,
    sub_02044BA0,
    sub_0204D4CC,
    sub_0204D540,
    sub_02044BB8,
    sub_0204CDDC,
    sub_0204CDF0,
    sub_0204CE1C,
    sub_02044BE8,
    sub_02044C64,
    sub_02044C90,
    sub_02044CBC,
    sub_02044CCC,
    sub_02048BD0,
    sub_0204EE38,
    sub_0204EE3C,
    sub_0204EEFC,
    sub_0204EF00,
    sub_0204EFA0,
    sub_0204EFA4,
    sub_0204EF40,
    sub_0204EFE8,
    sub_02044CE4,
    sub_02044D08,
    sub_02044D38,
    sub_02044D68,
    sub_02044D9C,
    sub_02044DB4,
    sub_02044DC8,
    sub_02044DDC,
    sub_0204DE94,
    sub_0204DF08,
    sub_0204DFB0,
    sub_0204E01C,
    sub_02047D68,
    sub_02044E40,
    sub_02044EDC,
    sub_02048DD8,
    sub_02048F74,
    sub_02049018,
    sub_020490F0,
    sub_02044F04,
    sub_02044F24,
    sub_02044FA4,
    sub_02044FCC,
    sub_0204500C,
    sub_0204B85C,
    sub_0204F02C,
    sub_0204F038,
    sub_0204F044,
    sub_0204F048,
    sub_02042810,
    sub_02042868,
    sub_020428D4,
    sub_0204504C,
    sub_0204D7AC,
    sub_0204D7D4,
    sub_02045068,
    sub_02045134,
    sub_02045160,
    sub_0204517C,
    sub_02045198,
    sub_020480A8,
    sub_020480D8,
    sub_02048254,
    sub_02047818,
    sub_0204521C,
    sub_0204C500,
    sub_0204C554,
    sub_0204C59C,
    sub_0204C638,
    sub_02046C6C,
    sub_02045250,
    sub_02045274,
    sub_0204528C,
    sub_020452B4,
    sub_020452C4,
    sub_020452D4,
    sub_02045304,
    sub_02045314,
    sub_02045324,
    sub_02047C68,
    sub_02045344,
    sub_02045384,
    sub_02045404,
    sub_020454C0,
    sub_020454D4,
    sub_020454E8,
    sub_0204550C,
    sub_02045530,
    sub_020455C4,
    sub_02045628,
    sub_02045650,
    sub_0203FFAC,
    sub_020456E8,
    sub_02045708,
    sub_02045720,
    sub_02042784,
    sub_02047CA0,
    sub_02045760,
    sub_0204C808,
    sub_02045798,
    sub_0204C8AC,
    sub_020457D0,
    sub_0204D470,
    sub_020457FC,
    sub_02045840,
    sub_02045850,
    sub_0204912C,
    sub_02045860,
    sub_02045900,
    sub_020458CC,
    sub_0204771C,
    sub_0204D74C,
    sub_02045938,
    sub_0204858C,
    sub_0204598C,
    sub_020459BC,
    sub_02045A88,
    sub_02045AB8,
    sub_02045AE8,
    sub_02045B18,
    sub_02045BA8,
    sub_02045C10,
    sub_02041F14,
    sub_02041FC4,
    sub_02041FDC,
    sub_02045C50,
    sub_02045CB8,
    sub_02045CFC,
    sub_02045D70,
    sub_02045E14,
    sub_02049B24,
    sub_02049B54,
    sub_02049B6C,
    sub_02049B8C,
    sub_02049BBC,
    sub_02049C00,
    sub_02049C44,
    sub_02049C94,
    sub_02043B48,
    sub_020409E8,
    sub_02045DB0,
    sub_02045E44,
    sub_0204887C,
    sub_02040DD8,
    sub_02045ECC,
    sub_02045E78,
    sub_02045EA0,
    sub_020417C0,
    sub_0204E378,
    sub_02045F04,
    sub_0204C7D8,
    sub_0204C854,
    sub_02045F48,
    sub_0204169C,
    sub_02046038,
    sub_0204163C,
    sub_020482D4,
    sub_02046050,
    sub_02046080,
    sub_0204608C,
    sub_02046098,
    sub_02047DAC,
    sub_020410F4,
    sub_020460A8,
    sub_02046108,
    sub_0204E094,
    sub_02048F98,
    sub_02040A78,
    sub_02043854,
    sub_02043C8C,
    sub_02048AB0,
    sub_02043330,
    sub_02046144,
    sub_02042D70,
    sub_02040064,
    sub_0204616C,
    sub_0204619C,
    sub_020461C8,
    sub_020461E0,
    sub_0204F04C,
    sub_020427B4,
    sub_020427E0,
    sub_02046340,
    sub_020440BC,
    sub_02046294,
    sub_0204DD28,
    sub_0204F13C,
    sub_020462DC,
    sub_020462F4,
    sub_0204F398,
    sub_02041860,
    sub_0204F360,
    sub_0204FAB4,
    sub_0204FCAC,
    sub_020418E0,
    sub_0204FBB4,
    sub_02043568,
    sub_02043578,
    sub_02046314,
    sub_0205003C,
    sub_020501D8,
    sub_02041984,
    sub_0205013C,
    sub_0204DE00,
    ov5_021F6454,
    sub_0204CF68,
    sub_0204CF8C,
    sub_0204CFC4,
    sub_020463B4,
    sub_020463E4,
    sub_02046400,
    ov5_021F77E8,
    ov5_021F7C04,
    sub_02041BA8,
    sub_02041C00,
    ov5_021F7844,
    ov5_021F789C,
    ov5_021F7998,
    ov5_021F82B8,
    ov5_021F8358,
    ov5_021F6B3C,
    sub_020474B8,
    sub_020440CC,
    ov5_021F6E50,
    sub_020440DC,
    sub_02047DE8,
    sub_0204645C,
    sub_0204777C,
    sub_020465AC,
    sub_02046624,
    sub_020485C0,
    sub_020485D4,
    sub_020485F4,
    sub_02046658,
    sub_0204666C,
    sub_020475B8,
    sub_0204E8BC,
    ov5_021F6FC0,
    ov5_021F71B8,
    ov5_021F7208,
    sub_020466A4,
    ov5_021F6E9C,
    ov5_021F6F44,
    ov5_021F7270,
    sub_02040CB8,
    sub_02045BE4,
    sub_02041364,
    sub_020413D8,
    sub_02046868,
    sub_02048FD0,
    sub_02048FE0,
    sub_02048FF0,
    sub_020420AC,
    ov5_021F72B8,
    sub_020422B8,
    sub_02046888,
    sub_020468AC,
    sub_020468E0,
    sub_02048BA8,
    sub_02041C8C,
    ov5_021F7414,
    sub_020440EC,
    sub_020433D8,
    sub_02043384,
    sub_020451F8,
    sub_020493C8,
    sub_0204E12C,
    ov5_021F6C60,
    ov5_021F6D80,
    sub_020468D0,
    sub_0204693C,
    sub_02046958,
    sub_0204697C,
    sub_0204698C,
    sub_0204F6D8,
    sub_0204F8A8,
    sub_0204F950,
    sub_02040C7C,
    sub_020469D0,
    sub_020493F4,
    sub_0204F9D4,
    sub_02046A4C,
    ov5_021F7418,
    ov5_021F7538,
    ov5_021F7604,
    sub_0204E1D0,
    ov5_021F7774,
    ov5_021F76A0,
    ov5_021F76D0,
    ov5_021F7788,
    sub_020449F4,
    sub_02044A28,
    sub_02042524,
    ov5_021F77A8,
    ov5_021F7704,
    ov5_021F7754,
    sub_02040D34,
    sub_02040D54,
    sub_02047E20,
    sub_02047E58,
    sub_02047E90,
    sub_02047EC8,
    sub_02047F00,
    sub_02047F38,
    sub_02047F80,
    sub_02047FB4,
    sub_02047FEC,
    sub_02048024,
    sub_02048060,
    sub_02048080
};

const u32 Unk_020EAB80 = NELEMS(Unk_020EAC58);

static BOOL sub_0203F6C4 (UnkStruct_0203E724 * param0)
{
    return 0;
}

static BOOL sub_0203F6C8 (UnkStruct_0203E724 * param0)
{
    return 0;
}

static BOOL sub_0203F6CC (UnkStruct_0203E724 * param0)
{
    sub_0203E76C(param0);
    return 0;
}

static BOOL sub_0203F6D8 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = sub_0203E838(param0);
    u16 v2 = sub_0203E838(param0);
    u16 * v3 = sub_0203F118(v0, v2);

    *v3 = v1;

    param0->unk_18[0] = v2;

    sub_0203E764(param0, sub_0203F70C);
    return 1;
}

static BOOL sub_0203F70C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = sub_0203F118(v0, param0->unk_18[0]);

    (*v1)--;

    if (*v1 == 0) {
        return 1;
    }

    return 0;
}

static BOOL sub_0203F734 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    return 0;
}

static BOOL sub_0203F74C (UnkStruct_0203E724 * param0)
{
    u8 v0 = (*((param0)->unk_08++));

    param0->unk_18[v0] = (*((param0)->unk_08++));
    return 0;
}

static BOOL sub_0203F764 (UnkStruct_0203E724 * param0)
{
    u8 v0;
    u32 v1;

    v0 = (*((param0)->unk_08++));
    v1 = sub_0203E850(param0);
    param0->unk_18[v0] = v1;

    return 0;
}

static BOOL sub_0203F780 (UnkStruct_0203E724 * param0)
{
    u8 v0;
    u8 * v1;

    v0 = (*((param0)->unk_08++));
    v1 = (u8 *)sub_0203E850(param0);
    param0->unk_18[v0] = *v1;

    return 0;
}

static BOOL sub_0203F79C (UnkStruct_0203E724 * param0)
{
    u8 * v0;
    u8 v1;

    v0 = (u8 *)sub_0203E850(param0);
    v1 = (*((param0)->unk_08++));
    *v0 = v1;

    return 0;
}

static BOOL sub_0203F7B4 (UnkStruct_0203E724 * param0)
{
    u8 * v0;
    u8 v1;

    v0 = (u8 *)sub_0203E850(param0);
    v1 = (*((param0)->unk_08++));
    *v0 = param0->unk_18[v1];

    return 0;
}

static BOOL sub_0203F7D0 (UnkStruct_0203E724 * param0)
{
    u8 v0, v1;

    v0 = (*((param0)->unk_08++));
    v1 = (*((param0)->unk_08++));
    param0->unk_18[v0] = param0->unk_18[v1];

    return 0;
}

static BOOL sub_0203F7F0 (UnkStruct_0203E724 * param0)
{
    u8 * v0;
    u8 * v1;

    v0 = (u8 *)sub_0203E850(param0);
    v1 = (u8 *)sub_0203E850(param0);
    *v0 = *v1;

    return 0;
}

static BOOL sub_0203F808 (u16 param0, u16 param1)
{
    if (param0 < param1) {
        return 0;
    } else if (param0 == param1) {
        return 1;
    }

    return 2;
}

static BOOL sub_0203F81C (UnkStruct_0203E724 * param0)
{
    u8 v0, v1;

    v0 = param0->unk_18[(*((param0)->unk_08++))];
    v1 = param0->unk_18[(*((param0)->unk_08++))];
    param0->unk_02 = sub_0203F808(v0, v1);

    return 0;
}

static BOOL sub_0203F84C (UnkStruct_0203E724 * param0)
{
    u8 v0, v1;

    v0 = param0->unk_18[(*((param0)->unk_08++))];
    v1 = (*((param0)->unk_08++));
    param0->unk_02 = sub_0203F808(v0, v1);

    return 0;
}

static BOOL sub_0203F874 (UnkStruct_0203E724 * param0)
{
    u8 v0, v1;

    v0 = param0->unk_18[(*((param0)->unk_08++))];
    v1 = *(u8 *)sub_0203E850(param0);
    param0->unk_02 = sub_0203F808(v0, v1);

    return 0;
}

static BOOL sub_0203F89C (UnkStruct_0203E724 * param0)
{
    u8 v0, v1;

    v0 = *(u8 *)sub_0203E850(param0);
    v1 = param0->unk_18[(*((param0)->unk_08++))];
    param0->unk_02 = sub_0203F808(v0, v1);

    return 0;
}

static BOOL sub_0203F8C4 (UnkStruct_0203E724 * param0)
{
    u8 v0, v1;

    v0 = *(u8 *)sub_0203E850(param0);
    v1 = (*((param0)->unk_08++));
    param0->unk_02 = sub_0203F808(v0, v1);

    return 0;
}

static BOOL sub_0203F8E0 (UnkStruct_0203E724 * param0)
{
    u8 v0, v1;

    v0 = *(u8 *)sub_0203E850(param0);
    v1 = *(u8 *)sub_0203E850(param0);
    param0->unk_02 = sub_0203F808(v0, v1);

    return 0;
}

static BOOL sub_0203F900 (UnkStruct_0203E724 * param0)
{
    u16 * v0;
    u16 v1, v2;

    v0 = inline_0204FCAC(param0);
    v1 = *v0;
    v2 = sub_0203E838(param0);

    param0->unk_02 = sub_0203F808(v1, v2);
    return 0;
}

static BOOL sub_0203F92C (UnkStruct_0203E724 * param0)
{
    u16 * v0;
    u16 * v1;

    v0 = inline_0204FCAC(param0);
    v1 = inline_0204FCAC(param0);
    param0->unk_02 = sub_0203F808(*v0, *v1);

    return 0;
}

static BOOL sub_0203F964 (UnkStruct_0203E724 * param0)
{
    u16 v0;
    FieldSystem * v1 = param0->unk_34;
    u8 * v2 = sub_0203F098(v1, 7);
    UnkStruct_0203E724 ** v3 = sub_0203F098(v1, 14);

    v0 = sub_0203E838(param0);
    *v3 = sub_0203EAB8(v1, v0);
    (*v2)++;

    return 1;
}

static BOOL sub_0203F99C (UnkStruct_0203E724 * param0)
{
    u16 v0;
    FieldSystem * v1 = param0->unk_34;
    u8 * v2 = sub_0203F098(v1, 5);
    u8 * v3 = sub_0203F098(v1, 7);
    UnkStruct_0203E724 ** v4 = sub_0203F098(v1, 14);

    v0 = sub_0203E838(param0);
    *v2 = 1;
    *v4 = sub_0203EAB8(v1, v0);
    (*v3)++;

    sub_0203E764(param0, sub_0203F9EC);
    return 1;
}

static BOOL sub_0203F9EC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u8 * v1 = sub_0203F098(v0, 5);

    if (*v1 == 0) {
        return 1;
    }

    return 0;
}

static BOOL sub_0203FA08 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u8 * v1 = sub_0203F098(v0, 5);

    *v1 = 0;
    return 0;
}

static BOOL sub_0203FA1C (UnkStruct_0203E724 * param0)
{
    s32 v0;

    v0 = (s32)sub_0203E850(param0);
    sub_0203E818(param0, (u8 *)(param0->unk_08 + v0));

    return 0;
}

static BOOL sub_0203FA34 (UnkStruct_0203E724 * param0)
{
    u8 v0;
    s32 v1;
    LocalMapObject ** v2;
    FieldSystem * v3 = param0->unk_34;

    v2 = sub_0203F098(v3, 10);
    v0 = (*((param0)->unk_08++));
    v1 = (s32)sub_0203E850(param0);

    if (sub_02062910(*v2) == v0) {
        sub_0203E818(param0, (u8 *)(param0->unk_08 + v1));
    }

    return 0;
}

static BOOL sub_0203FA6C (UnkStruct_0203E724 * param0)
{
    u8 v0;
    s32 v1;
    u32 v2;

    v2 = sub_02050A6C(param0->unk_28);
    v0 = (*((param0)->unk_08++));
    v1 = (s32)sub_0203E850(param0);

    if (v2 == v0) {
        sub_0203E818(param0, (u8 *)(param0->unk_08 + v1));
    }

    return 0;
}

static BOOL sub_0203FA9C (UnkStruct_0203E724 * param0)
{
    u8 v0;
    s32 v1;
    int * v2;
    FieldSystem * v3 = param0->unk_34;

    v2 = sub_0203F098(v3, 9);
    v0 = (*((param0)->unk_08++));
    v1 = (s32)sub_0203E850(param0);

    if (*v2 == v0) {
        sub_0203E818(param0, (u8 *)(param0->unk_08 + v1));
    }

    return 0;
}

static BOOL sub_0203FAD0 (UnkStruct_0203E724 * param0)
{
    s32 v0 = (s32)sub_0203E850(param0);

    sub_0203E81C(param0, (u8 *)(param0->unk_08 + v0));
    return 0;
}

static BOOL sub_0203FAE8 (UnkStruct_0203E724 * param0)
{
    sub_0203E82C(param0);
    return 0;
}

static BOOL sub_0203FAF4 (UnkStruct_0203E724 * param0)
{
    u8 v0;
    s32 v1;

    v0 = (*((param0)->unk_08++));
    v1 = (s32)sub_0203E850(param0);

    if (Unk_020EABA6[v0][param0->unk_02] == 1) {
        sub_0203E818(param0, (u8 *)(param0->unk_08 + v1));
    }

    return 0;
}

static BOOL sub_0203FB28 (UnkStruct_0203E724 * param0)
{
    u8 v0;
    s32 v1;

    v0 = (*((param0)->unk_08++));
    v1 = (s32)sub_0203E850(param0);

    if (Unk_020EABA6[v0][param0->unk_02] == 1) {
        sub_0203E81C(param0, (u8 *)(param0->unk_08 + v1));
    }

    return 0;
}

static BOOL sub_0203FB5C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = sub_0203E838(param0);

    sub_0203F19C(v0, v1);
    return 0;
}

static BOOL sub_0203FB74 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = sub_0203E838(param0);

    sub_0203F1B0(v0, v1);
    return 0;
}

static BOOL sub_0203FB8C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = sub_0203E838(param0);

    param0->unk_02 = sub_0203F188(v0, v1);
    return 0;
}

static BOOL sub_0203FBA8 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = inline_0204FCAC(param0);
    u16 * v2 = inline_0204FCAC(param0);

    *v2 = sub_0203F188(v0, (*v1));
    return 0;
}

static BOOL sub_0203FBE4 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = inline_0204FCAC(param0);

    sub_0203F19C(v0, (*v1));
    return 0;
}

static BOOL sub_0203FC0C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);

    sub_0203F2BC(v0, v1);
    return 0;
}

static BOOL sub_0203FC30 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);

    sub_0203F2D8(v0, v1);
    return 0;
}

static BOOL sub_0203FC54 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);

    param0->unk_02 = sub_0203F2A0(v0, v1);
    return 0;
}

static BOOL sub_0203FC7C (UnkStruct_0203E724 * param0)
{
    u16 * v0;
    u16 v1;

    v0 = inline_0204FCAC(param0);
    *v0 += inline_02049538(param0);

    return 0;
}

static BOOL sub_0203FCAC (UnkStruct_0203E724 * param0)
{
    u16 * v0;

    v0 = inline_0204FCAC(param0);
    *v0 -= inline_02049538(param0);

    return 0;
}

static BOOL sub_0203FCDC (UnkStruct_0203E724 * param0)
{
    u16 * v0;

    v0 = inline_0204FCAC(param0);
    *v0 = sub_0203E838(param0);

    return 0;
}

static BOOL sub_0203FD00 (UnkStruct_0203E724 * param0)
{
    u16 * v0;
    u16 * v1;

    v0 = inline_0204FCAC(param0);
    v1 = inline_0204FCAC(param0);
    *v0 = *v1;

    return 0;
}

static BOOL sub_0203FD30 (UnkStruct_0203E724 * param0)
{
    u16 * v0;

    v0 = inline_0204FCAC(param0);
    *v0 = inline_02049538(param0);

    return 0;
}

static BOOL sub_0203FD5C (UnkStruct_0203E724 * param0)
{
    u8 v0 = (*((param0)->unk_08++));

    ov5_021DD498(param0, param0->unk_2C, v0);
    return 0;
}

static BOOL sub_0203FD70 (UnkStruct_0203E724 * param0)
{
    MessageLoader * v0;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);

    v0 = MessageLoader_Init(1, 26, v1, 32);

    ov5_021DD498(param0, v0, v2);
    MessageLoader_Free(v0);

    return 0;
}

static BOOL sub_0203FDBC (UnkStruct_0203E724 * param0)
{
    MessageLoader * v0;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);

    v0 = MessageLoader_Init(1, 26, v1, 32);
    ov5_021DD444(param0, v0, v2, 1, NULL);

    MessageLoader_Free(v0);
    sub_0203E764(param0, sub_02040014);

    return 1;
}

static BOOL sub_0203FE20 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);
    u16 v1 = sub_0203E838(param0);
    u16 v2 = sub_0203E838(param0);
    u16 v3 = sub_0203E838(param0);

    ov5_021DD4CC(param0, v0, v1, v2, v3, 0xFF);
    return 0;
}

static BOOL sub_0203FE60 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);
    u16 v1 = sub_0203E838(param0);
    u16 v2 = sub_0203E838(param0);
    u16 v3 = sub_0203E838(param0);

    ov5_021DD4CC(param0, v0, v1, v2, v3, 1);
    sub_0203E764(param0, sub_02040014);

    return 1;
}

static BOOL sub_0203FEAC (UnkStruct_0203E724 * param0)
{
    u16 * v0;
    UnkStruct_0204AFC4 * v1;
    MessageLoader * v2;
    u16 v3 = (*((param0)->unk_08++));

    v1 = param0->unk_34->unk_AC;

    if (v1 == NULL) {
        return 0;
    }

    v0 = v1->unk_78[v3].unk_00.unk_18;

    if (v0[0] == 0xFFFF) {
        v2 = MessageLoader_Init(1, 26, 613, 32);
        ov5_021DD444(param0, v2, v0[1], 1, NULL);
        MessageLoader_Free(v2);
    } else {
        ov5_021DD4CC(param0, v0[0], v0[1], v0[2], v0[3], 1);
    }

    sub_0203E764(param0, sub_02040014);
    return 1;
}

static BOOL sub_0203FF34 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u8 v1 = (*((param0)->unk_08++));
    u16 v2 = inline_02049538(param0);
    u16 v3 = sub_0203E838(param0);
    u8 v4 = (*((param0)->unk_08++));
    u8 v5;
    StringFormatter * v6;

    v5 = 0;
    v6 = sub_0204AEE8(v0->unk_0C, v2, v3, v4, &v5);

    ov5_021DD530(param0, v6, v1 + v5, 1);
    sub_0200B3F0(v6);
    sub_0203E764(param0, sub_02040014);

    return 1;
}

static BOOL sub_0203FFAC (UnkStruct_0203E724 * param0)
{
    UnkStruct_ov5_021DD42C v0;
    u16 v1 = sub_0203E838(param0);

    ov5_021DD42C(&v0, param0);
    v0.unk_02 = 3;

    ov5_021DD444(param0, param0->unk_2C, v1, 0, &v0);
    sub_0203E764(param0, sub_02040014);

    return 1;
}

static BOOL sub_0203FFE8 (UnkStruct_0203E724 * param0)
{
    u8 v0 = (*((param0)->unk_08++));

    ov5_021DD444(param0, param0->unk_2C, (u8)v0, 1, NULL);
    sub_0203E764(param0, sub_02040014);

    return 1;
}

static BOOL sub_02040014 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u8 * v1 = sub_0203F098(v0, 3);

    return sub_0205DA04(*v1);
}

static BOOL sub_02040028 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);

    ov5_021DD444(param0, param0->unk_2C, (u8)v0, 1, NULL);
    sub_0203E764(param0, sub_02040014);

    return 1;
}

static BOOL sub_02040064 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    UnkStruct_ov5_021DD42C v1;

    ov5_021DD42C(&v1, param0);

    v1.unk_01 = 1;

    ov5_021DD444(param0, param0->unk_2C, (u8)v0, 1, &v1);
    sub_0203E764(param0, sub_02040014);

    return 1;
}

static BOOL sub_020400AC (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);

    ov5_021DD444(param0, param0->unk_2C, (u8)v0, 0, NULL);
    sub_0203E764(param0, sub_02040014);

    return 1;
}

static BOOL sub_020400E8 (UnkStruct_0203E724 * param0)
{
    LocalMapObject ** v0 = sub_0203F098(param0->unk_34, 10);
    u8 v1 = sub_02062950(*v0);

    ov5_021DD444(param0, param0->unk_2C, (u8)v1, 1, NULL);
    sub_0203E764(param0, sub_02040014);

    return 1;
}

static BOOL sub_02040124 (UnkStruct_0203E724 * param0)
{
    u8 v0 = (*((param0)->unk_08++));

    if (CommSys_IsInitialized() == 0) {
        ov5_021DD444(param0, param0->unk_2C, v0, 1, NULL);
    } else {
        UnkStruct_ov5_021DD42C v1;

        ov5_021DD42C(&v1, param0);

        v1.unk_00 = 1;
        v1.unk_01 = 1;

        ov5_021DD444(param0, param0->unk_2C, v0, 0, &v1);
    }

    sub_0203E764(param0, sub_02040014);
    return 1;
}

static BOOL sub_02040180 (UnkStruct_0203E724 * param0)
{
    sub_0203E764(param0, sub_02040190);
    return 1;
}

static BOOL sub_02040190 (UnkStruct_0203E724 * param0)
{
    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        return 1;
    }

    return 0;
}

static BOOL sub_020401A8 (UnkStruct_0203E724 * param0)
{
    param0->unk_18[0] = inline_02049538(param0);
    sub_0203E764(param0, sub_020401D0);
    return 1;
}

static BOOL sub_020401D0 (UnkStruct_0203E724 * param0)
{
    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        return 1;
    }

    param0->unk_18[0]--;

    if (param0->unk_18[0] == 0) {
        return 1;
    }

    return 0;
}

static BOOL sub_020401F4 (UnkStruct_0203E724 * param0)
{
    sub_0203E764(param0, sub_02040204);
    return 1;
}

static BOOL sub_02040204 (UnkStruct_0203E724 * param0)
{
    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        return 1;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_UP) {
        Player_SetDir(param0->unk_34->playerAvatar, 0);
    } else if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        Player_SetDir(param0->unk_34->playerAvatar, 1);
    } else if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
        Player_SetDir(param0->unk_34->playerAvatar, 2);
    } else if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
        Player_SetDir(param0->unk_34->playerAvatar, 3);
    } else if (gCoreSys.pressedKeys & PAD_BUTTON_X) {
        sub_0203F0C0(param0->unk_34);
    } else {
        return 0;
    }

    return 1;
}

static BOOL sub_02040284 (UnkStruct_0203E724 * param0)
{
    sub_0203E764(param0, sub_02040294);
    return 1;
}

static BOOL sub_02040294 (UnkStruct_0203E724 * param0)
{
    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        return 1;
    }

    if (gCoreSys.pressedKeys & (PAD_KEY_UP | PAD_KEY_DOWN | PAD_KEY_LEFT | PAD_KEY_RIGHT)) {
        return 1;
    }

    return 0;
}

static BOOL sub_020402B4 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u8 * v1 = sub_0203F098(v0, 6);

    sub_0205D8F4(v0->unk_08, sub_0203F098(v0, 1), 3);
    sub_0205D944(sub_0203F098(v0, 1), sub_02025E44(param0->unk_34->unk_0C));

    *v1 = 1;
    return 0;
}

static BOOL sub_020402FC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    Window * v1 = sub_0203F098(v0, 1);
    u8 * v2 = sub_0203F098(v0, 6);

    sub_0200E084(v1, 0);
    BGL_DeleteWindow(v1);

    *v2 = 0;
    return 0;
}

static BOOL sub_0204032C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    Window * v1 = sub_0203F098(v0, 1);
    u8 * v2 = sub_0203F098(v0, 6);

    BGL_DeleteWindow(v1);

    *v2 = 0;
    return 0;
}

static BOOL sub_02040354 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = sub_0203F098(v0, 49);
    u16 * v2 = sub_0203F098(v0, 45);
    u16 * v3 = sub_0203F098(v0, 50);
    u16 * v4 = sub_0203F098(v0, 51);
    u16 * v5 = sub_0203F098(v0, 46);
    u16 * v6 = sub_0203F098(v0, 52);

    *v1 = (*((param0)->unk_08++));
    *v2 = (*((param0)->unk_08++));
    *v3 = (*((param0)->unk_08++));
    *v4 = (*((param0)->unk_08++));
    *v5 = (*((param0)->unk_08++));
    *v6 = (*((param0)->unk_08++));

    sub_0203E764(param0, sub_020403EC);

    return 1;
}

static BOOL sub_020403EC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = sub_0203F098(v0, 49);
    u16 * v2 = sub_0203F098(v0, 50);
    u16 * v3 = sub_0203F098(v0, 51);
    u16 * v4 = sub_0203F098(v0, 52);
    u16 * v5 = sub_0203F098(v0, 45);
    u16 * v6 = sub_0203F098(v0, 46);

    if ((*v5 == 0) && (*v6 == 0)) {
        return 1;
    }

    if (*v1 != 0) {
        if (*v2 == 0) {
            sub_02019184(v0->unk_08, 3, 1, *v1);
        } else {
            sub_02019184(v0->unk_08, 3, 2, *v1);
        }
    }

    if (*v3 != 0) {
        if (*v4 == 0) {
            sub_02019184(v0->unk_08, 3, 4, *v3);
        } else {
            sub_02019184(v0->unk_08, 3, 5, *v3);
        }
    }

    if (*v5 != 0) {
        (*v5)--;
    }

    if (*v6 != 0) {
        (*v6)--;
    }

    return 0;
}

static BOOL sub_020404A4 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0;
    Strbuf ** v1;
    Strbuf ** v2;
    StringFormatter ** v3;
    u16 v4;
    u16 v5;
    u8 v6;
    u8 v7;

    v0 = param0->unk_34;
    v1 = sub_0203F098(v0, 17);
    v2 = sub_0203F098(v0, 16);
    v3 = sub_0203F098(v0, 15);
    v7 = (*((param0)->unk_08++));
    v6 = (*((param0)->unk_08++));
    v4 = sub_0203E838(param0);
    v5 = sub_0203E838(param0);

    if (v4 == 0) {
        LocalMapObject ** v8 = sub_0203F098(v0, 10);

        v4 = sub_020629D8(*v8, 0);
    }

    ov5_021E1B38(v0->unk_64, v6, v4);
    ov5_021E1B40(v0->unk_64, 1);
    ov5_021E1B68(v0);

    MessageLoader_GetStrbuf(param0->unk_2C, v7, *v1);
    StringFormatter_Format(*v3, *v2, *v1);
    PrintStringSimple(ov5_021E1B50(v0->unk_64), 1, *v2, 0, 0, 0, NULL);

    return 1;
}

static BOOL sub_02040554 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0;
    u16 v1;
    u8 v2;

    v0 = param0->unk_34;
    v2 = (*((param0)->unk_08++));
    v1 = sub_0203E838(param0);

    ov5_021E1B38(v0->unk_64, v2, v1);
    ov5_021E1B40(v0->unk_64, 1);

    return 1;
}

static BOOL sub_02040580 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0;
    u8 v1;

    v0 = param0->unk_34;
    v1 = (*((param0)->unk_08++));

    ov5_021E1B40(v0->unk_64, v1);

    return 1;
}

static BOOL sub_0204059C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    if (ov5_021E1B58(v0->unk_64) == 1) {
        return 0;
    }

    sub_0203E764(param0, sub_020405C4);
    return 1;
}

static BOOL sub_020405C4 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    if (ov5_021E1B58(v0->unk_64) == 1) {
        return 1;
    }

    return 0;
}

static BOOL sub_020405DC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u8 * v1 = sub_0203F098(v0, 3);
    Strbuf ** v2 = sub_0203F098(v0, 17);
    Strbuf ** v3 = sub_0203F098(v0, 16);
    StringFormatter ** v4 = sub_0203F098(v0, 15);
    u8 v5 = (*((param0)->unk_08++));
    u16 v6 = sub_0203E838(param0);

    MessageLoader_GetStrbuf(param0->unk_2C, v5, *v2);
    StringFormatter_Format(*v4, *v3, *v2);

    *v1 = sub_0205D994(ov5_021E1B50(v0->unk_64), *v3, sub_02025E44(param0->unk_34->unk_0C), 1);

    param0->unk_18[0] = v6;
    sub_0203E764(param0, sub_02040670);

    return 1;
}

static BOOL sub_02040670 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u8 * v1 = sub_0203F098(v0, 3);
    u16 * v2 = sub_0203F118(v0, param0->unk_18[0]);
    u8 v3 = ov5_021E1B54(v0->unk_64);
    int v4 = 0xffff;

    if (sub_0205DA04(*v1) == 1) {
        *v2 = 2;
        return 1;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_UP) {
        v4 = 0;
    } else if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        v4 = 1;
    } else if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
        v4 = 2;
    } else if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
        v4 = 3;
    }

    if (v4 != 0xffff) {
        sub_0201D730(*v1);
        Player_SetDir(param0->unk_34->playerAvatar, v4);
        *v2 = 0;
        return 1;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_X) {
        sub_0201D730(*v1);
        *v2 = 1;
        return 1;
    }

    return 0;
}

static BOOL sub_02040714 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);

    param0->unk_18[0] = v0;
    sub_0203E764(param0, sub_02040730);

    return 1;
}

static BOOL sub_02040730 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = sub_0203F118(v0, param0->unk_18[0]);
    int v2 = 0xffff;

    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        *v1 = 0;
        return 1;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_UP) {
        v2 = 0;
    } else if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        v2 = 1;
    } else if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
        v2 = 2;
    } else if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
        v2 = 3;
    }

    if (v2 != 0xffff) {
        Player_SetDir(param0->unk_34->playerAvatar, v2);
        *v1 = 0;
        return 1;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_X) {
        *v1 = 1;
        return 1;
    }

    return 0;
}

static BOOL sub_020407B4 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    sub_0203F0C0(v0);
    return 0;
}

static BOOL sub_020407C4 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    UIControlData ** v1 = sub_0203F098(v0, 2);
    u16 v2 = sub_0203E838(param0);

    sub_0200DAA4(v0->unk_08, 3, 1024 - (18 + 12) - 9, 11, 0, 4);

    *v1 = sub_02002100(v0->unk_08, &Unk_020EAB84, 1024 - (18 + 12) - 9, 11, 4);
    param0->unk_18[0] = v2;

    sub_0203E764(param0, sub_02040824);

    return 1;
}

static BOOL sub_02040824 (UnkStruct_0203E724 * param0)
{
    u32 v0;
    FieldSystem * v1 = param0->unk_34;
    UIControlData ** v2 = sub_0203F098(v1, 2);
    u16 * v3 = sub_0203F118(v1, param0->unk_18[0]);

    v0 = sub_02002114(*v2, 4);

    if (v0 == 0xffffffff) {
        return 0;
    }

    if (v0 == 0) {
        *v3 = 0;
    } else {
        *v3 = 1;
    }

    return 1;
}

static BOOL sub_02040868 (UnkStruct_0203E724 * param0)
{
    void ** v0;
    Window * v1 = sub_0203F098(param0->unk_34, 1);

    v0 = sub_0203F098(param0->unk_34, 18);
    *v0 = sub_0200E7FC(v1, 1024 - (18 + 12));

    return 0;
}

static BOOL sub_02040898 (UnkStruct_0203E724 * param0)
{
    void ** v0;

    v0 = sub_0203F098(param0->unk_34, 18);
    DeleteWaitDial(*v0);

    return 0;
}

static BOOL sub_020408B0 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    UnkStruct_ov5_021DC1A4 ** v1 = sub_0203F098(v0, 0);
    StringFormatter ** v2 = sub_0203F098(v0, 15);
    u8 v3 = (*((param0)->unk_08++));
    u8 v4 = (*((param0)->unk_08++));
    u8 v5 = (*((param0)->unk_08++));
    u8 v6 = (*((param0)->unk_08++));
    u16 v7 = sub_0203E838(param0);

    *v1 = ov5_021DC150(v0, v3, v4, v5, v6, sub_0203F118(v0, v7), *v2, sub_0203F098(param0->unk_34, 1), NULL);
    param0->unk_18[0] = v7;

    return 1;
}

static BOOL sub_02040938 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    UnkStruct_ov5_021DC1A4 ** v1 = sub_0203F098(v0, 0);
    StringFormatter ** v2 = sub_0203F098(v0, 15);
    u8 v3 = (*((param0)->unk_08++));
    u8 v4 = (*((param0)->unk_08++));
    u8 v5 = (*((param0)->unk_08++));
    u8 v6 = (*((param0)->unk_08++));
    u16 v7 = sub_0203E838(param0);

    *v1 = ov5_021DC150(v0, v3, v4, v5, v6, sub_0203F118(v0, v7), *v2, sub_0203F098(param0->unk_34, 1), param0->unk_2C);
    param0->unk_18[0] = v7;

    return 1;
}

static BOOL sub_020409C0 (UnkStruct_0203E724 * param0)
{
    u8 v0, v1;
    FieldSystem * v2 = param0->unk_34;
    UnkStruct_ov5_021DC1A4 ** v3 = sub_0203F098(v2, 0);

    v0 = (*((param0)->unk_08++));
    v1 = (*((param0)->unk_08++));

    ov5_021DC1A4(*v3, v0, v1);
    return 0;
}

static BOOL sub_020409E8 (UnkStruct_0203E724 * param0)
{
    u16 v0, v1;
    FieldSystem * v2 = param0->unk_34;
    UnkStruct_ov5_021DC1A4 ** v3 = sub_0203F098(v2, 0);

    v0 = inline_02049538(param0);
    v1 = inline_02049538(param0);

    ov5_021DC1A4(*v3, v0, v1);
    return 0;
}

static BOOL sub_02040A2C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    UnkStruct_ov5_021DC1A4 ** v1 = sub_0203F098(v0, 0);

    ov5_021DC1AC(*v1);
    sub_0203E764(param0, sub_02040A50);

    return 1;
}

static BOOL sub_02040A50 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = sub_0203F118(v0, param0->unk_18[0]);

    if (*v1 == 0xeeee) {
        return 0;
    }

    return 1;
}

static BOOL sub_02040A78 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    UnkStruct_ov5_021DC1A4 ** v1 = sub_0203F098(v0, 0);

    ov5_021DC1AC(*v1);
    sub_0203E764(param0, sub_02040A9C);

    return 1;
}

static BOOL sub_02040A9C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = sub_0203F118(v0, param0->unk_18[0]);
    UnkStruct_ov5_021DC1A4 ** v2 = sub_0203F098(v0, 0);

    if (*v1 == 0xeeee) {
        if (sub_0205B9E8(v0->unk_7C)) {
            *v1 = 8;
            ov5_021DC424(*v2);
            return 1;
        }

        return 0;
    }

    return 1;
}

static BOOL sub_02040AE8 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    UnkStruct_ov5_021DC1A4 ** v1 = sub_0203F098(v0, 0);
    StringFormatter ** v2 = sub_0203F098(v0, 15);
    u8 v3 = (*((param0)->unk_08++));
    u8 v4 = (*((param0)->unk_08++));
    u8 v5 = (*((param0)->unk_08++));
    u8 v6 = (*((param0)->unk_08++));
    u16 v7 = sub_0203E838(param0);

    *v1 = ov5_021DC48C(v0, v3, v4, v5, v6, sub_0203F118(v0, v7), *v2, sub_0203F098(param0->unk_34, 1), NULL);
    param0->unk_18[0] = v7;

    return 1;
}

static BOOL sub_02040B70 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    UnkStruct_ov5_021DC1A4 ** v1 = sub_0203F098(v0, 0);
    StringFormatter ** v2 = sub_0203F098(v0, 15);
    u8 v3 = (*((param0)->unk_08++));
    u8 v4 = (*((param0)->unk_08++));
    u8 v5 = (*((param0)->unk_08++));
    u8 v6 = (*((param0)->unk_08++));
    u16 v7 = sub_0203E838(param0);

    *v1 = ov5_021DC48C(v0, v3, v4, v5, v6, sub_0203F118(v0, v7), *v2, sub_0203F098(param0->unk_34, 1), param0->unk_2C);
    param0->unk_18[0] = v7;

    return 1;
}

static BOOL sub_02040BF8 (UnkStruct_0203E724 * param0)
{
    UnkStruct_ov5_021DC1A4 ** v0 = sub_0203F098(param0->unk_34, 0);
    u8 v1 = inline_02049538(param0);
    u8 v2 = inline_02049538(param0);
    u8 v3 = inline_02049538(param0);

    ov5_021DC4B0(*v0, v1, v2, v3);
    return 0;
}

static BOOL sub_02040C58 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    UnkStruct_ov5_021DC1A4 ** v1 = sub_0203F098(v0, 0);

    ov5_021DC4B8(*v1);

    sub_0203E764(param0, sub_02040A50);
    return 1;
}

static BOOL sub_02040C7C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    UnkStruct_ov5_021DC1A4 ** v1 = sub_0203F098(v0, 0);
    u16 v2 = inline_02049538(param0);

    ov5_021DC528(*v1, v2);
    sub_0203E764(param0, sub_02040A50);

    return 1;
}

static BOOL sub_02040CB8 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    UnkStruct_ov5_021DC1A4 ** v1 = sub_0203F098(v0, 0);
    u16 * v2 = inline_0204FCAC(param0);
    u16 * v3 = inline_0204FCAC(param0);

    ov5_021DC600(*v1, v2, v3);
    sub_0203E764(param0, sub_02040A50);

    return 1;
}

static BOOL sub_02040D08 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    UnkStruct_ov5_021DC1A4 ** v1 = sub_0203F098(v0, 0);
    u8 v2 = (*((param0)->unk_08++));

    ov5_021DCD94(*v1, v2);
    sub_0203E764(param0, sub_02040A50);

    return 1;
}

static BOOL sub_02040D34 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    UnkStruct_ov5_021DC1A4 ** v1 = sub_0203F098(v0, 0);
    u8 v2 = (*((param0)->unk_08++));

    ov5_021DD3F4(*v1, (BOOL)v2);
    return 1;
}

static BOOL sub_02040D54 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    UnkStruct_ov5_021DC1A4 ** v1 = sub_0203F098(v0, 0);
    u8 v2 = (*((param0)->unk_08++));

    ov5_021DD410(*v1, (BOOL)v2);
    return 1;
}

static BOOL sub_02040D74 (UnkStruct_0203E724 * param0)
{
    u8 * v0;
    SysTask * v1;
    u8 * v2;
    LocalMapObject ** v3;
    LocalMapObject * v4;
    u16 v5 = inline_02049538(param0);
    u32 v6 = (s32)sub_0203E850(param0);

    v4 = sub_02040ED4(param0->unk_34, v5);

    if (v4 == NULL) {
        GF_ASSERT(FALSE);
        return 0;
    }

    v0 = (u8 *)(param0->unk_08 + v6);
    v1 = sub_02065700(v4, (UnkStruct_ov5_021F8E3C *)v0);
    v2 = sub_0203F098(param0->unk_34, 4);
    (*v2)++;

    sub_02040F28(param0->unk_34, v1, NULL);

    return 0;
}

static BOOL sub_02040DD8 (UnkStruct_0203E724 * param0)
{
    u8 * v0;
    SysTask * v1;
    u8 * v2;
    LocalMapObject ** v3;
    LocalMapObject * v4;
    u16 v5 = inline_02049538(param0);
    u16 v6 = inline_02049538(param0);
    u16 v7 = inline_02049538(param0);
    u16 v8, v9;
    UnkStruct_ov5_021F8E3C * v10;
    int v11;

    v4 = sub_02040ED4(param0->unk_34, v5);

    if (v4 == NULL) {
        GF_ASSERT(FALSE);
    }

    v10 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021F8E3C) * 64);
    v8 = sub_02063020(v4);
    v9 = sub_02063040(v4);
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

    v1 = sub_02065700(v4, v10);
    v2 = sub_0203F098(param0->unk_34, 4);
    (*v2)++;

    sub_02040F28(param0->unk_34, v1, v10);

    return 0;
}

static LocalMapObject * sub_02040ED4 (FieldSystem * param0, int param1)
{
    LocalMapObject ** v0;
    LocalMapObject * v1;

    if (param1 == 0xf2) {
        v1 = sub_02062570(param0->unk_38, 0x30);
    } else if (param1 == 0xf1) {
        v0 = sub_0203F098(param0, 11);
        v1 = *v0;
    } else {
        v1 = sub_0206251C(param0->unk_38, param1);
    }

    return v1;
}

static BOOL sub_02040EFC (UnkStruct_0203E724 * param0)
{
    sub_0203E764(param0, sub_02040F0C);
    return 1;
}

static BOOL sub_02040F0C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u8 * v1 = sub_0203F098(v0, 4);

    if (*v1 == 0) {
        return 1;
    }

    return 0;
}

static void sub_02040F28 (FieldSystem * param0, SysTask * param1, UnkStruct_ov5_021F8E3C * param2)
{
    UnkStruct_02040F28 * v0 = NULL;

    v0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_02040F28));

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
        return;
    }

    v0->unk_0C = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_00 = SysTask_Start(sub_02040F5C, v0, 0);

    return;
}

static void sub_02040F5C (SysTask * param0, void * param1)
{
    UnkStruct_02040F28 * v0;
    u8 * v1;

    v0 = (UnkStruct_02040F28 *)param1;
    v1 = sub_0203F098(v0->unk_0C, 4);

    if (sub_0206574C(v0->unk_04) == 1) {
        sub_02065758(v0->unk_04);
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

static BOOL sub_02040FA4 (UnkStruct_0203E724 * param0)
{
    UnkStruct_02061830 * v0;
    FieldSystem * v1 = param0->unk_34;
    LocalMapObject ** v2 = sub_0203F098(v1, 10);

    if (*v2 == NULL) {
        v0 = v1->unk_38;
        sub_02062C48(v0);

        {
            LocalMapObject * v3 = sub_02062570(v1->unk_38, 0x30);

            if (v3) {
                if ((sub_0206A984(SaveData_Events(v1->unk_0C)) == 1) && (sub_02062D1C(v3) != 0)) {
                    sub_02062DDC(v3);
                    sub_0203E764(param0, sub_020410CC);
                    return 1;
                }
            }
        }
    } else {
        sub_020410F4(param0);
    }

    return 1;
}

static u8 Unk_021C07E0;

static inline void inline_020410F4 (void)
{
    Unk_021C07E0 = 0;
}

static inline BOOL inline_020410F4_1 (int mask)
{
    return (Unk_021C07E0 & mask) != 0;
}

static inline void inline_020410F4_2 (int mask)
{
    Unk_021C07E0 |= mask;
}

static inline void inline_020410F4_3 (int mask)
{
    Unk_021C07E0 &= (0xff ^ mask);
}

static BOOL sub_02041004 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    LocalMapObject ** v1 = sub_0203F098(v0, 10);
    LocalMapObject * v2 = Player_LocalMapObject(v0->playerAvatar);

    if (inline_020410F4_1((1 << 0)) && (sub_02065684(v2) == 1)) {
        sub_02062DD0(v2);
        inline_020410F4_3((1 << 0));
    }

    if (inline_020410F4_1((1 << 2)) && (sub_02062D1C(*v1) == 0)) {
        sub_02062DD0(*v1);
        inline_020410F4_3((1 << 2));
    }

    if (inline_020410F4_1((1 << 1))) {
        LocalMapObject * v3 = sub_02062570(v0->unk_38, 0x30);

        if (sub_02062D1C(v3) == 0) {
            sub_02062DD0(v3);
            inline_020410F4_3((1 << 1));
        }
    }

    if (inline_020410F4_1((1 << 3))) {
        LocalMapObject * v4 = sub_02069EB8(*v1);

        if (sub_02062D1C(v4) == 0) {
            sub_02062DD0(v4);
            inline_020410F4_3((1 << 3));
        }
    }

    if (Unk_021C07E0 == 0) {
        return 1;
    }

    return 0;
}

static BOOL sub_020410CC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    LocalMapObject * v1 = sub_02062570(v0->unk_38, 0x30);

    if (sub_02062D1C(v1) == 0) {
        sub_02062DD0(v1);
        return 1;
    }

    return 0;
}

static BOOL sub_020410F4 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    LocalMapObject ** v1 = sub_0203F098(v0, 10);
    LocalMapObject * v2 = Player_LocalMapObject(v0->playerAvatar);
    LocalMapObject * v3 = sub_02062570(v0->unk_38, 0x30);
    LocalMapObject * v4 = sub_02069EB8(*v1);
    UnkStruct_02061830 * v5;

    v5 = v0->unk_38;

    inline_020410F4();
    sub_02062C48(v5);

    if (sub_02065684(v2) == 0) {
        inline_020410F4_2((1 << 0));
        sub_02062DDC(v2);
    }

    if (sub_02062D1C(*v1) != 0) {
        inline_020410F4_2((1 << 2));
        sub_02062DDC(*v1);
    }

    if (v3) {
        if ((sub_0206A984(SaveData_Events(v0->unk_0C)) == 1) && (sub_02062D1C(v3) != 0)) {
            inline_020410F4_2((1 << 1));
            sub_02062DDC(v3);
        }
    }

    if (v4) {
        if (sub_02062D1C(v4) != 0) {
            inline_020410F4_2((1 << 3));
            sub_02062DDC(v4);
        }
    }

    sub_0203E764(param0, sub_02041004);
    return 1;
}

static BOOL sub_020411C4 (UnkStruct_0203E724 * param0)
{
    UnkStruct_02061830 * v0;
    FieldSystem * v1 = param0->unk_34;

    v0 = v1->unk_38;
    sub_02062C78(v0);

    return 1;
}

static BOOL sub_020411D4 (UnkStruct_0203E724 * param0)
{
    LocalMapObject * v0;
    FieldSystem * v1 = param0->unk_34;

    v0 = sub_0206251C(v1->unk_38, sub_0203E838(param0));
    sub_02062DD0(v0);

    return 0;
}

static BOOL sub_020411F0 (UnkStruct_0203E724 * param0)
{
    LocalMapObject * v0;
    FieldSystem * v1 = param0->unk_34;

    v0 = sub_0206251C(v1->unk_38, sub_0203E838(param0));
    sub_02062DDC(v0);

    return 0;
}

static BOOL sub_0204120C (UnkStruct_0203E724 * param0)
{
    LocalMapObject * v0;
    FieldSystem * v1 = param0->unk_34;
    u16 v2 = inline_02049538(param0);

    v0 = sub_02061A74(v1->unk_38, v2, sub_0203A4B4(v1), v1->unk_1C->unk_00, sub_0203A4BC(v1));

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    }

    return 0;
}

static BOOL sub_02041254 (UnkStruct_0203E724 * param0)
{
    LocalMapObject * v0;
    FieldSystem * v1 = param0->unk_34;

    v0 = sub_0206251C(v1->unk_38, inline_02049538(param0));

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    } else {
        sub_02061B28(v0);
    }

    return 0;
}

static BOOL sub_02041288 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 v1 = inline_02049538(param0);
    LocalMapObject ** v2 = sub_0203F098(param0->unk_34, 11);

    *v2 = sub_020619DC(param0->unk_34->unk_38, v0, v1, 0, 0x2000, 0x0, param0->unk_34->unk_1C->unk_00);

    sub_020642F8(*v2);
    sub_02062D64(*v2, 1);
    sub_02062D80(*v2, 0);

    {
        const VecFx32 * v3;

        v3 = sub_02063070(*v2);
        ov5_021E931C(v3, param0->unk_34->unk_28);
        sub_02020690(v3, param0->unk_34->unk_24);
    }

    return 0;
}

static BOOL sub_02041320 (UnkStruct_0203E724 * param0)
{
    LocalMapObject ** v0 = sub_0203F098(param0->unk_34, 11);

    sub_02061AF4(*v0);

    {
        LocalMapObject * v1;
        const VecFx32 * v2;

        v1 = sub_0206251C(param0->unk_34->unk_38, 0xff);
        v2 = sub_02063070(v1);

        ov5_021E931C(v2, param0->unk_34->unk_28);
        sub_02020690(v2, param0->unk_34->unk_24);
    }

    return 0;
}

static BOOL sub_02041364 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 v1 = inline_02049538(param0);
    LocalMapObject ** v2 = sub_0203F098(param0->unk_34, 11);

    *v2 = sub_020619DC(param0->unk_34->unk_38, v0, v1, 0, 0x2000, 0x0, param0->unk_34->unk_1C->unk_00);

    sub_020642F8(*v2);
    sub_02062D64(*v2, 1);
    sub_02062D80(*v2, 0);

    return 0;
}

static BOOL sub_020413D8 (UnkStruct_0203E724 * param0)
{
    LocalMapObject ** v0 = sub_0203F098(param0->unk_34, 11);

    sub_02061AF4(*v0);
    return 0;
}

static BOOL sub_020413F0 (UnkStruct_0203E724 * param0)
{
    int v0;
    LocalMapObject ** v1;
    FieldSystem * v2 = param0->unk_34;

    {
        FieldSystem * v3;
        PlayerAvatar * v4;

        v3 = param0->unk_34;
        v4 = v3->playerAvatar;
        v0 = Player_Dir(v4);
    }

    v0 = sub_0206447C(v0);
    v1 = sub_0203F098(v2, 10);

    if (*v1 == NULL) {
        return 0;
    }

    ov5_021ECDFC(*v1, v0);

    return 0;
}

static BOOL sub_02041420 (UnkStruct_0203E724 * param0)
{
    u16 * v0, * v1;
    FieldSystem * v2 = param0->unk_34;

    v0 = inline_0204FCAC(param0);
    v1 = inline_0204FCAC(param0);
    *v0 = Player_XPos(v2->playerAvatar);
    *v1 = Player_ZPos(v2->playerAvatar);

    return 0;
}

static BOOL sub_02041464 (UnkStruct_0203E724 * param0)
{
    LocalMapObject * v0;
    u16 * v1, * v2;
    FieldSystem * v3 = param0->unk_34;

    v0 = sub_0206251C(v3->unk_38, inline_02049538(param0));
    v1 = inline_0204FCAC(param0);
    v2 = inline_0204FCAC(param0);
    *v1 = sub_02063020(v0);
    *v2 = sub_02063040(v0);

    return 0;
}

static BOOL sub_020414C4 (UnkStruct_0203E724 * param0)
{
    u16 * v0;

    v0 = inline_0204FCAC(param0);
    *v0 = Player_Dir(param0->unk_34->playerAvatar);

    return 0;
}

static BOOL sub_020414EC (UnkStruct_0203E724 * param0)
{
    u16 v0, v1, v2;
    VecFx32 v3;
    FieldSystem * v4 = param0->unk_34;

    v0 = inline_02049538(param0);
    v1 = inline_02049538(param0);
    v2 = inline_02049538(param0);

    v3.x = FX32_CONST(v0);
    v3.y = FX32_CONST(v1);
    v3.z = FX32_CONST(v2);

    sub_020630AC(Player_LocalMapObject(param0->unk_34->playerAvatar), &v3);
    sub_02020990(&v3, param0->unk_34->unk_24);

    return 0;
}

static BOOL sub_020415D0 (UnkStruct_0203E724 * param0)
{
    LocalMapObject * v0;
    u8 v1;

    v0 = sub_0206251C(param0->unk_34->unk_38, inline_02049538(param0));
    v1 = (*((param0)->unk_08++));

    sub_02062E5C(v0, v1);
    return 0;
}

static BOOL sub_02041604 (UnkStruct_0203E724 * param0)
{
    LocalMapObject * v0;
    u16 v1;

    v0 = sub_0206251C(param0->unk_34->unk_38, inline_02049538(param0));
    v1 = sub_0203E838(param0);

    sub_020633A8(v0, v1);
    return 0;
}

static BOOL sub_0204163C (UnkStruct_0203E724 * param0)
{
    LocalMapObject * v0;
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = 0;
    v0 = sub_0206251C(param0->unk_34->unk_38, inline_02049538(param0));

    if (v0 != NULL) {
        *v1 = sub_02062948(v0);
    }

    return 0;
}

static BOOL sub_02041684 (UnkStruct_0203E724 * param0)
{
    LocalMapObject * v0;

    v0 = sub_02062570(param0->unk_34->unk_38, 0x30);

    sub_020633C8(v0, 0xfe);
    return 0;
}

static BOOL sub_0204169C (UnkStruct_0203E724 * param0)
{
    UnkStruct_0202CA1C * v0;
    u16 * v1 = inline_0204FCAC(param0);

    v0 = sub_0202CA1C(param0->unk_34->unk_0C);
    *v1 = sub_0202CBA8(v0);

    return 0;
}

static BOOL sub_020416C8 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0202CA1C * v0;
    u16 v1 = inline_02049538(param0);
    u16 * v2 = inline_0204FCAC(param0);

    v0 = sub_0202CA1C(param0->unk_34->unk_0C);
    *v2 = sub_0202CBC8(v0, v1);

    return 0;
}

static BOOL sub_02041708 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 v1 = inline_02049538(param0);

    sub_0202CAE0(sub_0202CA1C(param0->unk_34->unk_0C), v0, v1);
    return 0;
}

static BOOL sub_0204174C (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    u16 v1 = inline_02049538(param0);
    u16 * v2 = inline_0204FCAC(param0);

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->unk_34->unk_0C), v1);
    *v2 = Pokemon_GetForm(v0);

    return 0;
}

static BOOL sub_02041790 (UnkStruct_0203E724 * param0)
{
    void ** v0;

    v0 = sub_0203F098(param0->unk_34, 19);
    *v0 = sub_0203D3C0(32, param0->unk_34);

    sub_0203E764(param0, sub_02041D60);
    return 1;
}

static BOOL sub_020417C0 (UnkStruct_0203E724 * param0)
{
    void ** v0;

    v0 = sub_0203F098(param0->unk_34, 19);
    *v0 = sub_0203D3E4(32, param0->unk_34);

    sub_0203E764(param0, sub_02041D60);
    return 1;
}

static BOOL sub_020417F0 (UnkStruct_0203E724 * param0)
{
    void ** v0;

    v0 = sub_0203F098(param0->unk_34, 19);
    *v0 = sub_0203D50C(param0->unk_34->unk_10, 32);

    return 1;
}

static BOOL sub_02041814 (UnkStruct_0203E724 * param0)
{
    void ** v0;
    u16 * v1;

    v1 = inline_0204FCAC(param0);
    v0 = sub_0203F098(param0->unk_34, 19);

    GF_ASSERT(*v0 != 0);

    *v1 = sub_0203D408(*v0);

    if (*v1 == 7) {
        *v1 = 0xff;
    }

    Heap_FreeToHeap(*v0);
    *v0 = NULL;

    return 0;
}

static BOOL sub_02041860 (UnkStruct_0203E724 * param0)
{
    u16 v0;
    int v1;
    void ** v2;
    u16 * v3;
    u16 * v4;
    PartyManagementData * v5;

    v3 = inline_0204FCAC(param0);
    v4 = inline_0204FCAC(param0);
    v2 = sub_0203F098(param0->unk_34, 19);
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

static BOOL sub_020418E0 (UnkStruct_0203E724 * param0)
{
    u16 v0;
    int v1;
    void ** v2;
    u16 * v3;
    u16 * v4;
    u16 * v5;
    PartyManagementData * v6;

    v3 = inline_0204FCAC(param0);
    v4 = inline_0204FCAC(param0);
    v5 = inline_0204FCAC(param0);
    v2 = sub_0203F098(param0->unk_34, 19);
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

static BOOL sub_02041984 (UnkStruct_0203E724 * param0)
{
    u16 v0;
    int v1;
    void ** v2;
    u16 * v3;
    u16 * v4;
    u16 * v5;
    PartyManagementData * v6;

    v3 = inline_0204FCAC(param0);
    v4 = inline_0204FCAC(param0);
    v5 = inline_0204FCAC(param0);
    v2 = sub_0203F098(param0->unk_34, 19);
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

static BOOL sub_02041A28 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 19);
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);
    u16 v4 = inline_02049538(param0);

    *v0 = sub_0203D578(32, param0->unk_34, v3, v2, v4, v1);
    sub_0203E764(param0, sub_02041D60);

    return 1;
}

static BOOL sub_02041AB0 (UnkStruct_0203E724 * param0)
{
    void ** v0;
    u16 * v1, * v2;

    v1 = inline_0204FCAC(param0);
    v2 = inline_0204FCAC(param0);
    v0 = sub_0203F098(param0->unk_34, 19);

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

static BOOL sub_02041B24 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 19);
    u16 v1 = inline_02049538(param0);

    *v0 = sub_0203D5C8(32, param0->unk_34, v1);
    sub_0203E764(param0, sub_02041D60);

    return 1;
}

static BOOL sub_02041B68 (UnkStruct_0203E724 * param0)
{
    void ** v0;
    u16 * v1;

    v1 = inline_0204FCAC(param0);
    v0 = sub_0203F098(param0->unk_34, 19);

    GF_ASSERT(*v0 != 0);

    *v1 = sub_0203D440(*v0);

    Heap_FreeToHeap(*v0);
    *v0 = NULL;

    return 0;
}

static BOOL sub_02041BA8 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 19);
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);

    *v0 = sub_0203E63C(32, param0->unk_34, v1, v2);
    sub_0203E764(param0, sub_02041D60);

    return 1;
}

static BOOL sub_02041C00 (UnkStruct_0203E724 * param0)
{
    void ** v0;
    u16 * v1;
    PokemonSummary * v2;

    v1 = inline_0204FCAC(param0);
    v0 = sub_0203F098(param0->unk_34, 19);

    GF_ASSERT(*v0 != 0);

    v2 = *v0;
    *v1 = v2->selectedSlot;

    Heap_FreeToHeap(*v0);
    *v0 = NULL;

    return 1;
}

static BOOL sub_02041C40 (UnkStruct_0203E724 * param0)
{
    u8 v0, v1;
    LocalMapObject ** v2 = sub_0203F098(param0->unk_34, 10);
    u16 v3 = inline_02049538(param0);
    u16 * v4 = inline_0204FCAC(param0);

    *v4 = ov5_021DBD98(param0->unk_34, *v2, v3);
    return 0;
}

static BOOL sub_02041C8C (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = sub_0203A74C(sub_0203A790(param0->unk_34->unk_0C));
    return 0;
}

static BOOL sub_02041CB8 (UnkStruct_0203E724 * param0)
{
    return 0;
}

static BOOL sub_02041CBC (UnkStruct_0203E724 * param0)
{
    return 0;
}

static BOOL sub_02041CC0 (UnkStruct_0203E724 * param0)
{
    return 1;
}

static BOOL sub_02041CC4 (UnkStruct_0203E724 * param0)
{
    return 0;
}

BOOL sub_02041CC8 (UnkStruct_0203E724 * param0)
{
    void ** v0;
    FieldSystem * v1 = param0->unk_34;

    v0 = sub_0203F098(param0->unk_34, 19);

    if (sub_020509B4(v1)) {
        return 0;
    }

    Heap_FreeToHeap(*v0);
    *v0 = NULL;

    return 1;
}

static BOOL sub_02041CF4 (UnkStruct_0203E724 * param0)
{
    void ** v0;
    FieldSystem * v1;
    UnkStruct_02042434 * v2;

    v1 = param0->unk_34;
    v0 = sub_0203F098(v1, 19);
    v2 = *v0;

    if (sub_020509B4(v1)) {
        return 0;
    }

    if (v2->unk_08 == 1) {
        void * v3;

        v3 = sub_0202BCFC(11);
        sub_0202B758(v1->unk_9C, v3, 1);
    }

    Heap_FreeToHeap(*v0);
    *v0 = NULL;

    return 1;
}

static BOOL sub_02041D3C (UnkStruct_0203E724 * param0)
{
    void ** v0;
    FieldSystem * v1 = param0->unk_34;

    v0 = sub_0203F098(param0->unk_34, 19);

    if (sub_0209C238(*v0) == 0) {
        return 0;
    }

    *v0 = NULL;

    return 1;
}

BOOL sub_02041D60 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    if (sub_020509B4(v0)) {
        return 0;
    }

    return 1;
}

static BOOL sub_02041D78 (UnkStruct_0203E724 * param0)
{
    sub_02055868(param0->unk_34->unk_10);
    return 1;
}

static BOOL sub_02041D88 (UnkStruct_0203E724 * param0)
{
    sub_02055820(param0->unk_34->unk_10);
    return 1;
}

static BOOL sub_02041D98 (FieldSystem * param0, int param1, int param2)
{
    UnkStruct_0202A750 * v0 = sub_0202A750(param0->unk_0C);

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

static UnkStruct_02041DC8 * sub_02041DC8 (int param0, FieldSystem * param1, int param2, int param3)
{
    UnkStruct_02041DC8 * v0;
    UnkStruct_02029C68 * v1;
    UnkStruct_02029C88 * v2;
    UnkStruct_0202A750 * v3 = sub_0202A750(param1->unk_0C);

    if (sub_02041D98(param1, param2, param3) == 0) {
        return NULL;
    }

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_02041DC8));
    memset(v0, 0, sizeof(UnkStruct_02041DC8));

    v0->unk_00 = v3;
    v0->unk_08 = param2;
    v0->unk_04 = param3;

    return v0;
}

static BOOL sub_02041E18 (UnkStruct_0203E724 * param0)
{
    ov5_021EAF50(param0->unk_34);
    return 1;
}

static BOOL sub_02041E28 (UnkStruct_0203E724 * param0)
{
    sub_0207DDC0(param0->unk_28);
    return 1;
}

static BOOL sub_02041E34 (UnkStruct_0203E724 * param0)
{
    UnkStruct_ov98_02247168 * v0;
    void ** v1 = sub_0203F098(param0->unk_34, 19);
    u16 * v2 = inline_0204FCAC(param0);

    v0 = (*v1);
    *v2 = v0->unk_04;

    Heap_FreeToHeap(*v1);
    return 0;
}

static BOOL sub_02041E64 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = CommSys_CurNetId();
    return 1;
}

static BOOL sub_02041E84 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);

    sub_0200DAA4(param0->unk_34->unk_08, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    *v0 = sub_0200EBF0(param0->unk_34->unk_08, 3, 10, 5, 11, 1024 - (18 + 12) - 9, v1, v2, 4);
    sub_020451B4(param0->unk_34, v1);

    return 0;
}

static BOOL sub_02041F14 (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    void ** v1 = sub_0203F098(param0->unk_34, 20);
    u16 v2 = inline_02049538(param0);

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->unk_34->unk_0C), v2);
    sub_0200DAA4(param0->unk_34->unk_08, 3, 1024 - (18 + 12) - 9, 11, 0, 4);

    *v1 = sub_0200EC48(param0->unk_34->unk_08, 3, 10, 5, 11, 1024 - (18 + 12) - 9, v0, 4);
    sub_020451B4(param0->unk_34, Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL));

    return 0;
}

static BOOL sub_02041FAC (UnkStruct_0203E724 * param0)
{
    u8 * v0;
    void ** v1 = sub_0203F098(param0->unk_34, 20);

    v0 = *v1;
    *v0 = 1;

    return 1;
}

static BOOL sub_02041FC4 (UnkStruct_0203E724 * param0)
{
    u8 * v0;
    void ** v1 = sub_0203F098(param0->unk_34, 20);

    v0 = *v1;
    *v0 = 2;

    return 1;
}

static BOOL sub_02041FDC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = sub_0203E838(param0);

    param0->unk_18[0] = v1;
    sub_0203E764(param0, sub_02041FF8);

    return 1;
}

static BOOL sub_02041FF8 (UnkStruct_0203E724 * param0)
{
    u8 * v0;
    void ** v1 = sub_0203F098(param0->unk_34, 20);
    u16 * v2 = sub_0203F118(param0->unk_34, param0->unk_18[0]);

    v0 = *v1;

    if (*v0 == 3) {
        return 0;
    }

    return 1;
}

static BOOL sub_02042028 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);
    StringFormatter ** v1 = sub_0203F098(param0->unk_34, 15);

    ov5_021DB888(param0->unk_28, *v1, sub_0203F118(param0->unk_34, v0));
    return 1;
}

static BOOL sub_0204205C (UnkStruct_0203E724 * param0)
{
    LocalMapObject ** v0 = sub_0203F098(param0->unk_34, 10);

    if (*v0 != NULL) {
        if ((sub_02071CB4(param0->unk_34, 2) == 0) || (ov8_0224C5DC(param0->unk_34, *v0) == 0)) {
            ov5_021DBED4(param0->unk_34, *v0);
        }
    }

    return 0;
}

static BOOL sub_020420A0 (UnkStruct_0203E724 * param0)
{
    sub_0209ACF4(param0->unk_28);
    return 1;
}

static BOOL sub_020420AC (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    sub_0209B344(param0->unk_28, v0);
    return 1;
}

static BOOL sub_020420CC (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 * v1 = inline_0204FCAC(param0);
    u16 v2 = inline_02049538(param0);

    sub_0203DAC0(param0->unk_34->unk_10, v1, param0->unk_34->unk_0C, v0, v2);
    return 1;
}

static BOOL sub_02042124 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 19);
    int v1 = sub_0203E838(param0);
    u16 * v2 = inline_0204FCAC(param0);

    *v0 = sub_02041DC8(11, param0->unk_34, 0, v1);

    if (*v0 == NULL) {
        *v2 = 1;

        return 1;
    }

    *v2 = 0;

    sub_0203DB24(param0->unk_34, *v0);
    sub_0203E764(param0, sub_02041CC8);

    return 1;
}

static BOOL sub_0204218C (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 19);
    int v1 = sub_0203E838(param0);
    u16 * v2 = inline_0204FCAC(param0);

    *v0 = sub_02041DC8(11, param0->unk_34, 1, v1);

    if (*v0 == NULL) {
        *v2 = 1;

        return 1;
    }

    *v2 = 0;

    sub_0203DB24(param0->unk_34, *v0);
    sub_0203E764(param0, sub_02041CC8);

    return 1;
}

static BOOL sub_020421F4 (UnkStruct_0203E724 * param0)
{
    BOOL v0;
    int v1 = sub_0203E838(param0);
    u16 * v2 = inline_0204FCAC(param0);

    v0 = sub_02041D98(param0->unk_34, 0, v1);

    if (v0 == 1) {
        *v2 = 1;
        return 1;
    }

    *v2 = 0;
    return 1;
}

static BOOL sub_02042230 (UnkStruct_0203E724 * param0)
{
    BOOL v0;
    int v1 = sub_0203E838(param0);
    u16 * v2 = inline_0204FCAC(param0);

    v0 = sub_02041D98(param0->unk_34, 1, v1);

    if (v0 == 1) {
        *v2 = 1;
        return 1;
    }

    *v2 = 0;
    return 1;
}

static BOOL sub_0204226C (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    UnkStruct_0202A750 * v1 = sub_0202A750(param0->unk_34->unk_0C);
    UnkStruct_02029C68 * v2 = sub_02029CA8(v1, 0);

    sub_0202A0A0(v2, v0);

    return 1;
}

static BOOL sub_0204229C (UnkStruct_0203E724 * param0)
{
    sub_0203E224(param0->unk_34);
    sub_0203E764(param0, sub_02041D60);

    return 1;
}

static BOOL sub_020422B8 (UnkStruct_0203E724 * param0)
{
    sub_0203E704(param0->unk_34);
    sub_0203E764(param0, sub_02041D60);

    return 1;
}

static BOOL sub_020422D4 (UnkStruct_0203E724 * param0)
{
    sub_020980DC(param0->unk_28, param0->unk_34->unk_0C);
    return 1;
}

static BOOL sub_020422E8 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203D8AC * v0;
    void ** v1 = sub_0203F098(param0->unk_34, 19);

    *v1 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0203D8AC));

    sub_0206B70C(param0->unk_34, *v1, 2);
    sub_0203D884(param0->unk_34, *v1);
    sub_0203E764(param0, sub_02041CC8);

    return 1;
}

static BOOL sub_02042330 (UnkStruct_0203E724 * param0)
{
    u8 v0;
    UnkStruct_0203D8AC * v1;
    void ** v2 = sub_0203F098(param0->unk_34, 19);

    v0 = sub_0203E838(param0);
    *v2 = sub_02099674(param0->unk_34, v0, 11);

    sub_0203E764(param0, sub_02041CC8);
    return 1;
}

static BOOL sub_02042368 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = sub_0203F118(param0->unk_34, sub_0203E838(param0));

    if (!sub_0207D69C(sub_0207D990(param0->unk_34->unk_0C), 4)) {
        *v0 = 1;
        return 0;
    }

    if (sub_0202AC98(Poffin_GetSavedataBlock(param0->unk_34->unk_0C)) >= 100) {
        *v0 = 2;
        return 0;
    }

    *v0 = 0;
    return 0;
}

static BOOL sub_020423BC (UnkStruct_0203E724 * param0)
{
    UnkStruct_ov90_021D0D80 * v0;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    void ** v3 = sub_0203F098(param0->unk_34, 19);

    *v3 = Heap_AllocFromHeap(11, sizeof(UnkStruct_ov90_021D0D80));

    v0 = (UnkStruct_ov90_021D0D80 *)*v3;
    MI_CpuClear8(v0, sizeof(UnkStruct_ov90_021D0D80));

    v0->unk_04 = v1;
    v0->unk_06 = v2;
    v0->unk_00 = param0->unk_34->unk_0C;

    sub_0203D9D8(param0->unk_34, *v3);
    sub_0203E764(param0, sub_02041CC8);

    return 1;
}

static BOOL sub_02042434 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 19);
    UnkStruct_02042434 * v1 = Heap_AllocFromHeap(11, sizeof(UnkStruct_02042434));

    v1->unk_00 = param0->unk_34->unk_0C;
    v1->unk_04 = (*((param0)->unk_08++));
    *v0 = v1;

    sub_0203D754(param0->unk_34, *v0);
    sub_0203E764(param0, sub_02041CF4);

    return 1;
}

static BOOL sub_02042480 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    sub_0203DDFC(v0);
    sub_0203E764(param0, sub_02041D60);

    return 1;
}

static BOOL sub_0204249C (UnkStruct_0203E724 * param0)
{
    sub_02072204(param0->unk_34);
    return 1;
}

static BOOL sub_020424AC (UnkStruct_0203E724 * param0)
{
    sub_0203DDDC(param0->unk_34->unk_10);
    return 1;
}

static BOOL sub_020424BC (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 19);

    *v0 = sub_0203DE34(param0->unk_34);
    sub_0203E764(param0, sub_02041CC8);

    return 1;
}

static BOOL sub_020424E8 (UnkStruct_0203E724 * param0)
{
    sub_02052E58(param0->unk_34->unk_10);
    return 1;
}

static BOOL sub_020424F8 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 19);

    *v0 = sub_0203E244(param0->unk_34);
    sub_0203E764(param0, sub_02041CC8);

    return 1;
}

static BOOL sub_02042524 (UnkStruct_0203E724 * param0)
{
    u16 * v0;
    int v1;
    HallOfFame * v2;

    v2 = SaveData_HallOfFame(param0->unk_34->unk_0C, 4, &v1);
    v0 = inline_0204FCAC(param0);
    *v0 = 0;

    if (v1 == 2) {
        *v0 = 1;
    }

    Heap_FreeToHeap(v2);
    return 0;
}

static BOOL sub_02042560 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 * v1 = inline_0204FCAC(param0);

    if (sub_02039074(param0->unk_34->unk_0C)) {
        *v1 = 1;
        sub_0203E0FC(param0->unk_34, v0);
        sub_0203E764(param0, sub_02041D60);
    } else {
        *v1 = 0;
    }

    return 1;
}

static BOOL sub_020425C0 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);

    sub_0207DDE0(param0->unk_28, sub_0203F118(param0->unk_34, v0));
    return 1;
}

static BOOL sub_020425E0 (UnkStruct_0203E724 * param0)
{
    UnkStruct_020425E0 * v0;
    void ** v1 = sub_0203F098(param0->unk_34, 20);

    *v1 = Heap_AllocFromHeap(11, sizeof(UnkStruct_020425E0));
    v0 = *v1;
    v0->unk_04 = sub_02025E44(param0->unk_34->unk_0C);

    sub_0203E0C0(param0->unk_34, *v1);
    sub_0203E764(param0, sub_02041D60);

    return 1;
}

static BOOL sub_02042628 (UnkStruct_0203E724 * param0)
{
    UnkStruct_020425E0 * v0;
    void ** v1 = sub_0203F098(param0->unk_34, 20);

    v0 = (*v1);

    sub_0206B044(SaveData_Events(param0->unk_34->unk_0C), v0->unk_00);
    Heap_FreeToHeap(*v1);

    return 0;
}

static BOOL sub_02042658 (UnkStruct_0203E724 * param0)
{
    void ** v0;
    u8 v1;

    if ((*((param0)->unk_08++)) == 0) {
        v1 = 0;
    } else {
        v1 = 1;
    }

    v0 = sub_0203F098(param0->unk_34, 19);
    GF_ASSERT(*v0 == 0);

    *v0 = sub_0203D264(param0->unk_34, v1);
    sub_0203E764(param0, sub_02041D60);

    return 1;
}

static BOOL sub_020426A8 (UnkStruct_0203E724 * param0)
{
    u16 * v0;
    void ** v1;

    v0 = inline_0204FCAC(param0);
    v1 = sub_0203F098(param0->unk_34, 19);

    GF_ASSERT(*v1 != 0);
    *v0 = sub_0203D2C4(*v1);

    Heap_FreeToHeap(*v1);
    *v1 = NULL;

    return 0;
}

static BOOL sub_020426E8 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    sub_0203DFE8(param0->unk_28, 0, 0, 7, 0, NULL, inline_0204FCAC(param0));
    return 1;
}

static BOOL sub_02042718 (UnkStruct_0203E724 * param0)
{
    u16 v0[10 * 2];
    Pokemon * v1;
    FieldSystem * v2 = param0->unk_34;
    u16 v3 = inline_02049538(param0);

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v2->unk_0C), v3);

    Pokemon_GetValue(v1, MON_DATA_NICKNAME, v0);
    sub_0203DFE8(param0->unk_28, 1, Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL), 10, v3, v0, inline_0204FCAC(param0));

    return 1;
}

static BOOL sub_02042784 (UnkStruct_0203E724 * param0)
{
    sub_0203DFE8(param0->unk_28, 6, 0, 10, 0, NULL, inline_0204FCAC(param0));
    return 1;
}

static BOOL sub_020427B4 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 19);

    *v0 = sub_0209C1EC(param0->unk_34);
    sub_0203E764(param0, sub_02041D3C);

    return 1;
}

static BOOL sub_020427E0 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);
    u8 v1;

    v1 = sub_0205BE38();

    if (v1 == TrainerInfo_DPGameCode()) {
        *v0 = 0;
    } else {
        *v0 = 1;
    }

    return 0;
}

static BOOL sub_02042810 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 * v1 = inline_0204FCAC(param0);
    u16 * v2 = inline_0204FCAC(param0);

    *v2 = 0xffff;
    sub_0203D80C(param0->unk_34->unk_10, v1, v2, NULL);

    return 1;
}

static BOOL sub_02042868 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 * v1 = inline_0204FCAC(param0);
    u16 * v2 = inline_0204FCAC(param0);
    u16 * v3 = inline_0204FCAC(param0);

    *v2 = 0xffff;
    *v3 = 0xffff;

    sub_0203D80C(param0->unk_34->unk_10, v1, v2, v3);
    return 1;
}

static BOOL sub_020428D4 (UnkStruct_0203E724 * param0)
{
    StringFormatter ** v0 = sub_0203F098(param0->unk_34, 15);
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);

    sub_0200BE48(*v0, v1, v2);

    return 0;
}

static BOOL sub_02042918 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);
    u16 v1 = sub_0203E838(param0);
    u16 v2 = sub_0203E838(param0);
    u16 v3 = sub_0203E838(param0);

    sub_0200F174(0, v2, v2, v3, v0, v1, 4);
    sub_0200F32C(0);
    sub_0200F32C(1);

    return 0;
}

static BOOL sub_02042960 (UnkStruct_0203E724 * param0)
{
    sub_0203E764(param0, sub_02042970);
    return 1;
}

static BOOL sub_02042970 (UnkStruct_0203E724 * param0)
{
    if (ScreenWipe_Done() == 1) {
        return 1;
    }

    return 0;
}

static BOOL sub_02042984 (UnkStruct_0203E724 * param0)
{
    u16 v0, v1, v2, v3;
    s16 v4;
    FieldSystem * v5 = param0->unk_34;

    v0 = inline_02049538(param0);
    v4 = sub_0203E838(param0);
    v1 = inline_02049538(param0);
    v2 = inline_02049538(param0);
    v3 = inline_02049538(param0);
    v4 = -1;

    sub_02053A80(param0->unk_28, v0, v4, v1, v2, v3);
    return 1;
}

static BOOL sub_020429F4 (UnkStruct_0203E724 * param0)
{
    u16 v0, v1, v2, v3;
    s16 v4;
    FieldSystem * v5 = param0->unk_34;

    v0 = sub_0203E838(param0);
    v4 = sub_0203E838(param0);
    v1 = inline_02049538(param0);
    v2 = inline_02049538(param0);
    v3 = sub_0203E838(param0);
    v4 = -1;

    sub_02054800(param0->unk_34->unk_10, v0, v4, v1, v2, v3);

    return 1;
}

static BOOL sub_02042A50 (UnkStruct_0203E724 * param0)
{
    sub_02054864(param0->unk_34->unk_10);
    return 1;
}

static BOOL sub_02042A60 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203A790 * v0 = sub_0203A790(param0->unk_34->unk_0C);
    UnkStruct_02049FA8 * v1 = sub_0203A728(v0);
    u16 * v2 = inline_0204FCAC(param0);

    *v2 = v1->unk_00;
    return 0;
}

static BOOL sub_02042A8C (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = param0->unk_34->unk_1C->unk_00;
    return 0;
}

static BOOL sub_02042AB0 (UnkStruct_0203E724 * param0)
{
    ov5_021E0734(param0->unk_28, Player_Dir(param0->unk_34->playerAvatar), inline_02049538(param0));
    return 1;
}

static BOOL sub_02042AE0 (UnkStruct_0203E724 * param0)
{
    RadarChain_Clear(param0->unk_34->chain);

    {
        int v0;

        if (sub_0205F16C(param0->unk_34->playerAvatar) == 1) {
            v0 = Player_Dir(param0->unk_34->playerAvatar);
        } else {
            v0 = sub_0205EA94(param0->unk_34->playerAvatar);
        }

        ov5_021E00EC(param0->unk_28, v0, inline_02049538(param0));
    }

    return 1;
}

static BOOL sub_02042B3C (UnkStruct_0203E724 * param0)
{
    ov5_021E0998(param0->unk_28, Player_Dir(param0->unk_34->playerAvatar), inline_02049538(param0));
    return 1;
}

static BOOL sub_02042B6C (UnkStruct_0203E724 * param0)
{
    u16 v0, v1, v2;

    v0 = sub_0203E838(param0);
    v1 = inline_02049538(param0);
    v2 = inline_02049538(param0);

    sub_02053AB4(param0->unk_34, v0, -1, v1, v2, 1);
    return 1;
}

static BOOL sub_02042BB8 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203A790 * v0 = sub_0203A790(param0->unk_34->unk_0C);

    sub_0203A754(v0, 0);
    ov5_021D5F7C(param0->unk_34->unk_04->unk_0C, sub_0203A74C(v0));

    return 1;
}

static BOOL sub_02042BE8 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203A790 * v0 = sub_0203A790(param0->unk_34->unk_0C);

    sub_0203A754(v0, 0);
    ov5_021D5F7C(param0->unk_34->unk_04->unk_0C, sub_0203A74C(v0));

    return 1;
}

static BOOL sub_02042C18 (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    void ** v1 = sub_0203F098(param0->unk_34, 20);
    u16 v2 = inline_02049538(param0);

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->unk_34->unk_0C), v2);
    *v1 = ov6_02243F88(param0->unk_34, 0, v0, sub_0205EB98(param0->unk_34->playerAvatar));

    sub_0203E764(param0, sub_02042C80);
    return 1;
}

static BOOL sub_02042C80 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);

    if (ov6_02243FBC(*v0) == 1) {
        ov6_02243FC8(*v0);
        return 1;
    }

    return 0;
}

static BOOL sub_02042CA8 (UnkStruct_0203E724 * param0)
{
    ov5_021E0DD4(param0->unk_28);
    return 1;
}

static BOOL sub_02042CB4 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    if (sub_0205EB74(param0->unk_34->playerAvatar) == 0x1) {
        *v0 = 1;
    } else {
        *v0 = 0;
    }

    return 0;
}

static BOOL sub_02042CE4 (UnkStruct_0203E724 * param0)
{
    u8 v0 = (*((param0)->unk_08++));

    if (v0 == 1) {
        sub_020553F0(param0->unk_34, 1152);
        sub_02055554(param0->unk_34, 1152, 1);
        ov5_021DFB54(param0->unk_34->playerAvatar, (1 << 1));
        ov5_021DFB5C(param0->unk_34->playerAvatar);
    } else {
        ov5_021DFB54(param0->unk_34->playerAvatar, (1 << 0));
        ov5_021DFB5C(param0->unk_34->playerAvatar);
        sub_020553F0(param0->unk_34, 0);
        sub_02055554(param0->unk_34, sub_02055428(param0->unk_34, param0->unk_34->unk_1C->unk_00), 1);
    }

    return 0;
}

static BOOL sub_02042D70 (UnkStruct_0203E724 * param0)
{
    sub_020553F0(param0->unk_34, 1189);
    return 0;
}

static BOOL sub_02042D84 (UnkStruct_0203E724 * param0)
{
    sub_0205EFC4(param0->unk_34->playerAvatar, (*((param0)->unk_08++)));
    return 0;
}

static BOOL sub_02042D9C (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = sub_0205EB74(param0->unk_34->playerAvatar);
    return 0;
}

static BOOL sub_02042DC4 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);

    sub_0205EB84(param0->unk_34->playerAvatar, v0);
    return 1;
}

static BOOL sub_02042DDC (UnkStruct_0203E724 * param0)
{
    ov5_021DFB5C(param0->unk_34->playerAvatar);
    return 0;
}

static BOOL sub_02042DEC (UnkStruct_0203E724 * param0)
{
    UnkStruct_0202D7B0 * v0 = sub_0202D834(param0->unk_34->unk_0C);
    u16 * v1 = inline_0204FCAC(param0);
    u16 * v2 = inline_0204FCAC(param0);

    ov6_0224322C(sub_0202D814(v0, 2), v1, v2);
    return 0;
}

static BOOL sub_02042E38 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = sub_0206B054(SaveData_Events(param0->unk_34->unk_0C));
    return 0;
}

static BOOL sub_02042E64 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = sub_0203F098(v0, 8);
    Strbuf ** v2 = sub_0203F098(v0, 16);
    u8 * v3 = sub_0203F098(v0, 6);
    u8 * v4 = sub_0203F098(v0, 3);
    u16 v5 = inline_02049538(param0);
    u16 v6 = inline_02049538(param0);

    TrainerData_LoadMessage(v5, v6, *v2, 11);
    BGL_FillWindow(sub_0203F098(v0, 1), 15);

    *v4 = sub_0205D994(sub_0203F098(v0, 1), *v2, sub_02025E44(param0->unk_34->unk_0C), 1);
    sub_0203E764(param0, sub_02040014);

    return 1;
}

static BOOL sub_02042F04 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);
    u16 v4 = sub_0203E838(param0);

    ov7_0224B414(v0, v1, v2, v3);
    param0->unk_18[0] = v4;
    sub_0203E764(param0, sub_02042F74);

    return 1;
}

static BOOL sub_02042F74 (UnkStruct_0203E724 * param0)
{
    u32 v0;
    FieldSystem * v1 = param0->unk_34;
    u16 * v2 = sub_0203F118(v1, param0->unk_18[0]);

    v0 = ov7_0224B460();

    if (v0 == 0) {
        return 0;
    }

    *v2 = v0;
    return 1;
}

static BOOL sub_02042F9C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);
    u16 v4 = sub_0203E838(param0);

    ov7_0224B47C(v0, v1, v2, v3);
    param0->unk_18[0] = v4;
    sub_0203E764(param0, sub_0204300C);

    return 1;
}

static BOOL sub_0204300C (UnkStruct_0203E724 * param0)
{
    u32 v0;
    FieldSystem * v1 = param0->unk_34;
    u16 * v2 = sub_0203F118(v1, param0->unk_18[0]);

    v0 = ov7_0224B4C8();

    if (v0 == 0) {
        return 0;
    }

    *v2 = v0;
    return 1;
}

static BOOL sub_02043034 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = sub_0203E838(param0);

    return 1;
}

static BOOL sub_02043040 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = sub_0203E838(param0);

    return 1;
}

static BOOL sub_0204304C (UnkStruct_0203E724 * param0)
{
    PartyManagementData * v0;
    void ** v1;

    v1 = sub_0203F098(param0->unk_34, 19);
    v0 = *v1;

    sub_0205167C(param0->unk_34->unk_10, v0->unk_2C, (0x4 | 0x1));
    Heap_FreeToHeap(v0);

    *v1 = NULL;

    return 1;
}

static BOOL sub_0204307C (UnkStruct_0203E724 * param0)
{
    return 1;
}

static BOOL sub_02043080 (UnkStruct_0203E724 * param0)
{
    UnkStruct_02049FA8 v0;

    v0.unk_00 = inline_02049538(param0);
    v0.unk_04 = inline_02049538(param0);
    v0.unk_08 = inline_02049538(param0);
    v0.unk_0C = inline_02049538(param0);
    v0.unk_10 = inline_02049538(param0);

    sub_0203A734(sub_0203A790(param0->unk_34->unk_0C), &v0);
    return 0;
}

static BOOL sub_02043100 (UnkStruct_0203E724 * param0)
{
    UnkStruct_02049FA8 * v0;
    u16 * v1 = inline_0204FCAC(param0);

    v0 = sub_0203A730(sub_0203A790(param0->unk_34->unk_0C));
    *v1 = ov5_021DCCC8(v0->unk_00);

    return 0;
}

static BOOL sub_02043130 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u8 v2 = (*((param0)->unk_08++));
    u8 v3 = (*((param0)->unk_08++));
    u16 * v4 = inline_0204FCAC(param0);
    u16 v5 = inline_02049538(param0);

    ov5_021DCB24(v0, v2, v3, v4, *v1, v5);
    return 0;
}

static BOOL sub_02043190 (UnkStruct_0203E724 * param0)
{
    const PokedexData * v0 = sub_02027560(param0->unk_34->unk_0C);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_02026EAC(v0);
    return 0;
}

static BOOL sub_020431C0 (UnkStruct_0203E724 * param0)
{
    const PokedexData * v0 = sub_02027560(param0->unk_34->unk_0C);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_02026E64(v0);
    return 0;
}

static BOOL sub_020431F0 (UnkStruct_0203E724 * param0)
{
    const PokedexData * v0 = sub_02027560(param0->unk_34->unk_0C);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_02026E0C(v0);
    return 0;
}

static BOOL sub_02043220 (UnkStruct_0203E724 * param0)
{
    const PokedexData * v0 = sub_02027560(param0->unk_34->unk_0C);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_02026DD0(v0);
    return 0;
}

static BOOL sub_02043250 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    return 0;
}

static BOOL sub_02043254 (UnkStruct_0203E724 * param0)
{
    const PokedexData * v0 = sub_02027560(param0->unk_34->unk_0C);
    const TrainerInfo * v1 = SaveData_GetTrainerInfo(param0->unk_34->unk_0C);
    u8 v2 = (*((param0)->unk_08++));
    u16 * v3 = inline_0204FCAC(param0);
    u16 v4;

    if (v2 == 0) {
        v4 = sub_02026F58(v0);
        *v3 = sub_0205E078(v4, inline_0208BE68(SaveData_Events(param0->unk_34->unk_0C), 10));
    } else {
        v4 = sub_02026F20(v0);
        *v3 = sub_0205E0E4(v4, TrainerInfo_Gender(v1));
    }

    return 0;
}

static BOOL sub_020432DC (UnkStruct_0203E724 * param0)
{
    BOOL * v0 = sub_0203F098(param0->unk_34, 23);
    u16 v1 = inline_02049538(param0);
    u8 v2 = (u8)inline_02049538(param0);

    sub_02051270(param0->unk_28, v1, v2, v0, 0);

    return 1;
}

static BOOL sub_02043330 (UnkStruct_0203E724 * param0)
{
    BOOL * v0 = sub_0203F098(param0->unk_34, 23);
    u16 v1 = inline_02049538(param0);
    u8 v2 = (u8)inline_02049538(param0);

    sub_02051270(param0->unk_28, v1, v2, v0, 1);

    return 1;
}

static BOOL sub_02043384 (UnkStruct_0203E724 * param0)
{
    BOOL * v0 = sub_0203F098(param0->unk_34, 23);
    u16 v1 = inline_02049538(param0);
    u8 v2 = (u8)inline_02049538(param0);

    sub_02051ABC(param0->unk_28, v1, v2, v0, 1);
    return 1;
}

static BOOL sub_020433D8 (UnkStruct_0203E724 * param0)
{
    BOOL * v0 = sub_0203F098(param0->unk_34, 23);
    u16 v1 = inline_02049538(param0);
    u8 v2 = (u8)inline_02049538(param0);

    sub_020512E4(param0->unk_28, v1, v2, v0, 1);
    return 1;
}

static BOOL sub_0204342C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    BOOL * v1 = sub_0203F098(v0, 23);
    u16 v2 = inline_02049538(param0);

    sub_02051480(param0->unk_28, v2, 11, v1);
    return 1;
}

static BOOL sub_02043460 (UnkStruct_0203E724 * param0)
{
    sub_02051590(param0->unk_28);
    return 1;
}

static BOOL sub_0204346C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    ov5_021EFBDC(v0);
    return 0;
}

static BOOL sub_0204347C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = ov5_021EFB94(v0);
    return 0;
}

static BOOL sub_020434A4 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    BOOL * v1 = sub_0203F098(v0, 23);

    sub_0205120C(param0->unk_28, v1);
    return 1;
}

static BOOL sub_020434C0 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    ov5_021EFC90(v0);
    return 0;
}

static BOOL sub_020434D0 (UnkStruct_0203E724 * param0)
{
    sub_0203E0D0(param0->unk_34);
    sub_0203E764(param0, sub_02041D60);
    return 1;
}

static BOOL sub_020434EC (UnkStruct_0203E724 * param0)
{
    SaveData * v0 = param0->unk_34->unk_0C;
    u16 * v1 = inline_0204FCAC(param0);

    if (SaveData_OverwriteCheck(v0)) {
        *v1 = 0;
    } else if (SaveData_DataExists(v0) == 0) {
        *v1 = 1;
    } else if (SaveData_FullSaveRequired(v0)) {
        *v1 = 2;
    } else {
        *v1 = 3;
    }

    return 0;
}

static BOOL sub_02043540 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = ov5_021E200C(v0);
    return 0;
}

static BOOL sub_02043568 (UnkStruct_0203E724 * param0)
{
    sub_02025340(param0->unk_34->unk_0C);
    return 0;
}

static BOOL sub_02043578 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = sub_020247C8(param0->unk_34->unk_0C);
    return 0;
}

static BOOL sub_020435A0 (UnkStruct_0203E724 * param0)
{
    ov5_021DDBC8(param0->unk_28);
    return 1;
}

static BOOL sub_020435AC (UnkStruct_0203E724 * param0)
{
    PoketchData * v0 = SaveData_PoketchData(param0->unk_34->unk_0C);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_020567E0(v0);
    return 0;
}

static BOOL sub_020435DC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);

    PoketchData_RegisterApp(SaveData_PoketchData(v0->unk_0C), v1);
    return 0;
}

static BOOL sub_02043608 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);
    u16 * v2 = inline_0204FCAC(param0);

    *v2 = PoketchData_CheckAppRegistered(SaveData_PoketchData(v0->unk_0C), v1);
    return 0;
}

static BOOL sub_02043648 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);

    param0->unk_18[0] = v0;

    sub_020364F0(v0);
    sub_0203E764(param0, sub_02043678);

    return 1;
}

static BOOL sub_02043678 (UnkStruct_0203E724 * param0)
{
    int v0;

    if (CommSys_ConnectedCount() < 2) {
        v0 = 1;
    } else {
        v0 = sub_02036540(param0->unk_18[0]);
    }

    return v0;
}

static BOOL sub_02043694 (UnkStruct_0203E724 * param0)
{
    sub_020365F4();
    return 0;
}

static BOOL sub_020436A0 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    StringFormatter ** v1 = sub_0203F098(v0, 15);
    u16 * v2 = inline_0204FCAC(param0);

    *v2 = sub_0205BC50(*v1);
    return 0;
}

static BOOL sub_020436D0 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);
    FieldSystem * v1 = param0->unk_34;
    StringFormatter ** v2 = sub_0203F098(v1, 15);

    *v0 = sub_0205BF44(param0->unk_34->unk_7C, *v2);
    return 0;
}

static BOOL sub_02043708 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);

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

static BOOL sub_02043748 (UnkStruct_0203E724 * param0)
{
    LocalMapObject ** v0 = sub_0203F098(param0->unk_34, 10);
    StringFormatter ** v1 = sub_0203F098(param0->unk_34, 15);
    u16 v2 = sub_0203E838(param0);
    TrainerInfo * v3 = SaveData_GetTrainerInfo(sub_0203D174(param0->unk_34));
    UnkStruct_02014EC4 * v4 = sub_02014EC4(sub_0203D174(param0->unk_34));
    u16 v5;

    if (v2 == 0) {
        v5 = sub_02062910(*v0);
    } else {
        v5 = 0;
    }

    sub_0205C040(*v1, v2, v5, v3, v4);
    return 0;
}

static BOOL sub_020437B4 (UnkStruct_0203E724 * param0)
{
    sub_02099514(param0->unk_34);
    return 0;
}

static BOOL sub_020437C4 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    sub_0205C2B0(v0->unk_80);
    sub_02036AC4();
    sub_0203E764(param0, sub_020437E8);

    return 1;
}

static BOOL sub_020437E8 (UnkStruct_0203E724 * param0)
{
    return CommSys_ConnectedCount() < 2;
}

static BOOL sub_020437FC (UnkStruct_0203E724 * param0)
{
    LocalMapObject ** v0 = sub_0203F098(param0->unk_34, 10);
    u16 v1 = sub_0203E838(param0);
    u16 * v2 = inline_0204FCAC(param0);
    StringFormatter ** v3 = sub_0203F098(param0->unk_34, 15);

    *v2 = sub_0205BCF4(param0->unk_34->unk_7C, sub_02062910(*v0), v1, *v3);
    return 0;
}

static BOOL sub_02043854 (UnkStruct_0203E724 * param0)
{
    PartyManagementData * v0;
    void ** v1;
    u16 * v2 = inline_0204FCAC(param0);

    *v2 = sub_0205BA7C(param0->unk_34->unk_7C);

    if (*v2 != 0) {
        v1 = sub_0203F098(param0->unk_34, 19);
        v0 = *v1;
        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL sub_02043894 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    LocalMapObject ** v1 = sub_0203F098(v0, 10);
    u16 * v2 = inline_0204FCAC(param0);

    *v2 = sub_0205B780(v0->unk_7C, sub_02062910(*v1));
    return 0;
}

static BOOL sub_020438CC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    LocalMapObject ** v1 = sub_0203F098(v0, 10);
    u16 v2 = inline_02049538(param0);
    u16 * v3 = inline_0204FCAC(param0);

    *v3 = sub_0205B804(v0->unk_7C, sub_02062910(*v1), v2);
    return 0;
}

static BOOL sub_0204391C (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);

    param0->unk_18[0] = v0;
    sub_0203E764(param0, sub_02043938);

    return 1;
}

static BOOL sub_02043938 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u32 v1 = sub_0205B8D8(v0->unk_7C);
    u16 * v2 = sub_0203F118(v0, param0->unk_18[0]);

    if (v1 == 0) {
        return 0;
    }

    *v2 = v1;
    return 1;
}

static BOOL sub_02043964 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    UnkStruct_0205C22C * v1 = v0->unk_80;

    sub_0205C820(v0->unk_38, v1);
    return 0;
}

static BOOL sub_02043978 (UnkStruct_0203E724 * param0)
{
    sub_0205BEA8(4);
    sub_02036BA0();
    return 0;
}

static BOOL sub_02043988 (UnkStruct_0203E724 * param0)
{
    sub_02036BD8();
    sub_02036AC4();
    sub_0205BEA8(0);
    return 0;
}

static BOOL sub_0204399C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);

    sub_0205B930(v0->unk_7C, v1, v2);
    return 0;
}

static BOOL sub_020439D8 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);

    param0->unk_18[0] = v0;
    sub_0203E764(param0, sub_020439F4);

    return 1;
}

static BOOL sub_020439F4 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = sub_0203F118(param0->unk_34, param0->unk_18[0]);
    u32 v1 = sub_0205B8DC(param0->unk_34->unk_7C);

    if (v1 >= 1) {
        *v0 = v1;

        sub_0205C154(param0->unk_34->unk_7C);
        return 1;
    }

    *v0 = 0;
    return 0;
}

static BOOL sub_02043A30 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);

    param0->unk_18[0] = v0;
    sub_0203E764(param0, sub_02043A4C);

    return 1;
}

static BOOL sub_02043A4C (UnkStruct_0203E724 * param0)
{
    u16 * v0 = sub_0203F118(param0->unk_34, param0->unk_18[0]);
    u32 v1 = sub_0205B91C(param0->unk_34->unk_7C);

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        v1 = sub_0205B9EC(param0->unk_34->unk_7C, 8);

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

static BOOL sub_02043A94 (UnkStruct_0203E724 * param0)
{
    sub_02054708(param0->unk_34->unk_10);
    return 1;
}

static BOOL sub_02043AA4 (UnkStruct_0203E724 * param0)
{
    TrainerInfo * v0 = SaveData_GetTrainerInfo(sub_0203D174(param0->unk_34));
    StringFormatter ** v1 = sub_0203F098(param0->unk_34, 15);

    sub_0205C980(TrainerInfo_ID(v0), TrainerInfo_Gender(v0), *v1);
    return 0;
}

static BOOL sub_02043AE0 (UnkStruct_0203E724 * param0)
{
    TrainerInfo * v0 = SaveData_GetTrainerInfo(sub_0203D174(param0->unk_34));
    u16 v1 = inline_02049538(param0);
    u16 * v2 = inline_0204FCAC(param0);

    *v2 = sub_0205C9BC(TrainerInfo_ID(v0), TrainerInfo_Gender(v0), v1);
    *v2 = sub_0205CA14(TrainerInfo_Gender(v0), *v2, 2);

    return 0;
}

static BOOL sub_02043B48 (UnkStruct_0203E724 * param0)
{
    TrainerInfo * v0 = SaveData_GetTrainerInfo(sub_0203D174(param0->unk_34));
    u16 v1 = inline_02049538(param0);
    u16 * v2 = inline_0204FCAC(param0);

    *v2 = sub_0205C9BC(TrainerInfo_ID(v0), TrainerInfo_Gender(v0), v1);

    return 0;
}

static BOOL sub_02043BA0 (UnkStruct_0203E724 * param0)
{
    TrainerInfo * v0 = SaveData_GetTrainerInfo(sub_0203D174(param0->unk_34));
    u16 v1 = inline_02049538(param0);

    TrainerInfo_SetAppearance(v0, v1);
    return 0;
}

static BOOL sub_02043BD4 (UnkStruct_0203E724 * param0)
{
    sub_02052C5C(param0->unk_28);
    return 1;
}

static BOOL sub_02043BE0 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    FieldSystem * v1 = param0->unk_34;

    sub_0203A764(sub_0203A790(v1->unk_0C), v0);
    return 0;
}

static BOOL sub_02043C0C (UnkStruct_0203E724 * param0)
{
    TrainerInfo * v0 = SaveData_GetTrainerInfo(sub_0203D174(param0->unk_34));
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = TrainerInfo_Gender(v0);
    return 0;
}

static BOOL sub_02043C3C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = sub_02050A60(param0->unk_28);

    HealAllPokemonInParty(Party_GetFromSavedata(v0->unk_0C));
    return 0;
}

static BOOL sub_02043C54 (UnkStruct_0203E724 * param0)
{
    return 0;
}

static BOOL sub_02043C58 (UnkStruct_0203E724 * param0)
{
    FieldCommMan_EndBattle();
    sub_0203E764(param0, sub_02043C70);
    return 1;
}

static BOOL sub_02043C70 (UnkStruct_0203E724 * param0)
{
    if (CommMan_IsInitialized() != 1) {
        if (sub_02033E1C() != 1) {
            return 1;
        }
    }

    return 0;
}

static BOOL sub_02043C8C (UnkStruct_0203E724 * param0)
{
    sub_020598A0();
    sub_0203E764(param0, sub_02043C70);
    return 1;
}

static BOOL sub_02043CA4 (UnkStruct_0203E724 * param0)
{
    FieldCommMan_EnterBattleRoom(param0->unk_34);
    return 0;
}

static BOOL sub_02043CB4 (UnkStruct_0203E724 * param0)
{
    CommPlayer_SetDir(sub_0203E838(param0));
    return 0;
}

static BOOL sub_02043CC4 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_0207D69C(sub_0207D990(param0->unk_34->unk_0C), v0);
    return 0;
}

static BOOL sub_02043D04 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);

    sub_0203A4C4(param0->unk_34, v0, v1, v2);
    return 0;
}

static BOOL sub_02043D54 (UnkStruct_0203E724 * param0)
{
    LocalMapObject * v0;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);
    u16 v4 = inline_02049538(param0);
    u16 v5 = inline_02049538(param0);

    v0 = sub_0206251C(param0->unk_34->unk_38, v1);

    LocalMapObj_SetPosDir(v0, v2, v3, v4, v5);
    sub_020642F8(v0);

    return 0;
}

static BOOL sub_02043DE4 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 v1 = inline_02049538(param0);

    sub_0203A52C(param0->unk_34, v0, v1);
    return 0;
}

static BOOL sub_02043E1C (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 v1 = inline_02049538(param0);

    sub_0203A4FC(param0->unk_34, v0, v1);
    return 0;
}

static BOOL sub_02043E54 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);

    sub_0203A55C(param0->unk_34, v0, v1, v2);
    return 0;
}

static BOOL sub_02043EA4 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);

    sub_0203A594(param0->unk_34, v0, v1, v2);
    return 0;
}

static BOOL sub_02043EF4 (UnkStruct_0203E724 * param0)
{
    LocalMapObject * v0;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);

    v0 = sub_0206251C(param0->unk_34->unk_38, v1);

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    }

    ov5_021ECDFC(v0, v2);
    return 0;
}

static BOOL sub_02043F40 (UnkStruct_0203E724 * param0)
{
    u16 ** v0 = sub_0203F098(param0->unk_34, 12);
    u16 v1 = inline_02049538(param0);

    if (*v0 != NULL) {
        **v0 = v1;
    }

    return 0;
}

static BOOL sub_02043F6C (UnkStruct_0203E724 * param0)
{
    u16 v0, v1;
    u16 v2, v3;
    int v4, v5;
    u8 v6;
    FieldSystem * v7;

    v0 = sub_0203E838(param0);
    v1 = sub_0203E838(param0);
    v2 = inline_02049538(param0);
    v3 = inline_02049538(param0);
    v6 = (*((param0)->unk_08++));
    v7 = param0->unk_34;
    v4 = v0 * 32 + v2;
    v5 = v1 * 32 + v3;

    ov5_021D4BF4(v7, v4, v5, v6);

    return 0;
}

static BOOL sub_02043FC4 (UnkStruct_0203E724 * param0)
{
    u8 v0;
    FieldSystem * v1;

    v0 = (*((param0)->unk_08++));
    v1 = param0->unk_34;

    ov5_021D4D48(v1, v0);
    return 1;
}

static BOOL sub_02043FDC (UnkStruct_0203E724 * param0)
{
    u8 v0;
    FieldSystem * v1;

    v0 = (*((param0)->unk_08++));
    v1 = param0->unk_34;

    ov5_021D4D68(v1, v0);
    return 0;
}

static BOOL sub_02043FF4 (UnkStruct_0203E724 * param0)
{
    u8 v0;
    FieldSystem * v1;

    v0 = (*((param0)->unk_08++));
    v1 = param0->unk_34;

    ov5_021D4C88(v1, v0);
    return 0;
}

static BOOL sub_0204400C (UnkStruct_0203E724 * param0)
{
    u8 v0;
    FieldSystem * v1;

    v0 = (*((param0)->unk_08++));
    v1 = param0->unk_34;

    ov5_021D4CEC(v1, v0);
    return 0;
}

static BOOL sub_02044024 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    sub_02071B10(v0);
    return 0;
}

static BOOL sub_02044034 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    ov8_0224997C(v0);
    return 1;
}

static BOOL sub_02044044 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    sub_02071C18(v0);
    return 0;
}

static BOOL sub_02044054 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    ov8_02249FB8(v0);
    return 1;
}

static BOOL sub_02044064 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    sub_02071B30(v0);
    return 0;
}

static BOOL sub_02044074 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    sub_02071BF8(v0);
    return 0;
}

static BOOL sub_02044084 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u8 v1 = (*((param0)->unk_08++));

    sub_02071B6C(v0, v1);
    return 0;
}

static BOOL sub_020440A0 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u8 v1 = (*((param0)->unk_08++));

    ov8_0224AD34(v0, v1);
    return 1;
}

static BOOL sub_020440BC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    sub_02071BD0(v0);
    return 0;
}

static BOOL sub_020440CC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    sub_02071C34(v0);
    return 0;
}

static BOOL sub_020440DC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    sub_02071C5C(v0);
    return 0;
}

static BOOL sub_020440EC (UnkStruct_0203E724 * param0)
{
    u16 * v0, * v1, * v2;
    FieldSystem * v3 = param0->unk_34;

    v0 = inline_0204FCAC(param0);
    v2 = inline_0204FCAC(param0);
    v1 = inline_0204FCAC(param0);

    {
        LocalMapObject * v4 = Player_LocalMapObject(v3->playerAvatar);

        *v0 = sub_02063020(v4);
        *v2 = ((sub_02063030(v4) / 2));
        *v1 = sub_02063040(v4);
    }

    return 0;
}

static BOOL sub_02044158 (UnkStruct_0203E724 * param0)
{
    sub_0203E2FC(param0->unk_34);
    return 1;
}

static BOOL sub_02044168 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    LocalMapObject ** v1 = sub_0203F098(param0->unk_34, 10);
    u16 v2 = inline_02049538(param0);
    u16 v3 = sub_0203E838(param0);

    param0->unk_18[0] = v3;
    *v0 = ov23_02252C98(v2, param0->unk_34, sub_02062910(*v1));

    sub_0203E764(param0, sub_020441C8);
    return 1;
}

static BOOL sub_020441C8 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u16 * v1 = sub_0203F118(param0->unk_34, param0->unk_18[0]);

    *v1 = ov23_02252C70((*v0));

    if ((*v1) == 0xfffe) {
        return 0;
    }

    return 1;
}

static BOOL sub_02044208 (UnkStruct_0203E724 * param0)
{
    u8 * v0 = sub_0203F098(param0->unk_34, 3);

    *v0 = ov23_02252C9C(inline_02049538(param0));
    sub_0203E764(param0, sub_02044240);

    return 1;
}

static BOOL sub_02044240 (UnkStruct_0203E724 * param0)
{
    u8 * v0 = sub_0203F098(param0->unk_34, 3);
    return sub_0205DA04(*v0);
}

static BOOL sub_02044254 (UnkStruct_0203E724 * param0)
{
    ov23_02252CD4();
    return 0;
}

static BOOL sub_02044260 (UnkStruct_0203E724 * param0)
{
    u8 v0 = (*((param0)->unk_08++));
    u16 v1 = inline_02049538(param0);

    ov23_02252CE0(v0, v1);
    return 0;
}

static BOOL sub_02044288 (UnkStruct_0203E724 * param0)
{
    u8 v0 = (*((param0)->unk_08++));
    u16 v1 = inline_02049538(param0);

    ov23_02252CF4(v0, v1);
    return 0;
}

static BOOL sub_020442B0 (UnkStruct_0203E724 * param0)
{
    return 1;
}

static BOOL sub_020442B4 (UnkStruct_0203E724 * param0)
{
    LocalMapObject * v0;
    FieldSystem * v1 = param0->unk_34;

    v0 = sub_0206251C(v1->unk_38, inline_02049538(param0));

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    }

    sub_02062D64(v0, 0);
    return 0;
}

static BOOL sub_020442E8 (UnkStruct_0203E724 * param0)
{
    LocalMapObject * v0;
    FieldSystem * v1 = param0->unk_34;

    v0 = sub_0206251C(v1->unk_38, inline_02049538(param0));

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    }

    sub_02062D64(v0, 1);
    return 0;
}

static BOOL sub_0204431C (UnkStruct_0203E724 * param0)
{
    sub_020736D8(param0->unk_28);
    return 1;
}

static BOOL sub_02044328 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = inline_0204FCAC(param0);
    UnkStruct_02028430 * v2 = sub_02028430(v0->unk_0C);

    *v1 = (u16)sub_02028494(v2, 0);
    return 0;
}

static BOOL sub_02044354 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);

    sub_020703FC(param0->unk_28, v0);
    return 1;
}

static BOOL sub_02044374 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = sub_02055BA8(param0->unk_34);
    return 0;
}

static BOOL sub_02044398 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = inline_0204FCAC(param0);
    u16 v2 = inline_02049538(param0);

    *v1 = (LCRNG_Next() % v2);

    return 1;
}

static BOOL sub_020443D0 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = inline_0204FCAC(param0);
    u16 v2 = inline_02049538(param0);

    *v1 = (LCRNG_Next() % v2);

    return 1;
}

static BOOL sub_02044408 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = inline_0204FCAC(param0);
    u16 v2 = inline_02049538(param0);

    *v1 = ov5_021EE920(v0, v2);

    return 0;
}

static BOOL sub_02044444 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    Pokemon * v1;
    u16 v2 = inline_02049538(param0);

    ov5_021EE9BC(v0, v2);

    return 0;
}

static BOOL sub_02044468 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);

    ov5_021EEA84(v0, v1, v2, v3);
    return 0;
}

static BOOL sub_020444BC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);

    ov5_021EEA54(v0, v1, v2, v3);
    return 0;
}

static BOOL sub_02044510 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    sub_0206B0C4(SaveData_Events(v0->unk_0C), 0x8200);
    return 0;
}

static BOOL sub_02044528 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    inline_02044528(SaveData_Events(v0->unk_0C));
    v0->unk_9C = sub_0202B634(sub_0202B628(v0->unk_0C), 1);
    sub_02053494(v0);

    return 0;
}

static BOOL sub_02044558 (UnkStruct_0203E724 * param0)
{
    u8 v0;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);
    u16 v4 = inline_02049538(param0);
    u16 v5 = inline_02049538(param0);
    void ** v6 = sub_0203F098(param0->unk_34, 20);

    switch (v1) {
    case 16:
        v0 = 1;
        *v6 = sub_0202BDD4(4);
        break;
    case 17:
        v0 = 1;
        *v6 = sub_0202BDE0(4);
        break;
    case 18:
        v0 = 1;
        *v6 = sub_0202BDEC(v2, 4);
        break;
    case 19:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
        v0 = 1;
        *v6 = sub_0202BE00(v1 - 19, v2, 4);
        break;
    case 36:
    case 37:
    case 39:
    case 38:
    case 40:
        v0 = 1;
        *v6 = sub_0202BE2C(4, v1);
        break;
    default:
        return 1;
    }

    sub_0202B758(param0->unk_34->unk_9C, *v6, v0);
    return 1;
}

static BOOL sub_0204466C (UnkStruct_0203E724 * param0)
{
    return 0;
}

static BOOL sub_02044670 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0202A750 * v0;
    UnkStruct_02029D04 * v1;
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);

    v0 = sub_0202A750(param0->unk_34->unk_0C);
    v1 = sub_02029D04(v0);

    sub_02029E2C(v1, v2, v3);
    return 0;
}

static BOOL sub_020446B4 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0202A750 * v0;
    UnkStruct_02029D04 * v1;
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);
    u16 * v4 = inline_0204FCAC(param0);

    v0 = sub_0202A750(param0->unk_34->unk_0C);
    v1 = sub_02029D04(v0);
    *v4 = sub_02029D50(v1, v2, v3);

    return 0;
}

static BOOL sub_02044710 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0202A750 * v0;
    UnkStruct_02029D04 * v1;
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);
    u16 * v4 = inline_0204FCAC(param0);

    v0 = sub_0202A750(param0->unk_34->unk_0C);
    v1 = sub_02029D04(v0);

    if (v3 <= sub_02029D94(v1, v2)) {
        *v4 = 1;
    } else {
        *v4 = 0;
    }

    return 0;
}

static BOOL sub_02044774 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0202A750 * v0;
    UnkStruct_02029D04 * v1;
    u16 v2 = inline_02049538(param0);

    v0 = sub_0202A750(param0->unk_34->unk_0C);
    v1 = sub_02029D04(v0);

    sub_02029EFC(v1, v2);
    return 0;
}

static BOOL sub_020447A4 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0202A750 * v0;
    UnkStruct_02029D04 * v1;
    u16 v2 = inline_02049538(param0);
    u16 * v3 = inline_0204FCAC(param0);

    v0 = sub_0202A750(param0->unk_34->unk_0C);
    v1 = sub_02029D04(v0);
    *v3 = sub_02029D80(v1, v2);

    return 0;
}

static BOOL sub_020447E8 (UnkStruct_0203E724 * param0)
{
    const PokedexData * v0 = sub_02027560(param0->unk_34->unk_0C);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = 0;

    if (sub_02026F0C(v0) == 1) {
        *v1 = 1;
    }

    return 0;
}

static BOOL sub_02044820 (UnkStruct_0203E724 * param0)
{
    const PokedexData * v0 = sub_02027560(param0->unk_34->unk_0C);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = 0;

    if (sub_02026EF4(v0) == 1) {
        *v1 = 1;
    }

    return 0;
}

static BOOL sub_02044858 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 19);

    *v0 = sub_0203E53C(param0->unk_34, 32, 0);
    sub_0203E764(param0, sub_02041CC8);

    return 1;
}

static BOOL sub_02044888 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 19);

    *v0 = sub_0203E53C(param0->unk_34, 32, 1);
    sub_0203E764(param0, sub_02041CC8);

    return 1;
}

static BOOL sub_020448B8 (UnkStruct_0203E724 * param0)
{
    ov6_022475B0(param0->unk_34->unk_0C);
    return 0;
}

static BOOL sub_020448C8 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    (*v0) = ov6_02247624(param0->unk_34->unk_0C);
    return 0;
}

static BOOL sub_020448F0 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);
    return 0;
}

static BOOL sub_02044908 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);

    sub_0202CF28(sub_0202CD88(param0->unk_34->unk_0C), v0);
    return 0;
}

static BOOL sub_02044928 (UnkStruct_0203E724 * param0)
{
    u32 v0;
    u16 * v1, * v2;
    u16 v3 = sub_0203E838(param0);
    u16 v4 = sub_0203E838(param0);
    u16 v5 = sub_0203E838(param0);

    v1 = sub_0203F118(param0->unk_34, v4);
    v2 = sub_0203F118(param0->unk_34, v5);
    v0 = sub_0202CFB8(sub_0202CD88(param0->unk_34->unk_0C), v3);
    *v1 = ((v0 & 0xFFFF0000) >> 16);
    *v2 = (v0 & 0xFFFF);

    return 0;
}

static BOOL sub_02044980 (UnkStruct_0203E724 * param0)
{
    u32 v0;
    u16 v1 = sub_0203E838(param0);
    u16 v2 = sub_0203E838(param0);
    u16 v3 = sub_0203E838(param0);
    u8 v4 = (*((param0)->unk_08++));

    v0 = (u32)(v2) << 16;
    v0 |= v3;

    switch (v4) {
    case 0:
        sub_0202CF70(sub_0202CD88(param0->unk_34->unk_0C), v1, v0);
        break;
    case 1:
        sub_0202CE90(sub_0202CD88(param0->unk_34->unk_0C), v1, v0);
        break;
    case 2:
        sub_0202CED0(sub_0202CD88(param0->unk_34->unk_0C), v1, v0);
        break;
    }

    return 0;
}

static BOOL sub_020449F4 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);
    u16 v1 = inline_02049538(param0);

    sub_0202CF70(sub_0202CD88(param0->unk_34->unk_0C), v0, v1);
    return 0;
}

static BOOL sub_02044A28 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);
    u32 v1 = sub_0203E850(param0);

    sub_0202CF70(sub_0202CD88(param0->unk_34->unk_0C), v0, v1);
    return 0;
}

static BOOL sub_02044A50 (UnkStruct_0203E724 * param0)
{
    u16 * v0;
    u16 * v1;
    UnkStruct_0203A790 * v2 = sub_0203A790(param0->unk_34->unk_0C);
    UnkStruct_020507E4 * v3 = SaveData_Events(param0->unk_34->unk_0C);
    TVBroadcast * v4 = SaveData_TVBroadcast(param0->unk_34->unk_0C);
    int v5 = (*((param0)->unk_08++));

    v0 = sub_0203A784(v2);
    v1 = sub_0203A788(v2);

    switch (v5) {
    case 0:
        sub_0206AE3C(v3);
        sub_0206D000(v4);
        *v0 = 30;
        *v1 = 0;
        break;
    case 1:
        sub_0206AE4C(v3);
        sub_0206D720(param0->unk_34);
        {
            void * v6 = sub_0202BDE0(4);

            sub_0202B758(param0->unk_34->unk_9C, v6, 1);
        }
        *v0 = 0;
        *v1 = 0;
        break;
    }

    return 0;
}

static BOOL sub_02044AE8 (UnkStruct_0203E724 * param0)
{
    sub_0206C0E8(param0->unk_34);
    return 1;
}

static BOOL sub_02044AF8 (UnkStruct_0203E724 * param0)
{
    u8 v0 = (*((param0)->unk_08++));
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = ov6_02243004(param0->unk_34, v0);
    return 1;
}

static BOOL sub_02044B28 (UnkStruct_0203E724 * param0)
{
    sub_02071CD0(param0->unk_34);
    return 0;
}

static BOOL sub_02044B38 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);
    u16 v1 = sub_0203E838(param0);

    sub_02004550(65, 0, 0);
    ov6_02242B58(param0->unk_34, *v0, v1);

    return 1;
}

static BOOL sub_02044B70 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = ov6_02242C3C(param0->unk_34, v0);
    return 0;
}

static BOOL sub_02044BA0 (UnkStruct_0203E724 * param0)
{
    u8 v0 = (*((param0)->unk_08++));

    sub_0205ED2C(param0->unk_34->playerAvatar, v0);
    return 1;
}

static BOOL sub_02044BB8 (UnkStruct_0203E724 * param0)
{
    UnkStruct_020507E4 * v0 = SaveData_Events(param0->unk_34->unk_0C);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_0206B354(v0);
    return 0;
}

static BOOL sub_02044BE8 (UnkStruct_0203E724 * param0)
{
    const PokedexData * v0 = sub_02027560(param0->unk_34->unk_0C);
    u16 * v1 = inline_0204FCAC(param0);
    u16 v2, v3, v4, v5;

    v2 = sub_02026EAC(v0);
    v3 = LCRNG_Next() % v2;
    *v1 = 25;

    for (v4 = 1, v5 = 0; v4 <= NATIONAL_DEX_COUNT; v4++) {
        if ((sub_02026FE8(v0, v4) == 1) && (Pokemon_SinnohDexNumber(v4) != 0)) {
            if (v5 == v3) {
                *v1 = v4;
                break;
            }

            v5++;
        }
    }

    return 0;
}

static BOOL sub_02044C64 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);

    sub_0206B270(SaveData_Events(param0->unk_34->unk_0C), v0);
    return 0;
}

static BOOL sub_02044C90 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = sub_0206B260(SaveData_Events(param0->unk_34->unk_0C));
    return 0;
}

static BOOL sub_02044CBC (UnkStruct_0203E724 * param0)
{
    sub_0202D884(param0->unk_34->unk_0C);

    return 0;
}

static BOOL sub_02044CCC (UnkStruct_0203E724 * param0)
{
    u8 v0 = (*((param0)->unk_08++));

    RoamingPokemon_ActivateSlot(param0->unk_34->unk_0C, v0);
    return 0;
}

static BOOL sub_02044CE4 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u8 v1 = (*((param0)->unk_08++));

    *v0 = ov6_02246184(11, v1);
    return 0;
}

static BOOL sub_02044D08 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = ov6_02246224((UnkStruct_ov6_02246204 *)*v0);
    return 0;
}

static BOOL sub_02044D38 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = ov6_0224622C((UnkStruct_ov6_02246204 *)*v0);
    return 0;
}

static BOOL sub_02044D68 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u16 v1 = inline_02049538(param0);

    sub_0206C740(param0->unk_28, (UnkStruct_ov6_02246204 *)*v0, v1, 11);
    return 1;
}

static BOOL sub_02044D9C (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);

    ov6_02246204((UnkStruct_ov6_02246204 *)*v0);
    return 0;
}

static BOOL sub_02044DB4 (UnkStruct_0203E724 * param0)
{
    sub_02027508(sub_02027560(param0->unk_34->unk_0C));
    return 0;
}

static BOOL sub_02044DC8 (UnkStruct_0203E724 * param0)
{
    sub_020274B0(sub_02027560(param0->unk_34->unk_0C));
    return 0;
}

static BOOL sub_02044DDC (UnkStruct_0203E724 * param0)
{
    u8 v0 = (*((param0)->unk_08++));
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = 0;

    if (v0 == 1) {
        sub_02027454(sub_02027560(param0->unk_34->unk_0C));
        TrainerInfo_GiveNationalDex(SaveData_GetTrainerInfo(param0->unk_34->unk_0C));
    } else if (v0 == 2) {
        *v1 = sub_02027474(sub_02027560(param0->unk_34->unk_0C));
    } else {
        GF_ASSERT(FALSE);
    }

    return 0;
}

static BOOL sub_02044E40 (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    u16 * v1 = inline_0204FCAC(param0);
    u16 v2 = inline_02049538(param0);
    u32 v3[7];

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->unk_34->unk_0C), v2);

    v3[0] = Pokemon_GetValue(v0, MON_DATA_HP_EV, NULL);
    v3[1] = Pokemon_GetValue(v0, MON_DATA_ATK_EV, NULL);
    v3[2] = Pokemon_GetValue(v0, MON_DATA_DEF_EV, NULL);
    v3[3] = Pokemon_GetValue(v0, MON_DATA_SPEED_EV, NULL);
    v3[4] = Pokemon_GetValue(v0, MON_DATA_SPATK_EV, NULL);
    v3[5] = Pokemon_GetValue(v0, MON_DATA_SPDEF_EV, NULL);
    *v1 = (v3[0] + v3[1] + v3[2] + v3[3] + v3[4] + v3[5]);

    return 0;
}

static BOOL sub_02044EDC (UnkStruct_0203E724 * param0)
{
    RTCDate v0;
    u16 * v1 = inline_0204FCAC(param0);

    GetCurrentDate(&v0);
    *v1 = v0.week;

    return 0;
}

static BOOL sub_02044F04 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);

    ov7_0224BE7C(param0->unk_28, sub_0203F118(param0->unk_34, v0));
    return 1;
}

static BOOL sub_02044F24 (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    u16 * v1 = inline_0204FCAC(param0);
    u16 * v2 = inline_0204FCAC(param0);
    u16 v3 = inline_02049538(param0);
    u16 v4, v5;

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->unk_34->unk_0C), v3);
    v4 = Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL);
    v5 = Pokemon_GetValue(v0, MON_DATA_FORM, NULL);
    *v1 = ov5_021F0E90(v4, v5);
    *v2 = ov5_021F0E84(v4);

    return 0;
}

static BOOL sub_02044FA4 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);

    ov6_02246C24(param0->unk_34, v0);
    return 1;
}

static BOOL sub_02044FCC (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 v1 = inline_02049538(param0);

    ov6_02246F00(param0->unk_34, (u8)v0, (u8)v1);
    return 1;
}

static BOOL sub_0204500C (UnkStruct_0203E724 * param0)
{
    u8 v0 = (*((param0)->unk_08++));
    u8 v1 = (*((param0)->unk_08++));
    int v2 = sub_0203E838(param0);
    int v3 = sub_0203E838(param0);
    int v4 = sub_0203E838(param0);

    sub_0206C784(param0->unk_34, v0, v1, v2, v3, v4);
    return 1;
}

static BOOL sub_0204504C (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = GAME_VERSION;
    return 0;
}

static BOOL sub_02045068 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    TrainerInfo * v1 = SaveData_GetTrainerInfo(sub_0203D174(param0->unk_34));
    u16 * v2 = inline_0204FCAC(param0);
    PCBoxes * v3 = SaveData_PCBoxes(v0->unk_0C);
    u16 v4 = inline_02049538(param0);
    u16 v5 = inline_02049538(param0);
    u16 v6 = inline_02049538(param0);
    u16 v7 = inline_02049538(param0);
    int v8;

    v8 = ov6_022479D0(v1, v4, v5, v6, v7, 4);

    if ((v8 == -1) || (v8 > 7)) {
        *v2 = 0xff;
        return 0;
    }

    if (sub_02079CFC(v3, v8)) {
        *v2 = 0;
    } else {
        sub_02079CD8(v3, v8);
        *v2 = v8 + 1;
    }

    return 0;
}

static BOOL sub_02045134 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    SaveData * v1 = v0->unk_0C;
    UnkStruct_0202855C * v2;
    u16 * v3 = inline_0204FCAC(param0);

    v2 = sub_020298A0(v1);
    *v3 = sub_020295B8(v2);

    return 0;
}

static BOOL sub_02045160 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0;
    u8 v1;

    v0 = param0->unk_34;
    v1 = (*((param0)->unk_08++));

    ov6_02247078(v0, v1);

    return 0;
}

static BOOL sub_0204517C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0;
    u8 v1;

    v0 = param0->unk_34;
    v1 = (*((param0)->unk_08++));

    ov6_022470E8(v0, v1);
    return 0;
}

static BOOL sub_02045198 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0;
    u8 v1;

    v0 = param0->unk_34;
    v1 = (*((param0)->unk_08++));

    ov6_022470F4(v0, v1);
    return 0;
}

static void sub_020451B4 (FieldSystem * param0, u16 param1)
{
    PokedexData * v0 = sub_02027560(param0->unk_0C);
    Pokemon * v1 = Pokemon_New(32);

    Pokemon_Init(v1);
    Pokemon_InitWith(v1, param1, 50, 32, 0, 0, 0, 0);
    sub_020272A4(v0, v1);
    Heap_FreeToHeap(v1);

    return;
}

static BOOL sub_020451F8 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);

    sub_020451B4(param0->unk_34, v0);
    return 0;
}

static BOOL sub_0204521C (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);
    u16 v1;

    v1 = sub_02079A50(SaveData_PCBoxes(param0->unk_34->unk_0C));
    *v0 = 18 * (5 * 6) - v1;

    return 0;
}

static BOOL sub_02045250 (UnkStruct_0203E724 * param0)
{
    SysTask ** v0 = sub_0203F098(param0->unk_34, 22);

    *v0 = NULL;
    *v0 = ov5_021E1000(param0->unk_34);

    return 1;
}

static BOOL sub_02045274 (UnkStruct_0203E724 * param0)
{
    SysTask ** v0 = sub_0203F098(param0->unk_34, 22);

    ov5_021E100C(*v0);
    return 1;
}

static BOOL sub_0204528C (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);

    ov6_02247D30(param0->unk_34, v0);
    return 1;
}

static BOOL sub_020452B4 (UnkStruct_0203E724 * param0)
{
    sub_020716D4(param0->unk_34);
    return 0;
}

static BOOL sub_020452C4 (UnkStruct_0203E724 * param0)
{
    sub_0207183C(param0->unk_34);
    return 1;
}

static BOOL sub_020452D4 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    if (sub_02071818(param0->unk_34)) {
        (*v0) = 1;
    } else {
        (*v0) = 0;
    }

    return 0;
}

static BOOL sub_02045304 (UnkStruct_0203E724 * param0)
{
    ov6_02247F5C(param0->unk_34);
    return 0;
}

static BOOL sub_02045314 (UnkStruct_0203E724 * param0)
{
    ov6_02247FBC(param0->unk_34);
    return 1;
}

static BOOL sub_02045324 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);

    sub_0202CFEC(sub_0202CD88(param0->unk_34->unk_0C), v0);
    return 0;
}

static BOOL sub_02045344 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 * v1 = inline_0204FCAC(param0);
    Party * v2 = Party_GetFromSavedata(param0->unk_34->unk_0C);

    *v1 = Party_HasSpecies(v2, v0);
    return 1;
}

static BOOL sub_02045384 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    Party * v1 = Party_GetFromSavedata(param0->unk_34->unk_0C);
    int v2;
    int v3;
    int v4 = Party_GetCurrentCount(v1);
    Pokemon * v5;
    PokedexData * v6 = sub_02027560(param0->unk_34->unk_0C);

    for (v2 = 0; v2 < v4; v2++) {
        v5 = Party_GetPokemonBySlotIndex(v1, v2);
        v3 = Pokemon_GetValue(v5, MON_DATA_SPECIES, NULL);

        if (v3 == 386) {
            Pokemon_SetValue(v5, 112, &v0);
            Pokemon_CalcLevelAndStats(v5);
            sub_0202736C(v6, v5);
        }
    }

    return 1;
}

static BOOL sub_02045404 (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    int v1, v2, v3, v4, v5, v6;
    u16 * v7 = inline_0204FCAC(param0);
    Party * v8 = Party_GetFromSavedata(param0->unk_34->unk_0C);
    int v9 = Party_GetCurrentCount(v8);

    v3 = 0;
    v4 = 0;

    for (v1 = 0; v1 < v9; v1++) {
        v0 = Party_GetPokemonBySlotIndex(v8, v1);
        v2 = Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL);
        v6 = Pokemon_GetValue(v0, MON_DATA_GENDER, NULL);
        v5 = Pokemon_GetValue(v0, MON_DATA_IS_EGG, NULL);

        if ((v2 == 415) && (v5 == 0)) {
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

static BOOL sub_020454C0 (UnkStruct_0203E724 * param0)
{
    UnkStruct_020507E4 * v0 = SaveData_Events(param0->unk_34->unk_0C);

    sub_0206AE0C(v0);
    return 0;
}

static BOOL sub_020454D4 (UnkStruct_0203E724 * param0)
{
    UnkStruct_020507E4 * v0 = SaveData_Events(param0->unk_34->unk_0C);

    sub_0206AE1C(v0);
    return 0;
}

static BOOL sub_020454E8 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);

    sub_0203E414(param0->unk_34->unk_10, v0);
    return 1;
}

static BOOL sub_0204550C (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = sub_02055BDC(param0->unk_34);
    return 0;
}

static BOOL sub_02045530 (UnkStruct_0203E724 * param0)
{
    LocalMapObject * v0;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);
    u16 v4 = inline_02049538(param0);
    u16 v5 = inline_02049538(param0);

    v0 = sub_0206251C(param0->unk_34->unk_38, v1);

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    }

    sub_0205E318(param0->unk_28, v0, v2, v3, v4, v5);
    return 1;
}

static BOOL sub_020455C4 (UnkStruct_0203E724 * param0)
{
    LocalMapObject * v0;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);

    v0 = sub_0206251C(param0->unk_34->unk_38, v1);

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    }

    sub_0205E3F4(param0->unk_28, v0, v2, v3);
    return 1;
}

static BOOL sub_02045628 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = sub_0203F118(param0->unk_34, sub_0203E838(param0));

    *v0 = HasAllLegendaryTitansInParty(param0->unk_34->unk_0C);
    return 0;
}

static BOOL sub_02045650 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0202A750 * v0;
    UnkStruct_02029D04 * v1;
    u16 v2[16];
    int v3, v4, v5, v6;
    u16 * v7 = inline_0204FCAC(param0);

    v0 = sub_0202A750(param0->unk_34->unk_0C);
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

static BOOL sub_020456E8 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = gCoreSys.unk_66;
    return 1;
}

static BOOL sub_02045708 (UnkStruct_0203E724 * param0)
{
    UnkStruct_020507E4 * v0 = SaveData_Events(param0->unk_34->unk_0C);

    sub_0206B364(v0, 0);
    return 0;
}

static BOOL sub_02045720 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u8 v1 = (*((param0)->unk_08++));
    UnkStruct_020507E4 * v2 = SaveData_Events(param0->unk_34->unk_0C);

    if (v1) {
        sub_0206B1B0(v2, v0);
    } else {
        sub_0206B1D8(v2, v0);
    }

    return 0;
}

static BOOL sub_02045760 (UnkStruct_0203E724 * param0)
{
    StringFormatter ** v0 = sub_0203F098(param0->unk_34, 15);
    u8 v1 = (*((param0)->unk_08++));
    u16 v2 = inline_02049538(param0);

    sub_0200C01C(*v0, v1, v2);
    return 1;
}

static BOOL sub_02045798 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    UnkStruct_020507E4 * v1 = SaveData_Events(param0->unk_34->unk_0C);
    u16 * v2 = inline_0204FCAC(param0);
    u32 v3;

    v3 = sub_0206B394(v1);

    if (v3 >= 10) {
        *v2 = 1;
    } else {
        *v2 = 0;
    }

    return 0;
}

static BOOL sub_020457D0 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = sub_0206B314(SaveData_Events(param0->unk_34->unk_0C));
    return 0;
}

static BOOL sub_020457FC (UnkStruct_0203E724 * param0)
{
    UnkStruct_0202A750 * v0;
    UnkStruct_02029D04 * v1;
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);

    v0 = sub_0202A750(param0->unk_34->unk_0C);
    v1 = sub_02029D04(v0);

    sub_02029EA0(v1, v2, v3);
    return 0;
}

static BOOL sub_02045840 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    sub_02050568(v0);
    return 1;
}

static BOOL sub_02045850 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    SaveData * v1 = v0->unk_0C;

    sub_0206B334(v1);
    return 0;
}

static BOOL sub_02045860 (UnkStruct_0203E724 * param0)
{
    UnkStruct_02014EC4 * v0;
    u32 v1;
    u16 * v2 = inline_0204FCAC(param0);
    u16 v3 = inline_02049538(param0);
    StringFormatter ** v4 = sub_0203F098(param0->unk_34, 15);

    v0 = sub_02014EC4(param0->unk_34->unk_0C);
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
        sub_0200BE48(*v4, v3, v5);
    }

    return 0;
}

static BOOL sub_020458CC (UnkStruct_0203E724 * param0)
{
    UnkStruct_02014EC4 * v0;
    u16 * v1 = inline_0204FCAC(param0);

    v0 = sub_02014EC4(param0->unk_34->unk_0C);

    if (sub_02014F48(v0) == 1) {
        *v1 = 1;
    } else {
        *v1 = 0;
    }

    return 0;
}

static BOOL sub_02045900 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    UnkStruct_020507E4 * v1 = SaveData_Events(param0->unk_34->unk_0C);
    u16 * v2 = inline_0204FCAC(param0);
    u16 v3;

    v3 = sub_0206B3DC(v1);

    if (v3 >= 5) {
        *v2 = 1;
    } else {
        *v2 = 0;
    }

    return 0;
}

static BOOL sub_02045938 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);
    FieldSystem * v1 = param0->unk_34;
    UnkStruct_02025CCC * v2;

    v2 = sub_02025CCC(param0->unk_34->unk_0C);

    if ((sub_02025D5C(v2) == sub_02055BB8(v1)) && (sub_02025D60(v2) == sub_02055BC4(v1))) {
        *v0 = 1;
    } else {
        *v0 = 0;
    }

    return 0;
}

static BOOL sub_0204598C (UnkStruct_0203E724 * param0)
{
    const PokedexData * v0 = sub_02027560(param0->unk_34->unk_0C);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_020270DC(v0);
    return 0;
}

static BOOL sub_020459BC (UnkStruct_0203E724 * param0)
{
    u8 v0, v1;
    u16 v2, v3, v4;
    u16 v5 = inline_02049538(param0);
    u16 v6 = inline_02049538(param0);
    FieldSystem * v7 = param0->unk_34;
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
    v3 = v7->unk_1C->unk_08;
    v4 = v7->unk_1C->unk_0C;

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

        sub_0203A574(param0->unk_34, v1, v2);
    }

    return 0;
}

static BOOL sub_02045A88 (UnkStruct_0203E724 * param0)
{
    UnkStruct_020507E4 * v0 = SaveData_Events(param0->unk_34->unk_0C);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_0206B3EC(v0);
    return 0;
}

static BOOL sub_02045AB8 (UnkStruct_0203E724 * param0)
{
    UnkStruct_020507E4 * v0 = SaveData_Events(param0->unk_34->unk_0C);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_0206B40C(v0);
    return 0;
}

static BOOL sub_02045AE8 (UnkStruct_0203E724 * param0)
{
    UnkStruct_020507E4 * v0 = SaveData_Events(param0->unk_34->unk_0C);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_0206B42C(v0);
    return 0;
}

static BOOL sub_02045B18 (UnkStruct_0203E724 * param0)
{
    Poffin * v0;
    int v1;
    UnkStruct_0202AB28 * v2;
    u8 v3[5];
    u8 v4;
    u16 v5;
    u16 * v6;
    int v7;

    v6 = inline_0204FCAC(param0);

    for (v7 = 0; v7 < 5; v7++) {
        v3[v7] = inline_02049538(param0);
    }

    v4 = inline_02049538(param0);
    v0 = Poffin_malloc(4);
    v1 = sub_0202A9E4(v0, v3, v4, 0);
    v2 = Poffin_GetSavedataBlock(param0->unk_34->unk_0C);
    v5 = sub_0202AB74(v2, v0);

    Heap_FreeToHeap(v0);

    if (v5 == 0xFFFF) {
        *v6 = 0xffff;
    } else {
        *v6 = v1;
    }

    return 0;
}

static BOOL sub_02045BA8 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0202AB28 * v0;
    u16 * v1;

    v1 = inline_0204FCAC(param0);
    v0 = Poffin_GetSavedataBlock(param0->unk_34->unk_0C);

    if (sub_0202AB54(v0) == 0xFFFF) {
        *v1 = 0;
    } else {
        *v1 = 1;
    }

    return 0;
}

static BOOL sub_02045BE4 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0202AB28 * v0;
    u16 * v1;

    v1 = inline_0204FCAC(param0);
    v0 = Poffin_GetSavedataBlock(param0->unk_34->unk_0C);
    *v1 = sub_0202ACC0(v0);

    return 0;
}

static BOOL sub_02045C10 (UnkStruct_0203E724 * param0)
{
    u8 v0 = (*((param0)->unk_08++));
    u16 * v1 = inline_0204FCAC(param0);
    UnkStruct_020507E4 * v2 = SaveData_Events(param0->unk_34->unk_0C);

    GF_ASSERT((v0 <= 4));

    *v1 = sub_0206B16C(v2, v0);
    return 0;
}

static BOOL sub_02045C50 (UnkStruct_0203E724 * param0)
{
    int v0;
    const HallOfFame * v1;
    u16 * v2 = inline_0204FCAC(param0);

    v1 = SaveData_HallOfFame(param0->unk_34->unk_0C, 32, &v0);

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

static BOOL sub_02045CB8 (UnkStruct_0203E724 * param0)
{
    void ** v0;
    u16 v1 = inline_02049538(param0);

    v0 = sub_0203F098(param0->unk_34, 19);
    *v0 = sub_0203D410(32, param0->unk_34, v1);

    sub_0203E764(param0, sub_02041D60);
    return 1;
}

static BOOL sub_02045CFC (UnkStruct_0203E724 * param0)
{
    void ** v0;
    u16 * v1, * v2;

    v1 = inline_0204FCAC(param0);
    v2 = inline_0204FCAC(param0);
    v0 = sub_0203F098(param0->unk_34, 19);

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

static BOOL sub_02045D70 (UnkStruct_0203E724 * param0)
{
    u16 v0;
    u8 v1 = (*((param0)->unk_08++));
    u16 * v2 = inline_0204FCAC(param0);

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

static BOOL sub_02045DB0 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 * v1 = inline_0204FCAC(param0);
    FieldSystem * v2 = param0->unk_34;

    switch (v0) {
    case 0:
        ov6_0224899C(v2, v1, 0, 32);
        break;
    case 1:
        ov6_0224899C(v2, v1, 1, 32);
        break;
    case 2:
        ov6_0224899C(v2, v1, 2, 32);
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 1;
}

static BOOL sub_02045E14 (UnkStruct_0203E724 * param0)
{
    UnkStruct_020507E4 * v0 = SaveData_Events(param0->unk_34->unk_0C);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_0206B374(v0);
    return 0;
}

static BOOL sub_02045E44 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);

    if (v0 == 0) {
        ov6_0223E384(param0->unk_34->unk_10);
    } else {
        ov6_0223E4EC(param0->unk_34->unk_10);
    }

    return 1;
}

static BOOL sub_02045E78 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = sub_02039074(param0->unk_34->unk_0C);
    return 0;
}

static BOOL sub_02045EA0 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = sub_0202AF94(sub_0202B370(param0->unk_34->unk_0C));
    return 0;
}

static BOOL sub_02045ECC (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    UnkStruct_020298B0 * v1 = sub_020298B0(param0->unk_34->unk_0C);

    if ((v0 == 135) || (v0 == 136)) {
        sub_02028828(v1);
    }

    return 0;
}

static BOOL sub_02045F04 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = 0;

    if ((v0 >= 298) && (v0 <= 313)) {
        *v1 = 1;
    }

    return 0;
}

static BOOL sub_02045F48 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = inline_0204FCAC(param0);
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);
    u16 v4 = inline_02049538(param0);
    u16 v5 = inline_02049538(param0);
    StringFormatter * v6 = sub_0200B358(32);
    MessageLoader * v7 = MessageLoader_Init(0, 26, 372, 32);
    Strbuf* v8;
    Strbuf* v9;

    sub_0200BE48(v6, 0, v2);
    sub_0200BE48(v6, 1, v3);
    sub_0200BE48(v6, 2, v4);
    sub_0200BE48(v6, 3, v5);

    v8 = sub_0200B29C(v6, v7, 1, 32);
    v9 = MessageLoader_GetNewStrbuf(v7, 0);
    *v1 = (Strbuf_Compare(v8, v9) == 0);

    Strbuf_Free(v8);
    Strbuf_Free(v9);
    MessageLoader_Free(v7);
    sub_0200B3F0(v6);

    return 0;
}

static BOOL sub_02046038 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    UnkStruct_02025CCC * v1;

    v1 = sub_02025CCC(param0->unk_34->unk_0C);

    sub_02025D6C(v1, 1);
    return 0;
}

static BOOL sub_02046050 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = inline_0204FCAC(param0);
    StringFormatter ** v2 = sub_0203F098(v0, 15);

    *v1 = sub_0205BC50(*v2);
    return 0;
}

static BOOL sub_02046080 (UnkStruct_0203E724 * param0)
{
    sub_02039734();
    return 0;
}

static BOOL sub_0204608C (UnkStruct_0203E724 * param0)
{
    sub_02039794();
    return 0;
}

static BOOL sub_02046098 (UnkStruct_0203E724 * param0)
{
    sub_0203A7A8(param0->unk_34);
    return 0;
}

static BOOL sub_020460A8 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    UnkStruct_0203A790 * v3 = sub_0203A790(param0->unk_34->unk_0C);
    UnkStruct_02049FA8 * v4 = sub_0203A72C(v3);

    v4->unk_00 = v0;
    v4->unk_08 = v1;
    v4->unk_0C = v2;
    v4->unk_04 = -1;
    v4->unk_10 = 1;

    return 0;
}

static BOOL sub_02046108 (UnkStruct_0203E724 * param0)
{
    LocalMapObject * v0;
    u16 v1 = inline_02049538(param0);
    u16 v2 = (*((param0)->unk_08++));

    v0 = sub_0206251C(param0->unk_34->unk_38, v1);

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    }

    sub_02062D80(v0, v2);
    return 0;
}

static BOOL sub_02046144 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_02071F28(v0);
    return 0;
}

static BOOL sub_0204616C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    UnkStruct_ov5_021E1FF4 ** v1 = sub_0203F098(v0, 40);

    if (!SaveData_OverwriteCheck(v0->unk_0C)) {
        *v1 = ov5_021E1F98(v0, 4, 3);
        ov5_021E1F04(*v1);
    }

    return 0;
}

static BOOL sub_0204619C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    UnkStruct_ov5_021E1FF4 ** v1 = sub_0203F098(v0, 40);

    if (!SaveData_OverwriteCheck(v0->unk_0C)) {
        ov5_021E1F7C(*v1);
        ov5_021E1FF4(*v1);
    }

    return 0;
}

static BOOL sub_020461C8 (UnkStruct_0203E724 * param0)
{
    sub_02070428(param0->unk_34, (*((param0)->unk_08++)));
    return 0;
}

static BOOL sub_020461E0 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 19);
    u8 v1 = (*((param0)->unk_08++));
    UnkStruct_ov104_02230BE4 * v2 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_ov104_02230BE4));

    MI_CpuClear8(v2, sizeof(UnkStruct_ov104_02230BE4));

    *v0 = v2;

    if ((v1 == ((((((0 + 1) + 1) + 1) + 1) + 1) + 0)) || (v1 == ((((((0 + 1) + 1) + 1) + 1) + 1) + 1))) {
        v2->unk_00 = param0->unk_34->unk_AC;
    } else {
        v2->unk_00 = NULL;
    }

    v2->unk_04 = sub_02025E44(param0->unk_34->unk_0C);
    v2->unk_24 = v1;
    v2->unk_08 = param0->unk_34->unk_0C;
    v2->unk_1C = param0->unk_34->unk_1C->unk_00;
    v2->unk_0C = param0->unk_34->unk_9C;
    v2->unk_10 = param0->unk_34->unk_98;
    v2->unk_20 = param0->unk_34->unk_BC;

    sub_02050A38(param0->unk_28, &Unk_020F8BE0, v2);
    sub_0203E764(param0, sub_02041CC8);

    return 1;
}

static BOOL sub_02046294 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    Strbuf ** v1 = sub_0203F098(v0, 16);
    Window * v2 = sub_0203F098(v0, 1);

    ov8_0224B67C(v0, v2, param0->unk_2C, *v1);
    return 1;
}

static void sub_020462C0 (SysTask * param0, void * param1)
{
    FieldSystem * v0 = param1;

    if (v0->unk_04->unk_0C) {
        ov5_021D5F24(v0->unk_04->unk_0C, 26);
        SysTask_Done(param0);
    }
}

static BOOL sub_020462DC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    SysTask_Start(sub_020462C0, v0, 128);
    return 1;
}

static BOOL sub_020462F4 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = sub_0203A74C(sub_0203A790(v0->unk_0C));

    ov5_021D5F24(v0->unk_04->unk_0C, v1);
    return 1;
}

static BOOL sub_02046314 (UnkStruct_0203E724 * param0)
{
    u8 v0 = (*((param0)->unk_08++));
    static const u16 v1[] = {
        0x14D,
        0x190,
        0x184,
        0x174,
        0x16F,
        0x166,
        0x14F,
        0x14B,
        0x198,
        0x165,
        0x17C,
        0x16B,
        0x182,
        0x18E,
        0x161,
        0xffff
    };
    static const u16 v2[] = {
        0x2E,
        0x31,
        0x2F,
        0x34,
        0x30,
        0x2D,
        0x121,
        0x122,
        0x123,
        0x124,
        0x125,
        0x126,
        0x110,
        0x111,
        0xD6,
        0x10F,
        0xD5,
        0xDC,
        0xE6,
        0xE8,
        0x10A,
        0x113,
        0x11F,
        0x146,
        0x147,
        0x32,
        0xffff
    };
    static const u16 * v3[] = {
        v1, v2,
    };

    ov7_0224CDA4(param0->unk_28, param0->unk_34, (u16 *)v3[v0], 3, 0);
    return 1;
}

BOOL sub_02046340 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 19);
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);

    *v0 = sub_0203E564(param0->unk_34, v1, v2, v3, 32);
    sub_0203E764(param0, sub_02041CC8);

    return 1;
}

BOOL sub_020463B4 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 19);

    *v0 = sub_0203E608(param0->unk_34, 32);
    sub_0203E764(param0, sub_02041D60);

    return 1;
}

BOOL sub_020463E4 (UnkStruct_0203E724 * param0)
{
    void ** v0;
    FieldSystem * v1 = param0->unk_34;

    v0 = sub_0203F098(param0->unk_34, 19);
    Heap_FreeToHeap(*v0);
    *v0 = NULL;

    return 1;
}

BOOL sub_02046400 (UnkStruct_0203E724 * param0)
{
    void ** v0;
    UnkStruct_0203E608 * v1;
    FieldSystem * v2 = param0->unk_34;
    u16 v3 = inline_02049538(param0);
    u16 * v4 = inline_0204FCAC(param0);
    u16 * v5 = inline_0204FCAC(param0);

    v0 = sub_0203F098(param0->unk_34, 19);
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

BOOL sub_0204645C (UnkStruct_0203E724 * param0)
{
    u16 v0, v1, v2, v3, v4;
    u16 * v5 = inline_0204FCAC(param0);
    u16 * v6 = inline_0204FCAC(param0);
    u16 * v7 = inline_0204FCAC(param0);
    u16 * v8 = inline_0204FCAC(param0);

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

static u8 sub_02046524 (u16 param0, u16 param1, u16 param2, u16 param3)
{
    u16 v0;
    u8 v1;

    v1 = 0;

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

        if ((v0 != param0) && (v0 != param1) && (v0 != param2) && (v0 != param3)) {
            break;
        }
    }

    return v0;
}

static u8 sub_02046568 (u16 param0, u16 param1, u16 param2, u16 param3)
{
    u16 v0;
    u8 v1;

    v1 = 0;

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

        if ((v0 != param0) && (v0 != param1) && (v0 != param2) && (v0 != param3)) {
            break;
        }
    }

    return v0;
}

static BOOL sub_020465AC (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 v1 = inline_02049538(param0);
    u16 * v2 = inline_0204FCAC(param0);

    if (sub_02039074(param0->unk_34->unk_0C)) {
        *v2 = 1;
        sub_0203E6C0(param0->unk_34, v1, v0);
        sub_0203E764(param0, sub_02041D60);
    } else {
        *v2 = 0;
    }

    return 1;
}

static BOOL sub_02046624 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);
    u16 * v1 = sub_0203F118(param0->unk_34, v0);

    if (sub_02039074(param0->unk_34->unk_0C)) {
        sub_0205749C(param0->unk_28, *v1);
    }

    return 1;
}

static BOOL sub_02046658 (UnkStruct_0203E724 * param0)
{
    sub_020985E4(param0->unk_28, param0->unk_34->unk_0C);
    return 1;
}

static BOOL sub_0204666C (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = 0;

    if (gCoreSys.heldKeys & PAD_BUTTON_A) {
        *v0 = 1;
    }

    if (gCoreSys.heldKeys & PAD_BUTTON_B) {
        *v0 = 1;
    }

    return 0;
}

static BOOL sub_020466A4 (UnkStruct_0203E724 * param0)
{
    u32 v0;
    FieldSystem * v1 = param0->unk_34;
    u16 * v2 = inline_0204FCAC(param0);
    u16 * v3 = inline_0204FCAC(param0);
    u16 * v4 = inline_0204FCAC(param0);
    u16 * v5 = inline_0204FCAC(param0);
    u16 * v6 = inline_0204FCAC(param0);

    *v2 = 0;
    *v3 = 0;
    *v4 = 0;
    *v5 = 0;
    *v6 = 0;

    v0 = sub_0204676C(v1->unk_0C);

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

static u32 sub_0204676C (SaveData * param0)
{
    int v0;
    Pokemon * v1;
    BoxPokemon * v2;
    u32 v3;

    v3 = 0;

    {
        Party * v4;
        int v5;

        v4 = Party_GetFromSavedata(param0);
        v5 = Party_GetCurrentCount(v4);

        for (v0 = 0; v0 < v5; v0++) {
            v1 = Party_GetPokemonBySlotIndex(v4, v0);

            if ((Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL) == 479) && (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) == 0)) {
                v3 |= 1 << Pokemon_GetValue(v1, MON_DATA_FORM, NULL);
            }
        }
    }

    {
        UnkStruct_02026310 * v6;
        UnkStruct_02026218 * v7;

        v6 = sub_02026310(param0);

        for (v0 = 0; v0 < 2; v0++) {
            v7 = sub_02026218(v6, v0);
            v2 = sub_02026220(v7);

            if ((BoxPokemon_GetValue(v2, 5, NULL) == 479) && (BoxPokemon_GetValue(v2, MON_DATA_IS_EGG, NULL) == 0)) {
                v3 |= 1 << BoxPokemon_GetValue(v2, MON_DATA_FORM, NULL);
            }
        }
    }

    {
        PCBoxes * v8;
        u32 v9;

        v8 = SaveData_PCBoxes(param0);

        for (v9 = 0; v9 < 18; v9++) {
            for (v0 = 0; v0 < (5 * 6); v0++) {
                v2 = sub_02079C9C(v8, v9, v0);

                if ((BoxPokemon_GetValue(v2, 5, NULL) == 479) && (BoxPokemon_GetValue(v2, MON_DATA_IS_EGG, NULL) == 0)) {
                    v3 |= 1 << BoxPokemon_GetValue(v2, MON_DATA_FORM, NULL);
                }
            }
        }
    }

    return v3;
}

static BOOL sub_02046868 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);

    sub_0202CFEC(sub_0202CD88(param0->unk_34->unk_0C), v0);
    return 0;
}

static BOOL sub_02046888 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);

    ov9_0224F158(v0, v1);
    return 0;
}

static BOOL sub_020468AC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);

    ov9_0224F16C(v0, v1);
    return 0;
}

static BOOL sub_020468D0 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    ov9_02249FD0(v0);
    return 0;
}

u32 Unk_021C07E8;
u32 Unk_021C07E4;
u32 Unk_021C07EC;

static BOOL sub_020468E0 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);
    u32 v2, v3, v4;

    v2 = Heap_FndGetTotalFreeSizeForExpHeap(11);
    v3 = Heap_FndGetTotalFreeSizeForExpHeap(4);
    v4 = Heap_FndGetTotalFreeSizeForExpHeap(32);

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

static BOOL sub_0204693C (UnkStruct_0203E724 * param0)
{
    sub_0203E714(param0->unk_34);
    sub_0203E764(param0, sub_02041D60);

    return 1;
}

static BOOL sub_02046958 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);

    ov9_0224E884(v0, v1);
    return 0;
}

static BOOL sub_0204697C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;

    ov9_0224E8A8(v0);
    return 0;
}

static BOOL sub_0204698C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = inline_0204FCAC(param0);
    s64 v2;
    s64 v3;

    v2 = GetTimestamp();
    v3 = v2 - v0->unk_C4.unk_00;

    if (v3 >= 120) {
        *v1 = 1;
    } else {
        *v1 = 0;
    }

    return 0;
}

static BOOL sub_020469D0 (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    Party * v1;
    u16 v2 = inline_02049538(param0);

    v1 = Party_GetFromSavedata(param0->unk_34->unk_0C);
    Party_SetGiratinaForm(v1, v2);
    {
        int v3, v4;
        Pokemon * v5;

        v4 = Party_GetCurrentCount(v1);

        for (v3 = 0; v3 < v4; v3++) {
            v5 = Party_GetPokemonBySlotIndex(v1, v3);

            if ((Pokemon_GetValue(v5, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v5, MON_DATA_SPECIES, NULL) == 487)) {
                sub_0202736C(sub_02027560(v0->unk_0C), v5);
            }
        }
    }
    return 0;
}

static BOOL sub_02046A4C (UnkStruct_0203E724 * param0)
{
    u32 v0, v1;
    int v2, v3;
    Pokemon * v4;
    u16 * v5 = inline_0204FCAC(param0);

    *v5 = 0;
    v2 = Party_GetCurrentCount(Party_GetFromSavedata(param0->unk_34->unk_0C));

    for (v3 = 0; v3 < v2; v3++) {
        v4 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->unk_34->unk_0C), v3);

        if (Pokemon_GetValue(v4, MON_DATA_IS_EGG, NULL) == 0) {
            v0 = Pokemon_GetValue(v4, MON_DATA_SPECIES, NULL);

            if (v0 == 486) {
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
