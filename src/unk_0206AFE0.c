#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_02049FA8.h"

#include "unk_0201D15C.h"
#include "unk_0202B37C.h"
#include "unk_0203A6DC.h"
#include "unk_020507CC.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"

static BOOL sub_0206AFE0(UnkStruct_020507E4 * param0, u16 param1, u16 param2);
static u16 sub_0206B010(UnkStruct_020507E4 * param0, u16 param1);
BOOL sub_0206B044(UnkStruct_020507E4 * param0, u16 param1);
u16 sub_0206B054(UnkStruct_020507E4 * param0);
u16 sub_0206B064(UnkStruct_020507E4 * param0);
u16 sub_0206B08C(UnkStruct_020507E4 * param0);
void sub_0206B558(UnkStruct_020507E4 * param0, u16 param1);
void sub_0206B514(SaveData * param0);
static u8 sub_0206B4A4(UnkStruct_020507E4 * param0);

static BOOL sub_0206AFE0 (UnkStruct_020507E4 * param0, u16 param1, u16 param2)
{
    u16 * v0 = sub_020508B8(param0, param1);

    if ((param1 < 0x4000) || (param1 > 0x8000)) {
        GF_ASSERT(FALSE);
        return 0;
    }

    if (v0 == NULL) {
        return 0;
    }

    *v0 = param2;
    return 1;
}

static u16 sub_0206B010 (UnkStruct_020507E4 * param0, u16 param1)
{
    u16 * v0 = sub_020508B8(param0, param1);

    if (v0 == NULL) {
        return 0;
    }

    return *v0;
}

BOOL sub_0206B024 (UnkStruct_020507E4 * param0, u16 param1)
{
    return sub_0206AFE0(param0, (15 + (((0 + 0x4000) + 32) + 16)), param1);
}

u16 sub_0206B034 (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (15 + (((0 + 0x4000) + 32) + 16)));
}

BOOL sub_0206B044 (UnkStruct_020507E4 * param0, u16 param1)
{
    return sub_0206AFE0(param0, (0 + (((0 + 0x4000) + 32) + 16)), param1);
}

u16 sub_0206B054 (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (0 + (((0 + 0x4000) + 32) + 16)));
}

u16 sub_0206B064 (UnkStruct_020507E4 * param0)
{
    u16 v0;
    u16 v1 = sub_0206B010(param0, (0 + (((0 + 0x4000) + 32) + 16)));

    if (v1 == 387) {
        v0 = 390;
    } else if (v1 == 390) {
        v0 = 393;
    } else {
        v0 = 387;
    }

    return v0;
}

u16 sub_0206B08C (UnkStruct_020507E4 * param0)
{
    u16 v0;
    u16 v1 = sub_0206B010(param0, (0 + (((0 + 0x4000) + 32) + 16)));

    if (v1 == 387) {
        v0 = 393;
    } else if (v1 == 390) {
        v0 = 387;
    } else {
        v0 = 390;
    }

    return v0;
}

u16 sub_0206B0B4 (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (5 + (((0 + 0x4000) + 32) + 16)));
}

BOOL sub_0206B0C4 (UnkStruct_020507E4 * param0, u16 param1)
{
    return sub_0206AFE0(param0, (5 + (((0 + 0x4000) + 32) + 16)), param1);
}

void sub_0206B0D4 (UnkStruct_020507E4 * param0)
{
    sub_0206A9D4(param0);
    sub_0206B118(param0, 0);
    return;
}

u16 sub_0206B0E8 (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (3 + (((0 + 0x4000) + 32) + 16)));
}

BOOL sub_0206B0F8 (UnkStruct_020507E4 * param0, u16 param1)
{
    return sub_0206AFE0(param0, (3 + (((0 + 0x4000) + 32) + 16)), param1);
}

u16 sub_0206B108 (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (4 + (((0 + 0x4000) + 32) + 16)));
}

BOOL sub_0206B118 (UnkStruct_020507E4 * param0, u16 param1)
{
    return sub_0206AFE0(param0, (4 + (((0 + 0x4000) + 32) + 16)), param1);
}

static int sub_0206B128 (int param0)
{
    static const u16 v0[] = {
        0x1209, 0x1112, 0x1123, 0x1103,
    };

    GF_ASSERT(0 <= param0 && param0 < NELEMS(v0));
    return v0[param0];
}

void sub_0206B144 (UnkStruct_020507E4 * param0, int param1)
{
    sub_0206AFE0(param0, (19 + (((0 + 0x4000) + 32) + 16)) + param1, sub_0206B128(param1));
}

BOOL sub_0206B16C (UnkStruct_020507E4 * param0, int param1)
{
    if (sub_0206B010(param0, (19 + (((0 + 0x4000) + 32) + 16)) + param1) == sub_0206B128(param1)) {
        return 1;
    } else {
        return 0;
    }
}

static int sub_0206B194 (int param0)
{
    static const u16 v0[] = {
        0x208, 0x229, 0x312, 0x1028,
    };

    GF_ASSERT(0 <= param0 && param0 < 4);
    return v0[param0];
}

void sub_0206B1B0 (UnkStruct_020507E4 * param0, int param1)
{
    sub_0206AFE0(param0, (6 + (((0 + 0x4000) + 32) + 16)) + param1, sub_0206B194(param1));
}

void sub_0206B1D8 (UnkStruct_020507E4 * param0, int param1)
{
    sub_0206AFE0(param0, (6 + (((0 + 0x4000) + 32) + 16)) + param1, 0);
}

BOOL sub_0206B1F0 (UnkStruct_020507E4 * param0, int param1)
{
    if (sub_0206B010(param0, (6 + (((0 + 0x4000) + 32) + 16)) + param1) == sub_0206B194(param1)) {
        return 1;
    } else {
        return 0;
    }
}

BOOL sub_0206B218 (UnkStruct_020507E4 * param0)
{
    return sub_0206AFE0(param0, (10 + (((0 + 0x4000) + 32) + 16)), 0);
}

u16 sub_0206B228 (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (10 + (((0 + 0x4000) + 32) + 16)));
}

BOOL sub_0206B238 (UnkStruct_020507E4 * param0)
{
    u16 v0;

    v0 = sub_0206B010(param0, (10 + (((0 + 0x4000) + 32) + 16)));

    if (v0 < 10000) {
        v0++;
    } else {
        v0 = 10000;
    }

    return sub_0206AFE0(param0, (10 + (((0 + 0x4000) + 32) + 16)), v0);
}

u16 sub_0206B260 (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (11 + (((0 + 0x4000) + 32) + 16)));
}

BOOL sub_0206B270 (UnkStruct_020507E4 * param0, u16 param1)
{
    return sub_0206AFE0(param0, (11 + (((0 + 0x4000) + 32) + 16)), param1);
}

void sub_0206B280 (UnkStruct_020507E4 * param0, u32 param1)
{
    u16 v0, v1;

    v1 = (param1 >> 16) & 0xffff;
    v0 = param1 & 0xffff;
    sub_0206AFE0(param0, (12 + (((0 + 0x4000) + 32) + 16)), v0);
    sub_0206AFE0(param0, (12 + (((0 + 0x4000) + 32) + 16)), v1);
}

u32 sub_0206B2A4 (UnkStruct_020507E4 * param0)
{
    u16 v0, v1;

    v0 = sub_0206B010(param0, (12 + (((0 + 0x4000) + 32) + 16)));
    v1 = sub_0206B010(param0, (13 + (((0 + 0x4000) + 32) + 16)));

    return (v1 << 16) | v0;
}

void sub_0206B2C8 (UnkStruct_020507E4 * param0)
{
    u16 v0, v1;

    v0 = LCRNG_Next();
    v1 = LCRNG_Next();

    sub_0206B280(param0, (v1 << 16) | v0);
}

void sub_0206B2E4 (SaveData * param0, u16 param1)
{
    UnkStruct_020507E4 * v0 = SaveData_Events(param0);
    u32 v1;

    v1 = sub_0202B428(sub_0202B4A0(param0));
    v1 = v1 * 1103515245L + 12345;

    sub_0206B280(v0, v1);
}

u16 sub_0206B314 (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (17 + (((0 + 0x4000) + 32) + 16)));
}

BOOL sub_0206B324 (UnkStruct_020507E4 * param0, u16 param1)
{
    return sub_0206AFE0(param0, (17 + (((0 + 0x4000) + 32) + 16)), param1);
}

void sub_0206B334 (SaveData * param0)
{
    UnkStruct_020507E4 * v0 = SaveData_Events(param0);
    u32 v1;

    v1 = (LCRNG_Next() % 98) + 2;
    sub_0206B324(v0, v1);
}

u16 sub_0206B354 (UnkStruct_020507E4 * param0)
{
    u16 v0;

    v0 = sub_0206B010(param0, (14 + (((0 + 0x4000) + 32) + 16)));
    return v0;
}

BOOL sub_0206B364 (UnkStruct_020507E4 * param0, u16 param1)
{
    return sub_0206AFE0(param0, (14 + (((0 + 0x4000) + 32) + 16)), param1);
}

u16 sub_0206B374 (UnkStruct_020507E4 * param0)
{
    u16 v0;

    v0 = sub_0206B010(param0, (25 + (((0 + 0x4000) + 32) + 16)));
    return v0;
}

BOOL sub_0206B384 (UnkStruct_020507E4 * param0, u16 param1)
{
    return sub_0206AFE0(param0, (25 + (((0 + 0x4000) + 32) + 16)), param1);
}

u16 sub_0206B394 (UnkStruct_020507E4 * param0)
{
    u16 v0;

    v0 = sub_0206B010(param0, (16 + (((0 + 0x4000) + 32) + 16)));
    return v0;
}

BOOL sub_0206B3A4 (UnkStruct_020507E4 * param0, u16 param1)
{
    return sub_0206AFE0(param0, (16 + (((0 + 0x4000) + 32) + 16)), param1);
}

BOOL sub_0206B3B4 (UnkStruct_020507E4 * param0)
{
    u16 v0;

    v0 = sub_0206B010(param0, (18 + (((0 + 0x4000) + 32) + 16)));

    if (v0 < 10000) {
        v0++;
    } else {
        v0 = 10000;
    }

    return sub_0206AFE0(param0, (18 + (((0 + 0x4000) + 32) + 16)), v0);
}

u16 sub_0206B3DC (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (18 + (((0 + 0x4000) + 32) + 16)));
}

u16 sub_0206B3EC (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (36 + (((0 + 0x4000) + 32) + 16)));
}

BOOL sub_0206B3FC (UnkStruct_020507E4 * param0, u16 param1)
{
    return sub_0206AFE0(param0, (36 + (((0 + 0x4000) + 32) + 16)), param1);
}

u16 sub_0206B40C (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (23 + (((0 + 0x4000) + 32) + 16)));
}

BOOL sub_0206B41C (UnkStruct_020507E4 * param0, u16 param1)
{
    return sub_0206AFE0(param0, (23 + (((0 + 0x4000) + 32) + 16)), param1);
}

u16 sub_0206B42C (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (24 + (((0 + 0x4000) + 32) + 16)));
}

BOOL sub_0206B43C (UnkStruct_020507E4 * param0, u16 param1)
{
    return sub_0206AFE0(param0, (24 + (((0 + 0x4000) + 32) + 16)), param1);
}

u16 sub_0206B44C (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (26 + (((0 + 0x4000) + 32) + 16)));
}

void sub_0206B45C (UnkStruct_020507E4 * param0, u16 param1)
{
    sub_0206AFE0(param0, (26 + (((0 + 0x4000) + 32) + 16)), param1);
}

void sub_0206B46C (UnkStruct_020507E4 * param0, u16 param1)
{
    sub_0206AFE0(param0, (27 + (((0 + 0x4000) + 32) + 16)), param1);
}

u16 sub_0206B47C (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (27 + (((0 + 0x4000) + 32) + 16)));
}

void sub_0206B48C (UnkStruct_020507E4 * param0, u16 param1)
{
    sub_0206AFE0(param0, (29 + (((0 + 0x4000) + 32) + 16)), (param1 + 1));
}

static const u8 Unk_020EFA70[] = {
    0x19,
    0x4B,
    0x5A
};

static const u8 Unk_020EFA6C[] = {
    0x4,
    0xC,
    0xF
};

static u8 sub_0206B4A4 (UnkStruct_020507E4 * param0)
{
    int v0;
    u16 v1, v2, v3;

    v1 = 0;

    for (v0 = 0; v0 < 20; v0++) {
        if (sub_0206AF6C(param0, 2, v0) == 1) {
            v1++;
        }
    }

    if (v1 >= 12) {
        v3 = 2;
    } else if (v1 >= 8) {
        v3 = 1;
    } else {
        v3 = 0;
    }

    v2 = (LCRNG_Next() % 100);

    if (v2 > Unk_020EFA70[v3]) {
        return 0xff;
    }

    v2 = (LCRNG_Next() % Unk_020EFA6C[v3]);
    return v2;
}

void sub_0206B514 (SaveData * param0)
{
    u32 v0;
    UnkStruct_020507E4 * v1 = SaveData_Events(param0);
    UnkStruct_0203A790 * v2 = sub_0203A790(param0);
    UnkStruct_02049FA8 * v3 = sub_0203A720(v2);

    if ((v3->unk_00 != 457) && (v3->unk_00 != 464)) {
        sub_0206AF90(v1);
        sub_0206AFA0(v1);
        sub_0206B558(v1, sub_0206B4A4(v1));
    }

    return;
}

void sub_0206B558 (UnkStruct_020507E4 * param0, u16 param1)
{
    sub_0206AFE0(param0, (30 + (((0 + 0x4000) + 32) + 16)), param1);
    sub_0206AFE0(param0, (42 + (((0 + 0x4000) + 32) + 16)), (LCRNG_Next() % 5));
}

u16 sub_0206B588 (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (32 + (((0 + 0x4000) + 32) + 16)));
}

u16 sub_0206B598 (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (33 + (((0 + 0x4000) + 32) + 16)));
}

u16 sub_0206B5A8 (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (34 + (((0 + 0x4000) + 32) + 16)));
}

u16 sub_0206B5B8 (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (35 + (((0 + 0x4000) + 32) + 16)));
}

u16 sub_0206B5C8 (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (31 + (((0 + 0x4000) + 32) + 16)));
}

u16 sub_0206B5D8 (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (37 + (((0 + 0x4000) + 32) + 16)));
}

void sub_0206B5E8 (UnkStruct_020507E4 * param0, u16 param1)
{
    sub_0206AFE0(param0, (37 + (((0 + 0x4000) + 32) + 16)), param1);
}

u16 sub_0206B5F8 (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (38 + (((0 + 0x4000) + 32) + 16)));
}

void sub_0206B608 (UnkStruct_020507E4 * param0, u16 param1)
{
    sub_0206AFE0(param0, (38 + (((0 + 0x4000) + 32) + 16)), param1);
}

u16 sub_0206B618 (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (39 + (((0 + 0x4000) + 32) + 16)));
}

void sub_0206B628 (UnkStruct_020507E4 * param0, u16 param1)
{
    sub_0206AFE0(param0, (39 + (((0 + 0x4000) + 32) + 16)), param1);
}

void sub_0206B638 (UnkStruct_020507E4 * param0, u16 param1)
{
    sub_0206AFE0(param0, (40 + (((0 + 0x4000) + 32) + 16)), param1);
}

void sub_0206B648 (UnkStruct_020507E4 * param0, u16 param1)
{
    sub_0206AFE0(param0, (41 + (((0 + 0x4000) + 32) + 16)), param1);
}

void sub_0206B658 (UnkStruct_020507E4 * param0, u16 param1)
{
    sub_0206AFE0(param0, (46 + (((0 + 0x4000) + 32) + 16)), param1);
}

void sub_0206B668 (UnkStruct_020507E4 * param0, u16 param1)
{
    sub_0206AFE0(param0, (47 + (((0 + 0x4000) + 32) + 16)), param1);
}

void sub_0206B678 (UnkStruct_020507E4 * param0, u16 param1)
{
    sub_0206AFE0(param0, (48 + (((0 + 0x4000) + 32) + 16)), param1);
}

void sub_0206B688 (UnkStruct_020507E4 * param0, u16 param1, u16 param2)
{
    switch (param1) {
    case 481:
        sub_0206B648(param0, param2);
        break;
    case 488:
        sub_0206B638(param0, param2);
        break;
    case 146:
        sub_0206B658(param0, param2);
        break;
    case 145:
        sub_0206B668(param0, param2);
        break;
    case 144:
        sub_0206B678(param0, param2);
        break;
    }

    return;
}

u16 sub_0206B6DC (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (43 + (((0 + 0x4000) + 32) + 16)));
}

void sub_0206B6EC (UnkStruct_020507E4 * param0, u16 param1)
{
    sub_0206AFE0(param0, (43 + (((0 + 0x4000) + 32) + 16)), param1);
}

u16 sub_0206B6FC (UnkStruct_020507E4 * param0)
{
    return sub_0206B010(param0, (52 + (((0 + 0x4000) + 32) + 16)));
}
