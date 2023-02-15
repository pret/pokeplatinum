#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_02007C7C_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_defs/struct_02073C74.h"
#include "struct_defs/struct_02073C74_sub1.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_021C0794_decl.h"
#include "overlay105/struct_ov105_02241FF4_decl.h"
#include "overlay105/struct_ov105_02245E1C_decl.h"
#include "overlay105/struct_ov105_02245EA8_decl.h"
#include "overlay105/struct_ov105_02246060_decl.h"

#include "constdata/const_020F410C.h"

#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_020279FC.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_02081CF4.h"
#include "struct_defs/struct_02098D38.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay104/struct_ov104_02234130.h"
#include "overlay105/struct_ov105_02245AAC.h"

#include "unk_02001AF4.h"
#include "unk_02002B7C.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "game_overlay.h"
#include "unk_020067E8.h"
#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_0200762C.h"
#include "unk_020093B4.h"
#include "unk_0200A784.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_0201DBEC.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "unk_02023790.h"
#include "unk_02024220.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_020279FC.h"
#include "unk_020329E0.h"
#include "unk_02034198.h"
#include "unk_020363E8.h"
#include "unk_020393C8.h"
#include "unk_02073C2C.h"
#include "party.h"
#include "unk_0207A274.h"
#include "unk_0208C324.h"
#include "unk_0209BA80.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0223A7F4.h"
#include "overlay105/ov105_02241AE0.h"
#include "overlay105/ov105_02245AAC.h"
#include "overlay105/ov105_02245CD0.h"
#include "overlay105/ov105_02245DC4.h"
#include "overlay105/ov105_02245E54.h"
#include "overlay105/ov105_02245FB8.h"
#include "overlay105/ov105_02246214.h"

FS_EXTERN_OVERLAY(overlay104);

struct UnkStruct_ov105_02241FF4_t {
    UnkStruct_020067E8 * unk_00;
    UnkStruct_020067E8 * unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    int unk_0C;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13_0 : 1;
    u8 unk_13_1 : 1;
    u8 unk_13_2 : 1;
    u8 unk_13_3 : 1;
    u8 unk_13_4 : 1;
    u8 unk_13_5 : 1;
    u8 unk_13_6 : 1;
    u8 unk_13_7 : 1;
    u32 unk_14;
    u8 unk_18;
    u8 unk_19;
    u8 unk_1A;
    u8 unk_1B;
    UnkStruct_0200B144 * unk_1C;
    UnkStruct_0200B358 * unk_20;
    UnkStruct_02023790 * unk_24;
    UnkStruct_02023790 * unk_28;
    UnkStruct_02023790 * unk_2C[4];
    u16 unk_3C[8];
    UnkStruct_02018340 * unk_4C;
    UnkStruct_0205AA50 unk_50[10];
    UnkStruct_02081CF4 unk_F0;
    UnkStruct_02001AF4 * unk_FC;
    UnkStruct_02013A04 unk_100[4];
    UnkStruct_02002F38 * unk_120;
    UnkStruct_0207C690 * unk_124;
    UnkStruct_02007768 * unk_128;
    UnkStruct_02007C7C * unk_12C[3];
    UnkStruct_020279FC * unk_138;
    UnkStruct_021C0794 * unk_13C;
    UnkStruct_02098D38 * unk_140;
    UnkStruct_ov105_02245AAC unk_144;
    UnkStruct_ov105_02245EA8 * unk_2F4[6];
    UnkStruct_ov105_02246060 * unk_30C;
    UnkStruct_ov105_02246060 * unk_310;
    UnkStruct_ov105_02245E1C * unk_314;
    UnkStruct_ov105_02245E1C * unk_318;
    Party * unk_31C;
    Party * unk_320;
    u16 unk_324[6];
    u16 * unk_330;
    int unk_334;
    NARC * unk_338;
    u16 unk_33C[60];
    u16 unk_3B4;
    u16 unk_3B6[2];
    u16 unk_3BA[2];
    u8 unk_3BE;
    u8 unk_3BF;
    u32 unk_3C0;
};

int ov105_02241AE0(UnkStruct_020067E8 * param0, int * param1);
int ov105_02241BD8(UnkStruct_020067E8 * param0, int * param1);
int ov105_02241F54(UnkStruct_020067E8 * param0, int * param1);
static BOOL ov105_02241FF4(UnkStruct_ov105_02241FF4 * param0);
static BOOL ov105_022421F0(UnkStruct_ov105_02241FF4 * param0);
static BOOL ov105_02242698(UnkStruct_ov105_02241FF4 * param0);
static void ov105_0224227C(UnkStruct_ov105_02241FF4 * param0);
static void ov105_0224246C(UnkStruct_ov105_02241FF4 * param0);
static void ov105_022424A0(UnkStruct_ov105_02241FF4 * param0);
static void ov105_022424CC(UnkStruct_ov105_02241FF4 * param0);
static void ov105_0224260C(UnkStruct_ov105_02241FF4 * param0);
static BOOL ov105_022426E0(UnkStruct_ov105_02241FF4 * param0);
static void ov105_0224296C(UnkStruct_ov105_02241FF4 * param0);
static void ov105_02242A58(UnkStruct_ov105_02241FF4 * param0);
static void ov105_02242B54(UnkStruct_ov105_02241FF4 * param0);
static BOOL ov105_02242D04(UnkStruct_ov105_02241FF4 * param0);
static BOOL ov105_02243144(UnkStruct_ov105_02241FF4 * param0);
static void ov105_022433AC(UnkStruct_ov105_02241FF4 * param0);
static BOOL ov105_022434BC(UnkStruct_ov105_02241FF4 * param0);
static void ov105_02243738(UnkStruct_ov105_02241FF4 * param0);
static BOOL ov105_02243818(UnkStruct_ov105_02241FF4 * param0);
static void ov105_0224396C(UnkStruct_ov105_02241FF4 * param0);
static BOOL ov105_02243A3C(UnkStruct_ov105_02241FF4 * param0);
static void ov105_02243D20(UnkStruct_ov105_02241FF4 * param0);
static void ov105_02243D84(UnkStruct_ov105_02241FF4 * param0);
static void ov105_02243DE4(UnkStruct_ov105_02241FF4 * param0);
static BOOL ov105_02243E84(UnkStruct_ov105_02241FF4 * param0);
static void ov105_02243FDC(UnkStruct_ov105_02241FF4 * param0);
static BOOL ov105_0224400C(UnkStruct_ov105_02241FF4 * param0);
static BOOL ov105_0224435C(UnkStruct_ov105_02241FF4 * param0);
static BOOL ov105_0224439C(UnkStruct_ov105_02241FF4 * param0);
static BOOL ov105_022443DC(UnkStruct_ov105_02241FF4 * param0);
static BOOL ov105_02244424(UnkStruct_ov105_02241FF4 * param0);
static void ov105_022451B4(UnkStruct_ov105_02241FF4 * param0);
static void ov105_022452A0(UnkStruct_ov105_02241FF4 * param0);
static void ov105_022452E4(void);
static void ov105_0224531C(UnkStruct_ov105_02241FF4 * param0);
static void ov105_022453F8(UnkStruct_ov105_02241FF4 * param0, u8 param1, u8 param2, int param3, const Party * param4);
static void ov105_0224472C(UnkStruct_ov105_02241FF4 * param0);
static void ov105_02244678(UnkStruct_ov105_02241FF4 * param0);
static void ov105_0224473C(UnkStruct_02018340 * param0);
static void ov105_0224451C(void * param0);
static void ov105_02244564(void);
static void ov105_02244584(UnkStruct_02018340 * param0);
static void ov105_02244778(UnkStruct_ov105_02241FF4 * param0, int * param1, int param2);
static BOOL ov105_02244780(UnkStruct_ov105_02241FF4 * param0);
static BOOL ov105_02244830(UnkStruct_ov105_02241FF4 * param0);
static void ov105_022448BC(UnkStruct_ov105_02241FF4 * param0);
static void ov105_022448F4(UnkStruct_ov105_02241FF4 * param0, u32 param1, u8 param2, u8 param3, u8 param4);
static void ov105_02244924(UnkStruct_ov105_02241FF4 * param0, u32 param1);
static void ov105_022449A4(UnkStruct_ov105_02241FF4 * param0, u32 param1);
static void ov105_02244A60(UnkStruct_ov105_02241FF4 * param0, u32 param1);
static void ov105_02244A18(UnkStruct_ov105_02241FF4 * param0, u32 param1);
static void ov105_02244AA8(UnkStruct_ov105_02241FF4 * param0, u32 param1);
static void ov105_02244AF8(void);
static void ov105_02244B30(UnkStruct_ov105_02241FF4 * param0, u32 param1);
static void ov105_02244B90(UnkStruct_ov105_02241FF4 * param0, u32 param1);
static void ov105_02244BE4(UnkStruct_ov105_02241FF4 * param0, u32 param1);
static void ov105_02244C0C(UnkStruct_ov105_02241FF4 * param0, u32 param1);
static u8 ov105_02244C60(UnkStruct_ov105_02241FF4 * param0, UnkStruct_0205AA50 * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9);
static u8 ov105_02244CC0(UnkStruct_ov105_02241FF4 * param0, UnkStruct_0205AA50 * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9);
static u8 ov105_02244D14(UnkStruct_ov105_02241FF4 * param0, int param1);
static void ov105_02244D48(UnkStruct_ov105_02241FF4 * param0, UnkStruct_0205AA50 * param1, u8 param2);
static void ov105_02244DC4(UnkStruct_ov105_02241FF4 * param0, u8 param1, u8 param2, int param3);
static void ov105_02244DF0(UnkStruct_ov105_02241FF4 * param0);
static void ov105_02244E94(UnkStruct_ov105_02241FF4 * param0);
static void ov105_02244EE8(UnkStruct_ov105_02241FF4 * param0, u32 param1, s32 param2);
static void ov105_02244F00(UnkStruct_ov105_02241FF4 * param0, u32 param1, BoxPokemon *boxMon);
static void ov105_02244F0C(UnkStruct_ov105_02241FF4 * param0, UnkStruct_0205AA50 * param1, u32 param2, u32 param3, u8 param4);
static void ov105_02244F84(UnkStruct_ov105_02241FF4 * param0, UnkStruct_0205AA50 * param1, u32 param2, u32 param3, u8 param4);
static void ov105_02244FF8(UnkStruct_ov105_02241FF4 * param0, UnkStruct_0205AA50 * param1, u8 param2, u32 param3, u32 param4, u8 param5, u8 param6, u8 param7, u8 param8, const Party * param9);
static void ov105_022450DC(UnkStruct_ov105_02241FF4 * param0, UnkStruct_0205AA50 * param1, u32 param2, u32 param3, u8 param4, u8 param5, u8 param6, u8 param7, u16 param8, u8 param9);
static void ov105_02245464(UnkStruct_ov105_02241FF4 * param0);
static BOOL ov105_022454F8(UnkStruct_ov105_02241FF4 * param0, u8 param1);
static u8 ov105_02245508(u8 param0);
static BOOL ov105_02245518(UnkStruct_ov105_02241FF4 * param0);
static void ov105_02245528(UnkStruct_ov105_02241FF4 * param0, u8 param1);
static u8 ov105_02245538(UnkStruct_ov105_02241FF4 * param0, u8 param1, u8 param2);
static u32 ov105_02245584(UnkStruct_ov105_02241FF4 * param0, u32 param1);
static void ov105_022455C4(UnkStruct_ov105_02241FF4 * param0, u8 param1, Pokemon *param2, int param3, int param4, int param5);
BOOL ov105_02245620(UnkStruct_ov105_02241FF4 * param0, u16 param1, u16 param2);
void ov105_02245684(UnkStruct_ov105_02241FF4 * param0, u16 param1);
void ov105_0224569C(int param0, int param1, void * param2, void * param3);
void ov105_022456A8(UnkStruct_ov105_02241FF4 * param0, u16 param1, u16 param2);
void ov105_02245744(int param0, int param1, void * param2, void * param3);
void ov105_022457B8(int param0, int param1, void * param2, void * param3);
void ov105_02245884(UnkStruct_ov105_02241FF4 * param0, u16 param1, u16 param2);
void ov105_022458A4(int param0, int param1, void * param2, void * param3);
static void ov105_022457C0(UnkStruct_ov105_02241FF4 * param0);
static UnkStruct_ov105_02245EA8 * ov105_02245934(UnkStruct_ov105_02241FF4 * param0, int param1);
static UnkStruct_ov105_02245E1C * ov105_022459B0(UnkStruct_ov105_02241FF4 * param0, u32 param1);
static UnkStruct_ov105_02245E1C * ov105_02245A04(UnkStruct_ov105_02241FF4 * param0, u32 param1);
static void ov105_02245A30(UnkStruct_ov105_02241FF4 * param0);
static void ov105_02245A64(UnkStruct_ov105_02241FF4 * param0);
static void ov105_02245A98(UnkStruct_0205AA50 * param0);

static const u16 Unk_ov105_02246364[][2] = {
	{ 0x18, 0x70 },
	{ 0x40, 0x70 },
	{ 0x68, 0x70 },
	{ 0x90, 0x70 },
	{ 0xB8, 0x70 },
	{ 0xE0, 0x70 }
};

static const u16 Unk_ov105_02246314[][2] = {
	{ 0x40, 0x70 },
	{ 0x78, 0x70 },
	{ 0xB0, 0x70 }
};

static const u16 Unk_ov105_022462EC[][2] = {
	{ 0x60, 0x70 },
	{ 0x98, 0x70 }
};

static const u16 Unk_ov105_02246320[][2] = {
	{ 0x28, 0x70 },
	{ 0x60, 0x70 },
	{ 0x98, 0x70 },
	{ 0xD0, 0x70 }
};

static const UnkStruct_ov105_02246394 Unk_ov105_02246394[] = {
	{ 0x18, 0x70 },
	{ 0x40, 0x70 },
	{ 0x68, 0x70 },
	{ 0x90, 0x70 },
	{ 0xB8, 0x70 },
	{ 0xE0, 0x70 }
};

static const UnkStruct_ov105_02246394 Unk_ov105_02246340[] = {
	{ 0x40, 0x70 },
	{ 0x78, 0x70 },
	{ 0xB0, 0x70 },
	{ 0xD4, 0x90 }
};

static const u8 Unk_ov105_022462D0[(NELEMS(Unk_ov105_02246340))] = {
	0x8,
	0x8,
	0x8,
	0x9
};

static const UnkStruct_ov105_02246394 Unk_ov105_022462FC[] = {
	{ 0x60, 0x70 },
	{ 0x98, 0x70 },
	{ 0xD4, 0x90 }
};

static const u8 Unk_ov105_022462CC[(NELEMS(Unk_ov105_022462FC))] = {
	0x8,
	0x8,
	0x9
};

static const UnkStruct_ov105_02246394 Unk_ov105_02246350[] = {
	{ 0x40, 0x70 },
	{ 0x78, 0x70 },
	{ 0xB0, 0x70 },
	{ 0xD4, 0x90 },
	{ 0xD4, 0xA0 }
};

static const u8 Unk_ov105_022462D4[(NELEMS(Unk_ov105_02246350))] = {
	0x8,
	0x8,
	0x8,
	0x9,
	0x9
};

static const UnkStruct_ov105_02246394 Unk_ov105_0224637C[] = {
	{ 0x28, 0x70 },
	{ 0x60, 0x70 },
	{ 0x98, 0x70 },
	{ 0xD0, 0x70 },
	{ 0xD4, 0x90 },
	{ 0xD4, 0xA0 }
};

static const u8 Unk_ov105_022462E4[(NELEMS(Unk_ov105_0224637C))] = {
	0x8,
	0x8,
	0x8,
	0x8,
	0x9,
	0x9
};

static const UnkStruct_ov105_02246394 Unk_ov105_02246308[] = {
	{ 0xD4, 0x90 },
	{ 0xD4, 0xA0 },
	{ 0xD4, 0xB0 }
};

static const UnkStruct_ov105_02246394 Unk_ov105_022462F4[] = {
	{ 0xD4, 0x90 },
	{ 0xD4, 0xA0 }
};

static const UnkStruct_ov105_02246394 bf_v_trade_final_csr_pos[] = {
    {212, 144}, {212, 160},
};

static const u8 Unk_ov105_022462DC[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x7,
    0x8
};

int ov105_02241AE0 (UnkStruct_020067E8 * param0, int * param1)
{
    int v0;
    UnkStruct_ov105_02241FF4 * v1;
    UnkStruct_ov104_02234130 * v2;

    Overlay_LoadByID(FS_OVERLAY_ID(overlay104), 2);
    ov105_022452E4();
    Heap_Create(3, 93, 0x20000);

    v1 = sub_0200681C(param0, sizeof(UnkStruct_ov105_02241FF4), 93);
    memset(v1, 0, sizeof(UnkStruct_ov105_02241FF4));

    v1->unk_124 = sub_02024220(93, 0, 2, 0, 2, ov105_02245CD0);
    v1->unk_4C = sub_02018340(93);
    v1->unk_00 = param0;

    v2 = (UnkStruct_ov104_02234130 *)sub_02006840(param0);

    v1->unk_13C = v2->unk_00;
    v1->unk_09 = v2->unk_04;
    v1->unk_0A = v2->unk_05;
    v1->unk_0B = v2->unk_06;
    v1->unk_31C = v2->unk_08;
    v1->unk_320 = v2->unk_0C;
    v1->unk_330 = &v2->unk_10[0];
    v1->unk_138 = sub_02025E44(v1->unk_13C);
    v1->unk_14 = (4 * 2);

    if (ov105_022454F8(v1, 0) == 1) {
        v1->unk_12 = (NELEMS(Unk_ov105_02246394));
    } else {
        if (ov104_0223AED4(v1->unk_09) == 1) {
            v1->unk_12 = (NELEMS(Unk_ov105_022462EC));
            v1->unk_1A = (NELEMS(Unk_ov105_022462FC));
            v1->unk_1B = (NELEMS(Unk_ov105_0224637C));
        } else {
            v1->unk_12 = (NELEMS(Unk_ov105_02246314));
            v1->unk_1A = (NELEMS(Unk_ov105_02246340));
            v1->unk_1B = (NELEMS(Unk_ov105_02246350));
        }
    }

    ov105_0224531C(v1);

    if (ov104_0223AED4(v1->unk_09) == 1) {
        sub_0209BA80(v1);
    }

    (*param1) = 0;

    return 1;
}

int ov105_02241BD8 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov105_02241FF4 * v0 = sub_0200682C(param0);

    if (v0->unk_3B4 == 1) {
        switch (*param1) {
        case 6:
        case 7:
        case 8:
        case 9:
            if (v0->unk_13_6 == 0) {
                ov105_02244778(v0, param1, 11);
            }
            break;
        }
    }

    switch (*param1) {
    case 0:
        if (ov105_02241FF4(v0) == 1) {
            ov105_02244778(v0, param1, 1);
        }
        break;
    case 2:
        if (ov105_02242698(v0) == 1) {
            ov105_02244778(v0, param1, 1);
        } else {
            return 0;
        }
    case 1:
        if (ov105_022421F0(v0) == 1) {
            if (ov105_022454F8(v0, 0) == 1) {
                ov105_02244778(v0, param1, 3);
            } else {
                ov105_02244778(v0, param1, 6);
            }
        }
        break;
    case 3:
        ov105_022457C0(v0);

        if (ov105_022426E0(v0) == 1) {
            if (v0->unk_13_1 == 1) {
                ov105_02244778(v0, param1, 2);
            } else {
                if (v0->unk_11 == ov105_02245508(v0->unk_09)) {
                    ov105_02244778(v0, param1, 4);
                } else {
                    if (ov105_02245518(v0) == 1) {
                        ov105_02244778(v0, param1, 13);
                    } else {
                        ov105_02244778(v0, param1, 3);
                    }
                }
            }
        }
        break;
    case 4:
        ov105_022457C0(v0);

        if (ov105_02242D04(v0) == 1) {
            if (v0->unk_11 == ov105_02245508(v0->unk_09)) {
                ov105_02244778(v0, param1, 13);
            } else {
                ov105_02244778(v0, param1, 5);
            }
        }
        break;
    case 5:
        if (ov105_02243144(v0) == 1) {
            ov105_02244778(v0, param1, 3);
        }
        break;
    case 6:
        if (ov105_022434BC(v0) == 1) {
            if (v0->unk_13_1 == 1) {
                ov105_02244778(v0, param1, 2);
            } else {
                if (ov105_02245518(v0) == 1) {
                    ov105_02245528(v0, 0);
                    ov105_02244778(v0, param1, 7);
                } else {
                    ov105_02244778(v0, param1, 10);
                }
            }
        }
        break;
    case 7:
        if (ov105_02243818(v0) == 1) {
            if (ov105_02245518(v0) == 1) {
                ov105_02245528(v0, 0);
                ov105_02244778(v0, param1, 6);
            } else {
                if (ov104_0223AED4(v0->unk_09) == 1) {
                    v0->unk_13_3 = 0;
                    ov105_02244778(v0, param1, 11);
                } else {
                    ov105_02244778(v0, param1, 13);
                }
            }
        }
        break;
    case 8:
        if (ov105_02243A3C(v0) == 1) {
            if (ov105_02245518(v0) == 1) {
                ov105_02245528(v0, 0);
                ov105_02244778(v0, param1, 9);
            } else {
                if (v0->unk_11 == 0) {
                    ov105_02244778(v0, param1, 10);
                } else {
                    if (ov104_0223AED4(v0->unk_09) == 1) {
                        ov105_02244778(v0, param1, 11);
                    } else {
                        ov105_02244778(v0, param1, 13);
                    }
                }
            }
        }
        break;
    case 9:
        if (ov105_02243E84(v0) == 1) {
            if (ov105_02245518(v0) == 1) {
                ov105_02245528(v0, 0);
                ov105_02244778(v0, param1, 8);
            } else {
                if (ov104_0223AED4(v0->unk_09) == 1) {
                    v0->unk_13_3 = 0;
                    ov105_02244778(v0, param1, 11);
                } else {
                    ov105_02244778(v0, param1, 13);
                }
            }
        }
        break;
    case 10:
        if (ov105_0224400C(v0) == 1) {
            if (v0->unk_11 == 0) {
                ov105_022424CC(v0);
                ov105_02244778(v0, param1, 6);
            } else {
                ov105_02244778(v0, param1, 8);
            }
        }
        break;
    case 11:
        if (ov105_0224435C(v0) == 1) {
            if (v0->unk_3B4 == 1) {
                ov105_02244778(v0, param1, 14);
            } else {
                ov105_02244778(v0, param1, 12);
            }
        }
        break;
    case 12:
        if (ov105_0224439C(v0) == 1) {
            ov105_02244778(v0, param1, 13);
        }
        break;
    case 13:
        if (ov105_022443DC(v0) == 1) {
            return 1;
        }
        break;
    case 14:
        if (ov105_02244424(v0) == 1) {
            ov105_02244778(v0, param1, 12);
        }
        break;
    }

    sub_020219F8(v0->unk_144.unk_00);
    ov105_02245D50(v0->unk_128);

    return 0;
}

int ov105_02241F54 (UnkStruct_020067E8 * param0, int * param1)
{
    int v0;
    UnkStruct_ov105_02241FF4 * v1 = sub_0200682C(param0);

    if (ov105_022454F8(v1, 0) == 1) {
        for (v0 = 0; v0 < ov105_02245508(v1->unk_09); v0++) {
            v1->unk_330[v0] = v1->unk_324[v0];
        }
    } else {
        for (v0 = 0; v0 < 2; v0++) {
            v1->unk_330[v0] = v1->unk_324[v0];
        }

        if (v1->unk_13_3 == 0) {
            v1->unk_330[0] = 0xff;
            v1->unk_330[1] = 0xff;
        }
    }

    ov105_022451B4(v1);

    sub_02006830(param0);
    sub_02017798(NULL, NULL);
    Heap_Destroy(93);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay104));

    return 1;
}

static BOOL ov105_02241FF4 (UnkStruct_ov105_02241FF4 * param0)
{
    int v0;
    const VecFx32 * v1;

    switch (param0->unk_08) {
    case 0:
        if (ov104_0223AED4(param0->unk_09) == 1) {
            sub_020365F4();
            sub_020364F0(237);
        }

        param0->unk_08++;
        break;
    case 1:
        if (ov104_0223AED4(param0->unk_09) == 1) {
            if (sub_02036540(237) == 1) {
                sub_020365F4();
                param0->unk_08++;
            }
        } else {
            param0->unk_08++;
        }
        break;
    case 2:
        for (v0 = 0; v0 < param0->unk_12; v0++) {
            v1 = ov105_02245F2C(param0->unk_2F4[v0]);
            ov105_02245F5C(param0->unk_2F4[v0]);
        }

        sub_02019184(param0->unk_4C, 2, 0, (33 * 8));
        sub_02007DEC(param0->unk_12C[0], 6, 1);
        sub_0200F174(0, 1, 1, 0x0, 6, 1 * 3, 93);
        param0->unk_08++;
        break;
    case 3:
        if (sub_0200F2AC() == 0) {
            break;
        }

        sub_02005748(1554);
        param0->unk_19 = 0;
        param0->unk_08++;
        break;
    case 4:
        if (ov105_02244780(param0) == 1) {
            sub_020057A4(1554, 0);
            sub_02005748(1657);

            for (v0 = 0; v0 < param0->unk_12; v0++) {
                ov105_02245F90(param0->unk_2F4[v0], 10);
            }

            ov105_02244924(param0, 0);

            param0->unk_14 = (4 * 2);
            param0->unk_19 = 0;
            param0->unk_08++;
        }
        break;
    case 5:
        if (ov105_02245E48(param0->unk_314) == 1) {
            break;
        }

        ov105_02245A30(param0);
        param0->unk_19 = 0;
        param0->unk_08++;
        break;
    case 6:
        if (param0->unk_19 == 0) {
            ov105_02244B90(param0, 3);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
            ov105_022448F4(param0, 3, ov105_02245538(param0, 1, 0), 21, 11);
            sub_02007DEC(param0->unk_12C[0], 6, 0);
            sub_0200872C(param0->unk_128, 16, 0, 1, 0xffff);
        }

        if (sub_020087B4(param0->unk_12C[0])) {
            (void)0;
        }

        param0->unk_19++;

        if (param0->unk_19 < 2) {
            break;
        }

        ov105_022448F4(param0, 3, ov105_02245538(param0, 2, 0), 21, 11);
        param0->unk_19 = 0;
        ov105_02245A64(param0);

        return 1;
    }

    return 0;
}

static BOOL ov105_022421F0 (UnkStruct_ov105_02241FF4 * param0)
{
    int v0;

    switch (param0->unk_08) {
    case 0:
        if (ov105_022454F8(param0, 0) == 1) {
            ov105_0224227C(param0);
        } else {
            ov105_022424CC(param0);
        }

        if (ov104_0223AED4(param0->unk_09) == 1) {
            ov105_02244F84(param0, &param0->unk_50[1], 0, 0, 0);
        }

        if (param0->unk_13_4 == 1) {
            sub_0200F174(0, 1, 1, 0x0, 6, 1 * 3, 93);
        }

        param0->unk_13_4 = 1;
        param0->unk_08++;
        break;
    case 1:
        if (sub_0200F2AC() == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov105_0224227C (UnkStruct_ov105_02241FF4 * param0)
{
    int v0;
    u8 v1;

    v1 = ov104_0223AA50(param0->unk_09);

    ov105_02245528(param0, 0);
    param0->unk_30C = ov105_02245FB8(&param0->unk_144, param0->unk_12, param0->unk_12, 0, param0->unk_334, Unk_ov105_02246394, NULL);
    ov105_02244F0C(param0, &param0->unk_50[0], 0, 0, 0);

    for (v0 = 0; v0 < param0->unk_11; v0++) {
        ov105_02245F44(param0->unk_2F4[param0->unk_324[v0]]);
        ov105_02245FAC(param0->unk_2F4[param0->unk_324[v0]], 0);
        ov105_02245F90(param0->unk_2F4[param0->unk_324[v0]], 7);
        ov105_02244FF8(param0, &param0->unk_50[2 + v0], param0->unk_324[v0], 0, 0, 15, 2, 0, 0, param0->unk_31C);
    }

    ov105_02244FF8(param0, &param0->unk_50[2 + param0->unk_11], ov105_022461A0(param0->unk_30C), 0, 0, 15, 2, 0, 0, param0->unk_31C);
    ov105_0224628C(&param0->unk_50[5], sub_02027B50(param0->unk_138));
    ov105_02244EE8(param0, 0, (param0->unk_11 + 1));

    param0->unk_10 = ov105_02244D14(param0, 0);

    if (param0->unk_13_1 == 1) {
        ov105_022461A4(param0->unk_30C, 1);
        ov105_02244DF0(param0);

        param0->unk_310 = ov105_02245FB8(&param0->unk_144, (NELEMS(Unk_ov105_02246308)), (NELEMS(Unk_ov105_02246308)), 1, 0, Unk_ov105_02246308, NULL);

        if ((param0->unk_18 != 0)) {
            for (v0 = 0; v0 < v1; v0++) {
                sub_0201ADA4(&param0->unk_50[8 + v0], 0);

                if (v0 < param0->unk_18) {
                    ov105_022450DC(param0, &param0->unk_50[8 + v0], 0, 0, 15, 2, 0, 0, param0->unk_3B6[v0], param0->unk_3BA[v0]);
                }

                sub_0201A9A4(&param0->unk_50[8 + v0]);
            }
        }
    }

    return;
}

static void ov105_0224246C (UnkStruct_ov105_02241FF4 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_12; v0++) {
        param0->unk_2F4[v0] = ov105_02245934(param0, v0);
        ov105_02245EBC(param0->unk_2F4[v0], 1);
    }

    return;
}

static void ov105_022424A0 (UnkStruct_ov105_02241FF4 * param0)
{
    ov105_022455C4(param0, 0, Party_GetPokemonBySlotIndex(param0->unk_31C, param0->unk_334), 120, 43, 0);
    return;
}

static void ov105_022424CC (UnkStruct_ov105_02241FF4 * param0)
{
    int v0;

    ov105_02245528(param0, 0);
    ov105_0224628C(&param0->unk_50[5], sub_02027B50(param0->unk_138));

    if (ov104_0223AED4(param0->unk_09) == 0) {
        param0->unk_30C = ov105_02245FB8(&param0->unk_144, param0->unk_1A, ((NELEMS(Unk_ov105_02246340)) - 1), 2, param0->unk_334, Unk_ov105_02246340, Unk_ov105_022462D0);
    } else {
        param0->unk_30C = ov105_02245FB8(&param0->unk_144, param0->unk_1A, ((NELEMS(Unk_ov105_022462FC)) - 1), 2, param0->unk_334, Unk_ov105_022462FC, Unk_ov105_022462CC);
    }

    ov105_02244F0C(param0, &param0->unk_50[0], 0, 0, 0);
    ov105_02244FF8(param0, &param0->unk_50[2], ov105_022461A0(param0->unk_30C), 0, 0, 15, 2, 0, 0, param0->unk_31C);
    ov105_02246260(param0->unk_4C, &param0->unk_50[7]);

    param0->unk_10 = ov105_02244C60(param0, &param0->unk_50[7], 19, 1, 1, 0xff, 1, 2, 15, 0);
    sub_0201A9A4(&param0->unk_50[7]);
    param0->unk_10 = ov105_02244D14(param0, 9);

    if (param0->unk_13_1 == 1) {
        ov105_02244DF0(param0);
        param0->unk_310 = ov105_02245FB8(&param0->unk_144, (NELEMS(Unk_ov105_02246308)), (NELEMS(Unk_ov105_02246308)), 1, 0, Unk_ov105_02246308, NULL);
    }

    return;
}

static void ov105_0224260C (UnkStruct_ov105_02241FF4 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_12; v0++) {
        param0->unk_2F4[v0] = ov105_02245934(param0, v0);
        ov105_02245EBC(param0->unk_2F4[v0], 1);

        if (param0->unk_13_2 == 0) {
            ov105_02245F44(param0->unk_2F4[v0]);
            ov105_02245FAC(param0->unk_2F4[v0], 0);
            ov105_02245F90(param0->unk_2F4[v0], 6);
        }
    }

    return;
}

static void ov105_0224266C (UnkStruct_ov105_02241FF4 * param0)
{
    ov105_022455C4(param0, 0, Party_GetPokemonBySlotIndex(param0->unk_31C, param0->unk_334), 120, 43, 1);
    return;
}

static BOOL ov105_02242698 (UnkStruct_ov105_02241FF4 * param0)
{
    switch (param0->unk_08) {
    case 0:

        if (sub_02006844(param0->unk_04) == 1) {
            param0->unk_334 = param0->unk_140->unk_14;
            Heap_FreeToHeap(param0->unk_140);
            Heap_FreeToHeap(param0->unk_04);
            param0->unk_04 = NULL;
            ov105_022452A0(param0);
            param0->unk_13_6 = 0;
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov105_022426E0 (UnkStruct_ov105_02241FF4 * param0)
{
    int v0;
    u32 v1;

    switch (param0->unk_08) {
    case 0:
        if (param0->unk_13_1 == 0) {
            param0->unk_08 = 1;
        } else {
            param0->unk_08 = 2;
        }

        param0->unk_13_1 = 0;
        break;
    case 1:
        ov105_02246080(param0->unk_30C);

        if (Unk_021BF67C.unk_48 & (PAD_KEY_LEFT | PAD_KEY_RIGHT)) {
            sub_02005748(1500);
            ov105_022453F8(param0, param0->unk_11, ov105_022461A0(param0->unk_30C), 0, param0->unk_31C);
        }

        if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
            sub_02005748(1500);
            ov105_022461A4(param0->unk_30C, 1);
            ov105_02244DF0(param0);

            param0->unk_310 = ov105_02245FB8(&param0->unk_144, (NELEMS(Unk_ov105_02246308)), (NELEMS(Unk_ov105_02246308)), 1, 0, Unk_ov105_02246308, NULL);
            param0->unk_08++;
        } else if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
            if (param0->unk_11 > 0) {
                sub_02005748(1500);
                ov105_0224296C(param0);

                if (ov104_0223AED4(param0->unk_09) == 1) {
                    ov105_02245620(param0, 8, 0);
                }

                return 1;
            }
        }
        break;
    case 2:
        v1 = sub_02001BE0(param0->unk_FC);
        ov105_02246080(param0->unk_310);

        switch (v1) {
        case 0xffffffff:
            break;
        case 0:
            sub_02001BC4(param0->unk_FC, NULL);
            ov105_02245A98(param0->unk_F0.unk_04);
            ov105_02246060(param0->unk_310);
            param0->unk_310 = NULL;
            param0->unk_13_6 = 1;
            sub_0200F174(0, 0, 0, 0x0, 6, 1, 93);
            param0->unk_08++;
            break;
        case 1:
            sub_02001BC4(param0->unk_FC, NULL);

            ov105_02245A98(param0->unk_F0.unk_04);
            ov105_02242A58(param0);

            if (ov104_0223AED4(param0->unk_09) == 1) {
                ov105_02245620(param0, 8, 0);
            }

            return 1;
        case 3:
            sub_02001BC4(param0->unk_FC, NULL);

            ov105_02245A98(param0->unk_F0.unk_04);
            ov105_02242B54(param0);

            if (ov104_0223AED4(param0->unk_09) == 1) {
                ov105_02245620(param0, 8, 0);
            }

            return 1;
        case 0xfffffffe:
        case 2:
        default:
            sub_02001BC4(param0->unk_FC, NULL);
            ov105_02245A98(param0->unk_F0.unk_04);
            ov105_022461A4(param0->unk_30C, 0);
            ov105_02246060(param0->unk_310);
            param0->unk_310 = NULL;
            return 1;
        }
        break;
    case 3:
        if (sub_0200F2AC() == 1) {
            ov105_02245464(param0);
            ov105_022451B4(param0);
            param0->unk_04 = sub_020067E8(&Unk_020F410C, param0->unk_140, 93);
            param0->unk_13_1 = 1;
            return 1;
        }
        break;
    case 4:
        if (param0->unk_04 == NULL) {
            return 1;
        }
        break;
    case 5:
        if (sub_0200F2AC() == 1) {
            param0->unk_08 = 2;
        }
        break;
    }

    return 0;
}

static void ov105_0224296C (UnkStruct_ov105_02241FF4 * param0)
{
    sub_0201ADA4(&param0->unk_50[2 + param0->unk_11], 0);
    sub_0201A9A4(&param0->unk_50[2 + param0->unk_11]);

    param0->unk_11--;
    sub_0201ADA4(&param0->unk_50[2 + param0->unk_11], 0);

    ov105_02244FF8(param0, &param0->unk_50[2 + param0->unk_11], ov105_022461A0(param0->unk_30C), 0, 0, 15, 2, 0, 0, param0->unk_31C);
    ov105_02244EE8(param0, 0, (param0->unk_11 + 1));

    param0->unk_10 = ov105_02244D14(param0, 0);

    ov105_02245F50(param0->unk_2F4[param0->unk_324[param0->unk_11]]);
    ov105_02245FAC(param0->unk_2F4[param0->unk_324[param0->unk_11]], 1);
    ov105_02245F90(param0->unk_2F4[param0->unk_324[param0->unk_11]], 6);

    param0->unk_324[param0->unk_11] = 0;
    return;
}

static void ov105_02242A58 (UnkStruct_ov105_02241FF4 * param0)
{
    ov105_02245F44(param0->unk_2F4[ov105_022461A0(param0->unk_30C)]);
    ov105_02245FAC(param0->unk_2F4[ov105_022461A0(param0->unk_30C)], 0);
    ov105_02245F90(param0->unk_2F4[ov105_022461A0(param0->unk_30C)], 7);

    param0->unk_324[param0->unk_11] = ov105_022461A0(param0->unk_30C);
    param0->unk_11++;

    if (param0->unk_11 == ov105_02245508(param0->unk_09)) {
        ov105_02246060(param0->unk_310);
        param0->unk_310 = NULL;
    } else {
        ov105_022461A4(param0->unk_30C, 0);
        ov105_02246060(param0->unk_310);

        param0->unk_310 = NULL;

        ov105_02244FF8(param0, &param0->unk_50[2 + param0->unk_11], ov105_022461A0(param0->unk_30C), 0, 0, 15, 2, 0, 0, param0->unk_31C);
        ov105_02244EE8(param0, 0, (param0->unk_11 + 1));

        param0->unk_10 = ov105_02244D14(param0, 0);
    }

    return;
}

static void ov105_02242B54 (UnkStruct_ov105_02241FF4 * param0)
{
    u8 v0;
    int v1;

    ov105_02245F50(param0->unk_2F4[ov105_022461A0(param0->unk_30C)]);
    ov105_02245FAC(param0->unk_2F4[ov105_022461A0(param0->unk_30C)], 1);
    ov105_02245F90(param0->unk_2F4[ov105_022461A0(param0->unk_30C)], 6);

    if (param0->unk_11 >= 2) {
        if (param0->unk_324[0] == ov105_022461A0(param0->unk_30C)) {
            param0->unk_324[0] = param0->unk_324[1];
            sub_02007DC8(param0->unk_12C[0]);
            ov105_022455C4(param0, 0, Party_GetPokemonBySlotIndex(param0->unk_31C, ov105_022461A0(param0->unk_30C)), 120, 43, 0);
        }
    }

    param0->unk_11--;
    param0->unk_324[param0->unk_11] = 0;

    ov105_022461A4(param0->unk_30C, 0);
    ov105_02246060(param0->unk_310);

    param0->unk_310 = NULL;
    v0 = ov105_02245508(param0->unk_09);

    for (v1 = 0; v1 < v0; v1++) {
        sub_0201ADA4(&param0->unk_50[2 + v1], 0);
    }

    for (v1 = 0; v1 < param0->unk_11; v1++) {
        ov105_02244FF8(param0, &param0->unk_50[2 + v1], param0->unk_324[v1], 0, 0, 15, 2, 0, 0, param0->unk_31C);
    }

    ov105_02244FF8(param0, &param0->unk_50[2 + param0->unk_11], ov105_022461A0(param0->unk_30C), 0, 0, 15, 2, 0, 0, param0->unk_31C);

    for (v1 = 0; v1 < v0; v1++) {
        sub_0201A9A4(&param0->unk_50[2 + v1]);
    }

    ov105_02244EE8(param0, 0, (param0->unk_11 + 1));
    param0->unk_10 = ov105_02244D14(param0, 0);

    return;
}

static BOOL ov105_02242D04 (UnkStruct_ov105_02241FF4 * param0)
{
    u8 v0;
    u32 v1;
    int v2;
    int v3[3];

    v0 = ov104_0223AA50(param0->unk_09);

    switch (param0->unk_08) {
    case 0:
        ov105_02246074(param0->unk_30C, 0);
        param0->unk_13_5 = 1;
        sub_0201ACF4(&param0->unk_50[1]);
        sub_0201ACF4(&param0->unk_50[8]);
        sub_0201ACF4(&param0->unk_50[9]);

        for (v2 = 0; v2 < param0->unk_11; v2++) {
            sub_0201ADA4(&param0->unk_50[2 + v2], 0);
            sub_0201A9A4(&param0->unk_50[2 + v2]);
        }

        sub_0201ADA4(&param0->unk_50[0], 0);
        sub_0201A9A4(&param0->unk_50[0]);

        ov105_022448F4(param0, 3, ov105_02245538(param0, 1, 0), 21, 11);
        sub_0200872C(param0->unk_128, 0, 16, 0, 0xffff);

        param0->unk_19 = 0;
        param0->unk_08++;
        break;
    case 1:
        param0->unk_19++;

        if (param0->unk_19 < 2) {
            break;
        }

        sub_02007DEC(param0->unk_12C[0], 6, 1);

        ov105_02244924(param0, 1);
        ov105_022448F4(param0, 3, ov105_02245538(param0, 0, 0), 21, 11);
        ov105_02244BE4(param0, 3);
        param0->unk_19 = 0;
        param0->unk_08++;
        break;
    case 2:
        if (sub_020087B4(param0->unk_12C[0])) {
            (void)0;
        }

        if (ov105_02245E48(param0->unk_314) == 1) {
            break;
        }

        ov105_02245A30(param0);
        sub_02007DC8(param0->unk_12C[0]);

        v3[0] = 44;
        v3[1] = 128;
        v3[2] = 212;

        for (v2 = 0; v2 < v0; v2++) {
            ov105_022455C4(param0, v2, Party_GetPokemonBySlotIndex(param0->unk_31C, param0->unk_324[v2]), v3[v2], 43, 0);
            sub_02007DEC(param0->unk_12C[v2], 6, 1);
        }

        ov105_02244924(param0, 4);
        param0->unk_08++;
        break;
    case 3:
        if (ov105_02245E48(param0->unk_314) == 1) {
            break;
        }

        ov105_02245A30(param0);

        param0->unk_19 = 0;
        param0->unk_08++;
        break;
    case 4:
        if (param0->unk_19 == 0) {
            ov105_02244C0C(param0, 3);

            for (v2 = 0; v2 < v0; v2++) {
                sub_02007DEC(param0->unk_12C[v2], 6, 0);
            }

            if (ov104_0223AED4(param0->unk_09) == 0) {
                ov105_022448F4(param0, 3, ov105_02245538(param0, 1, 1), 32, 11);
            } else {
                ov105_022448F4(param0, 3, ov105_02245538(param0, 1, 1), 21, 11);
            }

            sub_0200872C(param0->unk_128, 16, 0, 1, 0xffff);
        }

        if (sub_020087B4(param0->unk_12C[0])) {
            (void)0;
        }

        param0->unk_19++;

        if (param0->unk_19 < 21) {
            break;
        }

        if (ov104_0223AED4(param0->unk_09) == 0) {
            ov105_022448F4(param0, 3, ov105_02245538(param0, 2, 1), 32, 11);
        } else {
            ov105_022448F4(param0, 3, ov105_02245538(param0, 2, 1), 21, 11);
        }

        param0->unk_13_5 = 0;

        if (ov104_0223AED4(param0->unk_09) == 1) {
            param0->unk_3BF = 1;
            ov105_022457C0(param0);
        }

        ov105_02244EE8(param0, 0, v0);
        param0->unk_10 = ov105_02244D14(param0, 1);
        ov105_02244E94(param0);

        param0->unk_310 = ov105_02245FB8(&param0->unk_144, (NELEMS(Unk_ov105_022462F4)), (NELEMS(Unk_ov105_022462F4)), 1, 0, Unk_ov105_022462F4, NULL);
        param0->unk_19 = 0;
        param0->unk_08++;
        break;
    case 5:
        v1 = sub_02001BE0(param0->unk_FC);
        ov105_02246080(param0->unk_310);

        switch (v1) {
        case 0xffffffff:
            break;
        case 0:
            sub_02001BC4(param0->unk_FC, NULL);
            ov105_02245A98(param0->unk_F0.unk_04);
            ov105_02246060(param0->unk_310);
            param0->unk_310 = NULL;
            param0->unk_08++;
            break;
        case 0xfffffffe:
        case 1:
        default:
            ov105_02246074(param0->unk_30C, 1);
            sub_02001BC4(param0->unk_FC, NULL);

            ov105_02245A98(param0->unk_F0.unk_04);
            ov105_02246060(param0->unk_310);

            param0->unk_310 = NULL;
            param0->unk_11--;
            param0->unk_324[param0->unk_11] = 0;

            if (ov104_0223AED4(param0->unk_09) == 1) {
                ov105_02245620(param0, 8, 0);
            }

            return 1;
        }
        break;
    case 6:
        if (ov104_0223AED4(param0->unk_09) == 0) {
            return 1;
        }

        if (ov105_02245620(param0, 8, 0) == 1) {
            param0->unk_10 = ov105_02244D14(param0, 2);

            sub_020365F4();
            sub_020364F0(164);
            param0->unk_08++;
        }
        break;
    case 7:
        if (sub_02036540(164) == 1) {
            sub_020365F4();
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov105_02243144 (UnkStruct_ov105_02241FF4 * param0)
{
    u8 v0;
    int v1;

    v0 = ov104_0223AA50(param0->unk_09);

    switch (param0->unk_08) {
    case 0:
        param0->unk_13_5 = 1;

        sub_0201ACF4(&param0->unk_50[1]);
        sub_0201ACF4(&param0->unk_50[8]);
        sub_0201ACF4(&param0->unk_50[9]);

        if (ov104_0223AED4(param0->unk_09) == 0) {
            ov105_022448F4(param0, 3, ov105_02245538(param0, 1, 1), 32, 11);
        } else {
            ov105_022448F4(param0, 3, ov105_02245538(param0, 1, 1), 21, 11);
        }

        sub_0200872C(param0->unk_128, 0, 16, 0, 0xffff);

        param0->unk_19 = 0;
        param0->unk_08++;
        break;
    case 1:
        param0->unk_19++;

        if (param0->unk_19 < 2) {
            break;
        }

        for (v1 = 0; v1 < v0; v1++) {
            sub_02007DC8(param0->unk_12C[v1]);
        }

        ov105_02244924(param0, 5);

        if (ov104_0223AED4(param0->unk_09) == 0) {
            ov105_022448F4(param0, 3, ov105_02245538(param0, 0, 0), 32, 11);
        } else {
            ov105_022448F4(param0, 3, ov105_02245538(param0, 0, 0), 21, 11);
        }

        ov105_02244BE4(param0, 3);

        param0->unk_19 = 0;
        param0->unk_08++;

        break;
    case 2:
        if (sub_020087B4(param0->unk_12C[0])) {
            (void)0;
        }

        if (ov105_02245E48(param0->unk_314) == 1) {
            break;
        }

        ov105_02245A30(param0);
        ov105_022455C4(param0, 0, Party_GetPokemonBySlotIndex(param0->unk_31C, ov105_022461A0(param0->unk_30C)), 120, 43, 0);

        sub_02007DEC(param0->unk_12C[0], 6, 1);
        ov105_02244924(param0, 0);

        param0->unk_08++;
        break;
    case 3:
        if (ov105_02245E48(param0->unk_314) == 1) {
            break;
        }

        ov105_02245A30(param0);
        param0->unk_19 = 0;
        param0->unk_08++;
        break;
    case 4:
        if (param0->unk_19 == 0) {
            ov105_02244B90(param0, 3);
            sub_02007DEC(param0->unk_12C[0], 6, 0);
            ov105_022448F4(param0, 3, ov105_02245538(param0, 1, 0), 21, 11);
            sub_0200872C(param0->unk_128, 16, 0, 1, 0xffff);
        }

        if (sub_020087B4(param0->unk_12C[0])) {
            (void)0;
        }

        param0->unk_19++;

        if (param0->unk_19 < 21) {
            break;
        }

        ov105_022448F4(param0, 3, ov105_02245538(param0, 2, 0), 21, 11);
        param0->unk_13_5 = 0;

        if (ov104_0223AED4(param0->unk_09) == 1) {
            param0->unk_3BF = 1;
            ov105_022457C0(param0);
        }

        ov105_022433AC(param0);
        return 1;
    }

    return 0;
}

static void ov105_022433AC (UnkStruct_ov105_02241FF4 * param0)
{
    int v0;
    u8 v1;

    v1 = ov104_0223AA50(param0->unk_09);

    for (v0 = 0; v0 < param0->unk_11; v0++) {
        ov105_02244FF8(param0, &param0->unk_50[2 + v0], param0->unk_324[v0], 0, 0, 15, 2, 0, 0, param0->unk_31C);
    }

    ov105_02244FF8(param0, &param0->unk_50[2 + param0->unk_11], ov105_022461A0(param0->unk_30C), 0, 0, 15, 2, 0, 0, param0->unk_31C);
    ov105_02244F0C(param0, &param0->unk_50[0], 0, 0, 0);
    ov105_022461A4(param0->unk_30C, 0);
    ov105_02245F50(param0->unk_2F4[ov105_022461A0(param0->unk_30C)]);
    ov105_02245FAC(param0->unk_2F4[ov105_022461A0(param0->unk_30C)], 1);
    ov105_02245F90(param0->unk_2F4[ov105_022461A0(param0->unk_30C)], 6);
    ov105_02244EE8(param0, 0, (param0->unk_11 + 1));

    param0->unk_10 = ov105_02244D14(param0, 0);
    return;
}

static BOOL ov105_022434BC (UnkStruct_ov105_02241FF4 * param0)
{
    int v0;
    u32 v1;

    switch (param0->unk_08) {
    case 0:
        ov105_02245528(param0, 0);

        if (param0->unk_13_1 == 0) {
            param0->unk_08 = 1;
        } else {
            param0->unk_08 = 2;
        }

        param0->unk_13_1 = 0;
        break;
    case 1:
        ov105_02246080(param0->unk_30C);

        if (Unk_021BF67C.unk_48 & (PAD_KEY_LEFT | PAD_KEY_RIGHT | PAD_KEY_UP | PAD_KEY_DOWN)) {
            sub_02005748(1500);
            ov105_022453F8(param0, param0->unk_11, ov105_022461A0(param0->unk_30C), 1, param0->unk_31C);
        }

        if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
            sub_02005748(1500);

            if (ov105_022461A0(param0->unk_30C) == (param0->unk_1A - 1)) {
                ov105_02245528(param0, 1);
                return 1;
            } else {
                ov105_022461A4(param0->unk_30C, 1);
                ov105_02244DF0(param0);

                param0->unk_310 = ov105_02245FB8(&param0->unk_144, (NELEMS(Unk_ov105_02246308)), (NELEMS(Unk_ov105_02246308)), 1, 0, Unk_ov105_02246308, NULL);
                param0->unk_08++;
            }
        } else if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
            sub_02005748(1500);
            ov105_02245528(param0, 1);
            return 1;
        }
        break;
    case 2:
        v1 = sub_02001BE0(param0->unk_FC);
        ov105_02246080(param0->unk_310);

        switch (v1) {
        case 0xffffffff:
            break;
        case 0:
            sub_02001BC4(param0->unk_FC, NULL);
            ov105_02245A98(param0->unk_F0.unk_04);
            ov105_02246060(param0->unk_310);
            param0->unk_310 = NULL;
            param0->unk_13_6 = 1;
            sub_0200F174(0, 0, 0, 0x0, 6, 1, 93);
            param0->unk_08++;
            break;
        case 4:
            sub_02001BC4(param0->unk_FC, NULL);
            ov105_02245A98(param0->unk_F0.unk_04);
            ov105_02243738(param0);
            return 1;
        case 0xfffffffe:
        case 2:
        default:
            sub_02001BC4(param0->unk_FC, NULL);
            ov105_02245A98(param0->unk_F0.unk_04);
            ov105_022461A4(param0->unk_30C, 0);
            ov105_02246060(param0->unk_310);
            param0->unk_310 = NULL;
            ov105_02246260(param0->unk_4C, &param0->unk_50[7]);
            param0->unk_10 = ov105_02244C60(param0, &param0->unk_50[7], 19, 1, 1, 0xff, 1, 2, 15, 0);
            sub_0201A9A4(&param0->unk_50[7]);
            param0->unk_08 = 1;
            break;
        }
        break;
    case 3:
        if (sub_0200F2AC() == 1) {
            ov105_02245464(param0);
            ov105_022451B4(param0);
            param0->unk_04 = sub_020067E8(&Unk_020F410C, param0->unk_140, 93);
            param0->unk_13_1 = 1;
            return 1;
        }
        break;
    case 4:
        if (param0->unk_04 == NULL) {
            return 1;
        }
        break;
    case 5:
        if (sub_0200F2AC() == 1) {
            param0->unk_08 = 2;
        }
        break;
    }

    return 0;
}

static void ov105_02243738 (UnkStruct_ov105_02241FF4 * param0)
{
    ov105_02245F44(param0->unk_2F4[ov105_022461A0(param0->unk_30C)]);
    ov105_02245FAC(param0->unk_2F4[ov105_022461A0(param0->unk_30C)], 0);
    ov105_02245F90(param0->unk_2F4[ov105_022461A0(param0->unk_30C)], 6);
    ov105_02244FF8(param0, &param0->unk_50[2 + param0->unk_11], ov105_022461A0(param0->unk_30C), 0, 0, 15, 2, 0, 0, param0->unk_31C);

    param0->unk_324[param0->unk_11] = ov105_022461A0(param0->unk_30C);
    param0->unk_11++;

    ov105_02246060(param0->unk_310);
    param0->unk_310 = NULL;

    ov105_02246060(param0->unk_30C);
    param0->unk_30C = NULL;
    param0->unk_13_2 = 1;

    sub_0201ADA4(&param0->unk_50[2], 0);
    sub_0201A9A4(&param0->unk_50[2]);

    return;
}

static BOOL ov105_02243818 (UnkStruct_ov105_02241FF4 * param0)
{
    int v0, v1;
    u32 v2;

    switch (param0->unk_08) {
    case 0:

        sub_0201ADA4(&param0->unk_50[2], 0);
        sub_0201A9A4(&param0->unk_50[2 + param0->unk_11]);
        sub_02007DC8(param0->unk_12C[0]);

        param0->unk_10 = ov105_02244D14(param0, 10);

        ov105_02246074(param0->unk_30C, 0);
        ov105_022461A4(param0->unk_30C, 1);
        ov105_02244E94(param0);
        param0->unk_310 = ov105_02245FB8(&param0->unk_144, (NELEMS(Unk_ov105_022462F4)), (NELEMS(Unk_ov105_022462F4)), 1, 0, Unk_ov105_022462F4, NULL);
        param0->unk_08++;
        break;
    case 1:
        v2 = sub_02001BE0(param0->unk_FC);
        ov105_02246080(param0->unk_310);

        switch (v2) {
        case 0xffffffff:
            break;
        case 0:
            sub_02001BC4(param0->unk_FC, NULL);
            ov105_02245A98(param0->unk_F0.unk_04);
            ov105_02246060(param0->unk_310);
            param0->unk_310 = NULL;
            param0->unk_13_3 = 0;

            if (ov104_0223AED4(param0->unk_09) == 1) {
                param0->unk_10 = ov105_02244D14(param0, 2);
            }

            param0->unk_08++;
            break;
        case 0xfffffffe:
        case 1:
        default:
            sub_02001BC4(param0->unk_FC, NULL);
            ov105_02245A98(param0->unk_F0.unk_04);
            ov105_02246060(param0->unk_310);
            param0->unk_310 = NULL;
            ov105_0224396C(param0);
            param0->unk_08++;
            break;
        }
        break;
    case 2:
        return 1;
    }

    return 0;
}

static void ov105_0224396C (UnkStruct_ov105_02241FF4 * param0)
{
    ov105_022461C0(param0->unk_30C, 0);
    ov105_02244FF8(param0, &param0->unk_50[2], ov105_022461A0(param0->unk_30C), 0, 0, 15, 2, 0, 0, param0->unk_31C);
    ov105_022455C4(param0, 0, Party_GetPokemonBySlotIndex(param0->unk_31C, ov105_022461A0(param0->unk_30C)), 120, 43, 1);
    ov105_02246074(param0->unk_30C, 1);
    ov105_022461A4(param0->unk_30C, 0);
    ov105_02245528(param0, 1);
    ov105_02246260(param0->unk_4C, &param0->unk_50[7]);

    param0->unk_10 = ov105_02244C60(param0, &param0->unk_50[7], 19, 1, 1, 0xff, 1, 2, 15, 0);
    sub_0201A9A4(&param0->unk_50[7]);
    param0->unk_10 = ov105_02244D14(param0, 9);

    return;
}

static BOOL ov105_02243A3C (UnkStruct_ov105_02241FF4 * param0)
{
    int v0, v1;
    u32 v2;
    u8 v3;

    switch (param0->unk_08) {
    case 0:
        ov105_02246260(param0->unk_4C, &param0->unk_50[7]);

        param0->unk_10 = ov105_02244C60(param0, &param0->unk_50[7], 23, 1, 1, 0xff, 1, 2, 15, 0);
        param0->unk_10 = ov105_02244CC0(param0, &param0->unk_50[7], 24, 1, 1 + 16, 0xff, 1, 2, 15, 0);

        sub_0201A9A4(&param0->unk_50[7]);

        if (ov104_0223AED4(param0->unk_09) == 0) {
            param0->unk_30C = ov105_02245FB8(&param0->unk_144, param0->unk_1B, ((NELEMS(Unk_ov105_02246350)) - 2), 2, 0, Unk_ov105_02246350, Unk_ov105_022462D4);
        } else {
            param0->unk_30C = ov105_02245FB8(&param0->unk_144, param0->unk_1B, ((NELEMS(Unk_ov105_0224637C)) - 2), 2, 0, Unk_ov105_0224637C, Unk_ov105_022462E4);
        }

        v3 = ov105_022461A0(param0->unk_30C);

        ov105_02244FF8(param0, &param0->unk_50[2], v3, 0, 0, 15, 2, 0, 0, param0->unk_320);
        ov105_0224628C(&param0->unk_50[5], sub_02027B50(param0->unk_138));

        param0->unk_10 = ov105_02244D14(param0, 13);
        param0->unk_08++;

        break;
    case 1:
        ov105_02246080(param0->unk_30C);

        if (Unk_021BF67C.unk_48 & (PAD_KEY_UP | PAD_KEY_DOWN)) {
            sub_02005748(1500);
            ov105_022453F8(param0, 0, ov105_022461A0(param0->unk_30C), 0, param0->unk_320);
        }

        if (Unk_021BF67C.unk_48 & (PAD_KEY_LEFT | PAD_KEY_RIGHT)) {
            sub_02005748(1500);
            ov105_022453F8(param0, 0, ov105_022461A0(param0->unk_30C), 0, param0->unk_320);
        }

        if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
            sub_02005748(1500);

            if (ov105_022461A0(param0->unk_30C) == (param0->unk_1B - 1)) {
                ov105_02245528(param0, 1);
                return 1;
            } else if (ov105_022461A0(param0->unk_30C) == (param0->unk_1B - 2)) {
                ov105_02243D20(param0);
                return 1;
            } else {
                ov105_022461A4(param0->unk_30C, 1);
                ov105_02244E94(param0);

                param0->unk_310 = ov105_02245FB8(&param0->unk_144, (NELEMS(Unk_ov105_022462F4)), (NELEMS(Unk_ov105_022462F4)), 1, 0, Unk_ov105_022462F4, NULL);
                param0->unk_10 = ov105_02244D14(param0, 14);
                param0->unk_08++;
            }
        } else if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
            sub_02005748(1500);
            ov105_02245528(param0, 1);
            return 1;
        }
        break;
    case 2:
        v2 = sub_02001BE0(param0->unk_FC);
        ov105_02246080(param0->unk_310);

        switch (v2) {
        case 0xffffffff:
            break;

        case 0:
            sub_02001BC4(param0->unk_FC, NULL);
            ov105_02245A98(param0->unk_F0.unk_04);
            ov105_02243D84(param0);

            if (ov104_0223AED4(param0->unk_09) == 1) {
                param0->unk_10 = ov105_02244D14(param0, 2);
            }

            param0->unk_08++;
            break;
        case 0xfffffffe:
        case 1:
        default:
            sub_02001BC4(param0->unk_FC, NULL);
            ov105_02245A98(param0->unk_F0.unk_04);
            ov105_02243DE4(param0);
            param0->unk_08 = 1;
            break;
        }
        break;
    case 3:
        return 1;
    }

    return 0;
}

static void ov105_02243D20 (UnkStruct_ov105_02241FF4 * param0)
{
    ov105_02246060(param0->unk_30C);

    param0->unk_30C = NULL;
    param0->unk_13_2 = 0;

    sub_0201ADA4(&param0->unk_50[2], 0);
    sub_0201A9A4(&param0->unk_50[2]);
    sub_02007DC8(param0->unk_12C[0]);

    sub_0201ADA4(&param0->unk_50[7], 15);
    sub_0200E084(&param0->unk_50[7], 1);
    sub_0201AD10(&param0->unk_50[7]);

    param0->unk_11--;
    param0->unk_324[0] = 0;

    return;
}

static void ov105_02243D84 (UnkStruct_ov105_02241FF4 * param0)
{
    param0->unk_13_3 = 1;
    param0->unk_324[param0->unk_11] = ov105_022461A0(param0->unk_30C);
    param0->unk_11++;

    ov105_02246060(param0->unk_310);
    param0->unk_310 = NULL;
    ov105_02246074(param0->unk_30C, 0);

    sub_0201ADA4(&param0->unk_50[2], 0);
    sub_0201A9A4(&param0->unk_50[2]);
    sub_02007DC8(param0->unk_12C[0]);

    return;
}

asm static void ov105_02243DE4 (UnkStruct_ov105_02241FF4 * param0)
{
    push {r4, lr}
    sub sp, #0x18
    add r4, r0, #0
    mov r0, #0xab
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    bl ov105_02246060
    mov r0, #0xab
    mov r1, #0
    lsl r0, r0, #2
    str r1, [r4, r0]
    sub r0, r0, #4
    ldr r0, [r4, r0]
    bl ov105_022461A4
    add r1, r4, #0
    ldr r0, [r4, #0x4c]
    add r1, #0xc0
    bl ov105_02246260
    mov r3, #1
    add r1, r4, #0
    str r3, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    str r3, [sp, #8]
    mov r0, #2
    str r0, [sp, #0xc]
    mov r0, #0xf
    str r0, [sp, #0x10]
    mov r0, #0
    str r0, [sp, #0x14]
    add r0, r4, #0
    add r1, #0xc0
    mov r2, #0x17
    bl ov105_02244C60
    strb r0, [r4, #0x10]
    mov r0, #0x11
    str r0, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r3, #1
    add r1, r4, #0
    str r3, [sp, #8]
    mov r0, #2
    str r0, [sp, #0xc]
    mov r0, #0xf
    str r0, [sp, #0x10]
    mov r0, #0
    str r0, [sp, #0x14]
    add r0, r4, #0
    add r1, #0xc0
    mov r2, #0x18
    bl ov105_02244CC0
    strb r0, [r4, #0x10]
    mov r0, #0x4e
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    bl sub_02027B50
    add r1, r0, #0
    add r0, r4, #0
    add r0, #0xa0
    bl ov105_0224628C
    add r0, r4, #0
    mov r1, #0xd
    bl ov105_02244D14
    strb r0, [r4, #0x10]
    add r4, #0xc0
    add r0, r4, #0
    bl sub_0201A9A4
    add sp, #0x18
    pop {r4, pc}
}

static BOOL ov105_02243E84 (UnkStruct_ov105_02241FF4 * param0)
{
    int v0, v1;
    u32 v2;

    switch (param0->unk_08) {
    case 0:
        sub_0201ADA4(&param0->unk_50[2], 0);
        sub_0201A9A4(&param0->unk_50[2]);
        sub_02007DC8(param0->unk_12C[0]);

        ov105_0224628C(&param0->unk_50[5], sub_02027B50(param0->unk_138));
        param0->unk_10 = ov105_02244D14(param0, 10);
        ov105_02246074(param0->unk_30C, 0);

        ov105_02244E94(param0);
        param0->unk_310 = ov105_02245FB8(&param0->unk_144, (NELEMS(Unk_ov105_022462F4)), (NELEMS(Unk_ov105_022462F4)), 1, 0, Unk_ov105_022462F4, NULL);
        param0->unk_08++;
        break;

    case 1:
        v2 = sub_02001BE0(param0->unk_FC);
        ov105_02246080(param0->unk_310);

        switch (v2) {
        case 0xffffffff:
            break;
        case 0:
            sub_02001BC4(param0->unk_FC, NULL);

            ov105_02245A98(param0->unk_F0.unk_04);
            ov105_02246060(param0->unk_310);

            param0->unk_310 = NULL;
            param0->unk_13_3 = 0;

            if (ov104_0223AED4(param0->unk_09) == 1) {
                param0->unk_10 = ov105_02244D14(param0, 2);
            }

            param0->unk_08++;
            break;
        case 0xfffffffe:
        case 1:
        default:
            sub_02001BC4(param0->unk_FC, NULL);

            ov105_02246060(param0->unk_30C);
            param0->unk_30C = NULL;

            ov105_02246060(param0->unk_310);
            param0->unk_310 = NULL;

            ov105_02243FDC(param0);
            param0->unk_08++;
            break;
        }
        break;
    case 2:
        return 1;
    }

    return 0;
}

static void ov105_02243FDC (UnkStruct_ov105_02241FF4 * param0)
{
    ov105_022455C4(param0, 0, Party_GetPokemonBySlotIndex(param0->unk_320, 0), 120, 43, 0);
    ov105_02245528(param0, 1);

    return;
}

static BOOL ov105_0224400C (UnkStruct_ov105_02241FF4 * param0)
{
    u8 v0;
    int v1, v2, v3, v4;
    VecFx32 v5;
    const VecFx32 * v6;

    v0 = ov104_0223AA50(param0->unk_09);

    switch (param0->unk_08) {
    case 0:
        param0->unk_13_5 = 1;

        sub_0201ACF4(&param0->unk_50[1]);
        sub_0201ACF4(&param0->unk_50[8]);
        sub_0201ACF4(&param0->unk_50[9]);

        sub_0201ADA4(&param0->unk_50[0], 0);
        sub_0201A9A4(&param0->unk_50[0]);

        sub_0200E084(&param0->unk_50[5], 1);
        sub_0201AD10(&param0->unk_50[5]);

        ov105_02246244(param0->unk_50);
        ov105_022448F4(param0, 3, ov105_02245538(param0, 1, 0), 21, 11);

        sub_0200872C(param0->unk_128, 0, 16, 0, 0xffff);

        param0->unk_19 = 0;
        param0->unk_08++;
        break;
    case 1:
        param0->unk_19++;

        if (param0->unk_19 < 2) {
            break;
        }

        sub_02007DC8(param0->unk_12C[0]);

        ov105_02244924(param0, 1);
        ov105_022448F4(param0, 3, ov105_02245538(param0, 0, 0), 21, 11);
        ov105_02244BE4(param0, 3);

        param0->unk_19 = 0;
        param0->unk_08++;
        break;
    case 2:
        if (sub_020087B4(param0->unk_12C[0])) {
            (void)0;
        }

        if (ov105_02245E48(param0->unk_314) == 1) {
            break;
        }

        ov105_02245A30(param0);
        ov105_02244AA8(param0, 1);
        ov105_02244A60(param0, 2);
        ov105_02244A18(param0, 3);

        sub_02019184(param0->unk_4C, 2, 0, param0->unk_0C);
        sub_02005748(1554);

        param0->unk_19 = 0;
        param0->unk_08++;
        break;
    case 3:
        if (ov105_02244830(param0) == 1) {
            sub_020057A4(1554, 0);
            sub_02005748(1657);

            param0->unk_14 = (4 * 2);

            for (v1 = 0; v1 < param0->unk_12; v1++) {
                param0->unk_2F4[v1] = ov105_02245EA8(param0->unk_2F4[v1]);
                param0->unk_2F4[v1] = NULL;
            }

            if (ov104_0223AED4(param0->unk_09) == 1) {
                if (param0->unk_12 == (NELEMS(Unk_ov105_022462EC))) {
                    param0->unk_12 = (NELEMS(Unk_ov105_02246320));
                } else {
                    param0->unk_12 = (NELEMS(Unk_ov105_022462EC));
                }
            }

            ov105_0224260C(param0);

            for (v1 = 0; v1 < param0->unk_12; v1++) {
                ov105_02245F5C(param0->unk_2F4[v1]);
            }

            sub_02005748(1554);

            param0->unk_19 = 0;
            param0->unk_08++;
        }
        break;
    case 4:
        if (ov105_02244780(param0) == 1) {
            sub_020057A4(1554, 0);
            sub_02005748(1657);

            for (v1 = 0; v1 < param0->unk_12; v1++) {
                ov105_02245F90(param0->unk_2F4[v1], 10);
            }

            param0->unk_14 = (4 * 2);

            ov105_02244924(param0, 0);

            param0->unk_19 = 0;
            param0->unk_08++;
        }
        break;
    case 5:
        if (ov105_02245E48(param0->unk_314) == 1) {
            break;
        }

        ov105_02245A30(param0);

        param0->unk_19 = 0;
        param0->unk_08++;
        break;
    case 6:
        if (param0->unk_19 == 0) {
            ov105_02244B90(param0, 3);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);

            if (param0->unk_13_2 == 0) {
                ov105_0224266C(param0);
            } else {
                ov105_022455C4(param0, 0, Party_GetPokemonBySlotIndex(param0->unk_320, 0), 120, 43, 0);
            }

            sub_02007DEC(param0->unk_12C[0], 6, 0);
            sub_0200872C(param0->unk_128, 16, 0, 1, 0xffff);

            ov105_022448F4(param0, 3, ov105_02245538(param0, 1, 1), 21, 11);
        }

        if (sub_020087B4(param0->unk_12C[0])) {
            (void)0;
        }

        param0->unk_19++;

        if (param0->unk_19 < 21) {
            break;
        }

        ov105_022448F4(param0, 3, ov105_02245538(param0, 2, 1), 21, 11);
        ov105_02245A64(param0);

        param0->unk_13_5 = 0;

        if (ov104_0223AED4(param0->unk_09) == 1) {
            param0->unk_3BF = 1;
            ov105_022457C0(param0);
        }

        param0->unk_19 = 0;
        return 1;
    }

    return 0;
}

static BOOL ov105_0224435C (UnkStruct_ov105_02241FF4 * param0)
{
    switch (param0->unk_08) {
    case 0:
        if (ov105_02245620(param0, 10, param0->unk_13_3) == 1) {
            param0->unk_08++;
        }
        break;
    case 1:
        if (param0->unk_3BE < 2) {
            break;
        }

        param0->unk_3BE = 0;
        return 1;
    }

    return 0;
}

static BOOL ov105_0224439C (UnkStruct_ov105_02241FF4 * param0)
{
    int v0;

    switch (param0->unk_08) {
    case 0:
        param0->unk_10 = ov105_02244D14(param0, 15);

        sub_020365F4();
        sub_020364F0(165);

        param0->unk_08++;

        break;
    case 1:
        if (sub_02036540(165) == 1) {
            sub_020365F4();
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov105_022443DC (UnkStruct_ov105_02241FF4 * param0)
{
    int v0;

    switch (param0->unk_08) {
    case 0:
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 93);
        param0->unk_08++;
        break;
    case 1:
        if (sub_0200F2AC() == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov105_02244424 (UnkStruct_ov105_02241FF4 * param0)
{
    int v0;
    Pokemon *v1;
    BoxPokemon *v2;

    switch (param0->unk_08) {
    case 0:

        if (param0->unk_310 != NULL) {
            sub_02001BC4(param0->unk_FC, NULL);
            ov105_02245A98(param0->unk_F0.unk_04);
            ov105_02246060(param0->unk_310);
            param0->unk_310 = NULL;
        }

        ov104_0222E5D0(param0->unk_20, 0);

        v1 = Party_GetPokemonBySlotIndex(param0->unk_31C, (2 + param0->unk_324[0]));
        v2 = sub_02076B10(v1);

        ov105_02244F00(param0, 1, v2);

        v1 = Party_GetPokemonBySlotIndex(param0->unk_320, param0->unk_324[1]);
        v2 = sub_02076B10(v1);

        ov105_02244F00(param0, 2, v2);
        ov105_0224628C(&param0->unk_50[5], sub_02027B50(param0->unk_138));

        param0->unk_10 = ov105_02244C60(param0, &param0->unk_50[5], 16, 1, 1, sub_02027AC0(sub_02025E44(param0->unk_13C)), 1, 2, 15, 1);

        sub_0201A9A4(&param0->unk_50[5]);

        param0->unk_19 = 80;
        param0->unk_08++;

        break;
    case 1:
        if (sub_0201D724(param0->unk_10) == 0) {
            param0->unk_19 = 0;
            return 1;
        }

        break;
    }

    return 0;
}

static void ov105_0224451C (void * param0)
{
    UnkStruct_ov105_02241FF4 * v0 = param0;

    if (v0->unk_04 != NULL) {
        return;
    }

    sub_02008A94(v0->unk_128);

    if (v0->unk_120 != NULL) {
        sub_02003694(v0->unk_120);
    }

    sub_0201C2B8(v0->unk_4C);
    sub_0201DCAC();
    sub_0200A858();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov105_02244564 (void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_01_FG
    };

    GXLayers_SetBanks(&v0);
    return;
}

static void ov105_02244584 (UnkStruct_02018340 * param0)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        sub_02018368(&v0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 1, &v1, 0);
        sub_02019690(1, 32, 0, 93);
        sub_02019EBC(param0, 1);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1800,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v2, 0);
        sub_02019EBC(param0, 2);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x2800,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 3, &v3, 0);
        sub_02019EBC(param0, 3);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x3800,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 4, &v4, 0);
        sub_02019EBC(param0, 4);
    }

    G2_SetBG0Priority(0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    return;
}

static void ov105_02244678 (UnkStruct_ov105_02241FF4 * param0)
{
    ov105_02244564();
    ov105_02244584(param0->unk_4C);

    param0->unk_120 = sub_02002F38(93);

    sub_02002F70(param0->unk_120, 2, (32 * 16), 93);
    sub_02002F70(param0->unk_120, 0, (32 * 16), 93);

    ov105_02244AF8();

    if (param0->unk_13_4 == 0) {
        ov105_02244AA8(param0, 1);
        ov105_02244A60(param0, 2);
        ov105_02244A18(param0, 3);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
    } else {
        ov105_022449A4(param0, 3);
        ov105_02244A60(param0, 2);

        sub_02019184(param0->unk_4C, 2, 0, param0->unk_0C);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    }

    ov105_02244B30(param0, 4);
    return;
}

static void ov105_0224472C (UnkStruct_ov105_02241FF4 * param0)
{
    ov105_02245AAC(&param0->unk_144);
    return;
}

static void ov105_0224473C (UnkStruct_02018340 * param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);

    sub_02019044(param0, 3);
    sub_02019044(param0, 2);
    sub_02019044(param0, 1);
    sub_02019044(param0, 4);
    Heap_FreeToHeap(param0);

    return;
}

static void ov105_02244778 (UnkStruct_ov105_02241FF4 * param0, int * param1, int param2)
{
    param0->unk_08 = 0;
    *param1 = param2;
    return;
}

static BOOL ov105_02244780 (UnkStruct_ov105_02241FF4 * param0)
{
    int v0, v1, v2, v3;
    const VecFx32 * v4;

    v3 = 0;

    sub_02019184(param0->unk_4C, 2, 1, 8);
    param0->unk_0C = sub_020192EC(param0->unk_4C, 2);

    for (v0 = 0; v0 < param0->unk_12; v0++) {
        v4 = ov105_02245F2C(param0->unk_2F4[v0]);

        if (((v4->x / FX32_ONE) - 8) <= ov105_02245F88(param0->unk_2F4[v0])) {
            v1 = ov105_02245F88(param0->unk_2F4[v0]);
            v2 = ov105_02245F8C(param0->unk_2F4[v0]);
            ov105_02245F14(param0->unk_2F4[v0], v1, v2);
            v3 = 1;
        } else {
            ov105_02245EC8(param0->unk_2F4[v0], -8, 0);
        }
    }

    ov105_022448BC(param0);

    if (v3 == 1) {
        return 1;
    }

    return 0;
}

static BOOL ov105_02244830 (UnkStruct_ov105_02241FF4 * param0)
{
    int v0, v1, v2, v3;
    const VecFx32 * v4;

    v3 = 0;

    sub_02019184(param0->unk_4C, 2, 1, 8);
    param0->unk_0C = sub_020192EC(param0->unk_4C, 2);

    for (v0 = 0; v0 < param0->unk_12; v0++) {
        v4 = ov105_02245F2C(param0->unk_2F4[v0]);

        if (((v4->x / FX32_ONE) - 8) < -24) {
            ov105_02245EBC(param0->unk_2F4[v0], 0);
            v3++;
        } else {
            ov105_02245EC8(param0->unk_2F4[v0], -8, 0);
        }
    }

    ov105_022448BC(param0);

    if (v3 == param0->unk_12) {
        return 1;
    }

    return 0;
}

static void ov105_022448BC (UnkStruct_ov105_02241FF4 * param0)
{
    if ((param0->unk_14 % 4) == 0) {
        if ((param0->unk_14 / 4) >= 4) {
            param0->unk_14 = 0;
        }

        ov105_022448F4(param0, 1, (param0->unk_14 / 4) + 6, 32, 32);
    }

    param0->unk_14++;
    return;
}

static void ov105_022448F4 (UnkStruct_ov105_02241FF4 * param0, u32 param1, u8 param2, u8 param3, u8 param4)
{
    sub_02019E2C(param0->unk_4C, param1, 0, 0, param3, param4, param2);
    sub_0201C3C0(param0->unk_4C, param1);

    return;
}

static void ov105_02244924 (UnkStruct_ov105_02241FF4 * param0, u32 param1)
{
    u32 v0;

    switch (param1) {
    case 0:
        sub_02005748(1518);
        v0 = 2;
        break;
    case 1:
        sub_02005748(1519);
        v0 = 3;
        break;
    case 4:
        sub_02005748(1518);
        v0 = 2;
        break;
    case 5:
        sub_02005748(1519);
        v0 = 3;
        break;
    }

    param0->unk_314 = ov105_022459B0(param0, ov105_02245584(param0, param1));

    if (ov104_0223AED4(param0->unk_09) == 1) {
        param0->unk_318 = ov105_02245A04(param0, v0);
    }

    return;
}

static void ov105_022449A4 (UnkStruct_ov105_02241FF4 * param0, u32 param1)
{
    sub_020070E8(param0->unk_338, 4, param0->unk_4C, param1, 0, 0, 1, 93);

    if (ov104_0223AED4(param0->unk_09) == 0) {
        sub_0200710C(param0->unk_338, 5, param0->unk_4C, param1, 0, 0, 1, 93);
    } else {
        sub_0200710C(param0->unk_338, 11, param0->unk_4C, param1, 0, 0, 1, 93);
    }

    return;
}

static void ov105_02244A18 (UnkStruct_ov105_02241FF4 * param0, u32 param1)
{
    sub_020070E8(param0->unk_338, 4, param0->unk_4C, param1, 0, 0, 1, 93);
    sub_0200710C(param0->unk_338, 7, param0->unk_4C, param1, 0, 0, 1, 93);

    return;
}

static void ov105_02244A60 (UnkStruct_ov105_02241FF4 * param0, u32 param1)
{
    sub_020070E8(param0->unk_338, 4, param0->unk_4C, param1, 0, 0, 1, 93);
    sub_0200710C(param0->unk_338, 8, param0->unk_4C, param1, 0, 0, 1, 93);

    return;
}

static void ov105_02244AA8 (UnkStruct_ov105_02241FF4 * param0, u32 param1)
{
    sub_020070E8(param0->unk_338, 4, param0->unk_4C, param1, 0, 0, 1, 93);
    sub_0200710C(param0->unk_338, 9, param0->unk_4C, param1, 0, 0, 1, 93);
    sub_02019060(1, 2);

    return;
}

static void ov105_02244AF8 (void)
{
    void * v0;
    NNSG2dPaletteData * v1;

    v0 = sub_02006F88(150, 130, &v1, 93);

    DC_FlushRange(v1->pRawData, (sizeof(u16) * 16 * 11));
    GX_LoadBGPltt(v1->pRawData, 0, (sizeof(u16) * 16 * 11));
    Heap_FreeToHeap(v0);

    return;
}

static void ov105_02244B30 (UnkStruct_ov105_02241FF4 * param0, u32 param1)
{
    sub_020070E8(param0->unk_338, 125, param0->unk_4C, param1, 0, 0, 1, 93);
    sub_0200710C(param0->unk_338, 126, param0->unk_4C, param1, 0, 0, 1, 93);
    sub_02007130(param0->unk_338, 171, 4, 0, 0x20, 93);

    return;
}

static void ov105_02244B90 (UnkStruct_ov105_02241FF4 * param0, u32 param1)
{
    if (ov104_0223AED4(param0->unk_09) == 0) {
        sub_0200710C(param0->unk_338, 5, param0->unk_4C, 3, 0, 0, 1, 93);
    } else {
        sub_0200710C(param0->unk_338, 11, param0->unk_4C, 3, 0, 0, 1, 93);
    }

    return;
}

static void ov105_02244BE4 (UnkStruct_ov105_02241FF4 * param0, u32 param1)
{
    sub_0200710C(param0->unk_338, 7, param0->unk_4C, 3, 0, 0, 1, 93);
    return;
}

static void ov105_02244C0C (UnkStruct_ov105_02241FF4 * param0, u32 param1)
{
    if (ov104_0223AED4(param0->unk_09) == 0) {
        sub_0200710C(param0->unk_338, 10, param0->unk_4C, 3, 0, 0, 1, 93);
    } else {
        sub_0200710C(param0->unk_338, 12, param0->unk_4C, 3, 0, 0, 1, 93);
    }

    return;
}

static u8 ov105_02244C60 (UnkStruct_ov105_02241FF4 * param0, UnkStruct_0205AA50 * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9)
{
    sub_0201ADA4(param1, param8);
    sub_0200B1B8(param0->unk_1C, param2, param0->unk_28);
    sub_0200C388(param0->unk_20, param0->unk_24, param0->unk_28);

    return sub_0201D78C(param1, param9, param0->unk_24, param3, param4, param5, (u32)((((param6) & 0xff) << 16) | (((param7) & 0xff) << 8) | (((param8) & 0xff) << 0)), NULL);
}

static u8 ov105_02244CC0 (UnkStruct_ov105_02241FF4 * param0, UnkStruct_0205AA50 * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9)
{
    sub_0200B1B8(param0->unk_1C, param2, param0->unk_28);
    sub_0200C388(param0->unk_20, param0->unk_24, param0->unk_28);

    return sub_0201D78C(param1, param9, param0->unk_24, param3, param4, param5, (u32)((((param6) & 0xff) << 16) | (((param7) & 0xff) << 8) | (((param8) & 0xff) << 0)), NULL);
}

static u8 ov105_02244D14 (UnkStruct_ov105_02241FF4 * param0, int param1)
{
    u8 v0;

    v0 = ov105_02244C60(param0, &param0->unk_50[5], param1, 1, 1, 0xff, 1, 2, 15, 1);
    sub_0201A9A4(&param0->unk_50[5]);

    return v0;
}

static void ov105_02244D48 (UnkStruct_ov105_02241FF4 * param0, UnkStruct_0205AA50 * param1, u8 param2)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_100[v0].unk_00 = NULL;
        param0->unk_100[v0].unk_04 = 0;
    }

    param0->unk_F0.unk_00 = param0->unk_100;
    param0->unk_F0.unk_04 = param1;
    param0->unk_F0.unk_08 = 0;
    param0->unk_F0.unk_09 = 1;
    param0->unk_F0.unk_0A = param2;
    param0->unk_F0.unk_0B_0 = 0;
    param0->unk_F0.unk_0B_4 = 1;
    param0->unk_F0.unk_0B_6 = 1;

    return;
}

static void ov105_02244DC4 (UnkStruct_ov105_02241FF4 * param0, u8 param1, u8 param2, int param3)
{
    int v0;
    void * v1;

    sub_0200B1B8(param0->unk_1C, param3, param0->unk_2C[param1]);

    param0->unk_100[param1].unk_00 = (const void *)param0->unk_2C[param1];
    param0->unk_100[param1].unk_04 = param2;

    return;
}

static void ov105_02244DF0 (UnkStruct_ov105_02241FF4 * param0)
{
    ov105_02246260(param0->unk_4C, &param0->unk_50[7]);
    ov105_02244D48(param0, &param0->unk_50[7], (NELEMS(Unk_ov105_02246308)));
    ov105_02244DC4(param0, 0, 0, 5);

    if (ov105_022454F8(param0, 0) == 1) {
        if (ov105_02245F3C(param0->unk_2F4[ov105_022461A0(param0->unk_30C)]) == 0) {
            ov105_02244DC4(param0, 1, 1, 6);
        } else {
            ov105_02244DC4(param0, 1, 3, 8);
        }
    } else {
        ov105_02244DC4(param0, 1, 4, 21);
    }

    ov105_02244DC4(param0, 2, 2, 7);
    param0->unk_FC = sub_02001B7C(&param0->unk_F0, 0, 0, 0, 93, PAD_BUTTON_B);

    return;
}

static void ov105_02244E94 (UnkStruct_ov105_02241FF4 * param0)
{
    ov105_02246260(param0->unk_4C, &param0->unk_50[7]);
    ov105_02244D48(param0, &param0->unk_50[7], (NELEMS(Unk_ov105_022462F4)));
    ov105_02244DC4(param0, 0, 0, 3);
    ov105_02244DC4(param0, 1, 1, 4);

    param0->unk_FC = sub_02001B7C(&param0->unk_F0, 0, 0, 0, 93, PAD_BUTTON_B);
    return;
}

static void ov105_02244EE8 (UnkStruct_ov105_02241FF4 * param0, u32 param1, s32 param2)
{
    sub_0200B60C(param0->unk_20, param1, param2, 1, 0, 1);
    return;
}

static void ov105_02244F00 (UnkStruct_ov105_02241FF4 * param0, u32 param1, BoxPokemon *boxMon)
{
    sub_0200B538(param0->unk_20, param1, boxMon);
    return;
}

static void ov105_02244F0C (UnkStruct_ov105_02241FF4 * param0, UnkStruct_0205AA50 * param1, u32 param2, u32 param3, u8 param4)
{
    u32 v0;
    const UnkStruct_02025E6C * v1;
    UnkStruct_02023790 * v2;

    v1 = sub_02025E38(param0->unk_13C);
    v2 = sub_02023790((7 + 1), 93);

    sub_0201ADA4(param1, 0);
    sub_02023D28(v2, sub_02025EF0(v1));

    if (sub_02025F30(v1) == 0) {
        v0 = ((u32)(((7 & 0xff) << 16) | ((8 & 0xff) << 8) | (((0 & 0xff) << 0))));
    } else {
        v0 = ((u32)(((3 & 0xff) << 16) | ((4 & 0xff) << 8) | (((0 & 0xff) << 0))));
    }

    sub_0201D78C(param1, param4, v2, param2, param3, 0xff, v0, NULL);
    sub_020237BC(v2);
    sub_0201A9A4(param1);

    return;
}

static void ov105_02244F84 (UnkStruct_ov105_02241FF4 * param0, UnkStruct_0205AA50 * param1, u32 param2, u32 param3, u8 param4)
{
    u32 v0;
    UnkStruct_02023790 * v1;
    UnkStruct_02025E6C * v2;

    v2 = sub_02032EE8(1 - sub_0203608C());
    v1 = sub_02023790((7 + 1), 93);

    sub_0201ADA4(param1, 0);
    sub_02025EF4(v2, v1);

    if (sub_02025F30(v2) == 0) {
        v0 = ((u32)(((7 & 0xff) << 16) | ((8 & 0xff) << 8) | (((0 & 0xff) << 0))));
    } else {
        v0 = ((u32)(((3 & 0xff) << 16) | ((4 & 0xff) << 8) | (((0 & 0xff) << 0))));
    }

    sub_0201D78C(param1, param4, v1, param2, param3, 0xff, v0, NULL);
    sub_020237BC(v1);
    sub_0201A9A4(param1);

    return;
}

static void ov105_02244FF8 (UnkStruct_ov105_02241FF4 * param0, UnkStruct_0205AA50 * param1, u8 param2, u32 param3, u32 param4, u8 param5, u8 param6, u8 param7, u8 param8, const Party * param9)
{
    u8 v0;
    u32 v1, v2, v3;
    UnkStruct_02023790 * v4;
    Pokemon *v5;
    u16 v6[(10 + 1)];

    v5 = Party_GetPokemonBySlotIndex(param9, param2);
    GetMonData(v5, MON_DATA_179, v6);
    sub_0201ADA4(param1, param7);

    v4 = sub_02023790((10 + 1), 93);
    sub_02023D28(v4, v6);
    sub_0201D78C(param1, param8, v4, param3, param4, 0xff, (u32)((((param5) & 0xff) << 16) | (((param6) & 0xff) << 8) | (((param7) & 0xff) << 0)), NULL);

    v0 = sub_0201C294(param1) - 1;
    v1 = GetMonData(v5, MON_DATA_111, NULL);
    v2 = (v1 == 0) ? 25 : 26;
    v3 = (v1 == 0) ? ((u32)(((7 & 0xff) << 16) | ((8 & 0xff) << 8) | (((0 & 0xff) << 0)))) : ((u32)(((3 & 0xff) << 16) | ((4 & 0xff) << 8) | (((0 & 0xff) << 0))));

    sub_020237E8(v4);

    if (v1 != 2) {
        sub_0200B1B8(param0->unk_1C, v2, v4);
        sub_0201D78C(param1, param8, v4, v0 * 8, param4, 0xff, v3, NULL);
    }

    sub_020237BC(v4);
    sub_0201A9A4(param1);

    return;
}

static void ov105_022450DC (UnkStruct_ov105_02241FF4 * param0, UnkStruct_0205AA50 * param1, u32 param2, u32 param3, u8 param4, u8 param5, u8 param6, u8 param7, u16 param8, u8 param9)
{
    u8 v0;
    u32 v1, v2;
    UnkStruct_0200B144 * v3;
    UnkStruct_02023790 * v4;
    Pokemon *v5;
    u16 v6[(10 + 1)];

    sub_0201ADA4(param1, param6);

    v3 = sub_0200B144(1, 26, 412, 93);
    v4 = sub_0200B1EC(v3, param8);

    sub_0200B190(v3);
    sub_0201D78C(param1, param7, v4, param2, param3, 0xff, (u32)((((param4) & 0xff) << 16) | (((param5) & 0xff) << 8) | (((param6) & 0xff) << 0)), NULL);

    v0 = sub_0201C294(param1) - 1;
    v1 = (param9 == 0) ? 25 : 26;
    v2 = (param9 == 0) ? ((u32)(((7 & 0xff) << 16) | ((8 & 0xff) << 8) | (((0 & 0xff) << 0)))) : ((u32)(((3 & 0xff) << 16) | ((4 & 0xff) << 8) | (((0 & 0xff) << 0))));

    sub_020237E8(v4);

    if (param9 != 2) {
        sub_0200B1B8(param0->unk_1C, v1, v4);
        sub_0201D78C(param1, param7, v4, v0 * 8, param3, 0xff, v2, NULL);
    }

    sub_020237BC(v4);

    return;
}

static void ov105_022451B4 (UnkStruct_ov105_02241FF4 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_12; v0++) {
        if (param0->unk_2F4[v0] != NULL) {
            param0->unk_2F4[v0] = ov105_02245EA8(param0->unk_2F4[v0]);
        }
    }

    if (param0->unk_30C != NULL) {
        ov105_02246060(param0->unk_30C);
        param0->unk_30C = NULL;
    }

    sub_02039794();

    sub_02002FA0(param0->unk_120, 2);
    sub_02002FA0(param0->unk_120, 0);
    sub_02002F54(param0->unk_120);

    param0->unk_120 = NULL;

    ov105_02245C50(&param0->unk_144);

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_12C[v0] != NULL) {
            sub_02007DC8(param0->unk_12C[v0]);
        }
    }

    sub_02007B6C(param0->unk_128);
    sub_0200B190(param0->unk_1C);
    sub_0200B3F0(param0->unk_20);
    sub_020237BC(param0->unk_24);
    sub_020237BC(param0->unk_28);

    for (v0 = 0; v0 < 4; v0++) {
        sub_020237BC(param0->unk_2C[v0]);
    }

    ov105_02246244(param0->unk_50);
    ov105_0224473C(param0->unk_4C);

    NARC_dtor(param0->unk_338);
    sub_020242C4(param0->unk_124);

    return;
}

static void ov105_022452A0 (UnkStruct_ov105_02241FF4 * param0)
{
    int v0;

    ov105_022452E4();

    param0->unk_124 = sub_02024220(93, 0, 2, 0, 2, ov105_02245CD0);
    param0->unk_4C = sub_02018340(93);

    ov105_0224531C(param0);
    ov105_02246214(param0->unk_4C, param0->unk_50);

    return;
}

static void ov105_022452E4 (void)
{
    sub_02017798(NULL, NULL);
    sub_020177BC(NULL, NULL);

    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    return;
}

static void ov105_0224531C (UnkStruct_ov105_02241FF4 * param0)
{
    int v0, v1;

    param0->unk_338 = NARC_ctor(150, 93);

    ov105_02244678(param0);
    ov105_0224472C(param0);

    param0->unk_1C = sub_0200B144(1, 26, 364, 93);
    param0->unk_20 = sub_0200B358(93);
    param0->unk_24 = sub_02023790(800, 93);
    param0->unk_28 = sub_02023790(800, 93);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_2C[v0] = sub_02023790(64, 93);
    }

    sub_02002E7C(0, 13 * 32, 93);
    sub_02002E98(0, 12 * 32, 93);

    param0->unk_128 = sub_0200762C(93);

    if (sub_02035E38()) {
        sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
        sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_02039734();
    }

    if (ov105_022454F8(param0, 0) == 1) {
        ov105_0224246C(param0);
        ov105_022424A0(param0);
    } else {
        ov105_0224260C(param0);
        ov105_0224266C(param0);
    }

    GXLayers_TurnBothDispOn();
    sub_02017798(ov105_0224451C, (void *)param0);

    return;
}

static void ov105_022453F8 (UnkStruct_ov105_02241FF4 * param0, u8 param1, u8 param2, int param3, const Party * param4)
{
    int v0 = param2;

    if (ov105_022461A0(param0->unk_30C) < param0->unk_12) {
        sub_02007DC8(param0->unk_12C[0]);
        ov105_022455C4(param0, 0, Party_GetPokemonBySlotIndex(param4, v0), 120, 43, param3);
        ov105_02244FF8(param0, &param0->unk_50[2 + param1], v0, 0, 0, 15, 2, 0, 0, param4);
    }

    return;
}

static void ov105_02245464 (UnkStruct_ov105_02241FF4 * param0)
{
    param0->unk_140 = Heap_AllocFromHeap(93, sizeof(UnkStruct_02098D38));
    memset(param0->unk_140, 0, sizeof(UnkStruct_02098D38));

    param0->unk_140->unk_00 = param0->unk_31C;
    param0->unk_140->unk_04 = param0->unk_138;
    param0->unk_140->unk_11 = 1;
    param0->unk_140->unk_12 = 1;
    param0->unk_140->unk_13 = param0->unk_12;
    param0->unk_140->unk_14 = ov105_022461A0(param0->unk_30C);
    param0->unk_140->unk_18 = 0;
    param0->unk_140->unk_1C = sub_0207A274(param0->unk_13C);
    param0->unk_140->unk_2C = 0;

    sub_0208D720(param0->unk_140, Unk_ov105_022462DC);
    sub_0208E9C0(param0->unk_140, sub_02025E38(param0->unk_13C));

    return;
}

static BOOL ov105_022454F8 (UnkStruct_ov105_02241FF4 * param0, u8 param1)
{
    if (param0->unk_0B == param1) {
        return 1;
    }

    return 0;
}

static u8 ov105_02245508 (u8 param0)
{
    switch (param0) {
    case 0:
    case 1:
        return 3;
    }

    return 2;
}

static BOOL ov105_02245518 (UnkStruct_ov105_02241FF4 * param0)
{
    if (param0->unk_13_0 == 0) {
        return 0;
    }

    return 1;
}

static void ov105_02245528 (UnkStruct_ov105_02241FF4 * param0, u8 param1)
{
    param0->unk_13_0 = param1;
    return;
}

static u8 ov105_02245538 (UnkStruct_ov105_02241FF4 * param0, u8 param1, u8 param2)
{
    u8 v0;

    v0 = 0;

    switch (param1) {
    case 0:
        if (param2 == 1) {
            v0 = 2;
        } else if (ov104_0223AED4(param0->unk_09) == 0) {
            v0 = 2;
        } else {
            v0 = 2;
        }
        break;
    case 1:
        if (param2 == 1) {
            v0 = 1;
        } else if (ov104_0223AED4(param0->unk_09) == 0) {
            v0 = 1;
        } else {
            v0 = 1;
        }
        break;
    case 2:
        if (param2 == 1) {
            v0 = 2;
        } else if (ov104_0223AED4(param0->unk_09) == 0) {
            v0 = 2;
        } else {
            v0 = 2;
        }
        break;
    }

    return v0;
}

static u32 ov105_02245584 (UnkStruct_ov105_02241FF4 * param0, u32 param1)
{
    switch (param1) {
    case 0:
        break;
    case 1:
        break;
    case 4:
        if (ov104_0223AED4(param0->unk_09) == 1) {
            return 11;
        }
        break;
    case 5:
        if (ov104_0223AED4(param0->unk_09) == 1) {
            return 12;
        }
        break;
    }

    return param1;
}

static void ov105_022455C4 (UnkStruct_ov105_02241FF4 * param0, u8 param1, Pokemon *param2, int param3, int param4, int param5)
{
    u32 v0, v1;

    param0->unk_12C[param1] = ov105_02245D88(param0->unk_128, 0, param2, param3, param4, 0);

    sub_02007DEC(param0->unk_12C[param1], 6, 0);

    v0 = GetMonData(param2, MON_DATA_SPECIES, NULL);
    v1 = GetMonData(param2, MON_DATA_FORM, NULL);

    if (sub_020759CC(v0, v1, 28) == 0) {
        ov105_02245DB8(param0->unk_12C[param1], param5);
    }

    return;
}

BOOL ov105_02245620 (UnkStruct_ov105_02241FF4 * param0, u16 param1, u16 param2)
{
    int v0, v1;

    if (ov104_0223AED4(param0->unk_09) == 0) {
        return 0;
    }

    switch (param1) {
    case 7:
        v1 = 29;
        ov105_02245684(param0, param1);
        break;
    case 8:
        v1 = 30;
        ov105_022456A8(param0, param1, param2);
        break;
    case 10:
        v1 = 32;
        ov105_02245884(param0, param1, param2);
        break;
    }

    if (sub_020359DC(v1, param0->unk_33C, 60) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void ov105_02245684 (UnkStruct_ov105_02241FF4 * param0, u16 param1)
{
    UnkStruct_02025E6C * v0;

    v0 = sub_02025E38(param0->unk_13C);
    param0->unk_33C[0] = param1;

    return;
}

void ov105_0224569C (int param0, int param1, void * param2, void * param3)
{
    int v0, v1;
    UnkStruct_ov105_02241FF4 * v2 = param3;
    const u16 * v3 = param2;

    v1 = 0;

    if (sub_0203608C() == param0) {
        return;
    }

    return;
}

void ov105_022456A8 (UnkStruct_ov105_02241FF4 * param0, u16 param1, u16 param2)
{
    int v0, v1;
    Pokemon *v2;

    v1 = 0;

    for (v0 = 0; v0 < 60; v0++) {
        param0->unk_33C[v0] = 0;
    }

    param0->unk_33C[0] = param0->unk_11;
    v1 += 1;

    for (v0 = 0; v0 < param0->unk_11; v0++) {
        v2 = Party_GetPokemonBySlotIndex(param0->unk_31C, param0->unk_324[v0]);
        param0->unk_33C[v0 + v1] = GetMonData(v2, MON_DATA_SPECIES, NULL);
    }

    v1 += param0->unk_11;

    for (v0 = 0; v0 < param0->unk_11; v0++) {
        v2 = Party_GetPokemonBySlotIndex(param0->unk_31C, param0->unk_324[v0]);
        param0->unk_33C[v0 + v1] = GetMonData(v2, MON_DATA_111, NULL);
    }

    v1 += param0->unk_11;

    return;
}

void ov105_02245744 (int param0, int param1, void * param2, void * param3)
{
    int v0, v1;
    u8 v2;
    UnkStruct_ov105_02241FF4 * v3 = param3;
    const u16 * v4 = param2;

    v1 = 0;
    v2 = ov104_0223AA50(v3->unk_09);

    if (sub_0203608C() == param0) {
        return;
    }

    v3->unk_18 = v4[0];
    v1 += 1;

    for (v0 = 0; v0 < v3->unk_18; v0++) {
        v3->unk_3B6[v0] = v4[v0 + v1];
    }

    v1 += v3->unk_18;

    for (v0 = 0; v0 < v3->unk_18; v0++) {
        v3->unk_3BA[v0] = v4[v0 + v1];
    }

    v1 += v3->unk_18;
    v3->unk_3BF = 1;

    return;
}

void ov105_022457B8 (int param0, int param1, void * param2, void * param3)
{
    GF_ASSERT(0);
    return;
}

static void ov105_022457C0 (UnkStruct_ov105_02241FF4 * param0)
{
    int v0;
    u8 v1;

    v1 = ov104_0223AA50(param0->unk_09);

    if (param0->unk_13_5 == 1) {
        sub_0201ACF4(&param0->unk_50[1]);
        sub_0201ACF4(&param0->unk_50[8]);
        sub_0201ACF4(&param0->unk_50[9]);
        return;
    }

    if (param0->unk_3BF == 1) {
        for (v0 = 0; v0 < v1; v0++) {
            sub_0201ADA4(&param0->unk_50[8 + v0], 0);

            if (v0 < param0->unk_18) {
                ov105_022450DC(param0, &param0->unk_50[8 + v0], 0, 0, 15, 2, 0, 0, param0->unk_3B6[v0], param0->unk_3BA[v0]);
            }

            sub_0201A9A4(&param0->unk_50[8 + v0]);
        }

        ov105_02244F84(param0, &param0->unk_50[1], 0, 0, 0);
    }

    param0->unk_3BF = 0;
    return;
}

void ov105_02245884 (UnkStruct_ov105_02241FF4 * param0, u16 param1, u16 param2)
{
    param0->unk_33C[0] = param1;
    param0->unk_33C[1] = param2;
    param0->unk_33C[2] = param0->unk_324[0];
    param0->unk_33C[3] = param0->unk_324[1];

    return;
}

void ov105_022458A4 (int param0, int param1, void * param2, void * param3)
{
    int v0, v1;
    UnkStruct_ov105_02241FF4 * v2 = param3;
    const u16 * v3 = param2;

    v1 = 0;
    v2->unk_3BE++;

    if (sub_0203608C() == param0) {
        return;
    }

    v2->unk_3B4 = (u8)v3[1];

    if (sub_0203608C() == 0) {
        if (v2->unk_13_3 == 1) {
            v2->unk_3B4 = 0;
        } else {
            if (v2->unk_3B4 == 1) {
                v2->unk_324[0] = (u8)v3[2];

                v2->unk_324[1] = (u8)v3[3];
            }
        }
    } else {
        if (v2->unk_3B4 == 1) {
            v2->unk_13_3 = 0;
            v2->unk_324[0] = (u8)v3[2];
            v2->unk_324[1] = (u8)v3[3];
        }
    }

    return;
}

static UnkStruct_ov105_02245EA8 * ov105_02245934 (UnkStruct_ov105_02241FF4 * param0, int param1)
{
    int v0, v1;

    if (ov105_022454F8(param0, 0) == 1) {
        v0 = Unk_ov105_02246364[param1][0];
        v1 = Unk_ov105_02246364[param1][1];
    } else {
        if (ov104_0223AED4(param0->unk_09) == 0) {
            v0 = Unk_ov105_02246314[param1][0];
            v1 = Unk_ov105_02246314[param1][1];
        } else {
            if (param0->unk_12 == (NELEMS(Unk_ov105_022462EC))) {
                v0 = Unk_ov105_022462EC[param1][0];
                v1 = Unk_ov105_022462EC[param1][1];
            } else {
                v0 = Unk_ov105_02246320[param1][0];
                v1 = Unk_ov105_02246320[param1][1];
            }
        }
    }

    return ov105_02245E54(&param0->unk_144, v0, v1, 93);
}

static UnkStruct_ov105_02245E1C * ov105_022459B0 (UnkStruct_ov105_02241FF4 * param0, u32 param1)
{
    int v0, v1;

    switch (param1) {
    case 0:
    case 1:
        v0 = 80;
        v1 = 40;
        break;
    case 4:
    case 5:
        v0 = 128;
        v1 = 40;
        break;
    case 11:
        v0 = 80;
        v1 = 40;
        break;
    case 12:
        v0 = 80;
        v1 = 40;
        break;
    }

    return ov105_02245DC4(&param0->unk_144, param1, v0, v1, 93);
}

static UnkStruct_ov105_02245E1C * ov105_02245A04 (UnkStruct_ov105_02241FF4 * param0, u32 param1)
{
    int v0, v1;

    switch (param1) {
    case 2:
    case 3:
        v0 = 216;
        v1 = 40;
        break;
    default:
        GF_ASSERT(0);
        v0 = 0;
        v1 = 0;
        break;
    }

    return ov105_02245DC4(&param0->unk_144, param1, v0, v1, 93);
}

static void ov105_02245A30 (UnkStruct_ov105_02241FF4 * param0)
{
    if (param0->unk_314 != NULL) {
        ov105_02245E1C(param0->unk_314);
        param0->unk_314 = NULL;
    }

    if (param0->unk_318 != NULL) {
        ov105_02245E1C(param0->unk_318);
        param0->unk_318 = NULL;
    }

    return;
}

static void ov105_02245A64 (UnkStruct_ov105_02241FF4 * param0)
{
    sub_02019060(1, 1);
    sub_02019690(1, 32, 0, 93);
    sub_02019EBC(param0->unk_4C, 1);
    ov105_02246214(param0->unk_4C, param0->unk_50);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);

    return;
}

static void ov105_02245A98 (UnkStruct_0205AA50 * param0)
{
    sub_0200DC9C(param0, 1);
    sub_0201AD10(param0);

    return;
}
