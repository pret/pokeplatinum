#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_strbuf_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_02014A84.h"
#include "struct_defs/struct_02027854.h"
#include "struct_defs/struct_02027860.h"

#include "unk_02014A84.h"
#include "unk_02014D38.h"
#include "string/strbuf.h"
#include "unk_020244AC.h"
#include "unk_020277A4.h"
#include "unk_02027B70.h"
#include "unk_02027F50.h"

typedef struct {
    u32 unk_00[5];
    u32 unk_14[5];
    u8 unk_28[5];
    u8 unk_2D[3];
} UnkStruct_0202783C_sub1;

typedef struct UnkStruct_0202783C_t {
    UnkStruct_02027854 unk_00[128];
    UnkStruct_02027860 unk_680;
    u16 unk_6A4[8];
    u16 unk_6B4[11];
    u16 unk_6CA;
    u8 unk_6CC_0 : 7;
    u8 unk_6CC_7 : 1;
    u8 unk_6CD_0 : 1;
    u8 unk_6CD_1 : 4;
    u8 : 3;
    u32 unk_6D0;
    UnkStruct_02014A84 unk_6D4;
    UnkStruct_0202783C_sub1 unk_6DC;
} UnkStruct_0202783C;

int sub_020277A4 (void)
{
    return sizeof(UnkStruct_0202783C);
}

void sub_020277AC (UnkStruct_0202783C * param0)
{
    MI_CpuClearFast(param0, sizeof(UnkStruct_0202783C));

    sub_02027B70(param0->unk_00);
    sub_02027F50(&param0->unk_680);

    MI_CpuFill16(param0->unk_6A4, 0xffff, 7 + 1);
    MI_CpuFill16(param0->unk_6B4, 0xffff, 10 + 1);

    sub_02014A9C(&param0->unk_6D4, 4);

    param0->unk_6D4.unk_02 = 0;
    param0->unk_6D4.unk_04[0] = sub_02014DFC(441, 99);
    param0->unk_6D4.unk_04[1] = 0xffff;

    {
        int v0;

        for (v0 = 0; v0 < 6 - 1; v0++) {
            param0->unk_6DC.unk_00[v0] = 0xffffffff;
            param0->unk_6DC.unk_14[v0] = 0xffffffff;
        }
    }
}

UnkStruct_0202783C * sub_0202783C (UnkStruct_021C0794 * param0)
{
    return sub_020245BC(param0, 10);
}

const UnkStruct_0202783C * sub_02027848 (const UnkStruct_021C0794 * param0)
{
    return sub_020245E0(param0, 10);
}

UnkStruct_02027854 * sub_02027854 (UnkStruct_021C0794 * param0)
{
    UnkStruct_0202783C * v0;

    v0 = sub_020245BC(param0, 10);
    return v0->unk_00;
}

UnkStruct_02027860 * sub_02027860 (UnkStruct_021C0794 * param0)
{
    UnkStruct_0202783C * v0;

    v0 = sub_020245BC(param0, 10);
    return &v0->unk_680;
}

const u16 * sub_02027870 (const UnkStruct_0202783C * param0)
{
    return param0->unk_6A4;
}

void sub_0202787C (UnkStruct_0202783C * param0, Strbuf * param1)
{
    PLString_Dump(param1, param0->unk_6A4, 7 + 1);
}

const u16 * sub_02027894 (const UnkStruct_0202783C * param0)
{
    return param0->unk_6B4;
}

void sub_020278A0 (UnkStruct_0202783C * param0, Strbuf * param1)
{
    PLString_Dump(param1, param0->unk_6B4, 10 + 1);
}

void sub_020278B8 (UnkStruct_0202783C * param0)
{
    param0->unk_6CD_0 = 1;
}

u32 sub_020278CC (const UnkStruct_0202783C * param0)
{
    return param0->unk_6CD_0;
}

void sub_020278DC (UnkStruct_0202783C * param0, int param1, int param2, int param3)
{
    param0->unk_6CA = param1;
    param0->unk_6CC_0 = param2;
    param0->unk_6CC_7 = param3;
}

void sub_02027914 (const UnkStruct_0202783C * param0, int * param1, int * param2, int * param3)
{
    *param1 = param0->unk_6CA;
    *param2 = param0->unk_6CC_0;
    *param3 = param0->unk_6CC_7;
}

void sub_02027938 (const UnkStruct_0202783C * param0, UnkStruct_02014A84 * param1)
{
    *param1 = param0->unk_6D4;
}

void sub_02027958 (UnkStruct_0202783C * param0, const UnkStruct_02014A84 * param1)
{
    param0->unk_6D4 = *param1;
}

void sub_0202797C (const UnkStruct_0202783C * param0, u8 * param1)
{
    *param1 = param0->unk_6CD_1;
}

void sub_0202798C (UnkStruct_0202783C * param0, u8 param1)
{
    param0->unk_6CD_1 = param1;
}

void sub_020279A8 (const UnkStruct_0202783C * param0, int param1, u32 * param2, u32 * param3, u8 * param4)
{
    *param2 = param0->unk_6DC.unk_00[param1 - 1];
    *param3 = param0->unk_6DC.unk_14[param1 - 1];
    *param4 = param0->unk_6DC.unk_28[param1 - 1];
}

void sub_020279D0 (UnkStruct_0202783C * param0, int param1, u32 param2, u32 param3, u8 param4)
{
    param0->unk_6DC.unk_00[param1 - 1] = param2;
    param0->unk_6DC.unk_14[param1 - 1] = param3;
    param0->unk_6DC.unk_28[param1 - 1] = param4;
}
