#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0202C878.h"

#include "unk_020244AC.h"
#include "unk_0202C858.h"

int WiFiHistory_SaveSize (void)
{
    return sizeof(UnkStruct_0202C878);
}

void WiFiHistory_Init (UnkStruct_0202C878 * param0)
{
    MI_CpuClear32(param0, sizeof(UnkStruct_0202C878));
    sub_02025C84(30);
}

UnkStruct_0202C878 * sub_0202C878 (SaveData * param0)
{
    sub_02025C48(30);
    return (UnkStruct_0202C878 *)sub_020245BC(param0, 30);
}

void sub_0202C88C (UnkStruct_0202C878 * param0, int param1, int param2)
{
    GF_ASSERT(param1 < 256);
    GF_ASSERT(param2 < 64);

    param0->unk_05 = param1;
    param0->unk_06 = param2;

    sub_0202C918(param0, param1, param2, 3);
    sub_02025C84(30);
}

int sub_0202C8C0 (const UnkStruct_0202C878 * param0)
{
    return param0->unk_05;
}

int sub_0202C8C4 (const UnkStruct_0202C878 * param0)
{
    return param0->unk_06;
}

int sub_0202C8C8 (const UnkStruct_0202C878 * param0, int param1, int param2)
{
    int v0;

    GF_ASSERT(param1 < 256);
    GF_ASSERT(param2 < 64);

    if (param1 == 0) {
        return 0;
    }

    v0 = (param0->unk_07[(param1 - 1) * 16 + param2 / 4] >> ((param2 % 4) * 2)) & 3;

    return v0;
}

void sub_0202C918 (UnkStruct_0202C878 * param0, int param1, int param2, int param3)
{
    u8 * v0;
    u8 v1 = 3;
    u8 v2;

    GF_ASSERT(param3 < 4);
    GF_ASSERT(param1 < 256);
    GF_ASSERT(param2 < 64);

    if (param1 == 0) {
        return;
    }

    v0 = &param0->unk_07[(param1 - 1) * 16 + param2 / 4];

    *v0 &= ((v1 << ((param2 % 4) * 2)) ^ 0xff);
    *v0 |= param3 << ((param2 % 4) * 2);

    if (param1 != 103) {
        sub_0202C994(param0, 1);
    }

    sub_02025C84(30);
}

BOOL sub_0202C990 (const UnkStruct_0202C878 * param0)
{
    return param0->unk_04;
}

void sub_0202C994 (UnkStruct_0202C878 * param0, BOOL param1)
{
    param0->unk_04 = param1;
    sub_02025C84(30);
}

void sub_0202C9A0 (UnkStruct_0202C878 * param0)
{
    int v0, v1;
    u8 v2;

    for (v0 = 0; v0 < (256 - 1) * 16; v0++) {
        v2 = param0->unk_07[v0];

        for (v1 = 0; v1 < 8; v1 += 2) {
            if (((v2 >> v1) & 3) == 1) {
                v2 &= ((3 << v1) ^ 0xff);
                v2 |= (2 << v1);
            }
        }

        param0->unk_07[v0] = v2;
    }

    sub_02025C84(30);
}
