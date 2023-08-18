#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_defs/pokemon.h"
#include "struct_decls/struct_itemdata_decl.h"

#include "constdata/const_020F1E88.h"

#include "struct_defs/union_02022594_020225E0.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0207C690.h"
#include "functypes/funcptr_0207E634.h"
#include "struct_defs/struct_0207F248.h"
#include "struct_defs/struct_0208BE5C.h"
#include "struct_defs/struct_02099F80.h"
#include "struct_defs/struct_020F1DB8.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02001AF4.h"
#include "unk_02002B7C.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "game_overlay.h"
#include "unk_020067E8.h"
#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200C440.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02013A04.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_0201DBEC.h"
#include "unk_0201E010.h"
#include "unk_0201E3D8.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "unk_02022594.h"
#include "strbuf.h"
#include "unk_02024220.h"
#include "unk_0202602C.h"
#include "unk_020279FC.h"
#include "unk_0202B604.h"
#include "unk_020393C8.h"
#include "unk_0206B9D8.h"
#include "unk_0206CCB0.h"
#include "unk_02073C2C.h"
#include "party.h"
#include "unk_0207A2A8.h"
#include "item.h"
#include "unk_0207D3B8.h"
#include "unk_0207E0B8.h"
#include "unk_020819DC.h"
#include "unk_02082C2C.h"
#include "unk_02083370.h"
#include "unk_02084B70.h"
#include "unk_0208C098.h"
#include "unk_0208C324.h"
#include "unk_02096420.h"
#include "overlay118/ov118_021D0D80.h"

FS_EXTERN_OVERLAY(overlay118);

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
} UnkStruct_020F1DF8;

static int sub_0207E0B8(UnkStruct_020067E8 * param0, int * param1);
static int sub_0207E2A8(UnkStruct_020067E8 * param0, int * param1);
static int sub_0207E7E0(UnkStruct_020067E8 * param0, int * param1);
static int sub_0207E490(UnkStruct_0207F248 * param0);
static int sub_0207E518(UnkStruct_0207F248 * param0);
static int sub_0207E5B4(UnkStruct_0207F248 * param0);
static int sub_0207E5F4(UnkStruct_0207F248 * param0);
static int sub_0207E6C0(UnkStruct_0207F248 * param0);
static int sub_0207E6E4(UnkStruct_0207F248 * param0);
static int sub_0207E708(UnkStruct_0207F248 * param0);
static int sub_0207E714(UnkStruct_0207F248 * param0);
static int sub_0207E750(UnkStruct_0207F248 * param0);
static int sub_02080BF4(UnkStruct_0207F248 * param0);
static void sub_0207E898(void * param0);
static void sub_0207E8C0(void);
static void sub_0207E918(UnkStruct_02018340 * param0);
static void sub_0207EA24(UnkStruct_02018340 * param0);
static void sub_0207EB6C(UnkStruct_0207F248 * param0, NARC * param1);
static UnkStruct_0207F248 * sub_0207ECC0(UnkStruct_020067E8 * param0);
static void sub_0207EE14(UnkStruct_0207F248 * param0);
static void sub_0207F308(UnkStruct_0207F248 * param0);
static u8 sub_0207F984(UnkStruct_0207F248 * param0, u8 param1);
static u8 sub_0207FE98(UnkStruct_0207F248 * param0);
static void sub_02080500(UnkStruct_0207F248 * param0, u8 param1, u8 param2);
static void sub_0207F9A0(UnkStruct_0207F248 * param0);
static void sub_0207EDC0(UnkStruct_0207F248 * param0);
static int sub_02080670(UnkStruct_0207F248 * param0);
static u8 sub_02080B34(UnkStruct_0207F248 * param0, int * param1);
static u8 sub_020805E4(UnkStruct_0207F248 * param0);
static void sub_02080A50(UnkStruct_0207F248 * param0, u8 param1, u8 param2);
static int sub_02080AD8(UnkStruct_0207F248 * param0);
static u8 sub_02080FD0(UnkStruct_0207F248 * param0);
static int sub_0208107C(UnkStruct_0207F248 * param0);
static u8 sub_020811F4(UnkStruct_0207F248 * param0);
static int sub_02081224(UnkStruct_0207F248 * param0);
static int sub_02081408(UnkStruct_0207F248 * param0, Pokemon * param1, int * param2);
static int sub_0208150C(UnkStruct_0207F248 * param0);
static int sub_02081594(UnkStruct_0207F248 * param0);
static int sub_020815B8(UnkStruct_0207F248 * param0);
static int sub_0207E634(UnkStruct_0207F248 * param0);
static int sub_0208170C(UnkStruct_0207F248 * param0);
static int sub_02081760(UnkStruct_0207F248 * param0);
static void sub_0207F094(UnkStruct_0207F248 * param0, Pokemon * param1, u8 param2);
static u32 sub_0207F134(Pokemon * param0, u8 param1);
static void sub_0207FE1C(UnkStruct_0207F248 * param0);
static void sub_02080AB8(u8 param0, s16 * param1, s16 * param2);
static int sub_0208188C(UnkStruct_0207F248 * param0);
static u8 sub_020808CC(UnkStruct_0207F248 * param0);
static u8 sub_02080968(UnkStruct_0207F248 * param0);
static u8 sub_020809DC(UnkStruct_0207F248 * param0);
static BOOL sub_020818F8(UnkStruct_0207F248 * param0);
static UnkStruct_0207C690 * sub_0207EAD4(int param0);
static void sub_0207EAF4(void);
static void sub_0207EB64(UnkStruct_0207C690 * param0);
static int sub_0208153C(UnkStruct_0207F248 * param0);
static int sub_02081578(UnkStruct_0207F248 * param0);
static void sub_0207F388(UnkStruct_0207F248 * param0, const UnkStruct_020F1DF8 * param1);
static void sub_0207F4AC(UnkStruct_0207F248 * param0, const UnkStruct_020F1DF8 * param1);
static void sub_0207F5A0(UnkStruct_0207F248 * param0, const UnkStruct_020F1DF8 * param1);
static void sub_0207F694(UnkStruct_0207F248 * param0, const UnkStruct_020F1DF8 * param1);
static void sub_0207F788(UnkStruct_0207F248 * param0, const UnkStruct_020F1DF8 * param1);
static void sub_0207F884(UnkStruct_0207F248 * param0, u8 param1, s16 param2, s16 param3);
static u8 sub_0207FA24(UnkStruct_0207F248 * param0);
static u8 sub_0207FBE0(UnkStruct_0207F248 * param0, u8 * param1, u8 * param2, u8 param3);
static u8 sub_0207FC30(UnkStruct_0207F248 * param0, u8 * param1, u8 * param2, const u8 * param3);
static u8 sub_0207FC94(UnkStruct_0207F248 * param0);
static void sub_0207FFC8(UnkStruct_0207F248 * param0);
static u8 sub_020800B4(UnkStruct_0207F248 * param0, u8 * param1);
static u8 sub_020801F0(UnkStruct_0207F248 * param0, u8 * param1);
static u8 sub_0208022C(UnkStruct_0207F248 * param0, u8 * param1);
static u8 sub_0208027C(UnkStruct_0207F248 * param0, u8 * param1);
static u8 sub_020802CC(UnkStruct_0207F248 * param0, u8 * param1);
static u8 sub_0208031C(UnkStruct_0207F248 * param0, u8 * param1);
static u8 sub_020801AC(UnkStruct_0207F248 * param0, u8 * param1);
static u8 sub_020801B8(UnkStruct_0207F248 * param0, u8 * param1);
u8 sub_02080404(UnkStruct_0207F248 * param0, u8 param1);
u8 sub_02080488(UnkStruct_0207F248 * param0, u8 param1);
static u8 sub_02080ECC(UnkStruct_0207F248 * param0);
static BOOL sub_02080F3C(UnkStruct_0207F248 * param0, u8 param1, s8 param2);

const UnkStruct_0208BE5C Unk_020F1E88 = {
    sub_0207E0B8,
    sub_0207E2A8,
    sub_0207E7E0,
    0xFFFFFFFF
};

static const UnkStruct_020F1DF8 Unk_020F1DF8[2][6] = {
    {
        {0x0, 0x0, 0x1E, 0x10, 0x10, 0xE},
        {0x10, 0x1, 0x9E, 0x18, 0x90, 0x16},
        {0x0, 0x6, 0x1E, 0x40, 0x10, 0x3E},
        {0x10, 0x7, 0x9E, 0x48, 0x90, 0x46},
        {0x0, 0xC, 0x1E, 0x70, 0x10, 0x6E},
        {0x10, 0xD, 0x9E, 0x78, 0x90, 0x76}
    },
    {
        {0x0, 0x0, 0x1E, 0x10, 0x10, 0xE},
        {0x10, 0x0, 0x9E, 0x10, 0x90, 0xE},
        {0x0, 0x6, 0x1E, 0x40, 0x10, 0x3E},
        {0x10, 0x6, 0x9E, 0x40, 0x90, 0x3E},
        {0x0, 0xC, 0x1E, 0x70, 0x10, 0x6E},
        {0x10, 0xC, 0x9E, 0x70, 0x90, 0x6E}
    }
};

static const UnkStruct_020F1DB8 Unk_020F1DB8[] = {
    {0x40, 0x19, 0x0, 0x0, 0x7, 0x2, 0x7, 0x1},
    {0xC0, 0x21, 0x0, 0x0, 0x7, 0x3, 0x0, 0x2},
    {0x40, 0x49, 0x0, 0x0, 0x0, 0x4, 0x1, 0x3},
    {0xC0, 0x51, 0x0, 0x0, 0x1, 0x5, 0x2, 0x4},
    {0x40, 0x79, 0x0, 0x0, 0x2, 0x7, 0x3, 0x5},
    {0xC0, 0x81, 0x0, 0x0, 0x3, 0x7, 0x4, 0x7},
    {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
    {0xE0, 0xA8, 0x0, 0x0, 0x5, 0x1, 0x5, 0x0}
};

static const UnkStruct_020F1DB8 Unk_020F1CF8[] = {
    {0x40, 0x19, 0x0, 0x0, 0x4, 0x2, 0x1, 0x1},
    {0xC0, 0x19, 0x0, 0x0, 0x7, 0x3, 0x0, 0x0},
    {0x40, 0x49, 0x0, 0x0, 0x0, 0x4, 0x3, 0x3},
    {0xC0, 0x49, 0x0, 0x0, 0x1, 0x5, 0x2, 0x2},
    {0x40, 0x79, 0x0, 0x0, 0x2, 0x0, 0x5, 0x5},
    {0xC0, 0x79, 0x0, 0x0, 0x3, 0x7, 0x4, 0x4},
    {0xE0, 0xA8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
    {0xE0, 0xA8, 0x0, 0x0, 0x5, 0x1, 0xFF, 0xFF}
};

static const UnkStruct_020F1DB8 Unk_020F1D38[] = {
    {0x40, 0x19, 0x0, 0x0, 0x7, 0x2, 0x7, 0x1},
    {0xC0, 0x21, 0x0, 0x0, 0x7, 0x3, 0x0, 0x2},
    {0x40, 0x49, 0x0, 0x0, 0x0, 0x4, 0x1, 0x3},
    {0xC0, 0x51, 0x0, 0x0, 0x1, 0x5, 0x2, 0x4},
    {0x40, 0x79, 0x0, 0x0, 0x2, 0x6, 0x3, 0x5},
    {0xC0, 0x81, 0x0, 0x0, 0x3, 0x6, 0x4, 0x6},
    {0xE0, 0xA8, 0x0, 0x0, 0x5, 0x7, 0x5, 0x7},
    {0xE0, 0xB8, 0x0, 0x0, 0x6, 0x1, 0x6, 0x0}
};

static const UnkStruct_020F1DB8 Unk_020F1D78[] = {
    {0x40, 0x19, 0x0, 0x0, 0x5, 0x2, 0x5, 0x1},
    {0xC0, 0x21, 0x0, 0x0, 0x5, 0x3, 0x0, 0x2},
    {0x40, 0x49, 0x0, 0x0, 0x0, 0x4, 0x1, 0x3},
    {0xC0, 0x51, 0x0, 0x0, 0x1, 0x5, 0x2, 0x4},
    {0x40, 0x79, 0x0, 0x0, 0x2, 0x0, 0x3, 0x5},
    {0xC0, 0x81, 0x0, 0x0, 0x3, 0x0, 0x4, 0x0},
    {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
    {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}
};

static const u16 Unk_020F1CB0[] = {
    0xF,
    0x13,
    0x39,
    0x46,
    0x1B0,
    0xF9,
    0x7F,
    0x1AF,
    0x94,
    0x64,
    0x5B,
    0xE6,
    0x1C0,
    0xD0,
    0x87
};

static int sub_0207E0B8 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_0207F248 * v0;
    NARC * v1;

    sub_02017798(NULL, NULL);
    sub_020177A4();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    G2_BlendNone();
    G2S_BlendNone();

    sub_02017DD4(4, 8);
    Heap_Create(3, 12, 0x30000);

    v1 = NARC_ctor(20, 12);
    v0 = sub_0207ECC0(param0);

    sub_0200F174(1, 3, 3, 0x0, 6, 1, 12);
    sub_0207EDC0(v0);
    sub_0207E8C0();
    sub_0207E918(v0->unk_00);
    sub_0207EB6C(v0, v1);
    sub_0201E3D8();
    sub_0201E450(4);
    sub_02004550(57, 0, 0);
    sub_02081A24(v0);
    sub_02082C2C(v0);
    sub_02082E58(v0);
    sub_0207EE14(v0);
    sub_0207F308(v0);
    sub_02080500(v0, v0->unk_B11, 1);

    if ((v0->unk_5A4->unk_20 == 5) || (v0->unk_5A4->unk_20 == 16)) {
        if (sub_020857A8(v0->unk_5A4->unk_24) == 0) {
            sub_020826E0(v0, 32, 1);
        }
    } else if (v0->unk_5A4->unk_20 == 6) {
        sub_020826E0(v0, 33, 1);
    } else if ((v0->unk_5A4->unk_20 == 9) || (v0->unk_5A4->unk_20 == 14)) {
        sub_020826E0(v0, 31, 1);
    } else if ((v0->unk_5A4->unk_20 == 7) || (v0->unk_5A4->unk_20 == 8) || (v0->unk_5A4->unk_20 == 11) || (v0->unk_5A4->unk_20 == 12)) {
        sub_0200D414(v0->unk_5B0[6], 1);
    } else if ((v0->unk_5A4->unk_20 == 2) || (v0->unk_5A4->unk_20 == 17)) {
        sub_020826E0(v0, 34, 1);
    } else if (v0->unk_5A4->unk_20 == 15) {
        sub_020826E0(v0, 34, 1);
    } else if (v0->unk_5A4->unk_20 == 22) {
        sub_020826E0(v0, 34, 1);
    } else if (v0->unk_5A4->unk_20 == 23) {
        sub_020826E0(v0, 34, 1);
    } else if (v0->unk_5A4->unk_20 == 21) {
        sub_020826E0(v0, 197, 1);
    } else if (v0->unk_5A4->unk_20 != 10) {
        sub_020826E0(v0, 29, 1);
    } else {
        sub_0200D414(v0->unk_5B0[6], 1);
    }

    sub_02081BC0(v0);
    sub_0207F9A0(v0);

    if (sub_020818F8(v0) == 0) {
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    }

    sub_02017798(sub_0207E898, v0);
    sub_020397E4();
    NARC_dtor(v1);

    return 1;
}

static int sub_0207E2A8 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_0207F248 * v0 = sub_0200682C(param0);

    switch (*param1) {
    case 0:
        *param1 = sub_0207E490(v0);
        break;
    case 1:
        *param1 = sub_0207E518(v0);
        break;
    case 2:
        if (sub_02080B34(v0, param1) == 1) {
            *param1 = 1;
        }
        break;
    case 3:
        *param1 = sub_02084B34(v0);
        break;
    case 4:
        *param1 = sub_0207E5B4(v0);
        break;
    case 5:
        *param1 = v0->unk_B00(v0);
        break;
    case 6:
        *param1 = sub_02086774(v0);
        break;
    case 7:
        *param1 = sub_02085804(v0);
        break;
    case 8:
        *param1 = sub_0207E5F4(v0);
        break;
    case 9:
        *param1 = sub_02081594(v0);
        break;
    case 10:
        *param1 = sub_020815B8(v0);
        break;
    case 11:
        *param1 = sub_0208150C(v0);
        break;
    case 12:
        *param1 = sub_0208153C(v0);
        break;
    case 13:
        *param1 = sub_02081578(v0);
        break;
    case 14:
        *param1 = sub_02081760(v0);
        break;
    case 15:
        *param1 = sub_0207E634(v0);
        break;
    case 16:
        *param1 = sub_02081224(v0);
        break;
    case 17:
        *param1 = sub_02083658(v0);
        break;
    case 18:
        *param1 = sub_020836A8(v0);
        break;
    case 19:
        *param1 = sub_020836E4(v0);
        break;
    case 20:
        *param1 = sub_020839BC(v0);
        break;
    case 21:
        *param1 = sub_0207E750(v0);
        break;
    case 22:
        *param1 = sub_020863A0(v0);
        break;
    case 23:
        *param1 = sub_020845A8(v0);
        break;
    case 24:
        *param1 = sub_0207E6C0(v0);
        break;
    case 25:
        *param1 = sub_0207E6E4(v0);
        break;
    case 26:
        *param1 = sub_0207E708(v0);
        break;
    case 27:
        *param1 = sub_0207E714(v0);
        break;
    case 28:
    {
        u8 v1 = sub_020805E4(v0);

        if (v1 == 0) {
            *param1 = 29;
        } else if (v1 == 3) {
            *param1 = 1;
        }
    }
    break;
    case 29:
        if (sub_02083D1C(v0) == 1) {
            *param1 = 1;
        }
        break;
    case 30:
        *param1 = sub_02080BF4(v0);
        break;
    case 31:
        if (ov118_021D0DBC(v0) == 1) {
            sub_020819CC(v0);
            *param1 = 25;
        } else {
            *param1 = 31;
        }
        break;
    case 32:
        sub_0208C120(1, 12);
        *param1 = 33;
        break;
    case 33:
        if (sub_0200F2AC() == 1) {
            v0->unk_5A4->unk_22 = v0->unk_B11;
            return 1;
        }
        break;
    }

    sub_020831B4(v0);
    sub_02083334(v0);
    sub_0207FE1C(v0);
    sub_0200C7EC(v0->unk_5AC);

    return 0;
}

static int sub_0207E490 (UnkStruct_0207F248 * param0)
{
    if (sub_0200F2AC() == 1) {
        if ((param0->unk_5A4->unk_20 == 5) || (param0->unk_5A4->unk_20 == 16)) {
            if (sub_020857A8(param0->unk_5A4->unk_24) == 1) {
                param0->unk_B0E = 0;
                return 7;
            }

            return 4;
        } else if (param0->unk_5A4->unk_20 == 6) {
            return 21;
        } else if (param0->unk_5A4->unk_20 == 7) {
            return sub_020862F8(param0);
        } else if (param0->unk_5A4->unk_20 == 8) {
            return sub_02085EF4(param0);
        } else if ((param0->unk_5A4->unk_20 == 11) || (param0->unk_5A4->unk_20 == 12)) {
            return 14;
        } else if (param0->unk_5A4->unk_20 == 9) {
            return 8;
        } else if (param0->unk_5A4->unk_20 == 10) {
            return 16;
        } else {
            return 1;
        }
    }

    return 0;
}

static int sub_0207E518 (UnkStruct_0207F248 * param0)
{
    u8 v0 = sub_0207FE98(param0);

    if (v0 == 0) {
        if ((param0->unk_5A4->unk_20 == 3) || (param0->unk_5A4->unk_20 == 20)) {
            param0->unk_5A4->unk_23 = 0;
            return 32;
        } else if (param0->unk_5A4->unk_20 == 14) {
            sub_020868B0(param0);
            return 24;
        } else if (param0->unk_5A4->unk_20 == 19) {
            return sub_0208188C(param0);
        } else {
            return 2;
        }
    } else if (v0 == 4) {
        return sub_02080670(param0);
    } else if (v0 == 3) {
        param0->unk_5A4->unk_23 = 0;
        return 32;
    } else if (v0 == 2) {
        if (param0->unk_5A4->unk_20 != 15) {
            param0->unk_5A4->unk_23 = 1;
            return 32;
        } else {
            sub_0200D414(param0->unk_5B0[6], 1);
            return sub_02084780(param0);
        }
    }

    return 1;
}

static int sub_0207E5B4 (UnkStruct_0207F248 * param0)
{
    u8 v0 = sub_02080FD0(param0);

    if ((v0 == 0) || (v0 == 2)) {
        sub_0200D414(param0->unk_5B0[6], 1);
        return sub_0208107C(param0);
    } else if (v0 == 3) {
        param0->unk_5A4->unk_23 = 0;
        return 32;
    }

    return 4;
}

static int sub_0207E5F4 (UnkStruct_0207F248 * param0)
{
    u8 v0 = sub_02080FD0(param0);

    if ((v0 == 0) || (v0 == 2)) {
        sub_0200D414(param0->unk_5B0[6], 1);
        return sub_02081224(param0);
    } else if (v0 == 3) {
        param0->unk_5A4->unk_23 = 0;
        return 32;
    }

    return 8;
}

static int sub_0207E634 (UnkStruct_0207F248 * param0)
{
    u32 v0 = sub_02001BE0(param0->unk_700);

    switch (v0) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        sub_0200E084(&param0->unk_04[33], 1);
        sub_0200DC9C(&param0->unk_04[35], 1);
        sub_0201AD10(&param0->unk_04[35]);
        sub_02001BC4(param0->unk_700, NULL);
        sub_02013A3C(param0->unk_6FC);
        sub_020826E0(param0, 29, 1);
        sub_0200D414(param0->unk_5B0[6], 0);
        return 1;
    default:
    {
        UnkFuncPtr_0207E634 v1;
        int v2;

        v1 = (UnkFuncPtr_0207E634)v0;
        v1(param0, &v2);

        return v2;
    }
    }

    return 15;
}

static int sub_0207E6C0 (UnkStruct_0207F248 * param0)
{
    if (sub_0201D724(param0->unk_B10) == 0) {
        return param0->unk_B0E;
    }

    return 24;
}

static int sub_0207E6E4 (UnkStruct_0207F248 * param0)
{
    if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        sub_02005748(1500);
        return 32;
    }

    return 25;
}

static int sub_0207E708 (UnkStruct_0207F248 * param0)
{
    sub_020827EC(param0);
    return 27;
}

static int sub_0207E714 (UnkStruct_0207F248 * param0)
{
    switch (sub_02002114(param0->unk_700, 12)) {
    case 0:
        return param0->unk_B04.unk_00(param0);
    case 0xfffffffe:
        return param0->unk_B04.unk_04(param0);
    }

    return 27;
}

static int sub_0207E750 (UnkStruct_0207F248 * param0)
{
    u8 v0 = sub_02080FD0(param0);

    if ((v0 == 0) || (v0 == 2)) {
        sub_0200D414(param0->unk_5B0[6], 1);

        if (param0->unk_704[param0->unk_B11].unk_10 != 1) {
            return sub_0208615C(param0);
        } else {
            sub_02082708(param0, 0xffffffff, 1);
            param0->unk_5A4->unk_23 = 0;
            param0->unk_B0E = 25;
            sub_0200B1B8(param0->unk_69C, 105, param0->unk_6A4);
            return 24;
        }
    } else if (v0 == 3) {
        param0->unk_5A4->unk_23 = 0;
        return 32;
    }

    return 21;
}

static int sub_0207E7E0 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_0207F248 * v0 = sub_0200682C(param0);
    u32 v1;

    sub_02017798(NULL, NULL);
    sub_02082FF4(v0);
    sub_02081B90(v0);
    sub_0207EA24(v0->unk_00);
    sub_0201E530();
    sub_0201DC3C();

    for (v1 = 0; v1 < 6; v1++) {
        Strbuf_Free(v0->unk_704[v1].unk_00);
    }

    Strbuf_Free(v0->unk_6A4);
    Strbuf_Free(v0->unk_6A8);

    for (v1 = 0; v1 < 20; v1++) {
        Strbuf_Free(v0->unk_6AC[v1]);
    }

    sub_0200B190(v0->unk_69C);
    sub_0200C560(v0->unk_698);
    sub_0200B3F0(v0->unk_6A0);

    if (v0->unk_B20 != NULL) {
        sub_0207A2C0(v0->unk_B20);
    }

    sub_02006830(param0);
    Heap_Destroy(12);

    return 1;
}

static void sub_0207E898 (void * param0)
{
    UnkStruct_0207F248 * v0 = param0;

    sub_0201C2B8(v0->unk_00);
    sub_0201DCAC();
    sub_0200C800();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void sub_0207E8C0 (void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_OBJ_128_B,
        GX_VRAM_OBJ_32_FG
    };

    GXLayers_SetBanks(&v0);
}

static void sub_0207E8E0 (UnkStruct_02018340 * param0)
{
    UnkStruct_ov97_0222DB78 v0 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf800,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0,
        0,
        0,
        0
    };

    sub_020183C4(param0, 0, &v0, 0);
    sub_02019EBC(param0, 0);
}

static void sub_0207E918 (UnkStruct_02018340 * param0)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D,
        };

        sub_02018368(&v0);
    }

    {
        sub_0207E8E0(param0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 1, &v1, 0);
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
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x10000,
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
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 3, &v3, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
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

    {
        UnkStruct_ov97_0222DB78 v5 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 5, &v5, 0);
    }

    sub_02019690(0, 32, 0, 12);
    sub_02019690(4, 32, 0, 12);
}

static void sub_0207EA24 (UnkStruct_02018340 * param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_OBJ, 0);
    sub_02019044(param0, 5);
    sub_02019044(param0, 4);
    sub_02019044(param0, 3);
    sub_02019044(param0, 2);
    sub_02019044(param0, 1);
    sub_02019044(param0, 0);
    Heap_FreeToHeapExplicit(12, param0);
}

void sub_0207EA74 (UnkStruct_0207F248 * param0, int param1)
{
    if (param1 == 0) {
        sub_02019120(0, 0);
        sub_02019044(param0->unk_00, 0);

        GX_SetGraphicsMode(GX_DISPMODE_GRAPHICS, GX_BGMODE_0, GX_BG0_AS_3D);
        param0->unk_B28 = sub_0207EAD4(12);
    } else {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
        sub_0207EB64(param0->unk_B28);

        GX_SetGraphicsMode(GX_DISPMODE_GRAPHICS, GX_BGMODE_0, GX_BG0_AS_2D);

        sub_0207E8E0(param0->unk_00);
        sub_02019690(0, 32, 0, 12);
    }
}

static UnkStruct_0207C690 * sub_0207EAD4 (int param0)
{
    UnkStruct_0207C690 * v0;

    v0 = sub_02024220(param0, 0, 1, 0, 2, sub_0207EAF4);
    return v0;
}

static void sub_0207EAF4 (void)
{
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(0);
    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_ViewPort(0, 0, 255, 191);
}

static void sub_0207EB64 (UnkStruct_0207C690 * param0)
{
    sub_020242C4(param0);
}

static void sub_0207EB6C (UnkStruct_0207F248 * param0, NARC * param1)
{
    sub_020070E8(param1, 15, param0->unk_00, 3, 0, 0, 0, 12);
    sub_0200710C(param1, 17, param0->unk_00, 3, 0, 0, 0, 12);

    {
        NNSG2dPaletteData * v0;
        void * v1;
        u16 * v2;

        v1 = NARC_AllocAndReadWholeMember(param1, 16, 12);
        NNS_G2dGetUnpackedPaletteData(v1, &v0);
        sub_0201972C(3, (void *)v0->pRawData, v0->szByte, 0);

        v2 = (u16 *)v0->pRawData;
        memcpy(param0->unk_4A4, &v2[3 * 16], 32 * 8);
        Heap_FreeToHeapExplicit(12, v1);
    }

    sub_02002E98(0, 13 * 32, 12);
    sub_0200DAA4(param0->unk_00, 0, 1, 14, 0, 12);
    sub_0200DD0C(param0->unk_00, 0, (1 + 9), 15, sub_02027B50(param0->unk_5A4->unk_0C), 12);
    sub_020070E8(param1, 3, param0->unk_00, 4, 0, 0, 0, 12);
    sub_02007130(param1, 4, 4, 0x20, 0x20, 12);
    sub_020070E8(param1, 12, param0->unk_00, 5, 0, 0, 0, 12);
    sub_0200710C(param1, 14, param0->unk_00, 5, 0, 0, 0, 12);
    sub_02007130(param1, 13, 4, 0, 0x20, 12);
    sub_02081940(12, param0->unk_264, param0->unk_324, param0->unk_3E4);
    sub_0201975C(0, 0);
    sub_0201975C(4, 0);
}

static UnkStruct_0207F248 * sub_0207ECC0 (UnkStruct_020067E8 * param0)
{
    UnkStruct_0207F248 * v0;
    u32 v1;

    v0 = sub_0200681C(param0, sizeof(UnkStruct_0207F248), 12);
    memset(v0, 0, sizeof(UnkStruct_0207F248));

    v0->unk_5A4 = sub_02006840(param0);
    v0->unk_00 = sub_02018340(12);

    if ((v0->unk_5A4->unk_20 == 2) && (v0->unk_5A4->unk_14 != NULL)) {
        v0->unk_B20 = sub_0207A2A8(12);
    } else {
        v0->unk_B20 = NULL;
    }

    v0->unk_69C = sub_0200B144(0, 26, 453, 12);
    v0->unk_698 = sub_0200C440(15, 14, 0, 12);
    v0->unk_6A0 = sub_0200B358(12);

    for (v1 = 0; v1 < 6; v1++) {
        v0->unk_704[v1].unk_00 = Strbuf_Init(10 + 1, 12);
    }

    v0->unk_6A4 = Strbuf_Init(256, 12);
    v0->unk_6A8 = Strbuf_Init(256, 12);

    for (v1 = 0; v1 < 20; v1++) {
        v0->unk_6AC[v1] = Strbuf_Init(32, 12);
    }

    v0->unk_B11 = v0->unk_5A4->unk_22;
    v0->unk_B12 = v0->unk_B11;

    return v0;
}

static void sub_0207EDC0 (UnkStruct_0207F248 * param0)
{
    if ((param0->unk_5A4->unk_20 & 0x80) != 0) {
        param0->unk_B0F_7 = 1;
        param0->unk_5A4->unk_20 ^= 0x80;
    } else if (param0->unk_5A4->unk_20 == 21) {
        param0->unk_B0F_7 = 1;
    } else {
        param0->unk_B0F_7 = 0;
    }
}

static void sub_0207EE14 (UnkStruct_0207F248 * param0)
{
    u8 v0 = 3;

    if (param0->unk_5A4->unk_21 == 2) {
        param0->unk_7F4 = Unk_020F1CF8;
    } else if ((param0->unk_5A4->unk_20 == 2) || (param0->unk_5A4->unk_20 == 17) || (param0->unk_5A4->unk_20 == 23) || (param0->unk_5A4->unk_20 == 22)) {
        param0->unk_7F4 = Unk_020F1D38;
    } else if (param0->unk_5A4->unk_20 == 21) {
        param0->unk_7F4 = Unk_020F1D78;
    } else {
        param0->unk_7F4 = Unk_020F1DB8;
    }

    if ((param0->unk_5A4->unk_20 != 2) && (param0->unk_5A4->unk_20 != 17) && (param0->unk_5A4->unk_20 != 23) && (param0->unk_5A4->unk_20 != 22)) {
        sub_02021CAC(param0->unk_5B0[8], 0);
        sub_02021D6C(param0->unk_5B0[9], 0);

        {
            s16 v1, v2;

            sub_0200D50C(param0->unk_5B0[9], &v1, &v2);
            sub_0200D494(param0->unk_5B0[9], v1, v2 - 8);
        }

        v0 ^= 1;
    }

    if ((param0->unk_5A4->unk_20 == 4) || (param0->unk_5A4->unk_20 == 21)) {
        sub_02021CAC(param0->unk_5B0[9], 0);
        v0 ^= 2;
    }

    sub_020825B4(param0, v0);
}

u8 sub_0207EF04 (UnkStruct_0207F248 * param0, u8 param1)
{
    return param0->unk_704[param1].unk_29;
}

u8 sub_0207EF14 (UnkStruct_0207F248 * param0, u8 param1)
{
    Pokemon * v0;
    u32 v1;
    u16 v2;

    param0->unk_704[param1].unk_29 = 0;

    if (Party_GetCurrentCount(param0->unk_5A4->unk_00) <= param1) {
        return 0;
    }

    v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param1);
    v2 = (u16)GetMonData(v0, MON_DATA_SPECIES, NULL);

    if (v2 == 0) {
        return 0;
    }

    sub_02081ED8(param0, v0, param1);

    param0->unk_704[param1].unk_04 = v2;
    param0->unk_704[param1].unk_06 = (u16)GetMonData(v0, MON_DATA_163, NULL);
    param0->unk_704[param1].unk_08 = (u16)GetMonData(v0, MON_DATA_164, NULL);
    param0->unk_704[param1].unk_0A = (u16)GetMonData(v0, MON_DATA_161, NULL);
    param0->unk_704[param1].unk_0C = (u16)GetMonData(v0, MON_DATA_HELD_ITEM, NULL);
    param0->unk_704[param1].unk_12 = (u16)GetMonData(v0, MON_DATA_162, NULL);
    param0->unk_704[param1].unk_10 = (u8)GetMonData(v0, MON_DATA_IS_EGG, NULL);
    param0->unk_704[param1].unk_11 = (u8)GetMonData(v0, MON_DATA_FORM, NULL);

    if (GetMonData(v0, MON_DATA_176, NULL) == 1) {
        param0->unk_704[param1].unk_0E_12 = 0;
    } else {
        param0->unk_704[param1].unk_0E_12 = 1;
    }

    param0->unk_704[param1].unk_0E_13 = sub_02075D6C(v0);
    param0->unk_704[param1].unk_29 = 1;
    param0->unk_704[param1].unk_0E_0 = (u8)sub_0208E9F0(v0);

    sub_0207F094(param0, v0, param1);

    return 1;
}

static void sub_0207F094 (UnkStruct_0207F248 * param0, Pokemon * param1, u8 param2)
{
    u32 v0;
    u32 v1;

    if (param0->unk_5A4->unk_20 != 13) {
        return;
    }

    if ((param0->unk_704[param2].unk_10 == 1) || (param0->unk_704[param2].unk_06 == 0)) {
        param0->unk_704[param2].unk_0E_15 = 0;
        return;
    }

    v0 = sub_0207F134(param1, param0->unk_5A4->unk_2A);

    for (v1 = 0; v1 < 4; v1++) {
        if (GetMonData(param1, MON_DATA_MOVE1 + v1, NULL) == 0) {
            break;
        }
    }

    if ((param0->unk_5A4->unk_2B <= v0) && (v1 >= 2)) {
        param0->unk_704[param2].unk_0E_15 = 1;
    } else {
        param0->unk_704[param2].unk_0E_15 = 0;
    }
}

static u32 sub_0207F134 (Pokemon * param0, u8 param1)
{
    u32 v0;

    switch (param1) {
    case 0:
        v0 = GetMonData(param0, MON_DATA_123, NULL);
        v0 += GetMonData(param0, MON_DATA_124, NULL);
        v0 += GetMonData(param0, MON_DATA_125, NULL);
        v0 += GetMonData(param0, MON_DATA_126, NULL);
        break;
    case 1:
        v0 = GetMonData(param0, MON_DATA_127, NULL);
        v0 += GetMonData(param0, MON_DATA_128, NULL);
        v0 += GetMonData(param0, MON_DATA_129, NULL);
        v0 += GetMonData(param0, MON_DATA_130, NULL);
        break;
    case 2:
        v0 = GetMonData(param0, MON_DATA_131, NULL);
        v0 += GetMonData(param0, MON_DATA_132, NULL);
        v0 += GetMonData(param0, MON_DATA_133, NULL);
        v0 += GetMonData(param0, MON_DATA_134, NULL);
        break;
    case 3:
        v0 = GetMonData(param0, MON_DATA_135, NULL);
        v0 += GetMonData(param0, MON_DATA_136, NULL);
        v0 += GetMonData(param0, MON_DATA_137, NULL);
        v0 += GetMonData(param0, MON_DATA_138, NULL);
        break;
    case 4:
        v0 = GetMonData(param0, MON_DATA_139, NULL);
        v0 += GetMonData(param0, MON_DATA_140, NULL);
        v0 += GetMonData(param0, MON_DATA_141, NULL);
        v0 += GetMonData(param0, MON_DATA_142, NULL);
    }

    return v0;
}

const u16 * sub_0207F248 (UnkStruct_0207F248 * param0)
{
    return &param0->unk_324[3 * 16 + 6];
}

static void sub_0207F250 (UnkStruct_0207F248 * param0, u8 param1, u8 param2, u8 param3, u8 param4)
{
    const u16 * v0;

    if ((param1 == 0) || ((param0->unk_5A4->unk_21 != 0) && (param1 == 1))) {
        v0 = param0->unk_264;
    } else {
        v0 = param0->unk_324;
    }

    param0->unk_704[param1].unk_14 = (s8)param2;
    param0->unk_704[param1].unk_15 = (s8)param3;

    sub_020198E8(param0->unk_00, 2, param2, param3, 16, 6, (const void *)v0, 0, 0, 16, 6);

    if (param4 == 0) {
        sub_02019CB8(
            param0->unk_00, 2, 0x17, param2 + 6, param3 + 3, 9, 1, 16);
    }

    sub_02019E2C(param0->unk_00, 2, param2, param3, 16, 6, 3 + param1);
    sub_0207F8F8(param0, param1);
}

static void sub_0207F308 (UnkStruct_0207F248 * param0)
{
    const UnkStruct_020F1DF8 * v0;

    if (param0->unk_5A4->unk_21 == 2) {
        v0 = Unk_020F1DF8[1];
    } else {
        v0 = Unk_020F1DF8[0];
    }

    if (param0->unk_5A4->unk_20 == 16) {
        sub_0207F4AC(param0, v0);
    } else if (param0->unk_5A4->unk_20 == 6) {
        sub_0207F5A0(param0, v0);
    } else if (param0->unk_5A4->unk_20 == 13) {
        sub_0207F694(param0, v0);
    } else if ((param0->unk_5A4->unk_20 == 2) || (param0->unk_5A4->unk_20 == 17) || (param0->unk_5A4->unk_20 == 23) || (param0->unk_5A4->unk_20 == 22)) {
        sub_0207F788(param0, v0);
    } else {
        sub_0207F388(param0, v0);
    }

    sub_0201C3C0(param0->unk_00, 2);
    sub_0201C3C0(param0->unk_00, 4);
}

static void sub_0207F388 (UnkStruct_0207F248 * param0, const UnkStruct_020F1DF8 * param1)
{
    u8 v0;
    NARC * v1;

    v1 = NARC_ctor(19, 12);

    for (v0 = 0; v0 < 6; v0++) {
        if (sub_0207EF14(param0, v0) == 1) {
            if (param0->unk_704[v0].unk_10 == 1) {
                sub_0207F250(param0, v0, param1[v0].unk_00, param1[v0].unk_02, 0);
            } else {
                sub_0207F250(param0, v0, param1[v0].unk_00, param1[v0].unk_02, 1);
            }

            sub_020821F8(param0, v0);
            sub_02082CEC(param0, v0, param1[v0].unk_04, param1[v0].unk_06, v1);
            sub_02082FAC(param0, v0, param1[v0].unk_08, param1[v0].unk_0A);
            sub_02083040(param0, v0, param0->unk_704[v0].unk_0C);
            sub_020830A0(param0, v0, param1[v0].unk_04, param1[v0].unk_06);
            sub_02083104(param0, v0);
            sub_020830D4(param0, v0);
            sub_02083014(param0, v0, param0->unk_704[v0].unk_0E_0);
            sub_02080A50(param0, v0, 0);
        } else {
            sub_0207F884(param0, v0, param1[v0].unk_00, param1[v0].unk_02);
        }
    }

    NARC_dtor(v1);
}

static void sub_0207F4AC (UnkStruct_0207F248 * param0, const UnkStruct_020F1DF8 * param1)
{
    u8 v0;
    NARC * v1;

    v1 = NARC_ctor(19, 12);

    for (v0 = 0; v0 < 6; v0++) {
        if (sub_0207EF14(param0, v0) == 1) {
            sub_0207F250(param0, v0, param1[v0].unk_00, param1[v0].unk_02, 0);
            sub_0208232C(param0, v0);
            sub_02082CEC(param0, v0, param1[v0].unk_04, param1[v0].unk_06, v1);
            sub_02082FAC(param0, v0, param1[v0].unk_08, param1[v0].unk_0A);
            sub_02083040(param0, v0, param0->unk_704[v0].unk_0C);
            sub_020830A0(param0, v0, param1[v0].unk_04, param1[v0].unk_06);
            sub_02083104(param0, v0);
            sub_020830D4(param0, v0);
            sub_02083014(param0, v0, param0->unk_704[v0].unk_0E_0);
            sub_02080A50(param0, v0, 0);
        } else {
            sub_0207F884(param0, v0, param1[v0].unk_00, param1[v0].unk_02);
        }
    }

    NARC_dtor(v1);
}

static void sub_0207F5A0 (UnkStruct_0207F248 * param0, const UnkStruct_020F1DF8 * param1)
{
    u8 v0;
    NARC * v1;

    v1 = NARC_ctor(19, 12);

    for (v0 = 0; v0 < 6; v0++) {
        if (sub_0207EF14(param0, v0) == 1) {
            sub_0207F250(param0, v0, param1[v0].unk_00, param1[v0].unk_02, 0);
            sub_020823C4(param0, v0);
            sub_02082CEC(param0, v0, param1[v0].unk_04, param1[v0].unk_06, v1);
            sub_02082FAC(param0, v0, param1[v0].unk_08, param1[v0].unk_0A);
            sub_02083040(param0, v0, param0->unk_704[v0].unk_0C);
            sub_020830A0(param0, v0, param1[v0].unk_04, param1[v0].unk_06);
            sub_02083104(param0, v0);
            sub_020830D4(param0, v0);
            sub_02083014(param0, v0, param0->unk_704[v0].unk_0E_0);
            sub_02080A50(param0, v0, 0);
        } else {
            sub_0207F884(param0, v0, param1[v0].unk_00, param1[v0].unk_02);
        }
    }

    NARC_dtor(v1);
}

static void sub_0207F694 (UnkStruct_0207F248 * param0, const UnkStruct_020F1DF8 * param1)
{
    u8 v0;
    NARC * v1;

    v1 = NARC_ctor(19, 12);

    for (v0 = 0; v0 < 6; v0++) {
        if (sub_0207EF14(param0, v0) == 1) {
            sub_0207F250(param0, v0, param1[v0].unk_00, param1[v0].unk_02, 0);
            sub_0208245C(param0, v0);
            sub_02082CEC(param0, v0, param1[v0].unk_04, param1[v0].unk_06, v1);
            sub_02082FAC(param0, v0, param1[v0].unk_08, param1[v0].unk_0A);
            sub_02083040(param0, v0, param0->unk_704[v0].unk_0C);
            sub_020830A0(param0, v0, param1[v0].unk_04, param1[v0].unk_06);
            sub_02083104(param0, v0);
            sub_020830D4(param0, v0);
            sub_02083014(param0, v0, param0->unk_704[v0].unk_0E_0);
            sub_02080A50(param0, v0, 0);
        } else {
            sub_0207F884(param0, v0, param1[v0].unk_00, param1[v0].unk_02);
        }
    }

    NARC_dtor(v1);
}

static void sub_0207F788 (UnkStruct_0207F248 * param0, const UnkStruct_020F1DF8 * param1)
{
    u8 v0;
    NARC * v1;

    v1 = NARC_ctor(19, 12);

    for (v0 = 0; v0 < 6; v0++) {
        if (sub_0207EF14(param0, v0) == 1) {
            sub_0207F250(param0, v0, param1[v0].unk_00, param1[v0].unk_02, 0);
            sub_020824C0(param0, v0);
            sub_02082508(param0, v0);
            sub_02082CEC(param0, v0, param1[v0].unk_04, param1[v0].unk_06, v1);
            sub_02082FAC(param0, v0, param1[v0].unk_08, param1[v0].unk_0A);
            sub_02083040(param0, v0, param0->unk_704[v0].unk_0C);
            sub_020830A0(param0, v0, param1[v0].unk_04, param1[v0].unk_06);
            sub_02083104(param0, v0);
            sub_020830D4(param0, v0);
            sub_02083014(param0, v0, param0->unk_704[v0].unk_0E_0);
            sub_02080A50(param0, v0, 0);
        } else {
            sub_0207F884(param0, v0, param1[v0].unk_00, param1[v0].unk_02);
        }
    }

    NARC_dtor(v1);
}

static void sub_0207F884 (UnkStruct_0207F248 * param0, u8 param1, s16 param2, s16 param3)
{
    sub_020198E8(param0->unk_00, 2, param2, param3, 16, 6, (const void *)param0->unk_3E4, 0, 0, 16, 6);
    sub_02019E2C(param0->unk_00, 2, param2, param3, 16, 6, 1);
    sub_02083014(param0, param1, 7);
    sub_02083040(param0, param1, 0);
    sub_02083104(param0, param1);
}

void sub_0207F8F8 (UnkStruct_0207F248 * param0, u8 param1)
{
    Pokemon * v0;
    u8 v1;

    v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param1);

    if ((param0->unk_B0F_6 == 1) && ((param1 == param0->unk_B11) || (param1 == param0->unk_B0F_0))) {
        v1 = 3 + 4;
    } else {
        if (param1 == param0->unk_B11) {
            v1 = 4;
        } else {
            v1 = 0;
        }

        if (GetMonData(v0, MON_DATA_163, 0) == 0) {
            v1 += 2;
        } else if (sub_0207F984(param0, param1) == 1) {
            v1 += 1;
        } else {
            v1 += 0;
        }
    }

    sub_0201972C(2, &param0->unk_4A4[v1 * 16], 8 * 2, (3 + param1) * 32);
}

static u8 sub_0207F984 (UnkStruct_0207F248 * param0, u8 param1)
{
    if ((param0->unk_5A4->unk_21 == 2) && ((param1 & 1) != 0)) {
        return 1;
    }

    return 0;
}

static void sub_0207F9A0 (UnkStruct_0207F248 * param0)
{
    u8 v0, v1;

    sub_0201E028(param0->unk_7F4, &v0, &v1, NULL, NULL, param0->unk_B11, 4);
    sub_02021D6C(param0->unk_5B0[6], sub_020805D0(param0->unk_5A4->unk_21, param0->unk_B11));
    sub_0200D494(param0->unk_5B0[6], v0, v1);
}

static const u8 Unk_020F1BD4[][6] = {
    {0x0, 0x2, 0x4, 0x1, 0x3, 0x5},
    {0x1, 0x3, 0x5, 0x0, 0x2, 0x4},
    {0x4, 0x2, 0x0, 0x5, 0x3, 0x1},
    {0x5, 0x3, 0x1, 0x4, 0x2, 0x0}
};

static u8 sub_0207FA00 (UnkStruct_0207F248 * param0)
{
    if (sub_0207FA24(param0) == 1) {
        return 1;
    }

    if (sub_0207FC94(param0) == 1) {
        return 2;
    }

    return 5;
}

static u8 sub_0207FA24 (UnkStruct_0207F248 * param0)
{
    u8 v0;
    u8 v1;
    u8 v2, v3;

    v1 = 4;

    if (Unk_021BF67C.unk_4C & PAD_KEY_UP) {
        v1 = 0;
    } else if (Unk_021BF67C.unk_4C & PAD_KEY_DOWN) {
        v1 = 1;
    } else if (Unk_021BF67C.unk_4C & PAD_KEY_LEFT) {
        v1 = 2;
    } else if (Unk_021BF67C.unk_4C & PAD_KEY_RIGHT) {
        v1 = 3;
    }

    if (v1 == 4) {
        return 0;
    }

    v0 = param0->unk_B11;

    if (v0 == 6) {
        if (v1 == 0) {
            v0 = sub_0207FC30(param0, &v2, &v3, Unk_020F1BD4[2 + (param0->unk_B12 & 1)]);
        } else {
            v0 = sub_0207FBE0(param0, &v2, &v3, v1);
        }
    } else if (v0 == 7) {
        if ((param0->unk_5A4->unk_20 != 2) && (param0->unk_5A4->unk_20 != 17) && (param0->unk_5A4->unk_20 != 23) && (param0->unk_5A4->unk_20 != 22) && (v1 == 0)) {
            v0 = sub_0207FC30(param0, &v2, &v3, Unk_020F1BD4[2 + (param0->unk_B12 & 1)]);
        } else if (v1 == 1) {
            v0 = sub_0207FC30(param0, &v2, &v3, Unk_020F1BD4[(param0->unk_B12 & 1)]);
        } else {
            v0 = sub_0207FBE0(param0, &v2, &v3, v1);
        }
    } else {
        v0 = sub_0207FBE0(param0, &v2, &v3, v1);
    }

    if ((v0 != param0->unk_B11) && (v0 != 0xff)) {
        if ((v0 == 6) || (v0 == 7)) {
            sub_02021CAC(param0->unk_5B0[6], 0);
        } else {
            sub_02021D6C(param0->unk_5B0[6], sub_020805D0(param0->unk_5A4->unk_21, v0));
            sub_02021CAC(param0->unk_5B0[6], 1);
            sub_0200D494(param0->unk_5B0[6], v2, v3);
        }

        {
            u8 v4 = param0->unk_B11;
            param0->unk_B11 = v0;

            sub_02080500(param0, v4, 0);
            sub_02080500(param0, param0->unk_B11, 1);
            sub_02005748(1500);

            if (v4 < 6) {
                sub_02080A50(param0, v4, 0);
                sub_0201C3C0(param0->unk_00, 4);
            }

            if ((v4 != 6) && (v4 != 7)) {
                param0->unk_B12 = v4;
            }
        }

        return 1;
    }

    return 0;
}

static u8 sub_0207FBE0 (UnkStruct_0207F248 * param0, u8 * param1, u8 * param2, u8 param3)
{
    u8 v0 = param0->unk_B11;

    while (TRUE) {
        v0 = sub_0201E028(param0->unk_7F4, param1, param2, NULL, NULL, v0, param3);

        if ((v0 == 6) || (v0 == 7) || (v0 == 0xff)) {
            break;
        }

        if (sub_0207EF04(param0, v0) != 0) {
            break;
        }
    }

    return v0;
}

static u8 sub_0207FC30 (UnkStruct_0207F248 * param0, u8 * param1, u8 * param2, const u8 * param3)
{
    u8 v0 = 0;

    while (TRUE) {
        if (v0 == 6) {
            break;
        }

        if (sub_0207EF04(param0, param3[v0]) != 0) {
            sub_0201E028(param0->unk_7F4, param1, param2, NULL, NULL, param3[v0], 4);
            return param3[v0];
        }

        v0++;
    }

    sub_0201E028(param0->unk_7F4, param1, param2, NULL, NULL, 0, 4);
    return 0;
}

static u8 sub_0207FC94 (UnkStruct_0207F248 * param0)
{
    int v0 = sub_02080AD8(param0);

    if (v0 != 0xffffffff) {
        u8 v1, v2;
        u8 v3;

        v3 = param0->unk_B11;
        param0->unk_B11 = (u8)v0;

        sub_02080500(param0, v3, 0);
        sub_02080500(param0, param0->unk_B11, 1);

        if (v3 < 6) {
            sub_02080A50(param0, v3, 0);
        }

        sub_0201E028(param0->unk_7F4, &v1, &v2, NULL, NULL, param0->unk_B11, 4);
        sub_02021D6C(param0->unk_5B0[6], sub_020805D0(param0->unk_5A4->unk_21, param0->unk_B11));
        sub_02021CAC(param0->unk_5B0[6], 1);
        sub_0200D494(param0->unk_5B0[6], v1, v2);

        param0->unk_B0C = 1;
        param0->unk_B0D = param0->unk_B11;

        sub_02005748(1508);

        if ((v3 != 6) && (v3 != 7)) {
            param0->unk_B12 = v3;
        }

        return 1;
    }

    return 0;
}

void sub_0207FD68 (UnkStruct_0207F248 * param0, u8 param1)
{
    if ((param1 == 6) || (param1 == 7)) {
        sub_02021CAC(param0->unk_5B0[6], 0);
    } else {
        u8 v0, v1;

        sub_0201E028(param0->unk_7F4, &v0, &v1, NULL, NULL, param0->unk_B11, 4);
        sub_02021D6C(param0->unk_5B0[6], sub_020805D0(param0->unk_5A4->unk_21, param1));
        sub_02021CAC(param0->unk_5B0[6], 1);
        sub_0200D494(param0->unk_5B0[6], v0, v1);
    }

    {
        u8 v2 = param0->unk_B11;
        param0->unk_B11 = param1;

        sub_02080500(param0, v2, 0);
        sub_02080500(param0, param0->unk_B11, 1);

        if (v2 < 6) {
            sub_02080A50(param0, v2, 0);
            sub_0201C3C0(param0->unk_00, 4);
        }
    }
}

static void sub_0207FE1C (UnkStruct_0207F248 * param0)
{
    switch (param0->unk_B0C) {
    case 0:
        break;
    case 1:

    {
        s16 v0, v1;

        sub_02080AB8(param0->unk_B0D, &v0, &v1);
        sub_020832E4(param0, v0, v1);
    }
        sub_02080A50(param0, param0->unk_B0D, 2);
        sub_0201C3C0(param0->unk_00, 4);
        param0->unk_B0C++;
        break;
    case 2:
        sub_02080A50(param0, param0->unk_B0D, 1);
        sub_0201C3C0(param0->unk_00, 4);
        param0->unk_B0C = 0;
        break;
    }
}

static u8 sub_0207FE98 (UnkStruct_0207F248 * param0)
{
    u8 v0;

    if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
        if (param0->unk_B11 == 6) {
            return 4;
        } else if (param0->unk_B11 == 7) {
            sub_02005748(1500);

            if (param0->unk_B0F_7 == 0) {
                return 3;
            }
        } else if ((param0->unk_5A4->unk_20 == 3) || (param0->unk_5A4->unk_20 == 19)) {
            sub_02005748(1500);
            return 0;
        } else if ((param0->unk_5A4->unk_20 == 20) || (param0->unk_5A4->unk_20 == 14)) {
            if (param0->unk_704[param0->unk_B11].unk_10 == 0) {
                sub_02005748(1500);
                return 0;
            } else {
                sub_02005748(1522);
                return 5;
            }
        } else if (param0->unk_5A4->unk_20 == 15) {
            if (param0->unk_704[param0->unk_B11].unk_10 == 0) {
                sub_02005748(1500);
                sub_0207FFC8(param0);
                return 0;
            } else {
                sub_02005748(1522);
                return 5;
            }
        } else if (param0->unk_5A4->unk_20 == 21) {
            sub_02005748(1500);
            sub_0207FFC8(param0);
            return 0;
        } else {
            sub_02005748(1500);
            sub_0207FFC8(param0);
            return 0;
        }
    }

    if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
        if (param0->unk_B0F_7 == 0) {
            sub_02005748(1500);
            param0->unk_B11 = 7;
            return 3;
        }
    }

    v0 = sub_0207FA00(param0);

    if (v0 == 2) {
        if ((param0->unk_5A4->unk_20 == 20) || (param0->unk_5A4->unk_20 == 14) || (param0->unk_5A4->unk_20 == 15)) {
            if (param0->unk_704[param0->unk_B11].unk_10 != 0) {
                sub_02005748(1522);
                return 5;
            }
        }
    }

    return v0;
}

static void sub_0207FFC8 (UnkStruct_0207F248 * param0)
{
    u8 * v0;
    u8 v1;

    sub_0200E084(&param0->unk_04[32], 1);
    v0 = Heap_AllocFromHeap(12, 8);

    switch (param0->unk_5A4->unk_20) {
    case 0:
        v1 = sub_020800B4(param0, v0);
        break;
    case 2:
    case 17:
        v1 = sub_0208022C(param0, v0);
        break;
    case 15:
        v1 = sub_020801AC(param0, v0);
        break;
    case 18:
        v1 = sub_020801B8(param0, v0);
        break;
    case 21:
        v1 = sub_0208031C(param0, v0);
        break;

    case 22:
        v1 = sub_0208027C(param0, v0);
        break;
    case 23:
        v1 = sub_020802CC(param0, v0);
        break;
    default:
        v1 = sub_020801F0(param0, v0);
    }

    sub_02081CF4(param0, v0, v1);
    Heap_FreeToHeapExplicit(12, v0);
    sub_02081E08(param0);
    sub_020826F4(param0, 0xffffffff, 1);
    sub_0200D414(param0->unk_5B0[6], 1);
}

static u8 sub_020800B4 (UnkStruct_0207F248 * param0, u8 * param1)
{
    Pokemon * v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);
    u16 v1;
    u8 v2 = 0, v3, v4 = 0, v5;

    param1[v4] = 1;
    v4++;

    if (sub_0206C0D0(param0->unk_5A4->unk_1C) == 0) {
        if (param0->unk_704[param0->unk_B11].unk_10 == 0) {
            for (v3 = 0; v3 < 4; v3++) {
                v1 = (u16)GetMonData(v0, MON_DATA_MOVE1 + v3, NULL);

                if (v1 == 0) {
                    break;
                }

                v5 = sub_02080BCC(v1);

                if (v5 != 0xff) {
                    param1[v4] = v5;
                    v4++;
                    sub_02081CAC(param0, v1, v2);
                    v2++;
                }
            }

            param1[v4] = 0;
            v4++;

            if (Item_IsMail(param0->unk_704[param0->unk_B11].unk_0C) == 1) {
                param1[v4] = 5;
            } else {
                param1[v4] = 2;
            }

            v4++;
        } else {
            param1[v4] = 0;
            v4++;
        }
    }

    param1[v4] = 9;
    v4++;

    return v4;
}

static u8 sub_020801AC (UnkStruct_0207F248 * param0, u8 * param1)
{
    param1[0] = 14;
    param1[1] = 9;

    return 2;
}

static u8 sub_020801B8 (UnkStruct_0207F248 * param0, u8 * param1)
{
    if (param0->unk_704[param0->unk_B11].unk_10 == 0) {
        param1[0] = 8;
        param1[1] = 1;
        param1[2] = 9;

        return 3;
    }

    param1[0] = 1;
    param1[1] = 9;

    return 2;
}

static u8 sub_020801F0 (UnkStruct_0207F248 * param0, u8 * param1)
{
    if (param0->unk_704[param0->unk_B11].unk_0E_15 == 1) {
        param1[0] = 13;
        param1[1] = 1;
        param1[2] = 9;

        return 3;
    }

    param1[0] = 1;
    param1[1] = 9;

    return 2;
}

static u8 sub_0208022C (UnkStruct_0207F248 * param0, u8 * param1)
{
    switch (sub_02080354(param0, param0->unk_B11)) {
    case 0:
        param1[0] = 1;
        param1[1] = 9;
        return 2;
    case 1:
        param1[0] = 11;
        param1[1] = 1;
        param1[2] = 9;
        return 3;
    case 2:
        param1[0] = 12;
        param1[1] = 1;
        param1[2] = 9;
        return 3;
    }

    return 0;
}

static u8 sub_0208027C (UnkStruct_0207F248 * param0, u8 * param1)
{
    switch (sub_02080404(param0, param0->unk_B11)) {
    case 0:
        param1[0] = 1;
        param1[1] = 9;
        return 2;
    case 1:
        param1[0] = 11;
        param1[1] = 1;
        param1[2] = 9;
        return 3;
    case 2:
        param1[0] = 12;
        param1[1] = 1;
        param1[2] = 9;
        return 3;
    }

    return 0;
}

static u8 sub_020802CC (UnkStruct_0207F248 * param0, u8 * param1)
{
    switch (sub_02080488(param0, param0->unk_B11)) {
    case 0:
        param1[0] = 1;
        param1[1] = 9;
        return 2;
    case 1:
        param1[0] = 11;
        param1[1] = 1;
        param1[2] = 9;
        return 3;
    case 2:
        param1[0] = 12;
        param1[1] = 1;
        param1[2] = 9;
        return 3;
    }

    return 0;
}

static u8 sub_0208031C (UnkStruct_0207F248 * param0, u8 * param1)
{
    if (param0->unk_704[param0->unk_B11].unk_10 == 1) {
        param1[0] = 1;
        param1[1] = 15;
        param1[2] = 9;
        return 3;
    }

    param1[0] = 1;
    param1[1] = 9;

    return 2;
}

u8 sub_02080354 (UnkStruct_0207F248 * param0, u8 param1)
{
    u8 v0;

    if (param0->unk_5A4->unk_14 != NULL) {
        Pokemon * v1 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param1);

        if (sub_0207A2D0(param0->unk_5A4->unk_14, v1, param0->unk_B20) == 0) {
            return 0;
        }
    }

    if (param0->unk_5A4->unk_20 == 17) {
        if (sub_02078804(param0->unk_704[param1].unk_04) == 1) {
            return 0;
        }
    }

    for (v0 = 0; v0 < param0->unk_5A4->unk_32_4; v0++) {
        if (param0->unk_5A4->unk_2C[v0] == param1 + 1) {
            return 2;
        }
    }

    if ((param0->unk_704[param1].unk_10 == 1) || (param0->unk_704[param1].unk_0A > param0->unk_5A4->unk_33)) {
        return 0;
    }

    return 1;
}

u8 sub_02080404 (UnkStruct_0207F248 * param0, u8 param1)
{
    u8 v0;

    if (param0->unk_5A4->unk_20 == 22) {
        if (sub_02078804(param0->unk_704[param1].unk_04) == 1) {
            return 0;
        }
    }

    for (v0 = 0; v0 < param0->unk_5A4->unk_32_4; v0++) {
        if (param0->unk_5A4->unk_2C[v0] == param1 + 1) {
            return 2;
        }
    }

    if ((param0->unk_704[param1].unk_10 == 1) || (param0->unk_704[param1].unk_0A < param0->unk_5A4->unk_33)) {
        return 0;
    }

    return 1;
}

u8 sub_02080488 (UnkStruct_0207F248 * param0, u8 param1)
{
    u8 v0;

    if (param0->unk_5A4->unk_20 == 23) {
        if (sub_02078804(param0->unk_704[param1].unk_04) == 1) {
            return 0;
        }
    }

    for (v0 = 0; v0 < param0->unk_5A4->unk_32_4; v0++) {
        if (param0->unk_5A4->unk_2C[v0] == param1 + 1) {
            return 2;
        }
    }

    if (param0->unk_704[param1].unk_10 == 1) {
        return 0;
    }

    return 1;
}

static void sub_02080500 (UnkStruct_0207F248 * param0, u8 param1, u8 param2)
{
    if (param1 == 6) {
        u8 v0 = sub_02021E24(param0->unk_5B0[8]);

        if (param2 == 0) {
            v0 = (v0 & 2);
        } else {
            v0 = (v0 & 2) + 1;
        }

        sub_02021D6C(param0->unk_5B0[8], v0);
        return;
    }

    if (param1 == 7) {
        u8 v1 = sub_02021E24(param0->unk_5B0[9]);

        if (param2 == 0) {
            v1 = (v1 & 2);
        } else {
            v1 = (v1 & 2) + 1;
        }

        sub_02021D6C(param0->unk_5B0[9], v1);
        return;
    }

    if (param2 == 0) {
        param0->unk_704[param1].unk_16 -= 2;
        param0->unk_704[param1].unk_18 -= 2;

        sub_02021D6C(param0->unk_5B0[0 + param1], 0);
    } else {
        param0->unk_704[param1].unk_16 += 2;
        param0->unk_704[param1].unk_18 += 2;

        sub_02021D6C(param0->unk_5B0[0 + param1], 1);
    }

    sub_0207F8F8(param0, param1);
}

u8 sub_020805D0 (u8 param0, u8 param1)
{
    if ((param1 == 0) || ((param0 != 0) && (param1 == 1))) {
        return 1;
    }

    return 0;
}

static u8 sub_020805E4 (UnkStruct_0207F248 * param0)
{
    u8 v0;

    if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
        sub_02005748(1500);

        if ((param0->unk_B11 >= 6) || (param0->unk_B11 == param0->unk_B0F_0)) {
            sub_02083B88(param0);
            return 3;
        } else {
            sub_02083BD4(param0);
            return 0;
        }
    }

    if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
        sub_02005748(1500);
        sub_02083B88(param0);
        return 3;
    }

    v0 = sub_0207FA00(param0);

    if (v0 == 2) {
        if (param0->unk_B11 == param0->unk_B0F_0) {
            sub_02083B88(param0);
            return 3;
        } else {
            sub_02083BD4(param0);
            return 0;
        }
    }

    return v0;
}

static int sub_02080670 (UnkStruct_0207F248 * param0)
{
    u8 v0;

    for (v0 = 0; v0 < param0->unk_5A4->unk_32_0; v0++) {
        if (param0->unk_5A4->unk_2C[v0] == 0) {
            switch (param0->unk_5A4->unk_32_4) {
            case 2:
                sub_02082708(param0, 107, 1);
                break;
            case 3:
                sub_02082708(param0, 119, 1);
                break;
            case 4:
                sub_02082708(param0, 120, 1);
                break;
            case 5:
                sub_02082708(param0, 121, 1);
                break;
            case 6:
                sub_02082708(param0, 122, 1);
                break;
            default:
                sub_02082708(param0, 29, 1);
                break;
            }

            param0->unk_B0E = 23;
            sub_02005748(1522);
            return 24;
        }
    }

    if (param0->unk_5A4->unk_14 != NULL) {
        switch (sub_0207A3AC(param0->unk_5A4->unk_14, param0->unk_5A4->unk_00, param0->unk_B20, param0->unk_5A4->unk_2C)) {
        case 0:
            break;

        case 1:
        {
            Strbuf* v1;
            int v2;

            v1 = sub_0200B1EC(param0->unk_69C, 184);
            v2 = sub_02026074(param0->unk_5A4->unk_14, 3);

            sub_0200B60C(param0->unk_6A0, 0, v2, 3, 0, 1);
            sub_0200C388(param0->unk_6A0, param0->unk_6A4, v1);
            Strbuf_Free(v1);
        }
            sub_02082708(param0, 0xffffffff, 1);
            param0->unk_B0E = 23;
            sub_02005748(1522);
            return 24;
        case 2:
            sub_02082708(param0, 182, 1);
            param0->unk_B0E = 23;
            sub_02005748(1522);
            return 24;
        case 3:
            sub_02082708(param0, 183, 1);
            param0->unk_B0E = 23;
            sub_02005748(1522);
            return 24;
        }
    }

    if (param0->unk_5A4->unk_20 == 17) {
        switch (sub_020808CC(param0)) {
        case 0:
            break;
        case 1:
            sub_02082708(param0, 182, 1);
            param0->unk_B0E = 23;
            sub_02005748(1522);
            return 24;
        case 2:
            sub_02082708(param0, 183, 1);
            param0->unk_B0E = 23;
            sub_02005748(1522);
            return 24;
        }
    }

    if (param0->unk_5A4->unk_20 == 22) {
        switch (sub_02080968(param0)) {
        case 0:
            break;
        case 1:
            sub_02082708(param0, 201, 1);
            param0->unk_B0E = 23;
            sub_02005748(1522);
            return 24;
        }
    }

    if (param0->unk_5A4->unk_20 == 23) {
        switch (sub_020809DC(param0)) {
        case 0:
            break;
        case 1:
            sub_02082708(param0, 182, 1);
            param0->unk_B0E = 23;
            sub_02005748(1522);
            return 24;
        }
    }

    param0->unk_5A4->unk_23 = 0;
    sub_02005748(1500);
    return 32;
}

static u8 sub_020808CC (UnkStruct_0207F248 * param0)
{
    u8 v0, v1;

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->unk_5A4->unk_2C[v0] == 0) {
            break;
        }

        for (v1 = v0 + 1; v1 < 6; v1++) {
            if (param0->unk_5A4->unk_2C[v1] == 0) {
                break;
            }

            if (param0->unk_704[param0->unk_5A4->unk_2C[v0] - 1].unk_04 == param0->unk_704[param0->unk_5A4->unk_2C[v1] - 1].unk_04) {
                return 1;
            }

            if ((param0->unk_704[param0->unk_5A4->unk_2C[v0] - 1].unk_0C != 0) && (param0->unk_704[param0->unk_5A4->unk_2C[v0] - 1].unk_0C == param0->unk_704[param0->unk_5A4->unk_2C[v1] - 1].unk_0C)) {
                return 2;
            }
        }
    }

    return 0;
}

static u8 sub_02080968 (UnkStruct_0207F248 * param0)
{
    u8 v0, v1;

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->unk_5A4->unk_2C[v0] == 0) {
            break;
        }

        for (v1 = v0 + 1; v1 < 6; v1++) {
            if (param0->unk_5A4->unk_2C[v1] == 0) {
                break;
            }

            if (param0->unk_704[param0->unk_5A4->unk_2C[v0] - 1].unk_04 != param0->unk_704[param0->unk_5A4->unk_2C[v1] - 1].unk_04) {
                return 1;
            }
        }
    }

    return 0;
}

static u8 sub_020809DC (UnkStruct_0207F248 * param0)
{
    u8 v0, v1;

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->unk_5A4->unk_2C[v0] == 0) {
            break;
        }

        for (v1 = v0 + 1; v1 < 6; v1++) {
            if (param0->unk_5A4->unk_2C[v1] == 0) {
                break;
            }

            if (param0->unk_704[param0->unk_5A4->unk_2C[v0] - 1].unk_04 == param0->unk_704[param0->unk_5A4->unk_2C[v1] - 1].unk_04) {
                return 1;
            }
        }
    }

    return 0;
}

static const u8 Unk_020F1BB8[6][2] = {
    {0x1, 0x3},
    {0x1A, 0x3},
    {0x1, 0xA},
    {0x1A, 0xA},
    {0x1, 0x11},
    {0x1A, 0x11}
};

static const UnkUnion_02022594 Unk_020F1C94[] = {
    {0x18, 0x3F, 0x8, 0x2F},
    {0x18, 0x3F, 0xD0, 0xF7},
    {0x50, 0x77, 0x8, 0x2F},
    {0x50, 0x77, 0xD0, 0xF7},
    {0x88, 0xAF, 0x8, 0x2F},
    {0x88, 0xAF, 0xD0, 0xF7},
    {0xFF, 0x0, 0x0, 0x0}
};

static void sub_02080A50 (UnkStruct_0207F248 * param0, u8 param1, u8 param2)
{
    u16 * v0;
    u16 v1;
    u8 v2, v3;
    u8 v4, v5;

    v0 = (u16 *)sub_02019FE4(param0->unk_00, 4);
    v1 = 5 + (1 << 12) + 5 * 5 * param2;
    v2 = Unk_020F1BB8[param1][0];
    v3 = Unk_020F1BB8[param1][1];

    for (v4 = 0; v4 < 5; v4++) {
        for (v5 = 0; v5 < 5; v5++) {
            v0[(v3 + v4) * 32 + v2 + v5] = v4 * 5 + v5 + v1;
        }
    }
}

static void sub_02080AB8 (u8 param0, s16 * param1, s16 * param2)
{
    *param1 = Unk_020F1BB8[param0][0] * 8 + ((5 * 8) >> 1);
    *param2 = Unk_020F1BB8[param0][1] * 8 + ((5 * 8) >> 1);
}

static int sub_02080AD8 (UnkStruct_0207F248 * param0)
{
    int v0;

    if (sub_020818F8(param0) == 0) {
        return 0xffffffff;
    }

    v0 = sub_02022664(Unk_020F1C94);

    if (v0 != 0xffffffff) {
        u16 v1 = 0xfffe;

        if (sub_0201C784(param0->unk_00, 4, Unk_021BF67C.unk_5C, Unk_021BF67C.unk_5E, &v1) == 0) {
            return 0xffffffff;
        }
    }

    return v0;
}

static u8 sub_02080B34 (UnkStruct_0207F248 * param0, int * param1)
{
    u32 v0 = sub_02001BE0(param0->unk_700);

    switch (v0) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        sub_0200E084(&param0->unk_04[33], 1);
        sub_0208337C(param0);

        if ((param0->unk_5A4->unk_20 == 2) || (param0->unk_5A4->unk_20 == 17) || (param0->unk_5A4->unk_20 == 23) || (param0->unk_5A4->unk_20 == 22)) {
            sub_020826E0(param0, 34, 1);
        } else if (param0->unk_5A4->unk_20 == 21) {
            sub_020826E0(param0, 197, 1);
        } else {
            sub_020826E0(param0, 29, 1);
        }

        sub_0200D414(param0->unk_5B0[6], 0);
        return 1;
    default:
    {
        UnkFuncPtr_0207E634 v1 = (UnkFuncPtr_0207E634)v0;
        v1(param0, param1);
    }
    }

    return 0;
}

u8 sub_02080BCC (u16 param0)
{
    u8 v0;

    for (v0 = 0; v0 < NELEMS(Unk_020F1CB0); v0++) {
        if (param0 == Unk_020F1CB0[v0]) {
            return v0 + 16;
        }
    }

    return 0xff;
}

static int sub_02080BF4 (UnkStruct_0207F248 * param0)
{
    switch (param0->unk_B14[1]) {
    case 0:
        if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
            if (param0->unk_B11 >= 6) {
                sub_02005748(1500);
                sub_02083B88(param0);
                return 1;
            } else {
                switch (sub_02080ECC(param0)) {
                case 0:
                    sub_02005748(1516);
                    sub_0200D414(param0->unk_5B0[6], 1);

                    if (param0->unk_704[param0->unk_B11].unk_08 - param0->unk_704[param0->unk_B11].unk_06 < param0->unk_B14[0]) {
                        param0->unk_B14[0] = param0->unk_704[param0->unk_B11].unk_08 - param0->unk_704[param0->unk_B11].unk_06;
                    }

                    param0->unk_B14[1] = 2;
                    param0->unk_B14[2] = 0;
                    break;
                case 1:
                    sub_02005748(1500);
                    param0->unk_B14[1] = 1;
                    return 24;
                case 2:
                    sub_02005748(1522);
                    return 30;
                }
            }
        }

        if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
            sub_02005748(1500);
            sub_02083B88(param0);
            return 1;
        }

        if (sub_0207FA00(param0) == 2) {
            if (param0->unk_B11 == param0->unk_B0F_0) {
                sub_02083B88(param0);
                return 1;
            } else {
                switch (sub_02080ECC(param0)) {
                case 0:
                    sub_02005748(1516);
                    sub_0200D414(param0->unk_5B0[6], 1);

                    if (param0->unk_704[param0->unk_B11].unk_08 - param0->unk_704[param0->unk_B11].unk_06 < param0->unk_B14[0]) {
                        param0->unk_B14[0] = param0->unk_704[param0->unk_B11].unk_08 - param0->unk_704[param0->unk_B11].unk_06;
                    }

                    param0->unk_B14[1] = 2;
                    param0->unk_B14[2] = 0;
                    break;
                case 1:
                    param0->unk_B14[1] = 1;
                    return 24;
                case 2:
                    sub_02005748(1522);
                    return 30;
                }
            }
        }
        break;
    case 1:
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            sub_02005748(1500);
            sub_0200E084(&param0->unk_04[34], 1);
            sub_0200D414(param0->unk_5B0[6], 0);
            sub_020826E0(param0, 36, 1);
            param0->unk_B14[1] = 0;
        }
        break;
    case 2:
        if (sub_02080F3C(param0, param0->unk_B0F_0, -1) == 1) {
            sub_02005748(1516);
            param0->unk_B14[1] = 3;
            param0->unk_B14[2] = 0;
        }
        break;
    case 3:
        if (sub_02080F3C(param0, param0->unk_B11, 1) == 1) {
            Pokemon * v0;
            Strbuf* v1;
            void * v2;
            UnkStruct_0203CDB0 * v3;

            v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);
            v1 = sub_0200B1EC(param0->unk_69C, 64);

            sub_0200B5CC(param0->unk_6A0, 0, sub_02076B10(v0));
            sub_0200B60C(param0->unk_6A0, 1, param0->unk_B14[2], 3, 0, 1);
            sub_0200C388(param0->unk_6A0, param0->unk_6A4, v1);
            Strbuf_Free(v1);
            sub_02082708(param0, 0xffffffff, 1);

            v2 = sub_0202BE00((u8)param0->unk_B14[3], 0, 12);
            v3 = param0->unk_5A4->unk_1C;
            sub_0202B758(v3->unk_9C, v2, 1);
            param0->unk_B14[1] = 4;
            param0->unk_B0E = 30;
            return 24;
        }
        break;
    case 4:
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            sub_02005748(1500);
            sub_0200E084(&param0->unk_04[34], 1);
            sub_0200D414(param0->unk_5B0[6], 0);
            sub_02083B88(param0);
            return 1;
        }
        break;
    }

    return 30;
}

static u8 sub_02080ECC (UnkStruct_0207F248 * param0)
{
    if (param0->unk_704[param0->unk_B11].unk_10 != 0) {
        return 2;
    }

    if ((param0->unk_B11 == param0->unk_B0F_0) || (param0->unk_704[param0->unk_B11].unk_06 == 0) || (param0->unk_704[param0->unk_B11].unk_06 == param0->unk_704[param0->unk_B11].unk_08)) {
        sub_0200D414(param0->unk_5B0[6], 1);
        sub_02082708(param0, 131, 1);

        param0->unk_B14[1] = 1;
        param0->unk_B0E = 30;

        return 1;
    }

    return 0;
}

static BOOL sub_02080F3C (UnkStruct_0207F248 * param0, u8 param1, s8 param2)
{
    param0->unk_704[param1].unk_06 += param2;
    param0->unk_B14[2]++;

    sub_02082098(param0, param1);
    sub_0201ADA4(&param0->unk_04[3 + param1 * 5], 0);
    sub_02082058(param0, param1);
    sub_02082104(param0, param1);

    if ((param0->unk_B14[0] == param0->unk_B14[2]) || (param0->unk_704[param1].unk_06 == param0->unk_704[param1].unk_08)) {
        Pokemon * v0;
        u32 v1;

        v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param1);
        v1 = param0->unk_704[param1].unk_06;
        sub_02074B30(v0, 163, &v1);
        return 1;
    }

    return 0;
}

static u8 sub_02080FD0 (UnkStruct_0207F248 * param0)
{
    u8 v0;

    if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
        if (param0->unk_B11 == 7) {
            if (param0->unk_B0F_7 == 0) {
                sub_02005748(1500);
                return 3;
            }
        } else {
            if (param0->unk_704[param0->unk_B11].unk_10 == 0) {
                sub_02005748(1500);
                return 0;
            } else {
                sub_02005748(1522);
            }
        }

        return 5;
    }

    if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
        if (param0->unk_B0F_7 == 0) {
            sub_02005748(1500);
            param0->unk_B11 = 7;
            return 3;
        }

        return 5;
    }

    v0 = sub_0207FA00(param0);

    if (v0 == 2) {
        if (param0->unk_704[param0->unk_B11].unk_10 != 0) {
            sub_02005748(1522);
            return 5;
        }
    }

    return v0;
}

static int sub_0208107C (UnkStruct_0207F248 * param0)
{
    ItemData * v0;

    v0 = Item_LoadDataOrGFX(param0->unk_5A4->unk_24, 0, 12);

    if ((param0->unk_5A4->unk_24 == 466) && (sub_02077B14(Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11)) == 1)) {
        param0->unk_5A4->unk_38 = 1;
        Heap_FreeToHeap(v0);
        sub_020819B4(param0);
        return 31;
    }

    if ((Item_GetAttributeFromStruct(v0, 34) != 0) || (Item_GetAttributeFromStruct(v0, 35) != 0)) {
        Heap_FreeToHeap(v0);
        sub_020866A0(param0, 0);
        return 6;
    }

    if ((Item_GetAttributeFromStruct(v0, 36) != 0) && (Item_GetAttributeFromStruct(v0, 37) == 0)) {
        Heap_FreeToHeap(v0);
        sub_020866A0(param0, 1);
        return 6;
    }

    if (sub_0209693C(param0->unk_5A4->unk_00, param0->unk_5A4->unk_24, param0->unk_B11, 0, 12) == 1) {
        sub_0207D60C(param0->unk_5A4->unk_04, param0->unk_5A4->unk_24, 1, 12);

        if (Item_GetAttributeFromStruct(v0, 26) != 0) {
            Pokemon * v1 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);

            param0->unk_5A4->unk_38 = sub_02076B94(NULL, v1, 3, param0->unk_5A4->unk_24, &param0->unk_5A4->unk_3C);
            param0->unk_5A4->unk_23 = 8;
            Heap_FreeToHeap(v0);
            return 32;
        }

        if ((Item_IsHerbalMedicine(param0->unk_5A4->unk_24) == 1) && (param0->unk_5A4->unk_10 != NULL)) {
            Pokemon * v2 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);
            sub_0206D90C(param0->unk_5A4->unk_10, v2, param0->unk_5A4->unk_24);
        }

        sub_020852B8(param0);
    } else {
        sub_02082708(param0, 105, 1);
        param0->unk_B11 = 7;
        param0->unk_B00 = sub_02085348;
    }

    Heap_FreeToHeap(v0);
    return 5;
}

static u8 sub_020811F4 (UnkStruct_0207F248 * param0)
{
    if (param0->unk_704[param0->unk_B11].unk_0C == 0) {
        return 0;
    } else if (Item_IsMail(param0->unk_704[param0->unk_B11].unk_0C) == 1) {
        return 2;
    }

    return 1;
}

static int sub_02081224 (UnkStruct_0207F248 * param0)
{
    Pokemon * v0;
    UnkStruct_0205AA50 * v1;
    int v2 = -1, v3;
    UnkStruct_0203CDB0 * v4;

    v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);
    v1 = &param0->unk_04[34];
    v4 = param0->unk_5A4->unk_1C;

    if (param0->unk_5A4->unk_24 == 112) {
        if (GetMonData(v0, MON_DATA_SPECIES, NULL) != 487) {
            sub_0200B1B8(param0->unk_69C, 203, param0->unk_6A8);
            sub_0200B5CC(param0->unk_6A0, 0, sub_02076B10(v0));
            sub_0200B744(param0->unk_6A0, 1, param0->unk_5A4->unk_24);
            sub_0200C388(param0->unk_6A0, param0->unk_6A4, param0->unk_6A8);
            v2 = 11;
        } else if (v4 != NULL) {
            if (v4->unk_1C->unk_00 == 466) {
                sub_0200B1B8(param0->unk_69C, 204, param0->unk_6A8);
                sub_0200B70C(param0->unk_6A0, 0, param0->unk_5A4->unk_24);
                sub_0200C388(param0->unk_6A0, param0->unk_6A4, param0->unk_6A8);
                v2 = 11;
            }
        }
    }

    if (v2 == -1) {
        switch (sub_020811F4(param0)) {
        case 0:
            if (Item_IsMail(param0->unk_5A4->unk_24) == 1) {
                param0->unk_5A4->unk_23 = 6;
                return 32;
            }

            v2 = sub_02081408(param0, v0, &v3);

            sub_0200B1B8(param0->unk_69C, 118, param0->unk_6A8);
            sub_0200B5CC(param0->unk_6A0, 0, sub_02076B10(v0));
            sub_0200B70C(param0->unk_6A0, 1, param0->unk_5A4->unk_24);
            sub_0200C388(param0->unk_6A0, param0->unk_6A4, param0->unk_6A8);
            break;
        case 1:
            sub_0200B1B8(param0->unk_69C, 78, param0->unk_6A8);
            sub_0200B5CC(param0->unk_6A0, 0, sub_02076B10(v0));
            sub_0200B744(param0->unk_6A0, 1, param0->unk_704[param0->unk_B11].unk_0C);
            sub_0200C388(param0->unk_6A0, param0->unk_6A4, param0->unk_6A8);
            v2 = 9;
            break;
        case 2:
            sub_0200B1B8(param0->unk_69C, 77, param0->unk_6A4);
            v2 = 11;
            break;
        }
    }

    sub_0200E060(v1, 1, (1 + 9), 15);
    sub_0201ADA4(v1, 15);
    sub_0208274C(param0);

    return v2;
}

static int sub_02081408 (UnkStruct_0207F248 * param0, Pokemon * param1, int * param2)
{
    u32 v0 = param0->unk_5A4->unk_24;
    UnkStruct_0203CDB0 * v1;

    v1 = param0->unk_5A4->unk_1C;

    sub_0207D60C(param0->unk_5A4->unk_04, param0->unk_5A4->unk_24, 1, 12);
    sub_02074B30(param1, 6, &v0);
    sub_02077928(param1);

    if ((v1 == NULL) || (v1->unk_1C->unk_00 < 573) || (v1->unk_1C->unk_00 > 583)) {
        *param2 = sub_02077A00(param1);
    } else {
        *param2 = -1;
    }

    param0->unk_704[param0->unk_B11].unk_0C = param0->unk_5A4->unk_24;
    sub_02083040(param0, param0->unk_B11, param0->unk_704[param0->unk_B11].unk_0C);

    if ((v0 == 112) && ((*param2) != -1)) {
        return 12;
    }

    return 11;
}

static void sub_020814A8 (UnkStruct_0207F248 * param0, Pokemon * param1, u32 param2, u32 param3)
{
    sub_0207D570(param0->unk_5A4->unk_04, (u16)param2, 1, 12);
    sub_02074B30(param1, 6, &param3);
    sub_02077928(param1);
    sub_02077A00(param1);
    param0->unk_704[param0->unk_B11].unk_0C = (u16)param3;
    sub_02083040(param0, param0->unk_B11, param0->unk_704[param0->unk_B11].unk_0C);
}

static int sub_0208150C (UnkStruct_0207F248 * param0)
{
    if (sub_0201D724(param0->unk_B10) == 0) {
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            return sub_0208170C(param0);
        }
    }

    return 11;
}

static int sub_0208153C (UnkStruct_0207F248 * param0)
{
    if (sub_0201D724(param0->unk_B10) == 0) {
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            sub_0200E084(&param0->unk_04[34], 1);
            sub_020819B4(param0);
            return 13;
        }
    }

    return 12;
}

static int sub_02081578 (UnkStruct_0207F248 * param0)
{
    if (ov118_021D0DBC(param0) == 1) {
        sub_020819CC(param0);

        return 11;
    }

    return 13;
}

static int sub_02081594 (UnkStruct_0207F248 * param0)
{
    if (sub_0201D724(param0->unk_B10) == 0) {
        sub_020827EC(param0);
        return 10;
    }

    return 9;
}

static int sub_020815B8 (UnkStruct_0207F248 * param0)
{
    int v0, v1;

    switch (sub_02002114(param0->unk_700, 12)) {
    case 0:
    {
        Pokemon * v2;
        UnkStruct_0205AA50 * v3;
        u32 v4;
        u32 v5;

        v2 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);
        v3 = &param0->unk_04[34];
        v4 = param0->unk_5A4->unk_24;
        v5 = param0->unk_704[param0->unk_B11].unk_0C;
        v0 = sub_02081408(param0, v2, &v1);

        if (sub_0207D570(param0->unk_5A4->unk_04, (u16)v5, 1, 12) == 0) {
            sub_020814A8(param0, v2, v4, v5);
            sub_0200B1B8(param0->unk_69C, 83, param0->unk_6A4);
            v0 = 11;
        } else {
            if (Item_IsMail(param0->unk_5A4->unk_24) == 1) {
                sub_0207D60C(param0->unk_5A4->unk_04, (u16)v5, 1, 12);
                sub_020814A8(param0, v2, v4, v5);
                param0->unk_5A4->unk_23 = 6;
                return 32;
            }

            sub_0200B1B8(param0->unk_69C, 84, param0->unk_6A8);
            sub_0200B70C(param0->unk_6A0, 1, v5);
            sub_0200B70C(param0->unk_6A0, 2, v4);
            sub_0200C388(param0->unk_6A0, param0->unk_6A4, param0->unk_6A8);

            if ((v4 != 112) && (v5 == 112) && (v1 != -1)) {
                v0 = 12;
            } else if ((v4 == 112) && (v5 == 112)) {
                v0 = 11;
            }
        }

        sub_0201ADA4(v3, 15);
        sub_0208274C(param0);
    }
        return v0;
    case 0xfffffffe:
        return sub_0208170C(param0);
    }

    return 10;
}

static int sub_0208170C (UnkStruct_0207F248 * param0)
{
    if (param0->unk_5A4->unk_20 == 10) {
        sub_0200E084(&param0->unk_04[34], 1);
        sub_020826E0(param0, 29, 1);
        sub_0200D414(param0->unk_5B0[6], 0);
        param0->unk_5A4->unk_20 = 0;
        return 1;
    }

    param0->unk_5A4->unk_23 = 10;
    return 32;
}

static int sub_02081760 (UnkStruct_0207F248 * param0)
{
    Pokemon * v0;
    UnkStruct_0205AA50 * v1;
    u32 v2;
    u32 v3;
    int v4, v5;

    v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);
    v1 = &param0->unk_04[34];
    v2 = param0->unk_5A4->unk_24;
    v3 = param0->unk_704[param0->unk_B11].unk_0C;
    v4 = sub_02081408(param0, v0, &v5);

    if ((v3 == 112) && (v4 == 11) && (v5 == 0)) {
        v4 = 12;
    }

    if (v3 == 0) {
        sub_0200B1B8(param0->unk_69C, 118, param0->unk_6A8);
        sub_0200B5CC(param0->unk_6A0, 0, sub_02076B10(v0));
        sub_0200B70C(param0->unk_6A0, 1, param0->unk_5A4->unk_24);
        sub_0200C388(param0->unk_6A0, param0->unk_6A4, param0->unk_6A8);
    } else {
        sub_0207D570(param0->unk_5A4->unk_04, (u16)v3, 1, 12);
        sub_0200B1B8(param0->unk_69C, 84, param0->unk_6A8);
        sub_0200B70C(param0->unk_6A0, 1, v3);
        sub_0200B70C(param0->unk_6A0, 2, v2);
        sub_0200C388(param0->unk_6A0, param0->unk_6A4, param0->unk_6A8);
    }

    sub_0200E060(v1, 1, (1 + 9), 15);
    sub_0201ADA4(v1, 15);
    sub_0208274C(param0);

    if (param0->unk_5A4->unk_20 == 12) {
        param0->unk_5A4->unk_20 = 10;
    }

    return v4;
}

static int sub_0208188C (UnkStruct_0207F248 * param0)
{
    if (param0->unk_704[param0->unk_B11].unk_12 == 0) {
        param0->unk_5A4->unk_23 = 0;
        return 32;
    }

    sub_0200D414(param0->unk_5B0[6], 1);
    sub_02082708(param0, 195, 1);
    param0->unk_B04.unk_00 = sub_02083A78;
    param0->unk_B04.unk_04 = sub_02083AA4;
    param0->unk_B0E = 26;
    return 24;
}

static BOOL sub_020818F8 (UnkStruct_0207F248 * param0)
{
    if ((param0->unk_5A4->unk_20 == 5) || (param0->unk_5A4->unk_20 == 6) || (param0->unk_5A4->unk_20 == 7) || (param0->unk_5A4->unk_20 == 8) || (param0->unk_5A4->unk_20 == 9) || (param0->unk_5A4->unk_20 == 11) || (param0->unk_5A4->unk_20 == 14) || (param0->unk_5A4->unk_20 == 16) || (param0->unk_5A4->unk_20 == 20)) {
        return 0;
    }

    return 1;
}

u32 sub_02081930 (void)
{
    return 20;
}

u32 sub_02081934 (void)
{
    return 21;
}

u32 sub_02081938 (void)
{
    return 19;
}

u32 sub_0208193C (void)
{
    return 18;
}

void sub_02081940 (u32 param0, u16 * param1, u16 * param2, u16 * param3)
{
    NNSG2dScreenData * v0;
    void * v1;
    u16 * v2;
    u32 v3;

    v1 = NARC_AllocAndReadWholeMemberByIndexPair(20, 22, param0);
    NNS_G2dGetUnpackedScreenData(v1, &v0);
    v2 = (u16 *)v0->rawData;

    for (v3 = 0; v3 < 6; v3++) {
        memcpy(&param1[v3 * 16], &v2[(0 + v3) * 32], 16 * 2);
        memcpy(&param2[v3 * 16], &v2[(6 + v3) * 32], 16 * 2);
        memcpy(&param3[v3 * 16], &v2[((6 + 6) + v3) * 32], 16 * 2);
    }

    Heap_FreeToHeap(v1);
}

void sub_020819B4 (UnkStruct_0207F248 * param0)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay118), 2);
    ov118_021D0D80(param0);
}

void sub_020819CC (UnkStruct_0207F248 * param0)
{
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay118));
}
