#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02029C68_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_02030A80.h"
#include "overlay061/struct_ov61_0222AE80.h"
#include "overlay061/struct_ov61_0222AFC0.h"
#include "overlay061/struct_ov61_0222AFCC.h"
#include "overlay062/struct_ov62_02239DA4.h"
#include "overlay062/struct_ov62_02239DA4_sub1.h"

#include "unk_02023790.h"
#include "unk_020244AC.h"
#include "unk_020298BC.h"
#include "unk_020797C8.h"
#include "overlay061/ov61_0222AE60.h"

void ov61_0222AE60 (UnkStruct_021C0794 * param0, const UnkStruct_02029C68 * param1, UnkStruct_ov61_0222AE80 * param2)
{
    sub_0202A75C(param1, param2);
    param2->unk_5C.unk_00 = sub_0202486C(param0, param2, sizeof(UnkStruct_ov61_0222AE80) - (sizeof(UnkStruct_ov62_02239DA4_sub1)));
}

void ov61_0222AE80 (const UnkStruct_ov61_0222AE80 * param0, UnkStruct_02029C68 * param1)
{
    sub_0202A824(param0, param1);
}

void ov61_0222AE88 (UnkStruct_021C0794 * param0, const UnkStruct_020797DC * param1, int param2, UnkStruct_ov62_02239DA4 * param3, int param4)
{
    UnkStruct_02023790 * v0;
    int v1;

    MI_CpuClear8(param3, sizeof(UnkStruct_ov62_02239DA4));

    v0 = sub_02023790(20 * 3, param4);
    sub_02079AF4(param1, param2, v0);
    sub_02023DF0(v0, param3->unk_00, 20);
    sub_020237BC(v0);

    for (v1 = 0; v1 < 30; v1++) {
        param3->unk_28[v1] = sub_02079C08(param1, param2, v1, 5, NULL);
        param3->unk_64[v1] = sub_02079C08(param1, param2, v1, 0, NULL);
        param3->unk_DC[v1] = sub_02079C08(param1, param2, v1, 7, NULL);

        if (sub_02079C08(param1, param2, v1, 174, NULL) == 494) {
            param3->unk_154 |= 1 << v1;
        }

        param3->unk_158[v1] = sub_02079C08(param1, param2, v1, 112, NULL);
    }

    param3->unk_176 = sub_02079AA8(param1, param2);
    param3->unk_177 = 0;
    param3->unk_198.unk_00 = sub_0202486C(param0, param3, sizeof(UnkStruct_ov62_02239DA4) - (sizeof(UnkStruct_ov62_02239DA4_sub1)));
}

void ov61_0222AF88 (UnkStruct_021C0794 * param0, UnkStruct_ov62_02239DA4 * param1, int param2)
{
    param1->unk_177 = param2;
    param1->unk_198.unk_00 = sub_0202486C(param0, param1, sizeof(UnkStruct_ov62_02239DA4) - (sizeof(UnkStruct_ov62_02239DA4_sub1)));
}

void ov61_0222AFA4 (UnkStruct_021C0794 * param0, const UnkStruct_02030A80 * param1, UnkStruct_ov61_0222AFC0 * param2)
{
    GF_ASSERT(sizeof(UnkStruct_ov61_0222AFC0) == sizeof(UnkStruct_02030A80));
    MI_CpuClear8(param2, sizeof(UnkStruct_ov61_0222AFC0));
    MI_CpuCopy8(param1, param2, sizeof(UnkStruct_ov61_0222AFC0));
}

void ov61_0222AFC0 (const UnkStruct_ov61_0222AFC0 * param0, UnkStruct_02030A80 * param1)
{
    GF_ASSERT(sizeof(UnkStruct_ov61_0222AFC0) == sizeof(UnkStruct_02030A80));
    MI_CpuCopy8(param0, param1, sizeof(UnkStruct_ov61_0222AFC0));
}

void ov61_0222AFCC (UnkStruct_021C0794 * param0, const UnkStruct_02030A80 * param1, UnkStruct_ov61_0222AFCC * param2)
{
    MI_CpuClear8(param2, sizeof(UnkStruct_ov61_0222AFCC));

    param2->unk_00 = param1->unk_19;
    param2->unk_01 = param1->unk_1A;
    param2->unk_02 = param1->unk_15;
    param2->unk_03 = param1->unk_16;
    param2->unk_04 = param1->species;
    param2->unk_06_0 = param1->unk_1B_0;
}
