#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_02023790_decl.h"

#include "struct_defs/struct_0203CDB0_sub2_t.h"

#include "unk_02002B7C.h"
#include "unk_0200AC5C.h"
#include "unk_0203A024.h"
#include "unk_02071CFC.h"

u32 sub_02071CFC (UnkStruct_0200B144 * param0, const int param1, UnkStruct_02023790 * param2)
{
    u32 v0;

    sub_0200B1B8(param0, param1, param2);
    v0 = sub_02002D7C(0, param2, 0);

    return v0;
}

void sub_02071D10 (const int param0, const u32 param1, UnkStruct_02023790 * param2)
{
    int v0;
    UnkStruct_0200B144 * v1;

    v1 = sub_0200B144(1, 26, 433, param1);
    v0 = sub_0203A138(param0);

    sub_02071CFC(v1, v0, param2);
    sub_0200B190(v1);
}
