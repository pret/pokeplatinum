#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_02026324_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_defs/pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_0207AE68_decl.h"
#include "struct_decls/struct_0207CB08_decl.h"
#include "struct_decls/struct_0207D3C0_decl.h"
#include "struct_decls/struct_0209747C_decl.h"

#include "constdata/const_020EA02C.h"
#include "constdata/const_020F1E88.h"

#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_02014A84.h"
#include "functypes/funcptr_0203B7C0.h"
#include "functypes/funcptr_0203BC5C.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203D8AC.h"
#include "functypes/funcptr_02050904.h"
#include "struct_defs/struct_02068630.h"
#include "struct_defs/struct_020708E0.h"
#include "struct_defs/struct_020709CC.h"
#include "struct_defs/struct_02072014.h"
#include "struct_defs/struct_02081CF4.h"
#include "struct_defs/struct_02097728.h"
#include "struct_defs/struct_02098C44.h"
#include "struct_defs/struct_02098D38.h"
#include "overlay021/struct_ov21_021D0D80.h"
#include "overlay104/struct_ov104_0223F9E0.h"
#include "overlay104/struct_ov104_02241308.h"

#include "unk_02001AF4.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "narc.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02013A04.h"
#include "unk_02014A84.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "unk_02023790.h"
#include "unk_020244AC.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_0202631C.h"
#include "unk_02028124.h"
#include "unk_0202B604.h"
#include "unk_0202CD50.h"
#include "unk_0202D778.h"
#include "unk_02033200.h"
#include "unk_020366A0.h"
#include "map_header.h"
#include "unk_0203A6DC.h"
#include "unk_0203A9C8.h"
#include "unk_0203CC84.h"
#include "unk_0203D1B8.h"
#include "unk_0203E880.h"
#include "unk_020507CC.h"
#include "unk_020508D4.h"
#include "unk_020553DC.h"
#include "unk_020559DC.h"
#include "unk_020562F8.h"
#include "unk_02056720.h"
#include "unk_0205B33C.h"
#include "unk_0205C22C.h"
#include "unk_0205E7D0.h"
#include "unk_0205F180.h"
#include "unk_02061804.h"
#include "unk_020683F4.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "unk_0206B9D8.h"
#include "unk_0207064C.h"
#include "unk_0207070C.h"
#include "unk_02071D40.h"
#include "unk_02073C2C.h"
#include "party.h"
#include "unk_0207A274.h"
#include "unk_0207AE68.h"
#include "unk_0207CB08.h"
#include "item.h"
#include "unk_0207D3B8.h"
#include "unk_0208C324.h"
#include "unk_020972FC.h"
#include "unk_0209747C.h"
#include "unk_02097624.h"
#include "unk_020989DC.h"
#include "overlay005/ov5_021D0D80.h"
#include "overlay005/ov5_021D2F14.h"
#include "overlay005/ov5_021E1D20.h"

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_0203C540;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    u16 unk_04;
    int unk_08;
} UnkStruct_0203C7B8;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_0203C1C8;

typedef struct {
    void * unk_00;
    u16 unk_04;
} UnkStruct_0203BF6C;

static UnkStruct_020708E0 * sub_0203ABB4(void);
static u32 sub_0203ABD0(UnkStruct_0203CDB0 * param0);
static u32 sub_0203AC24(UnkStruct_0203CDB0 * param0);
static u32 sub_0203AC28(UnkStruct_0203CDB0 * param0);
static u32 sub_0203AC2C(UnkStruct_0203CDB0 * param0);
static u32 sub_0203AC34(UnkStruct_0203CDB0 * param0);
static u32 sub_0203AC3C(UnkStruct_0203CDB0 * param0);
static void sub_0203B318(UnkStruct_020708E0 * param0, u8 * param1, u32 param2, u8 param3);
static void sub_0203B4E8(UnkStruct_020708E0 * param0);
static void sub_0203B520(UnkStruct_020708E0 * param0);
static void sub_0203B558(UnkStruct_02022550 * param0, u32 param1);
static void sub_0203B588(UnkStruct_02022550 * param0, u16 param1, u16 param2);
static void sub_0203B5B4(UnkStruct_020708E0 * param0, u16 param1, u16 param2);
static void sub_0203B5E8(UnkStruct_02022550 * param0);
static BOOL sub_0203AC44(UnkStruct_020508D4 * param0);
static void sub_0203ADFC(UnkStruct_020508D4 * param0);
static BOOL sub_0203B244(UnkStruct_020508D4 * param0);
static u32 sub_0203AFCC(UnkStruct_020708E0 * param0, u8 * param1);
static void sub_0203B078(UnkStruct_020708E0 * param0);
static void sub_0203B2EC(UnkStruct_020708E0 * param0, UnkStruct_0203CDB0 * param1);
static void sub_0203B094(UnkStruct_020508D4 * param0);
static void sub_0203B200(UnkStruct_020508D4 * param0);
static void sub_0203B610(UnkStruct_020508D4 * param0);
static void sub_0203B64C(UnkStruct_020508D4 * param0);
static BOOL sub_0203B680(UnkStruct_020508D4 * param0);
static BOOL sub_0203B6A4(UnkStruct_020508D4 * param0);
static BOOL sub_0203B738(UnkStruct_020508D4 * param0);
static BOOL sub_0203BE8C(UnkStruct_020508D4 * param0);
static BOOL sub_0203BEB0(UnkStruct_020508D4 * param0);
static BOOL sub_0203BF00(UnkStruct_020508D4 * param0);
static BOOL sub_0203C000(UnkStruct_020508D4 * param0);
static BOOL sub_0203C024(UnkStruct_020508D4 * param0);
static BOOL sub_0203C050(UnkStruct_020508D4 * param0);
static BOOL sub_0203C07C(UnkStruct_020508D4 * param0);
static BOOL sub_0203C0A0(UnkStruct_020508D4 * param0);
static BOOL sub_0203C0F8(UnkStruct_020508D4 * param0);
static BOOL sub_0203B768(UnkStruct_020508D4 * param0);
static BOOL sub_0203B78C(UnkStruct_020508D4 * param0);
static BOOL sub_0203BBF4(UnkStruct_020508D4 * param0);
static BOOL sub_0203BC18(UnkStruct_020508D4 * param0);
static BOOL sub_0203BC5C(UnkStruct_020508D4 * param0);
static BOOL sub_0203BF38(UnkStruct_020508D4 * param0);
static void sub_0203BFC0(UnkStruct_020508D4 * param0);
static void sub_0203BF6C(UnkStruct_020508D4 * param0);
static BOOL sub_0203C1C8(UnkStruct_020508D4 * param0);
static void sub_0203C2D8(UnkStruct_020508D4 * param0, u16 param1);
static BOOL sub_0203C390(UnkStruct_020508D4 * param0);
BOOL sub_0203C434(UnkStruct_020508D4 * param0);
static void sub_0203C7B8(UnkStruct_020508D4 * param0);
static void sub_0203C8CC(UnkStruct_020508D4 * param0);
static BOOL sub_0203C164(UnkStruct_020508D4 * param0);

static const u32 Unk_020EA05C[][2] = {
    {0x0, (u32)sub_0203B680},
    {0x1, (u32)sub_0203B768},
    {0x2, (u32)sub_0203BBF4},
    {0x3, (u32)sub_0203BE8C},
    {0x4, (u32)sub_0203BF38},
    {0x5, (u32)sub_0203C000},
    {0x6, (u32)0xfffffffe},
    {0x7, (u32)sub_0203C07C},
    {0x8, (u32)sub_0203C164}
};

static const UnkStruct_ov104_0223F9E0 Unk_020EA0A4[] = {
    {
        0xCC,
        0x14,
        0x0,
        0x0,
        0x1,
        0x1,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        {0x34D8, 0x34D8, 0x34D8, 0x34D8, 0x0, 0x0},
        0x0,
        0x0
    },
    {
        0xAE,
        0x14,
        0x0,
        0x0,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        {0x34D9, 0x34D8, 0x34D9, 0x34D9, 0x0, 0x0},
        0x0,
        0x0
    }
};

static const u8 Unk_020EA020[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0xff
};

const u8 Unk_020EA02C[] = {
    0x0,
    0x1,
    0x2,
    0x4,
    0x3,
    0x5,
    0x6,
    0x7,
    0x8
};

static const u8 Unk_020EA01C[] = {
    0x3,
    0x5,
    0x8
};

BOOL sub_0203A9C8 (UnkStruct_0203CDB0 * param0)
{
    if (sub_0203A138(param0->unk_1C->unk_00) == 0) {
        return 0;
    }

    return 1;
}

void sub_0203A9E0 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_020708E0 * v0 = sub_0203ABB4();

    if (sub_0206AE5C(sub_020507E4(param0->unk_0C)) == 1) {
        v0->unk_224 = sub_0203AC24(param0);
    } else if (sub_0206AE8C(sub_020507E4(param0->unk_0C)) == 1) {
        v0->unk_224 = sub_0203AC28(param0);
    } else if (sub_0206C0D0(param0) == 1) {
        v0->unk_224 = sub_0203AC2C(param0);
    } else {
        v0->unk_224 = sub_0203ABD0(param0);
    }

    v0->unk_228 = 0;

    if (sub_0205F588(param0->unk_3C) == 1) {
        sub_0205F5E4(param0->unk_3C, sub_0205EA78(param0->unk_3C));
    }

    sub_02050904(param0, sub_0203AC44, v0);
}

void sub_0203AA78 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_020708E0 * v0 = sub_0203ABB4();

    v0->unk_224 = sub_0203AC34(param0);
    v0->unk_228 = 1;

    if (sub_0205F588(param0->unk_3C) == 1) {
        sub_0205F5E4(param0->unk_3C, sub_0205EA78(param0->unk_3C));
    }

    sub_02050904(param0, sub_0203AC44, v0);
}

void sub_0203AABC (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_020708E0 * v0 = sub_0203ABB4();

    v0->unk_224 = sub_0203AC3C(param0);
    v0->unk_228 = 0;

    if (sub_0205F588(param0->unk_3C) == 1) {
        sub_0205F5E4(param0->unk_3C, sub_0205EA78(param0->unk_3C));
    }

    sub_02050904(param0, sub_0203AC44, v0);
}

void sub_0203AB00 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_020708E0 * v0;

    sub_02005748(1533);
    v0 = sub_0203ABB4();

    v0->unk_228 = 0;

    if (sub_0206AE5C(sub_020507E4(param0->unk_0C)) == 1) {
        v0->unk_224 = sub_0203AC24(param0);
    } else if (sub_0206AE8C(sub_020507E4(param0->unk_0C)) == 1) {
        v0->unk_224 = sub_0203AC28(param0);
    } else if (sub_0206C0D0(param0) == 1) {
        v0->unk_224 = sub_0203AC2C(param0);
    } else if (param0->unk_70 == 3) {
        v0->unk_224 = sub_0203AC3C(param0);
    } else if (param0->unk_70 == 2) {
        v0->unk_224 = sub_0203AC34(param0);
        v0->unk_228 = 1;
    } else {
        v0->unk_224 = sub_0203ABD0(param0);
    }

    sub_02050924(param0->unk_10, sub_0203AC44, v0);
}

static UnkStruct_020708E0 * sub_0203ABB4 (void)
{
    UnkStruct_020708E0 * v0;

    v0 = Heap_AllocFromHeap(11, sizeof(UnkStruct_020708E0));

    v0->unk_2A = 0;
    v0->unk_28 = 0;
    v0->unk_25C = NULL;

    return v0;
}

static u32 sub_0203ABD0 (UnkStruct_0203CDB0 * param0)
{
    u32 v0 = 0;

    if (sub_02027520(sub_02027560(param0->unk_0C)) == 0) {
        v0 |= 0x1;
    }

    if (sub_0206B054(sub_020507E4(param0->unk_0C)) == 0) {
        v0 |= 0x2;
    }

    if (sub_0206A938(sub_020507E4(param0->unk_0C)) == 0) {
        v0 |= 0x4;
    }

    if (MapHeader_IsAmitySquare(param0->unk_1C->unk_00) == 1) {
        v0 |= 0x2;
        v0 |= 0x4;
    }

    v0 |= 0x80;
    v0 |= 0x100;

    return v0;
}

static u32 sub_0203AC24 (UnkStruct_0203CDB0 * param0)
{
    return 0x10 | 0x80;
}

static u32 sub_0203AC28 (UnkStruct_0203CDB0 * param0)
{
    return 0x10 | 0x80 | 0x4;
}

static u32 sub_0203AC2C (UnkStruct_0203CDB0 * param0)
{
    return 0x1 | 0x4 | 0x10 | 0x80 | 0x100;
}

static u32 sub_0203AC34 (UnkStruct_0203CDB0 * param0)
{
    return 0x10 | 0x100;
}

static u32 sub_0203AC3C (UnkStruct_0203CDB0 * param0)
{
    return 0x10 | 0x1 | 0x80 | 0x100;
}

static BOOL sub_0203AC44 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    switch (v1->unk_2A) {
    case 0:
        sub_02062C48(v0->unk_38);
        sub_0206842C(v0, &v1->unk_230);
        sub_02070728(v0, &v1->unk_24C);
        sub_0203ADFC(param0);
        sub_0203B094(param0);
        v1->unk_2A = 1;
        break;
    case 1:
        if (sub_0203B244(param0) == 0) {
            return 0;
        }
        break;
    case 2:
        sub_0203B610(param0);
        break;
    case 3:
        sub_0203B64C(param0);
        break;
    case 4:
        sub_0203BF6C(param0);
        break;
    case 5:
        sub_0203BFC0(param0);
        break;
    case 6:
        sub_0203C7B8(param0);
        break;
    case 7:
        sub_0203C8CC(param0);
        break;
    case 12:
        if (sub_020509DC(v0)) {
            sub_02062C48(v0->unk_38);
            sub_0203ADFC(param0);
            sub_0203B094(param0);
            ov5_021D1744(1);
            v1->unk_2A = 14;
        }
        break;
    case 8:
        if (sub_020509DC(v0)) {
            ov5_021D1744(1);
            v1->unk_2A = 9;
        }
        break;
    case 9:
        if (sub_0200F2AC()) {
            sub_0203B2EC(v1, v0);
            Heap_FreeToHeap(v1);
            sub_02062C78(v0->unk_38);
            return 1;
        }
        break;
    case 10:
        if (sub_020509DC(v0)) {
            sub_02062C48(v0->unk_38);
            ov5_021D1744(1);
            v1->unk_2A = 11;
        }
        break;
    case 11:
        if (sub_0200F2AC()) {
            sub_02050924(param0, v1->unk_22C, v1->unk_25C);
            Heap_FreeToHeap(v1);
        }
        break;
    case 15:
        Heap_FreeToHeap(v1);
        sub_02062C78(v0->unk_38);
        return 1;
    case 13:
        sub_0203B2EC(v1, v0);
        sub_0203B078(v1);
        sub_0200DC9C(&v1->unk_00, 1);
        sub_0201A8FC(&v1->unk_00);
        sub_0203B200(param0);
        sub_0201C3C0(v0->unk_08, 3);
        Heap_FreeToHeap(v1);
        sub_02062C78(v0->unk_38);
        return 1;
    case 14:
        if (sub_0200F2AC()) {
            v1->unk_2A = 1;
        }
        break;
    }

    if (v1->unk_20 != NULL) {
        sub_0203B520(v1);
        sub_020219F8(v1->unk_38.unk_00);
    }

    return 0;
}

static void sub_0203ADFC (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_0200B144 * v2;
    UnkStruct_02081CF4 v3;
    u32 v4, v5;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);
    v5 = sub_0203AFCC(v1, v1->unk_30);

    sub_0201A7E8(v0->unk_08, &v1->unk_00, 3, 20, 1, 11, v5 * 3, 12, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (11 * 22)));
    sub_0200DAA4(v0->unk_08, 3, 1024 - (18 + 12) - 9, 11, 1, 11);
    sub_0200DC48(&v1->unk_00, 1, 1024 - (18 + 12) - 9, 11);

    v2 = sub_0200B144(0, 26, 367, 11);

    v1->unk_24 = sub_02013A04(v5, 11);
    v1->unk_28 = 0;

    for (v4 = 0; v4 < v5; v4++) {
        if (v1->unk_30[v4] == 3) {
            UnkStruct_0200B358 * v6;
            UnkStruct_02023790 * v7;
            UnkStruct_02023790 * v8;

            v6 = sub_0200B358(11);
            v7 = sub_02023790(8, 11);
            v8 = sub_0200B1EC(v2, Unk_020EA05C[v1->unk_30[v4]][0]);

            sub_0200B498(v6, 0, sub_02025E38(v0->unk_0C));
            sub_0200C388(v6, v7, v8);
            sub_02013A6C(v1->unk_24, v7, v1->unk_30[v4]);
            sub_020237BC(v8);
            sub_020237BC(v7);
            sub_0200B3F0(v6);
        } else {
            sub_02013A4C(
                v1->unk_24, v2, Unk_020EA05C[v1->unk_30[v4]][0], v1->unk_30[v4]);
        }

        if (v0->unk_90 == v1->unk_30[v4]) {
            v1->unk_28 = v4;
        }
    }

    v0->unk_90 = v1->unk_30[v1->unk_28];
    sub_0200B190(v2);

    v3.unk_00 = v1->unk_24;
    v3.unk_04 = &v1->unk_00;
    v3.unk_08 = 1;
    v3.unk_09 = 1;
    v3.unk_0A = v5;
    v3.unk_0B_0 = 8;
    v3.unk_0B_4 = 1;

    if (v5 >= 4) {
        v3.unk_0B_6 = 1;
    } else {
        v3.unk_0B_6 = 0;
    }

    v1->unk_20 = sub_02001AF4(&v3, 28, 4, v1->unk_28, 11, PAD_BUTTON_B | PAD_BUTTON_X);

    sub_0201A9A4(&v1->unk_00);
    sub_0203B318(v1, v1->unk_30, v5, sub_02025F30(sub_02025E38(v0->unk_0C)));
}

static u32 sub_0203AFCC (UnkStruct_020708E0 * param0, u8 * param1)
{
    u32 v0 = 0;

    if ((param0->unk_224 & 0x100) == 0) {
        param1[v0] = 8;
        v0++;
    }

    if ((param0->unk_224 & 0x80) == 0) {
        param1[v0] = 7;
        v0++;
    }

    if ((param0->unk_224 & 0x1) == 0) {
        param1[v0] = 0;
        v0++;
    }

    if ((param0->unk_224 & 0x2) == 0) {
        param1[v0] = 1;
        v0++;
    }

    if ((param0->unk_224 & 0x4) == 0) {
        param1[v0] = 2;
        v0++;
    }

    if ((param0->unk_224 & 0x8) == 0) {
        param1[v0] = 3;
        v0++;
    }

    if ((param0->unk_224 & 0x10) == 0) {
        param1[v0] = 4;
        v0++;
    }

    if ((param0->unk_224 & 0x20) == 0) {
        param1[v0] = 5;
        v0++;
    }

    if ((param0->unk_224 & 0x40) == 0) {
        param1[v0] = 6;
        v0++;
    }

    return v0;
}

static void sub_0203B078 (UnkStruct_020708E0 * param0)
{
    sub_0203B4E8(param0);
    sub_02001BC4(param0->unk_20, NULL);
    sub_02013A3C(param0->unk_24);

    param0->unk_20 = NULL;
}

static void sub_0203B094 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_0200B144 * v2;
    UnkStruct_0200B358 * v3;
    UnkStruct_02023790 * v4;
    UnkStruct_02023790 * v5;
    u8 v6;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    if (sub_0206AE5C(sub_020507E4(v0->unk_0C)) == 1) {
        v6 = 0;
    } else if (sub_0206AE8C(sub_020507E4(v0->unk_0C)) == 1) {
        v6 = 1;
    } else {
        return;
    }

    sub_0201A7E8(v0->unk_08, &v1->unk_10, 3, 1, 1, 12, 4, 13, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4))));
    sub_0200DAA4(v0->unk_08, 3, 1024 - (18 + 12) - 9, 11, 1, 11);
    sub_0200DC48(&v1->unk_10, 1, 1024 - (18 + 12) - 9, 11);
    sub_0201ADA4(&v1->unk_10, 15);

    v2 = sub_0200B144(0, 26, 367, 11);

    if (v6 == 0) {
        v5 = sub_0200B1EC(v2, 9);
    } else {
        v5 = sub_0200B1EC(v2, 10);
    }

    sub_0201D738(&v1->unk_10, 0, v5, 0, 0, 0xff, NULL);
    sub_020237BC(v5);

    v3 = sub_0200B358(11);
    v4 = sub_02023790(32, 11);
    v5 = sub_0200B1EC(v2, 11);

    if (v6 == 0) {
        u16 * v7 = sub_0203A784(sub_0203A790(v0->unk_0C));

        sub_0200B60C(v3, 0, *v7, 2, 0, 1);
    } else {
        int v8 = sub_020563BC(v0);

        sub_0200B60C(v3, 0, v8, 2, 0, 1);
    }

    sub_0200C388(v3, v4, v5);
    sub_0201D738(&v1->unk_10, 0, v4, 0, 16, 0xff, NULL);
    sub_020237BC(v4);
    sub_020237BC(v5);
    sub_0200B3F0(v3);
    sub_0200B190(v2);
    sub_0201A9A4(&v1->unk_10);
}

static void sub_0203B200 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    if ((sub_0206AE5C(sub_020507E4(v0->unk_0C)) == 0) && (sub_0206AE8C(sub_020507E4(v0->unk_0C)) == 0)) {
        return;
    }

    sub_0200DC9C(&v1->unk_10, 1);
    sub_0201A8FC(&v1->unk_10);
}

static BOOL sub_0203B244 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    u16 v2;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);
    v2 = sub_02001DC4(v1->unk_20);

    v1->unk_2C = sub_02001C94(v1->unk_20, 1504);
    v1->unk_28 = sub_02001DC4(v1->unk_20);

    if (v2 != v1->unk_28) {
        sub_0203B558(v1->unk_200[0]->unk_00, v1->unk_28);
        sub_0203B5B4(v1, v2, v1->unk_28);
        v0->unk_90 = v1->unk_30[v1->unk_28];
    }

    sub_0203B5E8(v1->unk_200[1 + v1->unk_28]->unk_00);

    switch (v1->unk_2C) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        v1->unk_2A = 13;
        break;
    default:
        if (Unk_020EA05C[v1->unk_2C][1] == 0xfffffffe) {
            v1->unk_2A = 13;
        } else if (Unk_020EA05C[v1->unk_2C][1] != 0xffffffff) {
            UnkFuncPtr_02050904 v3 = (UnkFuncPtr_02050904)Unk_020EA05C[v1->unk_2C][1];

            return v3(param0);
        }
    }

    return 1;
}

static void sub_0203B2EC (UnkStruct_020708E0 * param0, UnkStruct_0203CDB0 * param1)
{
    if (sub_02033E1C()) {
        if (param0->unk_228) {
            sub_0205C2B0(param1->unk_80);

            sub_02036AC4();
            sub_0205BEA8(0);
        }
    }
}

static void sub_0203B318 (UnkStruct_020708E0 * param0, u8 * param1, u32 param2, u8 param3)
{
    UnkStruct_ov104_02241308 v0 = {
        8, 1, 2, 2, 0, 0
    };
    u32 v1;
    NARC * v2;

    ov5_021D3190(&param0->unk_38, &v0, (7 + 1), 11);

    v2 = NARC_ctor(66, 11);

    ov5_021D32E8(&param0->unk_38, v2, 5, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);
    ov5_021D3374(&param0->unk_38, v2, 1, 0, 13528);
    ov5_021D339C(&param0->unk_38, v2, 0, 0, 13528);
    ov5_021D3414(&param0->unk_38, v2, 2, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);

    param0->unk_200[0] = ov5_021D3584(&param0->unk_38, &Unk_020EA0A4[0]);

    sub_0203B558(param0->unk_200[0]->unk_00, param0->unk_28);

    ov5_021D3374(&param0->unk_38, v2, 4, 0, 13529);
    ov5_021D339C(&param0->unk_38, v2, 3, 0, 13529);
    ov5_021D3414(&param0->unk_38, v2, 6, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 13529);

    for (v1 = 0; v1 < param2; v1++) {
        UnkStruct_ov104_0223F9E0 v3;

        v3 = Unk_020EA0A4[1];
        v3.unk_02 += 24 * v1;

        if ((param1[v1] == 2) && (param3 == 1)) {
            v3.unk_06 = 9 * 3;
        } else {
            v3.unk_06 = param1[v1] * 3;
        }

        param0->unk_200[1 + v1] = ov5_021D3584(&param0->unk_38, &v3);

        {
            VecFx32 v4 = {FX32_ONE, FX32_ONE, FX32_ONE};
            sub_02021C80(param0->unk_200[1 + v1]->unk_00, &v4, 1);
        }
    }

    sub_0203B588(param0->unk_200[1 + param0->unk_28]->unk_00, 2, 1);

    param0->unk_220 = param2 + 1;

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    NARC_dtor(v2);
}

static void sub_0203B4E8 (UnkStruct_020708E0 * param0)
{
    u16 v0;

    for (v0 = 0; v0 < param0->unk_220; v0++) {
        sub_0200D0F4(param0->unk_200[v0]);
    }

    ov5_021D375C(&param0->unk_38);
}

static void sub_0203B520 (UnkStruct_020708E0 * param0)
{
    u16 v0;

    for (v0 = 0; v0 < param0->unk_220; v0++) {
        sub_02021E2C(param0->unk_200[v0]->unk_00, FX32_ONE);
    }
}

static void sub_0203B558 (UnkStruct_02022550 * param0, u32 param1)
{
    VecFx32 v0;

    v0 = *(sub_02021D28(param0));
    v0.y = (20 + 24 * param1) * FX32_ONE;

    sub_02021C50(param0, &v0);
}

static void sub_0203B588 (UnkStruct_02022550 * param0, u16 param1, u16 param2)
{
    u32 v0 = sub_02021E24(param0);

    sub_02021D6C(param0, (v0 / 3) * 3 + param1);
    sub_02021EC4(param0, param2);
}

static void sub_0203B5B4 (UnkStruct_020708E0 * param0, u16 param1, u16 param2)
{
    sub_0203B588(param0->unk_200[1 + param1]->unk_00, 0, 0);
    sub_0203B588(param0->unk_200[1 + param2]->unk_00, 1, 1);
}

static void sub_0203B5E8 (UnkStruct_02022550 * param0)
{
    if ((sub_02021E24(param0) % 3) != 1) {
        return;
    }

    if (sub_02021FD0(param0) == 0) {
        sub_0203B588(param0, 2, 1);
    }
}

static void sub_0203B610 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    if (sub_0200F2AC() == 0) {
        return;
    }

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    sub_0203B078(v1);
    sub_0201A8FC(&v1->unk_00);
    sub_0203B200(param0);

    v1->unk_22C(param0);
    v1->unk_2A = 3;
}

static void sub_0203B64C (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    if (sub_020509B4(v0)) {
        return;
    }

    v1->unk_22C(param0);
}

void sub_0203B674 (UnkStruct_020708E0 * param0, void * param1)
{
    param0->unk_22C = param1;
    param0->unk_2A = 3;
}

static BOOL sub_0203B680 (UnkStruct_020508D4 * param0)
{
    UnkStruct_020708E0 * v0;

    v0 = sub_02050A64(param0);

    ov5_021D1744(0);

    v0->unk_22C = sub_0203B6A4;
    v0->unk_2A = 2;

    return 1;
}

static BOOL sub_0203B6A4 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_ov21_021D0D80 * v2;
    UnkStruct_02026324 * v3;
    UnkStruct_02025E6C * v4;
    UnkStruct_020507E4 * v5;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);
    v2 = Heap_AllocFromHeap(11, sizeof(UnkStruct_ov21_021D0D80));
    v3 = sub_02027560(v0->unk_0C);
    v4 = sub_02025E38(v0->unk_0C);
    v5 = sub_020507E4(v0->unk_0C);

    v2->unk_00 = v3;
    v2->unk_04 = v4;
    v2->unk_08 = sub_02055BA8(v0);
    v2->unk_0C = sub_0206B1F0(v5, 0);
    v2->unk_10 = sub_0206B1F0(v5, 1);
    v2->unk_14 = sub_0206B1F0(v5, 2);
    v2->unk_18 = sub_0206B1F0(v5, 3);
    v2->unk_1C = v0->unk_B4;

    sub_0203E0AC(v0, v2);

    v1->unk_25C = v2;
    v1->unk_22C = sub_0203B738;

    return 0;
}

static BOOL sub_0203B738 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    sub_020509D4(v0);

    if (v1->unk_25C != NULL) {
        Heap_FreeToHeapExplicit(11, v1->unk_25C);
    }

    v1->unk_2A = 12;

    return 0;
}

static BOOL sub_0203B768 (UnkStruct_020508D4 * param0)
{
    UnkStruct_020708E0 * v0;

    v0 = sub_02050A64(param0);

    ov5_021D1744(0);

    v0->unk_22C = sub_0203B78C;
    v0->unk_2A = 2;

    return 1;
}

static BOOL sub_0203B78C (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    v1->unk_25C = sub_0203D390(v0, &v1->unk_24C, 0);
    v1->unk_22C = sub_0203B7C0;

    return 0;
}

BOOL sub_0203B7C0 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_02098C44 * v2;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);
    v2 = (UnkStruct_02098C44 *)Heap_AllocFromHeap(11, sizeof(UnkStruct_02098C44));

    memcpy(v2, v1->unk_25C, sizeof(UnkStruct_02098C44));
    Heap_FreeToHeap(v1->unk_25C);

    switch (v2->unk_23) {
    case 1:
    {
        UnkStruct_02098D38 * v3 = Heap_AllocFromHeap(11, sizeof(UnkStruct_02098D38));

        v3->unk_00 = Party_GetFromSavedata(v0->unk_0C);
        v3->unk_04 = sub_02025E44(v0->unk_0C);
        v3->unk_11 = 1;
        v3->unk_14 = v2->unk_22;
        v3->unk_13 = (u8)Party_GetCurrentCount(v3->unk_00);
        v3->unk_18 = 0;
        v3->unk_12 = 0;
        v3->unk_20 = sub_0202D79C(v0->unk_0C);
        v3->unk_1C = sub_0207A274(v0->unk_0C);
        v3->unk_2C = sub_0208C324(v0->unk_0C);
        v3->unk_28 = NULL;

        sub_0208D720(v3, Unk_020EA02C);
        sub_0208E9C0(v3, sub_02025E38(v0->unk_0C));
        sub_0203D334(v0, v3);

        v1->unk_25C = v3;
        sub_0203B674(v1, sub_0203C1C8);
    }
    break;
    case 4:
    {
        UnkStruct_02098D38 * v4 = Heap_AllocFromHeap(11, sizeof(UnkStruct_02098D38));

        v4->unk_00 = Party_GetFromSavedata(v0->unk_0C);
        v4->unk_04 = sub_02025E44(v0->unk_0C);
        v4->unk_11 = 1;
        v4->unk_14 = v2->unk_22;
        v4->unk_13 = 1;
        v4->unk_18 = v2->unk_26;
        v4->unk_12 = 2;
        v4->unk_1C = sub_0207A274(v0->unk_0C);
        v4->unk_2C = sub_0208C324(v0->unk_0C);
        v4->unk_28 = NULL;

        sub_0208D720(v4, Unk_020EA01C);
        sub_0208E9C0(v4, sub_02025E38(v0->unk_0C));
        sub_0203D334(v0, v4);

        {
            UnkStruct_0203C1C8 * v5 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0203C1C8));

            v5->unk_00 = v2->unk_24;
            v5->unk_02 = 0;
            v1->unk_260 = v5;
        }

        v1->unk_25C = v4;
        sub_0203B674(v1, sub_0203C1C8);
    }
    break;
    case 5:
    {
        UnkStruct_02098D38 * v6 = Heap_AllocFromHeap(11, sizeof(UnkStruct_02098D38));

        v6->unk_00 = Party_GetFromSavedata(v0->unk_0C);
        v6->unk_04 = sub_02025E44(v0->unk_0C);
        v6->unk_11 = 1;
        v6->unk_14 = v2->unk_22;
        v6->unk_13 = 1;
        v6->unk_18 = v2->unk_26;
        v6->unk_12 = 2;
        v6->unk_1C = sub_0207A274(v0->unk_0C);
        v6->unk_2C = sub_0208C324(v0->unk_0C);
        v6->unk_28 = NULL;

        sub_0208D720(v6, Unk_020EA01C);
        sub_0208E9C0(v6, sub_02025E38(v0->unk_0C));
        sub_0203D334(v0, v6);

        {
            UnkStruct_0203C1C8 * v7 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0203C1C8));

            v7->unk_00 = 0;
            v7->unk_02 = (u16)v2->unk_34;
            v1->unk_260 = v7;
        }

        v1->unk_25C = v6;
        sub_0203B674(v1, sub_0203C1C8);
    }
    break;
    case 6:
    {
        UnkStruct_02097728 * v8;

        v8 = sub_0203D920(v0, 2, v2->unk_22, sub_0207D2F0(v2->unk_24), 11);
        v1->unk_25C = v8;

        if (v2->unk_20 == 10) {
            v1->unk_260 = sub_0203C540(
                v2->unk_24, 0, v2->unk_22);
        } else {
            v1->unk_260 = sub_0203C540(
                v2->unk_24, 1, v2->unk_22);
        }

        sub_0203B674(v1, sub_0203C558);
    }
    break;
    case 7:
    {
        UnkStruct_02097728 * v9;
        Pokemon * v10;

        v10 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v2->unk_22);
        v9 = sub_0203D984(v0, v10, 11);

        v1->unk_25C = v9;
        v1->unk_260 = sub_0203C540(v2->unk_24, 2, v2->unk_22);

        sub_0203B674(v1, sub_0203C558);
    }
    break;
    case 3:
    {
        UnkStruct_0207D3C0 * v11;
        void * v12;
        u32 * v13;

        v13 = (u32 *)Heap_AllocFromHeap(11, 4);
        *v13 = v2->unk_22;
        v1->unk_260 = (void *)v13;

        v11 = sub_0207D990(v0->unk_0C);
        v12 = sub_02025E38(v0->unk_0C);
        v1->unk_25C = sub_0207D824(v11, Unk_020EA020, 11);

        sub_0207CB2C(v1->unk_25C, v0->unk_0C, 1, v0->unk_98);
    }

        sub_0203D1E4(v0, v1->unk_25C);
        sub_0203B674(v1, sub_0203BC5C);
        break;
    case 8:
    {
        UnkStruct_0203C7B8 * v14 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0203C7B8));

        v14->unk_02 = v2->unk_24;
        v14->unk_01 = 3;
        v14->unk_00 = v2->unk_22;
        v14->unk_04 = v2->unk_38;
        v14->unk_08 = v2->unk_3C;

        v1->unk_25C = v14;
        v1->unk_2A = 6;
    }
    break;
    case 9:
    {
        UnkStruct_0203C7B8 * v15 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0203C7B8));

        v15->unk_02 = MapHeader_GetMapEvolutionMethod(v0->unk_1C->unk_00);
        v15->unk_01 = 0;
        v15->unk_00 = v2->unk_22;
        v15->unk_04 = v2->unk_38;
        v15->unk_08 = v2->unk_3C;
        v1->unk_25C = v15;
        v1->unk_2A = 6;
    }
    break;
    case 16:
    case 11:
    case 12:
    case 15:
    case 14:
    case 13:
    case 18:
    case 17:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    {
        UnkFuncPtr_0203B7C0 v16;
        UnkStruct_020709CC v17;

        v17.unk_06 = v2->unk_23 - 11;
        v17.unk_04 = v2->unk_22;
        v17.unk_00 = param0;

        v16 = (UnkFuncPtr_0203B7C0)sub_0207070C(0, v17.unk_06);
        v16(&v17, &v1->unk_24C);
    }
    break;
    case 10:
        v1->unk_25C = sub_0203D20C(v0, &v1->unk_230);
        sub_0203B674(v1, sub_0203BC5C);
        break;
    default:
        if ((v2->unk_20 == 5) || (v2->unk_20 == 6) || (v2->unk_20 == 7) || (v2->unk_20 == 16) || (v2->unk_20 == 8)) {
            v1->unk_25C = sub_0203D20C(v0, &v1->unk_230);

            if (v2->unk_22 >= 6) {
                sub_0207CB70(v1->unk_25C, 0);
            } else {
                sub_0207CB70(v1->unk_25C, v2->unk_22);
            }

            sub_0203B674(v1, sub_0203BC5C);
        } else if (v2->unk_20 == 9) {
            v1->unk_25C = sub_0203D20C(v0, &v1->unk_230);
            sub_0203B674(v1, sub_0203BC5C);
        } else {
            sub_020509D4(v0);
            v1->unk_2A = 12;
        }
    }

    Heap_FreeToHeap(v2);

    return 0;
}

static BOOL sub_0203BBF4 (UnkStruct_020508D4 * param0)
{
    UnkStruct_020708E0 * v0;

    v0 = sub_02050A64(param0);

    ov5_021D1744(0);

    v0->unk_22C = sub_0203BC18;
    v0->unk_2A = 2;

    return 1;
}

static BOOL sub_0203BC18 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    v1->unk_25C = sub_0203D20C(v0, &v1->unk_230);
    sub_0207CB70(v1->unk_25C, 0);
    v1->unk_22C = sub_0203BC5C;

    ov5_021E2064(v0);

    return 0;
}

static BOOL sub_0203BC5C (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_0207CB08 * v2;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);
    v2 = sub_0207CB08(11);

    memcpy(v2, v1->unk_25C, sub_0207CB20());
    Heap_FreeToHeap(v1->unk_25C);

    switch (sub_0207CB9C(v2)) {
    case 0:
    {
        UnkFuncPtr_0203BC5C v3;
        UnkStruct_02068630 v4;
        s32 v5;

        v4.unk_04 = sub_0207CB94(v2);
        v4.unk_06 = sub_0207CBA4(v2);
        v4.unk_00 = param0;
        v5 = Item_GetAttribute(v4.unk_04, 6, 11);
        v3 = (UnkFuncPtr_0203BC5C)sub_020683F4(0, v5);
        v3(&v4, &v1->unk_230);
    }
    break;
    case 1:
        sub_0203C2D8(param0, sub_0207CB94(v2));
        break;
    case 2:
    {
        UnkStruct_02098C44 * v6;

        v6 = Heap_AllocFromHeap(11, sizeof(UnkStruct_02098C44));
        memset(v6, 0, sizeof(UnkStruct_02098C44));

        v6->unk_00 = Party_GetFromSavedata(v0->unk_0C);
        v6->unk_04 = sub_0207D990(v0->unk_0C);
        v6->unk_08 = sub_02028430(v0->unk_0C);
        v6->unk_0C = sub_02025E44(v0->unk_0C);
        v6->unk_18 = &v1->unk_24C;
        v6->unk_21 = 0;
        v6->unk_20 = 9;
        v6->unk_24 = sub_0207CB94(v2);
        v6->unk_1C = v0;

        sub_0203CD84(v0, &Unk_020F1E88, v6);
        v1->unk_25C = v6;
        sub_0203B674(v1, sub_0203B7C0);
    }
    break;
    case 4:
    {
        Party * v7;
        Pokemon * v8;
        u32 v9;
        u16 v10;

        v7 = Party_GetFromSavedata(v0->unk_0C);
        v9 = *(u32 *)v1->unk_260;
        v10 = sub_0207CB94(v2);
        v8 = Party_GetPokemonBySlotIndex(v7, v9);

        Heap_FreeToHeap(v1->unk_260);

        if ((Item_IsMail(v10) == 1) && (sub_02074470(v8, 6, NULL) == 0)) {
            UnkStruct_02097728 * v11;
            UnkStruct_0203C540 * v12;

            v11 = sub_0203D920(v0, 2, v9, sub_0207D2F0(v10), 11);
            v1->unk_25C = v11;
            v1->unk_260 = sub_0203C540(v10, 0, (u8)v9);
            sub_0203B674(v1, sub_0203C558);
        } else {
            UnkStruct_02098C44 * v13;

            v13 = Heap_AllocFromHeap(11, sizeof(UnkStruct_02098C44));
            memset(v13, 0, sizeof(UnkStruct_02098C44));

            v13->unk_00 = v7;
            v13->unk_04 = sub_0207D990(v0->unk_0C);
            v13->unk_08 = sub_02028430(v0->unk_0C);
            v13->unk_0C = sub_02025E44(v0->unk_0C);
            v13->unk_18 = &v1->unk_24C;
            v13->unk_21 = 0;
            v13->unk_24 = sub_0207CB94(v2);
            v13->unk_22 = (u8)v9;
            v13->unk_1C = v0;

            if (v13->unk_24 == 0) {
                v13->unk_20 = 0;
            } else {
                v13->unk_20 = 10;
            }

            sub_0203CD84(v0, &Unk_020F1E88, v13);
            v1->unk_25C = v13;
            sub_0203B674(v1, sub_0203B7C0);
        }
    }
    break;
    case 5:
    default:
        sub_020509D4(v0);
        v1->unk_2A = 12;
    }

    Heap_FreeToHeap(v2);

    return 0;
}

static BOOL sub_0203BE8C (UnkStruct_020508D4 * param0)
{
    UnkStruct_020708E0 * v0;

    v0 = sub_02050A64(param0);

    ov5_021D1744(0);

    v0->unk_22C = sub_0203BEB0;
    v0->unk_2A = 2;

    return 1;
}

static BOOL sub_0203BEB0 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    v1->unk_25C = sub_02071F04(11);

    sub_02071D40(1, 1, 0, 0xff, v0, (UnkStruct_02072014 *)v1->unk_25C);
    sub_0203E09C(v0, (UnkStruct_02072014 *)v1->unk_25C);

    v1->unk_22C = sub_0203BF00;
    return 0;
}

static BOOL sub_0203BF00 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    sub_020721D4(v0, (UnkStruct_02072014 *)v1->unk_25C);
    sub_02071F20((UnkStruct_02072014 *)v1->unk_25C);
    sub_020509D4(v0);

    v1->unk_2A = 12;

    return 0;
}

static BOOL sub_0203BF38 (UnkStruct_020508D4 * param0)
{
    UnkStruct_020708E0 * v0 = sub_02050A64(param0);

    sub_0203B078(v0);
    sub_0200DC9C(&v0->unk_00, 1);
    sub_0201C3C0(v0->unk_00.unk_00, v0->unk_00.unk_04);
    sub_0201A8FC(&v0->unk_00);
    sub_0203B200(param0);

    v0->unk_2A = 4;

    return 1;
}

static void sub_0203BF6C (UnkStruct_020508D4 * param0)
{
    UnkStruct_020708E0 * v0 = sub_02050A64(param0);
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);
    UnkStruct_0203BF6C * v2;

    if (sub_020247E0(v1->unk_0C)) {
        sub_0203E8E0(param0, 2034, NULL, NULL);
    } else {
        v0->unk_25C = Heap_AllocFromHeap(32, sizeof(UnkStruct_0203BF6C));
        v2 = v0->unk_25C;
        v2->unk_04 = 0;

        sub_0203E8E0(param0, 2005, NULL, &v2->unk_04);
    }

    v0->unk_2A = 5;
}

static void sub_0203BFC0 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_020708E0 * v1 = sub_02050A64(param0);
    UnkStruct_0203BF6C * v2 = v1->unk_25C;

    if (sub_020247E0(v0->unk_0C)) {
        v1->unk_2A = 0;
    } else {
        if (v2->unk_04 == 0) {
            v1->unk_2A = 0;
        } else {
            v1->unk_2A = 15;
        }

        Heap_FreeToHeap(v2);
    }
}

static BOOL sub_0203C000 (UnkStruct_020508D4 * param0)
{
    UnkStruct_020708E0 * v0;

    v0 = sub_02050A64(param0);

    ov5_021D1744(0);

    v0->unk_22C = sub_0203C024;
    v0->unk_2A = 2;

    return 1;
}

static BOOL sub_0203C024 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    v1->unk_25C = sub_0203D8EC(v0);
    v1->unk_22C = sub_0203C050;

    return 0;
}

static BOOL sub_0203C050 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    Heap_FreeToHeap(v1->unk_25C);
    sub_020509D4(v0);

    v1->unk_2A = 12;

    return 0;
}

static BOOL sub_0203C07C (UnkStruct_020508D4 * param0)
{
    UnkStruct_020708E0 * v0;

    v0 = sub_02050A64(param0);

    ov5_021D1744(0);

    v0->unk_22C = sub_0203C0A0;
    v0->unk_2A = 2;

    return 1;
}

static BOOL sub_0203C0A0 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_02014A84 v2;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    v1->unk_25C = sub_0209747C(2, 0, v0->unk_0C, 11);

    sub_02014A9C(&v2, 4);
    sub_02097500(v1->unk_25C, &v2);
    sub_0203D874(v0, (UnkStruct_0209747C *)v1->unk_25C);

    v1->unk_22C = sub_0203C0F8;

    return 0;
}

static BOOL sub_0203C0F8 (UnkStruct_020508D4 * param0)
{
    UnkStruct_02014A84 v0;
    UnkStruct_0203CDB0 * v1;
    UnkStruct_020708E0 * v2;

    v1 = sub_02050A60(param0);
    v2 = sub_02050A64(param0);

    if (sub_02097528(v2->unk_25C) == 0) {
        sub_02097540(v2->unk_25C, &v0);

        if (sub_02033E1C()) {
            sub_0205C12C(&v0);
            sub_0205C010(v1->unk_7C, &v0);
        }

        v2->unk_2A = 8;
    } else {
        v2->unk_2A = 12;
    }

    sub_020974EC((UnkStruct_0209747C *)v2->unk_25C);
    sub_020509D4(v1);
    sub_0205C2B0(v1->unk_80);

    return 0;
}

static BOOL sub_0203C164 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    sub_0203B078(v1);
    sub_0200DC9C(&v1->unk_00, 1);
    sub_0201C3C0(v1->unk_00.unk_00, v1->unk_00.unk_04);
    sub_0201A8FC(&v1->unk_00);
    sub_0203B200(param0);

    if (sub_0206AE5C(sub_020507E4(v0->unk_0C)) == 1) {
        sub_0203E918(param0, 8821, NULL);
    } else {
        sub_0203E918(param0, 4, NULL);
    }

    Heap_FreeToHeap(v1);
    return 0;
}

static BOOL sub_0203C1C8 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_02098D38 * v2;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);
    v2 = Heap_AllocFromHeap(11, sizeof(UnkStruct_02098D38));

    memcpy(v2, v1->unk_25C, sizeof(UnkStruct_02098D38));
    Heap_FreeToHeap(v1->unk_25C);

    switch (v2->unk_12) {
    case 2:
    {
        UnkStruct_02098C44 * v3;
        UnkStruct_0203C1C8 * v4;

        v3 = Heap_AllocFromHeap(11, sizeof(UnkStruct_02098C44));
        v4 = (UnkStruct_0203C1C8 *)v1->unk_260;

        memset(v3, 0, sizeof(UnkStruct_02098C44));

        v3->unk_00 = Party_GetFromSavedata(v0->unk_0C);
        v3->unk_04 = sub_0207D990(v0->unk_0C);
        v3->unk_08 = sub_02028430(v0->unk_0C);
        v3->unk_0C = sub_02025E44(v0->unk_0C);
        v3->unk_18 = &v1->unk_24C;
        v3->unk_21 = 0;
        v3->unk_1C = v0;

        if (v4->unk_00 != 0) {
            v3->unk_20 = 7;
            v3->unk_34 = 0;
        } else {
            v3->unk_20 = 8;
            v3->unk_34 = v4->unk_02;
        }

        v3->unk_24 = v4->unk_00;
        v3->unk_22 = v2->unk_14;
        v3->unk_26 = v2->unk_18;
        v3->unk_28 = v2->unk_16;

        sub_0203CD84(v0, &Unk_020F1E88, v3);
        Heap_FreeToHeap(v1->unk_260);
        v1->unk_25C = v3;
        sub_0203B674(v1, sub_0203B7C0);
    }
    break;
    default:
        v1->unk_25C = sub_0203D390(v0, &v1->unk_24C, v2->unk_14);
        sub_0203B674(v1, sub_0203B7C0);
    }

    Heap_FreeToHeap(v2);

    return 0;
}

static void sub_0203C2D8 (UnkStruct_020508D4 * param0, u16 param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_0207D3C0 * v2;
    u8 v3;
    u8 v4, v5, v6;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    v1->unk_25C = sub_020972FC(11);
    v2 = sub_0207D990(v0->unk_0C);
    sub_02097320(v1->unk_25C, param1, 1);
    v6 = 0;

    for (v3 = 0; v3 < 64; v3++) {
        param1 = sub_0207D354(v3);

        if (sub_0207D688(v2, param1, 1, 11) == 1) {
            sub_02097320(v1->unk_25C, param1, 0);
            v6++;
        }
    }

    sub_0207D9B4(v0->unk_98, 4, &v5, &v4);
    sub_0209733C(v1->unk_25C, v4, v5, v6 + 3);

    sub_0203D2E4(v0, v1->unk_25C);
    sub_0203B674(v1, sub_0203C390);
}

static BOOL sub_0203C390 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    u8 v2, v3;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    sub_02097390(v1->unk_25C, &v2, &v3);
    sub_0207D9C8(v0->unk_98, 4, v3, v2);
    Heap_FreeToHeapExplicit(11, v1->unk_25C);

    v1->unk_25C = sub_0203D20C(v0, &v1->unk_230);
    sub_0203B674(v1, sub_0203BC5C);

    return 0;
}

BOOL sub_0203C3F4 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    Heap_FreeToHeapExplicit(11, v1->unk_25C);
    v1->unk_25C = sub_0203D20C(v0, &v1->unk_230);
    sub_0203B674(v1, sub_0203BC5C);

    return 0;
}

BOOL sub_0203C434 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_0203D8AC * v2;
    u32 v3;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);
    v3 = *((u32 *)v1->unk_260);

    Heap_FreeToHeapExplicit(11, v1->unk_260);

    v2 = (UnkStruct_0203D8AC *)v1->unk_25C;

    if (!(v2->unk_10)) {
        Heap_FreeToHeapExplicit(11, v1->unk_25C);
        v1->unk_25C = sub_0203D390(v0, &v1->unk_24C, v3);
        sub_0203B674(v1, sub_0203B7C0);
    } else {
        Pokemon * v4;
        void * v5;
        void * v6;

        v4 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->unk_0C), v3);
        v5 = sub_0207064C(11, v0, v4, v2->unk_1C, v2->unk_14 * 32 + 16, v2->unk_18 * 32 + 16);
        v6 = sub_0202BE00((20 - 19), v2->unk_1C, 11);

        sub_0202B758(v0->unk_9C, v6, 1);
        Heap_FreeToHeapExplicit(11, v1->unk_25C);
        sub_020509D4(v0);

        v1->unk_22C = sub_02070680;
        v1->unk_25C = v5;
        v1->unk_2A = 10;
    }

    return 0;
}

BOOL sub_0203C50C (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    v1->unk_25C = sub_0203D20C(v0, &v1->unk_230);
    sub_0203B674(v1, sub_0203BC5C);

    return 0;
}

static void sub_0203C668(UnkStruct_0203CDB0 * param0, UnkStruct_020708E0 * param1, u8 param2);

void * sub_0203C540 (u16 param0, u8 param1, u8 param2)
{
    UnkStruct_0203C540 * v0 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0203C540));

    v0->unk_00 = param0;
    v0->unk_02 = param2;
    v0->unk_03 = param1;

    return (void *)v0;
}

BOOL sub_0203C558 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_0203C540 * v2;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);
    v2 = v1->unk_260;

    switch (v2->unk_03) {
    case 3:
        sub_02097770(v1->unk_25C);
        v1->unk_25C = sub_0203D20C(v0, &v1->unk_230);
        sub_0203B674(v1, sub_0203BC5C);
        break;
    case 2:
        sub_02097770(v1->unk_25C);
        v1->unk_25C = sub_0203D390(v0, &v1->unk_24C, v2->unk_02);
        sub_0203B674(v1, sub_0203B7C0);
        break;
    case 0:
        if (sub_02097728(v1->unk_25C) == 1) {
            sub_0203C668(v0, v1, 12);
        } else {
            sub_02097770(v1->unk_25C);
            v1->unk_25C = sub_0203D390(v0, &v1->unk_24C, v2->unk_02);
            sub_0203B674(v1, sub_0203B7C0);
        }
        break;
    case 1:
        if (sub_02097728(v1->unk_25C) == 1) {
            sub_0203C668(v0, v1, 11);
        } else {
            sub_02097770(v1->unk_25C);
            v1->unk_25C = sub_0203D20C(v0, &v1->unk_230);
            sub_0203B674(v1, sub_0203BC5C);
        }
        break;
    }

    Heap_FreeToHeap(v1->unk_260);
    return 0;
}

static void sub_0203C668 (UnkStruct_0203CDB0 * param0, UnkStruct_020708E0 * param1, u8 param2)
{
    UnkStruct_0203C540 * v0;
    UnkStruct_02098C44 * v1;

    v0 = param1->unk_260;
    v1 = Heap_AllocFromHeap(11, sizeof(UnkStruct_02098C44));

    memset(v1, 0, sizeof(UnkStruct_02098C44));
    v1->unk_00 = Party_GetFromSavedata(param0->unk_0C);
    v1->unk_04 = sub_0207D990(param0->unk_0C);
    v1->unk_08 = sub_02028430(param0->unk_0C);
    v1->unk_0C = sub_02025E44(param0->unk_0C);
    v1->unk_18 = &param1->unk_24C;
    v1->unk_21 = 0;
    v1->unk_24 = v0->unk_00;
    v1->unk_22 = v0->unk_02;
    v1->unk_20 = param2;
    v1->unk_1C = param0;

    sub_02097750(param1->unk_25C, Party_GetPokemonBySlotIndex(v1->unk_00, v0->unk_02));
    sub_02097770(param1->unk_25C);
    sub_0203CD84(param0, &Unk_020F1E88, v1);

    param1->unk_25C = v1;
    sub_0203B674(param1, sub_0203B7C0);
}

BOOL sub_0203C710 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    sub_02098AF0(v1->unk_25C);

    v1->unk_25C = sub_0203D20C(v0, &v1->unk_230);
    sub_0203B674(v1, sub_0203BC5C);

    return 0;
}

BOOL sub_0203C750 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    v1->unk_25C = sub_0203D20C(v0, &v1->unk_230);
    sub_0203B674(v1, sub_0203BC5C);

    return 0;
}

BOOL sub_0203C784 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    v1->unk_25C = sub_0203D20C(v0, &v1->unk_230);
    sub_0203B674(v1, sub_0203BC5C);

    return 0;
}

static void sub_0203C7B8 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_0203C7B8 * v2;
    Party * v3;
    Pokemon * v4;
    UnkStruct_0207AE68 * v5;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);
    v2 = v1->unk_25C;

    sub_0200569C();
    Heap_Create(3, 73, 0x30000);

    v3 = Party_GetFromSavedata(v0->unk_0C);
    v4 = Party_GetPokemonBySlotIndex(v3, v2->unk_00);

    if (v2->unk_01 == 0) {
        v5 = sub_0207AE68(v3, v4, v2->unk_04, sub_02025E44(v0->unk_0C), sub_0208C324(v0->unk_0C), sub_02027560(v0->unk_0C), sub_0207D990(v0->unk_0C), sub_0202CD88(v0->unk_0C), sub_02056B24(v0->unk_0C), v2->unk_08, 0x1, 73);
    } else {
        v5 = sub_0207AE68(v3, v4, v2->unk_04, sub_02025E44(v0->unk_0C), sub_0208C324(v0->unk_0C), sub_02027560(v0->unk_0C), sub_0207D990(v0->unk_0C), sub_0202CD88(v0->unk_0C), sub_02056B24(v0->unk_0C), v2->unk_08, NULL, 73);
    }

    {
        u32 * v6 = Heap_AllocFromHeap(11, 4);

        *v6 = v2->unk_00;
        v1->unk_260 = v6;
    }

    Heap_FreeToHeap(v1->unk_25C);

    v1->unk_25C = v5;
    v1->unk_2A = 7;
}

static void sub_0203C8CC (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    if (sub_0207B0D0(v1->unk_25C) == 1) {
        sub_0207B0E0(v1->unk_25C);
        Heap_Destroy(73);
        sub_020055D0(1141, 0);
        sub_02004234(0);
        sub_020556A0(v0, v0->unk_1C->unk_00);

        v1->unk_25C = sub_0203D20C(v0, &v1->unk_230);

        {
            u32 v2 = *((u32 *)v1->unk_260);

            sub_0207CB70(v1->unk_25C, (u8)v2);
            Heap_FreeToHeap(v1->unk_260);
        }

        sub_0203B674(v1, sub_0203BC5C);
    }
}
