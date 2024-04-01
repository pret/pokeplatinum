#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "struct_decls/struct_020067E8_decl.h"

#include "struct_defs/struct_0208BE5C.h"
#include "overlay117/struct_ov117_02260440.h"
#include "overlay117/struct_ov117_022605C0.h"

#include "unk_020067E8.h"
#include "heap.h"
#include "communication_information.h"
#include "communication_system.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "overlay004/ov4_021D0D80.h"
#include "overlay114/ov114_0225C700.h"
#include "overlay117/ov117_02260440.h"
#include "overlay117/ov117_02260668.h"
#include "overlay117/ov117_02266498.h"

static const UnkStruct_0208BE5C Unk_ov117_022668F8 = {
    ov117_02260668,
    ov117_0226098C,
    ov117_02260C10,
    0xFFFFFFFF
};

static const UnkStruct_0208BE5C Unk_ov117_02266908 = {
    ov117_02266498,
    ov117_022664BC,
    ov117_022665E8,
    0xFFFFFFFF
};

static void ov117_022605D8(UnkStruct_ov117_022605C0 * param0, UnkStruct_ov117_02260440 * param1);
static BOOL ov117_02260630(UnkStruct_ov117_022605C0 * param0);

int ov117_02260440 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov117_02260440 * v0 = sub_02006840(param0);
    UnkStruct_ov117_022605C0 * v1;

    Heap_Create(3, 110, 0x60000);

    v1 = sub_0200681C(param0, sizeof(UnkStruct_ov117_022605C0), 110);
    MI_CpuClear8(v1, sizeof(UnkStruct_ov117_022605C0));
    ov117_022605D8(v1, v0);

    return 1;
}

int ov117_02260474 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov117_022605C0 * v0 = sub_0200682C(param0);
    UnkStruct_ov117_02260440 * v1 = sub_02006840(param0);

    if (ov117_02260630(v0) == 1) {
        return 1;
    }

    switch (*param1) {
    case 0:
        v0->unk_31 = 0;
        v0->unk_28 = sub_020067E8(&Unk_ov117_02266908, v0, 110);
        (*param1)++;
        break;
    case 1:
        if (sub_02006844(v0->unk_28) == 1) {
            sub_02006814(v0->unk_28);
            v0->unk_28 = NULL;
            (*param1)++;
        }
        break;
    case 2:
        v0->unk_31 = 1;
        v0->unk_28 = sub_020067E8(&Unk_ov117_022668F8, v0, 110);
        (*param1)++;
        break;
    case 3:
        if (sub_02006844(v0->unk_28) == 1) {
            sub_02006814(v0->unk_28);
            v0->unk_28 = NULL;
            (*param1)++;
        }
        break;
    case 4:
        if (v1->unk_38) {
            ov4_021D1F18();
        }

        v0->unk_31 = 2;
        v0->unk_28 = sub_020067E8(&Unk_ov117_02266908, v0, 110);
        (*param1)++;
        break;
    case 5:
        if (sub_02006844(v0->unk_28) == 1) {
            sub_02006814(v0->unk_28);
            v0->unk_28 = NULL;

            if (v0->unk_38 == 1) {
                (*param1) = 0;
            } else {
                (*param1)++;
            }
        }
        break;
    case 6:
        sub_020388F4(0, 1);
        sub_020364F0(222);
        (*param1)++;
        break;
    case 7:
        if ((sub_02036540(222) == 1) || (sub_02035E18() < sub_02032E64())) {
            (*param1)++;
        }

        break;
    case 8:
    default:
        return 1;
    }

    return 0;
}

int ov117_022605C0 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov117_022605C0 * v0 = sub_0200682C(param0);

    sub_02006830(param0);
    Heap_Destroy(110);

    return 1;
}

static void ov117_022605D8 (UnkStruct_ov117_022605C0 * param0, UnkStruct_ov117_02260440 * param1)
{
    int v0, v1, v2, v3;

    v3 = sub_0203608C();
    v2 = 0;
    v1 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        if (sub_02032EE8(v0) != NULL) {
            param0->unk_2C[v1] = v0;

            if (v0 == v3) {
                v2 = v1;
            }

            v1++;
        } else {
            param0->unk_2C[v0] = 0xffff;
        }
    }

    param0->unk_30 = v1;
    param0->unk_3C = param1->unk_38;

    ov114_0225C700(&param0->unk_00, param1->unk_39, param1->unk_34, param1->unk_38, &param1->unk_00);
}

static BOOL ov117_02260630 (UnkStruct_ov117_022605C0 * param0)
{
    if (param0->unk_3D == 0) {
        if (ov114_0225CA54(&param0->unk_00) == 1) {
            param0->unk_3D = 1;
        }
    }

    if (param0->unk_3D == 1) {
        if (param0->unk_28 == NULL) {
            return 1;
        }
    }

    return 0;
}
