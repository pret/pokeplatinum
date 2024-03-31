#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020067E8_decl.h"

#include "overlay082/struct_ov82_0223B164.h"
#include "overlay083/struct_ov83_0223C344.h"

#include "unk_020067E8.h"
#include "heap.h"
#include "unk_020329E0.h"
#include "communication_system.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_0207D3B8.h"
#include "overlay004/ov4_021D0D80.h"
#include "overlay082/ov82_0223B140.h"
#include "overlay082/ov82_0223B2E0.h"

BOOL ov82_0223B140 (UnkStruct_020067E8 ** param0)
{
    if (*param0) {
        if (sub_02006844(*param0)) {
            sub_02006814(*param0);
            *param0 = NULL;
            return 1;
        }
    }

    return 0;
}

int ov82_0223B164 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov83_0223C344 * v0 = NULL;
    UnkStruct_ov82_0223B164 * v1 = (UnkStruct_ov82_0223B164 *)sub_02006840(param0);

    Heap_Create(3, 55, 0x20000);
    v0 = sub_0200681C(param0, sizeof(UnkStruct_ov83_0223C344), 55);
    MI_CpuClear8(v0, sizeof(UnkStruct_ov83_0223C344));

    v0->unk_00 = 55;
    v0->unk_10 = v1;

    if ((v1->unk_20) && (v1->unk_24)) {
        ov4_021D1E74(55);
    }

    v0->unk_26 = v1->unk_20;
    v0->unk_27 = v1->unk_24;
    v0->unk_0C = sub_0207D99C(v0->unk_00);

    if (v1->unk_04 == 1) {
        v0->unk_06_0 = 1;
    }

    return 1;
}

int ov82_0223B1D4 (UnkStruct_020067E8 * param0, int * param1)
{
    int v0;
    UnkStruct_ov83_0223C344 * v1 = sub_0200682C(param0);
    UnkStruct_ov82_0223B164 * v2 = (UnkStruct_ov82_0223B164 *)sub_02006840(param0);

    v0 = *param1;

    switch (*param1) {
    case 0:
        *param1 = ov82_0223B2E0(v1, &(v1->unk_14));
        break;
    case 1:
        *param1 = ov82_0223B330(v1, &(v1->unk_14));
        break;
    case 2:
        *param1 = ov82_0223B35C(v1, &(v1->unk_14));
        break;
    case 3:
        *param1 = ov82_0223B37C(v1, &(v1->unk_14));
        break;
    case 4:
        return 1;
    }

    if (v0 != *param1) {
        v1->unk_14 = 0;
    }

    return 0;
}

int ov82_0223B24C (UnkStruct_020067E8 * param0, int * param1)
{
    int v0 = 0;
    UnkStruct_ov83_0223C344 * v1 = sub_0200682C(param0);
    UnkStruct_ov82_0223B164 * v2 = (UnkStruct_ov82_0223B164 *)sub_02006840(param0);

    switch (*param1) {
    case 0:
        v0 = v1->unk_00;

        Heap_FreeToHeap(v1->unk_0C);
        MI_CpuClear8(v1, sizeof(UnkStruct_ov83_0223C344));
        sub_02006830(param0);

        if ((v2->unk_20) && (v2->unk_24)) {
            ov4_021D1F18();
        }

        Heap_Destroy(v0);

        if (v2->unk_20 == 0) {
            return 1;
        }

        sub_020388F4(0, 1);
        sub_020364F0(4);
        (*param1)++;
        break;
    case 1:
        if ((sub_02036540(4)) || (sub_02035E18() < sub_02032E64())) {
            return 1;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}
