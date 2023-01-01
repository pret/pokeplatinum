#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0209B75C_decl.h"

#include "overlay063/struct_ov63_0222CCB8.h"
#include "overlay104/struct_ov104_0223C4CC.h"
#include "overlay104/struct_ov104_0223C634.h"
#include "overlay104/struct_ov104_0223D8F0.h"

#include "unk_0209B6F8.h"
#include "overlay063/ov63_0222D77C.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/ov104_0223C2D4.h"
#include "overlay104/ov104_0223D860.h"

typedef BOOL (* UnkFuncPtr_ov104_022418A8)(UnkStruct_0209B75C *, UnkStruct_ov104_0223C634 *);

static void ov104_0223D898(UnkStruct_0209B75C * param0, UnkStruct_ov104_0223C634 * param1);
void ov104_0223D860(UnkStruct_0209B75C * param0, u16 param1, u8 param2, s16 param3[], int param4);
void ov104_0223D8C4(UnkStruct_0209B75C * param0);
static BOOL ov104_0223D8F0(UnkStruct_0209B75C * param0, UnkStruct_ov104_0223C634 * param1);

static const UnkFuncPtr_ov104_022418A8 Unk_ov104_022418A8[] = {
    NULL,
    ov104_0223D8F0
};

void ov104_0223D860 (UnkStruct_0209B75C * param0, u16 param1, u8 param2, s16 param3[], int param4)
{
    UnkStruct_ov104_0223C634 * v0;
    int v1;

    v0 = ov104_0223D5A8(param0, param1);
    MI_CpuClear8(&v0->unk_26, sizeof(UnkStruct_ov104_0223D8F0));

    v0->unk_26.unk_00 = param2;

    for (v1 = 0; v1 < param4; v1++) {
        v0->unk_26.unk_02[v1] = param3[v1];
    }
}

static void ov104_0223D898 (UnkStruct_0209B75C * param0, UnkStruct_ov104_0223C634 * param1)
{
    int v0;

    if (Unk_ov104_022418A8[param1->unk_26.unk_00] == NULL) {
        return;
    }

    v0 = Unk_ov104_022418A8[param1->unk_26.unk_00](param0, param1);

    if (v0 == 1) {
        MI_CpuClear8(&param1->unk_26, sizeof(UnkStruct_ov104_0223D8F0));
    }
}

void ov104_0223D8C4 (UnkStruct_0209B75C * param0)
{
    UnkStruct_ov104_0223C634 * v0;
    int v1;

    v0 = sub_0209B9D0(param0);

    for (v1 = 0; v1 < 32; v1++) {
        if ((v0->unk_00 != NULL) && (v0->unk_38 == NULL)) {
            ov104_0223D898(param0, v0);
        }

        v0++;
    }
}

static BOOL ov104_0223D8F0 (UnkStruct_0209B75C * param0, UnkStruct_ov104_0223C634 * param1)
{
    UnkStruct_ov104_0223D8F0 * v0 = &param1->unk_26;
    UnkStruct_ov63_0222CCB8 v1;
    UnkStruct_ov104_0223C4CC * v2 = sub_0209B974(param0);

    if (v0->unk_02[2] > 0) {
        v0->unk_02[2]--;
        return 0;
    }

    switch (v0->unk_01) {
    case 0:
        switch (v0->unk_02[0]) {
        case 0:
        case 1:
            if (v0->unk_02[1] == 0) {
                v0->unk_02[3] = 2;
                v0->unk_02[4] = 3;
            } else {
                v0->unk_02[3] = 3;
                v0->unk_02[4] = 2;
            }
            break;
        case 2:
        case 3:
            if (v0->unk_02[1] == 0) {
                v0->unk_02[3] = 0;
                v0->unk_02[4] = 1;
            } else {
                v0->unk_02[3] = 1;
                v0->unk_02[4] = 0;
            }
            break;
        default:
            GF_ASSERT(0);
            return 1;
        }

        v0->unk_02[5] = v0->unk_02[0];
        v0->unk_01++;
    case 1:
    case 2:
    case 3:
        ov104_02232C80(&v1, param1->unk_00, param1->unk_08.unk_04, v0->unk_02[3 + v0->unk_01 - 1]);
        ov63_0222D7C8(v2->unk_30, &v1);

        if (v0->unk_02[0] == v0->unk_02[3 + v0->unk_01 - 1]) {
            v0->unk_02[2] = 45;
            v0->unk_01 = 1;
        } else {
            v0->unk_02[2] = 30;
            v0->unk_01++;
        }
        break;
    default:
        return 1;
    }

    return 0;
}
