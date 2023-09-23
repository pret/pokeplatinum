#include <nitro.h>
#include <string.h>

#include "strbuf.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0202B4A0.h"
#include "struct_defs/struct_0202B510.h"

#include "unk_020021B0.h"
#include "unk_0201D15C.h"
#include "strbuf.h"
#include "unk_020244AC.h"
#include "unk_0202B37C.h"

UnkStruct_0202B4A0 * Unk_021C079C;

int sub_0202B37C (void)
{
    return sizeof(UnkStruct_0202B4A0);
}

void sub_0202B384 (UnkStruct_0202B4A0 * param0, int param1, int param2)
{
    param0->unk_00[param2] = param0->unk_00[param1];
}

void sub_0202B3A8 (UnkStruct_0202B4A0 * param0)
{
    int v0;

    MI_CpuClearFast(param0, sizeof(UnkStruct_0202B4A0));

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_00[v0].unk_00[0] = 0xffff;
        param0->unk_00[v0].unk_10[0] = 0xffff;
    }

    Unk_021C079C = param0;
}

void sub_0202B3D8 (UnkStruct_0202B4A0 * param0, u32 param1)
{
    u32 v0, v1;

    for (v0 = 0; v0 < 6; v0++) {
        for (v1 = 0; v1 < param1; v1++) {
            param0->unk_00[v0].unk_28 = ARNG_Next(param0->unk_00[v0].unk_28);
        }
    }
}

u32 sub_0202B400 (UnkStruct_0202B4A0 * param0, int param1)
{
    return param0->unk_00[param1].unk_24;
}

void sub_0202B40C (UnkStruct_0202B4A0 * param0, int param1, u32 param2)
{
    param0->unk_00[param1].unk_24 = param2;
    param0->unk_00[param1].unk_28 = ARNG_Next(param2);
}

u32 sub_0202B428 (UnkStruct_0202B4A0 * param0)
{
    return param0->unk_00[1].unk_28;
}

const u16 * sub_0202B42C (const UnkStruct_0202B4A0 * param0, int param1, int param2)
{
    if (param2 == 0) {
        return param0->unk_00[param1].unk_00;
    }

    return param0->unk_00[param1].unk_10;
}

void sub_0202B444 (UnkStruct_0202B4A0 * param0, int param1, int param2, Strbuf *param3)
{
    u16 * v0;

    if (param2 == 0) {
        v0 = param0->unk_00[param1].unk_00;
        Strbuf_ToChars(param3, v0, 7 + 1);
    } else {
        v0 = param0->unk_00[param1].unk_10;
        Strbuf_ToChars(param3, v0, 7 + 1);
    }
}

void sub_0202B470 (UnkStruct_0202B4A0 * param0, int param1, int param2)
{
    param0->unk_00[param1].unk_20 = param2;
}

int sub_0202B47C (const UnkStruct_0202B4A0 * param0, int param1)
{
    return param0->unk_00[param1].unk_20;
}

int sub_0202B488 (const UnkStruct_0202B4A0 * param0, int param1)
{
    return param0->unk_00[param1].unk_21;
}

void sub_0202B494 (UnkStruct_0202B4A0 * param0, int param1, int param2)
{
    param0->unk_00[param1].unk_21 = param2;
}

UnkStruct_0202B4A0 * sub_0202B4A0 (SaveData * param0)
{
    return (UnkStruct_0202B4A0 *)sub_020245BC(param0, 17);
}

BOOL sub_0202B4AC (const UnkStruct_0202B4A0 * param0, int param1)
{
    const UnkStruct_0202B510 * v0 = &param0->unk_00[param1];
    return !(sub_0202B510(v0));
}

BOOL sub_0202B4C4 (const UnkStruct_0202B4A0 * param0, int param1)
{
    const UnkStruct_0202B510 * v0, * v1;

    v0 = &param0->unk_00[1];
    v1 = &param0->unk_00[param1];

    return sub_0202B530(v0, v1);
}

BOOL sub_0202B4D8 (const UnkStruct_0202B4A0 * param0, const u16 * param1)
{
    int v0;
    const UnkStruct_0202B510 * v1;

    if (*param1 == 0xffff) {
        return 0;
    }

    for (v0 = 0; v0 < 6; v0++) {
        v1 = &param0->unk_00[v0];

        if (!GF_strncmp(param1, v1->unk_00, 7 + 1)) {
            return 1;
        }
    }

    return 0;
}

BOOL sub_0202B510 (const UnkStruct_0202B510 * param0)
{
    if (param0->unk_00[0] == 0xffff) {
        return 1;
    }

    if (param0->unk_10[0] == 0xffff) {
        return 1;
    }

    return 0;
}

BOOL sub_0202B530 (const UnkStruct_0202B510 * param0, const UnkStruct_0202B510 * param1)
{
    int v0;

    if (GF_strncmp(param0->unk_10, param1->unk_10, 7 + 1)) {
        return 0;
    }

    if (GF_strncmp(param0->unk_00, param1->unk_00, 7 + 1)) {
        return 0;
    }

    if (param0->unk_20 != param1->unk_20) {
        return 0;
    }

    if (param0->unk_21 != param1->unk_21) {
        return 0;
    }

    if (param0->unk_24 != param1->unk_24) {
        return 0;
    }

    return 1;
}
