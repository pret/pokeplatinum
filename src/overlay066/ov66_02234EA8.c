#include <nitro.h>
#include <string.h>

#include "struct_decls/narc.h"

#include "overlay066/struct_ov66_02231428.h"
#include "overlay069/struct_ov69_0225C980.h"
#include "overlay092/struct_ov92_021D1530.h"

#include "narc.h"
#include "unk_02006E3C.h"
#include "heap.h"
#include "unk_020996D0.h"
#include "overlay066/ov66_02231428.h"
#include "overlay066/ov66_02234EA8.h"

static void ov66_02234F2C(NARC * param0, u32 param1, u16 param2, u8 param3, fx32 * param4);

UnkStruct_ov66_02231428 ov66_02234EA8 (u16 param0, u8 param1, UnkStruct_ov66_02231428 param2, u32 param3)
{
    fx32 v0;
    fx32 v1;
    u16 v2;
    s32 v3;
    UnkStruct_ov66_02231428 v4;
    NARC * v5;

    v5 = NARC_ctor(102, param3);

    ov66_02234F2C(v5, param3, 219, 3, &v0);
    ov66_02234F2C(v5, param3, param0, param1, &v1);

    v2 = v0 - v1;
    v3 = (v2 * 24) / 0xffff;

    if (v3 < 0) {
        v3 += 24;
    }

    if (v3 >= 24) {
        v3 %= 24;
    }

    memset(&v4, 0, sizeof(UnkStruct_ov66_02231428));
    v4.unk_00_val2_unk_00 = v3;

    ov66_0223144C(&v4, &param2, &v4);
    NARC_dtor(v5);

    return v4;
}

static void ov66_02234F2C (NARC * param0, u32 param1, u16 param2, u8 param3, fx32 * param4)
{
    BOOL v0 = 0;

    {
        void * v1;
        UnkStruct_ov92_021D1530 * v2;
        u32 v3;
        int v4;

        v1 = sub_02007250(param0, 18, 0, param1, 0, &v3);
        v2 = (UnkStruct_ov92_021D1530 *)v1;
        v4 = v3 / 6;

        GF_ASSERT(param2 < v4);

        if (v2[param2].unk_00 != 2) {
            *param4 = v2[param2].unk_04;
            v0 = 1;
        }

        Heap_FreeToHeap(v1);
    }

    if (v0 == 0) {
        void * v5;
        UnkStruct_ov69_0225C980 * v6;
        u32 v7, v8;
        int v9, v10;

        v9 = sub_020996D4(param2);
        v8 = sub_02099764(v9);
        v5 = sub_02007250(param0, v8, 0, param1, 0, &v7);
        v6 = (UnkStruct_ov69_0225C980 *)v5;
        v10 = v7 / 4;

        if (param3 < v10) {
            *param4 = v6[param3].unk_02;
        } else {
            GF_ASSERT(0);
            *param4 = v6[0].unk_02;
        }

        Heap_FreeToHeap(v5);
    }
}
