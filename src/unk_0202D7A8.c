#include "unk_0202D7A8.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202D7B0.h"
#include "struct_defs/struct_0202D844.h"
#include "struct_defs/struct_0202D84C.h"
#include "struct_defs/struct_020698E4.h"
#include "struct_defs/struct_0206C638.h"

#include "savedata.h"
#include "unk_0201D15C.h"

int SpecialEncounter_SaveSize(void)
{
    return sizeof(UnkStruct_0202D7B0);
}

void SpecialEncounter_Init(UnkStruct_0202D7B0 *param0)
{
    memset(param0, 0, sizeof(UnkStruct_0202D7B0));

    param0->unk_00 = MTRNG_Next();
    param0->unk_04 = MTRNG_Next();
    param0->unk_08.unk_00 = 0;
    param0->unk_08.unk_04 = 0xffff;
    param0->unk_08.unk_06 = 0xffff;

    {
        int v0;
        UnkStruct_0202D844 *v1 = &(param0->unk_10);

        v1->unk_00 = 21;

        for (v0 = 0; v0 < 21; v0++) {
            v1->unk_04[v0].unk_00 = 0;
            v1->unk_04[v0].unk_04 = 0;
            v1->unk_04[v0].unk_05 = 0;
            v1->unk_04[v0].unk_06 = 0;
            v1->unk_04[v0].unk_07 = 0;
        }
    }

    param0->unk_14E = 0;
    param0->unk_14F = 0;
    param0->unk_150 = 0;
    param0->unk_151 = 0;
}

void sub_0202D80C(UnkStruct_0202D7B0 *param0, const u32 param1)
{
    param0->unk_00 = param1;
    param0->unk_04 = param1;
}

u32 sub_0202D814(UnkStruct_0202D7B0 *param0, const u8 param1)
{
    switch (param1) {
    case 1:
        return param0->unk_00;
    case 2:
        return param0->unk_04;
    default:
        GF_ASSERT(0);
        return 0;
    }
}

UnkStruct_020698E4 *sub_0202D830(UnkStruct_0202D7B0 *param0)
{
    return &(param0->unk_BC);
}

UnkStruct_0202D7B0 *sub_0202D834(SaveData *param0)
{
    return SaveData_SaveTable(param0, 25);
}

UnkStruct_0202D844 *sub_0202D840(UnkStruct_0202D7B0 *param0)
{
    return &(param0->unk_10);
}

const int sub_0202D844(UnkStruct_0202D844 *param0)
{
    return param0->unk_00;
}

void sub_0202D848(const u8 param0, UnkStruct_0202D844 *param1)
{
    param1->unk_00 = param0;
}

UnkStruct_0202D84C *sub_0202D84C(const u8 param0, UnkStruct_0202D844 *param1)
{
    UnkStruct_0202D84C *v0;

    v0 = &param1->unk_04[param0];
    return v0;
}

void sub_0202D854(SaveData *param0, const int param1)
{
    int v0;
    UnkStruct_0202D844 *v1;
    UnkStruct_0202D7B0 *v2;
    UnkStruct_0202D84C *v3;

    v2 = sub_0202D834(param0);
    v1 = &(v2->unk_10);

    for (v0 = 0; v0 < 21; v0++) {
        v3 = sub_0202D84C(v0, v1);

        if (v3->unk_00 != 0) {
            v3->unk_00 -= param1;

            if (v3->unk_00 < 0) {
                v3->unk_00 = 0;
            }
        }
    }
}

void sub_0202D884(SaveData *param0)
{
    UnkStruct_0202D7B0 *v0;

    v0 = sub_0202D834(param0);
    v0->unk_14E = 1;
}

u8 sub_0202D898(UnkStruct_0202D7B0 *param0)
{
    return param0->unk_14E;
}

void sub_0202D8A4(UnkStruct_0202D7B0 *param0, const int param1)
{
    if (param0->unk_C8.unk_00 != param1) {
        param0->unk_C8.unk_04 = param0->unk_C8.unk_00;
        param0->unk_C8.unk_00 = param1;
    }
}

int sub_0202D8BC(UnkStruct_0202D7B0 *param0)
{
    return param0->unk_C8.unk_04;
}

u8 sub_0202D8C4(UnkStruct_0202D7B0 *param0, const u8 param1)
{
    GF_ASSERT(param1 < 6);
    return param0->unk_148[param1];
}

void sub_0202D8DC(UnkStruct_0202D7B0 *param0, const u8 param1, const u8 param2)
{
    GF_ASSERT(param1 < 6);
    param0->unk_148[param1] = param2;
}

u8 sub_0202D8F8(UnkStruct_0202D7B0 *param0, const u8 param1)
{
    GF_ASSERT(param1 < 6);
    return param0->unk_D0[param1].unk_12;
}

void sub_0202D914(UnkStruct_0206C638 **param0)
{
    memset((*param0), 0, sizeof(UnkStruct_0206C638));
}

UnkStruct_0206C638 *sub_0202D924(UnkStruct_0202D7B0 *param0, const u8 param1)
{
    GF_ASSERT(param1 < 6);
    return &(param0->unk_D0[param1]);
}

u32 sub_0202D93C(const UnkStruct_0206C638 *param0, const u8 param1)
{
    u32 v0;

    switch (param1) {
    case 1:
        v0 = param0->unk_00;
        break;
    case 2:
        v0 = param0->unk_04;
        break;
    case 3:
        v0 = param0->unk_08;
        break;
    case 4:
        v0 = param0->unk_0C;
        break;
    case 5:
        v0 = param0->unk_0E;
        break;
    case 6:
        v0 = param0->unk_10;
        break;
    case 7:
        v0 = param0->unk_11;
        break;
    case 8:
        v0 = param0->unk_12;
        break;
    }

    return v0;
}

void sub_0202D980(UnkStruct_0206C638 *param0, const u8 param1, const u32 param2)
{
    u32 v0;

    switch (param1) {
    case 1:
        param0->unk_00 = param2;
        break;
    case 2:
        param0->unk_04 = param2;
        break;
    case 3:
        param0->unk_08 = param2;
        break;
    case 4:
        param0->unk_0C = param2;
        break;
    case 5:
        param0->unk_0E = param2;
        break;
    case 6:
        param0->unk_10 = param2;
        break;
    case 7:
        param0->unk_11 = param2;
        break;
    case 8:
        param0->unk_12 = param2;
        break;
    }
}

u8 *sub_0202D9C4(UnkStruct_0202D7B0 *param0)
{
    return &(param0->unk_150);
}

u8 *sub_0202D9CC(UnkStruct_0202D7B0 *param0)
{
    return &(param0->unk_14F);
}

BOOL sub_0202D9D8(UnkStruct_0202D7B0 *param0)
{
    if (!param0->unk_14F) {
        return 1;
    } else {
        return 0;
    }
}

void sub_0202D9EC(UnkStruct_0202D7B0 *param0, const u8 param1)
{
    GF_ASSERT((param1 == 1) || (param1 == 2) || (param1 == 0));
    param0->unk_151 = param1;
}

u8 sub_0202DA04(UnkStruct_0202D7B0 *param0)
{
    return param0->unk_151;
}

void sub_0202DA10(SaveData *param0, u16 *param1, u16 *param2)
{
    UnkStruct_0202D7B0 *v0 = sub_0202D834(param0);

    (*param1) = v0->unk_08.unk_04;
    (*param2) = v0->unk_08.unk_06;
}

void sub_0202DA24(SaveData *param0, const u16 param1)
{
    UnkStruct_0202D7B0 *v0 = sub_0202D834(param0);

    GF_ASSERT(param1 < 16);

    v0->unk_08.unk_06 = v0->unk_08.unk_04;
    v0->unk_08.unk_04 = param1;
}
