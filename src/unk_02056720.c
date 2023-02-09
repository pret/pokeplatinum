#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02073C74_sub1_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "unk_020244AC.h"
#include "unk_02056720.h"
#include "unk_02073C2C.h"
#include "unk_02079D40.h"

#include "constants/pokemon.h"

typedef struct UnkStruct_02056B24_t {
    u8 unk_00_0 : 1;
    u8 unk_00_1 : 1;
    u8 unk_00_2 : 1;
    u8 unk_00_3 : 3;
    u8 unk_00_6 : 2;
    s8 unk_01;
    s8 unk_02;
    u8 unk_03[32];
    u32 unk_24;
    u16 unk_28_0 : 1;
    u16 unk_28_1 : 5;
    u16 unk_28_6 : 6;
    u16 unk_28_12 : 4;
    u8 unk_2A[120];
    u32 unk_A4;
    u8 unk_A8;
    struct {
        u8 unk_00;
        u8 unk_01;
    } unk_A9[6];
    struct {
        u16 unk_00;
        u16 unk_02;
        u32 unk_04;
    } unk_B8[12];
} UnkStruct_02056B24;

int sub_02056720 (void)
{
    return sizeof(UnkStruct_02056B24);
}

void sub_02056728 (UnkStruct_02056B24 * param0)
{
    int v0;

    for (v0 = 0; v0 < 32; v0++) {
        param0->unk_03[v0] = 0;
    }

    param0->unk_01 = 0;
    param0->unk_02 = 0;
    param0->unk_00_0 = 0;
    param0->unk_00_3 = 0;
    param0->unk_00_1 = 0;
    param0->unk_24 = 0;
    param0->unk_28_0 = 0;
    param0->unk_28_1 = 0;
    param0->unk_28_6 = 0;
    param0->unk_A8 = 1;
    param0->unk_A4 = 0;

    {
        static const struct {
            u8 unk_00;
            u8 unk_01;
        } v1[6] = {
            {104, 152},
            {120, 152},
            {136, 152},
            {152, 152},
            {168, 152},
            {184, 152}
        };

        for (v0 = 0; v0 < 6; v0++) {
            param0->unk_A9[v0].unk_00 = v1[v0].unk_00;
            param0->unk_A9[v0].unk_01 = v1[v0].unk_01;
        }
    }

    for (v0 = 0; v0 < 12; v0++) {
        param0->unk_B8[v0].unk_00 = 0;
        param0->unk_B8[v0].unk_02 = 0;
        param0->unk_B8[v0].unk_04 = 0;
    }

    param0->unk_00_2 = 0;
    sub_020567F0(param0, 0);
}

void sub_020567D0 (UnkStruct_02056B24 * param0)
{
    param0->unk_00_0 = 1;
}

BOOL sub_020567E0 (UnkStruct_02056B24 * param0)
{
    return param0->unk_00_0;
}

BOOL sub_020567E8 (UnkStruct_02056B24 * param0, int param1)
{
    return param0->unk_03[param1];
}

BOOL sub_020567F0 (UnkStruct_02056B24 * param0, int param1)
{
    BOOL v0 = 0;

    GF_ASSERT(param1 >= 0 && param1 < 25);

    if (param0->unk_01 < 25) {
        if (param0->unk_03[param1] == 0) {
            param0->unk_03[param1] = 1;
            param0->unk_01++;

            if (param1 == 3) {
                param0->unk_00_1 = 1;
            }

            v0 = 1;
        }
    }

    return v0;
}

int sub_02056830 (const UnkStruct_02056B24 * param0)
{
    return param0->unk_02;
}

int sub_02056838 (UnkStruct_02056B24 * param0)
{
    int v0 = param0->unk_02;

    while (TRUE) {
        if (++v0 >= 25) {
            v0 = 0;
        }

        if (v0 == param0->unk_02) {
            break;
        }

        if (param0->unk_03[v0]) {
            break;
        }
    }

    param0->unk_02 = v0;

    return param0->unk_02;
}

int sub_02056860 (UnkStruct_02056B24 * param0)
{
    int v0 = param0->unk_02;

    while (TRUE) {
        if (--v0 < 0) {
            v0 = 25 - 1;
        }

        if (v0 == param0->unk_02) {
            break;
        }

        if (param0->unk_03[v0]) {
            break;
        }
    }

    param0->unk_02 = v0;

    return param0->unk_02;
}

u32 sub_02056888 (const UnkStruct_02056B24 * param0)
{
    GF_ASSERT(param0);
    return param0->unk_00_3;
}

void sub_0205689C (UnkStruct_02056B24 * param0, u32 param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param1 < 8);

    param0->unk_00_3 = param1;
}

u32 sub_020568C8 (const UnkStruct_02056B24 * param0)
{
    return param0->unk_24;
}

void sub_020568CC (UnkStruct_02056B24 * param0, u32 param1)
{
    if (param0->unk_00_1) {
        param0->unk_24 = param1;
    }
}

BOOL sub_020568D8 (const UnkStruct_02056B24 * param0)
{
    return param0->unk_28_0;
}

void sub_020568E0 (const UnkStruct_02056B24 * param0, u32 * param1, u32 * param2)
{
    *param1 = param0->unk_28_1;
    *param2 = param0->unk_28_6;
}

void sub_020568F4 (UnkStruct_02056B24 * param0, BOOL param1, u32 param2, u32 param3)
{
    param0->unk_28_0 = param1;
    param0->unk_28_1 = param2;
    param0->unk_28_6 = param3;
}

void sub_02056934 (UnkStruct_02056B24 * param0, u32 param1, u32 param2)
{
    if (param0->unk_A8 == param1) {
        param0->unk_A4 |= (1 << (param2 - 1));
    } else {
        param0->unk_A8 = param1;
        param0->unk_A4 = (1 << (param2 - 1));
    }
}

void sub_02056970 (UnkStruct_02056B24 * param0, u32 param1, u32 param2)
{
    if (param0->unk_A8 == param1) {
        param0->unk_A4 &= ~(1 << (param2 - 1));
    } else {
        param0->unk_A8 = param1;
        param0->unk_A4 = 0;
    }
}

BOOL sub_020569A8 (const UnkStruct_02056B24 * param0, u32 param1, u32 param2)
{
    if (param0->unk_A8 == param1) {
        return (param0->unk_A4 >> (param2 - 1)) & 1;
    } else {
        return 0;
    }
}

void sub_020569C4 (UnkStruct_02056B24 * param0, int param1, u8 param2, u8 param3)
{
    GF_ASSERT(param1 < 6);

    param0->unk_A9[param1].unk_00 = param2;
    param0->unk_A9[param1].unk_01 = param3;
}

void sub_020569E8 (const UnkStruct_02056B24 * param0, int param1, u8 * param2, u8 * param3)
{
    GF_ASSERT(param1 < 6);

    *param2 = param0->unk_A9[param1].unk_00;
    *param3 = param0->unk_A9[param1].unk_01;
}

BOOL sub_02056A10 (const UnkStruct_02056B24 * param0)
{
    return param0->unk_00_2;
}

void sub_02056A18 (const UnkStruct_02056B24 * param0, u8 * param1)
{
    if (param0->unk_00_2) {
        MI_CpuCopy8(param0->unk_2A, param1, 120);
    }
}

void sub_02056A2C (UnkStruct_02056B24 * param0, const u8 * param1)
{
    MI_CpuCopy8(param1, param0->unk_2A, 120);
    param0->unk_00_2 = 1;
}

void sub_02056A48 (UnkStruct_02056B24 * param0, const BoxPokemon *boxMon)
{
    int v0;

    v0 = sub_02056AAC(param0);

    if (v0 >= 12) {
        int v1;

        for (v1 = 0; v1 < (12 - 1); v1++) {
            param0->unk_B8[v1] = param0->unk_B8[v1 + 1];
        }

        v0 = 12 - 1;
    }

    param0->unk_B8[v0].unk_00 = sub_02074570((BoxPokemon *)boxMon, MON_DATA_SPECIES, NULL);
    param0->unk_B8[v0].unk_02 = sub_02079E44(boxMon);
    param0->unk_B8[v0].unk_04 = sub_02074570((BoxPokemon *)boxMon, MON_DATA_112, NULL);
}

int sub_02056AAC (const UnkStruct_02056B24 * param0)
{
    int v0;

    for (v0 = 0; v0 < 12; v0++) {
        if (param0->unk_B8[v0].unk_00 == 0) {
            return v0;
        }
    }

    return v0;
}

void sub_02056AC8 (const UnkStruct_02056B24 * param0, int param1, int * param2, int * param3)
{
    GF_ASSERT(param1 < 12);
    GF_ASSERT(param0->unk_B8[param1].unk_00);

    *param2 = param0->unk_B8[param1].unk_00;
    *param3 = param0->unk_B8[param1].unk_02;
}

u32 sub_02056AFC (const UnkStruct_02056B24 * param0, int param1)
{
    GF_ASSERT(param1 < 12);
    GF_ASSERT(param0->unk_B8[param1].unk_00);

    return param0->unk_B8[param1].unk_04;
}

UnkStruct_02056B24 * sub_02056B24 (UnkStruct_021C0794 * param0)
{
    UnkStruct_02056B24 * v0;

    v0 = sub_020245BC(param0, 5);
    return v0;
}
