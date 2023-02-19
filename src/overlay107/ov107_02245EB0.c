#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_020302DC_decl.h"
#include "struct_decls/struct_0203041C_decl.h"
#include "struct_decls/struct_0203068C_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_02073C74_sub1_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_021C0794_decl.h"
#include "overlay107/struct_ov107_02246170_decl.h"
#include "overlay107/struct_ov107_02249B8C_decl.h"

#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/game_options.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02081CF4.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay084/struct_ov84_02240FA8.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay104/struct_ov104_0223597C.h"
#include "overlay107/struct_ov107_02249954.h"

#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02002B7C.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "game_overlay.h"
#include "unk_020067E8.h"
#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A784.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200C440.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02013A04.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_0201DBEC.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "unk_02023790.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "game_options.h"
#include "unk_020302D0.h"
#include "unk_0203061C.h"
#include "unk_020329E0.h"
#include "unk_02034198.h"
#include "unk_020363E8.h"
#include "unk_020393C8.h"
#include "unk_0205DFC4.h"
#include "unk_02073C2C.h"
#include "party.h"
#include "unk_0209BA80.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0223B6F4.h"
#include "overlay107/ov107_02245EB0.h"
#include "overlay107/ov107_02249604.h"
#include "overlay107/ov107_02249B1C.h"
#include "overlay107/ov107_02249C98.h"
#include "overlay107/ov107_02249D14.h"

FS_EXTERN_OVERLAY(overlay104);

struct UnkStruct_ov107_02246170_t {
    UnkStruct_020067E8 * unk_00;
    UnkStruct_0203068C * unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F_0 : 1;
    u8 unk_0F_1 : 1;
    u8 unk_0F_2 : 1;
    u8 unk_0F_3 : 5;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13;
    u8 unk_14;
    u8 unk_15;
    u8 unk_16;
    u8 unk_17;
    u16 unk_18;
    u16 unk_1A;
    u16 unk_1C;
    u16 unk_1E;
    UnkStruct_0200B144 * unk_20;
    UnkStruct_0200B358 * unk_24;
    UnkStruct_02023790 * unk_28;
    UnkStruct_02023790 * unk_2C;
    UnkStruct_02023790 * unk_30[3];
    u16 unk_3C[8];
    UnkStruct_02018340 * unk_4C;
    UnkStruct_0205AA50 unk_50[12];
    UnkStruct_02081CF4 unk_110;
    UnkStruct_02001AF4 * unk_11C;
    UnkStruct_02013A04 unk_120[3];
    UnkStruct_0200112C * unk_138;
    UnkStruct_02013A04 * unk_13C;
    UnkStruct_02002F38 * unk_140;
    UnkStruct_0200C440 * unk_144;
    GameOptions * unk_148;
    UnkStruct_021C0794 * unk_14C;
    UnkStruct_020302DC * unk_150;
    UnkStruct_0203041C * unk_154;
    UnkStruct_ov107_02249954 unk_158;
    UnkStruct_ov107_02249B8C * unk_368[4];
    UnkStruct_ov107_02249B8C * unk_378[4];
    UnkStruct_ov107_02249B8C * unk_388;
    UnkStruct_ov107_02249B8C * unk_38C;
    UnkStruct_ov107_02249B8C * unk_390;
    UnkStruct_ov107_02249B8C * unk_394[4];
    UnkStruct_ov107_02249B8C * unk_3A4[4][2];
    UnkStruct_ov107_02249B8C * unk_3C4;
    u16 * unk_3C8;
    u8 * unk_3CC;
    u8 * unk_3D0;
    u8 * unk_3D4;
    u8 * unk_3D8;
    Party * unk_3DC;
    NARC * unk_3E0;
    u16 unk_3E4[40];
    u8 unk_434;
    u8 unk_435;
    u8 unk_436;
    u8 unk_437[3];
    u16 unk_43A;
    u32 unk_43C;
};

int ov107_02245EB0(UnkStruct_020067E8 * param0, int * param1);
int ov107_02245FD0(UnkStruct_020067E8 * param0, int * param1);
int ov107_02246130(UnkStruct_020067E8 * param0, int * param1);
static BOOL ov107_02246170(UnkStruct_ov107_02246170 * param0);
static void ov107_02246274(UnkStruct_ov107_02246170 * param0);
static BOOL ov107_022462CC(UnkStruct_ov107_02246170 * param0);
static BOOL ov107_02246BDC(UnkStruct_ov107_02246170 * param0);
static BOOL ov107_02246CD0(UnkStruct_ov107_02246170 * param0);
static BOOL ov107_02246D3C(UnkStruct_ov107_02246170 * param0);
static void ov107_02246D84(UnkStruct_ov107_02246170 * param0);
static void ov107_02246EAC(void);
static void ov107_02246EE4(UnkStruct_ov107_02246170 * param0);
static void ov107_02247280(UnkStruct_ov107_02246170 * param0);
static void ov107_02247220(UnkStruct_ov107_02246170 * param0);
static void ov107_022472A4(UnkStruct_02018340 * param0);
static void ov107_022472E8(void * param0);
static void ov107_02247320(void);
static void ov107_02247340(UnkStruct_02018340 * param0);
static void ov107_02247484(UnkStruct_ov107_02246170 * param0, u32 param1);
static void ov107_022474F8(void);
static void ov107_0224752C(UnkStruct_ov107_02246170 * param0, u32 param1);
static void ov107_022475A8(UnkStruct_ov107_02246170 * param0, u32 param1);
static void ov107_02247574(void);
static void ov107_022475F0(UnkStruct_ov107_02246170 * param0, u32 param1);
static u8 ov107_02247650(UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9);
static u8 ov107_02247680(UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, u32 param10);
static u8 ov107_02247714(UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9);
static u8 ov107_02247744(UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, u32 param10);
static u8 ov107_022477CC(UnkStruct_ov107_02246170 * param0, int param1, u8 param2);
static void ov107_02247804(UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, UnkStruct_02073C74 * param2);
static void ov107_02247A14(UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, int param2, u16 param3, u16 param4, u32 param5);
static void ov107_02247A3C(UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, UnkStruct_02073C74 * param2);
static void ov107_02247AD0(UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, u8 param2, u32 param3, u32 param4, UnkStruct_02073C74 * param5, u32 param6, u32 param7, u32 param8);
static void ov107_02247B78(UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1);
static void ov107_02247C64(UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1);
static void ov107_02247D04(UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, u8 param2);
static void ov107_02247D68(UnkStruct_ov107_02246170 * param0, u8 param1, u8 param2, int param3);
static void ov107_02247D94(UnkStruct_ov107_02246170 * param0);
static void ov107_02247DF0(UnkStruct_ov107_02246170 * param0);
static void ov107_02247E5C(UnkStruct_ov107_02246170 * param0);
static void ov107_02247F14(UnkStruct_0200112C * param0, u32 param1, u8 param2);
static void ov107_02247F6C(UnkStruct_ov107_02246170 * param0);
static void ov107_02248028(UnkStruct_0200112C * param0, u32 param1, u8 param2);
static void ov107_022480A0(UnkStruct_0200112C * param0, u32 param1, u8 param2);
static void ov107_022480EC(UnkStruct_ov107_02246170 * param0, u32 param1, s32 param2, u32 param3, int param4);
static void ov107_02248104(UnkStruct_ov107_02246170 * param0, u32 param1, UnkStruct_02073C74_sub1 * param2);
static void ov107_02248110(UnkStruct_ov107_02246170 * param0, u32 param1);
static void ov107_0224812C(UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, u32 param2, u32 param3, u8 param4);
static void ov107_02248194(UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, u32 param2, u32 param3, u8 param4);
static void ov107_022481FC(UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, u32 param2, u32 param3, u8 param4, u8 param5);
static void ov107_02248240(UnkStruct_ov107_02246170 * param0);
static void ov107_022482A4(UnkStruct_ov107_02246170 * param0);
static void ov107_022482B0(UnkStruct_ov107_02246170 * param0);
static void ov107_022482D4(UnkStruct_ov107_02246170 * param0);
static void ov107_022482FC(UnkStruct_ov107_02246170 * param0);
static void ov107_02248348(UnkStruct_ov107_02246170 * param0);
static void ov107_02248350(UnkStruct_ov107_02246170 * param0, int * param1, int param2);
static void ov107_02248358(UnkStruct_ov107_02246170 * param0, int param1);
static void ov107_022483F0(UnkStruct_ov107_02246170 * param0);
static void ov107_02248420(UnkStruct_ov107_02246170 * param0, u8 param1, u8 param2);
static void ov107_02248488(UnkStruct_ov107_02246170 * param0, u32 * param1, u32 * param2, u8 param3);
static void ov107_022484DC(UnkStruct_ov107_02246170 * param0, u16 * param1, u16 * param2, u16 * param3, u16 * param4);
static BOOL ov107_0224850C(UnkStruct_ov107_02246170 * param0, u8 param1, u8 param2);
static BOOL ov107_02248674(UnkStruct_ov107_02246170 * param0, u8 param1, u8 param2);
static u16 ov107_02248770(u8 param0);
static void ov107_0224877C(UnkStruct_ov107_02246170 * param0, s8 param1);
static void ov107_022487DC(UnkStruct_ov107_02246170 * param0, s8 param1);
static void ov107_0224883C(UnkStruct_ov107_02246170 * param0);
static void ov107_02248860(UnkStruct_0205AA50 * param0);
BOOL ov107_02248874(UnkStruct_ov107_02246170 * param0, u16 param1, u16 param2);
void ov107_022488CC(UnkStruct_ov107_02246170 * param0, u16 param1);
void ov107_02248910(int param0, int param1, void * param2, void * param3);
void ov107_02248940(UnkStruct_ov107_02246170 * param0, u16 param1, u16 param2);
void ov107_022489D0(UnkStruct_ov107_02246170 * param0, u16 param1);
void ov107_022489E0(int param0, int param1, void * param2, void * param3);
void ov107_02248A04(UnkStruct_ov107_02246170 * param0);
void ov107_02248A10(int param0, int param1, void * param2, void * param3);
static void ov107_02248A2C(UnkStruct_ov107_02246170 * param0, u8 param1);
static void ov107_02248A74(UnkStruct_ov107_02246170 * param0, u8 param1);
static void ov107_02248A8C(UnkStruct_ov107_02246170 * param0, u8 param1);
static void ov107_02248AF0(UnkStruct_ov107_02246170 * param0, u8 param1);
static void ov107_02248B38(UnkStruct_ov107_02246170 * param0, u8 param1);
static void ov107_02248B50(UnkStruct_ov107_02246170 * param0, u8 param1);
static void ov107_02248BB4(UnkStruct_ov107_02246170 * param0);
static void ov107_02248BEC(UnkStruct_ov107_02246170 * param0);
static void ov107_02248C08(UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1);
static void ov107_02248E54(UnkStruct_ov107_02246170 * param0, u8 param1);
static void ov107_02248E84(UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1);
static void ov107_02248F18(UnkStruct_ov107_02246170 * param0, u8 param1, u8 param2);
static void ov107_02249024(UnkStruct_ov107_02246170 * param0, u8 param1);
static void ov107_022490E8(UnkStruct_ov107_02246170 * param0, u8 param1, u8 param2);
static void ov107_02249238(UnkStruct_ov107_02246170 * param0);
static void ov107_02249258(UnkStruct_ov107_02246170 * param0);
static void ov107_022492A8(UnkStruct_ov107_02246170 * param0);
static BOOL ov107_0224933C(UnkStruct_ov107_02246170 * param0, u16 param1, u16 param2);
static void ov107_022493CC(UnkStruct_ov107_02246170 * param0, u8 param1, u8 param2);
static void ov107_02249580(UnkStruct_ov107_02246170 * param0);
static void ov107_022495A8(UnkStruct_ov107_02246170 * param0, u8 param1);
static void ov107_022495E4(UnkStruct_ov107_02246170 * param0, u32 * param1, u32 * param2);
extern void ov107_2247650(void);

int ov107_02245EB0 (UnkStruct_020067E8 * param0, int * param1)
{
    int v0;
    UnkStruct_ov107_02246170 * v1;
    UnkStruct_ov104_0223597C * v2;

    Overlay_LoadByID(FS_OVERLAY_ID(overlay104), 2);
    ov107_02246EAC();
    Heap_Create(3, 100, 0x20000);

    v1 = sub_0200681C(param0, sizeof(UnkStruct_ov107_02246170), 100);
    memset(v1, 0, sizeof(UnkStruct_ov107_02246170));

    v1->unk_4C = sub_02018340(100);
    v1->unk_00 = param0;

    v2 = (UnkStruct_ov104_0223597C *)sub_02006840(param0);

    v1->unk_14C = v2->unk_00;
    v1->unk_150 = sub_020302DC(v1->unk_14C);
    v1->unk_154 = sub_0203041C(v1->unk_14C);
    v1->unk_09 = v2->unk_04;
    v1->unk_3C8 = &v2->unk_20;
    v1->unk_148 = sub_02025E44(v1->unk_14C);
    v1->unk_3DC = v2->unk_1C;
    v1->unk_3CC = &v2->unk_08[0];
    v1->unk_3D0 = &v2->unk_0C[0];
    v1->unk_3D4 = &v2->unk_10[0];
    v1->unk_3D8 = &v2->unk_14[0];
    v1->unk_11 = 0xff;
    v1->unk_43A = v2->unk_28;
    v1->unk_04 = sub_0203068C(v1->unk_14C);

    for (v0 = 0; v0 < 3; v0++) {
        v1->unk_437[v0] = 1;
    }

    if (ov104_0223BA14(v1->unk_09) == 0) {
        v1->unk_14 = 3;
    } else {
        v1->unk_14 = 4;
    }

    v1->unk_15 = v1->unk_14;
    v1->unk_0C = (v1->unk_15 - 1);
    v1->unk_434 = 0;

    ov107_02246EE4(v1);

    if (ov104_0223BA14(v1->unk_09) == 1) {
        sub_0209BA80(v1);
    }

    (*param1) = 0;

    return 1;
}

int ov107_02245FD0 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov107_02246170 * v0 = sub_0200682C(param0);

    if (v0->unk_436 == 1) {
        switch (*param1) {
        case 1:
            v0->unk_436 = 0;
            ov107_0224883C(v0);
            ov107_02249238(v0);

            if (v0->unk_388 != NULL) {
                ov107_02249B8C(v0->unk_388);
                v0->unk_0F_0 = 0;
            }

            ov107_02249DBC(&v0->unk_50[7], GameOptions_GetFrameStyle(v0->unk_148));
            ov104_0222E5D0(v0->unk_24, 0);
            v0->unk_0A = ov107_022477CC(v0, 7, 1);
            ov107_02248350(v0, param1, 3);
            break;
        }
    } else if (v0->unk_11 != 0xff) {
        switch (*param1) {
        case 1:
        case 3:
            v0->unk_436 = 0;
            ov107_0224883C(v0);
            ov107_02249238(v0);
            ov107_02248350(v0, param1, 2);
            break;
        }
    }

    switch (*param1) {
    case 0:
        if (ov107_02246170(v0) == 1) {
            ov107_02248350(v0, param1, 1);
        }
        break;
    case 1:
        if (ov107_022462CC(v0) == 1) {
            if (v0->unk_10 == 1) {
                ov107_02248350(v0, param1, 2);
            } else {
                if (ov104_0223BA14(v0->unk_09) == 1) {
                    ov107_02248350(v0, param1, 3);
                } else {
                    ov107_02248350(v0, param1, 4);
                }
            }
        }
        break;
    case 2:
        if (ov107_02246BDC(v0) == 1) {
            ov107_02248350(v0, param1, 1);
        }
        break;
    case 3:
        if (ov107_02246CD0(v0) == 1) {
            ov107_02248350(v0, param1, 4);
        }
        break;
    case 4:
        if (ov107_02246D3C(v0) == 1) {
            return 1;
        }
        break;
    }

    ov107_022492A8(v0);
    sub_020219F8(v0->unk_158.unk_00);

    return 0;
}

int ov107_02246130 (UnkStruct_020067E8 * param0, int * param1)
{
    int v0;
    UnkStruct_ov107_02246170 * v1 = sub_0200682C(param0);

    *(v1->unk_3C8) = v1->unk_0D;

    sub_0201DC3C();
    ov107_02246D84(v1);

    sub_02006830(param0);
    sub_02017798(NULL, NULL);
    Heap_Destroy(100);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay104));

    return 1;
}

static BOOL ov107_02246170 (UnkStruct_ov107_02246170 * param0)
{
    switch (param0->unk_08) {
    case 0:
        if (ov104_0223BA14(param0->unk_09) == 1) {
            sub_020365F4();
            sub_020364F0(216);
        }

        param0->unk_08++;
        break;
    case 1:
        if (ov104_0223BA14(param0->unk_09) == 1) {
            if (sub_02036540(216) == 1) {
                sub_020365F4();
                param0->unk_08++;
            }
        } else {
            param0->unk_08++;
        }
        break;
    case 2:
        if (ov104_0223BA14(param0->unk_09) == 1) {
            if (ov107_02248874(param0, 20, 0) == 1) {
                param0->unk_08++;
            }
        } else {
            ov107_02246274(param0);
            sub_0200F174(0, 1, 1, 0x0, 6, 1 * 3, 100);
            param0->unk_08++;
        }
        break;
    case 3:
        if (ov104_0223BA14(param0->unk_09) == 1) {
            if (param0->unk_17 >= 2) {
                param0->unk_17 = 0;

                ov107_02246274(param0);
                sub_0200F174(0, 1, 1, 0x0, 6, 1 * 3, 100);

                param0->unk_08++;
            }
        } else {
            param0->unk_08++;
        }
        break;
    case 4:
        if (sub_0200F2AC() == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov107_02246274 (UnkStruct_ov107_02246170 * param0)
{
    u16 v0, v1, v2, v3, v4, v5, v6, v7;
    UnkStruct_0205AA50 * v8;

    ov107_022484DC(param0, &v2, &v3, &v4, &v5);
    v8 = &param0->unk_50[0];

    sub_0201ADA4(v8, 0);

    ov107_02248E84(param0, v8);
    ov107_02248C08(param0, v8);
    ov107_02247B78(param0, &param0->unk_50[3]);
    ov107_02247C64(param0, &param0->unk_50[2]);
    ov107_02248240(param0);
    GXLayers_TurnBothDispOn();

    return;
}

static BOOL ov107_022462CC (UnkStruct_ov107_02246170 * param0)
{
    u8 v0;
    u16 v1, v2;
    int v3, v4;
    u32 v5, v6, v7;
    UnkStruct_02073C74 * v8;

    switch (param0->unk_08) {
    case 0:
        param0->unk_0B = 0;
        param0->unk_08 = 1;

        if (param0->unk_0F_3 == 1) {
            ov107_02248860(&param0->unk_50[7]);
            ov107_02248240(param0);
        } else if (param0->unk_0F_3 == 2) {
            ov107_02248860(&param0->unk_50[7]);
            ov107_022482FC(param0);
            ov107_02249C60(param0->unk_3C4, 211, 105);

            param0->unk_08 = 6;
        } else if (param0->unk_0F_3 == 3) {
            param0->unk_08 = 13;
        }

        param0->unk_0F_3 = 0;
        break;
    case 1:
        ov107_02248358(param0, Unk_021BF67C.unk_48);

        if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
            sub_02005748(1500);

            if (param0->unk_0D >= param0->unk_15) {
                return 1;
            } else {
                ov107_022482A4(param0);
                ov107_022482B0(param0);
                param0->unk_08 = 2;
                break;
            }
        } else if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
            if (param0->unk_0D != param0->unk_15) {
                sub_02005748(1500);
                param0->unk_0D = param0->unk_15;
                ov107_022483F0(param0);
            }
            break;
        }
        break;
    case 2:
        v7 = sub_02001288(param0->unk_138);
        ov107_02249CE0(v7, 1500);
        sub_020014D0(param0->unk_138, &param0->unk_18);

        switch (v7) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            ov107_022482D4(param0);
            ov107_02248240(param0);
            param0->unk_08 = 0;
            break;
        case 0:
            param0->unk_13 = v7;

            if (param0->unk_3CC[ov107_02249C98(param0->unk_14, param0->unk_0D)] == 0) {
                ov107_022482D4(param0);

                ov107_02248BEC(param0);
                ov107_022480EC(param0, 0, 1, 4, 0);
                param0->unk_0A = ov107_022477CC(param0, 16, 1);
                ov107_02247D94(param0);
                param0->unk_08 = 3;
            } else {
                ov107_022482D4(param0);

                v8 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param0->unk_0D));

                ov107_02248BEC(param0);
                ov107_02248104(param0, 0, sub_02076B10(v8));

                param0->unk_0A = ov107_022477CC(param0, 20, 1);
                param0->unk_08 = 15;
            }
            break;
        case 1:
            param0->unk_13 = v7;
            ov107_022482D4(param0);

            v8 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param0->unk_0D));

            ov107_02248BEC(param0);
            ov107_02248104(param0, 0, sub_02076B10(v8));

            param0->unk_0A = ov107_022477CC(param0, 21, 1);
            ov107_02247DF0(param0);
            param0->unk_08 = 4;
            break;
        case 2:
            ov107_022482D4(param0);
            ov107_022482FC(param0);
            param0->unk_08 = 6;
            break;
        case 6:
            ov107_022482D4(param0);
            ov107_02248240(param0);
            param0->unk_08 = 0;
            break;
        }
        break;
    case 3:
        v7 = sub_02001BE0(param0->unk_11C);

        switch (v7) {
        case 0xffffffff:
            break;
        case 0:
            ov107_02248BB4(param0);
            ov107_02248860(&param0->unk_50[7]);

            v1 = sub_02030698(param0->unk_04, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));

            if (v1 < 1) {
                ov107_02248BEC(param0);
                param0->unk_0A = ov107_022477CC(param0, 28, 1);
                param0->unk_08 = 15;
                break;
            }

            if (ov104_0223BA14(param0->unk_09) == 0) {
                ov104_0223BC2C(param0->unk_04, param0->unk_09, 1);
                ov107_02248C08(param0, &param0->unk_50[0]);
                ov107_02249024(param0, param0->unk_0D);
                param0->unk_08 = 11;
            } else {
                param0->unk_10 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02248BB4(param0);
            ov107_02248860(&param0->unk_50[7]);
            ov107_022482B0(param0);
            param0->unk_08 = 2;
            break;
        }
        break;
    case 4:
        v7 = sub_02001BE0(param0->unk_11C);

        switch (v7) {
        case 0xffffffff:
            break;
        case 0:
            ov107_02248BB4(param0);
            v1 = sub_02030698(param0->unk_04, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));

            if (param0->unk_3D0[ov107_02249C98(param0->unk_14, param0->unk_0D)] == 1) {
                ov107_02248BEC(param0);
                param0->unk_0A = ov107_022477CC(param0, 29, 1);
                param0->unk_08 = 15;
                break;
            } else {
                ov107_02248E54(param0, 1);
                param0->unk_08 = 5;
            }
            break;
        case 1:
            ov107_02248BB4(param0);
            v1 = sub_02030698(param0->unk_04, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));

            if (param0->unk_3D0[ov107_02249C98(param0->unk_14, param0->unk_0D)] == 2) {
                ov107_02248BEC(param0);
                param0->unk_0A = ov107_022477CC(param0, 30, 1);
                param0->unk_08 = 15;
                break;
            } else {
                ov107_02248E54(param0, 2);
                param0->unk_08 = 5;
            }
            break;
        case 2:
        case 0xfffffffe:
            ov107_02248BB4(param0);
            ov107_02248860(&param0->unk_50[7]);
            ov107_022482B0(param0);
            param0->unk_08 = 2;
            break;
        }
        break;
    case 5:
        v7 = sub_02001BE0(param0->unk_11C);

        switch (v7) {
        case 0xffffffff:
            break;
        case 0:
            ov107_02248BB4(param0);

            v1 = sub_02030698(param0->unk_04, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));
            v2 = ov107_02248770(param0->unk_0E);

            if (v1 < v2) {
                ov107_02248BEC(param0);
                param0->unk_0A = ov107_022477CC(param0, 28, 1);
                param0->unk_08 = 15;
                return 0;
            }

            param0->unk_12 = param0->unk_0E;

            if (ov104_0223BA14(param0->unk_09) == 0) {
                ov107_02248860(&param0->unk_50[7]);
                ov104_0223BC2C(param0->unk_04, param0->unk_09, ov107_02248770(param0->unk_0E));
                ov107_02248C08(param0, &param0->unk_50[0]);
                ov107_022490E8(param0, param0->unk_0D, param0->unk_0E);
                param0->unk_08 = 11;
            } else {
                param0->unk_10 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02248BB4(param0);
            ov107_02248860(&param0->unk_50[7]);
            ov107_022482B0(param0);
            param0->unk_08 = 2;
            break;
        }
        break;
    case 6:
        v7 = sub_02001288(param0->unk_138);
        ov107_02249CE0(v7, 1500);
        sub_020014D0(param0->unk_138, &param0->unk_18);

        switch (v7) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            ov107_02248860(&param0->unk_50[7]);
            ov107_02248348(param0);
            ov107_022482B0(param0);
            param0->unk_08 = 2;
            break;
        case 3:
            param0->unk_13 = v7;
            ov107_02248348(param0);

            if (param0->unk_3D4[ov107_02249C98(param0->unk_14, param0->unk_0D)] == 0) {
                ov107_02248BEC(param0);
                ov107_022480EC(param0, 0, 2, 4, 0);
                param0->unk_0A = ov107_022477CC(param0, 43, 1);
                ov107_02247D94(param0);
                param0->unk_08 = 7;
            } else {
                ov107_02248A2C(param0, param0->unk_0D);
                param0->unk_08 = 16;
            }
            break;
        case 4:
            param0->unk_13 = v7;
            ov107_02248348(param0);

            v6 = ov107_02249CAC(param0->unk_14C, param0->unk_09, 2);

            if (v6 == 1) {
                param0->unk_0A = ov107_022477CC(param0, 42, 1);
                param0->unk_08 = 14;
                return 0;
            }

            if (param0->unk_3D8[ov107_02249C98(param0->unk_14, param0->unk_0D)] == 0) {
                ov107_02248BEC(param0);
                ov107_022480EC(param0, 0, 5, 4, 0);
                param0->unk_0A = ov107_022477CC(param0, 66, 1);
                ov107_02247D94(param0);
                param0->unk_08 = 8;
            } else {
                ov107_02248AF0(param0, param0->unk_0D);
                param0->unk_08 = 17;
            }
            break;
        case 5:
            v6 = ov107_02249CAC(param0->unk_14C, param0->unk_09, 2);

            if (v6 == (3 - 1)) {
                sub_020057A4(1500, 0);
                sub_02005748(1523);
            } else {
                param0->unk_13 = v7;
                ov107_02248348(param0);

                v1 = sub_02030698(param0->unk_04, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));

                ov107_022480EC(param0, 0, 50, 4, 0);
                param0->unk_0A = ov107_022477CC(param0, 76, 1);

                ov107_02247D94(param0);
                param0->unk_08 = 9;
            }
            break;
        }
        break;
    case 7:
        v7 = sub_02001BE0(param0->unk_11C);

        switch (v7) {
        case 0xffffffff:
            break;
        case 0:
            v4 = ov107_0224933C(param0, 2, 46);

            if (v4 == 1) {
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02248BB4(param0);
            ov107_022482FC(param0);
            param0->unk_08 = 6;
            break;
        }
        break;
    case 8:
        v7 = sub_02001BE0(param0->unk_11C);

        switch (v7) {
        case 0xffffffff:
            break;
        case 0:
            v4 = ov107_0224933C(param0, 5, 69);

            if (v4 == 1) {
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02248BB4(param0);
            ov107_022482FC(param0);
            param0->unk_08 = 6;
            break;
        }
        break;
    case 9:
        v7 = sub_02001BE0(param0->unk_11C);

        switch (v7) {
        case 0xffffffff:
            break;
        case 0:
            ov107_02248BB4(param0);

            v1 = sub_02030698(param0->unk_04, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));
            v6 = ov107_02249CAC(param0->unk_14C, param0->unk_09, 2);

            if (v1 < 50) {
                ov107_02248BB4(param0);
                ov107_02249DBC(&param0->unk_50[7], GameOptions_GetFrameStyle(param0->unk_148));
                param0->unk_0A = ov107_022477CC(param0, 69, 1);
                param0->unk_08 = 14;
                break;
            }

            if (ov104_0223BA14(param0->unk_09) == 0) {
                ov107_022493CC(param0, param0->unk_0D, 5);
                param0->unk_08 = 10;
                break;
            } else {
                param0->unk_10 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02248BB4(param0);
            ov107_022482FC(param0);
            param0->unk_08 = 6;
            break;
        }
        break;
    case 10:
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov107_02248BB4(param0);
            ov107_022482FC(param0);
            ov107_02249C60(param0->unk_3C4, 211, 105);
            param0->unk_08 = 6;
        }
        break;
    case 11:
        if (ov107_0224850C(param0, param0->unk_0D, param0->unk_13) == 1) {
            param0->unk_08 = 15;
        }
        break;
    case 12:
        if (ov107_0224850C(param0, param0->unk_0D, param0->unk_13) == 1) {
            param0->unk_08 = 13;
        }
        break;
    case 13:
        if (param0->unk_13 == 3) {
            param0->unk_08 = 16;
        } else {
            param0->unk_08 = 17;
        }
        break;
    case 14:
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            sub_02005748(1500);
            ov107_022482FC(param0);
            param0->unk_08 = 6;
        }
        break;
    case 15:
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            sub_02005748(1500);
            ov107_02248860(&param0->unk_50[7]);
            ov107_02248240(param0);
            param0->unk_08 = 0;
        }
        break;
    case 16:
        if (Unk_021BF67C.unk_48 & PAD_KEY_LEFT) {
            ov107_0224877C(param0, -1);
        } else if (Unk_021BF67C.unk_48 & PAD_KEY_RIGHT) {
            ov107_0224877C(param0, 1);
        } else if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            sub_02005748(1500);
            ov107_02249238(param0);
            ov107_022482B0(param0);
            param0->unk_08 = 2;
        }
        break;
    case 17:
        if (Unk_021BF67C.unk_48 & PAD_KEY_LEFT) {
            ov107_022487DC(param0, -1);
        } else if (Unk_021BF67C.unk_48 & PAD_KEY_RIGHT) {
            ov107_022487DC(param0, 1);
        } else if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            sub_02005748(1500);
            ov107_02249238(param0);
            ov107_022482B0(param0);
            param0->unk_08 = 2;
        }
        break;
    }

    return 0;
}

static BOOL ov107_02246BDC (UnkStruct_ov107_02246170 * param0)
{
    u8 v0;

    switch (param0->unk_08) {
    case 0:
        param0->unk_0F_3 = 1;

        if (ov107_02248874(param0, 21, param0->unk_0D) == 1) {
            param0->unk_10 = 0;
            param0->unk_08++;
        }
        break;
    case 1:
        if (param0->unk_11 == 0xff) {
            break;
        }

        param0->unk_17 = 0;

        if (param0->unk_13 == 5) {
            ov107_022493CC(param0, param0->unk_11, 5);
        } else {
            ov107_02248F18(param0, param0->unk_11, param0->unk_13);
        }

        param0->unk_08++;
        break;
    case 2:
        v0 = ov107_02249C9C(param0->unk_15, param0->unk_11);

        if (ov107_0224850C(param0, v0, param0->unk_13) == 1) {
            param0->unk_16 = 30;
            param0->unk_08++;
        }
        break;
    case 3:
        param0->unk_16--;

        if (param0->unk_16 == 0) {
            sub_020365F4();
            sub_020364F0(133);
            param0->unk_08++;
            break;
        }
        break;
    case 4:
        if (sub_02036540(133) == 1) {
            param0->unk_08++;
        }
        break;
    case 5:
        v0 = ov107_02249C9C(param0->unk_15, param0->unk_11);

        if (ov107_02248674(param0, v0, param0->unk_13) == 1) {
            sub_020365F4();
            sub_020363E8(100);
            param0->unk_11 = 0xff;
            param0->unk_436 = 0;
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov107_02246CD0 (UnkStruct_ov107_02246170 * param0)
{
    int v0;

    switch (param0->unk_08) {
    case 0:
        if (ov107_02248874(param0, 23, 0) == 1) {
            param0->unk_16 = 30;
            param0->unk_08++;
        }
        break;
    case 1:
        if (param0->unk_16 > 0) {
            param0->unk_16--;
        }

        if (param0->unk_16 == 0) {
            sub_020365F4();
            sub_020364F0(134);
            param0->unk_08++;
        }
        break;
    case 2:
        if (sub_02036540(134) == 1) {
            sub_020365F4();
            ov107_02248860(&param0->unk_50[7]);
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov107_02246D3C (UnkStruct_ov107_02246170 * param0)
{
    int v0;

    switch (param0->unk_08) {
    case 0:
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 100);
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

static void ov107_02246D84 (UnkStruct_ov107_02246170 * param0)
{
    u8 v0;
    int v1, v2;

    ov107_02249B8C(param0->unk_38C);
    ov107_02249B8C(param0->unk_390);
    ov107_02249B8C(param0->unk_3C4);

    for (v1 = 0; v1 < (2 * 2); v1++) {
        for (v2 = 0; v2 < 2; v2++) {
            ov107_02249B8C(param0->unk_3A4[v1][v2]);
        }
    }

    v0 = ov104_0223B7DC(param0->unk_09, 1);

    for (v1 = 0; v1 < v0; v1++) {
        ov107_02249B8C(param0->unk_378[v1]);
        ov107_02249B8C(param0->unk_368[v1]);
        ov107_02249B8C(param0->unk_394[v1]);
    }

    sub_02039794();

    sub_02002FA0(param0->unk_140, 2);
    sub_02002FA0(param0->unk_140, 0);
    sub_02002F54(param0->unk_140);

    param0->unk_140 = NULL;

    ov107_02249954(&param0->unk_158);

    sub_0200B190(param0->unk_20);
    sub_0200B3F0(param0->unk_24);
    sub_020237BC(param0->unk_28);
    sub_020237BC(param0->unk_2C);
    sub_0200C560(param0->unk_144);

    for (v1 = 0; v1 < 3; v1++) {
        sub_020237BC(param0->unk_30[v1]);
    }

    ov107_02249D5C(param0->unk_50, 1);
    ov107_022472A4(param0->unk_4C);
    NARC_dtor(param0->unk_3E0);

    return;
}

static void ov107_02246EAC (void)
{
    sub_02017798(NULL, NULL);
    sub_020177BC(NULL, NULL);
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    return;
}

static void ov107_02246EE4 (UnkStruct_ov107_02246170 * param0)
{
    u32 v0, v1;
    u32 v2, v3;
    u8 v4;
    u16 v5, v6, v7, v8, v9, v10, v11, v12;
    int v13, v14, v15;
    UnkStruct_0205AA50 * v16;

    param0->unk_3E0 = NARC_ctor(150, 100);

    ov107_02247220(param0);
    ov107_02247280(param0);

    param0->unk_20 = sub_0200B144(1, 26, 201, 100);
    param0->unk_24 = sub_0200B358(100);
    param0->unk_28 = sub_02023790(600, 100);
    param0->unk_2C = sub_02023790(600, 100);

    for (v13 = 0; v13 < 3; v13++) {
        param0->unk_30[v13] = sub_02023790(32, 100);
    }

    sub_02002E7C(0, 13 * 32, 100);
    sub_02002E98(0, 12 * 32, 100);

    param0->unk_144 = sub_0200C440(1, 2, 0, 100);

    ov107_02249D14(param0->unk_4C, param0->unk_50, 1);
    ov107_022484DC(param0, &v7, &v8, &v9, &v10);

    if (ov104_0223BA14(param0->unk_09) == 0) {
        v11 = 64;
        v12 = 60;
    } else {
        v11 = 32;
        v12 = 28;
    }

    v4 = ov104_0223B7DC(param0->unk_09, 1);

    for (v13 = 0; v13 < v4; v13++) {
        param0->unk_378[v13] = ov107_02249B1C(&param0->unk_158, 0, 0, 0, 7, 64 * v13 + v12, 62, 2, NULL);
        param0->unk_394[v13] = ov107_02249B1C(&param0->unk_158, 0, 0, 0, 15, 64 * v13 + v11, 58 + 20, 3, NULL);
        param0->unk_368[v13] = ov107_02249B1C(&param0->unk_158, 3 + v13, 3, 3, 1, 64 * v13 + v11, 58, 2, NULL);

        ov107_02249C08(param0->unk_368[v13], Party_GetPokemonBySlotIndex(param0->unk_3DC, v13));

        if (param0->unk_3CC[v13] == 0) {
            ov107_02249BAC(param0->unk_378[v13], 1);
            ov107_02249BAC(param0->unk_368[v13], 0);
            ov107_02249BAC(param0->unk_394[v13], 0);
        } else {
            ov107_02249BAC(param0->unk_378[v13], 0);
            ov107_02249BAC(param0->unk_368[v13], 1);
            ov107_02249BAC(param0->unk_394[v13], 1);
        }
    }

    ov107_02248488(param0, &v0, &v1, 0);

    param0->unk_38C = ov107_02249B1C(&param0->unk_158, 0, 0, 0, 1, v0, v1, 2, NULL);
    param0->unk_390 = ov107_02249B1C(&param0->unk_158, 0, 0, 0, 2, v0, v1, 2, NULL);

    if (ov104_0223BA14(param0->unk_09) == 0) {
        ov107_02249BAC(param0->unk_390, 0);
    }

    for (v13 = 0; v13 < (2 * 2); v13++) {
        for (v14 = 0; v14 < 2; v14++) {
            ov107_022495E4(param0, &v0, &v1);
            param0->unk_3A4[v13][v14] = ov107_02249B1C(&param0->unk_158, 0, 0, 0, 12, v0 + (64 * v13), v1 + (12 * v14), 2, NULL);
            ov107_02249BAC(param0->unk_3A4[v13][v14], 0);
        }
    }

    ov107_02249580(param0);
    param0->unk_3C4 = ov107_02249B1C(&param0->unk_158, 0, 0, 0, 11, 20, 20, 0, NULL);
    ov107_02249BAC(param0->unk_3C4, 0);

    if (sub_02035E38()) {
        sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
        sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_02039734();
    }

    sub_02017798(ov107_022472E8, (void *)param0);
    return;
}

static void ov107_02247220 (UnkStruct_ov107_02246170 * param0)
{
    ov107_02247320();
    ov107_02247340(param0->unk_4C);

    param0->unk_140 = sub_02002F38(100);

    sub_02002F70(param0->unk_140, 2, (32 * 16), 100);
    sub_02002F70(param0->unk_140, 0, (32 * 16), 100);

    ov107_02247484(param0, 3);
    ov107_022474F8();
    ov107_0224752C(param0, 2);
    ov107_02247574();

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    ov107_022475F0(param0, 4);

    return;
}

static void ov107_02247280 (UnkStruct_ov107_02246170 * param0)
{
    ov107_02249604(&param0->unk_158, param0->unk_3DC, ov104_0223BA14(param0->unk_09));
    return;
}

static void ov107_022472A4 (UnkStruct_02018340 * param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);

    sub_02019044(param0, 3);
    sub_02019044(param0, 2);
    sub_02019044(param0, 0);
    sub_02019044(param0, 1);
    sub_02019044(param0, 4);
    Heap_FreeToHeap(param0);

    return;
}

static void ov107_022472E8 (void * param0)
{
    UnkStruct_ov107_02246170 * v0 = param0;

    if (v0->unk_140 != NULL) {
        sub_02003694(v0->unk_140);
    }

    sub_0201C2B8(v0->unk_4C);
    sub_0201DCAC();
    sub_0200A858();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov107_02247320 (void)
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

static void ov107_02247340 (UnkStruct_02018340 * param0)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
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
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 1, &v1, 0);
        sub_02019690(1, 32, 0, 100);
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
            GX_BG_SCRBASE_0x0800,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 0, &v2, 0);
        sub_02019690(0, 32, 0, 100);
        sub_02019EBC(param0, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x14000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v3, 0);
        sub_02019690(2, 32, 0, 100);
        sub_02019EBC(param0, 2);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x2000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 3, &v4, 0);
        sub_02019690(3, 32, 0, 100);
        sub_02019EBC(param0, 3);
    }

    {
        UnkStruct_ov97_0222DB78 v5 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x3000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 4, &v5, 0);
        sub_02019EBC(param0, 4);
    }

    G2_SetBG0Priority(0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);

    return;
}

static void ov107_02247484 (UnkStruct_ov107_02246170 * param0, u32 param1)
{
    sub_020070E8(param0->unk_3E0, 44, param0->unk_4C, param1, 0, 0, 1, 100);

    if (ov104_0223BA14(param0->unk_09) == 0) {
        sub_0200710C(param0->unk_3E0, 40, param0->unk_4C, param1, 0, 0, 1, 100);
    } else {
        sub_0200710C(param0->unk_3E0, 41, param0->unk_4C, param1, 0, 0, 1, 100);
    }

    return;
}

static void ov107_022474F8 (void)
{
    void * v0;
    NNSG2dPaletteData * v1;

    v0 = sub_02006F88(150, 138, &v1, 100);

    DC_FlushRange(v1->pRawData, (sizeof(u16) * 16 * 4));
    GX_LoadBGPltt(v1->pRawData, 0, (sizeof(u16) * 16 * 4));
    Heap_FreeToHeap(v0);

    return;
}

static void ov107_0224752C (UnkStruct_ov107_02246170 * param0, u32 param1)
{
    sub_020070E8(param0->unk_3E0, 44, param0->unk_4C, param1, 0, 0, 1, 100);
    sub_0200710C(param0->unk_3E0, 42, param0->unk_4C, param1, 0, 0, 1, 100);

    return;
}

static void ov107_02247574 (void)
{
    void * v0;
    NNSG2dPaletteData * v1;

    v0 = sub_02006F88(150, 138, &v1, 100);

    DC_FlushRange(v1->pRawData, (sizeof(u16) * 16 * 4));
    GX_LoadBGPltt(v1->pRawData, 0, (sizeof(u16) * 16 * 4));
    Heap_FreeToHeap(v0);

    return;
}

static void ov107_022475A8 (UnkStruct_ov107_02246170 * param0, u32 param1)
{
    sub_020070E8(param0->unk_3E0, 44, param0->unk_4C, param1, 0, 0, 1, 100);
    sub_0200710C(param0->unk_3E0, 43, param0->unk_4C, param1, 0, 0, 1, 100);

    return;
}

static void ov107_022475F0 (UnkStruct_ov107_02246170 * param0, u32 param1)
{
    sub_020070E8(param0->unk_3E0, 125, param0->unk_4C, param1, 0, 0, 1, 100);
    sub_0200710C(param0->unk_3E0, 126, param0->unk_4C, param1, 0, 0, 1, 100);
    sub_02007130(param0->unk_3E0, 171, 4, 0, 0x20, 100);

    return;
}

asm static u8 ov107_02247650 (UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9)
{
    push {r4, r5, lr}
    sub sp, #0x1c
    ldr r4, [sp, #0x28]
    str r4, [sp]
    ldr r4, [sp, #0x2c]
    str r4, [sp, #4]
    add r4, sp, #0x18
    ldrb r5, [r4, #0x18]
    str r5, [sp, #8]
    ldrb r4, [r4, #0x1c]
    str r4, [sp, #0xc]
    add r4, sp, #0x38
    ldrb r4, [r4]
    str r4, [sp, #0x10]
    add r4, sp, #0x3c
    ldrb r4, [r4]
    str r4, [sp, #0x14]
    mov r4, #0
    str r4, [sp, #0x18]
    bl ov107_02247680
    add sp, #0x1c
    pop {r4, r5, pc}
}

asm static u8 ov107_02247680 (UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, u32 param10)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x10
    add r6, r1, #0
    add r1, sp, #0x38
    ldrb r1, [r1]
    add r5, r0, #0
    add r0, r6, #0
    add r7, r2, #0
    add r4, r3, #0
    bl sub_0201ADA4
    ldr r0, [r5, #0x20]
    ldr r2, [r5, #0x2c]
    add r1, r7, #0
    bl sub_0200B1B8
    ldr r0, [r5, #0x24]
    ldr r1, [r5, #0x28]
    ldr r2, [r5, #0x2c]
    bl sub_0200C388
    ldr r0, [sp, #0x40]
    cmp r0, #1
    beq _022476B6
    cmp r0, #2
    beq _022476C8
    b _022476D4
 _022476B6:
    mov r0, #0
    ldr r1, [r5, #0x28]
    add r2, r0, #0
    bl sub_02002D7C
    add r0, r0, #1
    lsr r0, r0, #1
    sub r4, r4, r0
    b _022476D4
 _022476C8:
    mov r0, #0
    ldr r1, [r5, #0x28]
    add r2, r0, #0
    bl sub_02002D7C
    sub r4, r4, r0
 _022476D4:
    ldr r0, [sp, #0x28]
    add r2, sp, #0x18
    str r0, [sp]
    ldr r0, [sp, #0x2c]
    add r3, r4, #0
    str r0, [sp, #4]
    add r0, sp, #0x38
    ldrb r1, [r0]
    ldrb r0, [r2, #0x18]
    ldrb r2, [r2, #0x1c]
    lsl r0, r0, #0x18
    lsl r2, r2, #0x18
    lsr r0, r0, #8
    lsr r2, r2, #0x10
    orr r0, r2
    orr r0, r1
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    add r1, sp, #0x3c
    ldrb r1, [r1]
    ldr r2, [r5, #0x28]
    add r0, r6, #0
    bl sub_0201D78C
    add r4, r0, #0
    add r0, r6, #0
    bl sub_0201A9A4
    add r0, r4, #0
    add sp, #0x10
    pop {r3, r4, r5, r6, r7, pc}
}

asm static u8 ov107_02247714 (UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9)
{
    push {r4, r5, lr}
    sub sp, #0x1c
    ldr r4, [sp, #0x28]
    str r4, [sp]
    ldr r4, [sp, #0x2c]
    str r4, [sp, #4]
    add r4, sp, #0x18
    ldrb r5, [r4, #0x18]
    str r5, [sp, #8]
    ldrb r4, [r4, #0x1c]
    str r4, [sp, #0xc]
    add r4, sp, #0x38
    ldrb r4, [r4]
    str r4, [sp, #0x10]
    add r4, sp, #0x3c
    ldrb r4, [r4]
    str r4, [sp, #0x14]
    mov r4, #0
    str r4, [sp, #0x18]
    bl ov107_02247744
    add sp, #0x1c
    pop {r4, r5, pc}
}

asm static u8 ov107_02247744 (UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, u32 param10)
{
    push {r4, r5, r6, lr}
    sub sp, #0x10
    add r5, r0, #0
    add r6, r1, #0
    add r1, r2, #0
    ldr r0, [r5, #0x20]
    ldr r2, [r5, #0x2c]
    add r4, r3, #0
    bl sub_0200B1B8
    ldr r0, [r5, #0x24]
    ldr r1, [r5, #0x28]
    ldr r2, [r5, #0x2c]
    bl sub_0200C388
    ldr r0, [sp, #0x38]
    cmp r0, #1
    beq _0224776E
    cmp r0, #2
    beq _02247780
    b _0224778C
 _0224776E:
    mov r0, #0
    ldr r1, [r5, #0x28]
    add r2, r0, #0
    bl sub_02002D7C
    add r0, r0, #1
    lsr r0, r0, #1
    sub r4, r4, r0
    b _0224778C
 _02247780:
    mov r0, #0
    ldr r1, [r5, #0x28]
    add r2, r0, #0
    bl sub_02002D7C
    sub r4, r4, r0
 _0224778C:
    ldr r0, [sp, #0x20]
    add r2, sp, #0x10
    str r0, [sp]
    ldr r0, [sp, #0x24]
    add r3, r4, #0
    str r0, [sp, #4]
    add r0, sp, #0x30
    ldrb r1, [r0]
    ldrb r0, [r2, #0x18]
    ldrb r2, [r2, #0x1c]
    lsl r0, r0, #0x18
    lsl r2, r2, #0x18
    lsr r0, r0, #8
    lsr r2, r2, #0x10
    orr r0, r2
    orr r0, r1
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    add r1, sp, #0x34
    ldrb r1, [r1]
    ldr r2, [r5, #0x28]
    add r0, r6, #0
    bl sub_0201D78C
    add r4, r0, #0
    add r0, r6, #0
    bl sub_0201A9A4
    add r0, r4, #0
    add sp, #0x10
    pop {r4, r5, r6, pc}
}

static u8 ov107_022477CC (UnkStruct_ov107_02246170 * param0, int param1, u8 param2)
{
    u8 v0;

    v0 = ov107_02247650(param0, &param0->unk_50[7], param1, 1, 1, 0xff, 1, 2, 15, param2);
    sub_0201A9A4(&param0->unk_50[7]);

    return v0;
}

asm static void ov107_02247804 (UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, UnkStruct_02073C74 * param2)
{
    push {r4, r5, r6, lr}
    sub sp, #8
    add r4, r1, #0
    add r5, r0, #0
    add r6, r2, #0
    add r0, r4, #0
    mov r1, #0
    bl sub_0201ADA4
    add r0, r6, #0
    mov r1, #6
    mov r2, #0
    bl sub_02074470
    add r2, r0, #0
    ldr r0, [r5, #0x24]
    mov r1, #0
    bl sub_0200B70C
    mov r3, #8
    str r3, [sp]
    mov r0, #0
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x30
    bl ov107_02247A14
    mov r0, #8
    str r0, [sp]
    mov r0, #0
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x31
    mov r3, #0x48
    bl ov107_02247A14
    add r0, r6, #0
    bl sub_02075BCC
    add r2, r0, #0
    ldr r0, [r5, #0x24]
    mov r1, #0
    bl sub_0200B6D8
    mov r0, #0x18
    str r0, [sp]
    mov r0, #0
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x32
    mov r3, #8
    bl ov107_02247A14
    mov r0, #0x18
    str r0, [sp]
    mov r0, #0
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x33
    mov r3, #0x48
    bl ov107_02247A14
    add r0, r6, #0
    mov r1, #0xa
    mov r2, #0
    bl sub_02074470
    add r2, r0, #0
    ldr r0, [r5, #0x24]
    mov r1, #0
    bl sub_0200B6A0
    mov r0, #0x28
    str r0, [sp]
    mov r0, #0
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x34
    mov r3, #8
    bl ov107_02247A14
    mov r0, #0x28
    str r0, [sp]
    mov r0, #0
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x35
    mov r3, #0x48
    bl ov107_02247A14
    add r0, r6, #0
    mov r1, #0xa5
    mov r2, #0
    bl sub_02074470
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    add r0, r5, #0
    mov r1, #0
    mov r3, #3
    bl ov107_022480EC
    mov r0, #0x38
    str r0, [sp]
    mov r0, #0
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x36
    mov r3, #8
    bl ov107_02247A14
    mov r0, #0x38
    str r0, [sp]
    mov r0, #2
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x37
    mov r3, #0x58
    bl ov107_02247A14
    add r0, r6, #0
    mov r1, #0xa6
    mov r2, #0
    bl sub_02074470
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    add r0, r5, #0
    mov r1, #0
    mov r3, #3
    bl ov107_022480EC
    mov r2, #0x38
    str r2, [sp]
    mov r0, #0
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r3, #0x68
    bl ov107_02247A14
    mov r0, #0x38
    str r0, [sp]
    mov r0, #2
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x39
    mov r3, #0xb8
    bl ov107_02247A14
    add r0, r6, #0
    mov r1, #0xa8
    mov r2, #0
    bl sub_02074470
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    add r0, r5, #0
    mov r1, #0
    mov r3, #3
    bl ov107_022480EC
    mov r0, #0x48
    str r0, [sp]
    mov r0, #0
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x3a
    mov r3, #8
    bl ov107_02247A14
    mov r0, #0x48
    str r0, [sp]
    mov r0, #2
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x3b
    mov r3, #0x58
    bl ov107_02247A14
    add r0, r6, #0
    mov r1, #0xa9
    mov r2, #0
    bl sub_02074470
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    add r0, r5, #0
    mov r1, #0
    mov r3, #3
    bl ov107_022480EC
    mov r0, #0x48
    str r0, [sp]
    mov r0, #0
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x3c
    mov r3, #0x68
    bl ov107_02247A14
    mov r0, #0x48
    str r0, [sp]
    mov r0, #2
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x3d
    mov r3, #0xb8
    bl ov107_02247A14
    add r0, r6, #0
    mov r1, #0xa7
    mov r2, #0
    bl sub_02074470
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    add r0, r5, #0
    mov r1, #0
    mov r3, #3
    bl ov107_022480EC
    mov r0, #0x58
    str r0, [sp]
    mov r0, #0
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x3e
    mov r3, #8
    bl ov107_02247A14
    mov r3, #0x58
    str r3, [sp]
    mov r0, #2
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x3f
    bl ov107_02247A14
    add r0, r4, #0
    bl sub_0201A9A4
    add sp, #8
    pop {r4, r5, r6, pc}
}

static void ov107_02247A14 (UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, int param2, u16 param3, u16 param4, u32 param5)
{
    ov107_02247744(param0, param1, param2, param3, param4, 0xff, 1, 2, 0, 0, param5);
    return;
}

static void ov107_02247A3C (UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, UnkStruct_02073C74 * param2)
{
    sub_0201ADA4(param1, 0);

    ov107_02247AD0(param0, param1, 0, 71, 75, param2, 54, 58, 66);
    ov107_02247AD0(param0, param1, 1, 72, 75, param2, 55, 59, 67);
    ov107_02247AD0(param0, param1, 2, 73, 75, param2, 56, 60, 68);
    ov107_02247AD0(param0, param1, 3, 74, 75, param2, 57, 61, 69);

    sub_0201A9A4(param1);
    return;
}

asm static void ov107_02247AD0 (UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, u8 param2, u32 param3, u32 param4, UnkStruct_02073C74 * param5, u32 param6, u32 param7, u32 param8)
{
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    add r4, r0, #0
    add r6, r1, #0
    add r5, r2, #0
    ldr r0, [sp, #0x34]
    ldr r1, [sp, #0x38]
    mov r2, #0
    add r7, r3, #0
    bl sub_02074470
    add r2, r0, #0
    ldr r0, [r4, #0x24]
    add r1, r5, #0
    bl sub_0200B630
    mov r0, #0x18
    mul r0, r5
    add r0, #0xc
    lsl r0, r0, #0x10
    lsr r5, r0, #0x10
    str r5, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r0, #1
    str r0, [sp, #8]
    mov r0, #2
    str r0, [sp, #0xc]
    mov r0, #0
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    add r0, r4, #0
    add r1, r6, #0
    add r2, r7, #0
    mov r3, #0x20
    bl ov107_02247714
    strb r0, [r4, #0xa]
    ldr r0, [sp, #0x34]
    ldr r1, [sp, #0x3c]
    mov r2, #0
    bl sub_02074470
    add r2, r0, #0
    mov r0, #0
    str r0, [sp]
    add r0, r4, #0
    mov r1, #4
    mov r3, #3
    bl ov107_022480EC
    ldr r0, [sp, #0x34]
    ldr r1, [sp, #0x40]
    mov r2, #0
    bl sub_02074470
    add r2, r0, #0
    mov r0, #0
    str r0, [sp]
    add r0, r4, #0
    mov r1, #5
    mov r3, #3
    bl ov107_022480EC
    str r5, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r1, #1
    str r1, [sp, #8]
    mov r0, #2
    str r0, [sp, #0xc]
    mov r0, #0
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    str r1, [sp, #0x18]
    ldr r2, [sp, #0x30]
    add r0, r4, #0
    add r1, r6, #0
    mov r3, #0x91
    bl ov107_02247744
    strb r0, [r4, #0xa]
    add sp, #0x1c
    pop {r4, r5, r6, r7, pc}
}

static void ov107_02247B78 (UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1)
{
    u16 v0;
    u8 v1;
    int v2;
    UnkStruct_02073C74 * v3;

    sub_0201ADA4(param1, 0);

    if (ov104_0223BA14(param0->unk_09) == 0) {
        v0 = 36;
    } else {
        v0 = 4;
    }

    v1 = ov104_0223B7DC(param0->unk_09, 1);

    for (v2 = 0; v2 < v1; v2++) {
        if (param0->unk_3CC[v2] == 0) {
            sub_0201AE78(param1, 0, v0 + (64 * v2), 1, 64, 2 * 8);

            continue;
        }

        v3 = Party_GetPokemonBySlotIndex(param0->unk_3DC, v2);

        sub_0200C5BC(param0->unk_144, sub_02074470(v3, 163, NULL), 3, 1, param1, v0 + (64 * v2), 1);
        sub_0200C578(param0->unk_144, 0, param1, 24 + v0 + (64 * v2), 1);
        sub_0200C5BC(param0->unk_144, sub_02074470(v3, 164, NULL), 3, 0, param1, 32 + v0 + (64 * v2), 1);
    }

    sub_0201A9A4(param1);
    return;
}

static void ov107_02247C64 (UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1)
{
    u32 v0;
    u16 v1, v2;
    u8 v3;
    int v4;
    UnkStruct_02073C74 * v5;

    sub_0201ADA4(param1, 0);

    if (ov104_0223BA14(param0->unk_09) == 0) {
        v1 = 40;
        v2 = 80;
    } else {
        v1 = 8;
        v2 = 48;
    }

    v3 = ov104_0223B7DC(param0->unk_09, 1);

    for (v4 = 0; v4 < v3; v4++) {
        v5 = Party_GetPokemonBySlotIndex(param0->unk_3DC, v4);
        sub_0200C648(param0->unk_144, 1, sub_02074470(v5, 161, NULL), 3, 0, param1, v1 + (64 * v4), 1);

        v0 = sub_02074470(v5, 111, NULL);
        ov107_022481FC(param0, param1, v2 + (64 * v4), 1, 0, v0);
    }

    sub_0201A9A4(param1);
    return;
}

static void ov107_02247D04 (UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, u8 param2)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_120[v0].unk_00 = NULL;
        param0->unk_120[v0].unk_04 = 0;
    }

    param0->unk_110.unk_00 = param0->unk_120;
    param0->unk_110.unk_04 = param1;
    param0->unk_110.unk_08 = 0;
    param0->unk_110.unk_09 = 1;
    param0->unk_110.unk_0A = param2;
    param0->unk_110.unk_0B_0 = 0;
    param0->unk_110.unk_0B_4 = 0;
    param0->unk_110.unk_0B_6 = 1;

    return;
}

static void ov107_02247D68 (UnkStruct_ov107_02246170 * param0, u8 param1, u8 param2, int param3)
{
    int v0;
    void * v1;

    sub_0200B1B8(param0->unk_20, param3, param0->unk_30[param1]);

    param0->unk_120[param1].unk_00 = (const void *)param0->unk_30[param1];
    param0->unk_120[param1].unk_04 = param2;

    return;
}

static void ov107_02247D94 (UnkStruct_ov107_02246170 * param0)
{
    ov107_02249D84(param0->unk_4C, &param0->unk_50[10]);
    ov107_02247D04(param0, &param0->unk_50[10], 2);
    ov107_02247D68(param0, 0, 0, 26);
    ov107_02247D68(param0, 1, 1, 27);

    param0->unk_11C = sub_02001B7C(&param0->unk_110, 8, 0, 0, 100, PAD_BUTTON_B);
    param0->unk_0F_2 = 1;

    return;
}

static void ov107_02247DF0 (UnkStruct_ov107_02246170 * param0)
{
    ov107_02249D84(param0->unk_4C, &param0->unk_50[11]);
    ov107_02247D04(param0, &param0->unk_50[11], 3);
    ov107_02247D68(param0, 0, 0, 22);
    ov107_02247D68(param0, 1, 1, 23);
    ov107_02247D68(param0, 2, 2, 24);

    param0->unk_11C = sub_02001B7C(&param0->unk_110, 8, 0, 0, 100, PAD_BUTTON_B);
    param0->unk_0F_2 = 1;

    return;
}

static const UnkStruct_ov84_02240FA8 Unk_ov107_0224A17C = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x0,
    0x0,
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0x0,
    0x2,
    0x0,
    0x10,
    0x0,
    0x0,
    0x0,
    NULL
};

static const u32 Unk_ov107_0224A1BC[][2] = {
    {0x8, 0x0},
    {0x9, 0x1},
    {0xA, 0x2},
    {0xB, 0xfffffffe}
};

static const u32 Unk_ov107_0224A0CC[] = {
    0xC,
    0xD,
    0xE,
    0xF
};

static void ov107_02247E5C (UnkStruct_ov107_02246170 * param0)
{
    int v0;
    UnkStruct_ov84_02240FA8 v1;

    ov107_02249D84(param0->unk_4C, &param0->unk_50[5]);
    sub_0201ADA4(&param0->unk_50[5], 15);

    param0->unk_13C = sub_02013A04((NELEMS(Unk_ov107_0224A1BC)), 100);

    for (v0 = 0; v0 < (NELEMS(Unk_ov107_0224A1BC)); v0++) {
        sub_02013A4C(param0->unk_13C, param0->unk_20, Unk_ov107_0224A1BC[v0][0], Unk_ov107_0224A1BC[v0][1]);
    }

    v1 = Unk_ov107_0224A17C;

    v1.unk_00 = param0->unk_13C;
    v1.unk_0C = &param0->unk_50[5];
    v1.unk_1C = param0;
    v1.unk_04 = ov107_02247F14;
    v1.unk_08 = NULL;
    v1.unk_10 = (NELEMS(Unk_ov107_0224A1BC));
    v1.unk_18_0 = 15;
    v1.unk_12 = 4;

    param0->unk_138 = sub_0200112C(&v1, param0->unk_1C, param0->unk_1E, 100);
    param0->unk_0F_1 = 1;

    sub_0201A9A4(&param0->unk_50[5]);
    return;
}

static void ov107_02247F14 (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    u32 v0, v1;
    u16 v2, v3, v4;
    UnkStruct_ov107_02246170 * v5 = (UnkStruct_ov107_02246170 *)sub_02001504(param0, 19);

    if (param2 == 0) {
        sub_02005748(1500);
    }

    sub_020014D0(param0, &v4);
    ov107_02247650(v5, &v5->unk_50[9], Unk_ov107_0224A0CC[v4], 1, 1, 0xff, 1, 2, 15, 1);

    return;
}

static const u32 Unk_ov107_0224A19C[][2] = {
    {0x21, 0x3},
    {0x22, 0x4},
    {0x23, 0x5},
    {0x24, 0xfffffffe}
};

static const u16 Unk_ov107_0224A0AC[][2] = {
    {0x25, 0x25},
    {0x26, 0x26},
    {0x27, 0x28},
    {0x29, 0x29}
};

static void ov107_02247F6C (UnkStruct_ov107_02246170 * param0)
{
    int v0;
    UnkStruct_ov84_02240FA8 v1;

    ov107_02249D84(param0->unk_4C, &param0->unk_50[6]);
    sub_0201ADA4(&param0->unk_50[6], 15);

    param0->unk_13C = sub_02013A04((NELEMS(Unk_ov107_0224A19C)), 100);

    for (v0 = 0; v0 < (NELEMS(Unk_ov107_0224A19C)); v0++) {
        sub_02013A4C(param0->unk_13C, param0->unk_20, Unk_ov107_0224A19C[v0][0], Unk_ov107_0224A19C[v0][1]);
    }

    v1 = Unk_ov107_0224A17C;

    v1.unk_00 = param0->unk_13C;
    v1.unk_0C = &param0->unk_50[6];
    v1.unk_1C = param0;
    v1.unk_04 = ov107_02248028;
    v1.unk_08 = ov107_022480A0;
    v1.unk_10 = (NELEMS(Unk_ov107_0224A19C));
    v1.unk_18_0 = 15;
    v1.unk_12 = 4;

    param0->unk_138 = sub_0200112C(&v1, 0, 0, 100);
    param0->unk_0F_1 = 1;

    sub_0201A9A4(&param0->unk_50[6]);
    return;
}

static void ov107_02248028 (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    u8 v0, v1;
    u16 v2;
    UnkStruct_ov107_02246170 * v3 = (UnkStruct_ov107_02246170 *)sub_02001504(param0, 19);

    if (param2 == 0) {
        sub_02005748(1500);
    }

    sub_020014D0(param0, &v2);

    v0 = ov107_02249CAC(v3->unk_14C, v3->unk_09, 2);

    if (v0 == 1) {
        v1 = 0;
    } else {
        v1 = 1;
    }

    ov107_02247650(v3, &v3->unk_50[7], Unk_ov107_0224A0AC[v2][v1], 1, 1, 0xff, 1, 2, 15, 1);

    return;
}

static void ov107_022480A0 (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    u8 v0, v1;
    UnkStruct_ov107_02246170 * v2 = (UnkStruct_ov107_02246170 *)sub_02001504(param0, 19);

    v0 = ov107_02249CAC(v2->unk_14C, v2->unk_09, 2);
    v1 = 1;

    switch (param1) {
    case 4:
        if (v0 == 1) {
            v1 = 2;
        } else {
            v1 = 1;
        }
        break;
    case 5:
        if (v0 == (3 - 1)) {
            v1 = 2;
        } else {
            v1 = 1;
        }
        break;
    default:
        v1 = 1;
        break;
    }

    sub_020013D8(param0, v1, 15, 2);
    return;
}

static void ov107_022480EC (UnkStruct_ov107_02246170 * param0, u32 param1, s32 param2, u32 param3, int param4)
{
    sub_0200B60C(param0->unk_24, param1, param2, param3, param4, 1);
    return;
}

static void ov107_02248104 (UnkStruct_ov107_02246170 * param0, u32 param1, UnkStruct_02073C74_sub1 * param2)
{
    sub_0200B538(param0->unk_24, param1, param2);
    return;
}

static void ov107_02248110 (UnkStruct_ov107_02246170 * param0, u32 param1)
{
    sub_0200B498(param0->unk_24, param1, sub_02025E38(param0->unk_14C));
    return;
}

static void ov107_0224812C (UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, u32 param2, u32 param3, u8 param4)
{
    u32 v0;
    const UnkStruct_02025E6C * v1;
    UnkStruct_02023790 * v2;

    v1 = sub_02025E38(param0->unk_14C);
    v2 = sub_02023790((7 + 1), 100);

    sub_02023D28(v2, sub_02025EF0(v1));

    if (sub_02025F30(v1) == 0) {
        v0 = ((u32)(((7 & 0xff) << 16) | ((8 & 0xff) << 8) | (((0 & 0xff) << 0))));
    } else {
        v0 = ((u32)(((3 & 0xff) << 16) | ((4 & 0xff) << 8) | (((0 & 0xff) << 0))));
    }

    sub_0201D78C(param1, param4, v2, param2, param3, 0xff, v0, NULL);
    sub_020237BC(v2);

    return;
}

static void ov107_02248194 (UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, u32 param2, u32 param3, u8 param4)
{
    UnkStruct_02025E6C * v0;
    u32 v1;

    v0 = sub_02032EE8((sub_0203608C() ^ 1));

    if (sub_02025F30(v0) == 0) {
        v1 = ((u32)(((7 & 0xff) << 16) | ((8 & 0xff) << 8) | (((0 & 0xff) << 0))));
    } else {
        v1 = ((u32)(((3 & 0xff) << 16) | ((4 & 0xff) << 8) | (((0 & 0xff) << 0))));
    }

    sub_0200B498(param0->unk_24, 0, v0);
    ov107_02247714(param0, param1, 1, param2, param3, 0xff, (((v1) >> 16) & 0xff), (((v1) >> 8) & 0xff), (((v1) >> 0) & 0xff), 0);

    return;
}

static void ov107_022481FC (UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1, u32 param2, u32 param3, u8 param4, u8 param5)
{
    u32 v0, v1;
    u8 v2, v3, v4;

    if (param5 == 0) {
        v0 = 64;
        v2 = 7;
        v3 = 8;
        v4 = 0;
    } else if (param5 == 1) {
        v0 = 65;
        v2 = 3;
        v3 = 4;
        v4 = 0;
    } else {
        return;
    }

    ov107_02247714(param0, param1, v0, param2, param3, 0xff, v2, v3, v4, param4);

    return;
}

asm static void ov107_02248240 (UnkStruct_ov107_02246170 * param0)
{
    push {r3, r4, lr}
    sub sp, #0x1c
    mov r2, #5
    str r2, [sp]
    mov r1, #0xff
    str r1, [sp, #4]
    mov r3, #1
    str r3, [sp, #8]
    mov r1, #2
    str r1, [sp, #0xc]
    mov r1, #0
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    add r4, r0, #0
    add r1, r4, #0
    str r3, [sp, #0x18]
    add r1, #0x60
    mov r3, #0x10
    bl ov107_02247680
    strb r0, [r4, #0xa]
    mov r0, #0x52
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    bl sub_02027B50
    add r1, r0, #0
    add r0, r4, #0
    add r0, #0xd0
    bl ov107_02249DBC
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
    add r0, r4, #0
    add r1, #0xd0
    mov r2, #4
    str r3, [sp, #0x14]
    bl ov107_02247650
    strb r0, [r4, #0xa]
    add sp, #0x1c
    pop {r3, r4, pc}
}

static void ov107_022482A4 (UnkStruct_ov107_02246170 * param0)
{
    ov107_02248860(&param0->unk_50[8]);
    return;
}

static void ov107_022482B0 (UnkStruct_ov107_02246170 * param0)
{
    ov107_02249DBC(&param0->unk_50[9], GameOptions_GetFrameStyle(param0->unk_148));

    param0->unk_18 = 0;
    ov107_02247E5C(param0);

    return;
}

static void ov107_022482D4 (UnkStruct_ov107_02246170 * param0)
{
    sub_020014DC(param0->unk_138, &param0->unk_1C, &param0->unk_1E);

    ov107_02248860(&param0->unk_50[9]);
    ov107_02249258(param0);

    return;
}

static void ov107_022482FC (UnkStruct_ov107_02246170 * param0)
{
    ov107_02249DBC(&param0->unk_50[7], GameOptions_GetFrameStyle(param0->unk_148));

    param0->unk_0A = ov107_02247650(param0, &param0->unk_50[7], 37, 1, 1, 0xff, 1, 2, 15, 1);
    param0->unk_18 = 0;

    ov107_02247F6C(param0);
    return;
}

static void ov107_02248348 (UnkStruct_ov107_02246170 * param0)
{
    ov107_02249258(param0);
    return;
}

static void ov107_02248350 (UnkStruct_ov107_02246170 * param0, int * param1, int param2)
{
    param0->unk_08 = 0;
    *param1 = param2;
    return;
}

static void ov107_02248358 (UnkStruct_ov107_02246170 * param0, int param1)
{
    u8 v0;
    int v1;

    v1 = 0;
    v0 = ov107_02249C98(param0->unk_14, param0->unk_0D);

    if (Unk_021BF67C.unk_48 & PAD_KEY_LEFT) {
        if (param0->unk_0D == param0->unk_15) {
            return;
        }

        if (v0 == 0) {
            param0->unk_0D += (param0->unk_14 - 1);
        } else {
            param0->unk_0D--;
        }

        v1 = 1;
    }

    if (Unk_021BF67C.unk_48 & PAD_KEY_RIGHT) {
        if (param0->unk_0D == param0->unk_15) {
            return;
        }

        if (v0 == (param0->unk_14 - 1)) {
            param0->unk_0D -= (param0->unk_14 - 1);
        } else {
            param0->unk_0D++;
        }

        v1 = 1;
    }

    if (Unk_021BF67C.unk_48 & PAD_KEY_UP) {
        if (param0->unk_0D < param0->unk_14) {
            return;
        }

        param0->unk_0D = param0->unk_0C;
        v1 = 1;
    }

    if (Unk_021BF67C.unk_48 & PAD_KEY_DOWN) {
        if (param0->unk_0D >= param0->unk_15) {
            return;
        }

        param0->unk_0C = param0->unk_0D;
        param0->unk_0D = param0->unk_15;
        v1 = 1;
    }

    if (v1 == 1) {
        ov107_022483F0(param0);
    }

    return;
}

static void ov107_022483F0 (UnkStruct_ov107_02246170 * param0)
{
    sub_02005748(1500);

    if (ov104_0223BA14(param0->unk_09) == 1) {
        ov107_02248874(param0, 22, param0->unk_0D);
    }

    ov107_02248420(param0, param0->unk_0D, 0);
    return;
}

static void ov107_02248420 (UnkStruct_ov107_02246170 * param0, u8 param1, u8 param2)
{
    UnkStruct_ov107_02249B8C * v0;
    u32 v1, v2, v3, v4;

    if (param2 == 0) {
        v0 = param0->unk_38C;
        v3 = 1;
        v4 = 0;
    } else {
        v0 = param0->unk_390;
        v3 = 2;
        v4 = 17;
    }

    if (param1 >= param0->unk_15) {
        ov107_02249BEC(v0, v4);
        ov107_02249BB8(v0, 224, 160);
    } else {
        ov107_02249BEC(v0, v3);
        ov107_02248488(param0, &v1, &v2, param1);
        ov107_02249BB8(v0, v1, v2);
    }

    return;
}

static void ov107_02248488 (UnkStruct_ov107_02246170 * param0, u32 * param1, u32 * param2, u8 param3)
{
    if (ov104_0223BA14(param0->unk_09) == 1) {
        if (param3 == 0) {
            *param1 = 40;
        } else if (param3 == 1) {
            *param1 = 104;
        } else if (param3 == 2) {
            *param1 = 168;
        } else {
            *param1 = 232;
        }
    } else {
        if (param3 == 0) {
            *param1 = 72;
        } else if (param3 == 1) {
            *param1 = 136;
        } else {
            *param1 = 200;
        }
    }

    *param2 = 88;
    return;
}

static void ov107_022484DC (UnkStruct_ov107_02246170 * param0, u16 * param1, u16 * param2, u16 * param3, u16 * param4)
{
    if (ov104_0223BA14(param0->unk_09) == 0) {
        *param1 = 32;
        *param2 = 0;
        *param3 = 0;
        *param4 = 0;
    } else {
        *param1 = 0;
        *param2 = 0;
        *param3 = 120;
        *param4 = 0;
    }

    return;
}

static BOOL ov107_0224850C (UnkStruct_ov107_02246170 * param0, u8 param1, u8 param2)
{
    u16 v0;
    u32 v1;
    u8 v2, v3;
    UnkStruct_02073C74 * v4;

    v3 = param0->unk_15;
    v2 = ov107_02249C98(param0->unk_14, param1);
    v4 = Party_GetPokemonBySlotIndex(param0->unk_3DC, v2);

    switch (param2) {
    case 0:
        param0->unk_0F_0 = 0;
        return 1;
        break;
    case 1:
        if (param0->unk_0F_0 == 0) {
            param0->unk_0F_0 = 1;

            if (param0->unk_12 == 1) {
                v1 = 9;
            } else {
                v1 = 10;
            }

            if (ov104_0223BA14(param0->unk_09) == 0) {
                v0 = 80;
            } else {
                v0 = 48;
            }

            param0->unk_388 = ov107_02249B1C(&param0->unk_158, 0, 0, 0, v1, v0 + (64 * v2), 50, 0, NULL);
        }

        if (ov107_02249C40(param0->unk_388) == 0) {
            ov107_02249B8C(param0->unk_388);
            param0->unk_388 = NULL;
            param0->unk_0F_0 = 0;
            return 1;
        }
        break;
    case 3:
        if (ov104_0223BA14(param0->unk_09) == 0) {
            if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                sub_02005748(1500);
                ov107_02248A2C(param0, param1);
                param0->unk_0F_0 = 0;
                return 1;
            }
        } else {
            param0->unk_0F_0 = 0;
            return 1;
        }
        break;
    case 4:
        if (ov104_0223BA14(param0->unk_09) == 0) {
            if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                sub_02005748(1500);
                ov107_02248AF0(param0, param1);
                param0->unk_0F_0 = 0;
                return 1;
            }
        } else {
            param0->unk_0F_0 = 0;
            return 1;
        }
        break;
    case 5:
        param0->unk_0F_0 = 0;
        return 1;
        break;
    }

    return 0;
}

static BOOL ov107_02248674 (UnkStruct_ov107_02246170 * param0, u8 param1, u8 param2)
{
    u32 v0;
    u8 v1, v2;
    UnkStruct_02073C74 * v3;

    v2 = param0->unk_15;
    v1 = ov107_02249C98(param0->unk_14, param1);
    v3 = Party_GetPokemonBySlotIndex(param0->unk_3DC, v1);

    switch (param2) {
    case 0:
    case 1:
    case 5:
        param0->unk_0F_0 = 0;
        return 1;
        break;
    case 3:
        if (ov104_0223BA14(param0->unk_09) == 1) {
            if (sub_0203608C() == 0) {
                if (param0->unk_11 >= v2) {
                    param0->unk_0F_0 = 0;
                    return 1;
                }
            } else {
                if (param0->unk_11 < v2) {
                    param0->unk_0F_0 = 0;
                    return 1;
                }
            }
        }

        if (param0->unk_0F_0 == 0) {
            param0->unk_0F_3 = 3;
            ov107_02248A2C(param0, param1);
            param0->unk_0F_0 = 0;
            return 1;
        }
        break;
    case 4:
        if (ov104_0223BA14(param0->unk_09) == 1) {
            if (sub_0203608C() == 0) {
                if (param0->unk_11 >= v2) {
                    param0->unk_0F_0 = 0;
                    return 1;
                }
            } else {
                if (param0->unk_11 < v2) {
                    param0->unk_0F_0 = 0;
                    return 1;
                }
            }
        }

        if (param0->unk_0F_0 == 0) {
            param0->unk_0F_3 = 3;
            ov107_02248AF0(param0, param1);
            param0->unk_0F_0 = 0;
            return 1;
        }
        break;
    }

    return 0;
}

static u16 ov107_02248770 (u8 param0)
{
    if (param0 == 1) {
        return 1;
    }

    return 15;
}

static void ov107_0224877C (UnkStruct_ov107_02246170 * param0, s8 param1)
{
    UnkStruct_02073C74 * v0;
    s8 v1;

    v1 = param0->unk_0D;

    while (TRUE) {
        v1 += param1;

        if (v1 < 0) {
            v1 = (param0->unk_14 - 1);
        } else if (v1 >= param0->unk_14) {
            v1 = 0;
        }

        if (v1 == param0->unk_0D) {
            return;
        }

        if (param0->unk_3D4[v1] == 1) {
            param0->unk_0D = v1;
            ov107_022483F0(param0);
            v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param0->unk_0D));
            ov107_02247804(param0, &param0->unk_50[4], v0);
            return;
        }
    }

    return;
}

static void ov107_022487DC (UnkStruct_ov107_02246170 * param0, s8 param1)
{
    UnkStruct_02073C74 * v0;
    s8 v1;

    v1 = param0->unk_0D;

    while (TRUE) {
        v1 += param1;

        if (v1 < 0) {
            v1 = (param0->unk_14 - 1);
        } else if (v1 >= param0->unk_14) {
            v1 = 0;
        }

        if (v1 == param0->unk_0D) {
            return;
        }

        if (param0->unk_3D8[v1] == 1) {
            param0->unk_0D = v1;
            ov107_022483F0(param0);
            v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param0->unk_0D));
            ov107_02247A3C(param0, &param0->unk_50[4], v0);
            return;
        }
    }

    return;
}

static void ov107_0224883C (UnkStruct_ov107_02246170 * param0)
{
    ov107_02248BB4(param0);
    ov107_02249258(param0);

    ov107_02248860(&param0->unk_50[7]);
    ov107_02249BAC(param0->unk_3C4, 0);

    return;
}

static void ov107_02248860 (UnkStruct_0205AA50 * param0)
{
    sub_0200E084(param0, 1);
    sub_0201AD10(param0);

    return;
}

BOOL ov107_02248874 (UnkStruct_ov107_02246170 * param0, u16 param1, u16 param2)
{
    int v0, v1;

    switch (param1) {
    case 20:
        v1 = 53;
        ov107_022488CC(param0, param1);
        break;
    case 21:
        v1 = 54;
        ov107_02248940(param0, param1, param2);
        break;
    case 22:
        v1 = 55;
        ov107_022489D0(param0, param1);
        break;
    case 23:
        v1 = 56;
        ov107_02248A04(param0);
        break;
    }

    if (sub_020359DC(v1, param0->unk_3E4, 40) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void ov107_022488CC (UnkStruct_ov107_02246170 * param0, u16 param1)
{
    int v0, v1;
    UnkStruct_02025E6C * v2;

    v1 = 0;
    v2 = sub_02025E38(param0->unk_14C);

    param0->unk_3E4[v1] = param1;
    v1 += 1;

    param0->unk_3E4[v1] = sub_02025F30(v2);
    v1 += 1;

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_3E4[v1 + v0] = ov107_02249CAC(param0->unk_14C, param0->unk_09, v0);
    }

    v1 += 3;

    return;
}

void ov107_02248910 (int param0, int param1, void * param2, void * param3)
{
    int v0, v1;
    UnkStruct_ov107_02246170 * v2 = param3;
    const u16 * v3 = param2;

    v1 = 0;
    v2->unk_17++;

    if (sub_0203608C() == param0) {
        return;
    }

    v1 += 1;
    v1 += 1;

    for (v0 = 0; v0 < 3; v0++) {
        v2->unk_437[v0] = (u8)v3[v1 + v0];
    }

    v1 += 3;

    return;
}

void ov107_02248940 (UnkStruct_ov107_02246170 * param0, u16 param1, u16 param2)
{
    param0->unk_3E4[0] = param1;
    param0->unk_3E4[1] = param2;

    if (sub_0203608C() == 0) {
        if (param0->unk_11 == 0xff) {
            param0->unk_11 = param2;
        }
    }

    param0->unk_3E4[2] = param0->unk_11;
    param0->unk_3E4[4] = param0->unk_12;
    param0->unk_3E4[5] = param0->unk_13;

    return;
}

void ov107_02248978 (int param0, int param1, void * param2, void * param3)
{
    int v0, v1;
    UnkStruct_ov107_02246170 * v2 = param3;
    const u16 * v3 = param2;

    v1 = 0;
    v2->unk_17++;

    if (sub_0203608C() == param0) {
        return;
    }

    v2->unk_435 = v3[1];

    if (sub_0203608C() == 0) {
        if (v2->unk_11 != 0xff) {
            v2->unk_435 = 0;
        } else {
            v2->unk_11 = v2->unk_435 + v2->unk_15;
            v2->unk_12 = v3[4];
            v2->unk_13 = v3[5];
        }
    } else {
        v2->unk_11 = v3[2];
        v2->unk_12 = v3[4];
        v2->unk_13 = v3[5];
    }

    return;
}

void ov107_022489D0 (UnkStruct_ov107_02246170 * param0, u16 param1)
{
    param0->unk_3E4[0] = param1;
    param0->unk_3E4[1] = param0->unk_0D;

    return;
}

void ov107_022489E0 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov107_02246170 * v0 = param3;
    const u16 * v1 = param2;

    if (sub_0203608C() == param0) {
        return;
    }

    v0->unk_434 = (u8)v1[1];

    ov107_02248420(v0, v0->unk_434, 1);
    return;
}

void ov107_02248A04 (UnkStruct_ov107_02246170 * param0)
{
    param0->unk_3E4[0] = 1;
    return;
}

void ov107_02248A10 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov107_02246170 * v0 = param3;
    const u16 * v1 = param2;

    if (sub_0203608C() == param0) {
        return;
    }

    v0->unk_436 = (u8)v1[0];
    return;
}

static void ov107_02248A2C (UnkStruct_ov107_02246170 * param0, u8 param1)
{
    UnkStruct_02073C74 * v0;

    ov107_0224752C(param0, 2);
    ov107_02248860(&param0->unk_50[7]);

    sub_0201AD10(&param0->unk_50[7]);

    v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param1));
    ov107_02247804(param0, &param0->unk_50[4], v0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

    return;
}

static void ov107_02248A74 (UnkStruct_ov107_02246170 * param0, u8 param1)
{
    param0->unk_3D4[ov107_02249C98(param0->unk_14, param1)] = 1;
    return;
}

static void ov107_02248A8C (UnkStruct_ov107_02246170 * param0, u8 param1)
{
    UnkStruct_02073C74 * v0;

    ov107_02249DBC(&param0->unk_50[7], GameOptions_GetFrameStyle(param0->unk_148));

    v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param1));
    ov107_02248104(param0, 0, sub_02076B10(v0));

    param0->unk_0A = ov107_022477CC(param0, 47, 1);

    ov107_02248A74(param0, param1);
    ov107_02249580(param0);

    sub_02005748(1572);
    return;
}

static void ov107_02248AF0 (UnkStruct_ov107_02246170 * param0, u8 param1)
{
    UnkStruct_02073C74 * v0;

    ov107_022475A8(param0, 2);
    ov107_02248860(&param0->unk_50[7]);

    sub_0201AD10(&param0->unk_50[7]);

    v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param1));
    ov107_02247A3C(param0, &param0->unk_50[4], v0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

    return;
}

static void ov107_02248B38 (UnkStruct_ov107_02246170 * param0, u8 param1)
{
    param0->unk_3D8[ov107_02249C98(param0->unk_14, param1)] = 1;
    return;
}

static void ov107_02248B50 (UnkStruct_ov107_02246170 * param0, u8 param1)
{
    UnkStruct_02073C74 * v0;

    ov107_02249DBC(&param0->unk_50[7], GameOptions_GetFrameStyle(param0->unk_148));

    v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param1));
    ov107_02248104(param0, 0, sub_02076B10(v0));

    param0->unk_0A = ov107_022477CC(param0, 70, 1);

    ov107_02248B38(param0, param1);
    ov107_02249580(param0);

    sub_02005748(1572);
    return;
}

static void ov107_02248BB4 (UnkStruct_ov107_02246170 * param0)
{
    if (param0->unk_0F_2 == 1) {
        param0->unk_0F_2 = 0;
        sub_02001BC4(param0->unk_11C, NULL);
        sub_0200DC9C(param0->unk_110.unk_04, 1);
        sub_0201AD10(param0->unk_110.unk_04);
    }

    return;
}

static void ov107_02248BEC (UnkStruct_ov107_02246170 * param0)
{
    ov107_02249DBC(&param0->unk_50[7], GameOptions_GetFrameStyle(param0->unk_148));
    return;
}

asm static void ov107_02248C08 (UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x30
    add r4, r1, #0
    add r1, sp, #0x28
    str r1, [sp]
    add r1, sp, #0x2c
    add r3, sp, #0x28
    add r5, r0, #0
    add r1, #2
    add r2, sp, #0x2c
    add r3, #2
    bl ov107_022484DC
    ldrb r0, [r5, #9]
    bl ov104_0223BA14
    cmp r0, #0
    bne _02248CA2
    add r1, sp, #0x28
    ldrh r0, [r1, #6]
    ldrh r6, [r1, #4]
    mov r1, #0
    add r0, #0x68
    lsl r0, r0, #0x10
    lsr r7, r0, #0x10
    add r2, r7, #0
    mov r0, #0x30
    sub r2, #0x30
    str r0, [sp]
    mov r0, #0x10
    lsl r2, r2, #0x10
    str r0, [sp, #4]
    add r0, r4, #0
    lsr r2, r2, #0x10
    add r3, r6, #0
    bl sub_0201AE78
    ldrb r0, [r5, #9]
    bl sub_0205E630
    str r0, [sp, #0x1c]
    ldrb r0, [r5, #9]
    bl sub_0205E630
    bl sub_0205E6A8
    add r2, r0, #0
    ldr r0, [r5, #4]
    ldr r1, [sp, #0x1c]
    bl sub_02030698
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    add r0, r5, #0
    mov r1, #0
    mov r3, #4
    bl ov107_022480EC
    str r6, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r0, #1
    str r0, [sp, #8]
    mov r2, #2
    str r2, [sp, #0xc]
    mov r0, #0
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    add r0, r5, #0
    add r1, r4, #0
    add r3, r7, #0
    str r2, [sp, #0x18]
    bl ov107_02247744
    strb r0, [r5, #0xa]
    b _02248E46
 _02248CA2:
    bl sub_0203608C
    cmp r0, #0
    add r1, sp, #0x28
    bne _02248D7A
    ldrh r0, [r1, #6]
    ldrh r6, [r1, #4]
    mov r1, #0
    add r0, #0x68
    lsl r0, r0, #0x10
    lsr r7, r0, #0x10
    add r2, r7, #0
    mov r0, #0x30
    sub r2, #0x30
    str r0, [sp]
    mov r0, #0x10
    lsl r2, r2, #0x10
    str r0, [sp, #4]
    add r0, r4, #0
    lsr r2, r2, #0x10
    add r3, r6, #0
    bl sub_0201AE78
    ldrb r0, [r5, #9]
    bl sub_0205E630
    str r0, [sp, #0x20]
    ldrb r0, [r5, #9]
    bl sub_0205E630
    bl sub_0205E6A8
    add r2, r0, #0
    ldr r0, [r5, #4]
    ldr r1, [sp, #0x20]
    bl sub_02030698
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    add r0, r5, #0
    mov r1, #0
    mov r3, #4
    bl ov107_022480EC
    str r6, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r0, #1
    str r0, [sp, #8]
    mov r2, #2
    str r2, [sp, #0xc]
    mov r0, #0
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    add r0, r5, #0
    add r1, r4, #0
    add r3, r7, #0
    str r2, [sp, #0x18]
    bl ov107_02247744
    add r1, sp, #0x28
    strb r0, [r5, #0xa]
    ldrh r0, [r1, #2]
    ldrh r6, [r1]
    mov r1, #0
    add r0, #0x68
    lsl r0, r0, #0x10
    lsr r7, r0, #0x10
    add r2, r7, #0
    mov r0, #0x30
    sub r2, #0x30
    str r0, [sp]
    mov r0, #0x10
    lsl r2, r2, #0x10
    str r0, [sp, #4]
    add r0, r4, #0
    lsr r2, r2, #0x10
    add r3, r6, #0
    bl sub_0201AE78
    mov r0, #1
    str r0, [sp]
    ldr r2, = 0x3D6
    add r0, r5, #0
    ldrh r2, [r5, r2]
    mov r1, #0
    mov r3, #4
    bl ov107_022480EC
    str r6, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r0, #1
    str r0, [sp, #8]
    mov r2, #2
    str r2, [sp, #0xc]
    mov r0, #0
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    add r0, r5, #0
    add r1, r4, #0
    add r3, r7, #0
    str r2, [sp, #0x18]
    bl ov107_02247744
    strb r0, [r5, #0xa]
    b _02248E46
 _02248D7A:
    ldrh r0, [r1, #6]
    ldrh r6, [r1, #4]
    mov r1, #0
    add r0, #0x68
    lsl r0, r0, #0x10
    lsr r7, r0, #0x10
    add r2, r7, #0
    mov r0, #0x30
    sub r2, #0x30
    str r0, [sp]
    mov r0, #0x10
    lsl r2, r2, #0x10
    str r0, [sp, #4]
    add r0, r4, #0
    lsr r2, r2, #0x10
    add r3, r6, #0
    bl sub_0201AE78
    mov r0, #1
    str r0, [sp]
    ldr r2, = 0x3D6
    add r0, r5, #0
    ldrh r2, [r5, r2]
    mov r1, #0
    mov r3, #4
    bl ov107_022480EC
    str r6, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r0, #1
    str r0, [sp, #8]
    mov r2, #2
    str r2, [sp, #0xc]
    mov r0, #0
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    add r0, r5, #0
    add r1, r4, #0
    add r3, r7, #0
    str r2, [sp, #0x18]
    bl ov107_02247744
    add r1, sp, #0x28
    strb r0, [r5, #0xa]
    ldrh r0, [r1, #2]
    ldrh r6, [r1]
    mov r1, #0
    add r0, #0x68
    lsl r0, r0, #0x10
    lsr r7, r0, #0x10
    add r2, r7, #0
    mov r0, #0x30
    sub r2, #0x30
    str r0, [sp]
    mov r0, #0x10
    lsl r2, r2, #0x10
    str r0, [sp, #4]
    add r0, r4, #0
    lsr r2, r2, #0x10
    add r3, r6, #0
    bl sub_0201AE78
    ldrb r0, [r5, #9]
    bl sub_0205E630
    str r0, [sp, #0x24]
    ldrb r0, [r5, #9]
    bl sub_0205E630
    bl sub_0205E6A8
    add r2, r0, #0
    ldr r0, [r5, #4]
    ldr r1, [sp, #0x24]
    bl sub_02030698
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    add r0, r5, #0
    mov r1, #0
    mov r3, #4
    bl ov107_022480EC
    str r6, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r0, #1
    str r0, [sp, #8]
    mov r2, #2
    str r2, [sp, #0xc]
    mov r0, #0
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    add r0, r5, #0
    add r1, r4, #0
    add r3, r7, #0
    str r2, [sp, #0x18]
    bl ov107_02247744
    strb r0, [r5, #0xa]
 _02248E46:
    add r0, r4, #0
    bl sub_0201A9A4
    add sp, #0x30
    pop {r3, r4, r5, r6, r7, pc}
}

static void ov107_02248E54 (UnkStruct_ov107_02246170 * param0, u8 param1)
{
    ov107_022480EC(param0, 0, ov107_02248770(param1), 4, 0);
    param0->unk_0A = ov107_022477CC(param0, 25, 1);

    ov107_02247D94(param0);
    param0->unk_0E = param1;

    return;
}

static void ov107_02248E84 (UnkStruct_ov107_02246170 * param0, UnkStruct_0205AA50 * param1)
{
    u16 v0, v1, v2, v3, v4, v5;

    ov107_022484DC(param0, &v2, &v3, &v4, &v5);

    if (ov104_0223BA14(param0->unk_09) == 0) {
        v0 = v2 + 0;
        v1 = v3 + 0;
        ov107_0224812C(param0, param1, v0, v1, 0);
    } else {
        if (sub_0203608C() == 0) {
            v0 = v2 + 0;
            v1 = v3 + 0;

            ov107_0224812C(param0, param1, v0, v1, 0);

            v0 = v4 + 0;
            v1 = v5 + 0;

            ov107_02248194(param0, param1, v0, v1, 0);
        } else {
            v0 = v2 + 0;
            v1 = v3 + 0;

            ov107_02248194(param0, param1, v0, v1, 0);

            v0 = v4 + 0;
            v1 = v5 + 0;

            ov107_0224812C(param0, param1, v0, v1, 0);
        }
    }

    sub_0201A9A4(param1);
    return;
}

static void ov107_02248F18 (UnkStruct_ov107_02246170 * param0, u8 param1, u8 param2)
{
    u8 v0, v1, v2;
    u16 v3;
    u16 v4[4];
    u16 v5, v6, v7, v8;

    sub_02005748(1507);

    v2 = param0->unk_15;
    v1 = ov107_02249C9C(v2, param1);

    switch (param2) {
    case 0:
        v3 = 1;
        break;
    case 1:
        v3 = ov107_02248770(param0->unk_12);
        break;
    case 3:
        v3 = 2;
        break;
    case 4:
        v3 = 5;
        break;
    }

    if (sub_0203608C() == 0) {
        if (param1 < v2) {
            ov107_02248110(param0, 5);
            ov104_0223BC2C(param0->unk_04, param0->unk_09, v3);
        } else {
            ov107_02249CF4(param0->unk_24, 5);
            param0->unk_43A -= v3;
        }
    } else {
        if (param1 < v2) {
            ov107_02249CF4(param0->unk_24, 5);
            param0->unk_43A -= v3;
        } else {
            ov107_02248110(param0, 5);
            ov104_0223BC2C(param0->unk_04, param0->unk_09, v3);
        }
    }

    ov107_02248C08(param0, &param0->unk_50[0]);
    ov107_02248BB4(param0);

    switch (param2) {
    case 0:
        ov107_02249024(param0, v1);
        break;
    case 1:
        ov107_022490E8(param0, v1, param0->unk_12);
        break;
    case 3:
        ov107_02248A8C(param0, v1);
        break;
    case 4:
        ov107_02248B50(param0, v1);
        break;
    }

    return;
}

static void ov107_02249024 (UnkStruct_ov107_02246170 * param0, u8 param1)
{
    UnkStruct_02073C74 * v0;

    v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param1));

    ov107_02249DBC(&param0->unk_50[7], GameOptions_GetFrameStyle(param0->unk_148));
    ov107_02248104(param0, 0, sub_02076B10(v0));

    param0->unk_0A = ov107_022477CC(param0, 20, 1);
    param0->unk_3CC[ov107_02249C98(param0->unk_14, param1)] = 1;

    ov107_02249BAC(param0->unk_378[ov107_02249C98(param0->unk_14, param1)], 0);
    ov107_02249BAC(param0->unk_368[ov107_02249C98(param0->unk_14, param1)], 1);

    ov107_02247B78(param0, &param0->unk_50[3]);
    ov107_02247C64(param0, &param0->unk_50[2]);
    ov107_02249BAC(param0->unk_394[ov107_02249C98(param0->unk_14, param1)], 1);

    sub_02005748(1572);

    return;
}

static void ov107_022490E8 (UnkStruct_ov107_02246170 * param0, u8 param1, u8 param2)
{
    u32 v0;
    UnkStruct_02073C74 * v1;

    ov107_02249DBC(&param0->unk_50[7], GameOptions_GetFrameStyle(param0->unk_148));
    v1 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param1));
    ov107_02248104(param0, 0, sub_02076B10(v1));

    if (param2 == 1) {
        param0->unk_0A = ov107_022477CC(param0, 31, 1);
        sub_02005748(1587);
    } else {
        param0->unk_0A = ov107_022477CC(param0, 32, 1);
        sub_02005748(1588);
    }

    if (param0->unk_3D0[ov107_02249C98(param0->unk_14, param1)] == 0) {
        param0->unk_3D0[ov107_02249C98(param0->unk_14, param1)] = param2;
    } else {
        param0->unk_3D0[ov107_02249C98(param0->unk_14, param1)] = 0;
    }

    if (param0->unk_3D0[ov107_02249C98(param0->unk_14, param1)] == 0) {
        v0 = sub_02075AD0(sub_02074470(v1, 5, NULL), 50);
        sub_02074B30(v1, 8, &v0);
        sub_0207418C(v1);
    } else if (param0->unk_3D0[ov107_02249C98(param0->unk_14, param1)] == 1) {
        v0 = sub_02075AD0(sub_02074470(v1, 5, NULL), 55);
        sub_02074B30(v1, 8, &v0);
        sub_0207418C(v1);
    } else {
        v0 = sub_02075AD0(sub_02074470(v1, 5, NULL), 45);
        sub_02074B30(v1, 8, &v0);
        sub_0207418C(v1);
    }

    ov107_02247B78(param0, &param0->unk_50[3]);
    ov107_02247C64(param0, &param0->unk_50[2]);

    return;
}

static void ov107_02249238 (UnkStruct_ov107_02246170 * param0)
{
    sub_0201ADA4(&param0->unk_50[4], 0);
    sub_0201ACF4(&param0->unk_50[4]);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

    return;
}

static void ov107_02249258 (UnkStruct_ov107_02246170 * param0)
{
    UnkStruct_0205AA50 * v0;

    if (param0->unk_0F_1 == 1) {
        param0->unk_0F_1 = 0;

        v0 = (UnkStruct_0205AA50 *)sub_02001504(param0->unk_138, 18);

        sub_0200DC9C(v0, 1);
        sub_0201ADA4(v0, 0);
        sub_0201AD10(v0);
        sub_02013A3C(param0->unk_13C);
        sub_02001384(param0->unk_138, NULL, NULL);
    }

    return;
}

static void ov107_022492A8 (UnkStruct_ov107_02246170 * param0)
{
    int v0;
    u8 v1, v2;
    UnkStruct_02073C74 * v3;

    v1 = ov104_0223B7A8(param0->unk_09, 1);

    for (v0 = 0; v0 < v1; v0++) {
        v3 = Party_GetPokemonBySlotIndex(param0->unk_3DC, v0);
        v2 = ov104_0222E240(sub_02074470(v3, 163, NULL), sub_02074470(v3, 164, NULL));

        if (param0->unk_368[v0] != NULL) {
            ov107_02249C1C(param0->unk_368[v0], v2);

            if ((v0 != ov107_02249C98(param0->unk_14, param0->unk_0D)) || (param0->unk_0D >= param0->unk_15)) {
                ov107_02249C28(param0->unk_368[v0], 0);
            } else {
                ov107_02249C28(param0->unk_368[v0], 1);
            }
        }
    }

    return;
}

static BOOL ov107_0224933C (UnkStruct_ov107_02246170 * param0, u16 param1, u16 param2)
{
    u16 v0;

    ov107_02248BB4(param0);

    v0 = sub_02030698(param0->unk_04, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));

    if (v0 < param1) {
        ov107_02248BEC(param0);
        param0->unk_0A = ov107_022477CC(param0, param2, 1);
        param0->unk_08 = 15;
        return 0;
    }

    if (ov104_0223BA14(param0->unk_09) == 0) {
        ov107_02248860(&param0->unk_50[7]);
        ov104_0223BC2C(param0->unk_04, param0->unk_09, param1);
        ov107_02248C08(param0, &param0->unk_50[0]);

        if (param1 == 2) {
            ov107_02248A8C(param0, param0->unk_0D);
        } else {
            ov107_02248B50(param0, param0->unk_0D);
        }

        param0->unk_08 = 12;
        return 0;
    } else {
        param0->unk_10 = 1;
        return 1;
    }

    return 0;
}

static const u16 Unk_ov107_0224A0DC[3][3] = {
    {0x0, 0x0, 0x0},
    {0x0, 0x0, 0x0},
    {0x0, 0x50, 0x50}
};

static void ov107_022493CC (UnkStruct_ov107_02246170 * param0, u8 param1, u8 param2)
{
    u8 v0, v1, v2, v3;
    u32 v4;
    u16 v5[4];

    v3 = ov104_0223B7A8(param0->unk_09, 0);

    if (param2 == 5) {
        v2 = 2;
    } else {
        GF_ASSERT(0);
    }

    v0 = param0->unk_15;
    v1 = ov107_02249C9C(v0, param1);

    if (sub_0203608C() == 0) {
        if (param1 < v0) {
            ov107_02248110(param0, 5);
            v4 = ov107_02249CAC(param0->unk_14C, param0->unk_09, v2);

            ov104_0223BC2C(param0->unk_04, param0->unk_09, 50);
            v4 = ov107_02249CAC(param0->unk_14C, param0->unk_09, v2);

            v5[0] = (v4 + 1);
            sub_020306E4(sub_0203068C(param0->unk_14C), sub_0205E5B4(param0->unk_09, v2), sub_0205E6A8(sub_0205E5B4(param0->unk_09, v2)), (v4 + 1));

            if (ov104_0223BA14(param0->unk_09) == 1) {
                param0->unk_0F_3 = 2;
            }
        } else {
            ov107_02249CF4(param0->unk_24, 5);
            v4 = param0->unk_437[v2];
            param0->unk_43A -= 50;
            param0->unk_437[v2]++;
        }
    } else {
        if (param1 < v0) {
            ov107_02249CF4(param0->unk_24, 5);
            v4 = param0->unk_437[v2];
            param0->unk_43A -= 50;
            param0->unk_437[v2]++;
        } else {
            ov107_02248110(param0, 5);
            v4 = ov107_02249CAC(param0->unk_14C, param0->unk_09, v2);

            ov104_0223BC2C(param0->unk_04, param0->unk_09, 50);
            v4 = ov107_02249CAC(param0->unk_14C, param0->unk_09, v2);

            v5[0] = (v4 + 1);
            sub_020306E4(sub_0203068C(param0->unk_14C), sub_0205E5B4(param0->unk_09, v2), sub_0205E6A8(sub_0205E5B4(param0->unk_09, v2)), (v4 + 1));

            if (ov104_0223BA14(param0->unk_09) == 1) {
                param0->unk_0F_3 = 2;
            }
        }
    }

    ov107_02248BB4(param0);
    ov107_02248C08(param0, &param0->unk_50[0]);
    ov107_02249DBC(&param0->unk_50[7], GameOptions_GetFrameStyle(param0->unk_148));

    param0->unk_0A = ov107_022477CC(param0, Unk_ov107_0224A0DC[v2][v4], 1);
    return;
}

static void ov107_02249580 (UnkStruct_ov107_02246170 * param0)
{
    u8 v0;
    int v1;

    v0 = ov104_0223B7DC(param0->unk_09, 1);

    for (v1 = 0; v1 < v0; v1++) {
        ov107_022495A8(param0, v1);
    }

    return;
}

static void ov107_022495A8 (UnkStruct_ov107_02246170 * param0, u8 param1)
{
    if (param0->unk_3D4[param1] == 1) {
        ov107_02249BAC(param0->unk_3A4[param1][0], 1);
    }

    if (param0->unk_3D8[param1] == 1) {
        ov107_02249BAC(param0->unk_3A4[param1][1], 1);
    }

    return;
}

static void ov107_022495E4 (UnkStruct_ov107_02246170 * param0, u32 * param1, u32 * param2)
{
    if (ov104_0223BA14(param0->unk_09) == 1) {
        *param1 = 64;
    } else {
        *param1 = 96;
    }

    *param2 = 60;
    return;
}
