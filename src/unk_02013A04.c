#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02023790_decl.h"

#include "struct_defs/struct_02013A04_t.h"

#include "unk_0200AC5C.h"
#include "unk_02013A04.h"
#include "unk_02017E74.h"
#include "unk_02023790.h"

static UnkStruct_02013A04 * sub_02013AAC(UnkStruct_02013A04 * param0, u32 * param1);

UnkStruct_02013A04 * sub_02013A04 (u32 param0, u32 param1)
{
    UnkStruct_02013A04 * v0 = sub_02018144(param1, sizeof(UnkStruct_02013A04) * (param0 + 1));

    if (v0) {
        u32 v1;

        for (v1 = 0; v1 < param0; v1++) {
            v0[v1].unk_00 = NULL;
            v0[v1].unk_04 = 0;
        }

        v0[v1].unk_00 = ((const void *)0xffffffff);
        v0[v1].unk_04 = param1;
    }

    return v0;
}

void sub_02013A3C (UnkStruct_02013A04 * param0)
{
    sub_02013AE8(param0);
    sub_020181C4(param0);
}

void sub_02013A4C (UnkStruct_02013A04 * param0, const UnkStruct_0200B144 * param1, u32 param2, u32 param3)
{
    u32 v0;

    param0 = sub_02013AAC(param0, &v0);

    if (param0) {
        param0->unk_00 = sub_0200B1EC(param1, param2);
        param0->unk_04 = param3;
    }
}

void sub_02013A6C (UnkStruct_02013A04 * param0, const UnkStruct_02023790 * param1, u32 param2)
{
    u32 v0;

    param0 = sub_02013AAC(param0, &v0);

    if (param0) {
        param0->unk_00 = sub_02023868(param1, v0);
        param0->unk_04 = param2;
    }
}

void sub_02013A90 (UnkStruct_02013A04 * param0, const UnkStruct_02013A04 * param1)
{
    u32 v0;

    param0 = sub_02013AAC(param0, &v0);

    if (param0) {
        param0->unk_00 = param1->unk_00;
        param0->unk_04 = param1->unk_04;
    }
}

static UnkStruct_02013A04 * sub_02013AAC (UnkStruct_02013A04 * param0, u32 * param1)
{
    UnkStruct_02013A04 * v0;

    while (param0->unk_00 != NULL) {
        if (param0->unk_00 == ((const void *)0xffffffff)) {
            GF_ASSERT(0);
            return NULL;
        }

        param0++;
    }

    v0 = param0;

    while (param0->unk_00 != ((const void *)0xffffffff)) {
        param0++;
    }

    *param1 = param0->unk_04;

    return v0;
}

void sub_02013AE8 (UnkStruct_02013A04 * param0)
{
    UnkStruct_02013A04 * v0 = param0;

    while (v0->unk_00 != ((const void *)0xffffffff)) {
        if (v0->unk_00 == NULL) {
            break;
        }

        sub_020237BC((UnkStruct_02023790 *)(v0->unk_00));

        v0->unk_00 = NULL;
        v0++;
    }
}
