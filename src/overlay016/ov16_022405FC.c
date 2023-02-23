#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_02007C7C_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_0207ADB4_decl.h"
#include "overlay016/struct_ov16_02241584_decl.h"
#include "overlay016/struct_ov16_0224B7CC_decl.h"
#include "overlay016/struct_ov16_0224B9DC_decl.h"
#include "overlay016/struct_ov16_02252060_decl.h"
#include "overlay016/struct_ov16_0225BFFC_decl.h"

#include "constdata/const_020F2DAC.h"

#include "struct_defs/struct_02008A90.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_0201EE28.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/pokemon.h"
#include "struct_defs/struct_02075874.h"
#include "struct_defs/struct_0207A9CC.h"
#include "struct_defs/struct_0207ADB4_t.h"
#include "struct_defs/struct_0208737C.h"
#include "overlay012/struct_ov12_02237728.h"
#include "overlay016/struct_ov16_02241584_t.h"
#include "overlay016/struct_ov16_022431BC.h"
#include "overlay016/struct_ov16_022431BC_1.h"
#include "overlay016/struct_ov16_022431BC_2.h"
#include "overlay016/struct_ov16_022431BC_3.h"
#include "overlay016/struct_ov16_02248E74.h"
#include "overlay016/struct_ov16_0224B7CC_t.h"
#include "overlay016/struct_ov16_0224B9DC_t.h"
#include "overlay016/struct_ov16_02252060_t.h"
#include "overlay016/struct_ov16_0225BFFC_t.h"
#include "overlay016/struct_ov16_0225C300.h"
#include "overlay021/struct_ov21_021E8E0C.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_02006224.h"
#include "unk_020067E8.h"
#include "unk_0200762C.h"
#include "unk_0200AC5C.h"
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
#include "unk_02023790.h"
#include "unk_02025E68.h"
#include "unk_02073C2C.h"
#include "move_table.h"
#include "unk_02079170.h"
#include "unk_020797C8.h"
#include "unk_02079D40.h"
#include "party.h"
#include "unk_0207A274.h"
#include "item.h"
#include "unk_0208694C.h"
#include "unk_0208C098.h"
#include "overlay012/ov12_02235E94.h"
#include "overlay016/ov16_0223B140.h"
#include "overlay016/ov16_0223DF00.h"
#include "overlay016/ov16_0224B940.h"
#include "overlay016/ov16_0225177C.h"
#include "overlay016/ov16_0225CBB8.h"
#include "overlay016/ov16_0226485C.h"
#include "overlay016/ov16_02268520.h"
#include "overlay021/ov21_021E8D48.h"

typedef BOOL (* UnkFuncPtr_ov16_0226E72C)(UnkStruct_0207ADB4 *, UnkStruct_ov16_0224B9DC *);

BOOL ov16_022405FC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224064C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02240664(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022406E0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022408A0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02240A7C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02240B3C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02240B68(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02240C84(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02240D94(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02240F44(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022410DC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241108(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022411C0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241288(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241340(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022414E0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241518(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241544(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241584(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022415B8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022415F8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241618(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241644(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241698(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241714(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022417C0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022417F4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241894(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022418C0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241924(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241984(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241A20(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241A58(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241B08(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241BC0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241BDC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241BFC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241C28(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241CD0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241D34(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241EB0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241EF0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241F1C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02241F34(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224200C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02242134(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022421D4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224221C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224226C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02242298(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224230C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02242400(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02242A14(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02242B38(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02242B74(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02242BAC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02242C6C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02242CA4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02242DBC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02242F1C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02242F3C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02242F5C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02242F8C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022430A4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022430F4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02243120(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224314C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02243184(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022432B4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02243334(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02243398(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02243424(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02243494(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022434CC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02243504(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02243530(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224355C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224358C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02243708(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022437D4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022438A8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022438F8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022439D8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02243AB8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02243B38(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02243D2C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02243D64(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02243DBC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02243EF4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02243F54(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02244010(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224410C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02244208(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022442F0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022444B0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022445D4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022446A0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022446F4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02244798(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022448E8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02244A0C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02244B48(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02244BC4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02244D60(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02244F54(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02244FD8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224505C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224510C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02245144(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02245188(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224544C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02245568(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022455F8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224567C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02245710(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02245784(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224582C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02245890(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022459D8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02245A7C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02245B68(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02245BC8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02245CB4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02245D34(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02245D68(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02245FC4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02246004(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022460A8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022461B0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022461F4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022462D8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02246334(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022463E8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02246458(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022464CC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224650C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02246630(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02246688(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022467A0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02246848(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022468A4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02246904(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022469C4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02246B68(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02246BB0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02246CB4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02246DAC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02246DF0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02246EE4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02246F2C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02246F70(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02246FA8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247064(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022470C0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247118(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247194(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247378(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022473A8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022473F4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247440(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022474C4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247570(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247698(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022476F8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224787C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022478A4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022478E4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247950(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224799C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022479E8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247A80(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247AB0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247AE0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247B28(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247BA4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247BD4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247C04(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247C64(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247C94(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247CE0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247D04(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247E10(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247E98(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247F44(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247F7C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247FBC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02247FE8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248000(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248040(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248084(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022480B0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022480DC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248108(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248134(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224814C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248164(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022481A4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022481D0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248204(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248294(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248324(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022484D0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248550(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224859C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022485E0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248614(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224862C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248648(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248660(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248708(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022487A4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248800(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248850(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248880(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022488B4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022488E0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224890C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248944(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248988(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022489F4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248A34(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248A7C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02248AB4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static int ov16_02248AD0(UnkStruct_ov16_0224B9DC * param0);
static void ov16_02248AF0(UnkStruct_ov16_0224B9DC * param0, int param1);
static void ov16_02248B00(UnkStruct_ov16_0224B9DC * param0, int param1, int param2);
static void ov16_02248B08(UnkStruct_ov16_0224B9DC * param0, int param1, int param2);
static void * ov16_02248B10(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
static int ov16_0224A984(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
static void ov16_0224ABEC(UnkStruct_ov16_0224B9DC * param0, UnkStruct_ov16_02241584 * param1);
static void ov16_0224ACB8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, UnkStruct_ov16_02241584 * param2, UnkStruct_ov16_0225C300 * param3);
static int ov16_0224B3B8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
static int ov16_0224B3E8(UnkStruct_ov16_0224B9DC * param0, int param1);
static int ov16_0224B404(UnkStruct_ov16_0224B9DC * param0, int param1);
static int ov16_0224B47C(UnkStruct_ov16_0224B9DC * param0, int param1);
static int ov16_0224B488(UnkStruct_ov16_0224B9DC * param0, int param1);
static int ov16_0224B494(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
static int ov16_0224B4C8(UnkStruct_ov16_0224B9DC * param0, int param1);
static int ov16_0224B4D4(UnkStruct_ov16_0224B9DC * param0, int param1);
static int ov16_0224B4E0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
static int ov16_0224B4F8(UnkStruct_ov16_0224B9DC * param0, int param1);
static int ov16_0224B504(UnkStruct_ov16_0224B9DC * param0, int param1);
static int ov16_0224B510(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
static int ov16_0224B518(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
static u32 ov16_022431BC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
static void ov16_022499C0(Party * param0, int param1, int param2, int param3);
static int ov16_0224A724(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224B520(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B7CC * param1, Pokemon * param2);
static void ov16_0224B7CC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B7CC * param1);
static void ov16_0224B850(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2);
static void ov16_0224B928(UnkStruct_ov16_0224B9DC * param0, u8 param1, u8 param2);
static void ov16_0224B934(UnkStruct_ov16_0224B9DC * param0, u8 param1, u16 param2);
static void ov16_02248E74(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_02249B80(UnkStruct_0201CD38 * param0, void * param1);

static const UnkFuncPtr_ov16_0226E72C Unk_ov16_0226E72C[] = {
    ov16_0224064C,
    ov16_02240664,
    ov16_022406E0,
    ov16_022408A0,
    ov16_02240A7C,
    ov16_02240B3C,
    ov16_02240B68,
    ov16_02240C84,
    ov16_02240D94,
    ov16_02240F44,
    ov16_022410DC,
    ov16_02241108,
    ov16_022411C0,
    ov16_02241288,
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

BOOL ov16_022405FC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    BOOL v0;

    do {
        v0 = Unk_ov16_0226E72C[param1->unk_2700[param1->unk_B4]](param0, param1);
    } while ((param1->unk_3154_0 == 0) && ((ov16_0223DF0C(param0) & 0x4) == 0));

    param1->unk_3154_0 = 0;

    return v0;
}

static BOOL ov16_0224064C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);
    ov16_02264A8C(param0, 0);

    return 0;
}

static BOOL ov16_02240664 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2 = ov16_0223DF1C(param0);

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);

    switch (v1) {
    default:
    case 0x0:
        for (v0 = 0; v0 < v2; v0++) {
            ov16_02264AB4(param0, v0);
            ov16_0223F938(param0, v0);
        }
        break;
    case 0x3:
        break;
    case 0x4:
    {
        UnkStruct_ov16_0225BFFC * v3;

        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if (v3->unk_191 & 0x1) {
                ov16_02264AB4(param0, v0);
                ov16_0223F938(param0, v0);
            }
        }
    }
    break;
    }

    return 0;
}

static BOOL ov16_022406E0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2 = ov16_0223DF1C(param0);
    UnkStruct_ov16_0225BFFC * v3;

    ov16_02248AF0(param1, 1);
    v1 = ov16_02248AD0(param1);

    switch (v1) {
    default:
    case 0x0:
        for (v0 = 0; v0 < v2; v0++) {
            ov16_02264BB4(param0, v0);
            ov16_0223F938(param0, v0);
        }
        break;
    case 0x3:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if ((v3->unk_191 & 0x1) == 0) {
                ov16_02264BB4(param0, v0);
                ov16_0223F938(param0, v0);
            }
        }

        ov16_022535F0(param0, param1, 1);
        ov16_022535F0(param0, param1, 3);
        break;
    case 0x4:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if (v3->unk_191 & 0x1) {
                ov16_022535E0(param1, v0);
                ov16_022535F0(param0, param1, v0);
                ov16_02264BB4(param0, v0);
                ov16_0223F938(param0, v0);
            }
        }
        break;
    case 0x1:
        v3 = ov16_0223DF14(param0, param1->unk_64);

        if ((v3->unk_191 & 0x1) == 0) {
            ov16_022535F0(param0, param1, 1);
            ov16_022535F0(param0, param1, 3);
        } else {
            ov16_022535E0(param1, param1->unk_64);
            ov16_022535F0(param0, param1, param1->unk_64);
        }

        ov16_0223F938(param0, param1->unk_64);
        ov16_02264BB4(param0, param1->unk_64);
        break;
    case 0x2:
        v3 = ov16_0223DF14(param0, param1->unk_6C);

        if ((v3->unk_191 & 0x1) == 0) {
            ov16_022535F0(param0, param1, 1);
            ov16_022535F0(param0, param1, 3);
        } else {
            ov16_022535E0(param1, param1->unk_6C);
            ov16_022535F0(param0, param1, param1->unk_6C);
        }

        ov16_0223F938(param0, param1->unk_6C);
        ov16_02264BB4(param0, param1->unk_6C);
        break;
    case 0x6:
        v3 = ov16_0223DF14(param0, param1->unk_78);

        if ((v3->unk_191 & 0x1) == 0) {
            ov16_022535F0(param0, param1, 1);
            ov16_022535F0(param0, param1, 3);
        } else {
            ov16_022535E0(param1, param1->unk_78);
            ov16_022535F0(param0, param1, param1->unk_78);
        }

        ov16_0223F938(param0, param1->unk_78);
        ov16_02264BB4(param0, param1->unk_78);
        break;
    }

    return 0;
}

static BOOL ov16_022408A0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2 = ov16_0223DF1C(param0);
    UnkStruct_ov16_0225BFFC * v3;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);

    switch (v1) {
    default:
    case 0x0:
        for (v0 = 0; v0 < v2; v0++) {
            ov16_02264CE8(param0, v0, NULL, 0);
            ov16_0223F938(param0, v0);
        }
        break;
    case 0x3:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if ((v3->unk_191 & 0x1) == 0) {
                ov16_02264CE8(param0, v0, NULL, 0);
                ov16_0223F938(param0, v0);
            }
        }

        ov16_022535F0(param0, param1, 1);
        ov16_022535F0(param0, param1, 3);
        break;
    case 0x4:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if (v3->unk_191 & 0x1) {
                ov16_022535E0(param1, v0);
                ov16_022535F0(param0, param1, v0);
                ov16_02264CE8(param0, v0, NULL, 0);
                ov16_0223F938(param0, v0);
            }
        }
        break;
    case 0x1:
        v3 = ov16_0223DF14(param0, param1->unk_64);

        if ((v3->unk_191 & 0x1) == 0) {
            ov16_022535F0(param0, param1, 1);
            ov16_022535F0(param0, param1, 3);
        } else {
            ov16_022535E0(param1, param1->unk_64);
            ov16_022535F0(param0, param1, param1->unk_64);
        }

        ov16_0223F938(param0, param1->unk_64);
        ov16_02264CE8(param0, param1->unk_64, NULL, 0);
        break;
    case 0x2:
        v3 = ov16_0223DF14(param0, param1->unk_6C);

        if ((v3->unk_191 & 0x1) == 0) {
            ov16_022535F0(param0, param1, 1);
            ov16_022535F0(param0, param1, 3);
        } else {
            ov16_022535E0(param1, param1->unk_6C);
            ov16_022535F0(param0, param1, param1->unk_6C);
        }

        ov16_0223F938(param0, param1->unk_6C);
        ov16_02264CE8(param0, param1->unk_6C, NULL, 0);
        break;
    case 0x6:
        v3 = ov16_0223DF14(param0, param1->unk_78);

        if ((v3->unk_191 & 0x1) == 0) {
            ov16_022535F0(param0, param1, 1);
            ov16_022535F0(param0, param1, 3);
        } else {
            ov16_022535E0(param1, param1->unk_78);
            ov16_022535F0(param0, param1, param1->unk_78);
        }

        ov16_0223F938(param0, param1->unk_78);
        ov16_02264CE8(param0, param1->unk_78, NULL, 0);
        break;
    }

    return 0;
}

static BOOL ov16_02240A7C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2 = ov16_0223DF1C(param0);
    UnkStruct_ov16_0225BFFC * v3;

    ov16_02248AF0(param1, 1);
    v1 = ov16_02248AD0(param1);

    switch (v1) {
    case 0x0:
        for (v0 = 0; v0 < v2; v0++) {
            ov16_02264EF8(param0, param1, v0);
        }
        break;
    case 0x3:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if ((v3->unk_191 & 0x1) == 0) {
                ov16_02264EF8(param0, param1, v0);
            }
        }
        break;
    case 0x4:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if ((v3->unk_191 & 0x1) && ((param1->unk_3108 & sub_020787CC(v0)) == 0)) {
                ov16_02264EF8(param0, param1, v0);
            }
        }
        break;
    default:
        v0 = ov16_0224A984(param0, param1, v1);
        ov16_02264EF8(param0, param1, v0);
        break;
    }

    return 0;
}

static BOOL ov16_02240B3C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);
    v0 = ov16_0224A984(param0, param1, v1);

    ov16_02265108(param0, v0);

    return 0;
}

static BOOL ov16_02240B68 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2 = ov16_0223DF1C(param0);
    UnkStruct_ov16_0225BFFC * v3;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);

    switch (v1) {
    default:
    case 0x0:
        if (ov16_0223DF0C(param0) & 0x10) {
            for (v0 = 0; v0 < v2; v0++) {
                v3 = ov16_0223DF14(param0, v0);

                if (v3->unk_191 != 4) {
                    ov16_02265124(param0, v0);
                }
            }
        } else {
            for (v0 = 0; v0 < v2; v0++) {
                if (((ov16_0223DF0C(param0) & 0x8) == 0) && (ov16_0223DF0C(param0) & 0x2) && (v0 > 1)) {
                    break;
                }

                ov16_02265124(param0, v0);
            }
        }
        break;
    case 0x3:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if ((v3->unk_191 & 0x1) == 0) {
                ov16_02265124(param0, v0);

                if (((ov16_0223DF0C(param0) & 0x8) == 0) && (ov16_0223DF0C(param0) & 0x2)) {
                    break;
                }
            }
        }
        break;
    case 0x4:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if (v3->unk_191 & 0x1) {
                ov16_02265124(param0, v0);

                if (((ov16_0223DF0C(param0) & 0x8) == 0) && ((ov16_0223DF0C(param0) & 0x10) == 0) && (ov16_0223DF0C(param0) & 0x2)) {
                    break;
                }
            }
        }
        break;
    }

    return 0;
}

static BOOL ov16_02240C84 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3 = ov16_0223DF1C(param0);
    UnkStruct_ov16_0225BFFC * v4;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);

    switch (v1) {
    default:
    case 0x0:
        for (v0 = 0; v0 < v3; v0++) {
            if (((ov16_0223DF0C(param0) & 0x8) == 0) && (ov16_0223DF0C(param0) & 0x2) && (v0 > 1)) {
                break;
            }

            ov16_02265154(param0, v0, v2);
        }
        break;
    case 0x3:
        for (v0 = 0; v0 < v3; v0++) {
            v4 = ov16_0223DF14(param0, v0);

            if ((v4->unk_191 & 0x1) == 0) {
                ov16_02265154(param0, v0, v2);

                if (((ov16_0223DF0C(param0) & 0x8) == 0) && (ov16_0223DF0C(param0) & 0x2)) {
                    break;
                }
            }
        }
        break;
    case 0x4:
        for (v0 = 0; v0 < v3; v0++) {
            v4 = ov16_0223DF14(param0, v0);

            if (v4->unk_191 & 0x1) {
                ov16_02265154(param0, v0, v2);

                if (((ov16_0223DF0C(param0) & 0x8) == 0) && ((ov16_0223DF0C(param0) & 0x10) == 0) && (ov16_0223DF0C(param0) & 0x2)) {
                    break;
                }
            }
        }
        break;
    }

    param1->unk_3154_0 = 1;

    return 0;
}

static BOOL ov16_02240D94 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2 = ov16_0223DF1C(param0);
    UnkStruct_ov16_0225BFFC * v3;

    ov16_02248AF0(param1, 1);
    v1 = ov16_02248AD0(param1);

    switch (v1) {
    default:
    case 0x0:
        for (v0 = 0; v0 < v2; v0++) {
            if (((ov16_0223DF0C(param0) & 0x8) == 0) && (ov16_0223DF0C(param0) & 0x2) && (v0 > 1)) {
                break;
            }

            ov16_0226518C(param0, v0);
        }
        break;
    case 0x3:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if ((v3->unk_191 & 0x1) == 0) {
                ov16_0226518C(param0, v0);

                if (((ov16_0223DF0C(param0) & 0x8) == 0) && (ov16_0223DF0C(param0) & 0x2)) {
                    break;
                }
            }
        }
        break;
    case 0x4:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if (v3->unk_191 & 0x1) {
                ov16_0226518C(param0, v0);

                if (((ov16_0223DF0C(param0) & 0x8) == 0) && ((ov16_0223DF0C(param0) & 0x10) == 0) && (ov16_0223DF0C(param0) & 0x2)) {
                    break;
                }
            }
        }
        break;
    case 0x9:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if ((v3->unk_191 == 0) || (v3->unk_191 == 2)) {
                ov16_0226518C(param0, v0);
                break;
            }
        }
        break;
    case 0xa:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if ((v3->unk_191 == 1) || (v3->unk_191 == 3)) {
                ov16_0226518C(param0, v0);
                break;
            }
        }
        break;
    case 0xb:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if (v3->unk_191 == 4) {
                ov16_0226518C(param0, v0);
                break;
            }
        }
        break;
    case 0xc:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if (v3->unk_191 == 5) {
                ov16_0226518C(param0, v0);
                break;
            }
        }
        break;
    }

    return 0;
}

static BOOL ov16_02240F44 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3 = ov16_0223DF1C(param0);
    UnkStruct_ov16_0225BFFC * v4;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);

    switch (v1) {
    default:
    case 0x0:
        for (v0 = 0; v0 < v3; v0++) {
            if ((ov16_0223DF0C(param0) & 0x2) && (v0 > 1)) {
                break;
            }

            ov16_022651A8(param0, v0, v2);
        }
        break;
    case 0x3:
        for (v0 = 0; v0 < v3; v0++) {
            v4 = ov16_0223DF14(param0, v0);

            if ((v4->unk_191 & 0x1) == 0) {
                ov16_022651A8(param0, v0, v2);

                if (ov16_0223DF0C(param0) & 0x2) {
                    break;
                }
            }
        }
        break;
    case 0x4:
        for (v0 = 0; v0 < v3; v0++) {
            v4 = ov16_0223DF14(param0, v0);

            if (v4->unk_191 & 0x1) {
                ov16_022651A8(param0, v0, v2);

                if (ov16_0223DF0C(param0) & 0x2) {
                    break;
                }
            }
        }
        break;
    case 0x9:
        for (v0 = 0; v0 < v3; v0++) {
            v4 = ov16_0223DF14(param0, v0);

            if ((v4->unk_191 == 0) || (v4->unk_191 == 2)) {
                ov16_022651A8(param0, v0, v2);
                break;
            }
        }
        break;
    case 0xa:
        for (v0 = 0; v0 < v3; v0++) {
            v4 = ov16_0223DF14(param0, v0);

            if ((v4->unk_191 == 1) || (v4->unk_191 == 3)) {
                ov16_022651A8(param0, v0, v2);
                break;
            }
        }
        break;
    case 0xb:
        for (v0 = 0; v0 < v3; v0++) {
            v4 = ov16_0223DF14(param0, v0);

            if (v4->unk_191 == 4) {
                ov16_022651A8(param0, v0, v2);
                break;
            }
        }
        break;
    case 0xc:
        for (v0 = 0; v0 < v3; v0++) {
            v4 = ov16_0223DF14(param0, v0);

            if (v4->unk_191 == 5) {
                ov16_022651A8(param0, v0, v2);
                break;
            }
        }
        break;
    }

    return 0;
}

static BOOL ov16_022410DC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1 = ov16_0223DF1C(param0);

    ov16_02248AF0(param1, 1);

    for (v0 = 0; v0 < v1; v0++) {
        ov16_02266460(param0, v0);
    }

    return 0;
}

static BOOL ov16_02241108 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2 = ov16_0223DF1C(param0);
    UnkStruct_ov16_0225BFFC * v3;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);

    switch (v1) {
    case 0x0:
        for (v0 = 0; v0 < v2; v0++) {
            ov16_022651DC(param0, param1, v0, 0);
        }
        break;
    case 0x3:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if ((v3->unk_191 & 0x1) == 0) {
                ov16_022651DC(param0, param1, v0, 0);
            }
        }
        break;
    case 0x4:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if (v3->unk_191 & 0x1) {
                ov16_022651DC(param0, param1, v0, 0);
            }
        }
        break;
    default:
        v0 = ov16_0224A984(param0, param1, v1);
        ov16_022651DC(param0, param1, v0, 0);
        break;
    }

    return 0;
}

static BOOL ov16_022411C0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2 = ov16_0223DF1C(param0);
    UnkStruct_ov16_0225BFFC * v3;
    u8 v4;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);
    v4 = 0;

    switch (v1) {
    case 0x0:
        for (v0 = 0; v0 < v2; v0++) {
            ov16_022651DC(param0, param1, v0, 0);
        }
        break;
    case 0x3:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if ((v3->unk_191 & 0x1) == 0) {
                ov16_022651DC(param0, param1, v0, v4);
                v4 += 4;
            }
        }
        break;
    case 0x4:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if (v3->unk_191 & 0x1) {
                ov16_022651DC(param0, param1, v0, v4);
                v4 += 4;
            }
        }
        break;
    default:
        v0 = ov16_0224A984(param0, param1, v1);
        ov16_022651DC(param0, param1, v0, v4);
        break;
    }

    return 0;
}

static BOOL ov16_02241288 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2 = ov16_0223DF1C(param0);
    UnkStruct_ov16_0225BFFC * v3;

    ov16_02248AF0(param1, 1);
    v1 = ov16_02248AD0(param1);

    switch (v1) {
    case 0x0:
        for (v0 = 0; v0 < v2; v0++) {
            ov16_02265314(param0, v0);
        }
        break;
    case 0x3:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if (((v3->unk_191 & 0x1) == 0) && ((param1->unk_3108 & sub_020787CC(v0)) == 0)) {
                ov16_02265314(param0, v0);
            }
        }
        break;
    case 0x4:
        for (v0 = 0; v0 < v2; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if (v3->unk_191 & 0x1) {
                ov16_02265314(param0, v0);
            }
        }
        break;
    default:
        v0 = ov16_0224A984(param0, param1, v1);
        ov16_02265314(param0, v0);
        break;
    }

    return 0;
}

static BOOL ov16_02241340 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    if (ov16_02251FC8(param1)) {
        ov16_02248AF0(param1, 1);
    } else {
        ov16_0225201C(param1);
    }

    param1->unk_3154_0 = 1;

    return 0;
}

static void ov16_02241374 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    if (ov16_02255A4C(param1, param1->unk_64) == 96) {
        v0 = 0;
    } else if (param1->unk_2160) {
        v0 = param1->unk_2160;
    } else {
        v0 = param1->unk_354.unk_8A[param1->unk_3044].unk_04;
    }

    param1->unk_2144 = ov16_0225A280(param0, param1, param1->unk_3044, param1->unk_1BC[ov16_0223E208(param0, param1->unk_6C)], param1->unk_180, param1->unk_2154, v0, param1->unk_64, param1->unk_6C, param1->unk_2150);
    param1->unk_2144 *= param1->unk_2150;

    if (ov16_02258AB8(param1, param1->unk_64) == 98) {
        param1->unk_2144 = param1->unk_2144 * (100 + ov16_02258ACC(param1, param1->unk_64, 0)) / 100;
    }

    if (ov16_02258AB8(param1, param1->unk_64) == 105) {
        param1->unk_2144 = param1->unk_2144 * (10 + param1->unk_2D40[param1->unk_64].unk_88.unk_04_23) / 10;
    }

    if (param1->unk_2D40[param1->unk_64].unk_88.unk_04_30) {
        if (param1->unk_174 == param1->unk_2D40[param1->unk_64].unk_88.unk_14) {
            param1->unk_2D40[param1->unk_64].unk_88.unk_14--;
        }

        if ((param1->unk_174 - param1->unk_2D40[param1->unk_64].unk_88.unk_14) < 2) {
            param1->unk_2144 = param1->unk_2144 * 15 / 10;
        } else {
            param1->unk_2D40[param1->unk_64].unk_88.unk_04_30 = 0;
        }
    }
}

static BOOL ov16_022414E0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);
    ov16_02241374(param0, param1);

    param1->unk_2144 = ov16_0225AEB8(param0, param1, param1->unk_2144);
    param1->unk_2144 *= -1;

    return 0;
}

static BOOL ov16_02241518 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);
    ov16_02241374(param0, param1);

    param1->unk_2144 *= -1;

    return 0;
}

static BOOL ov16_02241544 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);

    if ((param1->unk_213C & 0x1) == 0) {
        ov16_02265B68(param0, param1);
    }

    param1->unk_213C |= 0x1;
    param1->unk_2140 |= 0x4;

    return 0;
}

static BOOL ov16_02241584 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    UnkStruct_ov16_02241584 v0;
    UnkStruct_ov16_0225C300 v1;

    ov16_02248AF0(param1, 1);
    ov16_0224ABEC(param1, &v0);
    ov16_0224ACB8(param0, param1, &v0, &v1);
    ov16_02265BA0(param0, param1, &v1);

    return 0;
}

static BOOL ov16_022415B8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    UnkStruct_ov16_02241584 v0;
    UnkStruct_ov16_0225C300 v1;

    ov16_02248AF0(param1, 1);
    ov16_0224ABEC(param1, &v0);
    ov16_0224ACB8(param0, param1, &v0, &v1);

    v1.unk_01 |= 0x80;

    ov16_02265BA0(param0, param1, &v1);

    return 0;
}

static BOOL ov16_022415F8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);
    ov16_02265BA0(param0, param1, &param1->unk_F4);

    return 0;
}

static BOOL ov16_02241618 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    UnkStruct_ov16_02241584 v0;

    ov16_02248AF0(param1, 1);
    ov16_0224ABEC(param1, &v0);
    ov16_0224ACB8(param0, param1, &v0, &param1->unk_F4);

    return 0;
}

static BOOL ov16_02241644 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    UnkStruct_ov16_02241584 v0;
    UnkStruct_ov16_0225C300 v1;
    int v2;
    int v3;

    ov16_02248AF0(param1, 1);

    v2 = ov16_02248AD0(param1);

    ov16_0224ABEC(param1, &v0);
    ov16_0224ACB8(param0, param1, &v0, &v1);

    v1.unk_01 |= 0x40;
    v1.unk_20 = ov16_0224A984(param0, param1, v2);

    ov16_02265BA0(param0, param1, &v1);

    return 0;
}

static BOOL ov16_02241698 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    u16 v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if (v0 == 0xff) {
        v1 = param1->unk_124;
    } else {
        v1 = param1->unk_3044;
    }

    if ((((param1->unk_213C & 0x4000) == 0) && (ov16_0223EDAC(param0) == 1)) || (v1 == 144)) {
        param1->unk_213C |= 0x4000;
        ov16_02265BBC(param0, param1, v1);
    }

    if (ov16_0223EDAC(param0) == 0) {
        ov16_02248B08(param1, 1, (0 + 291));
    }

    return 0;
}

static BOOL ov16_02241714 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    u16 v5;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);

    if (v0 == 0xff) {
        v5 = param1->unk_124;
    } else {
        v5 = param1->unk_3044;
    }

    v3 = ov16_0224A984(param0, param1, v1);
    v4 = ov16_0224A984(param0, param1, v2);

    if ((((param1->unk_213C & 0x4000) == 0) && (ov16_0223EDAC(param0) == 1)) || (v5 == 144)) {
        param1->unk_213C |= 0x4000;
        ov16_02265BEC(param0, param1, v5, v3, v4);
    }

    if (ov16_0223EDAC(param0) == 0) {
        ov16_02248B08(param1, 1, (0 + 291));
    }

    return 0;
}

static BOOL ov16_022417C0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    ov16_02265C1C(param0, v1, param1->unk_216C);

    return 0;
}

static BOOL ov16_022417F4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0, v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    if ((param1->unk_2D40[v1].unk_4C + param1->unk_215C) <= 0) {
        param1->unk_2148 = param1->unk_2D40[v1].unk_4C * -1;
    } else {
        param1->unk_2148 = param1->unk_215C;
    }

    if (param1->unk_2148 < 0) {
        param1->unk_164[v1] += (param1->unk_2148 * -1);
    }

    param1->unk_2D40[v1].unk_4C += param1->unk_215C;

    if (param1->unk_2D40[v1].unk_4C < 0) {
        param1->unk_2D40[v1].unk_4C = 0;
    } else if (param1->unk_2D40[v1].unk_4C > param1->unk_2D40[v1].unk_50) {
        param1->unk_2D40[v1].unk_4C = param1->unk_2D40[v1].unk_50;
    }

    ov16_02253EC0(param0, param1, v1);

    return 0;
}

static BOOL ov16_02241894 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0, v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    ov16_02265C38(param0, param1, v1);

    return 0;
}

static BOOL ov16_022418C0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0, v1, v2;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    if (param1->unk_2D40[v1].unk_4C == 0) {
        param1->unk_74 = v1;
        param1->unk_213C |= (sub_020787CC(v1) << 24);
        param1->unk_154[v1]++;

        ov16_0224B850(param0, param1, v1);
    }

    return 0;
}

static BOOL ov16_02241924 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);
    ov16_02265D98(param0, param1, param1->unk_74);

    param1->unk_213C &= (sub_020787CC(param1->unk_74) << 24) ^ 0xffffffff;
    param1->unk_2140 |= sub_020787CC(param1->unk_74) << 28;
    param1->unk_21A8[param1->unk_74][0] = 39;

    ov16_02254744(param0, param1, param1->unk_74);

    return 0;
}

static BOOL ov16_02241984 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);
    v0 = ov16_02248AD0(param1);

    if ((ov16_0223DF0C(param0) & 0x4) == 0) {
        if ((Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_BUTTON_X | PAD_BUTTON_Y)) || (sub_02022798())) {
            param1->unk_F0 = v0;
        }
    }

    if ((param0->unk_2C & 0x4) && ((param0->unk_2408 & 0x10) == 0)) {
        v1 = 2;
    } else {
        v1 = 1;
    }

    if (v0 > param1->unk_F0) {
        ov16_02248AF0(param1, -2);
        param1->unk_F0 += v1;
    } else {
        param1->unk_F0 = 0;
    }

    param1->unk_3154_0 = 1;

    return 0;
}

static BOOL ov16_02241A20 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_0224A984(param0, param1, v0);

    ov16_02265EAC(param0, param1, v1, v2);

    return 0;
}

static BOOL ov16_02241A58 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int * v4;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_02248AD0(param1);
    v4 = ov16_02248B10(param0, param1, v1);

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
        ov16_02248AF0(param1, v3);
    }

    return 0;
}

static BOOL ov16_02241B08 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    int v6;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_02248AD0(param1);
    v4 = ov16_02248AD0(param1);
    v6 = ov16_0224A984(param0, param1, v1);
    v5 = ov16_02252060(param1, v6, v2, NULL);

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
        ov16_02248AF0(param1, v4);
    }

    return 0;
}

static BOOL ov16_02241BC0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);
    ov16_02265ECC(param0, param1);

    return 0;
}

static BOOL ov16_02241BDC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);
    v0 = ov16_02248AD0(param1);
    ov16_02248B00(param1, 1, v0);

    return 0;
}

static BOOL ov16_02241BFC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);
    v0 = param1->unk_354.unk_8A[param1->unk_3044].unk_00;
    ov16_02248B00(param1, 30, v0);

    return 0;
}

static BOOL ov16_02241C28 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    param1->unk_213C &= (0x1 ^ 0xffffffff);
    param1->unk_213C &= (0x4000 ^ 0xffffffff);
    param1->unk_3044 = param1->unk_124;

    if (v0 == 0) {
        param1->unk_6C = ov16_02253954(param0, param1, param1->unk_64, param1->unk_124, 1, 0);
        ov16_02253C98(param0, param1, param1->unk_64, param1->unk_124);
        param1->unk_21A8[param1->unk_64][1] = param1->unk_6C;
    }

    if (param1->unk_6C == 0xff) {
        param1->unk_0C = 38;
        ov16_02248B00(param1, 1, (0 + 281));
    } else {
        ov16_02248B00(param1, 0, param1->unk_3044);
    }

    return 0;
}

static BOOL ov16_02241CD0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);

    if ((ov16_0223DF0C(param0) & 0x400) || (ov16_0223EBEC(param0) & 0x1)) {
        param1->unk_2150 = 1;
    } else {
        param1->unk_2150 = ov16_0225AEE4(param0, param1, param1->unk_64, param1->unk_6C, param1->unk_214C, ov16_0225B45C(param0, param1, 0, param1->unk_6C));
    }

    return 0;
}

static BOOL ov16_02241D34 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    u32 v1 = ov16_0223DF0C(param0);
    UnkStruct_ov16_0225BFFC * v2 = ov16_0223DF14(param0, param1->unk_74);

    ov16_02248AF0(param1, 1);
    v0 = ov16_02248AD0(param1);

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

            for (v3 = 0; v3 < Party_GetCurrentCount(ov16_0223DF20(param0, 0)); v3++) {
                v10 = ov16_0223DFAC(param0, 0, v3);

                if ((GetMonData(v10, 5, NULL)) && (GetMonData(v10, 163, NULL))) {
                    if (param1->unk_A4[(param1->unk_74 >> 1) & 1] & sub_020787CC(v3)) {
                        v5++;
                    }

                    v7 = GetMonData(v10, 6, NULL);
                    v9 = ov16_0225B0FC(param1, v7, 1);

                    if (v9 == 51) {
                        v6++;
                    }
                }
            }

            v8 = sub_020759F0(param1->unk_2D40[param1->unk_74].unk_00, 9);
            v8 = (v8 * param1->unk_2D40[param1->unk_74].unk_34) / 7;

            if (v6) {
                param1->unk_9C = (v8 / 2) / v5;

                if (param1->unk_9C == 0) {
                    param1->unk_9C = 1;
                }

                param1->unk_A0 = (v8 / 2) / v6;

                if (param1->unk_A0 == 0) {
                    param1->unk_A0 = 1;
                }
            } else {
                param1->unk_9C = v8 / v5;

                if (param1->unk_9C == 0) {
                    param1->unk_9C = 1;
                }

                param1->unk_A0 = 0;
            }
        }
    } else {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_02241EB0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);

    param1->unk_178 = (UnkStruct_ov16_0224B7CC *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0224B7CC));
    param1->unk_178->unk_00 = param0;
    param1->unk_178->unk_04 = param1;
    param1->unk_178->unk_28 = 0;
    param1->unk_178->unk_30[6] = 0;

    sub_0200D9E8(ov16_02248E74, param1->unk_178, NULL);

    return 0;
}

static BOOL ov16_02241EF0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    if (param1->unk_178 == NULL) {
        ov16_02248AF0(param1, 1);
    }

    param1->unk_3154_0 = 1;

    return 0;
}

static BOOL ov16_02241F1C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    return 0;
}

static BOOL ov16_02241F34 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3 = ov16_0223DF1C(param0);

    ov16_02248AF0(param1, 1);

    v2 = 0;

    for (v0 = 0; v0 < v3; v0++) {
        if (param1->unk_13C[v0] & 0x1) {
            v2 |= sub_020787CC(v0);
            ov16_02265A8C(param0, param1, v0, 1, 0, 6);
        }
    }

    for (v0 = 0; v0 < v3; v0++) {
        if (ov16_0223DF0C(param0) == ((0x4 | 0x1) | 0x2)) {
            v1 = ov16_0223E258(param0, v0);

            if (((v2 & sub_020787CC(v0)) == 0) && ((v2 & sub_020787CC(v1)) == 0)) {
                v2 |= sub_020787CC(v0);
                ov16_022666E0(param0, v0);
            }
        } else {
            if ((v2 & sub_020787CC(v0)) == 0) {
                ov16_022666E0(param0, v0);
            }
        }
    }

    for (v0 = 0; v0 < v3; v0++) {
        if (param1->unk_13C[v0] & 0x1) {
            param1->unk_78 = v0;
            break;
        }
    }

    return 0;
}

static BOOL ov16_0224200C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    v1 = ov16_0223DF1C(param0);
    v2 = 0;

    for (v0 = 0; v0 < v1; v0++) {
        if (param1->unk_13C[v0] & 0x1) {
            v2++;
        }
    }

    for (v0 = 0; v0 < v1; v0++) {
        if ((param1->unk_13C[v0] & 0x1) && (ov16_02259AB4(param1, v0))) {
            param1->unk_21A0[v0] = param1->unk_2300[v0][0] - 1;
            v2--;

            if ((param1->unk_2140 & (sub_020787CC(v0) << 24)) == 0) {
                param1->unk_2140 |= (sub_020787CC(v0) << 24);
                ov16_022666E0(param0, v0);
            }
        }
    }

    if (v2 == 0) {
        for (v0 = 0; v0 < v1; v0++) {
            if ((param1->unk_13C[v0] & 0x1) && (ov16_02259AB4(param1, v0))) {
                ov16_0223F500(param0, v0, param1->unk_2300[v0][0]);
            }
        }

        param1->unk_2140 &= (0xf000000 ^ 0xffffffff);
        ov16_02248AF0(param1, 1);
    }

    param1->unk_3154_0 = 1;

    return 0;
}

static BOOL ov16_02242134 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);
    v1 = ov16_02248AD0(param1);

    switch (v1) {
    default:
        break;
    case 0x1:
        v0 = param1->unk_64;
        break;
    case 0x6:
        v0 = param1->unk_78;
        break;
    case 0x12:
        v0 = param1->unk_6C;
        break;
    }

    param1->unk_13C[v0] &= 0x1 ^ 0xffffffff;
    param1->unk_3108 &= (sub_020787CC(v0) ^ 0xffffffff);
    param1->unk_219C[v0] = param1->unk_21A0[v0];
    param1->unk_21A0[v0] = 6;

    ov16_0225177C(param0, param1, v0, param1->unk_219C[v0]);
    ov16_0225A200(param0, param1, v0, param1->unk_219C[v0]);

    param1->unk_3122 = param1->unk_2D40[1].unk_4C;

    ov16_0225433C(param0, param1, v0);

    return 0;
}

static BOOL ov16_022421D4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1 = ov16_0223DF1C(param0);
    int v2;

    ov16_02248AF0(param1, 1);
    v2 = ov16_02248AD0(param1);

    for (v0 = 0; v0 < v1; v0++) {
        if (param1->unk_13C[v0] & 0x1) {
            param1->unk_78 = v0;
            ov16_02248AF0(param1, v2);
            break;
        }
    }

    return 0;
}

static BOOL ov16_0224221C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    param1->unk_178 = (UnkStruct_ov16_0224B7CC *)Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0224B7CC));
    param1->unk_178->unk_00 = param0;
    param1->unk_178->unk_04 = param1;
    param1->unk_178->unk_28 = 0;
    param1->unk_178->unk_24 = v0;
    param1->unk_178->unk_2C = param1->unk_128;

    sub_0200D9E8(ov16_02249B80, param1->unk_178, NULL);

    return 0;
}

static BOOL ov16_0224226C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    if (param1->unk_178 == NULL) {
        ov16_02248AF0(param1, 1);
    }

    param1->unk_3154_0 = 1;

    return 0;
}

static BOOL ov16_02242298 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);

    if (param1->unk_217D == 0) {
        if (v0 == 0) {
            if (ov16_02255A4C(param1, param1->unk_64) == 92) {
                v0 = 5;
            } else {
                if ((v0 = ov16_0223F4BC(param0) & 3) < 2) {
                    v0 += 2;
                } else {
                    v0 = (ov16_0223F4BC(param0) & 3) + 2;
                }
            }
        }

        param1->unk_217C = v0;
        param1->unk_217D = v0;
        param1->unk_2188 = v1;
    }

    return 0;
}

static BOOL ov16_0224230C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int * v3;
    u32 v4;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_02248B10(param0, param1, v1);

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
        v3[0] = sub_020787CC(v2);
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

static BOOL ov16_02242400 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    UnkStruct_ov16_02252060 * v6 = &param1->unk_2D40[param1->unk_94];

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v5 = 0;

    param1->unk_213C &= (0x20000 ^ 0xffffffff);

    if (param1->unk_8C >= 0x2e) {
        v3 = param1->unk_8C - 0x2e;
        v4 = -2;
        param1->unk_138 = 13;
    } else if (param1->unk_8C >= 0x27) {
        v3 = param1->unk_8C - 0x27;
        v4 = 2;
        param1->unk_138 = 12;
    } else if (param1->unk_8C >= 0x16) {
        v3 = param1->unk_8C - 0x16;
        v4 = -1;
        param1->unk_138 = 13;
    } else {
        v3 = param1->unk_8C - 0xf;
        v4 = 1;
        param1->unk_138 = 12;
    }

    if (v4 > 0) {
        if (v6->unk_18[0x1 + v3] == 12) {
            param1->unk_213C |= 0x20000;

            if ((param1->unk_88 == 2) || (param1->unk_88 == 3)) {
                ov16_02248AF0(param1, v1);
            } else {
                param1->unk_F4.unk_02 = 142;
                param1->unk_F4.unk_01 = 12;
                param1->unk_F4.unk_04[0] = ov16_02255560(param1, param1->unk_94);
                param1->unk_F4.unk_04[1] = 0x1 + v3;

                ov16_02248AF0(param1, v0);
            }
        } else {
            if (param1->unk_88 == 3) {
                param1->unk_F4.unk_02 = 622;
                param1->unk_F4.unk_01 = 39;
                param1->unk_F4.unk_04[0] = ov16_02255560(param1, param1->unk_94);
                param1->unk_F4.unk_04[1] = param1->unk_2D40[param1->unk_94].unk_27;
                param1->unk_F4.unk_04[2] = 0x1 + v3;
            } else if (param1->unk_88 == 5) {
                param1->unk_F4.unk_02 = 756;
                param1->unk_F4.unk_01 = 45;
                param1->unk_F4.unk_04[0] = ov16_02255560(param1, param1->unk_94);
                param1->unk_F4.unk_04[1] = param1->unk_128;
                param1->unk_F4.unk_04[2] = 0x1 + v3;
            } else {
                param1->unk_F4.unk_02 = (v4 == 1 ? 750 : 753);
                param1->unk_F4.unk_01 = 12;
                param1->unk_F4.unk_04[0] = ov16_02255560(param1, param1->unk_94);
                param1->unk_F4.unk_04[1] = 0x1 + v3;
            }

            v6->unk_18[0x1 + v3] += v4;

            if (v6->unk_18[0x1 + v3] > 12) {
                v6->unk_18[0x1 + v3] = 12;
            }
        }
    } else {
        if ((param1->unk_90 & 0x8000000) == 0) {
            if (param1->unk_64 != param1->unk_94) {
                if (param1->unk_1C4[ov16_0223E208(param0, param1->unk_94)].unk_00_12) {
                    param1->unk_F4.unk_02 = 273;
                    param1->unk_F4.unk_01 = 2;
                    param1->unk_F4.unk_04[0] = ov16_02255560(param1, param1->unk_94);
                    v5 = 1;
                } else if ((ov16_02255AB4(param1, param1->unk_64, param1->unk_94, 29) == 1) || (ov16_02255AB4(param1, param1->unk_64, param1->unk_94, 73) == 1)) {
                    if (param1->unk_88 == 3) {
                        param1->unk_F4.unk_02 = 727;
                        param1->unk_F4.unk_01 = 53;
                        param1->unk_F4.unk_04[0] = ov16_02255560(param1, param1->unk_94);
                        param1->unk_F4.unk_04[1] = param1->unk_2D40[param1->unk_94].unk_27;
                        param1->unk_F4.unk_04[2] = ov16_02255560(param1, param1->unk_64);
                        param1->unk_F4.unk_04[3] = param1->unk_2D40[param1->unk_64].unk_27;
                    } else {
                        param1->unk_F4.unk_02 = 669;
                        param1->unk_F4.unk_01 = 11;
                        param1->unk_F4.unk_04[0] = ov16_02255560(param1, param1->unk_94);
                        param1->unk_F4.unk_04[1] = param1->unk_2D40[param1->unk_94].unk_27;
                    }

                    v5 = 1;
                } else if (((ov16_02255AB4(param1, param1->unk_64, param1->unk_94, 51) == 1) && ((0x1 + v3) == 0x6)) || ((ov16_02255AB4(param1, param1->unk_64, param1->unk_94, 52) == 1) && ((0x1 + v3) == 0x1))) {
                    if (param1->unk_88 == 3) {
                        param1->unk_F4.unk_02 = 727;
                        param1->unk_F4.unk_01 = 53;
                        param1->unk_F4.unk_04[0] = ov16_02255560(param1, param1->unk_94);
                        param1->unk_F4.unk_04[1] = param1->unk_2D40[param1->unk_94].unk_27;
                        param1->unk_F4.unk_04[2] = ov16_02255560(param1, param1->unk_64);
                        param1->unk_F4.unk_04[3] = param1->unk_2D40[param1->unk_64].unk_27;
                    } else {
                        param1->unk_F4.unk_02 = 704;
                        param1->unk_F4.unk_01 = 39;
                        param1->unk_F4.unk_04[0] = ov16_02255560(param1, param1->unk_94);
                        param1->unk_F4.unk_04[1] = param1->unk_2D40[param1->unk_94].unk_27;
                        param1->unk_F4.unk_04[2] = 0x1 + v3;
                    }

                    v5 = 1;
                } else if (v6->unk_18[0x1 + v3] == 0) {
                    param1->unk_213C |= 0x20000;

                    if ((param1->unk_88 == 2) || (param1->unk_88 == 3)) {
                        ov16_02248AF0(param1, v1);
                        return 0;
                    } else {
                        param1->unk_F4.unk_02 = 145;
                        param1->unk_F4.unk_01 = 12;
                        param1->unk_F4.unk_04[0] = ov16_02255560(param1, param1->unk_94);
                        param1->unk_F4.unk_04[1] = 0x1 + v3;
                        ov16_02248AF0(param1, v0);
                        return 0;
                    }
                } else if ((ov16_02255AB4(param1, param1->unk_64, param1->unk_94, 19) == 1) && (param1->unk_88 == 2)) {
                    v5 = 1;
                } else if (param1->unk_2D40[param1->unk_94].unk_70 & 0x1000000) {
                    v5 = 2;
                }
            } else if (v6->unk_18[0x1 + v3] == 0) {
                param1->unk_213C |= 0x20000;

                if ((param1->unk_88 == 2) || (param1->unk_88 == 3)) {
                    ov16_02248AF0(param1, v1);
                    return 0;
                } else {
                    param1->unk_F4.unk_02 = 145;
                    param1->unk_F4.unk_01 = 12;
                    param1->unk_F4.unk_04[0] = ov16_02255560(param1, param1->unk_94);
                    param1->unk_F4.unk_04[1] = 0x1 + v3;
                    ov16_02248AF0(param1, v0);
                    return 0;
                }
            }

            if ((v5 == 2) && (param1->unk_88 == 1)) {
                ov16_02248AF0(param1, v2);
                return 0;
            } else if ((v5) && (param1->unk_88 == 2)) {
                ov16_02248AF0(param1, v1);
                return 0;
            } else if (v5) {
                ov16_02248AF0(param1, v0);
                return 0;
            }
        }

        if (param1->unk_88 == 3) {
            param1->unk_F4.unk_02 = 662;
            param1->unk_F4.unk_01 = 54;
            param1->unk_F4.unk_04[0] = ov16_02255560(param1, param1->unk_64);
            param1->unk_F4.unk_04[1] = param1->unk_2D40[param1->unk_64].unk_27;
            param1->unk_F4.unk_04[2] = ov16_02255560(param1, param1->unk_94);
            param1->unk_F4.unk_04[3] = 0x1 + v3;
        } else {
            param1->unk_F4.unk_02 = ((v4 == -1) ? 762 : 765);
            param1->unk_F4.unk_01 = 12;
            param1->unk_F4.unk_04[0] = ov16_02255560(param1, param1->unk_94);
            param1->unk_F4.unk_04[1] = 0x1 + v3;
        }

        v6->unk_18[0x1 + v3] += v4;

        if (v6->unk_18[0x1 + v3] < 0) {
            v6->unk_18[0x1 + v3] = 0;
        }
    }

    return 0;
}

static BOOL ov16_02242A14 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    u32 v6;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_02248AD0(param1);
    v4 = ov16_0224A984(param0, param1, v1);
    v5 = ov16_02252060(param1, v4, v2, NULL);

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
        v5 = sub_020787CC(v3);
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
        ov16_0224B928(param1, v4, v5);
    }

    ov16_022523E8(param1, v4, v2, (u8 *)&v5);
    ov16_02253EC0(param0, param1, v4);

    return 0;
}

static BOOL ov16_02242B38 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v0 = ov16_0224A984(param0, param1, v1);

    param1->unk_218C[v0] |= v2;

    return 0;
}

static BOOL ov16_02242B74 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_0224A984(param0, param1, v0);

    ov16_02265EE8(param0, v2, v1);

    return 0;
}

static BOOL ov16_02242BAC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_02248AD0(param1);

    if (v1 == 0x0) {
        {
            int v5;

            v5 = ov16_0223DF1C(param0);

            for (v4 = 0; v4 < v5; v4++) {
                if (v0 == 0) {
                    if (ov16_02255A4C(param1, v4) == v2) {
                        ov16_02248AF0(param1, v3);
                        param1->unk_80 = v4;
                        break;
                    }
                } else {
                    if (ov16_02255A4C(param1, v4) == v2) {
                        break;
                    }
                }
            }
        }
    } else {
        v4 = ov16_0224A984(param0, param1, v1);

        if (v0 == 0) {
            if (ov16_02255A4C(param1, v4) == v2) {
                ov16_02248AF0(param1, v3);
                param1->unk_80 = v4;
            }
        } else {
            if (ov16_02255A4C(param1, v4) != v2) {
                ov16_02248AF0(param1, v3);
                param1->unk_80 = v4;
            }
        }
    }

    return 0;
}

static BOOL ov16_02242C6C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v0 += 1;
    v1 = ov16_02248AD0(param1);

    param1->unk_134 = (ov16_0223F4BC(param0) % v0) + v1;

    return 0;
}

static BOOL ov16_02242CA4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int * v3;
    int * v4;
    u32 v5;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_02248B10(param0, param1, v1);
    v4 = ov16_02248B10(param0, param1, v2);

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
        v3[0] = sub_020787CC(v4[0]);
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

static BOOL ov16_02242DBC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    int * v6;
    u32 v7;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_02248AD0(param1);
    v4 = ov16_0224A984(param0, param1, v1);
    v5 = ov16_02252060(param1, v4, v2, NULL);
    v6 = ov16_02248B10(param0, param1, v3);

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
        v5 = sub_020787CC(v6[0]);
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
            ov16_0224B928(param1, v4, v5);
        }

        ov16_022523E8(param1, v4, v2, (u8 *)&v5);
        ov16_02253EC0(param0, param1, v4);
    }

    return 0;
}

static BOOL ov16_02242F1C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);
    v0 = ov16_02248AD0(param1);
    ov16_02248AF0(param1, v0);

    return 0;
}

static BOOL ov16_02242F3C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);
    v0 = ov16_02248AD0(param1);
    ov16_02248B08(param1, 1, v0);

    return 0;
}

static BOOL ov16_02242F5C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int * v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248B10(param0, param1, v0);

    ov16_02248B08(param1, 1, v1[0]);

    return 0;
}

static BOOL ov16_02242F8C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    v1 = 0;
    v0 = ov16_0223DF0C(param0);

    ov16_02248AF0(param1, 1);

    if (param1->unk_3084[param1->unk_64]) {
        v1 = param1->unk_3084[param1->unk_64];
    } else {
        if (v0 & 0x2) {
            v1 = param1->unk_308C[param1->unk_64][0] + param1->unk_308C[param1->unk_64][1] + param1->unk_308C[param1->unk_64][2] + param1->unk_308C[param1->unk_64][3];

            if (v1) {
                do {
                    v1 = param1->unk_308C[param1->unk_64][ov16_0223F4BC(param0) % 4];
                } while (v1 == 0);
            }
        }
    }

    if ((v1) && (ov16_0225B084(param1, v1) == 1)) {
        param1->unk_213C &= (0x1 ^ 0xffffffff);
        param1->unk_213C &= (0x4000 ^ 0xffffffff);
        param1->unk_3044 = v1;
        param1->unk_6C = ov16_02253954(param0, param1, param1->unk_64, v1, 1, 0);

        if (param1->unk_6C == 0xff) {
            param1->unk_0C = 38;
            ov16_02248B00(param1, 1, (0 + 281));
        } else {
            param1->unk_21A8[param1->unk_64][1] = param1->unk_6C;
            ov16_02248B00(param1, 0, v1);
        }
    } else {
        param1->unk_2D4[param1->unk_64].unk_00_0 = 1;
    }

    return 0;
}

static BOOL ov16_022430A4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v2 = ov16_0223DF1C(param0);

    for (v1 = 0; v1 < v2; v1++) {
        for (v0 = 0x0; v0 < 0x8; v0++) {
            param1->unk_2D40[v1].unk_18[v0] = 6;
        }

        param1->unk_2D40[v1].unk_70 &= (0x100000 ^ 0xffffffff);
    }

    return 0;
}

static BOOL ov16_022430F4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    ov16_02253EF0(param0, param1, v1);

    return 0;
}

static BOOL ov16_02243120 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    ov16_02253F20(param0, param1, v1);

    return 0;
}

static BOOL ov16_0224314C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_0224A984(param0, param1, v0);

    ov16_02265FB8(param0, v2, v1);

    return 0;
}

static BOOL ov16_02243184 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_0224A984(param0, param1, v0);

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

static u32 ov16_022431BC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    int v0 = 0;
    void * v1;
    u32 v2;
    u8 v3 = 0;
    UnkStruct_0207A9CC v4;

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

    if ((param0->unk_2C & 0x10) || (param0->unk_2C == ((0x2 | 0x1) | 0x8 | 0x40))) {
        v2 = v3 * 4 * param1->unk_2168 * Unk_ov16_02270B20[v4.unk_01];
    } else if (param0->unk_2C & 0x2) {
        v2 = v3 * 4 * param1->unk_2168 * 2 * Unk_ov16_02270B20[v4.unk_01];
    } else {
        v2 = v3 * 4 * param1->unk_2168 * Unk_ov16_02270B20[v4.unk_01];
    }

    Heap_FreeToHeap(v1);

    return v2;
}

static BOOL ov16_022432B4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    u32 v0;

    ov16_02248AF0(param1, 1);

    if (param0->unk_241C == 0x1) {
        v0 = ov16_022431BC(param0, param1, 1);

        if ((param0->unk_2C & 0x10) || (param0->unk_2C == ((0x2 | 0x1) | 0x8 | 0x40))) {
            v0 += ov16_022431BC(param0, param1, 3);
        }

        sub_02025F94(ov16_0223E16C(param0, 0), v0);
    } else {
        v0 = ov16_0223F904(param0->unk_68[0], param0->unk_48[0]);
        sub_02025FB8(ov16_0223E16C(param0, 0), v0);
    }

    if (v0) {
        param1->unk_130 = v0;
    } else {
        param1->unk_130 = 0;
    }

    return 0;
}

static BOOL ov16_02243334 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);

    if ((ov16_0223EDAC(param0) == 1) || (v2 == 15) || (v2 == 16) || (v2 == 26) || (v2 == 25)) {
        v0 = ov16_0224A984(param0, param1, v1);

        if (ov16_0225B1DC(param1, v0, v2) == 1) {
            ov16_02265FF8(param0, param1, v0, v2);
        }
    }

    return 0;
}

static BOOL ov16_02243398 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0, v1;
    int v2;
    int v3;
    int v4;

    ov16_02248AF0(param1, 1);

    v2 = ov16_02248AD0(param1);
    v3 = ov16_02248AD0(param1);
    v4 = ov16_02248AD0(param1);

    if ((ov16_0223EDAC(param0) == 1) || (v4 == 15) || (v4 == 16) || (v4 == 26) || (v4 == 25)) {
        v0 = ov16_0224A984(param0, param1, v2);
        v1 = ov16_0224A984(param0, param1, v3);

        if ((ov16_0225B1DC(param1, v0, v4) == 1) && (ov16_0225B1DC(param1, v1, v4) == 1)) {
            ov16_02266028(param0, param1, v0, v1, v4);
        }
    }

    return 0;
}

static BOOL ov16_02243424 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int * v3;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v0 = ov16_0224A984(param0, param1, v1);
    v3 = ov16_02248B10(param0, param1, v2);

    if ((ov16_0223EDAC(param0) == 1) || (v2 == 15) || (v2 == 16) || (v3[0] == 26) || (v3[0] == 25)) {
        if (ov16_0225B1DC(param1, v0, v3[0]) == 1) {
            ov16_02265FF8(param0, param1, v0, v3[0]);
        }
    }

    return 0;
}

static BOOL ov16_02243494 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);
    v0 = ov16_0224A984(param0, param1, v1);

    ov16_02266058(param0, param1, v0, param1->unk_219C[v0]);

    return 0;
}

static BOOL ov16_022434CC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);
    v0 = ov16_0224A984(param0, param1, v1);

    ov16_0226609C(param0, param1, v0, param1->unk_219C[v0]);

    return 0;
}

static BOOL ov16_02243504 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);
    v0 = ov16_0224A984(param0, param1, v1);

    ov16_022660E8(param0, param1, v0);

    return 0;
}

static BOOL ov16_02243530 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);
    v0 = ov16_0224A984(param0, param1, v1);

    ov16_02266100(param0, param1, v0);

    return 0;
}

static BOOL ov16_0224355C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    ov16_02265FD8(param0, v1, param1->unk_130);

    return 0;
}

static BOOL ov16_0224358C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0, v1;
    int v2;
    int v3;

    ov16_02248AF0(param1, 1);

    v2 = ov16_02248AD0(param1);

    if (ov16_02255A4C(param1, param1->unk_64) == 121) {
        ov16_02248AF0(param1, v2);
        return 0;
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (param1->unk_2D40[param1->unk_64].unk_0C[v0] == 0) {
            break;
        }
    }

    for (v1 = 0; v1 < v0; v1++) {
        if (param1->unk_2D40[param1->unk_64].unk_0C[v1] != 160) {
            v3 = param1->unk_354.unk_8A[param1->unk_2D40[param1->unk_64].unk_0C[v1]].unk_04;

            if (v3 == 9) {
                if ((ov16_02252060(param1, param1->unk_64, 27, NULL) == 7) || (ov16_02252060(param1, param1->unk_64, 28, NULL) == 7)) {
                    v3 = 7;
                } else {
                    v3 = 0;
                }
            }

            if ((v3 != ov16_02252060(param1, param1->unk_64, 27, NULL)) && (v3 != ov16_02252060(param1, param1->unk_64, 28, NULL))) {
                break;
            }
        }
    }

    if (v1 == v0) {
        ov16_02248AF0(param1, v2);
    } else {
        do {
            do {
                v1 = ov16_0223F4BC(param0) % v0;
            } while (param1->unk_2D40[param1->unk_64].unk_0C[v1] == 160);

            v3 = param1->unk_354.unk_8A[param1->unk_2D40[param1->unk_64].unk_0C[v1]].unk_04;

            if (v3 == 9) {
                if ((ov16_02252060(param1, param1->unk_64, 27, NULL) == 7) || (ov16_02252060(param1, param1->unk_64, 28, NULL) == 7)) {
                    v3 = 7;
                } else {
                    v3 = 0;
                }
            }
        } while ((v3 == ov16_02252060(param1, param1->unk_64, 27, NULL)) || (v3 == ov16_02252060(param1, param1->unk_64, 28, NULL)));

        param1->unk_2D40[param1->unk_64].unk_24 = v3;
        param1->unk_2D40[param1->unk_64].unk_25 = v3;
        param1->unk_130 = v3;
    }

    return 0;
}

static BOOL ov16_02243708 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    u32 * v4;
    u32 * v5;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_02248AD0(param1);
    v4 = ov16_02248B10(param0, param1, v1);
    v5 = ov16_02248B10(param0, param1, v2);

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
        ov16_02248AF0(param1, v3);
    }

    return 0;
}

static BOOL ov16_022437D4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    u32 v5;
    u32 * v6;
    int v7;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_02248AD0(param1);
    v4 = ov16_02248AD0(param1);
    v7 = ov16_0224A984(param0, param1, v1);
    v5 = ov16_02252060(param1, v7, v2, NULL);
    v6 = ov16_02248B10(param0, param1, v3);

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
        ov16_02248AF0(param1, v4);
    }

    return 0;
}

static BOOL ov16_022438A8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);

    param1->unk_130 = param1->unk_14C * param1->unk_2168;

    if (param1->unk_130 > 0xffff) {
        param1->unk_130 = 0xffff;
    }

    sub_02025F94(ov16_0223E16C(param0, 0), param1->unk_130);

    return 0;
}

static BOOL ov16_022438F8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0223E208(param0, param1->unk_64);

    if (param1->unk_1BC[v1] & 0x2) {
        ov16_02248AF0(param1, v0);
        param1->unk_216C |= 0x40;
    } else {
        param1->unk_1BC[v1] |= 0x2;
        param1->unk_1C4[v1].unk_00_7 = 5;
        param1->unk_1C4[v1].unk_00_5 = param1->unk_64;

        if (ov16_02258AB8(param1, param1->unk_64) == 97) {
            param1->unk_1C4[v1].unk_00_7 += ov16_02258ACC(param1, param1->unk_64, 0);
        }

        param1->unk_F4.unk_01 = 20;
        param1->unk_F4.unk_04[0] = param1->unk_3044;
        param1->unk_F4.unk_04[1] = param1->unk_64;

        if (ov16_022554E0(param0, param1, 1, param1->unk_64) == 2) {
            param1->unk_F4.unk_02 = 192;
        } else {
            param1->unk_F4.unk_02 = 190;
        }
    }

    return 0;
}

static BOOL ov16_022439D8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0223E208(param0, param1->unk_64);

    if (param1->unk_1BC[v1] & 0x1) {
        ov16_02248AF0(param1, v0);
        param1->unk_216C |= 0x40;
    } else {
        param1->unk_1BC[v1] |= 0x1;
        param1->unk_1C4[v1].unk_00_2 = 5;
        param1->unk_1C4[v1].unk_00_0 = param1->unk_64;

        if (ov16_02258AB8(param1, param1->unk_64) == 97) {
            param1->unk_1C4[v1].unk_00_2 += ov16_02258ACC(param1, param1->unk_64, 0);
        }

        param1->unk_F4.unk_01 = 20;
        param1->unk_F4.unk_04[0] = param1->unk_3044;
        param1->unk_F4.unk_04[1] = param1->unk_64;

        if (ov16_022554E0(param0, param1, 1, param1->unk_64) == 2) {
            param1->unk_F4.unk_02 = 196;
        } else {
            param1->unk_F4.unk_02 = 194;
        }
    }

    return 0;
}

static BOOL ov16_02243AB8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0223E208(param0, param1->unk_64);

    if (param1->unk_1BC[v1] & 0x40) {
        ov16_02248AF0(param1, v0);
        param1->unk_216C |= 0x40;
    } else {
        param1->unk_1BC[v1] |= 0x40;
        param1->unk_1C4[v1].unk_00_12 = 5;
        param1->unk_1C4[v1].unk_00_10 = param1->unk_64;
    }

    return 0;
}

static BOOL ov16_02243B38 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    u16 v0;

    ov16_02248AF0(param1, 1);

    param1->unk_213C |= 0x400;

    if (ov16_02255AB4(param1, param1->unk_64, param1->unk_6C, 5) == 1) {
        param1->unk_216C |= 0x80000;
    } else {
        if (((param1->unk_2D40[param1->unk_6C].unk_80 & 0x18) == 0) && (ov16_02255A4C(param1, param1->unk_64) != 99) && (ov16_02255A4C(param1, param1->unk_6C) != 99)) {
            v0 = param1->unk_354.unk_8A[param1->unk_3044].unk_05 + (param1->unk_2D40[param1->unk_64].unk_34 - param1->unk_2D40[param1->unk_6C].unk_34);

            if (((ov16_0223F4BC(param0) % 100) < v0) && (param1->unk_2D40[param1->unk_64].unk_34 >= param1->unk_2D40[param1->unk_6C].unk_34)) {
                v0 = 1;
            } else {
                v0 = 0;
            }
        } else {
            if ((((param1->unk_2D40[param1->unk_6C].unk_88.unk_04_0 == param1->unk_64) && (param1->unk_2D40[param1->unk_6C].unk_80 & 0x18)) || (ov16_02255A4C(param1, param1->unk_64) == 99) || (ov16_02255A4C(param1, param1->unk_6C) == 99)) && (param1->unk_2D40[param1->unk_64].unk_34 >= param1->unk_2D40[param1->unk_6C].unk_34)) {
                v0 = 1;
            } else {
                v0 = param1->unk_354.unk_8A[param1->unk_3044].unk_05 + (param1->unk_2D40[param1->unk_64].unk_34 - param1->unk_2D40[param1->unk_6C].unk_34);

                if (((ov16_0223F4BC(param0) % 100) < v0) && (param1->unk_2D40[param1->unk_64].unk_34 >= param1->unk_2D40[param1->unk_6C].unk_34)) {
                    v0 = 1;
                } else {
                    v0 = 0;
                }
            }

            param1->unk_216C |= 0x400;
        }

        if (v0) {
            param1->unk_2144 = param1->unk_2D40[param1->unk_6C].unk_4C * -1;
            param1->unk_216C |= 0x20;
        } else {
            if (param1->unk_2D40[param1->unk_64].unk_34 >= param1->unk_2D40[param1->unk_6C].unk_34) {
                param1->unk_216C |= 0x1;
            } else {
                param1->unk_216C |= 0x1000;
            }
        }
    }

    return 0;
}

static BOOL ov16_02243D2C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int * v2;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248B10(param0, param1, v0);
    v2[0] = ov16_022563F8(v2[0], v1);

    return 0;
}

static BOOL ov16_02243D64 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int * v3;
    int * v4;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v3 = ov16_02248B10(param0, param1, v0);
    v4 = ov16_02248B10(param0, param1, v1);

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

static BOOL ov16_02243DBC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if ((ov16_0225AFF4(param1->unk_307C[param1->unk_6C]) == 0) || (param1->unk_2D40[param1->unk_64].unk_70 & 0x200000) || (param1->unk_2D40[param1->unk_6C].unk_70 & 0x1000000) || (param1->unk_307C[param1->unk_6C] == 0)) {
        ov16_02248AF0(param1, v0);
    } else {
        {
            int v1;
            int v2 = -1;

            for (v1 = 0; v1 < 4; v1++) {
                if (param1->unk_2D40[param1->unk_64].unk_0C[v1] == param1->unk_307C[param1->unk_6C]) {
                    break;
                }

                if ((param1->unk_2D40[param1->unk_64].unk_0C[v1] == 102) && (v2 == -1)) {
                    v2 = v1;
                }
            }

            if (v1 == 4) {
                param1->unk_124 = param1->unk_307C[param1->unk_6C];
                param1->unk_2D40[param1->unk_64].unk_0C[v2] = param1->unk_124;

                if (param1->unk_354.unk_8A[param1->unk_124].unk_06 < 5) {
                    param1->unk_2D40[param1->unk_64].unk_2C[v2] = param1->unk_354.unk_8A[param1->unk_124].unk_06;
                } else {
                    param1->unk_2D40[param1->unk_64].unk_2C[v2] = 5;
                }

                param1->unk_2D40[param1->unk_64].unk_88.unk_04_2 |= sub_020787CC(v2);

                if (param1->unk_124 == 387) {
                    param1->unk_2D40[param1->unk_64].unk_88.unk_04_10 = 0;
                }
            } else {
                ov16_02248AF0(param1, v0);
            }
        }
    }

    return 0;
}

static BOOL ov16_02243EF4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    u16 v1;

    ov16_02248AF0(param1, 1);

    while (TRUE) {
        v1 = (ov16_0223F4BC(param0) % 467) + 1;

        for (v0 = 0; v0 < 4; v0++) {
            if (param1->unk_2D40[param1->unk_64].unk_0C[v0] == v1) {
                break;
            }
        }

        if (v0 != 4) {
            continue;
        }

        if (ov16_0225B02C(param0, param1, param1->unk_64, v1) == 0) {
            continue;
        }

        param1->unk_124 = v1;
        break;
    }

    return 0;
}

static BOOL ov16_02243F54 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02254EE0(&param1->unk_2D40[param1->unk_6C], param1->unk_307C[param1->unk_6C]);

    if ((param1->unk_2D40[param1->unk_6C].unk_88.unk_20 == 0) && (v1 != 4) && (param1->unk_2D40[param1->unk_6C].unk_2C[v1]) && (param1->unk_307C[param1->unk_6C])) {
        param1->unk_124 = param1->unk_307C[param1->unk_6C];
        param1->unk_2D40[param1->unk_6C].unk_88.unk_20 = param1->unk_124;
        param1->unk_2D40[param1->unk_6C].unk_88.unk_00_0 = ov16_0223F4BC(param0) % 4 + 3;
    } else {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_02244010 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0, v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v2 = param1->unk_1D4[param1->unk_64].unk_14;
    v0 = ov16_0223E208(param0, param1->unk_64);
    v1 = ov16_0223E208(param0, v2);

    if ((param1->unk_1D4[param1->unk_64].unk_04[v2]) && (v0 != v1) && (param1->unk_2D40[v2].unk_4C)) {
        param1->unk_2144 = param1->unk_1D4[param1->unk_64].unk_04[v2] * 2;

        if ((param1->unk_1C4[v1].unk_00_20) && (param1->unk_2D40[param1->unk_1C4[v1].unk_00_21].unk_4C)) {
            param1->unk_6C = param1->unk_1C4[v1].unk_00_21;
        } else {
            param1->unk_6C = v2;
        }

        if (param1->unk_2D40[param1->unk_6C].unk_4C == 0) {
            param1->unk_6C = ov16_02257028(param0, param1, param1->unk_64);

            if (param1->unk_2D40[param1->unk_6C].unk_4C == 0) {
                param1->unk_0C = 38;
                ov16_02248B00(param1, 1, (0 + 281));
            }
        }

        ov16_0225B408(param1, param1->unk_64, param1->unk_6C);
    } else {
        param1->unk_2D4[param1->unk_64].unk_00_0 = 1;
        param1->unk_216C |= 0x40;
    }

    return 0;
}

static BOOL ov16_0224410C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0, v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v2 = param1->unk_1D4[param1->unk_64].unk_2C;
    v0 = ov16_0223E208(param0, param1->unk_64);
    v1 = ov16_0223E208(param0, v2);

    if ((param1->unk_1D4[param1->unk_64].unk_1C[v2]) && (v0 != v1) && (param1->unk_2D40[v2].unk_4C)) {
        param1->unk_2144 = param1->unk_1D4[param1->unk_64].unk_1C[v2] * 2;

        if ((param1->unk_1C4[v1].unk_00_20) && (param1->unk_2D40[param1->unk_1C4[v1].unk_00_21].unk_4C)) {
            param1->unk_6C = param1->unk_1C4[v1].unk_00_21;
        } else {
            param1->unk_6C = v2;
        }

        if (param1->unk_2D40[param1->unk_6C].unk_4C == 0) {
            param1->unk_6C = ov16_02257028(param0, param1, param1->unk_64);

            if (param1->unk_2D40[param1->unk_6C].unk_4C == 0) {
                param1->unk_0C = 38;
                ov16_02248B00(param1, 1, (0 + 281));
            }
        }

        ov16_0225B408(param1, param1->unk_64, param1->unk_6C);
    } else {
        param1->unk_2D4[param1->unk_64].unk_00_0 = 1;
        param1->unk_216C |= 0x40;
    }

    return 0;
}

static BOOL ov16_02244208 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02254EE0(&param1->unk_2D40[param1->unk_6C], param1->unk_307C[param1->unk_6C]);

    if (ov16_0225B084(param1, param1->unk_307C[param1->unk_6C]) == 0) {
        v1 = 4;
    }

    if ((param1->unk_2D40[param1->unk_6C].unk_88.unk_24 == 0) && (v1 != 4) && (param1->unk_2D40[param1->unk_6C].unk_2C[v1]) && (param1->unk_307C[param1->unk_6C])) {
        param1->unk_124 = param1->unk_307C[param1->unk_6C];
        param1->unk_2D40[param1->unk_6C].unk_88.unk_24 = param1->unk_124;
        param1->unk_2D40[param1->unk_6C].unk_88.unk_26 = v1;

        param1->unk_2D40[param1->unk_6C].unk_88.unk_00_3 = ov16_0223F4BC(param0) % 5 + 3;
    } else {
        param1->unk_216C |= 0x40;
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_022442F0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0, v1;
    int v2;
    int v3;

    ov16_02248AF0(param1, 1);

    v2 = ov16_02248AD0(param1);

    if (ov16_02255A4C(param1, param1->unk_64) == 121) {
        ov16_02248AF0(param1, v2);
        return 0;
    }

    if ((param1->unk_30C4[param1->unk_64]) && (param1->unk_30CC[param1->unk_64] != 0xff)) {
        if ((ov16_0225582C(param1, param1->unk_30C4[param1->unk_64])) && (param1->unk_2D40[param1->unk_30CC[param1->unk_64]].unk_70 & 0x1000)) {
            ov16_02248AF0(param1, v2);
            return 0;
        } else {
            {
                u8 v4, v5, v6;

                v3 = param1->unk_30D4[param1->unk_64];

                for (v0 = 0; v0 < 1000; v0++) {
                    ov16_0225588C(param0, 0xffff, &v4, &v5, &v6);

                    if ((v4 == v3) && (v6 <= 5) && (ov16_02252060(param1, param1->unk_64, 27, NULL) != v5) && (ov16_02252060(param1, param1->unk_64, 28, NULL) != v5)) {
                        param1->unk_2D40[param1->unk_64].unk_24 = v5;
                        param1->unk_2D40[param1->unk_64].unk_25 = v5;
                        param1->unk_130 = v5;
                        return 0;
                    }
                }

                v0 = 0;

                while (ov16_0225588C(param0, v0, &v4, &v5, &v6) == 1) {
                    if ((v4 == v3) && (v6 <= 5) && (ov16_02252060(param1, param1->unk_64, 27, NULL) != v5) && (ov16_02252060(param1, param1->unk_64, 28, NULL) != v5)) {
                        param1->unk_2D40[param1->unk_64].unk_24 = v5;
                        param1->unk_2D40[param1->unk_64].unk_25 = v5;
                        param1->unk_130 = v5;
                        return 0;
                    }

                    v0++;
                }
            }
        }
    }

    ov16_02248AF0(param1, v2);

    return 0;
}

static BOOL ov16_022444B0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1 = -1;
    int v2;

    ov16_02248AF0(param1, 1);

    v2 = ov16_02248AD0(param1);

    if ((param1->unk_2D40[param1->unk_64].unk_70 & 0x200000) || (param1->unk_30AC[param1->unk_6C] == 165) || (param1->unk_30AC[param1->unk_6C] == 166) || (param1->unk_30AC[param1->unk_6C] == 448) || (param1->unk_30AC[param1->unk_6C] == 0)) {
        ov16_02248AF0(param1, v2);
    } else {
        for (v0 = 0; v0 < 4; v0++) {
            if ((param1->unk_2D40[param1->unk_64].unk_0C[v0] != 166) && (param1->unk_2D40[param1->unk_64].unk_0C[v0] == param1->unk_30AC[param1->unk_6C])) {
                break;
            }

            if ((param1->unk_2D40[param1->unk_64].unk_0C[v0] == 166) && (v1 == -1)) {
                v1 = v0;
            }
        }

        if (v0 == 4) {
            param1->unk_2D40[param1->unk_64].unk_0C[v1] = param1->unk_30AC[param1->unk_6C];
            param1->unk_2D40[param1->unk_64].unk_2C[v1] = param1->unk_354.unk_8A[param1->unk_30AC[param1->unk_6C]].unk_06;
            ov16_022662FC(param0, param1, param1->unk_64);
            param1->unk_124 = param1->unk_30AC[param1->unk_6C];

            if (param1->unk_124 == 387) {
                param1->unk_2D40[param1->unk_64].unk_88.unk_04_10 = 0;
            }
        } else {
            ov16_02248AF0(param1, v2);
        }
    }

    return 0;
}

static BOOL ov16_022445D4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v2 = ov16_02248AD0(param1);
    v1 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        if ((ov16_02255918(param1->unk_2D40[param1->unk_64].unk_0C[v0])) || (param1->unk_2D40[param1->unk_64].unk_0C[v0] == 264) || (param1->unk_2D40[param1->unk_64].unk_0C[v0] == 253) || (param1->unk_2D40[param1->unk_64].unk_0C[v0] == 448) || (ov16_0225582C(param1, param1->unk_2D40[param1->unk_64].unk_0C[v0]))) {
            v1 |= sub_020787CC(v0);
        }
    }

    v1 = ov16_02254A6C(param0, param1, param1->unk_64, v1, (0x2 ^ 0xffffffff));

    if (v1 == 0xf) {
        ov16_02248AF0(param1, v2);
    } else {
        do {
            v0 = ov16_0223F4BC(param0) % 4;
        } while ((v1 & sub_020787CC(v0)));

        param1->unk_124 = param1->unk_2D40[param1->unk_64].unk_0C[v0];
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

static BOOL ov16_022446A0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);
    v1 = sub_0208C0BC(param1->unk_2D40[param1->unk_64].unk_4C, param1->unk_2D40[param1->unk_64].unk_50, 64);

    for (v0 = 0; v0 < NELEMS(Unk_ov16_0226E584); v0++) {
        if (v1 <= Unk_ov16_0226E584[v0][0]) {
            break;
        }
    }

    param1->unk_2154 = Unk_ov16_0226E584[v0][1];

    return 0;
}

static BOOL ov16_022446F4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);
    v0 = ov16_02248AD0(param1);

    if (param1->unk_307C[param1->unk_6C]) {
        v1 = ov16_02254EE0(&param1->unk_2D40[param1->unk_6C], param1->unk_307C[param1->unk_6C]);

        if ((v1 == 4) || (param1->unk_2D40[param1->unk_6C].unk_2C[v1] == 0)) {
            ov16_02248AF0(param1, v0);
        } else {
            v2 = 4;

            if (param1->unk_2D40[param1->unk_6C].unk_2C[v1] < v2) {
                v2 = param1->unk_2D40[param1->unk_6C].unk_2C[v1];
            }

            param1->unk_124 = param1->unk_307C[param1->unk_6C];
            param1->unk_130 = v2;
            param1->unk_2D40[param1->unk_6C].unk_2C[v1] -= v2;

            ov16_02253EC0(param0, param1, param1->unk_6C);
        }
    } else {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_02244798 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    u32 v0;
    int v1;

    v0 = ov16_0223DF0C(param0);
    ov16_02248AF0(param1, 1);

    param1->unk_134 = 0;

    if (param1->unk_3044 == 215) {
        param1->unk_124 = param1->unk_3044;

        if (ov16_02255A4C(param1, param1->unk_64) != 43) {
            param1->unk_2D40[param1->unk_64].unk_6C = 0;
            param1->unk_2D40[param1->unk_64].unk_70 &= (0x8000000 ^ 0xffffffff);
        } else {
            param1->unk_134 |= (1 | 4);
        }

        if (v0 & 0x2) {
            v1 = ov16_0224A984(param0, param1, 0x10);

            if ((param1->unk_3108 & sub_020787CC(v1)) == 0) {
                if (ov16_02255AB4(param1, param1->unk_64, v1, 43) == 0) {
                    param1->unk_2D40[v1].unk_6C = 0;
                    param1->unk_2D40[v1].unk_70 &= (0x8000000 ^ 0xffffffff);
                } else {
                    param1->unk_118 = v1;
                    param1->unk_134 |= (2 | 8);
                }
            }
        } else {
            param1->unk_134 |= 8;
        }
    } else {
        param1->unk_2D40[param1->unk_64].unk_6C = 0;
        param1->unk_2D40[param1->unk_64].unk_70 &= (0x8000000 ^ 0xffffffff);

        if (v0 & 0x2) {
            v1 = ov16_0224A984(param0, param1, 0x10);

            if ((param1->unk_3108 & sub_020787CC(v1)) == 0) {
                param1->unk_2D40[v1].unk_6C = 0;
                param1->unk_2D40[v1].unk_70 &= (0x8000000 ^ 0xffffffff);
            }
        } else {
            param1->unk_134 |= 8;
        }
    }

    ov16_02266498(param0, param1, param1->unk_64, param1->unk_3044);

    return 0;
}

static BOOL ov16_022448E8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    u32 v2;
    int v3;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_0223DF0C(param0);
    v3 = ov16_0223E208(param0, param1->unk_64);

    if ((ov16_0223E208(param0, param1->unk_64)) && ((v2 & (0x4 | 0x80)) == 0)) {
        ov16_02248AF0(param1, v0);
    } else if (param1->unk_1C4[v3].unk_00_23 & sub_020787CC(param1->unk_219C[param1->unk_64])) {
        ov16_02248AF0(param1, v0);
    } else if ((ov16_02255A4C(param1, param1->unk_64) == 121) || (ov16_02255A4C(param1, param1->unk_6C) == 121)) {
        ov16_02248AF0(param1, v0);
    } else if (param1->unk_2D40[param1->unk_6C].unk_78 == 112) {
        ov16_02248AF0(param1, v0);
    } else if ((param1->unk_2D40[param1->unk_6C].unk_88.unk_04_28) || (param1->unk_2D40[param1->unk_6C].unk_88.unk_04_29)) {
        ov16_02248AF0(param1, v0);
    } else {
        if ((param1->unk_2D40[param1->unk_6C].unk_78) && (ov16_02255AB4(param1, param1->unk_64, param1->unk_6C, 60) == 1)) {
            ov16_02248AF0(param1, v1);
        } else if ((param1->unk_2D40[param1->unk_64].unk_78) || (ov16_02255980(param0, param1, param1->unk_6C) == 0)) {
            ov16_02248AF0(param1, v0);
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

static BOOL ov16_02244A0C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);
    v2 = ov16_02248AD0(param1);

    if ((param1->unk_305C[param1->unk_64] != 182) && (param1->unk_305C[param1->unk_64] != 197) && (param1->unk_305C[param1->unk_64] != 203)) {
        param1->unk_2D40[param1->unk_64].unk_88.unk_00_11 = 0;
    }

    if (param1->unk_3150 == 1) {
        v1 = 0;
    } else {
        v1 = 1;
    }

    if ((Unk_ov16_0226E57C[param1->unk_2D40[param1->unk_64].unk_88.unk_00_11] >= ov16_0223F4BC(param0)) && (v1)) {
        if (param1->unk_354.unk_8A[param1->unk_3044].unk_00 == 111) {
            param1->unk_1D4[param1->unk_64].unk_00_2 = 1;
            param1->unk_F4.unk_02 = 282;
        }

        if (param1->unk_354.unk_8A[param1->unk_3044].unk_00 == 116) {
            param1->unk_1D4[param1->unk_64].unk_00_9 = 1;
            param1->unk_F4.unk_02 = 442;
        }

        param1->unk_F4.unk_01 = 2;
        param1->unk_F4.unk_04[0] = ov16_02255560(param1, param1->unk_64);

        if (param1->unk_2D40[param1->unk_64].unk_88.unk_00_11 < NELEMS(Unk_ov16_0226E57C) - 1) {
            param1->unk_2D40[param1->unk_64].unk_88.unk_00_11++;
        }
    } else {
        param1->unk_2D40[param1->unk_64].unk_88.unk_00_11 = 0;
        ov16_02248AF0(param1, v2);
    }

    return 0;
}

static BOOL ov16_02244B48 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_022563F8(param1->unk_2D40[param1->unk_64].unk_50, 4);

    if (param1->unk_2D40[param1->unk_64].unk_4C <= v1) {
        ov16_02248AF0(param1, v0);
    } else {
        param1->unk_215C = v1 * -1;
        param1->unk_2D40[param1->unk_64].unk_88.unk_18 = v1;
        param1->unk_2D40[param1->unk_64].unk_70 &= (0xe000 ^ 0xffffffff);
    }

    return 0;
}

static BOOL ov16_02244BC4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    u32 v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0223DF0C(param0);

    if (v1 & 0x1) {
        {
            Party * v2;
            Pokemon * v3;
            int v4;
            int v5 = 0, v6, v7, v8, v9, v10;
            int v11, v12;

            v2 = ov16_0223DF20(param0, param1->unk_6C);
            v4 = ov16_0223DF60(param0, param1->unk_6C);

            if ((v1 & 0x8) || ((v1 & 0x10) && (ov16_0223E208(param0, param1->unk_6C)))) {
                v8 = 0;
                v9 = v4;
                v10 = v4;
                v6 = 1;
                v11 = param1->unk_219C[param1->unk_6C];
                v12 = param1->unk_219C[param1->unk_6C];
            } else if (v1 & 0x2) {
                v8 = 0;
                v9 = v4;
                v10 = v4;
                v6 = 2;
                v11 = param1->unk_219C[param1->unk_6C];
                v12 = param1->unk_219C[ov16_0223E258(param0, param1->unk_6C)];
            } else {
                v8 = 0;
                v9 = v4;
                v10 = v4;
                v6 = 1;
                v11 = param1->unk_219C[param1->unk_6C];
                v12 = param1->unk_219C[param1->unk_6C];
            }

            for (v7 = v8; v7 < v9; v7++) {
                v3 = Party_GetPokemonBySlotIndex(v2, v7);

                if ((GetMonData(v3, 5, NULL)) && (GetMonData(v3, 76, NULL) == 0) && (GetMonData(v3, 163, NULL))) {
                    v5++;
                }
            }

            if (v5 <= v6) {
                ov16_02248AF0(param1, v0);
            } else {
                if (ov16_022559FC(param0, param1)) {
                    do {
                        do {
                            v7 = ov16_0223F4BC(param0) % v10;
                            v7 += v8;
                        } while ((v7 == v11) || (v7 == v12));

                        v3 = Party_GetPokemonBySlotIndex(v2, v7);
                    } while ((GetMonData(v3, 5, NULL) == 0) || (GetMonData(v3, 76, NULL) == 1) || (GetMonData(v3, 163, NULL) == 0));

                    param1->unk_21A0[param1->unk_6C] = v7;
                } else {
                    ov16_02248AF0(param1, v0);
                }
            }
        }
    } else {
        if (ov16_022559FC(param0, param1) == 0) {
            ov16_02248AF0(param1, v0);
        }
    }

    return 0;
}

static BOOL ov16_02244D60 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    u8 * v1, * v2;

    ov16_02248AF0(param1, 1);

    param1->unk_2D40[param1->unk_64].unk_70 |= 0x200000;
    param1->unk_2D40[param1->unk_64].unk_88.unk_20 = 0;
    param1->unk_2D40[param1->unk_64].unk_88.unk_00_0 = 0;
    param1->unk_2D40[param1->unk_64].unk_88.unk_1C = param1->unk_2D40[param1->unk_6C].unk_68;
    param1->unk_2D40[param1->unk_64].unk_88.unk_32 = param1->unk_2D40[param1->unk_6C].unk_7E_0;
    param1->unk_2D40[param1->unk_64].unk_88.unk_04_2 = 0;
    param1->unk_2D40[param1->unk_64].unk_88.unk_04_10 = 0;

    v1 = (u8 *)&param1->unk_2D40[param1->unk_64];
    v2 = (u8 *)&param1->unk_2D40[param1->unk_6C];

    for (v0 = 0; v0 < XtOffset(UnkStruct_ov16_02252060 *, unk_27) + 1; v0++) {
        v1[v0] = v2[v0];
    }

    param1->unk_2D40[param1->unk_64].unk_28_0 = 0;
    param1->unk_2D40[param1->unk_64].unk_28_1 = 0;
    param1->unk_2D40[param1->unk_64].unk_28_2 = 0;
    param1->unk_2D40[param1->unk_64].unk_28_3 = 0;
    param1->unk_2D40[param1->unk_64].unk_28_4 = 0;
    param1->unk_2D40[param1->unk_64].unk_28_5 = 0;
    param1->unk_2D40[param1->unk_64].unk_28_8 = 0;
    param1->unk_2D40[param1->unk_64].unk_28_9 = 0;
    param1->unk_2D40[param1->unk_64].unk_28_10 = 0;
    param1->unk_2D40[param1->unk_64].unk_88.unk_00_30 = param1->unk_150 & 1;
    param1->unk_2D40[param1->unk_64].unk_88.unk_10 = param1->unk_150 + 1;
    param1->unk_2D40[param1->unk_64].unk_28_6 = 0;
    param1->unk_2D40[param1->unk_64].unk_28_7 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param1->unk_354.unk_8A[param1->unk_2D40[param1->unk_64].unk_0C[v0]].unk_06 < 5) {
            param1->unk_2D40[param1->unk_64].unk_2C[v0] = param1->unk_354.unk_8A[param1->unk_2D40[param1->unk_64].unk_0C[v0]].unk_06;
        } else {
            param1->unk_2D40[param1->unk_64].unk_2C[v0] = 5;
        }
    }

    return 0;
}

static BOOL ov16_02244F54 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0223E208(param0, param1->unk_64) ^ 1;

    if (param1->unk_1C4[v1].unk_04_0 == 3) {
        param1->unk_2D4[param1->unk_64].unk_00_0 = 1;
        ov16_02248AF0(param1, v0);
    } else {
        param1->unk_1BC[v1] |= 0x4;
        param1->unk_1C4[v1].unk_04_0++;
    }

    return 0;
}

static BOOL ov16_02244FD8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_0224A984(param0, param1, v0);
    v3 = ov16_0223E208(param0, v2);

    if ((param1->unk_1C4[v3].unk_04_0) && (param1->unk_2D40[v2].unk_4C)) {
        param1->unk_215C = (5 - param1->unk_1C4[v3].unk_04_0) * 2;
        param1->unk_215C = ov16_022563F8(param1->unk_2D40[v2].unk_50 * -1, param1->unk_215C);
    } else {
        ov16_02248AF0(param1, v1);
    }

    return 0;
}

static BOOL ov16_0224505C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v3 = ov16_0223DF1C(param0);

    param1->unk_134 = v3;

    v2 = 0;

    for (v1 = 0; v1 < v3; v1++) {
        if ((param1->unk_2D40[v1].unk_80 & 0x20) || (param1->unk_2D40[v1].unk_4C == 0) || (ov16_02255AB4(param1, param1->unk_64, v1, 43) == 1)) {
            v2++;
        } else {
            param1->unk_2D40[v1].unk_80 |= 0x20;
            param1->unk_2D40[v1].unk_88.unk_00_13 = 3;
        }
    }

    if (v2 == v3) {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_0224510C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    u32 * v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248B10(param0, param1, v0);
    v1[0] = param1->unk_21EC[param1->unk_3104];

    return 0;
}

static BOOL ov16_02245144 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    u32 * v2;
    int v3;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248B10(param0, param1, v0);
    v3 = ov16_0223DF1C(param0);

    if (v2[0] < v3) {
        ov16_02248AF0(param1, v1);
    }

    return 0;
}

static BOOL ov16_02245188 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    param1->unk_138 = 0;
    param1->unk_215C = 0;

    v2 = ov16_02252060(param1, v1, 27, NULL);
    v3 = ov16_02252060(param1, v1, 28, NULL);

    if ((ov16_022555A4(param0, param1, 8, 0, 13) == 0) && (ov16_022555A4(param0, param1, 8, 0, 76) == 0)) {
        if (param1->unk_180 & 0xc) {
            if ((v2 != 5) && (v3 != 5) && (v2 != 8) && (v3 != 8) && (v2 != 4) && (v3 != 4) && (param1->unk_2D40[v1].unk_4C) && (ov16_02255A4C(param1, v1) != 8) && ((param1->unk_2D40[v1].unk_80 & (0x80 | 0x40000)) == 0)) {
                param1->unk_124 = 201;
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[v1].unk_50 * -1, 16);
            }
        }

        if (param1->unk_180 & 0x30) {
            if ((param1->unk_2D40[v1].unk_4C) && ((param1->unk_2D40[v1].unk_80 & (0x80 | 0x40000)) == 0)) {
                if ((ov16_02255A4C(param1, v1) == 87) || (ov16_02255A4C(param1, v1) == 94)) {
                    param1->unk_215C = ov16_022563F8(param1->unk_2D40[v1].unk_50 * -1, 8);
                }

                if (ov16_02255A4C(param1, v1) == 94) {
                    param1->unk_138 = 2;
                }
            }
        }

        if (param1->unk_180 & 0xc0) {
            if ((param1->unk_2D40[v1].unk_4C) && ((param1->unk_2D40[v1].unk_80 & (0x80 | 0x40000)) == 0)) {
                if (ov16_02255A4C(param1, v1) == 115) {
                    if (param1->unk_2D40[v1].unk_4C < param1->unk_2D40[v1].unk_50) {
                        param1->unk_215C = ov16_022563F8(param1->unk_2D40[v1].unk_50, 16);
                    }
                } else if ((v2 != 15) && (v3 != 15) && (ov16_02255A4C(param1, v1) != 81)) {
                    param1->unk_124 = 258;
                    param1->unk_215C = ov16_022563F8(param1->unk_2D40[v1].unk_50 * -1, 16);
                }
            }
        }

        if (param1->unk_180 & 0x3) {
            if ((param1->unk_2D40[v1].unk_4C) && (param1->unk_2D40[v1].unk_4C < param1->unk_2D40[v1].unk_50) && (ov16_02255A4C(param1, v1) == 44)) {
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[v1].unk_50, 16);
            }

            if ((param1->unk_2D40[v1].unk_4C) && (param1->unk_2D40[v1].unk_4C < param1->unk_2D40[v1].unk_50) && (ov16_02255A4C(param1, v1) == 87)) {
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[v1].unk_50, 8);
            }

            if ((param1->unk_2D40[v1].unk_4C) && (param1->unk_2D40[v1].unk_6C & 0xff) && (ov16_02255A4C(param1, v1) == 93)) {
                if (param1->unk_2D40[v1].unk_6C & 0x7) {
                    param1->unk_130 = 0;
                } else if (param1->unk_2D40[v1].unk_6C & 0xf88) {
                    param1->unk_130 = 1;
                } else if (param1->unk_2D40[v1].unk_6C & 0x10) {
                    param1->unk_130 = 2;
                } else if (param1->unk_2D40[v1].unk_6C & 0x40) {
                    param1->unk_130 = 3;
                } else {
                    param1->unk_130 = 4;
                }

                param1->unk_138 = 1;
            }
        }
    }

    return 0;
}

static BOOL ov16_0224544C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0, v1;

    ov16_02248AF0(param1, 1);

    param1->unk_2D4[param1->unk_64].unk_00_6 = param1->unk_2D40[param1->unk_64].unk_88.unk_00_15;

    if ((param1->unk_2D40[param1->unk_64].unk_70 & 0x1000) == 0) {
        ov16_02253EF0(param0, param1, param1->unk_64);
        param1->unk_2D40[param1->unk_64].unk_88.unk_00_15 = 5;
    }

    if (--param1->unk_2D40[param1->unk_64].unk_88.unk_00_15 == 0) {
        ov16_02253F20(param0, param1, param1->unk_64);
    }

    param1->unk_2154 = param1->unk_354.unk_8A[param1->unk_3044].unk_03;

    v1 = 5 - param1->unk_2D40[param1->unk_64].unk_88.unk_00_15;

    for (v0 = 1; v0 < v1; v0++) {
        param1->unk_2154 *= 2;
    }

    if (param1->unk_2D40[param1->unk_64].unk_70 & 0x40000000) {
        param1->unk_2154 *= 2;
    }

    return 0;
}

static BOOL ov16_02245568 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);

    if (param1->unk_2D40[param1->unk_64].unk_88.unk_00_18 < 5) {
        param1->unk_2D40[param1->unk_64].unk_88.unk_00_18++;
    }

    param1->unk_2154 = param1->unk_354.unk_8A[param1->unk_3044].unk_03;

    for (v0 = 1; v0 < param1->unk_2D40[param1->unk_64].unk_88.unk_00_18; v0++) {
        param1->unk_2154 *= 2;
    }

    return 0;
}

static BOOL ov16_022455F8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if ((param1->unk_2D40[param1->unk_118].unk_7E_0 == param1->unk_2D40[param1->unk_94].unk_7E_0) || (param1->unk_2D40[param1->unk_94].unk_70 & 0xf0000) || (param1->unk_2D40[param1->unk_118].unk_7E_0 == 2) || (param1->unk_2D40[param1->unk_94].unk_7E_0 == 2)) {
        ov16_02248AF0(param1, v0);
    } else {
        param1->unk_2D40[param1->unk_94].unk_70 |= sub_020787CC(param1->unk_118) << 16;
    }

    return 0;
}

static BOOL ov16_0224567C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0223E208(param0, param1->unk_64);

    if (param1->unk_1BC[v1] & 0x8) {
        ov16_02248AF0(param1, v0);
        param1->unk_216C |= 0x40;
    } else {
        param1->unk_1BC[v1] |= 0x8;
        param1->unk_1C4[v1].unk_00_17 = 5;
        param1->unk_1C4[v1].unk_00_15 = param1->unk_64;
        param1->unk_F4.unk_01 = 1;
        param1->unk_F4.unk_04[0] = param1->unk_64;
        param1->unk_F4.unk_02 = 198;
    }

    return 0;
}

static BOOL ov16_02245710 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0223F4BC(param0) & 0xff;

    if (v1 < (255 * 40 / 100)) {
        param1->unk_2154 = 40;
    } else if (v1 < (255 * 70 / 100)) {
        param1->unk_2154 = 80;
    } else if (v1 < (255 * 80 / 100)) {
        param1->unk_2154 = 120;
    } else {
        param1->unk_215C = ov16_022563F8(param1->unk_2D40[param1->unk_6C].unk_50, 4);
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_02245784 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);

    if (param1->unk_3120 == 0) {
        param1->unk_3120 = ov16_0223F4BC(param0) % 100;

        if (param1->unk_3120 < 5) {
            param1->unk_2154 = 10;
            param1->unk_3120 = 4;
        } else if (param1->unk_3120 < 15) {
            param1->unk_2154 = 30;
            param1->unk_3120 = 5;
        } else if (param1->unk_3120 < 35) {
            param1->unk_2154 = 50;
            param1->unk_3120 = 6;
        } else if (param1->unk_3120 < 65) {
            param1->unk_2154 = 70;
            param1->unk_3120 = 7;
        } else if (param1->unk_3120 < 85) {
            param1->unk_2154 = 90;
            param1->unk_3120 = 8;
        } else if (param1->unk_3120 < 95) {
            param1->unk_2154 = 110;
            param1->unk_3120 = 9;
        } else {
            param1->unk_2154 = 150;
            param1->unk_3120 = 10;
        }
    }

    param1->unk_130 = param1->unk_3120;

    return 0;
}

static BOOL ov16_0224582C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_0224A984(param0, param1, v0);

    if (ov16_02255B10(param0, param1, v3) == 0) {
        ov16_02248AF0(param1, v2);
    } else {
        if (v1 == 1) {
            param1->unk_13C[v3] |= 0x1;
        }
    }

    return 0;
}

static BOOL ov16_02245890 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    v0 = ov16_0223E208(param0, param1->unk_64);

    if (param1->unk_2D40[param1->unk_64].unk_70 & 0xe000) {
        param1->unk_2D40[param1->unk_64].unk_70 &= (0xe000 ^ 0xffffffff);
        param1->unk_118 = param1->unk_2D40[param1->unk_64].unk_88.unk_04_6;
        param1->unk_124 = param1->unk_2D40[param1->unk_64].unk_88.unk_22;
        ov16_02248B08(param1, 1, (0 + 116));
        return 0;
    }

    if (param1->unk_2D40[param1->unk_64].unk_80 & 0x4) {
        param1->unk_2D40[param1->unk_64].unk_80 &= (0x4 ^ 0xffffffff);
        param1->unk_2D40[param1->unk_64].unk_80 &= (0x3 ^ 0xffffffff);
        param1->unk_124 = 73;
        ov16_02248B08(param1, 1, (0 + 117));
        return 0;
    }

    if (param1->unk_1C4[v0].unk_04_0) {
        param1->unk_1BC[v0] &= (0x4 ^ 0xffffffff);
        param1->unk_1C4[v0].unk_04_0 = 0;
        param1->unk_124 = 191;
        ov16_02248B08(param1, 1, (0 + 117));
        return 0;
    }

    if (param1->unk_1C4[v0].unk_04_2) {
        param1->unk_1BC[v0] &= (0x400 ^ 0xffffffff);
        param1->unk_1C4[v0].unk_04_2 = 0;

        param1->unk_124 = 390;

        ov16_02248B08(param1, 1, (0 + 117));
        return 0;
    }

    if (param1->unk_1BC[v0] & 0x80) {
        param1->unk_1BC[v0] &= (0x80 ^ 0xffffffff);
        param1->unk_124 = 446;
        ov16_02248B08(param1, 1, (0 + 117));
        return 0;
    }

    ov16_02248AF0(param1, 1);

    return 0;
}

static BOOL ov16_022459D8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);

    if (((param1->unk_180 & (0x3 | 0xc | 0x30 | 0xc0 | 0x8000)) == 0) || (ov16_022555A4(param0, param1, 8, 0, 13)) || (ov16_022555A4(param0, param1, 8, 0, 76))) {
        param1->unk_215C = param1->unk_2D40[param1->unk_64].unk_50 / 2;
    } else if (param1->unk_180 & 0x30) {
        param1->unk_215C = ov16_022563F8(param1->unk_2D40[param1->unk_64].unk_50 * 20, 30);
    } else {
        param1->unk_215C = ov16_022563F8(param1->unk_2D40[param1->unk_64].unk_50, 4);
    }

    return 0;
}

static BOOL ov16_02245A7C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);

    param1->unk_2154 = ((param1->unk_2D40[param1->unk_64].unk_14_0 & 2) >> 1) | ((param1->unk_2D40[param1->unk_64].unk_14_5 & 2) >> 0) | ((param1->unk_2D40[param1->unk_64].unk_14_10 & 2) << 1) | ((param1->unk_2D40[param1->unk_64].unk_14_15 & 2) << 2) | ((param1->unk_2D40[param1->unk_64].unk_14_20 & 2) << 3) | ((param1->unk_2D40[param1->unk_64].unk_14_25 & 2) << 4);
    param1->unk_2160 = ((param1->unk_2D40[param1->unk_64].unk_14_0 & 1) >> 0) | ((param1->unk_2D40[param1->unk_64].unk_14_5 & 1) << 1) | ((param1->unk_2D40[param1->unk_64].unk_14_10 & 1) << 2) | ((param1->unk_2D40[param1->unk_64].unk_14_15 & 1) << 3) | ((param1->unk_2D40[param1->unk_64].unk_14_20 & 1) << 4) | ((param1->unk_2D40[param1->unk_64].unk_14_25 & 1) << 5);
    param1->unk_2154 = param1->unk_2154 * 40 / 63 + 30;
    param1->unk_2160 = (param1->unk_2160 * 15 / 63) + 1;

    if (param1->unk_2160 >= 9) {
        param1->unk_2160++;
    }

    return 0;
}

static BOOL ov16_02245B68 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);

    for (v0 = 0x0; v0 < 0x8; v0++) {
        param1->unk_2D40[param1->unk_64].unk_18[v0] = param1->unk_2D40[param1->unk_6C].unk_18[v0];
    }

    param1->unk_2D40[param1->unk_64].unk_70 |= (param1->unk_2D40[param1->unk_6C].unk_70 & 0x100000);

    return 0;
}

static BOOL ov16_02245BC8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if (param1->unk_184.unk_04[param1->unk_6C] == 0) {
        v1 = ov16_0223E208(param0, param1->unk_6C);
        param1->unk_1BC[v1] |= 0x10;
        param1->unk_184.unk_04[param1->unk_6C] = 3;
        param1->unk_184.unk_0C[param1->unk_6C] = param1->unk_3044;
        param1->unk_184.unk_14[param1->unk_6C] = param1->unk_64;
        v2 = ov16_0225A280(param0, param1, param1->unk_3044, param1->unk_1BC[v1], param1->unk_180, 0, 0, param1->unk_64, param1->unk_6C, 1) * -1;
        param1->unk_184.unk_24[param1->unk_6C] = ov16_0225AEB8(param0, param1, v2);

        if (param1->unk_1D4[param1->unk_64].unk_00_3) {
            param1->unk_184.unk_24[param1->unk_6C] = param1->unk_184.unk_24[param1->unk_6C] * 15 / 10;
        }
    } else {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_02245CB4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    int v6;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_02248AD0(param1);
    v4 = ov16_0224A984(param0, param1, v0);
    v5 = ov16_0224A984(param0, param1, v1);
    v6 = ov16_0224B3E8(param1, v2);

    ov16_0224B9F4(param0, param1, v4, v5, v6);

    if (param1->unk_216C & (1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576)) {
        ov16_02248AF0(param1, v3);
    }

    return 0;
}

static BOOL ov16_02245D34 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if (ov16_02255C00(param0, param1, param1->unk_64, NULL)) {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_02245D68 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    Pokemon * v5;

    ov16_02248AF0(param1, 1);

    v1 = ov16_0223DF60(param0, param1->unk_64);

    if (param1->unk_217D == 0) {
        param1->unk_217D = 2;
        param1->unk_2188 = (1 | 4 | 8 | 16 | 32 | 64 | 128);
        param1->unk_217F = 0;

        while (TRUE) {
            v5 = ov16_0223DFAC(param0, param1->unk_64, param1->unk_217F);

            if ((param1->unk_217F == param1->unk_219C[param1->unk_64]) || ((GetMonData(v5, 163, NULL) != 0) && (GetMonData(v5, 174, NULL) != 0) && (GetMonData(v5, 174, NULL) != 494) && (GetMonData(v5, 160, NULL) == 0))) {
                break;
            }

            param1->unk_217F++;
        }
    }

    v5 = ov16_0223DFAC(param0, param1->unk_64, param1->unk_217F);
    v2 = GetMonData(v5, 5, NULL);
    v3 = GetMonData(v5, 112, NULL);
    v4 = GetMonData(v5, 161, NULL);

    param1->unk_2144 = sub_020759CC(v2, v3, 1);
    param1->unk_2144 *= param1->unk_354.unk_8A[param1->unk_3044].unk_03;
    param1->unk_2144 *= ((v4 * 2 / 5) + 2);
    param1->unk_2144 /= sub_020759CC(param1->unk_2D40[param1->unk_6C].unk_00, param1->unk_2D40[param1->unk_6C].unk_26_0, 2);
    param1->unk_2144 /= 50;
    param1->unk_2144 += 2;
    param1->unk_2144 *= param1->unk_2150;

    if (param1->unk_1D4[param1->unk_64].unk_00_3) {
        param1->unk_2144 = param1->unk_2144 * 15 / 10;
    }

    param1->unk_2144 = ov16_0225AEB8(param0, param1, param1->unk_2144);
    param1->unk_2144 *= -1;
    param1->unk_F4.unk_02 = 481;
    param1->unk_F4.unk_01 = 2;
    param1->unk_F4.unk_04[0] = (param1->unk_64 | (param1->unk_217F << 8));
    param1->unk_217F++;
    param1->unk_217C = 2;

    if (param1->unk_217F < v1) {
        while (TRUE) {
            v5 = ov16_0223DFAC(param0, param1->unk_64, param1->unk_217F);

            if ((param1->unk_217F == param1->unk_219C[param1->unk_64]) || ((GetMonData(v5, 163, NULL) != 0) && (GetMonData(v5, 174, NULL) != 0) && (GetMonData(v5, 174, NULL) != 494) && (GetMonData(v5, 160, NULL) == 0))) {
                break;
            }

            param1->unk_217F++;

            if (param1->unk_217F >= v1) {
                param1->unk_217C = 1;
                break;
            }
        }
    } else {
        param1->unk_217C = 1;
    }

    return 0;
}

static BOOL ov16_02245FC4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);

    v0 = ov16_0223E208(param0, param1->unk_64);

    param1->unk_1C4[v0].unk_00_20 = 1;
    param1->unk_1C4[v0].unk_00_21 = param1->unk_64;

    return 0;
}

static BOOL ov16_02246004 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v2 = ov16_0223DF0C(param0);

    if (v2 & 0x2) {
        v1 = ov16_0224A984(param0, param1, 0x10);

        if (((param1->unk_3108 & sub_020787CC(v1)) == 0) && (param1->unk_21A8[v1][0] != 39) && (param1->unk_2D40[v1].unk_4C) && (param1->unk_1D4[param1->unk_64].unk_00_3 == 0) && (param1->unk_1D4[v1].unk_00_3 == 0)) {
            param1->unk_118 = v1;
            param1->unk_1D4[v1].unk_00_3 = 1;
        } else {
            ov16_02248AF0(param1, v0);
        }
    } else {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_022460A8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    u32 v2;
    int v3;
    int v4;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_0223DF0C(param0);
    v3 = ov16_0223E208(param0, param1->unk_64);
    v4 = ov16_0223E208(param0, param1->unk_6C);

    if ((ov16_0223E208(param0, param1->unk_64)) && ((v2 & (0x4 | 0x80)) == 0)) {
        ov16_02248AF0(param1, v0);
    } else if ((param1->unk_1C4[v3].unk_00_23 & sub_020787CC(param1->unk_219C[param1->unk_64])) || (param1->unk_1C4[v4].unk_00_23 & sub_020787CC(param1->unk_219C[param1->unk_6C]))) {
        ov16_02248AF0(param1, v0);
    } else if (((param1->unk_2D40[param1->unk_64].unk_78 == 0) && (param1->unk_2D40[param1->unk_6C].unk_78 == 0)) || (ov16_022559DC(param1, param1->unk_64) == 0) || (ov16_022559DC(param1, param1->unk_6C) == 0)) {
        ov16_02248AF0(param1, v0);
    } else {
        if (ov16_02255AB4(param1, param1->unk_64, param1->unk_6C, 60) == 1) {
            ov16_02248AF0(param1, v1);
        }
    }

    return 0;
}

static BOOL ov16_022461B0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    u32 v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if (param1->unk_184.unk_08[param1->unk_64]) {
        ov16_02248AF0(param1, v0);
    } else {
        param1->unk_184.unk_08[param1->unk_64] = 2;
        param1->unk_184.unk_34[param1->unk_64] = param1->unk_219C[param1->unk_64];
    }

    return 0;
}

static BOOL ov16_022461F4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    u16 v1[6 * 4];
    u16 v2;
    int v3, v4;
    int v5;
    int v6;
    Pokemon * v7;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v6 = 0;
    v5 = ov16_0223DF60(param0, param1->unk_64);

    for (v3 = 0; v3 < v5; v3++) {
        if (v3 != param1->unk_219C[param1->unk_64]) {
            v7 = ov16_0223DFAC(param0, param1->unk_64, v3);

            if ((GetMonData(v7, 174, NULL) != 0) && (GetMonData(v7, 174, NULL) != 494)) {
                for (v4 = 0; v4 < 4; v4++) {
                    v2 = GetMonData(v7, 54 + v4, NULL);

                    if ((ov16_02255918(v2) == 0) && (ov16_0225B02C(param0, param1, param1->unk_64, v2) == 1)) {
                        v1[v6] = v2;
                        v6++;
                    }
                }
            }
        }
    }

    if (v6) {
        param1->unk_124 = v1[ov16_0223F4BC(param0) % v6];
    } else {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_022462D8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    u32 v2;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);
    v2 = 0;

    for (v0 = 0; v0 < ov16_0223DF1C(param0); v0++) {
        if (param1->unk_2D40[v0].unk_4C) {
            v2++;
        }
    }

    if (param1->unk_3150 == 1) {
        ov16_02248AF0(param1, v1);
    } else {
        param1->unk_1D4[param1->unk_64].unk_00_4 = 1;
    }

    return 0;
}

static BOOL ov16_02246334 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_0223E208(param0, param1->unk_64);
    v1 = param1->unk_64;

    param1->unk_84 = v1;
    param1->unk_64 = param1->unk_6C;

    if ((param1->unk_1C4[v0].unk_00_20) && (param1->unk_2D40[param1->unk_1C4[v0].unk_00_21].unk_4C)) {
        param1->unk_6C = param1->unk_1C4[v0].unk_00_21;
    } else if ((param1->unk_354.unk_8A[param1->unk_3044].unk_08 == 0x4) || (param1->unk_354.unk_8A[param1->unk_3044].unk_08 == 0x8)) {
        param1->unk_6C = v1;
    } else {
        v0 = ov16_02253954(param0, param1, param1->unk_64, param1->unk_3044, 1, 0);

        if ((param1->unk_2D4[v0].unk_00_1) || (param1->unk_2D4[v0].unk_00_2)) {
            param1->unk_6C = v0;
        } else {
            param1->unk_6C = v1;
        }
    }

    param1->unk_2140 |= 0x8;

    return 0;
}

static BOOL ov16_022463E8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);

    if (((param1->unk_1D4[param1->unk_64].unk_04[param1->unk_6C]) && (param1->unk_1D4[param1->unk_64].unk_18 & sub_020787CC(param1->unk_6C))) || ((param1->unk_1D4[param1->unk_64].unk_1C[param1->unk_6C]) && (param1->unk_1D4[param1->unk_64].unk_30 & sub_020787CC(param1->unk_6C)))) {
        param1->unk_2158 = 20;
    } else {
        param1->unk_2158 = 10;
    }

    return 0;
}

static BOOL ov16_02246458 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0223E208(param0, param1->unk_6C);

    if ((param1->unk_1BC[v1] & 0x1) || (param1->unk_1BC[v1] & 0x2)) {
        param1->unk_1BC[v1] &= (0x1 ^ 0xffffffff);
        param1->unk_1BC[v1] &= (0x2 ^ 0xffffffff);
        param1->unk_1C4[v1].unk_00_2 = 0;
        param1->unk_1C4[v1].unk_00_7 = 0;
    } else {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_022464CC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if (param1->unk_2D40[param1->unk_6C].unk_80 & 0x1800) {
        ov16_02248AF0(param1, v0);
    } else {
        param1->unk_2D40[param1->unk_6C].unk_80 |= 0x800 << 1;
    }

    return 0;
}

static BOOL ov16_0224650C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0223E208(param0, param1->unk_6C);

    if ((param1->unk_2D40[param1->unk_6C].unk_78) && (ov16_02255AB4(param1, param1->unk_64, param1->unk_6C, 60) == 1)) {
        param1->unk_F4.unk_02 = 714;
        param1->unk_F4.unk_01 = 37;
        param1->unk_F4.unk_04[0] = ov16_02255560(param1, param1->unk_6C);
        param1->unk_F4.unk_04[1] = param1->unk_2D40[param1->unk_6C].unk_27;
        param1->unk_F4.unk_04[2] = param1->unk_3044;
    } else if (param1->unk_2D40[param1->unk_6C].unk_78) {
        param1->unk_F4.unk_02 = 552;
        param1->unk_F4.unk_01 = 33;
        param1->unk_F4.unk_04[0] = ov16_02255560(param1, param1->unk_64);
        param1->unk_F4.unk_04[1] = ov16_02255560(param1, param1->unk_6C);
        param1->unk_F4.unk_04[2] = param1->unk_2D40[param1->unk_6C].unk_78;
        param1->unk_2D40[param1->unk_6C].unk_78 = 0;
        param1->unk_1C4[v1].unk_00_23 |= sub_020787CC(param1->unk_219C[param1->unk_6C]);
    } else {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_02246630 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);

    if (param1->unk_2154 == 0) {
        param1->unk_2154 = param1->unk_354.unk_8A[param1->unk_3044].unk_03 * param1->unk_2D40[param1->unk_64].unk_4C / param1->unk_2D40[param1->unk_64].unk_50;

        if (param1->unk_2154 == 0) {
            param1->unk_2154 = 1;
        }
    }

    return 0;
}

static BOOL ov16_02246688 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    int v6;
    int v7;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v6 = ov16_0223E2A4(param0, param1->unk_64, 0);
    v7 = ov16_0223E2A4(param0, param1->unk_64, 2);

    param1->unk_2D40[v6].unk_80 |= 0x40000000;
    param1->unk_2D40[v7].unk_80 |= 0x40000000;

    if (param1->unk_2D40[param1->unk_64].unk_80 & 0x2000) {
        ov16_02248AF0(param1, v0);
    } else {
        v1 = ov16_0223E208(param0, param1->unk_64);
        v5 = ov16_0223DF1C(param0);

        for (v4 = 0; v4 < v5; v4++) {
            if (v1 != ov16_0223E208(param0, v4)) {
                for (v2 = 0; v2 < 4; v2++) {
                    for (v3 = 0; v3 < 4; v3++) {
                        if ((param1->unk_2D40[param1->unk_64].unk_0C[v2] == param1->unk_2D40[v4].unk_0C[v3]) && (param1->unk_2D40[param1->unk_64].unk_0C[v2]) && (param1->unk_2D40[v4].unk_0C[v3])) {
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
            ov16_02248AF0(param1, v0);
        } else {
            param1->unk_2D40[param1->unk_64].unk_80 |= 0x2000;
        }
    }

    return 0;
}

static BOOL ov16_022467A0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0223E208(param0, param1->unk_6C);

    if ((param1->unk_2D40[param1->unk_74].unk_80 & 0x4000) && (ov16_0223E208(param0, param1->unk_64) != ov16_0223E208(param0, param1->unk_74)) && (param1->unk_2D40[param1->unk_64].unk_4C) && (param1->unk_3040 != 165)) {
        v2 = param1->unk_30BC[param1->unk_64];
        param1->unk_2D40[param1->unk_64].unk_2C[v2] = 0;
        param1->unk_124 = param1->unk_2D40[param1->unk_64].unk_0C[v2];

        ov16_02253EC0(param0, param1, param1->unk_64);
    } else {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_02246848 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    u32 v2;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);
    v2 = 0;

    for (v0 = 0; v0 < ov16_0223DF1C(param0); v0++) {
        if (param1->unk_2D40[v0].unk_4C) {
            v2++;
        }
    }

    if (param1->unk_3150 == 1) {
        ov16_02248AF0(param1, v1);
    } else {
        param1->unk_1D4[param1->unk_64].unk_00_5 = 1;
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

static BOOL ov16_022468A4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = 0;
    v1 = param1->unk_2D40[param1->unk_6C].unk_20;

    while (Unk_ov16_0226E5F0[v0][0] != 0xffff) {
        if (Unk_ov16_0226E5F0[v0][0] >= v1) {
            break;
        }

        v0++;
    }

    if (Unk_ov16_0226E5F0[v0][0] != 0xffff) {
        param1->unk_2154 = Unk_ov16_0226E5F0[v0][1];
    } else {
        param1->unk_2154 = 120;
    }

    return 0;
}

static BOOL ov16_02246904 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);

    if ((ov16_022555A4(param0, param1, 8, 0, 13) == 0) && (ov16_022555A4(param0, param1, 8, 0, 76) == 0)) {
        if (param1->unk_180 & (0x3 | 0xc | 0x30 | 0xc0 | 0x8000)) {
            param1->unk_2154 = param1->unk_354.unk_8A[param1->unk_3044].unk_03 * 2;

            if (param1->unk_180 & 0x3) {
                param1->unk_2160 = 11;
            }

            if (param1->unk_180 & 0xc) {
                param1->unk_2160 = 5;
            }

            if (param1->unk_180 & 0x30) {
                param1->unk_2160 = 10;
            }

            if (param1->unk_180 & 0xc0) {
                param1->unk_2160 = 15;
            }
        } else {
            param1->unk_2154 = param1->unk_354.unk_8A[param1->unk_3044].unk_03;
        }
    }

    return 0;
}

static BOOL ov16_022469C4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v2 = ov16_0223DF1C(param0);

    for (v1 = 0; v1 < v2; v1++) {
        if ((param1->unk_21A8[v1][0] != 39) && (param1->unk_2D40[v1].unk_4C) && ((param1->unk_2D40[v1].unk_6C & (0x7 | 0x20)) == 0) && (ov16_02255EC0(param1, v1) == 0) && (ov16_0223E208(param0, v1) != ov16_0223E208(param0, param1->unk_78))) {
            if ((param1->unk_2D40[v1].unk_88.unk_24) && (param1->unk_2D40[v1].unk_88.unk_24 == param1->unk_2D40[v1].unk_0C[param1->unk_2D40[v1].unk_88.unk_26])) {
                v3 = param1->unk_2D40[v1].unk_88.unk_24;
            } else {
                v3 = ov16_02255570(param1, v1);
            }

            if (v3) {
                v4 = ov16_02254EE0(&param1->unk_2D40[v1], v3);

                if ((param1->unk_354.unk_8A[v3].unk_00 == 128) && (param1->unk_2D40[v1].unk_2C[v4])) {
                    param1->unk_2D40[v1].unk_2C[v4]--;

                    if ((ov16_02255A4C(param1, param1->unk_78) == 46) && (param1->unk_2D40[v1].unk_2C[v4])) {
                        param1->unk_2D40[v1].unk_2C[v4]--;
                    }

                    ov16_02255F94(param0, param1);
                    param1->unk_64 = v1;
                    param1->unk_6C = param1->unk_78;
                    param1->unk_2158 = 20;
                    param1->unk_3044 = v3;
                    param1->unk_307C[v1] = v3;
                    param1->unk_21A8[v1][0] = 39;
                    ov16_02253EC0(param0, param1, v1);
                    break;
                }
            }
        }
    }

    if (v1 == v2) {
        ov16_02248AF0(param1, v0);
    } else {
        {
            int v5;
            int v6;

            v5 = ov16_02258AB8(param1, param1->unk_64);
            v6 = ov16_02258ACC(param1, param1->unk_64, 0);

            if ((v5 == 55) || (v5 == 115) || (v5 == 125)) {
                param1->unk_2D40[param1->unk_64].unk_88.unk_30 = v3;
            }
        }
    }

    return 0;
}

static BOOL ov16_02246B68 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);

    param1->unk_2144 = ov16_02254FA8(param0, param1, param1->unk_3044, param1->unk_2160, param1->unk_64, param1->unk_6C, param1->unk_2144, &param1->unk_216C);

    return 0;
}

static BOOL ov16_02246BB0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5 = 0;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_02248AD0(param1);
    v4 = ov16_0224A984(param0, param1, v0);

    switch (v1) {
    case 0:
        if (param1->unk_1D4[v4].unk_00_0 == v2) {
            v5 = 1;
        }
        break;
    case 1:
        if (param1->unk_1D4[v4].unk_00_1 == v2) {
            v5 = 1;
        }
        break;
    case 2:
        if (param1->unk_1D4[v4].unk_00_2 == v2) {
            v5 = 1;
        }
        break;
    case 3:
        if (param1->unk_1D4[v4].unk_00_3 == v2) {
            v5 = 1;
        }
        break;
    case 4:
        if (param1->unk_1D4[v4].unk_00_4 == v2) {
            v5 = 1;
        }
        break;
    case 5:
        if (param1->unk_1D4[v4].unk_00_5 == v2) {
            v5 = 1;
        }
        break;
    case 6:
        if (param1->unk_1D4[v4].unk_00_6 == v2) {
            v5 = 1;
        }
        break;
    }

    if (v5) {
        ov16_02248AF0(param1, v3);
    }

    return 0;
}

static BOOL ov16_02246CB4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_0224A984(param0, param1, v0);

    switch (v1) {
    case 0:
        param1->unk_1D4[v3].unk_00_0 = v2;
        break;
    case 1:
        param1->unk_1D4[v3].unk_00_1 = v2;
        break;
    case 2:
        param1->unk_1D4[v3].unk_00_2 = v2;
        break;
    case 3:
        param1->unk_1D4[v3].unk_00_3 = v2;
        break;
    case 4:
        param1->unk_1D4[v3].unk_00_4 = v2;
        break;
    case 5:
        param1->unk_1D4[v3].unk_00_5 = v2;
        break;
    case 6:
        param1->unk_1D4[v3].unk_00_6 = v2;
        break;
    }

    return 0;
}

static BOOL ov16_02246DAC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);

    param1->unk_2154 = 1 + 25 * param1->unk_21F0[param1->unk_6C] / param1->unk_21F0[param1->unk_64];

    if (param1->unk_2154 > 150) {
        param1->unk_2154 = 150;
    }

    return 0;
}

static BOOL ov16_02246DF0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0223E208(param0, param1->unk_64);
    v2 = ov16_0223E208(param0, param1->unk_1D4[param1->unk_64].unk_38);

    if ((param1->unk_1D4[param1->unk_64].unk_34) && (v1 != v2) && (param1->unk_2D40[param1->unk_1D4[param1->unk_64].unk_38].unk_4C)) {
        param1->unk_2144 = param1->unk_1D4[param1->unk_64].unk_34 * 15 / 10;

        if ((param1->unk_1C4[v2].unk_00_20) && (param1->unk_2D40[param1->unk_1C4[v2].unk_00_21].unk_4C)) {
            param1->unk_6C = param1->unk_1C4[v2].unk_00_21;
        } else {
            param1->unk_6C = param1->unk_1D4[param1->unk_64].unk_38;
        }

        if (param1->unk_2D40[param1->unk_6C].unk_4C == 0) {
            param1->unk_6C = ov16_02257028(param0, param1, param1->unk_64);

            if (param1->unk_2D40[param1->unk_6C].unk_4C == 0) {
                param1->unk_0C = 38;
                ov16_02248B00(param1, 1, (0 + 281));
            }
        }

        ov16_0225B408(param1, param1->unk_64, param1->unk_6C);
    } else {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_02246EE4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);

    if (param1->unk_21A8[param1->unk_6C][0] == 39) {
        param1->unk_2154 = param1->unk_354.unk_8A[param1->unk_3044].unk_03 * 2;
    } else {
        param1->unk_2154 = param1->unk_354.unk_8A[param1->unk_3044].unk_03;
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

static BOOL ov16_02246F2C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    u8 v0;

    ov16_02248AF0(param1, 1);

    v0 = param1->unk_2D40[param1->unk_64].unk_2C[param1->unk_30BC[param1->unk_64]];

    if (v0 > 4) {
        v0 = 4;
    }

    param1->unk_2154 = Unk_ov16_0226E574[v0];

    return 0;
}

static BOOL ov16_02246F70 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    u8 v0;

    ov16_02248AF0(param1, 1);

    param1->unk_2154 = 1 + (120 * param1->unk_2D40[param1->unk_6C].unk_4C) / param1->unk_2D40[param1->unk_6C].unk_50;

    return 0;
}

static BOOL ov16_02246FA8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    u16 v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if ((param1->unk_2D40[param1->unk_6C].unk_88.unk_24) && (param1->unk_2D40[param1->unk_6C].unk_88.unk_24 == param1->unk_2D40[param1->unk_6C].unk_0C[param1->unk_2D40[param1->unk_6C].unk_88.unk_26])) {
        v1 = param1->unk_2D40[param1->unk_6C].unk_88.unk_24;
    } else {
        v1 = ov16_02255570(param1, param1->unk_6C);
    }

    if ((param1->unk_21A8[param1->unk_6C][0] != 39) && (param1->unk_1D4[param1->unk_6C].unk_00_0 == 0) && (ov16_0225B0C0(param1, v1) == 1) && (param1->unk_354.unk_8A[v1].unk_03)) {
        param1->unk_2D40[param1->unk_64].unk_88.unk_04_30 = 1;
        param1->unk_2D40[param1->unk_64].unk_88.unk_14 = param1->unk_174;
        param1->unk_124 = v1;
    } else {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_02247064 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if ((ov16_02255918(param1->unk_3048) == 0) && (param1->unk_3048) && (ov16_0225B02C(param0, param1, param1->unk_64, param1->unk_3048) == 1)) {
        param1->unk_124 = param1->unk_3048;
    } else {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_022470C0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v1 = 0;

    for (v0 = 0x0; v0 < 0x8; v0++) {
        if (param1->unk_2D40[param1->unk_6C].unk_18[v0] > 6) {
            v1 += (param1->unk_2D40[param1->unk_6C].unk_18[v0] - 6);
        }
    }

    param1->unk_2154 = 60 + 20 * v1;

    if (param1->unk_2154 > 200) {
        param1->unk_2154 = 200;
    }

    return 0;
}

static BOOL ov16_02247118 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if ((param1->unk_2D40[param1->unk_6C].unk_88.unk_24) && (param1->unk_2D40[param1->unk_6C].unk_88.unk_24 == param1->unk_2D40[param1->unk_6C].unk_0C[param1->unk_2D40[param1->unk_6C].unk_88.unk_26])) {
        v1 = param1->unk_2D40[param1->unk_6C].unk_88.unk_24;
    } else {
        v1 = ov16_02255570(param1, param1->unk_6C);
    }

    if ((param1->unk_21A8[param1->unk_6C][0] == 39) || ((param1->unk_354.unk_8A[v1].unk_03 == 0) && (param1->unk_1D4[param1->unk_6C].unk_00_0 == 0))) {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_02247194 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    int v6;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_02248AD0(param1);
    v4 = ov16_0224A984(param0, param1, v0);
    v5 = ov16_0223E208(param0, v4);

    switch (v1) {
    case 0:
    case 1:
        switch (v2) {
        case 0:
            v6 = param1->unk_1C4[v5].unk_00_2;
            break;
        case 1:
            v6 = param1->unk_1C4[v5].unk_00_7;
            break;
        case 2:
            v6 = param1->unk_1C4[v5].unk_00_12;
            break;
        case 3:
            v6 = param1->unk_1C4[v5].unk_00_17;
            break;
        case 4:
            v6 = param1->unk_1C4[v5].unk_04_0;
            break;
        case 5:
            v6 = param1->unk_1C4[v5].unk_04_2;
            break;
        }
        break;
    case 2:
        switch (v2) {
        case 0:
            param1->unk_1C4[v5].unk_00_2 = 0;
            param1->unk_1BC[v5] &= (0x1 ^ 0xffffffff);
            break;
        case 1:
            param1->unk_1C4[v5].unk_00_7 = 0;
            param1->unk_1BC[v5] &= (0x2 ^ 0xffffffff);
            break;
        case 2:
            param1->unk_1C4[v5].unk_00_12 = 0;
            param1->unk_1BC[v5] &= (0x40 ^ 0xffffffff);
            break;
        case 3:
            param1->unk_1C4[v5].unk_00_17 = 0;
            param1->unk_1BC[v5] &= (0x8 ^ 0xffffffff);
            break;
        case 4:
            param1->unk_1C4[v5].unk_04_0 = 0;
            param1->unk_1BC[v5] &= (0x4 ^ 0xffffffff);
            break;
        case 5:
            param1->unk_1C4[v5].unk_04_2 = 0;
            param1->unk_1BC[v5] &= (0x400 ^ 0xffffffff);
            break;
        }
        break;
    }

    if ((v1 == 0) && (v6 == 0)) {
        ov16_02248AF0(param1, v3);
    }

    if ((v1 == 1) && (v6)) {
        ov16_02248AF0(param1, v3);
    }

    return 0;
}

static BOOL ov16_02247378 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if (param1->unk_1D4[param1->unk_6C].unk_00_2 == 0) {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_022473A8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if ((param1->unk_2D40[param1->unk_6C].unk_6C) || (param1->unk_2D40[param1->unk_6C].unk_70 & 0x1000000) || (param1->unk_2D40[param1->unk_64].unk_6C == 0)) {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_022473F4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02256128(param0, param1, param1->unk_64);

    if ((param1->unk_2D40[param1->unk_64].unk_88.unk_04_10 < (v1 - 1)) || (v1 < 2)) {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_02247440 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0223E208(param0, param1->unk_64) ^ 1;

    if (param1->unk_1C4[v1].unk_04_2 == 2) {
        param1->unk_2D4[param1->unk_64].unk_00_0 = 1;
        ov16_02248AF0(param1, v0);
    } else {
        param1->unk_1BC[v1] |= 0x400;
        param1->unk_1C4[v1].unk_04_2++;
    }

    return 0;
}

static BOOL ov16_022474C4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_0224A984(param0, param1, v0);
    v3 = ov16_0223E208(param0, v2);

    if (param1->unk_1C4[v3].unk_04_2) {
        param1->unk_134 = param1->unk_1C4[v3].unk_04_2;
        param1->unk_88 = 6;
        param1->unk_94 = v2;

        if ((ov16_02252060(param1, param1->unk_78, 27, NULL) == 3) || (ov16_02252060(param1, param1->unk_78, 28, NULL) == 3)) {
            param1->unk_1BC[v3] &= (0x400 ^ 0xffffffff);
            param1->unk_1C4[v3].unk_04_2 = 0;
            param1->unk_134 = 0;
        }
    } else {
        ov16_02248AF0(param1, v1);
    }

    return 0;
}

static BOOL ov16_02247570 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_02248AD0(param1);

    if (v1 == 0x0) {
        {
            int v5;
            int v6;

            v6 = ov16_0223DF1C(param0);

            for (v5 = 0; v5 < v6; v5++) {
                v4 = param1->unk_21EC[v5];

                if (v0 == 0) {
                    if ((ov16_02255AB4(param1, param1->unk_64, v4, v2) == 1) && (param1->unk_2D40[v4].unk_4C)) {
                        ov16_02248AF0(param1, v3);
                        param1->unk_80 = v4;
                        break;
                    }
                } else {
                    if ((ov16_02255AB4(param1, param1->unk_64, v4, v2) == 0) || (param1->unk_2D40[v4].unk_4C == 0)) {
                        ov16_02248AF0(param1, v3);
                        param1->unk_80 = v4;
                        break;
                    }
                }
            }
        }
    } else {
        v4 = ov16_0224A984(param0, param1, v1);

        if (v0 == 0) {
            if ((ov16_02255AB4(param1, param1->unk_64, v4, v2) == 1) && (param1->unk_2D40[v4].unk_4C)) {
                ov16_02248AF0(param1, v3);
                param1->unk_80 = v4;
            }
        } else {
            if ((ov16_02255AB4(param1, param1->unk_64, v4, v2) == 0) || (param1->unk_2D40[v4].unk_4C == 0)) {
                ov16_02248AF0(param1, v3);
                param1->unk_80 = v4;
            }
        }
    }

    return 0;
}

static BOOL ov16_02247698 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_0224A984(param0, param1, v0);
    v4 = ov16_0224A984(param0, param1, v1);

    if (ov16_0223E208(param0, v3) == ov16_0223E208(param0, v4)) {
        ov16_02248AF0(param1, v2);
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

static BOOL ov16_022476F8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1, v2, v3;
    u16 v4;
    u16 v5;
    u8 v6;
    u8 v7;
    Pokemon * v8;

    ov16_02248AF0(param1, 1);

    for (v1 = 0; v1 < ov16_0223DF60(param0, 0); v1++) {
        v8 = ov16_0223DFAC(param0, 0, v1);
        v4 = GetMonData(v8, 174, NULL);
        v5 = GetMonData(v8, 6, NULL);
        v6 = GetMonData(v8, 10, NULL);

        if ((v6 == 53) && (v4 != 0) && (v4 != 494) && (v5 == 0) && ((ov16_0223F4BC(param0) % 10) == 0)) {
            v0 = ov16_0223F4BC(param0) % 100;
            v7 = (GetMonData(v8, 161, NULL) - 1) / 10;

            if (v7 >= 10) {
                v7 = 9;
            }

            for (v2 = 0; v2 < 9; v2++) {
                if (Unk_ov16_0226EAA8[v2] > v0) {
                    sub_02074B30(v8, 6, (u8 *)&Unk_ov16_0226E66C[v7 + v2]);
                    break;
                } else if ((v0 >= 98) && (v0 <= 99)) {
                    sub_02074B30(v8, 6, (u8 *)&Unk_ov16_0226E590[v7 + (99 - v0)]);
                    break;
                }
            }
        }

        if ((v6 == 118) && (v4 != 0) && (v4 != 494) && (v5 == 0)) {
            v2 = 0;
            v3 = 10;
            v7 = GetMonData(v8, 161, NULL);

            while (v7 > v3) {
                v2++;
                v3 += 10;
            }

            GF_ASSERT(v2 < 10);

            if (ov16_0223F4BC(param0) % 100 < Unk_ov16_0226EAB4[v2]) {
                v2 = 94;
                sub_02074B30(v8, 6, (u8 *)&v2);
            }
        }
    }

    return 0;
}

static BOOL ov16_0224787C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);

    param1->unk_2D4[param1->unk_64].unk_00_4 = 1;

    return 0;
}

static BOOL ov16_022478A4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v0 = ov16_0224A984(param0, param1, v1);

    if (ov16_022588A4(param1, v0) == 1) {
        ov16_02248AF0(param1, v2);
    }

    return 0;
}

static BOOL ov16_022478E4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    u16 v4;
    int v5;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v5 = ov16_02248AD0(param1);
    v3 = ov16_02248AD0(param1);
    v0 = ov16_0224A984(param0, param1, v2);

    if (v1 == 0) {
        if (ov16_02258AB8(param1, v0) == v5) {
            ov16_02248AF0(param1, v3);
        }
    } else {
        if (ov16_02258AB8(param1, v0) != v5) {
            ov16_02248AF0(param1, v3);
        }
    }

    return 0;
}

static BOOL ov16_02247950 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int * v3;
    u16 v4;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_02248B10(param0, param1, v2);
    v0 = ov16_0224A984(param0, param1, v1);
    v4 = ov16_02258874(param1, v0);

    v3[0] = ov16_0225B0FC(param1, v4, 1);

    return 0;
}

static BOOL ov16_0224799C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int * v3;
    u16 v4;

    ov16_02248AF0(param1, 1);

    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_02248B10(param0, param1, v2);
    v0 = ov16_0224A984(param0, param1, v1);
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

static BOOL ov16_022479E8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if (ov16_02255A4C(param1, param1->unk_64) == 121) {
        ov16_02248AF0(param1, v0);
        return 0;
    }

    v1 = ov16_0223E22C(param0);

    if (v1 > 12) {
        v1 = 12;
    }

    v2 = Unk_ov16_0226EAC0[v1];

    if ((ov16_02252060(param1, param1->unk_64, 27, NULL) != v2) && (ov16_02252060(param1, param1->unk_64, 28, NULL) != v2)) {
        param1->unk_2D40[param1->unk_64].unk_24 = v2;
        param1->unk_2D40[param1->unk_64].unk_25 = v2;
        param1->unk_130 = v2;
    } else {
        ov16_02248AF0(param1, v0);
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

static BOOL ov16_02247A80 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);
    v0 = ov16_0223E22C(param0);

    if (v0 > 12) {
        v0 = 12;
    }

    param1->unk_124 = Unk_ov16_0226E652[v0];

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

static BOOL ov16_02247AB0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);

    v0 = ov16_0223E22C(param0);

    if (v0 > 12) {
        v0 = 12;
    }

    param1->unk_2174 = Unk_ov16_0226E690[v0];

    return 0;
}

static BOOL ov16_02247AE0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02258B18(param1, param1->unk_64);

    if (v1) {
        param1->unk_2154 = v1;
        param1->unk_2160 = ov16_02258B2C(param1, param1->unk_64);
    } else {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_02247B28 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);

    if ((param1->unk_2D40[param1->unk_6C].unk_78) && (ov16_02255AB4(param1, param1->unk_64, param1->unk_6C, 60) == 1)) {
        ov16_02248AF0(param1, v0);
    } else if (((param1->unk_2D40[param1->unk_6C].unk_78) && (param1->unk_2D40[param1->unk_6C].unk_88.unk_04_28)) || (ov16_02258CB4(param0, param1, param1->unk_6C) != 1)) {
        ov16_02248AF0(param1, v1);
    }

    return 0;
}

static BOOL ov16_02247BA4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if (ov16_02259204(param0, param1, param1->unk_64) != 1) {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_02247BD4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);
    v0 = ov16_02248AD0(param1);
    ov16_02265B2C(param0, param1, 0, NULL, v0, NULL, NULL);

    return 0;
}

static BOOL ov16_02247C04 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    u8 v0;
    int v1;
    int v2;

    v0 = ov16_02259AB4(param1, 0);

    if (v0) {
        ov16_02248AF0(param1, 1);

        v1 = ov16_02248AD0(param1);
        v2 = ov16_02248AD0(param1);

        if (v0 == 0xff) {
            ov16_02248AF0(param1, v2);
        } else {
            ov16_02248AF0(param1, v1);
        }

        ov16_0223F500(param0, 0, v0);
    }

    param1->unk_3154_0 = 1;

    return 0;
}

static BOOL ov16_02247C64 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1 = ov16_0223DF1C(param0);

    ov16_02248AF0(param1, 1);
    ov16_02265A8C(param0, param1, 0, 0, 0, 6);

    param1->unk_78 = 0;

    return 0;
}

static BOOL ov16_02247C94 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    u8 v0;
    int v1;

    v0 = ov16_02259AB4(param1, 0);

    if (v0) {
        ov16_02248AF0(param1, 1);

        v1 = ov16_02248AD0(param1);

        if (v0 == 0xff) {
            ov16_02248AF0(param1, v1);
        } else {
            param1->unk_21A0[0] = v0 - 1;
        }
    }

    param1->unk_3154_0 = 1;

    return 0;
}

static BOOL ov16_02247CE0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);

    if (ov16_0223DF0C(param0) & 0x4) {
        ov16_02266A38(param0);
    }

    return 0;
}

static BOOL ov16_02247D04 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_0224A984(param0, param1, v0);
    v3 = ov16_0223E208(param0, v2);
    v4 = ov16_02252060(param1, v2, 27, NULL);
    v5 = ov16_02252060(param1, v2, 28, NULL);

    if ((param1->unk_1BC[v3] & 0x80) && (param1->unk_2D40[v2].unk_4C)) {
        switch (ov16_022558CC(5, v4, v5)) {
        case 160:
            param1->unk_215C = 2;
            break;
        case 80:
            param1->unk_215C = 4;
            break;
        case 40:
            param1->unk_215C = 8;
            break;
        case 20:
            param1->unk_215C = 16;
            break;
        case 10:
            param1->unk_215C = 32;
            break;
        case 0:
            ov16_02248AF0(param1, v1);
            return 0;
        default:
            GF_ASSERT(0);
            break;
        }

        param1->unk_215C = ov16_022563F8(param1->unk_2D40[v2].unk_50 * -1, param1->unk_215C);
    } else {
        ov16_02248AF0(param1, v1);
    }

    return 0;
}

static BOOL ov16_02247E10 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    u16 v1;

    ov16_02248AF0(param1, 1);
    v0 = ov16_02248AD0(param1);

    if (ov16_02255A4C(param1, param1->unk_64) == 32) {
        v1 = param1->unk_354.unk_8A[param1->unk_3044].unk_07 * 2;
    } else {
        v1 = param1->unk_354.unk_8A[param1->unk_3044].unk_07;
    }

    GF_ASSERT(v1 != 0);

    if (((ov16_0223F4BC(param0) % 100) < v1) && (param1->unk_2D40[param1->unk_94].unk_4C)) {
        return 0;
    }

    ov16_02248AF0(param1, v0);

    return 0;
}

static BOOL ov16_02247E98 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    u16 v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    {
        int v2;

        if ((param1->unk_2D40[param1->unk_64].unk_00 == 441) && (param1->unk_2D40[param1->unk_6C].unk_4C) && ((param1->unk_2D40[param1->unk_64].unk_70 & 0x200000) == 0)) {
            if ((ov16_0223EBEC(param0) & 0x10) == 0) {
                v2 = sub_02006494(ov16_0223EE30(param0, param1->unk_64));
            } else {
                v2 = ov16_0223F810(param0, param1->unk_64);
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

            if ((ov16_0223F4BC(param0) % 100) > v1) {
                ov16_02248AF0(param1, v0);
            }
        } else {
            ov16_02248AF0(param1, v0);
        }
    }

    return 0;
}

static BOOL ov16_02247F44 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    param1->unk_134 = MoveTable_GetAttribute(&param1->unk_354.unk_8A[param1->unk_3044], v0);

    return 0;
}

static BOOL ov16_02247F7C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_0224A984(param0, param1, v0);

    ov16_022664F8(param0, v3, v1, v2);

    return 0;
}

static BOOL ov16_02247FBC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    ov16_0226651C(param0, v1);

    return 0;
}

static BOOL ov16_02247FE8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);
    ov16_022665AC(param0, 0);

    return 0;
}

static BOOL ov16_02248000 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    ov16_0223E30C(param0, v1, param1->unk_219C[v1], NULL, param1->unk_128);

    return 0;
}

static BOOL ov16_02248040 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    if (ov16_02255DE8(param0, param1, v1)) {
        ov16_02248AF0(param1, v2);
    }

    return 0;
}

static BOOL ov16_02248084 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    ov16_022665E4(param0, v1);

    return 0;
}

static BOOL ov16_022480B0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    ov16_0226660C(param0, v1);

    return 0;
}

static BOOL ov16_022480DC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    ov16_02266634(param0, v1);

    return 0;
}

static BOOL ov16_02248108 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    ov16_0226665C(param0, v1);

    return 0;
}

static BOOL ov16_02248134 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);
    ov16_02266684(param0);

    return 0;
}

static BOOL ov16_0224814C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);
    ov16_022666A0(param0);

    return 0;
}

static BOOL ov16_02248164 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_0224A984(param0, param1, v0);

    ov16_022666BC(param0, v3, v1, v2);

    return 0;
}

static BOOL ov16_022481A4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    ov16_0226673C(param0, param1, v1);

    return 0;
}

static BOOL ov16_022481D0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if (ov16_0225708C(param0, param1, &param1->unk_138) == 0) {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_02248204 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    UnkStruct_ov16_0225BFFC * v2;
    int v3 = ov16_0223DF1C(param0);

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    switch (v0) {
    case 0x3:
        for (v1 = 0; v1 < v3; v1++) {
            v2 = ov16_0223DF14(param0, v1);

            if ((v2->unk_191 & 0x1) == 0) {
                ov16_022667E8(param0, v1);
            }
        }
        break;
    case 0x4:
        for (v1 = 0; v1 < v3; v1++) {
            v2 = ov16_0223DF14(param0, v1);

            if (v2->unk_191 & 0x1) {
                ov16_022667E8(param0, v1);
            }
        }
        break;
    default:
        v1 = ov16_0224A984(param0, param1, v0);
        ov16_022667E8(param0, v1);
        break;
    }

    return 0;
}

static BOOL ov16_02248294 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    UnkStruct_ov16_0225BFFC * v2;
    int v3 = ov16_0223DF1C(param0);

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    switch (v0) {
    case 0x3:
        for (v1 = 0; v1 < v3; v1++) {
            v2 = ov16_0223DF14(param0, v1);

            if ((v2->unk_191 & 0x1) == 0) {
                ov16_02266804(param0, v1);
            }
        }
        break;
    case 0x4:
        for (v1 = 0; v1 < v3; v1++) {
            v2 = ov16_0223DF14(param0, v1);

            if (v2->unk_191 & 0x1) {
                ov16_02266804(param0, v1);
            }
        }
        break;
    default:
        v1 = ov16_0224A984(param0, param1, v0);
        ov16_02266804(param0, v1);
        break;
    }

    return 0;
}

static BOOL ov16_02248324 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4 = 0;
    u32 v5;
    Pokemon * v6;
    UnkStruct_ov16_0225BFFC * v7;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v5 = ov16_0223DF0C(param0);
    v2 = ov16_0224A984(param0, param1, v0);

    if ((v5 & 0x8) || ((v5 & 0x10) && (ov16_0223E208(param0, v2)))) {
        {
            Party * v8;
            Party * v9;

            v8 = ov16_0223DF20(param0, v2);
            v9 = ov16_0223DF20(param0, ov16_0223E258(param0, v2));
            v7 = ov16_0223DF14(param0, v2);

            for (v3 = 0; v3 < Party_GetCurrentCount(v8); v3++) {
                v6 = Party_GetPokemonBySlotIndex(v8, v3);

                if ((GetMonData(v6, 174, NULL) != 0) && (GetMonData(v6, 174, NULL) != 494)) {
                    v4 += GetMonData(v6, 163, NULL);
                }
            }

            if (((v5 == ((0x2 | 0x1) | 0x8 | 0x40)) || (v5 == (0x2 | 0x8 | 0x40))) && (ov16_0223E208(param0, v2) == 0) && (ov16_0223E1F8(param0, v2) == 2)) {
                (void)0;
            } else {
                for (v3 = 0; v3 < Party_GetCurrentCount(v9); v3++) {
                    v6 = Party_GetPokemonBySlotIndex(v9, v3);

                    if ((GetMonData(v6, 174, NULL) != 0) && (GetMonData(v6, 174, NULL) != 494)) {
                        v4 += GetMonData(v6, 163, NULL);
                    }
                }
            }

            if (v4 == 0) {
                ov16_02248AF0(param1, v1);
            }
        }
    } else {
        {
            Party * v10;

            v10 = ov16_0223DF20(param0, v2);
            v7 = ov16_0223DF14(param0, v2);

            for (v3 = 0; v3 < Party_GetCurrentCount(v10); v3++) {
                v6 = Party_GetPokemonBySlotIndex(v10, v3);

                if ((GetMonData(v6, 174, NULL) != 0) && (GetMonData(v6, 174, NULL) != 494)) {
                    v4 += GetMonData(v6, 163, NULL);
                }
            }

            if (v4 == 0) {
                ov16_02248AF0(param1, v1);
            }
        }
    }

    return 0;
}

static BOOL ov16_022484D0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0, v1;
    int v2[0x8];
    int v3;

    ov16_02248AF0(param1, 1);

    v3 = ov16_02248AD0(param1);
    v1 = 0;

    for (v0 = 0x1; v0 < 0x8; v0++) {
        if (param1->unk_2D40[param1->unk_6C].unk_18[v0] < 12) {
            v2[v1++] = v0 - 1;
        }
    }

    if (v1) {
        param1->unk_2170 = 0x27 + v2[ov16_0223F4BC(param0) % v1];
        param1->unk_2170 |= 0x80000000;
    } else {
        ov16_02248AF0(param1, v3);
    }

    return 0;
}

static BOOL ov16_02248550 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    param1->unk_3124[v1] = param1->unk_2D40[v1].unk_78;
    param1->unk_2D40[v1].unk_78 = 0;

    ov16_02253EC0(param0, param1, v1);

    return 0;
}

static BOOL ov16_0224859C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if (param1->unk_3124[param1->unk_64]) {
        param1->unk_128 = param1->unk_3124[param1->unk_64];
        param1->unk_3124[param1->unk_64] = 0;
    } else {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_022485E0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if (ov16_022588BC(param0, param1, &param1->unk_138) == 0) {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_02248614 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);
    ov16_02266820(param0);

    return 0;
}

static BOOL ov16_0224862C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);
    ov16_0226683C(param0, param1);

    return 0;
}

static BOOL ov16_02248648 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02248AF0(param1, 1);
    ov16_022668D0(param0);

    return 0;
}

static BOOL ov16_02248660 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4 = 0;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);
    v2 = ov16_02258AB8(param1, v1);
    v3 = ov16_02258ACC(param1, v1, 0);

    if ((v2 == 65) && ((ov16_0223F4BC(param0) % 100) < v3)) {
        v4 = 1;
    }

    if ((v2 == 103) && (param1->unk_2D40[v1].unk_4C == param1->unk_2D40[v1].unk_50)) {
        v4 = 1;
    }

    if (v4) {
        if ((param1->unk_2D40[v1].unk_4C + param1->unk_215C) <= 0) {
            param1->unk_215C = (param1->unk_2D40[v1].unk_4C - 1) * -1;
            param1->unk_216C |= 0x100;
        }
    }

    return 0;
}

static BOOL ov16_02248708 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    Pokemon * v3;
    int v4;
    int v5;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    if ((param1->unk_2D40[v1].unk_4C) && (param1->unk_219C[v1] != 6)) {
        v3 = ov16_0223DFAC(param0, v1, param1->unk_219C[v1]);
        v4 = GetMonData(v3, 10, NULL);
        v5 = GetMonData(v3, 160, NULL);

        if ((param1->unk_2D40[v1].unk_27 != 30) && (ov16_022577A4(param1, v4, v5) == 0)) {
            ov16_02248AF0(param1, v2);
        }
    } else {
        ov16_02248AF0(param1, v2);
    }

    return 0;
}

static BOOL ov16_022487A4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    if ((param1->unk_2D40[v1].unk_70 & 0x1000000) || (param1->unk_2D4[v1].unk_14 & 0x8)) {
        ov16_02248AF0(param1, v2);
    }

    return 0;
}

static BOOL ov16_02248800 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v2 = ov16_02248AD0(param1);

    if ((ov16_022555A4(param0, param1, 8, 0, 13) == 0) && (ov16_022555A4(param0, param1, 8, 0, 76) == 0)) {
        (void)0;
    } else {
        ov16_02248AF0(param1, v2);
    }

    return 0;
}

static BOOL ov16_02248850 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    param1->unk_6C = ov16_02257028(param0, param1, v1);

    return 0;
}

static BOOL ov16_02248880 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if (ov16_0225B228(param0, param1, &param1->unk_138) == 0) {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_022488B4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    ov16_0226692C(param0, param1, v1);

    return 0;
}

static BOOL ov16_022488E0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    ov16_022669D8(param0, param1, v1);

    return 0;
}

static BOOL ov16_0224890C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_0224A984(param0, param1, v0);

    ov16_02266A18(param0, v2, v1);

    return 0;
}

static BOOL ov16_02248944 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if (((ov16_0223DF60(param0, 0) != 6) || (sub_020799A0(param0->unk_64) != 18)) && (param0->unk_2410)) {
        ov16_02248AF0(param1, v0);
    }

    return 0;
}

static BOOL ov16_02248988 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);

    if ((param0->unk_2C & 0x4) && ((param0->unk_2408 & 0x10) == 0)) {
        v1 = 2;
    } else {
        v1 = 1;
    }

    if (v0 > param1->unk_F0) {
        ov16_02248AF0(param1, -2);
        param1->unk_F0 += v1;
    } else {
        param1->unk_F0 = 0;
    }

    param1->unk_3154_0 = 1;

    return 0;
}

static BOOL ov16_022489F4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);

    if (param1->unk_354.unk_8A[param1->unk_3044].unk_04 == v0) {
        ov16_02248AF0(param1, v1);
    }

    return 0;
}

static BOOL ov16_02248A34 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int * v3;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_02248AD0(param1);
    v2 = ov16_02248AD0(param1);
    v3 = ov16_02248B10(param0, param1, v1);

    param1->unk_134 = sub_020759CC(v0, v3[0], v2);

    return 0;
}

static BOOL ov16_02248A7C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    ov16_02248AF0(param1, 1);

    v0 = ov16_02248AD0(param1);
    v1 = ov16_0224A984(param0, param1, v0);

    ov16_02251C94(param0, param1, v1, param1->unk_219C[v1]);

    return 0;
}

static BOOL ov16_02248AB4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    param1->unk_3154_0 = 1;
    return ov16_02251EF4(param1);
}

static int ov16_02248AD0 (UnkStruct_ov16_0224B9DC * param0)
{
    int v0;

    v0 = param0->unk_2700[param0->unk_B4];
    param0->unk_B4++;

    return v0;
}

static void ov16_02248AF0 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    param0->unk_B4 += param1;
}

static void ov16_02248B00 (UnkStruct_ov16_0224B9DC * param0, int param1, int param2)
{
    ov16_02251E1C(param0, param1, param2);
}

static void ov16_02248B08 (UnkStruct_ov16_0224B9DC * param0, int param1, int param2)
{
    ov16_02251E5C(param0, param1, param2);
}

static void * ov16_02248B10 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    switch (param2) {
    case 0:
        return &param0->unk_2C;
    case 1:
        return &param1->unk_214C;
    case 2:
        return &param1->unk_2170;
    case 3:
        return &param1->unk_2174;
    case 4:
        return &param1->unk_2178;
    case 5:
        return &param1->unk_88;
    case 6:
        return &param1->unk_213C;
    case 7:
        return &param1->unk_180;
    case 8:
        return &param1->unk_2158;
    case 9:
        return &param1->unk_134;
    case 10:
        return &param1->unk_216C;
    case 11:
        return &param1->unk_1BC[ov16_0223E208(param0, param1->unk_64)];
    case 12:
        return &param1->unk_1BC[ov16_0223E208(param0, param1->unk_6C)];
    case 13:
        return &param1->unk_1BC[ov16_0223E208(param0, param1->unk_94)];
    case 14:
        return &param1->unk_2144;
    case 15:
        return &param1->unk_64;
    case 16:
        return &param1->unk_6C;
    case 17:
        return &param1->unk_94;
    case 18:
        return &param1->unk_74;
    case 19:
        return &param1->unk_78;
    case 20:
        return &param1->unk_118;
    case 21:
        return &param1->unk_30E4[param1->unk_64];
    case 22:
        return &param1->unk_130;
    case 23:
        return &param1->unk_14C;
    case 24:
        return &param1->unk_3044;
    case 25:
        return &param1->unk_150;
    case 26:
        return &param1->unk_11C;
    case 27:
        return &param1->unk_120;
    case 28:
        return &param1->unk_3040;
    case 29:
        return &param1->unk_98;
    case 30:
        return &param1->unk_2154;
    case 31:
        return &param1->unk_38;
    case 32:
        return &param1->unk_215C;
    case 33:
        return &param0->unk_241C;
    case 34:
        return &param1->unk_8C;
    case 35:
        return &param1->unk_124;
    case 36:
        return &param1->unk_128;
    case 37:
        return &param1->unk_12C;
    case 38:
        return &param1->unk_184.unk_00;
    case 39:
        return &param1->unk_3104;
    case 40:
        return &param1->unk_2180;
    case 41:
        return &param1->unk_1D4[param1->unk_64].unk_18;
    case 42:
        return &param1->unk_1D4[param1->unk_64].unk_30;
    case 43:
        return &param1->unk_138;
    case 44:
        return &param1->unk_2150;
    case 45:
        return &param1->unk_1D4[param1->unk_64].unk_34;
    case 46:
        return &param1->unk_1D4[param1->unk_6C].unk_34;
    case 47:
        return &param1->unk_2D4[param1->unk_64].unk_14;
    case 48:
        return &param1->unk_2D4[param1->unk_6C].unk_14;
    case 49:
        return &param1->unk_2D4[param1->unk_94].unk_14;
    case 50:
        return &param1->unk_3114;
    case 51:
        return &param1->unk_3118;
    case 52:
        return &param0->unk_2408;
    case 53:
        return &param1->unk_304C[param1->unk_64];
    case 54:
        return &param1->unk_2148;
    case 55:
        return &param0->unk_2410;
    case 56:
        return &param1->unk_7C;
    case 57:
        return &param1->unk_2160;
    case 58:
        return &param1->unk_2164;
    case 59:
        return &param0->unk_2418;
    case 60:
        return &param1->unk_2140;
    case 61:
        return &param1->unk_EC;
    case 62:
        return &param0->unk_44;
    case 63:
        return &param1->unk_68;
    case 64:
        return &param1->unk_70;
    case 65:
        return &param1->unk_2D4[param1->unk_6C].unk_04;
    case 66:
        return &param1->unk_1D4[param1->unk_118].unk_3C;
    case 67:
        return &param1->unk_1D4[param1->unk_6C].unk_3C;

    case 68:
        return &param1->unk_2D4[param1->unk_64].unk_18;

    case 69:
        return &param1->unk_3150;
    }

    return NULL;
}

static void ov16_02248E74 (UnkStruct_0201CD38 * param0, void * param1)
{
    int v0;
    int v1;
    UnkStruct_ov16_0224B7CC * v2 = param1;
    Pokemon * v3;
    UnkStruct_ov16_0225C300 v4;
    int v5;
    int v6;
    UnkStruct_0200B144 * v7;
    u32 v8;
    int v9;
    int v10;

    v7 = ov16_0223E05C(v2->unk_00);
    v8 = ov16_0223DF0C(v2->unk_00);
    v5 = (v2->unk_04->unk_74) >> 1 & 1;
    v6 = 0;

    for (v1 = v2->unk_30[6]; v1 < ov16_0223DF60(v2->unk_00, v6); v1++) {
        v3 = ov16_0223DFAC(v2->unk_00, v6, v1);
        v9 = GetMonData(v3, 6, NULL);
        v10 = Item_GetAttribute(v9, 1, 5);

        if ((v10 == 51) || (v2->unk_04->unk_A4[v5] & sub_020787CC(v1))) {
            break;
        }
    }

    if (v1 == ov16_0223DF60(v2->unk_00, v6)) {
        v2->unk_28 = 38;
    } else if ((v8 & 0x2) && ((v8 & 0x40) == 0)) {
        if (v2->unk_04->unk_219C[2] == v1) {
            v6 = 2;
        }
    }

    switch (v2->unk_28) {
    case 0:
    {
        u32 v11;
        u32 v12;

        v9 = GetMonData(v3, 6, NULL);
        v10 = Item_GetAttribute(v9, 1, 5);

        if (((v8 & 0x1) == 0) && ((v2->unk_04->unk_2D40[1].unk_4C + v2->unk_04->unk_2D40[3].unk_4C) == 0) && (GetMonData(v3, 163, NULL)) && (v2->unk_04->unk_3144 == 0)) {
            sub_0200549C(1127);
            v2->unk_04->unk_3144 = 1;
            ov16_0223F460(v2->unk_00, 2);
        }

        v11 = 0;
        v4.unk_02 = 1;

        if ((GetMonData(v3, 163, NULL)) && (GetMonData(v3, 161, NULL) != 100)) {
            if (v2->unk_04->unk_A4[v5] & sub_020787CC(v1)) {
                v11 = v2->unk_04->unk_9C;
            }

            if (v10 == 51) {
                v11 += v2->unk_04->unk_A0;
            }

            if (v10 == 66) {
                v11 = v11 * 150 / 100;
            }

            if (v8 & 0x1) {
                v11 = v11 * 150 / 100;
            }

            if (ov16_02259B38(v2->unk_00, v3) == 0) {
                if (GetMonData(v3, 12, NULL) != Unk_020E4C44) {
                    v11 = v11 * 170 / 100;
                } else {
                    v11 = v11 * 150 / 100;
                }

                v4.unk_02 = 2;
            }

            v12 = GetMonData(v3, 8, NULL);
            v2->unk_30[3] = v12 - sub_02075AAC(v3);
            v12 += v11;

            if (v1 == v2->unk_04->unk_219C[v6]) {
                v2->unk_04->unk_2D40[v6].unk_64 = v12;
            }

            sub_02074B30(v3, 8, (u8 *)&v12);
            ov16_022499C0(ov16_0223DF20(v2->unk_00, v6), v1, v2->unk_04->unk_2D40[v2->unk_04->unk_74].unk_00, v2->unk_04->unk_2D40[v2->unk_04->unk_74].unk_26_0);
        }

        if (v11) {
            v4.unk_01 = 17;
            v4.unk_04[0] = v6 | (v1 << 8);
            v4.unk_04[1] = v11;
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
        if (v1 == v2->unk_04->unk_219C[v6]) {
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
            if (v2->unk_04->unk_219C[v6] == v1) {
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

                v13 = GetMonData(v3, 161, NULL);
                v2->unk_04->unk_17C = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_02248E74));
                v15 = (UnkStruct_ov16_02248E74 *)v2->unk_04->unk_17C;

                for (v0 = 0; v0 < 6; v0++) {
                    v15->unk_00[v0] = GetMonData(v3, v14[v0], NULL);
                }

                sub_02075C74(v3, 0, ov16_0223E24C(v2->unk_00));
                sub_020741B8(v3);

                if (v2->unk_04->unk_219C[v6] == v1) {
                    ov16_02251C94(v2->unk_00, v2->unk_04, v6, v2->unk_04->unk_219C[v6]);
                }

                v2->unk_04->unk_3109 |= sub_020787CC(v1);
                ov16_022661CC(v2->unk_00, v2->unk_04, v6);

                v4.unk_02 = 3;
                v4.unk_01 = 17;
                v4.unk_04[0] = v6 | (v1 << 8);
                v4.unk_04[1] = v13;
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
        if (v2->unk_04->unk_219C[v6] != v1) {
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
            v4.unk_02 = 947;
            v4.unk_01 = 4;
            v4.unk_04[0] = v19[v0];

            ov16_0223FB78(v2->unk_00, v21, v7, &v4, 0, 16 * v0, 0, 0, 0);

            v4.unk_02 = 948;
            v4.unk_01 = 7;
            v4.unk_04[0] = GetMonData(v3, v20[v0], NULL) - v22->unk_00[v0];
            v4.unk_1C = 2;

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
            v4.unk_02 = 949;
            v4.unk_01 = 7;
            v4.unk_04[0] = GetMonData(v3, v24[v0], NULL);
            v4.unk_1C = 3;

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

        if (v2->unk_04->unk_219C[v6] != v1) {
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
            if (v2->unk_04->unk_219C[v6] == v1) {
                ov16_02251C94(v2->unk_00, v2->unk_04, v6, v2->unk_04->unk_219C[v6]);
            }

            v4.unk_02 = 4;
            v4.unk_01 = 10;
            v4.unk_04[0] = v6 | (v1 << 8);
            v4.unk_04[1] = v28;
            v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v7, &v4, ov16_0223EDF0(v2->unk_00));
            v2->unk_28 = 36;
            break;
        }
    }
    break;
    case 16:
        v4.unk_02 = 1178;
        v4.unk_01 = 10;
        v4.unk_04[0] = v6 | (v1 << 8);
        v4.unk_04[1] = v2->unk_30[4];
        v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v7, &v4, ov16_0223EDF0(v2->unk_00));
        v2->unk_28++;
        break;
    case 18:
        v4.unk_02 = 1179;
        v4.unk_01 = 2;
        v4.unk_04[0] = v6 | (v1 << 8);
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
        ov16_02265B2C(v2->unk_00, v2->unk_04, v6, 1180, 1, NULL, NULL);
        v2->unk_28++;
        break;
    case 21:
        if (ov16_02259AB4(v2->unk_04, v6)) {
            if (ov16_02259AB4(v2->unk_04, v6) == 0xff) {
                v2->unk_28 = 31;
            } else {
                v4.unk_02 = 1183;
                v4.unk_01 = 0;
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
        if (ov16_02259AB4(v2->unk_04, v6) == 0xff) {
            v2->unk_28 = 31;
        } else if (ov16_02259AB4(v2->unk_04, v6)) {
            v2->unk_30[5] = v2->unk_04->unk_2300[v6][0] - 1;
            v2->unk_28 = 24;
        }
        break;
    case 31:
        v4.unk_02 = 1184;
        v4.unk_01 = 0;
        v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v7, &v4, ov16_0223EDF0(v2->unk_00));
        v2->unk_28++;
        break;
    case 33:
        ov16_02265B2C(v2->unk_00, v2->unk_04, v6, 1185, 2, v2->unk_30[4], NULL);
        v2->unk_28++;
        break;
    case 34:
        if (ov16_02259AB4(v2->unk_04, v6)) {
            if (ov16_02259AB4(v2->unk_04, v6) == 0xff) {
                v2->unk_28 = 16;
            } else {
                v4.unk_02 = 1188;
                v4.unk_01 = 10;
                v4.unk_04[0] = v6 | (v1 << 8);
                v4.unk_04[1] = v2->unk_30[4];
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
        v4.unk_02 = 1189;
        v4.unk_01 = 0;
        v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v7, &v4, ov16_0223EDF0(v2->unk_00));
        v2->unk_28++;
        break;
    case 26:
        v4.unk_02 = 1190;
        v4.unk_01 = 10;
        v4.unk_04[0] = v6 | (v1 << 8);
        v4.unk_04[1] = GetMonData(v3, 54 + v2->unk_30[5], NULL);
        v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v7, &v4, ov16_0223EDF0(v2->unk_00));
        v2->unk_28++;
        break;
    case 28:
        v4.unk_02 = 1191;
        v4.unk_01 = 0;
        v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v7, &v4, ov16_0223EDF0(v2->unk_00));
        v2->unk_28++;
        break;
    case 30:
        v4.unk_02 = 1192;
        v4.unk_01 = 10;
        v4.unk_04[0] = v6 | (v1 << 8);
        v4.unk_04[1] = v2->unk_30[4];
        v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v7, &v4, ov16_0223EDF0(v2->unk_00));
        v0 = 0;

        sub_02074B30(v3, 62 + v2->unk_30[5], &v0);
        sub_02077230(v3, v2->unk_30[4], v2->unk_30[5]);

        if (v2->unk_04->unk_219C[v6] == v1) {
            ov16_02251C94(v2->unk_00, v2->unk_04, v6, v2->unk_04->unk_219C[v6]);
        }

        v2->unk_28 = 36;
        break;
    case 36:
        if (sub_0201D724(v2->unk_30[0]) == 0) {
            v2->unk_28 = 15;
        }
        break;
    case 37:
        v2->unk_04->unk_A4[v5] &= (sub_020787CC(v1) ^ 0xffffffff);
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
    UnkStruct_02075874 * v8;

    v8 = sub_02075874(param2, param3, 5);
    v7 = Party_GetPokemonBySlotIndex(param0, param1);
    v4 = GetMonData(v7, 6, NULL);
    v5 = Item_GetAttribute(v4, 1, 5);
    v6 = Item_GetAttribute(v4, 2, 5);
    v3 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        v2[v0] = GetMonData(v7, 13 + v0, NULL);
        v3 += v2[v0];
    }

    for (v0 = 0; v0 < 6; v0++) {
        if (v3 >= 510) {
            break;
        }

        switch (v0) {
        case 0:
            v1 = sub_020758B0(v8, 10);

            if (v5 == 122) {
                v1 += v6;
            }
            break;
        case 1:
            v1 = sub_020758B0(v8, 11);

            if (v5 == 117) {
                v1 += v6;
            }
            break;
        case 2:
            v1 = sub_020758B0(v8, 12);

            if (v5 == 118) {
                v1 += v6;
            }
            break;
        case 3:
            v1 = sub_020758B0(v8, 13);

            if (v5 == 121) {
                v1 += v6;
            }
            break;
        case 4:
            v1 = sub_020758B0(v8, 14);

            if (v5 == 119) {
                v1 += v6;
            }
            break;
        case 5:
            v1 = sub_020758B0(v8, 15);

            if (v5 == 120) {
                v1 += v6;
            }
            break;
        }

        if (sub_02077758(param0, sub_020787CC(param1))) {
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
        sub_02074B30(v7, 13 + v0, (u8 *)&v2[v0]);
    }

    sub_020759B8(v8);
}

static void ov16_02249B80 (UnkStruct_0201CD38 * param0, void * param1)
{
    int v0;
    int v1;
    UnkStruct_ov16_0224B7CC * v2 = param1;
    Pokemon * v3;
    UnkStruct_02002F38 * v4;
    UnkStruct_02007768 * v5;
    UnkStruct_0200B144 * v6;

    v6 = ov16_0223E05C(v2->unk_00);
    v4 = ov16_0223E064(v2->unk_00);
    v5 = ov16_0223E000(v2->unk_00);
    v1 = 1;

    if (v2->unk_04->unk_3108 & sub_020787CC(v1)) {
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

                if (ov16_0223DF0C(v2->unk_00) & 0x2) {
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
                UnkStruct_ov16_0225BFFC * v8;

                v8 = ov16_0223DF14(v2->unk_00, 0);

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

                v9 = ov16_0223DF0C(v2->unk_00);

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
                UnkStruct_ov16_0225C300 v10;

                v10.unk_02 = 867;
                v10.unk_01 = 2 | 0x80;
                v10.unk_04[0] = v1;
                v2->unk_30[0] = ov16_0223FB24(v2->unk_00, v6, &v10, ov16_0223EDF0(v2->unk_00));
                v2->unk_30[1] = 30;
                v2->unk_28 = 9;

                sub_0200549C(1127);
                ov16_0223F460(v2->unk_00, 2);
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
                v3 = ov16_0223DFAC(v2->unk_00, v1, v2->unk_04->unk_219C[v1]);

                if (ov16_0223DF0C(v2->unk_00) & (0x200 | 0x400)) {
                    v3 = ov16_0223DFAC(v2->unk_00, v1, v2->unk_04->unk_219C[v1]);
                    ov16_02259A5C(v2->unk_00, v2->unk_04, v3);
                    sub_02015738(ov16_0223E220(v2->unk_00), 1);
                    sub_02003178(v4, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 0, 16, 0x0);
                    sub_0200872C(v5, 0, 16, 0, 0x0);
                    v2->unk_28 = 32;
                } else if (ov16_0223F9E0(v2->unk_00, GetMonData(v3, 5, NULL))) {
                    sub_02015738(ov16_0223E220(v2->unk_00), 1);
                    sub_02003178(v4, (0x1 | 0x4), 0xffff, 1, 0, 16, 0x0);
                    sub_0200872C(v5, 0, 16, 0, 0x0);
                    v2->unk_28 = 16;
                } else {
                    {
                        UnkStruct_ov16_0225C300 v11;

                        v11.unk_02 = 871;
                        v11.unk_01 = 2 | 0x80;
                        v11.unk_04[0] = v1;
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
                ov16_02263B20(ov16_0223DF14(v2->unk_00, 0), 0);

                v12.unk_00 = ov16_0223DF00(v2->unk_00);
                v12.unk_04 = ov16_0223E064(v2->unk_00);
                v12.unk_08 = v5;
                v12.unk_0C = 5;
                v12.unk_10 = ov16_0223DFAC(v2->unk_00, v1, v2->unk_04->unk_219C[v1]);
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

                v3 = ov16_0223DFAC(v2->unk_00, v1, v2->unk_04->unk_219C[v1]);

                ov12_0223783C(v2->unk_08);
                sub_02007DD4(v5);
                ov16_02263B20(ov16_0223DF14(v2->unk_00, 0), 0);
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

        v15 = v1 | (v2->unk_04->unk_219C[v1]);
        ov16_02265B2C(v2->unk_00, v2->unk_04, 0, 868, 5, NULL, v15);
        v2->unk_28++;
    }
    break;
    case 19:
        if (ov16_02259AB4(v2->unk_04, 0)) {
            if (ov16_02259AB4(v2->unk_04, 0) == 0xff) {
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

                v3 = ov16_0223DFAC(v2->unk_00, v1, v2->unk_04->unk_219C[v1]);
                v16 = sub_0208712C(5, 1, GetMonData(v3, 5, NULL), 10, ov16_0223EDA4(v2->unk_00));
                v2->unk_50[1] = v16;

                if (ov16_0223DF60(v2->unk_00, 0) < 6) {
                    v16->unk_44 = 0;
                } else {
                    v16->unk_44 = 1174 + ov16_0223F240(v2->unk_00);
                }

                v16->unk_08 = GetMonData(v3, 112, NULL);
                v16->unk_48 = ov16_0223E228(v2->unk_00);
                v16->unk_10 = GetMonData(v3, 111, NULL);
                v2->unk_50[0] = sub_020067E8(&Unk_020F2DAC, v16, 5);
                v2->unk_28 = 21;

                ov16_0223F414(v2->unk_00);

                {
                    int v17;
                    UnkStruct_ov16_0225BFFC * v18;

                    for (v17 = 0; v17 < ov16_0223DF1C(v2->unk_00); v17++) {
                        v18 = ov16_0223DF14(v2->unk_00, v17);

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
                v3 = ov16_0223DFAC(v2->unk_00, v1, v2->unk_04->unk_219C[v1]);

                if (v19->unk_14 == 0) {
                    sub_02074B30(v3, 120, v19->unk_18);
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
                UnkStruct_ov16_0225C300 v21;
                Party * v22;
                int v23;

                v22 = ov16_0223DF20(v2->unk_00, 0);
                v3 = ov16_0223DFAC(v2->unk_00, v1, v2->unk_04->unk_219C[v1]);

                ov16_0223F9A0(v2->unk_00, v1);
                ov16_02259A5C(v2->unk_00, v2->unk_04, v3);
                ov16_0223EF48(v2->unk_00, v3);
                ov16_0223EF68(v2->unk_00, v3);
                ov16_022666BC(v2->unk_00, 0, 0, (1 + 8));

                if (Party_AddPokemon(v22, v3) == 1) {
                    if (v2->unk_28 == 22) {
                        sub_02015738(ov16_0223E220(v2->unk_00), 1);
                        sub_02003178(v4, (0x1 | 0x2 | 0x4 | 0x8), 0xffff, 1, 0, 16, 0x0);
                        sub_0200872C(v5, 0, 16, 0, 0x0);
                    }

                    v2->unk_28 = 32;
                } else {
                    {
                        UnkStruct_020797DC * v24;
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
                            v28 = GetMonData(v3, 66 + v27, NULL);
                            sub_02074B30(v3, 58 + v27, &v28);
                        }

                        if (sub_02077A00(v3) != -1) {
                            ov16_0223F9A0(v2->unk_00, v1);
                        }

                        sub_020798A0(v24, v26, sub_02076B10(v3));

                        if (v2->unk_28 == 22) {
                            if (v25 == v26) {
                                v21.unk_02 = 1174 + ov16_0223F240(v2->unk_00);
                                v21.unk_01 = 19 | 0x80;
                                v21.unk_04[0] = v1;
                                v21.unk_04[1] = v25;
                            } else {
                                v21.unk_02 = 1176 + ov16_0223F240(v2->unk_00);
                                v21.unk_01 = 47 | 0x80;
                                v21.unk_04[0] = v1;
                                v21.unk_04[1] = v25;
                                v21.unk_04[2] = v26;
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
                UnkStruct_ov16_0225C300 v30;

                ov12_0223783C(v2->unk_08);

                v30.unk_02 = 859;
                v30.unk_01 = 0;

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
                    UnkStruct_ov16_0225C300 v31;

                    v31.unk_02 = 860;
                    v31.unk_01 = 0;
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
        ov16_02264CE8(v2->unk_00, v1, v2->unk_2C, 1);
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
                UnkStruct_ov16_0225C300 v32;

                v32.unk_02 = 863 + v2->unk_30[2];
                v32.unk_01 = 0;
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
            if (ov16_0223DF0C(v2->unk_00) & (0x200 | 0x400)) {
                ov12_0223783C(v2->unk_08);
                sub_02007DD4(v5);
            }

            v2->unk_00->unk_241C = 0x4;
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

static int ov16_0224A724 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    u32 v1;
    u32 v2;
    u32 v3;
    u32 v4;
    int v5;
    int v6;

    if (ov16_0223DF0C(param0) & (0x200 | 0x400)) {
        return 4;
    }

    if (param1->unk_128 == 5) {
        v3 = sub_020759F0(param1->unk_2D40[param1->unk_6C].unk_00, 8);
        v3 = v3 * Unk_ov16_0226E638[param1->unk_311C][0] / Unk_ov16_0226E638[param1->unk_311C][1];
    } else {
        v3 = sub_020759F0(param1->unk_2D40[param1->unk_6C].unk_00, 8);
    }

    v4 = 10;
    v5 = ov16_02252060(param1, param1->unk_6C, 27, NULL);
    v6 = ov16_02252060(param1, param1->unk_6C, 28, NULL);

    if (param1->unk_128 > 5) {
        switch (param1->unk_128) {
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
            if (param1->unk_2D40[param1->unk_6C].unk_34 < 40) {
                v4 = 40 - param1->unk_2D40[param1->unk_6C].unk_34;

                if (v4 < 10) {
                    v4 = 10;
                }
            }
            break;
        case 9:
            if (ov16_0223F9E0(param0, param1->unk_2D40[param1->unk_6C].unk_00) == 1) {
                v4 = 30;
            }
            break;
        case 10:
            v4 = 10 + param1->unk_150;

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
            if (param1->unk_150 < 1) {
                v4 = 40;
            }
            break;
        }
    } else {
        v4 = Unk_ov16_0226E570[param1->unk_128 - 2];
    }

    v1 = ((v3 * v4) / 10) * (param1->unk_2D40[param1->unk_6C].unk_50 * 3 - param1->unk_2D40[param1->unk_6C].unk_4C * 2) / (param1->unk_2D40[param1->unk_6C].unk_50 * 3);

    if (param1->unk_2D40[param1->unk_6C].unk_6C & (0x7 | 0x20)) {
        v1 *= 2;
    }

    if (param1->unk_2D40[param1->unk_6C].unk_6C & (0x8 | 0x40 | 0x10 | 0x80)) {
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
            if (ov16_0223F4BC(param0) >= v1) {
                break;
            }
        }

        if (param1->unk_128 == 1) {
            v0 = 4;
        }
    }

    return v0;
}

static int ov16_0224A984 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    int v0;

    switch (param2) {
    default:
    case 0x1:
        v0 = param1->unk_64;
        break;
    case 0x2:
        v0 = param1->unk_6C;
        break;
    case 0x5:
        v0 = param1->unk_74;
        break;
    case 0x6:
    case 0x16:
        v0 = param1->unk_78;
        break;
    case 0x7:
        v0 = param1->unk_94;
        break;
    case 0x8:
        v0 = param1->unk_80;
        break;
    case 0x4:
    {
        UnkStruct_ov16_0225BFFC * v1;
        int v2;

        v2 = ov16_0223DF1C(param0);

        for (v0 = 0; v0 < v2; v0++) {
            v1 = ov16_0223DF14(param0, v0);

            if (v1->unk_191 & 0x1) {
                break;
            }
        }
    }
    break;
    case 0xa:
    {
        UnkStruct_ov16_0225BFFC * v3;
        int v4;

        v4 = ov16_0223DF1C(param0);

        for (v0 = 0; v0 < v4; v0++) {
            v3 = ov16_0223DF14(param0, v0);

            if ((v3->unk_191 == 3) || (v3->unk_191 == 1)) {
                break;
            }
        }
    }
    break;
    case 0xc:
    {
        UnkStruct_ov16_0225BFFC * v5;
        int v6;
        int v7;

        if (ov16_0223DF0C(param0) & 0x2) {
            v7 = 5;
        } else {
            v7 = 1;
        }

        v6 = ov16_0223DF1C(param0);

        for (v0 = 0; v0 < v6; v0++) {
            v5 = ov16_0223DF14(param0, v0);

            if (v5->unk_191 == v7) {
                break;
            }
        }
    }
    break;
    case 0x3:
    {
        UnkStruct_ov16_0225BFFC * v8;
        int v9;

        v9 = ov16_0223DF1C(param0);

        for (v0 = 0; v0 < v9; v0++) {
            v8 = ov16_0223DF14(param0, v0);

            if ((v8->unk_191 & 0x1) == 0) {
                break;
            }
        }
    }
    break;
    case 0x9:
    {
        UnkStruct_ov16_0225BFFC * v10;
        int v11;

        v11 = ov16_0223DF1C(param0);

        for (v0 = 0; v0 < v11; v0++) {
            v10 = ov16_0223DF14(param0, v0);

            if ((v10->unk_191 == 2) || (v10->unk_191 == 0)) {
                break;
            }
        }
    }
    break;
    case 0xb:
    {
        UnkStruct_ov16_0225BFFC * v12;
        int v13;
        int v14;

        if (ov16_0223DF0C(param0) & 0x2) {
            v14 = 4;
        } else {
            v14 = 0;
        }

        v13 = ov16_0223DF1C(param0);

        for (v0 = 0; v0 < v13; v0++) {
            v12 = ov16_0223DF14(param0, v0);

            if (v12->unk_191 == v14) {
                break;
            }
        }
    }
    break;
    case 0xe:
        v0 = param1->unk_11C;
        break;
    case 0xf:
        v0 = param1->unk_120;
        break;
    case 0x10:
    {
        int v15;

        v15 = ov16_0223DF1C(param0);

        for (v0 = 0; v0 < v15; v0++) {
            if ((v0 != param1->unk_64) && (ov16_0223E208(param0, v0) == ov16_0223E208(param0, param1->unk_64))) {
                break;
            }
        }

        if (v0 == v15) {
            GF_ASSERT("FALSE");
            v0 = 0;
        }
    }
    break;
    case 0x11:
    {
        int v16;

        v16 = ov16_0223DF1C(param0);

        for (v0 = 0; v0 < v16; v0++) {
            if ((v0 != param1->unk_6C) && (ov16_0223E208(param0, v0) == ov16_0223E208(param0, param1->unk_6C))) {
                break;
            }
        }

        if (v0 == v16) {
            GF_ASSERT("FALSE");
            v0 = 0;
        }
    }
    break;
    case 0x13:
    {
        int v17;
        int v18;

        v17 = ov16_0223DF1C(param0);
        v18 = ov16_0223E208(param0, param1->unk_64);

        for (v0 = 0; v0 < v17; v0++) {
            if (v18 != ov16_0223E208(param0, v0)) {
                break;
            }
        }
    }
    break;
    case 0x14:
    {
        int v19;
        int v20;

        v19 = ov16_0223DF1C(param0);
        v20 = ov16_0223E208(param0, param1->unk_6C);

        for (v0 = 0; v0 < v19; v0++) {
            if (v20 != ov16_0223E208(param0, v0)) {
                break;
            }
        }
    }
    break;
    case 0xff:
    case 0x15:
        v0 = param1->unk_118;
        break;
    }

    GF_ASSERT(v0 != 0xff);

    return v0;
}

static void ov16_0224ABEC (UnkStruct_ov16_0224B9DC * param0, UnkStruct_ov16_02241584 * param1)
{
    int v0, v1 = 0;

    param1->unk_00 = ov16_02248AD0(param0);
    param1->unk_04 = ov16_02248AD0(param0);

    switch (param1->unk_04) {
    case 0:
        v1 = 0;
        break;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
        v1 = 1;
        break;
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
        v1 = 2;
        break;
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
        v1 = 3;
        break;
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
        v1 = 4;
        break;
    case 60:
        v1 = 6;
        break;
    default:
        GF_ASSERT("FALSE");
        break;
    }

    for (v0 = 0; v0 < v1; v0++) {
        param1->unk_08[v0] = ov16_02248AD0(param0);
    }
}

static void ov16_0224ACB8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, UnkStruct_ov16_02241584 * param2, UnkStruct_ov16_0225C300 * param3)
{
    param3->unk_02 = param2->unk_00;
    param3->unk_01 = param2->unk_04;

    switch (param3->unk_01) {
    case 0:
        break;
    case 1:
        param3->unk_04[0] = ov16_0224A984(param0, param1, param2->unk_08[0]);
        break;
    case 2:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        break;
    case 3:
        param3->unk_04[0] = ov16_0224B3E8(param1, param2->unk_08[0]);
        break;
    case 4:
        param3->unk_04[0] = ov16_0224B4C8(param1, param2->unk_08[0]);
        break;
    case 5:
        param3->unk_04[0] = ov16_0224B404(param1, param2->unk_08[0]);
        break;
    case 6:
    case 7:
        param3->unk_04[0] = ov16_0224B47C(param1, param2->unk_08[0]);
        break;
    case 8:
        param3->unk_04[0] = ov16_0224B518(param0, param1, param2->unk_08[0]);
        break;
    case 9:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B3B8(param0, param1, param2->unk_08[1]);
        break;
    case 10:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B3E8(param1, param2->unk_08[1]);
        break;
    case 11:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B494(param0, param1, param2->unk_08[1]);
        break;
    case 12:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B4C8(param1, param2->unk_08[1]);
        break;
    case 13:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B488(param1, param2->unk_08[1]);
        break;
    case 14:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B4E0(param0, param1, param2->unk_08[1]);
        break;
    case 15:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B404(param1, param2->unk_08[1]);
        break;
    case 16:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B4F8(param1, param2->unk_08[1]);
        break;
    case 17:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B47C(param1, param2->unk_08[1]);
        break;
    case 18:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B518(param0, param1, param2->unk_08[1]);
        break;
    case 19:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = param2->unk_08[1];
        break;
    case 20:
        param3->unk_04[0] = ov16_0224B3E8(param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224A984(param0, param1, param2->unk_08[1]);
        break;
    case 21:
        param3->unk_04[0] = ov16_0224B3E8(param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B3B8(param0, param1, param2->unk_08[1]);
        break;
    case 22:
        param3->unk_04[0] = ov16_0224B3E8(param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B3E8(param1, param2->unk_08[1]);
        break;
    case 23:
        param3->unk_04[0] = ov16_0224B494(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B3B8(param0, param1, param2->unk_08[1]);
        break;
    case 24:
        param3->unk_04[0] = ov16_0224B404(param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B3E8(param1, param2->unk_08[1]);
        break;
    case 25:
        param3->unk_04[0] = ov16_0224B47C(param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B47C(param1, param2->unk_08[1]);
        break;
    case 26:
        param3->unk_04[0] = ov16_0224B518(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B518(param0, param1, param2->unk_08[1]);
        break;
    case 27:
        param3->unk_04[0] = ov16_0224B518(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B3B8(param0, param1, param2->unk_08[1]);
        break;
    case 28:
        param3->unk_04[0] = ov16_0224B518(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B404(param1, param2->unk_08[1]);
        break;
    case 29:
        param3->unk_04[0] = ov16_0224B518(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B47C(param1, param2->unk_08[1]);
        break;
    case 30:
        param3->unk_04[0] = ov16_0224B510(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B518(param0, param1, param2->unk_08[1]);
        break;
    case 31:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B3B8(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B3E8(param1, param2->unk_08[2]);
        break;
    case 32:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B3B8(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B494(param0, param1, param2->unk_08[2]);
        break;
    case 33:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B3B8(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B404(param1, param2->unk_08[2]);
        break;
    case 34:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B3E8(param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B3E8(param1, param2->unk_08[2]);
        break;
    case 35:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B3E8(param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B47C(param1, param2->unk_08[2]);
        break;
    case 36:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B494(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B3B8(param0, param1, param2->unk_08[2]);
        break;
    case 37:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B494(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B3E8(param1, param2->unk_08[2]);
        break;
    case 38:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B494(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B404(param1, param2->unk_08[2]);
        break;
    case 39:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B494(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B4C8(param1, param2->unk_08[2]);
        break;
    case 40:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B494(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B488(param1, param2->unk_08[2]);
        break;
    case 41:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B494(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B4D4(param1, param2->unk_08[2]);
        break;
    case 42:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B494(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B47C(param1, param2->unk_08[2]);
        break;
    case 43:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B404(param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B3B8(param0, param1, param2->unk_08[2]);
        break;
    case 44:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B404(param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B3E8(param1, param2->unk_08[2]);
        break;
    case 45:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B404(param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B4C8(param1, param2->unk_08[2]);
        break;
    case 46:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B404(param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B4D4(param1, param2->unk_08[2]);
        break;
    case 47:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = param2->unk_08[1];
        param3->unk_04[2] = param2->unk_08[2];
        break;
    case 48:
        param3->unk_04[0] = ov16_0224B404(param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B3B8(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B504(param1, param2->unk_08[2]);
        break;
    case 49:
        param3->unk_04[0] = ov16_0224B518(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B3B8(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B3B8(param0, param1, param2->unk_08[2]);
        break;
    case 50:
        param3->unk_04[0] = ov16_0224B510(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B518(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B3B8(param0, param1, param2->unk_08[2]);
        break;
    case 51:
        param3->unk_04[0] = ov16_0224B510(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B518(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B404(param1, param2->unk_08[2]);
        break;
    case 52:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B494(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B3B8(param0, param1, param2->unk_08[2]);
        param3->unk_04[3] = ov16_0224B3E8(param1, param2->unk_08[3]);
        break;
    case 53:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B494(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B3B8(param0, param1, param2->unk_08[2]);
        param3->unk_04[3] = ov16_0224B494(param0, param1, param2->unk_08[3]);
        break;
    case 54:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B494(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B3B8(param0, param1, param2->unk_08[2]);
        param3->unk_04[3] = ov16_0224B4C8(param1, param2->unk_08[3]);
        break;
    case 55:
        param3->unk_04[0] = ov16_0224B3B8(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B404(param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B3B8(param0, param1, param2->unk_08[2]);
        param3->unk_04[3] = ov16_0224B404(param1, param2->unk_08[3]);
        break;
    case 56:
        param3->unk_04[0] = ov16_0224B518(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B3B8(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B518(param0, param1, param2->unk_08[2]);
        param3->unk_04[3] = ov16_0224B3B8(param0, param1, param2->unk_08[3]);
        break;
    case 57:
        param3->unk_04[0] = ov16_0224B510(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B518(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B3B8(param0, param1, param2->unk_08[2]);
        param3->unk_04[3] = ov16_0224B3B8(param0, param1, param2->unk_08[3]);
        break;
    case 58:
        param3->unk_04[0] = ov16_0224B510(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B518(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B3B8(param0, param1, param2->unk_08[2]);
        param3->unk_04[3] = ov16_0224B518(param0, param1, param2->unk_08[3]);
        break;
    case 59:
        param3->unk_04[0] = ov16_0224B510(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B518(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B510(param0, param1, param2->unk_08[2]);
        param3->unk_04[3] = ov16_0224B518(param0, param1, param2->unk_08[3]);
        break;
    case 60:
        param3->unk_04[0] = ov16_0224B510(param0, param1, param2->unk_08[0]);
        param3->unk_04[1] = ov16_0224B518(param0, param1, param2->unk_08[1]);
        param3->unk_04[2] = ov16_0224B3B8(param0, param1, param2->unk_08[2]);
        param3->unk_04[3] = ov16_0224B510(param0, param1, param2->unk_08[3]);
        param3->unk_04[4] = ov16_0224B518(param0, param1, param2->unk_08[4]);
        param3->unk_04[5] = ov16_0224B3B8(param0, param1, param2->unk_08[5]);
        break;
    default:
        GF_ASSERT("FALSE");
        break;
    }
}

static int ov16_0224B3B8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    int v0;
    int v1;

    v1 = ov16_0224A984(param0, param1, param2);
    v0 = v1;

    if (param2 == 0x16) {
        v0 |= param1->unk_21A0[v1] << 8;
    } else {
        v0 |= param1->unk_219C[v1] << 8;
    }

    return v0;
}

static int ov16_0224B3E8 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    int v0;

    switch (param1) {
    case 0x1:
        v0 = param0->unk_3044;
        break;
    case 0xff:
        v0 = param0->unk_124;
        break;
    default:
        break;
    }

    return v0;
}

static int ov16_0224B404 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    int v0;

    switch (param1) {
    case 0x1:
        v0 = param0->unk_2D40[param0->unk_64].unk_78;
        ov16_0224B934(param0, param0->unk_64, v0);
        break;
    case 0x2:
        v0 = param0->unk_2D40[param0->unk_6C].unk_78;
        ov16_0224B934(param0, param0->unk_6C, v0);
        break;
    case 0x15:
        v0 = param0->unk_2D40[param0->unk_118].unk_78;
        ov16_0224B934(param0, param0->unk_118, v0);
        break;
    case 0xff:
        v0 = param0->unk_128;
        break;
    default:
        break;
    }

    return v0;
}

static int ov16_0224B47C (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    int v0;

    switch (param1) {
    case 0xff:
        v0 = param0->unk_130;
        break;
    default:
        break;
    }

    return v0;
}

static int ov16_0224B488 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    int v0;

    switch (param1) {
    case 0xff:
        v0 = param0->unk_130;
        break;
    default:
        break;
    }

    return v0;
}

static int ov16_0224B494 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    int v0;
    int v1;

    switch (param2) {
    case 0xff:
        v0 = param1->unk_12C;
        break;
    default:
        v1 = ov16_0224A984(param0, param1, param2);
        v0 = param1->unk_2D40[v1].unk_27;
        ov16_0224B928(param1, v1, v0);
        break;
    }

    return v0;
}

static int ov16_0224B4C8 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    int v0;

    switch (param1) {
    case 0xff:
        v0 = param0->unk_130;
        break;
    default:
        break;
    }

    return v0;
}

static int ov16_0224B4D4 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    int v0;

    switch (param1) {
    case 0xff:
        v0 = param0->unk_130;
        break;
    default:
        break;
    }

    return v0;
}

static int ov16_0224B4E0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    int v0;
    int v1;

    v1 = ov16_0224A984(param0, param1, param2);
    v0 = v1;
    v0 |= param1->unk_219C[v1] << 8;

    return v0;
}

static int ov16_0224B4F8 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    int v0;

    switch (param1) {
    case 0xff:
        v0 = param0->unk_130;
        break;
    default:
        break;
    }

    return v0;
}

static int ov16_0224B504 (UnkStruct_ov16_0224B9DC * param0, int param1)
{
    int v0;

    switch (param1) {
    case 0xff:
        v0 = param0->unk_130;
        break;
    default:
        break;
    }

    return v0;
}

static int ov16_0224B510 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    return ov16_0224A984(param0, param1, param2);
}

static int ov16_0224B518 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    return ov16_0224A984(param0, param1, param2);
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

static void ov16_0224B520 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B7CC * param1, Pokemon * param2)
{
    UnkStruct_ov104_0223F9E0 v0;
    UnkStruct_0200C6E4 * v1;
    UnkStruct_0200C704 * v2;
    UnkStruct_02002F38 * v3;
    UnkStruct_0200B144 * v4;
    UnkStruct_0200B358 * v5;
    UnkStruct_02023790 * v6, * v7;
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

    if (GetMonData(param2, 176, NULL) == 0) {
        v13 = 2;
    } else {
        v13 = GetMonData(param2, 111, NULL);
    }

    if (v13 == 0) {
        v6 = sub_0200B1EC(v4, 944);
    } else if (v13 == 1) {
        v6 = sub_0200B1EC(v4, 945);
    } else {
        v6 = sub_0200B1EC(v4, 946);
    }

    sub_0200B5CC(v5, 0, sub_02076B10(param2));
    sub_0200B60C(v5, 1, GetMonData(param2, 161, NULL), 3, 0, 1);
    sub_0200C388(v5, v7, v6);
    sub_020237BC(v6);
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

static void ov16_0224B7CC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B7CC * param1)
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

static void ov16_0224B850 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2)
{
    Pokemon * v0;
    u8 v1, v2;

    if (ov16_0223E208(param0, param2)) {
        return;
    }

    if (ov16_0223DF0C(param0) & 0x2) {
        v1 = ov16_0223E1C4(param0, 3);
        v2 = ov16_0223E1C4(param0, 5);

        if (param1->unk_2D40[v2].unk_34 > param1->unk_2D40[v1].unk_34) {
            v1 = v2;
        }
    } else {
        v1 = ov16_0223E1C4(param0, 1);
    }

    v0 = ov16_0223DFAC(param0, param2, param1->unk_219C[param2]);

    if (param1->unk_2D40[v1].unk_34 > param1->unk_2D40[param2].unk_34) {
        if (param1->unk_2D40[v1].unk_34 - param1->unk_2D40[param2].unk_34 >= 30) {
            sub_02075C74(v0, 8, ov16_0223E24C(param0));
        } else {
            sub_02075C74(v0, 6, ov16_0223E24C(param0));
        }
    } else {
        sub_02075C74(v0, 6, ov16_0223E24C(param0));
    }
}

static void ov16_0224B928 (UnkStruct_ov16_0224B9DC * param0, u8 param1, u8 param2)
{
    param0->unk_354.unk_3C[param1] = param2;
}

static void ov16_0224B934 (UnkStruct_ov16_0224B9DC * param0, u8 param1, u16 param2)
{
    param0->unk_354.unk_40[param1] = param2;
}
