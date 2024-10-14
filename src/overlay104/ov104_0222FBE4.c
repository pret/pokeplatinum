#include "overlay104/ov104_0222FBE4.h"

#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02014014_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0202440C_decl.h"
#include "struct_decls/struct_0202B370_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay004/ov4_021D0D80.h"
#include "overlay006/battle_params.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay063/ov63_0222BE18.h"
#include "overlay063/ov63_0222CCE4.h"
#include "overlay063/struct_ov63_0222BEC0_decl.h"
#include "overlay063/struct_ov63_0222CE44.h"
#include "overlay063/struct_ov63_0222D77C_decl.h"
#include "overlay104/const_ov104_0223F63C.h"
#include "overlay104/const_ov104_0223F674.h"
#include "overlay104/funcptr_ov104_0222E930.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0222E63C.h"
#include "overlay104/ov104_0222E930.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/ov104_022332B4.h"
#include "overlay104/ov104_02234838.h"
#include "overlay104/ov104_022358E8.h"
#include "overlay104/ov104_02237378.h"
#include "overlay104/ov104_02239080.h"
#include "overlay104/ov104_02239130.h"
#include "overlay104/ov104_022395F0.h"
#include "overlay104/ov104_0223C2D4.h"
#include "overlay104/ov104_0223D5D0.h"
#include "overlay104/ov104_0223D768.h"
#include "overlay104/ov104_0223D860.h"
#include "overlay104/ov104_0223E894.h"
#include "overlay104/struct_ov104_0222E930_decl.h"
#include "overlay104/struct_ov104_0222E930_t.h"
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

#include "communication_information.h"
#include "communication_system.h"
#include "core_sys.h"
#include "enums.h"
#include "field_comm_manager.h"
#include "game_records.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02001AF4.h"
#include "unk_02002F38.h"
#include "unk_020041CC.h"
#include "unk_0200A9DC.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02014000.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0202ACE0.h"
#include "unk_0202D05C.h"
#include "unk_0202F1D4.h"
#include "unk_02033200.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_0205DFC4.h"
#include "unk_0206CCB0.h"
#include "unk_0208694C.h"
#include "unk_02096420.h"
#include "unk_0209B6F8.h"
#include "vars_flags.h"

#include "constdata/const_020EA358.h"
#include "constdata/const_020F2DAC.h"

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

void ov104_0223DC7C(int param0, BGL *param1, SpriteRenderer *param2, SpriteGfxHandler *param3, PaletteData *param4, u16 *param5, s16 param6, s16 param7);
u16 ov104_0222FC8C(UnkStruct_ov104_0222E930 *param0, u16 param1);
u16 *ov104_0222FC14(UnkStruct_ov104_0222E930 *param0, u16 param1);
static BOOL ov104_0222FCA0(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FCA4(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FCB0(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FD18(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FD4C(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FEDC(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FF0C(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FF3C(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FF6C(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FF84(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FF90(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FFD8(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FFE8(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FFFC(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230058(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_022300B8(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_022300DC(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230108(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0223014C(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_022301A8(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230208(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230234(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230250(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230124(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FDD4(u16 param0, u16 param1);
static BOOL ov104_0222FDE8(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FE08(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FD6C(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FD84(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FD9C(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FDB8(UnkStruct_ov104_0222E930 *param0);
void ov104_0222FE2C(UnkStruct_ov104_0222E930 *param0, u8 *param1);
static BOOL ov104_0222FE30(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FE48(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230910(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230260(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_022302B4(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_022302E8(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_022303A8(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_022303C8(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_022304A0(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0223050C(UnkStruct_ov104_0222E930 *param0);
static void ov104_0223056C(u16 param0, UnkStruct_ov104_0223C634 *param1, const UnkStruct_ov104_02232B78_sub1 *param2, UnkStruct_ov63_0222D77C *param3, u8 *param4, int param5);
static BOOL ov104_022305B8(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_022305C8(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230958(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230970(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_022309DC(UnkStruct_ov104_0222E930 *param0);
static int ov104_02230A2C(u16 param0, u16 param1);
static BOOL ov104_02230B50(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230BB0(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230BBC(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230BE4(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230C3C(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230C04(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230C74(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230C88(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230CAC(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230CC4(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230CD4(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230CF4(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230DC4(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230DF0(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230E20(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230E40(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230EB8(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230ED8(UnkStruct_ov104_0222E930 *param0);
static Strbuf *ov104_02230E90(u16 param0, u32 param1);
static BOOL ov104_02230EFC(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230F28(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230F6C(UnkStruct_ov104_0222E930 *param0);
static u16 ov104_02230D28(u32 param0);
u16 *ov104_0222FBE4(UnkStruct_ov104_0222E930 *param0);
u16 ov104_0222FC00(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FE80(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FE98(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FEA4(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FCC4(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FCF0(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0222FCEC(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_022304C8(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230508(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230FA4(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230FCC(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230FEC(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230FF8(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231010(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0223102C(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231050(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231068(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231078(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231090(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_022310B0(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_022310E0(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_022310EC(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231118(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_022305DC(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230640(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0223066C(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230708(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230728(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230760(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230790(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_022307D8(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230810(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230830(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230850(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231A28(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231AF4(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231AA8(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231B20(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231B54(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231B74(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231BA8(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231BB8(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231BD4(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231C44(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231C54(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231C70(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231CE4(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231CF4(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231D10(UnkStruct_ov104_0222E930 *param0);
static void ov104_0223088C(UnkStruct_ov104_0222E930 *param0, int param1, int param2);
static BOOL ov104_022308E0(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02230900(UnkStruct_ov104_0222E930 *param0);
u32 ov104_022313F4(u16 param0, u16 param1);
static BOOL ov104_02231D1C(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231D8C(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231DAC(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231E14(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231E30(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231E54(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231E80(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231EA4(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231EC4(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231ED8(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231EFC(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231F34(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231F44(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02231F5C(UnkStruct_ov104_0222E930 *param0);
static void ov104_02230950(void *param0);
static BOOL ov104_02231148(UnkStruct_ov104_02231148 *param0);
static BOOL ov104_022311BC(UnkStruct_ov104_02231148 *param0);
static BOOL ov104_022312D8(UnkStruct_ov104_02231148 *param0);
static BOOL ov104_02231720(UnkStruct_ov104_02231148 *param0);
static BOOL ov104_02231864(UnkStruct_ov104_02231148 *param0);
static BOOL ov104_022319CC(UnkStruct_ov104_02231148 *param0);

static const UnkStruct_ov61_0222C884 Unk_ov104_0223F640 = {
    0x1,
    0x19,
    0xD,
    0x6,
    0x4,
    0xE,
    0x355
};

static const u8 Unk_ov104_0223F648[6][3] = {
    { 0x1, 0x0, 0x0 },
    { 0x0, 0x1, 0x0 },
    { 0x0, 0x0, 0x1 },
    { 0x1, 0x1, 0x0 },
    { 0x0, 0x1, 0x1 },
    { 0x1, 0x0, 0x1 }
};

const UnkFuncPtr_ov104_0222E930 Unk_ov104_0223F674[] = {
    ov104_0222FCA0,
    ov104_0222FCA4,
    ov104_0222FCB0,
    ov104_0222FCC4,
    ov104_0222FCF0,
    ov104_0222FD18,
    ov104_0222FD6C,
    ov104_0222FD84,
    ov104_0222FD9C,
    ov104_0222FDB8,
    ov104_0222FE30,
    ov104_0222FE48,
    ov104_0222FE80,
    ov104_0222FE98,
    ov104_0222FEA4,
    ov104_0222FEDC,
    ov104_0222FF0C,
    ov104_0222FF3C,
    ov104_0222FF84,
    ov104_0222FF90,
    ov104_0222FFD8,
    ov104_0222FFFC,
    ov104_02230058,
    ov104_022300B8,
    ov104_022300DC,
    ov104_02230108,
    ov104_0223014C,
    ov104_022301A8,
    ov104_02230208,
    ov104_02230234,
    ov104_02230250,
    ov104_02230260,
    ov104_0222FDE8,
    ov104_0222FE08,
    ov104_022302E8,
    ov104_022303A8,
    ov104_022303C8,
    ov104_022304A0,
    ov104_022304C8,
    ov104_02230508,
    ov104_0223050C,
    ov104_022305B8,
    ov104_022305DC,
    ov104_02230640,
    ov104_0223066C,
    ov104_02230708,
    ov104_02230728,
    ov104_02230760,
    ov104_02230790,
    ov104_022307D8,
    ov104_02230810,
    ov104_02230830,
    ov104_02230910,
    ov104_02230FA4,
    ov104_02230FEC,
    ov104_02230FF8,
    ov104_0223102C,
    ov104_02231050,
    ov104_02231068,
    ov104_02231090,
    ov104_022310E0,
    ov104_022310EC,
    ov104_02231118,
    ov104_02231A28,
    ov104_02231AF4,
    ov104_02231B20,
    ov104_02231B54,
    ov104_02231B74,
    ov104_02231BA8,
    ov104_02231D1C,
    ov104_02231D8C,
    ov104_02231DAC,
    ov104_02231E30,
    ov104_02231E54,
    ov104_02231E80,
    ov104_02231EA4,
    ov104_02231BD4,
    ov104_02231C44,
    ov104_02231C70,
    ov104_02231CE4,
    ov104_02236090,
    ov104_022360A8,
    ov104_022360C0,
    ov104_022308E0,
    ov104_02230900,
    ov104_02239080,
    ov104_02239090,
    ov104_022390A0,
    ov104_022390D8,
    ov104_022390E8,
    ov104_0223910C,
    ov104_0223911C,
    ov104_022332B4,
    ov104_022332F4,
    ov104_02233310,
    ov104_02233324,
    ov104_0223338C,
    ov104_022333B4,
    ov104_022333F8,
    ov104_0223348C,
    ov104_022334A0,
    ov104_022334B4,
    ov104_022334C8,
    ov104_022334DC,
    ov104_022338E0,
    ov104_022338FC,
    ov104_0223392C,
    ov104_0223397C,
    ov104_02230958,
    ov104_02230970,
    ov104_02230B50,
    ov104_02230BB0,
    ov104_02230BBC,
    ov104_02231EC4,
    ov104_02230BE4,
    ov104_02230C04,
    ov104_02230C74,
    ov104_02230C88,
    ov104_02234D50,
    ov104_02230CAC,
    ov104_02230CC4,
    ov104_02230CD4,
    ov104_02230CF4,
    ov104_02230DC4,
    ov104_02230DF0,
    ov104_02230E20,
    ov104_02230E40,
    ov104_02230EB8,
    ov104_02230ED8,
    ov104_02230EFC,
    ov104_02230F28,
    ov104_02230F6C,
    ov104_02239130,
    ov104_022392C0,
    ov104_02239300,
    ov104_02239314,
    ov104_02239364,
    ov104_0223939C,
    ov104_02239400,
    ov104_02234838,
    ov104_0223488C,
    ov104_022348A8,
    ov104_022348BC,
    ov104_02234994,
    ov104_022349B8,
    ov104_02234A1C,
    ov104_02234C80,
    ov104_02234C9C,
    ov104_02234CCC,
    ov104_02234D18,
    ov104_02231D10,
    ov104_022358E8,
    ov104_0223594C,
    ov104_02235968,
    ov104_0223597C,
    ov104_02235A24,
    ov104_02235AAC,
    ov104_02235AE8,
    ov104_02235B98,
    ov104_02235BAC,
    ov104_02235BC0,
    ov104_02235F9C,
    ov104_02235FB8,
    ov104_02235FE8,
    ov104_022359D0,
    ov104_02236038,
    ov104_022360D8,
    ov104_02236120,
    ov104_02236150,
    ov104_0223617C,
    ov104_022395F0,
    ov104_02239610,
    ov104_02239624,
    ov104_02239660,
    ov104_022396A4,
    ov104_022396D4,
    ov104_0223971C,
    ov104_02239794,
    ov104_022397B0,
    ov104_02239B14,
    ov104_02239BF4,
    ov104_02239C10,
    ov104_02239C44,
    ov104_02231ED8,
    ov104_02237378,
    ov104_022373DC,
    ov104_022373F8,
    ov104_02237460,
    ov104_022375F8,
    ov104_02237720,
    ov104_02237734,
    ov104_02237748,
    ov104_02237CAC,
    ov104_02237CC8,
    ov104_02237CF8,
    ov104_0223740C,
    ov104_02237D48,
    ov104_02237D84,
    ov104_02237D98,
    ov104_02234D6C,
    ov104_02231EFC,
    ov104_02231F34,
    ov104_02231F44,
    ov104_02231F5C
};

const u32 Unk_ov104_0223F63C = NELEMS(Unk_ov104_0223F674);

u16 *ov104_0222FBE4(UnkStruct_ov104_0222E930 *param0)
{
    u16 *v0;
    u16 v1 = ov104_0222EA48(param0);

    v0 = ov104_0222FC14(param0, v1);

    if (v0 == NULL) {
        (void)0;
    }

    GF_ASSERT(v0 != NULL);
    return v0;
}

u16 ov104_0222FC00(UnkStruct_ov104_0222E930 *param0)
{
    return ov104_0222FC8C(param0, ov104_0222EA48(param0));
}

u16 *ov104_0222FC14(UnkStruct_ov104_0222E930 *param0, u16 param1)
{
    if (param1 < 0x8000) {
        return NULL;
    } else if (param1 < ((0x8000 + 7) + 1)) {
        return &param0->unk_08[param1 - 0x8000];
    } else if (param1 < ((((0x8000 + 7) + 1) + 7) + 1)) {
        return ov104_0222E91C(param0->unk_00, param1 - ((0x8000 + 7) + 1));
    } else if (param1 < ((((((0x8000 + 7) + 1) + 7) + 1) + 3) + 1)) {
        return &param0->unk_78[param1 - ((((0x8000 + 7) + 1) + 7) + 1)];
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

u16 ov104_0222FC8C(UnkStruct_ov104_0222E930 *param0, u16 param1)
{
    u16 *v0 = ov104_0222FC14(param0, param1);

    if (v0 == NULL) {
        return param1;
    }

    return *v0;
}

static BOOL ov104_0222FCA0(UnkStruct_ov104_0222E930 *param0)
{
    return 0;
}

static BOOL ov104_0222FCA4(UnkStruct_ov104_0222E930 *param0)
{
    ov104_0222E980(param0);
    return 0;
}

static BOOL ov104_0222FCB0(UnkStruct_ov104_0222E930 *param0)
{
    ov104_0222E980(param0);
    sub_0209B9B4(param0->unk_00->unk_00);

    return 0;
}

static BOOL ov104_0222FCC4(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u16 v1;

    v1 = ov104_0222FC00(param0);

    sub_0209B9BC(v0->unk_00, v1, 0xffff);
    ov104_0222E974(param0, ov104_0222FCEC);

    return 1;
}

static BOOL ov104_0222FCEC(UnkStruct_ov104_0222E930 *param0)
{
    return 1;
}

static BOOL ov104_0222FCF0(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u16 v1, v2;

    v1 = ov104_0222FC00(param0);
    v2 = ov104_0222FC00(param0);

    sub_0209B9BC(v0->unk_00, v1, v2);
    ov104_0222E980(param0);

    return 0;
}

static BOOL ov104_0222FD18(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0 = ov104_0222EA48(param0);
    u16 v1 = ov104_0222EA48(param0);
    u16 *v2 = ov104_0222FC14(param0, v1);

    *v2 = v0;
    param0->unk_78[0] = v1;

    ov104_0222E974(param0, ov104_0222FD4C);
    return 1;
}

static BOOL ov104_0222FD4C(UnkStruct_ov104_0222E930 *param0)
{
    u16 *v0 = ov104_0222FC14(param0, param0->unk_78[0]);

    (*v0)--;

    if (*v0 == 0) {
        return 1;
    }

    return 0;
}

static BOOL ov104_0222FD6C(UnkStruct_ov104_0222E930 *param0)
{
    u16 *v0;

    v0 = ov104_0222FBE4(param0);
    *v0 = ov104_0222EA48(param0);

    return 0;
}

static BOOL ov104_0222FD84(UnkStruct_ov104_0222E930 *param0)
{
    u16 *v0;
    u16 *v1;

    v0 = ov104_0222FBE4(param0);
    v1 = ov104_0222FBE4(param0);

    *v0 = *v1;

    return 0;
}

static BOOL ov104_0222FD9C(UnkStruct_ov104_0222E930 *param0)
{
    u16 *v0;
    u16 v1;

    v0 = ov104_0222FBE4(param0);
    *v0 += ov104_0222FC00(param0);

    return 0;
}

static BOOL ov104_0222FDB8(UnkStruct_ov104_0222E930 *param0)
{
    u16 *v0;
    u16 v1;

    v0 = ov104_0222FBE4(param0);
    *v0 -= ov104_0222FC00(param0);

    return 0;
}

static BOOL ov104_0222FDD4(u16 param0, u16 param1)
{
    if (param0 < param1) {
        return 0;
    } else if (param0 == param1) {
        return 1;
    }

    return 2;
}

static BOOL ov104_0222FDE8(UnkStruct_ov104_0222E930 *param0)
{
    u16 *v0;
    u16 v1, v2;

    v1 = ov104_0222FC00(param0);
    v2 = ov104_0222EA48(param0);

    param0->unk_8C = ov104_0222FDD4(v1, v2);

    return 0;
}

static BOOL ov104_0222FE08(UnkStruct_ov104_0222E930 *param0)
{
    u16 *v0;
    u16 *v1;
    u16 v2, v3;

    v0 = ov104_0222FBE4(param0);
    v1 = ov104_0222FBE4(param0);

    param0->unk_8C = ov104_0222FDD4(*v0, *v1);

    return 0;
}

void ov104_0222FE2C(UnkStruct_ov104_0222E930 *param0, u8 *param1)
{
    param0->unk_1C = param1;
}

static BOOL ov104_0222FE30(UnkStruct_ov104_0222E930 *param0)
{
    s32 v0;

    v0 = (s32)ov104_0222EA60(param0);
    ov104_0222FE2C(param0, (u8 *)(param0->unk_1C + v0));

    return 0;
}

static BOOL ov104_0222FE48(UnkStruct_ov104_0222E930 *param0)
{
    u8 v0;
    s32 v1;

    v0 = (*((param0)->unk_1C++));
    v1 = (s32)ov104_0222EA60(param0);

    if (Unk_ov104_0223F648[v0][param0->unk_8C] == 1) {
        ov104_0222FE2C(param0, (u8 *)(param0->unk_1C + v1));
    }

    return 0;
}

static BOOL ov104_0222FE80(UnkStruct_ov104_0222E930 *param0)
{
    s32 v0 = (s32)ov104_0222EA60(param0);

    ov104_0222EA2C(param0, (u8 *)(param0->unk_1C + v0));
    return 0;
}

static BOOL ov104_0222FE98(UnkStruct_ov104_0222E930 *param0)
{
    ov104_0222EA3C(param0);
    return 0;
}

static BOOL ov104_0222FEA4(UnkStruct_ov104_0222E930 *param0)
{
    u8 v0;
    s32 v1;

    v0 = (*((param0)->unk_1C++));
    v1 = (s32)ov104_0222EA60(param0);

    if (Unk_ov104_0223F648[v0][param0->unk_8C] == 1) {
        ov104_0222EA2C(param0, (u8 *)(param0->unk_1C + v1));
    }

    return 0;
}

static BOOL ov104_0222FEDC(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_0222FEDC v0;
    u16 v1 = ov104_0222EA48(param0);

    v0.unk_00 = 0;
    v0.unk_01 = 0;
    v0.unk_02 = 1;
    v0.unk_03 = 0;

    ov104_02231F74(param0->unk_00, param0->unk_80, v1, 0, &v0);

    return 0;
}

static BOOL ov104_0222FF0C(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0 = ov104_0222EA48(param0);

    ov104_02231F74(param0->unk_00, param0->unk_80, v0, 0, NULL);
    ov104_0222E974(param0, ov104_0222FF6C);
    return 1;
}

static BOOL ov104_0222FF3C(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0 = ov104_0222EA48(param0);

    ov104_02231F74(param0->unk_00, param0->unk_80, v0, 1, NULL);
    ov104_0222E974(param0, ov104_0222FF6C);
    return 1;
}

static BOOL ov104_0222FF6C(UnkStruct_ov104_0222E930 *param0)
{
    if (Text_IsPrinterActive(param0->unk_00->unk_50) == 0) {
        return 1;
    }

    return 0;
}

static BOOL ov104_0222FF84(UnkStruct_ov104_0222E930 *param0)
{
    ov104_02232088(param0->unk_00);
    return 0;
}

static BOOL ov104_0222FF90(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0 = ov104_0222EA48(param0);
    u16 v1 = ov104_0222EA48(param0);
    u16 v2 = ov104_0222EA48(param0);
    u16 v3 = ov104_0222EA48(param0);

    sub_0200F174(0, v2, v2, v3, v0, v1, 11);
    sub_0200F32C(0);
    sub_0200F32C(1);

    return 0;
}

static BOOL ov104_0222FFD8(UnkStruct_ov104_0222E930 *param0)
{
    ov104_0222E974(param0, ov104_0222FFE8);
    return 1;
}

static BOOL ov104_0222FFE8(UnkStruct_ov104_0222E930 *param0)
{
    if (ScreenWipe_Done() == 1) {
        return 1;
    }

    return 0;
}

static BOOL ov104_0222FFFC(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u8 v1 = (*((param0)->unk_1C++));
    u8 v2 = (*((param0)->unk_1C++));
    u8 v3 = (*((param0)->unk_1C++));
    u8 v4 = (*((param0)->unk_1C++));
    u16 v5 = ov104_0222EA48(param0);

    v0->unk_60 = ov104_02232258(v0, v1, v2, v3, v4, ov104_0222FC14(param0, v5), v0->unk_44, NULL);
    param0->unk_78[0] = v5;

    return 1;
}

static BOOL ov104_02230058(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u8 v1 = (*((param0)->unk_1C++));
    u8 v2 = (*((param0)->unk_1C++));
    u8 v3 = (*((param0)->unk_1C++));
    u8 v4 = (*((param0)->unk_1C++));
    u16 v5 = ov104_0222EA48(param0);

    v0->unk_60 = ov104_02232258(v0, v1, v2, v3, v4, ov104_0222FC14(param0, v5), v0->unk_44, param0->unk_80);
    param0->unk_78[0] = v5;

    return 1;
}

static BOOL ov104_022300B8(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0, v1, v2;
    UnkStruct_ov104_022320B4 *v3 = param0->unk_00;

    v0 = ov104_0222EA48(param0);
    v1 = 0xff;
    v2 = ov104_0222EA48(param0);

    ov104_022322A8(v3->unk_60, v0, v1, v2);
    return 0;
}

static BOOL ov104_022300DC(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0, v1, v2;
    UnkStruct_ov104_022320B4 *v3 = param0->unk_00;

    v0 = ov104_0222EA48(param0);
    v1 = ov104_0222EA48(param0);
    v2 = ov104_0222EA48(param0);

    ov104_022322A8(v3->unk_60, v0, v1, v2);
    return 0;
}

static BOOL ov104_02230108(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;

    ov104_022322B0(v0->unk_60);
    ov104_0222E974(param0, ov104_02230124);

    return 1;
}

static BOOL ov104_02230124(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u16 *v1 = ov104_0222FC14(param0, param0->unk_78[0]);

    if (*v1 == 0xeeee) {
        return 0;
    }

    v0->unk_60 = NULL;
    return 1;
}

static BOOL ov104_0223014C(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u8 v1 = (*((param0)->unk_1C++));
    u8 v2 = (*((param0)->unk_1C++));
    u8 v3 = (*((param0)->unk_1C++));
    u8 v4 = (*((param0)->unk_1C++));
    u16 v5 = ov104_0222EA48(param0);

    v0->unk_60 = ov104_022325FC(v0, v1, v2, v3, v4, ov104_0222FC14(param0, v5), v0->unk_44, NULL);
    param0->unk_78[0] = v5;

    return 1;
}

static BOOL ov104_022301A8(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u8 v1 = (*((param0)->unk_1C++));
    u8 v2 = (*((param0)->unk_1C++));
    u8 v3 = (*((param0)->unk_1C++));
    u8 v4 = (*((param0)->unk_1C++));
    u16 v5 = ov104_0222EA48(param0);

    v0->unk_60 = ov104_022325FC(v0, v1, v2, v3, v4, ov104_0222FC14(param0, v5), v0->unk_44, param0->unk_80);
    param0->unk_78[0] = v5;

    return 1;
}

static BOOL ov104_02230208(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0, v1, v2;
    UnkStruct_ov104_022320B4 *v3 = param0->unk_00;

    v0 = ov104_0222EA48(param0);
    v1 = ov104_0222EA48(param0);
    v2 = ov104_0222EA48(param0);

    ov104_0223261C(v3->unk_60, v0, v1, v2);
    return 0;
}

static BOOL ov104_02230234(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;

    ov104_02232624(v0->unk_60);
    ov104_0222E974(param0, ov104_02230124);

    return 1;
}

static BOOL ov104_02230250(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;

    ov104_02232B5C(v0->unk_60);
    return 1;
}

static BOOL ov104_02230260(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = ov104_0222E924(v0);
    u16 v2 = ov104_0222EA48(param0);
    u8 v3 = (*((param0)->unk_1C++));

    v0->unk_74 = sub_02002054(v1->unk_00, &Unk_ov104_0223F640, ((1024 - (18 + 12)) - 9), 12, v3, v0->unk_34);
    param0->unk_78[0] = v2;

    ov104_0222E974(param0, ov104_022302B4);

    return 1;
}

static BOOL ov104_022302B4(UnkStruct_ov104_0222E930 *param0)
{
    u32 v0;
    UnkStruct_ov104_022320B4 *v1 = param0->unk_00;
    u16 *v2 = ov104_0222FC14(param0, param0->unk_78[0]);

    v0 = sub_02002114(v1->unk_74, v1->unk_34);

    if (v0 == 0xffffffff) {
        return 0;
    }

    if (v0 == 0) {
        *v2 = 0;
    } else {
        *v2 = 1;
    }

    return 1;
}

static BOOL ov104_022302E8(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    const u8 *v2;
    UnkStruct_ov104_0223C688 v3;
    s32 v4;

    v4 = ov104_0222EA60(param0);
    v2 = param0->unk_1C;

    param0->unk_1C = (u8 *)(param0->unk_1C + v4);

    while (TRUE) {
        v3.unk_00 = ov104_0222FC00(param0);

        if (v3.unk_00 == 0xfd13) {
            break;
        }

        v3.unk_02 = (*((param0)->unk_1C++));

        if (v3.unk_00 == 0xeeee) {
            const TrainerInfo *v5;
            UnkStruct_ov104_02230BE4 *v6;

            v6 = sub_0209B970(v0->unk_00);
            v5 = SaveData_GetTrainerInfo(v6->unk_08);
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

    param0->unk_1C = v2;
    return 0;
}

static BOOL ov104_022303A8(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2;

    v2 = ov104_0222FC00(param0);
    ov104_0223D148(v1, v2);

    return 0;
}

static BOOL ov104_022303C8(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    const u8 *v2;
    s32 v3;
    UnkStruct_ov104_0223D570 v4;
    int v5;

    v3 = ov104_0222EA60(param0);
    v2 = param0->unk_1C;

    param0->unk_1C = (u8 *)(param0->unk_1C + v3);

    while (TRUE) {
        v5 = -1;
        v4.unk_04 = ov104_0222FC00(param0);

        if (v4.unk_04 == 0xfd13) {
            break;
        }

        v4.unk_00 = ov104_0222FC00(param0);
        v4.unk_0A = (*((param0)->unk_1C++));
        v4.unk_06 = ov104_0222EA48(param0) + -8;
        v4.unk_08 = ov104_0222EA48(param0) + -16;
        v4.unk_0B = (*((param0)->unk_1C++));
        v4.unk_0C = (*((param0)->unk_1C++));
        v4.unk_02 = 0;

        if (v4.unk_00 == 0xeeee) {
            const TrainerInfo *v6;
            UnkStruct_ov104_02230BE4 *v7;

            v7 = sub_0209B970(v0->unk_00);
            v6 = SaveData_GetTrainerInfo(v7->unk_08);
            v4.unk_00 = ov104_0222E5F0(v6);
            v5 = (32 - 1);
        } else if (v4.unk_00 == 0xeeef) {
            const TrainerInfo *v8;
            int v9;

            v9 = (*((param0)->unk_1C++));
            v8 = CommInfo_TrainerInfo(v9);
            v4.unk_00 = ov104_0222E5F0(v8);
        } else {
            (void)0;
        }

        ov104_0223D180(v1, &v4, v5);
    }

    param0->unk_1C = v2;
    return 0;
}

static BOOL ov104_022304A0(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    UnkStruct_ov63_0222BEC0 *v2;
    u16 v3;

    v3 = ov104_0222FC00(param0);
    v2 = ov63_0222BF18(v1->unk_14, v3);

    ov104_0223D200(v1, v2);

    return 0;
}

static BOOL ov104_022304C8(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2 = ov104_0222FC00(param0);
    u8 v3 = (*((param0)->unk_1C++));
    UnkStruct_ov63_0222CE44 *v4 = NULL;

    ov104_0223D258(v1, v2, NULL, &v4);
    GF_ASSERT(v4 != NULL);
    ov63_0222D008(v4, v3);

    return 0;
}

static BOOL ov104_02230508(UnkStruct_ov104_0222E930 *param0)
{
    return 0;
}

static BOOL ov104_0223050C(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u8 *v2;
    u16 v3 = ov104_0222FC00(param0);
    u32 v4 = (s32)ov104_0222EA60(param0);
    UnkStruct_ov104_0223C634 *v5;

    v5 = ov104_0223D5A8(v0->unk_00, v3);

    if (v5 == NULL) {
        GF_ASSERT(0);
    }

    v2 = (u8 *)(param0->unk_1C + v4);
    ov104_0223056C(v3, v5, (UnkStruct_ov104_02232B78_sub1 *)v2, v1->unk_30, &v0->unk_59, v0->unk_34);
    v0->unk_59++;

    return 0;
}

static void ov104_0223056C(u16 param0, UnkStruct_ov104_0223C634 *param1, const UnkStruct_ov104_02232B78_sub1 *param2, UnkStruct_ov63_0222D77C *param3, u8 *param4, int param5)
{
    UnkStruct_ov104_02232B78 *v0;

    v0 = Heap_AllocFromHeap(param5, sizeof(UnkStruct_ov104_02232B78));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_02232B78));

    v0->unk_14 = param1;
    v0->unk_0C = param2;
    v0->unk_10 = param3;
    v0->unk_04 = param0;
    v0->unk_08 = param4;

    GF_ASSERT(param1->unk_38 == NULL);
    param1->unk_38 = SysTask_Start(ov104_02232B78, v0, (60000 + 100));
}

static BOOL ov104_022305B8(UnkStruct_ov104_0222E930 *param0)
{
    ov104_0222E974(param0, ov104_022305C8);
    return 1;
}

static BOOL ov104_022305C8(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;

    if (v0->unk_59 == 0) {
        return 1;
    }

    return 0;
}

static BOOL ov104_022305DC(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    const u8 *v2;
    s32 v3;
    u16 v4;
    NARC *v5;

    v3 = ov104_0222EA60(param0);
    v2 = param0->unk_1C;
    param0->unk_1C = (u8 *)(param0->unk_1C + v3);
    v5 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, v0->unk_34);

    while (TRUE) {
        v4 = ov104_0222FC00(param0);

        if (v4 == 0xfd13) {
            break;
        }

        ov104_0223D768(v1->unk_34.unk_00, v1->unk_34.unk_04, v5, v1->unk_04, v4);
        ov104_0223D29C(v1, v4);
    }

    NARC_dtor(v5);
    param0->unk_1C = v2;

    return 0;
}

static BOOL ov104_02230640(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2;

    v2 = ov104_0222FC00(param0);

    ov104_0223D7EC(v1->unk_34.unk_04, v2);
    ov104_0223D2CC(v1, v2);

    return 0;
}

static BOOL ov104_0223066C(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    const u8 *v2;
    s32 v3;
    u16 v4, v5, v6, v7, v8, v9;
    CellActorData *v10;

    v3 = ov104_0222EA60(param0);
    v2 = param0->unk_1C;

    param0->unk_1C = (u8 *)(param0->unk_1C + v3);

    while (TRUE) {
        v4 = ov104_0222FC00(param0);

        if (v4 == 0xfd13) {
            break;
        }

        v5 = ov104_0222FC00(param0);
        v6 = ov104_0222FC00(param0);
        v7 = ov104_0222FC00(param0);
        v8 = (*((param0)->unk_1C++));
        v9 = (*((param0)->unk_1C++));
        v10 = ov104_0223D2FC(v1, v9, v4);

        SpriteActor_SetSpritePositionXY(v10, v5, v6);
        SpriteActor_EnableObject(v10, v7);

        ov104_0223D378(v1, v9, v8);
    }

    param0->unk_1C = v2;
    return 0;
}

static BOOL ov104_02230708(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u16 v1;
    UnkStruct_ov104_0223C4CC *v2 = sub_0209B974(v0->unk_00);

    v1 = ov104_0222FC00(param0);
    ov104_0223D348(v2, v1);

    return 0;
}

static BOOL ov104_02230728(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2 = ov104_0222FC00(param0);
    u8 v3 = (*((param0)->unk_1C++));
    CellActorData *v4;

    v4 = ov104_0223D370(v1, v2);

    GF_ASSERT(v4 != NULL);
    SpriteActor_EnableObject(v4, v3);

    return 0;
}

static BOOL ov104_02230760(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2 = ov104_0222FC00(param0);
    CellActorData *v3;

    v3 = ov104_0223D370(v1, v2);

    GF_ASSERT(v3 != NULL);
    sub_0200D7CC(v3->unk_00, 1);

    return 0;
}

static BOOL ov104_02230790(UnkStruct_ov104_0222E930 *param0)
{
    CellActorData *v0;
    UnkStruct_ov104_022320B4 *v1 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v2 = sub_0209B974(v1->unk_00);
    u16 v3 = ov104_0222FC00(param0);
    u16 v4 = ov104_0222FC00(param0);

    v0 = ov104_0223D370(v2, v3);
    GF_ASSERT(v0 != NULL);

    if (v4 == 0) {
        sub_0200D808(v0->unk_00, GX_OAM_MODE_NORMAL);
    } else {
        sub_0200D808(v0->unk_00, GX_OAM_MODE_XLU);
    }

    return 0;
}

static BOOL ov104_022307D8(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0 = ov104_0222FC00(param0);
    u16 v1 = ov104_0222FC00(param0);
    CellActorData *v2;
    UnkStruct_ov104_0223C4CC *v3 = sub_0209B974(param0->unk_00->unk_00);

    v2 = ov104_0223D370(v3, v0);

    sub_0200D364(v2, v1);
    ov104_0223D378(v3, v0, 1);

    return 0;
}

static BOOL ov104_02230810(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0 = ov104_0222FC00(param0);
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(param0->unk_00->unk_00);

    ov104_0223D378(v1, v0, 0);
    return 0;
}

static BOOL ov104_02230830(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0 = ov104_0222FC00(param0);

    param0->unk_78[0] = v0;
    ov104_0222E974(param0, ov104_02230850);

    return 1;
}

static BOOL ov104_02230850(UnkStruct_ov104_0222E930 *param0)
{
    CellActorData *v0;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(param0->unk_00->unk_00);

    v0 = ov104_0223D370(v1, param0->unk_78[0]);

    if ((ov104_0223D3A4(v1, param0->unk_78[0]) == 0) || (sub_0200D3B8(v0) == 0)) {
        return 1;
    }

    return 0;
}

static void ov104_0223088C(UnkStruct_ov104_0222E930 *param0, int param1, int param2)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    s16 *v1;
    u16 v2;
    int v3;

    GF_ASSERT(param2 <= 7);

    v1 = Heap_AllocFromHeap(v0->unk_34, sizeof(s16) * param2);
    v2 = ov104_0222FC00(param0);

    for (v3 = 0; v3 < 3; v3++) {
        v1[v3] = ov104_0222FC00(param0);
    }

    ov104_0223D860(v0->unk_00, v2, 1, v1, 3);
    Heap_FreeToHeap(v1);
}

static BOOL ov104_022308E0(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0;

    v0 = ov104_0222FC00(param0);
    ov104_0223D860(param0->unk_00->unk_00, v0, 0, NULL, 0);

    return 0;
}

static BOOL ov104_02230900(UnkStruct_ov104_0222E930 *param0)
{
    ov104_0223088C(param0, 1, 3);
    return 0;
}

static BOOL ov104_02230910(UnkStruct_ov104_0222E930 *param0)
{
    void *v0;
    UnkStruct_ov104_02230BE4 *v1;

    v1 = sub_0209B970(param0->unk_00->unk_00);
    v0 = sub_0208712C(11, 0, 0, 8, (void *)v1->unk_04);

    sub_0209B988(param0->unk_00->unk_00, &Unk_020F2DAC, v0, 0, ov104_02230950);

    return 1;
}

static void ov104_02230950(void *param0)
{
    sub_0208716C(param0);
}

static BOOL ov104_02230958(UnkStruct_ov104_0222E930 *param0)
{
    int v0;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);

    sub_0202F1F8(v1->unk_08, 11, &v0);
    return 0;
}

static BOOL ov104_02230970(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u16 v1 = ov104_0222EA48(param0);
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

    ov104_0222E974(param0, ov104_022309DC);
    return 1;
}

static BOOL ov104_022309DC(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);
    int v2;

    v2 = sub_0202F41C(v1->unk_08, v0->unk_B4, v0->unk_B6, 0, &v0->unk_B0, &v0->unk_B2);

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
    int v0;

    v0 = (UnkEnum_0202F510_15);

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

static BOOL ov104_02230B50(UnkStruct_ov104_0222E930 *param0)
{
    int v0;
    BattleParams *v1;
    UnkStruct_ov104_02230BE4 *v2 = sub_0209B970(param0->unk_00->unk_00);

    v1 = Heap_AllocFromHeap(11, sizeof(BattleParams));
    MI_CpuClear8(v1, sizeof(BattleParams));

    sub_0202F298(v2->unk_08, 11, &v0, v1, 0);
    sub_02004550(5, 1119, 1);
    sub_0209B988(param0->unk_00->unk_00, &gBattleOverlayTemplate, v1, 1, NULL);

    return 1;
}

static BOOL ov104_02230BB0(UnkStruct_ov104_0222E930 *param0)
{
    sub_0202F22C();
    return 0;
}

static BOOL ov104_02230BBC(UnkStruct_ov104_0222E930 *param0)
{
    int v0;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);
    u16 *v2 = ov104_0222FBE4(param0);

    *v2 = sub_0202F330(v1->unk_08, 11, &v0, 0);
    return 0;
}

static BOOL ov104_02230BE4(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(param0->unk_00->unk_00);
    u16 *v1 = ov104_0222FBE4(param0);

    if (SaveData_Save(v0->unk_08) == 2) {
        (void)0;
    } else {
        (void)0;
    }

    return 0;
}

static BOOL ov104_02230C04(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);
    u16 *v2 = ov104_0222FBE4(param0);

    ResetLock(4);
    InitHeapCanary(v0->unk_34);
    SaveData_SaveStateInit(v1->unk_08, 2);

    ov104_0222E974(param0, ov104_02230C3C);
    return 1;
}

static BOOL ov104_02230C3C(UnkStruct_ov104_0222E930 *param0)
{
    int v0;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);

    v0 = SaveData_SaveStateMain(v1->unk_08);

    if (v0 == 2) {
        FreeHeapCanary();
        ResetUnlock(4);
        return 1;
    }

    if (v0 == 3) {
        FreeHeapCanary();
        ResetUnlock(4);
        return 1;
    }

    return 0;
}

static BOOL ov104_02230C74(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(param0->unk_00->unk_00);

    SaveDataExtra_Init(v0->unk_08);
    return 0;
}

static BOOL ov104_02230C88(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(param0->unk_00->unk_00);
    u16 *v1 = ov104_0222FBE4(param0);

    *v1 = SaveData_MiscSaveBlock_InitFlag(v0->unk_08);
    return 0;
}

static BOOL ov104_02230CAC(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;

    v0->unk_7C = sub_0200E7FC(&v0->unk_64, (1024 - (18 + 12)));
    return 0;
}

static BOOL ov104_02230CC4(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;

    DeleteWaitDial(v0->unk_7C);
    return 0;
}

static BOOL ov104_02230CD4(UnkStruct_ov104_0222E930 *param0)
{
    u8 v0 = (*((param0)->unk_1C++));
    u16 v1 = ov104_0222FC00(param0);

    StringTemplate_SetItemName(param0->unk_00->unk_44, v0, v1);
    return 0;
}

static BOOL ov104_02230CF4(UnkStruct_ov104_0222E930 *param0)
{
    u8 v0 = (*((param0)->unk_1C++));
    u16 v1 = ov104_0222FC00(param0);

    StringTemplate_SetNumber(param0->unk_00->unk_44, v0, v1, ov104_02230D28(v1), 1, 1);
    return 0;
}

static u16 ov104_02230D28(u32 param0)
{
    if (param0 / 10 == 0) {
        return 1;
    } else if (param0 / 100 == 0) {
        return 2;
    } else if (param0 / 1000 == 0) {
        return 3;
    } else if (param0 / 10000 == 0) {
        return 4;
    } else if (param0 / 100000 == 0) {
        return 5;
    } else if (param0 / 1000000 == 0) {
        return 6;
    } else if (param0 / 10000000 == 0) {
        return 7;
    } else if (param0 / 100000000 == 0) {
        return 8;
    }

    return 1;
}

static BOOL ov104_02230DC4(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(param0->unk_00->unk_00);
    u8 v1 = (*((param0)->unk_1C++));

    StringTemplate_SetPlayerName(param0->unk_00->unk_44, v1, SaveData_GetTrainerInfo(v0->unk_08));
    return 0;
}

static BOOL ov104_02230DF0(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(param0->unk_00->unk_00);
    u8 v1 = (*((param0)->unk_1C++));

    StringTemplate_SetPlayerName(param0->unk_00->unk_44, v1, CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1));
    return 0;
}

BOOL ov104_02230E20(UnkStruct_ov104_0222E930 *param0)
{
    u8 v0 = (*((param0)->unk_1C++));
    u16 v1 = ov104_0222FC00(param0);

    StringTemplate_SetMoveName(param0->unk_00->unk_44, v0, v1);
    return 0;
}

BOOL ov104_02230E40(UnkStruct_ov104_0222E930 *param0)
{
    u8 v0 = (*((param0)->unk_1C++));
    u16 v1 = ov104_0222FC00(param0);
    u16 v2 = ov104_0222EA48(param0);
    u8 v3 = (*((param0)->unk_1C++));
    Strbuf *v4 = ov104_02230E90(v1, 11);

    StringTemplate_SetStrbuf(param0->unk_00->unk_44, v0, v4, v2, v3, GAME_LANGUAGE);
    Strbuf_Free(v4);

    return 0;
}

static Strbuf *ov104_02230E90(u16 param0, u32 param1)
{
    MessageLoader *v0;
    Strbuf *v1;

    v0 = MessageLoader_Init(1, 26, 412, param1);
    v1 = MessageLoader_GetNewStrbuf(v0, param0);

    MessageLoader_Free(v0);
    return v1;
}

static BOOL ov104_02230EB8(UnkStruct_ov104_0222E930 *param0)
{
    u8 v0 = (*((param0)->unk_1C++));
    u16 v1 = ov104_0222FC00(param0);

    StringTemplate_SetPokemonTypeName(param0->unk_00->unk_44, v0, v1);
    return 0;
}

static BOOL ov104_02230ED8(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(param0->unk_00->unk_00);
    u8 v1 = (*((param0)->unk_1C++));

    StringTemplate_SetRivalName(param0->unk_00->unk_44, v1, v0->unk_08);
    return 0;
}

static BOOL ov104_02230EFC(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(param0->unk_00->unk_00);
    u16 *v1 = ov104_0222FBE4(param0);

    *v1 = sub_0202D230(sub_0202D750(v0->unk_08), 0, 0);
    return 0;
}

static BOOL ov104_02230F28(UnkStruct_ov104_0222E930 *param0)
{
    TVBroadcast *v0;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);
    u16 v2 = ov104_0222FC00(param0);

    v0 = SaveData_TVBroadcast(v1->unk_08);

    sub_0206D0C8(v0, v2);
    GameRecords_AddToRecordValue(SaveData_GetGameRecordsPtr(v1->unk_08), RECORD_UNK_068, v2);
    sub_0202D230(sub_0202D750(v1->unk_08), v2, 5);

    return 0;
}

static BOOL ov104_02230F6C(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(param0->unk_00->unk_00);
    u16 v1 = ov104_0222FC00(param0);

    GameRecords_AddToRecordValue(SaveData_GetGameRecordsPtr(v0->unk_08), RECORD_UNK_069, v1);
    sub_0202D230(sub_0202D750(v0->unk_08), v1, 6);

    return 0;
}

static BOOL ov104_02230FA4(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0 = ov104_0222FC00(param0);

    param0->unk_78[0] = v0;

    CommTiming_StartSync(v0);
    ov104_0222E974(param0, ov104_02230FCC);

    return 1;
}

static BOOL ov104_02230FCC(UnkStruct_ov104_0222E930 *param0)
{
    int v0;

    if (CommSys_ConnectedCount() < 2) {
        v0 = 1;
    } else {
        v0 = CommTiming_IsSyncState(param0->unk_78[0]);
    }

    return v0;
}

static BOOL ov104_02230FEC(UnkStruct_ov104_0222E930 *param0)
{
    sub_020365F4();
    return 0;
}

static BOOL ov104_02230FF8(UnkStruct_ov104_0222E930 *param0)
{
    FieldCommMan_EndBattle();
    ov104_0222E974(param0, ov104_02231010);

    return 1;
}

static BOOL ov104_02231010(UnkStruct_ov104_0222E930 *param0)
{
    if (CommMan_IsInitialized() != 1) {
        if (CommServerClient_IsInitialized() != 1) {
            return 1;
        }
    }

    return 0;
}

static BOOL ov104_0223102C(UnkStruct_ov104_0222E930 *param0)
{
    u16 *v0 = ov104_0222FBE4(param0);
    u16 v1 = ov104_0222FC00(param0);

    *v0 = (LCRNG_Next() % v1);
    return 1;
}

static BOOL ov104_02231050(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_02230BE4 *v0;

    v0 = sub_0209B970(param0->unk_00->unk_00);

    HealAllPokemonInParty(Party_GetFromSavedata(v0->unk_08));
    return 0;
}

static BOOL ov104_02231068(UnkStruct_ov104_0222E930 *param0)
{
    ov104_0222E974(param0, ov104_02231078);
    return 1;
}

static BOOL ov104_02231078(UnkStruct_ov104_0222E930 *param0)
{
    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        return 1;
    }

    return 0;
}

static BOOL ov104_02231090(UnkStruct_ov104_0222E930 *param0)
{
    param0->unk_78[0] = ov104_0222FC00(param0);
    ov104_0222E974(param0, ov104_022310B0);
    return 1;
}

static BOOL ov104_022310B0(UnkStruct_ov104_0222E930 *param0)
{
    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        return 1;
    }

    param0->unk_78[0]--;

    if (param0->unk_78[0] == 0) {
        return 1;
    }

    return 0;
}

BOOL ov104_022310E0(UnkStruct_ov104_0222E930 *param0)
{
    u16 *v0 = ov104_0222FBE4(param0);

    return 1;
}

BOOL ov104_022310EC(UnkStruct_ov104_0222E930 *param0)
{
    u16 *v0;
    u16 v1 = ov104_0222EA48(param0);
    u16 v2 = ov104_0222FC00(param0);
    UnkStruct_ov104_02230BE4 *v3 = sub_0209B970(param0->unk_00->unk_00);

    v0 = VarsFlags_GetVarAddress(SaveData_GetVarsFlags(v3->unk_08), v1);
    *v0 = v2;

    return 0;
}

BOOL ov104_02231118(UnkStruct_ov104_0222E930 *param0)
{
    u16 *v0;
    u16 v1 = ov104_0222EA48(param0);
    u16 *v2 = ov104_0222FBE4(param0);
    UnkStruct_ov104_02230BE4 *v3 = sub_0209B970(param0->unk_00->unk_00);

    v0 = VarsFlags_GetVarAddress(SaveData_GetVarsFlags(v3->unk_08), v1);
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

        sub_0200F32C(0);
        sub_0200F32C(1);
        sub_0200F174(0, 32, 32, 0x0, 12, 1, 11);
        param0->unk_04++;
        break;
    default:
        if (ScreenWipe_Done() == 1) {
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

        param0->unk_28 = sub_0201A778(11, 1);

        BGL_AddWindow(param0->unk_00->unk_00, param0->unk_28, 1, 0, 0, 32, 32, 0, 0);
        sub_020038B0(param0->unk_00->unk_04, 0, 2, 0x0, 0, 16);
        BGL_FillWindow(param0->unk_28, 0);
        sub_0201A9A4(param0->unk_28);

        param0->unk_2C = ov104_0223EBA0(11);
        param0->unk_04++;
    case 2:
        ov104_0223EBF0(param0->unk_2C, 1, 1, param0->unk_28, 15);
        param0->unk_04++;
        break;
    case 3: {
        BOOL v0 = ov104_0223EC34(param0->unk_2C);

        sub_0201A9A4(param0->unk_28);

        if (v0) {
            param0->unk_04++;
        }
    } break;
    default:
        if (ScreenWipe_Done() == 1) {
            ov104_0223EBD0(param0->unk_2C);

            sub_0201ACF4(param0->unk_28);
            BGL_DeleteWindow(param0->unk_28);
            sub_0201A928(param0->unk_28, 1);
            sub_0200F344(0, 0x0);
            sub_0200F344(1, 0x0);
            sub_02019690(1, 32, 0, 11);
            sub_02019EBC(param0->unk_00->unk_00, 1);

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

        param0->unk_28 = sub_0201A778(11, 1);

        BGL_AddWindow(param0->unk_00->unk_00, param0->unk_28, 1, 0, 0, 32, 32, 0, 0);
        sub_020038B0(param0->unk_00->unk_04, 0, 2, 0x0, 0, 16);
        BGL_FillWindow(param0->unk_28, 0);
        sub_0201A9A4(param0->unk_28);

        param0->unk_2C = ov104_0223EBA0(11);
        param0->unk_04++;
    case 2:
        ov104_0223EBF0(param0->unk_2C, 1, 1, param0->unk_28, 15);
        param0->unk_04++;
        break;
    case 3: {
        BOOL v0 = ov104_0223EE44(param0->unk_2C);

        sub_0201A9A4(param0->unk_28);

        if (v0) {
            param0->unk_04++;
        }
    } break;

    default:
        if (ScreenWipe_Done() == 1) {
            ov104_0223EBD0(param0->unk_2C);

            sub_0201ACF4(param0->unk_28);
            BGL_DeleteWindow(param0->unk_28);
            sub_0201A928(param0->unk_28, 1);

            sub_0200F344(0, 0x0);
            sub_0200F344(1, 0x0);

            sub_02019690(1, 32, 0, 11);
            sub_02019EBC(param0->unk_00->unk_00, 1);

            return 0;
        }
        break;
    }

    return 1;
}

u32 ov104_022313F4(u16 param0, u16 param1)
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

    v6 = sub_02019FF0(v3->unk_00->unk_00, 2);
    v7 = sub_02019FF0(v3->unk_00->unk_00, 2);
    v8 = sub_02019FF0(v3->unk_00->unk_00, 3);
    v9 = sub_02019FF0(v3->unk_00->unk_00, 3);

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

                sub_0201D470(&v5, 0, FX32_ONE, FX32_ONE, 0);

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

        Heap_FreeToHeap(v4);
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

            sub_0201D470(&v5, 0, FX32_ONE, FX32_ONE, 0);

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
        param0->unk_24 = Heap_AllocFromHeap(94, sizeof(UnkStruct_ov104_022313FC));
        param0->unk_24->unk_604 = 1;
        param0->unk_24->unk_600 = ov104_0223F1B4(((u32)&reg_G2_BG2PA), &v0, 94);

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

        sub_0200AAE0(40, -16, 0, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 1);
        SysTask_Start(ov104_022313FC, param0, 0x1000);

        param0->unk_04++;
        break;
    case 2:
        if (sub_0200AC1C(1) == 0) {
            break;
        }

        param0->unk_10 = 1;

        sub_02019120(3, 0);
        sub_02019184(param0->unk_00->unk_00, 3, 0, 0);
        sub_02019184(param0->unk_00->unk_00, 3, 3, 0);

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
        param0->unk_24 = Heap_AllocFromHeap(94, sizeof(UnkStruct_ov104_022313FC));
        param0->unk_24->unk_604 = 2;
        param0->unk_24->unk_600 = ov104_0223F1B4(((u32)&reg_G2_BG2PA), &v0, 94);

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

        sub_0200AAE0(40, -16, 0, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 1);
        SysTask_Start(ov104_022313FC, param0, 0x1000);

        param0->unk_04++;
        break;
    case 2:
        if (sub_0200AC1C(1) == 0) {
            break;
        }

        param0->unk_10 = 1;

        sub_02019120(3, 0);
        sub_02019184(param0->unk_00->unk_00, 3, 0, 0);
        sub_02019184(param0->unk_00->unk_00, 3, 3, 0);

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
        ov104_0223F094(&param0->unk_18, 94);
        param0->unk_04++;
        break;
    case 1:
        ov104_0223F0B0(&param0->unk_18, 0, 191, ((0xffff / 192) * 2), (FX32_CONST(18)), (4 * 100), REG_BG3HOFS_ADDR, 0, (5 - 1));
        param0->unk_04++;
        break;
    default:
        break;
    }

    return 1;
}

static BOOL ov104_02231A28(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_02230BE4 *v0;
    UnkStruct_ov104_02231148 *v1;

    v0 = sub_0209B970(param0->unk_00->unk_00);
    param0->unk_78[0] = ov104_0222FC00(param0);

    sub_02004550(5, 1119, 1);

    v1 = Heap_AllocFromHeap(11, sizeof(UnkStruct_ov104_02231148));
    v1->unk_14 = sub_0209B978(param0->unk_00->unk_00);
    v1->unk_04 = 0;
    v1->unk_08 = param0->unk_78[0];
    v1->unk_00 = ov104_0222E924(param0->unk_00);

    sub_0209B980(param0->unk_00->unk_00, v1);
    ov104_0222E974(param0, ov104_02231AA8);
    sub_020038B0(v1->unk_00->unk_04, 0, 2, 0x0, 0, 1);

    return 1;
}

static BOOL ov104_02231AA8(UnkStruct_ov104_0222E930 *param0)
{
    BOOL v0;
    UnkStruct_ov104_02231148 *v1 = sub_0209B978(param0->unk_00->unk_00);

    v0 = Unk_ov104_0223F65C[v1->unk_08](v1);

    if (v0 == 0) {
        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);
        sub_0209B980(param0->unk_00->unk_00, v1->unk_14);
        Heap_FreeToHeap(v1);
    }

    return !v0;
}

static BOOL ov104_02231AF4(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0;
    UnkStruct_ov104_02230BE4 *v1;
    u16 *v2 = ov104_0222FBE4(param0);

    v1 = sub_0209B970(param0->unk_00->unk_00);

    if (TrainerInfo_Gender(SaveData_GetTrainerInfo(v1->unk_08)) == 0) {
        v0 = 0x0;
    } else {
        v0 = 0x61;
    }

    *v2 = v0;
    return 0;
}

static BOOL ov104_02231B20(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2, v3, v4;

    v2 = ov104_0222FC00(param0);
    v3 = ov104_0222FC00(param0);
    v4 = ov104_0222FC00(param0);

    ov104_0223D614(v1->unk_10, v2, v3, v4);

    return 0;
}

static BOOL ov104_02231B54(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2;

    v2 = ov104_0222FC00(param0);
    ov104_0223D68C(v1->unk_10, v2);

    return 0;
}

static BOOL ov104_02231B74(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2, v3;
    UnkStruct_02014014 *v4;

    v2 = ov104_0222FC00(param0);
    v3 = ov104_0222FC00(param0);
    v4 = ov104_0223D6D0(v1->unk_10, v2);

    sub_020146F4(v4, v3, NULL, NULL);

    return 0;
}

static BOOL ov104_02231BA8(UnkStruct_ov104_0222E930 *param0)
{
    ov104_0222E974(param0, ov104_02231BB8);
    return 1;
}

static BOOL ov104_02231BB8(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);

    if (ov104_0223D6E4(v1->unk_10) == 1) {
        return 1;
    }

    return 0;
}

static BOOL ov104_02231BD4(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2, v3, v4, v5;
    UnkStruct_ov104_0223319C *v6;

    v6 = &v1->unk_A4;

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

static BOOL ov104_02231C44(UnkStruct_ov104_0222E930 *param0)
{
    ov104_0222E974(param0, ov104_02231C54);
    return 1;
}

static BOOL ov104_02231C54(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);

    if (v1->unk_A4.unk_00 == NULL) {
        return 1;
    }

    return 0;
}

static BOOL ov104_02231C70(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);
    u16 v2, v3, v4, v5;
    UnkStruct_ov104_022331E8 *v6;

    v6 = &v1->unk_B0;

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

static BOOL ov104_02231CE4(UnkStruct_ov104_0222E930 *param0)
{
    ov104_0222E974(param0, ov104_02231CF4);
    return 1;
}

static BOOL ov104_02231CF4(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);

    if (v1->unk_B0.unk_00 == NULL) {
        return 1;
    }

    return 0;
}

static BOOL ov104_02231D10(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0 = ov104_0222EA48(param0);

    return 0;
}

static BOOL ov104_02231D1C(UnkStruct_ov104_0222E930 *param0)
{
    Party *v0;
    Pokemon *v1;
    UnkStruct_ov104_02230BE4 *v2;
    UnkStruct_ov104_0223C4CC *v3 = ov104_0222E924(param0->unk_00);
    u16 v4 = ov104_0222FC00(param0);
    u16 v5 = ov104_0222FC00(param0);
    u16 v6 = ov104_0222FC00(param0);
    u16 v7 = ov104_0222EA48(param0);
    u16 v8 = ov104_0222EA48(param0);
    u16 v9 = ov104_0222EA48(param0);

    v2 = sub_0209B970(param0->unk_00->unk_00);
    v0 = Party_GetFromSavedata(v2->unk_08);
    v1 = Party_GetPokemonBySlotIndex(v0, v4);
    v8 = 8;
    v9 = (GX_RGB(0, 0, 0));

    ov104_02232CE0(v3, v1, 11, v7, v5, v6, 0, 0, v8, v9);
    return 0;
}

static BOOL ov104_02231D8C(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_0223C4CC *v0 = ov104_0222E924(param0->unk_00);
    u16 v1 = ov104_0222EA48(param0);

    ov104_02232E80(v0, v1);
    return 0;
}

static BOOL ov104_02231DAC(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_0223C4CC *v0 = ov104_0222E924(param0->unk_00);
    u16 v1 = ov104_0222EA48(param0);
    s16 v2, v3;

    ov104_0223D554(v0, &v2, &v3);
    ov104_0223DC7C(v1, v0->unk_00, v0->unk_34.unk_00, v0->unk_34.unk_04, v0->unk_04, &param0->unk_78[0], v2, v3);
    sub_02004550(5, 1202, 1);
    ov104_0222E974(param0, ov104_02231E14);

    return 1;
}

static BOOL ov104_02231E14(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    UnkStruct_ov104_0223C4CC *v1 = sub_0209B974(v0->unk_00);

    if (param0->unk_78[0] == 1) {
        return 1;
    }

    return 0;
}

static BOOL ov104_02231E30(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_02230BE4 *v0;
    u16 v1 = ov104_0222EA48(param0);

    v0 = sub_0209B970(param0->unk_00->unk_00);
    GameRecords_IncrementRecordValue(SaveData_GetGameRecordsPtr(v0->unk_08), v1);

    return 0;
}

static BOOL ov104_02231E54(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_02230BE4 *v0;
    u16 v1 = ov104_0222EA48(param0);
    u16 v2 = ov104_0222FC00(param0);

    v0 = sub_0209B970(param0->unk_00->unk_00);
    GameRecords_AddToRecordValue(SaveData_GetGameRecordsPtr(v0->unk_08), v1, v2);

    return 0;
}

static BOOL ov104_02231E80(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_02230BE4 *v0;
    u16 v1 = ov104_0222EA48(param0);

    v0 = sub_0209B970(param0->unk_00->unk_00);
    GameRecords_IncrementTrainerScore(SaveData_GetGameRecordsPtr(v0->unk_08), v1);

    return 0;
}

static BOOL ov104_02231EA4(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_02230BE4 *v0;
    u16 *v1 = ov104_0222FBE4(param0);

    v0 = sub_0209B970(param0->unk_00->unk_00);
    *v1 = sub_0205E6D8(v0->unk_08);

    return 0;
}

static BOOL ov104_02231EC4(UnkStruct_ov104_0222E930 *param0)
{
    u16 *v0 = ov104_0222FBE4(param0);

    *v0 = sub_0202FAC0();
    return 0;
}

static BOOL ov104_02231ED8(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_0202B370 *v0;
    UnkStruct_ov104_02230BE4 *v1;

    v1 = sub_0209B970(param0->unk_00->unk_00);
    v0 = sub_0202B370(v1->unk_08);

    sub_0202B13C(v0, ov4_021D2388());
    return 0;
}

static BOOL ov104_02231EFC(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0;
    TVBroadcast *v1;
    TrainerInfo *v2;
    UnkStruct_ov104_02230BE4 *v3;

    v3 = sub_0209B970(param0->unk_00->unk_00);
    v1 = SaveData_TVBroadcast(v3->unk_08);
    v0 = ov104_0222FC00(param0);
    v2 = CommInfo_TrainerInfo(1 - CommSys_CurNetId());

    sub_0206D088(v1, v0, v2);
    return 0;
}

static BOOL ov104_02231F34(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0 = ov104_0222FC00(param0);

    sub_0203632C(v0);
    return 0;
}

static BOOL ov104_02231F44(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u8 v1 = *(param0->unk_1C++);
    ov104_0223327C(v0->unk_60, v1);
    return 1;
}

static BOOL ov104_02231F5C(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_022320B4 *v0 = param0->unk_00;
    u8 v1 = *(param0->unk_1C++);
    ov104_02233298(v0->unk_60, v1);
    return 1;
}
