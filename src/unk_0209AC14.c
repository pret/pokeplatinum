#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020508D4_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "overlay007/struct_ov7_0224D008.h"

#include "heap.h"
#include "unk_020508D4.h"
#include "unk_0207CB08.h"
#include "unk_0209AC14.h"
#include "overlay005/ov5_021D0D80.h"
#include "overlay007/ov7_0224CD28.h"

static u8 sub_0209AC50(FieldSystem * param0, UnkStruct_ov7_0224D008 * param1);
static void sub_0209AC80(UnkStruct_020508D4 * param0);

BOOL sub_0209AC14 (UnkStruct_020508D4 * param0)
{
    FieldSystem * v0;
    UnkStruct_ov7_0224D008 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    switch (v1->unk_297) {
    case 16:
        v1->unk_297 = sub_0209AC50(v0, v1);
        break;
    case 17:
        sub_0209AC80(param0);
        break;
    }

    return 0;
}

static u8 sub_0209AC50 (FieldSystem * param0, UnkStruct_ov7_0224D008 * param1)
{
    if (sub_020509B4(param0)) {
        return 16;
    }

    param1->unk_2A8 = sub_0207CBAC(param1->unk_04);

    Heap_FreeToHeap(param1->unk_04);
    sub_020509D4(param0);

    return 17;
}

static void sub_0209AC80 (UnkStruct_020508D4 * param0)
{
    FieldSystem * v0;
    UnkStruct_ov7_0224D008 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    if (sub_020509DC(v0)) {
        ov5_021D1744(1);
        sub_02050924(param0, ov7_0224CEAC, v1);
        v1->unk_297 = 18;
    }
}
