#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_0201CD88_decl.h"
#include "overlay005/struct_ov5_021D1A94_decl.h"
#include "overlay005/struct_ov5_021D1BEC_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203CDB0_sub2_t.h"
#include "overlay006/struct_ov6_0223E6EC.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_0201CCF0.h"
#include "unk_0203CC84.h"
#include "overlay005/ov5_021D1A94.h"

struct UnkStruct_ov5_021D1A94_t {
    UnkStruct_0203CDB0 * unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov5_021D1BEC * unk_0C;
    UnkStruct_0201CD88 * unk_10;
};

struct UnkStruct_ov5_021D1BEC_t {
    UnkStruct_ov5_021D1A94 * unk_00;
    UnkStruct_0201CD38 * unk_04;
    UnkStruct_0201CD38 * unk_08;
    const UnkStruct_ov6_0223E6EC * unk_0C;
    void * unk_10;
};

UnkStruct_ov5_021D1A94 * ov5_021D1A94 (UnkStruct_0203CDB0 * param0, int param1, int param2)
{
    UnkStruct_ov5_021D1A94 * v0;
    u32 v1;

    v0 = AllocFromHeap(param1, sizeof(UnkStruct_ov5_021D1A94));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_0C = AllocFromHeap(param1, sizeof(UnkStruct_ov5_021D1BEC) * param2);

    MI_CpuClear32(v0->unk_0C, sizeof(UnkStruct_ov5_021D1BEC) * param2);

    v1 = sub_0201CD80(param2);

    v0->unk_10 = AllocFromHeap(param1, v1);
    v0->unk_10 = sub_0201CD88(param2, v0->unk_10);

    return v0;
}

void ov5_021D1AE4 (UnkStruct_ov5_021D1A94 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_08; v0++) {
        ov5_021D1BEC(&param0->unk_0C[v0]);
    }

    FreeToHeap(param0->unk_0C);
    FreeToHeap(param0->unk_10);
    FreeToHeap(param0);
}

void ov5_021D1B18 (UnkStruct_ov5_021D1A94 * param0)
{
    sub_0201CDD4(param0->unk_10);
}

static void ov5_021D1B24 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov5_021D1BEC * v0 = param1;

    if (sub_0203CD5C(v0->unk_00->unk_00)) {
        if (v0->unk_0C->unk_10) {
            v0->unk_0C->unk_10(v0, v0->unk_00->unk_00, v0->unk_10);
        }
    }
}

static void ov5_021D1B48 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov5_021D1BEC * v0 = param1;

    if (sub_0203CD5C(v0->unk_00->unk_00)) {
        if (v0->unk_0C->unk_14) {
            v0->unk_0C->unk_14(v0, v0->unk_00->unk_00, v0->unk_10);
        }
    }
}

UnkStruct_ov5_021D1BEC * ov5_021D1B6C (UnkStruct_ov5_021D1A94 * param0, const UnkStruct_ov6_0223E6EC * param1)
{
    int v0;
    UnkStruct_ov5_021D1BEC * v1;

    for (v1 = param0->unk_0C, v0 = 0; v0 < param0->unk_08; v1++, v0++) {
        if (v1->unk_04 == NULL) {
            v1->unk_04 = sub_0200D9E8(ov5_021D1B24, v1, param1->unk_00);
            v1->unk_08 = sub_0201CE14(param0->unk_10, ov5_021D1B48, v1, param1->unk_00);
            v1->unk_00 = param0;
            v1->unk_0C = param1;

            GF_ASSERT(v1->unk_04 != NULL);
            GF_ASSERT(v1->unk_08 != NULL);

            if (param1->unk_04 != 0) {
                v1->unk_10 = AllocFromHeap(param0->unk_04, param1->unk_04);
            }

            if (param1->unk_08) {
                param1->unk_08(v1, param0->unk_00, v1->unk_10);
            }

            return v1;
        }
    }

    GF_ASSERT(0);
    return NULL;
}

void ov5_021D1BEC (UnkStruct_ov5_021D1BEC * param0)
{
    if (param0->unk_04 == NULL) {
        return;
    }

    if (param0->unk_0C->unk_0C) {
        param0->unk_0C->unk_0C(param0, param0->unk_00->unk_00, param0->unk_10);
    }

    if (param0->unk_0C->unk_04 != 0) {
        FreeToHeap(param0->unk_10);
    }

    sub_0200DA58(param0->unk_04);
    sub_0200DA58(param0->unk_08);

    MI_CpuClear32(param0, sizeof(UnkStruct_ov5_021D1BEC));
}

void * ov5_021D1C2C (UnkStruct_ov5_021D1BEC * param0)
{
    return param0->unk_10;
}
