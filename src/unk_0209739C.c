#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_02023790_decl.h"

#include "unk_020068C8.h"
#include "unk_0200AC5C.h"
#include "unk_0209739C.h"

typedef struct UnkStruct_020973A8_t {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
} UnkStruct_020973A8;

UnkStruct_02006C24 * sub_0209739C (u32 param0)
{
    return sub_02006C24(68, param0);
}

UnkStruct_020973A8 * sub_020973A8 (UnkStruct_02006C24 * param0, u32 param1, u32 param2)
{
    return sub_02006CB8(param0, 0 + param1, param2);
}

void sub_020973B0 (UnkStruct_02006C24 * param0)
{
    sub_02006CA8(param0);
}

UnkStruct_020973A8 * sub_020973B8 (u32 param0, u32 param1)
{
    return sub_02006AC0(68, 0 + param0, param1);
}

UnkStruct_020973A8 * sub_020973C8 (u32 param0, u32 param1)
{
    return sub_020973B8(param0 - 149, param1);
}

u32 sub_020973D4 (UnkStruct_020973A8 * param0, u32 param1)
{
    switch (param1) {
    case 0:
        return param0->unk_00;
    case 1:
        return param0->unk_02;
    case 2:
        return param0->unk_03;
    case 3:
        return param0->unk_04;
    case 4:
        return param0->unk_05;
    case 5:
        return param0->unk_06;
    case 6:
        return param0->unk_07;
    case 7:
        return param0->unk_08;
    case 8:
        return param0->unk_09;
    case 9:
        return param0->unk_0A;
    case 10:
        return param0->unk_0B;
    }

    return 0;
}

UnkStruct_02023790 * sub_0209742C (u16 param0, u32 param1)
{
    UnkStruct_0200B144 * v0;
    UnkStruct_02023790 * v1;

    v0 = sub_0200B144(1, 26, 424, param1);
    v1 = sub_0200B1EC(v0, param0);

    sub_0200B190(v0);
    return v1;
}

UnkStruct_02023790 * sub_02097454 (u16 param0, u16 param1)
{
    UnkStruct_0200B144 * v0;
    UnkStruct_02023790 * v1;

    v0 = sub_0200B144(1, 26, 423, param1);
    v1 = sub_0200B1EC(v0, param0);

    sub_0200B190(v0);
    return v1;
}
