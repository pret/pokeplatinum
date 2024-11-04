#include "unk_0206AFE0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0203A790_decl.h"
#include "struct_defs/struct_02049FA8.h"

#include "field_overworld_state.h"
#include "savedata.h"
#include "unk_0201D15C.h"
#include "unk_0202B37C.h"
#include "unk_0206A8DC.h"
#include "vars_flags.h"

static BOOL sub_0206AFE0(VarsFlags *param0, u16 param1, u16 param2);
static u16 sub_0206B010(VarsFlags *param0, u16 param1);
BOOL sub_0206B044(VarsFlags *param0, u16 param1);
u16 sub_0206B054(VarsFlags *param0);
u16 sub_0206B064(VarsFlags *param0);
u16 sub_0206B08C(VarsFlags *param0);
void sub_0206B558(VarsFlags *param0, u16 param1);
void sub_0206B514(SaveData *param0);
static u8 sub_0206B4A4(VarsFlags *param0);

static BOOL sub_0206AFE0(VarsFlags *param0, u16 param1, u16 param2)
{
    u16 *v0 = VarsFlags_GetVarAddress(param0, param1);

    if ((param1 < VARS_START) || (param1 > SPECIAL_VARS_START)) {
        GF_ASSERT(FALSE);
        return 0;
    }

    if (v0 == NULL) {
        return 0;
    }

    *v0 = param2;
    return 1;
}

static u16 sub_0206B010(VarsFlags *param0, u16 param1)
{
    u16 *v0 = VarsFlags_GetVarAddress(param0, param1);

    if (v0 == NULL) {
        return 0;
    }

    return *v0;
}

BOOL sub_0206B024(VarsFlags *param0, u16 param1)
{
    return sub_0206AFE0(param0, (15 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B034(VarsFlags *param0)
{
    return sub_0206B010(param0, (15 + (((0 + VARS_START) + 32) + 16)));
}

BOOL sub_0206B044(VarsFlags *param0, u16 param1)
{
    return sub_0206AFE0(param0, (0 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B054(VarsFlags *param0)
{
    return sub_0206B010(param0, (0 + (((0 + VARS_START) + 32) + 16)));
}

u16 sub_0206B064(VarsFlags *param0)
{
    u16 v0;
    u16 v1 = sub_0206B010(param0, (0 + (((0 + VARS_START) + 32) + 16)));

    if (v1 == 387) {
        v0 = 390;
    } else if (v1 == 390) {
        v0 = 393;
    } else {
        v0 = 387;
    }

    return v0;
}

u16 sub_0206B08C(VarsFlags *param0)
{
    u16 v0;
    u16 v1 = sub_0206B010(param0, (0 + (((0 + VARS_START) + 32) + 16)));

    if (v1 == 387) {
        v0 = 393;
    } else if (v1 == 390) {
        v0 = 387;
    } else {
        v0 = 390;
    }

    return v0;
}

u16 sub_0206B0B4(VarsFlags *param0)
{
    return sub_0206B010(param0, (5 + (((0 + VARS_START) + 32) + 16)));
}

BOOL sub_0206B0C4(VarsFlags *param0, u16 param1)
{
    return sub_0206AFE0(param0, (5 + (((0 + VARS_START) + 32) + 16)), param1);
}

void VsSeeker_Reset(VarsFlags *param0)
{
    VsSeeker_ClearUsedFlag(param0);
    VsSeeker_SetActiveStepCount(param0, 0);
}

u16 VsSeeker_GetBattery(VarsFlags *param0)
{
    return sub_0206B010(param0, (3 + (((0 + VARS_START) + 32) + 16)));
}

BOOL VsSeeker_SetBattery(VarsFlags *param0, u16 param1)
{
    return sub_0206AFE0(param0, (3 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 VsSeeker_GetActiveStepCount(VarsFlags *param0)
{
    return sub_0206B010(param0, (4 + (((0 + VARS_START) + 32) + 16)));
}

BOOL VsSeeker_SetActiveStepCount(VarsFlags *param0, u16 param1)
{
    return sub_0206AFE0(param0, (4 + (((0 + VARS_START) + 32) + 16)), param1);
}

static int sub_0206B128(int param0)
{
    static const u16 v0[] = {
        0x1209,
        0x1112,
        0x1123,
        0x1103,
    };

    GF_ASSERT(0 <= param0 && param0 < NELEMS(v0));
    return v0[param0];
}

void sub_0206B144(VarsFlags *param0, int param1)
{
    sub_0206AFE0(param0, (19 + (((0 + VARS_START) + 32) + 16)) + param1, sub_0206B128(param1));
}

BOOL sub_0206B16C(VarsFlags *param0, int param1)
{
    if (sub_0206B010(param0, (19 + (((0 + VARS_START) + 32) + 16)) + param1) == sub_0206B128(param1)) {
        return 1;
    } else {
        return 0;
    }
}

static int sub_0206B194(int param0)
{
    static const u16 v0[] = {
        0x208,
        0x229,
        0x312,
        0x1028,
    };

    GF_ASSERT(0 <= param0 && param0 < 4);
    return v0[param0];
}

void sub_0206B1B0(VarsFlags *param0, int param1)
{
    sub_0206AFE0(param0, (6 + (((0 + VARS_START) + 32) + 16)) + param1, sub_0206B194(param1));
}

void sub_0206B1D8(VarsFlags *param0, int param1)
{
    sub_0206AFE0(param0, (6 + (((0 + VARS_START) + 32) + 16)) + param1, 0);
}

BOOL VarFlags_HiddenLocationsUnlocked(VarsFlags *varFlags, int hiddenLocation)
{
    if (sub_0206B010(varFlags, (6 + (((0 + VARS_START) + 32) + 16)) + hiddenLocation) == sub_0206B194(hiddenLocation)) {
        return 1;
    } else {
        return 0;
    }
}

BOOL sub_0206B218(VarsFlags *param0)
{
    return sub_0206AFE0(param0, (10 + (((0 + VARS_START) + 32) + 16)), 0);
}

u16 sub_0206B228(VarsFlags *param0)
{
    return sub_0206B010(param0, (10 + (((0 + VARS_START) + 32) + 16)));
}

BOOL sub_0206B238(VarsFlags *param0)
{
    u16 v0;

    v0 = sub_0206B010(param0, (10 + (((0 + VARS_START) + 32) + 16)));

    if (v0 < 10000) {
        v0++;
    } else {
        v0 = 10000;
    }

    return sub_0206AFE0(param0, (10 + (((0 + VARS_START) + 32) + 16)), v0);
}

u16 sub_0206B260(VarsFlags *param0)
{
    return sub_0206B010(param0, (11 + (((0 + VARS_START) + 32) + 16)));
}

BOOL sub_0206B270(VarsFlags *param0, u16 param1)
{
    return sub_0206AFE0(param0, (11 + (((0 + VARS_START) + 32) + 16)), param1);
}

void sub_0206B280(VarsFlags *param0, u32 param1)
{
    u16 v0, v1;

    v1 = (param1 >> 16) & 0xffff;
    v0 = param1 & 0xffff;
    sub_0206AFE0(param0, (12 + (((0 + VARS_START) + 32) + 16)), v0);
    sub_0206AFE0(param0, (12 + (((0 + VARS_START) + 32) + 16)), v1);
}

u32 sub_0206B2A4(VarsFlags *param0)
{
    u16 v0, v1;

    v0 = sub_0206B010(param0, (12 + (((0 + VARS_START) + 32) + 16)));
    v1 = sub_0206B010(param0, (13 + (((0 + VARS_START) + 32) + 16)));

    return (v1 << 16) | v0;
}

void sub_0206B2C8(VarsFlags *param0)
{
    u16 v0, v1;

    v0 = LCRNG_Next();
    v1 = LCRNG_Next();

    sub_0206B280(param0, (v1 << 16) | v0);
}

void sub_0206B2E4(SaveData *param0, u16 param1)
{
    VarsFlags *v0 = SaveData_GetVarsFlags(param0);
    u32 v1;

    v1 = sub_0202B428(sub_0202B4A0(param0));
    v1 = v1 * 1103515245L + 12345;

    sub_0206B280(v0, v1);
}

u16 sub_0206B314(VarsFlags *param0)
{
    return sub_0206B010(param0, (17 + (((0 + VARS_START) + 32) + 16)));
}

BOOL sub_0206B324(VarsFlags *param0, u16 param1)
{
    return sub_0206AFE0(param0, (17 + (((0 + VARS_START) + 32) + 16)), param1);
}

void sub_0206B334(SaveData *param0)
{
    VarsFlags *v0 = SaveData_GetVarsFlags(param0);
    u32 v1;

    v1 = (LCRNG_Next() % 98) + 2;
    sub_0206B324(v0, v1);
}

u16 sub_0206B354(VarsFlags *param0)
{
    u16 v0;

    v0 = sub_0206B010(param0, (14 + (((0 + VARS_START) + 32) + 16)));
    return v0;
}

BOOL sub_0206B364(VarsFlags *param0, u16 param1)
{
    return sub_0206AFE0(param0, (14 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B374(VarsFlags *param0)
{
    u16 v0;

    v0 = sub_0206B010(param0, (25 + (((0 + VARS_START) + 32) + 16)));
    return v0;
}

BOOL sub_0206B384(VarsFlags *param0, u16 param1)
{
    return sub_0206AFE0(param0, (25 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B394(VarsFlags *param0)
{
    u16 v0;

    v0 = sub_0206B010(param0, (16 + (((0 + VARS_START) + 32) + 16)));
    return v0;
}

BOOL sub_0206B3A4(VarsFlags *param0, u16 param1)
{
    return sub_0206AFE0(param0, (16 + (((0 + VARS_START) + 32) + 16)), param1);
}

BOOL sub_0206B3B4(VarsFlags *param0)
{
    u16 v0;

    v0 = sub_0206B010(param0, (18 + (((0 + VARS_START) + 32) + 16)));

    if (v0 < 10000) {
        v0++;
    } else {
        v0 = 10000;
    }

    return sub_0206AFE0(param0, (18 + (((0 + VARS_START) + 32) + 16)), v0);
}

u16 sub_0206B3DC(VarsFlags *param0)
{
    return sub_0206B010(param0, (18 + (((0 + VARS_START) + 32) + 16)));
}

u16 sub_0206B3EC(VarsFlags *param0)
{
    return sub_0206B010(param0, (36 + (((0 + VARS_START) + 32) + 16)));
}

BOOL sub_0206B3FC(VarsFlags *param0, u16 param1)
{
    return sub_0206AFE0(param0, (36 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B40C(VarsFlags *param0)
{
    return sub_0206B010(param0, (23 + (((0 + VARS_START) + 32) + 16)));
}

BOOL sub_0206B41C(VarsFlags *param0, u16 param1)
{
    return sub_0206AFE0(param0, (23 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B42C(VarsFlags *param0)
{
    return sub_0206B010(param0, (24 + (((0 + VARS_START) + 32) + 16)));
}

BOOL sub_0206B43C(VarsFlags *param0, u16 param1)
{
    return sub_0206AFE0(param0, (24 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B44C(VarsFlags *param0)
{
    return sub_0206B010(param0, (26 + (((0 + VARS_START) + 32) + 16)));
}

void sub_0206B45C(VarsFlags *param0, u16 param1)
{
    sub_0206AFE0(param0, (26 + (((0 + VARS_START) + 32) + 16)), param1);
}

void sub_0206B46C(VarsFlags *param0, u16 param1)
{
    sub_0206AFE0(param0, (27 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B47C(VarsFlags *param0)
{
    return sub_0206B010(param0, (27 + (((0 + VARS_START) + 32) + 16)));
}

void sub_0206B48C(VarsFlags *param0, u16 param1)
{
    sub_0206AFE0(param0, (29 + (((0 + VARS_START) + 32) + 16)), (param1 + 1));
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

static u8 sub_0206B4A4(VarsFlags *param0)
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

void sub_0206B514(SaveData *param0)
{
    u32 v0;
    VarsFlags *v1 = SaveData_GetVarsFlags(param0);
    FieldOverworldState *v2 = SaveData_GetFieldOverworldState(param0);
    Location *location = sub_0203A720(v2);

    if ((location->mapId != 457) && (location->mapId != 464)) {
        sub_0206AF90(v1);
        sub_0206AFA0(v1);
        sub_0206B558(v1, sub_0206B4A4(v1));
    }

    return;
}

void sub_0206B558(VarsFlags *param0, u16 param1)
{
    sub_0206AFE0(param0, (30 + (((0 + VARS_START) + 32) + 16)), param1);
    sub_0206AFE0(param0, (42 + (((0 + VARS_START) + 32) + 16)), (LCRNG_Next() % 5));
}

u16 sub_0206B588(VarsFlags *param0)
{
    return sub_0206B010(param0, (32 + (((0 + VARS_START) + 32) + 16)));
}

u16 sub_0206B598(VarsFlags *param0)
{
    return sub_0206B010(param0, (33 + (((0 + VARS_START) + 32) + 16)));
}

u16 sub_0206B5A8(VarsFlags *param0)
{
    return sub_0206B010(param0, (34 + (((0 + VARS_START) + 32) + 16)));
}

u16 sub_0206B5B8(VarsFlags *param0)
{
    return sub_0206B010(param0, (35 + (((0 + VARS_START) + 32) + 16)));
}

u16 sub_0206B5C8(VarsFlags *param0)
{
    return sub_0206B010(param0, (31 + (((0 + VARS_START) + 32) + 16)));
}

u16 sub_0206B5D8(VarsFlags *param0)
{
    return sub_0206B010(param0, (37 + (((0 + VARS_START) + 32) + 16)));
}

void sub_0206B5E8(VarsFlags *param0, u16 param1)
{
    sub_0206AFE0(param0, (37 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B5F8(VarsFlags *param0)
{
    return sub_0206B010(param0, (38 + (((0 + VARS_START) + 32) + 16)));
}

void sub_0206B608(VarsFlags *param0, u16 param1)
{
    sub_0206AFE0(param0, (38 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B618(VarsFlags *param0)
{
    return sub_0206B010(param0, (39 + (((0 + VARS_START) + 32) + 16)));
}

void sub_0206B628(VarsFlags *param0, u16 param1)
{
    sub_0206AFE0(param0, (39 + (((0 + VARS_START) + 32) + 16)), param1);
}

void sub_0206B638(VarsFlags *param0, u16 param1)
{
    sub_0206AFE0(param0, (40 + (((0 + VARS_START) + 32) + 16)), param1);
}

void sub_0206B648(VarsFlags *param0, u16 param1)
{
    sub_0206AFE0(param0, (41 + (((0 + VARS_START) + 32) + 16)), param1);
}

void sub_0206B658(VarsFlags *param0, u16 param1)
{
    sub_0206AFE0(param0, (46 + (((0 + VARS_START) + 32) + 16)), param1);
}

void sub_0206B668(VarsFlags *param0, u16 param1)
{
    sub_0206AFE0(param0, (47 + (((0 + VARS_START) + 32) + 16)), param1);
}

void sub_0206B678(VarsFlags *param0, u16 param1)
{
    sub_0206AFE0(param0, (48 + (((0 + VARS_START) + 32) + 16)), param1);
}

void sub_0206B688(VarsFlags *param0, u16 param1, u16 param2)
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

u16 sub_0206B6DC(VarsFlags *param0)
{
    return sub_0206B010(param0, (43 + (((0 + VARS_START) + 32) + 16)));
}

void sub_0206B6EC(VarsFlags *param0, u16 param1)
{
    sub_0206AFE0(param0, (43 + (((0 + VARS_START) + 32) + 16)), param1);
}

u16 sub_0206B6FC(VarsFlags *param0)
{
    return sub_0206B010(param0, (52 + (((0 + VARS_START) + 32) + 16)));
}
