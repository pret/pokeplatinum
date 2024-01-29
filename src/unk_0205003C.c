#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_020304A0_decl.h"
#include "struct_decls/struct_020305B8_decl.h"
#include "struct_decls/struct_0203E724_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "constdata/const_020F1E88.h"
#include "constdata/const_020F410C.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203E724_t.h"
#include "struct_defs/struct_0204AFC4.h"
#include "struct_defs/struct_02050224.h"
#include "struct_defs/struct_02098C44.h"
#include "struct_defs/struct_02098D38.h"

#include "heap.h"
#include "unk_02025E08.h"
#include "unk_02028124.h"
#include "unk_0202D778.h"
#include "unk_02030494.h"
#include "unk_0203061C.h"
#include "unk_02034198.h"
#include "unk_0203CC84.h"
#include "unk_0203E724.h"
#include "unk_0203E880.h"
#include "unk_02049D08.h"
#include "unk_0205003C.h"
#include "unk_020508D4.h"
#include "unk_0205DFC4.h"
#include "party.h"
#include "unk_0207A274.h"
#include "unk_0207D3B8.h"
#include "unk_0208C324.h"
#include "unk_02099500.h"

#include <nitro/code16.h>

typedef struct {
    int unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06[3];
    void ** unk_0C;
} UnkStruct_0205037C;

BOOL sub_0205003C(UnkStruct_0203E724 * param0);
BOOL sub_0205013C(UnkStruct_0203E724 * param0);
static void sub_02050174(SaveData * param0, UnkStruct_020305B8 * param1, u8 param2);
void sub_020502E0(UnkStruct_020508D4 * param0, void ** param1, u8 param2);
static BOOL sub_02050314(UnkStruct_020508D4 * param0);
static int sub_0205037C(UnkStruct_0205037C * param0, UnkStruct_0203CDB0 * param1, int param2);
static int sub_02050448(UnkStruct_0205037C * param0, UnkStruct_0203CDB0 * param1);
static int sub_02050498(UnkStruct_0205037C * param0, UnkStruct_0203CDB0 * param1, int param2);
static int sub_02050520(UnkStruct_0205037C * param0, UnkStruct_0203CDB0 * param1);
BOOL sub_020501D8(UnkStruct_0203E724 * param0);
void sub_02050224(UnkStruct_020508D4 * param0, u16 param1, u16 param2, u16 * param3);
static BOOL sub_02050264(UnkStruct_020508D4 * param0);

BOOL sub_0205003C (UnkStruct_0203E724 * param0)
{
    u8 v0;
    u8 v1[4];
    u16 v2[4];
    u16 v3, v4, v5;
    u16 * v6, * v7;
    void ** v8;
    UnkStruct_0204AFC4 * v9;
    UnkStruct_020304A0 * v10;
    UnkStruct_020305B8 * v11;

    v3 = sub_0203E838(param0);
    v4 = inline_02049538(param0);
    v5 = sub_0203E838(param0);
    v6 = sub_0203F118(param0->unk_34, v5);
    v10 = sub_020304A0(param0->unk_34->unk_0C);
    v11 = sub_020305B8(param0->unk_34->unk_0C);
    v8 = sub_0203F098(param0->unk_34, 19);

    switch (v3) {
    case 0:
        *v6 = sub_02049EC4(v4, param0->unk_34->unk_0C, 0);
        break;
    case 1:
        if (v4 == 3) {
            *v6 = sub_02030698(sub_0203068C(param0->unk_34->unk_0C), 110, sub_0205E6A8(110));
        } else {
            *v6 = (u16)sub_02030600(v11, 8, v4, 0, NULL);
        }
        break;
    case 3:
        sub_02050174(param0->unk_34->unk_0C, v11, v4);
        break;
    case 4:
        if (v4 == 0) {
            v0 = 0;
        } else if (v4 == 1) {
            v0 = 1;
        } else if (v4 == 2) {
            v0 = 2;
        } else {
            v0 = 2;
        }

        sub_020502E0(param0->unk_28, v8, v0);
        return 1;
    default:
        GF_ASSERT(FALSE);
        *v6 = 0;
        break;
    }

    return 0;
}

BOOL sub_0205013C (UnkStruct_0203E724 * param0)
{
    UnkStruct_020305B8 * v0;
    u16 v1 = inline_02049538(param0);

    v0 = sub_020305B8(param0->unk_34->unk_0C);
    sub_02050174(param0->unk_34->unk_0C, v0, v1);

    return 0;
}

static void sub_02050174 (SaveData * param0, UnkStruct_020305B8 * param1, u8 param2)
{
    int v0;
    u16 v1[4];
    u8 v2[4];

    v2[0] = 0;
    sub_020305CC(param1, 8, param2, 0, v2);

    if (param2 == 3) {
        sub_020306E4(sub_0203068C(param0), 110, sub_0205E6A8(110), 0);
    }

    sub_020306E4(sub_0203068C(param0), sub_0205E700(param2), sub_0205E6A8(sub_0205E700(param2)), 0);
    return;
}

BOOL sub_020501D8 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 v1 = inline_02049538(param0);
    u16 * v2 = inline_0204FCAC(param0);

    sub_02050224(param0->unk_28, v0, v1, v2);
    return 1;
}

void sub_02050224 (UnkStruct_020508D4 * param0, u16 param1, u16 param2, u16 * param3)
{
    UnkStruct_02050224 * v0;

    v0 = Heap_AllocFromHeap(11, sizeof(UnkStruct_02050224));
    memset(v0, 0, sizeof(UnkStruct_02050224));

    v0->unk_04[0] = param1;
    v0->unk_04[1] = param2;
    v0->unk_0C = param3;

    sub_02099514(v0);
    sub_02050944(param0, sub_02050264, v0);

    return;
}

static BOOL sub_02050264 (UnkStruct_020508D4 * param0)
{
    UnkStruct_02050224 * v0 = sub_02050A64(param0);

    switch (v0->unk_00) {
    case 0:
        if (sub_020359DC(134, v0, sizeof(UnkStruct_02050224)) == 1) {
            v0->unk_00++;
        }
        break;
    case 1:
        if (v0->unk_01 >= 2) {
            *v0->unk_0C = 0;

            if ((v0->unk_04[0] == v0->unk_08[0]) || (v0->unk_04[0] == v0->unk_08[1])) {
                *v0->unk_0C += 1;
            }

            if ((v0->unk_04[1] == v0->unk_08[0]) || (v0->unk_04[1] == v0->unk_08[1])) {
                *v0->unk_0C += 2;
            }

            v0->unk_00++;
        }
        break;
    case 2:
        Heap_FreeToHeap(v0);
        return 1;
    }

    return 0;
}

void sub_020502E0 (UnkStruct_020508D4 * param0, void ** param1, u8 param2)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_0205037C * v1 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0205037C));

    MI_CpuClear8(v1, sizeof(UnkStruct_0205037C));

    v1->unk_04 = param2;
    v1->unk_0C = param1;

    sub_02050944(v0->unk_10, sub_02050314, v1);
    return;
}

static BOOL sub_02050314 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_0205037C * v1 = sub_02050A64(param0);

    switch (v1->unk_00) {
    case 0:
        v1->unk_00 = sub_0205037C(v1, v0, 11);
        break;
    case 1:
        v1->unk_00 = sub_02050448(v1, v0);
        break;
    case 2:
        v1->unk_00 = sub_02050498(v1, v0, 11);
        break;
    case 3:
        v1->unk_00 = sub_02050520(v1, v0);
        break;
    case 4:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

static int sub_0205037C (UnkStruct_0205037C * param0, UnkStruct_0203CDB0 * param1, int param2)
{
    u8 v0;
    PartyManagementData * v1 = Heap_AllocFromHeap(11, sizeof(PartyManagementData));

    MI_CpuClearFast(v1, sizeof(PartyManagementData));

    v1->unk_00 = Party_GetFromSavedata(param1->unk_0C);
    v1->unk_04 = sub_0207D990(param1->unk_0C);
    v1->unk_08 = sub_02028430(param1->unk_0C);
    v1->unk_0C = sub_02025E44(param1->unk_0C);
    v1->unk_21 = 0;
    v1->unk_20 = 23;
    v1->unk_1C = param1;
    v1->unk_22 = param0->unk_05;

    for (v0 = 0; v0 < 3; v0++) {
        v1->unk_2C[v0] = param0->unk_06[v0];
    }

    v1->unk_33 = 100;
    v1->unk_32_0 = 3;
    v1->unk_32_4 = 3;

    if (param0->unk_04 == 2) {
        v1->unk_32_0 = 2;
        v1->unk_32_4 = 2;
    }

    sub_0203CD84(param1, &Unk_020F1E88, v1);
    *(param0->unk_0C) = v1;

    return 1;
}

static int sub_02050448 (UnkStruct_0205037C * param0, UnkStruct_0203CDB0 * param1)
{
    int v0;
    PartyManagementData * v1;

    if (sub_020509B4(param1)) {
        return 1;
    }

    v1 = *(param0->unk_0C);

    switch (v1->unk_22) {
    case 7:
        return 4;
    case 6:
        return 4;
    default:
        break;
    }

    MI_CpuCopy8(v1->unk_2C, param0->unk_06, 3);
    param0->unk_05 = v1->unk_22;
    Heap_FreeToHeap(v1);
    *(param0->unk_0C) = NULL;

    return 2;
}

static int sub_02050498 (UnkStruct_0205037C * param0, UnkStruct_0203CDB0 * param1, int param2)
{
    UnkStruct_02098D38 * v0;
    SaveData * v1;
    static const u8 v2[] = {
        0, 1, 2, 4, 3, 5, 6, 7, 8
    };

    v1 = param1->unk_0C;
    v0 = Heap_AllocFromHeapAtEnd(param2, sizeof(UnkStruct_02098D38));

    MI_CpuClear8(v0, sizeof(UnkStruct_02098D38));

    v0->unk_04 = sub_02025E44(v1);
    v0->unk_00 = Party_GetFromSavedata(v1);
    v0->unk_1C = sub_0207A274(v1);
    v0->unk_2C = sub_0208C324(v1);
    v0->unk_11 = 1;
    v0->unk_14 = param0->unk_05;
    v0->unk_13 = (u8)Party_GetCurrentCount(v0->unk_00);
    v0->unk_18 = 0;
    v0->unk_12 = 0;
    v0->unk_20 = sub_0202D79C(v1);

    sub_0208D720(v0, v2);
    sub_0208E9C0(v0, sub_02025E38(v1));
    sub_0203CD84(param1, &Unk_020F410C, v0);

    *(param0->unk_0C) = v0;
    return 3;
}

static int sub_02050520 (UnkStruct_0205037C * param0, UnkStruct_0203CDB0 * param1)
{
    UnkStruct_02098D38 * v0;

    if (sub_020509B4(param1)) {
        return 3;
    }

    v0 = *(param0->unk_0C);
    param0->unk_05 = v0->unk_14;
    Heap_FreeToHeap(v0);
    *(param0->unk_0C) = NULL;

    return 0;
}
