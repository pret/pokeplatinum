#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_020067E8_decl.h"
#include "overlay087/struct_ov87_021D106C_decl.h"

#include "struct_defs/struct_0202DF8C.h"
#include "overlay087/struct_ov87_021D12C0.h"

#include "unk_020067E8.h"
#include "heap.h"
#include "unk_02023790.h"
#include "unk_0202DF8C.h"
#include "overlay087/ov87_021D0D80.h"
#include "overlay087/ov87_021D106C.h"

typedef struct UnkStruct_ov87_021D0D80_t {
    UnkStruct_ov87_021D12C0 unk_00;
    UnkStruct_ov87_021D106C * unk_C8;
    UnkStruct_0202DF8C * unk_CC;
    int unk_D0;
    int unk_D4;
    BOOL unk_D8;
} UnkStruct_ov87_021D0D80;

static void ov87_021D0F38(UnkStruct_ov87_021D0D80 * param0, int param1);
static BOOL ov87_021D0F4C(UnkStruct_ov87_021D0D80 * param0);
static BOOL ov87_021D0F88(UnkStruct_ov87_021D0D80 * param0);
static void ov87_021D0FC4(UnkStruct_ov87_021D12C0 * param0, UnkStruct_0202DF8C * param1);
static void ov87_021D1000(UnkStruct_ov87_021D12C0 * param0);
static void ov87_021D101C(UnkStruct_ov87_021D12C0 * param0, UnkStruct_0202DF8C * param1, int param2);

int ov87_021D0D80 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov87_021D0D80 * v0;

    CreateHeap(3, 60, 16384);
    CreateHeap(3, 61, 114688);

    v0 = sub_0200681C(param0, sizeof(UnkStruct_ov87_021D0D80), 60);

    if (v0) {
        v0->unk_CC = sub_02006840(param0);
        v0->unk_D4 = 0;
        v0->unk_D0 = sub_0202E148(v0->unk_CC);

        ov87_021D0FC4(&(v0->unk_00), v0->unk_CC);

        v0->unk_C8 = ov87_021D106C(v0, &(v0->unk_00));
        v0->unk_D8 = ov87_021D11D0(v0->unk_C8, 0);
    }

    return 1;
}

int ov87_021D0DFC (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov87_021D0D80 * v0 = sub_0200682C(param0);

    ov87_021D1140(v0->unk_C8);
    ov87_021D1000(&(v0->unk_00));
    sub_02006830(param0);
    DestroyHeap(61);
    DestroyHeap(60);

    return 1;
}

int ov87_021D0E2C (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov87_021D0D80 * v0 = sub_0200682C(param0);

    if (v0->unk_D8) {
        if (ov87_021D11F8(v0->unk_C8) == 0) {
            return 0;
        }

        v0->unk_D8 = 0;
    }

    switch (*param1) {
    case 0:
        if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
            ov87_021D0F38(v0, 1);
            (*param1)++;
            break;
        }

        if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
            v0->unk_00.unk_1C ^= 1;
            ov87_021D0F38(v0, 4);
            break;
        }

        if (Unk_021BF67C.unk_48 & PAD_KEY_LEFT) {
            if (ov87_021D0F4C(v0)) {
                ov87_021D0F38(v0, 3);
            }
            break;
        }

        if (Unk_021BF67C.unk_48 & PAD_KEY_RIGHT) {
            if (ov87_021D0F88(v0)) {
                ov87_021D0F38(v0, 3);
            }
            break;
        }

        if (Unk_021BF67C.unk_48 & PAD_KEY_UP) {
            if (--(v0->unk_00.unk_18) < 0) {
                if (ov87_021D0F4C(v0)) {
                    v0->unk_00.unk_18 = v0->unk_00.unk_14 - 1;
                    ov87_021D0F38(v0, 3);
                }
            } else {
                ov87_021D0F38(v0, 2);
            }
            break;
        }

        if (Unk_021BF67C.unk_48 & PAD_KEY_DOWN) {
            if (++(v0->unk_00.unk_18) >= v0->unk_00.unk_14) {
                if (ov87_021D0F88(v0)) {
                    ov87_021D0F38(v0, 3);
                }
            } else {
                ov87_021D0F38(v0, 2);
            }
            break;
        }
        break;
    case 1:
        return 1;
    }

    return 0;
}

static void ov87_021D0F38 (UnkStruct_ov87_021D0D80 * param0, int param1)
{
    param0->unk_D8 = ov87_021D11D0(param0->unk_C8, param1);
}

static BOOL ov87_021D0F4C (UnkStruct_ov87_021D0D80 * param0)
{
    if (++(param0->unk_D4) >= param0->unk_D0) {
        param0->unk_D4 = 0;
    }

    ov87_021D101C(&(param0->unk_00), param0->unk_CC, param0->unk_D4);

    return 1;
}

static BOOL ov87_021D0F88 (UnkStruct_ov87_021D0D80 * param0)
{
    if (--(param0->unk_D4) < 0) {
        param0->unk_D4 = param0->unk_D0 - 1;
    }

    ov87_021D101C(&(param0->unk_00), param0->unk_CC, param0->unk_D4);

    return 1;
}

static void ov87_021D0FC4 (UnkStruct_ov87_021D12C0 * param0, UnkStruct_0202DF8C * param1)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_20[v0].unk_00 = sub_02023790(12, 60);
        param0->unk_20[v0].unk_04 = sub_02023790(8, 60);
    }

    param0->unk_1C = UnkEnum_ov87_021D12C0_0;

    ov87_021D101C(param0, param1, 0);
}

static void ov87_021D1000 (UnkStruct_ov87_021D12C0 * param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        sub_020237BC(param0->unk_20[v0].unk_00);
        sub_020237BC(param0->unk_20[v0].unk_04);
    }
}

static void ov87_021D101C (UnkStruct_ov87_021D12C0 * param0, UnkStruct_0202DF8C * param1, int param2)
{
    int v0;

    param0->unk_00 = sub_0202E174(param1, param2);
    param0->unk_14 = sub_0202E1A8(param1, param2);

    sub_0202E274(param1, param2, &(param0->unk_04));

    for (v0 = 0; v0 < param0->unk_14; v0++) {
        sub_0202E1F4(param1, param2, v0, &(param0->unk_20[v0]));
    }

    param0->unk_18 = 0;
}
