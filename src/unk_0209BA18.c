#include <nitro.h>
#include <string.h>

#include "overlay104/struct_ov104_0222E930_decl.h"

#include "constdata/const_020F8BE0.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0209BBA4.h"
#include "overlay104/struct_ov104_0222E930_t.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "heap.h"
#include "unk_02025E08.h"
#include "unk_0203CC84.h"
#include "unk_0209BA18.h"

UnkStruct_ov104_02230BE4 * sub_0209BA18(UnkStruct_0203CDB0 * param0, void * param1);
BOOL ov104_02239624(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02239660(UnkStruct_ov104_0222E930 * param0);
static BOOL ov104_02239C88(UnkStruct_0209BBA4 * param0, u16 param1, u16 param2);

UnkStruct_ov104_02230BE4 * sub_0209BA18 (UnkStruct_0203CDB0 * param0, void * param1)
{
    UnkStruct_ov104_02230BE4 * v0 = AllocFromHeapAtEnd(11, sizeof(UnkStruct_ov104_02230BE4));

    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_02230BE4));

    v0->unk_00 = param1;
    v0->unk_04 = sub_02025E44(param0->unk_0C);
    v0->unk_08 = param0->unk_0C;
    v0->unk_0C = param0->unk_9C;
    v0->unk_10 = param0->unk_98;
    v0->unk_20 = param0->unk_BC;
    v0->unk_14 = 0;
    v0->unk_18 = 0;
    v0->unk_1C = param0->unk_1C->unk_00;
    v0->unk_24 = (((((((((((0 + 1) + 1) + 1) + 1) + 1) + 3) + 1) + 1) + 1) + 2) + 1);
    v0->unk_28 = param0;

    sub_0203CD84(param0, &Unk_020F8BE0, v0);

    return v0;
}
