#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_plstring_decl.h"
#include "struct_decls/struct_02025CCC_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_0202783C_decl.h"
#include "struct_decls/struct_0202C878_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_02014A84.h"
#include "struct_defs/struct_0202F298_sub1.h"
#include "struct_defs/struct_02030A80.h"

#include "unk_020021B0.h"
#include "unk_02014A84.h"
#include "unk_02014D38.h"
#include "heap.h"
#include "plstring.h"
#include "unk_020244AC.h"
#include "unk_02025CB0.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_020277A4.h"
#include "unk_0202C858.h"
#include "unk_02030A80.h"
#include "unk_0205C980.h"
#include "unk_02073C2C.h"
#include "unk_020996D0.h"

UnkStruct_02030A80 * sub_02030A80 (int param0)
{
    UnkStruct_02030A80 * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_02030A80));
    MI_CpuClear8(v0, sizeof(UnkStruct_02030A80));

    return v0;
}

void sub_02030A98 (UnkStruct_02030A80 * param0)
{
    Heap_FreeToHeap(param0);
}

void sub_02030AA0 (UnkStruct_02030A80 * param0, UnkStruct_021C0794 * param1)
{
    UnkStruct_02025E6C * v0 = sub_02025E38(param1);
    UnkStruct_0202C878 * v1 = sub_0202C878(param1);
    UnkStruct_02025CCC * v2 = sub_02025CCC(param1);
    const UnkStruct_0202783C * v3 = sub_02027848(param1);
    int v4, v5, v6;
    int v7;
    OSOwnerInfo v8;

    OS_GetOwnerInfo(&v8);

    sub_02027914(v3, &v4, &v5, &v6);
    MI_CpuClear8(param0, sizeof(UnkStruct_02030A80));
    sub_020021B0(param0->unk_00, sub_02025EF0(v0));

    param0->unk_10 = sub_02025F20(v0);
    param0->unk_14 = sub_02025F30(v0);
    param0->unk_1C = v4;
    param0->unk_1B_1 = v5;
    param0->unk_1B_0 = v6;
    param0->unk_17 = sub_0202C8C0(v1);
    param0->unk_18 = sub_0202C8C4(v1);

    for (v7 = 0; v7 < 40; v7++) {
        param0->unk_20_val2[v7] = 0xffff;
    }

    sub_02027938(v3, &param0->unk_20_val1);

    param0->unk_15 = v8.birthday.month;
    param0->unk_16 = sub_0205CA14(sub_02025F30(v0), sub_02025F8C(v0), 0);
    param0->unk_19 = GAME_VERSION;
    param0->unk_1A = GAME_LANGUAGE;
    param0->unk_7C.unk_00 = sub_0202486C(param1, param0, sizeof(UnkStruct_02030A80) - (sizeof(UnkStruct_0202F298_sub1)));
}

PLString * sub_02030B94 (const UnkStruct_02030A80 * param0, int param1)
{
    PLString * v0 = PLString_Init((7 * 2) + 1, param1);

    PLString_FillWithCharsLimit(v0, param0->unk_00, (7 * 2) + 1);
    return v0;
}

u32 sub_02030BAC (const UnkStruct_02030A80 * param0)
{
    if ((param0->unk_14 != 0) && (param0->unk_14 != 1)) {
        return 0;
    }

    return param0->unk_14;
}

int sub_02030BBC (const UnkStruct_02030A80 * param0)
{
    if (param0->unk_1C >= 495) {
        return 0;
    }

    return param0->unk_1C;
}

int sub_02030BCC (const UnkStruct_02030A80 * param0)
{
    if (param0->unk_1C >= 495) {
        return 0;
    }

    return sub_020761E8(param0->unk_1C, param0->unk_1B_1);
}

int sub_02030BEC (const UnkStruct_02030A80 * param0)
{
    if (param0->unk_1B_0 > 1) {
        return 1;
    }

    return param0->unk_1B_0;
}

int sub_02030BFC (const UnkStruct_02030A80 * param0)
{
    if (param0->unk_17 >= 234) {
        return 0;
    }

    return param0->unk_17;
}

int sub_02030C08 (const UnkStruct_02030A80 * param0)
{
    if (param0->unk_17 >= 234) {
        return 0;
    }

    if (sub_020996F4(param0->unk_17) < param0->unk_18) {
        return 0;
    }

    return param0->unk_18;
}

PLString * sub_02030C28 (const UnkStruct_02030A80 * param0, UnkStruct_02014A84 * param1, int param2)
{
    int v0 = 0;

    if (param0->unk_1E == 0) {
        *param1 = param0->unk_20_val1;

        if (param1->unk_00 >= 5) {
            v0++;
        } else if (param1->unk_02 > 19) {
            v0++;
        } else {
            u32 v1, v2;

            if (((param1->unk_04[0] != 0xffff) && (sub_02014E4C(param1->unk_04[0], &v1, &v2) == 0)) || ((param1->unk_04[1] != 0xffff) && (sub_02014E4C(param1->unk_04[1], &v1, &v2) == 0))) {
                v0++;
            }
        }

        if (v0 > 0) {
            sub_02014A9C(param1, 4);
            param1->unk_02 = 0;
            param1->unk_04[0] = sub_02014DFC(441, 99);
            param1->unk_04[1] = 0xffff;
        }

        return NULL;
    } else {
        PLString * v3 = PLString_Init(40, param2);

        PLString_FillWithCharsLimit(v3, param0->unk_20_val2, 40);
        return v3;
    }
}

int sub_02030CCC (const UnkStruct_02030A80 * param0)
{
    if ((param0->unk_15 >= 1) && (param0->unk_15 <= 12)) {
        return param0->unk_15;
    }

    return 1;
}

int sub_02030CDC (const UnkStruct_02030A80 * param0)
{
    if (param0->unk_16 > 15) {
        return 0;
    }

    return param0->unk_16;
}
