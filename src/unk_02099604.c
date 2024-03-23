#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0202B628_decl.h"
#include "unk_020244AC.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0208BE5C.h"
#include "overlay082/struct_ov82_0223B164.h"

#include "heap.h"
#include "unk_02025E08.h"
#include "poffin.h"
#include "unk_0203CC84.h"
#include "unk_0207D3B8.h"
#include "overlay082/ov82_0223B140.h"

FS_EXTERN_OVERLAY(overlay82);

UnkStruct_ov82_0223B164 * sub_02099604(int param0, SaveData * param1, int param2, UnkStruct_0202B628 * param3);
UnkStruct_ov82_0223B164 * sub_02099674(UnkStruct_0203CDB0 * param0, int param1, int param2);
UnkStruct_ov82_0223B164 * sub_020996A0(UnkStruct_0203CDB0 * param0, int param1, BOOL param2);

UnkStruct_ov82_0223B164 * sub_02099604 (int param0, SaveData * param1, int param2, UnkStruct_0202B628 * param3)
{
    UnkStruct_ov82_0223B164 * v0;

    v0 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_ov82_0223B164));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov82_0223B164));

    v0->unk_0C = param1;
    v0->unk_08 = Poffin_GetSavedataBlock(param1);
    v0->unk_10 = sub_02025E38(param1);
    v0->unk_14 = sub_0207D990(param1);
    v0->unk_18 = sub_02025E44(param1);
    v0->unk_1C = param3;
    v0->unk_20 = 0;
    v0->unk_04 = param0;

    return v0;
}

static void sub_0209964C (UnkStruct_0203CDB0 * param0, UnkStruct_ov82_0223B164 * param1)
{
    FS_EXTERN_OVERLAY(overlay82);

    {
        UnkStruct_0208BE5C v0 = {
            ov82_0223B164,
            ov82_0223B1D4,
            ov82_0223B24C,
            FS_OVERLAY_ID(overlay82)
        };

        sub_0203CD84(param0, &v0, param1);
    }
}

UnkStruct_ov82_0223B164 * sub_02099674 (UnkStruct_0203CDB0 * param0, int param1, int param2)
{
    UnkStruct_ov82_0223B164 * v0;

    v0 = sub_02099604(param1, sub_0203D174(param0), param2, param0->unk_9C);
    sub_0209964C(param0, v0);

    return v0;
}

UnkStruct_ov82_0223B164 * sub_020996A0 (UnkStruct_0203CDB0 * param0, int param1, BOOL param2)
{
    UnkStruct_ov82_0223B164 * v0;

    v0 = sub_02099604(1, sub_0203D174(param0), param1, param0->unk_9C);
    v0->unk_20 = 1;
    v0->unk_24 = param2;

    sub_0209964C(param0, v0);

    return v0;
}
