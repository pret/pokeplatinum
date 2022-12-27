#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02025E0C_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_02025E50.h"
#include "struct_defs/struct_02025E5C.h"
#include "struct_defs/struct_02025E6C.h"
#include "struct_defs/struct_020279FC.h"

#include "unk_020244AC.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_020279FC.h"
#include "unk_0202B594.h"
#include "unk_0202CBE4.h"

struct UnkStruct_02025E0C_t {
    UnkStruct_020279FC unk_00;
    UnkStruct_02025E6C unk_04;
    UnkStruct_02025E50 unk_24;
    UnkStruct_02025E5C unk_26;
};

int sub_02025E08 (void)
{
    return sizeof(UnkStruct_02025E0C);
}

void sub_02025E0C (UnkStruct_02025E0C * param0)
{
    MI_CpuClearFast(param0, sizeof(UnkStruct_02025E0C));

    sub_02027A1C(&param0->unk_00);
    sub_02025E8C(&param0->unk_04);
    sub_0202B594(&param0->unk_24);
    sub_0202CBE4(&param0->unk_26);
}

UnkStruct_02025E6C * sub_02025E38 (UnkStruct_021C0794 * param0)
{
    UnkStruct_02025E0C * v0;

    v0 = sub_020245BC(param0, 1);
    return &v0->unk_04;
}

UnkStruct_020279FC * sub_02025E44 (UnkStruct_021C0794 * param0)
{
    UnkStruct_02025E0C * v0;

    v0 = sub_020245BC(param0, 1);
    return &v0->unk_00;
}

UnkStruct_02025E50 * sub_02025E50 (UnkStruct_021C0794 * param0)
{
    UnkStruct_02025E0C * v0;

    v0 = sub_020245BC(param0, 1);
    return &v0->unk_24;
}

UnkStruct_02025E5C * sub_02025E5C (UnkStruct_021C0794 * param0)
{
    UnkStruct_02025E0C * v0;

    v0 = sub_020245BC(param0, 1);
    return &v0->unk_26;
}
